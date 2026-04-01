; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank23.asm /tmp/smanbow2_bank_23.bin

	org 04000h

l4000h:
	inc bc			;4000
	rrca			;4001
	inc l			;4002
	rrca			;4003
	nop			;4004
	nop			;4005
	nop			;4006
	nop			;4007
	daa			;4008
	rrca			;4009
	ld hl,(00009h)		;400a
	nop			;400d
	ld l,00fh		;400e
	ld l,008h		;4010
	ld bc,02200h		;4012
	rrca			;4015
	add hl,hl		;4016
	add hl,bc		;4017
	nop			;4018
	nop			;4019
	inc sp			;401a
	rrca			;401b
	ld h,c			;401c
	nop			;401d
	ld (bc),a		;401e
l401fh:
	nop			;401f
	ld hl,(0270fh)		;4020
	add hl,bc		;4023
	nop			;4024
	nop			;4025
	nop			;4026
	nop			;4027
	ld l,008h		;4028
	ld (bc),a		;402a
	nop			;402b
	add hl,hl		;402c
	rrca			;402d
	ld (00009h),hl		;402e
	nop			;4031
	nop			;4032
	nop			;4033
	inc l			;4034
	ex af,af'		;4035
	ld bc,02700h		;4036
	rrca			;4039
	ld hl,(00309h)		;403a
	rrca			;403d
	nop			;403e
	nop			;403f
	ld l,008h		;4040
	inc bc			;4042
	nop			;4043
	ld (0290fh),hl		;4044
	add hl,bc		;4047
	inc bc			;4048
	rrca			;4049
	nop			;404a
	nop			;404b
	inc sp			;404c
	ex af,af'		;404d
	ld bc,02a00h		;404e
	rrca			;4051
	daa			;4052
	add hl,bc		;4053
	inc bc			;4054
	rrca			;4055
	nop			;4056
	nop			;4057
	nop			;4058
	nop			;4059
	inc bc			;405a
	nop			;405b
	add hl,hl		;405c
	rrca			;405d
	ld (00309h),hl		;405e
	rrca			;4061
	nop			;4062
	nop			;4063
	nop			;4064
	nop			;4065
	inc bc			;4066
	nop			;4067
	daa			;4068
	rrca			;4069
	ld hl,(00009h)		;406a
	nop			;406d
	ld l,00fh		;406e
	nop			;4070
	nop			;4071
	inc bc			;4072
	nop			;4073
	ld (0290fh),hl		;4074
	add hl,bc		;4077
	nop			;4078
	nop			;4079
	inc l			;407a
	rrca			;407b
	nop			;407c
	nop			;407d
	inc bc			;407e
	nop			;407f
	ld hl,(0270fh)		;4080
	add hl,bc		;4083
	inc bc			;4084
	rrca			;4085
	dec (hl)		;4086
	rrca			;4087
	nop			;4088
	nop			;4089
	ld bc,02900h		;408a
	rrca			;408d
	ld (00309h),hl		;408e
	rrca			;4091
	nop			;4092
	nop			;4093
	nop			;4094
	nop			;4095
	nop			;4096
	nop			;4097
	daa			;4098
	rrca			;4099
	ld hl,(00009h)		;409a
	nop			;409d
	nop			;409e
	nop			;409f
	ld l,008h		;40a0
	inc bc			;40a2
	nop			;40a3
	ld (0290fh),hl		;40a4
	add hl,bc		;40a7
	inc bc			;40a8
	rrca			;40a9
	ld (hl),00fh		;40aa
	inc l			;40ac
	ex af,af'		;40ad
	ld (bc),a		;40ae
	nop			;40af
	ld hl,(0270fh)		;40b0
	add hl,bc		;40b3
	inc bc			;40b4
	rrca			;40b5
	nop			;40b6
	nop			;40b7
	dec (hl)		;40b8
	ex af,af'		;40b9
	nop			;40ba
	nop			;40bb
	add hl,hl		;40bc
	rrca			;40bd
	ld (00309h),hl		;40be
	rrca			;40c1
	nop			;40c2
	nop			;40c3
	nop			;40c4
	nop			;40c5
	inc bc			;40c6
	nop			;40c7
	daa			;40c8
	rrca			;40c9
	ld hl,(00009h)		;40ca
	nop			;40cd
	dec (hl)		;40ce
	rrca			;40cf
	nop			;40d0
	nop			;40d1
	ld bc,02200h		;40d2
	rrca			;40d5
	add hl,hl		;40d6
	add hl,bc		;40d7
	inc bc			;40d8
	add hl,bc		;40d9
	nop			;40da
	nop			;40db
	ld (hl),008h		;40dc
	nop			;40de
	nop			;40df
	ld hl,(0270fh)		;40e0
	add hl,bc		;40e3
	inc bc			;40e4
	rrca			;40e5
	inc sp			;40e6
	rrca			;40e7
	nop			;40e8
	nop			;40e9
	ld (bc),a		;40ea
	nop			;40eb
	add hl,hl		;40ec
	rrca			;40ed
	ld (00309h),hl		;40ee
	rrca			;40f1
	nop			;40f2
	nop			;40f3
	nop			;40f4
	nop			;40f5
	ld bc,02700h		;40f6
	rrca			;40f9
	ld hl,(00309h)		;40fa
	rrca			;40fd
	ld l,h			;40fe
	ld bc,00835h		;40ff
	inc bc			;4102
	nop			;4103
	ld (0290fh),hl		;4104
	add hl,bc		;4107
	inc bc			;4108
	rrca			;4109
	nop			;410a
	nop			;410b
	nop			;410c
	nop			;410d
	ld bc,02a00h		;410e
	rrca			;4111
	daa			;4112
	add hl,bc		;4113
	inc bc			;4114
	rrca			;4115
	ld l,h			;4116
	ld bc,00833h		;4117
	nop			;411a
	nop			;411b
	add hl,hl		;411c
	rrca			;411d
	ld (00309h),hl		;411e
	rrca			;4121
	nop			;4122
	nop			;4123
	nop			;4124
	nop			;4125
	inc bc			;4126
	nop			;4127
	daa			;4128
	rrca			;4129
	ld hl,(00009h)		;412a
	nop			;412d
	ld l,h			;412e
	ld bc,0016ch		;412f
	ld bc,02200h		;4132
	rrca			;4135
	add hl,hl		;4136
	add hl,bc		;4137
	inc bc			;4138
	rrca			;4139
	nop			;413a
	nop			;413b
	nop			;413c
	nop			;413d
	nop			;413e
	nop			;413f
	add hl,hl		;4140
	rrca			;4141
	daa			;4142
	add hl,bc		;4143
	ld bc,0380fh		;4144
	rrca			;4147
	ld l,h			;4148
	ld bc,00001h		;4149
	daa			;414c
	rrca			;414d
	ld (00109h),hl		;414e
	rrca			;4151
	nop			;4152
	nop			;4153
	nop			;4154
	nop			;4155
	nop			;4156
	nop			;4157
	dec h			;4158
	rrca			;4159
	add hl,hl		;415a
	add hl,bc		;415b
	ld bc,0000fh		;415c
	nop			;415f
	ld l,h			;4160
	ld bc,00003h		;4161
	jr nz,$+17		;4164
	daa			;4166
	add hl,bc		;4167
	ld bc,0000fh		;4168
	nop			;416b
	nop			;416c
	nop			;416d
	nop			;416e
	nop			;416f
	add hl,hl		;4170
	rrca			;4171
	dec h			;4172
	add hl,bc		;4173
	ld bc,0000fh		;4174
	nop			;4177
	jr c,$+10		;4178
	ld (bc),a		;417a
	nop			;417b
	daa			;417c
	rrca			;417d
	jr nz,l4189h		;417e
	ld bc,0000fh		;4180
	nop			;4183
	nop			;4184
	nop			;4185
	nop			;4186
	nop			;4187
	dec h			;4188
l4189h:
	rrca			;4189
	add hl,hl		;418a
	add hl,bc		;418b
	nop			;418c
	nop			;418d
	ld (hl),00fh		;418e
	nop			;4190
	nop			;4191
	ld bc,02000h		;4192
	rrca			;4195
	daa			;4196
	add hl,bc		;4197
	nop			;4198
	nop			;4199
	dec (hl)		;419a
	rrca			;419b
	nop			;419c
	nop			;419d
	ld (bc),a		;419e
	nop			;419f
	add hl,hl		;41a0
	rrca			;41a1
	dec h			;41a2
	add hl,bc		;41a3
	nop			;41a4
	nop			;41a5
	inc sp			;41a6
	rrca			;41a7
	nop			;41a8
	nop			;41a9
	ld (bc),a		;41aa
	nop			;41ab
	daa			;41ac
	rrca			;41ad
	jr nz,l41b9h		;41ae
	nop			;41b0
	nop			;41b1
	nop			;41b2
	nop			;41b3
	nop			;41b4
	nop			;41b5
	ld bc,02500h		;41b6
l41b9h:
	rrca			;41b9
	add hl,hl		;41ba
	add hl,bc		;41bb
	ld bc,0000fh		;41bc
	nop			;41bf
	ld (hl),008h		;41c0
	inc bc			;41c2
	nop			;41c3
	jr nz,$+17		;41c4
	daa			;41c6
	add hl,bc		;41c7
	ld bc,0000fh		;41c8
	nop			;41cb
	dec (hl)		;41cc
	ex af,af'		;41cd
	ld bc,02900h		;41ce
	rrca			;41d1
	dec h			;41d2
	add hl,bc		;41d3
	ld bc,0000fh		;41d4
	nop			;41d7
	inc sp			;41d8
	ex af,af'		;41d9
	inc bc			;41da
	nop			;41db
	daa			;41dc
	rrca			;41dd
	jr nz,l41e9h		;41de
	ld bc,0000fh		;41e0
	nop			;41e3
	nop			;41e4
	nop			;41e5
	nop			;41e6
	nop			;41e7
	dec h			;41e8
l41e9h:
	rrca			;41e9
	add hl,hl		;41ea
	add hl,bc		;41eb
	nop			;41ec
	nop			;41ed
	nop			;41ee
	nop			;41ef
	nop			;41f0
	nop			;41f1
	ld bc,02000h		;41f2
	rrca			;41f5
	daa			;41f6
	add hl,bc		;41f7
	nop			;41f8
	nop			;41f9
	nop			;41fa
	nop			;41fb
	nop			;41fc
	nop			;41fd
	nop			;41fe
	nop			;41ff
	add hl,hl		;4200
	rrca			;4201
	dec h			;4202
	add hl,bc		;4203
	ld bc,02c0fh		;4204
	rrca			;4207
	nop			;4208
	nop			;4209
	ld bc,02700h		;420a
	rrca			;420d
	jr nz,l4219h		;420e
	ld bc,l610fh		;4210
	nop			;4213
	nop			;4214
	nop			;4215
	nop			;4216
	nop			;4217
	dec h			;4218
l4219h:
	rrca			;4219
	add hl,hl		;421a
	add hl,bc		;421b
	nop			;421c
	nop			;421d
	inc l			;421e
	rrca			;421f
	nop			;4220
	nop			;4221
	inc bc			;4222
	nop			;4223
	jr nz,$+17		;4224
	daa			;4226
	add hl,bc		;4227
	nop			;4228
	nop			;4229
	nop			;422a
	nop			;422b
	nop			;422c
	nop			;422d
	ld (bc),a		;422e
	nop			;422f
	add hl,hl		;4230
	rrca			;4231
	dec h			;4232
	add hl,bc		;4233
	ld bc,0000fh		;4234
	nop			;4237
	inc l			;4238
	ex af,af'		;4239
	nop			;423a
	nop			;423b
	daa			;423c
	rrca			;423d
	jr nz,l4249h		;423e
	ld bc,0000fh		;4240
	nop			;4243
	ld h,c			;4244
	nop			;4245
	inc bc			;4246
	nop			;4247
	dec h			;4248
l4249h:
	rrca			;4249
	add hl,hl		;424a
	add hl,bc		;424b
	ld bc,02a0fh		;424c
	rrca			;424f
	inc l			;4250
	ex af,af'		;4251
	ld bc,02000h		;4252
	rrca			;4255
	daa			;4256
	add hl,bc		;4257
	ld bc,02c0fh		;4258
	rrca			;425b
	nop			;425c
	nop			;425d
	nop			;425e
	nop			;425f
	add hl,hl		;4260
	rrca			;4261
	dec h			;4262
	add hl,bc		;4263
	ld bc,0000fh		;4264
	nop			;4267
	nop			;4268
	nop			;4269
	ld (bc),a		;426a
	nop			;426b
	daa			;426c
	rrca			;426d
	jr nz,l4279h		;426e
	ld bc,0000fh		;4270
	nop			;4273
	nop			;4274
	nop			;4275
	ld bc,02500h		;4276
l4279h:
	rrca			;4279
	add hl,hl		;427a
	add hl,bc		;427b
	ld bc,0310fh		;427c
	rrca			;427f
	ld hl,(00308h)		;4280
	nop			;4283
	jr nz,l4295h		;4284
	daa			;4286
	add hl,bc		;4287
	ld bc,0000fh		;4288
	nop			;428b
	inc l			;428c
	ex af,af'		;428d
	ld bc,02900h		;428e
	rrca			;4291
	dec h			;4292
	add hl,bc		;4293
	nop			;4294
l4295h:
	nop			;4295
	inc sp			;4296
	rrca			;4297
	nop			;4298
	nop			;4299
	nop			;429a
	nop			;429b
	daa			;429c
	rrca			;429d
	jr nz,l42a9h		;429e
	ld bc,0000fh		;42a0
	nop			;42a3
	nop			;42a4
	nop			;42a5
	inc bc			;42a6
	nop			;42a7
	dec h			;42a8
l42a9h:
	rrca			;42a9
	add hl,hl		;42aa
	add hl,bc		;42ab
	nop			;42ac
	nop			;42ad
	dec (hl)		;42ae
	rrca			;42af
	ld sp,00108h		;42b0
	nop			;42b3
	jr nz,l42c5h		;42b4
	daa			;42b6
	add hl,bc		;42b7
	nop			;42b8
	nop			;42b9
	nop			;42ba
	nop			;42bb
	nop			;42bc
	nop			;42bd
	nop			;42be
	nop			;42bf
	ld hl,(0000fh)		;42c0
	nop			;42c3
	inc bc			;42c4
l42c5h:
	rrca			;42c5
	nop			;42c6
	nop			;42c7
	inc sp			;42c8
	ex af,af'		;42c9
	ld bc,02900h		;42ca
	rrca			;42cd
	nop			;42ce
	nop			;42cf
	inc bc			;42d0
	rrca			;42d1
	nop			;42d2
	nop			;42d3
	nop			;42d4
	nop			;42d5
	nop			;42d6
	nop			;42d7
	daa			;42d8
	rrca			;42d9
	ld hl,(00309h)		;42da
	rrca			;42dd
	ld l,00fh		;42de
	dec (hl)		;42e0
	ex af,af'		;42e1
	inc bc			;42e2
	nop			;42e3
	ld (0290fh),hl		;42e4
	add hl,bc		;42e7
	inc bc			;42e8
	rrca			;42e9
	ld h,c			;42ea
	nop			;42eb
	nop			;42ec
	nop			;42ed
	nop			;42ee
	nop			;42ef
	ld hl,(0270fh)		;42f0
	add hl,bc		;42f3
	inc bc			;42f4
	rrca			;42f5
	ld l,00fh		;42f6
	nop			;42f8
	nop			;42f9
	ld (bc),a		;42fa
	nop			;42fb
	add hl,hl		;42fc
	rrca			;42fd
	ld (00309h),hl		;42fe
	rrca			;4301
	inc l			;4302
	rrca			;4303
	nop			;4304
	nop			;4305
	nop			;4306
	nop			;4307
	daa			;4308
	rrca			;4309
	ld hl,(00009h)		;430a
	nop			;430d
	ld l,00fh		;430e
	ld l,008h		;4310
	ld bc,02200h		;4312
	rrca			;4315
	add hl,hl		;4316
	add hl,bc		;4317
	nop			;4318
	nop			;4319
	inc sp			;431a
	rrca			;431b
	ld h,c			;431c
	nop			;431d
	ld (bc),a		;431e
	nop			;431f
	ld hl,(0270fh)		;4320
	add hl,bc		;4323
	nop			;4324
	nop			;4325
	nop			;4326
	nop			;4327
	ld l,008h		;4328
	ld (bc),a		;432a
	nop			;432b
	add hl,hl		;432c
	rrca			;432d
	ld (00009h),hl		;432e
	nop			;4331
	nop			;4332
	nop			;4333
	inc l			;4334
	ex af,af'		;4335
	ld bc,02700h		;4336
	rrca			;4339
	ld hl,(00309h)		;433a
	rrca			;433d
	nop			;433e
	nop			;433f
	ld l,008h		;4340
	inc bc			;4342
	nop			;4343
	ld (0290fh),hl		;4344
	add hl,bc		;4347
	inc bc			;4348
	rrca			;4349
	nop			;434a
	nop			;434b
	inc sp			;434c
	ex af,af'		;434d
	ld bc,02a00h		;434e
	rrca			;4351
	daa			;4352
	add hl,bc		;4353
	inc bc			;4354
	rrca			;4355
	nop			;4356
	nop			;4357
	nop			;4358
	nop			;4359
	inc bc			;435a
	nop			;435b
	add hl,hl		;435c
	rrca			;435d
	ld (00309h),hl		;435e
	rrca			;4361
	nop			;4362
	nop			;4363
	nop			;4364
	nop			;4365
	inc bc			;4366
	nop			;4367
	daa			;4368
	rrca			;4369
	ld hl,(00009h)		;436a
	nop			;436d
	ld l,00fh		;436e
	nop			;4370
	nop			;4371
	inc bc			;4372
	nop			;4373
	ld (0290fh),hl		;4374
	add hl,bc		;4377
	nop			;4378
	nop			;4379
	inc l			;437a
	rrca			;437b
	nop			;437c
	nop			;437d
	inc bc			;437e
	nop			;437f
	ld hl,(0270fh)		;4380
	add hl,bc		;4383
	inc bc			;4384
	rrca			;4385
	jr c,l4397h		;4386
	nop			;4388
	nop			;4389
	ld bc,02900h		;438a
	rrca			;438d
	ld (00309h),hl		;438e
	rrca			;4391
	nop			;4392
	nop			;4393
	nop			;4394
	nop			;4395
	nop			;4396
l4397h:
	nop			;4397
	daa			;4398
	rrca			;4399
	ld hl,(00009h)		;439a
	nop			;439d
	nop			;439e
	nop			;439f
	ld l,008h		;43a0
	inc bc			;43a2
	nop			;43a3
	ld (0290fh),hl		;43a4
	add hl,bc		;43a7
	inc bc			;43a8
	rrca			;43a9
	ld (hl),00fh		;43aa
	inc l			;43ac
	ex af,af'		;43ad
	ld (bc),a		;43ae
	nop			;43af
	ld hl,(0270fh)		;43b0
	add hl,bc		;43b3
	inc bc			;43b4
	rrca			;43b5
	nop			;43b6
	nop			;43b7
	jr c,l43c2h		;43b8
	nop			;43ba
	nop			;43bb
	add hl,hl		;43bc
	rrca			;43bd
	ld (00309h),hl		;43be
	rrca			;43c1
l43c2h:
	nop			;43c2
	nop			;43c3
	nop			;43c4
	nop			;43c5
	inc bc			;43c6
	nop			;43c7
	daa			;43c8
	rrca			;43c9
	ld hl,(00009h)		;43ca
	nop			;43cd
	dec (hl)		;43ce
	rrca			;43cf
	nop			;43d0
	nop			;43d1
	ld bc,02200h		;43d2
	rrca			;43d5
	add hl,hl		;43d6
	add hl,bc		;43d7
	inc bc			;43d8
	add hl,bc		;43d9
	nop			;43da
	nop			;43db
	ld (hl),008h		;43dc
	nop			;43de
	nop			;43df
	ld hl,(0270fh)		;43e0
	add hl,bc		;43e3
	inc bc			;43e4
	rrca			;43e5
	dec a			;43e6
	rrca			;43e7
	nop			;43e8
	nop			;43e9
	ld (bc),a		;43ea
	nop			;43eb
	add hl,hl		;43ec
	rrca			;43ed
	ld (00309h),hl		;43ee
	rrca			;43f1
	nop			;43f2
	nop			;43f3
	nop			;43f4
	nop			;43f5
	ld bc,02700h		;43f6
	rrca			;43f9
	ld hl,(00309h)		;43fa
	rrca			;43fd
	ld l,h			;43fe
	ld bc,00835h		;43ff
	inc bc			;4402
	nop			;4403
	ld (0290fh),hl		;4404
	add hl,bc		;4407
	inc bc			;4408
	rrca			;4409
	ld h,a			;440a
	ld (bc),a		;440b
	nop			;440c
	nop			;440d
	ld bc,02a00h		;440e
	rrca			;4411
	daa			;4412
	add hl,bc		;4413
	inc bc			;4414
	rrca			;4415
	ld l,h			;4416
	ld bc,0083dh		;4417
	nop			;441a
	nop			;441b
	add hl,hl		;441c
	rrca			;441d
	ld (00309h),hl		;441e
	rrca			;4421
	nop			;4422
	nop			;4423
	nop			;4424
	nop			;4425
	inc bc			;4426
	nop			;4427
	daa			;4428
	rrca			;4429
	ld hl,(00009h)		;442a
	nop			;442d
	ld l,h			;442e
	ld bc,0016ch		;442f
	ld bc,02200h		;4432
	rrca			;4435
	add hl,hl		;4436
	add hl,bc		;4437
	inc bc			;4438
	rrca			;4439
	nop			;443a
	nop			;443b
	ld h,a			;443c
	ld (bc),a		;443d
	nop			;443e
	nop			;443f
	add hl,hl		;4440
	rrca			;4441
	daa			;4442
	add hl,bc		;4443
	ld bc,0380fh		;4444
	dec c			;4447
	inc sp			;4448
	dec bc			;4449
	ld bc,02700h		;444a
	rrca			;444d
	ld (00109h),hl		;444e
	rrca			;4451
	nop			;4452
	nop			;4453
	nop			;4454
	nop			;4455
	nop			;4456
	nop			;4457
	dec h			;4458
	rrca			;4459
	add hl,hl		;445a
	add hl,bc		;445b
	ld bc,0310fh		;445c
	dec c			;445f
	dec (hl)		;4460
	ld c,003h		;4461
	nop			;4463
	jr nz,$+17		;4464
	daa			;4466
	add hl,bc		;4467
	ld bc,0000fh		;4468
	nop			;446b
	nop			;446c
	nop			;446d
	nop			;446e
	nop			;446f
	add hl,hl		;4470
	rrca			;4471
	dec h			;4472
	add hl,bc		;4473
	ld bc,0330fh		;4474
	dec c			;4477
	ld (hl),00eh		;4478
	ld (bc),a		;447a
	nop			;447b
	daa			;447c
	rrca			;447d
	jr nz,l4489h		;447e
	ld bc,0350fh		;4480
	dec c			;4483
	jr c,$+16		;4484
	nop			;4486
	nop			;4487
	dec h			;4488
l4489h:
	rrca			;4489
	add hl,hl		;448a
	add hl,bc		;448b
	nop			;448c
	nop			;448d
	ld h,a			;448e
	inc bc			;448f
	ld h,a			;4490
	inc bc			;4491
	ld bc,02000h		;4492
	rrca			;4495
	daa			;4496
	add hl,bc		;4497
	nop			;4498
	nop			;4499
	nop			;449a
	nop			;449b
	nop			;449c
	nop			;449d
	ld (bc),a		;449e
	nop			;449f
	add hl,hl		;44a0
	rrca			;44a1
	dec h			;44a2
	add hl,bc		;44a3
	nop			;44a4
	nop			;44a5
	ld (hl),00dh		;44a6
	ld a,(0020ah)		;44a8
	nop			;44ab
	daa			;44ac
	rrca			;44ad
	jr nz,l44b9h		;44ae
	nop			;44b0
	nop			;44b1
	ld h,a			;44b2
	ld (bc),a		;44b3
	ld h,a			;44b4
	ld (bc),a		;44b5
	ld bc,02500h		;44b6
l44b9h:
	rrca			;44b9
	add hl,hl		;44ba
	add hl,bc		;44bb
	ld bc,0330fh		;44bc
	dec c			;44bf
	ld (hl),00ah		;44c0
	inc bc			;44c2
	nop			;44c3
	jr nz,$+17		;44c4
	daa			;44c6
	add hl,bc		;44c7
	ld bc,0350fh		;44c8
	dec c			;44cb
	jr c,l44d8h		;44cc
	ld bc,02900h		;44ce
	rrca			;44d1
	dec h			;44d2
	add hl,bc		;44d3
	ld bc,l670fh		;44d4
	inc bc			;44d7
l44d8h:
	ld h,a			;44d8
	inc bc			;44d9
	inc bc			;44da
	nop			;44db
	daa			;44dc
	rrca			;44dd
	jr nz,l44e9h		;44de
	ld bc,0000fh		;44e0
	nop			;44e3
	nop			;44e4
	nop			;44e5
	nop			;44e6
	nop			;44e7
	dec h			;44e8
l44e9h:
	rrca			;44e9
	add hl,hl		;44ea
	add hl,bc		;44eb
	nop			;44ec
	nop			;44ed
	nop			;44ee
	nop			;44ef
	nop			;44f0
	nop			;44f1
	ld bc,02000h		;44f2
	rrca			;44f5
	daa			;44f6
	add hl,bc		;44f7
	nop			;44f8
	nop			;44f9
	nop			;44fa
	nop			;44fb
	nop			;44fc
	nop			;44fd
	nop			;44fe
	nop			;44ff
	add hl,hl		;4500
	rrca			;4501
	dec h			;4502
	add hl,bc		;4503
	ld bc,0360fh		;4504
	dec c			;4507
	ld a,(0010ah)		;4508
	nop			;450b
	daa			;450c
	rrca			;450d
	jr nz,l4519h		;450e
	ld bc,l610fh		;4510
	nop			;4513
	ld h,c			;4514
	nop			;4515
	nop			;4516
	nop			;4517
	dec h			;4518
l4519h:
	rrca			;4519
	add hl,hl		;451a
	add hl,bc		;451b
	nop			;451c
	nop			;451d
	dec (hl)		;451e
	dec c			;451f
	jr c,l452ch		;4520
	ld (bc),a		;4522
	nop			;4523
	jr nz,$+17		;4524
	daa			;4526
	add hl,bc		;4527
	nop			;4528
	nop			;4529
	nop			;452a
	nop			;452b
l452ch:
	nop			;452c
	nop			;452d
	ld (bc),a		;452e
	nop			;452f
	add hl,hl		;4530
	rrca			;4531
	dec h			;4532
	add hl,bc		;4533
	ld bc,0000fh		;4534
	nop			;4537
	nop			;4538
	nop			;4539
	ld (bc),a		;453a
	nop			;453b
	daa			;453c
	rrca			;453d
	jr nz,l4549h		;453e
	ld bc,0000fh		;4540
	nop			;4543
	nop			;4544
	nop			;4545
	ld bc,02500h		;4546
l4549h:
	rrca			;4549
	add hl,hl		;454a
	add hl,bc		;454b
	ld bc,0310fh		;454c
	rrca			;454f
	nop			;4550
	nop			;4551
	ld bc,02000h		;4552
	rrca			;4555
	daa			;4556
	add hl,bc		;4557
	ld bc,02c0fh		;4558
	rrca			;455b
	nop			;455c
	nop			;455d
	nop			;455e
	nop			;455f
	add hl,hl		;4560
	rrca			;4561
	dec h			;4562
	add hl,bc		;4563
	ld bc,0000fh		;4564
	nop			;4567
	nop			;4568
	nop			;4569
	ld (bc),a		;456a
	nop			;456b
	daa			;456c
	rrca			;456d
	jr nz,l4579h		;456e
	ld bc,0000fh		;4570
	nop			;4573
	nop			;4574
	nop			;4575
	ld bc,02500h		;4576
l4579h:
	rrca			;4579
	add hl,hl		;457a
	add hl,bc		;457b
	ld bc,0350fh		;457c
	dec c			;457f
	jr c,l458ch		;4580
	nop			;4582
	nop			;4583
	jr nz,l4595h		;4584
	daa			;4586
	add hl,bc		;4587
	ld bc,0000fh		;4588
	nop			;458b
l458ch:
	nop			;458c
	nop			;458d
	nop			;458e
	nop			;458f
	add hl,hl		;4590
	rrca			;4591
	dec h			;4592
	add hl,bc		;4593
	nop			;4594
l4595h:
	nop			;4595
	inc sp			;4596
	dec c			;4597
	ld (hl),00ah		;4598
	ld bc,02700h		;459a
	rrca			;459d
	jr nz,l45a9h		;459e
	ld bc,0000fh		;45a0
	nop			;45a3
	nop			;45a4
	nop			;45a5
	nop			;45a6
	nop			;45a7
	dec h			;45a8
l45a9h:
	rrca			;45a9
	add hl,hl		;45aa
	add hl,bc		;45ab
	nop			;45ac
	nop			;45ad
	ld sp,0350dh		;45ae
	ld a,(bc)		;45b1
	ld (bc),a		;45b2
	nop			;45b3
	jr nz,l45c5h		;45b4
	daa			;45b6
	add hl,bc		;45b7
	nop			;45b8
	nop			;45b9
	nop			;45ba
	nop			;45bb
	nop			;45bc
	nop			;45bd
	nop			;45be
	nop			;45bf
	ld h,d			;45c0
	rlca			;45c1
	ld h,d			;45c2
	rlca			;45c3
	inc bc			;45c4
l45c5h:
	rrca			;45c5
	ld h,c			;45c6
	nop			;45c7
	ld h,c			;45c8
	nop			;45c9
	ld bc,06a00h		;45ca
	inc b			;45cd
	ld l,c			;45ce
	inc b			;45cf
	inc bc			;45d0
	rrca			;45d1
	nop			;45d2
	nop			;45d3
	nop			;45d4
	nop			;45d5
	nop			;45d6
	nop			;45d7
	daa			;45d8
	ld c,027h		;45d9
	ld c,003h		;45db
	rrca			;45dd
	nop			;45de
	nop			;45df
	nop			;45e0
	nop			;45e1
	ld bc,00f00h		;45e2
	ld c,00fh		;45e5
	ld c,003h		;45e7
	rrca			;45e9
	nop			;45ea
	nop			;45eb
	nop			;45ec
	nop			;45ed
	nop			;45ee
	nop			;45ef
	inc sp			;45f0
	ld c,033h		;45f1
	ld c,003h		;45f3
	rrca			;45f5
	nop			;45f6
	nop			;45f7
	nop			;45f8
	nop			;45f9
	ld (bc),a		;45fa
	nop			;45fb
	inc bc			;45fc
	ld c,003h		;45fd
	ld c,003h		;45ff
	rrca			;4601
	nop			;4602
	nop			;4603
	nop			;4604
	nop			;4605
	ld bc,00f00h		;4606
	ld c,00fh		;4609
	ld c,000h		;460b
	nop			;460d
	nop			;460e
	nop			;460f
	nop			;4610
	nop			;4611
	inc bc			;4612
	nop			;4613
	rrca			;4614
	ld c,00fh		;4615
	ld c,000h		;4617
	nop			;4619
	nop			;461a
	nop			;461b
	nop			;461c
	nop			;461d
	ld bc,01b00h		;461e
	ld c,01bh		;4621
	ld c,000h		;4623
	nop			;4625
	nop			;4626
	nop			;4627
	nop			;4628
	nop			;4629
	nop			;462a
	nop			;462b
	inc bc			;462c
	ld c,003h		;462d
	ld c,000h		;462f
	nop			;4631
	nop			;4632
	nop			;4633
	nop			;4634
	nop			;4635
	ld bc,00300h		;4636
	ld c,003h		;4639
	ld c,003h		;463b
	rrca			;463d
	nop			;463e
	nop			;463f
	nop			;4640
	nop			;4641
	ld bc,00f00h		;4642
	ld c,00fh		;4645
	ld c,003h		;4647
	rrca			;4649
	nop			;464a
	nop			;464b
	nop			;464c
	nop			;464d
	inc bc			;464e
	nop			;464f
	inc bc			;4650
	ld c,003h		;4651
	ld c,003h		;4653
	rrca			;4655
	nop			;4656
	nop			;4657
	nop			;4658
	nop			;4659
	ld (bc),a		;465a
	nop			;465b
	inc bc			;465c
	ld c,003h		;465d
	ld c,003h		;465f
	rrca			;4661
	nop			;4662
	nop			;4663
	nop			;4664
	nop			;4665
	nop			;4666
	nop			;4667
	rrca			;4668
	rrca			;4669
	rrca			;466a
	rrca			;466b
	rrca			;466c
	rrca			;466d
	nop			;466e
	nop			;466f
	nop			;4670
	nop			;4671
	nop			;4672
	nop			;4673
	ld h,c			;4674
	nop			;4675
	ld h,c			;4676
	nop			;4677
	ld h,c			;4678
	nop			;4679
	nop			;467a
	nop			;467b
	nop			;467c
	nop			;467d
	nop			;467e
	nop			;467f
	ld h,c			;4680
	nop			;4681
	ld h,c			;4682
	nop			;4683
	ld h,c			;4684
	nop			;4685
	ld h,c			;4686
	nop			;4687
	ld h,c			;4688
	nop			;4689
	inc bc			;468a
	nop			;468b
	ld h,c			;468c
	nop			;468d
	ld h,c			;468e
	nop			;468f
	ld h,c			;4690
	nop			;4691
	nop			;4692
	nop			;4693
	nop			;4694
	nop			;4695
	nop			;4696
	nop			;4697
	daa			;4698
	ld c,027h		;4699
	ld c,003h		;469b
	rrca			;469d
	nop			;469e
	nop			;469f
	nop			;46a0
	nop			;46a1
	ld bc,00f00h		;46a2
	ld c,00fh		;46a5
	ld c,003h		;46a7
	rrca			;46a9
	nop			;46aa
	nop			;46ab
	nop			;46ac
	nop			;46ad
	nop			;46ae
	nop			;46af
	inc sp			;46b0
	ld c,033h		;46b1
	ld c,003h		;46b3
	rrca			;46b5
	nop			;46b6
	nop			;46b7
	nop			;46b8
	nop			;46b9
	ld (bc),a		;46ba
	nop			;46bb
	inc bc			;46bc
	ld c,003h		;46bd
	ld c,003h		;46bf
	rrca			;46c1
	nop			;46c2
	nop			;46c3
	nop			;46c4
	nop			;46c5
	ld bc,00f00h		;46c6
	ld c,00fh		;46c9
	ld c,000h		;46cb
	nop			;46cd
	nop			;46ce
	nop			;46cf
	nop			;46d0
	nop			;46d1
	inc bc			;46d2
	nop			;46d3
	rrca			;46d4
	ld c,00fh		;46d5
	ld c,000h		;46d7
	nop			;46d9
	nop			;46da
	nop			;46db
	nop			;46dc
	nop			;46dd
	nop			;46de
	nop			;46df
	dec de			;46e0
	ld c,01bh		;46e1
	ld c,000h		;46e3
	nop			;46e5
	nop			;46e6
	nop			;46e7
	nop			;46e8
	nop			;46e9
	inc bc			;46ea
	nop			;46eb
	inc bc			;46ec
	ld c,003h		;46ed
	ld c,000h		;46ef
	nop			;46f1
	nop			;46f2
	nop			;46f3
	nop			;46f4
	nop			;46f5
	ld bc,00300h		;46f6
	ld c,003h		;46f9
	ld c,003h		;46fb
	rrca			;46fd
	nop			;46fe
	nop			;46ff
	nop			;4700
	nop			;4701
	inc bc			;4702
	nop			;4703
	rrca			;4704
	ld c,00fh		;4705
	ld c,003h		;4707
	rrca			;4709
	nop			;470a
	nop			;470b
	nop			;470c
	nop			;470d
	ld bc,00300h		;470e
	ld c,003h		;4711
	ld c,003h		;4713
	rrca			;4715
	nop			;4716
	nop			;4717
	nop			;4718
	nop			;4719
	inc bc			;471a
	nop			;471b
	inc bc			;471c
	ld c,003h		;471d
	ld c,003h		;471f
	rrca			;4721
	nop			;4722
	nop			;4723
	nop			;4724
	nop			;4725
	nop			;4726
	nop			;4727
	rrca			;4728
	rrca			;4729
	rrca			;472a
	rrca			;472b
	rrca			;472c
	rrca			;472d
	nop			;472e
	nop			;472f
	nop			;4730
	nop			;4731
	nop			;4732
	nop			;4733
	ld h,c			;4734
	nop			;4735
	ld h,c			;4736
	nop			;4737
	ld h,c			;4738
	nop			;4739
	nop			;473a
	nop			;473b
	nop			;473c
	nop			;473d
	nop			;473e
	nop			;473f
	ld h,c			;4740
	nop			;4741
	ld h,c			;4742
	nop			;4743
	ld h,c			;4744
	nop			;4745
	nop			;4746
	nop			;4747
	nop			;4748
	nop			;4749
	ld bc,l6100h		;474a
	nop			;474d
	ld h,c			;474e
	nop			;474f
	ld h,c			;4750
	nop			;4751
	nop			;4752
	nop			;4753
	nop			;4754
	nop			;4755
	nop			;4756
	nop			;4757
	dec h			;4758
	ld c,025h		;4759
	ld c,001h		;475b
	rrca			;475d
	nop			;475e
	nop			;475f
	nop			;4760
	nop			;4761
	ld bc,00d00h		;4762
	ld c,00dh		;4765
l4767h:
	ld c,001h		;4767
	rrca			;4769
	nop			;476a
	nop			;476b
	nop			;476c
	nop			;476d
	nop			;476e
	nop			;476f
	ld sp,0310eh		;4770
	ld c,001h		;4773
	rrca			;4775
	nop			;4776
	nop			;4777
	nop			;4778
	nop			;4779
	ld (bc),a		;477a
	nop			;477b
	ld bc,0010eh		;477c
	ld c,001h		;477f
	rrca			;4781
	nop			;4782
	nop			;4783
	nop			;4784
	nop			;4785
	ld bc,00d00h		;4786
	ld c,00dh		;4789
	ld c,000h		;478b
	nop			;478d
	nop			;478e
	nop			;478f
	nop			;4790
	nop			;4791
	inc bc			;4792
	nop			;4793
	dec c			;4794
	ld c,00dh		;4795
	ld c,000h		;4797
	nop			;4799
	nop			;479a
	nop			;479b
	nop			;479c
	nop			;479d
	nop			;479e
	nop			;479f
	add hl,de		;47a0
	ld c,019h		;47a1
	ld c,000h		;47a3
	nop			;47a5
	nop			;47a6
	nop			;47a7
	nop			;47a8
	nop			;47a9
	inc bc			;47aa
	nop			;47ab
	ld bc,0010eh		;47ac
	ld c,000h		;47af
	nop			;47b1
	nop			;47b2
	nop			;47b3
	nop			;47b4
	nop			;47b5
	ld bc,00100h		;47b6
	ld c,001h		;47b9
	ld c,001h		;47bb
	rrca			;47bd
	nop			;47be
	nop			;47bf
	nop			;47c0
	nop			;47c1
	ld bc,00d00h		;47c2
	ld c,00dh		;47c5
	ld c,001h		;47c7
	rrca			;47c9
	nop			;47ca
	nop			;47cb
	nop			;47cc
	nop			;47cd
	nop			;47ce
	nop			;47cf
	ld bc,0010eh		;47d0
	ld c,001h		;47d3
	rrca			;47d5
	nop			;47d6
	nop			;47d7
	nop			;47d8
	nop			;47d9
	ld bc,00100h		;47da
	ld c,001h		;47dd
	ld c,001h		;47df
	rrca			;47e1
	nop			;47e2
	nop			;47e3
	nop			;47e4
	nop			;47e5
	nop			;47e6
	nop			;47e7
	dec c			;47e8
	ld c,00dh		;47e9
	ld c,000h		;47eb
	nop			;47ed
	nop			;47ee
	nop			;47ef
	nop			;47f0
	nop			;47f1
	nop			;47f2
	nop			;47f3
	ld h,c			;47f4
	nop			;47f5
	ld h,c			;47f6
	nop			;47f7
	ld h,c			;47f8
	nop			;47f9
	nop			;47fa
	nop			;47fb
	nop			;47fc
	nop			;47fd
	nop			;47fe
	nop			;47ff
	ld h,c			;4800
	nop			;4801
	ld h,c			;4802
	nop			;4803
	ld h,c			;4804
	nop			;4805
	nop			;4806
	nop			;4807
	nop			;4808
	nop			;4809
	inc bc			;480a
	nop			;480b
	ld h,c			;480c
	nop			;480d
	ld h,c			;480e
	nop			;480f
	ld h,c			;4810
	nop			;4811
	nop			;4812
	nop			;4813
	nop			;4814
	nop			;4815
	nop			;4816
	nop			;4817
	dec h			;4818
	ld c,025h		;4819
	ld c,001h		;481b
	rrca			;481d
	nop			;481e
	nop			;481f
	nop			;4820
	nop			;4821
	ld bc,00d00h		;4822
	ld c,00dh		;4825
	ld c,001h		;4827
	rrca			;4829
	nop			;482a
	nop			;482b
	nop			;482c
	nop			;482d
	nop			;482e
	nop			;482f
	ld sp,0310eh		;4830
	ld c,001h		;4833
	rrca			;4835
	nop			;4836
	nop			;4837
	nop			;4838
	nop			;4839
	ld (bc),a		;483a
	nop			;483b
	ld bc,0010eh		;483c
	ld c,001h		;483f
	rrca			;4841
	nop			;4842
	nop			;4843
	nop			;4844
	nop			;4845
	nop			;4846
	nop			;4847
	dec c			;4848
	ld c,00dh		;4849
	ld c,000h		;484b
	nop			;484d
	nop			;484e
	nop			;484f
	nop			;4850
	nop			;4851
	ld bc,00d00h		;4852
	ld c,00dh		;4855
	ld c,000h		;4857
	nop			;4859
	nop			;485a
	nop			;485b
	nop			;485c
	nop			;485d
	ld (bc),a		;485e
	nop			;485f
	add hl,de		;4860
	ld c,019h		;4861
	ld c,000h		;4863
	nop			;4865
	nop			;4866
	nop			;4867
	nop			;4868
	nop			;4869
	inc bc			;486a
	nop			;486b
	ld bc,0010eh		;486c
	ld c,000h		;486f
	nop			;4871
	nop			;4872
	nop			;4873
	nop			;4874
	nop			;4875
	nop			;4876
	nop			;4877
	ld bc,0010eh		;4878
	ld c,001h		;487b
	rrca			;487d
	nop			;487e
	nop			;487f
	nop			;4880
	nop			;4881
	inc bc			;4882
	nop			;4883
	dec c			;4884
	ld c,00dh		;4885
	ld c,001h		;4887
	rrca			;4889
	nop			;488a
	nop			;488b
	nop			;488c
	nop			;488d
	nop			;488e
	nop			;488f
	ld bc,0010eh		;4890
	ld c,001h		;4893
	rrca			;4895
	nop			;4896
	nop			;4897
	nop			;4898
	nop			;4899
	inc bc			;489a
	nop			;489b
	ld bc,0010eh		;489c
	ld c,001h		;489f
	rrca			;48a1
	nop			;48a2
	nop			;48a3
	nop			;48a4
	nop			;48a5
	ld bc,00d00h		;48a6
	ld c,00dh		;48a9
	ld c,000h		;48ab
	nop			;48ad
	nop			;48ae
	nop			;48af
	nop			;48b0
	nop			;48b1
	nop			;48b2
	nop			;48b3
	ld h,c			;48b4
	nop			;48b5
	ld h,c			;48b6
	nop			;48b7
	ld h,c			;48b8
	nop			;48b9
	nop			;48ba
	nop			;48bb
	nop			;48bc
	nop			;48bd
	nop			;48be
	nop			;48bf
	ld h,d			;48c0
	rlca			;48c1
	ld h,d			;48c2
	rlca			;48c3
	inc bc			;48c4
	rrca			;48c5
	ld h,c			;48c6
	nop			;48c7
	ld h,c			;48c8
	nop			;48c9
	ld bc,06a00h		;48ca
	inc b			;48cd
	ld l,c			;48ce
	inc b			;48cf
	inc bc			;48d0
	rrca			;48d1
	nop			;48d2
	nop			;48d3
	nop			;48d4
	nop			;48d5
	nop			;48d6
	nop			;48d7
	daa			;48d8
	ld c,027h		;48d9
	ld c,003h		;48db
	rrca			;48dd
	nop			;48de
	nop			;48df
	nop			;48e0
	nop			;48e1
	ld bc,00f00h		;48e2
	ld c,00fh		;48e5
	ld c,003h		;48e7
	rrca			;48e9
	nop			;48ea
	nop			;48eb
	nop			;48ec
	nop			;48ed
	nop			;48ee
	nop			;48ef
	inc sp			;48f0
	ld c,033h		;48f1
	ld c,003h		;48f3
	rrca			;48f5
	nop			;48f6
	nop			;48f7
	nop			;48f8
	nop			;48f9
	ld (bc),a		;48fa
	nop			;48fb
	inc bc			;48fc
	ld c,003h		;48fd
	ld c,003h		;48ff
	rrca			;4901
	nop			;4902
	nop			;4903
	nop			;4904
	nop			;4905
	ld bc,00f00h		;4906
	ld c,00fh		;4909
	ld c,000h		;490b
	nop			;490d
	nop			;490e
	nop			;490f
	nop			;4910
	nop			;4911
	inc bc			;4912
	nop			;4913
	rrca			;4914
	ld c,00fh		;4915
	ld c,000h		;4917
	nop			;4919
	nop			;491a
	nop			;491b
	nop			;491c
	nop			;491d
	ld bc,01b00h		;491e
	ld c,01bh		;4921
	ld c,000h		;4923
	nop			;4925
	nop			;4926
	nop			;4927
	nop			;4928
	nop			;4929
	nop			;492a
	nop			;492b
	inc bc			;492c
	ld c,003h		;492d
	ld c,000h		;492f
	nop			;4931
	nop			;4932
	nop			;4933
	nop			;4934
	nop			;4935
	ld bc,00300h		;4936
	ld c,003h		;4939
	ld c,003h		;493b
	rrca			;493d
	nop			;493e
	nop			;493f
	nop			;4940
	nop			;4941
	ld bc,00f00h		;4942
	ld c,00fh		;4945
	ld c,003h		;4947
	rrca			;4949
	nop			;494a
	nop			;494b
	nop			;494c
	nop			;494d
	inc bc			;494e
	nop			;494f
	inc bc			;4950
	ld c,003h		;4951
	ld c,003h		;4953
	rrca			;4955
	nop			;4956
	nop			;4957
	nop			;4958
	nop			;4959
	ld (bc),a		;495a
	nop			;495b
	inc bc			;495c
	ld c,003h		;495d
	ld c,003h		;495f
	rrca			;4961
	nop			;4962
	nop			;4963
	nop			;4964
	nop			;4965
	nop			;4966
	nop			;4967
	rrca			;4968
	rrca			;4969
	rrca			;496a
	rrca			;496b
	rrca			;496c
	rrca			;496d
	nop			;496e
	nop			;496f
	nop			;4970
	nop			;4971
	nop			;4972
	nop			;4973
	ld h,c			;4974
	nop			;4975
	ld h,c			;4976
	nop			;4977
	ld h,c			;4978
	nop			;4979
	nop			;497a
	nop			;497b
	nop			;497c
	nop			;497d
	nop			;497e
	nop			;497f
	ld h,c			;4980
	nop			;4981
	ld h,c			;4982
	nop			;4983
	ld h,c			;4984
	nop			;4985
	ld h,c			;4986
	nop			;4987
	ld h,c			;4988
	nop			;4989
	inc bc			;498a
	nop			;498b
	ld h,c			;498c
	nop			;498d
	ld h,c			;498e
	nop			;498f
	ld h,c			;4990
	nop			;4991
	nop			;4992
	nop			;4993
	nop			;4994
	nop			;4995
	nop			;4996
	nop			;4997
	daa			;4998
	ld c,027h		;4999
	ld c,003h		;499b
	rrca			;499d
	nop			;499e
	nop			;499f
	nop			;49a0
	nop			;49a1
	ld bc,00f00h		;49a2
	ld c,00fh		;49a5
	ld c,003h		;49a7
	rrca			;49a9
	nop			;49aa
	nop			;49ab
	nop			;49ac
	nop			;49ad
	nop			;49ae
	nop			;49af
	inc sp			;49b0
	ld c,033h		;49b1
	ld c,003h		;49b3
	rrca			;49b5
	nop			;49b6
	nop			;49b7
	nop			;49b8
	nop			;49b9
	ld (bc),a		;49ba
	nop			;49bb
	inc bc			;49bc
	ld c,003h		;49bd
	ld c,003h		;49bf
	rrca			;49c1
	nop			;49c2
	nop			;49c3
	nop			;49c4
	nop			;49c5
	ld bc,00f00h		;49c6
	ld c,00fh		;49c9
	ld c,000h		;49cb
	nop			;49cd
	nop			;49ce
	nop			;49cf
	nop			;49d0
	nop			;49d1
	inc bc			;49d2
	nop			;49d3
	rrca			;49d4
	ld c,00fh		;49d5
	ld c,000h		;49d7
	nop			;49d9
	nop			;49da
	nop			;49db
	nop			;49dc
	nop			;49dd
	nop			;49de
	nop			;49df
	dec de			;49e0
	ld c,01bh		;49e1
	ld c,000h		;49e3
	nop			;49e5
	nop			;49e6
	nop			;49e7
	nop			;49e8
	nop			;49e9
	inc bc			;49ea
	nop			;49eb
	inc bc			;49ec
	ld c,003h		;49ed
	ld c,000h		;49ef
	nop			;49f1
	nop			;49f2
	nop			;49f3
	nop			;49f4
	nop			;49f5
	ld bc,00300h		;49f6
	ld c,003h		;49f9
	ld c,003h		;49fb
	rrca			;49fd
	nop			;49fe
	nop			;49ff
	nop			;4a00
	nop			;4a01
	inc bc			;4a02
	nop			;4a03
	rrca			;4a04
	ld c,00fh		;4a05
	ld c,003h		;4a07
	rrca			;4a09
	nop			;4a0a
	nop			;4a0b
	nop			;4a0c
	nop			;4a0d
	ld bc,00300h		;4a0e
	ld c,003h		;4a11
	ld c,003h		;4a13
	rrca			;4a15
	nop			;4a16
	nop			;4a17
	nop			;4a18
	nop			;4a19
	inc bc			;4a1a
	nop			;4a1b
	inc bc			;4a1c
	ld c,003h		;4a1d
	ld c,003h		;4a1f
	rrca			;4a21
	nop			;4a22
	nop			;4a23
	nop			;4a24
	nop			;4a25
	nop			;4a26
	nop			;4a27
	rrca			;4a28
	rrca			;4a29
	rrca			;4a2a
	rrca			;4a2b
	rrca			;4a2c
	rrca			;4a2d
	nop			;4a2e
	nop			;4a2f
	nop			;4a30
	nop			;4a31
	nop			;4a32
	nop			;4a33
	ld h,c			;4a34
	nop			;4a35
	ld h,c			;4a36
	nop			;4a37
	ld h,c			;4a38
	nop			;4a39
	nop			;4a3a
	nop			;4a3b
	nop			;4a3c
	nop			;4a3d
	nop			;4a3e
	nop			;4a3f
	ld h,c			;4a40
	nop			;4a41
	ld h,c			;4a42
	nop			;4a43
	ld h,c			;4a44
	nop			;4a45
	nop			;4a46
	nop			;4a47
	nop			;4a48
	nop			;4a49
	ld bc,l6100h		;4a4a
	nop			;4a4d
	ld h,c			;4a4e
	nop			;4a4f
	ld h,c			;4a50
	nop			;4a51
	nop			;4a52
	nop			;4a53
	nop			;4a54
	nop			;4a55
	nop			;4a56
	nop			;4a57
	dec h			;4a58
	rrca			;4a59
	dec h			;4a5a
	ld c,001h		;4a5b
	rrca			;4a5d
	nop			;4a5e
	nop			;4a5f
	nop			;4a60
	nop			;4a61
	ld bc,00d00h		;4a62
	rrca			;4a65
	dec c			;4a66
	ld c,001h		;4a67
	rrca			;4a69
	nop			;4a6a
	nop			;4a6b
	nop			;4a6c
	nop			;4a6d
	nop			;4a6e
	nop			;4a6f
	ld sp,0310fh		;4a70
	ld c,001h		;4a73
	rrca			;4a75
	nop			;4a76
	nop			;4a77
	nop			;4a78
	nop			;4a79
	ld (bc),a		;4a7a
	nop			;4a7b
	ld bc,0010fh		;4a7c
	ld c,001h		;4a7f
	rrca			;4a81
	nop			;4a82
	nop			;4a83
	nop			;4a84
	nop			;4a85
	ld bc,00d00h		;4a86
	rrca			;4a89
	dec c			;4a8a
	ld c,000h		;4a8b
	nop			;4a8d
	nop			;4a8e
	nop			;4a8f
	nop			;4a90
	nop			;4a91
	inc bc			;4a92
	nop			;4a93
	dec c			;4a94
	rrca			;4a95
	dec c			;4a96
	ld c,000h		;4a97
	nop			;4a99
	nop			;4a9a
	nop			;4a9b
	nop			;4a9c
	nop			;4a9d
	nop			;4a9e
	nop			;4a9f
	add hl,de		;4aa0
	rrca			;4aa1
	add hl,de		;4aa2
	ld c,000h		;4aa3
	nop			;4aa5
	nop			;4aa6
	nop			;4aa7
	nop			;4aa8
	nop			;4aa9
	inc bc			;4aaa
	nop			;4aab
	ld bc,0010fh		;4aac
	ld c,000h		;4aaf
	nop			;4ab1
	nop			;4ab2
	nop			;4ab3
	nop			;4ab4
	nop			;4ab5
	ld bc,00100h		;4ab6
	rrca			;4ab9
	ld bc,0010eh		;4aba
	rrca			;4abd
	nop			;4abe
	nop			;4abf
	nop			;4ac0
	nop			;4ac1
	ld bc,00d00h		;4ac2
	rrca			;4ac5
	dec c			;4ac6
	ld c,001h		;4ac7
	rrca			;4ac9
	nop			;4aca
	nop			;4acb
	nop			;4acc
	nop			;4acd
	nop			;4ace
	nop			;4acf
	ld bc,0010fh		;4ad0
	ld c,001h		;4ad3
	rrca			;4ad5
	nop			;4ad6
	nop			;4ad7
	nop			;4ad8
	nop			;4ad9
	ld bc,00100h		;4ada
	rrca			;4add
	ld bc,0010eh		;4ade
	rrca			;4ae1
	nop			;4ae2
	nop			;4ae3
	nop			;4ae4
	nop			;4ae5
	nop			;4ae6
	nop			;4ae7
	dec c			;4ae8
	rrca			;4ae9
	dec c			;4aea
	ld c,000h		;4aeb
	nop			;4aed
	nop			;4aee
	nop			;4aef
	nop			;4af0
	nop			;4af1
	nop			;4af2
	nop			;4af3
	ld h,c			;4af4
	nop			;4af5
	ld h,c			;4af6
	nop			;4af7
	ld h,c			;4af8
	nop			;4af9
	nop			;4afa
	nop			;4afb
	nop			;4afc
	nop			;4afd
	nop			;4afe
	nop			;4aff
	ld h,c			;4b00
	nop			;4b01
	ld h,c			;4b02
	nop			;4b03
	ld h,c			;4b04
	nop			;4b05
	nop			;4b06
	nop			;4b07
	nop			;4b08
	nop			;4b09
	inc bc			;4b0a
	nop			;4b0b
	ld h,c			;4b0c
	nop			;4b0d
	ld h,c			;4b0e
	nop			;4b0f
	ld h,c			;4b10
	nop			;4b11
	nop			;4b12
	nop			;4b13
	nop			;4b14
	nop			;4b15
	nop			;4b16
	nop			;4b17
	dec h			;4b18
	rrca			;4b19
	dec h			;4b1a
	rrca			;4b1b
	ld bc,0000fh		;4b1c
	nop			;4b1f
	nop			;4b20
	nop			;4b21
	ld bc,00d00h		;4b22
	rrca			;4b25
	dec c			;4b26
	rrca			;4b27
	ld bc,0000fh		;4b28
	nop			;4b2b
	nop			;4b2c
	nop			;4b2d
	nop			;4b2e
	nop			;4b2f
	ld sp,0310fh		;4b30
	rrca			;4b33
	ld bc,0000fh		;4b34
	nop			;4b37
	nop			;4b38
	nop			;4b39
	ld (bc),a		;4b3a
	nop			;4b3b
	ld bc,0010fh		;4b3c
	rrca			;4b3f
	ld bc,0000fh		;4b40
	nop			;4b43
	nop			;4b44
	nop			;4b45
	nop			;4b46
	nop			;4b47
	dec c			;4b48
	rrca			;4b49
	dec c			;4b4a
	rrca			;4b4b
	nop			;4b4c
	nop			;4b4d
	nop			;4b4e
	nop			;4b4f
	nop			;4b50
	nop			;4b51
	ld bc,00d00h		;4b52
	rrca			;4b55
	dec c			;4b56
	rrca			;4b57
	nop			;4b58
	nop			;4b59
	nop			;4b5a
	nop			;4b5b
	nop			;4b5c
	nop			;4b5d
	ld (bc),a		;4b5e
	nop			;4b5f
	add hl,de		;4b60
	rrca			;4b61
	add hl,de		;4b62
	rrca			;4b63
	nop			;4b64
	nop			;4b65
	nop			;4b66
	nop			;4b67
	nop			;4b68
	nop			;4b69
	inc bc			;4b6a
	nop			;4b6b
	ld bc,0010fh		;4b6c
	rrca			;4b6f
	nop			;4b70
	nop			;4b71
	nop			;4b72
	nop			;4b73
	nop			;4b74
	nop			;4b75
	nop			;4b76
	nop			;4b77
	ld bc,0010fh		;4b78
	rrca			;4b7b
	ld bc,0000fh		;4b7c
	nop			;4b7f
	nop			;4b80
	nop			;4b81
	inc bc			;4b82
	nop			;4b83
	dec c			;4b84
	rrca			;4b85
	dec c			;4b86
	rrca			;4b87
	ld bc,0000fh		;4b88
	nop			;4b8b
	nop			;4b8c
	nop			;4b8d
	nop			;4b8e
	nop			;4b8f
	ld bc,0010fh		;4b90
	rrca			;4b93
	ld bc,0000fh		;4b94
	nop			;4b97
	nop			;4b98
	nop			;4b99
	inc bc			;4b9a
	nop			;4b9b
	ld bc,0010fh		;4b9c
	rrca			;4b9f
	ld bc,0000fh		;4ba0
	nop			;4ba3
	nop			;4ba4
	nop			;4ba5
	ld bc,00d00h		;4ba6
	rrca			;4ba9
	dec c			;4baa
	rrca			;4bab
	nop			;4bac
	nop			;4bad
	nop			;4bae
	nop			;4baf
	nop			;4bb0
	nop			;4bb1
	nop			;4bb2
	nop			;4bb3
	ld h,c			;4bb4
	nop			;4bb5
	ld h,c			;4bb6
	nop			;4bb7
	ld h,c			;4bb8
	nop			;4bb9
	nop			;4bba
	nop			;4bbb
	nop			;4bbc
	nop			;4bbd
	nop			;4bbe
	nop			;4bbf
	ld h,d			;4bc0
	rlca			;4bc1
	ld h,d			;4bc2
l4bc3h:
	rlca			;4bc3
	rrca			;4bc4
	ld a,(bc)		;4bc5
	nop			;4bc6
	nop			;4bc7
	nop			;4bc8
	nop			;4bc9
	ld bc,06a00h		;4bca
	inc b			;4bcd
	ld l,c			;4bce
	inc b			;4bcf
	rrca			;4bd0
	ld a,(bc)		;4bd1
	nop			;4bd2
	nop			;4bd3
	nop			;4bd4
	nop			;4bd5
	nop			;4bd6
	nop			;4bd7
	daa			;4bd8
	rrca			;4bd9
	daa			;4bda
	rrca			;4bdb
	rrca			;4bdc
	ld a,(bc)		;4bdd
	nop			;4bde
	nop			;4bdf
	nop			;4be0
	nop			;4be1
	ld bc,00f00h		;4be2
	rrca			;4be5
	rrca			;4be6
	rrca			;4be7
	inc bc			;4be8
	ld a,(bc)		;4be9
	nop			;4bea
	nop			;4beb
	nop			;4bec
	nop			;4bed
	nop			;4bee
	nop			;4bef
	inc sp			;4bf0
	rrca			;4bf1
	inc sp			;4bf2
	rrca			;4bf3
	inc bc			;4bf4
	ld a,(bc)		;4bf5
	nop			;4bf6
	nop			;4bf7
	nop			;4bf8
	nop			;4bf9
	ld (bc),a		;4bfa
	nop			;4bfb
	inc bc			;4bfc
	rrca			;4bfd
	inc bc			;4bfe
	rrca			;4bff
	inc bc			;4c00
	ld a,(bc)		;4c01
	nop			;4c02
	nop			;4c03
	nop			;4c04
	nop			;4c05
	ld bc,00f00h		;4c06
	rrca			;4c09
	rrca			;4c0a
	rrca			;4c0b
	rrca			;4c0c
	ld a,(bc)		;4c0d
	nop			;4c0e
	nop			;4c0f
	nop			;4c10
	nop			;4c11
	inc bc			;4c12
	nop			;4c13
	rrca			;4c14
	rrca			;4c15
	rrca			;4c16
	rrca			;4c17
	rrca			;4c18
	ld a,(bc)		;4c19
	nop			;4c1a
	nop			;4c1b
	nop			;4c1c
	nop			;4c1d
	ld bc,01b00h		;4c1e
	rrca			;4c21
	dec de			;4c22
	rrca			;4c23
	rrca			;4c24
	ld a,(bc)		;4c25
	nop			;4c26
	nop			;4c27
	nop			;4c28
	nop			;4c29
	nop			;4c2a
	nop			;4c2b
	inc bc			;4c2c
	rrca			;4c2d
	inc bc			;4c2e
	rrca			;4c2f
	rrca			;4c30
	ld a,(bc)		;4c31
	nop			;4c32
	nop			;4c33
	nop			;4c34
	nop			;4c35
	ld bc,00300h		;4c36
	rrca			;4c39
	inc bc			;4c3a
	rrca			;4c3b
	rrca			;4c3c
	ld a,(bc)		;4c3d
	nop			;4c3e
	nop			;4c3f
	nop			;4c40
	nop			;4c41
	ld bc,00f00h		;4c42
	rrca			;4c45
	rrca			;4c46
	rrca			;4c47
	rrca			;4c48
	ld a,(bc)		;4c49
	nop			;4c4a
	nop			;4c4b
	nop			;4c4c
	nop			;4c4d
	inc bc			;4c4e
	nop			;4c4f
	inc bc			;4c50
	rrca			;4c51
	inc bc			;4c52
	rrca			;4c53
	rrca			;4c54
	ld a,(bc)		;4c55
	nop			;4c56
	nop			;4c57
	nop			;4c58
	nop			;4c59
	ld (bc),a		;4c5a
	nop			;4c5b
	inc bc			;4c5c
	rrca			;4c5d
	inc bc			;4c5e
	rrca			;4c5f
	rrca			;4c60
	ld a,(bc)		;4c61
	nop			;4c62
	nop			;4c63
	nop			;4c64
	nop			;4c65
	nop			;4c66
	nop			;4c67
	rrca			;4c68
	rrca			;4c69
	rrca			;4c6a
	rrca			;4c6b
	inc bc			;4c6c
	ld a,(bc)		;4c6d
	nop			;4c6e
	nop			;4c6f
	nop			;4c70
	nop			;4c71
	inc bc			;4c72
	nop			;4c73
	inc bc			;4c74
	rrca			;4c75
	inc bc			;4c76
	rrca			;4c77
	inc bc			;4c78
	ld a,(bc)		;4c79
	nop			;4c7a
	nop			;4c7b
	nop			;4c7c
	nop			;4c7d
	nop			;4c7e
	nop			;4c7f
	nop			;4c80
	rst 8			;4c81
	jp 0c0b7h		;4c82
	ld (hl),024h		;4c85
	inc hl			;4c87
	inc hl			;4c88
	ld a,(hl)		;4c89
	sub 020h		;4c8a
	ld (hl),a		;4c8c
	dec hl			;4c8d
	dec hl			;4c8e
	ld a,048h		;4c8f
	ld (0c3cfh),a		;4c91
	ret			;4c94
	ld a,(0c1f7h)		;4c95
	cp 002h			;4c98
	ret c			;4c9a
	ret nz			;4c9b
	ld a,(0c1f6h)		;4c9c
	cp 028h			;4c9f
	ret			;4ca1
	ld a,(0c145h)		;4ca2
	or a			;4ca5
	ret nz			;4ca6
	ld a,(l72aah)		;4ca7
	dec a			;4caa
	ld (l72aah),a		;4cab
	ret nz			;4cae
	ld a,(l72abh)		;4caf
	ld (l72aah),a		;4cb2
	ld hl,l72ach		;4cb5
	ld de,072dch		;4cb8
	ld b,030h		;4cbb
l4cbdh:
	call sub_727fh		;4cbd
	inc hl			;4cc0
	inc de			;4cc1
	djnz l4cbdh		;4cc2
	ld hl,072dch		;4cc4
	ld de,0730ch		;4cc7
	ld b,010h		;4cca
l4ccch:
	ld a,(hl)		;4ccc
	add a,a			;4ccd
	add a,a			;4cce
	add a,a			;4ccf
	add a,a			;4cd0
	inc hl			;4cd1
	inc hl			;4cd2
	ld c,(hl)		;4cd3
	add a,c			;4cd4
	dec hl			;4cd5
	ld c,(hl)		;4cd6
	inc hl			;4cd7
	inc hl			;4cd8
	ld (de),a		;4cd9
	inc de			;4cda
	ld a,c			;4cdb
	ld (de),a		;4cdc
	inc de			;4cdd
	djnz l4ccch		;4cde
	ld hl,0730ch		;4ce0
	call 002e9h		;4ce3
	ld a,(0c398h)		;4ce6
	dec a			;4ce9
	ld (0c398h),a		;4cea
	ret nz			;4ced
	ld a,00ah		;4cee
	ld (0c398h),a		;4cf0
	ld a,001h		;4cf3
	ld (0c145h),a		;4cf5
	ld b,050h		;4cf8
	ld hl,072dch		;4cfa
	xor a			;4cfd
l4cfeh:
	inc hl			;4cfe
	djnz l4cfeh		;4cff
	ret			;4d01
	ld a,(de)		;4d02
	cp (hl)			;4d03
	ret z			;4d04
	inc a			;4d05
	ld (de),a		;4d06
	ret			;4d07
	ld a,(l72aah)		;4d08
	dec a			;4d0b
	ld (l72aah),a		;4d0c
	ret nz			;4d0f
	ld a,(l72abh)		;4d10
	ld (l72aah),a		;4d13
	ld hl,072dch		;4d16
l4d19h:
	ld a,(hl)		;4d19
	dec a			;4d1a
	cp 0ffh			;4d1b
	jr nz,l4d20h		;4d1d
	xor a			;4d1f
l4d20h:
	ld (hl),a		;4d20
	inc hl			;4d21
	djnz l4d19h		;4d22
	call 07241h		;4d24
	ld a,00ah		;4d27
	ld (0c398h),a		;4d29
	ret			;4d2c
	ld (bc),a		;4d2d
	inc bc			;4d2e
	nop			;4d2f
	nop			;4d30
	ld bc,00203h		;4d31
	nop			;4d34
	ld b,005h		;4d35
	nop			;4d37
	rlca			;4d38
	rlca			;4d39
	inc b			;4d3a
	ld (bc),a		;4d3b
	ld (bc),a		;4d3c
	ld (bc),a		;4d3d
	nop			;4d3e
	nop			;4d3f
	nop			;4d40
	nop			;4d41
	nop			;4d42
	nop			;4d43
	nop			;4d44
	nop			;4d45
	nop			;4d46
	ld bc,00101h		;4d47
	nop			;4d4a
	nop			;4d4b
	nop			;4d4c
	ld bc,00701h		;4d4d
	rlca			;4d50
	rlca			;4d51
	rlca			;4d52
	inc bc			;4d53
	inc bc			;4d54
	inc bc			;4d55
	inc b			;4d56
	inc b			;4d57
	dec b			;4d58
	rlca			;4d59
	rlca			;4d5a
	nop			;4d5b
	rlca			;4d5c
	nop			;4d5d
	nop			;4d5e
	nop			;4d5f
	nop			;4d60
	nop			;4d61
	nop			;4d62
	nop			;4d63
	nop			;4d64
	nop			;4d65
	nop			;4d66
	nop			;4d67
	nop			;4d68
	nop			;4d69
	nop			;4d6a
	nop			;4d6b
	nop			;4d6c
	nop			;4d6d
	nop			;4d6e
	nop			;4d6f
	nop			;4d70
	nop			;4d71
	nop			;4d72
	nop			;4d73
	nop			;4d74
	nop			;4d75
	nop			;4d76
	nop			;4d77
	nop			;4d78
	nop			;4d79
	nop			;4d7a
	nop			;4d7b
	nop			;4d7c
	nop			;4d7d
	nop			;4d7e
	nop			;4d7f
	nop			;4d80
	nop			;4d81
	nop			;4d82
	nop			;4d83
	nop			;4d84
	nop			;4d85
	nop			;4d86
	nop			;4d87
	nop			;4d88
	nop			;4d89
	nop			;4d8a
	nop			;4d8b
	nop			;4d8c
	nop			;4d8d
	nop			;4d8e
	nop			;4d8f
	nop			;4d90
	nop			;4d91
	nop			;4d92
	nop			;4d93
	nop			;4d94
	nop			;4d95
	nop			;4d96
	nop			;4d97
	nop			;4d98
	nop			;4d99
	nop			;4d9a
	nop			;4d9b
	nop			;4d9c
	nop			;4d9d
	nop			;4d9e
	nop			;4d9f
	nop			;4da0
	nop			;4da1
	nop			;4da2
	nop			;4da3
	nop			;4da4
	nop			;4da5
	nop			;4da6
	nop			;4da7
	nop			;4da8
	nop			;4da9
	nop			;4daa
	nop			;4dab
	nop			;4dac
	nop			;4dad
	nop			;4dae
	ld a,(0c1b0h)		;4daf
	or a			;4db2
	ret z			;4db3
	call 0056ch		;4db4
	ld a,(0c1b0h)		;4db7
	inc a			;4dba
	ld (0c1b0h),a		;4dbb
	cp 002h			;4dbe
	jp z,l7357h		;4dc0
	cp 004h			;4dc3
	ret nz			;4dc5
	ld a,(0c1b1h)		;4dc6
	or a			;4dc9
	ld hl,l7361h		;4dca
	jp z,07350h		;4dcd
	ld hl,073a1h		;4dd0
	ld bc,0209ah		;4dd3
	xor a			;4dd6
	jp 002deh		;4dd7
	ld bc,0209ah		;4dda
	ld hl,l7381h		;4ddd
	xor a			;4de0
	jp 002deh		;4de1
	ld bc,03000h		;4de4
	ld (bc),a		;4de7
	ld h,b			;4de8
	dec b			;4de9
	ld (hl),h		;4dea
	rlca			;4deb
	ld (l6502h),hl		;4dec
	ld b,054h		;4def
	dec b			;4df1
	ld b,e			;4df2
	inc b			;4df3
	ld de,00001h		;4df4
	nop			;4df7
	rla			;4df8
	ld bc,00777h		;4df9
	inc sp			;4dfc
	inc bc			;4dfd
	ld b,l			;4dfe
	inc b			;4dff
	ld (hl),b		;4e00
	rlca			;4e01
	ld (hl),b		;4e02
	nop			;4e03
	ld bc,03000h		;4e04
	inc bc			;4e07
	ld h,b			;4e08
	ld b,075h		;4e09
	rlca			;4e0b
	ld h,d			;4e0c
	ld (bc),a		;4e0d
	ld (hl),l		;4e0e
	ld b,064h		;4e0f
	dec b			;4e11
	ld d,e			;4e12
	inc b			;4e13
	ld d,c			;4e14
	ld bc,00000h		;4e15
	rla			;4e18
	ld bc,00777h		;4e19
	ld (hl),d		;4e1c
	inc bc			;4e1d
	ld b,l			;4e1e
	inc b			;4e1f
	ld (hl),b		;4e20
	rlca			;4e21
	ld (hl),e		;4e22
	inc bc			;4e23
	ld bc,03000h		;4e24
	ld bc,00360h		;4e27
	ld (hl),e		;4e2a
	dec b			;4e2b
	ld (l7502h),hl		;4e2c
	ld b,073h		;4e2f
	dec b			;4e31
	ld d,b			;4e32
	ld (bc),a		;4e33
	ld de,00001h		;4e34
	nop			;4e37
	rla			;4e38
	ld bc,00777h		;4e39
	inc sp			;4e3c
	inc bc			;4e3d
	ld b,l			;4e3e
	inc b			;4e3f
	ld (hl),b		;4e40
	rlca			;4e41
	ld (hl),b		;4e42
	nop			;4e43
	nop			;4e44
	ld hl,l73f0h		;4e45
	ld de,l5460h		;4e48
	ld bc,0000ch		;4e4b
	ldir			;4e4e
	ld a,0feh		;4e50
	ld (l5639h),a		;4e52
	ret			;4e55
	ld hl,l73fch		;4e56
	ld de,l5460h		;4e59
	ld bc,0000ch		;4e5c
	ldir			;4e5f
	ret			;4e61
	ld hl,l73f0h		;4e62
	ld de,l5460h		;4e65
	ld bc,0000ch		;4e68
	ldir			;4e6b
	ld a,0c9h		;4e6d
	ld (l5639h),a		;4e6f
	ret			;4e72
	xor a			;4e73
	ld (0c160h),a		;4e74
	ld a,006h		;4e77
	ld (0c238h),a		;4e79
	ld (0c23ch),a		;4e7c
	ld a,002h		;4e7f
	ld (0c160h),a		;4e81
	jp l546ch		;4e84
	ld de,00006h		;4e87
	add hl,de		;4e8a
	ld e,(hl)		;4e8b
	ld d,000h		;4e8c
	push hl			;4e8e
	ld hl,l7416h		;4e8f
	add hl,de		;4e92
	ld e,(hl)		;4e93
	inc hl			;4e94
	ld d,(hl)		;4e95
	pop hl			;4e96
	push de			;4e97
	ret			;4e98
	adc a,a			;4e99
	ld (hl),h		;4e9a
	ld d,a			;4e9b
	ld (hl),l		;4e9c
	and b			;4e9d
	halt			;4e9e
	add a,a			;4e9f
	ld (hl),a		;4ea0
	ld a,b			;4ea1
	ld a,b			;4ea2
	ld d,b			;4ea3
	ld a,c			;4ea4
	cp e			;4ea5
	ld a,c			;4ea6
	ld d,b			;4ea7
	ld a,e			;4ea8
	inc bc			;4ea9
	ld a,h			;4eaa
	add a,c			;4eab
	ld (hl),a		;4eac
	adc a,b			;4ead
	ld a,c			;4eae
	ld de,00003h		;4eaf
	add hl,de		;4eb2
	ld a,(hl)		;4eb3
	dec a			;4eb4
	jp nz,l7441h		;4eb5
	ld a,(0c148h)		;4eb8
	and 003h		;4ebb
	ld a,002h		;4ebd
	jp z,07440h		;4ebf
	xor a			;4ec2
	ld (hl),a		;4ec3
	sbc hl,de		;4ec4
	ret			;4ec6
	ld a,001h		;4ec7
	ld (0c39dh),a		;4ec9
	ld a,001h		;4ecc
	ld (0c39eh),a		;4ece
	ret			;4ed1
	ld c,07fh		;4ed2
	jp sub_7454h+2		;4ed4
	ld c,03fh		;4ed7
	push hl			;4ed9
	ld a,(hl)		;4eda
	add a,002h		;4edb
	and c			;4edd
	ld (hl),a		;4ede
	ld h,000h		;4edf
	ld l,a			;4ee1
	add hl,de		;4ee2
	ld b,(hl)		;4ee3
	inc hl			;4ee4
	ld c,(hl)		;4ee5
	pop hl			;4ee6
	dec hl			;4ee7
	dec hl			;4ee8
	dec hl			;4ee9
	ld a,(hl)		;4eea
	add a,c			;4eeb
	ld (hl),a		;4eec
	dec hl			;4eed
	ld a,(hl)		;4eee
	add a,b			;4eef
	ld (hl),a		;4ef0
	ret			;4ef1
	nop			;4ef2
	cp 000h			;4ef3
	cp 000h			;4ef5
	cp 0ffh			;4ef7
	cp 0ffh			;4ef9
	cp 0ffh			;4efb
	cp 0ffh			;4efd
	cp 0ffh			;4eff
	cp 0feh			;4f01
	cp 0ffh			;4f03
	cp 0feh			;4f05
	rst 38h			;4f07
	cp 000h			;4f08
	cp 0feh			;4f0a
	cp 0ffh			;4f0c
	cp 0ffh			;4f0e
	cp 000h			;4f10
	dec hl			;4f12
	ld a,(hl)		;4f13
	and 002h		;4f14
	ld b,000h		;4f16
	dec hl			;4f18
	dec hl			;4f19
	jp z,l74a4h		;4f1a
	ld b,0ffh		;4f1d
	ld a,r			;4f1f
	or a			;4f21
	jp nz,l74a4h		;4f22
	ld (hl),032h		;4f25
	ld a,(hl)		;4f27
	inc hl			;4f28
	inc hl			;4f29
	or a			;4f2a
	cp 031h			;4f2b
	ld b,001h		;4f2d
	ld c,002h		;4f2f
	jp nz,l74b5h		;4f31
	ld c,0feh		;4f34
	ld b,0ffh		;4f36
	ld a,(hl)		;4f38
	sub c			;4f39
	and 01fh		;4f3a
	ld (hl),a		;4f3c
	ld e,a			;4f3d
	ld d,000h		;4f3e
	dec hl			;4f40
	ld a,(hl)		;4f41
	jp nz,l74c6h		;4f42
	sub b			;4f45
	and 003h		;4f46
	ld (hl),a		;4f48
	ld c,a			;4f49
	push hl			;4f4a
	ld hl,0746fh		;4f4b
	add hl,de		;4f4e
	ld a,c			;4f4f
	or a			;4f50
	jp z,074f7h		;4f51
	dec a			;4f54
	jp z,074eeh		;4f55
	dec a			;4f58
	jp z,074e2h		;4f59
	ld e,(hl)		;4f5c
	inc hl			;4f5d
	ld a,(hl)		;4f5e
	neg			;4f5f
	ld d,a			;4f61
	jp l74fah		;4f62
	ld a,(hl)		;4f65
	neg			;4f66
	ld d,a			;4f68
	inc hl			;4f69
	ld a,(hl)		;4f6a
	neg			;4f6b
	ld e,a			;4f6d
	jp l74fah		;4f6e
	ld a,(hl)		;4f71
	neg			;4f72
	ld e,a			;4f74
	inc hl			;4f75
	ld d,(hl)		;4f76
	jp l74fah		;4f77
	ld d,(hl)		;4f7a
	inc hl			;4f7b
	ld e,(hl)		;4f7c
	pop hl			;4f7d
	dec hl			;4f7e
	dec hl			;4f7f
	dec hl			;4f80
	ld a,(hl)		;4f81
	add a,e			;4f82
	add a,b			;4f83
	cp 0ceh			;4f84
	jp c,07507h		;4f86
	dec a			;4f89
	ld (hl),a		;4f8a
	ld a,r			;4f8b
	and 00fh		;4f8d
	call z,l7c66h+1		;4f8f
	dec hl			;4f92
	ld a,(hl)		;4f93
	add a,d			;4f94
	ld (hl),a		;4f95
	ret			;4f96
	nop			;4f97
	rst 38h			;4f98
	rst 38h			;4f99
	cp 0ffh			;4f9a
	rst 38h			;4f9c
	cp 0feh			;4f9d
	rst 38h			;4f9f
	rst 38h			;4fa0
	cp 0feh			;4fa1
	rst 38h			;4fa3
	defb 0fdh,0feh,0feh ;illegal sequence	;4fa4
	rst 38h			;4fa7
	cp 0feh			;4fa8
	rst 38h			;4faa
	rst 38h			;4fab
	rst 38h			;4fac
	cp 000h			;4fad
	rst 38h			;4faf
	nop			;4fb0
	cp 000h			;4fb1
	rst 38h			;4fb3
	ld bc,001feh		;4fb4
	rst 38h			;4fb7
	ld bc,001feh		;4fb8
	rst 38h			;4fbb
	ld (bc),a		;4fbc
	cp 001h			;4fbd
	rst 38h			;4fbf
	ld bc,002feh		;4fc0
	rst 38h			;4fc3
	ld (bc),a		;4fc4
	cp 003h			;4fc5
	rst 38h			;4fc7
	ld bc,000feh		;4fc8
	rst 38h			;4fcb
	ld (bc),a		;4fcc
	cp 001h			;4fcd
	rst 38h			;4fcf
	ld bc,000feh		;4fd0
	rst 38h			;4fd3
	nop			;4fd4
	cp 000h			;4fd5
	rst 38h			;4fd7
	ld h,h			;4fd8
	ld h,h			;4fd9
	inc hl			;4fda
	ld a,(hl)		;4fdb
	cp 082h			;4fdc
	jp nc,07563h		;4fde
	ld a,001h		;4fe1
	ld (0c39eh),a		;4fe3
	dec hl			;4fe6
	dec hl			;4fe7
	ld a,(hl)		;4fe8
	or a			;4fe9
	jp nz,07582h		;4fea
	ld (hl),001h		;4fed
	xor a			;4fef
	ld (0c39eh),a		;4ff0
	call sub_56c2h		;4ff3
	jp z,07582h		;4ff6
	xor a			;4ff9
	ld de,00004h		;4ffa
	sbc hl,de		;4ffd
	ld (hl),003h		;4fff
	dec hl			;5001
	ld (hl),0e6h		;5002
	ret			;5004
	ld a,(0c1f2h)		;5005
	and 001h		;5008
	jp z,l75f0h		;500a
	ld de,00004h		;500d
	add hl,de		;5010
	ld a,(hl)		;5011
	sbc hl,de		;5012
	or a			;5014
	jp nz,l75a6h		;5015
	sbc hl,de		;5018
	ld a,(l7555h)		;501a
	ld (hl),a		;501d
	dec hl			;501e
	ld a,(l7556h)		;501f
	add a,010h		;5022
	ld (hl),a		;5024
	inc hl			;5025
	jp 075b6h		;5026
	dec hl			;5029
	ld de,l7515h		;502a
	call sub_7454h		;502d
	ld a,(hl)		;5030
	ld (l7556h),a		;5031
	inc hl			;5034
	ld a,(hl)		;5035
	ld (l7555h),a		;5036
	ld a,(hl)		;5039
	inc hl			;503a
	and 002h		;503b
	jp z,075c1h		;503d
	ld a,(hl)		;5040
	xor 010h		;5041
	ld (hl),a		;5043
	dec hl			;5044
	ld a,r			;5045
	or a			;5047
	jp nz,l75d0h		;5048
	ld a,(0c211h)		;504b
	and 004h		;504e
	call nz,l7c66h+1	;5050
	ld a,(hl)		;5053
	and 007h		;5054
	jp nz,l75e5h		;5056
	ld b,(hl)		;5059
	ld a,(0c201h)		;505a
	ld c,0ffh		;505d
	cp b			;505f
l5060h:
	jp c,l75e2h		;5060
	ld c,001h		;5063
	ld a,b			;5065
	add a,c			;5066
	ld (hl),a		;5067
	dec hl			;5068
	ld a,(0c39eh)		;5069
	or a			;506c
	ret z			;506d
	dec hl			;506e
	ld (hl),024h		;506f
	inc hl			;5071
	ret			;5072
	ld de,00005h		;5073
	xor a			;5076
	sbc hl,de		;5077
	ret			;5079
	nop			;507a
	call m,0fc01h		;507b
	ld bc,001fch		;507e
	call m,0fd02h		;5081
	ld bc,002fdh		;5084
	defb 0fdh,002h,0feh ;illegal sequence	;5087
	ld (bc),a		;508a
	cp 003h			;508b
	rst 38h			;508d
	ld (bc),a		;508e
	rst 38h			;508f
l5090h:
	inc bc			;5090
	nop			;5091
	ld (bc),a		;5092
	nop			;5093
	ld bc,00101h		;5094
	ld bc,00200h		;5097
	nop			;509a
	inc bc			;509b
	rst 38h			;509c
	inc bc			;509d
	rst 38h			;509e
	inc b			;509f
	cp 004h			;50a0
	defb 0fdh,003h,0feh ;illegal sequence	;50a2
	inc bc			;50a5
	defb 0fdh,003h,0feh ;illegal sequence	;50a6
	ld (bc),a		;50a9
	cp 001h			;50aa
	cp 000h			;50ac
	rst 38h			;50ae
	rst 38h			;50af
	cp 0ffh			;50b0
	rst 38h			;50b2
	cp 0ffh			;50b3
	defb 0fdh,0ffh,0fdh ;illegal sequence	;50b5
	nop			;50b8
	defb 0fdh,000h,0fbh ;illegal sequence	;50b9
	nop			;50bc
	jp m,0f900h		;50bd
	nop			;50c0
	ret m			;50c1
	nop			;50c2
	ret m			;50c3
	nop			;50c4
	ret m			;50c5
	nop			;50c6
	ret m			;50c7
	nop			;50c8
	ld sp,hl		;50c9
	nop			;50ca
	jp m,0fb00h		;50cb
	nop			;50ce
	ei			;50cf
	nop			;50d0
	defb 0fdh,000h,0fdh ;illegal sequence	;50d1
	nop			;50d4
	cp 000h			;50d5
	rst 38h			;50d7
	nop			;50d8
	nop			;50d9
	nop			;50da
	inc bc			;50db
	nop			;50dc
	inc b			;50dd
	nop			;50de
	dec b			;50df
	nop			;50e0
	ld b,000h		;50e1
	ld b,000h		;50e3
	rlca			;50e5
	nop			;50e6
	ld b,000h		;50e7
	dec b			;50e9
	nop			;50ea
	dec b			;50eb
	nop			;50ec
	inc b			;50ed
	nop			;50ee
	inc b			;50ef
	nop			;50f0
	inc b			;50f1
	nop			;50f2
	inc bc			;50f3
	nop			;50f4
	ld (bc),a		;50f5
	nop			;50f6
	ld (bc),a		;50f7
	nop			;50f8
	ld bc,00776h		;50f9
	ld (hl),h		;50fc
	inc b			;50fd
	ld b,d			;50fe
	ld (bc),a		;50ff
	ld a,(0c308h)		;5100
	or a			;5103
	ret z			;5104
	ld a,(0c3d0h)		;5105
	cp 0a4h			;5108
	jp c,l768bh		;510a
	ret			;510d
	ld a,(l5b60h)		;510e
	or a			;5111
	ret nz			;5112
	ex de,hl		;5113
	ld a,005h		;5114
	ld bc,0069ah		;5116
	call 002deh		;5119
	ex de,hl		;511c
	ld a,001h		;511d
	ld (l5b60h),a		;511f
	ret			;5122
	call 0742ch		;5123
	ld de,07677h		;5126
	call sub_767dh		;5129
	dec hl			;512c
	ld a,(hl)		;512d
	or a			;512e
	jp nz,l76beh		;512f
	inc a			;5132
	ld (hl),a		;5133
	dec hl			;5134
	dec hl			;5135
	ld a,r			;5136
	and 002h		;5138
	ld c,a			;513a
	ld a,035h		;513b
	xor c			;513d
	ld (hl),a		;513e
	inc hl			;513f
	inc hl			;5140
	ld a,(hl)		;5141
	cp 001h			;5142
	jp nz,l76d2h		;5144
	ld a,r			;5147
	and 01fh		;5149
	jp nz,l76e8h		;514b
	dec hl			;514e
	ld a,(hl)		;514f
	inc hl			;5150
	and a			;5151
	jp nz,l76e8h		;5152
	ld a,(hl)		;5155
	add a,008h		;5156
	ld (hl),a		;5158
	dec hl			;5159
	ld a,(hl)		;515a
	push af			;515b
	ld de,07637h		;515c
	call sub_7454h		;515f
	inc hl			;5162
	pop af			;5163
	cp 01eh			;5164
	call z,l7c66h+1		;5166
	dec hl			;5169
	ret			;516a
	dec hl			;516b
	ld de,075f7h		;516c
	call sub_7454h		;516f
	inc hl			;5172
	ld a,(hl)		;5173
	cp 064h			;5174
	jr c,l517eh		;5176
	ld a,r			;5178
	or a			;517a
	call z,l7c66h+1		;517b
l517eh:
	dec hl			;517e
	dec hl			;517f
	ld (hl),021h		;5180
	inc hl			;5182
	ret			;5183
	ld bc,001feh		;5184
	cp 002h			;5187
	rst 38h			;5189
	ld (bc),a		;518a
	rst 38h			;518b
	ld (bc),a		;518c
	rst 38h			;518d
	inc bc			;518e
	rst 38h			;518f
	ld (bc),a		;5190
	nop			;5191
	inc bc			;5192
	rst 38h			;5193
	inc bc			;5194
	nop			;5195
	inc bc			;5196
	nop			;5197
	ld (bc),a		;5198
	ld bc,00003h		;5199
	ld (bc),a		;519c
	ld bc,00202h		;519d
	ld bc,00002h		;51a0
	ld (bc),a		;51a3
	nop			;51a4
	inc bc			;51a5
	nop			;51a6
	inc bc			;51a7
	rst 38h			;51a8
	ld (bc),a		;51a9
	rst 38h			;51aa
	ld (bc),a		;51ab
	cp 001h			;51ac
	cp 001h			;51ae
	cp 001h			;51b0
	defb 0fdh,000h,0fdh ;illegal sequence	;51b2
	rst 38h			;51b5
	defb 0fdh,0ffh,0feh ;illegal sequence	;51b6
	cp 0fdh			;51b9
	cp 0feh			;51bb
	defb 0fdh,0feh,0feh ;illegal sequence	;51bd
	rst 38h			;51c0
	cp 0ffh			;51c1
	cp 000h			;51c3
	cp 000h			;51c5
	defb 0fdh,0ffh,0feh ;illegal sequence	;51c7
	rst 38h			;51ca
	cp 0feh			;51cb
	cp 0feh			;51cd
	cp 0feh			;51cf
	rst 38h			;51d1
	defb 0fdh,000h,0fdh ;illegal sequence	;51d2
	ld bc,002fdh		;51d5
	cp 003h			;51d8
	defb 0fdh,003h,0feh ;illegal sequence	;51da
	inc bc			;51dd
	cp 002h			;51de
	rst 38h			;51e0
	inc bc			;51e1
	rst 38h			;51e2
	ld (bc),a		;51e3
	ld bc,00102h		;51e4
	inc bc			;51e7
	ld bc,00102h		;51e8
	ld (bc),a		;51eb
	ld bc,00103h		;51ec
	ld (bc),a		;51ef
	ld bc,00001h		;51f0
	nop			;51f3
	nop			;51f4
	rst 38h			;51f5
	nop			;51f6
	nop			;51f7
	nop			;51f8
	rst 38h			;51f9
	nop			;51fa
	rst 38h			;51fb
	nop			;51fc
	cp 000h			;51fd
	defb 0fdh,000h,0feh ;illegal sequence	;51ff
	nop			;5202
	dec iy			;5203
	ld b,000h		;5205
	jp l77b7h		;5207
	dec hl			;520a
	ld a,(hl)		;520b
	dec a			;520c
	ld b,000h		;520d
	jp z,l77b7h		;520f
	dec a			;5212
	ld b,002h		;5213
	jp z,l77b7h		;5215
	ld a,(0c157h)		;5218
	cp 003h			;521b
	ld a,001h		;521d
	jp c,077b6h		;521f
	ld a,r			;5222
	and 000h		;5224
	ld a,001h		;5226
	jp z,077b6h		;5228
	ld de,00004h		;522b
	sbc hl,de		;522e
	ld (hl),00ah		;5230
	add hl,de		;5232
	dec hl			;5233
	ld (hl),010h		;5234
	inc hl			;5236
	ld a,002h		;5237
	ld (hl),a		;5239
	dec hl			;523a
	ld a,(0c1f2h)		;523b
	and 001h		;523e
	jp nz,l77d8h		;5240
	ld de,00003h		;5243
	sbc hl,de		;5246
	ld a,(hl)		;5248
	add a,b			;5249
	cp 014h			;524a
	jp nc,l77cdh		;524c
	dec a			;524f
	ld (hl),a		;5250
	ld a,r			;5251
	and 03fh		;5253
	call z,sub_7c3ah	;5255
	dec (hl)		;5258
	dec hl			;5259
	ret			;525a
	ld de,07701h		;525b
	call sub_744fh		;525e
	ld a,r			;5261
	and 007h		;5263
	ret nz			;5265
	ld b,(hl)		;5266
	ld a,(0c200h)		;5267
	cp b			;526a
	ld a,0ffh		;526b
	jp c,l77efh		;526d
	ld a,001h		;5270
	add a,b			;5272
	ld (hl),a		;5273
	ret			;5274
	call m,0fd00h		;5275
	nop			;5278
	defb 0fdh,000h,0feh ;illegal sequence	;5279
	nop			;527c
	defb 0fdh,000h,0fdh ;illegal sequence	;527d
	nop			;5280
	cp 000h			;5281
	defb 0fdh,000h,0feh ;illegal sequence	;5283
	nop			;5286
	defb 0fdh,000h,0feh ;illegal sequence	;5287
	nop			;528a
	cp 000h			;528b
	rst 38h			;528d
	nop			;528e
	cp 000h			;528f
	rst 38h			;5291
	nop			;5292
	nop			;5293
	nop			;5294
	nop			;5295
	nop			;5296
	ld bc,00200h		;5297
	nop			;529a
	ld bc,00200h		;529b
	nop			;529e
	ld (bc),a		;529f
	nop			;52a0
	inc bc			;52a1
	nop			;52a2
	ld (bc),a		;52a3
	nop			;52a4
	inc bc			;52a5
	nop			;52a6
	ld (bc),a		;52a7
	nop			;52a8
	inc bc			;52a9
	nop			;52aa
	inc bc			;52ab
	nop			;52ac
	ld (bc),a		;52ad
	nop			;52ae
	inc bc			;52af
	nop			;52b0
	inc bc			;52b1
	nop			;52b2
	inc b			;52b3
	nop			;52b4
	inc b			;52b5
	nop			;52b6
	inc bc			;52b7
	nop			;52b8
	inc bc			;52b9
	nop			;52ba
	ld (bc),a		;52bb
	nop			;52bc
	inc bc			;52bd
	nop			;52be
	inc bc			;52bf
	nop			;52c0
	ld (bc),a		;52c1
	nop			;52c2
	inc bc			;52c3
	nop			;52c4
	ld (bc),a		;52c5
	nop			;52c6
	inc bc			;52c7
	nop			;52c8
	ld (bc),a		;52c9
	nop			;52ca
	ld (bc),a		;52cb
	nop			;52cc
	ld bc,00200h		;52cd
	nop			;52d0
	ld bc,00000h		;52d1
	nop			;52d4
	nop			;52d5
	nop			;52d6
	rst 38h			;52d7
	nop			;52d8
	cp 000h			;52d9
	rst 38h			;52db
	nop			;52dc
	cp 000h			;52dd
	cp 000h			;52df
	defb 0fdh,000h,0feh ;illegal sequence	;52e1
	nop			;52e4
	defb 0fdh,000h,0feh ;illegal sequence	;52e5
	nop			;52e8
	defb 0fdh,000h,0fdh ;illegal sequence	;52e9
	nop			;52ec
	cp 000h			;52ed
	defb 0fdh,000h,0fdh ;illegal sequence	;52ef
	nop			;52f2
	call m,sub_6300h	;52f3
	ld b,042h		;52f6
	dec b			;52f8
	ld hl,0cd02h		;52f9
	inc l			;52fc
	ld (hl),h		;52fd
	ld de,l7872h		;52fe
	call sub_767dh		;5301
	ld de,00005h		;5304
	sbc hl,de		;5307
	ld a,(hl)		;5309
	dec a			;530a
	ld (hl),a		;530b
	cp 0c0h			;530c
	jp c,l7890h		;530e
	dec (hl)		;5311
	dec (hl)		;5312
	cp 0aah			;5313
	jp c,07896h		;5315
	dec (hl)		;5318
	cp 09dh			;5319
	dec hl			;531b
	jp nc,078c6h		;531c
	and 03fh		;531f
	cp 020h			;5321
	ret c			;5323
	cp 03fh			;5324
	call z,sub_78b9h	;5326
	dec e			;5329
	add hl,de		;532a
	inc hl			;532b
	ld a,(hl)		;532c
	dec hl			;532d
	or a			;532e
	ld de,077f2h		;532f
	jp z,l78b5h		;5332
	ld de,l7832h		;5335
	call sub_7454h		;5338
	ret			;533b
l533ch:
	ld a,r			;533c
	and 001h		;533e
	ret z			;5340
	add hl,de		;5341
	ld a,(hl)		;5342
	xor 001h		;5343
	ld (hl),a		;5345
	sbc hl,de		;5346
	ret			;5348
	ld a,r			;5349
	and 001h		;534b
	ret nz			;534d
	inc hl			;534e
	dec (hl)		;534f
	dec hl			;5350
	ret			;5351
	nop			;5352
l5353h:
	call m,0fc00h		;5353
	nop			;5356
	defb 0fdh,000h,0fdh ;illegal sequence	;5357
	nop			;535a
	call m,0fd00h		;535b
	nop			;535e
	defb 0fdh,000h,0fdh ;illegal sequence	;535f
	nop			;5362
	defb 0fdh,000h,0feh ;illegal sequence	;5363
	nop			;5366
	cp 000h			;5367
	cp 000h			;5369
	rst 38h			;536b
	nop			;536c
	rst 38h			;536d
	nop			;536e
	rst 38h			;536f
	nop			;5370
	rst 38h			;5371
	nop			;5372
	rst 38h			;5373
	ld bc,00200h		;5374
	ld bc,00101h		;5377
	ld (bc),a		;537a
	ld bc,00101h		;537b
	ld (bc),a		;537e
	ld bc,00103h		;537f
	nop			;5382
	ld bc,00002h		;5383
	ld (bc),a		;5386
	ld bc,00001h		;5387
	ld bc,000ffh		;538a
	rst 38h			;538d
	nop			;538e
	rst 38h			;538f
	nop			;5390
	rst 38h			;5391
	nop			;5392
	call m,0fc00h		;5393
	nop			;5396
	defb 0fdh,000h,0fdh ;illegal sequence	;5397
	nop			;539a
	call m,0fd00h		;539b
	nop			;539e
	defb 0fdh,000h,0fdh ;illegal sequence	;539f
	nop			;53a2
	defb 0fdh,000h,0fdh ;illegal sequence	;53a3
	nop			;53a6
	defb 0fdh,000h,0fdh ;illegal sequence	;53a7
	nop			;53aa
	cp 000h			;53ab
	cp 000h			;53ad
	cp 000h			;53af
	cp 000h			;53b1
	nop			;53b3
	rst 38h			;53b4
	ld bc,002feh		;53b5
	rst 38h			;53b8
	ld (bc),a		;53b9
	cp 002h			;53ba
	rst 38h			;53bc
	ld (bc),a		;53bd
	cp 002h			;53be
	defb 0fdh,002h,000h ;illegal sequence	;53c0
	ld (bc),a		;53c3
	cp 001h			;53c4
	cp 002h			;53c6
	rst 38h			;53c8
	ld bc,000ffh		;53c9
	nop			;53cc
	nop			;53cd
	nop			;53ce
	nop			;53cf
	nop			;53d0
	nop			;53d1
	nop			;53d2
	call 0742ch		;53d3
	dec hl			;53d6
	dec hl			;53d7
	ld de,078cfh		;53d8
	ld a,(0794fh)		;53db
	cp 080h			;53de
	jp c,07963h		;53e0
	ld de,0790fh		;53e3
	call sub_7454h		;53e6
	inc hl			;53e9
	call 0015fh		;53ea
	ex de,hl		;53ed
	jp nc,l797bh		;53ee
	push hl			;53f1
	ld de,00006h		;53f2
	add hl,de		;53f5
	ld (hl),014h		;53f6
	dec hl			;53f8
	ld (hl),000h		;53f9
	pop hl			;53fb
	ret			;53fc
	ret			;53fd
	ld a,r			;53fe
	and 003h		;5400
	ret nz			;5402
	ld a,(0794fh)		;5403
	inc a			;5406
	ld (0794fh),a		;5407
	ret			;540a
	dec hl			;540b
	ld a,(0c1f2h)		;540c
	and 00fh		;540f
	jp nz,l7998h		;5411
	ld a,(hl)		;5414
	cp 003h			;5415
	jp z,l7998h		;5417
	inc (hl)		;541a
	ld b,(hl)		;541b
	xor a			;541c
	ld de,00004h		;541d
	sbc hl,de		;5420
	ld a,(hl)		;5422
	sub b			;5423
	ld (hl),a		;5424
	dec hl			;5425
	ld a,r			;5426
	and 003h		;5428
	ret nz			;542a
	ld a,(0c200h)		;542b
	cp (hl)			;542e
	ld c,001h		;542f
	jp c,l79b3h		;5431
	ld c,0ffh		;5434
	ld a,(hl)		;5436
	sub c			;5437
	ld (hl),a		;5438
	ret			;5439
	ld h,h			;543a
	ld h,h			;543b
	nop			;543c
	nop			;543d
	inc hl			;543e
	inc hl			;543f
	inc hl			;5440
	ld b,(hl)		;5441
	dec hl			;5442
	dec hl			;5443
	ld a,(hl)		;5444
	cp 082h			;5445
	jp nc,l79cch		;5447
	ld a,001h		;544a
	ld (0c39dh),a		;544c
	dec hl			;544f
	dec hl			;5450
	dec hl			;5451
	ld a,(hl)		;5452
	or a			;5453
	jp nz,l79f0h		;5454
	dec hl			;5457
	dec hl			;5458
	dec hl			;5459
	dec (hl)		;545a
	ld a,(hl)		;545b
	ld (079b7h),a		;545c
	dec hl			;545f
l5460h:
	ld a,(hl)		;5460
	ld (l79b8h),a		;5461
	ld de,00007h		;5464
	add hl,de		;5467
	ld (hl),0ffh		;5468
	ld a,0ffh		;546a
l546ch:
	ld (l79b9h+1),a		;546c
	xor a			;546f
	sbc hl,de		;5470
	ret			;5472
	ld a,r			;5473
	and 007h		;5475
	jp nz,l79f8h		;5477
	dec (hl)		;547a
	inc hl			;547b
	ld a,(hl)		;547c
	or a			;547d
	jp nz,07a1bh		;547e
	ld (hl),001h		;5481
	xor a			;5483
	ld (0c39dh),a		;5484
	call sub_56c2h		;5487
	jp z,07a1bh		;548a
	xor a			;548d
	ld de,00004h		;548e
	sbc hl,de		;5491
	ld (hl),003h		;5493
	dec hl			;5495
	ld (hl),0e6h		;5496
	ld a,001h		;5498
	ld (0c39dh),a		;549a
	ret			;549d
	ld a,b			;549e
	or a			;549f
	jp nz,07a41h		;54a0
	inc hl			;54a3
	inc hl			;54a4
	ld a,(l79b9h+1)		;54a5
	ld (hl),a		;54a8
	dec hl			;54a9
	dec hl			;54aa
	ld de,00005h		;54ab
	sbc hl,de		;54ae
	ld a,(l79b8h)		;54b0
	add a,010h		;54b3
	ld (hl),a		;54b5
	inc hl			;54b6
	ld a,(079b7h)		;54b7
	ld (hl),a		;54ba
	ld a,r			;54bb
	or a			;54bd
	call z,l7c66h+1		;54be
	jp l7ae2h		;54c1
	push af			;54c4
	inc hl			;54c5
	inc hl			;54c6
	ld a,(hl)		;54c7
	ld (l79b9h+1),a		;54c8
	dec hl			;54cb
	dec hl			;54cc
	pop af			;54cd
	ld de,00004h		;54ce
	sbc hl,de		;54d1
	ld a,(hl)		;54d3
	cp 0dch			;54d4
	jp nz,07a60h		;54d6
	ld a,r			;54d9
	and 003h		;54db
	jp z,07a60h		;54dd
	ld a,006h		;54e0
	ld (hl),a		;54e2
	ld a,r			;54e3
	and 007h		;54e5
	cp 004h			;54e7
	jp c,l7a81h		;54e9
	cp 006h			;54ec
	dec hl			;54ee
	jp nc,l7a8fh		;54ef
	ld a,(0c200h)		;54f2
	sub 00ah		;54f5
	cp (hl)			;54f7
	ld a,0ffh		;54f8
	jp c,l7a7ch		;54fa
	ld a,001h		;54fd
	add a,(hl)		;54ff
	ld (hl),a		;5500
	jp l7a8fh		;5501
	ld a,(0c201h)		;5504
	cp (hl)			;5507
	ld a,0ffh		;5508
	jp c,l7a8ch		;550a
	ld a,001h		;550d
	add a,(hl)		;550f
	ld (hl),a		;5510
	dec hl			;5511
	ld a,(hl)		;5512
	ld (l79b8h),a		;5513
	add a,018h		;5516
	ld c,a			;5518
	inc hl			;5519
	ld a,r			;551a
	and 003h		;551c
	ld a,(hl)		;551e
	jp nz,l7aadh		;551f
	cp 096h			;5522
	jp c,l7aadh		;5524
	dec a			;5527
	ld (hl),a		;5528
	cp 0b4h			;5529
	jp c,l7aadh		;552b
	dec a			;552e
	ld (hl),a		;552f
	ld (079b7h),a		;5530
	add a,010h		;5533
	ld b,a			;5535
	ld a,001h		;5536
	ld (l79b9h),a		;5538
	ld de,0c211h		;553b
	exx			;553e
	ld a,(l79b9h)		;553f
	rlca			;5542
	dec a			;5543
	ld hl,0c119h		;5544
	ld e,a			;5547
	ld d,000h		;5548
	add hl,de		;554a
	ld a,(hl)		;554b
	cp 002h			;554c
	exx			;554e
	jp nc,l7b23h		;554f
	call sub_7aedh		;5552
	inc de			;5555
	inc de			;5556
	inc de			;5557
	inc de			;5558
	ld a,(l79b9h)		;5559
	inc a			;555c
	and 007h		;555d
	ld (l79b9h),a		;555f
	jp nz,l7abbh		;5562
	dec hl			;5565
	ld a,(0c39dh)		;5566
	or a			;5569
	ret z			;556a
	dec hl			;556b
	ld (hl),024h		;556c
	inc hl			;556e
	ret			;556f
	ld a,(de)		;5570
	cp b			;5571
	ret nc			;5572
	add a,020h		;5573
	cp b			;5575
	ret c			;5576
	dec de			;5577
	ld a,(de)		;5578
	inc de			;5579
	cp c			;557a
	ret nc			;557b
	add a,020h		;557c
	cp c			;557e
	ret c			;557f
	ld a,(0c201h)		;5580
	cp (hl)			;5583
	ld a,004h		;5584
	jp c,l7b08h		;5586
	ld a,0fch		;5589
	add a,(hl)		;558b
	cp 0b4h			;558c
	ret nc			;558e
	ld (hl),a		;558f
	ld (079b7h),a		;5590
	cp 0d6h			;5593
	ret c			;5595
	ld (hl),0dbh		;5596
	ld (079b7h),a		;5598
	ld a,r			;559b
	and 003h		;559d
	ret nz			;559f
	ld a,001h		;55a0
	ld (0c39dh),a		;55a2
	ret			;55a5
	ld a,(de)		;55a6
	cp b			;55a7
	jp nc,l7ad2h		;55a8
	add a,020h		;55ab
	cp b			;55ad
	jp c,l7ad2h		;55ae
	dec de			;55b1
	ld a,(de)		;55b2
	inc de			;55b3
	cp c			;55b4
	jp nc,l7ad2h		;55b5
	add a,020h		;55b8
	cp c			;55ba
	jp c,l7ad2h		;55bb
	ld a,(0c200h)		;55be
	dec hl			;55c1
	cp (hl)			;55c2
	ld a,004h		;55c3
	jp c,l7b47h		;55c5
	ld a,0fbh		;55c8
	add a,(hl)		;55ca
	ld (hl),a		;55cb
	inc hl			;55cc
	ld (l79b8h),a		;55cd
	jp l7ad2h		;55d0
	inc hl			;55d3
	ld a,(hl)		;55d4
	cp 0ffh			;55d5
	jp z,l7bbfh		;55d7
	ld (hl),0ffh		;55da
	ld a,(l5e5dh)		;55dc
	or a			;55df
	jp z,l7bbfh		;55e0
	ld a,(l64bch)		;55e3
	cp 003h			;55e6
	jp z,l7bbfh		;55e8
	or a			;55eb
	jp z,l7bbfh		;55ec
	ld a,001h		;55ef
	ld (0c1b0h),a		;55f1
	push hl			;55f4
	ld hl,(l5e5fh)		;55f5
	ld de,00096h		;55f8
	sbc hl,de		;55fb
	pop hl			;55fd
	jp nc,l7b83h		;55fe
	ld a,001h		;5601
	ld (0c1b1h),a		;5603
	push hl			;5606
	ld hl,(l5e5fh)		;5607
	ld a,(0c13eh)		;560a
	ld e,a			;560d
	ld d,000h		;560e
	sbc hl,de		;5610
	ld (l5e5fh),hl		;5612
	pop hl			;5615
	jp nc,l7bbfh		;5616
	ld a,001h		;5619
	ld (l5e61h),a		;561b
	ld a,(l623dh)		;561e
	or a			;5621
	jp z,l7badh		;5622
	ld a,000h		;5625
	ld (l5e61h),a		;5627
	ld hl,00001h		;562a
	ld (l5e5fh),hl		;562d
	ld a,(l623eh)		;5630
	or a			;5633
	jp z,l7bbfh		;5634
	ld a,000h		;5637
l5639h:
	ld (l5e61h),a		;5639
	ld hl,00001h		;563c
	ld (l5e5fh),hl		;563f
	dec hl			;5642
	dec hl			;5643
	dec hl			;5644
	dec hl			;5645
	ld a,(hl)		;5646
	inc a			;5647
	and 003h		;5648
	ld (hl),a		;564a
	dec hl			;564b
	ld c,000h		;564c
	jp nz,l7be6h		;564e
	ld a,(hl)		;5651
	add a,008h		;5652
	cp 09bh			;5654
	jp nz,l7bdch		;5656
	ld a,063h		;5659
	ld b,077h		;565b
	ld c,001h		;565d
	ld (hl),a		;565f
	cp 07bh			;5660
	jp nz,l7be6h		;5662
	ld b,073h		;5665
	ld c,001h		;5667
	dec hl			;5669
	ld a,(0c1f5h)		;566a
	or a			;566d
	jp nz,l7bf7h		;566e
	ld a,(0c1f2h)		;5671
	and 001h		;5674
	jp z,l7bf7h		;5676
	dec (hl)		;5679
	dec hl			;567a
	ld a,c			;567b
	or a			;567c
	ret z			;567d
	ld a,(0fff6h)		;567e
	ld c,a			;5681
	ld a,b			;5682
	sub c			;5683
	ld (hl),a		;5684
	ret			;5685
	dec hl			;5686
	ld a,(hl)		;5687
	inc a			;5688
	and 007h		;5689
	ld (hl),a		;568b
	dec hl			;568c
	ld a,(hl)		;568d
sub_568eh:
	ld b,a			;568e
	jp nz,07c10h		;568f
	inc (hl)		;5692
	dec hl			;5693
	ld a,(hl)		;5694
	inc a			;5695
	and 003h		;5696
	ld (hl),a		;5698
	dec hl			;5699
	jp nz,l7c25h		;569a
	ld a,(hl)		;569d
	add a,008h		;569e
	cp 0dbh			;56a0
	jp nz,l7c24h		;56a2
	ld a,0c3h		;56a5
	ld (hl),a		;56a7
	dec hl			;56a8
	ld a,(hl)		;56a9
	sub b			;56aa
	ld (hl),a		;56ab
	dec hl			;56ac
	ld a,r			;56ad
	and 007h		;56af
	cp 003h			;56b1
	ret nc			;56b3
	ld a,(0c200h)		;56b4
	cp (hl)			;56b7
	dec (hl)		;56b8
	ret c			;56b9
	inc (hl)		;56ba
	inc (hl)		;56bb
	ret			;56bc
	ld a,(0c157h)		;56bd
	cp 001h			;56c0
sub_56c2h:
	jp nc,l7c66h+1		;56c2
	ret			;56c5
	ld a,(0c157h)		;56c6
	cp 002h			;56c9
	jp nc,l7c66h+1		;56cb
	ret			;56ce
	ld a,(0c157h)		;56cf
	cp 003h			;56d2
	jp nc,l7c66h+1		;56d4
	ret			;56d7
	ld a,(0c157h)		;56d8
	cp 004h			;56db
	jp nc,l7c66h+1		;56dd
	ret			;56e0
	ld a,(0c157h)		;56e1
	cp 005h			;56e4
	jp nc,l7c66h+1		;56e6
	ret			;56e9
	ld a,(hl)		;56ea
	ld (0c3c8h),a		;56eb
	dec hl			;56ee
	ld a,(hl)		;56ef
	ld (0c3c7h),a		;56f0
	inc hl			;56f3
	ld a,001h		;56f4
	ld (0c3c9h),a		;56f6
	ret			;56f9
	dec d			;56fa
	nop			;56fb
	call c,031fbh		;56fc
	nop			;56ff
	nop			;5700
	nop			;5701
	add hl,bc		;5702
	ld a,(bc)		;5703
	nop			;5704
	nop			;5705
	nop			;5706
	nop			;5707
	nop			;5708
	nop			;5709
	dec d			;570a
	nop			;570b
	call c,02aa3h		;570c
	cp 000h			;570f
	ld (bc),a		;5711
	and b			;5712
	ld c,001h		;5713
	rst 38h			;5715
	nop			;5716
	nop			;5717
	nop			;5718
	nop			;5719
	dec d			;571a
	nop			;571b
	in a,(0abh)		;571c
	jr z,l5720h		;571e
l5720h:
	ld bc,0a002h		;5720
	ld c,000h		;5723
	rst 38h			;5725
	nop			;5726
	nop			;5727
	nop			;5728
	nop			;5729
	dec d			;572a
	nop			;572b
	call c,035e3h		;572c
	nop			;572f
	nop			;5730
	inc b			;5731
	ld (de),a		;5732
	ld a,(bc)		;5733
	ld bc,00000h		;5734
	nop			;5737
	nop			;5738
	nop			;5739
	dec d			;573a
	nop			;573b
	call c,02ddbh		;573c
	nop			;573f
	nop			;5740
	ld b,009h		;5741
	ld a,(bc)		;5743
	nop			;5744
	nop			;5745
	nop			;5746
	nop			;5747
	nop			;5748
	nop			;5749
	dec d			;574a
	nop			;574b
	call c,02fd3h		;574c
	cp 000h			;574f
	ex af,af'		;5751
	add hl,bc		;5752
	ld a,(bc)		;5753
	ld bc,00000h		;5754
	nop			;5757
	nop			;5758
	nop			;5759
	dec d			;575a
	nop			;575b
	call c,033ebh		;575c
	nop			;575f
	nop			;5760
	ld a,(bc)		;5761
	add hl,bc		;5762
	ld a,(bc)		;5763
	ld bc,00000h		;5764
	nop			;5767
	nop			;5768
	nop			;5769
	dec d			;576a
	nop			;576b
	call c,024c3h		;576c
	ld b,(hl)		;576f
	nop			;5770
	inc c			;5771
	xor d			;5772
	ld c,001h		;5773
	rst 38h			;5775
	nop			;5776
	nop			;5777
	nop			;5778
	nop			;5779
	dec d			;577a
	nop			;577b
l577ch:
	in a,(0cbh)		;577c
	ld h,0ffh		;577e
	nop			;5780
	inc c			;5781
	xor d			;5782
	ld c,000h		;5783
	rst 38h			;5785
	nop			;5786
	nop			;5787
	nop			;5788
	nop			;5789
	dec d			;578a
	nop			;578b
	call c,031fbh		;578c
	nop			;578f
	nop			;5790
	nop			;5791
	add hl,bc		;5792
	ld a,(bc)		;5793
	ld (bc),a		;5794
	nop			;5795
	nop			;5796
	nop			;5797
	nop			;5798
	nop			;5799
	dec d			;579a
	nop			;579b
	rst 18h			;579c
	ld h,e			;579d
	jr l57a0h		;579e
l57a0h:
	nop			;57a0
	ld c,0ffh		;57a1
	ld b,000h		;57a3
	nop			;57a5
	nop			;57a6
	nop			;57a7
	nop			;57a8
	nop			;57a9
	dec d			;57aa
	nop			;57ab
	cp d			;57ac
	and e			;57ad
	ld a,(de)		;57ae
	ld bc,01000h		;57af
	add hl,bc		;57b2
	ld a,(bc)		;57b3
	rst 38h			;57b4
	nop			;57b5
	nop			;57b6
	nop			;57b7
	nop			;57b8
	nop			;57b9
	inc h			;57ba
	nop			;57bb
	cp b			;57bc
	and e			;57bd
	ld a,(de)		;57be
	ld bc,01000h		;57bf
l57c2h:
	add hl,bc		;57c2
	ld a,(bc)		;57c3
	rst 38h			;57c4
	nop			;57c5
	nop			;57c6
	nop			;57c7
	nop			;57c8
	nop			;57c9
	dec d			;57ca
	nop			;57cb
	call c,02ddbh		;57cc
	nop			;57cf
	nop			;57d0
	ld (de),a		;57d1
	add hl,bc		;57d2
	ld a,(bc)		;57d3
	nop			;57d4
	nop			;57d5
	nop			;57d6
	nop			;57d7
	nop			;57d8
	nop			;57d9
	ld bc,08c10h		;57da
	add hl,de		;57dd
	jr nz,l577ch		;57de
	dec hl			;57e0
	ld d,b			;57e1
	and b			;57e2
	ld b,b			;57e3
	ld d,b			;57e4
	sub (hl)		;57e5
	ld sp,08250h		;57e6
	ld b,a			;57e9
	ld b,b			;57ea
	add a,d			;57eb
	inc d			;57ec
	ld d,b			;57ed
	ld h,h			;57ee
	inc d			;57ef
	ld d,b			;57f0
	ld h,h			;57f1
	rra			;57f2
	ld b,b			;57f3
	and b			;57f4
	jr nz,l5837h		;57f5
	sub (hl)		;57f7
	add hl,hl		;57f8
	ld b,b			;57f9
	xor d			;57fa
	ld c,(hl)		;57fb
	ld b,b			;57fc
	ld a,b			;57fd
	ld bc,l6e70h		;57fe
	ld (hl),e		;5801
	add a,b			;5802
	ld a,(hl)		;5803
	inc bc			;5804
	ld h,b			;5805
	ld h,h			;5806
	ld a,d			;5807
	ld h,b			;5808
	ld h,h			;5809
	inc bc			;580a
	ld h,b			;580b
	ld l,(hl)		;580c
	ld a,(hl)		;580d
	ld h,b			;580e
	ld l,(hl)		;580f
	ld bc,l7890h		;5810
	adc a,h			;5813
	sub b			;5814
	cp (hl)			;5815
	ld bc,09610h		;5816
	ld b,(hl)		;5819
	jr nz,l57c2h		;581a
	ld bc,l6490h		;581c
	adc a,h			;581f
	sub b			;5820
	cp (hl)			;5821
	ld bc,l5090h		;5822
	inc d			;5825
	sub b			;5826
	jp nc,l401fh		;5827
	ld h,h			;582a
	jr nc,l586dh		;582b
	ld l,(hl)		;582d
	rra			;582e
	ld b,b			;582f
	ld a,b			;5830
	jr nc,l5873h		;5831
	add a,d			;5833
	rra			;5834
	ld b,b			;5835
	cp b			;5836
l5837h:
	jr nc,l5879h		;5837
	xor (hl)		;5839
	ld (0be00h),a		;583a
	inc d			;583d
	nop			;583e
	ld d,b			;583f
	ld (05a00h),a		;5840
	inc bc			;5843
l5844h:
	ld h,b			;5844
	ret z			;5845
	add hl,hl		;5846
	ld h,b			;5847
	ret z			;5848
	inc bc			;5849
	ld h,b			;584a
	ld a,b			;584b
	add hl,hl		;584c
l584dh:
	ld h,b			;584d
	ld a,b			;584e
	inc bc			;584f
l5850h:
	ld h,b			;5850
	ld e,d			;5851
	add hl,hl		;5852
	ld h,b			;5853
	ld e,d			;5854
	inc bc			;5855
	ld h,b			;5856
	ret z			;5857
	add hl,hl		;5858
	ld h,b			;5859
	ret z			;585a
	inc bc			;585b
	ld h,b			;585c
	ld a,b			;585d
	dec a			;585e
	ld h,b			;585f
	ld a,b			;5860
	inc bc			;5861
	ld h,b			;5862
	ld e,d			;5863
	ld h,l			;5864
	ld h,b			;5865
	ld e,d			;5866
	ld bc,02810h		;5867
	scf			;586a
	jr nz,$+58		;586b
l586dh:
	ld bc,0c870h		;586d
	dec l			;5870
	add a,b			;5871
	ret c			;5872
l5873h:
	rra			;5873
	ld b,b			;5874
	ld h,h			;5875
	rra			;5876
	ld b,b			;5877
	or h			;5878
l5879h:
	jr nz,l58bbh		;5879
	ld h,h			;587b
	add hl,hl		;587c
	ld b,b			;587d
	ld l,(hl)		;587e
	ld c,(hl)		;587f
	ld b,b			;5880
	xor d			;5881
	jr nc,l58c4h		;5882
	ld l,(hl)		;5884
	rra			;5885
	ld b,b			;5886
	sub (hl)		;5887
	jr nz,l58cah		;5888
	ld h,h			;588a
	add hl,hl		;588b
	ld b,b			;588c
	and b			;588d
	or d			;588e
	ld b,b			;588f
	ld h,h			;5890
	rra			;5891
	sub b			;5892
	ld h,h			;5893
	jr z,l5896h		;5894
l5896h:
	cp (hl)			;5896
	add hl,hl		;5897
	nop			;5898
	ld a,b			;5899
	ld (0be90h),a		;589a
	inc sp			;589d
	nop			;589e
	ld h,h			;589f
	inc a			;58a0
	nop			;58a1
	ret z			;58a2
	ld (0d200h),a		;58a3
	inc d			;58a6
	nop			;58a7
	ld h,h			;58a8
	ld (l6400h),a		;58a9
	dec bc			;58ac
	jr nc,$+72		;58ad
	dec d			;58af
	jr nc,$+72		;58b0
	dec bc			;58b2
	jr nc,$-114		;58b3
	ld l,h			;58b5
	jr nc,l5844h		;58b6
	dec bc			;58b8
	jr nc,l5901h		;58b9
l58bbh:
	dec d			;58bb
	jr nc,$+72		;58bc
	dec bc			;58be
	jr nc,l584dh		;58bf
	sbc a,(hl)		;58c1
	jr nc,l5850h		;58c2
l58c4h:
	rra			;58c4
	ret nc			;58c5
	and b			;58c6
	rra			;58c7
	ret nc			;58c8
	or h			;58c9
l58cah:
	jr nz,$-46		;58ca
	ret z			;58cc
	add hl,hl		;58cd
	ret nc			;58ce
	ret z			;58cf
	ld c,(hl)		;58d0
	ret nc			;58d1
	or h			;58d2
	jr nc,$-46		;58d3
	ret z			;58d5
	rra			;58d6
	ret nc			;58d7
	or h			;58d8
	jr nz,$-46		;58d9
	cp (hl)			;58db
	ld hl,(0ce40h)		;58dc
	add hl,hl		;58df
	ld b,b			;58e0
	adc a,095h		;58e1
	ld b,b			;58e3
	adc a,02eh		;58e4
	ld d,b			;58e6
	cp c			;58e7
	add hl,hl		;58e8
	ld d,b			;58e9
	xor a			;58ea
	ld l,050h		;58eb
	and l			;58ed
	add hl,hl		;58ee
	ld d,b			;58ef
	sbc a,e			;58f0
	ld b,d			;58f1
	ld d,b			;58f2
	adc a,h			;58f3
	ld bc,09610h		;58f4
	jr nz,l5919h		;58f7
	and (hl)		;58f9
	ld bc,l7d50h		;58fa
	inc d			;58fd
	nop			;58fe
	sub (hl)		;58ff
	ld a,(de)		;5900
l5901h:
	ld d,b			;5901
	ld a,b			;5902
	jr z,l5905h		;5903
l5905h:
	and b			;5905
	ld bc,06e50h		;5906
	inc d			;5909
	nop			;590a
	sub (hl)		;590b
	ld a,(de)		;590c
	ld d,b			;590d
	ld l,(hl)		;590e
	inc d			;590f
	nop			;5910
	ld d,b			;5911
	ld d,a			;5912
	ld d,b			;5913
	ld h,h			;5914
	ld bc,0c870h		;5915
	dec l			;5918
l5919h:
	add a,b			;5919
	ret c			;591a
	rra			;591b
	nop			;591c
	add a,d			;591d
	ld e,000h		;591e
	cp (hl)			;5920
	rra			;5921
	nop			;5922
	ld a,b			;5923
	ld e,000h		;5924
	cp (hl)			;5926
	inc d			;5927
	nop			;5928
	adc a,h			;5929
	inc d			;592a
	nop			;592b
	ret z			;592c
	inc d			;592d
	sub b			;592e
	jp nc,09014h		;592f
	ld h,h			;5932
	ld a,(bc)		;5933
	nop			;5934
	ld h,h			;5935
	dec bc			;5936
	nop			;5937
	ld a,b			;5938
	ld a,(bc)		;5939
	nop			;593a
	cp (hl)			;593b
	dec bc			;593c
	nop			;593d
	ld a,b			;593e
	ld a,(bc)		;593f
	nop			;5940
	cp (hl)			;5941
	ld a,(bc)		;5942
	nop			;5943
	ld h,h			;5944
	ld a,(bc)		;5945
	nop			;5946
	ret z			;5947
	ld a,(bc)		;5948
	nop			;5949
	jp nc,0000ah		;594a
	ld h,h			;594d
	xor d			;594e
	nop			;594f
	ld h,h			;5950
	inc bc			;5951
	ld h,b			;5952
	ld (l6029h),a		;5953
	ld (l6003h),a		;5956
	and b			;5959
	add hl,hl		;595a
	ld h,b			;595b
	and b			;595c
	inc bc			;595d
	ld h,b			;595e
	ld d,b			;595f
	dec a			;5960
	ld h,b			;5961
	ld d,b			;5962
	inc bc			;5963
	ld h,b			;5964
	add a,d			;5965
	ld bc,08260h		;5966
	dec bc			;5969
	jr nc,l59a8h		;596a
	ld a,c			;596c
	jr nc,l59abh		;596d
	dec bc			;596f
	jr nc,l59aeh		;5970
	add hl,hl		;5972
	jr nc,l59b1h		;5973
	ex af,af'		;5975
	nop			;5976
	ld d,b			;5977
	ex af,af'		;5978
	nop			;5979
	ld d,b			;597a
	ex af,af'		;597b
	nop			;597c
l597dh:
	ld d,b			;597d
	ex af,af'		;597e
	nop			;597f
l5980h:
	ld d,b			;5980
	ex af,af'		;5981
	nop			;5982
	ld d,b			;5983
	ex af,af'		;5984
	nop			;5985
	ld d,b			;5986
	ex af,af'		;5987
	nop			;5988
	ld d,b			;5989
	ld d,d			;598a
	nop			;598b
	ld d,b			;598c
	rlca			;598d
	nop			;598e
l598fh:
	ld d,b			;598f
	rlca			;5990
	nop			;5991
l5992h:
	ld d,b			;5992
	rlca			;5993
	nop			;5994
	ld d,b			;5995
	rlca			;5996
	nop			;5997
	ld d,b			;5998
	rlca			;5999
	nop			;599a
	ld d,b			;599b
	rlca			;599c
	nop			;599d
	ld d,b			;599e
	add hl,sp		;599f
	sub b			;59a0
	ld d,b			;59a1
	inc bc			;59a2
	ld h,b			;59a3
	ld d,b			;59a4
	ld bc,l5060h		;59a5
l59a8h:
	inc bc			;59a8
	ld h,b			;59a9
	ld h,h			;59aa
l59abh:
	rrca			;59ab
	ld h,b			;59ac
	ld h,h			;59ad
l59aeh:
	rlca			;59ae
	nop			;59af
	ld e,d			;59b0
l59b1h:
	rlca			;59b1
	nop			;59b2
	ld e,d			;59b3
	cpl			;59b4
	nop			;59b5
	ld e,d			;59b6
	rlca			;59b7
	nop			;59b8
	ld e,d			;59b9
l59bah:
	rlca			;59ba
	nop			;59bb
	ld e,d			;59bc
	rlca			;59bd
	nop			;59be
	ld e,d			;59bf
	rlca			;59c0
	nop			;59c1
	add a,d			;59c2
	rlca			;59c3
	nop			;59c4
l59c5h:
	add a,d			;59c5
	rlca			;59c6
	nop			;59c7
	add a,d			;59c8
	rlca			;59c9
	nop			;59ca
	add a,d			;59cb
	rlca			;59cc
	nop			;59cd
	add a,d			;59ce
	rlca			;59cf
	nop			;59d0
l59d1h:
	add a,d			;59d1
	inc bc			;59d2
	ld h,b			;59d3
	add a,d			;59d4
	ld h,h			;59d5
	ld h,b			;59d6
l59d7h:
	add a,d			;59d7
	inc bc			;59d8
	ld h,b			;59d9
	add a,d			;59da
	add hl,sp		;59db
	ld h,b			;59dc
	add a,d			;59dd
	dec bc			;59de
	jr nc,l598fh		;59df
	ld l,a			;59e1
	jr nc,l5992h		;59e2
	dec bc			;59e4
	jr nc,l597dh		;59e5
	adc a,b			;59e7
	jr nc,l5980h		;59e8
	ld bc,08c10h		;59ea
	jr nz,l5a0fh		;59ed
	sbc a,h			;59ef
	rra			;59f0
	ret nc			;59f1
	adc a,h			;59f2
	jr nc,l59c5h		;59f3
	add a,d			;59f5
	rra			;59f6
	ret nc			;59f7
	ld (0d030h),a		;59f8
	ld (0d01fh),a		;59fb
	ld b,b			;59fe
	jr nc,l59d1h		;59ff
	ld (hl),01fh		;5a01
	ret nc			;5a03
	ld b,(hl)		;5a04
	jr nc,l59d7h		;5a05
l5a07h:
	ld e,d			;5a07
	rra			;5a08
	ld b,b			;5a09
	ld d,b			;5a0a
	jr nc,l5a4dh		;5a0b
	ld e,d			;5a0d
	rra			;5a0e
l5a0fh:
	ld b,b			;5a0f
l5a10h:
	ld c,d			;5a10
	jr nc,l5a53h		;5a11
	ld e,d			;5a13
	inc bc			;5a14
	ld h,b			;5a15
	ld d,b			;5a16
l5a17h:
	dec l			;5a17
	ld h,b			;5a18
	ld d,b			;5a19
	inc bc			;5a1a
	ld h,b			;5a1b
	ld d,b			;5a1c
	dec l			;5a1d
	ld h,b			;5a1e
	ld d,b			;5a1f
	inc bc			;5a20
	ld h,b			;5a21
	ld b,(hl)		;5a22
	dec l			;5a23
	ld h,b			;5a24
	ld b,(hl)		;5a25
	inc bc			;5a26
	ld h,b			;5a27
	ld b,(hl)		;5a28
	dec l			;5a29
	ld h,b			;5a2a
	ld b,(hl)		;5a2b
	inc bc			;5a2c
	ld h,b			;5a2d
	ld e,d			;5a2e
	scf			;5a2f
	ld h,b			;5a30
	ld e,d			;5a31
	inc bc			;5a32
	ld h,b			;5a33
	ld e,d			;5a34
	scf			;5a35
	ld h,b			;5a36
	ld e,d			;5a37
	inc bc			;5a38
	ld h,b			;5a39
	ld d,b			;5a3a
	scf			;5a3b
	ld h,b			;5a3c
	ld d,b			;5a3d
	inc bc			;5a3e
	ld h,b			;5a3f
	ld d,b			;5a40
	ld e,a			;5a41
	ld h,b			;5a42
	ld d,b			;5a43
	ld bc,l5a10h		;5a44
	jr nz,l5a69h		;5a47
	ld l,d			;5a49
	inc d			;5a4a
	ret nc			;5a4b
	ld h,h			;5a4c
l5a4dh:
	inc de			;5a4d
	ret nc			;5a4e
	ld a,l			;5a4f
	inc d			;5a50
	ret nc			;5a51
	ld l,c			;5a52
l5a53h:
	inc de			;5a53
	ret nc			;5a54
	ld a,b			;5a55
	inc bc			;5a56
	ld h,b			;5a57
	ld d,b			;5a58
	add hl,de		;5a59
	ld h,b			;5a5a
	ld d,b			;5a5b
	inc bc			;5a5c
	ld h,b			;5a5d
	ld d,b			;5a5e
	add hl,de		;5a5f
	ld h,b			;5a60
	ld d,b			;5a61
	inc d			;5a62
	ld b,b			;5a63
	ld h,h			;5a64
	inc de			;5a65
	ld b,b			;5a66
	ld a,l			;5a67
	inc d			;5a68
l5a69h:
	ld b,b			;5a69
	ld l,c			;5a6a
	inc de			;5a6b
	ld b,b			;5a6c
	ld a,b			;5a6d
	ld bc,l6440h		;5a6e
	ld c,(hl)		;5a71
	ld b,b			;5a72
	ld a,b			;5a73
	ld (07850h),a		;5a74
	ld hl,07850h		;5a77
	inc d			;5a7a
	nop			;5a7b
	add a,d			;5a7c
	ld d,050h		;5a7d
	ld l,(hl)		;5a7f
	add hl,de		;5a80
	ld d,b			;5a81
	ld l,(hl)		;5a82
	ld e,000h		;5a83
	ld a,b			;5a85
	dec l			;5a86
	ld d,b			;5a87
	ld h,h			;5a88
	add hl,de		;5a89
	nop			;5a8a
	ld l,(hl)		;5a8b
	ld h,050h		;5a8c
	ld h,h			;5a8e
	ld d,050h		;5a8f
	ld a,b			;5a91
	jr z,l5a94h		;5a92
l5a94h:
	add a,d			;5a94
	ld (07850h),a		;5a95
	jr z,l5aeah		;5a98
	ld l,(hl)		;5a9a
	ld h,050h		;5a9b
	ld h,h			;5a9d
	jr nz,l5aa0h		;5a9e
l5aa0h:
	adc a,h			;5aa0
	ld hl,(07850h)		;5aa1
	rst 38h			;5aa4
	ld d,b			;5aa5
	ld h,h			;5aa6
	rst 38h			;5aa7
	ld d,b			;5aa8
	ld h,h			;5aa9
	rst 38h			;5aaa
	ld d,b			;5aab
	ld h,h			;5aac
	rst 38h			;5aad
	ld d,b			;5aae
	ld h,h			;5aaf
	rst 38h			;5ab0
	ld d,b			;5ab1
	ld h,h			;5ab2
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
l5aeah:
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
l5b5eh:
	rst 38h			;5b5e
l5b5fh:
	rst 38h			;5b5f
l5b60h:
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
l5b91h:
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
l5bb7h:
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
l5c3eh:
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
l5c4dh:
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
l5c5ch:
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
l5c6bh:
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
l5c7ah:
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
l5c89h:
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
l5caah:
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
l5cbbh:
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
sub_5cf4h:
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
l5d11h:
	rst 38h			;5d11
	rst 38h			;5d12
	rst 38h			;5d13
	rst 38h			;5d14
	rst 38h			;5d15
	rst 38h			;5d16
l5d17h:
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
l5d37h:
	rst 38h			;5d37
l5d38h:
	rst 38h			;5d38
sub_5d39h:
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
l5d4eh:
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
l5d76h:
	rst 38h			;5d76
l5d77h:
	rst 38h			;5d77
l5d78h:
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
l5d94h:
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
l5dcdh:
	rst 38h			;5dcd
l5dceh:
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
l5de0h:
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
sub_5e2eh:
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
l5e4bh:
	rst 38h			;5e4b
	rst 38h			;5e4c
	rst 38h			;5e4d
	rst 38h			;5e4e
	rst 38h			;5e4f
	rst 38h			;5e50
l5e51h:
	rst 38h			;5e51
	rst 38h			;5e52
	rst 38h			;5e53
	rst 38h			;5e54
	rst 38h			;5e55
l5e56h:
	rst 38h			;5e56
l5e57h:
	rst 38h			;5e57
l5e58h:
	rst 38h			;5e58
l5e59h:
	rst 38h			;5e59
l5e5ah:
	rst 38h			;5e5a
l5e5bh:
	rst 38h			;5e5b
l5e5ch:
	rst 38h			;5e5c
l5e5dh:
	rst 38h			;5e5d
l5e5eh:
	rst 38h			;5e5e
l5e5fh:
	rst 38h			;5e5f
	rst 38h			;5e60
l5e61h:
	rst 38h			;5e61
l5e62h:
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
sub_5eb9h:
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
l5ee3h:
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
l5f03h:
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
l5f2ch:
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
sub_5f3ah:
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
l5f54h:
	rst 38h			;5f54
	rst 38h			;5f55
	rst 38h			;5f56
	rst 38h			;5f57
	rst 38h			;5f58
	rst 38h			;5f59
	rst 38h			;5f5a
	rst 38h			;5f5b
	rst 38h			;5f5c
sub_5f5dh:
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
l5fb7h:
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
l5fc3h:
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
l5fd0h:
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
l5fdeh:
	rst 38h			;5fde
	rst 38h			;5fdf
	rst 38h			;5fe0
	rst 38h			;5fe1
	rst 38h			;5fe2
	rst 38h			;5fe3
	rst 38h			;5fe4
l5fe5h:
	rst 38h			;5fe5
	rst 38h			;5fe6
	rst 38h			;5fe7
	rst 38h			;5fe8
	rst 38h			;5fe9
	rst 38h			;5fea
	rst 38h			;5feb
	rst 38h			;5fec
l5fedh:
	rst 38h			;5fed
	rst 38h			;5fee
	rst 38h			;5fef
	rst 38h			;5ff0
	rst 38h			;5ff1
	rst 38h			;5ff2
	rst 38h			;5ff3
l5ff4h:
	rst 38h			;5ff4
	rst 38h			;5ff5
	rst 38h			;5ff6
	rst 38h			;5ff7
	rst 38h			;5ff8
	rst 38h			;5ff9
	rst 38h			;5ffa
	rst 38h			;5ffb
l5ffch:
	rst 38h			;5ffc
	rst 38h			;5ffd
	rst 38h			;5ffe
	rst 38h			;5fff
l6000h:
	ld c,l			;6000
	ld h,c			;6001
	ld l,(hl)		;6002
l6003h:
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
	jr nz,l6047h		;6010
l6012h:
	jr nz,$+47		;6012
	jr nz,l605ah		;6014
	ld h,l			;6016
	ld h,l			;6017
	ld (hl),b		;6018
	jr nz,l605eh		;6019
	ld l,a			;601b
	ld (hl),d		;601c
	ld h,l			;601d
	jr nz,l6070h		;601e
	ld l,h			;6020
	ld h,c			;6021
	ld l,(hl)		;6022
	ld h,l			;6023
l6024h:
	ld (hl),h		;6024
	jr nz,l6054h		;6025
	jr nz,l606ch		;6027
l6029h:
	ld l,b			;6029
	ld h,l			;602a
	ld l,l			;602b
	ld l,c			;602c
	ld h,e			;602d
	ld h,c			;602e
	ld l,h			;602f
	jr nz,l6082h		;6030
	ld (hl),l		;6032
	ld l,h			;6033
	ld (hl),e		;6034
	ld h,l			;6035
	jr nz,$+34		;6036
	jr nz,l605ah		;6038
l603ah:
	jr nz,l605ch		;603a
	jr nz,l605eh		;603c
	jr nz,l6060h		;603e
	jr nz,l6062h		;6040
	jr nz,l6091h		;6042
	ld d,l			;6044
	ld d,e			;6045
	ld c,c			;6046
l6047h:
	ld c,(hl)		;6047
	ld d,e			;6048
	ld d,h			;6049
	ld d,d			;604a
	ld d,e			;604b
	ld b,d			;604c
	ld c,e			;604d
	rlca			;604e
	nop			;604f
	ld bc,00100h		;6050
	ld (bc),a		;6053
l6054h:
	inc bc			;6054
	inc b			;6055
	dec b			;6056
	ld b,007h		;6057
	nop			;6059
l605ah:
	nop			;605a
	nop			;605b
l605ch:
	nop			;605c
	nop			;605d
l605eh:
	nop			;605e
	nop			;605f
l6060h:
	nop			;6060
	nop			;6061
l6062h:
	nop			;6062
	nop			;6063
	nop			;6064
	nop			;6065
	nop			;6066
	nop			;6067
	nop			;6068
	nop			;6069
	nop			;606a
	nop			;606b
l606ch:
	nop			;606c
	nop			;606d
	nop			;606e
	nop			;606f
l6070h:
	nop			;6070
	nop			;6071
	nop			;6072
	nop			;6073
	nop			;6074
	nop			;6075
	nop			;6076
	nop			;6077
	nop			;6078
	nop			;6079
	nop			;607a
	nop			;607b
	nop			;607c
	nop			;607d
	nop			;607e
	nop			;607f
	nop			;6080
	nop			;6081
l6082h:
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
l60d4h:
	nop			;60d4
sub_60d5h:
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
sub_60dfh:
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
sub_60efh:
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
	nop			;6105
	nop			;6106
	nop			;6107
	nop			;6108
	nop			;6109
l610ah:
	nop			;610a
	nop			;610b
	nop			;610c
	nop			;610d
	nop			;610e
l610fh:
	nop			;610f
	nop			;6110
	nop			;6111
	nop			;6112
	nop			;6113
l6114h:
	nop			;6114
sub_6115h:
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
l6123h:
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
	jr $+17			;6151
	rrca			;6153
	rrca			;6154
	rrca			;6155
	rrca			;6156
	ld e,b			;6157
sub_6158h:
	ld d,(hl)		;6158
	ld d,(hl)		;6159
	ld e,b			;615a
	add a,d			;615b
	add a,b			;615c
	add a,h			;615d
	ld a,a			;615e
	add a,c			;615f
	dec bc			;6160
	djnz l6173h		;6161
	djnz l6175h		;6163
	nop			;6165
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
sub_6172h:
	nop			;6172
l6173h:
	nop			;6173
	nop			;6174
l6175h:
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
l618ah:
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
l619bh:
	nop			;619b
	nop			;619c
	nop			;619d
	nop			;619e
l619fh:
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
l61aah:
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
	nop			;61c0
	nop			;61c1
	ex af,af'		;61c2
	ld bc,00108h		;61c3
	nop			;61c6
	nop			;61c7
	ld l,c			;61c8
	inc b			;61c9
	nop			;61ca
	ld bc,00000h		;61cb
	ld l,e			;61ce
	ld bc,00000h		;61cf
	nop			;61d2
	nop			;61d3
	ex af,af'		;61d4
	inc bc			;61d5
	nop			;61d6
	nop			;61d7
	nop			;61d8
	nop			;61d9
	ld h,d			;61da
	ld l,062h		;61db
	ld l,000h		;61dd
	nop			;61df
	ld h,e			;61e0
	ld bc,00000h		;61e1
	nop			;61e4
	nop			;61e5
	ld l,e			;61e6
	ld bc,0016bh		;61e7
	nop			;61ea
	nop			;61eb
	nop			;61ec
	nop			;61ed
l61eeh:
	nop			;61ee
	nop			;61ef
	nop			;61f0
	nop			;61f1
l61f2h:
	nop			;61f2
	nop			;61f3
l61f4h:
	nop			;61f4
	nop			;61f5
	ex af,af'		;61f6
	ld bc,00000h		;61f7
	nop			;61fa
	nop			;61fb
	nop			;61fc
l61fdh:
	nop			;61fd
	nop			;61fe
	nop			;61ff
	nop			;6200
l6201h:
	nop			;6201
	ld l,e			;6202
	ld bc,00000h		;6203
	nop			;6206
	nop			;6207
	nop			;6208
	nop			;6209
	nop			;620a
	nop			;620b
sub_620ch:
	ld l,e			;620c
	ld bc,02e62h		;620d
	nop			;6210
	nop			;6211
	nop			;6212
	nop			;6213
	nop			;6214
	nop			;6215
	nop			;6216
	nop			;6217
	nop			;6218
	nop			;6219
	ld l,e			;621a
	ld bc,00000h		;621b
	nop			;621e
	nop			;621f
	nop			;6220
	nop			;6221
	nop			;6222
	nop			;6223
	nop			;6224
	nop			;6225
	nop			;6226
	nop			;6227
	nop			;6228
	nop			;6229
	nop			;622a
	nop			;622b
	add hl,de		;622c
l622dh:
	nop			;622d
	ld l,e			;622e
l622fh:
	ld bc,0016bh		;622f
	nop			;6232
l6233h:
	nop			;6233
	nop			;6234
	nop			;6235
	nop			;6236
	nop			;6237
	ld h,e			;6238
	inc bc			;6239
	ld h,d			;623a
	dec l			;623b
l623ch:
	nop			;623c
l623dh:
	nop			;623d
l623eh:
	nop			;623e
l623fh:
	nop			;623f
l6240h:
	ex af,af'		;6240
l6241h:
	ld bc,00a00h		;6241
	nop			;6244
	ld (bc),a		;6245
	ld l,e			;6246
	ld bc,02f62h		;6247
	nop			;624a
	nop			;624b
	ld l,e			;624c
	ld bc,01400h		;624d
	nop			;6250
	inc b			;6251
	nop			;6252
	nop			;6253
	nop			;6254
	nop			;6255
	nop			;6256
	nop			;6257
	nop			;6258
	nop			;6259
	nop			;625a
	dec d			;625b
	nop			;625c
	ld b,062h		;625d
	inc l			;625f
	nop			;6260
	nop			;6261
	ld l,e			;6262
	ld bc,0016bh		;6263
	nop			;6266
	ld d,000h		;6267
	ex af,af'		;6269
	ld l,e			;626a
	ld bc,00000h		;626b
	nop			;626e
	nop			;626f
	nop			;6270
	nop			;6271
	nop			;6272
	rla			;6273
	nop			;6274
	ld a,(bc)		;6275
	ld h,d			;6276
	dec hl			;6277
	nop			;6278
	nop			;6279
	nop			;627a
	nop			;627b
	nop			;627c
	nop			;627d
	nop			;627e
	jr l62e5h		;627f
	ld b,000h		;6281
sub_6283h:
	nop			;6283
	nop			;6284
	nop			;6285
	nop			;6286
l6287h:
	nop			;6287
	nop			;6288
	nop			;6289
	nop			;628a
	nop			;628b
	nop			;628c
	inc c			;628d
	ld l,h			;628e
	ld bc,0016ch		;628f
	nop			;6292
	nop			;6293
	nop			;6294
	nop			;6295
	nop			;6296
	nop			;6297
sub_6298h:
	nop			;6298
	inc c			;6299
	nop			;629a
	nop			;629b
	nop			;629c
	nop			;629d
	nop			;629e
	nop			;629f
	nop			;62a0
	nop			;62a1
	nop			;62a2
	nop			;62a3
	nop			;62a4
l62a5h:
	rrca			;62a5
	nop			;62a6
	nop			;62a7
	nop			;62a8
	nop			;62a9
	nop			;62aa
	nop			;62ab
	ld l,e			;62ac
	ld bc,00000h		;62ad
	nop			;62b0
	rrca			;62b1
	nop			;62b2
	nop			;62b3
	nop			;62b4
	nop			;62b5
	nop			;62b6
	nop			;62b7
	nop			;62b8
	nop			;62b9
	nop			;62ba
	nop			;62bb
l62bch:
	nop			;62bc
	rrca			;62bd
	nop			;62be
	nop			;62bf
	nop			;62c0
	nop			;62c1
	ld l,h			;62c2
	ld bc,00000h		;62c3
	nop			;62c6
	nop			;62c7
	nop			;62c8
	rrca			;62c9
	nop			;62ca
	nop			;62cb
	nop			;62cc
	nop			;62cd
	nop			;62ce
	nop			;62cf
	nop			;62d0
	nop			;62d1
	nop			;62d2
	nop			;62d3
	nop			;62d4
	rrca			;62d5
	nop			;62d6
	nop			;62d7
	nop			;62d8
	nop			;62d9
	nop			;62da
	nop			;62db
	nop			;62dc
	nop			;62dd
	nop			;62de
	nop			;62df
	nop			;62e0
	rrca			;62e1
	nop			;62e2
	nop			;62e3
	nop			;62e4
l62e5h:
	nop			;62e5
	nop			;62e6
	nop			;62e7
	nop			;62e8
	nop			;62e9
	nop			;62ea
	nop			;62eb
	nop			;62ec
	rrca			;62ed
	nop			;62ee
	nop			;62ef
	nop			;62f0
	nop			;62f1
	nop			;62f2
sub_62f3h:
	nop			;62f3
	nop			;62f4
	nop			;62f5
	nop			;62f6
	nop			;62f7
	nop			;62f8
	rrca			;62f9
	ld l,e			;62fa
	ld bc,0016bh		;62fb
	nop			;62fe
	nop			;62ff
sub_6300h:
	nop			;6300
	nop			;6301
	nop			;6302
	nop			;6303
	nop			;6304
	rrca			;6305
	nop			;6306
	nop			;6307
	nop			;6308
	nop			;6309
	nop			;630a
	nop			;630b
	ld l,h			;630c
	ld bc,00000h		;630d
	nop			;6310
	rrca			;6311
	nop			;6312
	nop			;6313
	nop			;6314
	nop			;6315
	nop			;6316
l6317h:
	nop			;6317
	nop			;6318
	nop			;6319
	nop			;631a
	nop			;631b
	nop			;631c
	rrca			;631d
	nop			;631e
	nop			;631f
	nop			;6320
	nop			;6321
	nop			;6322
	nop			;6323
	nop			;6324
	nop			;6325
	nop			;6326
	nop			;6327
	nop			;6328
	rrca			;6329
	nop			;632a
	nop			;632b
	nop			;632c
	nop			;632d
	ld l,e			;632e
	ld bc,00000h		;632f
	nop			;6332
	nop			;6333
	nop			;6334
	rrca			;6335
	ld l,e			;6336
	ld bc,0016bh		;6337
	nop			;633a
	nop			;633b
	nop			;633c
	nop			;633d
	nop			;633e
	nop			;633f
	nop			;6340
	rrca			;6341
	ld h,d			;6342
	dec l			;6343
	nop			;6344
	nop			;6345
	nop			;6346
	nop			;6347
	nop			;6348
	nop			;6349
	nop			;634a
	nop			;634b
	nop			;634c
	rrca			;634d
	nop			;634e
	nop			;634f
	ld h,d			;6350
	dec l			;6351
	nop			;6352
	nop			;6353
	nop			;6354
	nop			;6355
	nop			;6356
	nop			;6357
	nop			;6358
	rrca			;6359
	nop			;635a
	nop			;635b
	nop			;635c
	nop			;635d
	nop			;635e
	nop			;635f
	nop			;6360
	nop			;6361
	nop			;6362
	nop			;6363
	nop			;6364
	rrca			;6365
	ld h,d			;6366
	inc l			;6367
	nop			;6368
	nop			;6369
	ld l,e			;636a
l636bh:
	ld bc,00000h		;636b
	nop			;636e
	nop			;636f
	nop			;6370
	rrca			;6371
	nop			;6372
	nop			;6373
	ld h,d			;6374
	inc l			;6375
	ld h,d			;6376
	dec l			;6377
	ld l,e			;6378
	ld bc,00000h		;6379
	nop			;637c
	rrca			;637d
	ld h,d			;637e
	dec hl			;637f
	nop			;6380
	nop			;6381
	nop			;6382
	nop			;6383
	nop			;6384
l6385h:
	nop			;6385
	nop			;6386
	nop			;6387
	nop			;6388
	rrca			;6389
	nop			;638a
	nop			;638b
	ld h,d			;638c
	dec hl			;638d
	nop			;638e
	nop			;638f
	nop			;6390
l6391h:
	nop			;6391
	nop			;6392
	nop			;6393
	nop			;6394
	rrca			;6395
	nop			;6396
	nop			;6397
	nop			;6398
	nop			;6399
	ld h,d			;639a
	inc l			;639b
	nop			;639c
	nop			;639d
	nop			;639e
	nop			;639f
	nop			;63a0
	rrca			;63a1
	ld h,d			;63a2
	ld hl,(00000h)		;63a3
	nop			;63a6
	nop			;63a7
	nop			;63a8
	nop			;63a9
	nop			;63aa
	nop			;63ab
	nop			;63ac
	rrca			;63ad
	nop			;63ae
	nop			;63af
	ld h,d			;63b0
	ld hl,(02b62h)		;63b1
	ld l,e			;63b4
	ld bc,00000h		;63b5
	nop			;63b8
	rrca			;63b9
	ld h,d			;63ba
	add hl,hl		;63bb
	nop			;63bc
	nop			;63bd
	nop			;63be
	nop			;63bf
	ld h,d			;63c0
	dec l			;63c1
	nop			;63c2
	nop			;63c3
	nop			;63c4
	rrca			;63c5
	nop			;63c6
	nop			;63c7
	ld h,d			;63c8
	add hl,hl		;63c9
	nop			;63ca
	nop			;63cb
	nop			;63cc
	nop			;63cd
	nop			;63ce
	nop			;63cf
	nop			;63d0
	rrca			;63d1
	nop			;63d2
	nop			;63d3
	nop			;63d4
	nop			;63d5
	ld h,d			;63d6
	ld hl,(00000h)		;63d7
	nop			;63da
	nop			;63db
	nop			;63dc
l63ddh:
	rrca			;63dd
	ld h,d			;63de
	jr z,l63e1h		;63df
l63e1h:
	nop			;63e1
	nop			;63e2
	nop			;63e3
	ld h,d			;63e4
	inc l			;63e5
	nop			;63e6
	nop			;63e7
	nop			;63e8
	rrca			;63e9
	nop			;63ea
	nop			;63eb
	ld h,d			;63ec
	jr z,l6451h		;63ed
	add hl,hl		;63ef
	nop			;63f0
	nop			;63f1
	nop			;63f2
	nop			;63f3
	nop			;63f4
	rrca			;63f5
	nop			;63f6
	nop			;63f7
	nop			;63f8
	nop			;63f9
	nop			;63fa
	nop			;63fb
	ld h,d			;63fc
	dec hl			;63fd
	nop			;63fe
	nop			;63ff
l6400h:
	nop			;6400
	rrca			;6401
	nop			;6402
	nop			;6403
	nop			;6404
	nop			;6405
	ex af,af'		;6406
	ld bc,00000h		;6407
	nop			;640a
	nop			;640b
	nop			;640c
	rrca			;640d
	nop			;640e
	nop			;640f
	nop			;6410
	nop			;6411
	ld l,e			;6412
	ld bc,00000h		;6413
	nop			;6416
	nop			;6417
	nop			;6418
	rrca			;6419
	nop			;641a
	nop			;641b
	nop			;641c
	nop			;641d
	ld h,d			;641e
	ld l,062h		;641f
	ld hl,(00000h)		;6421
	nop			;6424
	rrca			;6425
	nop			;6426
	nop			;6427
	nop			;6428
	nop			;6429
	ld l,e			;642a
	ld bc,00000h		;642b
	nop			;642e
	nop			;642f
	nop			;6430
	rrca			;6431
	ld h,d			;6432
	daa			;6433
	nop			;6434
	nop			;6435
	nop			;6436
	nop			;6437
	ld h,d			;6438
	add hl,hl		;6439
	nop			;643a
	nop			;643b
	nop			;643c
	rrca			;643d
	nop			;643e
	nop			;643f
l6440h:
	ld l,h			;6440
	ld bc,00000h		;6441
	nop			;6444
	nop			;6445
	nop			;6446
	nop			;6447
	nop			;6448
	rrca			;6449
	ld l,h			;644a
	ld bc,02762h		;644b
l644eh:
	nop			;644e
	nop			;644f
	nop			;6450
l6451h:
	nop			;6451
	nop			;6452
	nop			;6453
l6454h:
	nop			;6454
	rrca			;6455
	nop			;6456
	nop			;6457
	ld l,h			;6458
	ld bc,00000h		;6459
	ld h,d			;645c
	jr z,l645fh		;645d
l645fh:
	nop			;645f
	nop			;6460
	rrca			;6461
	nop			;6462
	nop			;6463
	nop			;6464
	nop			;6465
	nop			;6466
	nop			;6467
	nop			;6468
	nop			;6469
	nop			;646a
	nop			;646b
	nop			;646c
	rrca			;646d
	ld l,h			;646e
	ld bc,00000h		;646f
	ld l,e			;6472
	ld bc,00000h		;6473
l6476h:
	nop			;6476
	nop			;6477
	nop			;6478
	rrca			;6479
	nop			;647a
	nop			;647b
	nop			;647c
l647dh:
	nop			;647d
l647eh:
	nop			;647e
	nop			;647f
l6480h:
	nop			;6480
	nop			;6481
l6482h:
	nop			;6482
	nop			;6483
l6484h:
	nop			;6484
l6485h:
	rrca			;6485
	nop			;6486
	nop			;6487
	nop			;6488
	nop			;6489
	nop			;648a
	nop			;648b
	nop			;648c
l648dh:
	nop			;648d
	nop			;648e
l648fh:
	nop			;648f
l6490h:
	nop			;6490
l6491h:
	rrca			;6491
	nop			;6492
l6493h:
	nop			;6493
l6494h:
	ld l,h			;6494
	ld bc,00000h		;6495
	nop			;6498
	nop			;6499
	nop			;649a
	nop			;649b
l649ch:
	nop			;649c
	rrca			;649d
l649eh:
	nop			;649e
	nop			;649f
l64a0h:
	nop			;64a0
	nop			;64a1
l64a2h:
	nop			;64a2
l64a3h:
	nop			;64a3
	nop			;64a4
	nop			;64a5
	nop			;64a6
	nop			;64a7
	nop			;64a8
	rrca			;64a9
	nop			;64aa
l64abh:
	nop			;64ab
	nop			;64ac
l64adh:
	nop			;64ad
	nop			;64ae
l64afh:
	nop			;64af
	ld h,d			;64b0
l64b1h:
	daa			;64b1
l64b2h:
	nop			;64b2
	nop			;64b3
	nop			;64b4
	rrca			;64b5
	nop			;64b6
	nop			;64b7
	nop			;64b8
	nop			;64b9
l64bah:
	nop			;64ba
l64bbh:
	nop			;64bb
l64bch:
	nop			;64bc
sub_64bdh:
	nop			;64bd
	nop			;64be
	nop			;64bf
	nop			;64c0
	rrca			;64c1
	nop			;64c2
	nop			;64c3
	nop			;64c4
	nop			;64c5
	nop			;64c6
	nop			;64c7
	ld l,h			;64c8
	ld bc,00000h		;64c9
	nop			;64cc
l64cdh:
	rrca			;64cd
	nop			;64ce
	nop			;64cf
	nop			;64d0
	nop			;64d1
	ld l,h			;64d2
	ld bc,00000h		;64d3
	nop			;64d6
	nop			;64d7
	nop			;64d8
	rrca			;64d9
	nop			;64da
	nop			;64db
	nop			;64dc
	nop			;64dd
	nop			;64de
	nop			;64df
	nop			;64e0
	nop			;64e1
	nop			;64e2
	nop			;64e3
	nop			;64e4
	rrca			;64e5
	nop			;64e6
	nop			;64e7
	nop			;64e8
	nop			;64e9
	nop			;64ea
	nop			;64eb
	ex af,af'		;64ec
	ld bc,00000h		;64ed
	nop			;64f0
	rrca			;64f1
	nop			;64f2
	nop			;64f3
	nop			;64f4
	nop			;64f5
	nop			;64f6
l64f7h:
	nop			;64f7
	ld l,e			;64f8
	ld bc,00000h		;64f9
	nop			;64fc
	rrca			;64fd
	nop			;64fe
	nop			;64ff
	nop			;6500
	nop			;6501
l6502h:
	nop			;6502
	nop			;6503
	ld h,d			;6504
	ld l,000h		;6505
	nop			;6507
	nop			;6508
	rrca			;6509
	nop			;650a
	nop			;650b
	nop			;650c
	nop			;650d
	nop			;650e
	nop			;650f
	ld l,e			;6510
	ld bc,00000h		;6511
	nop			;6514
	rrca			;6515
	nop			;6516
	nop			;6517
	nop			;6518
	nop			;6519
	nop			;651a
	nop			;651b
	nop			;651c
	nop			;651d
	nop			;651e
	nop			;651f
	ld h,e			;6520
	ld b,000h		;6521
	nop			;6523
	nop			;6524
	nop			;6525
	nop			;6526
	nop			;6527
	nop			;6528
	nop			;6529
	nop			;652a
	nop			;652b
	nop			;652c
	rrca			;652d
	nop			;652e
	nop			;652f
l6530h:
	nop			;6530
	nop			;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	nop			;6536
	nop			;6537
	nop			;6538
	rrca			;6539
	nop			;653a
	nop			;653b
	nop			;653c
	nop			;653d
	ld l,e			;653e
	ld bc,00000h		;653f
	nop			;6542
	nop			;6543
	nop			;6544
	rrca			;6545
	nop			;6546
	nop			;6547
	nop			;6548
	nop			;6549
	nop			;654a
	nop			;654b
	nop			;654c
	nop			;654d
	nop			;654e
	nop			;654f
	nop			;6550
	rrca			;6551
	ld h,d			;6552
	jr z,l65b7h		;6553
	jr z,l6557h		;6555
l6557h:
	nop			;6557
	ld l,e			;6558
	ld bc,00000h		;6559
	nop			;655c
	rrca			;655d
	nop			;655e
	nop			;655f
	nop			;6560
	nop			;6561
	nop			;6562
	nop			;6563
	nop			;6564
	nop			;6565
	nop			;6566
	nop			;6567
	nop			;6568
l6569h:
	rrca			;6569
	nop			;656a
	nop			;656b
	nop			;656c
	nop			;656d
	nop			;656e
	nop			;656f
l6570h:
	nop			;6570
	nop			;6571
	nop			;6572
	nop			;6573
	nop			;6574
	rrca			;6575
	ld l,e			;6576
	ld bc,0016bh		;6577
	ld l,e			;657a
	ld bc,00000h		;657b
	nop			;657e
l657fh:
	nop			;657f
	nop			;6580
	rrca			;6581
	nop			;6582
	nop			;6583
	nop			;6584
	nop			;6585
	ld h,d			;6586
l6587h:
	dec l			;6587
	nop			;6588
	nop			;6589
	nop			;658a
	nop			;658b
	nop			;658c
	rrca			;658d
l658eh:
	nop			;658e
	nop			;658f
	nop			;6590
	nop			;6591
	nop			;6592
	nop			;6593
	nop			;6594
	nop			;6595
l6596h:
	nop			;6596
sub_6597h:
	nop			;6597
	nop			;6598
	rrca			;6599
	ld h,d			;659a
	add hl,hl		;659b
	ld h,d			;659c
	add hl,hl		;659d
	nop			;659e
	nop			;659f
	nop			;65a0
	nop			;65a1
	nop			;65a2
	nop			;65a3
	nop			;65a4
	rrca			;65a5
	ld l,e			;65a6
	ld bc,0016bh		;65a7
	ld h,d			;65aa
	inc l			;65ab
l65ach:
	nop			;65ac
	nop			;65ad
	nop			;65ae
	nop			;65af
	nop			;65b0
	rrca			;65b1
	ld h,d			;65b2
	ld hl,(02a62h)		;65b3
	nop			;65b6
l65b7h:
	nop			;65b7
	ld l,h			;65b8
	ld bc,00000h		;65b9
	nop			;65bc
	rrca			;65bd
	nop			;65be
	nop			;65bf
	nop			;65c0
	nop			;65c1
	ld h,d			;65c2
	dec hl			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	nop			;65c7
	nop			;65c8
	rrca			;65c9
	ld l,e			;65ca
	ld bc,0016bh		;65cb
	nop			;65ce
	nop			;65cf
	nop			;65d0
	nop			;65d1
	nop			;65d2
	nop			;65d3
	nop			;65d4
	rrca			;65d5
l65d6h:
	ld h,d			;65d6
l65d7h:
	dec hl			;65d7
l65d8h:
	ld h,d			;65d8
l65d9h:
	dec hl			;65d9
	nop			;65da
	nop			;65db
	nop			;65dc
	nop			;65dd
	nop			;65de
	nop			;65df
	nop			;65e0
	rrca			;65e1
	nop			;65e2
	nop			;65e3
	nop			;65e4
	nop			;65e5
	ld h,d			;65e6
	ld hl,(00000h)		;65e7
	nop			;65ea
	nop			;65eb
	nop			;65ec
	rrca			;65ed
l65eeh:
	ld h,d			;65ee
	inc l			;65ef
	ld h,d			;65f0
	inc l			;65f1
	nop			;65f2
	nop			;65f3
	nop			;65f4
	nop			;65f5
	nop			;65f6
	nop			;65f7
	nop			;65f8
	rrca			;65f9
	ld l,e			;65fa
	ld bc,0016bh		;65fb
	ld h,d			;65fe
	add hl,hl		;65ff
l6600h:
	nop			;6600
	nop			;6601
	nop			;6602
	nop			;6603
	nop			;6604
	rrca			;6605
	ld h,d			;6606
	dec l			;6607
	ld h,d			;6608
	dec l			;6609
	nop			;660a
	nop			;660b
	nop			;660c
	nop			;660d
	nop			;660e
	nop			;660f
	nop			;6610
	rrca			;6611
	nop			;6612
	nop			;6613
	nop			;6614
	nop			;6615
	nop			;6616
	nop			;6617
	nop			;6618
	nop			;6619
	nop			;661a
	nop			;661b
	nop			;661c
	rrca			;661d
	ld l,e			;661e
	ld bc,0016bh		;661f
	ld h,d			;6622
	jr z,$+109		;6623
	ld bc,00000h		;6625
	nop			;6628
	rrca			;6629
	ld h,d			;662a
l662bh:
	ld l,062h		;662b
	ld l,000h		;662d
	nop			;662f
	nop			;6630
sub_6631h:
	nop			;6631
	nop			;6632
	nop			;6633
	nop			;6634
	rrca			;6635
	ld l,e			;6636
	ld bc,0016bh		;6637
	nop			;663a
	nop			;663b
	nop			;663c
	nop			;663d
	nop			;663e
	nop			;663f
	nop			;6640
	rrca			;6641
	ld h,d			;6642
	cpl			;6643
	ld h,d			;6644
l6645h:
	cpl			;6645
	nop			;6646
	nop			;6647
	nop			;6648
	nop			;6649
	nop			;664a
	nop			;664b
	nop			;664c
	rrca			;664d
	ld h,d			;664e
	jr nc,l66b3h		;664f
	jr nc,l6653h		;6651
l6653h:
	nop			;6653
	nop			;6654
	nop			;6655
	nop			;6656
	nop			;6657
	nop			;6658
	rrca			;6659
	ld h,d			;665a
	cpl			;665b
	ld h,d			;665c
	cpl			;665d
	nop			;665e
	nop			;665f
	ld l,e			;6660
	ld bc,00000h		;6661
	nop			;6664
	rrca			;6665
	ld h,d			;6666
	ld l,062h		;6667
	ld l,000h		;6669
	nop			;666b
	ld h,d			;666c
	dec l			;666d
	nop			;666e
	nop			;666f
	nop			;6670
	rrca			;6671
	ld h,d			;6672
	dec l			;6673
	ld h,d			;6674
	dec l			;6675
	ld h,d			;6676
	daa			;6677
	nop			;6678
	nop			;6679
	nop			;667a
	nop			;667b
	nop			;667c
	rrca			;667d
	ld l,h			;667e
	ld bc,0016ch		;667f
	nop			;6682
	nop			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	nop			;6687
	nop			;6688
	rrca			;6689
	ld h,d			;668a
	dec hl			;668b
	ld h,d			;668c
	dec hl			;668d
	ld l,h			;668e
	ld bc,02c62h		;668f
	nop			;6692
	nop			;6693
	nop			;6694
	rrca			;6695
	ld h,d			;6696
	ld hl,(02a62h)		;6697
	nop			;669a
	nop			;669b
	nop			;669c
	nop			;669d
	nop			;669e
	nop			;669f
	nop			;66a0
	rrca			;66a1
	ld h,d			;66a2
	add hl,hl		;66a3
	ld h,d			;66a4
	add hl,hl		;66a5
	nop			;66a6
	nop			;66a7
	ld h,d			;66a8
	dec hl			;66a9
	nop			;66aa
	nop			;66ab
	nop			;66ac
	rrca			;66ad
	ld h,d			;66ae
	jr z,l6713h		;66af
	jr z,l671fh		;66b1
l66b3h:
	ld bc,00000h		;66b3
l66b6h:
	nop			;66b6
	nop			;66b7
	nop			;66b8
	rrca			;66b9
	ld h,d			;66ba
	daa			;66bb
	ld h,d			;66bc
	daa			;66bd
	nop			;66be
	nop			;66bf
	nop			;66c0
	nop			;66c1
	nop			;66c2
	nop			;66c3
	nop			;66c4
	rrca			;66c5
	ld h,d			;66c6
	jr z,l672bh		;66c7
	jr z,l66cbh		;66c9
l66cbh:
	nop			;66cb
	ld h,d			;66cc
	ld hl,(00000h)		;66cd
	nop			;66d0
	rrca			;66d1
	ld l,h			;66d2
	ld bc,0016ch		;66d3
	nop			;66d6
	nop			;66d7
	nop			;66d8
	nop			;66d9
	nop			;66da
	nop			;66db
	nop			;66dc
	rrca			;66dd
	ld h,d			;66de
	ld hl,(02a62h)		;66df
	nop			;66e2
	nop			;66e3
	ld h,d			;66e4
	add hl,hl		;66e5
	nop			;66e6
	nop			;66e7
	nop			;66e8
	rrca			;66e9
	ld h,d			;66ea
	dec hl			;66eb
	ld h,d			;66ec
	dec hl			;66ed
	nop			;66ee
	nop			;66ef
	nop			;66f0
	nop			;66f1
	nop			;66f2
	nop			;66f3
	nop			;66f4
	rrca			;66f5
	ld h,d			;66f6
	inc l			;66f7
	ld h,d			;66f8
	inc l			;66f9
	nop			;66fa
	nop			;66fb
	nop			;66fc
	nop			;66fd
	nop			;66fe
	nop			;66ff
	nop			;6700
	rrca			;6701
	ld h,d			;6702
	dec l			;6703
	ld h,d			;6704
	dec l			;6705
	nop			;6706
	nop			;6707
	ld h,d			;6708
	jr z,l670bh		;6709
l670bh:
	nop			;670b
	nop			;670c
	rrca			;670d
	nop			;670e
l670fh:
	nop			;670f
	nop			;6710
	nop			;6711
	nop			;6712
l6713h:
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	nop			;6717
	nop			;6718
	nop			;6719
	ld h,d			;671a
	ld l,062h		;671b
	ld l,000h		;671d
l671fh:
	nop			;671f
	nop			;6720
	nop			;6721
	nop			;6722
	nop			;6723
	nop			;6724
	rrca			;6725
	nop			;6726
	nop			;6727
	nop			;6728
	nop			;6729
	nop			;672a
l672bh:
	nop			;672b
	nop			;672c
	nop			;672d
	nop			;672e
	nop			;672f
	nop			;6730
	rrca			;6731
	ld h,d			;6732
	cpl			;6733
	ld h,d			;6734
	cpl			;6735
l6736h:
	nop			;6736
l6737h:
	nop			;6737
	nop			;6738
	nop			;6739
l673ah:
	nop			;673a
l673bh:
	nop			;673b
	nop			;673c
	rrca			;673d
	nop			;673e
	nop			;673f
l6740h:
	nop			;6740
	nop			;6741
	nop			;6742
	nop			;6743
	nop			;6744
l6745h:
	nop			;6745
	nop			;6746
	nop			;6747
	nop			;6748
	rrca			;6749
l674ah:
	ld h,d			;674a
	jr nc,l67afh		;674b
	jr nc,l674fh		;674d
l674fh:
	nop			;674f
	nop			;6750
	nop			;6751
	nop			;6752
	nop			;6753
l6754h:
	nop			;6754
	rrca			;6755
	nop			;6756
	nop			;6757
	nop			;6758
	nop			;6759
	nop			;675a
	nop			;675b
	ld h,d			;675c
	daa			;675d
	nop			;675e
	nop			;675f
	nop			;6760
	rrca			;6761
	ld h,d			;6762
	cpl			;6763
	ld h,d			;6764
	cpl			;6765
	nop			;6766
	nop			;6767
	nop			;6768
	nop			;6769
	nop			;676a
	nop			;676b
	nop			;676c
	rrca			;676d
	nop			;676e
	nop			;676f
	nop			;6770
	nop			;6771
sub_6772h:
	nop			;6772
	nop			;6773
	ld l,h			;6774
	ld bc,00000h		;6775
	nop			;6778
	rrca			;6779
	ld h,d			;677a
	ld l,062h		;677b
	ld l,000h		;677d
	nop			;677f
	nop			;6780
	nop			;6781
	nop			;6782
	nop			;6783
	nop			;6784
	rrca			;6785
	nop			;6786
	nop			;6787
	nop			;6788
	nop			;6789
	nop			;678a
	nop			;678b
l678ch:
	nop			;678c
	nop			;678d
	nop			;678e
	nop			;678f
l6790h:
	nop			;6790
	rrca			;6791
	ld h,d			;6792
	dec l			;6793
	ld h,d			;6794
	dec l			;6795
l6796h:
	ld h,d			;6796
	jr z,l6805h		;6797
	ld bc,00000h		;6799
	nop			;679c
l679dh:
	rrca			;679d
	nop			;679e
	nop			;679f
	nop			;67a0
	nop			;67a1
	nop			;67a2
	nop			;67a3
	nop			;67a4
	nop			;67a5
	nop			;67a6
	nop			;67a7
	nop			;67a8
	rrca			;67a9
	nop			;67aa
	nop			;67ab
	nop			;67ac
	nop			;67ad
	nop			;67ae
l67afh:
	nop			;67af
	nop			;67b0
	nop			;67b1
	nop			;67b2
	nop			;67b3
	nop			;67b4
	rrca			;67b5
l67b6h:
	nop			;67b6
	nop			;67b7
	nop			;67b8
	nop			;67b9
	ld l,e			;67ba
	ld bc,00000h		;67bb
	nop			;67be
	nop			;67bf
	rst 38h			;67c0
	pop bc			;67c1
	dec a			;67c2
	and 007h		;67c3
l67c5h:
	ld (0c1f9h),a		;67c5
	jp nz,l59bah		;67c8
	ret			;67cb
	ld hl,l4bc3h		;67cc
	ld de,(0c1f6h)		;67cf
	add hl,de		;67d3
	ld a,(hl)		;67d4
	ld hl,l5a17h		;67d5
	ld e,a			;67d8
	ld d,000h		;67d9
	add hl,de		;67db
	push hl			;67dc
	ld hl,l5a07h		;67dd
	ld a,(0c1f8h)		;67e0
	ld e,a			;67e3
	add a,002h		;67e4
	ld (0c1f8h),a		;67e6
	add hl,de		;67e9
	ex de,hl		;67ea
l67ebh:
	pop hl			;67eb
	ld bc,00002h		;67ec
	ldir			;67ef
	ld hl,(0c1f6h)		;67f1
	inc hl			;67f4
	ld (0c1f6h),hl		;67f5
	ret			;67f8
	jr nz,l67fbh		;67f9
l67fbh:
	jr nz,l67fdh		;67fb
l67fdh:
	jr nz,l67ffh		;67fd
l67ffh:
	jr nz,l6801h		;67ff
l6801h:
	jr nz,l6803h		;6801
l6803h:
	jr nz,l6805h		;6803
l6805h:
	jr nz,l6807h		;6805
l6807h:
	jr nz,l6809h		;6807
l6809h:
	jr nz,l680bh		;6809
l680bh:
	jr nz,l680dh		;680b
l680dh:
	jr nz,l680fh		;680d
l680fh:
	jr nz,l6811h		;680f
l6811h:
	jr nz,l6813h		;6811
l6813h:
	jr nz,l6815h		;6813
l6815h:
	jr nz,l6817h		;6815
l6817h:
	jr nz,l6819h		;6817
l6819h:
	ld b,b			;6819
	nop			;681a
	ld b,b			;681b
	jr nz,l685eh		;681c
	ld b,b			;681e
	ld b,b			;681f
	ld h,b			;6820
	ld b,b			;6821
	add a,b			;6822
	ld b,b			;6823
	and b			;6824
	ld h,b			;6825
	nop			;6826
sub_6827h:
	ld h,b			;6827
	jr nz,l688ah		;6828
	ld b,b			;682a
	ld h,b			;682b
	ld h,b			;682c
	ld h,b			;682d
	add a,b			;682e
	ld h,b			;682f
	and b			;6830
	add a,b			;6831
	nop			;6832
	add a,b			;6833
	jr nz,l67b6h		;6834
	ld b,b			;6836
	add a,b			;6837
	ld h,b			;6838
	add a,b			;6839
l683ah:
	add a,b			;683a
	add a,b			;683b
	and b			;683c
	and b			;683d
	nop			;683e
	and b			;683f
	jr nz,$-94		;6840
	ld b,b			;6842
	and b			;6843
	ld h,b			;6844
	and b			;6845
	add a,b			;6846
	and b			;6847
	and b			;6848
	ret nz			;6849
	nop			;684a
	ret nz			;684b
l684ch:
	jr nz,$-62		;684c
	ld b,b			;684e
	ret nz			;684f
	ld h,b			;6850
	ret nz			;6851
	add a,b			;6852
	ret nz			;6853
	and b			;6854
l6855h:
	ret po			;6855
	nop			;6856
	ret po			;6857
	jr nz,l683ah		;6858
	ld b,b			;685a
sub_685bh:
	ret po			;685b
	ld h,b			;685c
	ret po			;685d
l685eh:
	add a,b			;685e
	ret po			;685f
	and b			;6860
	jr nz,l6863h		;6861
l6863h:
	jr nz,l6885h		;6863
	jr nz,l68a7h		;6865
l6867h:
	jr nz,l68c9h		;6867
	jr nz,l67ebh		;6869
	jr nz,l680dh		;686b
	nop			;686d
l686eh:
	nop			;686e
	nop			;686f
	jr nz,l6872h		;6870
l6872h:
	ld b,b			;6872
	nop			;6873
	ld h,b			;6874
	nop			;6875
	add a,b			;6876
	nop			;6877
	and b			;6878
	ld b,b			;6879
	ld bc,02140h		;687a
	ld b,b			;687d
	ld b,c			;687e
	ld b,b			;687f
	ld h,c			;6880
	ld b,b			;6881
	add a,c			;6882
	ld b,b			;6883
	and c			;6884
l6885h:
	ld h,b			;6885
	ld bc,02160h		;6886
	ld h,b			;6889
l688ah:
	ld b,c			;688a
	ld h,b			;688b
	ld h,c			;688c
l688dh:
	ld h,b			;688d
	add a,c			;688e
	ld h,b			;688f
	and c			;6890
	add a,b			;6891
	ld bc,02180h		;6892
	add a,b			;6895
	ld b,c			;6896
	add a,b			;6897
	ld h,c			;6898
	add a,b			;6899
	add a,c			;689a
	add a,b			;689b
	and c			;689c
	and b			;689d
	ld bc,021a0h		;689e
	and b			;68a1
l68a2h:
	ld b,c			;68a2
	and b			;68a3
	ld h,c			;68a4
	and b			;68a5
	add a,c			;68a6
l68a7h:
	and b			;68a7
	and c			;68a8
	ret nz			;68a9
	ld bc,021c0h		;68aa
	ret nz			;68ad
	ld b,c			;68ae
l68afh:
	ret nz			;68af
	ld h,c			;68b0
	ret nz			;68b1
	add a,c			;68b2
	ret nz			;68b3
	and c			;68b4
	ret po			;68b5
	ld bc,021e0h		;68b6
	ret po			;68b9
	ld b,c			;68ba
	ret po			;68bb
	ld h,c			;68bc
	ret po			;68bd
	add a,c			;68be
l68bfh:
	ret po			;68bf
	and c			;68c0
	jr nz,$+3		;68c1
l68c3h:
	jr nz,$+35		;68c3
	jr nz,l6908h		;68c5
	jr nz,l692ah		;68c7
l68c9h:
	jr nz,l684ch		;68c9
	jr nz,l686eh		;68cb
	nop			;68cd
	ld bc,02100h		;68ce
	nop			;68d1
	ld b,c			;68d2
	nop			;68d3
	ld h,c			;68d4
	nop			;68d5
	add a,c			;68d6
	nop			;68d7
	and c			;68d8
	nop			;68d9
	nop			;68da
	nop			;68db
	nop			;68dc
	nop			;68dd
	nop			;68de
	nop			;68df
	ld bc,00100h		;68e0
l68e3h:
	nop			;68e3
l68e4h:
	ld bc,00000h		;68e4
	ret nc			;68e7
	nop			;68e8
	nop			;68e9
	nop			;68ea
	nop			;68eb
	ret po			;68ec
	nop			;68ed
	nop			;68ee
	nop			;68ef
	ld (bc),a		;68f0
	nop			;68f1
	nop			;68f2
	ld bc,00199h		;68f3
	ret nz			;68f6
	nop			;68f7
	nop			;68f8
	nop			;68f9
	nop			;68fa
	nop			;68fb
	nop			;68fc
	nop			;68fd
	nop			;68fe
	ld bc,00000h		;68ff
	ld bc,00109h		;6902
	add a,b			;6905
	nop			;6906
	nop			;6907
l6908h:
	nop			;6908
	nop			;6909
	nop			;690a
	nop			;690b
	nop			;690c
l690dh:
	nop			;690d
	nop			;690e
	ld bc,00200h		;690f
	sbc a,c			;6912
	ld bc,000c0h		;6913
	nop			;6916
	pop hl			;6917
	inc bc			;6918
	add hl,hl		;6919
	nop			;691a
	ld b,002h		;691b
	ld b,000h		;691d
	dec b			;691f
	nop			;6920
l6921h:
	nop			;6921
	nop			;6922
	sub b			;6923
	jr nz,l6926h		;6924
l6926h:
	nop			;6926
	nop			;6927
	djnz l692ah		;6928
l692ah:
	nop			;692a
	ld bc,000c0h		;692b
	ex af,af'		;692e
	nop			;692f
	nop			;6930
	nop			;6931
	ret nc			;6932
	ret po			;6933
	nop			;6934
	nop			;6935
	nop			;6936
	ret nc			;6937
	nop			;6938
	nop			;6939
	nop			;693a
	ld (bc),a		;693b
	nop			;693c
	nop			;693d
	ld bc,00000h		;693e
	ret nc			;6941
	nop			;6942
	nop			;6943
	nop			;6944
l6945h:
	inc bc			;6945
	ret po			;6946
	nop			;6947
	nop			;6948
	nop			;6949
	ld bc,02000h		;694a
	nop			;694d
	nop			;694e
	nop			;694f
	sub b			;6950
	nop			;6951
	nop			;6952
	nop			;6953
	inc bc			;6954
	nop			;6955
	nop			;6956
	nop			;6957
	nop			;6958
	jr nz,l695bh		;6959
l695bh:
	jr nz,l695dh		;695b
l695dh:
	nop			;695d
	nop			;695e
	ret nc			;695f
	ld (bc),a		;6960
	ld bc,0cd01h		;6961
	add hl,hl		;6964
	ld e,h			;6965
	ld a,(0c308h)		;6966
	or a			;6969
	call nz,005bdh		;696a
	ld hl,0c147h		;696d
l6970h:
	ld a,(0c308h)		;6970
	or a			;6973
	ld bc,l7d57h		;6974
	ld d,00eh		;6977
	jp z,l5b91h		;6979
	dec a			;697c
	ld bc,l7d6fh		;697d
	ld d,02dh		;6980
	jp z,l5b91h		;6982
	dec a			;6985
	ld bc,l7e3bh		;6986
	ld d,02ah		;6989
	jp z,l5b91h		;698b
	ld bc,l7ef8h		;698e
	ld d,055h		;6991
	ld (hl),b		;6993
	inc hl			;6994
	ld (hl),c		;6995
	ld a,d			;6996
	ld (0c149h),a		;6997
	ld hl,(0057ch)		;699a
	ld (hl),01ah		;699d
	ld hl,(00588h)		;699f
	ld (hl),010h		;69a2
	ld hl,(0058eh)		;69a4
	ld (hl),010h		;69a7
sub_69a9h:
	ld hl,(00594h)		;69a9
	ld (hl),010h		;69ac
	ld a,(l5b5eh)		;69ae
	or a			;69b1
	jp z,l5bb7h		;69b2
	dec a			;69b5
	ld (l5b5eh),a		;69b6
	xor a			;69b9
	ld (06aa7h),a		;69ba
	ld (l5e56h),a		;69bd
	ld (l5e57h),a		;69c0
	ld (l5e59h),a		;69c3
	ld (l5e5ah),a		;69c6
	ld (l5e5bh),a		;69c9
	ld (l5e5ch),a		;69cc
	ld (l5e5dh),a		;69cf
	ld (l5e5eh),a		;69d2
	ld (l64bbh),a		;69d5
	ld (l64bah),a		;69d8
	ld (l6596h),a		;69db
	ld (l5e61h),a		;69de
	ld (l623dh),a		;69e1
	ld (l623eh),a		;69e4
	ld (069d3h),a		;69e7
	ld a,010h		;69ea
l69ech:
	ld (05564h),a		;69ec
	ld a,001h		;69ef
	ld (l5b5fh),a		;69f1
	ld a,077h		;69f4
	ld (l6b04h),a		;69f6
	ld a,007h		;69f9
	ld (l6b05h),a		;69fb
	ld hl,l6736h		;69fe
	ld de,00003h		;6a01
	ld b,00ch		;6a04
l6a06h:
	ld (hl),000h		;6a06
	inc hl			;6a08
	inc hl			;6a09
	ld (hl),000h		;6a0a
	add hl,de		;6a0c
	djnz l6a06h		;6a0d
	ld hl,06a3ah		;6a0f
	ld de,0018eh		;6a12
	ld bc,0000ah		;6a15
	ldir			;6a18
	xor a			;6a1a
	ld hl,l6c61h		;6a1b
	ld de,00020h		;6a1e
	ld b,00bh		;6a21
l6a23h:
	ld (hl),a		;6a23
	add hl,de		;6a24
	djnz l6a23h		;6a25
sub_6a27h:
	xor a			;6a27
	ld r,a			;6a28
	ret			;6a2a
	call 005c6h		;6a2b
	xor a			;6a2e
	ld (0c3cbh),a		;6a2f
	ld (0c3cch),a		;6a32
	ld a,(0c157h)		;6a35
	or a			;6a38
	ld a,000h		;6a39
	jp z,l5c3eh		;6a3b
	ld a,001h		;6a3e
	ld (0c3cah),a		;6a40
sub_6a43h:
	ld a,(0c157h)		;6a43
	cp 005h			;6a46
	ld a,0ffh		;6a48
	jp c,l5c4dh		;6a4a
	ld a,007h		;6a4d
	ld (l6287h),a		;6a4f
	ld a,(0c157h)		;6a52
	cp 004h			;6a55
	ld a,00fh		;6a57
	jp c,l5c5ch		;6a59
	ld a,007h		;6a5c
	ld (l679dh),a		;6a5e
	ld a,(0c157h)		;6a61
	cp 008h			;6a64
	ld a,000h		;6a66
	jp c,l5c6bh		;6a68
	ld a,001h		;6a6b
	ld (077a2h),a		;6a6d
	ld a,(0c157h)		;6a70
	cp 007h			;6a73
	ld a,000h		;6a75
	jp c,l5c7ah		;6a77
	ld a,003h		;6a7a
l6a7ch:
	ld (l7a59h),a		;6a7c
	ld a,(0c157h)		;6a7f
	cp 005h			;6a82
	ld a,00fh		;6a84
	jp c,l5c89h		;6a86
	ld a,003h		;6a89
	ld (l6b43h),a		;6a8b
	ld a,(0c157h)		;6a8e
	cp 001h			;6a91
	ld hl,000c8h		;6a93
	jp c,l5caah		;6a96
	cp 003h			;6a99
	ld hl,00190h		;6a9b
	jp c,l5caah		;6a9e
l6aa1h:
	cp 005h			;6aa1
	ld hl,002bch		;6aa3
	jp c,l5caah		;6aa6
	ld hl,00578h		;6aa9
	ld (l5e5fh),hl		;6aac
	ret			;6aaf
	ld a,(0c3d0h)		;6ab0
	cp 0a4h			;6ab3
	jp c,l5cbbh		;6ab5
	ld a,001h		;6ab8
	ld (l5b60h),a		;6aba
	call 069a3h		;6abd
	call sub_5cf4h		;6ac0
	call 06aa8h		;6ac3
	call sub_5cf4h		;6ac6
	call sub_6a43h		;6ac9
	call sub_5e2eh		;6acc
	call sub_5eb9h		;6acf
	call sub_5f5dh		;6ad2
	call sub_5d39h		;6ad5
	call sub_5cf4h		;6ad8
	ld a,(l5e59h)		;6adb
	or a			;6ade
	ret nz			;6adf
	ld a,(l68e3h)		;6ae0
	or a			;6ae3
	jp nz,l68e4h+2		;6ae4
	ld a,001h		;6ae7
	ld (l68e3h),a		;6ae9
	ld a,r			;6aec
	and 07fh		;6aee
	add a,032h		;6af0
l6af2h:
	ld (l68e4h),a		;6af2
	ret			;6af5
	ld a,(0c308h)		;6af6
	or a			;6af9
	ret nz			;6afa
	ld a,(0c145h)		;6afb
	or a			;6afe
	ret z			;6aff
	ld a,(0c3cfh)		;6b00
	or a			;6b03
l6b04h:
	ret nz			;6b04
l6b05h:
	ld a,(0c1f7h)		;6b05
	cp 002h			;6b08
	jp nz,l5d11h		;6b0a
	ld a,(0c1f6h)		;6b0d
	cp 032h			;6b10
	ret c			;6b12
	ld hl,l5d17h		;6b13
	jp 002e9h		;6b16
	ld bc,03000h		;6b19
	ld (bc),a		;6b1c
	ld h,b			;6b1d
	dec b			;6b1e
	ld (hl),h		;6b1f
	rlca			;6b20
	ld (l7702h),hl		;6b21
	rlca			;6b24
	ld (hl),a		;6b25
	rlca			;6b26
	ld (hl),a		;6b27
	rlca			;6b28
	ld de,00001h		;6b29
	nop			;6b2c
	rla			;6b2d
	ld bc,00777h		;6b2e
l6b31h:
	inc sp			;6b31
	inc bc			;6b32
	ld b,l			;6b33
l6b34h:
	inc b			;6b34
	ld (hl),b		;6b35
	rlca			;6b36
	ld (hl),b		;6b37
	nop			;6b38
	ld bc,03a00h		;6b39
	ld e,(hl)		;6b3c
	ld e,e			;6b3d
	or a			;6b3e
	ret z			;6b3f
	ld a,(l5d37h)		;6b40
l6b43h:
	dec a			;6b43
sub_6b44h:
	jp z,l5d4eh		;6b44
	dec a			;6b47
	jp z,l5d78h		;6b48
	dec a			;6b4b
	jp z,l5dceh		;6b4c
	ret			;6b4f
	xor a			;6b50
	ld (0c3cah),a		;6b51
	ld a,002h		;6b54
	ld (l5d37h),a		;6b56
	ld hl,l75e0h		;6b59
	call 00145h		;6b5c
	ld a,00bh		;6b5f
	ld b,020h		;6b61
l6b63h:
	out (098h),a		;6b63
	djnz l6b63h		;6b65
	ei			;6b67
	ld hl,l74c0h		;6b68
	call 00145h		;6b6b
	ld a,00bh		;6b6e
	ld b,010h		;6b70
l6b72h:
	out (098h),a		;6b72
	djnz l6b72h		;6b74
	ei			;6b76
	ret			;6b77
	ld a,b			;6b78
	nop			;6b79
	ld a,001h		;6b7a
l6b7ch:
	ld (l5d38h),a		;6b7c
l6b7fh:
	ld a,008h		;6b7f
	ld (0c39ah),a		;6b81
	ld a,(l5d77h)		;6b84
	inc a			;6b87
sub_6b88h:
	and 01fh		;6b88
	ld (l5d77h),a		;6b8a
	cp 00eh			;6b8d
	ld a,028h		;6b8f
	jp c,l5d94h		;6b91
	ld a,006h		;6b94
	ld (0c230h),a		;6b96
	ld (0c278h),a		;6b99
	ld (0c27ch),a		;6b9c
	ld a,064h		;6b9f
	ld (0c231h),a		;6ba1
	add a,010h		;6ba4
	ld (0c279h),a		;6ba6
	add a,010h		;6ba9
	ld (0c27dh),a		;6bab
sub_6baeh:
	ld a,068h		;6bae
	ld (0c232h),a		;6bb0
	add a,004h		;6bb3
	ld (0c27ah),a		;6bb5
	add a,004h		;6bb8
	ld (0c27eh),a		;6bba
	ld a,(l5d76h)		;6bbd
	dec a			;6bc0
	ld (l5d76h),a		;6bc1
	ret nz			;6bc4
	xor a			;6bc5
	ld (l5d38h),a		;6bc6
	ld a,003h		;6bc9
	ld (l5d37h),a		;6bcb
	ret			;6bce
	inc a			;6bcf
	ld a,(l5d77h)		;6bd0
	inc a			;6bd3
	and 01fh		;6bd4
	ld (l5d77h),a		;6bd6
	cp 00eh			;6bd9
	ld a,028h		;6bdb
	jp c,l5de0h		;6bdd
	ld a,006h		;6be0
	ld (0c278h),a		;6be2
	ld a,074h		;6be5
	ld (0c279h),a		;6be7
	ld a,074h		;6bea
	ld (0c27ah),a		;6bec
	ld a,(l5dcdh)		;6bef
	dec a			;6bf2
	ld (l5dcdh),a		;6bf3
	ret nz			;6bf6
	xor a			;6bf7
	ld (l5b5eh),a		;6bf8
	ld a,001h		;6bfb
	ld (0c3cah),a		;6bfd
l6c00h:
	ld a,044h		;6c00
	ld (0c232h),a		;6c02
	ld (0c27ah),a		;6c05
	ld (0c27eh),a		;6c08
sub_6c0bh:
	ld hl,l74c0h		;6c0b
	call 00145h		;6c0e
	ld hl,04ac3h		;6c11
	ld bc,01098h		;6c14
	otir			;6c17
	ei			;6c19
	ld hl,l75e0h		;6c1a
	call 00145h		;6c1d
	ld hl,04ac3h		;6c20
	ld b,010h		;6c23
	otir			;6c25
	ld hl,04ac3h		;6c27
l6c2ah:
	ld b,010h		;6c2a
l6c2ch:
	otir			;6c2c
	ei			;6c2e
	ret			;6c2f
	ld hl,(0c1f6h)		;6c30
	ld a,h			;6c33
	cp 002h			;6c34
	jp z,l5e4bh		;6c36
	ld a,l			;6c39
	cp 0b0h			;6c3a
	ret nz			;6c3c
	ld a,h			;6c3d
	cp 003h			;6c3e
	ld b,002h		;6c40
	jp z,l5e51h		;6c42
	cp 004h			;6c45
	ld b,003h		;6c47
	jp z,l5e51h		;6c49
	ret			;6c4c
	ld b,001h		;6c4d
	ld a,l			;6c4f
	cp 020h			;6c50
	ret c			;6c52
	ld a,b			;6c53
	ld (0c308h),a		;6c54
	ret			;6c57
	nop			;6c58
	nop			;6c59
	nop			;6c5a
	nop			;6c5b
l6c5ch:
	nop			;6c5c
	nop			;6c5d
	nop			;6c5e
	nop			;6c5f
	nop			;6c60
l6c61h:
	nop			;6c61
	nop			;6c62
l6c63h:
	nop			;6c63
	nop			;6c64
	nop			;6c65
	nop			;6c66
	nop			;6c67
	nop			;6c68
	nop			;6c69
l6c6ah:
	nop			;6c6a
	ld bc,00000h		;6c6b
	nop			;6c6e
	nop			;6c6f
	nop			;6c70
	nop			;6c71
	ld bc,00000h		;6c72
	nop			;6c75
	nop			;6c76
	nop			;6c77
	ld bc,00000h		;6c78
	nop			;6c7b
	nop			;6c7c
	ld bc,00000h		;6c7d
	nop			;6c80
	nop			;6c81
	ld bc,00000h		;6c82
	nop			;6c85
	ld bc,00000h		;6c86
	nop			;6c89
	ld bc,00000h		;6c8a
	ld bc,00000h		;6c8d
	nop			;6c90
	ld bc,00000h		;6c91
	ld bc,00000h		;6c94
	ld bc,00000h		;6c97
	ld bc,00100h		;6c9a
	nop			;6c9d
	nop			;6c9e
	ld bc,00000h		;6c9f
	ld bc,00100h		;6ca2
	nop			;6ca5
	ld bc,00100h		;6ca6
	nop			;6ca9
	ld bc,00001h		;6caa
	ld bc,00101h		;6cad
	nop			;6cb0
	ld bc,00101h		;6cb1
	nop			;6cb4
	ld bc,00101h		;6cb5
	ld bc,00200h		;6cb8
	ld hl,(0c1f6h)		;6cbb
	ld a,h			;6cbe
	cp 006h			;6cbf
	ret nz			;6cc1
	ld a,l			;6cc2
	cp 010h			;6cc3
	jp z,l5ee3h		;6cc5
	cp 040h			;6cc8
	jp z,l5f03h		;6cca
	cp 048h			;6ccd
	ret nz			;6ccf
	ld hl,(0c1f6h)		;6cd0
	ld de,00008h		;6cd3
	add hl,de		;6cd6
	ld (0c1f6h),hl		;6cd7
	ld a,001h		;6cda
	ld (l5e56h),a		;6cdc
	ld a,0ffh		;6cdf
	ld (l5e58h),a		;6ce1
	ret			;6ce4
	ld hl,(0c1f6h)		;6ce5
	ld de,00008h		;6ce8
	add hl,de		;6ceb
	ld (0c1f6h),hl		;6cec
	ld a,001h		;6cef
	ld (0c111h),a		;6cf1
	ld (l5e59h),a		;6cf4
	call 00500h		;6cf7
	ld a,001h		;6cfa
	ld (l5b60h),a		;6cfc
	ld hl,l7361h		;6cff
	jp 002e9h		;6d02
	ld a,(l5e5ch)		;6d05
	or a			;6d08
	ret nz			;6d09
	ld a,001h		;6d0a
	ld (l5e5ch),a		;6d0c
	ld de,l6e01h		;6d0f
	ld hl,l7b00h		;6d12
	ld b,004h		;6d15
	halt			;6d17
	call 00536h		;6d18
	ld c,077h		;6d1b
	ld e,0a0h		;6d1d
	call sub_568eh		;6d1f
	ld hl,l5f2ch		;6d22
	ld de,0018eh		;6d25
	ld bc,0000eh		;6d28
	ldir			;6d2b
	ret			;6d2d
	cp 004h			;6d2e
	ret z			;6d30
	cp 008h			;6d31
	ret z			;6d33
	cp 009h			;6d34
	ret z			;6d36
	cp 00ch			;6d37
	ret z			;6d39
	scf			;6d3a
	ret			;6d3b
	ld a,(0c396h)		;6d3c
	or a			;6d3f
	ret z			;6d40
	ld a,(0c397h)		;6d41
	inc a			;6d44
	ld (0c397h),a		;6d45
	jp z,l5f54h		;6d48
	cp 0b4h			;6d4b
	ret c			;6d4d
	and 001h		;6d4e
	ret nz			;6d50
	ld b,030h		;6d51
	jp l7285h		;6d53
	ld a,001h		;6d56
	ld (0c13dh),a		;6d58
	ld (0c395h),a		;6d5b
	ret			;6d5e
	ld a,(l5e59h)		;6d5f
	or a			;6d62
	ret z			;6d63
	ld a,001h		;6d64
	ld (l5b60h),a		;6d66
	ld a,0ffh		;6d69
	ld (0c149h),a		;6d6b
	call sub_5f3ah		;6d6e
	call 0732ch		;6d71
	ld a,(l5e61h)		;6d74
	or a			;6d77
	jp nz,l5fb7h		;6d78
	ld a,(l5e5dh)		;6d7b
	or a			;6d7e
	call nz,sub_6283h	;6d7f
	ld a,(l5e5bh)		;6d82
	or a			;6d85
	call nz,sub_620ch	;6d86
	ld a,(l5e5ah)		;6d89
	or a			;6d8c
	call nz,sub_6158h	;6d8d
	ld a,(l5e56h)		;6d90
	or a			;6d93
	call nz,sub_60efh	;6d94
	ld a,(l5e57h)		;6d97
	or a			;6d9a
	call nz,sub_6115h	;6d9b
	ld a,(l5e5dh)		;6d9e
	or a			;6da1
	call nz,sub_64bdh	;6da2
	ld a,(l5e5dh)		;6da5
	or a			;6da8
	call nz,sub_6631h	;6da9
	ld a,(l5e5dh)		;6dac
	or a			;6daf
	call nz,sub_6597h	;6db0
	ld a,r			;6db3
	ld (l6240h),a		;6db5
	ret			;6db8
	ld a,(l5e61h)		;6db9
	dec a			;6dbc
	jp z,0601ah		;6dbd
	dec a			;6dc0
	jp z,l5fc3h		;6dc1
	ret			;6dc4
	ld a,(l60d4h)		;6dc5
	inc a			;6dc8
	and 00fh		;6dc9
	jp z,l5fd0h		;6dcb
	ld (l60d4h),a		;6dce
	ret			;6dd1
	ld hl,0c249h		;6dd2
	ld de,00004h		;6dd5
	ld b,00ch		;6dd8
l6ddah:
	ld (hl),000h		;6dda
	add hl,de		;6ddc
	djnz l6ddah		;6ddd
	ret			;6ddf
	ld h,b			;6de0
	nop			;6de1
	add a,b			;6de2
	ld (bc),a		;6de3
	and b			;6de4
	nop			;6de5
	halt			;6de6
	nop			;6de7
	ld c,000h		;6de8
	djnz l6dech		;6dea
l6dech:
	nop			;6dec
	nop			;6ded
	ret nc			;6dee
	ld l,(hl)		;6def
	nop			;6df0
	add a,b			;6df1
	ld (bc),a		;6df2
	sub (hl)		;6df3
	nop			;6df4
	ld h,(hl)		;6df5
	nop			;6df6
	ex af,af'		;6df7
	nop			;6df8
	inc d			;6df9
	nop			;6dfa
	nop			;6dfb
	nop			;6dfc
	ret nc			;6dfd
	halt			;6dfe
	nop			;6dff
	add a,b			;6e00
l6e01h:
	ld (bc),a		;6e01
	sub (hl)		;6e02
	nop			;6e03
	adc a,b			;6e04
	nop			;6e05
	ex af,af'		;6e06
	nop			;6e07
	ld (de),a		;6e08
	nop			;6e09
	nop			;6e0a
	nop			;6e0b
	ret nc			;6e0c
	sub d			;6e0d
	nop			;6e0e
	ld d,b			;6e0f
	nop			;6e10
	sub d			;6e11
	nop			;6e12
	ld (hl),b		;6e13
	nop			;6e14
	ld b,000h		;6e15
	inc e			;6e17
	nop			;6e18
	nop			;6e19
	nop			;6e1a
	ret nc			;6e1b
	ld a,(0f3e1h)		;6e1c
	and 020h		;6e1f
	jp z,l6024h		;6e21
	ld a,001h		;6e24
	ld (l5fe5h),a		;6e26
	ld (l5ff4h),a		;6e29
	ld (l6003h),a		;6e2c
	ld (l6012h),a		;6e2f
	ld hl,0600bh		;6e32
	call 0048bh		;6e35
	ld hl,l5fdeh		;6e38
	call 0048bh		;6e3b
	ld hl,l5fedh		;6e3e
	call 0048bh		;6e41
	ld hl,l5ffch		;6e44
	call 0048bh		;6e47
	ld a,005h		;6e4a
	call 0050fh		;6e4c
	ld a,001h		;6e4f
	ld (0c106h),a		;6e51
	ld a,0feh		;6e54
	ld (0c108h),a		;6e56
	ld (0c3a3h),a		;6e59
	ld a,008h		;6e5c
	ld (0c107h),a		;6e5e
	ld (0c3a2h),a		;6e61
	ld a,001h		;6e64
	ld (0c396h),a		;6e66
	ld a,098h		;6e69
	ld (l7d39h),a		;6e6b
	ld a,066h		;6e6e
l6e70h:
	ld (l7d38h),a		;6e70
	ld hl,l7d37h		;6e73
	ld de,0c280h		;6e76
	ld bc,00010h		;6e79
	ldir			;6e7c
	ld hl,0c248h		;6e7e
	ld de,00004h		;6e81
	ld a,(l6736h)		;6e84
	call sub_60d5h		;6e87
	ld a,(l673bh)		;6e8a
	call sub_60d5h		;6e8d
	ld a,(l6740h)		;6e90
	call sub_60d5h		;6e93
	ld a,(l6745h)		;6e96
	call sub_60d5h		;6e99
	ld a,(l674ah)		;6e9c
	call sub_60d5h		;6e9f
	ld a,(l674fh)		;6ea2
	call sub_60d5h		;6ea5
	ld a,(l6754h)		;6ea8
	call sub_60d5h		;6eab
	ld a,(l6754h)		;6eae
	call sub_60d5h		;6eb1
	ld a,(l6754h)		;6eb4
	call sub_60d5h		;6eb7
	ld a,(l6754h)		;6eba
	call sub_60d5h		;6ebd
	ld a,(l6754h)		;6ec0
	call sub_60d5h		;6ec3
	ld a,(l6754h)		;6ec6
	call sub_60d5h		;6ec9
	ld a,002h		;6ecc
	ld (l5e61h),a		;6ece
	xor a			;6ed1
	ld (l60d4h),a		;6ed2
	ret			;6ed5
	nop			;6ed6
	or a			;6ed7
	push hl			;6ed8
	push de			;6ed9
	call nz,sub_60dfh	;6eda
	pop de			;6edd
	pop hl			;6ede
	add hl,de		;6edf
	ret			;6ee0
	ld a,(hl)		;6ee1
	sub 008h		;6ee2
	ld c,a			;6ee4
	inc hl			;6ee5
	ld a,(hl)		;6ee6
	sub 028h		;6ee7
	ld (l7d39h),a		;6ee9
	ld e,0c0h		;6eec
	jp sub_568eh		;6eee
	call 073d3h		;6ef1
	ld a,(l5e58h)		;6ef4
	inc a			;6ef7
	ld (l5e58h),a		;6ef8
	ld d,000h		;6efb
	ld e,a			;6efd
	ld hl,l5e62h		;6efe
	add hl,de		;6f01
	ld a,(hl)		;6f02
	cp 002h			;6f03
	jp z,l610ah		;6f05
	ld (0c1f5h),a		;6f08
	ret			;6f0b
	xor a			;6f0c
	ld (l5e56h),a		;6f0d
	ld a,001h		;6f10
	ld (l5e57h),a		;6f12
	ret			;6f15
	nop			;6f16
	ld a,(l6114h)		;6f17
	inc a			;6f1a
	and 003h		;6f1b
	ld (l6114h),a		;6f1d
	jp z,l6123h		;6f20
	ld a,001h		;6f23
	ld (0c1f5h),a		;6f25
	ld a,(0c1f1h)		;6f28
	or a			;6f2b
	ret nz			;6f2c
	xor a			;6f2d
	ld (l5e57h),a		;6f2e
	ld a,001h		;6f31
	ld (l5e5ah),a		;6f33
	ld a,038h		;6f36
	ld (l619bh),a		;6f38
	ld a,018h		;6f3b
	ld (l619fh),a		;6f3d
	ld a,088h		;6f40
	ld (l61eeh),a		;6f42
	ld a,0e8h		;6f45
	ld (l61f2h),a		;6f47
	ld a,048h		;6f4a
	ld (l61fdh),a		;6f4c
	ld a,0e8h		;6f4f
	ld (l6201h),a		;6f51
	ld a,01fh		;6f54
	ld (0f3e1h),a		;6f56
	ret			;6f59
	ld hl,(0057ch)		;6f5a
	ld (hl),002h		;6f5d
	ld hl,(00588h)		;6f5f
	ld (hl),000h		;6f62
	ld hl,(0058eh)		;6f64
	ld (hl),000h		;6f67
	ld hl,(00594h)		;6f69
	ld (hl),000h		;6f6c
	call sub_6172h		;6f6e
	jp l61aah		;6f71
	ld hl,l619bh		;6f74
	call 0048bh		;6f77
	ld a,(l619fh)		;6f7a
	dec a			;6f7d
	jp z,l618ah		;6f7e
	ld (l619fh),a		;6f81
	ld a,(l619bh)		;6f84
	dec a			;6f87
	ld (l619bh),a		;6f88
	ret			;6f8b
	xor a			;6f8c
	ld (l5e5ah),a		;6f8d
	ld a,001h		;6f90
	ld (l5e5bh),a		;6f92
	xor a			;6f95
	ld (l622fh),a		;6f96
	ld (l6233h),a		;6f99
	ret			;6f9c
	jr c,l6f9fh		;6f9d
l6f9fh:
	nop			;6f9f
	nop			;6fa0
	jr l6fa3h		;6fa1
l6fa3h:
	nop			;6fa3
	nop			;6fa4
	ld bc,00000h		;6fa5
	ld bc,00000h		;6fa8
	sub b			;6fab
	ld a,000h		;6fac
	ld (l61f4h),a		;6fae
	ld hl,l61eeh		;6fb1
	call 0048bh		;6fb4
	ld a,0a0h		;6fb7
	ld (l61f4h),a		;6fb9
	ld hl,l61eeh		;6fbc
	call 0048bh		;6fbf
	ld a,0e0h		;6fc2
	ld (l61f4h),a		;6fc4
	ld hl,l61eeh		;6fc7
	call 0048bh		;6fca
	ld hl,l61fdh		;6fcd
	call 0048bh		;6fd0
	ld a,(l6201h)		;6fd3
	inc a			;6fd6
	ld (l6201h),a		;6fd7
	ld a,(l61fdh)		;6fda
	inc a			;6fdd
	ld (l61fdh),a		;6fde
	ld a,(l61f2h)		;6fe1
	inc a			;6fe4
	ld (l61f2h),a		;6fe5
	ld a,(l61eeh)		;6fe8
	inc a			;6feb
	ld (l61eeh),a		;6fec
	ret			;6fef
	adc a,b			;6ff0
	nop			;6ff1
	add a,b			;6ff2
	inc bc			;6ff3
	ret pe			;6ff4
	nop			;6ff5
	nop			;6ff6
	nop			;6ff7
	ld bc,l4000h		;6ff8
	nop			;6ffb
	nop			;6ffc
	nop			;6ffd
	sub b			;6ffe
	ld c,b			;6fff
	nop			;7000
	ld h,b			;7001
	ld (bc),a		;7002
	ret pe			;7003
	nop			;7004
	ld b,b			;7005
	nop			;7006
	ld bc,l6000h		;7007
	nop			;700a
	nop			;700b
	nop			;700c
	sub b			;700d
	ld hl,l622dh		;700e
	call 0048bh		;7011
	ld a,(l622fh)		;7014
	add a,010h		;7017
	ld (l622fh),a		;7019
	ld a,(l6233h)		;701c
	add a,010h		;701f
	ld (l6233h),a		;7021
	ret nz			;7024
	xor a			;7025
	ld (l5e5bh),a		;7026
	ld a,001h		;7029
	ld (l5e5dh),a		;702b
	ret			;702e
	nop			;702f
	nop			;7030
	nop			;7031
	nop			;7032
	nop			;7033
	nop			;7034
	nop			;7035
	ld bc,00100h		;7036
	djnz l703bh		;7039
l703bh:
	nop			;703b
	nop			;703c
	ret nc			;703d
	nop			;703e
	nop			;703f
	nop			;7040
	nop			;7041
	nop			;7042
	nop			;7043
	nop			;7044
	cp 000h			;7045
	cp 0feh			;7047
	cp 000h			;7049
	cp 0feh			;704b
	cp 000h			;704d
	cp 000h			;704f
	cp 000h			;7051
	cp 000h			;7053
	cp 000h			;7055
	nop			;7057
	nop			;7058
	cp 000h			;7059
	nop			;705b
	nop			;705c
	cp 000h			;705d
	nop			;705f
	nop			;7060
	nop			;7061
	nop			;7062
	nop			;7063
	nop			;7064
	ld (bc),a		;7065
	nop			;7066
	nop			;7067
	nop			;7068
	nop			;7069
	nop			;706a
	nop			;706b
	nop			;706c
	ld (bc),a		;706d
	nop			;706e
	nop			;706f
	nop			;7070
	ld (bc),a		;7071
	nop			;7072
	nop			;7073
	nop			;7074
	ld (bc),a		;7075
	nop			;7076
	ld (bc),a		;7077
	nop			;7078
	ld (bc),a		;7079
	nop			;707a
	ld (bc),a		;707b
	nop			;707c
	ld (bc),a		;707d
	nop			;707e
	ld (bc),a		;707f
	ld (bc),a		;7080
	ld (bc),a		;7081
	nop			;7082
	ld (bc),a		;7083
	ld (bc),a		;7084
	ld a,(l6240h)		;7085
	and 007h		;7088
	ret nz			;708a
	ld a,(l623dh)		;708b
	or a			;708e
	call z,sub_6298h	;708f
	ld a,(l623eh)		;7092
	or a			;7095
	call z,sub_62f3h	;7096
	ret			;7099
	ld a,(l623eh)		;709a
	or a			;709d
	jp z,l62a5h		;709e
	ld a,(l64a0h)		;70a1
	cp 06eh			;70a4
	ret nc			;70a6
	ld a,(l5e5eh)		;70a7
	or a			;70aa
	ret z			;70ab
	ld a,(l66b3h)		;70ac
	cp 0ffh			;70af
	jp z,l62bch		;70b1
	ld a,001h		;70b4
	ld (l64bbh),a		;70b6
	xor a			;70b9
	ld (l64bah),a		;70ba
	ret			;70bd
	ld a,(l623ch)		;70be
	or a			;70c1
	ret nz			;70c2
	ld a,002h		;70c3
	ld (l64bbh),a		;70c5
	xor a			;70c8
	ld (l64bah),a		;70c9
	ld a,001h		;70cc
	ld (0c106h),a		;70ce
	ld a,002h		;70d1
	ld (0c108h),a		;70d3
	ld a,015h		;70d6
	ld (0c107h),a		;70d8
	ld a,001h		;70db
	ld (l623dh),a		;70dd
	ld a,090h		;70e0
	ld (l6482h),a		;70e2
	ld a,06eh		;70e5
	ld (l6484h),a		;70e7
	ld a,r			;70ea
	and 007h		;70ec
	add a,a			;70ee
	add a,a			;70ef
	add a,a			;70f0
	ld (l6241h),a		;70f1
	ret			;70f4
	ld a,(l623dh)		;70f5
	or a			;70f8
	jp z,sub_6300h		;70f9
	ld a,(l6482h)		;70fc
	cp 06eh			;70ff
	ret nc			;7101
	ld a,(l5e5eh)		;7102
	or a			;7105
	ret z			;7106
	ld a,(l66b3h)		;7107
	cp 0ffh			;710a
	jp z,l6317h		;710c
	ld a,001h		;710f
	ld (l64bbh),a		;7111
	xor a			;7114
	ld (l64bah),a		;7115
	ret			;7118
	ld a,(l623ch)		;7119
	or a			;711c
	ret nz			;711d
	ld a,(l623ch)		;711e
	or a			;7121
	ret nz			;7122
	ld a,002h		;7123
	ld (l64bbh),a		;7125
	xor a			;7128
	ld (l64bah),a		;7129
	ld a,001h		;712c
	ld (0c106h),a		;712e
	ld a,002h		;7131
	ld (0c108h),a		;7133
	ld a,015h		;7136
	ld (0c107h),a		;7138
	ld a,001h		;713b
	ld (l623eh),a		;713d
	ld a,090h		;7140
	ld (l64a0h),a		;7142
	ld a,06eh		;7145
	ld (l64a2h),a		;7147
	ld a,r			;714a
	and 007h		;714c
	add a,a			;714e
	add a,a			;714f
	add a,a			;7150
	ld (l6241h+1),a		;7151
	ret			;7154
	ld a,(l5e61h)		;7155
	or a			;7158
	ret nz			;7159
	ld a,(l623ch)		;715a
	or a			;715d
	jp z,l6385h		;715e
	ld a,(0f3e1h)		;7161
	and 020h		;7164
	ld a,001h		;7166
	jp z,l636bh		;7168
	ld a,000h		;716b
	ld (l6494h),a		;716d
	ld (l64b2h),a		;7170
	ld a,(l623dh)		;7173
	or a			;7176
	ld hl,l648dh		;7177
	call nz,0048bh		;717a
	ld a,(l6491h)		;717d
	or a			;7180
	ret nz			;7181
	xor a			;7182
	ld (l623dh),a		;7183
	ret			;7186
	ld a,(0f3e1h)		;7187
	and 020h		;718a
	ld a,001h		;718c
	jp z,l6391h		;718e
	ld a,000h		;7191
	ld (l6485h),a		;7193
	ld (l64a3h),a		;7196
	ld a,(l623fh)		;7199
	inc a			;719c
	and 007h		;719d
	ld (l623fh),a		;719f
	ld b,a			;71a2
	ld a,(l623dh)		;71a3
	or a			;71a6
	ret z			;71a7
	ld a,(l6241h)		;71a8
	add a,b			;71ab
	ld d,000h		;71ac
	ld e,a			;71ae
	ld hl,l6241h+2		;71af
	add hl,de		;71b2
	ld b,(hl)		;71b3
	ld a,(0c39ch)		;71b4
	or a			;71b7
	jp nz,l63ddh		;71b8
	ld a,(l6484h)		;71bb
	ld (l6493h),a		;71be
	add a,020h		;71c1
	ld (l648fh),a		;71c3
	ld a,(l6484h)		;71c6
	add a,b			;71c9
	ld (l6484h),a		;71ca
	ld a,(l6482h)		;71cd
	ld (l648dh),a		;71d0
	ld (l6491h),a		;71d3
	sub 002h		;71d6
	ld (l6482h),a		;71d8
	ret c			;71db
	cp 006h			;71dc
	ret c			;71de
	ld hl,l647eh		;71df
	jp 0048bh		;71e2
	ld a,(l5e61h)		;71e5
	or a			;71e8
	ret nz			;71e9
	ld a,(l623ch)		;71ea
	or a			;71ed
	jp z,06408h		;71ee
	ld a,(l623eh)		;71f1
l71f4h:
	or a			;71f4
	ld hl,l64abh		;71f5
	call nz,0048bh		;71f8
	ld a,000h		;71fb
	ld (l623ch),a		;71fd
	ld a,(l64afh)		;7200
	or a			;7203
	ret nz			;7204
	xor a			;7205
	ld (l623eh),a		;7206
	ret			;7209
	ld a,(l623eh)		;720a
	or a			;720d
	jp z,l6454h		;720e
	ld a,(l623fh)		;7211
	ld b,a			;7214
	ld a,(l6241h+1)		;7215
	add a,b			;7218
	ld d,000h		;7219
	ld e,a			;721b
	ld hl,l6241h+2		;721c
	add hl,de		;721f
	ld b,(hl)		;7220
	ld a,(0c39ch)		;7221
	or a			;7224
	jp nz,l644eh		;7225
	ld a,(l64a2h)		;7228
	ld (l64b1h),a		;722b
	add a,020h		;722e
	ld (l64adh),a		;7230
	ld a,(l64a2h)		;7233
	add a,b			;7236
	ld (l64a2h),a		;7237
	ld a,(l64a0h)		;723a
	ld (l64abh),a		;723d
	ld (l64afh),a		;7240
	sub 002h		;7243
	ld (l64a0h),a		;7245
	jp c,l6454h		;7248
	cp 006h			;724b
	jp c,l6454h		;724d
	ld hl,l649ch		;7250
	call 0048bh		;7253
	ld a,(0f3e1h)		;7256
	xor 020h		;7259
	ld (0f3e1h),a		;725b
	ld a,001h		;725e
	ld (l623ch),a		;7260
	ld a,(l647dh)		;7263
	xor 001h		;7266
	ld (l647dh),a		;7268
	ret z			;726b
	ld a,(l6480h)		;726c
	cp 020h			;726f
	ld a,03ah		;7271
	jp z,l6476h		;7273
	ld a,020h		;7276
	ld (l6480h),a		;7278
	ld (l649eh),a		;727b
	ret			;727e
sub_727fh:
	nop			;727f
	ld a,c			;7280
	nop			;7281
	jr nz,l7286h		;7282
	nop			;7284
l7285h:
	nop			;7285
l7286h:
	nop			;7286
	nop			;7287
	ld a,(de)		;7288
	nop			;7289
	ld a,(de)		;728a
	nop			;728b
	nop			;728c
	inc b			;728d
	sbc a,b			;728e
	nop			;728f
	nop			;7290
	nop			;7291
	nop			;7292
	nop			;7293
	nop			;7294
	nop			;7295
	nop			;7296
	ld a,(de)		;7297
	nop			;7298
	ld a,(de)		;7299
	nop			;729a
	nop			;729b
	inc b			;729c
	ret nc			;729d
	ld a,c			;729e
	nop			;729f
	jr nz,l72a4h		;72a0
	nop			;72a2
	nop			;72a3
l72a4h:
	nop			;72a4
	nop			;72a5
	ld a,(de)		;72a6
	nop			;72a7
	ld a,(de)		;72a8
	nop			;72a9
l72aah:
	nop			;72aa
l72abh:
	inc b			;72ab
l72ach:
	sbc a,b			;72ac
	nop			;72ad
	nop			;72ae
	nop			;72af
	nop			;72b0
	nop			;72b1
	nop			;72b2
	nop			;72b3
	nop			;72b4
	ld a,(de)		;72b5
	nop			;72b6
	ld a,(de)		;72b7
	nop			;72b8
	nop			;72b9
	inc b			;72ba
	ret nc			;72bb
	nop			;72bc
	nop			;72bd
	nop			;72be
	ld a,(l64bbh)		;72bf
	dec a			;72c2
	jp z,l64f7h		;72c3
	dec a			;72c6
	jp z,l64cdh		;72c7
	dec a			;72ca
	jp z,l6530h		;72cb
	ret			;72ce
	ld hl,l6569h		;72cf
	call 0048bh		;72d2
	ld a,(l6570h)		;72d5
	xor 001h		;72d8
	ld (l6570h),a		;72da
	ld a,(l64bah)		;72dd
	inc a			;72e0
	and 003h		;72e1
	ld (l64bah),a		;72e3
	ret nz			;72e6
	ld a,(l64bbh)		;72e7
	ld b,a			;72ea
	ld a,(l64bch)		;72eb
	cp b			;72ee
	ret z			;72ef
	ld a,b			;72f0
	ld (l64bch),a		;72f1
	xor a			;72f4
	ld (l64bbh),a		;72f5
	ret			;72f8
	ld hl,06578h		;72f9
	call 0048bh		;72fc
	ld a,(l657fh)		;72ff
	xor 001h		;7302
	ld (l657fh),a		;7304
	ld a,(l64bah)		;7307
	inc a			;730a
	and 003h		;730b
	ld (l64bah),a		;730d
	ret nz			;7310
	ld a,(l64bbh)		;7311
	ld b,a			;7314
	ld a,(l64bch)		;7315
	cp b			;7318
	ret z			;7319
	ld a,b			;731a
	ld (l64bch),a		;731b
	ld a,001h		;731e
	ld (0c106h),a		;7320
	ld a,002h		;7323
	ld (0c108h),a		;7325
	ld a,009h		;7328
	ld (0c107h),a		;732a
	xor a			;732d
	ld (l64bbh),a		;732e
	ret			;7331
	ld hl,l6587h		;7332
	call 0048bh		;7335
	ld a,(l658eh)		;7338
	xor 001h		;733b
	ld (l658eh),a		;733d
	ld a,(l64bah)		;7340
	inc a			;7343
	and 003h		;7344
	ld (l64bah),a		;7346
	ret nz			;7349
	ld a,(l64bbh)		;734a
	ld b,a			;734d
	ld a,(l64bch)		;734e
	cp b			;7351
	ret z			;7352
	ld a,b			;7353
	ld (l64bch),a		;7354
l7357h:
	ld a,001h		;7357
	ld (0c106h),a		;7359
	ld a,002h		;735c
	ld (0c108h),a		;735e
l7361h:
	ld a,009h		;7361
	ld (0c107h),a		;7363
	xor a			;7366
	ld (l64bbh),a		;7367
	ret			;736a
	ld l,(hl)		;736b
	nop			;736c
	ld d,(hl)		;736d
	ld (bc),a		;736e
	sub d			;736f
	nop			;7370
	ld l,d			;7371
	nop			;7372
	ld c,000h		;7373
	ld hl,(00000h)		;7375
	nop			;7378
	ret nc			;7379
	ld h,b			;737a
	nop			;737b
	ld d,(hl)		;737c
	ld (bc),a		;737d
	sub d			;737e
	nop			;737f
	ld l,d			;7380
l7381h:
	nop			;7381
	ld c,000h		;7382
	ld hl,(00000h)		;7384
	nop			;7387
	ret nc			;7388
	ld d,d			;7389
	nop			;738a
	ld hl,(09202h)		;738b
	nop			;738e
	ld l,d			;738f
	nop			;7390
	ld c,000h		;7391
	ld hl,(00000h)		;7393
	nop			;7396
	ret nc			;7397
	nop			;7398
	ld a,(l6596h)		;7399
	or a			;739c
	jp nz,l65d9h		;739d
	ld a,(0c157h)		;73a0
	cp 005h			;73a3
	ret c			;73a5
	ld a,r			;73a6
	and 00fh		;73a8
	jp z,l65ach		;73aa
	ret			;73ad
	ld a,(l5e5eh)		;73ae
	or a			;73b1
	ret nz			;73b2
	ld a,(l6596h)		;73b3
	or a			;73b6
	ret nz			;73b7
	ld a,(0c283h)		;73b8
	cp 08bh			;73bb
	ret nz			;73bd
	ld a,001h		;73be
	ld (l6596h),a		;73c0
	ld a,030h		;73c3
	ld (05564h),a		;73c5
	ld a,0b7h		;73c8
	ld (0c282h),a		;73ca
	ld a,01ch		;73cd
	ld (0c284h),a		;73cf
	ld a,015h		;73d2
	ld (0c280h),a		;73d4
	ret			;73d7
	nop			;73d8
	ex af,af'		;73d9
	nop			;73da
	ld a,(l65d6h)		;73db
	add a,004h		;73de
	ld (l65d6h),a		;73e0
	jp nz,l6600h		;73e3
	ld a,(l65d7h)		;73e6
	dec a			;73e9
	ld (l65d7h),a		;73ea
	jp nz,l6600h		;73ed
l73f0h:
	ld a,(0c283h)		;73f0
	cp 08bh			;73f3
	ret nz			;73f5
	xor a			;73f6
	ld (l6596h),a		;73f7
	ld a,008h		;73fa
l73fch:
	ld (l65d7h),a		;73fc
	jp l6645h		;73ff
	ld a,(l65d7h)		;7402
	cp 001h			;7405
	ret z			;7407
	cp 000h			;7408
	jp z,l65eeh		;740a
	ld a,(l65d8h)		;740d
	inc a			;7410
	and 003h		;7411
	ld (l65d8h),a		;7413
l7416h:
	ret nz			;7416
	ld a,r			;7417
	add a,a			;7419
	cp 050h			;741a
	jp c,l662bh		;741c
	cp 096h			;741f
	jp nc,l662bh		;7421
	and 002h		;7424
	ld a,050h		;7426
	jp z,l662bh		;7428
	ld a,096h		;742b
	ld c,a			;742d
	ld e,0b0h		;742e
	jp sub_568eh		;7430
	ld a,(l6596h)		;7433
	or a			;7436
	ret nz			;7437
	ld a,(l5e5eh)		;7438
	or a			;743b
	call nz,sub_6772h	;743c
	ld a,r			;743f
l7441h:
	and 00fh		;7441
	jp z,l6645h		;7443
	ret			;7446
	ld a,(l5e5eh)		;7447
	or a			;744a
	ret nz			;744b
	ld a,(0c283h)		;744c
sub_744fh:
	cp 08bh			;744f
	ret nz			;7451
	ld a,0feh		;7452
sub_7454h:
	ld (l6790h),a		;7454
	ld a,0ffh		;7457
	ld (l66b3h),a		;7459
	ld a,001h		;745c
	ld (l5e5eh),a		;745e
	ld a,010h		;7461
	ld (05564h),a		;7463
	ld a,097h		;7466
	ld (0c282h),a		;7468
	ld a,018h		;746b
	ld (0c284h),a		;746d
	ld a,015h		;7470
	ld (0c280h),a		;7472
	ld a,001h		;7475
	ld (l64bbh),a		;7477
	xor a			;747a
	ld (l64bah),a		;747b
	ld hl,l68c3h		;747e
	ld (0c19ah),hl		;7481
	ld de,00620h		;7484
	ld hl,l7520h		;7487
	call 00533h		;748a
	ld a,098h		;748d
	ld (0c24ah),a		;748f
	ld (0c24eh),a		;7492
	ld (0c252h),a		;7495
	ld (0c256h),a		;7498
	ld (0c25ah),a		;749b
	ld (0c25eh),a		;749e
	ld (0c262h),a		;74a1
l74a4h:
	ld (0c266h),a		;74a4
	ld (0c26ah),a		;74a7
	ld (0c26eh),a		;74aa
	ld (0c272h),a		;74ad
	ld (0c276h),a		;74b0
	ret			;74b3
	nop			;74b4
l74b5h:
	nop			;74b5
	nop			;74b6
	nop			;74b7
	rst 38h			;74b8
	rst 38h			;74b9
	rst 38h			;74ba
	cp 0ffh			;74bb
	rst 38h			;74bd
	rst 38h			;74be
	rst 38h			;74bf
l74c0h:
	rst 38h			;74c0
	rst 38h			;74c1
	rst 38h			;74c2
	nop			;74c3
	rst 38h			;74c4
	rst 38h			;74c5
l74c6h:
	rst 38h			;74c6
	rst 38h			;74c7
	rst 38h			;74c8
	nop			;74c9
	rst 38h			;74ca
	nop			;74cb
	rst 38h			;74cc
	nop			;74cd
	rst 38h			;74ce
	nop			;74cf
	rst 38h			;74d0
	nop			;74d1
	nop			;74d2
	nop			;74d3
	nop			;74d4
	nop			;74d5
	nop			;74d6
	nop			;74d7
	ld bc,00000h		;74d8
	nop			;74db
	nop			;74dc
	nop			;74dd
	nop			;74de
	nop			;74df
	ld bc,00100h		;74e0
	nop			;74e3
	ld bc,00100h		;74e4
	nop			;74e7
	ld bc,00101h		;74e8
	nop			;74eb
	ld bc,00101h		;74ec
	ld bc,00101h		;74ef
	ld bc,00102h		;74f2
	ld bc,00101h		;74f5
	cp 0feh			;74f8
l74fah:
	cp 0feh			;74fa
	cp 0feh			;74fc
	cp 0feh			;74fe
	cp 0feh			;7500
l7502h:
	cp 000h			;7502
	cp 0feh			;7504
	cp 0feh			;7506
	cp 000h			;7508
	cp 000h			;750a
	cp 000h			;750c
	cp 000h			;750e
	cp 000h			;7510
	nop			;7512
	cp 000h			;7513
l7515h:
	nop			;7515
	nop			;7516
	nop			;7517
	ld (bc),a		;7518
	nop			;7519
	nop			;751a
	ld (bc),a		;751b
	nop			;751c
	nop			;751d
	nop			;751e
	nop			;751f
l7520h:
	ld (bc),a		;7520
	nop			;7521
	ld (bc),a		;7522
	nop			;7523
	ld (bc),a		;7524
	nop			;7525
	ld (bc),a		;7526
	nop			;7527
	ld (bc),a		;7528
	ld (bc),a		;7529
	ld (bc),a		;752a
	nop			;752b
	ld (bc),a		;752c
	ld (bc),a		;752d
	ld (bc),a		;752e
	ld (bc),a		;752f
	ld (bc),a		;7530
	ld (bc),a		;7531
	ld (bc),a		;7532
	ld (bc),a		;7533
	ld (bc),a		;7534
	ld (bc),a		;7535
	ld (bc),a		;7536
	ld (bc),a		;7537
	nop			;7538
	ei			;7539
	nop			;753a
	nop			;753b
	ld a,h			;753c
	nop			;753d
	call m,00800h		;753e
	ld a,h			;7541
	nop			;7542
	defb 0fdh,000h,010h ;illegal sequence	;7543
	ld a,h			;7546
	nop			;7547
	call m,01800h		;7548
	ld a,h			;754b
	nop			;754c
	call m,02000h		;754d
	ld a,h			;7550
	nop			;7551
	call m,02800h		;7552
l7555h:
	ld a,h			;7555
l7556h:
	nop			;7556
	call m,03000h		;7557
	ld a,h			;755a
	nop			;755b
	call m,03800h		;755c
	ld a,h			;755f
	nop			;7560
	call m,02800h		;7561
	ld a,h			;7564
	nop			;7565
	call m,02000h		;7566
	ld a,h			;7569
	nop			;756a
	call m,01800h		;756b
	ld a,h			;756e
	nop			;756f
	call m,01000h		;7570
	ld a,h			;7573
	ld a,r			;7574
	and 007h		;7576
	jp nz,0679ah		;7578
	ld hl,l6736h		;757b
	ld de,00005h		;757e
	ld b,00ch		;7581
l7583h:
	ld a,(hl)		;7583
	or a			;7584
	jp z,l678ch		;7585
	add hl,de		;7588
	djnz l7583h		;7589
	jp 0679ah		;758b
	ld (hl),001h		;758e
	inc hl			;7590
	ld (hl),0fah		;7591
	inc hl			;7593
	ld (hl),0b6h		;7594
	inc hl			;7596
	ld (hl),000h		;7597
	inc hl			;7599
	ld (hl),07ch		;759a
	ld a,r			;759c
	and 00fh		;759e
	add a,a			;75a0
	add a,a			;75a1
	add a,a			;75a2
	ld (l6796h),a		;75a3
l75a6h:
	ld a,(l66b3h+2)		;75a6
	inc a			;75a9
	and 007h		;75aa
	ld (l66b3h+2),a		;75ac
	ld a,(066b2h)		;75af
	inc a			;75b2
	and 01fh		;75b3
	ld (066b2h),a		;75b5
	jp nz,067e8h		;75b8
	ld a,(l66b3h)		;75bb
	cp 0ffh			;75be
	ld b,0ffh		;75c0
	jp z,l67c5h		;75c2
	ld b,001h		;75c5
	ld a,(l6790h)		;75c7
	add a,b			;75ca
	ld (l6790h),a		;75cb
	cp 002h			;75ce
l75d0h:
	jp nz,067deh		;75d0
	xor a			;75d3
	ld (l5e5eh),a		;75d4
	ld a,003h		;75d7
	ld (l64bbh),a		;75d9
	xor a			;75dc
	ld (l64bah),a		;75dd
l75e0h:
	cp 0fah			;75e0
l75e2h:
	jp nz,067e8h		;75e2
l75e5h:
	ld a,001h		;75e5
	ld (l66b3h),a		;75e7
	ld a,(l66b3h+1)		;75ea
	inc a			;75ed
	and 007h		;75ee
l75f0h:
	ld (l66b3h+1),a		;75f0
	jp nz,l67ffh+1		;75f3
	ld hl,l6737h		;75f6
	ld de,00005h		;75f9
	ld b,00ch		;75fc
l75feh:
	inc (hl)		;75fe
	add hl,de		;75ff
	djnz l75feh		;7600
	call sub_685bh		;7602
	call sub_6827h		;7605
	ld a,(0fff6h)		;7608
	ld c,a			;760b
	ld de,l673ah		;760c
	ld hl,0c248h		;760f
	ld b,00ch		;7612
l7614h:
	ld a,(de)		;7614
	sub c			;7615
	ld (hl),a		;7616
	dec de			;7617
	dec de			;7618
	inc hl			;7619
	ld a,(de)		;761a
	ld (hl),a		;761b
	inc hl			;761c
	inc hl			;761d
	inc hl			;761e
	inc de			;761f
	inc de			;7620
	inc de			;7621
	inc de			;7622
	inc de			;7623
	inc de			;7624
	inc de			;7625
	djnz l7614h		;7626
	ret			;7628
	ld a,(0c200h)		;7629
	add a,00ch		;762c
	ld e,a			;762e
	ld a,(0c201h)		;762f
	add a,02dh		;7632
	ld c,a			;7634
	ld hl,0c275h		;7635
	ld b,00ch		;7638
l763ah:
	ld a,(hl)		;763a
	dec hl			;763b
	cp c			;763c
	jp nc,l6855h		;763d
	add a,010h		;7640
	cp c			;7642
	jp c,l6855h		;7643
	ld a,(hl)		;7646
	cp e			;7647
	jp nc,l6855h		;7648
	add a,006h		;764b
	cp e			;764d
	jp c,l6855h		;764e
	ld a,048h		;7651
	ld (0c3cfh),a		;7653
	ret			;7656
	dec hl			;7657
	dec hl			;7658
	dec hl			;7659
	djnz l763ah		;765a
	ret			;765c
	ld a,(0fff6h)		;765d
	cp 050h			;7660
	ld a,004h		;7662
	jp c,l6867h		;7664
	ld a,0ech		;7667
	ld (l68a2h),a		;7669
	inc a			;766c
	ld (l68a7h),a		;766d
	ld hl,l6736h		;7670
	ld de,00005h		;7673
	ld b,00ch		;7676
l7678h:
	ld a,(hl)		;7678
	or a			;7679
	jp z,l68bfh		;767a
sub_767dh:
	inc hl			;767d
	ld a,(hl)		;767e
	inc hl			;767f
	add a,(hl)		;7680
	ld (hl),a		;7681
	cp 0b7h			;7682
	jp c,l688dh		;7684
	dec hl			;7687
	dec hl			;7688
	ld (hl),000h		;7689
l768bh:
	inc hl			;768b
	inc hl			;768c
	ld (hl),000h		;768d
	inc hl			;768f
	ld a,(hl)		;7690
	exx			;7691
	ld d,000h		;7692
	ld e,a			;7694
	ld hl,l66b6h		;7695
	add hl,de		;7698
	ld a,(l66b3h+2)		;7699
	ld e,a			;769c
	add hl,de		;769d
	ld a,(hl)		;769e
	exx			;769f
	inc hl			;76a0
	add a,(hl)		;76a1
	ld (hl),a		;76a2
	cp 0f1h			;76a3
	jp z,l68afh		;76a5
	cp 0f0h			;76a8
	jp z,l68afh		;76aa
	inc hl			;76ad
	djnz l7678h		;76ae
	ret			;76b0
	dec hl			;76b1
	dec hl			;76b2
	dec hl			;76b3
	dec hl			;76b4
	ld (hl),000h		;76b5
	inc hl			;76b7
	inc hl			;76b8
	ld (hl),000h		;76b9
	inc hl			;76bb
	inc hl			;76bc
	inc hl			;76bd
l76beh:
	djnz l7678h		;76be
	ret			;76c0
	add hl,de		;76c1
	djnz l7678h		;76c2
	ret			;76c4
	adc a,d			;76c5
	adc a,e			;76c6
	adc a,d			;76c7
	nop			;76c8
	nop			;76c9
	nop			;76ca
	nop			;76cb
	nop			;76cc
	nop			;76cd
	nop			;76ce
	nop			;76cf
	nop			;76d0
	nop			;76d1
l76d2h:
	nop			;76d2
	nop			;76d3
	nop			;76d4
	adc a,a			;76d5
	adc a,e			;76d6
	adc a,a			;76d7
	nop			;76d8
	nop			;76d9
	nop			;76da
	nop			;76db
	nop			;76dc
	nop			;76dd
	nop			;76de
	nop			;76df
	nop			;76e0
	nop			;76e1
	nop			;76e2
	nop			;76e3
	nop			;76e4
	nop			;76e5
	nop			;76e6
	nop			;76e7
l76e8h:
	ld hl,06a3ah		;76e8
	ld de,0018eh		;76eb
	ld bc,0000ah		;76ee
	ldir			;76f1
	ld a,(0c157h)		;76f3
	cp 004h			;76f6
	jp c,l690dh		;76f8
	ld a,(l68e3h)		;76fb
	dec a			;76fe
	jp z,l6921h		;76ff
l7702h:
	dec a			;7702
	jp z,l6945h		;7703
	dec a			;7706
	jp z,l6970h		;7707
	dec a			;770a
	jp z,06987h		;770b
	ret			;770e
	ld a,(l68e3h)		;770f
	dec a			;7712
	jp z,l6921h		;7713
	dec a			;7716
	jp z,06987h		;7717
	dec a			;771a
	jp z,l6970h		;771b
	dec a			;771e
	jp z,06987h		;771f
	ret			;7722
	ld de,069dah		;7723
	ld hl,069d4h		;7726
	call 069f2h		;7729
	ld a,(l68e4h)		;772c
	dec a			;772f
	ld (l68e4h),a		;7730
	ret nz			;7733
	ld a,r			;7734
	and 01fh		;7736
	add a,082h		;7738
	ld (l68e4h),a		;773a
	ld a,r			;773d
	and 001h		;773f
	add a,002h		;7741
	ld (l68e3h),a		;7743
	ret			;7746
	ld hl,06a3dh		;7747
	ld de,0018eh		;774a
	ld bc,0000ah		;774d
	ldir			;7750
	ld de,069e6h		;7752
	ld hl,069d4h		;7755
	call 069f2h		;7758
	ld a,(l68e4h)		;775b
	dec a			;775e
	ld (l68e4h),a		;775f
	ret nz			;7762
	ld a,046h		;7763
	ld (l68e4h),a		;7765
	ld a,r			;7768
	and 001h		;776a
	add a,003h		;776c
	ld (l68e3h),a		;776e
	ret			;7771
	ld de,069e0h		;7772
	ld hl,069d4h		;7775
	call 069f2h		;7778
	ld a,(l68e4h)		;777b
	dec a			;777e
	ld (l68e4h),a		;777f
	ret nz			;7782
	ld a,000h		;7783
	ld (l68e3h),a		;7785
	ret			;7788
	ld de,l69ech		;7789
	ld hl,069d4h		;778c
	call 069f2h		;778f
	ld a,r			;7792
	and 003h		;7794
	ret nz			;7796
	ld a,(l68e4h)		;7797
	dec a			;779a
	ld (l68e4h),a		;779b
	ret nz			;779e
	ld a,000h		;779f
	ld (l68e3h),a		;77a1
	ret			;77a4
	ld a,(0c1f7h)		;77a5
	cp 002h			;77a8
	ret c			;77aa
	ld a,(l5b60h)		;77ab
	or a			;77ae
	ret nz			;77af
	ld a,(0c308h)		;77b0
	or a			;77b3
	jp nz,069c8h		;77b4
l77b7h:
	ld hl,(0c1f6h)		;77b7
	ld a,h			;77ba
	cp 002h			;77bb
	jp z,069c8h		;77bd
	ld a,(069d3h)		;77c0
	inc a			;77c3
	and 03fh		;77c4
	ret z			;77c6
	ld (069d3h),a		;77c7
	ld hl,069d4h		;77ca
l77cdh:
	ld a,005h		;77cd
	ld bc,0069ah		;77cf
	jp 002deh		;77d2
	nop			;77d5
	nop			;77d6
	nop			;77d7
l77d8h:
	nop			;77d8
	nop			;77d9
	nop			;77da
	nop			;77db
	ld h,l			;77dc
	rlca			;77dd
	ld b,h			;77de
	ld b,022h		;77df
	inc b			;77e1
	nop			;77e2
	nop			;77e3
	nop			;77e4
	nop			;77e5
	nop			;77e6
	nop			;77e7
	halt			;77e8
	ld b,065h		;77e9
	dec b			;77eb
	ld h,d			;77ec
	ld (bc),a		;77ed
	ld d,l			;77ee
l77efh:
	dec b			;77ef
	ld (02203h),a		;77f0
	ld (bc),a		;77f3
	ld a,(l68e4h+1)		;77f4
	dec a			;77f7
	ld (l68e4h+1),a		;77f8
	ret nz			;77fb
	ld a,006h		;77fc
	ld (l68e4h+1),a		;77fe
	ld b,003h		;7801
l7803h:
	push bc			;7803
	call 06a13h		;7804
	call sub_6a27h		;7807
	inc hl			;780a
	inc de			;780b
	call sub_6a27h		;780c
	inc hl			;780f
	inc de			;7810
	pop bc			;7811
	djnz l7803h		;7812
	ret			;7814
	ld a,(de)		;7815
	and 0f0h		;7816
	ld b,a			;7818
	ld a,(hl)		;7819
	and 0f0h		;781a
	cp b			;781c
	ret z			;781d
	ld b,010h		;781e
	jp c,l6a23h		;7820
	ld b,0f0h		;7823
	ld a,(hl)		;7825
	add a,b			;7826
	ld (hl),a		;7827
	ret			;7828
	ld a,(de)		;7829
	and 00fh		;782a
	ld b,a			;782c
	ld a,(hl)		;782d
	and 00fh		;782e
	cp b			;7830
	ret z			;7831
l7832h:
	ld b,001h		;7832
	jp c,l6a23h		;7834
	ld b,0ffh		;7837
	jp l6a23h		;7839
	sub 004h		;783c
	ret			;783e
	cp 004h			;783f
	ret z			;7841
	sub 008h		;7842
	ret			;7844
	ld a,(l5b5fh)		;7845
	or a			;7848
	ret z			;7849
	ld a,(0c1f7h)		;784a
	cp 002h			;784d
	jp c,06a5fh		;784f
	cp 002h			;7852
	jp z,06a56h		;7854
	ret			;7857
	ld a,(0c1f6h)		;7858
	cp 032h			;785b
	jp c,06a5fh		;785d
	ret			;7860
	ld c,000h		;7861
	ld b,00eh		;7863
	ld hl,0c240h		;7865
	ld a,(0c3cfh)		;7868
	or a			;786b
	jp nz,l6a7ch		;786c
	ld a,(0c39ah)		;786f
l7872h:
	bit 1,a			;7872
	jp z,06a76h		;7874
	dec c			;7877
	bit 0,a			;7878
	jp z,l6a7ch		;787a
	inc c			;787d
l787eh:
	ld a,(hl)		;787e
	add a,c			;787f
	ld (hl),a		;7880
	cp 014h			;7881
	jp z,l6aa1h		;7883
	cp 0b4h			;7886
	jp nz,06a8ch		;7888
	ld a,014h		;788b
	ld (hl),a		;788d
	inc hl			;788e
	ld a,(hl)		;788f
l7890h:
	inc hl			;7890
	inc hl			;7891
	add a,(hl)		;7892
	dec hl			;7893
	dec hl			;7894
	cp 012h			;7895
	jp nc,06a9ah		;7897
	ld a,0d7h		;789a
	ld (hl),a		;789c
	inc hl			;789d
	inc hl			;789e
	inc hl			;789f
	djnz l787eh		;78a0
	ret			;78a2
	ld a,0b4h		;78a3
	ld (hl),a		;78a5
	jp 06a8ch		;78a6
	nop			;78a9
	ld a,(l5b60h)		;78aa
	or a			;78ad
	jp z,06ab4h		;78ae
	xor a			;78b1
	ld (l5b60h),a		;78b2
l78b5h:
	ret			;78b5
	call sub_69a9h		;78b6
sub_78b9h:
	ld a,(0c1f7h)		;78b9
	cp 002h			;78bc
	jp c,06ae6h		;78be
	ret nz			;78c1
	ld a,(0c1f6h)		;78c2
	cp 032h			;78c5
	ret nc			;78c7
	ld a,(06aa7h)		;78c8
	dec a			;78cb
	and 03fh		;78cc
	ld (06aa7h),a		;78ce
	jp nz,06ae6h		;78d1
	ld a,(l6b04h)		;78d4
	sub 011h		;78d7
	cp 028h			;78d9
	jp c,l6af2h		;78db
	ld (l6b04h),a		;78de
	ld a,(l6b05h)		;78e1
	dec a			;78e4
	ld (l6b05h),a		;78e5
	ld hl,l6b04h		;78e8
	ld de,069d4h		;78eb
	ld bc,00002h		;78ee
	ldir			;78f1
	ret			;78f3
	xor a			;78f4
	ld (l5b5fh),a		;78f5
	ld hl,0c240h		;78f8
	ld de,00004h		;78fb
	ld b,00eh		;78fe
	xor a			;7900
l7901h:
	ld (hl),a		;7901
	add hl,de		;7902
	djnz l7901h		;7903
	ret			;7905
	ld (hl),a		;7906
	rlca			;7907
	ld a,(0c39ch)		;7908
	or a			;790b
	ret nz			;790c
	ld a,(0c1f7h)		;790d
	cp 001h			;7910
	jp c,l6b31h		;7912
	ld a,00fh		;7915
	ld (l6b43h),a		;7917
	ret nz			;791a
	ld a,(0c1f6h)		;791b
	cp 0beh			;791e
	jp c,l6b31h		;7920
	cp 0ffh			;7923
	jp nz,l6b34h		;7925
	ld a,(0f3e1h)		;7928
	and 0dfh		;792b
	ld (0f3e1h),a		;792d
	jp l6b34h		;7930
	call sub_6b44h		;7933
	call sub_6b88h		;7936
	call sub_6baeh		;7939
	call 06bbfh		;793c
	call sub_6c0bh		;793f
	jp l6c2ch		;7942
	inc bc			;7945
	ld a,(l6b43h)		;7946
	ld b,a			;7949
	ld a,r			;794a
	and b			;794c
	ret nz			;794d
	ld hl,l6c61h		;794e
	ld de,00020h		;7951
	ld b,00bh		;7954
l7956h:
	ld a,(hl)		;7956
	or a			;7957
	jr z,l795eh		;7958
	add hl,de		;795a
	djnz l7956h		;795b
	ret			;795d
l795eh:
	ld (hl),001h		;795e
	inc hl			;7960
	ld a,(l6c2ah+1)		;7961
	ld (hl),a		;7964
	ld a,(l5d38h)		;7965
	or a			;7968
	jp z,l6b7ch		;7969
	ld a,(l6c2ah)		;796c
	cp 070h			;796f
	jp c,l6b7fh		;7971
	cp 096h			;7974
	jp nc,l6b7fh		;7976
	ld a,070h		;7979
l797bh:
	jp l6b7fh		;797b
	ld a,(l6c2ah)		;797e
	ld e,016h		;7981
	add hl,de		;7983
	ld (hl),a		;7984
	dec hl			;7985
	dec hl			;7986
	ld (hl),004h		;7987
	ret			;7989
	ld a,(0f3e1h)		;798a
	xor 020h		;798d
	ld (0f3e1h),a		;798f
	ld (l533ch),a		;7992
	ld hl,l6c6ah		;7995
l7998h:
	ld a,(hl)		;7998
	xor 001h		;7999
	ld (hl),a		;799b
	ld de,0000fh		;799c
	ld bc,00011h		;799f
	add hl,de		;79a2
	ld (hl),a		;79a3
	exx			;79a4
	ld b,00ah		;79a5
l79a7h:
	exx			;79a7
	add hl,bc		;79a8
	ld (hl),a		;79a9
	add hl,de		;79aa
	ld (hl),a		;79ab
	exx			;79ac
	djnz l79a7h		;79ad
	ret			;79af
	ld hl,l6c63h		;79b0
l79b3h:
	ld b,00bh		;79b3
	ld de,00011h		;79b5
l79b8h:
	push bc			;79b8
l79b9h:
	call 0048bh		;79b9
	add hl,de		;79bc
	pop bc			;79bd
	djnz l79b8h		;79be
	ret			;79c0
	ld hl,l6c61h		;79c1
	ld b,00bh		;79c4
	ld d,000h		;79c6
l79c8h:
	ld a,(hl)		;79c8
	or a			;79c9
	jr z,l7a07h		;79ca
l79cch:
	inc hl			;79cc
	ld c,(hl)		;79cd
	ld a,(l5d38h)		;79ce
	or a			;79d1
	jp nz,06bdah		;79d2
	ld a,r			;79d5
	and 007h		;79d7
	jp z,06bdch		;79d9
	ld c,000h		;79dc
	ld e,016h		;79de
	add hl,de		;79e0
	ld a,(hl)		;79e1
	ld e,00fh		;79e2
	or a			;79e4
	sbc hl,de		;79e5
	ld (hl),a		;79e7
	sub c			;79e8
	add hl,de		;79e9
	ld (hl),a		;79ea
	dec hl			;79eb
	dec hl			;79ec
	ld a,(hl)		;79ed
	ld e,00fh		;79ee
l79f0h:
	or a			;79f0
	sbc hl,de		;79f1
	ld (hl),a		;79f3
	add hl,de		;79f4
	add a,004h		;79f5
	ld (hl),a		;79f7
l79f8h:
	or a			;79f8
	jp z,l6c00h		;79f9
	ld e,00bh		;79fc
	add hl,de		;79fe
	djnz l79c8h		;79ff
	ret			;7a01
	ld e,015h		;7a02
	sbc hl,de		;7a04
	ld (hl),a		;7a06
l7a07h:
	ld e,020h		;7a07
	add hl,de		;7a09
	djnz l79c8h		;7a0a
	ret			;7a0c
	ld hl,l6c61h		;7a0d
	ld d,000h		;7a10
	xor a			;7a12
	exx			;7a13
	ld b,00bh		;7a14
l7a16h:
	exx			;7a16
	cp (hl)			;7a17
	jr z,l7a25h		;7a18
	ld e,011h		;7a1a
	add hl,de		;7a1c
	call 0048bh		;7a1d
	xor a			;7a20
	exx			;7a21
	djnz l7a16h		;7a22
	ret			;7a24
l7a25h:
	ld e,020h		;7a25
	add hl,de		;7a27
	exx			;7a28
	djnz l7a16h		;7a29
	ret			;7a2b
	nop			;7a2c
	nop			;7a2d
	ld a,(0c200h)		;7a2e
	cp 064h			;7a31
	ld c,03ah		;7a33
	jr c,l7a39h		;7a35
	ld c,055h		;7a37
l7a39h:
	ld a,r			;7a39
	or a			;7a3b
	cp 098h			;7a3c
	ret nc			;7a3e
	add a,c			;7a3f
	ld (l6c2ah),a		;7a40
	cp 0beh			;7a43
	ld c,000h		;7a45
	jr c,l7a4bh		;7a47
	ld c,001h		;7a49
l7a4bh:
	ld a,r			;7a4b
	and 003h		;7a4d
	add a,c			;7a4f
	ld b,0ffh		;7a50
	jp z,l6c5ch		;7a52
	cp 001h			;7a55
	ld b,001h		;7a57
l7a59h:
	jp z,l6c5ch		;7a59
	ld b,000h		;7a5c
	ld a,b			;7a5e
	ld (l6c2ah+1),a		;7a5f
	ret			;7a62
	nop			;7a63
	nop			;7a64
	nop			;7a65
	nop			;7a66
	nop			;7a67
	nop			;7a68
	inc b			;7a69
	nop			;7a6a
	ld (hl),d		;7a6b
	nop			;7a6c
	djnz l7a6fh		;7a6d
l7a6fh:
	ld c,000h		;7a6f
	sbc a,c			;7a71
	nop			;7a72
	ret nz			;7a73
	djnz l7a76h		;7a74
l7a76h:
	and b			;7a76
	inc bc			;7a77
	inc b			;7a78
	nop			;7a79
	ld (hl),d		;7a7a
	nop			;7a7b
l7a7ch:
	djnz l7a7eh		;7a7c
l7a7eh:
	ld c,000h		;7a7e
	nop			;7a80
l7a81h:
	nop			;7a81
	ret nc			;7a82
	nop			;7a83
	nop			;7a84
	nop			;7a85
	nop			;7a86
	nop			;7a87
	nop			;7a88
	inc b			;7a89
	nop			;7a8a
	ld (hl),d		;7a8b
l7a8ch:
	nop			;7a8c
	ld b,000h		;7a8d
l7a8fh:
	ex af,af'		;7a8f
	nop			;7a90
	sbc a,c			;7a91
	nop			;7a92
	ret nz			;7a93
	inc d			;7a94
	nop			;7a95
	sbc a,b			;7a96
	inc bc			;7a97
	inc b			;7a98
	nop			;7a99
	ld (hl),d		;7a9a
	nop			;7a9b
	ld b,000h		;7a9c
	ex af,af'		;7a9e
	nop			;7a9f
	nop			;7aa0
	nop			;7aa1
	ret nc			;7aa2
	nop			;7aa3
	nop			;7aa4
	nop			;7aa5
	nop			;7aa6
	nop			;7aa7
	nop			;7aa8
	inc b			;7aa9
	nop			;7aaa
	ld (hl),d		;7aab
	nop			;7aac
l7aadh:
	inc c			;7aad
	nop			;7aae
	ld a,(bc)		;7aaf
	nop			;7ab0
	sbc a,c			;7ab1
	nop			;7ab2
	ret nz			;7ab3
	nop			;7ab4
	nop			;7ab5
	xor b			;7ab6
	inc bc			;7ab7
	inc b			;7ab8
	nop			;7ab9
	ld (hl),d		;7aba
l7abbh:
	nop			;7abb
	inc c			;7abc
	nop			;7abd
	ld a,(bc)		;7abe
	nop			;7abf
	nop			;7ac0
	nop			;7ac1
	ret nc			;7ac2
	nop			;7ac3
	nop			;7ac4
	nop			;7ac5
	nop			;7ac6
	nop			;7ac7
	nop			;7ac8
	inc b			;7ac9
	nop			;7aca
	ld (hl),d		;7acb
	nop			;7acc
	ex af,af'		;7acd
	nop			;7ace
	ex af,af'		;7acf
	nop			;7ad0
	sbc a,c			;7ad1
l7ad2h:
	nop			;7ad2
	ret nz			;7ad3
	jr l7ad6h		;7ad4
l7ad6h:
	or b			;7ad6
	inc bc			;7ad7
	inc b			;7ad8
	nop			;7ad9
	ld (hl),d		;7ada
	nop			;7adb
	ex af,af'		;7adc
	nop			;7add
	ex af,af'		;7ade
	nop			;7adf
	nop			;7ae0
	nop			;7ae1
l7ae2h:
	ret nc			;7ae2
	nop			;7ae3
	nop			;7ae4
	nop			;7ae5
	nop			;7ae6
	nop			;7ae7
	nop			;7ae8
	inc b			;7ae9
	nop			;7aea
	inc a			;7aeb
	nop			;7aec
sub_7aedh:
	ld b,000h		;7aed
	ex af,af'		;7aef
	nop			;7af0
	sbc a,c			;7af1
	nop			;7af2
	ret nz			;7af3
	ld a,(de)		;7af4
	nop			;7af5
	sbc a,b			;7af6
	inc bc			;7af7
	inc b			;7af8
	nop			;7af9
	inc a			;7afa
	nop			;7afb
	ld b,000h		;7afc
	ex af,af'		;7afe
	nop			;7aff
l7b00h:
	nop			;7b00
	nop			;7b01
	ret nc			;7b02
	nop			;7b03
	nop			;7b04
	nop			;7b05
	nop			;7b06
	nop			;7b07
l7b08h:
	nop			;7b08
	inc b			;7b09
	nop			;7b0a
	inc a			;7b0b
	nop			;7b0c
	ld b,000h		;7b0d
	ld b,000h		;7b0f
	sbc a,c			;7b11
	nop			;7b12
	ret nz			;7b13
	ex af,af'		;7b14
	nop			;7b15
	and b			;7b16
	inc bc			;7b17
	inc b			;7b18
	nop			;7b19
	inc a			;7b1a
	nop			;7b1b
	ld b,000h		;7b1c
	ld b,000h		;7b1e
	nop			;7b20
	nop			;7b21
	ret nc			;7b22
l7b23h:
	nop			;7b23
	nop			;7b24
	nop			;7b25
	nop			;7b26
	nop			;7b27
	nop			;7b28
	inc b			;7b29
	nop			;7b2a
	ld l,(hl)		;7b2b
	nop			;7b2c
	inc c			;7b2d
	nop			;7b2e
	ld a,(bc)		;7b2f
	nop			;7b30
	sbc a,c			;7b31
	nop			;7b32
	ret nz			;7b33
	nop			;7b34
	nop			;7b35
	or d			;7b36
	inc bc			;7b37
	inc b			;7b38
	nop			;7b39
	ld l,(hl)		;7b3a
	nop			;7b3b
	inc c			;7b3c
	nop			;7b3d
	ld a,(bc)		;7b3e
	nop			;7b3f
	nop			;7b40
	nop			;7b41
	ret nc			;7b42
	nop			;7b43
	nop			;7b44
	nop			;7b45
	nop			;7b46
l7b47h:
	nop			;7b47
	nop			;7b48
	inc b			;7b49
	nop			;7b4a
	ld l,(hl)		;7b4b
	nop			;7b4c
	ex af,af'		;7b4d
	nop			;7b4e
	ex af,af'		;7b4f
	nop			;7b50
	sbc a,c			;7b51
	nop			;7b52
	ret nz			;7b53
	nop			;7b54
	nop			;7b55
	and b			;7b56
	inc bc			;7b57
	inc b			;7b58
	nop			;7b59
	ld l,(hl)		;7b5a
	nop			;7b5b
	ex af,af'		;7b5c
	nop			;7b5d
	ex af,af'		;7b5e
	nop			;7b5f
	nop			;7b60
	nop			;7b61
	ret nc			;7b62
	nop			;7b63
	nop			;7b64
	nop			;7b65
	nop			;7b66
	nop			;7b67
	nop			;7b68
	inc b			;7b69
	nop			;7b6a
	ld l,(hl)		;7b6b
	nop			;7b6c
	ex af,af'		;7b6d
	nop			;7b6e
	ex af,af'		;7b6f
	nop			;7b70
	sbc a,c			;7b71
	nop			;7b72
	ret nz			;7b73
	djnz l7b76h		;7b74
l7b76h:
	cp b			;7b76
	inc bc			;7b77
	inc b			;7b78
	nop			;7b79
	ld l,(hl)		;7b7a
	nop			;7b7b
	ex af,af'		;7b7c
	nop			;7b7d
	ex af,af'		;7b7e
	nop			;7b7f
	nop			;7b80
	nop			;7b81
	ret nc			;7b82
l7b83h:
	nop			;7b83
	nop			;7b84
	nop			;7b85
	nop			;7b86
	nop			;7b87
	nop			;7b88
	inc b			;7b89
	nop			;7b8a
	ld l,(hl)		;7b8b
	nop			;7b8c
	ex af,af'		;7b8d
	nop			;7b8e
	ex af,af'		;7b8f
	nop			;7b90
	sbc a,c			;7b91
	nop			;7b92
	ret nz			;7b93
	jr l7b96h		;7b94
l7b96h:
	cp b			;7b96
	inc bc			;7b97
	inc b			;7b98
	nop			;7b99
	ld l,(hl)		;7b9a
	nop			;7b9b
	ex af,af'		;7b9c
	nop			;7b9d
	ex af,af'		;7b9e
	nop			;7b9f
	nop			;7ba0
	nop			;7ba1
	ret nc			;7ba2
	nop			;7ba3
	nop			;7ba4
	nop			;7ba5
	nop			;7ba6
	nop			;7ba7
	nop			;7ba8
	inc b			;7ba9
	nop			;7baa
	ld l,(hl)		;7bab
	nop			;7bac
l7badh:
	inc c			;7bad
	nop			;7bae
	ex af,af'		;7baf
	nop			;7bb0
	sbc a,c			;7bb1
	nop			;7bb2
	ret nz			;7bb3
	ex af,af'		;7bb4
	nop			;7bb5
	sbc a,b			;7bb6
	inc bc			;7bb7
	inc b			;7bb8
	nop			;7bb9
	ld l,(hl)		;7bba
	nop			;7bbb
	inc c			;7bbc
	nop			;7bbd
	ex af,af'		;7bbe
l7bbfh:
	nop			;7bbf
	nop			;7bc0
	nop			;7bc1
	ret nc			;7bc2
	nop			;7bc3
	nop			;7bc4
	nop			;7bc5
	nop			;7bc6
	nop			;7bc7
	nop			;7bc8
	inc b			;7bc9
	nop			;7bca
	ld l,(hl)		;7bcb
	nop			;7bcc
	ex af,af'		;7bcd
	nop			;7bce
	ex af,af'		;7bcf
	nop			;7bd0
	sbc a,c			;7bd1
	nop			;7bd2
	ret nz			;7bd3
	djnz l7bd6h		;7bd4
l7bd6h:
	or b			;7bd6
	inc bc			;7bd7
	inc b			;7bd8
	nop			;7bd9
	ld l,(hl)		;7bda
	nop			;7bdb
l7bdch:
	ex af,af'		;7bdc
	nop			;7bdd
	ex af,af'		;7bde
	nop			;7bdf
	nop			;7be0
	nop			;7be1
	ret nc			;7be2
	nop			;7be3
	nop			;7be4
	nop			;7be5
l7be6h:
	nop			;7be6
	nop			;7be7
	nop			;7be8
	inc b			;7be9
	nop			;7bea
	ld l,(hl)		;7beb
	nop			;7bec
	ex af,af'		;7bed
	nop			;7bee
	ex af,af'		;7bef
	nop			;7bf0
	sbc a,c			;7bf1
	nop			;7bf2
	ret nz			;7bf3
	djnz l7bf6h		;7bf4
l7bf6h:
	or b			;7bf6
l7bf7h:
	inc bc			;7bf7
	inc b			;7bf8
	nop			;7bf9
	ld l,(hl)		;7bfa
	nop			;7bfb
	ex af,af'		;7bfc
	nop			;7bfd
	ex af,af'		;7bfe
	nop			;7bff
	nop			;7c00
	nop			;7c01
	ret nc			;7c02
	nop			;7c03
	nop			;7c04
	nop			;7c05
	nop			;7c06
	nop			;7c07
	nop			;7c08
	ld b,b			;7c09
	ld b,b			;7c0a
	ld b,b			;7c0b
	ld b,b			;7c0c
	jr nz,l7c2fh		;7c0d
	djnz l7c1dh		;7c0f
	inc bc			;7c11
	nop			;7c12
	nop			;7c13
	nop			;7c14
	nop			;7c15
	nop			;7c16
	nop			;7c17
	nop			;7c18
	nop			;7c19
	nop			;7c1a
	nop			;7c1b
	nop			;7c1c
l7c1dh:
	nop			;7c1d
	nop			;7c1e
	nop			;7c1f
	nop			;7c20
	ret po			;7c21
	nop			;7c22
l7c23h:
	nop			;7c23
l7c24h:
	nop			;7c24
l7c25h:
	nop			;7c25
	nop			;7c26
	nop			;7c27
	ld b,b			;7c28
	and b			;7c29
	and b			;7c2a
	and b			;7c2b
	and b			;7c2c
	ld d,b			;7c2d
	ld d,b			;7c2e
l7c2fh:
	inc l			;7c2f
	inc de			;7c30
	inc c			;7c31
	inc bc			;7c32
	nop			;7c33
	nop			;7c34
	nop			;7c35
	nop			;7c36
	nop			;7c37
	nop			;7c38
	nop			;7c39
sub_7c3ah:
	nop			;7c3a
	nop			;7c3b
	nop			;7c3c
	nop			;7c3d
	nop			;7c3e
	nop			;7c3f
	ret po			;7c40
	djnz l7c23h		;7c41
	nop			;7c43
	djnz l7c66h		;7c44
	jr nz,l7c68h		;7c46
	jr nz,l7c5ah		;7c48
	djnz l7c54h		;7c4a
	inc b			;7c4c
	ld (bc),a		;7c4d
	ld bc,00000h		;7c4e
	nop			;7c51
	nop			;7c52
	nop			;7c53
l7c54h:
	nop			;7c54
	nop			;7c55
	nop			;7c56
	nop			;7c57
	nop			;7c58
	nop			;7c59
l7c5ah:
	nop			;7c5a
	nop			;7c5b
	nop			;7c5c
	nop			;7c5d
	add a,b			;7c5e
	ld (hl),b		;7c5f
	nop			;7c60
	nop			;7c61
	nop			;7c62
	nop			;7c63
	jr nz,l7c76h		;7c64
l7c66h:
	djnz l7cb8h		;7c66
l7c68h:
	ld d,b			;7c68
	jr z,l7c93h		;7c69
	inc d			;7c6b
	ld a,(bc)		;7c6c
	dec b			;7c6d
	ld (bc),a		;7c6e
	ld bc,00000h		;7c6f
	nop			;7c72
	nop			;7c73
	nop			;7c74
	nop			;7c75
l7c76h:
	nop			;7c76
	nop			;7c77
	nop			;7c78
	nop			;7c79
	nop			;7c7a
	nop			;7c7b
l7c7ch:
	nop			;7c7c
	add a,b			;7c7d
	ld (hl),b		;7c7e
	add a,b			;7c7f
	ld (hl),b		;7c80
	nop			;7c81
	nop			;7c82
	nop			;7c83
	djnz l7c96h		;7c84
	ex af,af'		;7c86
	ex af,af'		;7c87
	inc b			;7c88
	inc bc			;7c89
	nop			;7c8a
	nop			;7c8b
	nop			;7c8c
	nop			;7c8d
	nop			;7c8e
	nop			;7c8f
	nop			;7c90
	nop			;7c91
	nop			;7c92
l7c93h:
	nop			;7c93
	nop			;7c94
	nop			;7c95
l7c96h:
	nop			;7c96
	nop			;7c97
	nop			;7c98
	nop			;7c99
	ret nz			;7c9a
	jr c,l7c9dh		;7c9b
l7c9dh:
	nop			;7c9d
	nop			;7c9e
	nop			;7c9f
	nop			;7ca0
	nop			;7ca1
	nop			;7ca2
	djnz l7ccdh		;7ca3
	jr z,$+22		;7ca5
	inc d			;7ca7
	dec bc			;7ca8
	inc b			;7ca9
	inc bc			;7caa
	nop			;7cab
	nop			;7cac
	nop			;7cad
	nop			;7cae
	nop			;7caf
	nop			;7cb0
	nop			;7cb1
	nop			;7cb2
	nop			;7cb3
	nop			;7cb4
	nop			;7cb5
	nop			;7cb6
	nop			;7cb7
l7cb8h:
	nop			;7cb8
	ret nz			;7cb9
	jr c,l7c7ch		;7cba
	jr c,l7cbeh		;7cbc
l7cbeh:
	nop			;7cbe
	nop			;7cbf
	nop			;7cc0
	nop			;7cc1
	nop			;7cc2
	nop			;7cc3
	nop			;7cc4
	nop			;7cc5
	nop			;7cc6
	ld (bc),a		;7cc7
	ld bc,00000h		;7cc8
	nop			;7ccb
	nop			;7ccc
l7ccdh:
	nop			;7ccd
	nop			;7cce
	nop			;7ccf
	nop			;7cd0
	nop			;7cd1
	nop			;7cd2
	nop			;7cd3
	nop			;7cd4
	nop			;7cd5
	nop			;7cd6
	nop			;7cd7
	nop			;7cd8
	add a,b			;7cd9
	ld b,b			;7cda
	jr nz,l7cedh		;7cdb
	ex af,af'		;7cdd
	nop			;7cde
	nop			;7cdf
	nop			;7ce0
	nop			;7ce1
	nop			;7ce2
	nop			;7ce3
	nop			;7ce4
	nop			;7ce5
	ld (bc),a		;7ce6
	dec b			;7ce7
	ld (bc),a		;7ce8
	ld bc,00000h		;7ce9
	nop			;7cec
l7cedh:
	nop			;7ced
	nop			;7cee
	nop			;7cef
	nop			;7cf0
	nop			;7cf1
	nop			;7cf2
	nop			;7cf3
	nop			;7cf4
	nop			;7cf5
	nop			;7cf6
	nop			;7cf7
	add a,b			;7cf8
	ld b,b			;7cf9
	and b			;7cfa
	ld d,b			;7cfb
	jr z,l7d12h		;7cfc
	inc c			;7cfe
	nop			;7cff
	nop			;7d00
	nop			;7d01
	nop			;7d02
	nop			;7d03
	ld bc,00000h		;7d04
	nop			;7d07
	nop			;7d08
	nop			;7d09
	nop			;7d0a
	nop			;7d0b
	nop			;7d0c
	nop			;7d0d
	nop			;7d0e
	nop			;7d0f
	nop			;7d10
	nop			;7d11
l7d12h:
	nop			;7d12
	nop			;7d13
	ret po			;7d14
	djnz l7d1fh		;7d15
	inc b			;7d17
	inc b			;7d18
	ld (bc),a		;7d19
	ld (bc),a		;7d1a
	nop			;7d1b
	nop			;7d1c
	nop			;7d1d
l7d1eh:
	nop			;7d1e
l7d1fh:
	nop			;7d1f
	nop			;7d20
	nop			;7d21
	nop			;7d22
	ld bc,00102h		;7d23
	nop			;7d26
	nop			;7d27
	nop			;7d28
	nop			;7d29
	nop			;7d2a
	nop			;7d2b
	nop			;7d2c
	nop			;7d2d
	nop			;7d2e
	nop			;7d2f
	nop			;7d30
	nop			;7d31
	nop			;7d32
	ret po			;7d33
	djnz l7d1eh		;7d34
	inc d			;7d36
l7d37h:
	ex af,af'		;7d37
l7d38h:
	ex af,af'		;7d38
l7d39h:
	inc b			;7d39
	inc b			;7d3a
	ld (bc),a		;7d3b
	nop			;7d3c
	nop			;7d3d
	nop			;7d3e
	nop			;7d3f
	nop			;7d40
	nop			;7d41
	nop			;7d42
	nop			;7d43
	nop			;7d44
	nop			;7d45
	nop			;7d46
	nop			;7d47
	nop			;7d48
	nop			;7d49
	nop			;7d4a
	nop			;7d4b
	nop			;7d4c
	nop			;7d4d
	nop			;7d4e
	nop			;7d4f
l7d50h:
	nop			;7d50
	nop			;7d51
	nop			;7d52
	nop			;7d53
	nop			;7d54
	nop			;7d55
	nop			;7d56
l7d57h:
	nop			;7d57
	nop			;7d58
	nop			;7d59
	nop			;7d5a
	nop			;7d5b
	nop			;7d5c
	nop			;7d5d
	nop			;7d5e
	nop			;7d5f
	nop			;7d60
	nop			;7d61
	nop			;7d62
	nop			;7d63
	nop			;7d64
	nop			;7d65
	nop			;7d66
	nop			;7d67
	nop			;7d68
	nop			;7d69
	nop			;7d6a
	nop			;7d6b
	nop			;7d6c
	nop			;7d6d
	nop			;7d6e
l7d6fh:
	nop			;7d6f
	nop			;7d70
	nop			;7d71
	nop			;7d72
	nop			;7d73
	nop			;7d74
	nop			;7d75
	nop			;7d76
	nop			;7d77
	nop			;7d78
	nop			;7d79
	nop			;7d7a
	nop			;7d7b
	nop			;7d7c
	nop			;7d7d
	nop			;7d7e
	nop			;7d7f
	nop			;7d80
	nop			;7d81
	nop			;7d82
	nop			;7d83
	nop			;7d84
	nop			;7d85
	nop			;7d86
	nop			;7d87
	nop			;7d88
	nop			;7d89
	nop			;7d8a
	nop			;7d8b
	nop			;7d8c
	nop			;7d8d
	nop			;7d8e
	nop			;7d8f
	nop			;7d90
	nop			;7d91
	nop			;7d92
	nop			;7d93
	nop			;7d94
	nop			;7d95
	nop			;7d96
	nop			;7d97
	nop			;7d98
	nop			;7d99
	nop			;7d9a
	nop			;7d9b
	nop			;7d9c
	nop			;7d9d
	nop			;7d9e
	nop			;7d9f
	nop			;7da0
	nop			;7da1
	nop			;7da2
	nop			;7da3
	nop			;7da4
	nop			;7da5
	nop			;7da6
	nop			;7da7
	nop			;7da8
	nop			;7da9
	nop			;7daa
	nop			;7dab
	nop			;7dac
	nop			;7dad
	nop			;7dae
	nop			;7daf
	nop			;7db0
	nop			;7db1
	nop			;7db2
	nop			;7db3
	nop			;7db4
	nop			;7db5
	nop			;7db6
	nop			;7db7
	nop			;7db8
	nop			;7db9
	nop			;7dba
	nop			;7dbb
	nop			;7dbc
	nop			;7dbd
	nop			;7dbe
	nop			;7dbf
	nop			;7dc0
	nop			;7dc1
	nop			;7dc2
	ld h,b			;7dc3
	ret p			;7dc4
	ld h,b			;7dc5
	nop			;7dc6
	nop			;7dc7
	nop			;7dc8
	nop			;7dc9
	nop			;7dca
	nop			;7dcb
	nop			;7dcc
	nop			;7dcd
	nop			;7dce
	nop			;7dcf
	nop			;7dd0
	nop			;7dd1
	nop			;7dd2
	nop			;7dd3
	nop			;7dd4
	nop			;7dd5
	nop			;7dd6
	nop			;7dd7
	nop			;7dd8
	nop			;7dd9
	nop			;7dda
	nop			;7ddb
	nop			;7ddc
	nop			;7ddd
	nop			;7dde
	nop			;7ddf
	nop			;7de0
	nop			;7de1
	nop			;7de2
	nop			;7de3
	nop			;7de4
	nop			;7de5
	nop			;7de6
	nop			;7de7
	nop			;7de8
	nop			;7de9
	nop			;7dea
	nop			;7deb
	nop			;7dec
	nop			;7ded
	nop			;7dee
	nop			;7def
	nop			;7df0
	nop			;7df1
	nop			;7df2
	nop			;7df3
	nop			;7df4
	nop			;7df5
	nop			;7df6
	nop			;7df7
	nop			;7df8
	nop			;7df9
	nop			;7dfa
	nop			;7dfb
	nop			;7dfc
	nop			;7dfd
	nop			;7dfe
	nop			;7dff
	nop			;7e00
	nop			;7e01
	nop			;7e02
	nop			;7e03
	nop			;7e04
	nop			;7e05
	nop			;7e06
	nop			;7e07
	nop			;7e08
	ld bc,00301h		;7e09
	ld bc,00000h		;7e0c
	nop			;7e0f
	nop			;7e10
	nop			;7e11
	nop			;7e12
	nop			;7e13
	nop			;7e14
	nop			;7e15
	nop			;7e16
	nop			;7e17
	nop			;7e18
	add a,b			;7e19
	ret nz			;7e1a
	add a,b			;7e1b
l7e1ch:
	add a,b			;7e1c
	nop			;7e1d
	nop			;7e1e
	nop			;7e1f
	nop			;7e20
	nop			;7e21
	nop			;7e22
	nop			;7e23
	nop			;7e24
	nop			;7e25
	nop			;7e26
	nop			;7e27
	nop			;7e28
	ld bc,00200h		;7e29
	ld bc,00000h		;7e2c
	nop			;7e2f
	nop			;7e30
	nop			;7e31
	nop			;7e32
	nop			;7e33
	nop			;7e34
	nop			;7e35
	nop			;7e36
	nop			;7e37
	nop			;7e38
	add a,b			;7e39
	ld b,b			;7e3a
l7e3bh:
	nop			;7e3b
	add a,b			;7e3c
	nop			;7e3d
	nop			;7e3e
	nop			;7e3f
	nop			;7e40
	nop			;7e41
	nop			;7e42
	nop			;7e43
	nop			;7e44
	nop			;7e45
	nop			;7e46
	nop			;7e47
	ld bc,00402h		;7e48
	add hl,bc		;7e4b
	rlca			;7e4c
	inc bc			;7e4d
	nop			;7e4e
	nop			;7e4f
	nop			;7e50
	nop			;7e51
	nop			;7e52
	nop			;7e53
	nop			;7e54
	nop			;7e55
	nop			;7e56
	nop			;7e57
	nop			;7e58
	ret nz			;7e59
	ret po			;7e5a
	ld h,b			;7e5b
	ret po			;7e5c
	ret nz			;7e5d
	nop			;7e5e
	nop			;7e5f
	nop			;7e60
	nop			;7e61
	nop			;7e62
	nop			;7e63
	nop			;7e64
	nop			;7e65
	nop			;7e66
	nop			;7e67
	ld bc,00301h		;7e68
	ld c,000h		;7e6b
	ld (bc),a		;7e6d
	nop			;7e6e
	nop			;7e6f
	nop			;7e70
	nop			;7e71
	nop			;7e72
	nop			;7e73
	nop			;7e74
	nop			;7e75
	nop			;7e76
	nop			;7e77
	nop			;7e78
	add a,b			;7e79
	jr nz,l7e1ch		;7e7a
	jr nz,l7ebeh		;7e7c
	nop			;7e7e
	nop			;7e7f
	nop			;7e80
	nop			;7e81
	nop			;7e82
	nop			;7e83
	nop			;7e84
	nop			;7e85
	nop			;7e86
	ld bc,00909h		;7e87
	dec bc			;7e8a
	ld a,(bc)		;7e8b
	ld b,007h		;7e8c
	rlca			;7e8e
	nop			;7e8f
	nop			;7e90
	nop			;7e91
	nop			;7e92
	nop			;7e93
	nop			;7e94
	nop			;7e95
	nop			;7e96
l7e97h:
	nop			;7e97
	or b			;7e98
	add a,b			;7e99
	ld l,b			;7e9a
	jr z,l7ed5h		;7e9b
	jr c,l7e97h		;7e9d
	jr nc,l7ea1h		;7e9f
l7ea1h:
	nop			;7ea1
	nop			;7ea2
	nop			;7ea3
	nop			;7ea4
	nop			;7ea5
	nop			;7ea6
	ld bc,0060eh		;7ea7
	inc b			;7eaa
	dec c			;7eab
	ld bc,00400h		;7eac
	nop			;7eaf
	nop			;7eb0
	nop			;7eb1
	nop			;7eb2
	nop			;7eb3
	nop			;7eb4
	nop			;7eb5
	nop			;7eb6
	nop			;7eb7
	ld d,b			;7eb8
	ld (hl),b		;7eb9
	sub b			;7eba
	ret nc			;7ebb
	ret nz			;7ebc
	ret z			;7ebd
l7ebeh:
	ex af,af'		;7ebe
	jr nc,l7ec1h		;7ebf
l7ec1h:
	nop			;7ec1
	nop			;7ec2
	nop			;7ec3
	nop			;7ec4
	inc bc			;7ec5
	rlca			;7ec6
	rrca			;7ec7
	dec de			;7ec8
	daa			;7ec9
	daa			;7eca
	cpl			;7ecb
	ld l,a			;7ecc
	ccf			;7ecd
	ccf			;7ece
	rra			;7ecf
	ld b,000h		;7ed0
	nop			;7ed2
	nop			;7ed3
	nop			;7ed4
l7ed5h:
	ret z			;7ed5
	call nz,0fce4h		;7ed6
	call m,0bcfch		;7ed9
	inc a			;7edc
	ret p			;7edd
	ret po			;7ede
	ret nz			;7edf
	nop			;7ee0
	nop			;7ee1
	nop			;7ee2
	nop			;7ee3
	nop			;7ee4
	inc bc			;7ee5
	inc b			;7ee6
	ex af,af'		;7ee7
	inc d			;7ee8
	jr c,l7f23h		;7ee9
	djnz l7f3dh		;7eeb
	jr nz,l7f0fh		;7eed
	ld de,00006h		;7eef
	nop			;7ef2
	nop			;7ef3
	nop			;7ef4
	or b			;7ef5
	inc a			;7ef6
	inc e			;7ef7
l7ef8h:
	nop			;7ef8
	nop			;7ef9
	nop			;7efa
	ld b,h			;7efb
	call nz,02010h		;7efc
	ret nz			;7eff
	nop			;7f00
	nop			;7f01
	nop			;7f02
	nop			;7f03
	inc bc			;7f04
	ld c,018h		;7f05
	jr nc,l7f69h		;7f07
	ld h,b			;7f09
	ret nz			;7f0a
	rst 8			;7f0b
	rst 38h			;7f0c
	ld a,a			;7f0d
	ld a,a			;7f0e
l7f0fh:
	ccf			;7f0f
	rlca			;7f10
	ld bc,00000h		;7f11
	ret nz			;7f14
	ld a,h			;7f15
	ld h,d			;7f16
	ld b,a			;7f17
	ld h,a			;7f18
	ld l,a			;7f19
	rst 8			;7f1a
	rst 18h			;7f1b
	cp 0fch			;7f1c
	ret m			;7f1e
	ret m			;7f1f
	ret p			;7f20
	ret po			;7f21
l7f22h:
	nop			;7f22
l7f23h:
	nop			;7f23
	ld (bc),a		;7f24
	add hl,bc		;7f25
	rla			;7f26
	cpl			;7f27
	ld e,a			;7f28
	rra			;7f29
	cp a			;7f2a
	or b			;7f2b
	add a,b			;7f2c
	nop			;7f2d
	ld b,b			;7f2e
	jr nc,l7f37h		;7f2f
	ld bc,00000h		;7f31
	ld b,b			;7f34
	or b			;7f35
	sbc a,h			;7f36
l7f37h:
	cp c			;7f37
	sbc a,b			;7f38
	sub b			;7f39
	ld sp,00221h		;7f3a
l7f3dh:
	inc b			;7f3d
	ex af,af'		;7f3e
	ex af,af'		;7f3f
	djnz l7f22h		;7f40
	nop			;7f42
	nop			;7f43
	rlca			;7f44
	ld a,(l4767h)		;7f45
	ld c,a			;7f48
	ld c,(hl)		;7f49
	ld l,h			;7f4a
	ld l,h			;7f4b
	inc a			;7f4c
l7f4dh:
	inc a			;7f4d
	ld e,01fh		;7f4e
	rrca			;7f50
	nop			;7f51
	nop			;7f52
	nop			;7f53
	nop			;7f54
	ld (hl),b		;7f55
	sbc a,h			;7f56
	add a,h			;7f57
	jp po,03676h		;7f58
	ccf			;7f5b
	rra			;7f5c
	rra			;7f5d
	ld a,0feh		;7f5e
	call m,00038h		;7f60
	nop			;7f63
	rlca			;7f64
	dec h			;7f65
	ld e,b			;7f66
	jr c,l7f99h		;7f67
l7f69h:
	ld sp,l5353h		;7f69
	inc bc			;7f6c
	inc hl			;7f6d
	ld bc,00c10h		;7f6e
	nop			;7f71
	nop			;7f72
	nop			;7f73
	nop			;7f74
	or b			;7f75
	ld l,h			;7f76
	ld a,h			;7f77
	ld e,088h		;7f78
	ret z			;7f7a
	pop bc			;7f7b
	pop hl			;7f7c
	pop hl			;7f7d
	jp nz,08402h		;7f7e
l7f81h:
	jr c,l7f83h		;7f81
l7f83h:
	nop			;7f83
	inc bc			;7f84
	rrca			;7f85
	dec de			;7f86
	scf			;7f87
	daa			;7f88
	ld c,a			;7f89
	ld c,a			;7f8a
	ld e,a			;7f8b
	rst 18h			;7f8c
	rst 38h			;7f8d
	ld a,a			;7f8e
	ld a,a			;7f8f
	ccf			;7f90
	ld c,000h		;7f91
	ld a,b			;7f93
	call nz,0f2c2h		;7f94
	cp 0feh			;7f97
l7f99h:
	cp 0feh			;7f99
	sbc a,(hl)		;7f9b
	ld a,07ch		;7f9c
	ret m			;7f9e
	ret p			;7f9f
	ret nz			;7fa0
	nop			;7fa1
	nop			;7fa2
	nop			;7fa3
	inc bc			;7fa4
	ex af,af'		;7fa5
	inc d			;7fa6
	jr z,l7fc1h		;7fa7
	ld (hl),b		;7fa9
	ld (hl),b		;7faa
	jr nz,l7f4dh		;7fab
	add a,b			;7fad
	ld b,b			;7fae
	ld b,b			;7faf
	ld hl,0000eh		;7fb0
	ld a,b			;7fb3
	cp b			;7fb4
	ld a,00eh		;7fb5
	nop			;7fb7
	nop			;7fb8
	nop			;7fb9
	nop			;7fba
	ld h,d			;7fbb
	jp nz,00884h		;7fbc
	jr nc,l7f81h		;7fbf
l7fc1h:
	nop			;7fc1
	nop			;7fc2
	ld a,(0c1a0h)		;7fc3
	and 020h		;7fc6
	ret z			;7fc8
	ld de,00011h		;7fc9
	ld hl,0c282h		;7fcc
	ld a,(0c200h)		;7fcf
	add a,00ah		;7fd2
	ld b,a			;7fd4
	ld a,(0c201h)		;7fd5
	add a,030h		;7fd8
	ld c,a			;7fda
	exx			;7fdb
	ld b,007h		;7fdc
l7fdeh:
	exx			;7fde
	ld a,(hl)		;7fdf
	dec hl			;7fe0
	cp c			;7fe1
	jp nc,l71f4h		;7fe2
	add a,018h		;7fe5
	cp c			;7fe7
	jp c,l71f4h		;7fe8
	ld a,(hl)		;7feb
	cp b			;7fec
	jp nc,l71f4h		;7fed
	add a,010h		;7ff0
	cp b			;7ff2
	jp nc,071f9h		;7ff3
	add hl,de		;7ff6
	exx			;7ff7
	djnz l7fdeh		;7ff8
	ret			;7ffa
	dec hl			;7ffb
	ld a,(hl)		;7ffc
	dec a			;7ffd
	ret nz			;7ffe
	defb 03ah		;7fff
