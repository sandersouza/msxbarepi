; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank27.asm /tmp/smanbow2_bank_27.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
	ld h,d			;4003
	ld l,a			;4004
	ld (hl),a		;4005
	jr nz,l403ah		;4006
	jr nz,$+47		;4008
	jr nz,l4050h		;400a
	ld h,l			;400c
	ld l,l			;400d
	ld l,a			;400e
	jr nz,l4072h		;400f
	ld h,(hl)		;4011
	ld (hl),h		;4012
	ld h,l			;4013
	ld (hl),d		;4014
	jr nz,l4083h		;4015
	ld h,l			;4017
	halt			;4018
	ld h,l			;4019
	ld l,h			;401a
	ld (02020h),a		;401b
	jr nz,l4040h		;401e
l4020h:
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
	jr nz,l4058h		;4036
	jr nz,l405ah		;4038
l403ah:
	jr nz,l405ch		;403a
	jr nz,l405eh		;403c
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
	dec b			;404e
	nop			;404f
l4050h:
	inc bc			;4050
l4051h:
	nop			;4051
l4052h:
	ld bc,00302h		;4052
	inc b			;4055
l4056h:
	dec b			;4056
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
l4072h:
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
l4083h:
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
l40d3h:
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
l41c0h:
	inc d			;41c0
	dec b			;41c1
	nop			;41c2
	nop			;41c3
	rrca			;41c4
	ld b,02eh		;41c5
	nop			;41c7
	inc l			;41c8
	nop			;41c9
	nop			;41ca
	ld bc,00267h		;41cb
	nop			;41ce
	nop			;41cf
	ld h,a			;41d0
	ld (bc),a		;41d1
	ld h,a			;41d2
	ld (bc),a		;41d3
	ld h,a			;41d4
	ld (bc),a		;41d5
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
	nop			;420c
	nop			;420d
	nop			;420e
	nop			;420f
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
	nop			;4224
	nop			;4225
	ld l,e			;4226
	ld bc,0016bh		;4227
	nop			;422a
	inc de			;422b
	nop			;422c
	nop			;422d
	nop			;422e
	nop			;422f
	nop			;4230
	nop			;4231
	ld l,e			;4232
	ld bc,0016bh		;4233
	nop			;4236
	nop			;4237
	nop			;4238
	nop			;4239
	nop			;423a
	nop			;423b
	nop			;423c
	nop			;423d
	ld l,e			;423e
	ld bc,0016bh		;423f
	nop			;4242
	nop			;4243
	nop			;4244
	nop			;4245
	nop			;4246
	nop			;4247
	nop			;4248
	nop			;4249
	ld l,e			;424a
	ld bc,0016bh		;424b
	nop			;424e
	ld bc,00000h		;424f
	nop			;4252
	nop			;4253
	nop			;4254
	nop			;4255
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
	ld l,h			;4262
	ld bc,0016ch		;4263
	nop			;4266
	ld c,000h		;4267
	nop			;4269
	nop			;426a
	nop			;426b
	nop			;426c
	nop			;426d
	ld l,h			;426e
	ld bc,0016ch		;426f
	nop			;4272
	nop			;4273
	nop			;4274
	nop			;4275
	nop			;4276
	nop			;4277
	nop			;4278
	nop			;4279
	ld hl,(02701h)		;427a
	ld bc,01300h		;427d
	nop			;4280
	nop			;4281
	nop			;4282
	nop			;4283
	nop			;4284
	nop			;4285
	ld l,e			;4286
	ld bc,0016bh		;4287
	nop			;428a
	nop			;428b
	nop			;428c
	nop			;428d
	nop			;428e
	nop			;428f
	nop			;4290
	nop			;4291
	ld l,e			;4292
	ld bc,0016bh		;4293
	nop			;4296
	nop			;4297
	nop			;4298
	nop			;4299
	nop			;429a
	nop			;429b
	nop			;429c
	nop			;429d
	ld l,e			;429e
	ld bc,0016bh		;429f
	nop			;42a2
	ld bc,00000h		;42a3
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
	ld l,h			;42b6
	ld bc,0016ch		;42b7
	nop			;42ba
	ld c,000h		;42bb
	nop			;42bd
	nop			;42be
	nop			;42bf
	nop			;42c0
	nop			;42c1
	ld l,h			;42c2
	ld bc,0016ch		;42c3
	nop			;42c6
	nop			;42c7
	nop			;42c8
	nop			;42c9
	nop			;42ca
	nop			;42cb
	nop			;42cc
	nop			;42cd
	add hl,hl		;42ce
	ld bc,00125h		;42cf
	nop			;42d2
	inc de			;42d3
	nop			;42d4
	nop			;42d5
	nop			;42d6
	nop			;42d7
	nop			;42d8
	nop			;42d9
	ld l,e			;42da
	ld bc,0016bh		;42db
	nop			;42de
	nop			;42df
	nop			;42e0
	nop			;42e1
	nop			;42e2
	nop			;42e3
	nop			;42e4
	nop			;42e5
	ld l,e			;42e6
	ld bc,0016bh		;42e7
	nop			;42ea
	nop			;42eb
	nop			;42ec
	nop			;42ed
	nop			;42ee
	nop			;42ef
	nop			;42f0
	nop			;42f1
	ld l,e			;42f2
	ld bc,0016bh		;42f3
	nop			;42f6
	ld bc,00000h		;42f7
	nop			;42fa
	nop			;42fb
	nop			;42fc
	nop			;42fd
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
	nop			;4308
	nop			;4309
	ld l,h			;430a
	ld bc,0016ch		;430b
	nop			;430e
	ld c,000h		;430f
	nop			;4311
	nop			;4312
	nop			;4313
	nop			;4314
	nop			;4315
	ld l,h			;4316
	ld bc,0016ch		;4317
	nop			;431a
	nop			;431b
	nop			;431c
	nop			;431d
	nop			;431e
	nop			;431f
	nop			;4320
	nop			;4321
	daa			;4322
	ld bc,00123h		;4323
	nop			;4326
	inc de			;4327
	nop			;4328
	nop			;4329
	nop			;432a
	nop			;432b
	nop			;432c
	nop			;432d
	ld l,e			;432e
	ld bc,0016bh		;432f
	nop			;4332
	nop			;4333
	nop			;4334
	nop			;4335
	nop			;4336
	nop			;4337
	nop			;4338
	nop			;4339
	ld l,e			;433a
	ld bc,0016bh		;433b
	nop			;433e
	nop			;433f
	nop			;4340
	nop			;4341
	nop			;4342
	nop			;4343
	nop			;4344
	nop			;4345
	ld l,e			;4346
	ld bc,0016bh		;4347
	nop			;434a
	ld bc,00000h		;434b
	nop			;434e
	nop			;434f
	nop			;4350
	nop			;4351
	ld h,a			;4352
	ld bc,00000h		;4353
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
	ld h,a			;4360
	ld (bc),a		;4361
	nop			;4362
	nop			;4363
	nop			;4364
	nop			;4365
	ld h,d			;4366
	jr nc,l4369h		;4367
l4369h:
	nop			;4369
	nop			;436a
	nop			;436b
	nop			;436c
	nop			;436d
	nop			;436e
	nop			;436f
	nop			;4370
	nop			;4371
	daa			;4372
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
	ld l,e			;437e
	ld bc,0016ch		;437f
	nop			;4382
	nop			;4383
	nop			;4384
	nop			;4385
	nop			;4386
	nop			;4387
	nop			;4388
	nop			;4389
	ld l,e			;438a
	ld bc,0016ch		;438b
	nop			;438e
	nop			;438f
	nop			;4390
	nop			;4391
	nop			;4392
	nop			;4393
	nop			;4394
	nop			;4395
	ld l,e			;4396
l4397h:
	ld bc,00061h		;4397
	nop			;439a
	nop			;439b
	nop			;439c
	nop			;439d
	nop			;439e
	nop			;439f
	nop			;43a0
	nop			;43a1
	ld l,e			;43a2
	ld bc,03762h		;43a3
	nop			;43a6
	nop			;43a7
	nop			;43a8
	nop			;43a9
	nop			;43aa
	inc b			;43ab
	nop			;43ac
	nop			;43ad
	ld b,d			;43ae
	inc b			;43af
	ld (hl),001h		;43b0
	ld hl,(01e05h)		;43b2
	dec b			;43b5
	nop			;43b6
	ld (bc),a		;43b7
	nop			;43b8
	nop			;43b9
	ld h,a			;43ba
	ld (bc),a		;43bb
	ld h,a			;43bc
	inc bc			;43bd
	ld h,a			;43be
	ld (bc),a		;43bf
	ld h,a			;43c0
	ld (bc),a		;43c1
	nop			;43c2
	ld a,(de)		;43c3
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
	ex af,af'		;4400
	rrca			;4401
l4402h:
	inc sp			;4402
	dec b			;4403
	dec de			;4404
	ld bc,00520h		;4405
	inc l			;4408
	dec b			;4409
	dec b			;440a
	inc d			;440b
	nop			;440c
	nop			;440d
	ld h,a			;440e
	ld (bc),a		;440f
	ld h,a			;4410
	ld bc,00267h		;4411
	ld h,a			;4414
	ld bc,00000h		;4415
	ld b,00fh		;4418
	nop			;441a
	nop			;441b
	nop			;441c
	nop			;441d
	nop			;441e
	nop			;441f
	nop			;4420
l4421h:
	nop			;4421
	dec b			;4422
	nop			;4423
	ex af,af'		;4424
	rrca			;4425
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
	dec c			;443c
	rrca			;443d
	nop			;443e
	nop			;443f
	nop			;4440
	nop			;4441
l4442h:
	nop			;4442
	nop			;4443
l4444h:
	nop			;4444
	nop			;4445
l4446h:
	dec b			;4446
	nop			;4447
l4448h:
	ex af,af'		;4448
	rrca			;4449
	nop			;444a
	nop			;444b
	nop			;444c
	nop			;444d
	nop			;444e
	nop			;444f
	nop			;4450
	nop			;4451
	ex af,af'		;4452
	nop			;4453
	nop			;4454
	nop			;4455
	nop			;4456
	nop			;4457
	nop			;4458
	nop			;4459
	nop			;445a
	nop			;445b
	nop			;445c
	nop			;445d
	nop			;445e
	nop			;445f
	ld b,00fh		;4460
	nop			;4462
	nop			;4463
	nop			;4464
	nop			;4465
	nop			;4466
	nop			;4467
	nop			;4468
	nop			;4469
	dec b			;446a
	nop			;446b
	ex af,af'		;446c
	rrca			;446d
	nop			;446e
	nop			;446f
	nop			;4470
	nop			;4471
	nop			;4472
	nop			;4473
	nop			;4474
	nop			;4475
	dec b			;4476
	nop			;4477
	nop			;4478
	nop			;4479
	nop			;447a
	nop			;447b
	nop			;447c
	nop			;447d
	nop			;447e
	nop			;447f
	nop			;4480
	nop			;4481
	nop			;4482
	nop			;4483
	ld b,00fh		;4484
	nop			;4486
	nop			;4487
	nop			;4488
	nop			;4489
	nop			;448a
	nop			;448b
	nop			;448c
	nop			;448d
	dec b			;448e
	nop			;448f
	ex af,af'		;4490
	rrca			;4491
	nop			;4492
	nop			;4493
	nop			;4494
	nop			;4495
	nop			;4496
	nop			;4497
	nop			;4498
	nop			;4499
	ex af,af'		;449a
	nop			;449b
	nop			;449c
	nop			;449d
	nop			;449e
	nop			;449f
	nop			;44a0
	nop			;44a1
	nop			;44a2
	nop			;44a3
	nop			;44a4
	nop			;44a5
	nop			;44a6
l44a7h:
	nop			;44a7
	dec c			;44a8
	rrca			;44a9
	nop			;44aa
	nop			;44ab
	nop			;44ac
	nop			;44ad
	nop			;44ae
	nop			;44af
	nop			;44b0
	nop			;44b1
	ex af,af'		;44b2
	nop			;44b3
	ex af,af'		;44b4
	rrca			;44b5
	nop			;44b6
	nop			;44b7
	nop			;44b8
	nop			;44b9
	nop			;44ba
	nop			;44bb
	nop			;44bc
	nop			;44bd
	dec b			;44be
	nop			;44bf
	nop			;44c0
	nop			;44c1
	nop			;44c2
	nop			;44c3
	nop			;44c4
	nop			;44c5
	nop			;44c6
	nop			;44c7
	nop			;44c8
	nop			;44c9
	nop			;44ca
	inc d			;44cb
	inc bc			;44cc
	rrca			;44cd
	ld sp,02505h		;44ce
	ld bc,00522h		;44d1
	ld l,005h		;44d4
	dec b			;44d6
	nop			;44d7
	ld b,00fh		;44d8
	ld h,a			;44da
	ld (bc),a		;44db
	ld h,a			;44dc
	ld (bc),a		;44dd
	ld h,a			;44de
	ld (bc),a		;44df
	ld h,a			;44e0
	ld (bc),a		;44e1
	ex af,af'		;44e2
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
	ex af,af'		;44f0
	rrca			;44f1
	nop			;44f2
	nop			;44f3
	nop			;44f4
	nop			;44f5
	nop			;44f6
	nop			;44f7
	nop			;44f8
	nop			;44f9
	dec b			;44fa
	nop			;44fb
	nop			;44fc
	nop			;44fd
	ld (hl),005h		;44fe
	ld hl,(02301h)		;4500
	dec b			;4503
	cpl			;4504
	dec b			;4505
	dec b			;4506
	nop			;4507
	nop			;4508
	nop			;4509
	ld h,a			;450a
	ld (bc),a		;450b
	ld h,a			;450c
	ld (bc),a		;450d
	ld h,a			;450e
	ld (bc),a		;450f
	ld h,a			;4510
	ld bc,00000h		;4511
	inc bc			;4514
	rrca			;4515
	nop			;4516
	nop			;4517
	nop			;4518
	nop			;4519
	nop			;451a
	nop			;451b
	nop			;451c
	nop			;451d
	dec b			;451e
	nop			;451f
	ld b,00fh		;4520
	nop			;4522
	nop			;4523
	nop			;4524
	nop			;4525
	nop			;4526
	nop			;4527
	nop			;4528
	nop			;4529
	ex af,af'		;452a
	nop			;452b
	nop			;452c
	nop			;452d
	nop			;452e
	nop			;452f
	nop			;4530
	nop			;4531
	nop			;4532
	nop			;4533
	nop			;4534
	nop			;4535
	nop			;4536
	nop			;4537
	inc bc			;4538
	rrca			;4539
	nop			;453a
	nop			;453b
	nop			;453c
	nop			;453d
	nop			;453e
	nop			;453f
	nop			;4540
	nop			;4541
	dec b			;4542
	nop			;4543
	ld b,00fh		;4544
	nop			;4546
	nop			;4547
	nop			;4548
	nop			;4549
	nop			;454a
	nop			;454b
	nop			;454c
	nop			;454d
	dec b			;454e
	nop			;454f
	nop			;4550
	nop			;4551
	nop			;4552
	nop			;4553
	nop			;4554
	nop			;4555
	nop			;4556
	nop			;4557
	nop			;4558
	nop			;4559
	nop			;455a
	nop			;455b
	ex af,af'		;455c
	rrca			;455d
	nop			;455e
	nop			;455f
	nop			;4560
	nop			;4561
	nop			;4562
	nop			;4563
	nop			;4564
	nop			;4565
	ex af,af'		;4566
	nop			;4567
	ld b,00fh		;4568
	nop			;456a
	nop			;456b
	nop			;456c
	nop			;456d
	nop			;456e
	nop			;456f
	nop			;4570
	nop			;4571
	ex af,af'		;4572
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
	ex af,af'		;4580
	rrca			;4581
	nop			;4582
	nop			;4583
	nop			;4584
	nop			;4585
	nop			;4586
	nop			;4587
	nop			;4588
	nop			;4589
	dec b			;458a
	nop			;458b
	ld b,00fh		;458c
	nop			;458e
	nop			;458f
	nop			;4590
	nop			;4591
	nop			;4592
	nop			;4593
	nop			;4594
	nop			;4595
	dec b			;4596
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
	dec bc			;45a4
	rrca			;45a5
	inc l			;45a6
	dec b			;45a7
	jr c,l45abh		;45a8
	dec h			;45aa
l45abh:
	dec b			;45ab
l45ach:
	ld sp,00805h		;45ac
	nop			;45af
	ld a,(bc)		;45b0
	rrca			;45b1
	ld h,a			;45b2
	ld (bc),a		;45b3
	ld h,a			;45b4
	ld bc,00267h		;45b5
	ld h,a			;45b8
	ld bc,00008h		;45b9
	nop			;45bc
	nop			;45bd
	nop			;45be
	nop			;45bf
	nop			;45c0
	nop			;45c1
	nop			;45c2
	nop			;45c3
	nop			;45c4
	nop			;45c5
	nop			;45c6
	nop			;45c7
	dec c			;45c8
	rrca			;45c9
	nop			;45ca
	nop			;45cb
	nop			;45cc
	nop			;45cd
	nop			;45ce
	nop			;45cf
	nop			;45d0
	nop			;45d1
	dec b			;45d2
	nop			;45d3
	dec bc			;45d4
	rrca			;45d5
	nop			;45d6
	nop			;45d7
	nop			;45d8
	nop			;45d9
	nop			;45da
	nop			;45db
	nop			;45dc
	nop			;45dd
	ex af,af'		;45de
	nop			;45df
	ld a,(bc)		;45e0
	rrca			;45e1
	nop			;45e2
	nop			;45e3
	nop			;45e4
	nop			;45e5
	nop			;45e6
	nop			;45e7
	nop			;45e8
	nop			;45e9
	ex af,af'		;45ea
	nop			;45eb
	ld b,00fh		;45ec
	nop			;45ee
	nop			;45ef
	nop			;45f0
	nop			;45f1
	nop			;45f2
	nop			;45f3
	nop			;45f4
	nop			;45f5
	ex af,af'		;45f6
	ld a,(de)		;45f7
	nop			;45f8
	nop			;45f9
	nop			;45fa
	nop			;45fb
	nop			;45fc
	nop			;45fd
	nop			;45fe
	nop			;45ff
	nop			;4600
	nop			;4601
l4602h:
	nop			;4602
	nop			;4603
	nop			;4604
	nop			;4605
	nop			;4606
	nop			;4607
	nop			;4608
	nop			;4609
	nop			;460a
	nop			;460b
	nop			;460c
	nop			;460d
	nop			;460e
	nop			;460f
	nop			;4610
	nop			;4611
	nop			;4612
	nop			;4613
	nop			;4614
	nop			;4615
	nop			;4616
	nop			;4617
	nop			;4618
	nop			;4619
	nop			;461a
	nop			;461b
	nop			;461c
	nop			;461d
	nop			;461e
	nop			;461f
	nop			;4620
	nop			;4621
	nop			;4622
	nop			;4623
	nop			;4624
	nop			;4625
	nop			;4626
	nop			;4627
	nop			;4628
	nop			;4629
	nop			;462a
	nop			;462b
l462ch:
	nop			;462c
	nop			;462d
	nop			;462e
	nop			;462f
	nop			;4630
	nop			;4631
	nop			;4632
	nop			;4633
	nop			;4634
	nop			;4635
	nop			;4636
	nop			;4637
	nop			;4638
	nop			;4639
	nop			;463a
	nop			;463b
	nop			;463c
	nop			;463d
l463eh:
	nop			;463e
	nop			;463f
	rst 38h			;4640
	jp l4b93h		;4641
l4644h:
	inc b			;4644
	ex af,af'		;4645
l4646h:
	ex af,af'		;4646
	inc b			;4647
	inc b			;4648
	inc bc			;4649
	inc bc			;464a
	rlca			;464b
	nop			;464c
	jp m,00001h		;464d
	nop			;4650
	nop			;4651
	ex af,af'		;4652
	inc c			;4653
	nop			;4654
	nop			;4655
	nop			;4656
	nop			;4657
	ret nz			;4658
	ret nz			;4659
	ret z			;465a
	jp nz,03cf8h		;465b
	nop			;465e
	nop			;465f
	ld h,b			;4660
	nop			;4661
	nop			;4662
	nop			;4663
	ld h,b			;4664
	ld h,b			;4665
	jr l4684h		;4666
	ld c,00ch		;4668
	nop			;466a
	ld e,020h		;466b
	rra			;466d
	rla			;466e
	inc bc			;466f
	rrca			;4670
	ld c,01ch		;4671
	jr l4675h		;4673
l4675h:
	nop			;4675
	nop			;4676
	nop			;4677
	nop			;4678
	nop			;4679
	ret po			;467a
	ret p			;467b
	call p,00fdeh		;467c
	rst 38h			;467f
	ret m			;4680
	nop			;4681
	nop			;4682
	nop			;4683
l4684h:
	nop			;4684
	inc b			;4685
	ex af,af'		;4686
	ex af,af'		;4687
	inc b			;4688
	inc b			;4689
	inc bc			;468a
	dec b			;468b
	nop			;468c
	defb 0fdh,001h,007h ;illegal sequence	;468d
	nop			;4690
	nop			;4691
	djnz $+26		;4692
	nop			;4694
	nop			;4695
	nop			;4696
	nop			;4697
	nop			;4698
	ret nz			;4699
	ret z			;469a
	jp p,03ffch		;469b
	cp 0beh			;469e
	ret nz			;46a0
	nop			;46a1
	nop			;46a2
	nop			;46a3
	nop			;46a4
	ld h,b			;46a5
	ld h,b			;46a6
sub_46a7h:
	jr l46c5h		;46a7
	ld c,00ch		;46a9
	djnz $+65		;46ab
	rra			;46ad
	nop			;46ae
	ex af,af'		;46af
	ld bc,0381ch		;46b0
	jr nc,l46b5h		;46b3
l46b5h:
	nop			;46b5
	nop			;46b6
	nop			;46b7
	nop			;46b8
	nop			;46b9
	nop			;46ba
	ret c			;46bb
	or 0fdh			;46bc
	inc bc			;46be
	rlca			;46bf
	inc b			;46c0
	nop			;46c1
	nop			;46c2
	nop			;46c3
	nop			;46c4
l46c5h:
	inc b			;46c5
	ex af,af'		;46c6
	ex af,af'		;46c7
	inc b			;46c8
	inc b			;46c9
	ld bc,00107h		;46ca
	jp p,00200h		;46cd
	inc b			;46d0
	nop			;46d1
	djnz $+26		;46d2
	nop			;46d4
	nop			;46d5
	nop			;46d6
	nop			;46d7
	nop			;46d8
	ret nz			;46d9
	call pe,0e0e2h		;46da
	ret p			;46dd
	inc a			;46de
	nop			;46df
	ret nz			;46e0
	nop			;46e1
	nop			;46e2
	nop			;46e3
	nop			;46e4
	ld h,b			;46e5
	ld (hl),b		;46e6
	jr l4705h		;46e7
	ld c,00ch		;46e9
	jr l472ch		;46eb
	jr c,l4703h		;46ed
	rrca			;46ef
	rlca			;46f0
	inc c			;46f1
	jr c,l4724h		;46f2
	nop			;46f4
	nop			;46f5
	nop			;46f6
	nop			;46f7
	nop			;46f8
	nop			;46f9
	nop			;46fa
	ld b,b			;46fb
	ld a,h			;46fc
	ld a,(hl)		;46fd
	rra			;46fe
	rrca			;46ff
sub_4700h:
	rst 38h			;4700
	nop			;4701
	nop			;4702
l4703h:
	nop			;4703
	rst 38h			;4704
l4705h:
	rst 38h			;4705
l4706h:
	rst 38h			;4706
	rst 38h			;4707
	rst 38h			;4708
	rst 38h			;4709
	rst 38h			;470a
	rst 38h			;470b
	rst 38h			;470c
	rst 38h			;470d
	rst 38h			;470e
	rst 38h			;470f
	rst 38h			;4710
	rst 38h			;4711
	rst 38h			;4712
	rst 38h			;4713
	rst 38h			;4714
	rst 38h			;4715
l4716h:
	rst 38h			;4716
	rst 38h			;4717
	rst 38h			;4718
	rst 38h			;4719
	rst 38h			;471a
	rst 38h			;471b
	rst 38h			;471c
	rst 38h			;471d
	rst 38h			;471e
	rst 38h			;471f
	rst 38h			;4720
	rst 38h			;4721
	rst 38h			;4722
	rst 38h			;4723
l4724h:
	nop			;4724
	ld bc,01f07h		;4725
	rst 38h			;4728
	inc bc			;4729
	add hl,bc		;472a
	ld a,h			;472b
l472ch:
	add hl,bc		;472c
	inc bc			;472d
	rst 38h			;472e
	rra			;472f
	rlca			;4730
	ld bc,00000h		;4731
	nop			;4734
	ld d,b			;4735
	cp b			;4736
	call nc,0d8dah		;4737
	djnz l4724h		;473a
	djnz l4716h		;473c
	jp c,0b8d4h		;473e
	ld d,b			;4741
	nop			;4742
	nop			;4743
	nop			;4744
	nop			;4745
	nop			;4746
l4747h:
	inc bc			;4747
	rra			;4748
	rst 38h			;4749
	inc a			;474a
	inc bc			;474b
	rst 38h			;474c
	rra			;474d
	rlca			;474e
	ld bc,00000h		;474f
	nop			;4752
	nop			;4753
	nop			;4754
	nop			;4755
	nop			;4756
	ret nc			;4757
	ret pe			;4758
	ld d,0e8h		;4759
	jr l4747h		;475b
	call nc,0d0e8h		;475d
	nop			;4760
	nop			;4761
	nop			;4762
	nop			;4763
	nop			;4764
	nop			;4765
	nop			;4766
	nop			;4767
	nop			;4768
	rlca			;4769
	ld a,a			;476a
	rst 38h			;476b
	ld a,a			;476c
	rrca			;476d
	inc bc			;476e
	nop			;476f
	nop			;4770
	nop			;4771
	nop			;4772
	nop			;4773
	nop			;4774
	nop			;4775
	nop			;4776
	nop			;4777
	and b			;4778
	xor b			;4779
	call nc,0d4d6h		;477a
	ret pe			;477d
	ret po			;477e
	nop			;477f
	nop			;4780
	nop			;4781
	nop			;4782
	nop			;4783
	nop			;4784
	nop			;4785
	nop			;4786
	ld bc,01f07h		;4787
	rst 38h			;478a
	inc bc			;478b
	inc a			;478c
	rst 38h			;478d
	rra			;478e
	rlca			;478f
	nop			;4790
	nop			;4791
	nop			;4792
	nop			;4793
	nop			;4794
	nop			;4795
	nop			;4796
	ld d,b			;4797
	xor b			;4798
	call nc,018d6h		;4799
	ret pe			;479c
	ld d,0e8h		;479d
	ld d,b			;479f
	nop			;47a0
	nop			;47a1
	nop			;47a2
	nop			;47a3
	nop			;47a4
	nop			;47a5
	nop			;47a6
	nop			;47a7
	nop			;47a8
	nop			;47a9
	inc a			;47aa
	inc a			;47ab
	inc a			;47ac
	inc a			;47ad
	nop			;47ae
	nop			;47af
	nop			;47b0
	nop			;47b1
	nop			;47b2
	nop			;47b3
	nop			;47b4
sub_47b5h:
	nop			;47b5
	nop			;47b6
	nop			;47b7
	nop			;47b8
	nop			;47b9
	inc a			;47ba
	inc a			;47bb
	inc a			;47bc
	inc a			;47bd
	nop			;47be
	nop			;47bf
	nop			;47c0
	nop			;47c1
	nop			;47c2
	nop			;47c3
	nop			;47c4
	ld bc,00101h		;47c5
	ld bc,00101h		;47c8
	nop			;47cb
	nop			;47cc
	ld bc,00101h		;47cd
	ld bc,00101h		;47d0
	nop			;47d3
	nop			;47d4
	add a,b			;47d5
	add a,b			;47d6
	add a,b			;47d7
	add a,b			;47d8
	add a,b			;47d9
	add a,b			;47da
	nop			;47db
	nop			;47dc
	add a,b			;47dd
	add a,b			;47de
	add a,b			;47df
	add a,b			;47e0
	add a,b			;47e1
	add a,b			;47e2
	nop			;47e3
	nop			;47e4
	nop			;47e5
	nop			;47e6
	nop			;47e7
	nop			;47e8
	nop			;47e9
	inc a			;47ea
	inc a			;47eb
	inc a			;47ec
	inc a			;47ed
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
	inc a			;47fa
	inc a			;47fb
	inc a			;47fc
	inc a			;47fd
	nop			;47fe
	nop			;47ff
	nop			;4800
	nop			;4801
	nop			;4802
l4803h:
	nop			;4803
l4804h:
	nop			;4804
	nop			;4805
	nop			;4806
	nop			;4807
	nop			;4808
	nop			;4809
	nop			;480a
	nop			;480b
	nop			;480c
	nop			;480d
	nop			;480e
	nop			;480f
	nop			;4810
	nop			;4811
	nop			;4812
	nop			;4813
	nop			;4814
	nop			;4815
	nop			;4816
	nop			;4817
	nop			;4818
	nop			;4819
	nop			;481a
	nop			;481b
	nop			;481c
	nop			;481d
	nop			;481e
	nop			;481f
	nop			;4820
	nop			;4821
	nop			;4822
	nop			;4823
	nop			;4824
	nop			;4825
	nop			;4826
	jr nc,l4845h		;4827
	dec b			;4829
	dec d			;482a
	dec (hl)		;482b
	dec d			;482c
	dec b			;482d
	inc e			;482e
	jr nc,l4831h		;482f
l4831h:
	nop			;4831
	nop			;4832
	nop			;4833
	nop			;4834
	nop			;4835
	nop			;4836
	nop			;4837
	nop			;4838
	ret nz			;4839
	ret p			;483a
	call m,0c0f0h		;483b
	nop			;483e
	nop			;483f
	nop			;4840
	nop			;4841
	nop			;4842
	nop			;4843
	nop			;4844
l4845h:
	nop			;4845
	nop			;4846
	nop			;4847
	nop			;4848
	nop			;4849
	nop			;484a
	nop			;484b
	nop			;484c
	ld (bc),a		;484d
	ld e,c			;484e
	sub e			;484f
	or (hl)			;4850
	rst 8			;4851
	ld h,c			;4852
	ex af,af'		;4853
	nop			;4854
	nop			;4855
	nop			;4856
	nop			;4857
	nop			;4858
	nop			;4859
	nop			;485a
	nop			;485b
	nop			;485c
	nop			;485d
	ld b,b			;485e
	ld a,(0ec57h)		;485f
	add a,b			;4862
	nop			;4863
	nop			;4864
	nop			;4865
	nop			;4866
	nop			;4867
	nop			;4868
	nop			;4869
	ld h,b			;486a
	ret p			;486b
	ret p			;486c
	ld h,b			;486d
	nop			;486e
	nop			;486f
	nop			;4870
	nop			;4871
	nop			;4872
	nop			;4873
	nop			;4874
	nop			;4875
	nop			;4876
	nop			;4877
	nop			;4878
	nop			;4879
	nop			;487a
	nop			;487b
	nop			;487c
	nop			;487d
	nop			;487e
	nop			;487f
l4880h:
	nop			;4880
l4881h:
	nop			;4881
l4882h:
	nop			;4882
	nop			;4883
	nop			;4884
	nop			;4885
	inc bc			;4886
	rrca			;4887
	inc e			;4888
	jr l48bbh		;4889
	jr nc,l48bdh		;488b
	jr nc,l48a7h		;488d
	inc e			;488f
	rrca			;4890
	inc bc			;4891
	nop			;4892
	nop			;4893
	nop			;4894
	nop			;4895
	ret nz			;4896
	ret p			;4897
	jr c,l48b2h		;4898
	inc c			;489a
	inc c			;489b
	inc c			;489c
	inc c			;489d
	jr l48d8h		;489e
	ret p			;48a0
	ret nz			;48a1
	nop			;48a2
	nop			;48a3
	nop			;48a4
	nop			;48a5
	inc bc			;48a6
l48a7h:
	inc c			;48a7
	inc de			;48a8
	rla			;48a9
	ld l,02ch		;48aa
	inc l			;48ac
	ld l,017h		;48ad
	inc de			;48af
	inc c			;48b0
	inc bc			;48b1
l48b2h:
	nop			;48b2
	nop			;48b3
	nop			;48b4
	nop			;48b5
	ret nz			;48b6
	jr nc,l4881h		;48b7
	ret pe			;48b9
	ld (hl),h		;48ba
l48bbh:
	inc (hl)		;48bb
	inc (hl)		;48bc
l48bdh:
	ld (hl),h		;48bd
	ret pe			;48be
	ret z			;48bf
	jr nc,l4882h		;48c0
	nop			;48c2
l48c3h:
	nop			;48c3
	nop			;48c4
	inc bc			;48c5
	rrca			;48c6
	ld e,038h		;48c7
	jr nc,$+114		;48c9
	ld h,b			;48cb
	ld h,b			;48cc
	ld (hl),b		;48cd
	jr nc,l4908h		;48ce
	ld e,00fh		;48d0
	inc bc			;48d2
	nop			;48d3
	nop			;48d4
	ret nz			;48d5
	ret p			;48d6
	ld a,b			;48d7
l48d8h:
	inc e			;48d8
	inc c			;48d9
	ld c,006h		;48da
	ld b,00eh		;48dc
	inc c			;48de
	inc e			;48df
	ld a,b			;48e0
	ret p			;48e1
	ret nz			;48e2
	nop			;48e3
	nop			;48e4
	inc bc			;48e5
	inc c			;48e6
	ld de,02826h		;48e7
	ld c,b			;48ea
	ld d,b			;48eb
	ld d,b			;48ec
	ld c,b			;48ed
	jr z,l4916h		;48ee
	ld de,0030ch		;48f0
	nop			;48f3
	nop			;48f4
	ret nz			;48f5
	jr nc,l4880h		;48f6
	ld h,h			;48f8
	inc d			;48f9
	ld (de),a		;48fa
	ld a,(bc)		;48fb
	ld a,(bc)		;48fc
	ld (de),a		;48fd
	inc d			;48fe
	ld h,h			;48ff
	adc a,b			;4900
	jr nc,l48c3h		;4901
l4903h:
	nop			;4903
l4904h:
	inc bc			;4904
	rlca			;4905
	inc c			;4906
	nop			;4907
l4908h:
	jr nz,l496ah		;4908
	ret nz			;490a
	ret nz			;490b
	ret nz			;490c
	ret nz			;490d
	ld h,b			;490e
	jr nz,l4911h		;490f
l4911h:
	inc c			;4911
	rlca			;4912
	inc bc			;4913
	ret nz			;4914
	ret po			;4915
l4916h:
	jr nc,l4918h		;4916
l4918h:
	inc b			;4918
	ld b,003h		;4919
	inc bc			;491b
	inc bc			;491c
	inc bc			;491d
	ld b,004h		;491e
	nop			;4920
	jr nc,l4903h		;4921
	ret nz			;4923
	inc bc			;4924
	inc b			;4925
	nop			;4926
	nop			;4927
	nop			;4928
	ld b,b			;4929
	add a,b			;492a
	add a,b			;492b
	add a,b			;492c
	add a,b			;492d
	ld b,b			;492e
	nop			;492f
	nop			;4930
	nop			;4931
	inc b			;4932
	inc bc			;4933
	ret nz			;4934
	jr nz,l4937h		;4935
l4937h:
	nop			;4937
	nop			;4938
	ld (bc),a		;4939
	ld bc,00101h		;493a
	ld bc,00002h		;493d
	nop			;4940
	nop			;4941
	jr nz,l4904h		;4942
	nop			;4944
	ld bc,00000h		;4945
	nop			;4948
	nop			;4949
	nop			;494a
	nop			;494b
	nop			;494c
	nop			;494d
	nop			;494e
	nop			;494f
	nop			;4950
	nop			;4951
	nop			;4952
	nop			;4953
	nop			;4954
	nop			;4955
	nop			;4956
	nop			;4957
	nop			;4958
	nop			;4959
	nop			;495a
	nop			;495b
	nop			;495c
	nop			;495d
	nop			;495e
	nop			;495f
	nop			;4960
	nop			;4961
	nop			;4962
	nop			;4963
	nop			;4964
	nop			;4965
	nop			;4966
	nop			;4967
	nop			;4968
	nop			;4969
l496ah:
	nop			;496a
	nop			;496b
	nop			;496c
	nop			;496d
	nop			;496e
	nop			;496f
	nop			;4970
	nop			;4971
	nop			;4972
	nop			;4973
	nop			;4974
	nop			;4975
	nop			;4976
	nop			;4977
	nop			;4978
	nop			;4979
	nop			;497a
	nop			;497b
	nop			;497c
	nop			;497d
	nop			;497e
	nop			;497f
	nop			;4980
	nop			;4981
	nop			;4982
	nop			;4983
	nop			;4984
	nop			;4985
	nop			;4986
	nop			;4987
	nop			;4988
	nop			;4989
	nop			;498a
	nop			;498b
	nop			;498c
	nop			;498d
	nop			;498e
	call m,0fcc6h		;498f
	call z,000c6h		;4992
	nop			;4995
	nop			;4996
	inc bc			;4997
	ld b,006h		;4998
	ld b,003h		;499a
	nop			;499c
	nop			;499d
	nop			;499e
	ld a,h			;499f
	ld h,b			;49a0
	ld sp,hl		;49a1
	ld h,c			;49a2
	ld a,l			;49a3
	nop			;49a4
	nop			;49a5
	nop			;49a6
	di			;49a7
	inc bc			;49a8
	rst 30h			;49a9
	inc sp			;49aa
	di			;49ab
	nop			;49ac
	nop			;49ad
	nop			;49ae
	ld (hl),c		;49af
	exx			;49b0
	adc a,l			;49b1
	defb 0fdh,08dh ;adc a,iyl	;49b2
	nop			;49b4
	nop			;49b5
	nop			;49b6
	rst 28h			;49b7
	inc bc			;49b8
	jp 0e303h		;49b9
	nop			;49bc
	nop			;49bd
	nop			;49be
	pop af			;49bf
	sbc a,b			;49c0
	adc a,h			;49c1
	sbc a,b			;49c2
	pop af			;49c3
	nop			;49c4
	nop			;49c5
	nop			;49c6
	ret nz			;49c7
	nop			;49c8
	nop			;49c9
	nop			;49ca
	nop			;49cb
	nop			;49cc
	nop			;49cd
	nop			;49ce
	adc a,h			;49cf
	ret c			;49d0
	ld (hl),b		;49d1
	ret po			;49d2
	ret nz			;49d3
	nop			;49d4
	nop			;49d5
	nop			;49d6
	nop			;49d7
	nop			;49d8
	nop			;49d9
	nop			;49da
	nop			;49db
	nop			;49dc
	nop			;49dd
	inc sp			;49de
	ld (hl),a		;49df
	ld (hl),a		;49e0
	ld h,(hl)		;49e1
	nop			;49e2
	call z,00000h		;49e3
	nop			;49e6
	nop			;49e7
	nop			;49e8
	nop			;49e9
	ld a,(hl)		;49ea
	ret nz			;49eb
	sbc a,0c6h		;49ec
	ld a,(hl)		;49ee
	nop			;49ef
	nop			;49f0
	nop			;49f1
	nop			;49f2
	nop			;49f3
	nop			;49f4
	nop			;49f5
	nop			;49f6
	nop			;49f7
	nop			;49f8
	nop			;49f9
	ld a,h			;49fa
	add a,0c6h		;49fb
	add a,07ch		;49fd
	nop			;49ff
	nop			;4a00
	nop			;4a01
	nop			;4a02
	nop			;4a03
	nop			;4a04
	nop			;4a05
	nop			;4a06
	nop			;4a07
	nop			;4a08
	nop			;4a09
sub_4a0ah:
	nop			;4a0a
	nop			;4a0b
	nop			;4a0c
	nop			;4a0d
	nop			;4a0e
	nop			;4a0f
	nop			;4a10
	nop			;4a11
	nop			;4a12
	nop			;4a13
	nop			;4a14
	nop			;4a15
	nop			;4a16
	nop			;4a17
	nop			;4a18
	nop			;4a19
	nop			;4a1a
	nop			;4a1b
	nop			;4a1c
	nop			;4a1d
	nop			;4a1e
	nop			;4a1f
	nop			;4a20
	nop			;4a21
	nop			;4a22
	nop			;4a23
	nop			;4a24
	nop			;4a25
	nop			;4a26
	nop			;4a27
	nop			;4a28
	nop			;4a29
	nop			;4a2a
	nop			;4a2b
	nop			;4a2c
	nop			;4a2d
	nop			;4a2e
	nop			;4a2f
	nop			;4a30
	nop			;4a31
	nop			;4a32
	nop			;4a33
	nop			;4a34
	nop			;4a35
	nop			;4a36
	nop			;4a37
	nop			;4a38
	nop			;4a39
	nop			;4a3a
	nop			;4a3b
	nop			;4a3c
	nop			;4a3d
	nop			;4a3e
	nop			;4a3f
	nop			;4a40
	nop			;4a41
	nop			;4a42
	nop			;4a43
	nop			;4a44
	nop			;4a45
	nop			;4a46
	nop			;4a47
	nop			;4a48
	nop			;4a49
	nop			;4a4a
	nop			;4a4b
	nop			;4a4c
	nop			;4a4d
	nop			;4a4e
	nop			;4a4f
	nop			;4a50
	nop			;4a51
	nop			;4a52
	nop			;4a53
	nop			;4a54
	nop			;4a55
	nop			;4a56
	nop			;4a57
	nop			;4a58
	nop			;4a59
	nop			;4a5a
	nop			;4a5b
	nop			;4a5c
	nop			;4a5d
	nop			;4a5e
	nop			;4a5f
	nop			;4a60
	nop			;4a61
l4a62h:
	nop			;4a62
	nop			;4a63
	nop			;4a64
	nop			;4a65
	nop			;4a66
	nop			;4a67
	nop			;4a68
	nop			;4a69
	nop			;4a6a
	nop			;4a6b
	nop			;4a6c
	nop			;4a6d
	nop			;4a6e
	nop			;4a6f
	nop			;4a70
	nop			;4a71
	nop			;4a72
	nop			;4a73
	nop			;4a74
	nop			;4a75
	nop			;4a76
	nop			;4a77
	nop			;4a78
	nop			;4a79
	nop			;4a7a
	nop			;4a7b
	nop			;4a7c
	nop			;4a7d
	nop			;4a7e
	nop			;4a7f
	nop			;4a80
	nop			;4a81
	nop			;4a82
	nop			;4a83
	nop			;4a84
	nop			;4a85
	nop			;4a86
	nop			;4a87
	nop			;4a88
	nop			;4a89
	nop			;4a8a
	nop			;4a8b
	nop			;4a8c
	nop			;4a8d
	nop			;4a8e
	nop			;4a8f
	nop			;4a90
l4a91h:
	nop			;4a91
	nop			;4a92
	nop			;4a93
	nop			;4a94
	nop			;4a95
	nop			;4a96
	nop			;4a97
	nop			;4a98
	nop			;4a99
	nop			;4a9a
	nop			;4a9b
	nop			;4a9c
	nop			;4a9d
	nop			;4a9e
	nop			;4a9f
	nop			;4aa0
	nop			;4aa1
	nop			;4aa2
l4aa3h:
	nop			;4aa3
	nop			;4aa4
	nop			;4aa5
	nop			;4aa6
	nop			;4aa7
	nop			;4aa8
	nop			;4aa9
	nop			;4aaa
l4aabh:
	nop			;4aab
	nop			;4aac
	nop			;4aad
	nop			;4aae
	nop			;4aaf
	nop			;4ab0
	nop			;4ab1
	nop			;4ab2
	nop			;4ab3
	nop			;4ab4
	nop			;4ab5
	nop			;4ab6
	nop			;4ab7
	nop			;4ab8
	nop			;4ab9
	nop			;4aba
	nop			;4abb
	nop			;4abc
	nop			;4abd
	nop			;4abe
	nop			;4abf
	nop			;4ac0
	nop			;4ac1
	nop			;4ac2
	nop			;4ac3
	nop			;4ac4
	nop			;4ac5
	nop			;4ac6
	nop			;4ac7
	nop			;4ac8
	nop			;4ac9
	nop			;4aca
	nop			;4acb
	nop			;4acc
	nop			;4acd
	nop			;4ace
	nop			;4acf
	nop			;4ad0
	nop			;4ad1
	nop			;4ad2
	nop			;4ad3
	nop			;4ad4
	nop			;4ad5
	nop			;4ad6
	nop			;4ad7
	nop			;4ad8
	nop			;4ad9
	nop			;4ada
	nop			;4adb
	nop			;4adc
	nop			;4add
	nop			;4ade
	nop			;4adf
	nop			;4ae0
	nop			;4ae1
	nop			;4ae2
	nop			;4ae3
	nop			;4ae4
	nop			;4ae5
	nop			;4ae6
	nop			;4ae7
	nop			;4ae8
	nop			;4ae9
	nop			;4aea
	nop			;4aeb
	nop			;4aec
	nop			;4aed
	nop			;4aee
	nop			;4aef
	nop			;4af0
	nop			;4af1
	nop			;4af2
	nop			;4af3
	nop			;4af4
	nop			;4af5
	nop			;4af6
	nop			;4af7
	nop			;4af8
	nop			;4af9
	nop			;4afa
	nop			;4afb
	nop			;4afc
	nop			;4afd
	nop			;4afe
	nop			;4aff
	nop			;4b00
	nop			;4b01
	nop			;4b02
	nop			;4b03
	nop			;4b04
	nop			;4b05
	nop			;4b06
	nop			;4b07
	nop			;4b08
	nop			;4b09
	nop			;4b0a
	nop			;4b0b
	nop			;4b0c
	nop			;4b0d
	nop			;4b0e
	nop			;4b0f
	nop			;4b10
	nop			;4b11
	nop			;4b12
	nop			;4b13
	nop			;4b14
	nop			;4b15
	nop			;4b16
	nop			;4b17
	nop			;4b18
	nop			;4b19
	nop			;4b1a
	nop			;4b1b
	nop			;4b1c
	nop			;4b1d
	nop			;4b1e
	nop			;4b1f
	nop			;4b20
	nop			;4b21
	nop			;4b22
	nop			;4b23
	nop			;4b24
	nop			;4b25
	nop			;4b26
	nop			;4b27
	jr nc,l4b42h		;4b28
	dec a			;4b2a
	defb 0edh ;next byte illegal after ed	;4b2b
	defb 0edh ;next byte illegal after ed	;4b2c
	dec a			;4b2d
	jr l4b60h		;4b2e
	nop			;4b30
	nop			;4b31
	nop			;4b32
	nop			;4b33
	nop			;4b34
	nop			;4b35
	nop			;4b36
	nop			;4b37
	nop			;4b38
	nop			;4b39
	ld a,b			;4b3a
	ld a,(hl)		;4b3b
	ld a,(hl)		;4b3c
	ld a,b			;4b3d
	nop			;4b3e
	nop			;4b3f
	nop			;4b40
	nop			;4b41
l4b42h:
	nop			;4b42
	nop			;4b43
	nop			;4b44
	ld b,b			;4b45
	ld d,b			;4b46
	ld (hl),b		;4b47
	jr c,l4b92h		;4b48
l4b4ah:
	ld l,b			;4b4a
	ld a,h			;4b4b
	inc a			;4b4c
	jr l4b5bh		;4b4d
	ld (bc),a		;4b4f
	djnz l4b72h		;4b50
	jr nz,l4b4ah		;4b52
	nop			;4b54
	nop			;4b55
	ld b,012h		;4b56
	inc d			;4b58
	inc (hl)		;4b59
	inc a			;4b5a
l4b5bh:
	inc h			;4b5b
	ld l,b			;4b5c
	ld a,b			;4b5d
	ld h,b			;4b5e
	ld b,b			;4b5f
l4b60h:
	nop			;4b60
	nop			;4b61
	nop			;4b62
	xor (hl)		;4b63
	ld h,b			;4b64
	cp b			;4b65
	xor b			;4b66
	adc a,b			;4b67
	call m,0b4b4h		;4b68
	add a,d			;4b6b
	sbc a,066h		;4b6c
	dec sp			;4b6e
	dec b			;4b6f
	ld (bc),a		;4b70
	nop			;4b71
l4b72h:
	ld (bc),a		;4b72
	add hl,de		;4b73
	nop			;4b74
	rlca			;4b75
	rrca			;4b76
	dec l			;4b77
	ld l,d			;4b78
	jp z,0dadeh		;4b79
	sub h			;4b7c
	cp h			;4b7d
	sub b			;4b7e
	and b			;4b7f
	ret nz			;4b80
	nop			;4b81
	xor b			;4b82
	ld d,d			;4b83
	or 020h			;4b84
	jr nz,l4b98h		;4b86
	ld (bc),a		;4b88
	inc b			;4b89
	ld a,(bc)		;4b8a
	ld e,03eh		;4b8b
	ld l,(hl)		;4b8d
	ld c,(hl)		;4b8e
	ld a,07ch		;4b8f
	ld d,b			;4b91
l4b92h:
	ld b,b			;4b92
l4b93h:
	nop			;4b93
	xor b			;4b94
	nop			;4b95
	nop			;4b96
	nop			;4b97
l4b98h:
	ld (hl),b		;4b98
	jr c,$+58		;4b99
l4b9bh:
	inc l			;4b9b
	ld h,01eh		;4b9c
	ld d,004h		;4b9e
	ld (bc),a		;4ba0
	ld b,000h		;4ba1
	nop			;4ba3
	add hl,de		;4ba4
	ld (bc),a		;4ba5
	ld (bc),a		;4ba6
	ld (bc),a		;4ba7
	dec b			;4ba8
	dec de			;4ba9
	ld (hl),l		;4baa
	ld a,l			;4bab
	ld b,c			;4bac
	sub l			;4bad
	or l			;4bae
	ld a,c			;4baf
	add a,e			;4bb0
	xor b			;4bb1
	cp b			;4bb2
	ld h,b			;4bb3
	ld d,h			;4bb4
	xor b			;4bb5
	add a,b			;4bb6
	ret nz			;4bb7
	cp h			;4bb8
	call nc,sub_577eh	;4bb9
	ld e,c			;4bbc
	dec a			;4bbd
	dec hl			;4bbe
	ld a,(de)		;4bbf
	dec c			;4bc0
	rrca			;4bc1
	rlca			;4bc2
l4bc3h:
	nop			;4bc3
	nop			;4bc4
	ld b,00dh		;4bc5
	ld (bc),a		;4bc7
	ld e,01ah		;4bc8
l4bcah:
	ld (de),a		;4bca
	inc de			;4bcb
	rra			;4bcc
	inc c			;4bcd
	ld b,002h		;4bce
	djnz l4bf2h		;4bd0
	jr nz,l4bcah		;4bd2
	nop			;4bd4
	nop			;4bd5
	ld h,b			;4bd6
	jr nz,$-14		;4bd7
	ret pe			;4bd9
	ld l,b			;4bda
	jr l4c2dh		;4bdb
	ld (hl),b		;4bdd
	ld b,b			;4bde
	nop			;4bdf
l4be0h:
	nop			;4be0
	nop			;4be1
	nop			;4be2
	xor (hl)		;4be3
	ld b,009h		;4be4
l4be6h:
	ld (bc),a		;4be6
	ld de,02d2fh		;4be7
l4beah:
	dec l			;4bea
	inc b			;4beb
	cpl			;4bec
	inc sp			;4bed
	add hl,de		;4bee
	dec b			;4bef
	ld (bc),a		;4bf0
	nop			;4bf1
l4bf2h:
	ld (bc),a		;4bf2
	add hl,de		;4bf3
	nop			;4bf4
	ld (hl),b		;4bf5
	ld (hl),b		;4bf6
	ld e,b			;4bf7
	ld c,016h		;4bf8
	or 0e4h			;4bfa
	xor h			;4bfc
	call pe,0d0b8h		;4bfd
	add a,b			;4c00
	nop			;4c01
	xor b			;4c02
	ld d,d			;4c03
	or 020h			;4c04
	jr nz,l4c18h		;4c06
	ld (bc),a		;4c08
	ld b,004h		;4c09
	rrca			;4c0b
	dec de			;4c0c
	ld (de),a		;4c0d
	ld (bc),a		;4c0e
	ld c,002h		;4c0f
	dec b			;4c11
	ld b,000h		;4c12
	xor b			;4c14
	nop			;4c15
	nop			;4c16
	nop			;4c17
l4c18h:
	nop			;4c18
	ld b,b			;4c19
	ld (hl),b		;4c1a
	ld d,b			;4c1b
	djnz $+98		;4c1c
	ret po			;4c1e
	or b			;4c1f
	ret po			;4c20
	ld b,b			;4c21
l4c22h:
	nop			;4c22
	nop			;4c23
	add hl,de		;4c24
	ld (bc),a		;4c25
	ld (bc),a		;4c26
	ld (bc),a		;4c27
	dec b			;4c28
	dec c			;4c29
	dec de			;4c2a
l4c2bh:
	scf			;4c2b
	inc (hl)		;4c2c
l4c2dh:
	dec l			;4c2d
	dec a			;4c2e
	rra			;4c2f
	dec e			;4c30
	ld a,(bc)		;4c31
	add hl,bc		;4c32
	ld b,054h		;4c33
	xor b			;4c35
	add a,b			;4c36
	add a,b			;4c37
	ret nz			;4c38
	ret p			;4c39
	ret pe			;4c3a
	ret m			;4c3b
	ret pe			;4c3c
	cp b			;4c3d
	jr l4c98h		;4c3e
	ret c			;4c40
	ld (hl),b		;4c41
	ld (hl),b		;4c42
	nop			;4c43
	ld bc,00804h		;4c44
	inc de			;4c47
	daa			;4c48
	inc c			;4c49
	ld e,b			;4c4a
	ld bc,0013eh		;4c4b
	inc (hl)		;4c4e
	ld sp,03031h		;4c4f
	ld (hl),c		;4c52
	pop af			;4c53
	add a,b			;4c54
	and b			;4c55
	djnz l4be0h		;4c56
	call nz,01a30h		;4c58
	add a,b			;4c5b
	ld a,h			;4c5c
	add a,b			;4c5d
	ld h,0cch		;4c5e
	call z,0ce0ch		;4c60
	rst 8			;4c63
	inc bc			;4c64
	dec bc			;4c65
	rla			;4c66
	dec l			;4c67
	ld e,e			;4c68
	rst 30h			;4c69
	and l			;4c6a
	cp 043h			;4c6b
	ld a,06bh		;4c6d
	ld l,d			;4c6f
	ld l,d			;4c70
	ld l,c			;4c71
	xor d			;4c72
	ld hl,(0d0c0h)		;4c73
	xor b			;4c76
	call nz,08bf0h		;4c77
	and l			;4c7a
	ld a,a			;4c7b
	jp nz,0d27eh		;4c7c
	halt			;4c7f
	halt			;4c80
	sub 075h		;4c81
	ld (hl),h		;4c83
	ld (hl),b		;4c84
	or c			;4c85
l4c86h:
	pop de			;4c86
	ret p			;4c87
	pop af			;4c88
	ld (hl),c		;4c89
	ld (hl),b		;4c8a
	ld (hl),c		;4c8b
	ld sp,01110h		;4c8c
	add hl,bc		;4c8f
l4c90h:
	ex af,af'		;4c90
	ex af,af'		;4c91
	ex af,af'		;4c92
	nop			;4c93
	ld c,0cdh		;4c94
	rrc a			;4c96
l4c98h:
	rst 8			;4c98
	adc a,00eh		;4c99
	adc a,(hl)		;4c9b
	adc a,h			;4c9c
	ex af,af'		;4c9d
	ex af,af'		;4c9e
	djnz l4cb1h		;4c9f
	djnz l4cb3h		;4ca1
	nop			;4ca3
	xor l			;4ca4
	xor 06ah		;4ca5
sub_4ca7h:
	add hl,hl		;4ca7
	ld hl,(0b9aah)		;4ca8
	sbc a,d			;4cab
	ld e,d			;4cac
	add hl,sp		;4cad
	ld a,(01d1eh)		;4cae
l4cb1h:
	inc e			;4cb1
	inc d			;4cb2
l4cb3h:
	ex af,af'		;4cb3
	push af			;4cb4
	ld (hl),a		;4cb5
	halt			;4cb6
	call nc,sub_7574h	;4cb7
	defb 0ddh,0d9h,0dah ;illegal sequence	;4cba
	sbc a,h			;4cbd
	sbc a,h			;4cbe
	cp b			;4cbf
	jr c,l4cfah		;4cc0
	jr z,l4cd4h		;4cc2
	nop			;4cc4
	ld c,02ah		;4cc5
	ld a,h			;4cc7
	adc a,d			;4cc8
	ei			;4cc9
	ld b,001h		;4cca
	inc bc			;4ccc
	ld b,0fbh		;4ccd
	xor 07ch		;4ccf
	ld hl,(0000eh)		;4cd1
l4cd4h:
	nop			;4cd4
l4cd5h:
	ret nz			;4cd5
	ret p			;4cd6
l4cd7h:
	ld b,b			;4cd7
	ret po			;4cd8
l4cd9h:
	ld a,040h		;4cd9
l4cdbh:
	nop			;4cdb
	nop			;4cdc
	ld b,b			;4cdd
	ld a,0e0h		;4cde
	ld b,b			;4ce0
	ret p			;4ce1
	ret nz			;4ce2
	nop			;4ce3
	rlca			;4ce4
	add hl,de		;4ce5
	ld b,027h		;4ce6
	or e			;4ce8
	rst 18h			;4ce9
	nop			;4cea
	ld c,00ch		;4ceb
	nop			;4ced
	rst 18h			;4cee
	or e			;4cef
	daa			;4cf0
	dec a			;4cf1
	add hl,de		;4cf2
	rlca			;4cf3
	add a,b			;4cf4
	cp b			;4cf5
	adc a,(hl)		;4cf6
	ret nz			;4cf7
	ret m			;4cf8
	pop af			;4cf9
l4cfah:
	add a,b			;4cfa
l4cfbh:
	jr nz,$+34		;4cfb
	add a,b			;4cfd
	pop af			;4cfe
	ret m			;4cff
l4d00h:
	ret nz			;4d00
	adc a,(hl)		;4d01
l4d02h:
	cp b			;4d02
	add a,b			;4d03
	nop			;4d04
	nop			;4d05
l4d06h:
	ld bc,00c05h		;4d06
	ld hl,00602h		;4d09
	ld b,003h		;4d0c
	jr nz,l4d1ch		;4d0e
	dec b			;4d10
	ld bc,00000h		;4d11
	nop			;4d14
	add a,b			;4d15
	ret nz			;4d16
	and b			;4d17
	ld c,b			;4d18
l4d19h:
	add a,h			;4d19
sub_4d1ah:
	halt			;4d1a
	sbc a,b			;4d1b
l4d1ch:
	jp m,08476h		;4d1c
	ld c,b			;4d1f
	and b			;4d20
	ret nz			;4d21
	add a,b			;4d22
	nop			;4d23
	ld bc,01e03h		;4d24
	ld e,d			;4d27
	pop hl			;4d28
	rst 18h			;4d29
	dec h			;4d2a
	nop			;4d2b
	ex af,af'		;4d2c
	inc h			;4d2d
	rst 8			;4d2e
	di			;4d2f
	ld e,d			;4d30
	ld e,003h		;4d31
	ld bc,l60e0h		;4d33
	jr nc,l4d00h		;4d36
	sub 0cbh		;4d38
	ld sp,hl		;4d3a
	ret m			;4d3b
	defb 0fdh,079h,08bh ;illegal sequence	;4d3c
	or 0d8h			;4d3f
	jr nc,l4da3h		;4d41
	ret po			;4d43
	nop			;4d44
	rlca			;4d45
	rra			;4d46
l4d47h:
	ld bc,01f0eh		;4d47
	ld (bc),a		;4d4a
	nop			;4d4b
	nop			;4d4c
	ld (bc),a		;4d4d
	rra			;4d4e
	ld c,001h		;4d4f
	rra			;4d51
	rlca			;4d52
	nop			;4d53
sub_4d54h:
	ret nz			;4d54
	inc a			;4d55
	inc h			;4d56
	ret nz			;4d57
	cp b			;4d58
	nop			;4d59
	sbc a,h			;4d5a
	sub b			;4d5b
	inc b			;4d5c
	sbc a,h			;4d5d
	nop			;4d5e
	cp b			;4d5f
	ret nz			;4d60
	inc h			;4d61
	inc a			;4d62
	ret nz			;4d63
	inc bc			;4d64
	jr c,l4d47h		;4d65
	ld b,03fh		;4d67
	add hl,de		;4d69
	nop			;4d6a
	nop			;4d6b
	nop			;4d6c
	nop			;4d6d
	add hl,de		;4d6e
	ccf			;4d6f
	ld b,0e0h		;4d70
	jr c,$+5		;4d72
	nop			;4d74
	call po,0c0ffh		;4d75
	nop			;4d78
	ld h,e			;4d79
sub_4d7ah:
	ld h,b			;4d7a
	ld h,b			;4d7b
	ret p			;4d7c
	ld h,b			;4d7d
	ld h,e			;4d7e
	nop			;4d7f
	ret nz			;4d80
	rst 38h			;4d81
	call po,00000h		;4d82
	inc bc			;4d85
	rrca			;4d86
	nop			;4d87
	rlca			;4d88
sub_4d89h:
	ld a,a			;4d89
	add a,c			;4d8a
	nop			;4d8b
	nop			;4d8c
	add a,c			;4d8d
	ld a,a			;4d8e
	rlca			;4d8f
	nop			;4d90
	rrca			;4d91
	inc bc			;4d92
	nop			;4d93
	ld h,b			;4d94
	or b			;4d95
	ret c			;4d96
	ret m			;4d97
l4d98h:
	ld (hl),h		;4d98
l4d99h:
	cp (hl)			;4d99
l4d9ah:
	ld (bc),a		;4d9a
	ld c,h			;4d9b
	ld a,h			;4d9c
l4d9dh:
	ld (bc),a		;4d9d
	cp (hl)			;4d9e
	ld (hl),h		;4d9f
l4da0h:
	ret m			;4da0
	ret c			;4da1
	or b			;4da2
l4da3h:
	ld h,b			;4da3
	ld bc,l7c1fh		;4da4
	inc bc			;4da7
	jr l4d9dh		;4da8
	nop			;4daa
	nop			;4dab
	nop			;4dac
	nop			;4dad
	di			;4dae
	jr $+5			;4daf
	ld a,h			;4db1
	rra			;4db2
	ld bc,0c880h		;4db3
l4db6h:
	call po,0cf66h		;4db6
	ld h,a			;4db9
	add hl,sp		;4dba
	ld sp,03901h		;4dbb
	ld h,a			;4dbe
	rst 8			;4dbf
	ld h,(hl)		;4dc0
l4dc1h:
	call po,080c8h		;4dc1
	nop			;4dc4
	nop			;4dc5
	nop			;4dc6
	nop			;4dc7
	nop			;4dc8
	nop			;4dc9
	nop			;4dca
	nop			;4dcb
	nop			;4dcc
	nop			;4dcd
	nop			;4dce
	nop			;4dcf
	nop			;4dd0
	nop			;4dd1
	nop			;4dd2
	nop			;4dd3
	nop			;4dd4
	nop			;4dd5
	nop			;4dd6
	nop			;4dd7
	nop			;4dd8
	nop			;4dd9
	nop			;4dda
	nop			;4ddb
	nop			;4ddc
	nop			;4ddd
	nop			;4dde
	nop			;4ddf
l4de0h:
	nop			;4de0
	nop			;4de1
	nop			;4de2
	nop			;4de3
	nop			;4de4
	nop			;4de5
	nop			;4de6
	nop			;4de7
	nop			;4de8
	nop			;4de9
	nop			;4dea
	nop			;4deb
	nop			;4dec
	nop			;4ded
	nop			;4dee
	nop			;4def
	nop			;4df0
	nop			;4df1
	nop			;4df2
	nop			;4df3
	nop			;4df4
	nop			;4df5
	nop			;4df6
	nop			;4df7
	nop			;4df8
l4df9h:
	nop			;4df9
	nop			;4dfa
	nop			;4dfb
	nop			;4dfc
	nop			;4dfd
	nop			;4dfe
	nop			;4dff
	nop			;4e00
	nop			;4e01
	nop			;4e02
	nop			;4e03
l4e04h:
	inc bc			;4e04
	inc a			;4e05
	inc h			;4e06
	inc bc			;4e07
	nop			;4e08
	ret nz			;4e09
	nop			;4e0a
	ld a,000h		;4e0b
	nop			;4e0d
	ret nz			;4e0e
	nop			;4e0f
	inc bc			;4e10
	inc h			;4e11
	inc a			;4e12
	inc bc			;4e13
	ret nz			;4e14
	inc a			;4e15
	inc h			;4e16
	ret nz			;4e17
	ld b,070h		;4e18
	jr nz,l4e1ch		;4e1a
l4e1ch:
	jr nz,l4e3eh		;4e1c
	ld (hl),b		;4e1e
	inc bc			;4e1f
	ret nz			;4e20
	inc h			;4e21
	inc a			;4e22
	ret nz			;4e23
	nop			;4e24
	dec de			;4e25
	in a,(000h)		;4e26
	dec e			;4e28
	nop			;4e29
	ccf			;4e2a
	ld b,c			;4e2b
	ld a,a			;4e2c
	ccf			;4e2d
	nop			;4e2e
	dec e			;4e2f
	nop			;4e30
	in a,(01bh)		;4e31
	nop			;4e33
	nop			;4e34
	ret c			;4e35
	in a,(002h)		;4e36
	cp b			;4e38
	nop			;4e39
	nop			;4e3a
	add a,b			;4e3b
	add a,b			;4e3c
	nop			;4e3d
l4e3eh:
	nop			;4e3e
	cp b			;4e3f
	ld (bc),a		;4e40
	in a,(0d8h)		;4e41
	nop			;4e43
	jr nz,l4e73h		;4e44
	dec hl			;4e46
	dec hl			;4e47
	dec l			;4e48
	dec l			;4e49
	inc l			;4e4a
	cpl			;4e4b
	dec l			;4e4c
	dec l			;4e4d
	dec hl			;4e4e
	dec l			;4e4f
	dec l			;4e50
	inc l			;4e51
	jr nz,$+34		;4e52
	jr nz,$+34		;4e54
	jr nz,$+45		;4e56
	dec l			;4e58
	inc l			;4e59
	cpl			;4e5a
	dec l			;4e5b
	dec hl			;4e5c
	dec hl			;4e5d
	dec l			;4e5e
	inc l			;4e5f
	jr nz,l4e82h		;4e60
	jr nz,l4e84h		;4e62
	jr nz,l4e86h		;4e64
	jr nz,l4e88h		;4e66
	cpl			;4e68
	dec hl			;4e69
	dec l			;4e6a
	dec l			;4e6b
	inc l			;4e6c
	inc l			;4e6d
	cpl			;4e6e
	jr nz,l4e91h		;4e6f
	jr nz,$+34		;4e71
l4e73h:
	jr nz,$+34		;4e73
	jr nz,$+34		;4e75
	dec hl			;4e77
	dec l			;4e78
	inc l			;4e79
	inc l			;4e7a
	dec l			;4e7b
	cpl			;4e7c
	inc l			;4e7d
	dec l			;4e7e
	dec l			;4e7f
	jr nz,l4ea2h		;4e80
l4e82h:
	jr nz,l4ea4h		;4e82
l4e84h:
	jr nz,l4eb3h		;4e84
l4e86h:
	dec hl			;4e86
	dec hl			;4e87
l4e88h:
	dec l			;4e88
	dec l			;4e89
	inc l			;4e8a
	ld hl,(02d2dh)		;4e8b
	dec hl			;4e8e
	dec l			;4e8f
	dec l			;4e90
l4e91h:
	inc l			;4e91
	jr nz,$+34		;4e92
	jr nz,$+34		;4e94
	jr nz,$+45		;4e96
	dec l			;4e98
	inc l			;4e99
	ld hl,(02b2dh)		;4e9a
	dec hl			;4e9d
	dec l			;4e9e
	inc l			;4e9f
	jr nz,l4ec2h		;4ea0
l4ea2h:
	jr nz,l4ec4h		;4ea2
l4ea4h:
	jr nz,l4ec6h		;4ea4
	jr nz,l4ec8h		;4ea6
	ld hl,(02d2bh)		;4ea8
	dec l			;4eab
	inc l			;4eac
	inc l			;4ead
	ld hl,(02020h)		;4eae
	jr nz,$+34		;4eb1
l4eb3h:
	jr nz,l4ed5h		;4eb3
l4eb5h:
	jr nz,l4ed7h		;4eb5
	dec hl			;4eb7
	dec l			;4eb8
	inc l			;4eb9
	inc l			;4eba
	dec l			;4ebb
	ld hl,(02d2ch)		;4ebc
	dec l			;4ebf
	jr nz,l4ee2h		;4ec0
l4ec2h:
	jr nz,l4ee4h		;4ec2
l4ec4h:
	jr nz,$+44		;4ec4
l4ec6h:
	dec hl			;4ec6
	dec hl			;4ec7
l4ec8h:
	dec hl			;4ec8
	dec hl			;4ec9
	ld hl,(02b2bh)		;4eca
	ld hl,(02b2bh)		;4ecd
	dec hl			;4ed0
	dec hl			;4ed1
	ld hl,(00020h)		;4ed2
l4ed5h:
	nop			;4ed5
	nop			;4ed6
l4ed7h:
	dec hl			;4ed7
	ld l,02ch		;4ed8
	dec l			;4eda
	dec hl			;4edb
	dec l			;4edc
	inc l			;4edd
	ld l,02bh		;4ede
	nop			;4ee0
	nop			;4ee1
l4ee2h:
	nop			;4ee2
	nop			;4ee3
l4ee4h:
	nop			;4ee4
	nop			;4ee5
	nop			;4ee6
	nop			;4ee7
	ld l,02eh		;4ee8
	dec l			;4eea
	dec hl			;4eeb
	dec l			;4eec
	inc l			;4eed
	dec hl			;4eee
	ld l,000h		;4eef
	nop			;4ef1
	nop			;4ef2
	nop			;4ef3
	nop			;4ef4
l4ef5h:
	nop			;4ef5
	nop			;4ef6
	nop			;4ef7
	nop			;4ef8
	nop			;4ef9
	rrca			;4efa
	ex af,af'		;4efb
	ex af,af'		;4efc
	rrca			;4efd
	nop			;4efe
	nop			;4eff
	nop			;4f00
	nop			;4f01
sub_4f02h:
	nop			;4f02
	nop			;4f03
	inc l			;4f04
	dec l			;4f05
	dec l			;4f06
	dec l			;4f07
	dec l			;4f08
	dec l			;4f09
	add hl,bc		;4f0a
	dec hl			;4f0b
	add hl,bc		;4f0c
	dec hl			;4f0d
	inc l			;4f0e
	jr nz,l4f40h		;4f0f
	jr nz,$+46		;4f11
	ld l,02eh		;4f13
	dec hl			;4f15
	dec hl			;4f16
	dec hl			;4f17
l4f18h:
	dec bc			;4f18
	dec bc			;4f19
	ld a,(bc)		;4f1a
	ld c,d			;4f1b
	ld a,(bc)		;4f1c
	ld c,d			;4f1d
	inc c			;4f1e
	dec bc			;4f1f
	dec l			;4f20
	dec hl			;4f21
	dec hl			;4f22
	dec hl			;4f23
	jr nz,$+46		;4f24
	dec l			;4f26
	dec l			;4f27
	dec l			;4f28
	dec l			;4f29
	dec hl			;4f2a
	add hl,hl		;4f2b
	dec hl			;4f2c
	dec hl			;4f2d
	dec l			;4f2e
	dec l			;4f2f
	cpl			;4f30
	jr nz,l4f5fh		;4f31
	ld l,020h		;4f33
	ld l,02bh		;4f35
	dec hl			;4f37
	dec bc			;4f38
	dec bc			;4f39
	dec bc			;4f3a
	ld a,(bc)		;4f3b
	ld c,d			;4f3c
	ld a,(bc)		;4f3d
	ld c,00ch		;4f3e
l4f40h:
	inc l			;4f40
	dec hl			;4f41
	dec hl			;4f42
	dec hl			;4f43
	jr nz,l4f72h		;4f44
	dec l			;4f46
	dec l			;4f47
	dec l			;4f48
	dec l			;4f49
	dec hl			;4f4a
	add hl,hl		;4f4b
	dec hl			;4f4c
	dec hl			;4f4d
	dec hl			;4f4e
	inc l			;4f4f
	dec l			;4f50
	jr nz,l4f7fh		;4f51
	ld l,020h		;4f53
	ld l,02bh		;4f55
	dec hl			;4f57
	dec bc			;4f58
	dec bc			;4f59
	dec bc			;4f5a
	ld a,(bc)		;4f5b
l4f5ch:
	ld c,d			;4f5c
	ld a,(bc)		;4f5d
	ld a,(bc)		;4f5e
l4f5fh:
	inc c			;4f5f
	dec hl			;4f60
	inc l			;4f61
	dec hl			;4f62
	dec hl			;4f63
	nop			;4f64
	nop			;4f65
	nop			;4f66
	nop			;4f67
	nop			;4f68
	nop			;4f69
	rrca			;4f6a
	ld c,00bh		;4f6b
	rrca			;4f6d
	nop			;4f6e
	nop			;4f6f
	nop			;4f70
	nop			;4f71
l4f72h:
	nop			;4f72
	nop			;4f73
	nop			;4f74
	nop			;4f75
	nop			;4f76
	nop			;4f77
	nop			;4f78
	nop			;4f79
	nop			;4f7a
	nop			;4f7b
	nop			;4f7c
	nop			;4f7d
	nop			;4f7e
l4f7fh:
	nop			;4f7f
	dec bc			;4f80
	ld c,000h		;4f81
	nop			;4f83
	nop			;4f84
	nop			;4f85
	dec bc			;4f86
	ld c,000h		;4f87
	nop			;4f89
	nop			;4f8a
	nop			;4f8b
	nop			;4f8c
	nop			;4f8d
	nop			;4f8e
	nop			;4f8f
	nop			;4f90
	nop			;4f91
	nop			;4f92
	nop			;4f93
	nop			;4f94
	nop			;4f95
	nop			;4f96
	nop			;4f97
	nop			;4f98
	nop			;4f99
	nop			;4f9a
	nop			;4f9b
	nop			;4f9c
	nop			;4f9d
	nop			;4f9e
	nop			;4f9f
	dec bc			;4fa0
	ld c,000h		;4fa1
	nop			;4fa3
	ld l,02eh		;4fa4
	ld l,02eh		;4fa6
	ld l,02eh		;4fa8
	ld l,02eh		;4faa
	ld l,02eh		;4fac
	ld l,02eh		;4fae
	ld l,02eh		;4fb0
	ld l,02eh		;4fb2
	ld l,e			;4fb4
	ld l,e			;4fb5
	ld l,e			;4fb6
	ld l,e			;4fb7
	ld l,e			;4fb8
	ld l,e			;4fb9
	ld l,e			;4fba
	ld l,e			;4fbb
	ld l,e			;4fbc
	ld l,e			;4fbd
	ld l,e			;4fbe
	ld l,e			;4fbf
	ld l,e			;4fc0
	ld l,e			;4fc1
	ld l,e			;4fc2
	ld l,e			;4fc3
	dec bc			;4fc4
	dec bc			;4fc5
	dec bc			;4fc6
	dec bc			;4fc7
	dec bc			;4fc8
	dec bc			;4fc9
	dec bc			;4fca
	dec bc			;4fcb
l4fcch:
	dec bc			;4fcc
	dec bc			;4fcd
	dec bc			;4fce
	dec bc			;4fcf
	dec bc			;4fd0
	dec bc			;4fd1
	dec bc			;4fd2
	dec bc			;4fd3
	ld a,(bc)		;4fd4
	ld a,(bc)		;4fd5
	ld a,(bc)		;4fd6
	ld a,(bc)		;4fd7
	ld a,(bc)		;4fd8
	ld a,(bc)		;4fd9
	ld a,(bc)		;4fda
	ld a,(bc)		;4fdb
	ld a,(bc)		;4fdc
	ld a,(bc)		;4fdd
	ld a,(bc)		;4fde
	ld a,(bc)		;4fdf
	ld a,(bc)		;4fe0
	ld a,(bc)		;4fe1
	ld a,(bc)		;4fe2
	ld a,(bc)		;4fe3
	add a,(hl)		;4fe4
	add a,(hl)		;4fe5
	add a,(hl)		;4fe6
	add a,(hl)		;4fe7
	add a,(hl)		;4fe8
	add a,(hl)		;4fe9
	add a,(hl)		;4fea
	add a,(hl)		;4feb
	add a,(hl)		;4fec
	add a,(hl)		;4fed
	add a,(hl)		;4fee
	add a,(hl)		;4fef
	add a,(hl)		;4ff0
	add a,(hl)		;4ff1
l4ff2h:
	add a,(hl)		;4ff2
	add a,(hl)		;4ff3
	push bc			;4ff4
	push bc			;4ff5
	push bc			;4ff6
	push bc			;4ff7
	push bc			;4ff8
	push bc			;4ff9
	push bc			;4ffa
	push bc			;4ffb
	push bc			;4ffc
	push bc			;4ffd
	push bc			;4ffe
	push bc			;4fff
	push bc			;5000
	push bc			;5001
	push bc			;5002
	push bc			;5003
	adc a,e			;5004
	adc a,e			;5005
	adc a,e			;5006
	adc a,e			;5007
	adc a,e			;5008
	adc a,e			;5009
	adc a,e			;500a
	adc a,e			;500b
	adc a,e			;500c
	adc a,e			;500d
	adc a,e			;500e
	adc a,e			;500f
	adc a,e			;5010
	adc a,e			;5011
	adc a,e			;5012
	adc a,e			;5013
	adc a,d			;5014
	adc a,d			;5015
	adc a,d			;5016
	adc a,d			;5017
	adc a,d			;5018
	adc a,d			;5019
	adc a,d			;501a
	adc a,d			;501b
	adc a,d			;501c
	adc a,d			;501d
	adc a,d			;501e
	adc a,d			;501f
	adc a,d			;5020
	adc a,d			;5021
	adc a,d			;5022
	adc a,d			;5023
sub_5024h:
	nop			;5024
	nop			;5025
	nop			;5026
	nop			;5027
	nop			;5028
	nop			;5029
	nop			;502a
	nop			;502b
	nop			;502c
	nop			;502d
	nop			;502e
	nop			;502f
	nop			;5030
	nop			;5031
	nop			;5032
	nop			;5033
	nop			;5034
	nop			;5035
	nop			;5036
	nop			;5037
	nop			;5038
	nop			;5039
	nop			;503a
	nop			;503b
	nop			;503c
	nop			;503d
	nop			;503e
	nop			;503f
	nop			;5040
	nop			;5041
	nop			;5042
l5043h:
	nop			;5043
	add hl,hl		;5044
	add hl,hl		;5045
	add hl,hl		;5046
	add hl,hl		;5047
	add hl,hl		;5048
	add hl,hl		;5049
	add hl,hl		;504a
	add hl,hl		;504b
l504ch:
	add hl,hl		;504c
	add hl,hl		;504d
	add hl,hl		;504e
	add hl,hl		;504f
	add hl,hl		;5050
	add hl,hl		;5051
	add hl,hl		;5052
	add hl,hl		;5053
	add hl,hl		;5054
	add hl,hl		;5055
	add hl,hl		;5056
	add hl,hl		;5057
	add hl,hl		;5058
	add hl,hl		;5059
	add hl,hl		;505a
	add hl,hl		;505b
	add hl,hl		;505c
	add hl,hl		;505d
	add hl,hl		;505e
	add hl,hl		;505f
	add hl,hl		;5060
	add hl,hl		;5061
	add hl,hl		;5062
	add hl,hl		;5063
	jr nz,l5086h		;5064
	jr nz,l5088h		;5066
	jr nz,l508ah		;5068
	jr nz,l508ch		;506a
	jr nz,l508eh		;506c
	jr nz,l5090h		;506e
	jr nz,l5092h		;5070
	jr nz,l5094h		;5072
	jr nz,l5096h		;5074
	jr nz,l5098h		;5076
	jr nz,l509ah		;5078
	jr nz,l509ch		;507a
	jr nz,l509eh		;507c
	jr nz,l50a0h		;507e
	jr nz,l50a2h		;5080
	jr nz,l50a4h		;5082
	ld (bc),a		;5084
	ld (bc),a		;5085
l5086h:
	ld (bc),a		;5086
	ld (bc),a		;5087
l5088h:
	ld (bc),a		;5088
	ld (bc),a		;5089
l508ah:
	ld (bc),a		;508a
	rrca			;508b
l508ch:
	inc c			;508c
	rrca			;508d
l508eh:
	ld (bc),a		;508e
	ld (bc),a		;508f
l5090h:
	ld (bc),a		;5090
	ld (bc),a		;5091
l5092h:
	ld (bc),a		;5092
	ld (bc),a		;5093
l5094h:
	ld b,c			;5094
	ld b,c			;5095
l5096h:
	ld b,c			;5096
	ld b,c			;5097
l5098h:
	ld b,c			;5098
	ld b,c			;5099
l509ah:
	ld b,c			;509a
	ld b,c			;509b
l509ch:
	ld b,e			;509c
	ld b,c			;509d
l509eh:
	ld b,c			;509e
	ld b,c			;509f
l50a0h:
	ld b,c			;50a0
	ld b,c			;50a1
l50a2h:
	ld b,c			;50a2
	ld b,c			;50a3
l50a4h:
	ld (bc),a		;50a4
	ld (bc),a		;50a5
	ld (bc),a		;50a6
	ld (bc),a		;50a7
	ld (bc),a		;50a8
	ld (bc),a		;50a9
	ld (bc),a		;50aa
	ld (bc),a		;50ab
	ld (bc),a		;50ac
	ld (bc),a		;50ad
	ld (bc),a		;50ae
	ld (bc),a		;50af
	ld (bc),a		;50b0
	ld (bc),a		;50b1
	ld (bc),a		;50b2
	ld (bc),a		;50b3
	ld b,c			;50b4
	ld b,c			;50b5
	ld b,c			;50b6
	ld b,c			;50b7
	ld b,c			;50b8
	ld b,c			;50b9
	ld b,c			;50ba
	ld b,c			;50bb
sub_50bch:
	ld b,c			;50bc
	ld b,c			;50bd
	ld b,c			;50be
	ld b,c			;50bf
	ld b,c			;50c0
	ld b,c			;50c1
	ld b,c			;50c2
	ld b,c			;50c3
	ld c,00fh		;50c4
	inc bc			;50c6
	ld (bc),a		;50c7
	ld (bc),a		;50c8
	ld (bc),a		;50c9
	ld (bc),a		;50ca
	ld (bc),a		;50cb
	ld (bc),a		;50cc
	ld (bc),a		;50cd
	ld (bc),a		;50ce
	ld (bc),a		;50cf
	ld (bc),a		;50d0
	ld (bc),a		;50d1
	ld (bc),a		;50d2
	nop			;50d3
	ld c,c			;50d4
	ld b,d			;50d5
	ld b,c			;50d6
	ld b,c			;50d7
	ld b,c			;50d8
l50d9h:
	ld b,c			;50d9
	ld b,c			;50da
	ld b,c			;50db
	ld b,c			;50dc
	ld b,c			;50dd
	ld b,c			;50de
	ld b,c			;50df
	ld b,c			;50e0
	ld b,c			;50e1
	ld b,c			;50e2
	ld b,c			;50e3
	nop			;50e4
	ld (bc),a		;50e5
	ld (bc),a		;50e6
	ld (bc),a		;50e7
	ld (bc),a		;50e8
	ld (bc),a		;50e9
	ld (bc),a		;50ea
	ld (bc),a		;50eb
	ld (bc),a		;50ec
	ld (bc),a		;50ed
	ld (bc),a		;50ee
	ld (bc),a		;50ef
	ld (bc),a		;50f0
	inc bc			;50f1
	rrca			;50f2
	dec bc			;50f3
	ld b,c			;50f4
	ld b,c			;50f5
	ld b,c			;50f6
	ld b,c			;50f7
	ld b,c			;50f8
	ld b,c			;50f9
	ld b,c			;50fa
	ld b,c			;50fb
	ld b,c			;50fc
	ld b,c			;50fd
	ld b,c			;50fe
	ld b,c			;50ff
	ld b,c			;5100
	nop			;5101
	ld b,d			;5102
	ld c,h			;5103
	nop			;5104
	nop			;5105
	nop			;5106
	nop			;5107
	nop			;5108
	nop			;5109
	cpl			;510a
	dec hl			;510b
	ld l,02fh		;510c
	nop			;510e
	nop			;510f
	nop			;5110
	nop			;5111
	nop			;5112
	nop			;5113
	nop			;5114
	ld (bc),a		;5115
	ld (bc),a		;5116
	ld (bc),a		;5117
	ld (bc),a		;5118
	ld (bc),a		;5119
	ld c,00eh		;511a
	ld c,00eh		;511c
	ld (bc),a		;511e
	ld (bc),a		;511f
	ld (bc),a		;5120
	ld (bc),a		;5121
	ld (bc),a		;5122
	nop			;5123
	ld b,c			;5124
	ld b,c			;5125
	ld b,c			;5126
	ld b,c			;5127
	ld b,c			;5128
	ld b,c			;5129
	ld b,c			;512a
	ld c,e			;512b
	ld b,c			;512c
	ld b,c			;512d
	ld b,c			;512e
	ld b,c			;512f
	ld b,c			;5130
	ld b,c			;5131
	ld b,c			;5132
	ld b,c			;5133
	nop			;5134
	dec b			;5135
	dec b			;5136
	dec b			;5137
	dec b			;5138
	dec b			;5139
	rrca			;513a
	rrca			;513b
	rrca			;513c
	rrca			;513d
	dec b			;513e
	dec b			;513f
	dec b			;5140
	dec b			;5141
	dec b			;5142
	nop			;5143
	ld b,(hl)		;5144
	ld b,(hl)		;5145
	ld b,(hl)		;5146
	ld b,(hl)		;5147
	ld b,(hl)		;5148
	ld b,(hl)		;5149
	ld b,(hl)		;514a
	ld c,e			;514b
l514ch:
	ld c,(hl)		;514c
	ld b,(hl)		;514d
	ld b,(hl)		;514e
	ld b,(hl)		;514f
	ld b,(hl)		;5150
	ld b,(hl)		;5151
	ld b,(hl)		;5152
	ld b,(hl)		;5153
	inc bc			;5154
	ld bc,00101h		;5155
	ld (bc),a		;5158
	ld (bc),a		;5159
	ld (bc),a		;515a
	dec bc			;515b
	ld bc,00202h		;515c
	ld (bc),a		;515f
	ld bc,00101h		;5160
	inc bc			;5163
	nop			;5164
	ld b,d			;5165
	ld b,d			;5166
	ld b,d			;5167
	ld b,e			;5168
	nop			;5169
	ld c,a			;516a
	ld c,a			;516b
	ld c,a			;516c
	ld c,a			;516d
	nop			;516e
	ld b,e			;516f
	ld b,d			;5170
	ld b,d			;5171
	ld b,d			;5172
	nop			;5173
	ld bc,00101h		;5174
	ld bc,00101h		;5177
	inc bc			;517a
	ld a,(bc)		;517b
	ld a,(bc)		;517c
	inc bc			;517d
	ld bc,00101h		;517e
	ld bc,00101h		;5181
	ld b,d			;5184
	ld b,d			;5185
	ld b,d			;5186
	ld b,d			;5187
	ld b,d			;5188
	ld b,d			;5189
	ld c,h			;518a
	ld c,e			;518b
	ld c,e			;518c
	ld c,d			;518d
	ld b,d			;518e
	ld b,d			;518f
	ld b,d			;5190
	ld b,d			;5191
	ld b,d			;5192
	ld b,d			;5193
	ld b,005h		;5194
	dec b			;5196
	dec b			;5197
	dec b			;5198
	dec b			;5199
sub_519ah:
	dec b			;519a
	rrca			;519b
	dec b			;519c
	inc c			;519d
	dec b			;519e
	dec b			;519f
	dec b			;51a0
	dec b			;51a1
	dec b			;51a2
	ld b,000h		;51a3
	ld b,(hl)		;51a5
	ld b,(hl)		;51a6
	ld b,(hl)		;51a7
	ld b,(hl)		;51a8
	ld b,(hl)		;51a9
	ld c,a			;51aa
	ld c,e			;51ab
	ld c,a			;51ac
	ld c,a			;51ad
	ld b,(hl)		;51ae
	ld b,(hl)		;51af
	ld b,(hl)		;51b0
	ld b,(hl)		;51b1
	ld b,(hl)		;51b2
	nop			;51b3
	ld b,005h		;51b4
	dec b			;51b6
	dec b			;51b7
	dec b			;51b8
	dec b			;51b9
	dec b			;51ba
	ld a,(bc)		;51bb
	dec b			;51bc
	inc c			;51bd
	dec b			;51be
	dec b			;51bf
	dec b			;51c0
	dec b			;51c1
	dec b			;51c2
	ld b,000h		;51c3
	ld b,(hl)		;51c5
	ld b,(hl)		;51c6
	ld b,(hl)		;51c7
	ld b,(hl)		;51c8
	ld b,(hl)		;51c9
	ld c,d			;51ca
	ld c,e			;51cb
	ld c,d			;51cc
sub_51cdh:
	ld c,d			;51cd
	ld b,(hl)		;51ce
	ld b,(hl)		;51cf
	ld b,(hl)		;51d0
	ld b,(hl)		;51d1
	ld b,(hl)		;51d2
	nop			;51d3
	jp nc,l4b9bh		;51d4
	ld a,000h		;51d7
	ld (0c308h),a		;51d9
	ld a,(0ffe8h)		;51dc
	or 002h			;51df
	and 0ffh		;51e1
	and 07fh		;51e3
	ld (0ffe8h),a		;51e5
	di			;51e8
	out (099h),a		;51e9
	ld a,089h		;51eb
	ei			;51ed
	out (099h),a		;51ee
	ld a,(0ffe7h)		;51f0
	and 0dfh		;51f3
	ld (0ffe7h),a		;51f5
	ld a,001h		;51f8
	ld (0c10eh),a		;51fa
	ld hl,(0057ch)		;51fd
	ld (hl),01ah		;5200
	ld hl,(0057fh)		;5202
	ld (hl),0d0h		;5205
	ld hl,(00582h)		;5207
	ld (hl),0aeh		;520a
	ld hl,(00585h)		;520c
	ld (hl),0aeh		;520f
	ld hl,(00588h)		;5211
	ld (hl),010h		;5214
	ld hl,(0058bh)		;5216
	ld (hl),0d4h		;5219
l521bh:
	ld hl,(0058eh)		;521b
	ld (hl),010h		;521e
	ld hl,(00591h)		;5220
	ld (hl),0d4h		;5223
	ld hl,(00594h)		;5225
	ld (hl),010h		;5228
	ld hl,(00597h)		;522a
	ld (hl),0d4h		;522d
	ld hl,(0059ah)		;522f
	ld (hl),0c8h		;5232
	ld hl,(0059dh)		;5234
	ld (hl),0d2h		;5237
	call sub_4d7ah		;5239
	call sub_4d1ah		;523c
l523fh:
	call 00563h		;523f
	call 073c2h		;5242
	call 0059fh		;5245
	call 005a2h		;5248
	call 005a5h		;524b
	call sub_4ca7h		;524e
	call sub_725dh		;5251
	call sub_56d4h		;5254
	call 005aeh		;5257
	call 00539h		;525a
	call 005a8h		;525d
	call 05b61h		;5260
	call 005abh		;5263
	call sub_582eh		;5266
	call sub_4d89h		;5269
	call sub_533dh		;526c
	ld a,(0c13dh)		;526f
	or a			;5272
	jp z,l4c2bh		;5273
	ld a,005h		;5276
	call 0050fh		;5278
	ld a,001h		;527b
	ld (0c106h),a		;527d
	ld a,0feh		;5280
	ld (0c108h),a		;5282
	ld (0c3a3h),a		;5285
	ld a,01ch		;5288
	ld (0c107h),a		;528a
	ld (0c3a2h),a		;528d
	call 00503h		;5290
	call 00506h		;5293
	halt			;5296
	call sub_4d7ah		;5297
	xor a			;529a
	ld (0c13dh),a		;529b
	ld a,(0c395h)		;529e
	or a			;52a1
	jp z,04c6ch		;52a2
	call sub_4d54h		;52a5
	ld a,(0c395h)		;52a8
	or a			;52ab
	ret			;52ac
	xor a			;52ad
	ld (0c116h),a		;52ae
l52b1h:
	ld (0c13fh),a		;52b1
	ld (0c152h),a		;52b4
	ld (0c14fh),a		;52b7
	ld (0c143h),a		;52ba
	ld (0c140h),a		;52bd
	ld a,002h		;52c0
	ld (0c142h),a		;52c2
l52c5h:
	ld a,(0c13eh)		;52c5
	cp 01eh			;52c8
	jp c,l4c90h		;52ca
	dec a			;52cd
	ld (0c13eh),a		;52ce
	ld a,(0c3d1h)		;52d1
	inc a			;52d4
	ld (0c3d1h),a		;52d5
	ld a,(0c113h)		;52d8
	dec a			;52db
	ld (0c113h),a		;52dc
	inc a			;52df
	jp nz,04bfeh		;52e0
	call sub_4d54h		;52e3
	xor a			;52e6
	ret			;52e7
	ld hl,l4cdbh		;52e8
	ld (l4cd7h),hl		;52eb
	ld hl,l4cfbh		;52ee
	ld (l4cd9h),hl		;52f1
	ld hl,(l4cd7h)		;52f4
	ld e,(hl)		;52f7
	inc hl			;52f8
	ld d,(hl)		;52f9
	inc hl			;52fa
	ld a,d			;52fb
	or e			;52fc
	jp z,l4d19h		;52fd
l5300h:
	ld (l4cd7h),hl		;5300
	ex de,hl		;5303
	ld c,(hl)		;5304
	inc hl			;5305
	ld b,(hl)		;5306
	ld hl,(l4cd9h)		;5307
	ld e,(hl)		;530a
	inc hl			;530b
	ld d,(hl)		;530c
	inc hl			;530d
	ld (l4cd9h),hl		;530e
	ex de,hl		;5311
	ld (hl),c		;5312
	inc hl			;5313
	ld (hl),b		;5314
	jp l4cb3h		;5315
	nop			;5318
	nop			;5319
	nop			;531a
	nop			;531b
	rlca			;531c
	dec b			;531d
l531eh:
	ld d,005h		;531e
	rra			;5320
	dec b			;5321
	ld (02e05h),hl		;5322
	dec b			;5325
	add hl,de		;5326
	dec b			;5327
	ld sp,05b05h		;5328
	dec b			;532b
	ld e,(hl)		;532c
	dec b			;532d
	ld h,c			;532e
	dec b			;532f
	ld h,a			;5330
	dec b			;5331
	ld l,d			;5332
	dec b			;5333
	ld (hl),b		;5334
	dec b			;5335
	ld (hl),e		;5336
	dec b			;5337
	halt			;5338
	dec b			;5339
	nop			;533a
	nop			;533b
l533ch:
	sub b			;533c
sub_533dh:
	ld d,e			;533d
	ld e,h			;533e
	ld d,e			;533f
	ld bc,01e53h		;5340
	ld d,e			;5343
	ld a,l			;5344
	ld d,e			;5345
	ld e,a			;5346
	ld d,e			;5347
	ld l,b			;5348
	ld d,e			;5349
	and b			;534a
	ld e,b			;534b
	ei			;534c
	ld d,d			;534d
	cp 052h			;534e
	ld h,d			;5350
	ld d,e			;5351
	ld h,l			;5352
	ld d,e			;5353
	sbc a,a			;5354
	ld d,e			;5355
	ld (hl),a		;5356
	ld d,e			;5357
	inc b			;5358
	ld d,e			;5359
	ret			;535a
	di			;535b
	ld hl,00038h		;535c
	ld de,04d77h		;535f
	ld bc,00003h		;5362
	ldir			;5365
	ld hl,l4d99h		;5367
	ld (00039h),hl		;536a
	ld a,0c3h		;536d
	ld (00038h),a		;536f
	ld a,013h		;5372
	ld (0fff1h),a		;5374
	out (099h),a		;5377
	ld a,093h		;5379
	out (099h),a		;537b
	ld a,(0f3dfh)		;537d
	or 010h			;5380
	ld (0f3dfh),a		;5382
	out (099h),a		;5385
	ld a,080h		;5387
	out (099h),a		;5389
	ld a,002h		;538b
	out (099h),a		;538d
	ld a,08fh		;538f
	ei			;5391
	out (099h),a		;5392
	ret			;5394
	ld hl,04d77h		;5395
	ld de,00038h		;5398
	di			;539b
	ld bc,00003h		;539c
	ldir			;539f
	ld a,(0f3dfh)		;53a1
	and 0efh		;53a4
	ld (0f3dfh),a		;53a6
l53a9h:
	out (099h),a		;53a9
	ld a,080h		;53ab
	out (099h),a		;53ad
	xor a			;53af
	out (099h),a		;53b0
	ld a,08fh		;53b2
	out (099h),a		;53b4
	ei			;53b6
l53b7h:
	ret			;53b7
l53b8h:
	nop			;53b8
	nop			;53b9
	nop			;53ba
	di			;53bb
	ld hl,l4d98h		;53bc
	ld (04da6h),hl		;53bf
	ld hl,l4d98h		;53c2
	ld (l4db6h),hl		;53c5
	ei			;53c8
	ret			;53c9
	di			;53ca
	ld hl,l521bh		;53cb
sub_53ceh:
	ld (04da6h),hl		;53ce
	ld hl,l52b1h		;53d1
	ld (l4db6h),hl		;53d4
	ei			;53d7
	ret			;53d8
	ret			;53d9
	push af			;53da
	ld a,001h		;53db
	out (099h),a		;53dd
	ld a,08fh		;53df
	out (099h),a		;53e1
l53e3h:
	in a,(099h)		;53e3
	rrca			;53e5
	call c,l521bh		;53e6
	xor a			;53e9
	out (099h),a		;53ea
	ld a,08fh		;53ec
	out (099h),a		;53ee
	in a,(099h)		;53f0
	ld (0c1a0h),a		;53f2
	rlca			;53f5
	call c,l52b1h		;53f6
	ld a,002h		;53f9
	out (099h),a		;53fb
	ld a,08fh		;53fd
	out (099h),a		;53ff
	pop af			;5401
	ei			;5402
	ret			;5403
	ld c,d			;5404
	ld c,d			;5405
	inc c			;5406
	jr c,l5441h		;5407
	jr c,l5419h		;5409
	ld c,d			;540b
	ld (01822h),hl		;540c
	ld b,(hl)		;540f
	ld b,h			;5410
	ld b,(hl)		;5411
	ld a,(de)		;5412
	ld (02222h),hl		;5413
	inc h			;5416
	ld b,h			;5417
	ld b,(hl)		;5418
l5419h:
	ld b,(hl)		;5419
	ld h,022h		;541a
	ld (00222h),hl		;541c
	ld b,(hl)		;541f
l5420h:
	ld b,(hl)		;5420
	ld b,h			;5421
	ld b,020h		;5422
	jr nz,$+34		;5424
	nop			;5426
	ld b,(hl)		;5427
	ld b,h			;5428
	ld b,h			;5429
	inc b			;542a
	ld (02020h),hl		;542b
	nop			;542e
	ld b,h			;542f
	ld b,(hl)		;5430
	ld b,(hl)		;5431
	inc b			;5432
	jr nz,l5457h		;5433
	ld (l4402h),hl		;5435
	ld b,h			;5438
	ld b,(hl)		;5439
	ld b,022h		;543a
	jr nz,l545eh		;543c
	nop			;543e
	ld b,(hl)		;543f
l5440h:
	ld b,h			;5440
l5441h:
	ld b,(hl)		;5441
	inc b			;5442
	jr nz,l5467h		;5443
	ld (l4402h),hl		;5445
	ld b,h			;5448
	ld b,h			;5449
	ld b,020h		;544a
	jr nz,l5470h		;544c
	ld (bc),a		;544e
	ld b,(hl)		;544f
	ld b,(hl)		;5450
	ld b,h			;5451
	inc b			;5452
	ld (02020h),hl		;5453
	nop			;5456
l5457h:
	ld b,(hl)		;5457
	ld b,h			;5458
	ld a,(02006h)		;5459
	jr nz,l547eh		;545c
l545eh:
	nop			;545e
	ld b,(hl)		;545f
sub_5460h:
	ld b,h			;5460
	ld b,(hl)		;5461
	inc b			;5462
	ld (02222h),hl		;5463
	nop			;5466
l5467h:
	ld b,h			;5467
	ld b,(hl)		;5468
	ld b,(hl)		;5469
	inc b			;546a
	ld (02020h),hl		;546b
	ld (bc),a		;546e
	ld b,(hl)		;546f
l5470h:
	ld b,(hl)		;5470
	ld b,h			;5471
	inc b			;5472
	jr nz,l5497h		;5473
	jr nz,l5479h		;5475
	ld b,h			;5477
	ld b,(hl)		;5478
l5479h:
	ld b,(hl)		;5479
	ld d,022h		;547a
	jr nz,l549eh		;547c
l547eh:
	ld (bc),a		;547e
	ld (de),a		;547f
	djnz $+20		;5480
	ld e,022h		;5482
sub_5484h:
	ld (l4c22h),hl		;5484
	ld d,d			;5487
	ld c,h			;5488
	ld d,d			;5489
	jr nz,l54ach		;548a
	jr nz,l54b2h		;548c
	ld b,(hl)		;548e
	inc b			;548f
	ld (bc),a		;5490
	ld (hl),02ah		;5491
	jr nz,$+42		;5493
	inc (hl)		;5495
	ld b,h			;5496
l5497h:
	ld d,014h		;5497
	ld b,(hl)		;5499
	ld (hl),02ah		;549a
	nop			;549c
	ld b,(hl)		;549d
l549eh:
	ld b,h			;549e
sub_549fh:
	ex af,af'		;549f
	ld a,(bc)		;54a0
	ld (de),a		;54a1
	djnz l54aah		;54a2
	ld (bc),a		;54a4
	ld b,(hl)		;54a5
	ld b,h			;54a6
	ld l,04ch		;54a7
	ld d,d			;54a9
l54aah:
	ld c,h			;54aa
	ld d,d			;54ab
l54ach:
	inc e			;54ac
	djnz l54c1h		;54ad
	ld e,00ah		;54af
	inc b			;54b1
l54b2h:
	ld c,h			;54b2
	ld d,d			;54b3
	ld (0524ch),hl		;54b4
	jr z,l54edh		;54b7
	ld d,014h		;54b9
	inc b			;54bb
	ld (0524ch),hl		;54bc
	ld (bc),a		;54bf
	ld b,h			;54c0
l54c1h:
	ex af,af'		;54c1
	ld a,(bc)		;54c2
	ld b,028h		;54c3
	inc (hl)		;54c5
	inc b			;54c6
	ld (bc),a		;54c7
	ld b,(hl)		;54c8
	ex af,af'		;54c9
	ld a,(bc)		;54ca
	ld b,002h		;54cb
	ld b,h			;54cd
	inc b			;54ce
	ld (bc),a		;54cf
	ld b,h			;54d0
	ex af,af'		;54d1
	ld a,(bc)		;54d2
	ld b,002h		;54d3
	ld b,h			;54d5
	ld b,000h		;54d6
	ld (de),a		;54d8
	ld e,00ah		;54d9
	inc b			;54db
	nop			;54dc
	ld b,(hl)		;54dd
	ld b,000h		;54de
	inc b			;54e0
	jr z,l5517h		;54e1
	ld b,002h		;54e3
	ld b,(hl)		;54e5
	inc b			;54e6
	ld (bc),a		;54e7
	ld b,02ch		;54e8
	ld b,(hl)		;54ea
	inc b			;54eb
	nop			;54ec
l54edh:
	ld b,h			;54ed
	inc b			;54ee
	nop			;54ef
	ld b,002h		;54f0
	ld b,h			;54f2
	ld b,000h		;54f3
	ld b,(hl)		;54f5
	ld d,000h		;54f6
	inc b			;54f8
	nop			;54f9
	ld b,(hl)		;54fa
	ld b,002h		;54fb
	ld a,(00230h)		;54fd
	ld b,000h		;5500
	ld b,(hl)		;5502
	inc b			;5503
sub_5504h:
	nop			;5504
	ld b,h			;5505
	inc b			;5506
	inc l			;5507
	inc b			;5508
	ld (bc),a		;5509
	ld b,h			;550a
	inc b			;550b
	nop			;550c
	ld b,h			;550d
	ld (hl),034h		;550e
	ld (hl),034h		;5510
	ld b,h			;5512
	ld b,04ch		;5513
	ld c,(hl)		;5515
	ld d,b			;5516
l5517h:
	ld d,b			;5517
	ld c,(hl)		;5518
	ld d,b			;5519
	ld d,b			;551a
	ld d,d			;551b
	nop			;551c
	ld b,h			;551d
	ld (de),a		;551e
	djnz l5533h		;551f
	djnz $+70		;5521
	inc b			;5523
	ld (bc),a		;5524
	ld b,(hl)		;5525
	inc b			;5526
	inc l			;5527
l5528h:
	inc b			;5528
	ld (bc),a		;5529
	ld b,(hl)		;552a
	inc b			;552b
	inc d			;552c
	ld b,(hl)		;552d
	inc b			;552e
	inc l			;552f
	inc b			;5530
	ld (bc),a		;5531
	ld b,(hl)		;5532
l5533h:
	inc b			;5533
	inc l			;5534
	ld b,(hl)		;5535
	ld (hl),034h		;5536
l5538h:
	ld (hl),034h		;5538
	ld b,(hl)		;553a
	ld b,04ch		;553b
	ld c,(hl)		;553d
	ld c,(hl)		;553e
	ld c,(hl)		;553f
	ld d,b			;5540
	ld c,(hl)		;5541
l5542h:
	ld d,b			;5542
	ld d,d			;5543
	nop			;5544
	ld b,h			;5545
	ld (de),a		;5546
	djnz l555bh		;5547
	djnz l5591h		;5549
	ld b,014h		;554b
	ld b,(hl)		;554d
	inc b			;554e
	inc l			;554f
	inc b			;5550
	ld (bc),a		;5551
l5552h:
	ld b,h			;5552
	ld b,014h		;5553
	ld b,h			;5555
	ld b,02ch		;5556
	inc b			;5558
	ld (bc),a		;5559
	ld b,h			;555a
l555bh:
	ld b,014h		;555b
	ld b,(hl)		;555d
	ld b,02ch		;555e
	inc b			;5560
	nop			;5561
	ld b,(hl)		;5562
	inc b			;5563
	inc l			;5564
	ld b,h			;5565
	ld (hl),034h		;5566
	ld (hl),034h		;5568
	ld b,(hl)		;556a
	ld b,000h		;556b
	ld b,(hl)		;556d
	ld b,(hl)		;556e
	ld b,(hl)		;556f
	ld b,(hl)		;5570
	ld b,(hl)		;5571
	ld b,(hl)		;5572
	ld b,002h		;5573
	ld b,(hl)		;5575
	ld b,(hl)		;5576
	ld b,(hl)		;5577
	ld b,h			;5578
	ld b,h			;5579
	ld b,(hl)		;557a
	inc b			;557b
	ld (bc),a		;557c
	ld b,(hl)		;557d
	ld b,h			;557e
	ld b,h			;557f
	ld b,h			;5580
	ld b,h			;5581
	ld b,(hl)		;5582
	inc b			;5583
	nop			;5584
	ld b,(hl)		;5585
	ld b,(hl)		;5586
	ld b,h			;5587
	ld b,(hl)		;5588
	ld b,(hl)		;5589
	ld b,(hl)		;558a
	ld b,014h		;558b
	ld b,(hl)		;558d
	ld b,h			;558e
	ld b,(hl)		;558f
	ld b,h			;5590
l5591h:
	ld b,h			;5591
	ld b,(hl)		;5592
	inc b			;5593
l5594h:
	ld (l4442h),hl		;5594
	ld b,h			;5597
	ld b,(hl)		;5598
	ld b,(hl)		;5599
l559ah:
	ld (de),a		;559a
	ld e,02ch		;559b
	ld b,h			;559d
	ld b,(hl)		;559e
	ld b,h			;559f
	ld b,(hl)		;55a0
	ld b,(hl)		;55a1
	jr nc,$+36		;55a2
	ld (bc),a		;55a4
	ld b,(hl)		;55a5
	ld b,(hl)		;55a6
	ld b,h			;55a7
	ld b,(hl)		;55a8
	ld b,h			;55a9
	ld (hl),02ah		;55aa
	ld (bc),a		;55ac
	ld b,(hl)		;55ad
	ld b,(hl)		;55ae
	ld b,(hl)		;55af
	ld b,(hl)		;55b0
	ld b,h			;55b1
	ld b,(hl)		;55b2
	inc b			;55b3
	nop			;55b4
	ld b,(hl)		;55b5
	ld a,(l4444h)		;55b6
	ld b,(hl)		;55b9
l55bah:
	ld b,(hl)		;55ba
	inc b			;55bb
	ld (l4644h),a		;55bc
	ld b,(hl)		;55bf
	ld b,h			;55c0
	ld b,(hl)		;55c1
	ld b,(hl)		;55c2
	inc b			;55c3
	inc e			;55c4
	djnz l560dh		;55c5
	ld b,(hl)		;55c7
	ld b,h			;55c8
	ld b,h			;55c9
	ld b,(hl)		;55ca
	ld b,022h		;55cb
	inc e			;55cd
	djnz $+72		;55ce
	ld b,(hl)		;55d0
	ld b,(hl)		;55d1
	ld b,(hl)		;55d2
	inc b			;55d3
	ld (01c22h),hl		;55d4
	djnz $+70		;55d7
	ld b,h			;55d9
	ld a,(02206h)		;55da
	ld (01c22h),hl		;55dd
	djnz l5628h		;55e0
	ld b,(hl)		;55e2
	ld b,022h		;55e3
	ld (02222h),hl		;55e5
	inc e			;55e8
	ld b,h			;55e9
l55eah:
	ld b,(hl)		;55ea
	ld b,022h		;55eb
	ld (02222h),hl		;55ed
	ld (l463eh),hl		;55f0
	inc b			;55f3
	ld (02222h),hl		;55f4
	ld (l462ch),hl		;55f7
	ld (de),a		;55fa
	ld e,022h		;55fb
	ld (01822h),hl		;55fd
	inc (hl)		;5600
	ld b,(hl)		;5601
	ld d,020h		;5602
	ld (02222h),hl		;5604
	ld (bc),a		;5607
	ld a,(00844h)		;5608
	jr nz,l562fh		;560b
l560dh:
	ld (03428h),hl		;560d
	ld b,h			;5610
	ld b,(hl)		;5611
	jr nc,$+34		;5612
	ld (03428h),hl		;5614
	ld b,(hl)		;5617
	ld b,h			;5618
	ld b,(hl)		;5619
	ld (hl),02ah		;561a
	jr z,l5652h		;561c
	ld b,(hl)		;561e
	ld b,(hl)		;561f
	ld b,h			;5620
	ld b,h			;5621
sub_5622h:
	ld b,h			;5622
	ld b,002h		;5623
	ld b,(hl)		;5625
	ld b,(hl)		;5626
	ld b,h			;5627
l5628h:
	ld b,h			;5628
	ld b,h			;5629
	ld b,h			;562a
	ld d,01ch		;562b
	djnz l5675h		;562d
l562fh:
	ld b,h			;562f
	ld b,h			;5630
	ld b,h			;5631
	ld b,b			;5632
	ld (00a22h),hl		;5633
	ld b,(hl)		;5636
	ld b,(hl)		;5637
	ld b,(hl)		;5638
	ld b,(hl)		;5639
	ld b,(hl)		;563a
	ld d,022h		;563b
	jr l5685h		;563d
	ld b,(hl)		;563f
	ld b,h			;5640
	ld b,(hl)		;5641
	inc a			;5642
	ld (02422h),hl		;5643
	ld b,(hl)		;5646
	ld b,h			;5647
	ld b,(hl)		;5648
	ld b,h			;5649
	ld a,(0282eh)		;564a
	inc (hl)		;564d
l564eh:
	ld b,(hl)		;564e
	ld b,(hl)		;564f
	ld b,h			;5650
	ld b,(hl)		;5651
l5652h:
	ld b,(hl)		;5652
	ld b,002h		;5653
l5655h:
	ld b,(hl)		;5655
	ld b,(hl)		;5656
	ld b,h			;5657
	ld b,(hl)		;5658
	ld b,h			;5659
	ld b,(hl)		;565a
	ld d,002h		;565b
	ld b,h			;565d
l565eh:
	ld b,h			;565e
	ld b,(hl)		;565f
	ld b,h			;5660
	ld b,(hl)		;5661
	ld b,b			;5662
	jr nz,l5665h		;5663
l5665h:
	ld a,(l4646h)		;5665
	ld b,h			;5668
	ld b,(hl)		;5669
	ld b,(hl)		;566a
	ld l,000h		;566b
sub_566dh:
	ld b,(hl)		;566d
	ld b,(hl)		;566e
	ld b,(hl)		;566f
	ld b,(hl)		;5670
	ld b,(hl)		;5671
	ld b,(hl)		;5672
	ld b,002h		;5673
l5675h:
	ld b,(hl)		;5675
	ld b,(hl)		;5676
	ld b,h			;5677
	ld b,h			;5678
	ld b,(hl)		;5679
	ld b,(hl)		;567a
	ld b,002h		;567b
	ld b,(hl)		;567d
	ld b,h			;567e
	ld b,(hl)		;567f
	ld b,h			;5680
	ld b,(hl)		;5681
	ld (de),a		;5682
	ld e,014h		;5683
l5685h:
	ld b,h			;5685
	ld b,(hl)		;5686
	ld b,(hl)		;5687
	ld b,h			;5688
	ld (de),a		;5689
	ld e,022h		;568a
	inc e			;568c
	djnz $+72		;568d
	ld b,(hl)		;568f
l5690h:
	ld (de),a		;5690
	ld e,022h		;5691
	jr nz,l56b7h		;5693
	ld (bc),a		;5695
	ld b,(hl)		;5696
	ld (de),a		;5697
	ld e,020h		;5698
	jr nz,l56beh		;569a
	jr nz,l56a0h		;569c
	ld b,(hl)		;569e
	inc b			;569f
l56a0h:
	ld (02020h),hl		;56a0
	jr nz,l56c7h		;56a3
	ld (bc),a		;56a5
	ld b,(hl)		;56a6
	inc b			;56a7
	ld (02220h),hl		;56a8
	jr nz,$+34		;56ab
	ld (bc),a		;56ad
	ld b,(hl)		;56ae
	inc b			;56af
	jr nz,$+34		;56b0
	ld (02022h),hl		;56b2
	ld (bc),a		;56b5
	ld b,h			;56b6
l56b7h:
	inc b			;56b7
	ld (02222h),hl		;56b8
	jr nz,l56ddh		;56bb
	ld (bc),a		;56bd
l56beh:
	ld b,(hl)		;56be
	inc b			;56bf
	jr nz,$+36		;56c0
	jr nz,$+34		;56c2
	ld (l4602h),hl		;56c4
l56c7h:
	ld (hl),02ah		;56c7
	ld (02220h),hl		;56c9
	jr nz,l56eah		;56cc
	djnz $+70		;56ce
	inc b			;56d0
	ld (02022h),hl		;56d1
sub_56d4h:
	ld (00222h),hl		;56d4
	ld b,(hl)		;56d7
	ld (hl),02ah		;56d8
	ld (02022h),hl		;56da
l56ddh:
	jr nz,l56fbh		;56dd
	djnz $+70		;56df
	ld (hl),02ah		;56e1
	ld (02022h),hl		;56e3
	ld (0101ch),hl		;56e6
	ld b,(hl)		;56e9
l56eah:
	inc b			;56ea
	ld (02220h),hl		;56eb
	ld (01c20h),hl		;56ee
	ld b,(hl)		;56f1
	inc b			;56f2
	ld (02220h),hl		;56f3
	jr nz,l571ah		;56f6
	jr nz,l5738h		;56f8
	inc b			;56fa
l56fbh:
	ld (02020h),hl		;56fb
	jr nz,l5722h		;56fe
	inc l			;5700
	ld b,h			;5701
	inc b			;5702
	ld (02020h),hl		;5703
	ld (03418h),hl		;5706
	ld b,(hl)		;5709
	ld d,022h		;570a
	ld (02222h),hl		;570c
	ld (bc),a		;570f
	ld b,h			;5710
	ld b,b			;5711
	ld (02222h),hl		;5712
	ld (03428h),hl		;5715
	ld b,(hl)		;5718
	ld b,(hl)		;5719
l571ah:
	ld l,022h		;571a
sub_571ch:
	ld (03428h),hl		;571c
	ld b,(hl)		;571f
	ld b,(hl)		;5720
	ld b,(hl)		;5721
l5722h:
	ld d,022h		;5722
	jr nz,l5728h		;5724
	ld b,(hl)		;5726
	ld b,b			;5727
l5728h:
	ld (02222h),hl		;5728
	ld (00222h),hl		;572b
	ld b,h			;572e
	ld b,(hl)		;572f
	ld a,(de)		;5730
	jr nz,l5753h		;5731
	jr nz,$+34		;5733
l5735h:
	ld (bc),a		;5735
	ld b,h			;5736
	inc a			;5737
l5738h:
	jr nz,l575ch		;5738
	jr nz,$+36		;573a
	jr nz,l578ah		;573c
	ld c,(hl)		;573e
sub_573fh:
	ld d,b			;573f
l5740h:
	ld d,d			;5740
	ld (02220h),hl		;5741
	ld (l4602h),hl		;5744
	ld b,(hl)		;5747
	ld (hl),02ah		;5748
	ld (02022h),hl		;574a
	ld (bc),a		;574d
	ld b,h			;574e
	ld b,h			;574f
	ld b,(hl)		;5750
	ld d,020h		;5751
l5753h:
	ld (l4c22h),hl		;5753
l5756h:
	ld d,d			;5756
	ld (02020h),hl		;5757
	jr nz,sub_577eh		;575a
l575ch:
	ld (03602h),hl		;575c
	ld hl,(02020h)		;575f
	ld (02022h),hl		;5762
	ld (bc),a		;5765
	ld b,(hl)		;5766
	ld b,b			;5767
	ld (02222h),hl		;5768
	ld (00222h),hl		;576b
	ld b,h			;576e
	inc a			;576f
	jr nz,l5792h		;5770
	ld (02022h),hl		;5772
	ld (l504ch),hl		;5775
	ld d,d			;5778
	jr nz,l579dh		;5779
	jr nz,$+36		;577b
	ld a,(bc)		;577d
sub_577eh:
	ld b,(hl)		;577e
	ld b,(hl)		;577f
	ld b,h			;5780
	ld a,(de)		;5781
	ld (02022h),hl		;5782
	inc e			;5785
	djnz $+70		;5786
	ld b,(hl)		;5788
	ld a,(de)		;5789
l578ah:
	ld (02220h),hl		;578a
	ld (l4402h),hl		;578d
	ld b,(hl)		;5790
	ld a,(de)		;5791
l5792h:
	jr nz,$+34		;5792
	jr nz,$+34		;5794
	nop			;5796
	ld b,h			;5797
	ld b,(hl)		;5798
	ld a,(de)		;5799
	ld (02022h),hl		;579a
l579dh:
	ld (l4402h),hl		;579d
	ld b,(hl)		;57a0
	ld a,(de)		;57a1
l57a2h:
	jr nz,$+34		;57a2
	ld (00020h),hl		;57a4
	ld b,(hl)		;57a7
	ld b,h			;57a8
	ld a,(de)		;57a9
l57aah:
	ld (02022h),hl		;57aa
	ld (l4602h),hl		;57ad
	ld b,(hl)		;57b0
	ld h,020h		;57b1
	jr nz,l57d7h		;57b3
	jr nz,l57b9h		;57b5
	ld b,h			;57b7
	ld b,h			;57b8
l57b9h:
	ld h,020h		;57b9
	ld (02020h),hl		;57bb
	nop			;57be
	ld b,(hl)		;57bf
	ld b,(hl)		;57c0
	ld a,(de)		;57c1
	ld (02222h),hl		;57c2
	jr nz,l57c7h		;57c5
l57c7h:
	ld b,h			;57c7
	ld b,(hl)		;57c8
	ld h,020h		;57c9
	ld (02022h),hl		;57cb
	ld (bc),a		;57ce
	ld b,(hl)		;57cf
	ld b,(hl)		;57d0
	ld a,(de)		;57d1
	ld (02222h),hl		;57d2
	jr l580bh		;57d5
l57d7h:
	ld b,(hl)		;57d7
l57d8h:
	ld b,(hl)		;57d8
	ld l,022h		;57d9
	ld (03418h),hl		;57db
	ld b,(hl)		;57de
	ld b,(hl)		;57df
	ld b,(hl)		;57e0
	ld (hl),02ah		;57e1
l57e3h:
	ld (l4602h),hl		;57e3
	ld b,(hl)		;57e6
	ld b,(hl)		;57e7
	ld b,(hl)		;57e8
	ld b,(hl)		;57e9
	ld (hl),02ah		;57ea
	inc (hl)		;57ec
	ld b,(hl)		;57ed
	ld b,(hl)		;57ee
	ld b,h			;57ef
	ld b,(hl)		;57f0
	ld b,(hl)		;57f1
	ld b,(hl)		;57f2
	ld (hl),03ah		;57f3
	ld b,(hl)		;57f5
	ld b,(hl)		;57f6
	ld b,(hl)		;57f7
	ld b,h			;57f8
	ld b,(hl)		;57f9
	ld b,(hl)		;57fa
	ld b,(hl)		;57fb
	ld b,(hl)		;57fc
	ld b,h			;57fd
	ld b,(hl)		;57fe
	ld b,h			;57ff
	ld b,(hl)		;5800
	ld b,h			;5801
	ld b,(hl)		;5802
	ld b,(hl)		;5803
	ld b,(hl)		;5804
	ld b,(hl)		;5805
	ld b,(hl)		;5806
	ld b,(hl)		;5807
	ld a,(l4446h)		;5808
l580bh:
	ld b,(hl)		;580b
	ld b,(hl)		;580c
	ld b,(hl)		;580d
	ld b,(hl)		;580e
	ld b,(hl)		;580f
	ld b,(hl)		;5810
	ld b,(hl)		;5811
	ld b,(hl)		;5812
sub_5813h:
	ld b,(hl)		;5813
	ld b,(hl)		;5814
	ld b,(hl)		;5815
	ld b,(hl)		;5816
	ld b,(hl)		;5817
	ld b,(hl)		;5818
	ld b,(hl)		;5819
	ld b,(hl)		;581a
	ld b,(hl)		;581b
	ld b,(hl)		;581c
	ld b,(hl)		;581d
	ld b,(hl)		;581e
	ld b,(hl)		;581f
	ld b,(hl)		;5820
	ld b,(hl)		;5821
	ld b,(hl)		;5822
	ld b,(hl)		;5823
	ld a,(l4646h)		;5824
	ld b,(hl)		;5827
	ld b,(hl)		;5828
	ld b,(hl)		;5829
	ld b,(hl)		;582a
	ld b,(hl)		;582b
	ld b,(hl)		;582c
	ld b,h			;582d
sub_582eh:
	ld b,(hl)		;582e
	ld b,(hl)		;582f
	ld b,(hl)		;5830
	ld b,(hl)		;5831
	ld b,(hl)		;5832
	ld b,(hl)		;5833
	ld b,(hl)		;5834
sub_5835h:
	ld b,(hl)		;5835
	ld a,(l6260h)		;5836
	ld b,(hl)		;5839
	ld b,(hl)		;583a
	ld a,(0b6b4h)		;583b
	cp b			;583e
	cp d			;583f
	cp h			;5840
	or h			;5841
	or (hl)			;5842
	cp b			;5843
	xor b			;5844
	xor d			;5845
sub_5846h:
	xor h			;5846
	xor (hl)		;5847
	or b			;5848
	xor b			;5849
	xor d			;584a
	xor h			;584b
	jr nz,$+36		;584c
	ld h,h			;584e
	ld h,(hl)		;584f
sub_5850h:
	ld l,b			;5850
	jr nz,$+36		;5851
	jr nz,$+34		;5853
	ld (l6664h),hl		;5855
	ld l,b			;5858
	jr nz,$+36		;5859
	jr nz,l5897h		;585b
	rst 18h			;585d
	di			;585e
	and 0efh		;585f
	ld (0f3dfh),a		;5861
	out (099h),a		;5864
	ld a,080h		;5866
	out (099h),a		;5868
	ld a,(0f3e0h)		;586a
	and 0bfh		;586d
	ld (0f3e0h),a		;586f
l5872h:
	out (099h),a		;5872
	ld a,081h		;5874
	out (099h),a		;5876
	ld a,002h		;5878
	out (099h),a		;587a
	ld a,08fh		;587c
	out (099h),a		;587e
	in a,(099h)		;5880
	and 020h		;5882
	jp nz,l523fh		;5884
l5887h:
	in a,(099h)		;5887
	and 020h		;5889
	jp z,05246h		;588b
	ld a,(0c1fch)		;588e
	out (099h),a		;5891
	ld a,092h		;5893
	out (099h),a		;5895
l5897h:
	push bc			;5897
	ld a,(0c154h)		;5898
	ld b,a			;589b
	out (099h),a		;589c
	ld a,097h		;589e
	out (099h),a		;58a0
	ld a,(0fff1h)		;58a2
	add a,b			;58a5
	out (099h),a		;58a6
	ld a,093h		;58a8
	out (099h),a		;58aa
	ld a,(0ffe7h)		;58ac
	and 0fdh		;58af
	out (099h),a		;58b1
	ld a,088h		;58b3
	out (099h),a		;58b5
	ld a,(l533ch)		;58b7
	out (099h),a		;58ba
	ld a,082h		;58bc
	out (099h),a		;58be
	ld a,(0f3e0h)		;58c0
	or 042h			;58c3
	ld (0f3e0h),a		;58c5
	out (099h),a		;58c8
	ld a,081h		;58ca
	out (099h),a		;58cc
	push de			;58ce
	push hl			;58cf
	exx			;58d0
	ex af,af'		;58d1
	push af			;58d2
	push bc			;58d3
	push de			;58d4
	push hl			;58d5
	ld a,(l5e5dh)		;58d6
	or a			;58d9
	call nz,sub_6353h	;58da
	di			;58dd
	call sub_5850h		;58de
	ld a,(l5e5dh)		;58e1
	or a			;58e4
l58e5h:
	call nz,sub_63e3h	;58e5
	pop hl			;58e8
	pop de			;58e9
	pop bc			;58ea
	pop af			;58eb
	ex af,af'		;58ec
	exx			;58ed
	pop hl			;58ee
	pop de			;58ef
	pop bc			;58f0
	ret			;58f1
	ld a,(0ffe7h)		;58f2
	or 002h			;58f5
	out (099h),a		;58f7
	ld a,088h		;58f9
	out (099h),a		;58fb
	xor a			;58fd
	out (099h),a		;58fe
	ld a,097h		;5900
l5902h:
	out (099h),a		;5902
	ld a,(0fff1h)		;5904
l5907h:
	out (099h),a		;5907
	ld a,093h		;5909
	out (099h),a		;590b
	ld a,(0f3dfh)		;590d
	or 010h			;5910
	out (099h),a		;5912
	ld (0f3dfh),a		;5914
	ld a,080h		;5917
	out (099h),a		;5919
l591bh:
	ld a,05fh		;591b
	out (099h),a		;591d
	ld a,082h		;591f
	out (099h),a		;5921
	ld a,002h		;5923
	out (099h),a		;5925
	ld a,08fh		;5927
	out (099h),a		;5929
	push bc			;592b
	push de			;592c
	push hl			;592d
	exx			;592e
l592fh:
	ex af,af'		;592f
	push af			;5930
	push bc			;5931
	push de			;5932
	push hl			;5933
	ld a,(0c39ch)		;5934
	or a			;5937
	jp nz,l5300h		;5938
	call 0055dh		;593b
	call 00560h		;593e
	call 0051eh		;5941
	call 00575h		;5944
	ld a,(0c1f1h)		;5947
	ld (0c1fch),a		;594a
	ld a,(0f3e1h)		;594d
	ld (l533ch),a		;5950
	ld a,(0fff6h)		;5953
	ld (0c154h),a		;5956
	ld a,(0c39fh)		;5959
	and 040h		;595c
	call nz,00521h		;595e
	ld a,001h		;5961
	ld (0c156h),a		;5963
	call sub_582eh		;5966
	xor a			;5969
	out (099h),a		;596a
	ld a,092h		;596c
	out (099h),a		;596e
	call sub_6b06h		;5970
	pop hl			;5973
	pop de			;5974
	pop bc			;5975
	pop af			;5976
	ex af,af'		;5977
	exx			;5978
	pop hl			;5979
	pop de			;597a
	pop bc			;597b
	ret			;597c
	nop			;597d
	xor a			;597e
	ld hl,0c156h		;597f
	cp (hl)			;5982
l5983h:
	jp z,05341h		;5983
	ld (hl),a		;5986
	ld a,(l5d38h)		;5987
	or a			;598a
l598bh:
	call z,00313h		;598b
	ld a,(0c39ch)		;598e
	or a			;5991
	jr nz,l59c9h		;5992
	call sub_5caeh		;5994
	call sub_53ceh		;5997
	jr nz,l59a5h		;599a
	call 00515h		;599c
	call 00518h		;599f
	call 00566h		;59a2
l59a5h:
	call 00569h		;59a5
	call 00530h		;59a8
	call sub_7212h		;59ab
l59aeh:
	jp c,05376h		;59ae
	call sub_566dh		;59b1
	call sub_5460h		;59b4
	call 00572h		;59b7
	call 05393h		;59ba
	call 0052dh		;59bd
	call sub_721fh		;59c0
	call 053bdh		;59c3
	call 053a2h		;59c6
l59c9h:
	ei			;59c9
sub_59cah:
	call 0050ch		;59ca
	call 00503h		;59cd
	call 00506h		;59d0
	ret			;59d3
	ld a,(l6596h)		;59d4
	or a			;59d7
	jp nz,l71c1h		;59d8
	ld a,(0c308h)		;59db
	or a			;59de
	jp nz,0056fh		;59df
	ret			;59e2
	ld a,(0fbe9h)		;59e3
	and 010h		;59e6
	jp nz,l53b8h		;59e8
	ld a,(l53b7h)		;59eb
	or a			;59ee
	ret nz			;59ef
	ld a,001h		;59f0
	ld (l53b7h),a		;59f2
	jp 00551h		;59f5
	nop			;59f8
	xor a			;59f9
	ld (l53b7h),a		;59fa
	ret			;59fd
	ld a,(0fbeah)		;59fe
	and 001h		;5a01
	ret nz			;5a03
	ld a,020h		;5a04
	ld (0c143h),a		;5a06
	ld a,0e0h		;5a09
	ld (0c1a4h),a		;5a0b
	ret			;5a0e
	ld a,(0c3cfh)		;5a0f
	or a			;5a12
	ret z			;5a13
	ld a,(0fbe8h)		;5a14
l5a17h:
	bit 6,a			;5a17
	ld a,(0c3cfh)		;5a19
	jp nz,l53e3h		;5a1c
	xor a			;5a1f
	ld (0c3cfh),a		;5a20
	ret			;5a23
	ld (0c202h),a		;5a24
	add a,004h		;5a27
	ld (0c206h),a		;5a29
	ld a,(0c3d0h)		;5a2c
	or a			;5a2f
	jp nz,053fch		;5a30
	ld a,001h		;5a33
	ld (0c109h),a		;5a35
	ld a,005h		;5a38
	call 0050fh		;5a3a
	xor a			;5a3d
	ld (0c106h),a		;5a3e
	ld a,(0c104h)		;5a41
	and 0fdh		;5a44
	ld (0c104h),a		;5a46
	ld a,006h		;5a49
	ld (0c208h),a		;5a4b
	ld (0c20ch),a		;5a4e
	ld a,(0c3d0h)		;5a51
	and 007h		;5a54
	jr nz,l5a66h		;5a56
	ld a,(0c3cfh)		;5a58
	add a,008h		;5a5b
	cp 060h			;5a5d
	jr nz,l5a63h		;5a5f
	ld a,048h		;5a61
l5a63h:
	ld (0c3cfh),a		;5a63
l5a66h:
	ld a,(0c200h)		;5a66
	ld (0c204h),a		;5a69
	ld a,(0c201h)		;5a6c
	ld (0c205h),a		;5a6f
	ld hl,0c10dh		;5a72
	ld b,(hl)		;5a75
	ld (hl),016h		;5a76
	xor a			;5a78
	call 055ffh		;5a79
	ld a,(0c3d0h)		;5a7c
	inc a			;5a7f
	ld (0c3d0h),a		;5a80
	cp 0a4h			;5a83
	ld b,030h		;5a85
	call nc,07285h		;5a87
	ld a,(0c3d0h)		;5a8a
	cp 0d2h			;5a8d
	ret nz			;5a8f
	ld a,005h		;5a90
	call 0050fh		;5a92
	ld a,001h		;5a95
	ld (0c13dh),a		;5a97
	call sub_725dh		;5a9a
	ld a,001h		;5a9d
	and a			;5a9f
	ret			;5aa0
	xor a			;5aa1
	ld (0c160h),a		;5aa2
	ld a,006h		;5aa5
	ld (0c238h),a		;5aa7
	ld (0c23ch),a		;5aaa
	ld hl,0c280h		;5aad
	ld de,0c240h		;5ab0
	ld a,010h		;5ab3
	ld (0c15fh),a		;5ab5
	ld b,007h		;5ab8
	push de			;5aba
	ld a,(hl)		;5abb
	and 01fh		;5abc
	cp 015h			;5abe
	jp z,l5528h		;5ac0
	inc hl			;5ac3
	or a			;5ac4
	jp z,054b8h		;5ac5
	cp 004h			;5ac8
	jr z,l5b11h		;5aca
	dec a			;5acc
	call z,sub_5622h	;5acd
	call nz,l555bh+1	;5ad0
	pop de			;5ad3
	push hl			;5ad4
	ldi			;5ad5
l5ad7h:
	ldi			;5ad7
	ldi			;5ad9
	ldi			;5adb
	pop hl			;5add
	ldi			;5ade
	ldi			;5ae0
	ld a,(hl)		;5ae2
	inc a			;5ae3
	ld (de),a		;5ae4
	inc de			;5ae5
l5ae6h:
	inc de			;5ae6
	ld bc,0000dh		;5ae7
l5aeah:
	add hl,bc		;5aea
	ld a,(0c15fh)		;5aeb
	add a,002h		;5aee
	ld (0c15fh),a		;5af0
	cp 01eh			;5af3
l5af5h:
	jp nz,l5479h		;5af5
	ret			;5af8
l5af9h:
	pop de			;5af9
	ld bc,0000fh		;5afa
	add hl,bc		;5afd
	ex de,hl		;5afe
	ld c,008h		;5aff
	add hl,bc		;5b01
	ex de,hl		;5b02
	ld a,(0c15fh)		;5b03
	add a,002h		;5b06
	ld (0c15fh),a		;5b08
	cp 01eh			;5b0b
	jp nz,l5479h		;5b0d
	ret			;5b10
l5b11h:
	dec hl			;5b11
	ld a,(hl)		;5b12
l5b13h:
	cp 024h			;5b13
	jr z,l5b54h		;5b15
	inc hl			;5b17
	push hl			;5b18
	inc hl			;5b19
	inc hl			;5b1a
	inc hl			;5b1b
	ld a,(hl)		;5b1c
	cp 016h			;5b1d
	jr z,l5b2ah		;5b1f
	ld (hl),016h		;5b21
	pop hl			;5b23
l5b24h:
	call 055f5h		;5b24
	jp 05492h		;5b27
l5b2ah:
	inc hl			;5b2a
	ld a,(hl)		;5b2b
	inc a			;5b2c
	ld (hl),a		;5b2d
	cp 00ch			;5b2e
	jr z,l5b44h		;5b30
	and 003h		;5b32
l5b34h:
	jr z,l5b3ah		;5b34
	pop hl			;5b36
	jp 05492h		;5b37
l5b3ah:
	dec hl			;5b3a
	dec hl			;5b3b
l5b3ch:
	ld a,(hl)		;5b3c
	add a,008h		;5b3d
	ld (hl),a		;5b3f
l5b40h:
	pop hl			;5b40
	jp 05492h		;5b41
l5b44h:
	dec hl			;5b44
	ld (hl),022h		;5b45
l5b47h:
	pop hl			;5b47
	call 055f5h		;5b48
	ld (hl),006h		;5b4b
	dec hl			;5b4d
	ld (hl),000h		;5b4e
	inc hl			;5b50
l5b51h:
	jp 05492h		;5b51
l5b54h:
	ld (hl),004h		;5b54
	inc hl			;5b56
	push hl			;5b57
	inc hl			;5b58
	inc hl			;5b59
	ld (hl),04bh		;5b5a
	inc hl			;5b5c
	ld (hl),022h		;5b5d
	inc hl			;5b5f
	ld (hl),000h		;5b60
	pop hl			;5b62
	call 055f5h		;5b63
	jp 05492h		;5b66
	ld (hl),001h		;5b69
l5b6bh:
	inc hl			;5b6b
	ld a,(0fff6h)		;5b6c
	ld b,a			;5b6f
	ld a,(hl)		;5b70
	sub b			;5b71
	ld (hl),a		;5b72
	call 055f5h		;5b73
	jp 054b8h		;5b76
	dec hl			;5b79
	dec hl			;5b7a
	dec hl			;5b7b
	djnz l5bafh		;5b7c
	pop hl			;5b7e
	ld a,(0c235h)		;5b7f
	cp d			;5b82
	ret c			;5b83
	cp e			;5b84
	ret nc			;5b85
	ld a,(0c234h)		;5b86
	cp c			;5b89
	ret c			;5b8a
	sub 010h		;5b8b
	cp c			;5b8d
	ret nc			;5b8e
	ld a,0f0h		;5b8f
	ld (0c235h),a		;5b91
	ld a,005h		;5b94
	ld (0c234h),a		;5b96
	jp l559ah		;5b99
	ret			;5b9c
	ld a,(hl)		;5b9d
	sub 008h		;5b9e
	ld c,a			;5ba0
	push hl			;5ba1
	inc hl			;5ba2
	ld a,(hl)		;5ba3
	sub 010h		;5ba4
	ld d,a			;5ba6
	add a,01eh		;5ba7
	ld e,a			;5ba9
	ld hl,0c229h		;5baa
	ld b,007h		;5bad
l5bafh:
	ld a,(hl)		;5baf
	dec hl			;5bb0
	cp d			;5bb1
	jp c,l5538h		;5bb2
	cp e			;5bb5
	jp nc,l5538h		;5bb6
	ld a,(hl)		;5bb9
	cp c			;5bba
	jp c,l5538h		;5bbb
	sub 010h		;5bbe
	cp c			;5bc0
	jp nc,l5538h		;5bc1
	ld a,(0c151h)		;5bc4
	or a			;5bc7
	jp z,l5594h		;5bc8
	ld a,b			;5bcb
	cp 004h			;5bcc
	jp nc,l5594h		;5bce
	pop hl			;5bd1
	jp l559ah		;5bd2
	ld a,0f0h		;5bd5
	ld (hl),a		;5bd7
	inc hl			;5bd8
	ld (hl),a		;5bd9
	pop hl			;5bda
	ld a,(0c13eh)		;5bdb
	ld b,a			;5bde
	ld de,00007h		;5bdf
	add hl,de		;5be2
	ld a,(hl)		;5be3
	sub b			;5be4
	ld (hl),a		;5be5
	jp c,l55bah		;5be6
	inc hl			;5be9
	ld a,(hl)		;5bea
	inc a			;5beb
	ld (0c107h),a		;5bec
	ld a,001h		;5bef
	ld (0c106h),a		;5bf1
	ld (0c108h),a		;5bf4
	dec hl			;5bf7
	sbc hl,de		;5bf8
	ret			;5bfa
	inc hl			;5bfb
	ld a,(hl)		;5bfc
	ld (0c107h),a		;5bfd
	ld a,001h		;5c00
	ld (0c106h),a		;5c02
	ld (0c108h),a		;5c05
	inc hl			;5c08
	ld a,(hl)		;5c09
	dec hl			;5c0a
l5c0bh:
	dec hl			;5c0b
	sbc hl,de		;5c0c
sub_5c0eh:
	ld (hl),024h		;5c0e
	inc hl			;5c10
	or a			;5c11
	ret z			;5c12
	inc a			;5c13
	jr z,l5c2fh		;5c14
	ld a,(0c14ch)		;5c16
	or a			;5c19
	ret nz			;5c1a
	inc a			;5c1b
	ld (0c14ch),a		;5c1c
	ld a,(0fff6h)		;5c1f
	add a,(hl)		;5c22
	ld (0c14ah),a		;5c23
	inc hl			;5c26
	ld a,(hl)		;5c27
	sub 004h		;5c28
	ld (0c14bh),a		;5c2a
	dec hl			;5c2d
	ret			;5c2e
l5c2fh:
	inc hl			;5c2f
	ld a,(hl)		;5c30
	sub 020h		;5c31
	ld (hl),a		;5c33
	dec hl			;5c34
	ret			;5c35
	inc hl			;5c36
	inc hl			;5c37
	inc hl			;5c38
	ld b,(hl)		;5c39
	dec hl			;5c3a
	dec hl			;5c3b
	dec hl			;5c3c
	ld a,(0c15fh)		;5c3d
	push hl			;5c40
	ld h,000h		;5c41
	ld l,b			;5c43
	add hl,hl		;5c44
	add hl,hl		;5c45
	add hl,hl		;5c46
	add hl,hl		;5c47
	ld de,l4803h		;5c48
	add hl,de		;5c4b
	push hl			;5c4c
	ld l,a			;5c4d
	ld h,000h		;5c4e
	add hl,hl		;5c50
	add hl,hl		;5c51
	add hl,hl		;5c52
	add hl,hl		;5c53
	ld de,07400h		;5c54
	add hl,de		;5c57
	call 00145h		;5c58
	pop hl			;5c5b
	ld c,098h		;5c5c
	call 005b4h		;5c5e
	pop hl			;5c61
	ret			;5c62
	call sub_7404h		;5c63
	ld b,(hl)		;5c66
	inc hl			;5c67
	ld a,(hl)		;5c68
	cp 003h			;5c69
l5c6bh:
	jp c,l565eh		;5c6b
	cp 0e3h			;5c6e
	jp nc,l565eh		;5c70
	dec hl			;5c73
	cp 012h			;5c74
	ld c,001h		;5c76
	jr c,l5c7fh		;5c78
	cp 0d2h			;5c7a
	ld c,0e1h		;5c7c
	ret c			;5c7e
l5c7fh:
	ld a,(0c160h)		;5c7f
	inc a			;5c82
	cp 003h			;5c83
	ret z			;5c85
	ld (0c160h),a		;5c86
	dec a			;5c89
	jp z,l5655h		;5c8a
	ld a,c			;5c8d
	ld (0c23dh),a		;5c8e
	ld a,b			;5c91
	ld (0c23ch),a		;5c92
	ret			;5c95
	ld a,c			;5c96
	ld (0c239h),a		;5c97
	ld a,b			;5c9a
	ld (0c238h),a		;5c9b
	ret			;5c9e
	ld a,(0c15fh)		;5c9f
	add a,a			;5ca2
	add a,a			;5ca3
	add a,a			;5ca4
	ld (hl),a		;5ca5
	dec hl			;5ca6
	ld (hl),006h		;5ca7
	dec hl			;5ca9
	ld (hl),000h		;5caa
	inc hl			;5cac
	ret			;5cad
sub_5caeh:
	ld a,(0c149h)		;5cae
	dec a			;5cb1
	ld (0c149h),a		;5cb2
	ret nz			;5cb5
	ld a,(0c147h)		;5cb6
	ld h,a			;5cb9
	ld a,(0c148h)		;5cba
	ld l,a			;5cbd
	ld a,(hl)		;5cbe
	ld (0c149h),a		;5cbf
	inc hl			;5cc2
	ld e,(hl)		;5cc3
	inc hl			;5cc4
	ld c,(hl)		;5cc5
	inc hl			;5cc6
	ld a,l			;5cc7
	ld (0c148h),a		;5cc8
	ld a,h			;5ccb
	ld (0c147h),a		;5ccc
	ld d,000h		;5ccf
	ld hl,07c78h		;5cd1
	add hl,de		;5cd4
	ld (hl),c		;5cd5
	dec hl			;5cd6
	ex de,hl		;5cd7
	ld bc,00010h		;5cd8
	ld hl,0c280h		;5cdb
	ld a,(hl)		;5cde
l5cdfh:
	or a			;5cdf
	jr z,l5cffh		;5ce0
	add hl,bc		;5ce2
	ld a,(hl)		;5ce3
	or a			;5ce4
	jr z,l5cffh		;5ce5
	add hl,bc		;5ce7
	ld a,(hl)		;5ce8
	or a			;5ce9
	jr z,l5cffh		;5cea
	add hl,bc		;5cec
	ld a,(hl)		;5ced
	or a			;5cee
	jr z,l5cffh		;5cef
	add hl,bc		;5cf1
	ld a,(hl)		;5cf2
	or a			;5cf3
	jr z,l5cffh		;5cf4
	add hl,bc		;5cf6
	ld a,(hl)		;5cf7
	or a			;5cf8
	jr z,l5cffh		;5cf9
	add hl,bc		;5cfb
	ld a,(hl)		;5cfc
	or a			;5cfd
	ret nz			;5cfe
l5cffh:
	ex de,hl		;5cff
	ldir			;5d00
	ret			;5d02
	push hl			;5d03
	ld de,00010h		;5d04
	ld hl,0c280h		;5d07
	ld b,007h		;5d0a
l5d0ch:
	ld a,(hl)		;5d0c
	or a			;5d0d
	jr z,l5d13h		;5d0e
	add hl,de		;5d10
	djnz l5d0ch		;5d11
l5d13h:
	pop hl			;5d13
	ret			;5d14
	ld a,01ch		;5d15
	ld (0fff6h),a		;5d17
	xor a			;5d1a
	ld (0c1f9h),a		;5d1b
	ld (0c1f8h),a		;5d1e
	ld (0c1f5h),a		;5d21
	ld a,001h		;5d24
	ld (0c1f3h),a		;5d26
	ld (0c1f4h),a		;5d29
	ld hl,05b04h		;5d2c
	call 0048bh		;5d2f
	ld a,(0c113h)		;5d32
	add a,a			;5d35
	ld b,a			;5d36
	add a,a			;5d37
l5d38h:
	add a,b			;5d38
	add a,012h		;5d39
	ld (l5b13h),a		;5d3b
	ld hl,l5b13h		;5d3e
	call 0048bh		;5d41
	call 0051bh		;5d44
	ld a,020h		;5d47
	ld (l5b51h+2),a		;5d49
	xor a			;5d4c
	ld (l5b54h+1),a		;5d4d
	ld (05b4fh),a		;5d50
	ld (l5b51h),a		;5d53
	ld a,(0c308h)		;5d56
	or a			;5d59
	ld de,00000h		;5d5a
	jp z,l5735h		;5d5d
	dec a			;5d60
	ld de,00210h		;5d61
	ld b,005h		;5d64
	jp z,l5740h		;5d66
	dec a			;5d69
	ld de,00370h		;5d6a
	jp z,l5756h		;5d6d
	ld de,00470h		;5d70
	jp l5756h		;5d73
	ld a,(05b5eh)		;5d76
	cp 002h			;5d79
	jp z,l5756h		;5d7b
	jp 0576ah		;5d7e
	ld a,(0fff6h)		;5d81
	add a,b			;5d84
	ld (0fff6h),a		;5d85
	ld a,(0fff2h)		;5d88
	add a,b			;5d8b
	ld (0fff2h),a		;5d8c
	di			;5d8f
	out (099h),a		;5d90
	ld a,097h		;5d92
	ei			;5d94
	out (099h),a		;5d95
	ld a,032h		;5d97
	ld (0c201h),a		;5d99
	add a,002h		;5d9c
	ld (0c205h),a		;5d9e
	sub 00ah		;5da1
	ld (0c209h),a		;5da3
	sub 002h		;5da6
	ld (0c20dh),a		;5da8
	ld a,d			;5dab
	ld (0c1f7h),a		;5dac
	ld a,e			;5daf
	ld (0c1f6h),a		;5db0
	ld hl,l4bc3h		;5db3
	add hl,de		;5db6
	or a			;5db7
	jp z,l57d8h		;5db8
l5dbbh:
	ld b,006h		;5dbb
l5dbdh:
	push bc			;5dbd
	ld b,008h		;5dbe
l5dc0h:
	push bc			;5dc0
	ld d,000h		;5dc1
	ld e,(hl)		;5dc3
	push hl			;5dc4
	ld hl,l5a17h		;5dc5
	add hl,de		;5dc8
	ld a,(hl)		;5dc9
	ld (05b4fh),a		;5dca
	inc hl			;5dcd
	ld a,(hl)		;5dce
	bit 0,a			;5dcf
	jp z,l57a2h		;5dd1
	and 0feh		;5dd4
	add a,020h		;5dd6
	ld (l5b51h),a		;5dd8
	ld a,002h		;5ddb
	ld (l5b51h+1),a		;5ddd
	jp l57aah		;5de0
	ld (l5b51h),a		;5de3
	ld a,003h		;5de6
	ld (l5b51h+1),a		;5de8
	ld hl,05b4fh		;5deb
	call 0048bh		;5dee
	ld a,(l5b54h+1)		;5df1
	add a,020h		;5df4
	ld (l5b54h+1),a		;5df6
	pop hl			;5df9
	inc hl			;5dfa
	pop bc			;5dfb
	djnz l5dc0h		;5dfc
	pop bc			;5dfe
	ld a,(l5b51h+2)		;5dff
	add a,020h		;5e02
sub_5e04h:
	ld (l5b51h+2),a		;5e04
	djnz l5dbdh		;5e07
	ld hl,(0c1f6h)		;5e09
	ld de,00030h		;5e0c
	add hl,de		;5e0f
	ld (0c1f6h),hl		;5e10
	call 059b6h		;5e13
	jp l57e3h		;5e16
	ld hl,059f7h		;5e19
	ld de,05a07h		;5e1c
	ld bc,00010h		;5e1f
	ldir			;5e22
	ld a,007h		;5e24
	ld (0c1f1h),a		;5e26
	ld a,0ffh		;5e29
	ld (0c1f2h),a		;5e2b
	ld a,005h		;5e2e
	ld (0c300h),a		;5e30
	ld a,010h		;5e33
	ld (l5af9h),a		;5e35
	ld a,0e0h		;5e38
	ld (l5b44h),a		;5e3a
	ld (l5aeah),a		;5e3d
	ld (05b31h),a		;5e40
	ld a,0d0h		;5e43
	ld (l5b34h+1),a		;5e45
	xor a			;5e48
	ld (l5b24h),a		;5e49
	ld (05b28h),a		;5e4c
	ld (05b29h),a		;5e4f
	ld (0c1f9h),a		;5e52
	ld (0c1f8h),a		;5e55
	call 05949h		;5e58
	ld a,03fh		;5e5b
l5e5dh:
	ld (0f3e1h),a		;5e5d
	di			;5e60
	out (099h),a		;5e61
	ld a,082h		;5e63
	ei			;5e65
	out (099h),a		;5e66
	ld hl,l5ad7h		;5e68
	call 0048bh		;5e6b
	ret			;5e6e
	in a,(099h)		;5e6f
	rra			;5e71
	jp c,sub_582eh		;5e72
	ret			;5e75
	ld hl,0c16fh		;5e76
	ld de,00003h		;5e79
	ld b,007h		;5e7c
l5e7eh:
	ld a,(hl)		;5e7e
	or a			;5e7f
	call nz,sub_5846h	;5e80
	add hl,de		;5e83
	djnz l5e7eh		;5e84
	ret			;5e86
	inc hl			;5e87
	inc hl			;5e88
	ld a,(hl)		;5e89
	dec a			;5e8a
	ld (hl),a		;5e8b
	dec hl			;5e8c
	dec hl			;5e8d
	ret nz			;5e8e
	ld (hl),a		;5e8f
	ret			;5e90
	ld a,(0c39ch)		;5e91
	or a			;5e94
	ret nz			;5e95
	ld a,(0c1f7h)		;5e96
	cp 000h			;5e99
	jp z,0586eh		;5e9b
	ld a,(0c1f7h)		;5e9e
	cp 001h			;5ea1
	jp z,0586eh		;5ea3
	ld a,001h		;5ea6
	ld (0c10eh),a		;5ea8
	jp l5887h		;5eab
	ret			;5eae
	xor a			;5eaf
	ld (0c10eh),a		;5eb0
	ld hl,(0c1f6h)		;5eb3
	inc hl			;5eb6
	ld (0c1f6h),hl		;5eb7
	ret			;5eba
	ld a,(0c1f3h)		;5ebb
	dec a			;5ebe
	ld (0c1f3h),a		;5ebf
	jp nz,l5740h		;5ec2
	jp 0588fh		;5ec5
	ld a,(0c1f3h)		;5ec8
	dec a			;5ecb
	ld (0c1f3h),a		;5ecc
	ret nz			;5ecf
	ld a,(0c1f4h)		;5ed0
	ld (0c1f3h),a		;5ed3
	ld a,(0c1f5h)		;5ed6
	or a			;5ed9
	ret nz			;5eda
	ld a,(0c39ch)		;5edb
	or a			;5ede
	ret nz			;5edf
	call 0055ah		;5ee0
	call 058c9h		;5ee3
	ld a,(0c1f2h)		;5ee6
	inc a			;5ee9
	and 01fh		;5eea
	ld (0c1f2h),a		;5eec
	and 001h		;5eef
	ret nz			;5ef1
	call sub_5835h		;5ef2
	ld a,(0c1f1h)		;5ef5
	inc a			;5ef8
	and 00fh		;5ef9
	ld (0c1f1h),a		;5efb
	cp 008h			;5efe
	ret nz			;5f00
	ld a,(0f3e1h)		;5f01
	xor 020h		;5f04
	ld (0f3e1h),a		;5f06
	ret			;5f09
	ld a,(0c300h)		;5f0a
	and 001h		;5f0d
	jp nz,l58e5h		;5f0f
	call 05964h		;5f12
	ld hl,l5af5h		;5f15
	call 0048bh		;5f18
	ld a,(l5af9h)		;5f1b
	inc a			;5f1e
	and 01fh		;5f1f
	or 010h			;5f21
	ld (l5af9h),a		;5f23
l5f26h:
	ld a,(0c300h)		;5f26
	cp 003h			;5f29
	jp nz,l5902h		;5f2b
	ld hl,l5ae6h		;5f2e
	call 0048bh		;5f31
	ld a,(l5aeah)		;5f34
	add a,002h		;5f37
	cp 0f0h			;5f39
	jp nz,058ffh		;5f3b
	ld a,0e0h		;5f3e
	ld (l5aeah),a		;5f40
l5f43h:
	ld a,(0c300h)		;5f43
	dec a			;5f46
	jp nz,l592fh		;5f47
	ld hl,05b31h		;5f4a
	call 0048bh		;5f4d
	ld a,(l5b34h+1)		;5f50
	add a,002h		;5f53
	cp 0e0h			;5f55
	jp nz,l591bh		;5f57
	ld a,0d0h		;5f5a
	ld (l5b34h+1),a		;5f5c
	ld a,(05b31h)		;5f5f
	add a,002h		;5f62
	cp 0f0h			;5f64
	jp nz,0592ah		;5f66
	ld a,0e0h		;5f69
	ld (05b31h),a		;5f6b
	ld a,004h		;5f6e
	ld (0c300h),a		;5f70
	ld hl,05b22h		;5f73
	call 0048bh		;5f76
	ld a,(l5b24h)		;5f79
	add a,008h		;5f7c
	ld (l5b24h),a		;5f7e
	ld (05b28h),a		;5f81
	ld a,(0c1f2h)		;5f84
	cp 01fh			;5f87
	ret nz			;5f89
	ld a,(05b29h)		;5f8a
	ld (l5b24h+1),a		;5f8d
	ld (l5b34h),a		;5f90
	ld (05afch),a		;5f93
	ld (l5b47h),a		;5f96
	xor 001h		;5f99
	ld (05b29h),a		;5f9b
	ld (05b38h),a		;5f9e
	ld (05aedh),a		;5fa1
	ret			;5fa4
	ld hl,05a07h		;5fa5
	ld a,(hl)		;5fa8
	ld (l5b40h),a		;5fa9
	inc a			;5fac
	ld (hl),a		;5fad
	inc hl			;5fae
	ld a,(hl)		;5faf
	bit 0,a			;5fb0
	jp z,l5983h		;5fb2
	and 0feh		;5fb5
	add a,020h		;5fb7
	ld (05b42h),a		;5fb9
	ld a,002h		;5fbc
	ld (05b43h),a		;5fbe
	jp l598bh		;5fc1
	ld (05b42h),a		;5fc4
	ld a,003h		;5fc7
	ld (05b43h),a		;5fc9
	inc hl			;5fcc
	ex de,hl		;5fcd
	ld hl,l5b40h		;5fce
	call 0048bh		;5fd1
	ex de,hl		;5fd4
	ld a,(05b46h)		;5fd5
	add a,020h		;5fd8
	ld (05b46h),a		;5fda
	jp nz,05967h		;5fdd
	ld (05b46h),a		;5fe0
	ld a,(l5b44h)		;5fe3
	inc a			;5fe6
	and 00fh		;5fe7
	or 0e0h			;5fe9
	ld (l5b44h),a		;5feb
	ld a,(05a07h)		;5fee
	and 01fh		;5ff1
	jp z,059b6h		;5ff3
	ret			;5ff6
	xor a			;5ff7
	ld (0c1f8h),a		;5ff8
	call sub_59cah		;5ffb
sub_5ffeh:
	ld a,(l4df9h)		;5ffe
	ld h,c			;6001
	ld l,(hl)		;6002
	ld h,d			;6003
	ld l,a			;6004
	ld (hl),a		;6005
	jr nz,$+52		;6006
	jr nz,l6037h		;6008
	jr nz,$+71		;600a
	ld l,(hl)		;600c
	ld h,h			;600d
	ld h,h			;600e
	ld h,l			;600f
	ld l,l			;6010
	ld l,a			;6011
	jr nz,l6041h		;6012
	jr nz,l605bh		;6014
	ld (hl),e		;6016
	ld h,e			;6017
	ld h,c			;6018
	ld (hl),b		;6019
	ld h,l			;601a
	jr nz,l6063h		;601b
	ld (hl),d		;601d
	ld l,a			;601e
	ld l,l			;601f
sub_6020h:
	jr nz,l606fh		;6020
	ld h,c			;6022
	ld l,(hl)		;6023
	ld h,d			;6024
	ld l,a			;6025
	ld (hl),a		;6026
	jr nz,l6049h		;6027
	jr nz,l604bh		;6029
	jr nz,l604dh		;602b
	jr nz,l604fh		;602d
	jr nz,$+34		;602f
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
l6049h:
	ld d,h			;6049
	ld d,d			;604a
l604bh:
	ld d,e			;604b
	ld b,d			;604c
l604dh:
	ld c,e			;604d
	add hl,bc		;604e
l604fh:
	ld bc,00000h		;604f
	ld bc,00302h		;6052
l6055h:
	inc b			;6055
	dec b			;6056
l6057h:
	ld b,007h		;6057
l6059h:
	ex af,af'		;6059
	add hl,bc		;605a
l605bh:
	nop			;605b
	nop			;605c
l605dh:
	nop			;605d
	nop			;605e
l605fh:
	nop			;605f
	nop			;6060
l6061h:
	nop			;6061
	nop			;6062
l6063h:
	nop			;6063
	nop			;6064
	nop			;6065
	nop			;6066
	nop			;6067
	nop			;6068
	nop			;6069
	nop			;606a
	nop			;606b
	nop			;606c
	nop			;606d
	nop			;606e
l606fh:
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
sub_608dh:
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
l60e0h:
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
l6112h:
	nop			;6112
	nop			;6113
l6114h:
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
l612bh:
	nop			;612b
l612ch:
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
	nop			;6157
	nop			;6158
l6159h:
	add hl,bc		;6159
	add hl,bc		;615a
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
	nop			;61c0
	nop			;61c1
	nop			;61c2
	nop			;61c3
	nop			;61c4
	nop			;61c5
	nop			;61c6
	nop			;61c7
	nop			;61c8
	nop			;61c9
	nop			;61ca
	ld de,00000h		;61cb
	nop			;61ce
	nop			;61cf
	nop			;61d0
	nop			;61d1
	nop			;61d2
	nop			;61d3
	nop			;61d4
	nop			;61d5
	nop			;61d6
	ld d,000h		;61d7
	nop			;61d9
	nop			;61da
	nop			;61db
	nop			;61dc
	nop			;61dd
	nop			;61de
	nop			;61df
	nop			;61e0
	nop			;61e1
	nop			;61e2
	jr l61e5h		;61e3
l61e5h:
	nop			;61e5
	nop			;61e6
	nop			;61e7
	nop			;61e8
	nop			;61e9
	nop			;61ea
	nop			;61eb
	nop			;61ec
	nop			;61ed
	nop			;61ee
	add hl,de		;61ef
	nop			;61f0
	nop			;61f1
	nop			;61f2
	nop			;61f3
	nop			;61f4
	nop			;61f5
	nop			;61f6
	nop			;61f7
	nop			;61f8
	nop			;61f9
	nop			;61fa
	jr l61fdh		;61fb
l61fdh:
	nop			;61fd
sub_61feh:
	nop			;61fe
	nop			;61ff
	nop			;6200
	nop			;6201
	nop			;6202
	nop			;6203
	nop			;6204
	nop			;6205
	nop			;6206
	add hl,de		;6207
	nop			;6208
	nop			;6209
	nop			;620a
	nop			;620b
	nop			;620c
	nop			;620d
	nop			;620e
	nop			;620f
	nop			;6210
	nop			;6211
	nop			;6212
	jr l6215h		;6213
l6215h:
	nop			;6215
	nop			;6216
	nop			;6217
	nop			;6218
	nop			;6219
	nop			;621a
	nop			;621b
	nop			;621c
	nop			;621d
	nop			;621e
	add hl,de		;621f
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
	jr l622dh		;622b
l622dh:
	nop			;622d
	nop			;622e
	nop			;622f
	nop			;6230
	nop			;6231
	nop			;6232
	nop			;6233
	nop			;6234
	nop			;6235
	nop			;6236
	add hl,de		;6237
	nop			;6238
	nop			;6239
	nop			;623a
	nop			;623b
	nop			;623c
	nop			;623d
	nop			;623e
	nop			;623f
	nop			;6240
	nop			;6241
	nop			;6242
	jr l6245h		;6243
l6245h:
	nop			;6245
	nop			;6246
	nop			;6247
	nop			;6248
	nop			;6249
	nop			;624a
l624bh:
	nop			;624b
	nop			;624c
	nop			;624d
	nop			;624e
	add hl,de		;624f
	nop			;6250
	nop			;6251
	nop			;6252
	nop			;6253
	nop			;6254
	nop			;6255
	nop			;6256
	nop			;6257
	nop			;6258
	nop			;6259
	nop			;625a
	jr l625dh		;625b
l625dh:
	nop			;625d
	nop			;625e
	nop			;625f
l6260h:
	nop			;6260
	nop			;6261
	nop			;6262
	nop			;6263
	nop			;6264
	nop			;6265
	nop			;6266
	ld bc,00000h		;6267
	nop			;626a
	nop			;626b
	nop			;626c
	nop			;626d
	nop			;626e
	nop			;626f
	nop			;6270
	nop			;6271
	nop			;6272
	jr l6275h		;6273
l6275h:
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
	add hl,de		;627f
	ld a,(bc)		;6280
	rrca			;6281
	ld h,c			;6282
	nop			;6283
	ld (hl),009h		;6284
	ld a,(01400h)		;6286
	rrca			;6289
	rlca			;628a
	ld d,061h		;628b
	nop			;628d
l628eh:
	ld a,(bc)		;628e
	rrca			;628f
	ld h,h			;6290
	djnz l62f6h		;6291
	inc bc			;6293
	nop			;6294
	nop			;6295
	ld bc,00a00h		;6296
	rrca			;6299
	ld h,c			;629a
	nop			;629b
	ld h,e			;629c
	djnz $+109		;629d
	ld bc,0046ch		;629f
	ld bc,l6100h		;62a2
	nop			;62a5
	ld a,(bc)		;62a6
	rrca			;62a7
	ld h,h			;62a8
	djnz l630fh		;62a9
	inc bc			;62ab
	nop			;62ac
	nop			;62ad
	ld bc,00a00h		;62ae
	rrca			;62b1
	ld h,c			;62b2
	nop			;62b3
	ld h,e			;62b4
	djnz l62b7h		;62b5
l62b7h:
	nop			;62b7
	ld l,e			;62b8
	inc b			;62b9
	inc bc			;62ba
	nop			;62bb
	ld h,c			;62bc
	nop			;62bd
	ld a,(bc)		;62be
	rrca			;62bf
	ld h,h			;62c0
	djnz l6326h		;62c1
	inc bc			;62c3
	nop			;62c4
	nop			;62c5
	nop			;62c6
	nop			;62c7
	ld a,(bc)		;62c8
	rrca			;62c9
	ld h,c			;62ca
	nop			;62cb
	ld h,e			;62cc
	djnz l62cfh		;62cd
l62cfh:
	nop			;62cf
	ld l,h			;62d0
	inc b			;62d1
l62d2h:
	inc bc			;62d2
	nop			;62d3
	ld h,c			;62d4
	nop			;62d5
	ld a,(bc)		;62d6
	rrca			;62d7
	ld h,h			;62d8
	djnz $+102		;62d9
	inc bc			;62db
	nop			;62dc
	nop			;62dd
	ld bc,00d00h		;62de
	rrca			;62e1
	ld h,c			;62e2
	nop			;62e3
	ld h,e			;62e4
	djnz l62e7h		;62e5
l62e7h:
	nop			;62e7
	ld l,e			;62e8
	inc b			;62e9
	ld bc,l6100h		;62ea
	nop			;62ed
	ld a,(bc)		;62ee
	rrca			;62ef
	ld h,h			;62f0
	djnz l6356h		;62f1
	inc bc			;62f3
	nop			;62f4
	nop			;62f5
l62f6h:
	inc bc			;62f6
	nop			;62f7
	dec c			;62f8
	rrca			;62f9
	ld h,c			;62fa
	nop			;62fb
	ld h,e			;62fc
	djnz l62ffh		;62fd
l62ffh:
	nop			;62ff
	ld l,h			;6300
	inc b			;6301
	ld bc,l6100h		;6302
	nop			;6305
	ld a,(bc)		;6306
	rrca			;6307
	ld h,h			;6308
	djnz l636fh		;6309
	inc bc			;630b
	nop			;630c
	nop			;630d
	nop			;630e
l630fh:
	nop			;630f
sub_6310h:
	rrca			;6310
	rrca			;6311
	ld h,c			;6312
	nop			;6313
	ld h,e			;6314
sub_6315h:
	djnz l6317h		;6315
l6317h:
	nop			;6317
	ld l,e			;6318
	inc b			;6319
	ld (bc),a		;631a
	nop			;631b
	ld h,c			;631c
	nop			;631d
	ld a,(bc)		;631e
	rrca			;631f
	ld h,h			;6320
	djnz l6386h		;6321
	inc bc			;6323
	nop			;6324
	nop			;6325
l6326h:
	nop			;6326
	nop			;6327
	inc c			;6328
	rrca			;6329
	ld h,c			;632a
	nop			;632b
	ld h,e			;632c
	djnz $+109		;632d
	ld bc,0046ch		;632f
	inc bc			;6332
	nop			;6333
	ld h,c			;6334
l6335h:
	nop			;6335
	dec c			;6336
	rrca			;6337
	ld h,h			;6338
	djnz $+102		;6339
	inc bc			;633b
	nop			;633c
	nop			;633d
	ld bc,00a00h		;633e
	rrca			;6341
	ld h,c			;6342
	nop			;6343
	ld h,e			;6344
	djnz l6347h		;6345
l6347h:
	nop			;6347
	ld l,e			;6348
	inc b			;6349
	ld bc,l6100h		;634a
	nop			;634d
	ld a,(bc)		;634e
	rrca			;634f
	ld h,h			;6350
	djnz l63b6h		;6351
sub_6353h:
	inc bc			;6353
	nop			;6354
	nop			;6355
l6356h:
	inc bc			;6356
	nop			;6357
	ld a,(bc)		;6358
	rrca			;6359
	ld h,c			;635a
	nop			;635b
	ld h,e			;635c
	djnz l635fh		;635d
l635fh:
	nop			;635f
	ld l,h			;6360
	inc b			;6361
	inc bc			;6362
	nop			;6363
	ld h,c			;6364
	nop			;6365
	ld a,(bc)		;6366
	rrca			;6367
	ld h,h			;6368
	djnz l63cfh		;6369
	inc bc			;636b
	nop			;636c
	nop			;636d
	inc bc			;636e
l636fh:
	nop			;636f
	ld a,(bc)		;6370
	rrca			;6371
	ld h,c			;6372
	nop			;6373
	ld h,e			;6374
	djnz l6377h		;6375
l6377h:
	nop			;6377
	ld l,e			;6378
	inc b			;6379
	ld (bc),a		;637a
	nop			;637b
	ld h,c			;637c
	nop			;637d
	ld a,(bc)		;637e
	rrca			;637f
	ld h,h			;6380
	djnz l63e6h		;6381
	inc bc			;6383
	nop			;6384
	nop			;6385
l6386h:
	nop			;6386
	nop			;6387
	ld a,(bc)		;6388
	rrca			;6389
	ld h,c			;638a
	nop			;638b
	ld h,e			;638c
	djnz l638fh		;638d
l638fh:
	nop			;638f
	ld l,h			;6390
	inc b			;6391
	inc bc			;6392
	nop			;6393
	ld h,c			;6394
	nop			;6395
	ld a,(bc)		;6396
	rrca			;6397
	ld h,h			;6398
	djnz l63ffh		;6399
	inc bc			;639b
	nop			;639c
	nop			;639d
	ld bc,00d00h		;639e
	rrca			;63a1
	ld h,c			;63a2
	nop			;63a3
	ld h,e			;63a4
	djnz l63a7h		;63a5
l63a7h:
	nop			;63a7
	ld l,e			;63a8
	inc b			;63a9
	ld bc,l6100h		;63aa
	nop			;63ad
	ld a,(bc)		;63ae
	rrca			;63af
	ld h,h			;63b0
	djnz l6416h		;63b1
	inc bc			;63b3
	nop			;63b4
	nop			;63b5
l63b6h:
	inc bc			;63b6
	nop			;63b7
	dec c			;63b8
	rrca			;63b9
	ld h,c			;63ba
	nop			;63bb
	ld h,e			;63bc
	djnz $+109		;63bd
	ld bc,0046ch		;63bf
	inc bc			;63c2
	nop			;63c3
l63c4h:
	ld h,c			;63c4
l63c5h:
	nop			;63c5
	ld a,(bc)		;63c6
	rrca			;63c7
	ld h,h			;63c8
l63c9h:
	djnz l642fh		;63c9
	inc bc			;63cb
	nop			;63cc
	nop			;63cd
	inc bc			;63ce
l63cfh:
	nop			;63cf
	rrca			;63d0
	rrca			;63d1
	ld h,c			;63d2
	nop			;63d3
	ld h,e			;63d4
	djnz l63d7h		;63d5
l63d7h:
	nop			;63d7
	ld l,e			;63d8
	inc b			;63d9
	inc bc			;63da
	nop			;63db
	ld h,c			;63dc
	nop			;63dd
	ld a,(bc)		;63de
	rrca			;63df
	ld h,h			;63e0
	djnz l6446h		;63e1
sub_63e3h:
	inc bc			;63e3
	nop			;63e4
	nop			;63e5
l63e6h:
	dec c			;63e6
	nop			;63e7
	inc c			;63e8
	rrca			;63e9
	ld h,c			;63ea
	nop			;63eb
	ld h,e			;63ec
	djnz l63efh		;63ed
l63efh:
	nop			;63ef
	ld l,h			;63f0
	inc b			;63f1
	nop			;63f2
	nop			;63f3
	ld h,c			;63f4
	nop			;63f5
	dec c			;63f6
	rrca			;63f7
	ld h,h			;63f8
	djnz l645fh		;63f9
	inc bc			;63fb
	nop			;63fc
	nop			;63fd
	dec c			;63fe
l63ffh:
	nop			;63ff
	ld a,(bc)		;6400
	rrca			;6401
	ld h,c			;6402
	nop			;6403
	ld h,e			;6404
	djnz l646ah		;6405
	inc bc			;6407
	ld l,e			;6408
	inc b			;6409
	nop			;640a
	nop			;640b
	ld h,c			;640c
	nop			;640d
	ld a,(bc)		;640e
	rrca			;640f
	ld h,h			;6410
	djnz l6413h		;6411
l6413h:
	nop			;6413
	nop			;6414
	nop			;6415
l6416h:
	nop			;6416
	nop			;6417
	ld a,(bc)		;6418
	rrca			;6419
	ld h,c			;641a
	nop			;641b
	ld h,e			;641c
	djnz l6483h		;641d
	inc bc			;641f
	ld l,h			;6420
	inc b			;6421
	nop			;6422
	nop			;6423
	ld h,c			;6424
	nop			;6425
	ld a,(bc)		;6426
	rrca			;6427
	ld h,h			;6428
	djnz l642bh		;6429
l642bh:
	nop			;642b
	nop			;642c
	nop			;642d
	dec c			;642e
l642fh:
	nop			;642f
	ld a,(bc)		;6430
	rrca			;6431
	ld h,c			;6432
	nop			;6433
	ld h,e			;6434
	djnz l649ah		;6435
	inc bc			;6437
	ld l,e			;6438
	inc b			;6439
	nop			;643a
	nop			;643b
	ld h,c			;643c
	nop			;643d
	ld a,(bc)		;643e
	rrca			;643f
	ld h,h			;6440
	djnz $+109		;6441
	ld bc,00000h		;6443
l6446h:
	nop			;6446
	nop			;6447
	ld a,(bc)		;6448
	rrca			;6449
	ld h,c			;644a
	nop			;644b
	ld h,e			;644c
	djnz l64b3h		;644d
	inc bc			;644f
	nop			;6450
	nop			;6451
	nop			;6452
	nop			;6453
	ld h,c			;6454
	nop			;6455
	ld a,(bc)		;6456
	rrca			;6457
	ld h,h			;6458
	djnz l645bh		;6459
l645bh:
	nop			;645b
	ld l,e			;645c
	inc b			;645d
	nop			;645e
l645fh:
	nop			;645f
	dec c			;6460
	rrca			;6461
	ld h,c			;6462
	nop			;6463
	ld h,e			;6464
	djnz l64cah		;6465
	inc bc			;6467
	nop			;6468
	nop			;6469
l646ah:
	ld bc,l6100h		;646a
	nop			;646d
	ld a,(bc)		;646e
	rrca			;646f
	ld h,h			;6470
	djnz l6473h		;6471
l6473h:
	nop			;6473
	ld h,e			;6474
	inc bc			;6475
	inc bc			;6476
	nop			;6477
	dec c			;6478
	rrca			;6479
	ld h,c			;647a
	nop			;647b
	ld h,e			;647c
	djnz l64e3h		;647d
	inc bc			;647f
	ld a,(0010fh)		;6480
l6483h:
	nop			;6483
	ld h,c			;6484
	nop			;6485
	ld a,(bc)		;6486
	rrca			;6487
	ld h,h			;6488
	djnz l648bh		;6489
l648bh:
	nop			;648b
	nop			;648c
	nop			;648d
	nop			;648e
	nop			;648f
	rrca			;6490
	rrca			;6491
	ld h,c			;6492
	nop			;6493
	ld h,e			;6494
	djnz $+101		;6495
	inc bc			;6497
	jr c,l64a9h		;6498
l649ah:
	ld (bc),a		;649a
	nop			;649b
	ld h,c			;649c
	nop			;649d
	ld a,(bc)		;649e
	rrca			;649f
	ld h,h			;64a0
	djnz l64a3h		;64a1
l64a3h:
	nop			;64a3
	ld h,e			;64a4
	inc b			;64a5
	nop			;64a6
	nop			;64a7
	inc c			;64a8
l64a9h:
	rrca			;64a9
	ld h,c			;64aa
	nop			;64ab
	ld h,e			;64ac
	djnz l6513h		;64ad
	inc bc			;64af
	ld a,(0030fh)		;64b0
l64b3h:
	nop			;64b3
	ld h,c			;64b4
	nop			;64b5
	dec c			;64b6
	rrca			;64b7
	ld h,h			;64b8
	djnz $+109		;64b9
	ld bc,00000h		;64bb
	ld bc,00a00h		;64be
	rrca			;64c1
	ld h,c			;64c2
	nop			;64c3
	ld h,e			;64c4
	djnz l652ah		;64c5
	inc bc			;64c7
	ld l,00fh		;64c8
l64cah:
	ld bc,l6100h		;64ca
	nop			;64cd
	ld a,(bc)		;64ce
	rrca			;64cf
	ld h,h			;64d0
	djnz l64d3h		;64d1
l64d3h:
	nop			;64d3
	nop			;64d4
	nop			;64d5
	inc bc			;64d6
	nop			;64d7
	ld a,(bc)		;64d8
	rrca			;64d9
	ld h,c			;64da
	nop			;64db
	ld h,e			;64dc
	djnz $+102		;64dd
	inc bc			;64df
	nop			;64e0
	nop			;64e1
	inc bc			;64e2
l64e3h:
	nop			;64e3
	ld h,c			;64e4
	nop			;64e5
	ld a,(bc)		;64e6
	rrca			;64e7
	ld h,h			;64e8
	djnz l64ebh		;64e9
l64ebh:
	nop			;64eb
	nop			;64ec
	nop			;64ed
	inc bc			;64ee
	nop			;64ef
	ld a,(bc)		;64f0
	rrca			;64f1
	ld h,c			;64f2
	nop			;64f3
	ld h,e			;64f4
	djnz l655ah		;64f5
	inc bc			;64f7
	ld a,(0020fh)		;64f8
	nop			;64fb
	ld h,c			;64fc
	nop			;64fd
	ld a,(bc)		;64fe
	rrca			;64ff
	ld h,h			;6500
	djnz l6503h		;6501
l6503h:
	nop			;6503
	nop			;6504
	nop			;6505
	nop			;6506
	nop			;6507
	ld a,(bc)		;6508
	rrca			;6509
	ld h,c			;650a
	nop			;650b
	ld h,e			;650c
	djnz l6573h		;650d
	inc bc			;650f
	jr c,l6521h		;6510
	inc bc			;6512
l6513h:
	nop			;6513
	ld h,c			;6514
	nop			;6515
	ld a,(bc)		;6516
	rrca			;6517
	ld h,h			;6518
	djnz l651bh		;6519
l651bh:
	nop			;651b
	ld h,a			;651c
	ld bc,00001h		;651d
	dec c			;6520
l6521h:
	rrca			;6521
	ld h,c			;6522
	nop			;6523
	ld h,e			;6524
	djnz l658ah		;6525
	inc bc			;6527
	nop			;6528
	nop			;6529
l652ah:
	ld bc,l6100h		;652a
	nop			;652d
	ld a,(bc)		;652e
	rrca			;652f
	ld h,h			;6530
	djnz l6533h		;6531
l6533h:
	nop			;6533
	nop			;6534
	nop			;6535
l6536h:
	inc bc			;6536
	nop			;6537
	dec c			;6538
	rrca			;6539
	ld h,c			;653a
	nop			;653b
	ld h,e			;653c
	djnz l65a3h		;653d
	inc bc			;653f
	dec (hl)		;6540
	rrca			;6541
	ld bc,l6100h		;6542
	nop			;6545
	ld a,(bc)		;6546
l6547h:
	rrca			;6547
	ld h,h			;6548
	djnz l654bh		;6549
l654bh:
	nop			;654b
	nop			;654c
	nop			;654d
	nop			;654e
	nop			;654f
	rrca			;6550
	rrca			;6551
	ld h,c			;6552
	nop			;6553
	ld h,e			;6554
	djnz l65bah		;6555
	inc bc			;6557
	ld (hl),00fh		;6558
l655ah:
	ld (bc),a		;655a
	nop			;655b
	ld h,c			;655c
	nop			;655d
	ld a,(bc)		;655e
	rrca			;655f
	ld h,h			;6560
	djnz l6563h		;6561
l6563h:
	nop			;6563
	ld h,a			;6564
	ld bc,00000h		;6565
	inc c			;6568
	rrca			;6569
	ld h,c			;656a
	nop			;656b
	ld h,e			;656c
	djnz l65d3h		;656d
	inc bc			;656f
	nop			;6570
	nop			;6571
	inc bc			;6572
l6573h:
	nop			;6573
	ld h,c			;6574
	nop			;6575
	dec c			;6576
	rrca			;6577
	ld h,h			;6578
	djnz l657bh		;6579
l657bh:
	nop			;657b
	nop			;657c
	nop			;657d
	ld bc,00a00h		;657e
	rrca			;6581
	ld h,c			;6582
	nop			;6583
	jr c,l6593h		;6584
	inc l			;6586
	dec c			;6587
	daa			;6588
	rrca			;6589
l658ah:
	ld bc,l6100h		;658a
	nop			;658d
	ld a,(bc)		;658e
	rrca			;658f
	nop			;6590
	nop			;6591
	nop			;6592
l6593h:
	nop			;6593
	nop			;6594
	nop			;6595
l6596h:
	inc bc			;6596
	nop			;6597
	ld a,(bc)		;6598
	rrca			;6599
	ld h,c			;659a
	nop			;659b
	ld a,(03a0dh)		;659c
	dec c			;659f
	add hl,hl		;65a0
	rrca			;65a1
	inc bc			;65a2
l65a3h:
	nop			;65a3
	ld h,c			;65a4
	nop			;65a5
	ld a,(bc)		;65a6
	rrca			;65a7
	nop			;65a8
	nop			;65a9
	nop			;65aa
	nop			;65ab
	nop			;65ac
	nop			;65ad
	inc bc			;65ae
	nop			;65af
	ld a,(bc)		;65b0
	rrca			;65b1
	ld h,c			;65b2
	nop			;65b3
	nop			;65b4
	nop			;65b5
	nop			;65b6
	nop			;65b7
	nop			;65b8
	nop			;65b9
l65bah:
	ld (bc),a		;65ba
	nop			;65bb
	ld h,c			;65bc
	nop			;65bd
	ld a,(bc)		;65be
	rrca			;65bf
	ld h,h			;65c0
	djnz l6626h		;65c1
	inc bc			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	nop			;65c7
	ld a,(bc)		;65c8
	rrca			;65c9
	ld h,c			;65ca
	nop			;65cb
	dec a			;65cc
	dec c			;65cd
	ld sp,0380dh		;65ce
	rrca			;65d1
	inc bc			;65d2
l65d3h:
	nop			;65d3
	ld h,c			;65d4
	nop			;65d5
	ld a,(bc)		;65d6
	rrca			;65d7
	nop			;65d8
	nop			;65d9
	nop			;65da
	nop			;65db
	nop			;65dc
	nop			;65dd
	ld bc,00d00h		;65de
	rrca			;65e1
	ld h,c			;65e2
	nop			;65e3
	nop			;65e4
	nop			;65e5
	nop			;65e6
	nop			;65e7
	nop			;65e8
	nop			;65e9
	ld bc,l6100h		;65ea
	nop			;65ed
	ld a,(bc)		;65ee
	rrca			;65ef
	nop			;65f0
	nop			;65f1
	nop			;65f2
	nop			;65f3
	nop			;65f4
	nop			;65f5
	inc bc			;65f6
	nop			;65f7
	dec c			;65f8
	rrca			;65f9
	ld h,c			;65fa
	nop			;65fb
	nop			;65fc
	nop			;65fd
	nop			;65fe
	nop			;65ff
	ld l,h			;6600
	inc b			;6601
	ld bc,l6100h		;6602
	nop			;6605
	ld a,(bc)		;6606
	rrca			;6607
	ld h,h			;6608
	djnz l660bh		;6609
l660bh:
	nop			;660b
	nop			;660c
	nop			;660d
	nop			;660e
	nop			;660f
	rrca			;6610
	rrca			;6611
	ld h,c			;6612
	nop			;6613
	ld h,e			;6614
	djnz l6617h		;6615
l6617h:
	nop			;6617
	ld l,e			;6618
	inc b			;6619
	ld (bc),a		;661a
	nop			;661b
	ld h,c			;661c
	nop			;661d
	ld a,(bc)		;661e
	rrca			;661f
	ld h,h			;6620
	djnz l6623h		;6621
l6623h:
	nop			;6623
	nop			;6624
	nop			;6625
l6626h:
	nop			;6626
	nop			;6627
	inc c			;6628
	rrca			;6629
	ld h,c			;662a
	nop			;662b
	ld h,e			;662c
	djnz l662fh		;662d
l662fh:
	nop			;662f
	ld l,h			;6630
	inc b			;6631
	inc bc			;6632
	nop			;6633
	ld h,c			;6634
	nop			;6635
	dec c			;6636
	rrca			;6637
	ld h,h			;6638
	djnz l663bh		;6639
l663bh:
	nop			;663b
	nop			;663c
	nop			;663d
	ld bc,00a00h		;663e
	rrca			;6641
	ld h,c			;6642
	nop			;6643
	ld h,e			;6644
	djnz l66b3h		;6645
	ld bc,0046bh		;6647
	ld bc,l6100h		;664a
	nop			;664d
	ld a,(bc)		;664e
	rrca			;664f
	ld h,h			;6650
	djnz l66bah		;6651
	ld bc,00000h		;6653
	inc bc			;6656
	nop			;6657
	ld a,(bc)		;6658
	rrca			;6659
	ld h,c			;665a
	nop			;665b
	ld h,e			;665c
	djnz l66cbh		;665d
	ld bc,0046ch		;665f
	inc bc			;6662
	nop			;6663
l6664h:
	ld h,c			;6664
	nop			;6665
	ld a,(bc)		;6666
	rrca			;6667
	ld h,h			;6668
	djnz l666bh		;6669
l666bh:
	nop			;666b
	nop			;666c
	nop			;666d
	inc bc			;666e
	nop			;666f
	ld a,(bc)		;6670
	rrca			;6671
	ld h,c			;6672
	nop			;6673
	ld h,e			;6674
	djnz l66e3h		;6675
	ld bc,0046bh		;6677
	ld (bc),a		;667a
	nop			;667b
	ld h,c			;667c
	nop			;667d
	ld a,(bc)		;667e
	rrca			;667f
	ld h,h			;6680
	djnz l6683h		;6681
l6683h:
	nop			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	nop			;6687
	ld a,(bc)		;6688
	rrca			;6689
	ld h,c			;668a
	nop			;668b
	ld h,e			;668c
	djnz l66fbh		;668d
	ld bc,0046ch		;668f
	inc bc			;6692
	nop			;6693
	ld h,c			;6694
	nop			;6695
	ld a,(bc)		;6696
	rrca			;6697
	ld h,h			;6698
	djnz $+102		;6699
	inc bc			;669b
	nop			;669c
	nop			;669d
	ld bc,00d00h		;669e
	rrca			;66a1
	ld h,c			;66a2
	nop			;66a3
	ld h,e			;66a4
	djnz l66a7h		;66a5
l66a7h:
	nop			;66a7
	ld l,e			;66a8
	inc b			;66a9
	ld bc,l6100h		;66aa
	nop			;66ad
	ld a,(bc)		;66ae
	rrca			;66af
	ld h,h			;66b0
	djnz l6716h		;66b1
l66b3h:
	inc bc			;66b3
	nop			;66b4
	nop			;66b5
	inc bc			;66b6
	nop			;66b7
	dec c			;66b8
	rrca			;66b9
l66bah:
	ld h,c			;66ba
	nop			;66bb
	ld h,e			;66bc
	djnz l672bh		;66bd
	ld bc,0046ch		;66bf
	ld bc,l6100h		;66c2
	nop			;66c5
	ld a,(bc)		;66c6
	rrca			;66c7
	ld h,h			;66c8
	djnz l672fh		;66c9
l66cbh:
	inc bc			;66cb
	nop			;66cc
	nop			;66cd
	nop			;66ce
	nop			;66cf
	rrca			;66d0
	rrca			;66d1
	ld h,c			;66d2
	nop			;66d3
	ld h,e			;66d4
	djnz l66d7h		;66d5
l66d7h:
	nop			;66d7
	ld l,e			;66d8
	inc b			;66d9
	ld (bc),a		;66da
	nop			;66db
	ld h,c			;66dc
	nop			;66dd
	ld a,(bc)		;66de
	rrca			;66df
	ld h,h			;66e0
	djnz l6747h		;66e1
l66e3h:
	jr nz,l66e5h		;66e3
l66e5h:
	nop			;66e5
	nop			;66e6
	nop			;66e7
	inc c			;66e8
	rrca			;66e9
	ld h,c			;66ea
	nop			;66eb
	ld h,e			;66ec
	djnz l675ah		;66ed
	ld bc,0046ch		;66ef
	inc bc			;66f2
	nop			;66f3
	ld h,c			;66f4
	nop			;66f5
	dec c			;66f6
	rrca			;66f7
	ld h,h			;66f8
	djnz l675eh		;66f9
l66fbh:
	dec b			;66fb
	nop			;66fc
	nop			;66fd
	ld bc,00a00h		;66fe
	rrca			;6701
	ld h,c			;6702
	nop			;6703
	ccf			;6704
	rrca			;6705
	ld l,e			;6706
	ld bc,00f33h		;6707
	ld bc,l6100h		;670a
	nop			;670d
	ld a,(bc)		;670e
	rrca			;670f
	nop			;6710
	nop			;6711
	ld l,e			;6712
	ld bc,00000h		;6713
l6716h:
	inc bc			;6716
	nop			;6717
	ld a,(bc)		;6718
	rrca			;6719
	ld h,c			;671a
	nop			;671b
	inc sp			;671c
	rrca			;671d
	ld l,e			;671e
	ld bc,00f27h		;671f
	inc bc			;6722
	nop			;6723
	ld h,c			;6724
	nop			;6725
	ld a,(bc)		;6726
	rrca			;6727
	nop			;6728
	nop			;6729
	ld l,e			;672a
l672bh:
	ld bc,00000h		;672b
	inc bc			;672e
l672fh:
	nop			;672f
	ld a,(bc)		;6730
	rrca			;6731
	ld h,c			;6732
	nop			;6733
	daa			;6734
	rrca			;6735
	ld l,e			;6736
	ld bc,00f1bh		;6737
	ld (bc),a		;673a
	nop			;673b
	ld h,c			;673c
	nop			;673d
	ld a,(bc)		;673e
	rrca			;673f
	nop			;6740
	nop			;6741
	ld l,e			;6742
	ld bc,00000h		;6743
	nop			;6746
l6747h:
	nop			;6747
	ld a,(bc)		;6748
	rrca			;6749
	ld h,c			;674a
	nop			;674b
	ld b,c			;674c
	rrca			;674d
	ld l,e			;674e
	ld bc,00f35h		;674f
	inc bc			;6752
	nop			;6753
	ld h,c			;6754
	nop			;6755
	ld a,(bc)		;6756
	rrca			;6757
	nop			;6758
	nop			;6759
l675ah:
	ld l,e			;675a
	ld bc,00000h		;675b
l675eh:
	ld bc,00d15h		;675e
	rrca			;6761
	ld h,c			;6762
	nop			;6763
	dec (hl)		;6764
	rrca			;6765
	ld l,e			;6766
	ld bc,00f29h		;6767
	ld bc,l6114h		;676a
	nop			;676d
	ld a,(bc)		;676e
	rrca			;676f
	nop			;6770
	nop			;6771
	ld l,e			;6772
	ld bc,00000h		;6773
	inc bc			;6776
	inc de			;6777
	dec c			;6778
	rrca			;6779
	ld h,c			;677a
	nop			;677b
	add hl,hl		;677c
	rrca			;677d
	ld h,e			;677e
	ld b,01dh		;677f
	rrca			;6781
	ld bc,l6112h		;6782
	nop			;6785
	ld a,(bc)		;6786
	rrca			;6787
	nop			;6788
	nop			;6789
	ld l,e			;678a
	ld bc,00000h		;678b
	nop			;678e
	ld de,00f0fh		;678f
	ld h,c			;6792
	nop			;6793
	ld c,c			;6794
	rrca			;6795
	ld l,e			;6796
	ld bc,00f3dh		;6797
	ld (bc),a		;679a
	djnz l67feh		;679b
	nop			;679d
	ld a,(bc)		;679e
	rrca			;679f
	nop			;67a0
	nop			;67a1
	ld l,e			;67a2
	ld bc,00000h		;67a3
	nop			;67a6
	rrca			;67a7
	inc c			;67a8
	rrca			;67a9
	ld h,c			;67aa
	nop			;67ab
	nop			;67ac
	nop			;67ad
	ld l,e			;67ae
	ld bc,0046ch		;67af
	inc bc			;67b2
	ld c,061h		;67b3
	nop			;67b5
	dec c			;67b6
	rrca			;67b7
	ld h,h			;67b8
	djnz l6826h		;67b9
	ld bc,00000h		;67bb
	ld bc,02e0dh		;67be
	dec c			;67c1
	ld l,00dh		;67c2
	ld a,(02e0dh)		;67c4
	dec c			;67c7
	ld l,00dh		;67c8
	dec c			;67ca
	jr l67cdh		;67cb
l67cdh:
	nop			;67cd
	nop			;67ce
	nop			;67cf
	nop			;67d0
	nop			;67d1
	nop			;67d2
	nop			;67d3
	nop			;67d4
	nop			;67d5
	nop			;67d6
	add hl,de		;67d7
	nop			;67d8
	nop			;67d9
	nop			;67da
	nop			;67db
	nop			;67dc
	nop			;67dd
	nop			;67de
	nop			;67df
	nop			;67e0
	nop			;67e1
	nop			;67e2
	nop			;67e3
	ld l,h			;67e4
	rlca			;67e5
	ld l,h			;67e6
	rlca			;67e7
	ld l,h			;67e8
	rlca			;67e9
	ld l,h			;67ea
	rlca			;67eb
	ld l,h			;67ec
	rlca			;67ed
	nop			;67ee
	add hl,de		;67ef
	ld l,h			;67f0
	rlca			;67f1
	ld l,h			;67f2
	rlca			;67f3
	ld l,h			;67f4
	rlca			;67f5
	ld l,h			;67f6
	rlca			;67f7
	ld l,h			;67f8
	rlca			;67f9
	nop			;67fa
	jr l685eh		;67fb
	nop			;67fd
l67feh:
	ld h,c			;67fe
	nop			;67ff
	ld h,c			;6800
	nop			;6801
	ld h,c			;6802
	nop			;6803
	ld h,c			;6804
	nop			;6805
	nop			;6806
	add hl,de		;6807
	ld l,00dh		;6808
	ld (0220ch),hl		;680a
	inc c			;680d
	ld d,00ch		;680e
	ld l,00dh		;6810
	dec c			;6812
	jr l6815h		;6813
l6815h:
	nop			;6815
	nop			;6816
	nop			;6817
	nop			;6818
	nop			;6819
	nop			;681a
	nop			;681b
	nop			;681c
	nop			;681d
	nop			;681e
	add hl,de		;681f
	nop			;6820
	nop			;6821
	nop			;6822
	nop			;6823
	nop			;6824
	nop			;6825
l6826h:
	nop			;6826
	nop			;6827
	nop			;6828
	nop			;6829
sub_682ah:
	nop			;682a
	nop			;682b
	ld l,h			;682c
	rlca			;682d
	ld l,h			;682e
	rlca			;682f
	ld l,h			;6830
	rlca			;6831
	ld l,h			;6832
	rlca			;6833
	ld l,h			;6834
	rlca			;6835
	nop			;6836
	add hl,de		;6837
	ld l,h			;6838
	rlca			;6839
	ld l,h			;683a
	rlca			;683b
	ld l,h			;683c
	rlca			;683d
	ld l,h			;683e
	rlca			;683f
	ld l,h			;6840
	rlca			;6841
	nop			;6842
	jr $+99			;6843
	nop			;6845
	ld h,c			;6846
	nop			;6847
	ld h,c			;6848
	nop			;6849
	ld h,c			;684a
	nop			;684b
	ld h,c			;684c
	nop			;684d
	nop			;684e
	add hl,de		;684f
	inc l			;6850
	dec c			;6851
	inc l			;6852
	dec c			;6853
	jr c,l6863h		;6854
	inc l			;6856
	dec c			;6857
	inc l			;6858
	dec c			;6859
	dec c			;685a
	jr l685dh		;685b
l685dh:
	nop			;685d
l685eh:
	nop			;685e
	nop			;685f
	nop			;6860
	nop			;6861
	nop			;6862
l6863h:
	nop			;6863
	nop			;6864
	nop			;6865
	nop			;6866
	add hl,de		;6867
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
	ld l,h			;6874
	rlca			;6875
	ld l,h			;6876
	rlca			;6877
	ld l,h			;6878
	rlca			;6879
	ld l,h			;687a
	rlca			;687b
	ld l,h			;687c
	rlca			;687d
	nop			;687e
	add hl,de		;687f
	ld l,00dh		;6880
	ld l,00dh		;6882
	ld a,(02e0dh)		;6884
	dec c			;6887
	ld l,00dh		;6888
	dec c			;688a
	ld b,064h		;688b
	inc b			;688d
	ld h,h			;688e
	inc bc			;688f
	ld h,h			;6890
	inc b			;6891
	ld h,h			;6892
	dec b			;6893
	ld h,h			;6894
	inc b			;6895
	nop			;6896
	ld c,06ch		;6897
	ld bc,0016ch		;6899
	ld l,h			;689c
	ld bc,0016ch		;689d
	ld l,h			;68a0
	ld bc,00000h		;68a1
	ld l,h			;68a4
	ld bc,0016ch		;68a5
	ld l,h			;68a8
	ld bc,0016ch		;68a9
	ld l,h			;68ac
	ld bc,00000h		;68ad
	ld l,h			;68b0
	ld bc,0016ch		;68b1
	ld l,h			;68b4
	ld bc,0016ch		;68b5
	ld l,h			;68b8
	ld bc,00000h		;68b9
	ld l,h			;68bc
	ld bc,0016ch		;68bd
	ld l,h			;68c0
	ld bc,0016ch		;68c1
	ld l,h			;68c4
	ld bc,00000h		;68c5
	ld l,h			;68c8
	ld bc,0016ch		;68c9
	ld l,h			;68cc
	ld bc,0016ch		;68cd
	ld l,h			;68d0
	ld bc,00000h		;68d1
	ld l,h			;68d4
	ld bc,0016ch		;68d5
	ld l,h			;68d8
	ld bc,0016ch		;68d9
	ld l,h			;68dc
	ld bc,00000h		;68dd
	ld l,h			;68e0
	ld bc,0016ch		;68e1
	ld l,h			;68e4
	ld bc,0016ch		;68e5
	ld l,h			;68e8
	ld bc,00100h		;68e9
	ld h,c			;68ec
	nop			;68ed
	ld h,c			;68ee
	nop			;68ef
	ld h,c			;68f0
	nop			;68f1
	ld h,c			;68f2
	nop			;68f3
	ld h,c			;68f4
	nop			;68f5
	nop			;68f6
	nop			;68f7
	nop			;68f8
	nop			;68f9
	nop			;68fa
	nop			;68fb
	nop			;68fc
	nop			;68fd
	nop			;68fe
	nop			;68ff
	nop			;6900
	nop			;6901
	nop			;6902
	nop			;6903
	nop			;6904
	nop			;6905
	nop			;6906
	nop			;6907
	nop			;6908
	nop			;6909
	nop			;690a
	nop			;690b
	nop			;690c
	nop			;690d
	nop			;690e
	nop			;690f
	nop			;6910
	nop			;6911
	nop			;6912
	nop			;6913
	nop			;6914
	nop			;6915
	nop			;6916
	nop			;6917
	nop			;6918
	nop			;6919
	nop			;691a
	nop			;691b
	nop			;691c
	nop			;691d
	nop			;691e
	nop			;691f
	nop			;6920
	nop			;6921
	nop			;6922
	nop			;6923
	nop			;6924
	nop			;6925
	nop			;6926
	nop			;6927
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
	rst 38h			;6940
	ld d,026h		;6941
	nop			;6943
	nop			;6944
	nop			;6945
	jp l4aa3h		;6946
	inc b			;6949
	ex af,af'		;694a
	ex af,af'		;694b
	inc b			;694c
	inc b			;694d
	ld bc,00303h		;694e
	rlca			;6951
	nop			;6952
	jp m,00001h		;6953
	nop			;6956
	inc c			;6957
	ex af,af'		;6958
	inc c			;6959
	nop			;695a
	nop			;695b
	ld (bc),a		;695c
	ret nz			;695d
	ret nz			;695e
	ret z			;695f
	jp nz,03cf8h		;6960
	rlca			;6963
	jr nc,$+98		;6964
	nop			;6966
	inc bc			;6967
	ld h,b			;6968
	jr l698bh		;6969
	inc e			;696b
	ld c,015h		;696c
	ld e,020h		;696e
	rra			;6970
	rla			;6971
	ld b,003h		;6972
	rrca			;6974
	ld c,01ch		;6975
	jr l6998h		;6977
	ret nz			;6979
	nop			;697a
	ret po			;697b
	ret p			;697c
	call p,00fdeh		;697d
	scf			;6980
	rst 38h			;6981
	ret m			;6982
	ld a,(bc)		;6983
	ld b,b			;6984
	sub b			;6985
	dec b			;6986
	nop			;6987
	defb 0fdh,001h,04eh ;illegal sequence	;6988
l698bh:
	rlca			;698b
	inc c			;698c
	djnz l69aeh		;698d
	ld h,b			;698f
	ccf			;6990
	jp p,03ffch		;6991
	cp 01eh			;6994
	cp (hl)			;6996
	ret nz			;6997
l6998h:
	nop			;6998
	ld b,b			;6999
	ld (bc),a		;699a
	djnz l69dch		;699b
	rra			;699d
	ld e,h			;699e
	rlca			;699f
	ld bc,0381ch		;69a0
	jr nc,l69a5h		;69a3
l69a5h:
	nop			;69a5
	ld (0f6d8h),hl		;69a6
	ld (iy+078h),e		;69a9
	inc b			;69ac
	ccf			;69ad
l69aeh:
	ld b,c			;69ae
	dec sp			;69af
	ld bc,000f2h		;69b0
	ld (bc),a		;69b3
	rrca			;69b4
	halt			;69b5
	ccf			;69b6
	call pe,0e251h		;69b7
	ld h,c			;69ba
	add a,b			;69bb
	ld (hl),d		;69bc
	ccf			;69bd
	ld (hl),b		;69be
	ret nc			;69bf
	ccf			;69c0
	jr $+65			;69c1
	jr c,l69d9h		;69c3
	ld e,00fh		;69c5
l69c7h:
	rlca			;69c7
	inc c			;69c8
	ccf			;69c9
	ld bc,l7c40h		;69ca
	ld a,(hl)		;69cd
	rra			;69ce
	add a,b			;69cf
	ld d,008h		;69d0
	ld a,0ffh		;69d2
	nop			;69d4
l69d5h:
	call po,05a00h		;69d5
	rra			;69d8
l69d9h:
	nop			;69d9
	rst 38h			;69da
	inc bc			;69db
l69dch:
	add hl,bc		;69dc
	ld a,h			;69dd
	add hl,bc		;69de
	inc bc			;69df
	rst 38h			;69e0
	rra			;69e1
	or b			;69e2
	ld h,h			;69e3
	jr nc,l6a36h		;69e4
	cp b			;69e6
	nop			;69e7
	call nc,0d8dah		;69e8
	djnz l69d5h		;69eb
l69edh:
	djnz l69c7h		;69ed
	jp c,0d41ch		;69ef
	cp b			;69f2
	ld d,b			;69f3
	ld c,e			;69f4
	daa			;69f5
	inc bc			;69f6
	jr nz,l6a35h		;69f7
	dec e			;69f9
	ld a,d			;69fa
	nop			;69fb
	ret nc			;69fc
	nop			;69fd
	ret pe			;69fe
	ld d,0e8h		;69ff
	jr l69edh		;6a01
	call nc,0d0e8h		;6a03
	jp pe,0000fh		;6a06
	inc bc			;6a09
	rlca			;6a0a
	ld a,a			;6a0b
	rst 38h			;6a0c
	ld a,a			;6a0d
	rrca			;6a0e
	inc bc			;6a0f
	ld c,0c0h		;6a10
	and b			;6a12
	xor b			;6a13
	daa			;6a14
	call nc,01ed6h		;6a15
	ret po			;6a18
	ld c,07ch		;6a19
	ld h,c			;6a1b
	inc sp			;6a1c
	inc a			;6a1d
	ld b,b			;6a1e
	rrca			;6a1f
	and (hl)		;6a20
	ld d,b			;6a21
	ld e,033h		;6a22
	jr l6a69h		;6a24
	ld e,l			;6a26
	sbc a,(hl)		;6a27
	nop			;6a28
	add hl,de		;6a29
l6a2ah:
	inc a			;6a2a
	nop			;6a2b
	dec c			;6a2c
	ex (sp),hl		;6a2d
	rrca			;6a2e
	ret pe			;6a2f
	ld bc,000e3h		;6a30
	rlca			;6a33
	push bc			;6a34
l6a35h:
	add a,b			;6a35
l6a36h:
	nop			;6a36
	rst 0			;6a37
	rlca			;6a38
	adc a,a			;6a39
	ccf			;6a3a
	rst 18h			;6a3b
	nop			;6a3c
	ret m			;6a3d
	jr nz,l6a70h		;6a3e
	inc e			;6a40
	dec b			;6a41
	dec d			;6a42
	dec (hl)		;6a43
	ld (de),a		;6a44
	dec d			;6a45
	dec b			;6a46
	inc e			;6a47
	cp e			;6a48
	call c,0a0dfh		;6a49
	ret p			;6a4c
	call m,07bf0h		;6a4d
	ret nz			;6a50
	dec h			;6a51
	nop			;6a52
	ld (bc),a		;6a53
	ld e,c			;6a54
	sub e			;6a55
	or (hl)			;6a56
	rst 8			;6a57
	ld h,c			;6a58
	ex af,af'		;6a59
	pop af			;6a5a
	djnz l6a6bh		;6a5b
	ld b,b			;6a5d
	ld a,(0ec57h)		;6a5e
	ld a,a			;6a61
	jp 0f060h		;6a62
	ret p			;6a65
	ld h,b			;6a66
	ld e,(hl)		;6a67
	rst 20h			;6a68
l6a69h:
	and d			;6a69
	sub (hl)		;6a6a
l6a6bh:
	sub l			;6a6b
	add a,(hl)		;6a6c
	jr nc,l6a6fh		;6a6d
l6a6fh:
	ld c,l			;6a6f
l6a70h:
	and (hl)		;6a70
	and d			;6a71
	inc l			;6a72
	jp 0385ch		;6a73
	jr l6a84h		;6a76
	nop			;6a78
	ld c,018h		;6a79
	jr c,l6ae0h		;6a7b
	ld b,b			;6a7d
	inc bc			;6a7e
	inc c			;6a7f
	inc de			;6a80
	rla			;6a81
	ld l,02ch		;6a82
l6a84h:
	rlca			;6a84
	inc l			;6a85
	ld l,017h		;6a86
	inc de			;6a88
	inc c			;6a89
	rra			;6a8a
	jr nz,$+50		;6a8b
	ret z			;6a8d
	ret pe			;6a8e
	ld (hl),h		;6a8f
	inc (hl)		;6a90
	ld b,034h		;6a91
	ld (hl),h		;6a93
	ret pe			;6a94
	ret z			;6a95
	jr nc,$+33		;6a96
	ret			;6a98
	ld a,01eh		;6a99
	push de			;6a9b
	sub h			;6a9c
	ld (hl),b		;6a9d
	and l			;6a9e
	ld b,070h		;6a9f
	jr nc,l6adbh		;6aa1
	ld e,040h		;6aa3
	ret nz			;6aa5
	ld a,078h		;6aa6
	inc e			;6aa8
	inc c			;6aa9
	ld c,006h		;6aaa
	ld c,h			;6aac
	ld b,0f3h		;6aad
	inc e			;6aaf
	ld l,h			;6ab0
	ld a,b			;6ab1
	ld b,b			;6ab2
	ld a,011h		;6ab3
l6ab5h:
	nop			;6ab5
	ld h,028h		;6ab6
	ld c,b			;6ab8
	ld d,b			;6ab9
	ld d,b			;6aba
	ld c,b			;6abb
	jr z,$+40		;6abc
	ld l,h			;6abe
	ld de,03e40h		;6abf
l6ac2h:
	adc a,b			;6ac2
	nop			;6ac3
	ld h,h			;6ac4
	inc d			;6ac5
	ld (de),a		;6ac6
	ld a,(bc)		;6ac7
	ld a,(bc)		;6ac8
	ld (de),a		;6ac9
	inc d			;6aca
	ld h,h			;6acb
l6acch:
	ld h,l			;6acc
	adc a,b			;6acd
	ld b,b			;6ace
	push bc			;6acf
	dec d			;6ad0
	sbc a,h			;6ad1
	inc c			;6ad2
	jr nz,l6b35h		;6ad3
	ret nz			;6ad5
	nop			;6ad6
	nop			;6ad7
	ld h,b			;6ad8
	jr nz,l6adbh		;6ad9
l6adbh:
	inc c			;6adb
	rlca			;6adc
	inc bc			;6add
	ret nz			;6ade
	ret po			;6adf
l6ae0h:
	ld d,b			;6ae0
	jr nc,l6ab5h		;6ae1
	ld b,061h		;6ae3
	inc bc			;6ae5
	nop			;6ae6
	ld b,004h		;6ae7
	ld sp,hl		;6ae9
	djnz l6acch		;6aea
	ret nz			;6aec
	inc bc			;6aed
	ld b,(hl)		;6aee
	inc b			;6aef
	jp z,0cacah		;6af0
	xor c			;6af3
	ld b,b			;6af4
	call pe,01f6ah		;6af5
	dec h			;6af8
	ex de,hl		;6af9
	ld (l55eah),a		;6afa
	ld (bc),a		;6afd
	ex af,af'		;6afe
	add a,h			;6aff
	jr nz,l6ac2h		;6b00
	add a,d			;6b02
	jp p,01205h		;6b03
sub_6b06h:
	dec bc			;6b06
	dec bc			;6b07
	dec b			;6b08
	call m,000bch		;6b09
	pop bc			;6b0c
	dec hl			;6b0d
	and b			;6b0e
	ret nc			;6b0f
	ret nc			;6b10
l6b11h:
	and b			;6b11
	call m,0182eh		;6b12
	cpl			;6b15
	ld b,089h		;6b16
	adc a,006h		;6b18
	cpl			;6b1a
	or d			;6b1b
	sbc a,d			;6b1c
	jp c,0ee60h		;6b1d
	inc hl			;6b20
	ld h,b			;6b21
	ld b,b			;6b22
	inc c			;6b23
	and d			;6b24
	inc c			;6b25
	ld e,089h		;6b26
	and h			;6b28
	ld b,0f4h		;6b29
	cp h			;6b2b
	ld hl,07c78h		;6b2c
	inc a			;6b2f
	jr l6b11h		;6b30
	ld e,h			;6b32
	ld b,l			;6b33
	ld l,h			;6b34
l6b35h:
	jr nz,l6b47h		;6b35
	jp po,01b5eh		;6b37
	ld a,c			;6b3a
	ld e,b			;6b3b
	ld de,08285h		;6b3c
	ld b,b			;6b3f
	rla			;6b40
	inc d			;6b41
	call po,01606h		;6b42
	rrca			;6b45
	rra			;6b46
l6b47h:
	ld e,0fdh		;6b47
	ret nz			;6b49
	nop			;6b4a
	jr l6b89h		;6b4b
	ld e,07ch		;6b4d
	ld a,b			;6b4f
	jr nc,l6ba1h		;6b50
	or 0a6h			;6b52
	ld de,02010h		;6b54
	or d			;6b57
	ld l,h			;6b58
	ld b,(hl)		;6b59
	rlca			;6b5a
	ld b,b			;6b5b
	ld h,a			;6b5c
	add a,d			;6b5d
	dec c			;6b5e
	ld b,(hl)		;6b5f
	ld de,0889ah		;6b60
	ld (bc),a		;6b63
	ex de,hl		;6b64
	push de			;6b65
	rlca			;6b66
	add a,d			;6b67
	ld b,c			;6b68
	ccf			;6b69
	ld a,a			;6b6a
	add a,e			;6b6b
	ld bc,0d25eh		;6b6c
	ret nz			;6b6f
	cp h			;6b70
	ret nz			;6b71
	rst 38h			;6b72
	cp 0f8h			;6b73
	ret p			;6b75
	adc a,c			;6b76
	call m,09340h		;6b77
	ld h,01fh		;6b7a
	ld hl,l5907h		;6b7c
	dec sp			;6b7f
l6b80h:
	ccf			;6b80
	ccf			;6b81
	rra			;6b82
	ld (de),a		;6b83
	sbc a,l			;6b84
	ld c,09eh		;6b85
	ld e,a			;6b87
	cp e			;6b88
l6b89h:
	nop			;6b89
	cp b			;6b8a
	call c,0f7ceh		;6b8b
	cp 099h			;6b8e
	nop			;6b90
	call m,08d22h		;6b91
	dec hl			;6b94
	rst 38h			;6b95
	ld (de),a		;6b96
	inc bc			;6b97
	jp z,0c3c8h		;6b98
	xor c			;6b9b
	inc e			;6b9c
	add a,c			;6b9d
	ld d,l			;6b9e
	ld b,b			;6b9f
	nop			;6ba0
l6ba1h:
	ld a,041h		;6ba1
	ld (0f8f8h),hl		;6ba3
	rst 38h			;6ba6
	call m,sub_573fh	;6ba7
	add a,b			;6baa
	djnz $+65		;6bab
	ld c,01dh		;6bad
	ccf			;6baf
	ld b,(hl)		;6bb0
	rst 38h			;6bb1
	ccf			;6bb2
	dec sp			;6bb3
	dec e			;6bb4
	ld (01f66h),hl		;6bb5
	inc e			;6bb8
	inc b			;6bb9
	call m,0e6eeh		;6bba
	or 061h			;6bbd
	call m,0b851h		;6bbf
	ccf			;6bc2
	add a,e			;6bc3
	pop bc			;6bc4
	pop bc			;6bc5
	ld a,a			;6bc6
	dec a			;6bc7
	ld d,d			;6bc8
	nop			;6bc9
	inc e			;6bca
	inc bc			;6bcb
	and a			;6bcc
	ld c,b			;6bcd
	sbc a,b			;6bce
	add a,l			;6bcf
	jr l6be2h		;6bd0
	jr nc,l6b80h		;6bd2
	add hl,de		;6bd4
	ccf			;6bd5
	nop			;6bd6
	inc d			;6bd7
	cp 0c3h			;6bd8
	sbc a,a			;6bda
	ret z			;6bdb
	rlca			;6bdc
	adc a,07fh		;6bdd
	add a,(hl)		;6bdf
	dec a			;6be0
	scf			;6be1
l6be2h:
	inc sp			;6be2
	dec sp			;6be3
	ld h,d			;6be4
	ld (01f07h),a		;6be5
	inc e			;6be8
	ld a,(bc)		;6be9
	ld a,b			;6bea
	call m,0f6feh		;6beb
	ld b,b			;6bee
	add a,b			;6bef
	dec h			;6bf0
	dec sp			;6bf1
	ccf			;6bf2
	ld (hl),b		;6bf3
	sub h			;6bf4
	cp b			;6bf5
	ld e,e			;6bf6
	ld e,b			;6bf7
	nop			;6bf8
	inc e			;6bf9
	jr z,l6c0bh		;6bfa
	or e			;6bfc
	adc a,c			;6bfd
	adc a,a			;6bfe
	ld (bc),a		;6bff
	inc b			;6c00
	add hl,sp		;6c01
	ret m			;6c02
	ccf			;6c03
	ld de,0ccfch		;6c04
	ld b,090h		;6c07
	xor c			;6c09
	inc sp			;6c0a
l6c0bh:
	sub a			;6c0b
	dec d			;6c0c
	ld e,03eh		;6c0d
	ccf			;6c0f
	pop bc			;6c10
	add a,b			;6c11
	ld c,00fh		;6c12
	dec de			;6c14
	ret nz			;6c15
	rra			;6c16
	call pe,038f8h		;6c17
	ld a,h			;6c1a
	ld l,b			;6c1b
	cp 03eh			;6c1c
	inc e			;6c1e
	inc a			;6c1f
	or 062h			;6c20
	pop hl			;6c22
	or c			;6c23
	ld h,l			;6c24
	or e			;6c25
	ld a,(000b8h)		;6c26
	rra			;6c29
	ld d,a			;6c2a
	ld a,a			;6c2b
	out (046h),a		;6c2c
	jp 03ebeh		;6c2e
	add a,085h		;6c31
	ld h,h			;6c33
	inc e			;6c34
	ld (bc),a		;6c35
	dec bc			;6c36
	ret			;6c37
	or (hl)			;6c38
	rra			;6c39
	ld a,(hl)		;6c3a
	adc a,b			;6c3b
	scf			;6c3c
	ccf			;6c3d
	ld a,(hl)		;6c3e
	rst 0			;6c3f
	adc a,(hl)		;6c40
	rst 38h			;6c41
	ld c,d			;6c42
	dec sp			;6c43
	cp 07fh			;6c44
	add a,b			;6c46
	jr z,$-63		;6c47
	xor d			;6c49
	and b			;6c4a
	ld d,a			;6c4b
	ret m			;6c4c
	rst 28h			;6c4d
	sub a			;6c4e
	nop			;6c4f
	cp 07ah			;6c50
	add a,b			;6c52
	jr nz,l6c82h		;6c53
	dec hl			;6c55
	dec hl			;6c56
	dec l			;6c57
	dec l			;6c58
	inc l			;6c59
	ld e,d			;6c5a
	cpl			;6c5b
	inc bc			;6c5c
	ld b,020h		;6c5d
	in a,(000h)		;6c5f
	ex af,af'		;6c61
	ld c,033h		;6c62
	dec d			;6c64
	dec c			;6c65
	sbc a,h			;6c66
	nop			;6c67
	ld l,l			;6c68
	cpl			;6c69
	ld a,(de)		;6c6a
	inc de			;6c6b
	ld c,0dbh		;6c6c
	dec hl			;6c6e
	inc c			;6c6f
	dec b			;6c70
	dec l			;6c71
	cpl			;6c72
	inc l			;6c73
	inc de			;6c74
	dec c			;6c75
	rst 0			;6c76
	ccf			;6c77
	cpl			;6c78
	ld hl,(sub_573fh)	;6c79
	ld hl,(0a33fh)		;6c7c
	ld hl,(0873fh)		;6c7f
l6c82h:
	ld hl,(0a33fh)		;6c82
	ld hl,(0bb3fh)		;6c85
	inc e			;6c88
l6c89h:
	nop			;6c89
	inc sp			;6c8a
	inc b			;6c8b
	rlca			;6c8c
	sbc a,h			;6c8d
	adc a,a			;6c8e
	rst 10h			;6c8f
	dec hl			;6c90
	xor l			;6c91
	add hl,de		;6c92
	ld c,h			;6c93
	or b			;6c94
	jp nz,0a32bh		;6c95
	dec sp			;6c98
	ld (hl),02eh		;6c99
	ld l,00fh		;6c9b
	ld d,08fh		;6c9d
	or l			;6c9f
	djnz l6cb1h		;6ca0
	ex af,af'		;6ca2
	ex af,af'		;6ca3
	rrca			;6ca4
	rst 20h			;6ca5
	add hl,bc		;6ca6
	ld b,(hl)		;6ca7
	jr nc,l6caah		;6ca8
l6caah:
	add hl,bc		;6caa
	dec hl			;6cab
	xor b			;6cac
	ld bc,0a16eh		;6cad
	xor d			;6cb0
l6cb1h:
	inc (hl)		;6cb1
	dec (hl)		;6cb2
	nop			;6cb3
	ret c			;6cb4
	call z,sub_4a0ah	;6cb5
	adc a,b			;6cb8
	ld bc,00b0ch		;6cb9
	add a,h			;6cbc
	push bc			;6cbd
	dec hl			;6cbe
	ld (de),a		;6cbf
	rra			;6cc0
	and h			;6cc1
	dec hl			;6cc2
	add hl,hl		;6cc3
	and l			;6cc4
	ld l,(hl)		;6cc5
	rra			;6cc6
	sbc a,e			;6cc7
	jr nz,l6cf8h		;6cc8
	rra			;6cca
	jr nz,l6c89h		;6ccb
	ret po			;6ccd
	dec a			;6cce
	inc l			;6ccf
	rra			;6cd0
	jr z,l6d13h		;6cd1
	sub b			;6cd3
	cp h			;6cd4
	rra			;6cd5
	jp z,00c0ah		;6cd6
	ld de,0e90bh		;6cd9
	ld l,a			;6cdc
	ld c,0c5h		;6cdd
	add a,h			;6cdf
	cp e			;6ce0
	cp h			;6ce1
	daa			;6ce2
	dec bc			;6ce3
	ld c,005h		;6ce4
	adc a,a			;6ce6
	nop			;6ce7
	rst 0			;6ce8
	add hl,de		;6ce9
	xor a			;6cea
	ld l,000h		;6ceb
	ld h,a			;6ced
	ld l,e			;6cee
	nop			;6cef
	or h			;6cf0
	rst 38h			;6cf1
	rst 38h			;6cf2
	ld a,(hl)		;6cf3
	add hl,hl		;6cf4
	ei			;6cf5
	nop			;6cf6
	sbc a,a			;6cf7
l6cf8h:
	jr nz,l6cfah		;6cf8
l6cfah:
	ld (hl),h		;6cfa
	sbc a,l			;6cfb
	or l			;6cfc
	nop			;6cfd
	sbc a,e			;6cfe
	sbc a,l			;6cff
	ld a,e			;6d00
	sbc a,d			;6d01
	ld a,(de)		;6d02
	nop			;6d03
	ld c,a			;6d04
	ld h,e			;6d05
	ld c,(hl)		;6d06
	nop			;6d07
	ld c,a			;6d08
	ld a,(bc)		;6d09
	add a,a			;6d0a
	dec bc			;6d0b
	nop			;6d0c
	or e			;6d0d
	ld c,a			;6d0e
	nop			;6d0f
	exx			;6d10
	inc bc			;6d11
	nop			;6d12
l6d13h:
	call pe,0f648h		;6d13
	nop			;6d16
	nop			;6d17
	jp nc,l4aabh		;6d18
	ld a,001h		;6d1b
	ld (0c308h),a		;6d1d
	nop			;6d20
	ld a,(0ffe8h)		;6d21
sub_6d24h:
	or 002h			;6d24
	and 07fh		;6d26
	or 020h			;6d28
	add a,b			;6d2a
	ld (0f308h),a		;6d2b
	out (099h),a		;6d2e
	ld a,020h		;6d30
	adc a,c			;6d32
	ei			;6d33
	inc b			;6d34
	ld a,(0ffe7h)		;6d35
	and 020h		;6d38
	rst 18h			;6d3a
	ld (0af04h),a		;6d3b
	ld (0c10eh),a		;6d3e
	ld bc,l7c2ah		;6d41
	dec b			;6d44
	ld (hl),016h		;6d45
	ld hl,(0047fh)		;6d47
	ex af,af'		;6d4a
	ret nc			;6d4b
	ld hl,(00482h)		;6d4c
	jp nz,l6a2ah		;6d4f
	add a,l			;6d52
	inc b			;6d53
	adc a,b			;6d54
	inc b			;6d55
	djnz l6d58h		;6d56
l6d58h:
	ld hl,(0048bh)		;6d58
	call nc,08e2ah		;6d5b
	sub 009h		;6d5e
	sub c			;6d60
	add hl,bc		;6d61
	or l			;6d62
	sub h			;6d63
	add hl,bc		;6d64
	sub a			;6d65
	add hl,bc		;6d66
	xor b			;6d67
	sbc a,d			;6d68
	inc b			;6d69
	ret z			;6d6a
	ld hl,(09d40h)		;6d6b
	inc b			;6d6e
	jp nc,089cdh		;6d6f
	ld c,h			;6d72
	call 02940h		;6d73
	ld (bc),a		;6d76
	ld h,e			;6d77
	dec b			;6d78
	call 062ceh		;6d79
	inc h			;6d7c
	call 0059fh		;6d7d
	and d			;6d80
	ld (bc),a		;6d81
	and l			;6d82
	add a,b			;6d83
	ld (bc),a		;6d84
	or (hl)			;6d85
	ld c,e			;6d86
	call sub_61feh		;6d87
	call 03409h		;6d8a
	ld d,d			;6d8d
	call 00baeh		;6d8e
	add hl,sp		;6d91
	ld (bc),a		;6d92
	jr nz,$-86		;6d93
	ld (bc),a		;6d95
	jp c,0cd56h		;6d96
	xor e			;6d99
	add a,d			;6d9a
	dec b			;6d9b
	ld l,c			;6d9c
	ld d,e			;6d9d
	call 02c98h		;6d9e
	nop			;6da1
	or c			;6da2
	ld c,(hl)		;6da3
	ld a,(0c13dh)		;6da4
	or a			;6da7
	jp z,0223ah		;6da8
	ld c,e			;6dab
	ld a,011h		;6dac
	rrca			;6dae
	dec b			;6daf
	and d			;6db0
	jr nc,l6db9h		;6db1
	pop bc			;6db3
	ld (0fe3eh),hl		;6db4
	and a			;6db7
	nop			;6db8
l6db9h:
	pop bc			;6db9
	ld (0c3a3h),a		;6dba
	ld a,01ch		;6dbd
	ld (08207h),a		;6dbf
	rlca			;6dc2
	and d			;6dc3
	jp 003cdh		;6dc4
	ld a,(de)		;6dc7
	add hl,de		;6dc8
	ld b,005h		;6dc9
	halt			;6dcb
	ld e,l			;6dcc
	and b			;6dcd
	inc d			;6dce
	dec hl			;6dcf
	ld a,(09522h)		;6dd0
	jp l7b2eh		;6dd3
	ld c,e			;6dd6
	ld h,l			;6dd7
	ld l,d			;6dd8
	ld c,h			;6dd9
	add hl,bc		;6dda
	ret			;6ddb
	ld (de),a		;6ddc
	ld c,c			;6ddd
	ld d,023h		;6dde
	ccf			;6de0
	ld (bc),a		;6de1
	ld d,d			;6de2
	ld (bc),a		;6de3
	inc h			;6de4
	ld c,a			;6de5
	ld (bc),a		;6de6
	ld b,e			;6de7
	ld (bc),a		;6de8
	ld b,b			;6de9
	add a,h			;6dea
	ccf			;6deb
	ld (bc),a		;6dec
	ld (02642h),a		;6ded
	ld a,000h		;6df0
	pop bc			;6df2
	cp 01eh			;6df3
	jp c,04b9fh		;6df5
	dec a			;6df8
	ld (03e41h),a		;6df9
	dec bc			;6dfc
	pop de			;6dfd
	jp 0323ch		;6dfe
	inc bc			;6e01
	ld a,(bc)		;6e02
	ld a,(0c113h)		;6e03
	dec c			;6e06
	inc bc			;6e07
	ld a,(de)		;6e08
	inc a			;6e09
	jp nz,03d0dh		;6e0a
	xor a			;6e0d
	nop			;6e0e
	ret			;6e0f
	ld hl,l4beah		;6e10
	ld (l4be6h),hl		;6e13
	ld hl,00a02h		;6e16
	ld c,h			;6e19
	ld (04be8h),hl		;6e1a
	ld hl,(00008h)		;6e1d
	ld e,(hl)		;6e20
	inc hl			;6e21
	ld d,(hl)		;6e22
	inc hl			;6e23
	ld a,d			;6e24
	or e			;6e25
	jp z,0a028h		;6e26
	ld c,00bh		;6e29
	ex de,hl		;6e2b
	ld c,(hl)		;6e2c
	inc hl			;6e2d
	ld b,(hl)		;6e2e
	ld e,e			;6e2f
	ld hl,(01215h)		;6e30
	inc e			;6e33
	add a,b			;6e34
	ex de,hl		;6e35
	ld (hl),c		;6e36
	inc hl			;6e37
	ld (hl),b		;6e38
	jp 0c227h		;6e39
	ld c,e			;6e3c
	sub (hl)		;6e3d
	ld b,b			;6e3e
	rlca			;6e3f
	dec b			;6e40
	ld d,005h		;6e41
	rra			;6e43
	dec b			;6e44
	nop			;6e45
	ld (02e05h),hl		;6e46
	dec b			;6e49
	add hl,de		;6e4a
	dec b			;6e4b
	ld sp,00005h		;6e4c
	ld e,e			;6e4f
	dec b			;6e50
	ld e,(hl)		;6e51
	dec b			;6e52
	ld h,c			;6e53
	dec b			;6e54
	ld h,a			;6e55
	dec b			;6e56
	inc b			;6e57
	ld l,d			;6e58
	dec b			;6e59
	ld (hl),b		;6e5a
	dec b			;6e5b
	ld (hl),e		;6e5c
	and c			;6e5d
	ld c,b			;6e5e
	dec b			;6e5f
	rra			;6e60
	rst 38h			;6e61
	ld c,(hl)		;6e62
	nop			;6e63
	rst 10h			;6e64
	ld c,(hl)		;6e65
	ld (hl),e		;6e66
	ld c,(hl)		;6e67
	and b			;6e68
	ld c,(hl)		;6e69
	call pe,0004eh		;6e6a
	jp c,0e34eh		;6e6d
	ld c,(hl)		;6e70
	in a,(053h)		;6e71
	ld l,l			;6e73
	ld c,(hl)		;6e74
	nop			;6e75
	ld (hl),b		;6e76
	ld c,(hl)		;6e77
	ld c,(ix-020h)		;6e78
	ld c,(hl)		;6e7b
	and 04eh		;6e7c
	nop			;6e7e
	jp (hl)			;6e7f
	ld c,(hl)		;6e80
	halt			;6e81
	ld c,(hl)		;6e82
	ret			;6e83
	di			;6e84
	ld hl,00738h		;6e85
	nop			;6e88
	ld de,l4c86h		;6e89
	ld bc,081bfh		;6e8c
	ldir			;6e8f
	ld hl,069a8h		;6e91
	ld bc,00039h		;6e94
	ld a,0c3h		;6e97
	ld (00438h),a		;6e99
	inc b			;6e9c
	inc de			;6e9d
	ld (0fff1h),a		;6e9e
	adc a,h			;6ea1
	jp po,08b93h		;6ea2
	ld (hl),b		;6ea5
	rst 18h			;6ea6
	di			;6ea7
	ld d,0f6h		;6ea8
	djnz l6edeh		;6eaa
	inc b			;6eac
	dec c			;6ead
	ld sp,00380h		;6eae
	ld (bc),a		;6eb1
	inc bc			;6eb2
	adc a,c			;6eb3
	adc a,a			;6eb4
	and d			;6eb5
	ret z			;6eb6
	xor h			;6eb7
	and h			;6eb8
	dec (hl)		;6eb9
	ld de,0f328h		;6eba
	ex (sp),hl		;6ebd
	add hl,sp		;6ebe
	inc hl			;6ebf
	rrca			;6ec0
	and 0efh		;6ec1
	inc hl			;6ec3
	ld b,0afh		;6ec4
	ld (003c4h),hl		;6ec6
	ei			;6ec9
	ret			;6eca
	sbc a,(hl)		;6ecb
	ld h,h			;6ecc
	ld e,a			;6ecd
	and a			;6ece
	adc a,l			;6ecf
	ld d,h			;6ed0
	or l			;6ed1
	ld c,h			;6ed2
	dec b			;6ed3
	add hl,hl		;6ed4
	push bc			;6ed5
	ld c,h			;6ed6
	ld de,0e50eh		;6ed7
	ld c,0c1h		;6eda
	inc hl			;6edc
	ld c,(hl)		;6edd
l6edeh:
	ld c,0c1h		;6ede
	ret			;6ee0
	push af			;6ee1
	rst 18h			;6ee2
	daa			;6ee3
	inc l			;6ee4
	ld hl,099dbh		;6ee5
	rrca			;6ee8
	call c,03b1ah		;6ee9
	xor a			;6eec
	inc c			;6eed
	dec b			;6eee
	ld (0c1a0h),a		;6eef
	rlca			;6ef2
	call c,sub_6d24h	;6ef3
	call z,0f103h		;6ef6
	jp po,0004bh		;6ef9
	sub b			;6efc
	in a,(0d3h)		;6efd
	ld c,h			;6eff
	sbc a,h			;6f00
	sub c			;6f01
	inc b			;6f02
	jp nc,0c94ch		;6f03
	ld (hl),a		;6f06
	rlca			;6f07
	dec c			;6f08
	push bc			;6f09
	ld b,0d5h		;6f0a
	push hl			;6f0c
	exx			;6f0d
	ex af,af'		;6f0e
	push af			;6f0f
	dec b			;6f10
	jr nz,l6f4dh		;6f11
	dec d			;6f13
	or a			;6f14
	jp nz,l4d06h		;6f15
	adc a,a			;6f18
	add a,l			;6f19
l6f1ah:
	ld d,d			;6f1a
	jp 010abh		;6f1b
	add a,d			;6f1e
	jr z,$+63		;6f1f
	jp z,sub_4d7ah		;6f21
	inc bc			;6f24
	ld a,e			;6f25
	ld c,h			;6f26
	dec de			;6f27
	ld (hl),c		;6f28
	ld b,e			;6f29
	ex (sp),hl		;6f2a
	inc e			;6f2b
	ld (bc),a		;6f2c
	ld a,(0fff6h)		;6f2d
	ld b,a			;6f30
	ld a,(l4706h)		;6f31
	add a,b			;6f34
	ex de,hl		;6f35
	jr nz,l6f39h		;6f36
	sbc a,d			;6f38
l6f39h:
	ld (bc),a		;6f39
	ld hl,080e3h		;6f3a
	jr l6f43h		;6f3d
	call 002deh		;6f3f
	pop hl			;6f42
l6f43h:
	pop de			;6f43
	inc c			;6f44
	pop bc			;6f45
	pop af			;6f46
	ex af,af'		;6f47
	exx			;6f48
	dec b			;6f49
	ld l,e			;6f4a
	ret			;6f4b
	inc d			;6f4c
l6f4dh:
	pop hl			;6f4d
	inc d			;6f4e
	sub e			;6f4f
	ld a,003h		;6f50
	scf			;6f52
	rlca			;6f53
	ld a,(l4cd5h)		;6f54
	jr c,l6f1ah		;6f57
	dec l			;6f59
l6f5ah:
	jp po,0223ah		;6f5a
	call nc,0174ch		;6f5d
	sub 04ch		;6f60
	call 0d4a6h		;6f62
	jr z,l6f5ah		;6f65
	ld a,(bc)		;6f67
	rlca			;6f68
	nop			;6f69
	cp 0d2h			;6f6a
	jp nc,l4d9ah		;6f6c
	cp 028h			;6f6f
	ld (bc),a		;6f71
	jp nc,l4da0h		;6f72
	call l4cd7h		;6f75
	sbc a,c			;6f78
	ld (09391h),a		;6f79
	ld c,b			;6f7c
	dec l			;6f7d
	ld (l4448h),hl		;6f7e
	ret po			;6f81
	sbc a,c			;6f82
	cp a			;6f83
	ld e,b			;6f84
	ld (l4804h),a		;6f85
	add a,c			;6f88
	sub (hl)		;6f89
	rst 18h			;6f8a
	push hl			;6f8b
	add a,d			;6f8c
	ld b,c			;6f8d
	and 020h		;6f8e
	jp nz,l4dc1h		;6f90
	ld b,0a4h		;6f93
	jp z,0bdc8h		;6f95
	ld c,d			;6f98
	push af			;6f99
	cp e			;6f9a
	ld (bc),a		;6f9b
	ld (bc),a		;6f9c
	jp z,l4de0h		;6f9d
	ld (hl),b		;6fa0
	ld h,d			;6fa1
	pop bc			;6fa2
	ld e,092h		;6fa3
	sub h			;6fa5
	ld (hl),b		;6fa6
	ld d,h			;6fa7
	pop bc			;6fa8
	ld h,e			;6fa9
	ld b,a			;6faa
	add hl,bc		;6fab
	sub a			;6fac
	add hl,bc		;6fad
	inc hl			;6fae
	add a,e			;6faf
	jp nz,0d5b4h		;6fb0
	defb 0fdh,00ah,08ch ;illegal sequence	;6fb3
	adc a,b			;6fb6
	ld a,(bc)		;6fb7
	ld l,e			;6fb8
	pop hl			;6fb9
	ld c,(hl)		;6fba
	add a,d			;6fbb
	ex af,af'		;6fbc
	inc hl			;6fbd
	ld d,a			;6fbe
	or 042h			;6fbf
	ld e,h			;6fc1
	ret nz			;6fc2
	call sub_47b5h		;6fc3
	ld d,e			;6fc6
	xor b			;6fc7
	sub l			;6fc8
	ld l,0f7h		;6fc9
	ld h,a			;6fcb
	ld l,032h		;6fcc
	or 0bch			;6fce
	ld c,d			;6fd0
	rst 8			;6fd1
	jp p,00695h		;6fd2
	xor (hl)		;6fd5
	add hl,hl		;6fd6
	xor h			;6fd7
	inc l			;6fd8
	add hl,sp		;6fd9
	ld e,a			;6fda
l6fdbh:
	ld c,e			;6fdb
	adc a,(hl)		;6fdc
	sbc a,d			;6fdd
	push hl			;6fde
	or 0c4h			;6fdf
	sbc a,h			;6fe1
	jp 0f690h		;6fe2
	ld (hl),d		;6fe5
	ld c,(hl)		;6fe6
	inc l			;6fe7
	call 08d5dh		;6fe8
	ld c,b			;6feb
	ld h,b			;6fec
	ld (bc),a		;6fed
	ld e,002h		;6fee
	ld (hl),l		;6ff0
	dec b			;6ff1
	adc a,(hl)		;6ff2
	xor b			;6ff3
	ld d,l			;6ff4
	adc a,d			;6ff5
	inc de			;6ff6
	res 1,b			;6ff7
	xor a			;6ff9
	xor c			;6ffa
	jp pe,l44a7h		;6ffb
	ld (l45ach),a		;6ffe
	ld a,(0e9f3h)		;7001
	ld b,b			;7004
	call z,sub_6020h	;7005
	call 000a3h		;7008
	ld e,b			;700b
	ld a,(0c39fh)		;700c
	and 040h		;700f
	call nz,0b521h		;7011
	ret c			;7014
	inc hl			;7015
	ld d,(hl)		;7016
	pop bc			;7017
	adc a,l			;7018
	call nz,021afh		;7019
	add a,b			;701c
	dec c			;701d
	cp (hl)			;701e
l701fh:
	jp z,l4eb5h		;701f
	ld (hl),a		;7022
	call 01334h		;7023
	inc bc			;7026
	ld d,a			;7027
	jr nz,$+54		;7028
	nop			;702a
	call l57d8h		;702b
	call sub_51cdh		;702e
	call 020c0h		;7031
	ld c,a			;7034
	ld a,040h		;7035
	ld c,c			;7037
	pop bc			;7038
	call 0042eh		;7039
	ld c,a			;703c
	jr nz,l7048h		;703d
	call sub_6315h		;703f
	jr l6fdbh		;7042
	ld (bc),a		;7044
	ld h,(hl)		;7045
	xor d			;7046
	sub d			;7047
l7048h:
	ld (bc),a		;7048
	jr nc,l704dh		;7049
	ld c,b			;704b
	ld l,a			;704c
l704dh:
	ld (bc),a		;704d
	ld (hl),d		;704e
	ld (bc),a		;704f
	dec l			;7050
	dec b			;7051
	xor (hl)		;7052
	inc h			;7053
	adc a,000h		;7054
	dec e			;7056
	ld c,a			;7057
	call sub_4f02h		;7058
	ei			;705b
	call 05f0ch		;705c
	dec b			;705f
	sbc a,h			;7060
	ld sp,000deh		;7061
	jp (hl)			;7064
	ei			;7065
	and 010h		;7066
	jp nz,l4f18h		;7068
	ld b,03ah		;706b
	rla			;706d
	ld c,a			;706e
	or a			;706f
	ret nz			;7070
	ld l,h			;7071
	ld b,d			;7072
	ld b,0c3h		;7073
	ld d,c			;7075
	dec b			;7076
	ret nz			;7077
l7078h:
	sub d			;7078
	rlca			;7079
	sub d			;707a
	ld a,(de)		;707b
	jp pe,0011ah		;707c
	inc de			;707f
	ld e,(hl)		;7080
	jr nz,l701fh		;7081
	inc b			;7083
	ld a,0e0h		;7084
	ld (08aa4h),a		;7086
	and d			;7089
	rst 8			;708a
	ld (hl),b		;708b
	ld h,h			;708c
	ret z			;708d
	add a,a			;708e
	ei			;708f
	jr nc,$-51		;7090
	ld (hl),a		;7092
	add hl,bc		;7093
	jp nz,l5043h		;7094
	ld c,a			;7097
	dec h			;7098
	ld b,0c9h		;7099
	ld (01702h),a		;709b
	jp nz,004c6h		;709e
	call m,0c208h		;70a1
	ld a,(0e5d0h)		;70a4
	jp l4f5ch		;70a7
	ld b,d			;70aa
	ld d,009h		;70ab
	ld l,092h		;70ad
	dec l			;70af
	dec e			;70b0
	sub c			;70b1
	add a,b			;70b2
	ld a,(0c104h)		;70b3
	sub b			;70b6
	ex de,hl		;70b7
	ld (09804h),a		;70b8
	djnz l70c3h		;70bb
	sbc a,c			;70bd
	dec c			;70be
	jp nz,00c32h		;70bf
	inc h			;70c2
l70c3h:
	inc c			;70c3
	and 007h		;70c4
	jr nz,$+16		;70c6
	ld a,005h		;70c8
	add a,008h		;70ca
	cp 060h			;70cc
	jr nz,l7078h		;70ce
	inc c			;70d0
	ld c,b			;70d1
	ld b,d			;70d2
	inc d			;70d3
	ld a,(0c200h)		;70d4
	ld (0011ah),hl		;70d7
	add a,b			;70da
	dec b			;70db
	dec b			;70dc
	jp nz,00d21h		;70dd
	pop bc			;70e0
	ld b,(hl)		;70e1
	ret z			;70e2
	add a,0afh		;70e3
	call 05f32h		;70e5
	ld d,c			;70e8
	ld hl,(0e8fbh)		;70e9
	inc bc			;70ec
	cp 0a4h			;70ed
	ld b,006h		;70ef
	jr nc,$-42		;70f1
	ld h,062h		;70f3
	dec c			;70f5
	ld d,b			;70f6
	sbc a,e			;70f7
	ret nz			;70f8
	add a,0eah		;70f9
	ret p			;70fb
	call z,099cch		;70fc
	sbc a,b			;70ff
	rlca			;7100
	and a			;7101
	call nz,sub_608dh	;7102
	ld e,e			;7105
	ld c,b			;7106
	jr c,$+60		;7107
	inc a			;7109
	ld a,(0c280h)		;710a
	dec bc			;710d
	ld de,0c240h		;710e
	ld a,083h		;7111
	add a,b			;7113
	ld e,a			;7114
	pop bc			;7115
	ld b,007h		;7116
	push de			;7118
	ld a,(hl)		;7119
	nop			;711a
	and 01fh		;711b
	cp 015h			;711d
	jp z,l5088h		;711f
	inc hl			;7122
	ret nz			;7123
	di			;7124
	jr l7177h		;7125
	add hl,bc		;7127
	cp 004h			;7128
	jr z,$+71		;712a
	rst 10h			;712c
	nop			;712d
	add a,d			;712e
	ld d,c			;712f
	call nz,sub_50bch	;7130
	pop de			;7133
	inc e			;7134
	push hl			;7135
	ldi			;7136
	ld bc,0e1b4h		;7138
	inc b			;713b
	ld a,(hl)		;713c
	inc a			;713d
	nop			;713e
	ld (de),a		;713f
	inc de			;7140
	inc de			;7141
	ld bc,0000dh		;7142
	add hl,bc		;7145
	ld a,(0358ch)		;7146
	add a,002h		;7149
	ld a,(0fbc0h)		;714b
	jp nz,088d9h		;714e
	jp m,001d1h		;7151
	ld b,d			;7154
	rrca			;7155
	ld (de),a		;7156
	ex de,hl		;7157
	ld c,008h		;7158
	inc bc			;715a
	push af			;715b
	rla			;715c
	nop			;715d
	dec hl			;715e
	ld a,(hl)		;715f
	cp 024h			;7160
	jr z,l71a1h		;7162
	inc hl			;7164
	push hl			;7165
	ld d,b			;7166
	inc hl			;7167
	nop			;7168
	add hl,bc		;7169
	ld d,028h		;716a
	add hl,bc		;716c
	adc a,b			;716d
	xor d			;716e
	pop hl			;716f
	call sub_5504h		;7170
	ld d,c			;7173
	jp l4ff2h		;7174
l7177h:
	ld c,03ch		;7177
	nop			;7179
	ld (hl),a		;717a
	cp 00ch			;717b
	jr z,$+20		;717d
	and 003h		;717f
	jr z,$+51		;7181
	inc b			;7183
	pop hl			;7184
	rrca			;7185
	dec hl			;7186
	add hl,hl		;7187
	ld b,h			;7188
	pop hl			;7189
	ld (hl),a		;718a
	ret po			;718b
	add hl,bc		;718c
	ld (hl),022h		;718d
l718fh:
	jp nc,03623h		;718f
	ld b,008h		;7192
	jr nc,l7196h		;7194
l7196h:
	inc hl			;7196
	rrca			;7197
	ld (hl),004h		;7198
	jp nc,0363eh		;719a
	ld c,e			;719d
	ld (bc),a		;719e
	ld l,022h		;719f
l71a1h:
	inc hl			;71a1
	ld de,0853eh		;71a2
	ld (hl),001h		;71a5
	inc hl			;71a7
	xor b			;71a8
	xor b			;71a9
	ld a,(hl)		;71aa
	sub b			;71ab
	ld (hl),a		;71ac
	ret c			;71ad
	rrca			;71ae
	or b			;71af
	cp a			;71b0
	adc a,h			;71b1
	nop			;71b2
	djnz $+51		;71b3
	pop hl			;71b5
	ld a,(0c235h)		;71b6
	nop			;71b9
	cp d			;71ba
	ret c			;71bb
	cp e			;71bc
	ret nc			;71bd
	ld a,(0c234h)		;71be
l71c1h:
	cp c			;71c1
	nop			;71c2
	ret c			;71c3
l71c4h:
	sub 010h		;71c4
	cp c			;71c6
	ret nc			;71c7
	ld a,0f0h		;71c8
	ld (011a4h),a		;71ca
	add a,e			;71cd
	ld b,b			;71ce
	ld (0c30fh),a		;71cf
	jp m,0c950h		;71d2
	ld a,(hl)		;71d5
	ld a,(bc)		;71d6
	sub 008h		;71d7
	ld c,a			;71d9
	push hl			;71da
	ld (hl),a		;71db
	jr l71dfh		;71dc
	ld d,a			;71de
l71dfh:
	add a,01eh		;71df
	ld e,a			;71e1
	ld hl,0c229h		;71e2
	call p,sub_7e10h	;71e5
	dec hl			;71e8
	cp d			;71e9
	inc b			;71ea
	jp c,l5098h		;71eb
	cp e			;71ee
	jp nc,l7e03h		;71ef
sub_71f2h:
	ld h,(hl)		;71f2
	cp c			;71f3
	ex af,af'		;71f4
	ld (00a61h),a		;71f5
	ld a,(0a551h)		;71f8
	cp b			;71fb
	call p,sub_5024h	;71fc
	ld a,b			;71ff
l7200h:
	add a,e			;7200
	ld c,h			;7201
	jp nc,0e105h		;7202
	jr c,l718fh		;7205
	ld b,l			;7207
	ld (hl),a		;7208
	inc hl			;7209
	sbc a,c			;720a
	or l			;720b
	and 00ch		;720c
	ld b,a			;720e
	ld de,0189ch		;720f
sub_7212h:
	add hl,de		;7212
	ld (hl),d		;7213
	jp c,01a23h		;7214
	ld d,c			;7217
	cp (hl)			;7218
	scf			;7219
	or d			;721a
	scf			;721b
	call nz,0c28dh		;721c
sub_721fh:
	ret nz			;721f
	dec hl			;7220
	sbc hl,de		;7221
	ret			;7223
	cp h			;7224
	ld de,09610h		;7225
	inc hl			;7228
	ld e,c			;7229
	inc de			;722a
	add hl,bc		;722b
	ld (hl),024h		;722c
	inc hl			;722e
	cp 081h			;722f
	inc a			;7231
	jr z,$+27		;7232
	ld a,(l514ch)		;7234
	ld hl,(02fc0h)		;7237
	dec b			;723a
	or d			;723b
	jr nc,l71c4h		;723c
	ld (l4a62h),a		;723e
	dec e			;7241
	sub 080h		;7242
	add a,h			;7244
	ld c,e			;7245
	dec (hl)		;7246
	ret			;7247
	jp 02008h		;7248
	ld (hl),a		;724b
	ld b,024h		;724c
	nop			;724e
	ld b,(hl)		;724f
	ret nz			;7250
	ld h,h			;7251
	cp c			;7252
	and b			;7253
	push hl			;7254
	ld h,000h		;7255
	ld a,d			;7257
	ld l,b			;7258
	jp 011bah		;7259
	push de			;725c
sub_725dh:
	rla			;725d
	add hl,de		;725e
	push hl			;725f
	ld l,a			;7260
	inc c			;7261
	dec bc			;7262
	nop			;7263
	nop			;7264
	ld (hl),h		;7265
	add hl,de		;7266
	call 00045h		;7267
	ld bc,00ee1h		;726a
	sbc a,b			;726d
	call 005b4h		;726e
	pop hl			;7271
	inc b			;7272
	ret			;7273
	call sub_6310h		;7274
	ld b,(hl)		;7277
	res 4,b			;7278
	inc bc			;727a
	jp c,008beh		;727b
	ld d,c			;727e
	cp 0e3h			;727f
	jp nc,02b04h		;7281
	cp 004h			;7284
	ld (de),a		;7286
	ld c,001h		;7287
	jr c,l7290h		;7289
	call pe,00ec0h		;728b
	pop hl			;728e
	ret c			;728f
l7290h:
	ld a,(0da60h)		;7290
	di			;7293
	add hl,de		;7294
	ld c,(hl)		;7295
	ret z			;7296
	ex (sp),hl		;7297
	ld hl,(0f23dh)		;7298
	ld h,051h		;729b
	ld a,c			;729d
	or 027h			;729e
	jp nz,0e778h		;72a0
	inc de			;72a3
	ret			;72a4
	ex af,af'		;72a5
	add hl,sp		;72a6
	ex af,af'		;72a7
	ld d,038h		;72a8
	ex af,af'		;72aa
	ld h,c			;72ab
	ld hl,(00087h)		;72ac
	ld (hl),c		;72af
	in a,(059h)		;72b0
	sbc a,h			;72b2
	ld c,049h		;72b3
	and (hl)		;72b5
	sub b			;72b6
	inc bc			;72b7
	ret nz			;72b8
	ld a,(00147h)		;72b9
	pop bc			;72bc
	ld h,a			;72bd
	ld a,(0c148h)		;72be
	ld l,a			;72c1
	ld a,(hl)		;72c2
	inc c			;72c3
	adc a,(hl)		;72c4
	inc hl			;72c5
	adc a,c			;72c6
	jr c,$-109		;72c7
l72c9h:
	ld (0327dh),hl		;72c9
	dec c			;72cc
	ld a,h			;72cd
	ld (00015h),a		;72ce
	ld d,000h		;72d1
	ld hl,l6547h		;72d3
	add hl,de		;72d6
	ld (hl),c		;72d7
	dec hl			;72d8
	dec d			;72d9
	ex de,hl		;72da
	ld bc,00910h		;72db
	xor l			;72de
	nop			;72df
	ld a,(hl)		;72e0
	or a			;72e1
l72e2h:
	jr z,l7301h		;72e2
	add hl,bc		;72e4
	add a,004h		;72e5
	jr $+6			;72e7
	or l			;72e9
	inc de			;72ea
	inc b			;72eb
	ld c,004h		;72ec
	xor l			;72ee
	add hl,bc		;72ef
	inc b			;72f0
	ld h,c			;72f1
	inc b			;72f2
	inc b			;72f3
	ret nz			;72f4
	ex de,hl		;72f5
	or c			;72f6
l72f7h:
	or b			;72f7
	ret			;72f8
	push hl			;72f9
	ld de,02be2h		;72fa
	call c,01452h		;72fd
	ex af,af'		;7300
l7301h:
	inc bc			;7301
	add hl,de		;7302
	djnz $-5		;7303
	or c			;7305
	cp e			;7306
	push hl			;7307
	ld e,0f6h		;7308
	pop af			;730a
	adc a,c			;730b
	ld sp,hl		;730c
	sbc a,b			;730d
	inc de			;730e
	ret m			;730f
	ld (bc),a		;7310
	push af			;7311
	or h			;7312
	or l			;7313
	di			;7314
	rlca			;7315
	rlca			;7316
	call p,021c1h		;7317
	ccf			;731a
	sbc a,h			;731b
	add a,a			;731c
	adc a,e			;731d
	inc b			;731e
	xor d			;731f
	ld h,b			;7320
	add a,a			;7321
	ld b,a			;7322
	add a,a			;7323
	nop			;7324
	add a,b			;7325
	add a,012h		;7326
	ld (l564eh),a		;7328
	ld hl,0d14eh		;732b
	ld de,01bcdh		;732e
	dec b			;7331
	jp nz,08e68h		;7332
	ld b,c			;7335
	ld d,(hl)		;7336
	ld sp,l5690h		;7337
	ld (0028ah),a		;733a
	djnz $-114		;733d
	ld d,(hl)		;733f
	ld d,c			;7340
l7341h:
	ld (bc),a		;7341
	jp l4a91h		;7342
	ld d,d			;7345
	cp h			;7346
	jr nc,l72c9h		;7347
	ld c,b			;7349
	ld a,(0c9f2h)		;734a
	ld b,003h		;734d
	di			;734f
	jp c,0fb8ah		;7350
	jp nz,03204h		;7353
	ld (0ca87h),a		;7356
	ret p			;7359
	ld c,e			;735a
	adc a,c			;735b
	dec bc			;735c
	sub 00ah		;735d
	ret z			;735f
	jr z,$+6		;7360
	add hl,bc		;7362
	dec c			;7363
	jp nz,07a05h		;7364
	ld (0c1f7h),a		;7367
	ld a,e			;736a
	ld hl,(00961h)		;736b
	and (hl)		;736e
	ld h,e			;736f
	add hl,de		;7370
	jp z,01380h		;7371
	ld d,e			;7374
	ld b,006h		;7375
	push bc			;7377
	ld b,022h		;7378
	ex af,af'		;737a
	push bc			;737b
	call z,sub_5e04h	;737c
	push hl			;737f
	ld hl,l5552h		;7380
	ret nz			;7383
	exx			;7384
	ld d,h			;7385
	ret nz			;7386
	jr nz,$-51		;7387
	ld b,a			;7389
	jp z,0dd05h		;738a
	ld d,d			;738d
	and 0feh		;738e
	add a,069h		;7390
	ld e,a			;7392
	ld b,(hl)		;7393
	sub c			;7394
	inc bc			;7395
	adc a,l			;7396
	ld d,(hl)		;7397
	jp 052e5h		;7398
	ld a,(bc)		;739b
	ld e,b			;739c
	inc bc			;739d
	ld a,(bc)		;739e
	ld hl,020a3h		;739f
	sbc a,c			;73a2
	ld l,h			;73a3
	ld a,(hl)		;73a4
	dec e			;73a5
	add a,l			;73a6
	inc b			;73a7
	pop hl			;73a8
	inc hl			;73a9
	pop bc			;73aa
	rst 28h			;73ab
	out (0bah),a		;73ac
	ld (hl),08eh		;73ae
	dec c			;73b0
	inc b			;73b1
	ld de,0b410h		;73b2
	ld hl,(01158h)		;73b5
	jr nc,l7341h		;73b8
	ld b,d			;73ba
	ld (00006h),hl		;73bb
	call 054f1h		;73be
	jp l531eh		;73c1
	ld hl,00932h		;73c4
	ld d,l			;73c7
	ld de,l5542h		;73c8
	and c			;73cb
	ld c,b			;73cc
	call m,03e86h		;73cd
	rlca			;73d0
	ld (098c8h),a		;73d1
	sub 085h		;73d4
	jp p,0f4c1h		;73d6
	ld hl,0c300h		;73d9
	jp c,03468h		;73dc
	or b			;73df
	ld d,c			;73e0
	adc a,c			;73e1
	ld b,h			;73e2
	ld a,a			;73e3
	call nz,09025h		;73e4
	ld (bc),a		;73e7
	ld l,h			;73e8
	ld a,(bc)		;73e9
	ret nc			;73ea
	ld (08c70h),a		;73eb
	sub 048h		;73ee
	ld e,a			;73f0
l73f1h:
	dec bc			;73f1
	ld h,e			;73f2
	ld (bc),a		;73f3
	ld h,h			;73f4
	ld d,(hl)		;73f5
	sub (hl)		;73f6
	sub c			;73f7
	ld b,b			;73f8
	call sub_5484h		;73f9
	ld a,03fh		;73fc
	ld (0d7d3h),a		;73fe
	ret c			;7401
	ld e,b			;7402
	adc a,h			;7403
sub_7404h:
	ret nc			;7404
	dec (hl)		;7405
	ld hl,l7c12h		;7406
	ret			;7409
	and b			;740a
	or c			;740b
	rra			;740c
	jp c,097ebh		;740d
	adc a,h			;7410
	adc a,e			;7411
	ld l,a			;7412
	ld l,h			;7413
	adc a,b			;7414
	ret			;7415
	call z,0c451h		;7416
	add a,c			;7419
	ld d,e			;741a
	call 0f821h		;741b
	ret			;741e
	rst 0			;741f
	ld l,b			;7420
	dec a			;7421
	ld d,b			;7422
	ld (hl),a		;7423
	xor e			;7424
	ret nz			;7425
	inc sp			;7426
	ld (hl),a		;7427
	ret			;7428
	call 0ba66h		;7429
	ld e,b			;742c
	rst 30h			;742d
	ret pe			;742e
	nop			;742f
	ld a,(de)		;7430
	jp z,l53a9h		;7431
	rlca			;7434
	ld bc,007cah		;7435
	add a,b			;7438
	jp 0c10eh		;7439
	jp pe,0380ah		;743c
	ld h,(hl)		;743f
	and e			;7440
	rlca			;7441
	xor c			;7442
	ld a,0d4h		;7443
	xor l			;7445
	inc bc			;7446
	add hl,hl		;7447
	and h			;7448
	ld c,c			;7449
	di			;744a
	ld b,b			;744b
	jp nz,l612ch		;744c
	jp 0ca5ch		;744f
	add hl,hl		;7452
	inc c			;7453
	out (039h),a		;7454
	add a,c			;7456
	ld h,(hl)		;7457
	ld b,0d7h		;7458
	and (hl)		;745a
	ld b,h			;745b
	ld l,c			;745c
	ld c,c			;745d
	call 0ab5ah		;745e
	add a,c			;7461
	inc b			;7462
	ld d,h			;7463
	defb 0ddh,025h ;dec ixh	;7464
	pop bc			;7466
	jr l73f1h		;7467
	ld b,(hl)		;7469
	ret nz			;746a
	ld h,(hl)		;746b
	ret z			;746c
	inc de			;746d
	call 02c70h		;746e
	pop af			;7471
	ld c,011h		;7472
	rrca			;7474
	call nc,0fe85h		;7475
	ex af,af'		;7478
	dec h			;7479
	and e			;747a
	ld (de),a		;747b
	xor 081h		;747c
	ld c,d			;747e
	inc b			;747f
	ld c,(hl)		;7480
	adc a,d			;7481
	exx			;7482
	dec e			;7483
	nop			;7484
	jp nz,l5420h		;7485
	call sub_549fh		;7488
	ld hl,09630h		;748b
	xor c			;748e
	ld (0c4e5h),hl		;748f
	inc (hl)		;7492
	or 0edh			;7493
	ld l,(hl)		;7495
	dec de			;7496
	ld d,h			;7497
	add a,b			;7498
	jp nz,03d4eh		;7499
	jr $+35			;749c
	jr $+36			;749e
	or 098h			;74a0
	sbc a,d			;74a2
	cp 0f0h			;74a3
	ld (hl),c		;74a5
	jp nz,085d5h		;74a6
	jr z,l74d0h		;74a9
	jp c,0911ch		;74ab
	sub e			;74ae
	ld l,d			;74af
	dec de			;74b0
	ld l,h			;74b1
	dec de			;74b2
	add a,(hl)		;74b3
	ld (hl),b		;74b4
	dec de			;74b5
	adc a,d			;74b6
	ret po			;74b7
	jp nz,01b56h		;74b8
	sub (hl)		;74bb
	ld d,h			;74bc
	ld a,(0e56ch)		;74bd
	ld hl,(02a65h)		;74c0
	or d			;74c3
	xor d			;74c4
	sub (hl)		;74c5
	and b			;74c6
	ld b,a			;74c7
	inc l			;74c8
	ld hl,0285dh		;74c9
	ld (de),a		;74cc
	xor a			;74cd
	ld h,c			;74ce
	sbc a,c			;74cf
l74d0h:
	or h			;74d0
	inc l			;74d1
	add a,09dh		;74d2
	ld de,01ffeh		;74d4
	adc a,b			;74d7
	ld c,d			;74d8
	cp d			;74d9
	inc h			;74da
	ld h,b			;74db
	ld (bc),a		;74dc
	ld l,a			;74dd
	ld (bc),a		;74de
	scf			;74df
	add a,h			;74e0
	ld (bc),a		;74e1
	add a,d			;74e2
	ld d,(hl)		;74e3
	xor 0f2h		;74e4
	ld e,b			;74e6
	djnz l755ch		;74e7
	adc a,c			;74e9
	ld (bc),a		;74ea
	jr z,l7543h		;74eb
	xor (hl)		;74ed
	ld h,088h		;74ee
	sbc a,b			;74f0
	sbc a,07bh		;74f1
	ld d,(hl)		;74f3
	jp nz,0e0dah		;74f4
	ld a,b			;74f7
	daa			;74f8
	cp (hl)			;74f9
	ld d,h			;74fa
	ret po			;74fb
l74fch:
	add a,h			;74fc
	ld a,l			;74fd
	ret po			;74fe
	jp (hl)			;74ff
	ld a,(hl)		;7500
	ld d,(hl)		;7501
	pop bc			;7502
	and e			;7503
	ld d,h			;7504
	ld a,(bc)		;7505
	ld e,b			;7506
	inc bc			;7507
	ld a,(bc)		;7508
	inc hl			;7509
	dec de			;750a
	ex de,hl		;750b
	ld hl,05a7bh		;750c
	xor h			;750f
	sub d			;7510
	add a,c			;7511
	push de			;7512
	halt			;7513
	inc b			;7514
	dec h			;7515
	jp nz,01ba2h		;7516
	add a,c			;7519
	ld e,(hl)		;751a
	xor b			;751b
	inc (hl)		;751c
	sbc hl,hl		;751d
	or 0b0h			;751f
	ld (hl),l		;7521
	ld a,(l4448h)		;7522
	pop de			;7525
l7526h:
	jp z,0df9ah		;7526
	rst 0			;7529
	ld d,d			;752a
	and d			;752b
	ld (hl),b		;752c
	dec b			;752d
	ld d,l			;752e
	inc h			;752f
	ld a,(0b5f9h)		;7530
	jp c,0b188h		;7533
	ld (hl),b		;7536
	jp nz,0a9f5h		;7537
	inc de			;753a
	rst 10h			;753b
	add hl,bc		;753c
	ld de,(028d7h)		;753d
	ret			;7541
	and h			;7542
l7543h:
	adc a,051h		;7543
	ld e,a			;7545
	sub 0a9h		;7546
	halt			;7548
	halt			;7549
	dec h			;754a
	ld a,(l5f26h)		;754b
	add a,(hl)		;754e
	ld h,d			;754f
l7550h:
	ret m			;7550
	dec d			;7551
	ld a,(bc)		;7552
	ex de,hl		;7553
	pop hl			;7554
	ld bc,08b02h		;7555
	ld c,c			;7558
	call m,0206ch		;7559
l755ch:
	nop			;755c
	ei			;755d
	ld bc,l4051h		;755e
	ld bc,l4020h		;7561
	nop			;7564
	nop			;7565
	ld h,b			;7566
	ld b,b			;7567
	add a,b			;7568
	ld b,b			;7569
	and b			;756a
	ld h,b			;756b
	nop			;756c
	ld (hl),l		;756d
	ld h,b			;756e
	rrc d			;756f
	ld b,b			;7571
	nop			;7572
	add a,b			;7573
sub_7574h:
	ld h,b			;7574
	and b			;7575
	add a,b			;7576
	nop			;7577
	dec d			;7578
	add a,b			;7579
	jr nz,l74fch		;757a
	inc d			;757c
l757dh:
	ld a,(bc)		;757d
	nop			;757e
	ld bc,0a0a0h		;757f
	nop			;7582
	and b			;7583
	jr nz,l7526h		;7584
	ld e,094h		;7586
	inc d			;7588
	ld a,(bc)		;7589
	ret nz			;758a
	nop			;758b
	nop			;758c
	ret nz			;758d
l758eh:
	jr nz,l7550h		;758e
	ld b,b			;7590
	ret nz			;7591
	ld h,b			;7592
	ret nz			;7593
	nop			;7594
	add a,b			;7595
	ret nz			;7596
	and b			;7597
	ret po			;7598
	nop			;7599
	ret po			;759a
	jr nz,l757dh		;759b
	ld (bc),a		;759d
	ld b,b			;759e
	ret po			;759f
	ld h,b			;75a0
	ret po			;75a1
	add a,b			;75a2
	ret po			;75a3
	jr nz,l7550h		;75a4
	ld c,e			;75a6
	nop			;75a7
	ld c,d			;75a8
	ld b,b			;75a9
	xor e			;75aa
	ld (hl),02eh		;75ab
	nop			;75ad
	ld e,b			;75ae
	ld l,d			;75af
l75b0h:
	ld c,(hl)		;75b0
	ld b,h			;75b1
	ld (hl),000h		;75b2
	ld bc,02140h		;75b4
	ld b,b			;75b7
	ld b,c			;75b8
	ld b,b			;75b9
	ld h,c			;75ba
	ld b,b			;75bb
	nop			;75bc
	add a,c			;75bd
	ld b,b			;75be
	and c			;75bf
	ld h,b			;75c0
	ld bc,02160h		;75c1
	ld h,b			;75c4
	nop			;75c5
	ld b,c			;75c6
	ld h,b			;75c7
	ld h,c			;75c8
	ld h,b			;75c9
	add a,c			;75ca
	ld h,b			;75cb
	and c			;75cc
	add a,b			;75cd
	ld l,001h		;75ce
	add a,b			;75d0
	and (hl)		;75d1
	nop			;75d2
	ld b,c			;75d3
	add a,b			;75d4
	ld h,c			;75d5
	add a,b			;75d6
	add a,c			;75d7
	add a,b			;75d8
	and c			;75d9
	and b			;75da
	nop			;75db
	ld bc,021a0h		;75dc
	and b			;75df
	ld b,c			;75e0
	and b			;75e1
	ld h,c			;75e2
	and b			;75e3
	add hl,bc		;75e4
	add a,c			;75e5
	and b			;75e6
	and c			;75e7
	ret nz			;75e8
	ret m			;75e9
	add a,a			;75ea
	ld hl,l41c0h		;75eb
	ret m			;75ee
	ld b,b			;75ef
	ret nz			;75f0
	add a,c			;75f1
	ret nz			;75f2
	and c			;75f3
	ret po			;75f4
	nop			;75f5
	ld bc,021e0h		;75f6
	ret po			;75f9
	ld b,c			;75fa
	ret po			;75fb
	ld h,c			;75fc
	ret po			;75fd
	nop			;75fe
	add a,c			;75ff
	ret po			;7600
	and c			;7601
	jr nz,$+3		;7602
	jr nz,l7627h		;7604
	jr nz,l7608h		;7606
l7608h:
	ld b,c			;7608
	jr nz,l766ch		;7609
	jr nz,l758eh		;760b
	jr nz,l75b0h		;760d
	nop			;760f
	ld e,h			;7610
	ld bc,000e2h		;7611
	ld (bc),a		;7614
	ld b,c			;7615
	nop			;7616
	ld h,c			;7617
	nop			;7618
	add a,c			;7619
	nop			;761a
	dec bc			;761b
	and 000h		;761c
	ld de,001d3h		;761e
	nop			;7621
	ret nc			;7622
	dec bc			;7623
	ld e,b			;7624
	ret po			;7625
	inc bc			;7626
l7627h:
	ld (bc),a		;7627
	call nz,09912h		;7628
	ld c,d			;762b
	nop			;762c
	ret p			;762d
	ld e,097h		;762e
	ld (bc),a		;7630
	add hl,bc		;7631
	ld (hl),c		;7632
	ld c,078h		;7633
	rrca			;7635
	ld (bc),a		;7636
	ret po			;7637
	dec e			;7638
	pop hl			;7639
	inc bc			;763a
	ld d,h			;763b
	add hl,hl		;763c
	defb 0ddh,002h,018h ;illegal sequence	;763d
	ld b,000h		;7640
	dec b			;7642
	inc de			;7643
	sub b			;7644
	ld h,l			;7645
	jr nz,l764ch		;7646
	add a,094h		;7648
	dec de			;764a
	rla			;764b
l764ch:
	ex af,af'		;764c
	ld h,e			;764d
	nop			;764e
	ld c,d			;764f
	ret po			;7650
	inc b			;7651
	ld a,d			;7652
	ld c,d			;7653
	push hl			;7654
	add hl,bc		;7655
	inc bc			;7656
	ld (de),a		;7657
	or e			;7658
	dec bc			;7659
	jr nz,l7688h		;765a
	ld (hl),a		;765c
	ld c,049h		;765d
	ld h,l			;765f
	jp 0777ah		;7660
	rst 30h			;7663
	nop			;7664
	nop			;7665
	inc bc			;7666
	ld (bc),a		;7667
	ld bc,00707h		;7668
	inc b			;766b
l766ch:
	dec b			;766c
	ld b,060h		;766d
	ld bc,0070bh		;766f
	dec b			;7672
	inc bc			;7673
	ex af,af'		;7674
	ld b,004h		;7675
	ld (bc),a		;7677
	dec b			;7678
	ld de,00401h		;7679
	jp c,0060eh		;767c
	add hl,de		;767f
	sub d			;7680
	nop			;7681
	inc bc			;7682
	nop			;7683
	inc b			;7684
	rra			;7685
	xor b			;7686
	rlca			;7687
l7688h:
	dec e			;7688
	ld de,0bdcdh		;7689
	xor b			;768c
	rst 38h			;768d
	rst 18h			;768e
	ld h,d			;768f
	or h			;7690
	cp a			;7691
	inc c			;7692
	jp nc,0214ch		;7693
	xor d			;7696
	jp p,l4d02h		;7697
	ld h,d			;769a
	ld bc,0c530h		;769b
	ld (hl),d		;769e
	cp 065h			;769f
	sbc a,d			;76a1
	ret c			;76a2
	nop			;76a3
	sub 057h		;76a4
	ld (05f42h),a		;76a6
	inc b			;76a9
	ld (l5c6bh),a		;76aa
	ld (00b9fh),a		;76ad
	and b			;76b0
	sub d			;76b1
	ld (bc),a		;76b2
	and d			;76b3
	ld (bc),a		;76b4
	and e			;76b5
	ld (bc),a		;76b6
	ld c,c			;76b7
	and c			;76b8
	ld (bc),a		;76b9
	and h			;76ba
	ld (bc),a		;76bb
	and l			;76bc
	ld (bc),a		;76bd
	inc h			;76be
	and (hl)		;76bf
	ld (bc),a		;76c0
	and a			;76c1
l76c2h:
	ld (bc),a		;76c2
	xor b			;76c3
	adc a,e			;76c4
	ld (bc),a		;76c5
	xor c			;76c6
	ld d,(hl)		;76c7
	ret z			;76c8
	ret nz			;76c9
	ld hl,(0325eh)		;76ca
	adc a,c			;76cd
	ld h,d			;76ce
	ld e,e			;76cf
	ld b,l			;76d0
	ret z			;76d1
	inc sp			;76d2
	ld b,d			;76d3
	sbc a,(hl)		;76d4
	ld (de),a		;76d5
	rst 10h			;76d6
	ld d,a			;76d7
	ld a,0bdh		;76d8
	ret nz			;76da
	ret			;76db
	ld d,a			;76dc
	call 082d7h		;76dd
	ld d,e			;76e0
	ld d,l			;76e1
	ld d,a			;76e2
	ld de,l758eh		;76e3
	ld h,c			;76e6
	ld b,053h		;76e7
	ld hl,00acah		;76e9
	ld b,0efh		;76ec
	ld c,a			;76ee
	ld bc,0b003h		;76ef
	inc l			;76f2
	jr z,l76c2h		;76f3
	jr c,l7759h		;76f5
	ret			;76f7
	adc a,l			;76f8
	rrca			;76f9
	ret nz			;76fa
	jp 0575bh		;76fb
	ex (sp),hl		;76fe
	rst 0			;76ff
	or a			;7700
	or b			;7701
	adc a,00bh		;7702
	push bc			;7704
	ld l,a			;7705
	inc b			;7706
	rla			;7707
	ex af,af'		;7708
	sbc a,(hl)		;7709
	and c			;770a
	cp 002h			;770b
	jp nz,01babh		;770d
	dec de			;7710
	out (04ch),a		;7711
	pop de			;7713
	ld hl,(l4c98h)		;7714
	inc de			;7717
	ex af,af'		;7718
	inc b			;7719
	ld a,(de)		;771a
	cp 064h			;771b
	jp c,00a9ah		;771d
	xor d			;7720
	ld bc,0d432h		;7721
	ld c,h			;7724
	ld a,0beh		;7725
	ld (004d5h),a		;7727
	ld (0a0f4h),hl		;772a
	inc (hl)		;772d
	ld c,h			;772e
	scf			;772f
	push hl			;7730
	ld l,e			;7731
	add hl,de		;7732
	djnz l7762h		;7733
	djnz $+94		;7735
	inc c			;7737
	djnz l7751h		;7738
	ld a,r			;773a
	and l			;773c
	nop			;773d
	scf			;773e
	ret z			;773f
	ld bc,0029ah		;7740
	ld hl,0b4e1h		;7743
	ld (de),a		;7746
	push de			;7747
	inc hl			;7748
	sbc a,002h		;7749
	sub l			;774b
	adc a,h			;774c
	inc b			;774d
	adc a,d			;774e
	adc a,a			;774f
	inc e			;7750
l7751h:
	adc a,b			;7751
	rst 28h			;7752
	call nz,0bfcdh		;7753
	ld d,l			;7756
	and l			;7757
	rla			;7758
l7759h:
	djnz l77d5h		;7759
	ex (sp),hl		;775b
	sub 00dh		;775c
	inc l			;775e
	add hl,sp		;775f
	inc bc			;7760
	sbc a,d			;7761
l7762h:
	ld a,(078a3h)		;7762
	ld h,l			;7765
	rst 8			;7766
	ld e,l			;7767
	nop			;7768
	call sub_5ffeh		;7769
	call sub_5c0eh		;776c
	call 010beh		;776f
	ld e,e			;7772
	call 0026dh		;7773
	push de			;7776
	ld e,d			;7777
	call 01941h		;7778
	ld (bc),a		;777b
	ld sp,hl		;777c
	ld e,c			;777d
	call 0022ah		;777e
	ld bc,l5872h+1		;7781
	call sub_5813h		;7784
	ld a,(02091h)		;7787
	or a			;778a
	jp nz,l628eh		;778b
	ld e,l			;778e
	pop af			;778f
	add a,(hl)		;7790
	ld (bc),a		;7791
	jp z,05d72h		;7792
	adc a,(hl)		;7795
	ld de,075f7h		;7796
	push hl			;7799
	cp h			;779a
	inc e			;779b
l779ch:
	ld a,(hl)		;779c
	sub c			;779d
	call c,0c2e3h		;779e
	nop			;77a1
	add a,b			;77a2
	cp 069h			;77a3
	jp z,sub_5835h		;77a5
	cp 06ah			;77a8
	sub 004h		;77aa
	ld l,e			;77ac
	inc b			;77ad
	ld d,c			;77ae
	ld hl,0b1c5h		;77af
	dec e			;77b2
	ld b,l			;77b3
	pop bc			;77b4
	daa			;77b5
	add hl,bc		;77b6
	ld a,000h		;77b7
	ld (02106h),a		;77b9
	call c,0a926h		;77bc
	add a,l			;77bf
	ld b,030h		;77c0
l77c2h:
	and h			;77c2
	ret nz			;77c3
	djnz l77c2h		;77c4
	ld a,048h		;77c6
	ld (039a3h),a		;77c8
	sub e			;77cb
	add hl,bc		;77cc
	sub l			;77cd
	jp 04be8h		;77ce
	sbc a,e			;77d1
	add a,09bh		;77d2
	sbc a,a			;77d4
l77d5h:
	and d			;77d5
	sbc a,h			;77d6
	or a			;77d7
	ld b,l			;77d8
	sbc a,l			;77d9
	or d			;77da
	jp pe,0ca99h		;77db
	ld b,d			;77de
	sbc a,b			;77df
	ld e,(hl)		;77e0
	xor c			;77e1
	inc h			;77e2
	ld a,(098dah)		;77e3
	ld e,a			;77e6
	push af			;77e7
	jp nc,0856dh		;77e8
	ld e,b			;77eb
	dec e			;77ec
	cp h			;77ed
	dec c			;77ee
	add a,d			;77ef
	ld b,0b9h		;77f0
	ld e,(hl)		;77f2
	ld a,(l5872h)		;77f3
	and a			;77f6
	ld l,l			;77f7
	dec b			;77f8
	ld d,(hl)		;77f9
	ld d,d			;77fa
	ld h,09ah		;77fb
	jr l779ch		;77fd
	ld e,b			;77ff
	dec l			;7800
	ret			;7801
	ret z			;7802
	ld b,a			;7803
	adc a,e			;7804
	and h			;7805
	ld l,l			;7806
	and a			;7807
	adc a,a			;7808
	ld (hl),h		;7809
	jp nz,0c523h		;780a
	ld e,b			;780d
	sub 070h		;780e
	ld b,03eh		;7810
	inc d			;7812
	sub a			;7813
	push de			;7814
	ld b,c			;7815
	ld hl,l59aeh		;7816
	rst 10h			;7819
	adc a,d			;781a
	or d			;781b
	jr nc,l7877h		;781c
	sub 0d7h		;781e
	adc a,c			;7820
	inc b			;7821
	jp nc,01fdbh		;7822
	ld b,h			;7825
	rlca			;7826
	add a,a			;7827
	ld hl,0159fh		;7828
	dec c			;782b
	and e			;782c
	dec d			;782d
	ld c,l			;782e
	and e			;782f
	dec d			;7830
	pop af			;7831
	dec d			;7832
	ld c,(hl)		;7833
	and e			;7834
	dec d			;7835
	call z,01a15h		;7836
	ret nc			;7839
	dec d			;783a
	ret nc			;783b
	adc a,h			;783c
	dec d			;783d
	rlca			;783e
	ld e,c			;783f
	dec d			;7840
	ld c,(hl)		;7841
	ret nc			;7842
	dec d			;7843
	cp l			;7844
	dec d			;7845
	ld a,(de)		;7846
	pop bc			;7847
	dec d			;7848
	pop bc			;7849
	sbc a,e			;784a
	dec d			;784b
	dec e			;784c
	dec d			;784d
	rlca			;784e
	ld a,(de)		;784f
	ld hl,015dbh		;7850
	ld hl,0ea6ch		;7853
	dec b			;7856
	add a,(hl)		;7857
	ld d,h			;7858
	sub a			;7859
	ld b,(hl)		;785a
	add a,(hl)		;785b
	ld b,(hl)		;785c
	adc a,e			;785d
	ld c,e			;785e
	sub (hl)		;785f
	adc a,b			;7860
	ld e,d			;7861
	ret c			;7862
	cp 008h			;7863
	ld a,h			;7865
	ret nc			;7866
	ld a,013h		;7867
	adc a,e			;7869
	ret p			;786a
	pop af			;786b
	sub a			;786c
	ex af,af'		;786d
	add hl,bc		;786e
	or a			;786f
	inc hl			;7870
	ld l,c			;7871
	add hl,de		;7872
	ld b,b			;7873
	and c			;7874
	ld d,d			;7875
	push bc			;7876
l7877h:
	add a,l			;7877
	add hl,sp		;7878
	jp pe,08b5fh		;7879
	ld sp,01910h		;787c
	rst 8			;787f
	add a,d			;7880
	ld c,a			;7881
	push hl			;7882
	ld e,l			;7883
	ld a,0deh		;7884
	ld b,h			;7886
	or d			;7887
	ld (hl),e		;7888
	ld a,(bc)		;7889
	jp nz,03e1bh		;788a
	daa			;788d
	adc a,(hl)		;788e
	jr nc,l78cfh		;788f
	inc l			;7891
	jp z,0bd22h		;7892
	ret nz			;7895
	ret			;7896
	rst 38h			;7897
	nop			;7898
	ld (hl),00bh		;7899
	inc bc			;789b
	ld b,h			;789c
	nop			;789d
	ld d,b			;789e
	push bc			;789f
	ld b,h			;78a0
	ld a,(bc)		;78a1
	out (0c3h),a		;78a2
	inc b			;78a4
	ret nc			;78a5
	rst 28h			;78a6
	ld c,0d7h		;78a7
	dec e			;78a9
	sub a			;78aa
	sub d			;78ab
	dec e			;78ac
	xor a			;78ad
	ld c,085h		;78ae
	or e			;78b0
	or e			;78b1
	inc l			;78b2
	call 0f8b9h		;78b3
	dec sp			;78b6
	sub d			;78b7
	ld c,08ah		;78b8
	adc a,e			;78ba
	adc a,036h		;78bb
	jp nc,085a9h		;78bd
	add a,d			;78c0
	ret z			;78c1
	cp 004h			;78c2
	ret z			;78c4
l78c5h:
	add a,e			;78c5
	sub l			;78c6
	ret nz			;78c7
	call c,03f28h		;78c8
	dec bc			;78cb
	ret nz			;78cc
	ld c,038h		;78cd
l78cfh:
	ld e,0bah		;78cf
	ld (bc),a		;78d1
	xor 051h		;78d2
	ret			;78d4
	ld hl,(0cc9bh)		;78d5
	xor 0a0h		;78d8
	inc bc			;78da
	ld de,006d6h		;78db
	defb 0edh ;next byte illegal after ed	;78de
	ld bc,0ca52h		;78df
	ld h,c			;78e2
	ld e,d			;78e3
	ld de,00258h		;78e4
	rlca			;78e7
	adc a,b			;78e8
	ld h,a			;78e9
	rlca			;78ea
	inc l			;78eb
	ld bc,007c7h		;78ec
	ld l,l			;78ef
	rlca			;78f0
	ld c,b			;78f1
	ld a,b			;78f2
	rlca			;78f3
	ret z			;78f4
	nop			;78f5
	rst 0			;78f6
	rlca			;78f7
	ld a,(hl)		;78f8
	rlca			;78f9
	ld c,c			;78fa
	adc a,c			;78fb
	rlca			;78fc
	sub b			;78fd
	rla			;78fe
	xor (hl)		;78ff
	sub h			;7900
	rrca			;7901
l7902h:
	adc a,c			;7902
	xor e			;7903
	ld e,d			;7904
	jp 0d9dbh		;7905
	dec h			;7908
	dec b			;7909
	rrca			;790a
	ret z			;790b
	and (hl)		;790c
	dec b			;790d
	in a,(0cbh)		;790e
	ld d,0f0h		;7910
	ld l,h			;7912
	ld d,080h		;7913
	ld e,e			;7915
	adc a,h			;7916
	sub c			;7917
	dec de			;7918
	ld hl,0934ch		;7919
	ld d,h			;791c
	sbc a,0a6h		;791d
	djnz l7945h		;791f
	and h			;7921
	or a			;7922
	ld h,(hl)		;7923
	ld a,a			;7924
	jr nz,l7931h		;7925
	call c,02186h		;7927
	dec h			;792a
	or (hl)			;792b
	ld e,d			;792c
l792dh:
	sbc a,l			;792d
	ld e,e			;792e
	push bc			;792f
	dec b			;7930
l7931h:
	djnz l78c5h		;7931
	call m,0166dh		;7933
	xor e			;7936
	ld d,095h		;7937
	sub h			;7939
	sbc a,b			;793a
	adc a,l			;793b
	ret pe			;793c
l793dh:
	adc a,h			;793d
	inc hl			;793e
	jp (hl)			;793f
	jr z,l793dh		;7940
	jr l795ch		;7942
	nop			;7944
l7945h:
	inc e			;7945
	xor e			;7946
	or e			;7947
	ld c,05ch		;7948
	ld c,030h		;794a
	pop bc			;794c
	jp (hl)			;794d
	ld c,000h		;794e
	call sub_571ch		;7950
	and h			;7953
	ld b,b			;7954
	call nc,0b75ah		;7955
	jp z,066ffh		;7958
	ld e,d			;795b
l795ch:
	ld b,0eeh		;795c
	rst 10h			;795e
	call z,00545h		;795f
	cp 039h			;7962
	ld (de),a		;7964
	ld (hl),e		;7965
	ld b,l			;7966
	ld sp,hl		;7967
	ld (hl),l		;7968
	call nc,sub_71f2h	;7969
	inc e			;796c
	pop hl			;796d
	add hl,de		;796e
	ret			;796f
	ld e,e			;7970
	ld e,e			;7971
	ld (hl),d		;7972
	xor c			;7973
	dec d			;7974
	push de			;7975
	ret p			;7976
	ld e,(hl)		;7977
	inc bc			;7978
	or a			;7979
	jp z,089a8h		;797a
	jp z,l5b3ch		;797d
	xor d			;7980
	nop			;7981
	jp z,l5b44h		;7982
	ld c,06bh		;7985
	ld e,04ah		;7987
	jr nc,l792dh		;7989
	ex (sp),hl		;798b
	rlca			;798c
	ld b,b			;798d
	rlca			;798e
	and (hl)		;798f
	ld d,b			;7990
	rlca			;7991
	ret p			;7992
	cp c			;7993
	ld l,h			;7994
	jr nz,l799ah		;7995
	ld d,(hl)		;7997
	inc bc			;7998
	nop			;7999
l799ah:
	inc d			;799a
	nop			;799b
	ld (de),a		;799c
	adc a,l			;799d
	add a,(hl)		;799e
	sub 00eh		;799f
	ld e,d			;79a1
	ld c,039h		;79a2
	ld c,00eh		;79a4
	ret z			;79a6
	inc bc			;79a7
	sub d			;79a8
	jp (hl)			;79a9
	and l			;79aa
	ex de,hl		;79ab
	inc l			;79ac
	add a,a			;79ad
	ld a,a			;79ae
	jp z,05bb4h		;79af
	and l			;79b2
	adc a,c			;79b3
	ld e,e			;79b4
	add a,l			;79b5
	jp l5b6bh		;79b6
	sub h			;79b9
	or 005h			;79ba
	pop bc			;79bc
	xor l			;79bd
	ld (de),a		;79be
	ld (hl),l		;79bf
	ret po			;79c0
	ld (bc),a		;79c1
	out (075h),a		;79c2
	ld l,d			;79c4
	ld e,e			;79c5
	adc a,h			;79c6
	jp nc,09c04h		;79c7
	sub e			;79ca
	djnz $+18		;79cb
	jp z,006b0h		;79cd
	and b			;79d0
	ld e,020h		;79d1
	call c,03467h		;79d3
	ret			;79d6
	ld d,004h		;79d7
	ret			;79d9
	ld d,b			;79da
	call c,0f3bch		;79db
	jp p,0bd18h		;79de
	jp c,00418h		;79e1
	ld d,c			;79e4
	ld h,h			;79e5
	and h			;79e6
	ld de,l72e2h		;79e7
	ld a,047h		;79ea
	ld d,0c8h		;79ec
	and b			;79ee
	call 00503h		;79ef
	call 0830ch		;79f2
	ld c,e			;79f5
	sbc a,b			;79f6
	pop af			;79f7
	xor a			;79f8
	ld (hl),e		;79f9
	sbc a,b			;79fa
	xor b			;79fb
	and b			;79fc
	ret p			;79fd
	ld d,c			;79fe
	and d			;79ff
	dec a			;7a00
	ex de,hl		;7a01
	inc b			;7a02
	ld e,h			;7a03
	ld a,(l5c0bh)		;7a04
	ld b,031h		;7a07
	add a,h			;7a09
	ld b,00dh		;7a0a
	ld e,h			;7a0c
	inc a			;7a0d
	sbc a,l			;7a0e
	and h			;7a0f
	dec b			;7a10
	ret nz			;7a11
	xor c			;7a12
	jr nc,$+19		;7a13
	or c			;7a15
	ld c,e			;7a16
	add a,a			;7a17
	xor h			;7a18
l7a19h:
	dec de			;7a19
	ld b,e			;7a1a
	ld b,h			;7a1b
	dec bc			;7a1c
	add hl,de		;7a1d
	inc de			;7a1e
	pop bc			;7a1f
	dec bc			;7a20
	ld d,e			;7a21
	sbc a,h			;7a22
	ld b,0b2h		;7a23
	ld b,099h		;7a25
	inc c			;7a27
	ld e,h			;7a28
	ld a,h			;7a29
	inc b			;7a2a
	ld d,d			;7a2b
	call nc,0c0dch		;7a2c
	ld l,04ch		;7a2f
	ld e,l			;7a31
	inc bc			;7a32
	ld e,003h		;7a33
	ld h,0f7h		;7a35
	ld e,h			;7a37
	inc bc			;7a38
	rst 20h			;7a39
	inc bc			;7a3a
	ld hl,(039c0h)		;7a3b
	ld e,(hl)		;7a3e
	xor a			;7a3f
	xor (hl)		;7a40
	inc bc			;7a41
	dec sp			;7a42
	ld (bc),a		;7a43
	ret pe			;7a44
	inc b			;7a45
	rst 38h			;7a46
	rst 38h			;7a47
	call pe,0dfd6h		;7a48
	dec b			;7a4b
	ld de,0020fh		;7a4c
	ld e,003h		;7a4f
	add hl,sp		;7a51
	xor (hl)		;7a52
	adc a,(hl)		;7a53
	pop af			;7a54
	ld h,e			;7a55
	ld (bc),a		;7a56
	xor (hl)		;7a57
	inc b			;7a58
	or h			;7a59
	defb 0fdh,0a4h ;and iyh	;7a5a
	jr c,l7a19h		;7a5c
	adc a,e			;7a5e
	sbc a,l			;7a5f
	ret			;7a60
	ld (hl),e		;7a61
	or l			;7a62
	ret p			;7a63
	ld hl,l7c87h		;7a64
	ld e,h			;7a67
	ret nz			;7a68
	ld b,a			;7a69
	inc b			;7a6a
	cp 080h			;7a6b
	jp nz,l5cdfh		;7a6d
	cp h			;7a70
	and d			;7a71
	sbc a,(hl)		;7a72
	sbc a,032h		;7a73
	ld d,092h		;7a75
	xor d			;7a77
	xor d			;7a78
	jp po,03290h		;7a79
	inc bc			;7a7c
	jp c,02607h		;7a7d
	inc bc			;7a80
	ld d,0feh		;7a81
	rrca			;7a83
	ret nz			;7a84
	jp (hl)			;7a85
	sub e			;7a86
	dec de			;7a87
	ret			;7a88
	ld (hl),0e2h		;7a89
	inc (hl)		;7a8b
	ld d,05dh		;7a8c
	call nc,036f2h		;7a8e
	ld (hl),h		;7a91
	add a,b			;7a92
	ld (hl),03dh		;7a93
	call nc,0ec36h		;7a95
	ld (hl),003h		;7a98
	or 036h			;7a9a
	ld (hl),h		;7a9c
	ld l,h			;7a9d
	ld (hl),04dh		;7a9e
	sbc a,a			;7aa0
	ld (hl),002h		;7aa1
	ld (hl),006h		;7aa3
	sub (hl)		;7aa5
	out (0d5h),a		;7aa6
	sbc a,e			;7aa8
	sub (hl)		;7aa9
	ld d,h			;7aaa
	dec sp			;7aab
	inc bc			;7aac
	or l			;7aad
	and l			;7aae
	dec c			;7aaf
	or h			;7ab0
	cp d			;7ab1
	ex (sp),hl		;7ab2
	sbc a,0b4h		;7ab3
	ld (hl),d		;7ab5
	inc h			;7ab6
l7ab7h:
	ex (sp),hl		;7ab7
	ld b,b			;7ab8
	ld (hl),b		;7ab9
	jp z,05d83h		;7aba
	daa			;7abd
	cp 068h			;7abe
	ld d,h			;7ac0
	ld bc,0648ah		;7ac1
	djnz l7ab7h		;7ac4
	sub d			;7ac6
	cp a			;7ac7
	ld a,(bc)		;7ac8
	and h			;7ac9
	ld b,h			;7aca
	ei			;7acb
	sub d			;7acc
	ld a,(bc)		;7acd
	sbc a,e			;7ace
	cp d			;7acf
	adc a,h			;7ad0
	ret po			;7ad1
	rst 38h			;7ad2
	add a,03fh		;7ad3
	inc bc			;7ad5
	dec h			;7ad6
	exx			;7ad7
	cp (hl)			;7ad8
	dec de			;7ad9
	and d			;7ada
	adc a,(hl)		;7adb
	halt			;7adc
	or c			;7add
	adc a,e			;7ade
	ld hl,l5dbbh		;7adf
	adc a,h			;7ae2
	ld d,(hl)		;7ae3
	jp z,08105h		;7ae4
	ld a,(0c104h)		;7ae7
	and 0fdh		;7aea
	ld (l4e04h),a		;7aec
	xor a			;7aef
	jp nc,l50d9h		;7af0
	rst 18h			;7af3
	ld l,0cbh		;7af4
	dec b			;7af6
	rst 18h			;7af7
	jp po,086eeh		;7af8
	ld b,b			;7afb
	ld c,029h		;7afc
	inc h			;7afe
	xor 09dh		;7aff
	or b			;7b01
	ld h,b			;7b02
	rst 30h			;7b03
	ld e,l			;7b04
	call z,sub_46a7h	;7b05
	ld b,a			;7b08
	sub (hl)		;7b09
	add a,h			;7b0a
	cp 063h			;7b0b
	jp c,l72f7h		;7b0d
	ld a,b			;7b10
	ld e,e			;7b11
	jp nc,0a104h		;7b12
	add a,0f1h		;7b15
	and b			;7b17
	ld a,042h		;7b18
	ld (0ae4ch),a		;7b1a
	inc b			;7b1d
	ld a,(de)		;7b1e
	rst 30h			;7b1f
	ld e,05eh		;7b20
	sbc a,(hl)		;7b22
	add hl,hl		;7b23
	ld e,(hl)		;7b24
	xor b			;7b25
	ld e,b			;7b26
	jr l7b33h		;7b27
	ld a,067h		;7b29
	ld hl,(00f14h)		;7b2b
l7b2eh:
	ld c,a			;7b2e
	ld (de),a		;7b2f
	ld a,(bc)		;7b30
	ld a,(bc)		;7b31
	ret po			;7b32
l7b33h:
	inc d			;7b33
	ld e,(hl)		;7b34
	add a,d			;7b35
	or (hl)			;7b36
	dec b			;7b37
	sbc a,h			;7b38
	call pe,09080h		;7b39
	inc bc			;7b3c
	cp 00ah			;7b3d
	ret nz			;7b3f
	sub h			;7b40
	xor h			;7b41
	ld l,a			;7b42
	sbc a,e			;7b43
	cp c			;7b44
	ld a,(00f1ch)		;7b45
	jp (hl)			;7b48
	inc e			;7b49
	dec a			;7b4a
	inc e			;7b4b
	sub c			;7b4c
	sub 0b6h		;7b4d
	dec b			;7b4f
	ei			;7b50
	ret p			;7b51
	ld a,053h		;7b52
	rla			;7b54
	call m,00482h		;7b55
	call m,sub_519ah	;7b58
	ld a,b			;7b5b
	jp p,03855h		;7b5c
	sbc a,e			;7b5f
	ld h,b			;7b60
	adc a,a			;7b61
	add a,b			;7b62
	and b			;7b63
	ret			;7b64
	ld (hl),a		;7b65
	ld b,(hl)		;7b66
	rlca			;7b67
	jp nz,0f802h		;7b68
	nop			;7b6b
	ld a,b			;7b6c
	inc bc			;7b6d
	ld e,h			;7b6e
	ret nc			;7b6f
	ld sp,0d008h		;7b70
	inc e			;7b73
	or c			;7b74
	call c,0520eh		;7b75
	ld c,088h		;7b78
	ld a,(de)		;7b7a
	rst 18h			;7b7b
	jp (hl)			;7b7c
	sbc a,b			;7b7d
	ld l,h			;7b7e
	sub (hl)		;7b7f
	inc bc			;7b80
	ld (hl),h		;7b81
	jp po,03a06h		;7b82
	ld d,h			;7b85
	ld (bc),a		;7b86
	add a,012h		;7b87
	cp 0c0h			;7b89
	jp nz,l40d3h		;7b8b
	out (060h),a		;7b8e
	ld (063ach),a		;7b90
	xor b			;7b93
	and b			;7b94
	jp po,0a0e6h		;7b95
	cp 006h			;7b98
	jp c,l4ef5h		;7b9a
	ld e,(hl)		;7b9d
	add a,h			;7b9e
	adc a,c			;7b9f
	sub (hl)		;7ba0
	ld e,(hl)		;7ba1
	xor a			;7ba2
	add a,e			;7ba3
	call nz,0063ah		;7ba4
	sub 023h		;7ba7
	ld de,00432h		;7ba9
	ld a,(l4397h)		;7bac
	ld (0fe03h),hl		;7baf
	rst 38h			;7bb2
	or d			;7bb3
	ld h,077h		;7bb4
	ld c,075h		;7bb6
	jp 0990ch		;7bb8
	dec l			;7bbb
	adc a,015h		;7bbc
	ex af,af'		;7bbe
	dec b			;7bbf
	ld l,(hl)		;7bc0
	ld e,c			;7bc1
	call m,0c951h		;7bc2
	sub l			;7bc5
	ld e,e			;7bc6
	ld de,069a7h		;7bc7
	sbc a,b			;7bca
	ld l,c			;7bcb
	and h			;7bcc
	add hl,sp		;7bcd
	di			;7bce
	add hl,de		;7bcf
	adc a,b			;7bd0
	djnz $-116		;7bd1
	inc bc			;7bd3
	ld d,b			;7bd4
	sub a			;7bd5
	ret pe			;7bd6
	dec d			;7bd7
	nop			;7bd8
	and c			;7bd9
	ld a,b			;7bda
	ld a,c			;7bdb
	ex af,af'		;7bdc
	ld a,c			;7bdd
	dec b			;7bde
	ld a,b			;7bdf
	inc b			;7be0
	ld d,a			;7be1
	or l			;7be2
	dec sp			;7be3
	ld (bc),a		;7be4
	inc bc			;7be5
	rst 0			;7be6
	inc b			;7be7
	daa			;7be8
	ld bc,00302h		;7be9
	dec hl			;7bec
	ld (bc),a		;7bed
	ld bc,l7902h		;7bee
	inc b			;7bf1
	ret p			;7bf2
	ex af,af'		;7bf3
	sbc a,h			;7bf4
	nop			;7bf5
	inc bc			;7bf6
	inc bc			;7bf7
	xor l			;7bf8
	inc bc			;7bf9
	ld bc,0e702h		;7bfa
	inc b			;7bfd
	ex af,af'		;7bfe
	jp nz,l7200h		;7bff
	inc b			;7c02
	inc bc			;7c03
	inc b			;7c04
	or a			;7c05
	ld bc,00402h		;7c06
	sbc a,a			;7c09
	ex af,af'		;7c0a
	add hl,bc		;7c0b
	nop			;7c0c
	dec b			;7c0d
	inc bc			;7c0e
	jp z,00105h		;7c0f
l7c12h:
	sbc a,002h		;7c12
	inc b			;7c14
	ld a,h			;7c15
	ex af,af'		;7c16
	ld hl,0ff00h		;7c17
	ld a,(0a8d6h)		;7c1a
	ld e,d			;7c1d
	rst 10h			;7c1e
l7c1fh:
	ld b,l			;7c1f
	ld d,a			;7c20
	rst 18h			;7c21
	inc bc			;7c22
	ld d,h			;7c23
	out (05fh),a		;7c24
	dec d			;7c26
	ld hl,l5f43h		;7c27
l7c2ah:
	call nc,08d48h		;7c2a
	jp nz,01c15h		;7c2d
	ld h,b			;7c30
	xor a			;7c31
	sbc a,b			;7c32
	and b			;7c33
	ld (05f42h),a		;7c34
	ret			;7c37
	ld hl,03d00h		;7c38
	ld h,b			;7c3b
	ld b,096h		;7c3c
	ld c,099h		;7c3e
l7c40h:
	ld de,0d004h		;7c40
	defb 0edh ;next byte illegal after ed	;7c43
	sbc a,c			;7c44
	sbc hl,sp		;7c45
	and e			;7c47
	ld bc,000d3h		;7c48
	sbc a,b			;7c4b
	add hl,de		;7c4c
	djnz $-11		;7c4d
	ret			;7c4f
	ei			;7c50
	ld d,0ebh		;7c51
	nop			;7c53
	ld (0328eh),a		;7c54
	ld (0fc5ah),a		;7c57
	ld (0d1eeh),a		;7c5a
	rlca			;7c5d
	and l			;7c5e
	call m,00733h		;7c5f
	ret nz			;7c62
	push bc			;7c63
	call m,sub_682ah	;7c64
	jp p,0ba07h		;7c67
	defb 0fdh,01eh,068h ;illegal sequence	;7c6a
	push af			;7c6d
	rlca			;7c6e
	or l			;7c6f
	ld l,(iy+072h)		;7c70
	ld sp,hl		;7c73
	rrca			;7c74
	ld a,068h		;7c75
	defb 0fdh,007h,0aah ;illegal sequence	;7c77
	defb 0fdh,03fh,0e0h ;illegal sequence	;7c7a
	rlca			;7c7d
	ld e,h			;7c7e
	cp 038h			;7c7f
	ld h,(hl)		;7c81
	nop			;7c82
	rla			;7c83
	inc e			;7c84
	cp 050h			;7c85
l7c87h:
	inc b			;7c87
	rrca			;7c88
	sbc a,h			;7c89
	ld hl,(00f07h)		;7c8a
	pop hl			;7c8d
	exx			;7c8e
	ld b,a			;7c8f
	ret nz			;7c90
	rst 38h			;7c91
	ld a,(bc)		;7c92
	rrca			;7c93
	ret nc			;7c94
	rlca			;7c95
	call z,00bffh		;7c96
	rrca			;7c99
	ret po			;7c9a
	ld e,a			;7c9b
	rst 38h			;7c9c
	dec h			;7c9d
	ld l,(hl)		;7c9e
	inc de			;7c9f
	rlca			;7ca0
	call z,032c7h		;7ca1
	ld d,077h		;7ca4
	inc bc			;7ca6
	rst 38h			;7ca7
	ld c,e			;7ca8
	ld a,(de)		;7ca9
	ld e,a			;7caa
	add a,c			;7cab
	rst 38h			;7cac
	ld h,h			;7cad
	dec e			;7cae
	rlca			;7caf
	and c			;7cb0
	cp h			;7cb1
	cp 048h			;7cb2
	ld hl,0c00fh		;7cb4
	cp 028h			;7cb7
	dec h			;7cb9
	ret po			;7cba
	rra			;7cbb
	cp 064h			;7cbc
	ld (hl),c		;7cbe
	jr z,l7d08h		;7cbf
	xor e			;7cc1
	ld d,e			;7cc2
	inc l			;7cc3
	rlca			;7cc4
	ld b,e			;7cc5
	ld d,l			;7cc6
	cp 00bh			;7cc7
l7cc9h:
	inc l			;7cc9
	ccf			;7cca
	add a,c			;7ccb
	ld b,(iy+030h)		;7ccc
	rlca			;7ccf
	and c			;7cd0
	ld e,e			;7cd1
	defb 0fdh,016h,033h ;illegal sequence	;7cd2
	sub a			;7cd5
	inc e			;7cd6
	sbc a,h			;7cd7
	ld h,(hl)		;7cd8
	scf			;7cd9
	scf			;7cda
	ld b,h			;7cdb
	rst 0			;7cdc
	ld a,(0cf8eh)		;7cdd
	ld c,b			;7ce0
	ld c,b			;7ce1
	ld a,0c7h		;7ce2
	push hl			;7ce4
	ld c,c			;7ce5
	rlca			;7ce6
	ret nz			;7ce7
	xor h			;7ce8
	ei			;7ce9
	ld e,h			;7cea
	ld (hl),c		;7ceb
	ld b,e			;7cec
	cpl			;7ced
	sbc a,l			;7cee
	xor b			;7cef
	pop hl			;7cf0
	ld bc,0e6f3h		;7cf1
	jr nz,$-52		;7cf4
	ld (hl),061h		;7cf6
	ld a,0e4h		;7cf8
	ld (hl),c		;7cfa
	ld hl,(0b561h)		;7cfb
	ld a,b			;7cfe
	add a,054h		;7cff
	ex af,af'		;7d01
	rst 30h			;7d02
	rra			;7d03
	inc b			;7d04
	ld (l612bh),a		;7d05
l7d08h:
	ld hl,0a33ah		;7d08
l7d0bh:
	adc a,c			;7d0b
	or h			;7d0c
	and e			;7d0d
l7d0eh:
	jr z,l7cc9h		;7d0e
	or b			;7d10
	pop af			;7d11
	jr nz,$+9		;7d12
	ld c,b			;7d14
	ld a,(086b4h)		;7d15
	ld (bc),a		;7d18
	jp m,l6159h		;7d19
	xor a			;7d1c
	inc hl			;7d1d
	add a,(hl)		;7d1e
	ld a,b			;7d1f
	ld hl,l62d2h		;7d20
	dec hl			;7d23
	ld l,a			;7d24
	ld (hl),a		;7d25
	ld a,(00f21h)		;7d26
	add a,(hl)		;7d29
	ld e,a			;7d2a
	inc hl			;7d2b
	call 03a10h		;7d2c
	inc (hl)		;7d2f
	or d			;7d30
	ld d,a			;7d31
	ld a,(l5440h)		;7d32
	ld (hl),01eh		;7d35
	srl a			;7d37
	add a,d			;7d39
	ld d,a			;7d3a
	nop			;7d3b
	ld a,d			;7d3c
	rlca			;7d3d
	rlca			;7d3e
	and 003h		;7d3f
	ld (hl),a		;7d41
	di			;7d42
	out (010h),a		;7d43
	sbc a,c			;7d45
	ld a,08eh		;7d46
	inc bc			;7d48
	out (c),e		;7d49
	ld a,d			;7d4b
	or b			;7d4c
	rst 18h			;7d4d
	ld d,a			;7d4e
	out (098h),a		;7d4f
	ld b,d			;7d51
	jp p,0008ah		;7d52
	jr z,l7d5eh		;7d55
	in a,(098h)		;7d57
	cp 099h			;7d59
	jp z,0ac00h		;7d5b
l7d5eh:
	ld h,c			;7d5e
	ei			;7d5f
	ld a,0fbh		;7d60
	add a,b			;7d62
	ld b,a			;7d63
	xor a			;7d64
	ld d,077h		;7d65
	inc hl			;7d67
	inc hl			;7d68
	ld (bc),a		;7d69
	inc b			;7d6a
	ld (bc),a		;7d6b
	djnz l7d0eh		;7d6c
	ret			;7d6e
	set 6,d			;7d6f
	defb 0fdh,055h ;ld d,iyl	;7d71
	ld (hl),e		;7d73
	ld (bc),a		;7d74
	inc h			;7d75
	ld (hl),d		;7d76
	ld (bc),a		;7d77
	dec c			;7d78
	ld (bc),a		;7d79
	ei			;7d7a
	jr l7d89h		;7d7b
	djnz l7d0bh		;7d7d
	or c			;7d7f
	ld sp,0bc45h		;7d80
	dec b			;7d83
	ld a,(l624bh)		;7d84
	rst 0			;7d87
	ld d,h			;7d88
l7d89h:
	inc bc			;7d89
	rlca			;7d8a
	ld c,h			;7d8b
	ld h,b			;7d8c
	ld h,d			;7d8d
	ld b,021h		;7d8e
	ld c,l			;7d90
	ld h,d			;7d91
	ld c,011h		;7d92
	ld a,l			;7d94
	ld h,d			;7d95
	ld b,0a2h		;7d96
l7d98h:
	add a,b			;7d98
	jr nz,$+100		;7d99
	inc hl			;7d9b
	inc de			;7d9c
	djnz l7d98h		;7d9d
	inc h			;7d9f
	ld hl,00e7dh		;7da0
	xor l			;7da3
	ld c,010h		;7da4
	ld (0877eh),a		;7da6
	nop			;7da9
	ld b,a			;7daa
	ex af,af'		;7dab
	ld c,(hl)		;7dac
	add a,c			;7dad
	dec hl			;7dae
	ld c,(hl)		;7daf
	dec b			;7db0
	ld (de),a		;7db1
	inc de			;7db2
	ld (01279h),hl		;7db3
	dec de			;7db6
	call pe,01821h		;7db7
	ld d,0cdh		;7dba
	jp (hl)			;7dbc
	ld (bc),a		;7dbd
	jp z,0c32dh		;7dbe
	jp z,0c315h		;7dc1
	sbc a,032h		;7dc4
	ld a,(bc)		;7dc6
	dec b			;7dc7
	xor l			;7dc8
	jp p,03152h		;7dc9
	ld b,050h		;7dcc
	dec (hl)		;7dce
	xor a			;7dcf
	ld (hl),e		;7dd0
	nop			;7dd1
	defb 0fdh,0c9h,01ah ;illegal sequence	;7dd2
	cp (hl)			;7dd5
	ret z			;7dd6
	inc a			;7dd7
	ld (de),a		;7dd8
	ld a,e			;7dd9
	ret			;7dda
	ld h,b			;7ddb
	ld b,l			;7ddc
l7dddh:
	dec de			;7ddd
	ld a,(hl)		;7dde
	dec a			;7ddf
	and (hl)		;7de0
	inc b			;7de1
	jr nz,l7de5h		;7de2
	sbc a,h			;7de4
l7de5h:
	ld h,b			;7de5
	djnz l7dddh		;7de6
	call 0e238h		;7de8
	ld h,c			;7deb
	jr c,l7e43h		;7dec
	ret			;7dee
	sub c			;7def
	call po,0f059h		;7df0
	ld c,e			;7df3
	nop			;7df4
	ld (00006h),a		;7df5
	dec b			;7df8
	ld d,l			;7df9
	inc bc			;7dfa
l7dfbh:
	jp po,l52c5h		;7dfb
	nop			;7dfe
	xor c			;7dff
	and c			;7e00
	nop			;7e01
	rlca			;7e02
l7e03h:
	inc b			;7e03
	add a,e			;7e04
	ld l,h			;7e05
l7e06h:
	ld (0f201h),hl		;7e06
	xor e			;7e09
	nop			;7e0a
	or b			;7e0b
	ld l,d			;7e0c
	ld (01407h),hl		;7e0d
sub_7e10h:
	ld a,a			;7e10
	nop			;7e11
	nop			;7e12
	ld (l4421h),hl		;7e13
	call m,0c0ebh		;7e16
	nop			;7e19
	ld c,a			;7e1a
	ld bc,0000ch		;7e1b
	ldir			;7e1e
	ld a,0feh		;7e20
	cp c			;7e22
	cp d			;7e23
	ld d,c			;7e24
	cp (hl)			;7e25
	ld d,c			;7e26
	ex af,af'		;7e27
	ld h,e			;7e28
	djnz l7e06h		;7e29
	ret			;7e2b
	inc e			;7e2c
	call 01cc9h		;7e2d
	or l			;7e30
	call po,06032h		;7e31
	sub a			;7e34
	cp b			;7e35
	pop hl			;7e36
	jr c,l7dfbh		;7e37
	rla			;7e39
	ld (0c23ch),a		;7e3a
	jp c,00c90h		;7e3d
	jp l4fcch		;7e40
l7e43h:
	dec b			;7e43
	ld de,00006h		;7e44
	add hl,de		;7e47
	ld e,(hl)		;7e48
	adc a,d			;7e49
	add a,c			;7e4a
	push hl			;7e4b
	ld hl,06322h		;7e4c
	rlca			;7e4f
	ld c,h			;7e50
	or h			;7e51
	pop hl			;7e52
	nop			;7e53
	push de			;7e54
	ret			;7e55
	ld c,(hl)		;7e56
	ld h,e			;7e57
	sub (hl)		;7e58
	ld h,e			;7e59
	and d			;7e5a
	ld h,e			;7e5b
	nop			;7e5c
	xor (hl)		;7e5d
	ld h,e			;7e5e
	ld c,c			;7e5f
	ld h,h			;7e60
	jp (hl)			;7e61
	ld h,h			;7e62
	ld b,07fh		;7e63
	nop			;7e65
	jp l6335h		;7e66
	ld b,03fh		;7e69
	push hl			;7e6b
	ld a,(hl)		;7e6c
	add a,000h		;7e6d
	ld (bc),a		;7e6f
	and b			;7e70
	ld (hl),a		;7e71
	ld h,000h		;7e72
	ld l,a			;7e74
	add hl,de		;7e75
	ld b,(hl)		;7e76
	ex af,af'		;7e77
	inc hl			;7e78
	ld a,(hl)		;7e79
	pop hl			;7e7a
	dec hl			;7e7b
	nop			;7e7c
	add a,(hl)		;7e7d
	ld (hl),a		;7e7e
	nop			;7e7f
	dec hl			;7e80
	ld a,(hl)		;7e81
	add a,b			;7e82
	ld (hl),a		;7e83
	ret			;7e84
	ret			;7e85
	dec hl			;7e86
	ld b,(hl)		;7e87
	xor h			;7e88
	rlca			;7e89
	ld a,(de)		;7e8a
	cp (hl)			;7e8b
	ex af,af'		;7e8c
	ld (hl),a		;7e8d
	add a,b			;7e8e
	ld b,b			;7e8f
	halt			;7e90
	ld h,e			;7e91
	call po,04ca6h		;7e92
	add hl,de		;7e95
	or 05eh			;7e96
	out (020h),a		;7e98
	ld a,(hl)		;7e9a
	add a,e			;7e9b
	ld hl,08200h		;7e9c
	ld (hl),a		;7e9f
	cp 0f0h			;7ea0
	ret nz			;7ea2
	inc hl			;7ea3
	ld (bc),a		;7ea4
	ld (hl),002h		;7ea5
	dec hl			;7ea7
	ret			;7ea8
	ld bc,001ffh		;7ea9
	defb 0edh ;next byte illegal after ed	;7eac
	jp (hl)			;7ead
	call c,00907h		;7eae
	sub e			;7eb1
	sbc a,d			;7eb2
	rlca			;7eb3
	ld (hl),c		;7eb4
	sbc a,l			;7eb5
	ld a,c			;7eb6
	dec b			;7eb7
	ex af,af'		;7eb8
	nop			;7eb9
	xor a			;7eba
	ld de,0a505h		;7ebb
	add a,d			;7ebe
	ld d,d			;7ebf
	dec (hl)		;7ec0
	dec (hl)		;7ec1
	dec hl			;7ec2
	ld (bc),a		;7ec3
	ld a,b			;7ec4
	ret			;7ec5
	dec bc			;7ec6
	dec c			;7ec7
	inc (hl)		;7ec8
	inc (hl)		;7ec9
	ret			;7eca
	ld c,c			;7ecb
	ret			;7ecc
	sbc a,l			;7ecd
	ld bc,0084bh		;7ece
l7ed1h:
	jp nz,l63c5h		;7ed1
	ld l,b			;7ed4
	ex af,af'		;7ed5
	cp 002h			;7ed6
	and e			;7ed8
	jp nz,l63c4h		;7ed9
	ld a,07bh		;7edc
	ld c,0a4h		;7ede
	inc e			;7ee0
	defb 0fdh,06dh ;ld iyl,iyl	;7ee1
	rst 38h			;7ee3
	ld bc,00540h		;7ee4
	in a,(001h)		;7ee7
	dec b			;7ee9
	jp 0af64h		;7eea
	dec b			;7eed
	ld c,003h		;7eee
	sbc a,(hl)		;7ef0
	cp 0fch			;7ef1
	rst 10h			;7ef3
	rlca			;7ef4
	ld e,0fdh		;7ef5
	adc a,(hl)		;7ef7
	cp 005h			;7ef8
	ld a,a			;7efa
	add a,a			;7efb
	ld a,c			;7efc
	rlca			;7efd
	rst 20h			;7efe
l7effh:
	add hl,bc		;7eff
	rlca			;7f00
	rst 8			;7f01
	dec hl			;7f02
	ld (hl),a		;7f03
	dec b			;7f04
	inc bc			;7f05
	sub e			;7f06
	cp 0feh			;7f07
	ld (bc),a		;7f09
	ld (hl),e		;7f0a
	inc bc			;7f0b
	nop			;7f0c
	ex af,af'		;7f0d
	rst 38h			;7f0e
	defb 0fdh,09ah,0f1h ;illegal sequence	;7f0f
	inc hl			;7f12
	ld h,b			;7f13
	ld h,h			;7f14
	sbc a,d			;7f15
	sub d			;7f16
	ld e,a			;7f17
	ld h,h			;7f18
	sbc a,d			;7f19
	ld (080eah),a		;7f1a
	ld de,l63c9h		;7f1d
	call 02e19h		;7f20
	ld h,e			;7f23
	ret			;7f24
	inc l			;7f25
	jr c,l7effh		;7f26
	ld a,05eh		;7f28
	dec b			;7f2a
	ld e,063h		;7f2b
	ld l,a			;7f2d
	nop			;7f2e
	inc bc			;7f2f
	jr l7ed1h		;7f30
	jp pe,039a7h		;7f32
	ld b,a			;7f35
	ld bc,01a9fh		;7f36
	dec b			;7f39
	ld bc,00deah		;7f3a
	out (03ch),a		;7f3d
	ld a,h			;7f3f
	rlca			;7f40
	ld (hl),a		;7f41
	dec hl			;7f42
	dec b			;7f43
	ld a,c			;7f44
	inc bc			;7f45
	ld e,e			;7f46
	ld (bc),a		;7f47
	inc bc			;7f48
	or e			;7f49
	ld h,l			;7f4a
	add hl,bc		;7f4b
	rlca			;7f4c
	add hl,bc		;7f4d
	sub c			;7f4e
	sbc a,a			;7f4f
	call po,sub_4700h	;7f50
	ld h,l			;7f53
	sbc a,a			;7f54
	jr z,$+1		;7f55
	sbc a,a			;7f57
	ret pe			;7f58
	ld l,c			;7f59
	ld h,h			;7f5a
	adc a,l			;7f5b
	sbc a,a			;7f5c
	djnz l7f99h		;7f5d
	ld d,a			;7f5f
	pop bc			;7f60
	dec h			;7f61
	jp nc,l6536h		;7f62
	pop hl			;7f65
	ex af,af'		;7f66
	ld (bc),a		;7f67
	ex af,af'		;7f68
	in a,(003h)		;7f69
	ex af,af'		;7f6b
	or a			;7f6c
	inc b			;7f6d
	ex af,af'		;7f6e
	ld l,l			;7f6f
	dec b			;7f70
	ex af,af'		;7f71
	ld a,h			;7f72
	ld a,(hl)		;7f73
	out (0c3h),a		;7f74
	ld b,d			;7f76
	dec hl			;7f77
	inc b			;7f78
	rst 0			;7f79
	jp 0ae23h		;7f7a
	pop de			;7f7d
	ret			;7f7e
	jp m,01550h		;7f7f
	nop			;7f82
	ld e,h			;7f83
	ld (hl),c		;7f84
	ld h,e			;7f85
	adc a,(hl)		;7f86
	nop			;7f87
	ld h,l			;7f88
	xor e			;7f89
	add a,a			;7f8a
	ld e,h			;7f8b
	push bc			;7f8c
	rrca			;7f8d
	scf			;7f8e
	ld l,e			;7f8f
	sbc a,(hl)		;7f90
	dec d			;7f91
	defb 0fdh,079h,00fh ;illegal sequence	;7f92
	ld sp,00f73h		;7f95
	inc b			;7f98
l7f99h:
	rrca			;7f99
	jp po,0274bh		;7f9a
	ld a,e			;7f9d
	jr z,l7fa6h		;7f9e
	ld b,00fh		;7fa0
	or e			;7fa2
	ex af,af'		;7fa3
	rrca			;7fa4
	exx			;7fa5
l7fa6h:
	ld a,(bc)		;7fa6
	rrca			;7fa7
	in a,(054h)		;7fa8
	nop			;7faa
	rst 30h			;7fab
	pop bc			;7fac
	ld d,(hl)		;7fad
	ld e,b			;7fae
	ld e,d			;7faf
	ld e,h			;7fb0
	ld e,(hl)		;7fb1
	rlca			;7fb2
	add a,b			;7fb3
	ld c,d			;7fb4
	ld c,h			;7fb5
	ld c,(hl)		;7fb6
	ld d,b			;7fb7
	ld d,d			;7fb8
	and d			;7fb9
	ld b,099h		;7fba
	nop			;7fbc
	inc b			;7fbd
	ld b,008h		;7fbe
	ld a,(bc)		;7fc0
	inc h			;7fc1
	ld h,00ch		;7fc2
	ld c,00dh		;7fc4
	djnz $+20		;7fc6
	inc d			;7fc8
	ld d,08fh		;7fc9
	nop			;7fcb
	jr l7fe8h		;7fcc
	inc e			;7fce
	ld e,020h		;7fcf
	ld (03c60h),hl		;7fd1
	jr nz,l7ffeh		;7fd4
	ld hl,(05f2ch)		;7fd6
	ld l,005h		;7fd9
	nop			;7fdb
	rst 38h			;7fdc
	ret p			;7fdd
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
l7fe8h:
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
l7ffeh:
	rst 38h			;7ffe
	rst 38h			;7fff
