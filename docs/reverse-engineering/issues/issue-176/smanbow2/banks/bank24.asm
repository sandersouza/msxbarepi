; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank24.asm /tmp/smanbow2_bank_24.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
	ld h,d			;4003
	ld l,a			;4004
	ld (hl),a		;4005
	jr nz,l403ah		;4006
	jr nz,$+47		;4008
	jr nz,l4058h		;400a
	ld h,l			;400c
	halt			;400d
	ld h,l			;400e
	ld l,h			;400f
	jr nz,l4048h		;4010
	jr nz,$+47		;4012
	jr nz,l4062h		;4014
	ld l,c			;4016
	halt			;4017
	ld l,c			;4018
	ld l,(hl)		;4019
	ld h,a			;401a
	jr nz,l406dh		;401b
	ld l,h			;401d
	ld h,c			;401e
	ld l,(hl)		;401f
	ld h,l			;4020
	ld (hl),h		;4021
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
	jr nz,$+34		;4038
l403ah:
	jr nz,l405ch		;403a
	jr nz,l405eh		;403c
	jr nz,l4060h		;403e
	jr nz,l4062h		;4040
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
	rra			;404e
	nop			;404f
l4050h:
	nop			;4050
	nop			;4051
l4052h:
	ld bc,00302h		;4052
	inc b			;4055
l4056h:
	dec b			;4056
	nop			;4057
l4058h:
	ld bc,00302h		;4058
	inc b			;405b
l405ch:
	ld b,007h		;405c
l405eh:
	ex af,af'		;405e
	add hl,bc		;405f
l4060h:
	ld a,(bc)		;4060
	dec bc			;4061
l4062h:
	inc c			;4062
	dec c			;4063
	rlca			;4064
	ex af,af'		;4065
	add hl,bc		;4066
	ld a,(bc)		;4067
	dec bc			;4068
	ld c,00fh		;4069
	djnz l407eh		;406b
l406dh:
	ld (de),a		;406d
	inc de			;406e
	inc d			;406f
	dec d			;4070
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
l407eh:
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
l4129h:
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
	inc d			;4151
	rrca			;4152
	rrca			;4153
	rrca			;4154
	rrca			;4155
	rrca			;4156
	dec de			;4157
	jr l4172h		;4158
	rla			;415a
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
	djnz l41d1h		;41c0
	ld l,008h		;41c2
	ld h,c			;41c4
	nop			;41c5
	ld h,d			;41c6
	rla			;41c7
	inc l			;41c8
	rrca			;41c9
	ld (bc),a		;41ca
	ld d,06ch		;41cb
	rlca			;41cd
	ld l,h			;41ce
	rlca			;41cf
	nop			;41d0
l41d1h:
	nop			;41d1
	nop			;41d2
	nop			;41d3
	nop			;41d4
	nop			;41d5
	nop			;41d6
	add hl,de		;41d7
	rrca			;41d8
	rrca			;41d9
	daa			;41da
	ex af,af'		;41db
	nop			;41dc
	nop			;41dd
	ld l,c			;41de
	ld bc,00463h		;41df
	add hl,bc		;41e2
	ld d,06ch		;41e3
	rlca			;41e5
	ld l,h			;41e6
	rlca			;41e7
	nop			;41e8
	nop			;41e9
	inc l			;41ea
	add hl,bc		;41eb
	nop			;41ec
	nop			;41ed
	nop			;41ee
	add hl,de		;41ef
	ld c,00fh		;41f0
	cpl			;41f2
	ex af,af'		;41f3
	nop			;41f4
	nop			;41f5
	nop			;41f6
	nop			;41f7
	ld l,00fh		;41f8
	ld bc,l6c16h		;41fa
	rlca			;41fd
	ld l,h			;41fe
	rlca			;41ff
	nop			;4200
	nop			;4201
	ld h,e			;4202
	inc b			;4203
	ld h,a			;4204
	ld (bc),a		;4205
	nop			;4206
	add hl,de		;4207
	dec c			;4208
	rrca			;4209
	ld sp,00008h		;420a
	nop			;420d
	nop			;420e
	nop			;420f
	nop			;4210
	nop			;4211
	add hl,bc		;4212
	ld d,06ch		;4213
	rlca			;4215
	ld l,h			;4216
	rlca			;4217
	nop			;4218
	nop			;4219
	ld l,009h		;421a
	nop			;421c
	nop			;421d
	nop			;421e
	add hl,de		;421f
	ld d,00fh		;4220
	ld l,008h		;4222
	nop			;4224
	nop			;4225
	ld h,a			;4226
	ld (bc),a		;4227
	ld h,a			;4228
	inc bc			;4229
	ld bc,l6c16h		;422a
	rlca			;422d
	ld l,h			;422e
	rlca			;422f
	nop			;4230
	nop			;4231
	nop			;4232
	nop			;4233
	nop			;4234
	nop			;4235
	nop			;4236
	add hl,de		;4237
	inc bc			;4238
	rrca			;4239
	daa			;423a
	ex af,af'		;423b
	nop			;423c
	nop			;423d
	nop			;423e
	nop			;423f
	nop			;4240
	nop			;4241
	add hl,bc		;4242
	ld d,06ch		;4243
	rlca			;4245
	ld l,h			;4246
	rlca			;4247
	nop			;4248
	nop			;4249
	ld h,a			;424a
	inc bc			;424b
	nop			;424c
	nop			;424d
	nop			;424e
	add hl,de		;424f
	rrca			;4250
	rrca			;4251
	ld hl,(00008h)		;4252
	nop			;4255
	nop			;4256
	nop			;4257
	daa			;4258
	inc c			;4259
	ld (bc),a		;425a
	ld d,06ch		;425b
	rlca			;425d
	ld l,h			;425e
	rlca			;425f
	nop			;4260
	nop			;4261
	nop			;4262
	nop			;4263
	nop			;4264
	nop			;4265
	nop			;4266
	add hl,de		;4267
	djnz l4279h		;4268
	daa			;426a
	ex af,af'		;426b
	nop			;426c
	nop			;426d
	nop			;426e
	nop			;426f
	ld h,a			;4270
	ld (bc),a		;4271
	add hl,bc		;4272
	ld d,06ch		;4273
	rlca			;4275
	ld l,h			;4276
	rlca			;4277
	nop			;4278
l4279h:
	nop			;4279
	daa			;427a
	add hl,bc		;427b
	nop			;427c
	nop			;427d
	nop			;427e
	add hl,de		;427f
	inc b			;4280
	rrca			;4281
	daa			;4282
	ld b,000h		;4283
	nop			;4285
	nop			;4286
	nop			;4287
	ld hl,(0010ch)		;4288
	ld d,06ch		;428b
	rlca			;428d
	ld l,h			;428e
	rlca			;428f
	nop			;4290
	nop			;4291
	ld h,a			;4292
	ld (bc),a		;4293
	ld h,a			;4294
	ld (bc),a		;4295
	nop			;4296
	add hl,de		;4297
	djnz l42a9h		;4298
	daa			;429a
	inc b			;429b
	nop			;429c
	nop			;429d
	nop			;429e
	nop			;429f
	nop			;42a0
	nop			;42a1
	add hl,bc		;42a2
	ld d,06ch		;42a3
	rlca			;42a5
	ld l,h			;42a6
	rlca			;42a7
	nop			;42a8
l42a9h:
	nop			;42a9
	ld hl,(00009h)		;42aa
	nop			;42ad
	nop			;42ae
	add hl,de		;42af
	ld a,(bc)		;42b0
	rrca			;42b1
	inc l			;42b2
	ex af,af'		;42b3
	nop			;42b4
	nop			;42b5
	ld h,a			;42b6
	ld (bc),a		;42b7
	ld sp,0030ch		;42b8
	ld d,06ch		;42bb
	rlca			;42bd
	ld l,h			;42be
	rlca			;42bf
	nop			;42c0
	nop			;42c1
	nop			;42c2
	nop			;42c3
	ld h,a			;42c4
	ld (bc),a		;42c5
	nop			;42c6
	add hl,de		;42c7
	inc b			;42c8
	rrca			;42c9
	ld l,008h		;42ca
	nop			;42cc
	nop			;42cd
	nop			;42ce
	nop			;42cf
	nop			;42d0
	nop			;42d1
	ld bc,l6c16h		;42d2
	rlca			;42d5
	ld l,h			;42d6
	rlca			;42d7
	nop			;42d8
	nop			;42d9
	ld sp,00009h		;42da
	nop			;42dd
	nop			;42de
	add hl,de		;42df
	djnz l42f1h		;42e0
	ld l,008h		;42e2
	nop			;42e4
	nop			;42e5
	ld h,a			;42e6
	ld (bc),a		;42e7
	ld l,00ch		;42e8
	ld (bc),a		;42ea
	ld d,06ch		;42eb
	rlca			;42ed
	ld l,h			;42ee
	rlca			;42ef
	nop			;42f0
l42f1h:
	nop			;42f1
	nop			;42f2
	nop			;42f3
	nop			;42f4
	nop			;42f5
	nop			;42f6
	add hl,de		;42f7
	rrca			;42f8
	rrca			;42f9
	daa			;42fa
	ex af,af'		;42fb
	nop			;42fc
	nop			;42fd
	nop			;42fe
	nop			;42ff
	ld h,a			;4300
	ld (bc),a		;4301
	add hl,bc		;4302
	ld d,06ch		;4303
	rlca			;4305
	ld l,h			;4306
	rlca			;4307
	nop			;4308
	nop			;4309
	ld l,009h		;430a
	nop			;430c
	nop			;430d
	nop			;430e
	add hl,de		;430f
	ld c,00fh		;4310
	cpl			;4312
	ex af,af'		;4313
	nop			;4314
	nop			;4315
	nop			;4316
	nop			;4317
	nop			;4318
	nop			;4319
	ld bc,l6c16h		;431a
	rlca			;431d
	ld l,h			;431e
	rlca			;431f
	nop			;4320
	nop			;4321
	ld h,a			;4322
	ld (bc),a		;4323
	nop			;4324
l4325h:
	nop			;4325
	nop			;4326
	add hl,de		;4327
	dec c			;4328
	rrca			;4329
	ld sp,00008h		;432a
	nop			;432d
	nop			;432e
	nop			;432f
	nop			;4330
	nop			;4331
	inc bc			;4332
	ld d,06ch		;4333
	rlca			;4335
	ld l,h			;4336
	rlca			;4337
	nop			;4338
	nop			;4339
	nop			;433a
	nop			;433b
	nop			;433c
	nop			;433d
	nop			;433e
	add hl,de		;433f
	ld d,00fh		;4340
	ld l,008h		;4342
	nop			;4344
	nop			;4345
	nop			;4346
	nop			;4347
sub_4348h:
	nop			;4348
	nop			;4349
	ld bc,l6c16h		;434a
	rlca			;434d
	ld l,h			;434e
	rlca			;434f
	nop			;4350
	nop			;4351
	nop			;4352
	nop			;4353
	ld h,a			;4354
	inc bc			;4355
	nop			;4356
	add hl,de		;4357
	inc bc			;4358
	rrca			;4359
	daa			;435a
	ex af,af'		;435b
	nop			;435c
	nop			;435d
	nop			;435e
	nop			;435f
	nop			;4360
	nop			;4361
	add hl,bc		;4362
	ld d,06ch		;4363
	rlca			;4365
	ld l,h			;4366
	rlca			;4367
	nop			;4368
	nop			;4369
	nop			;436a
	nop			;436b
	nop			;436c
	nop			;436d
	nop			;436e
	add hl,de		;436f
	rrca			;4370
	rrca			;4371
	ld hl,(00008h)		;4372
	nop			;4375
	ld h,a			;4376
	inc bc			;4377
	daa			;4378
	inc c			;4379
	ld (bc),a		;437a
	ld d,06ch		;437b
	rlca			;437d
	ld l,h			;437e
	rlca			;437f
	nop			;4380
	nop			;4381
	nop			;4382
	nop			;4383
	ld h,a			;4384
	ld (bc),a		;4385
	nop			;4386
	add hl,de		;4387
	djnz l4399h		;4388
	daa			;438a
	ex af,af'		;438b
	nop			;438c
	nop			;438d
	nop			;438e
	nop			;438f
	nop			;4390
	nop			;4391
	inc bc			;4392
	ld d,06ch		;4393
	rlca			;4395
	ld l,h			;4396
	rlca			;4397
	nop			;4398
l4399h:
	nop			;4399
	daa			;439a
	add hl,bc		;439b
	nop			;439c
	nop			;439d
	nop			;439e
	add hl,de		;439f
	inc b			;43a0
	rrca			;43a1
	daa			;43a2
	ld b,000h		;43a3
	nop			;43a5
	ld h,a			;43a6
	ld (bc),a		;43a7
	ld hl,(0010ch)		;43a8
	ld d,06ch		;43ab
	rlca			;43ad
	ld l,h			;43ae
	rlca			;43af
	nop			;43b0
	nop			;43b1
	nop			;43b2
	nop			;43b3
	ld h,a			;43b4
	ld (bc),a		;43b5
	nop			;43b6
	add hl,de		;43b7
	djnz l43c9h		;43b8
	daa			;43ba
	inc b			;43bb
	nop			;43bc
	nop			;43bd
	nop			;43be
	nop			;43bf
	nop			;43c0
	nop			;43c1
	inc c			;43c2
	ld d,06ch		;43c3
	rlca			;43c5
	ld l,h			;43c6
	rlca			;43c7
	nop			;43c8
l43c9h:
	nop			;43c9
	ld hl,(00009h)		;43ca
	nop			;43cd
	nop			;43ce
	add hl,de		;43cf
	ld a,(bc)		;43d0
	rrca			;43d1
	inc l			;43d2
	ex af,af'		;43d3
	nop			;43d4
	nop			;43d5
	ld h,a			;43d6
	ld (bc),a		;43d7
	ld sp,0000ch		;43d8
	ld d,06ch		;43db
	rlca			;43dd
	ld l,h			;43de
	rlca			;43df
	nop			;43e0
	nop			;43e1
	nop			;43e2
	nop			;43e3
	ld h,a			;43e4
	ld (bc),a		;43e5
	nop			;43e6
	add hl,de		;43e7
	inc b			;43e8
	rrca			;43e9
	ld l,008h		;43ea
	nop			;43ec
	nop			;43ed
	nop			;43ee
	nop			;43ef
	nop			;43f0
	nop			;43f1
	ld bc,l6c16h		;43f2
	rlca			;43f5
	ld l,h			;43f6
	rlca			;43f7
	nop			;43f8
	nop			;43f9
	ld sp,00009h		;43fa
	nop			;43fd
	nop			;43fe
	add hl,de		;43ff
	djnz l4411h		;4400
	ld l,008h		;4402
	nop			;4404
	nop			;4405
	ld h,a			;4406
	ld (bc),a		;4407
	cpl			;4408
	inc c			;4409
	ld (bc),a		;440a
	ld d,06ch		;440b
	rlca			;440d
	ld l,h			;440e
	rlca			;440f
	nop			;4410
l4411h:
	nop			;4411
	nop			;4412
	nop			;4413
	ld h,a			;4414
	ld bc,01900h		;4415
	rrca			;4418
	rrca			;4419
	daa			;441a
	ex af,af'		;441b
	nop			;441c
	nop			;441d
	nop			;441e
	nop			;441f
	nop			;4420
	nop			;4421
	add hl,bc		;4422
	ld d,06ch		;4423
	rlca			;4425
	ld l,h			;4426
	rlca			;4427
	nop			;4428
	nop			;4429
	cpl			;442a
	add hl,bc		;442b
	nop			;442c
	nop			;442d
	nop			;442e
	add hl,de		;442f
	ld c,00fh		;4430
	cpl			;4432
	ex af,af'		;4433
	nop			;4434
	nop			;4435
	ld h,a			;4436
	ld bc,00267h		;4437
	ld bc,l6c16h		;443a
	rlca			;443d
	ld l,h			;443e
	rlca			;443f
	nop			;4440
	nop			;4441
	nop			;4442
	nop			;4443
	nop			;4444
	nop			;4445
	nop			;4446
	add hl,de		;4447
	dec c			;4448
	rrca			;4449
	ld sp,00008h		;444a
	nop			;444d
	nop			;444e
	nop			;444f
	nop			;4450
	nop			;4451
	add hl,bc		;4452
	ld d,06ch		;4453
	rlca			;4455
	ld l,h			;4456
	rlca			;4457
	nop			;4458
	nop			;4459
	ld h,a			;445a
	ld (bc),a		;445b
	nop			;445c
	nop			;445d
	nop			;445e
	add hl,de		;445f
	ld d,00fh		;4460
	ld l,008h		;4462
	nop			;4464
	nop			;4465
	nop			;4466
l4467h:
	nop			;4467
	nop			;4468
	nop			;4469
	ld bc,l6c16h		;446a
	rlca			;446d
	ld l,h			;446e
	rlca			;446f
	nop			;4470
	nop			;4471
	nop			;4472
	nop			;4473
	ld h,a			;4474
	inc bc			;4475
	nop			;4476
	add hl,de		;4477
	inc bc			;4478
	rrca			;4479
	daa			;447a
	ex af,af'		;447b
	nop			;447c
	nop			;447d
	nop			;447e
	nop			;447f
	nop			;4480
	nop			;4481
	add hl,bc		;4482
	ld d,06ch		;4483
	rlca			;4485
	ld l,h			;4486
	rlca			;4487
	nop			;4488
	nop			;4489
l448ah:
	nop			;448a
	nop			;448b
	nop			;448c
	nop			;448d
	nop			;448e
	add hl,de		;448f
	rrca			;4490
	rrca			;4491
	ld hl,(00008h)		;4492
	nop			;4495
	ld h,a			;4496
	inc bc			;4497
	ld sp,0020ch		;4498
	ld d,06ch		;449b
	rlca			;449d
	ld l,h			;449e
	rlca			;449f
	nop			;44a0
	nop			;44a1
	nop			;44a2
	nop			;44a3
	ld h,a			;44a4
	ld bc,01900h		;44a5
	djnz l44b9h		;44a8
	daa			;44aa
	ex af,af'		;44ab
	nop			;44ac
	nop			;44ad
	nop			;44ae
	nop			;44af
	nop			;44b0
	nop			;44b1
	add hl,bc		;44b2
	ld d,06ch		;44b3
	rlca			;44b5
	ld l,h			;44b6
	rlca			;44b7
	nop			;44b8
l44b9h:
	nop			;44b9
	ld sp,00009h		;44ba
	nop			;44bd
	nop			;44be
	add hl,de		;44bf
	inc b			;44c0
	rrca			;44c1
	daa			;44c2
	ld b,000h		;44c3
	nop			;44c5
	ld h,a			;44c6
	ld bc,00267h		;44c7
	ld bc,l6c16h		;44ca
	rlca			;44cd
	ld l,h			;44ce
	rlca			;44cf
	nop			;44d0
	nop			;44d1
	nop			;44d2
	nop			;44d3
	nop			;44d4
	nop			;44d5
	nop			;44d6
	add hl,de		;44d7
l44d8h:
	djnz l44e9h		;44d8
	daa			;44da
	inc b			;44db
	nop			;44dc
	nop			;44dd
	nop			;44de
	nop			;44df
	nop			;44e0
	nop			;44e1
	add hl,bc		;44e2
	ld d,06ch		;44e3
	rlca			;44e5
	ld l,h			;44e6
	rlca			;44e7
	nop			;44e8
l44e9h:
	nop			;44e9
	ld h,a			;44ea
	ld (bc),a		;44eb
	nop			;44ec
	nop			;44ed
	nop			;44ee
	add hl,de		;44ef
	ld a,(bc)		;44f0
	rrca			;44f1
	inc l			;44f2
	ex af,af'		;44f3
	nop			;44f4
	nop			;44f5
	nop			;44f6
	nop			;44f7
	nop			;44f8
	nop			;44f9
	add hl,bc		;44fa
	ld d,06ch		;44fb
	rlca			;44fd
	ld l,h			;44fe
	rlca			;44ff
	nop			;4500
	nop			;4501
	nop			;4502
	nop			;4503
	ld h,a			;4504
	inc bc			;4505
	nop			;4506
	add hl,de		;4507
	inc b			;4508
	rrca			;4509
	ld l,008h		;450a
	nop			;450c
	nop			;450d
	nop			;450e
	nop			;450f
	nop			;4510
	nop			;4511
	ld bc,l6c16h		;4512
	rlca			;4515
	ld l,h			;4516
	rlca			;4517
l4518h:
	nop			;4518
	nop			;4519
	nop			;451a
	nop			;451b
	nop			;451c
	nop			;451d
	nop			;451e
	add hl,de		;451f
	djnz l4531h		;4520
	ld l,008h		;4522
	nop			;4524
	nop			;4525
	ld h,a			;4526
	inc bc			;4527
	inc sp			;4528
	inc c			;4529
	ld (bc),a		;452a
	ld d,06ch		;452b
	rlca			;452d
	ld l,h			;452e
	rlca			;452f
	nop			;4530
l4531h:
	nop			;4531
	nop			;4532
	nop			;4533
	ld h,a			;4534
	ld bc,01900h		;4535
	rrca			;4538
	rrca			;4539
	daa			;453a
	ex af,af'		;453b
	nop			;453c
	nop			;453d
	nop			;453e
	nop			;453f
	nop			;4540
	nop			;4541
	inc bc			;4542
	ld d,06ch		;4543
	rlca			;4545
	ld l,h			;4546
	rlca			;4547
	nop			;4548
	nop			;4549
	inc sp			;454a
	add hl,bc		;454b
	nop			;454c
	nop			;454d
	nop			;454e
	add hl,de		;454f
	ld c,00fh		;4550
	cpl			;4552
	ex af,af'		;4553
	nop			;4554
	nop			;4555
	ld h,a			;4556
	ld bc,00000h		;4557
	ld bc,l6c16h		;455a
	rlca			;455d
	ld l,h			;455e
	rlca			;455f
	nop			;4560
	nop			;4561
	nop			;4562
	nop			;4563
	ld h,a			;4564
	ld (bc),a		;4565
	nop			;4566
	add hl,de		;4567
	dec c			;4568
	rrca			;4569
	ld sp,00008h		;456a
	nop			;456d
	nop			;456e
	nop			;456f
l4570h:
	nop			;4570
	nop			;4571
	add hl,bc		;4572
	ld d,06ch		;4573
	rlca			;4575
	ld l,h			;4576
	rlca			;4577
	nop			;4578
	nop			;4579
	nop			;457a
	nop			;457b
	nop			;457c
	nop			;457d
	nop			;457e
	add hl,de		;457f
	ld d,00fh		;4580
	ld l,008h		;4582
	nop			;4584
	nop			;4585
	ld h,a			;4586
	ld (bc),a		;4587
	nop			;4588
	nop			;4589
	ld bc,l6c16h		;458a
	rlca			;458d
sub_458eh:
	ld l,h			;458e
	rlca			;458f
	nop			;4590
	nop			;4591
	nop			;4592
	nop			;4593
	nop			;4594
	nop			;4595
	nop			;4596
	add hl,de		;4597
sub_4598h:
	inc bc			;4598
	rrca			;4599
	daa			;459a
	ex af,af'		;459b
	nop			;459c
	nop			;459d
	nop			;459e
	nop			;459f
	nop			;45a0
	nop			;45a1
	inc bc			;45a2
	ld d,06ch		;45a3
	rlca			;45a5
	ld l,h			;45a6
	rlca			;45a7
	nop			;45a8
	nop			;45a9
	nop			;45aa
	nop			;45ab
	nop			;45ac
	nop			;45ad
	nop			;45ae
	add hl,de		;45af
	rrca			;45b0
	rrca			;45b1
	ld hl,(00008h)		;45b2
	nop			;45b5
	nop			;45b6
	nop			;45b7
	jr c,l45c6h		;45b8
	ld (bc),a		;45ba
	ld d,06ch		;45bb
	rlca			;45bd
	ld l,h			;45be
	rlca			;45bf
	nop			;45c0
	nop			;45c1
	nop			;45c2
	nop			;45c3
	ld h,a			;45c4
	ld (bc),a		;45c5
l45c6h:
	nop			;45c6
	add hl,de		;45c7
	djnz l45d9h		;45c8
	daa			;45ca
	ex af,af'		;45cb
	nop			;45cc
	nop			;45cd
	nop			;45ce
	nop			;45cf
	nop			;45d0
	nop			;45d1
	inc bc			;45d2
	ld d,06ch		;45d3
	rlca			;45d5
	ld l,h			;45d6
	rlca			;45d7
	nop			;45d8
l45d9h:
	nop			;45d9
	jr c,l45e5h		;45da
	nop			;45dc
	nop			;45dd
	nop			;45de
	add hl,de		;45df
	inc b			;45e0
	rrca			;45e1
	daa			;45e2
	ld b,000h		;45e3
l45e5h:
	nop			;45e5
	ld h,a			;45e6
	ld (bc),a		;45e7
	nop			;45e8
	nop			;45e9
	ld bc,l6c16h		;45ea
	rlca			;45ed
	ld l,h			;45ee
	rlca			;45ef
	nop			;45f0
	nop			;45f1
	nop			;45f2
	nop			;45f3
	nop			;45f4
	nop			;45f5
	nop			;45f6
	add hl,de		;45f7
	djnz l4609h		;45f8
	daa			;45fa
	inc b			;45fb
	nop			;45fc
	nop			;45fd
	nop			;45fe
	nop			;45ff
	ld a,(00c0ch)		;4600
	ld d,06ch		;4603
	rlca			;4605
	ld l,h			;4606
	rlca			;4607
	nop			;4608
l4609h:
	nop			;4609
	nop			;460a
	nop			;460b
	ld h,a			;460c
	ld (bc),a		;460d
	nop			;460e
	add hl,de		;460f
	ld a,(bc)		;4610
	rrca			;4611
	inc l			;4612
	ex af,af'		;4613
	nop			;4614
	nop			;4615
	nop			;4616
	nop			;4617
	nop			;4618
	nop			;4619
	nop			;461a
	ld d,06ch		;461b
	rlca			;461d
	ld l,h			;461e
	rlca			;461f
	nop			;4620
	nop			;4621
	ld a,(00009h)		;4622
	nop			;4625
	nop			;4626
	add hl,de		;4627
	inc b			;4628
	rrca			;4629
	ld l,008h		;462a
	nop			;462c
	nop			;462d
	ld h,a			;462e
	ld (bc),a		;462f
	nop			;4630
	nop			;4631
	ld bc,l6c16h		;4632
	rlca			;4635
	ld l,h			;4636
	rlca			;4637
	nop			;4638
	nop			;4639
	nop			;463a
	nop			;463b
	nop			;463c
	nop			;463d
	nop			;463e
	add hl,de		;463f
	ld d,00fh		;4640
	ld l,008h		;4642
	nop			;4644
	nop			;4645
	nop			;4646
	nop			;4647
	nop			;4648
	nop			;4649
	ld bc,l6c16h		;464a
	rlca			;464d
	ld l,h			;464e
	rlca			;464f
	nop			;4650
	nop			;4651
	nop			;4652
	nop			;4653
	nop			;4654
	nop			;4655
	nop			;4656
	add hl,de		;4657
	inc bc			;4658
	rrca			;4659
	daa			;465a
	ex af,af'		;465b
	nop			;465c
	nop			;465d
	nop			;465e
	nop			;465f
	nop			;4660
	nop			;4661
	inc bc			;4662
	ld d,06ch		;4663
	rlca			;4665
	ld l,h			;4666
	rlca			;4667
	nop			;4668
	nop			;4669
	nop			;466a
	nop			;466b
	nop			;466c
	nop			;466d
	inc bc			;466e
	add hl,de		;466f
	rrca			;4670
	rrca			;4671
	ld hl,(00008h)		;4672
	nop			;4675
	nop			;4676
	nop			;4677
	dec sp			;4678
	inc c			;4679
	ld (bc),a		;467a
	ld d,06ch		;467b
	rlca			;467d
	ld l,h			;467e
	rlca			;467f
	nop			;4680
	nop			;4681
	nop			;4682
	nop			;4683
	ld h,a			;4684
	ld (bc),a		;4685
	nop			;4686
	add hl,de		;4687
	djnz l4699h		;4688
	daa			;468a
	ex af,af'		;468b
	nop			;468c
	nop			;468d
	nop			;468e
	nop			;468f
	nop			;4690
	nop			;4691
	inc bc			;4692
	ld d,06ch		;4693
	rlca			;4695
	ld l,h			;4696
	rlca			;4697
	nop			;4698
l4699h:
	nop			;4699
	dec sp			;469a
	add hl,bc		;469b
	nop			;469c
	nop			;469d
	nop			;469e
	add hl,de		;469f
	inc b			;46a0
	rrca			;46a1
	daa			;46a2
	ld b,000h		;46a3
	nop			;46a5
	ld h,a			;46a6
	ld (bc),a		;46a7
	ld a,(0020ch)		;46a8
	ld d,06ch		;46ab
	rlca			;46ad
	ld l,h			;46ae
	rlca			;46af
	nop			;46b0
	nop			;46b1
	nop			;46b2
	nop			;46b3
	ld h,a			;46b4
	ld (bc),a		;46b5
	nop			;46b6
	add hl,de		;46b7
	djnz l46c9h		;46b8
	daa			;46ba
	inc b			;46bb
	nop			;46bc
	nop			;46bd
	nop			;46be
	nop			;46bf
	nop			;46c0
	nop			;46c1
	inc bc			;46c2
	ld d,06ch		;46c3
	rlca			;46c5
	ld l,h			;46c6
	rlca			;46c7
	nop			;46c8
l46c9h:
	nop			;46c9
	ld a,(00009h)		;46ca
	nop			;46cd
	nop			;46ce
	add hl,de		;46cf
	ld a,(bc)		;46d0
	rrca			;46d1
	inc l			;46d2
	ex af,af'		;46d3
	nop			;46d4
	nop			;46d5
	ld h,a			;46d6
	ld (bc),a		;46d7
	jr c,l46e6h		;46d8
	ld (bc),a		;46da
	ld d,06ch		;46db
	rlca			;46dd
	ld l,h			;46de
	rlca			;46df
	nop			;46e0
	nop			;46e1
	nop			;46e2
	nop			;46e3
	nop			;46e4
	nop			;46e5
l46e6h:
	nop			;46e6
	add hl,de		;46e7
	inc b			;46e8
	rrca			;46e9
	ld l,008h		;46ea
	ld h,d			;46ec
	jr nz,l46efh		;46ed
l46efh:
	nop			;46ef
	jr c,l46f6h		;46f0
	ld (bc),a		;46f2
	ld d,06ch		;46f3
	rlca			;46f5
l46f6h:
	ld l,h			;46f6
	rlca			;46f7
	ld l,d			;46f8
	inc bc			;46f9
	ld h,c			;46fa
	nop			;46fb
	dec sp			;46fc
	ld a,(bc)		;46fd
	nop			;46fe
	add hl,de		;46ff
	inc d			;4700
	rrca			;4701
	ld e,005h		;4702
	inc l			;4704
	ld a,(bc)		;4705
	ld h,d			;4706
	ld (de),a		;4707
	inc l			;4708
	ld a,(bc)		;4709
	ld bc,00016h		;470a
	nop			;470d
	ld h,d			;470e
	ld hl,(03362h)		;470f
	ld l,d			;4712
	ld bc,01063h		;4713
	nop			;4716
	add hl,de		;4717
	rrca			;4718
	rrca			;4719
	dec e			;471a
l471bh:
	dec b			;471b
	ld l,00ah		;471c
	inc l			;471e
	ld b,02eh		;471f
	ld a,(bc)		;4721
	inc bc			;4722
	ld d,000h		;4723
	nop			;4725
	ld l,h			;4726
	inc bc			;4727
	ld l,h			;4728
	add hl,bc		;4729
	ld h,e			;472a
	djnz l4799h		;472b
	add hl,bc		;472d
	nop			;472e
sub_472fh:
	add hl,de		;472f
	inc d			;4730
	rrca			;4731
	ld e,005h		;4732
	ld l,00ah		;4734
	ld l,006h		;4736
	ld l,00ah		;4738
	ld bc,00016h		;473a
	nop			;473d
	ld l,h			;473e
	inc bc			;473f
	ld h,c			;4740
	nop			;4741
	ld l,h			;4742
	add hl,bc		;4743
	ld h,c			;4744
	nop			;4745
	nop			;4746
	add hl,de		;4747
	ld d,00fh		;4748
	jr nz,$+7		;474a
	ld l,00ah		;474c
	ld l,006h		;474e
	ld l,00ah		;4750
	inc bc			;4752
	ld d,000h		;4753
	nop			;4755
	ld l,h			;4756
	inc bc			;4757
	ld h,c			;4758
	nop			;4759
	ld h,c			;475a
	nop			;475b
	ld h,c			;475c
	nop			;475d
	nop			;475e
	add hl,de		;475f
	rla			;4760
	rrca			;4761
	ld e,005h		;4762
	nop			;4764
	nop			;4765
	ld l,006h		;4766
l4768h:
	ld l,c			;4768
	ld bc,01601h		;4769
	nop			;476c
	nop			;476d
	ld l,h			;476e
	inc bc			;476f
	nop			;4770
	nop			;4771
	ld h,c			;4772
	nop			;4773
	nop			;4774
	nop			;4775
	nop			;4776
	add hl,de		;4777
	add hl,de		;4778
	rrca			;4779
	ld d,005h		;477a
	inc l			;477c
	ld a,(bc)		;477d
	nop			;477e
	nop			;477f
	inc l			;4780
	ld a,(bc)		;4781
	inc bc			;4782
	ld d,000h		;4783
	nop			;4785
	ld l,h			;4786
	inc bc			;4787
	ld h,c			;4788
	nop			;4789
	nop			;478a
	nop			;478b
	ld h,c			;478c
	nop			;478d
	nop			;478e
	add hl,de		;478f
	dec de			;4790
	rrca			;4791
	add hl,de		;4792
	dec b			;4793
	nop			;4794
	nop			;4795
	inc l			;4796
	ld b,000h		;4797
l4799h:
	nop			;4799
	ld (bc),a		;479a
	ld d,000h		;479b
	nop			;479d
	ld l,h			;479e
	inc bc			;479f
	nop			;47a0
	nop			;47a1
	ld h,c			;47a2
	nop			;47a3
	nop			;47a4
	nop			;47a5
	nop			;47a6
	add hl,de		;47a7
	rrca			;47a8
	rrca			;47a9
	dec de			;47aa
	dec b			;47ab
	nop			;47ac
	nop			;47ad
	nop			;47ae
	nop			;47af
	nop			;47b0
	nop			;47b1
	inc bc			;47b2
	ld d,000h		;47b3
	nop			;47b5
	ld l,h			;47b6
	inc bc			;47b7
	nop			;47b8
	nop			;47b9
	nop			;47ba
	nop			;47bb
	nop			;47bc
	nop			;47bd
	nop			;47be
	add hl,de		;47bf
	ld d,00fh		;47c0
	ld e,005h		;47c2
	daa			;47c4
	ld a,(bc)		;47c5
	nop			;47c6
	nop			;47c7
	daa			;47c8
	ld a,(bc)		;47c9
	ld bc,00016h		;47ca
	nop			;47cd
	ld l,h			;47ce
	inc bc			;47cf
	ld h,c			;47d0
	nop			;47d1
	nop			;47d2
	nop			;47d3
	ld h,c			;47d4
	nop			;47d5
	nop			;47d6
	add hl,de		;47d7
	ld (de),a		;47d8
	rrca			;47d9
	add hl,de		;47da
	dec b			;47db
	daa			;47dc
	ld a,(bc)		;47dd
	daa			;47de
	ld b,027h		;47df
	ld a,(bc)		;47e1
	inc bc			;47e2
	ld d,000h		;47e3
	nop			;47e5
	ld l,h			;47e6
	inc bc			;47e7
	ld h,c			;47e8
	nop			;47e9
	ld h,c			;47ea
	nop			;47eb
	ld h,c			;47ec
	nop			;47ed
	nop			;47ee
	add hl,de		;47ef
	add hl,de		;47f0
	rrca			;47f1
	dec h			;47f2
	dec b			;47f3
	add hl,hl		;47f4
	ld a,(bc)		;47f5
	daa			;47f6
	ld b,029h		;47f7
	ld a,(bc)		;47f9
	inc bc			;47fa
	ld d,000h		;47fb
	nop			;47fd
	ld l,h			;47fe
	inc bc			;47ff
	ld h,e			;4800
	ld b,061h		;4801
	nop			;4803
	ld h,e			;4804
	ld b,000h		;4805
	add hl,de		;4807
	inc d			;4808
	rrca			;4809
	daa			;480a
	dec b			;480b
	ld hl,(0290ah)		;480c
	ld b,02ah		;480f
	ld a,(bc)		;4811
	ld bc,00016h		;4812
	nop			;4815
	ld l,h			;4816
	inc bc			;4817
	ld h,c			;4818
	nop			;4819
	ld h,e			;481a
	ld b,061h		;481b
	nop			;481d
	nop			;481e
	add hl,de		;481f
	rrca			;4820
	rrca			;4821
	dec de			;4822
	dec b			;4823
	ld sp,02a02h		;4824
	ld b,031h		;4827
	ld (bc),a		;4829
	inc bc			;482a
	ld d,000h		;482b
	nop			;482d
	ld l,h			;482e
	inc bc			;482f
	ld h,c			;4830
	nop			;4831
	ld h,c			;4832
	nop			;4833
	ld h,c			;4834
	nop			;4835
	nop			;4836
	add hl,de		;4837
	inc d			;4838
	rrca			;4839
	ld e,005h		;483a
	ld sp,03104h		;483c
	ld b,031h		;483f
	inc b			;4841
	ld bc,00016h		;4842
	nop			;4845
	ld l,h			;4846
	inc bc			;4847
	ld h,c			;4848
	nop			;4849
	ld h,c			;484a
	nop			;484b
	ld h,c			;484c
	nop			;484d
	nop			;484e
	add hl,de		;484f
	ld d,00fh		;4850
	dec e			;4852
	dec b			;4853
	ld sp,03106h		;4854
	ld b,031h		;4857
	ld b,002h		;4859
	ld d,000h		;485b
	nop			;485d
	ld l,h			;485e
	inc bc			;485f
	ld h,c			;4860
	nop			;4861
	ld h,c			;4862
	nop			;4863
	ld h,c			;4864
	nop			;4865
	nop			;4866
	add hl,de		;4867
	rla			;4868
	rrca			;4869
	ld e,005h		;486a
	ld sp,03108h		;486c
	ld b,031h		;486f
	ex af,af'		;4871
	ld bc,00016h		;4872
	nop			;4875
	ld l,h			;4876
	inc bc			;4877
	ld h,c			;4878
	nop			;4879
	ld h,c			;487a
	nop			;487b
	ld h,c			;487c
	nop			;487d
	nop			;487e
	add hl,de		;487f
	add hl,de		;4880
	rrca			;4881
	jr nz,l4889h		;4882
	ld sp,0310ch		;4884
	ld b,031h		;4887
l4889h:
	inc c			;4889
	inc bc			;488a
l488bh:
	ld d,000h		;488b
	nop			;488d
	ld l,h			;488e
	inc bc			;488f
	ld h,c			;4890
	nop			;4891
	ld h,c			;4892
	nop			;4893
	ld h,c			;4894
	nop			;4895
	nop			;4896
	add hl,de		;4897
	dec de			;4898
	rrca			;4899
	ld e,005h		;489a
	ld sp,0310ah		;489c
	ld b,031h		;489f
	ld a,(bc)		;48a1
	ld bc,00016h		;48a2
	nop			;48a5
	ld l,h			;48a6
	inc bc			;48a7
	ld h,c			;48a8
	nop			;48a9
	ld h,c			;48aa
	nop			;48ab
	ld h,c			;48ac
	nop			;48ad
	nop			;48ae
	add hl,de		;48af
	rrca			;48b0
	rrca			;48b1
l48b2h:
	ld d,005h		;48b2
	ld sp,03108h		;48b4
	ld b,031h		;48b7
	ex af,af'		;48b9
	inc bc			;48ba
	ld d,000h		;48bb
	nop			;48bd
	ld l,h			;48be
	inc bc			;48bf
	ld h,c			;48c0
	nop			;48c1
	ld h,c			;48c2
	nop			;48c3
	ld h,c			;48c4
	nop			;48c5
	nop			;48c6
	add hl,de		;48c7
	ld (de),a		;48c8
	rrca			;48c9
	add hl,de		;48ca
	dec b			;48cb
	ld sp,03106h		;48cc
	ld b,031h		;48cf
	ld b,002h		;48d1
	ld d,000h		;48d3
	nop			;48d5
	ld l,h			;48d6
	inc bc			;48d7
	ld h,c			;48d8
	nop			;48d9
	ld h,c			;48da
	nop			;48db
	ld h,c			;48dc
	nop			;48dd
	nop			;48de
	add hl,de		;48df
	ld d,00fh		;48e0
	dec de			;48e2
	dec b			;48e3
	ld sp,03104h		;48e4
	ld b,031h		;48e7
	inc b			;48e9
	inc bc			;48ea
	ld d,000h		;48eb
	nop			;48ed
	ld l,h			;48ee
	inc bc			;48ef
	ld h,c			;48f0
	nop			;48f1
	ld h,c			;48f2
	nop			;48f3
	ld h,c			;48f4
	nop			;48f5
	nop			;48f6
	add hl,de		;48f7
	rrca			;48f8
	rrca			;48f9
	ld e,005h		;48fa
	ld sp,03102h		;48fc
	ld b,031h		;48ff
	ld (bc),a		;4901
	ld bc,00016h		;4902
	nop			;4905
	ld l,h			;4906
	inc bc			;4907
	ld h,c			;4908
	nop			;4909
	ld h,c			;490a
	nop			;490b
	ld h,c			;490c
	nop			;490d
	nop			;490e
	add hl,de		;490f
	ld d,00fh		;4910
	add hl,de		;4912
	dec b			;4913
	nop			;4914
	nop			;4915
	ld sp,00006h		;4916
	nop			;4919
	inc bc			;491a
	ld d,000h		;491b
	nop			;491d
	ld l,h			;491e
	inc bc			;491f
	nop			;4920
	nop			;4921
	ld h,c			;4922
	nop			;4923
	nop			;4924
	nop			;4925
	nop			;4926
	add hl,de		;4927
	rrca			;4928
	rrca			;4929
	dec de			;492a
	dec b			;492b
	nop			;492c
	nop			;492d
	nop			;492e
	nop			;492f
	nop			;4930
	nop			;4931
	inc bc			;4932
	ld d,000h		;4933
	nop			;4935
	ld l,h			;4936
	inc bc			;4937
	nop			;4938
	nop			;4939
	nop			;493a
	nop			;493b
	nop			;493c
	nop			;493d
	nop			;493e
	add hl,de		;493f
	rla			;4940
	rrca			;4941
	rla			;4942
	dec b			;4943
	nop			;4944
	nop			;4945
	nop			;4946
	nop			;4947
	nop			;4948
	nop			;4949
	inc bc			;494a
	ld d,000h		;494b
	nop			;494d
	ld l,h			;494e
	inc bc			;494f
	nop			;4950
	nop			;4951
	nop			;4952
	nop			;4953
	nop			;4954
	nop			;4955
	nop			;4956
	add hl,de		;4957
	rrca			;4958
	rrca			;4959
	dec de			;495a
	dec b			;495b
	nop			;495c
	nop			;495d
	nop			;495e
	nop			;495f
	nop			;4960
	nop			;4961
	ld bc,00016h		;4962
	nop			;4965
	ld l,h			;4966
	inc bc			;4967
	nop			;4968
	nop			;4969
	nop			;496a
	nop			;496b
	nop			;496c
	nop			;496d
	nop			;496e
	add hl,de		;496f
	ld (de),a		;4970
	rrca			;4971
	inc e			;4972
	dec b			;4973
	ld hl,(0000ah)		;4974
	nop			;4977
	ld hl,(0020ah)		;4978
	ld d,000h		;497b
	nop			;497d
	ld l,h			;497e
	inc bc			;497f
	ld h,c			;4980
	nop			;4981
	nop			;4982
	nop			;4983
	ld h,c			;4984
	nop			;4985
	nop			;4986
	add hl,de		;4987
	dec c			;4988
	rrca			;4989
	dec de			;498a
	dec b			;498b
	ld hl,(02a0ah)		;498c
	ld b,02ah		;498f
	ld a,(bc)		;4991
	ld bc,00016h		;4992
	nop			;4995
	ld l,h			;4996
	inc bc			;4997
	ld h,c			;4998
	nop			;4999
	ld h,c			;499a
	nop			;499b
	ld h,c			;499c
sub_499dh:
	nop			;499d
	nop			;499e
	add hl,de		;499f
	ld (de),a		;49a0
	rrca			;49a1
	ld e,005h		;49a2
	ld hl,(02a0ah)		;49a4
l49a7h:
	ld b,02ah		;49a7
	ld a,(bc)		;49a9
	inc bc			;49aa
	ld d,000h		;49ab
	nop			;49ad
	ld l,h			;49ae
	inc bc			;49af
l49b0h:
	ld h,c			;49b0
	nop			;49b1
	ld h,c			;49b2
	nop			;49b3
	ld h,c			;49b4
	nop			;49b5
	nop			;49b6
	add hl,de		;49b7
	inc d			;49b8
	rrca			;49b9
	inc e			;49ba
	dec b			;49bb
	ld hl,(02a0ah)		;49bc
	ld b,02ah		;49bf
	ld a,(bc)		;49c1
	ld bc,00016h		;49c2
	nop			;49c5
	ld l,h			;49c6
	inc bc			;49c7
	ld h,c			;49c8
	nop			;49c9
	ld h,c			;49ca
	nop			;49cb
	ld h,c			;49cc
	nop			;49cd
	nop			;49ce
	add hl,de		;49cf
	dec d			;49d0
	rrca			;49d1
	dec d			;49d2
	dec b			;49d3
	nop			;49d4
	nop			;49d5
	ld hl,(00006h)		;49d6
	nop			;49d9
	inc bc			;49da
	ld d,000h		;49db
	nop			;49dd
	ld l,h			;49de
	inc bc			;49df
	nop			;49e0
	nop			;49e1
	ld h,c			;49e2
	nop			;49e3
	nop			;49e4
	nop			;49e5
	nop			;49e6
	add hl,de		;49e7
	rla			;49e8
	rrca			;49e9
	rla			;49ea
	dec b			;49eb
	inc l			;49ec
	ld a,(bc)		;49ed
	nop			;49ee
	nop			;49ef
	inc l			;49f0
	ld a,(bc)		;49f1
	ld (bc),a		;49f2
	ld d,000h		;49f3
	nop			;49f5
	ld l,h			;49f6
	inc bc			;49f7
	ld h,c			;49f8
	nop			;49f9
	nop			;49fa
	nop			;49fb
	ld h,c			;49fc
	nop			;49fd
	nop			;49fe
	add hl,de		;49ff
	add hl,de		;4a00
	rrca			;4a01
	inc d			;4a02
	dec b			;4a03
	nop			;4a04
	nop			;4a05
	inc l			;4a06
	ld b,000h		;4a07
	nop			;4a09
	inc bc			;4a0a
	ld d,000h		;4a0b
	nop			;4a0d
	ld l,h			;4a0e
	inc bc			;4a0f
	nop			;4a10
	nop			;4a11
	ld h,c			;4a12
	nop			;4a13
	nop			;4a14
	nop			;4a15
	nop			;4a16
	add hl,de		;4a17
	dec c			;4a18
	rrca			;4a19
	dec d			;4a1a
	dec b			;4a1b
	nop			;4a1c
	nop			;4a1d
	nop			;4a1e
	nop			;4a1f
	nop			;4a20
	nop			;4a21
	ld bc,00016h		;4a22
	nop			;4a25
	ld l,h			;4a26
	inc bc			;4a27
	nop			;4a28
	nop			;4a29
	nop			;4a2a
	nop			;4a2b
	nop			;4a2c
	nop			;4a2d
	nop			;4a2e
	add hl,de		;4a2f
	inc d			;4a30
	rrca			;4a31
	rla			;4a32
	dec b			;4a33
	nop			;4a34
	nop			;4a35
	nop			;4a36
	nop			;4a37
	nop			;4a38
	nop			;4a39
	inc bc			;4a3a
	ld d,000h		;4a3b
	nop			;4a3d
	ld l,h			;4a3e
	inc bc			;4a3f
	nop			;4a40
	nop			;4a41
	nop			;4a42
	nop			;4a43
	nop			;4a44
	nop			;4a45
	nop			;4a46
	add hl,de		;4a47
	dec c			;4a48
	rrca			;4a49
l4a4ah:
	dec d			;4a4a
	dec b			;4a4b
	inc l			;4a4c
	ld a,(bc)		;4a4d
	nop			;4a4e
	nop			;4a4f
	inc l			;4a50
	ld a,(bc)		;4a51
	inc bc			;4a52
	ld d,000h		;4a53
	nop			;4a55
	ld l,h			;4a56
	inc bc			;4a57
	ld h,c			;4a58
	nop			;4a59
	nop			;4a5a
	nop			;4a5b
	ld h,c			;4a5c
	nop			;4a5d
	nop			;4a5e
	add hl,de		;4a5f
	dec d			;4a60
	rrca			;4a61
	add hl,de		;4a62
	dec b			;4a63
	ld sp,02c0ah		;4a64
	ld b,031h		;4a67
	ld a,(bc)		;4a69
	ld bc,00016h		;4a6a
	nop			;4a6d
	ld l,h			;4a6e
	inc bc			;4a6f
	ld h,c			;4a70
	nop			;4a71
	ld h,c			;4a72
	nop			;4a73
	ld h,c			;4a74
	nop			;4a75
	nop			;4a76
	add hl,de		;4a77
	dec c			;4a78
	rrca			;4a79
	dec d			;4a7a
	dec b			;4a7b
	ld sp,0310ah		;4a7c
	ld b,031h		;4a7f
	ld a,(bc)		;4a81
	ld bc,00016h		;4a82
	nop			;4a85
	ld l,h			;4a86
	inc bc			;4a87
	ld h,c			;4a88
	nop			;4a89
	ld h,c			;4a8a
	nop			;4a8b
	ld h,c			;4a8c
	nop			;4a8d
	nop			;4a8e
	add hl,de		;4a8f
	rla			;4a90
	rrca			;4a91
	rla			;4a92
	dec b			;4a93
	inc l			;4a94
	ld a,(bc)		;4a95
	ld sp,02c06h		;4a96
	ld a,(bc)		;4a99
	ld (bc),a		;4a9a
	ld d,000h		;4a9b
	nop			;4a9d
	ld l,h			;4a9e
	inc bc			;4a9f
	ld h,c			;4aa0
	nop			;4aa1
	ld h,c			;4aa2
	nop			;4aa3
	ld h,c			;4aa4
	nop			;4aa5
	nop			;4aa6
	add hl,de		;4aa7
	dec d			;4aa8
	rrca			;4aa9
	dec d			;4aaa
	dec b			;4aab
	dec h			;4aac
	ld a,(bc)		;4aad
	inc l			;4aae
	ld b,025h		;4aaf
	ld a,(bc)		;4ab1
	inc bc			;4ab2
	ld d,000h		;4ab3
	nop			;4ab5
	ld l,h			;4ab6
	inc bc			;4ab7
	ld h,c			;4ab8
	nop			;4ab9
	ld h,c			;4aba
	nop			;4abb
	ld h,c			;4abc
	nop			;4abd
	nop			;4abe
	add hl,de		;4abf
	inc d			;4ac0
	rrca			;4ac1
	inc e			;4ac2
	dec b			;4ac3
	ld e,00bh		;4ac4
	dec h			;4ac6
	ld b,01eh		;4ac7
	dec bc			;4ac9
	ld bc,00016h		;4aca
	nop			;4acd
	ld l,h			;4ace
	inc bc			;4acf
	ld h,e			;4ad0
	djnz l4b34h		;4ad1
	nop			;4ad3
	ld h,e			;4ad4
	djnz l4ad7h		;4ad5
l4ad7h:
	add hl,de		;4ad7
	dec d			;4ad8
	rrca			;4ad9
	dec de			;4ada
	dec b			;4adb
	jr nz,l4ae9h		;4adc
	ld e,006h		;4ade
	jr nz,l4aedh		;4ae0
	inc bc			;4ae2
	ld d,000h		;4ae3
	nop			;4ae5
	ld l,h			;4ae6
	inc bc			;4ae7
	ld h,c			;4ae8
l4ae9h:
	nop			;4ae9
	ld h,e			;4aea
	djnz l4b4eh		;4aeb
l4aedh:
	nop			;4aed
	nop			;4aee
	add hl,de		;4aef
	rla			;4af0
	rrca			;4af1
	ld e,005h		;4af2
	jr nz,l4b01h		;4af4
	jr nz,l4afeh		;4af6
	jr nz,l4b05h		;4af8
	ld bc,00016h		;4afa
	nop			;4afd
l4afeh:
	ld l,h			;4afe
	inc bc			;4aff
	ld h,c			;4b00
l4b01h:
	nop			;4b01
	ld h,c			;4b02
	nop			;4b03
	ld h,c			;4b04
l4b05h:
	nop			;4b05
	nop			;4b06
	add hl,de		;4b07
	add hl,de		;4b08
	rrca			;4b09
	inc e			;4b0a
	dec b			;4b0b
	jr nz,l4b19h		;4b0c
	jr nz,l4b16h		;4b0e
	jr nz,l4b1dh		;4b10
	inc bc			;4b12
	ld d,000h		;4b13
	nop			;4b15
l4b16h:
	ld l,h			;4b16
	inc bc			;4b17
	ld h,c			;4b18
l4b19h:
	nop			;4b19
	ld h,c			;4b1a
	nop			;4b1b
	ld h,c			;4b1c
l4b1dh:
	nop			;4b1d
	nop			;4b1e
	add hl,de		;4b1f
	dec c			;4b20
	rrca			;4b21
	jr nz,$+7		;4b22
	jr nz,l4b31h		;4b24
	jr nz,l4b2eh		;4b26
	jr nz,l4b35h		;4b28
	ld (bc),a		;4b2a
	ld d,000h		;4b2b
	nop			;4b2d
l4b2eh:
	ld l,h			;4b2e
	inc bc			;4b2f
	ld h,c			;4b30
l4b31h:
	nop			;4b31
	ld h,c			;4b32
	nop			;4b33
l4b34h:
	ld h,c			;4b34
l4b35h:
	nop			;4b35
	nop			;4b36
	add hl,de		;4b37
	djnz l4b49h		;4b38
	inc e			;4b3a
	dec b			;4b3b
	nop			;4b3c
	nop			;4b3d
	jr nz,l4b46h		;4b3e
	nop			;4b40
	nop			;4b41
	inc bc			;4b42
	ld d,000h		;4b43
	nop			;4b45
l4b46h:
	ld l,h			;4b46
	inc bc			;4b47
	nop			;4b48
l4b49h:
	nop			;4b49
	ld h,c			;4b4a
	nop			;4b4b
	nop			;4b4c
	nop			;4b4d
l4b4eh:
	nop			;4b4e
	add hl,de		;4b4f
	inc d			;4b50
	rrca			;4b51
	ld (00005h),hl		;4b52
	nop			;4b55
	nop			;4b56
	nop			;4b57
	nop			;4b58
	nop			;4b59
	ld bc,00016h		;4b5a
	nop			;4b5d
	ld l,h			;4b5e
	rlca			;4b5f
	nop			;4b60
	nop			;4b61
	nop			;4b62
	nop			;4b63
	nop			;4b64
	nop			;4b65
	nop			;4b66
	add hl,de		;4b67
	dec c			;4b68
	rrca			;4b69
	inc hl			;4b6a
	dec b			;4b6b
	jr nz,l4b79h		;4b6c
	nop			;4b6e
	nop			;4b6f
	jr nz,l4b7dh		;4b70
	inc bc			;4b72
	ld d,000h		;4b73
	nop			;4b75
	ld l,h			;4b76
	rlca			;4b77
	ld h,c			;4b78
l4b79h:
	nop			;4b79
	nop			;4b7a
	nop			;4b7b
	ld h,c			;4b7c
l4b7dh:
	nop			;4b7d
	nop			;4b7e
	add hl,de		;4b7f
	ld (de),a		;4b80
	rrca			;4b81
	inc e			;4b82
	dec b			;4b83
	jr nz,l4b91h		;4b84
	jr nz,l4b8eh		;4b86
	jr nz,l4b95h		;4b88
	inc bc			;4b8a
	ld d,000h		;4b8b
	nop			;4b8d
l4b8eh:
	ld l,h			;4b8e
	rlca			;4b8f
	ld h,c			;4b90
l4b91h:
	nop			;4b91
	ld h,c			;4b92
	nop			;4b93
	ld h,c			;4b94
l4b95h:
	nop			;4b95
	nop			;4b96
	add hl,de		;4b97
	ld de,01b0fh		;4b98
	dec b			;4b9b
	jr nz,l4ba9h		;4b9c
	jr nz,l4ba6h		;4b9e
	jr nz,l4badh		;4ba0
	inc bc			;4ba2
	ld d,000h		;4ba3
	nop			;4ba5
l4ba6h:
	ld l,h			;4ba6
	rlca			;4ba7
	ld h,c			;4ba8
l4ba9h:
	nop			;4ba9
	ld h,c			;4baa
	nop			;4bab
	ld h,c			;4bac
l4badh:
	nop			;4bad
	nop			;4bae
	add hl,de		;4baf
	rrca			;4bb0
	rrca			;4bb1
	add hl,de		;4bb2
	dec b			;4bb3
	dec h			;4bb4
	ld a,(bc)		;4bb5
	jr nz,l4bbeh		;4bb6
	dec h			;4bb8
	ld a,(bc)		;4bb9
	ld (bc),a		;4bba
	ld d,000h		;4bbb
	nop			;4bbd
l4bbeh:
	ld l,h			;4bbe
	rlca			;4bbf
	ld h,c			;4bc0
	nop			;4bc1
	ld h,c			;4bc2
	nop			;4bc3
	ld h,c			;4bc4
	nop			;4bc5
	nop			;4bc6
	add hl,de		;4bc7
	dec c			;4bc8
	rrca			;4bc9
	dec de			;4bca
	dec b			;4bcb
	ld hl,(0250ah)		;4bcc
	ld b,02ah		;4bcf
	ld a,(bc)		;4bd1
	ld bc,00018h		;4bd2
	nop			;4bd5
	ld l,h			;4bd6
	rlca			;4bd7
	nop			;4bd8
	nop			;4bd9
	nop			;4bda
	nop			;4bdb
	nop			;4bdc
	nop			;4bdd
	nop			;4bde
	add hl,de		;4bdf
	nop			;4be0
	nop			;4be1
	nop			;4be2
	nop			;4be3
	ld l,h			;4be4
	inc b			;4be5
	nop			;4be6
	nop			;4be7
	ld l,h			;4be8
	inc b			;4be9
	nop			;4bea
	ld a,(de)		;4beb
	nop			;4bec
	nop			;4bed
	nop			;4bee
	nop			;4bef
	nop			;4bf0
	nop			;4bf1
	nop			;4bf2
	nop			;4bf3
	nop			;4bf4
	nop			;4bf5
	nop			;4bf6
	nop			;4bf7
	nop			;4bf8
	nop			;4bf9
	nop			;4bfa
	nop			;4bfb
	nop			;4bfc
	nop			;4bfd
	nop			;4bfe
	nop			;4bff
	nop			;4c00
	nop			;4c01
	nop			;4c02
	nop			;4c03
	nop			;4c04
	nop			;4c05
	nop			;4c06
	nop			;4c07
	nop			;4c08
	nop			;4c09
	nop			;4c0a
	nop			;4c0b
	nop			;4c0c
	nop			;4c0d
	nop			;4c0e
	nop			;4c0f
	nop			;4c10
	nop			;4c11
	nop			;4c12
	nop			;4c13
	nop			;4c14
	nop			;4c15
	nop			;4c16
	nop			;4c17
	nop			;4c18
	nop			;4c19
	nop			;4c1a
	nop			;4c1b
	nop			;4c1c
	nop			;4c1d
	nop			;4c1e
	nop			;4c1f
	nop			;4c20
	nop			;4c21
	nop			;4c22
	nop			;4c23
	nop			;4c24
	nop			;4c25
	nop			;4c26
	nop			;4c27
	nop			;4c28
	nop			;4c29
	nop			;4c2a
	nop			;4c2b
	nop			;4c2c
	nop			;4c2d
	nop			;4c2e
	nop			;4c2f
	nop			;4c30
	nop			;4c31
	nop			;4c32
	nop			;4c33
	nop			;4c34
	nop			;4c35
	nop			;4c36
	nop			;4c37
	nop			;4c38
	nop			;4c39
	nop			;4c3a
	nop			;4c3b
	nop			;4c3c
	nop			;4c3d
	nop			;4c3e
	nop			;4c3f
	dec c			;4c40
	rrca			;4c41
	dec h			;4c42
	dec b			;4c43
	ld e,00bh		;4c44
	nop			;4c46
	nop			;4c47
	ld e,00bh		;4c48
	ld bc,00016h		;4c4a
	nop			;4c4d
	ld l,h			;4c4e
	inc bc			;4c4f
	ld h,e			;4c50
	djnz l4c53h		;4c51
l4c53h:
	nop			;4c53
	ld h,e			;4c54
	djnz l4c57h		;4c55
l4c57h:
	add hl,de		;4c57
	inc d			;4c58
	rrca			;4c59
	inc l			;4c5a
	dec b			;4c5b
	jr nz,l4c69h		;4c5c
	ld e,006h		;4c5e
	jr nz,l4c6dh		;4c60
	inc bc			;4c62
	ld d,000h		;4c63
	nop			;4c65
	ld l,h			;4c66
	inc bc			;4c67
	ld h,c			;4c68
l4c69h:
	nop			;4c69
	ld h,e			;4c6a
	djnz l4cceh		;4c6b
l4c6dh:
	nop			;4c6d
	nop			;4c6e
	add hl,de		;4c6f
	dec c			;4c70
	rrca			;4c71
	dec h			;4c72
	dec b			;4c73
	jr nz,l4c81h		;4c74
	jr nz,l4c7eh		;4c76
	jr nz,l4c85h		;4c78
	ld bc,00016h		;4c7a
	nop			;4c7d
l4c7eh:
	ld l,h			;4c7e
	inc bc			;4c7f
	ld h,c			;4c80
l4c81h:
	nop			;4c81
	ld h,c			;4c82
	nop			;4c83
	ld h,c			;4c84
l4c85h:
	nop			;4c85
	nop			;4c86
	add hl,de		;4c87
	dec d			;4c88
	rrca			;4c89
	dec l			;4c8a
	dec b			;4c8b
	jr nz,l4c99h		;4c8c
	jr nz,l4c96h		;4c8e
	jr nz,l4c9dh		;4c90
	inc bc			;4c92
	ld d,000h		;4c93
	nop			;4c95
l4c96h:
	ld l,h			;4c96
	inc bc			;4c97
	ld h,c			;4c98
l4c99h:
	nop			;4c99
	ld h,c			;4c9a
	nop			;4c9b
	ld h,c			;4c9c
l4c9dh:
	nop			;4c9d
	nop			;4c9e
	add hl,de		;4c9f
	dec c			;4ca0
	rrca			;4ca1
	dec h			;4ca2
	dec b			;4ca3
	jr nz,l4cb1h		;4ca4
	jr nz,l4caeh		;4ca6
	jr nz,l4cb5h		;4ca8
	ld (bc),a		;4caa
	ld d,000h		;4cab
	nop			;4cad
l4caeh:
	ld l,h			;4cae
	inc bc			;4caf
	ld h,c			;4cb0
l4cb1h:
	nop			;4cb1
	ld h,c			;4cb2
	nop			;4cb3
	ld h,c			;4cb4
l4cb5h:
	nop			;4cb5
	nop			;4cb6
	add hl,de		;4cb7
	ld d,00fh		;4cb8
	cpl			;4cba
	dec b			;4cbb
	nop			;4cbc
	nop			;4cbd
	jr nz,l4cc6h		;4cbe
	nop			;4cc0
	nop			;4cc1
	inc bc			;4cc2
	rla			;4cc3
	nop			;4cc4
	nop			;4cc5
l4cc6h:
	ld l,h			;4cc6
	inc bc			;4cc7
	ld h,d			;4cc8
	inc l			;4cc9
	nop			;4cca
	nop			;4ccb
	nop			;4ccc
	nop			;4ccd
l4cceh:
	nop			;4cce
	ld a,(de)		;4ccf
	nop			;4cd0
	nop			;4cd1
	nop			;4cd2
	nop			;4cd3
	nop			;4cd4
	nop			;4cd5
	nop			;4cd6
	nop			;4cd7
	nop			;4cd8
	nop			;4cd9
	nop			;4cda
	nop			;4cdb
	nop			;4cdc
	nop			;4cdd
	nop			;4cde
	nop			;4cdf
	nop			;4ce0
	nop			;4ce1
	nop			;4ce2
	nop			;4ce3
	nop			;4ce4
	nop			;4ce5
	nop			;4ce6
	nop			;4ce7
	nop			;4ce8
	nop			;4ce9
	nop			;4cea
	nop			;4ceb
	nop			;4cec
	nop			;4ced
	nop			;4cee
	nop			;4cef
	nop			;4cf0
	nop			;4cf1
	nop			;4cf2
	nop			;4cf3
	nop			;4cf4
	nop			;4cf5
	nop			;4cf6
	nop			;4cf7
	nop			;4cf8
	nop			;4cf9
	nop			;4cfa
	nop			;4cfb
	nop			;4cfc
	nop			;4cfd
	nop			;4cfe
	nop			;4cff
	dec b			;4d00
	rrca			;4d01
	ld hl,02508h		;4d02
	ex af,af'		;4d05
	ld h,d			;4d06
	inc (hl)		;4d07
	dec h			;4d08
	ld c,007h		;4d09
	ld d,062h		;4d0b
	ld d,06ch		;4d0d
	inc bc			;4d0f
	nop			;4d10
	nop			;4d11
	nop			;4d12
	nop			;4d13
	ld h,a			;4d14
	ex af,af'		;4d15
	nop			;4d16
	add hl,de		;4d17
	add hl,bc		;4d18
	dec bc			;4d19
	jr nz,$+10		;4d1a
	inc hl			;4d1c
	ex af,af'		;4d1d
	dec h			;4d1e
	ld c,06ch		;4d1f
	ex af,af'		;4d21
	rlca			;4d22
	ld d,000h		;4d23
	nop			;4d25
	ld l,h			;4d26
	inc bc			;4d27
	nop			;4d28
	nop			;4d29
	ld h,a			;4d2a
	ex af,af'		;4d2b
	nop			;4d2c
	nop			;4d2d
	nop			;4d2e
	add hl,de		;4d2f
	dec d			;4d30
	dec bc			;4d31
	ld e,008h		;4d32
	ld hl,l6c08h		;4d34
	ex af,af'		;4d37
	dec h			;4d38
	ld c,007h		;4d39
	ld d,000h		;4d3b
	nop			;4d3d
	nop			;4d3e
	nop			;4d3f
	nop			;4d40
	nop			;4d41
	nop			;4d42
	nop			;4d43
	nop			;4d44
	nop			;4d45
sub_4d46h:
	nop			;4d46
	add hl,de		;4d47
	djnz l4d55h		;4d48
	jr nz,$+10		;4d4a
	inc hl			;4d4c
	ex af,af'		;4d4d
	ld h,c			;4d4e
	nop			;4d4f
	daa			;4d50
	inc bc			;4d51
	ld bc,00016h		;4d52
l4d55h:
	nop			;4d55
	nop			;4d56
	nop			;4d57
	nop			;4d58
	nop			;4d59
	ld h,d			;4d5a
	ld de,0036bh		;4d5b
	nop			;4d5e
	add hl,de		;4d5f
	inc d			;4d60
	dec bc			;4d61
	inc e			;4d62
	ex af,af'		;4d63
	ld e,008h		;4d64
	ld hl,(l6b03h)		;4d66
	inc bc			;4d69
	rlca			;4d6a
	ld d,000h		;4d6b
	nop			;4d6d
	ld l,h			;4d6e
	inc bc			;4d6f
	nop			;4d70
	nop			;4d71
	ld l,e			;4d72
	inc bc			;4d73
	ld l,e			;4d74
	inc bc			;4d75
	nop			;4d76
	add hl,de		;4d77
	rla			;4d78
	dec bc			;4d79
	rla			;4d7a
	ex af,af'		;4d7b
	add hl,de		;4d7c
	ex af,af'		;4d7d
	ld l,e			;4d7e
	inc bc			;4d7f
	ld l,e			;4d80
	inc bc			;4d81
	ld bc,00017h		;4d82
	nop			;4d85
	ld h,d			;4d86
	dec de			;4d87
	ld l,d			;4d88
	ld (bc),a		;4d89
	ld l,e			;4d8a
	inc bc			;4d8b
	ld h,c			;4d8c
	nop			;4d8d
	nop			;4d8e
	ld a,(de)		;4d8f
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
l4d9ch:
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
l4da9h:
	nop			;4da9
	nop			;4daa
	nop			;4dab
	nop			;4dac
	nop			;4dad
	nop			;4dae
	nop			;4daf
	nop			;4db0
	nop			;4db1
	nop			;4db2
	nop			;4db3
	nop			;4db4
	nop			;4db5
	nop			;4db6
	nop			;4db7
	nop			;4db8
	nop			;4db9
	nop			;4dba
	nop			;4dbb
	nop			;4dbc
	nop			;4dbd
	nop			;4dbe
	nop			;4dbf
	ld h,c			;4dc0
	nop			;4dc1
	dec bc			;4dc2
	rrca			;4dc3
	ld h,c			;4dc4
	nop			;4dc5
	ld hl,(02a0dh)		;4dc6
	dec c			;4dc9
	rlca			;4dca
	inc d			;4dcb
	ld l,d			;4dcc
	dec b			;4dcd
	ld b,00fh		;4dce
	ld h,d			;4dd0
	inc l			;4dd1
	ld h,h			;4dd2
	djnz $+102		;4dd3
	djnz l4ddah		;4dd5
	nop			;4dd7
	rrca			;4dd8
	dec b			;4dd9
l4ddah:
	rrca			;4dda
	rrca			;4ddb
	nop			;4ddc
	nop			;4ddd
	ld (hl),008h		;4dde
	ld (hl),009h		;4de0
	ld (bc),a		;4de2
	nop			;4de3
	ld (de),a		;4de4
	dec b			;4de5
	ld (de),a		;4de6
	rrca			;4de7
	nop			;4de8
	nop			;4de9
	ld h,h			;4dea
	djnz l4e51h		;4deb
	djnz l4defh		;4ded
l4defh:
	nop			;4def
	rla			;4df0
	dec b			;4df1
	rla			;4df2
	rrca			;4df3
	nop			;4df4
	nop			;4df5
	jr c,l4e00h		;4df6
	jr c,l4e03h		;4df8
	inc bc			;4dfa
	nop			;4dfb
	dec c			;4dfc
	dec b			;4dfd
	dec c			;4dfe
	rrca			;4dff
l4e00h:
	nop			;4e00
	nop			;4e01
	ld h,h			;4e02
l4e03h:
	djnz l4e69h		;4e03
	djnz l4e0ah		;4e05
	nop			;4e07
	rrca			;4e08
	dec b			;4e09
l4e0ah:
	rrca			;4e0a
	rrca			;4e0b
	inc sp			;4e0c
	ld a,(bc)		;4e0d
	ld l,00ah		;4e0e
	daa			;4e10
	add hl,bc		;4e11
	ld bc,01200h		;4e12
	dec b			;4e15
	ld (de),a		;4e16
	rrca			;4e17
	ld h,a			;4e18
	ld (bc),a		;4e19
	ld h,a			;4e1a
	inc b			;4e1b
	nop			;4e1c
	nop			;4e1d
	nop			;4e1e
	nop			;4e1f
	ld d,005h		;4e20
	ld d,00fh		;4e22
	ld h,h			;4e24
	djnz l4e27h		;4e25
l4e27h:
	nop			;4e27
	ld l,d			;4e28
	ld bc,00003h		;4e29
	rla			;4e2c
	dec b			;4e2d
	rla			;4e2e
	rrca			;4e2f
	ld h,c			;4e30
	nop			;4e31
	ld h,c			;4e32
	nop			;4e33
	ld h,h			;4e34
	djnz l4e37h		;4e35
l4e37h:
	nop			;4e37
	ld d,005h		;4e38
	ld d,00fh		;4e3a
	ld h,d			;4e3c
	ld d,062h		;4e3d
	ld d,01bh		;4e3f
	add hl,bc		;4e41
	ld (bc),a		;4e42
	nop			;4e43
	inc d			;4e44
	dec b			;4e45
	inc d			;4e46
	rrca			;4e47
	dec de			;4e48
	add hl,bc		;4e49
	nop			;4e4a
	nop			;4e4b
	ld h,c			;4e4c
	nop			;4e4d
	nop			;4e4e
	nop			;4e4f
	rrca			;4e50
l4e51h:
	dec b			;4e51
	rrca			;4e52
	rrca			;4e53
	ld h,c			;4e54
	nop			;4e55
	nop			;4e56
	nop			;4e57
	rrca			;4e58
	add hl,bc		;4e59
	ld bc,00a00h		;4e5a
	dec b			;4e5d
	ld a,(bc)		;4e5e
	rrca			;4e5f
	rrca			;4e60
	add hl,bc		;4e61
	nop			;4e62
	nop			;4e63
	ld h,c			;4e64
	nop			;4e65
	nop			;4e66
	nop			;4e67
	rrca			;4e68
l4e69h:
	dec b			;4e69
	rrca			;4e6a
	rrca			;4e6b
	ld h,c			;4e6c
	nop			;4e6d
	nop			;4e6e
	nop			;4e6f
	dec de			;4e70
	add hl,bc		;4e71
	ld (bc),a		;4e72
	nop			;4e73
	dec c			;4e74
	dec b			;4e75
	dec c			;4e76
	rrca			;4e77
	dec de			;4e78
	add hl,bc		;4e79
	nop			;4e7a
	nop			;4e7b
	ld h,c			;4e7c
	nop			;4e7d
	inc bc			;4e7e
	nop			;4e7f
	inc d			;4e80
	dec b			;4e81
	inc d			;4e82
	rrca			;4e83
	ld h,c			;4e84
	nop			;4e85
	nop			;4e86
	nop			;4e87
	rrca			;4e88
	add hl,bc		;4e89
	inc bc			;4e8a
	nop			;4e8b
	rrca			;4e8c
	dec b			;4e8d
	rrca			;4e8e
	rrca			;4e8f
	rrca			;4e90
	add hl,bc		;4e91
	nop			;4e92
	nop			;4e93
	ld h,c			;4e94
	nop			;4e95
	nop			;4e96
	nop			;4e97
	ld (de),a		;4e98
	dec b			;4e99
	ld (de),a		;4e9a
	rrca			;4e9b
	ld h,c			;4e9c
	nop			;4e9d
	nop			;4e9e
	nop			;4e9f
	dec de			;4ea0
	add hl,bc		;4ea1
	ld bc,01400h		;4ea2
	dec b			;4ea5
	inc d			;4ea6
	rrca			;4ea7
	dec de			;4ea8
	add hl,bc		;4ea9
	nop			;4eaa
	nop			;4eab
	ld h,c			;4eac
	nop			;4ead
	nop			;4eae
	nop			;4eaf
	ld d,005h		;4eb0
	ld d,00fh		;4eb2
	ld h,c			;4eb4
	nop			;4eb5
	nop			;4eb6
	nop			;4eb7
	rrca			;4eb8
	add hl,bc		;4eb9
	inc bc			;4eba
	nop			;4ebb
	rla			;4ebc
	dec b			;4ebd
	rla			;4ebe
	rrca			;4ebf
	rrca			;4ec0
	add hl,bc		;4ec1
	nop			;4ec2
	nop			;4ec3
	ld h,c			;4ec4
	nop			;4ec5
	nop			;4ec6
	nop			;4ec7
	ld d,005h		;4ec8
	ld d,00fh		;4eca
	ld h,c			;4ecc
	nop			;4ecd
	nop			;4ece
	nop			;4ecf
	dec de			;4ed0
	add hl,bc		;4ed1
	ld (bc),a		;4ed2
	nop			;4ed3
	inc d			;4ed4
	dec b			;4ed5
	inc d			;4ed6
	rrca			;4ed7
	dec de			;4ed8
	add hl,bc		;4ed9
	ld h,d			;4eda
	ld de,00061h		;4edb
	nop			;4ede
	nop			;4edf
	dec bc			;4ee0
	dec b			;4ee1
	dec bc			;4ee2
	rrca			;4ee3
	ld h,c			;4ee4
	nop			;4ee5
	ld hl,(02a0fh)		;4ee6
	dec c			;4ee9
	ld bc,00600h		;4eea
	dec b			;4eed
	ld b,00fh		;4eee
	ld h,d			;4ef0
	inc l			;4ef1
	ld h,h			;4ef2
	djnz $+102		;4ef3
	djnz l4ef7h		;4ef5
l4ef7h:
	nop			;4ef7
	rrca			;4ef8
	dec b			;4ef9
	rrca			;4efa
	rrca			;4efb
	ld (hl),009h		;4efc
	ld (hl),008h		;4efe
	ld (hl),009h		;4f00
	ld (bc),a		;4f02
	nop			;4f03
	ld (de),a		;4f04
	dec b			;4f05
	ld (de),a		;4f06
	rrca			;4f07
	ld h,h			;4f08
	djnz l4f6fh		;4f09
	djnz l4f71h		;4f0b
	djnz l4f12h		;4f0d
	nop			;4f0f
	rla			;4f10
	dec b			;4f11
l4f12h:
	rla			;4f12
	rrca			;4f13
	jr c,l4f1fh		;4f14
	jr c,l4f20h		;4f16
	jr c,l4f23h		;4f18
	inc bc			;4f1a
	nop			;4f1b
	rrca			;4f1c
	dec b			;4f1d
	rrca			;4f1e
l4f1fh:
	rrca			;4f1f
l4f20h:
	ld h,h			;4f20
	djnz l4f87h		;4f21
l4f23h:
	djnz l4f89h		;4f23
	djnz l4f27h		;4f25
l4f27h:
	nop			;4f27
	dec c			;4f28
	dec b			;4f29
	dec c			;4f2a
	rrca			;4f2b
	inc sp			;4f2c
	ld a,(bc)		;4f2d
	ld l,00ah		;4f2e
	daa			;4f30
	ld a,(bc)		;4f31
	ld bc,00500h		;4f32
	dec b			;4f35
	dec b			;4f36
	rrca			;4f37
	nop			;4f38
	nop			;4f39
	nop			;4f3a
	nop			;4f3b
	nop			;4f3c
	nop			;4f3d
	nop			;4f3e
	nop			;4f3f
	ex af,af'		;4f40
	dec b			;4f41
	ex af,af'		;4f42
	rrca			;4f43
	ld h,h			;4f44
	djnz l4f47h		;4f45
l4f47h:
	nop			;4f47
	ld l,d			;4f48
	ld bc,00000h		;4f49
	dec c			;4f4c
	dec b			;4f4d
	dec c			;4f4e
	rrca			;4f4f
	ld h,c			;4f50
	nop			;4f51
	ld h,c			;4f52
	nop			;4f53
	ld h,h			;4f54
	djnz l4f57h		;4f55
l4f57h:
	nop			;4f57
	ld de,01105h		;4f58
l4f5bh:
	rrca			;4f5b
	ld h,d			;4f5c
	ld d,062h		;4f5d
	ld d,01bh		;4f5f
	add hl,bc		;4f61
	ld (bc),a		;4f62
	nop			;4f63
	inc d			;4f64
	dec b			;4f65
	inc d			;4f66
	rrca			;4f67
	dec de			;4f68
	add hl,bc		;4f69
	nop			;4f6a
	nop			;4f6b
	ld h,c			;4f6c
	nop			;4f6d
	nop			;4f6e
l4f6fh:
	nop			;4f6f
	rrca			;4f70
l4f71h:
	dec b			;4f71
	rrca			;4f72
	rrca			;4f73
	ld h,c			;4f74
	nop			;4f75
	nop			;4f76
	nop			;4f77
	rrca			;4f78
	add hl,bc		;4f79
	ld bc,00a00h		;4f7a
	dec b			;4f7d
	ld a,(bc)		;4f7e
	rrca			;4f7f
	rrca			;4f80
	add hl,bc		;4f81
	nop			;4f82
	nop			;4f83
	ld h,c			;4f84
	nop			;4f85
	nop			;4f86
l4f87h:
	nop			;4f87
	ld (de),a		;4f88
l4f89h:
	dec b			;4f89
	ld (de),a		;4f8a
	rrca			;4f8b
	ld h,c			;4f8c
	nop			;4f8d
	nop			;4f8e
	nop			;4f8f
	dec de			;4f90
	add hl,bc		;4f91
	ld (bc),a		;4f92
	nop			;4f93
	ld a,(bc)		;4f94
	dec b			;4f95
	ld a,(bc)		;4f96
	rrca			;4f97
	dec de			;4f98
	add hl,bc		;4f99
	nop			;4f9a
	nop			;4f9b
	ld h,c			;4f9c
	nop			;4f9d
	inc bc			;4f9e
	nop			;4f9f
	inc d			;4fa0
	dec b			;4fa1
	inc d			;4fa2
	rrca			;4fa3
	ld h,c			;4fa4
	nop			;4fa5
	nop			;4fa6
	nop			;4fa7
	rrca			;4fa8
	add hl,bc		;4fa9
	inc bc			;4faa
	nop			;4fab
	ld a,(bc)		;4fac
	dec b			;4fad
	ld a,(bc)		;4fae
	rrca			;4faf
	rrca			;4fb0
	add hl,bc		;4fb1
	nop			;4fb2
	nop			;4fb3
	ld h,c			;4fb4
	nop			;4fb5
	inc bc			;4fb6
	nop			;4fb7
	ld d,005h		;4fb8
	ld d,00fh		;4fba
	ld h,c			;4fbc
	nop			;4fbd
	nop			;4fbe
	nop			;4fbf
	dec de			;4fc0
	add hl,bc		;4fc1
	ld bc,00a00h		;4fc2
	dec b			;4fc5
	ld a,(bc)		;4fc6
	rrca			;4fc7
	dec de			;4fc8
	add hl,bc		;4fc9
	nop			;4fca
	nop			;4fcb
	ld h,c			;4fcc
	nop			;4fcd
	nop			;4fce
	nop			;4fcf
	rla			;4fd0
	dec b			;4fd1
	rla			;4fd2
	rrca			;4fd3
	ld h,c			;4fd4
	nop			;4fd5
	nop			;4fd6
	nop			;4fd7
	rrca			;4fd8
	add hl,bc		;4fd9
	inc bc			;4fda
	nop			;4fdb
	dec bc			;4fdc
	dec b			;4fdd
	dec bc			;4fde
	rrca			;4fdf
	rrca			;4fe0
	add hl,bc		;4fe1
	nop			;4fe2
	nop			;4fe3
	ld h,c			;4fe4
	nop			;4fe5
	nop			;4fe6
	nop			;4fe7
	add hl,de		;4fe8
	dec b			;4fe9
	add hl,de		;4fea
	rrca			;4feb
	ld h,c			;4fec
	nop			;4fed
	nop			;4fee
	nop			;4fef
	dec de			;4ff0
	add hl,bc		;4ff1
	ld (bc),a		;4ff2
	nop			;4ff3
	dec c			;4ff4
	dec b			;4ff5
	dec c			;4ff6
	rrca			;4ff7
	dec de			;4ff8
	add hl,bc		;4ff9
	ld h,d			;4ffa
	ld de,00061h		;4ffb
	nop			;4ffe
	nop			;4fff
	dec bc			;5000
	dec b			;5001
	dec bc			;5002
	rrca			;5003
	ld h,c			;5004
	nop			;5005
	cpl			;5006
	rrca			;5007
	cpl			;5008
	ld a,(bc)		;5009
	ld bc,00600h		;500a
	dec b			;500d
	ld b,00fh		;500e
	ld h,d			;5010
	inc l			;5011
	ld h,h			;5012
	djnz $+102		;5013
	djnz l501ah		;5015
	nop			;5017
	rrca			;5018
	dec b			;5019
l501ah:
	rrca			;501a
	rrca			;501b
	ld l,009h		;501c
	ld l,009h		;501e
	ld l,00ah		;5020
	ld (bc),a		;5022
	nop			;5023
	ld (de),a		;5024
	dec b			;5025
	ld (de),a		;5026
	rrca			;5027
	ld h,h			;5028
	add hl,bc		;5029
	ld h,h			;502a
	add hl,bc		;502b
	ld h,h			;502c
	add hl,bc		;502d
	nop			;502e
	nop			;502f
	rla			;5030
	dec b			;5031
	rla			;5032
	rrca			;5033
	inc l			;5034
	add hl,bc		;5035
	inc l			;5036
	add hl,bc		;5037
	inc l			;5038
	ld a,(bc)		;5039
	inc bc			;503a
	nop			;503b
	dec c			;503c
	dec b			;503d
	dec c			;503e
	rrca			;503f
	ld h,h			;5040
	djnz l50a7h		;5041
	djnz l50a9h		;5043
	djnz l504ah		;5045
	nop			;5047
	rrca			;5048
	dec b			;5049
l504ah:
	rrca			;504a
	rrca			;504b
	ld hl,(02a0ah)		;504c
	ld a,(bc)		;504f
	ld l,00ah		;5050
	ld bc,01200h		;5052
	dec b			;5055
	ld (de),a		;5056
	rrca			;5057
	ld h,a			;5058
	add hl,bc		;5059
	ld h,a			;505a
	inc bc			;505b
	ld h,a			;505c
	inc bc			;505d
	nop			;505e
	nop			;505f
	ld d,005h		;5060
	ld d,00fh		;5062
	ld h,h			;5064
	djnz l5067h		;5065
l5067h:
	nop			;5067
	ld l,d			;5068
	ld bc,00003h		;5069
	rla			;506c
	dec b			;506d
	rla			;506e
	rrca			;506f
	ld h,c			;5070
	nop			;5071
	ld h,c			;5072
	nop			;5073
	ld h,h			;5074
	djnz l5077h		;5075
l5077h:
	nop			;5077
	ld d,005h		;5078
	ld d,00fh		;507a
	ld h,d			;507c
	ld d,062h		;507d
	ld d,006h		;507f
	ex af,af'		;5081
	ld (bc),a		;5082
	nop			;5083
	inc d			;5084
	dec b			;5085
	inc d			;5086
	rrca			;5087
	ld (de),a		;5088
	ex af,af'		;5089
	nop			;508a
	nop			;508b
	ld h,c			;508c
	nop			;508d
	nop			;508e
	nop			;508f
	rrca			;5090
	dec b			;5091
	rrca			;5092
	rrca			;5093
	ld h,c			;5094
	nop			;5095
	nop			;5096
	nop			;5097
	ld (de),a		;5098
	ex af,af'		;5099
	ld bc,00a00h		;509a
	dec b			;509d
	ld a,(bc)		;509e
	rrca			;509f
	ld b,008h		;50a0
	nop			;50a2
	nop			;50a3
	ld h,c			;50a4
	nop			;50a5
	nop			;50a6
l50a7h:
	nop			;50a7
	rrca			;50a8
l50a9h:
	dec b			;50a9
	rrca			;50aa
	rrca			;50ab
	ld h,c			;50ac
	nop			;50ad
	nop			;50ae
	nop			;50af
	ld b,008h		;50b0
	ld (bc),a		;50b2
	nop			;50b3
	dec c			;50b4
	dec b			;50b5
	dec c			;50b6
	rrca			;50b7
	ld (de),a		;50b8
	ex af,af'		;50b9
	nop			;50ba
	nop			;50bb
	ld h,c			;50bc
	nop			;50bd
	inc bc			;50be
	nop			;50bf
	inc d			;50c0
	dec b			;50c1
	inc d			;50c2
	rrca			;50c3
	ld h,c			;50c4
	nop			;50c5
	nop			;50c6
	nop			;50c7
	ld (de),a		;50c8
	ex af,af'		;50c9
	inc bc			;50ca
	nop			;50cb
	rrca			;50cc
	dec b			;50cd
	rrca			;50ce
	rrca			;50cf
	ld (de),a		;50d0
	ex af,af'		;50d1
	nop			;50d2
	nop			;50d3
	ld h,c			;50d4
	nop			;50d5
	inc bc			;50d6
	nop			;50d7
	ld (de),a		;50d8
	dec b			;50d9
	ld (de),a		;50da
	rrca			;50db
	ld h,c			;50dc
	nop			;50dd
	nop			;50de
	nop			;50df
	ld b,008h		;50e0
	ld bc,01400h		;50e2
	dec b			;50e5
	inc d			;50e6
	rrca			;50e7
	ld b,008h		;50e8
	nop			;50ea
	nop			;50eb
	ld h,c			;50ec
	nop			;50ed
	inc bc			;50ee
	nop			;50ef
	ld d,005h		;50f0
	ld d,00fh		;50f2
	ld h,c			;50f4
	nop			;50f5
	nop			;50f6
	nop			;50f7
	ld (de),a		;50f8
	ex af,af'		;50f9
	inc bc			;50fa
	nop			;50fb
	rla			;50fc
	dec b			;50fd
	rla			;50fe
	rrca			;50ff
	ld (de),a		;5100
	ex af,af'		;5101
	nop			;5102
	nop			;5103
	ld h,c			;5104
	nop			;5105
	ld (bc),a		;5106
	nop			;5107
	ld d,005h		;5108
	ld d,00fh		;510a
	ld h,c			;510c
	nop			;510d
	nop			;510e
	nop			;510f
	ld b,008h		;5110
	ld (bc),a		;5112
	nop			;5113
	inc d			;5114
	dec b			;5115
	inc d			;5116
	rrca			;5117
	ld b,008h		;5118
	ld h,d			;511a
	ld de,00061h		;511b
	inc bc			;511e
	nop			;511f
	dec bc			;5120
	dec b			;5121
	dec bc			;5122
	rrca			;5123
	ld h,c			;5124
	nop			;5125
	cpl			;5126
	rrca			;5127
	cpl			;5128
	ld a,(bc)		;5129
	ld bc,00600h		;512a
	dec b			;512d
	ld b,00fh		;512e
	ld h,d			;5130
	inc l			;5131
	ld h,h			;5132
	djnz l5199h		;5133
	djnz l513ah		;5135
	nop			;5137
	rrca			;5138
	dec b			;5139
l513ah:
	rrca			;513a
	rrca			;513b
	ld l,009h		;513c
	ld l,009h		;513e
	ld l,00ah		;5140
	ld (bc),a		;5142
	nop			;5143
	ld (de),a		;5144
	dec b			;5145
	ld (de),a		;5146
	rrca			;5147
	ld h,h			;5148
	djnz $+102		;5149
	djnz l51b1h		;514b
	djnz l5152h		;514d
	nop			;514f
	rla			;5150
	dec b			;5151
l5152h:
	rla			;5152
	rrca			;5153
	inc l			;5154
	add hl,bc		;5155
	inc l			;5156
	add hl,bc		;5157
	inc l			;5158
	ld a,(bc)		;5159
	inc bc			;515a
	nop			;515b
	rrca			;515c
	dec b			;515d
	rrca			;515e
	rrca			;515f
	ld l,d			;5160
	ld bc,01064h		;5161
	ld h,h			;5164
	djnz l5168h		;5165
	nop			;5167
l5168h:
	dec c			;5168
	dec b			;5169
	dec c			;516a
	rrca			;516b
	daa			;516c
	ex af,af'		;516d
	daa			;516e
	ex af,af'		;516f
	daa			;5170
	ld a,(bc)		;5171
	ld (bc),a		;5172
	nop			;5173
	dec b			;5174
	dec b			;5175
	dec b			;5176
	rrca			;5177
	ld h,a			;5178
	inc b			;5179
	ld h,a			;517a
	dec b			;517b
	ld h,a			;517c
	ld (bc),a		;517d
	ld bc,00800h		;517e
	dec b			;5181
	ex af,af'		;5182
	rrca			;5183
	nop			;5184
	nop			;5185
	nop			;5186
	nop			;5187
	ld l,c			;5188
	ld bc,00003h		;5189
	dec c			;518c
	dec b			;518d
	dec c			;518e
	rrca			;518f
	nop			;5190
	nop			;5191
	nop			;5192
	nop			;5193
	nop			;5194
	nop			;5195
	ld bc,01100h		;5196
l5199h:
	dec b			;5199
	ld de,0000fh		;519a
	nop			;519d
	nop			;519e
	nop			;519f
	nop			;51a0
	nop			;51a1
	inc bc			;51a2
	nop			;51a3
	inc d			;51a4
	dec b			;51a5
	inc d			;51a6
	rrca			;51a7
	ld h,e			;51a8
	ld bc,00163h		;51a9
	ld h,e			;51ac
	ld bc,00001h		;51ad
	rla			;51b0
l51b1h:
	dec b			;51b1
	rla			;51b2
	rrca			;51b3
	ld h,e			;51b4
	inc bc			;51b5
	ld h,e			;51b6
	inc bc			;51b7
	ld h,e			;51b8
	inc bc			;51b9
	ld (bc),a		;51ba
	nop			;51bb
	ld d,005h		;51bc
	ld d,00fh		;51be
	add hl,hl		;51c0
	ex af,af'		;51c1
	add hl,hl		;51c2
	ex af,af'		;51c3
	add hl,hl		;51c4
	add hl,bc		;51c5
	ld bc,01400h		;51c6
	dec b			;51c9
	inc d			;51ca
	rrca			;51cb
	ld h,a			;51cc
	ld (bc),a		;51cd
	ld h,a			;51ce
	ld (bc),a		;51cf
	ld h,a			;51d0
	ld (bc),a		;51d1
	inc bc			;51d2
	nop			;51d3
	ld (de),a		;51d4
	dec b			;51d5
	ld (de),a		;51d6
	rrca			;51d7
	nop			;51d8
	nop			;51d9
	nop			;51da
	nop			;51db
	nop			;51dc
	nop			;51dd
	ld (bc),a		;51de
	nop			;51df
	djnz l51e7h		;51e0
	djnz $+17		;51e2
	nop			;51e4
	nop			;51e5
	nop			;51e6
l51e7h:
	nop			;51e7
	nop			;51e8
	nop			;51e9
	ld bc,00f00h		;51ea
	dec b			;51ed
	rrca			;51ee
	rrca			;51ef
	ld h,e			;51f0
	ld bc,00163h		;51f1
	ld h,e			;51f4
	ld bc,00003h		;51f5
	dec bc			;51f8
	dec b			;51f9
	dec bc			;51fa
	rrca			;51fb
	ld hl,(02a08h)		;51fc
	ex af,af'		;51ff
	ld hl,(00209h)		;5200
	nop			;5203
	rrca			;5204
	dec b			;5205
	rrca			;5206
	rrca			;5207
	ld h,a			;5208
	ld (bc),a		;5209
	ld h,a			;520a
	rlca			;520b
	ld h,a			;520c
	ld (bc),a		;520d
	nop			;520e
	nop			;520f
	ld l,c			;5210
	nop			;5211
	ld (de),a		;5212
	rrca			;5213
	nop			;5214
	nop			;5215
	nop			;5216
	nop			;5217
	nop			;5218
	nop			;5219
	ld (bc),a		;521a
	nop			;521b
	ld h,d			;521c
	dec de			;521d
	rla			;521e
	rrca			;521f
	ld h,e			;5220
	ld bc,00163h		;5221
	ld h,e			;5224
	ld bc,00002h		;5225
	add hl,de		;5228
	rrca			;5229
	ld h,c			;522a
	nop			;522b
	ld h,e			;522c
	inc b			;522d
	ld h,e			;522e
	ld (bc),a		;522f
	ld h,e			;5230
	ld (bc),a		;5231
	ld (bc),a		;5232
	nop			;5233
	inc e			;5234
	rrca			;5235
	ld h,d			;5236
	jr l5239h		;5237
l5239h:
	nop			;5239
	ld h,c			;523a
	nop			;523b
	nop			;523c
	nop			;523d
	ld (bc),a		;523e
	nop			;523f
	rst 38h			;5240
	rst 38h			;5241
	rst 38h			;5242
	rst 38h			;5243
	rst 38h			;5244
	rst 38h			;5245
	rst 38h			;5246
	rst 38h			;5247
	rst 38h			;5248
	rst 38h			;5249
	rst 38h			;524a
	rst 38h			;524b
	rst 38h			;524c
	rst 38h			;524d
	rst 38h			;524e
	rst 38h			;524f
	rst 38h			;5250
	rst 38h			;5251
	rst 38h			;5252
	rst 38h			;5253
	rst 38h			;5254
	rst 38h			;5255
	rst 38h			;5256
	rst 38h			;5257
	rst 38h			;5258
	rst 38h			;5259
	rst 38h			;525a
	rst 38h			;525b
	rst 38h			;525c
	rst 38h			;525d
	rst 38h			;525e
	rst 38h			;525f
	rst 38h			;5260
	rst 38h			;5261
	rst 38h			;5262
	rst 38h			;5263
	rst 38h			;5264
	rst 38h			;5265
	rst 38h			;5266
	rst 38h			;5267
	rst 38h			;5268
	rst 38h			;5269
	rst 38h			;526a
	rst 38h			;526b
	rst 38h			;526c
	rst 38h			;526d
	rst 38h			;526e
	rst 38h			;526f
	rst 38h			;5270
	rst 38h			;5271
	rst 38h			;5272
	rst 38h			;5273
	rst 38h			;5274
	rst 38h			;5275
	rst 38h			;5276
	rst 38h			;5277
	rst 38h			;5278
	rst 38h			;5279
	rst 38h			;527a
	rst 38h			;527b
	rst 38h			;527c
	rst 38h			;527d
	rst 38h			;527e
	rst 38h			;527f
	rst 38h			;5280
	rst 38h			;5281
	rst 38h			;5282
sub_5283h:
	rst 38h			;5283
	rst 38h			;5284
	rst 38h			;5285
	rst 38h			;5286
	rst 38h			;5287
	rst 38h			;5288
	rst 38h			;5289
	rst 38h			;528a
	rst 38h			;528b
	rst 38h			;528c
	rst 38h			;528d
	rst 38h			;528e
	rst 38h			;528f
	rst 38h			;5290
	rst 38h			;5291
	rst 38h			;5292
	rst 38h			;5293
	rst 38h			;5294
	rst 38h			;5295
	rst 38h			;5296
	rst 38h			;5297
	rst 38h			;5298
	rst 38h			;5299
	rst 38h			;529a
	rst 38h			;529b
	rst 38h			;529c
	rst 38h			;529d
	rst 38h			;529e
	rst 38h			;529f
	rst 38h			;52a0
	rst 38h			;52a1
	rst 38h			;52a2
	rst 38h			;52a3
	rst 38h			;52a4
	rst 38h			;52a5
	rst 38h			;52a6
	rst 38h			;52a7
	rst 38h			;52a8
l52a9h:
	rst 38h			;52a9
	rst 38h			;52aa
	rst 38h			;52ab
	rst 38h			;52ac
	rst 38h			;52ad
	rst 38h			;52ae
	rst 38h			;52af
	rst 38h			;52b0
	rst 38h			;52b1
	rst 38h			;52b2
	rst 38h			;52b3
	rst 38h			;52b4
	rst 38h			;52b5
	rst 38h			;52b6
	rst 38h			;52b7
	rst 38h			;52b8
	rst 38h			;52b9
	rst 38h			;52ba
	rst 38h			;52bb
	rst 38h			;52bc
	rst 38h			;52bd
	rst 38h			;52be
	rst 38h			;52bf
	rst 38h			;52c0
	rst 38h			;52c1
	rst 38h			;52c2
	rst 38h			;52c3
	rst 38h			;52c4
	rst 38h			;52c5
	rst 38h			;52c6
	rst 38h			;52c7
	rst 38h			;52c8
	rst 38h			;52c9
	rst 38h			;52ca
	rst 38h			;52cb
	rst 38h			;52cc
	rst 38h			;52cd
	rst 38h			;52ce
	rst 38h			;52cf
	rst 38h			;52d0
	rst 38h			;52d1
	rst 38h			;52d2
	rst 38h			;52d3
	rst 38h			;52d4
	rst 38h			;52d5
	rst 38h			;52d6
	rst 38h			;52d7
	rst 38h			;52d8
	rst 38h			;52d9
	rst 38h			;52da
	rst 38h			;52db
	rst 38h			;52dc
	rst 38h			;52dd
	rst 38h			;52de
	rst 38h			;52df
	rst 38h			;52e0
	rst 38h			;52e1
	rst 38h			;52e2
	rst 38h			;52e3
	rst 38h			;52e4
	rst 38h			;52e5
	rst 38h			;52e6
	rst 38h			;52e7
	rst 38h			;52e8
	rst 38h			;52e9
	rst 38h			;52ea
	rst 38h			;52eb
	rst 38h			;52ec
	rst 38h			;52ed
	rst 38h			;52ee
	rst 38h			;52ef
	rst 38h			;52f0
	rst 38h			;52f1
	rst 38h			;52f2
	rst 38h			;52f3
	rst 38h			;52f4
	rst 38h			;52f5
	rst 38h			;52f6
	rst 38h			;52f7
	rst 38h			;52f8
	rst 38h			;52f9
	rst 38h			;52fa
	rst 38h			;52fb
	rst 38h			;52fc
	rst 38h			;52fd
	rst 38h			;52fe
	rst 38h			;52ff
	rst 38h			;5300
	rst 38h			;5301
	rst 38h			;5302
	rst 38h			;5303
	rst 38h			;5304
	rst 38h			;5305
	rst 38h			;5306
	rst 38h			;5307
	rst 38h			;5308
	rst 38h			;5309
	rst 38h			;530a
	rst 38h			;530b
	rst 38h			;530c
	rst 38h			;530d
	rst 38h			;530e
	rst 38h			;530f
	rst 38h			;5310
	rst 38h			;5311
	rst 38h			;5312
	rst 38h			;5313
	rst 38h			;5314
	rst 38h			;5315
	rst 38h			;5316
	rst 38h			;5317
	rst 38h			;5318
	rst 38h			;5319
	rst 38h			;531a
	rst 38h			;531b
	rst 38h			;531c
	rst 38h			;531d
	rst 38h			;531e
	rst 38h			;531f
	rst 38h			;5320
	rst 38h			;5321
	rst 38h			;5322
	rst 38h			;5323
	rst 38h			;5324
	rst 38h			;5325
	rst 38h			;5326
	rst 38h			;5327
	rst 38h			;5328
	rst 38h			;5329
	rst 38h			;532a
	rst 38h			;532b
	rst 38h			;532c
	rst 38h			;532d
	rst 38h			;532e
	rst 38h			;532f
	rst 38h			;5330
	rst 38h			;5331
	rst 38h			;5332
	rst 38h			;5333
	rst 38h			;5334
	rst 38h			;5335
	rst 38h			;5336
	rst 38h			;5337
	rst 38h			;5338
	rst 38h			;5339
	rst 38h			;533a
	rst 38h			;533b
	rst 38h			;533c
	rst 38h			;533d
	rst 38h			;533e
	rst 38h			;533f
	rst 38h			;5340
	rst 38h			;5341
	rst 38h			;5342
	rst 38h			;5343
	rst 38h			;5344
	rst 38h			;5345
	rst 38h			;5346
	rst 38h			;5347
	rst 38h			;5348
	rst 38h			;5349
	rst 38h			;534a
	rst 38h			;534b
	rst 38h			;534c
	rst 38h			;534d
	rst 38h			;534e
	rst 38h			;534f
	rst 38h			;5350
	rst 38h			;5351
	rst 38h			;5352
	rst 38h			;5353
	rst 38h			;5354
	rst 38h			;5355
	rst 38h			;5356
	rst 38h			;5357
	rst 38h			;5358
	rst 38h			;5359
	rst 38h			;535a
	rst 38h			;535b
	rst 38h			;535c
	rst 38h			;535d
	rst 38h			;535e
	rst 38h			;535f
	rst 38h			;5360
	rst 38h			;5361
	rst 38h			;5362
	rst 38h			;5363
	rst 38h			;5364
	rst 38h			;5365
	rst 38h			;5366
	rst 38h			;5367
	rst 38h			;5368
	rst 38h			;5369
	rst 38h			;536a
	rst 38h			;536b
	rst 38h			;536c
	rst 38h			;536d
	rst 38h			;536e
	rst 38h			;536f
	rst 38h			;5370
	rst 38h			;5371
	rst 38h			;5372
	rst 38h			;5373
	rst 38h			;5374
	rst 38h			;5375
	rst 38h			;5376
	rst 38h			;5377
	rst 38h			;5378
	rst 38h			;5379
	rst 38h			;537a
	rst 38h			;537b
	rst 38h			;537c
	rst 38h			;537d
	rst 38h			;537e
	rst 38h			;537f
	rst 38h			;5380
	rst 38h			;5381
	rst 38h			;5382
	rst 38h			;5383
	rst 38h			;5384
	rst 38h			;5385
	rst 38h			;5386
	rst 38h			;5387
	rst 38h			;5388
	rst 38h			;5389
	rst 38h			;538a
	rst 38h			;538b
	rst 38h			;538c
	rst 38h			;538d
	rst 38h			;538e
	rst 38h			;538f
	rst 38h			;5390
	rst 38h			;5391
	rst 38h			;5392
	rst 38h			;5393
	rst 38h			;5394
	rst 38h			;5395
	rst 38h			;5396
	rst 38h			;5397
	rst 38h			;5398
	rst 38h			;5399
	rst 38h			;539a
	rst 38h			;539b
	rst 38h			;539c
	rst 38h			;539d
	rst 38h			;539e
	rst 38h			;539f
	rst 38h			;53a0
	rst 38h			;53a1
	rst 38h			;53a2
	rst 38h			;53a3
	rst 38h			;53a4
	rst 38h			;53a5
	rst 38h			;53a6
	rst 38h			;53a7
	rst 38h			;53a8
	rst 38h			;53a9
	rst 38h			;53aa
	rst 38h			;53ab
	rst 38h			;53ac
	rst 38h			;53ad
	rst 38h			;53ae
	rst 38h			;53af
	rst 38h			;53b0
	rst 38h			;53b1
	rst 38h			;53b2
	rst 38h			;53b3
	rst 38h			;53b4
	rst 38h			;53b5
	rst 38h			;53b6
	rst 38h			;53b7
	rst 38h			;53b8
	rst 38h			;53b9
	rst 38h			;53ba
	rst 38h			;53bb
	rst 38h			;53bc
	rst 38h			;53bd
	rst 38h			;53be
	rst 38h			;53bf
	rst 38h			;53c0
	rst 38h			;53c1
	rst 38h			;53c2
	rst 38h			;53c3
	rst 38h			;53c4
	rst 38h			;53c5
	rst 38h			;53c6
	rst 38h			;53c7
	rst 38h			;53c8
	rst 38h			;53c9
	rst 38h			;53ca
	rst 38h			;53cb
	rst 38h			;53cc
	rst 38h			;53cd
	rst 38h			;53ce
	rst 38h			;53cf
	rst 38h			;53d0
	rst 38h			;53d1
	rst 38h			;53d2
	rst 38h			;53d3
	rst 38h			;53d4
	rst 38h			;53d5
	rst 38h			;53d6
	rst 38h			;53d7
	rst 38h			;53d8
	rst 38h			;53d9
	rst 38h			;53da
	rst 38h			;53db
	rst 38h			;53dc
	rst 38h			;53dd
	rst 38h			;53de
	rst 38h			;53df
	rst 38h			;53e0
	rst 38h			;53e1
	rst 38h			;53e2
	rst 38h			;53e3
	rst 38h			;53e4
	rst 38h			;53e5
	rst 38h			;53e6
	rst 38h			;53e7
	rst 38h			;53e8
	rst 38h			;53e9
	rst 38h			;53ea
	rst 38h			;53eb
	rst 38h			;53ec
	rst 38h			;53ed
	rst 38h			;53ee
	rst 38h			;53ef
	rst 38h			;53f0
	rst 38h			;53f1
	rst 38h			;53f2
	rst 38h			;53f3
	rst 38h			;53f4
	rst 38h			;53f5
	rst 38h			;53f6
	rst 38h			;53f7
	rst 38h			;53f8
	rst 38h			;53f9
	rst 38h			;53fa
	rst 38h			;53fb
	rst 38h			;53fc
	rst 38h			;53fd
	rst 38h			;53fe
	rst 38h			;53ff
	rst 38h			;5400
	rst 38h			;5401
	rst 38h			;5402
	rst 38h			;5403
	rst 38h			;5404
	rst 38h			;5405
	rst 38h			;5406
	rst 38h			;5407
	rst 38h			;5408
	rst 38h			;5409
	rst 38h			;540a
	rst 38h			;540b
	rst 38h			;540c
	rst 38h			;540d
	rst 38h			;540e
	rst 38h			;540f
	rst 38h			;5410
	rst 38h			;5411
	rst 38h			;5412
	rst 38h			;5413
	rst 38h			;5414
	rst 38h			;5415
	rst 38h			;5416
	rst 38h			;5417
	rst 38h			;5418
	rst 38h			;5419
	rst 38h			;541a
	rst 38h			;541b
	rst 38h			;541c
	rst 38h			;541d
	rst 38h			;541e
	rst 38h			;541f
	rst 38h			;5420
	rst 38h			;5421
	rst 38h			;5422
	rst 38h			;5423
	rst 38h			;5424
	rst 38h			;5425
	rst 38h			;5426
	rst 38h			;5427
	rst 38h			;5428
	rst 38h			;5429
	rst 38h			;542a
	rst 38h			;542b
	rst 38h			;542c
	rst 38h			;542d
	rst 38h			;542e
	rst 38h			;542f
	rst 38h			;5430
	rst 38h			;5431
	rst 38h			;5432
	rst 38h			;5433
	rst 38h			;5434
	rst 38h			;5435
	rst 38h			;5436
	rst 38h			;5437
	rst 38h			;5438
	rst 38h			;5439
	rst 38h			;543a
	rst 38h			;543b
	rst 38h			;543c
	rst 38h			;543d
	rst 38h			;543e
	rst 38h			;543f
	rst 38h			;5440
	rst 38h			;5441
	rst 38h			;5442
	rst 38h			;5443
	rst 38h			;5444
	rst 38h			;5445
	rst 38h			;5446
	rst 38h			;5447
	rst 38h			;5448
	rst 38h			;5449
	rst 38h			;544a
	rst 38h			;544b
	rst 38h			;544c
	rst 38h			;544d
	rst 38h			;544e
	rst 38h			;544f
	rst 38h			;5450
	rst 38h			;5451
	rst 38h			;5452
	rst 38h			;5453
	rst 38h			;5454
	rst 38h			;5455
	rst 38h			;5456
	rst 38h			;5457
	rst 38h			;5458
	rst 38h			;5459
	rst 38h			;545a
	rst 38h			;545b
	rst 38h			;545c
	rst 38h			;545d
	rst 38h			;545e
	rst 38h			;545f
	rst 38h			;5460
	rst 38h			;5461
	rst 38h			;5462
	rst 38h			;5463
	rst 38h			;5464
	rst 38h			;5465
	rst 38h			;5466
	rst 38h			;5467
	rst 38h			;5468
	rst 38h			;5469
	rst 38h			;546a
	rst 38h			;546b
	rst 38h			;546c
	rst 38h			;546d
	rst 38h			;546e
	rst 38h			;546f
	rst 38h			;5470
	rst 38h			;5471
	rst 38h			;5472
	rst 38h			;5473
	rst 38h			;5474
	rst 38h			;5475
	rst 38h			;5476
	rst 38h			;5477
	rst 38h			;5478
	rst 38h			;5479
	rst 38h			;547a
	rst 38h			;547b
	rst 38h			;547c
	rst 38h			;547d
	rst 38h			;547e
	rst 38h			;547f
	rst 38h			;5480
	rst 38h			;5481
	rst 38h			;5482
	rst 38h			;5483
	rst 38h			;5484
	rst 38h			;5485
	rst 38h			;5486
	rst 38h			;5487
	rst 38h			;5488
	rst 38h			;5489
	rst 38h			;548a
	rst 38h			;548b
	rst 38h			;548c
	rst 38h			;548d
	rst 38h			;548e
	rst 38h			;548f
	rst 38h			;5490
	rst 38h			;5491
	rst 38h			;5492
	rst 38h			;5493
	rst 38h			;5494
	rst 38h			;5495
	rst 38h			;5496
	rst 38h			;5497
	rst 38h			;5498
	rst 38h			;5499
	rst 38h			;549a
	rst 38h			;549b
	rst 38h			;549c
	rst 38h			;549d
	rst 38h			;549e
	rst 38h			;549f
	rst 38h			;54a0
	rst 38h			;54a1
	rst 38h			;54a2
	rst 38h			;54a3
	rst 38h			;54a4
	rst 38h			;54a5
	rst 38h			;54a6
	rst 38h			;54a7
	rst 38h			;54a8
	rst 38h			;54a9
	rst 38h			;54aa
	rst 38h			;54ab
	rst 38h			;54ac
	rst 38h			;54ad
	rst 38h			;54ae
	rst 38h			;54af
	rst 38h			;54b0
	rst 38h			;54b1
	rst 38h			;54b2
	rst 38h			;54b3
	rst 38h			;54b4
	rst 38h			;54b5
	rst 38h			;54b6
	rst 38h			;54b7
	rst 38h			;54b8
	rst 38h			;54b9
	rst 38h			;54ba
	rst 38h			;54bb
	rst 38h			;54bc
	rst 38h			;54bd
	rst 38h			;54be
	rst 38h			;54bf
	rst 38h			;54c0
	rst 38h			;54c1
	rst 38h			;54c2
	rst 38h			;54c3
	rst 38h			;54c4
	rst 38h			;54c5
	rst 38h			;54c6
	rst 38h			;54c7
	rst 38h			;54c8
	rst 38h			;54c9
	rst 38h			;54ca
	rst 38h			;54cb
	rst 38h			;54cc
	rst 38h			;54cd
	rst 38h			;54ce
	rst 38h			;54cf
	rst 38h			;54d0
	rst 38h			;54d1
	rst 38h			;54d2
	rst 38h			;54d3
	rst 38h			;54d4
	rst 38h			;54d5
	rst 38h			;54d6
	rst 38h			;54d7
	rst 38h			;54d8
	rst 38h			;54d9
sub_54dah:
	rst 38h			;54da
	rst 38h			;54db
	rst 38h			;54dc
	rst 38h			;54dd
	rst 38h			;54de
	rst 38h			;54df
	rst 38h			;54e0
	rst 38h			;54e1
	rst 38h			;54e2
	rst 38h			;54e3
	rst 38h			;54e4
	rst 38h			;54e5
	rst 38h			;54e6
	rst 38h			;54e7
	rst 38h			;54e8
	rst 38h			;54e9
	rst 38h			;54ea
	rst 38h			;54eb
	rst 38h			;54ec
	rst 38h			;54ed
	rst 38h			;54ee
	rst 38h			;54ef
	rst 38h			;54f0
	rst 38h			;54f1
	rst 38h			;54f2
	rst 38h			;54f3
	rst 38h			;54f4
	rst 38h			;54f5
	rst 38h			;54f6
	rst 38h			;54f7
	rst 38h			;54f8
	rst 38h			;54f9
	rst 38h			;54fa
	rst 38h			;54fb
	rst 38h			;54fc
	rst 38h			;54fd
	rst 38h			;54fe
	rst 38h			;54ff
	rst 38h			;5500
	rst 38h			;5501
	rst 38h			;5502
	rst 38h			;5503
	rst 38h			;5504
	rst 38h			;5505
	rst 38h			;5506
	rst 38h			;5507
	rst 38h			;5508
	rst 38h			;5509
	rst 38h			;550a
	rst 38h			;550b
	rst 38h			;550c
	rst 38h			;550d
	rst 38h			;550e
	rst 38h			;550f
	rst 38h			;5510
	rst 38h			;5511
	rst 38h			;5512
	rst 38h			;5513
	rst 38h			;5514
	rst 38h			;5515
	rst 38h			;5516
	rst 38h			;5517
	rst 38h			;5518
	rst 38h			;5519
	rst 38h			;551a
	rst 38h			;551b
	rst 38h			;551c
	rst 38h			;551d
	rst 38h			;551e
	rst 38h			;551f
	rst 38h			;5520
	rst 38h			;5521
	rst 38h			;5522
	rst 38h			;5523
	rst 38h			;5524
	rst 38h			;5525
	rst 38h			;5526
	rst 38h			;5527
	rst 38h			;5528
	rst 38h			;5529
	rst 38h			;552a
	rst 38h			;552b
	rst 38h			;552c
	rst 38h			;552d
	rst 38h			;552e
	rst 38h			;552f
	rst 38h			;5530
	rst 38h			;5531
	rst 38h			;5532
	rst 38h			;5533
	rst 38h			;5534
	rst 38h			;5535
	rst 38h			;5536
	rst 38h			;5537
	rst 38h			;5538
	rst 38h			;5539
	rst 38h			;553a
	rst 38h			;553b
	rst 38h			;553c
	rst 38h			;553d
	rst 38h			;553e
	rst 38h			;553f
	rst 38h			;5540
	rst 38h			;5541
	rst 38h			;5542
	rst 38h			;5543
	rst 38h			;5544
	rst 38h			;5545
	rst 38h			;5546
	rst 38h			;5547
	rst 38h			;5548
	rst 38h			;5549
	rst 38h			;554a
	rst 38h			;554b
	rst 38h			;554c
	rst 38h			;554d
	rst 38h			;554e
	rst 38h			;554f
	rst 38h			;5550
	rst 38h			;5551
	rst 38h			;5552
	rst 38h			;5553
	rst 38h			;5554
	rst 38h			;5555
	rst 38h			;5556
	rst 38h			;5557
	rst 38h			;5558
	rst 38h			;5559
	rst 38h			;555a
	rst 38h			;555b
	rst 38h			;555c
	rst 38h			;555d
	rst 38h			;555e
	rst 38h			;555f
	rst 38h			;5560
	rst 38h			;5561
	rst 38h			;5562
	rst 38h			;5563
	rst 38h			;5564
	rst 38h			;5565
	rst 38h			;5566
	rst 38h			;5567
	rst 38h			;5568
	rst 38h			;5569
	rst 38h			;556a
	rst 38h			;556b
	rst 38h			;556c
	rst 38h			;556d
	rst 38h			;556e
	rst 38h			;556f
	rst 38h			;5570
	rst 38h			;5571
	rst 38h			;5572
	rst 38h			;5573
	rst 38h			;5574
	rst 38h			;5575
	rst 38h			;5576
	rst 38h			;5577
	rst 38h			;5578
	rst 38h			;5579
	rst 38h			;557a
	rst 38h			;557b
	rst 38h			;557c
	rst 38h			;557d
	rst 38h			;557e
	rst 38h			;557f
	rst 38h			;5580
	rst 38h			;5581
	rst 38h			;5582
	rst 38h			;5583
	rst 38h			;5584
	rst 38h			;5585
	rst 38h			;5586
	rst 38h			;5587
	rst 38h			;5588
	rst 38h			;5589
	rst 38h			;558a
	rst 38h			;558b
	rst 38h			;558c
	rst 38h			;558d
	rst 38h			;558e
	rst 38h			;558f
	rst 38h			;5590
	rst 38h			;5591
sub_5592h:
	rst 38h			;5592
	rst 38h			;5593
	rst 38h			;5594
	rst 38h			;5595
	rst 38h			;5596
	rst 38h			;5597
	rst 38h			;5598
	rst 38h			;5599
	rst 38h			;559a
	rst 38h			;559b
	rst 38h			;559c
	rst 38h			;559d
	rst 38h			;559e
	rst 38h			;559f
	rst 38h			;55a0
	rst 38h			;55a1
	rst 38h			;55a2
	rst 38h			;55a3
	rst 38h			;55a4
	rst 38h			;55a5
	rst 38h			;55a6
	rst 38h			;55a7
	rst 38h			;55a8
	rst 38h			;55a9
	rst 38h			;55aa
	rst 38h			;55ab
	rst 38h			;55ac
	rst 38h			;55ad
	rst 38h			;55ae
	rst 38h			;55af
	rst 38h			;55b0
	rst 38h			;55b1
	rst 38h			;55b2
	rst 38h			;55b3
	rst 38h			;55b4
	rst 38h			;55b5
	rst 38h			;55b6
	rst 38h			;55b7
	rst 38h			;55b8
	rst 38h			;55b9
	rst 38h			;55ba
	rst 38h			;55bb
	rst 38h			;55bc
	rst 38h			;55bd
	rst 38h			;55be
	rst 38h			;55bf
	rst 38h			;55c0
	rst 38h			;55c1
	rst 38h			;55c2
	rst 38h			;55c3
	rst 38h			;55c4
	rst 38h			;55c5
	rst 38h			;55c6
	rst 38h			;55c7
	rst 38h			;55c8
	rst 38h			;55c9
	rst 38h			;55ca
	rst 38h			;55cb
	rst 38h			;55cc
	rst 38h			;55cd
	rst 38h			;55ce
	rst 38h			;55cf
	rst 38h			;55d0
	rst 38h			;55d1
	rst 38h			;55d2
	rst 38h			;55d3
	rst 38h			;55d4
	rst 38h			;55d5
	rst 38h			;55d6
	rst 38h			;55d7
	rst 38h			;55d8
	rst 38h			;55d9
	rst 38h			;55da
	rst 38h			;55db
	rst 38h			;55dc
	rst 38h			;55dd
	rst 38h			;55de
	rst 38h			;55df
	rst 38h			;55e0
	rst 38h			;55e1
	rst 38h			;55e2
	rst 38h			;55e3
	rst 38h			;55e4
	rst 38h			;55e5
	rst 38h			;55e6
	rst 38h			;55e7
	rst 38h			;55e8
	rst 38h			;55e9
	rst 38h			;55ea
	rst 38h			;55eb
	rst 38h			;55ec
	rst 38h			;55ed
	rst 38h			;55ee
	rst 38h			;55ef
	rst 38h			;55f0
	rst 38h			;55f1
	rst 38h			;55f2
	rst 38h			;55f3
	rst 38h			;55f4
	rst 38h			;55f5
	rst 38h			;55f6
	rst 38h			;55f7
	rst 38h			;55f8
	rst 38h			;55f9
	rst 38h			;55fa
	rst 38h			;55fb
	rst 38h			;55fc
	rst 38h			;55fd
	rst 38h			;55fe
	rst 38h			;55ff
	rst 38h			;5600
	rst 38h			;5601
	rst 38h			;5602
	rst 38h			;5603
	rst 38h			;5604
	rst 38h			;5605
	rst 38h			;5606
	rst 38h			;5607
	rst 38h			;5608
	rst 38h			;5609
	rst 38h			;560a
	rst 38h			;560b
	rst 38h			;560c
	rst 38h			;560d
	rst 38h			;560e
	rst 38h			;560f
	rst 38h			;5610
	rst 38h			;5611
	rst 38h			;5612
	rst 38h			;5613
	rst 38h			;5614
	rst 38h			;5615
	rst 38h			;5616
	rst 38h			;5617
	rst 38h			;5618
	rst 38h			;5619
	rst 38h			;561a
	rst 38h			;561b
	rst 38h			;561c
	rst 38h			;561d
	rst 38h			;561e
	rst 38h			;561f
	rst 38h			;5620
	rst 38h			;5621
	rst 38h			;5622
	rst 38h			;5623
	rst 38h			;5624
	rst 38h			;5625
	rst 38h			;5626
	rst 38h			;5627
	rst 38h			;5628
	rst 38h			;5629
	rst 38h			;562a
	rst 38h			;562b
	rst 38h			;562c
	rst 38h			;562d
	rst 38h			;562e
	rst 38h			;562f
	rst 38h			;5630
	rst 38h			;5631
	rst 38h			;5632
	rst 38h			;5633
	rst 38h			;5634
	rst 38h			;5635
	rst 38h			;5636
	rst 38h			;5637
	rst 38h			;5638
	rst 38h			;5639
	rst 38h			;563a
	rst 38h			;563b
	rst 38h			;563c
	rst 38h			;563d
	rst 38h			;563e
	rst 38h			;563f
	rst 38h			;5640
	rst 38h			;5641
	rst 38h			;5642
	rst 38h			;5643
	rst 38h			;5644
	rst 38h			;5645
	rst 38h			;5646
	rst 38h			;5647
	rst 38h			;5648
	rst 38h			;5649
	rst 38h			;564a
	rst 38h			;564b
	rst 38h			;564c
	rst 38h			;564d
	rst 38h			;564e
	rst 38h			;564f
	rst 38h			;5650
	rst 38h			;5651
	rst 38h			;5652
	rst 38h			;5653
	rst 38h			;5654
	rst 38h			;5655
	rst 38h			;5656
	rst 38h			;5657
	rst 38h			;5658
	rst 38h			;5659
	rst 38h			;565a
	rst 38h			;565b
	rst 38h			;565c
	rst 38h			;565d
	rst 38h			;565e
	rst 38h			;565f
	rst 38h			;5660
	rst 38h			;5661
	rst 38h			;5662
	rst 38h			;5663
	rst 38h			;5664
	rst 38h			;5665
	rst 38h			;5666
	rst 38h			;5667
	rst 38h			;5668
	rst 38h			;5669
	rst 38h			;566a
	rst 38h			;566b
	rst 38h			;566c
	rst 38h			;566d
	rst 38h			;566e
	rst 38h			;566f
	rst 38h			;5670
	rst 38h			;5671
	rst 38h			;5672
	rst 38h			;5673
	rst 38h			;5674
	rst 38h			;5675
	rst 38h			;5676
	rst 38h			;5677
	rst 38h			;5678
	rst 38h			;5679
	rst 38h			;567a
	rst 38h			;567b
	rst 38h			;567c
	rst 38h			;567d
	rst 38h			;567e
	rst 38h			;567f
	rst 38h			;5680
	rst 38h			;5681
	rst 38h			;5682
	rst 38h			;5683
	rst 38h			;5684
sub_5685h:
	rst 38h			;5685
	rst 38h			;5686
	rst 38h			;5687
	rst 38h			;5688
	rst 38h			;5689
	rst 38h			;568a
	rst 38h			;568b
	rst 38h			;568c
	rst 38h			;568d
	rst 38h			;568e
	rst 38h			;568f
	rst 38h			;5690
	rst 38h			;5691
	rst 38h			;5692
	rst 38h			;5693
	rst 38h			;5694
	rst 38h			;5695
	rst 38h			;5696
	rst 38h			;5697
	rst 38h			;5698
	rst 38h			;5699
	rst 38h			;569a
	rst 38h			;569b
	rst 38h			;569c
	rst 38h			;569d
	rst 38h			;569e
	rst 38h			;569f
	rst 38h			;56a0
	rst 38h			;56a1
	rst 38h			;56a2
	rst 38h			;56a3
	rst 38h			;56a4
	rst 38h			;56a5
	rst 38h			;56a6
	rst 38h			;56a7
	rst 38h			;56a8
	rst 38h			;56a9
	rst 38h			;56aa
	rst 38h			;56ab
	rst 38h			;56ac
	rst 38h			;56ad
	rst 38h			;56ae
	rst 38h			;56af
	rst 38h			;56b0
	rst 38h			;56b1
	rst 38h			;56b2
	rst 38h			;56b3
	rst 38h			;56b4
	rst 38h			;56b5
	rst 38h			;56b6
	rst 38h			;56b7
	rst 38h			;56b8
	rst 38h			;56b9
	rst 38h			;56ba
	rst 38h			;56bb
	rst 38h			;56bc
	rst 38h			;56bd
	rst 38h			;56be
	rst 38h			;56bf
	rst 38h			;56c0
	rst 38h			;56c1
	rst 38h			;56c2
	rst 38h			;56c3
	rst 38h			;56c4
	rst 38h			;56c5
	rst 38h			;56c6
	rst 38h			;56c7
	rst 38h			;56c8
	rst 38h			;56c9
	rst 38h			;56ca
	rst 38h			;56cb
	rst 38h			;56cc
	rst 38h			;56cd
	rst 38h			;56ce
	rst 38h			;56cf
	rst 38h			;56d0
	rst 38h			;56d1
	rst 38h			;56d2
	rst 38h			;56d3
	rst 38h			;56d4
	rst 38h			;56d5
	rst 38h			;56d6
	rst 38h			;56d7
	rst 38h			;56d8
	rst 38h			;56d9
	rst 38h			;56da
	rst 38h			;56db
	rst 38h			;56dc
	rst 38h			;56dd
	rst 38h			;56de
	rst 38h			;56df
	rst 38h			;56e0
	rst 38h			;56e1
	rst 38h			;56e2
	rst 38h			;56e3
	rst 38h			;56e4
	rst 38h			;56e5
	rst 38h			;56e6
	rst 38h			;56e7
	rst 38h			;56e8
	rst 38h			;56e9
	rst 38h			;56ea
	rst 38h			;56eb
	rst 38h			;56ec
	rst 38h			;56ed
	rst 38h			;56ee
	rst 38h			;56ef
	rst 38h			;56f0
	rst 38h			;56f1
	rst 38h			;56f2
	rst 38h			;56f3
	rst 38h			;56f4
	rst 38h			;56f5
	rst 38h			;56f6
	rst 38h			;56f7
	rst 38h			;56f8
	rst 38h			;56f9
	rst 38h			;56fa
	rst 38h			;56fb
	rst 38h			;56fc
	rst 38h			;56fd
	rst 38h			;56fe
	rst 38h			;56ff
	rst 38h			;5700
	rst 38h			;5701
	rst 38h			;5702
	rst 38h			;5703
	rst 38h			;5704
	rst 38h			;5705
	rst 38h			;5706
	rst 38h			;5707
	rst 38h			;5708
	rst 38h			;5709
	rst 38h			;570a
	rst 38h			;570b
	rst 38h			;570c
	rst 38h			;570d
	rst 38h			;570e
	rst 38h			;570f
	rst 38h			;5710
	rst 38h			;5711
	rst 38h			;5712
	rst 38h			;5713
	rst 38h			;5714
	rst 38h			;5715
	rst 38h			;5716
	rst 38h			;5717
	rst 38h			;5718
	rst 38h			;5719
	rst 38h			;571a
	rst 38h			;571b
	rst 38h			;571c
	rst 38h			;571d
	rst 38h			;571e
	rst 38h			;571f
	rst 38h			;5720
	rst 38h			;5721
	rst 38h			;5722
	rst 38h			;5723
	rst 38h			;5724
	rst 38h			;5725
	rst 38h			;5726
	rst 38h			;5727
	rst 38h			;5728
	rst 38h			;5729
	rst 38h			;572a
	rst 38h			;572b
	rst 38h			;572c
	rst 38h			;572d
	rst 38h			;572e
	rst 38h			;572f
	rst 38h			;5730
	rst 38h			;5731
	rst 38h			;5732
	rst 38h			;5733
	rst 38h			;5734
	rst 38h			;5735
	rst 38h			;5736
	rst 38h			;5737
	rst 38h			;5738
	rst 38h			;5739
	rst 38h			;573a
	rst 38h			;573b
	rst 38h			;573c
	rst 38h			;573d
	rst 38h			;573e
	rst 38h			;573f
	rst 38h			;5740
	rst 38h			;5741
	rst 38h			;5742
	rst 38h			;5743
	rst 38h			;5744
	rst 38h			;5745
	rst 38h			;5746
	rst 38h			;5747
	rst 38h			;5748
	rst 38h			;5749
	rst 38h			;574a
	rst 38h			;574b
	rst 38h			;574c
	rst 38h			;574d
	rst 38h			;574e
	rst 38h			;574f
	rst 38h			;5750
	rst 38h			;5751
	rst 38h			;5752
	rst 38h			;5753
	rst 38h			;5754
	rst 38h			;5755
	rst 38h			;5756
	rst 38h			;5757
	rst 38h			;5758
	rst 38h			;5759
	rst 38h			;575a
	rst 38h			;575b
	rst 38h			;575c
	rst 38h			;575d
	rst 38h			;575e
	rst 38h			;575f
	rst 38h			;5760
	rst 38h			;5761
	rst 38h			;5762
	rst 38h			;5763
	rst 38h			;5764
	rst 38h			;5765
	rst 38h			;5766
	rst 38h			;5767
	rst 38h			;5768
	rst 38h			;5769
	rst 38h			;576a
	rst 38h			;576b
	rst 38h			;576c
	rst 38h			;576d
	rst 38h			;576e
	rst 38h			;576f
	rst 38h			;5770
	rst 38h			;5771
	rst 38h			;5772
	rst 38h			;5773
	rst 38h			;5774
	rst 38h			;5775
	rst 38h			;5776
	rst 38h			;5777
	rst 38h			;5778
	rst 38h			;5779
	rst 38h			;577a
	rst 38h			;577b
	rst 38h			;577c
	rst 38h			;577d
	rst 38h			;577e
	rst 38h			;577f
	rst 38h			;5780
	rst 38h			;5781
	rst 38h			;5782
	rst 38h			;5783
	rst 38h			;5784
	rst 38h			;5785
	rst 38h			;5786
	rst 38h			;5787
	rst 38h			;5788
	rst 38h			;5789
	rst 38h			;578a
	rst 38h			;578b
	rst 38h			;578c
	rst 38h			;578d
	rst 38h			;578e
	rst 38h			;578f
	rst 38h			;5790
	rst 38h			;5791
	rst 38h			;5792
	rst 38h			;5793
	rst 38h			;5794
	rst 38h			;5795
	rst 38h			;5796
	rst 38h			;5797
	rst 38h			;5798
	rst 38h			;5799
	rst 38h			;579a
	rst 38h			;579b
	rst 38h			;579c
	rst 38h			;579d
	rst 38h			;579e
	rst 38h			;579f
	rst 38h			;57a0
	rst 38h			;57a1
	rst 38h			;57a2
	rst 38h			;57a3
	rst 38h			;57a4
	rst 38h			;57a5
	rst 38h			;57a6
	rst 38h			;57a7
	rst 38h			;57a8
	rst 38h			;57a9
	rst 38h			;57aa
	rst 38h			;57ab
	rst 38h			;57ac
	rst 38h			;57ad
	rst 38h			;57ae
	rst 38h			;57af
	rst 38h			;57b0
	rst 38h			;57b1
	rst 38h			;57b2
	rst 38h			;57b3
	rst 38h			;57b4
	rst 38h			;57b5
	rst 38h			;57b6
	rst 38h			;57b7
	rst 38h			;57b8
	rst 38h			;57b9
	rst 38h			;57ba
	rst 38h			;57bb
	rst 38h			;57bc
	rst 38h			;57bd
	rst 38h			;57be
	rst 38h			;57bf
	rst 38h			;57c0
	rst 38h			;57c1
	rst 38h			;57c2
	rst 38h			;57c3
	rst 38h			;57c4
	rst 38h			;57c5
	rst 38h			;57c6
	rst 38h			;57c7
	rst 38h			;57c8
	rst 38h			;57c9
	rst 38h			;57ca
	rst 38h			;57cb
	rst 38h			;57cc
	rst 38h			;57cd
	rst 38h			;57ce
	rst 38h			;57cf
	rst 38h			;57d0
	rst 38h			;57d1
	rst 38h			;57d2
	rst 38h			;57d3
	rst 38h			;57d4
	rst 38h			;57d5
	rst 38h			;57d6
	rst 38h			;57d7
	rst 38h			;57d8
	rst 38h			;57d9
	rst 38h			;57da
	rst 38h			;57db
	rst 38h			;57dc
	rst 38h			;57dd
	rst 38h			;57de
	rst 38h			;57df
	rst 38h			;57e0
	rst 38h			;57e1
	rst 38h			;57e2
	rst 38h			;57e3
	rst 38h			;57e4
	rst 38h			;57e5
	rst 38h			;57e6
	rst 38h			;57e7
	rst 38h			;57e8
	rst 38h			;57e9
	rst 38h			;57ea
	rst 38h			;57eb
	rst 38h			;57ec
	rst 38h			;57ed
	rst 38h			;57ee
	rst 38h			;57ef
	rst 38h			;57f0
	rst 38h			;57f1
	rst 38h			;57f2
	rst 38h			;57f3
	rst 38h			;57f4
	rst 38h			;57f5
	rst 38h			;57f6
	rst 38h			;57f7
	rst 38h			;57f8
	rst 38h			;57f9
	rst 38h			;57fa
	rst 38h			;57fb
	rst 38h			;57fc
	rst 38h			;57fd
	rst 38h			;57fe
	rst 38h			;57ff
	rst 38h			;5800
	rst 38h			;5801
	rst 38h			;5802
	rst 38h			;5803
	rst 38h			;5804
	rst 38h			;5805
	rst 38h			;5806
	rst 38h			;5807
	rst 38h			;5808
	rst 38h			;5809
	rst 38h			;580a
	rst 38h			;580b
	rst 38h			;580c
	rst 38h			;580d
	rst 38h			;580e
	rst 38h			;580f
	rst 38h			;5810
	rst 38h			;5811
	rst 38h			;5812
	rst 38h			;5813
	rst 38h			;5814
	rst 38h			;5815
	rst 38h			;5816
	rst 38h			;5817
	rst 38h			;5818
	rst 38h			;5819
	rst 38h			;581a
	rst 38h			;581b
	rst 38h			;581c
	rst 38h			;581d
	rst 38h			;581e
	rst 38h			;581f
	rst 38h			;5820
	rst 38h			;5821
	rst 38h			;5822
	rst 38h			;5823
	rst 38h			;5824
	rst 38h			;5825
	rst 38h			;5826
	rst 38h			;5827
	rst 38h			;5828
	rst 38h			;5829
	rst 38h			;582a
	rst 38h			;582b
	rst 38h			;582c
	rst 38h			;582d
	rst 38h			;582e
	rst 38h			;582f
	rst 38h			;5830
	rst 38h			;5831
	rst 38h			;5832
	rst 38h			;5833
	rst 38h			;5834
	rst 38h			;5835
	rst 38h			;5836
	rst 38h			;5837
	rst 38h			;5838
	rst 38h			;5839
	rst 38h			;583a
	rst 38h			;583b
	rst 38h			;583c
	rst 38h			;583d
	rst 38h			;583e
	rst 38h			;583f
	rst 38h			;5840
	rst 38h			;5841
	rst 38h			;5842
	rst 38h			;5843
	rst 38h			;5844
	rst 38h			;5845
	rst 38h			;5846
	rst 38h			;5847
	rst 38h			;5848
	rst 38h			;5849
	rst 38h			;584a
	rst 38h			;584b
	rst 38h			;584c
	rst 38h			;584d
	rst 38h			;584e
	rst 38h			;584f
	rst 38h			;5850
	rst 38h			;5851
	rst 38h			;5852
	rst 38h			;5853
	rst 38h			;5854
	rst 38h			;5855
	rst 38h			;5856
	rst 38h			;5857
	rst 38h			;5858
	rst 38h			;5859
	rst 38h			;585a
	rst 38h			;585b
	rst 38h			;585c
	rst 38h			;585d
	rst 38h			;585e
	rst 38h			;585f
	rst 38h			;5860
	rst 38h			;5861
	rst 38h			;5862
	rst 38h			;5863
	rst 38h			;5864
	rst 38h			;5865
	rst 38h			;5866
	rst 38h			;5867
	rst 38h			;5868
	rst 38h			;5869
	rst 38h			;586a
	rst 38h			;586b
	rst 38h			;586c
	rst 38h			;586d
	rst 38h			;586e
	rst 38h			;586f
	rst 38h			;5870
	rst 38h			;5871
	rst 38h			;5872
	rst 38h			;5873
	rst 38h			;5874
	rst 38h			;5875
	rst 38h			;5876
	rst 38h			;5877
	rst 38h			;5878
	rst 38h			;5879
	rst 38h			;587a
	rst 38h			;587b
	rst 38h			;587c
	rst 38h			;587d
	rst 38h			;587e
	rst 38h			;587f
	rst 38h			;5880
	rst 38h			;5881
	rst 38h			;5882
	rst 38h			;5883
	rst 38h			;5884
	rst 38h			;5885
	rst 38h			;5886
	rst 38h			;5887
	rst 38h			;5888
	rst 38h			;5889
	rst 38h			;588a
	rst 38h			;588b
	rst 38h			;588c
	rst 38h			;588d
	rst 38h			;588e
	rst 38h			;588f
	rst 38h			;5890
	rst 38h			;5891
	rst 38h			;5892
	rst 38h			;5893
	rst 38h			;5894
	rst 38h			;5895
	rst 38h			;5896
	rst 38h			;5897
	rst 38h			;5898
	rst 38h			;5899
	rst 38h			;589a
	rst 38h			;589b
	rst 38h			;589c
	rst 38h			;589d
	rst 38h			;589e
	rst 38h			;589f
	rst 38h			;58a0
	rst 38h			;58a1
	rst 38h			;58a2
	rst 38h			;58a3
	rst 38h			;58a4
	rst 38h			;58a5
	rst 38h			;58a6
	rst 38h			;58a7
	rst 38h			;58a8
	rst 38h			;58a9
	rst 38h			;58aa
	rst 38h			;58ab
	rst 38h			;58ac
	rst 38h			;58ad
	rst 38h			;58ae
	rst 38h			;58af
	rst 38h			;58b0
	rst 38h			;58b1
	rst 38h			;58b2
	rst 38h			;58b3
	rst 38h			;58b4
	rst 38h			;58b5
	rst 38h			;58b6
	rst 38h			;58b7
	rst 38h			;58b8
	rst 38h			;58b9
	rst 38h			;58ba
	rst 38h			;58bb
	rst 38h			;58bc
	rst 38h			;58bd
	rst 38h			;58be
	rst 38h			;58bf
	rst 38h			;58c0
	rst 38h			;58c1
	rst 38h			;58c2
	rst 38h			;58c3
	rst 38h			;58c4
	rst 38h			;58c5
	rst 38h			;58c6
	rst 38h			;58c7
	rst 38h			;58c8
	rst 38h			;58c9
	rst 38h			;58ca
	rst 38h			;58cb
	rst 38h			;58cc
	rst 38h			;58cd
	rst 38h			;58ce
	rst 38h			;58cf
	rst 38h			;58d0
	rst 38h			;58d1
	rst 38h			;58d2
	rst 38h			;58d3
	rst 38h			;58d4
	rst 38h			;58d5
	rst 38h			;58d6
	rst 38h			;58d7
	rst 38h			;58d8
	rst 38h			;58d9
	rst 38h			;58da
	rst 38h			;58db
	rst 38h			;58dc
	rst 38h			;58dd
	rst 38h			;58de
	rst 38h			;58df
	rst 38h			;58e0
	rst 38h			;58e1
	rst 38h			;58e2
	rst 38h			;58e3
	rst 38h			;58e4
	rst 38h			;58e5
	rst 38h			;58e6
	rst 38h			;58e7
	rst 38h			;58e8
	rst 38h			;58e9
	rst 38h			;58ea
	rst 38h			;58eb
	rst 38h			;58ec
	rst 38h			;58ed
	rst 38h			;58ee
	rst 38h			;58ef
	rst 38h			;58f0
	rst 38h			;58f1
	rst 38h			;58f2
	rst 38h			;58f3
	rst 38h			;58f4
	rst 38h			;58f5
	rst 38h			;58f6
	rst 38h			;58f7
	rst 38h			;58f8
	rst 38h			;58f9
	rst 38h			;58fa
	rst 38h			;58fb
	rst 38h			;58fc
	rst 38h			;58fd
	rst 38h			;58fe
	rst 38h			;58ff
	rst 38h			;5900
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
l5966h:
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
l5acdh:
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
l5e08h:
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
	jr nz,l6049h		;6010
	jr nz,$+47		;6012
	jr nz,l6066h		;6014
	ld l,h			;6016
	ld h,c			;6017
	ld l,(hl)		;6018
	ld h,l			;6019
	ld (hl),h		;601a
	jr nz,$+81		;601b
	ld (hl),e		;601d
	ld l,c			;601e
	ld (hl),d		;601f
	ld l,c			;6020
	ld (hl),e		;6021
	jr nz,l6044h		;6022
	jr nz,l6046h		;6024
	jr nz,l6048h		;6026
	jr nz,l604ah		;6028
	jr nz,l604ch		;602a
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
	jr nz,l6091h		;6042
l6044h:
	ld d,l			;6044
	ld d,e			;6045
l6046h:
	ld c,c			;6046
	ld c,(hl)		;6047
l6048h:
	ld d,e			;6048
l6049h:
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
	inc bc			;6050
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
	ld c,003h		;605f
	inc b			;6061
l6062h:
	dec b			;6062
	ld b,007h		;6063
	ex af,af'		;6065
l6066h:
	add hl,bc		;6066
	ld a,(bc)		;6067
	dec bc			;6068
	inc c			;6069
	dec c			;606a
	ld c,003h		;606b
	inc b			;606d
	dec b			;606e
	ld b,007h		;606f
	ex af,af'		;6071
	add hl,bc		;6072
	ld a,(bc)		;6073
	dec bc			;6074
	inc c			;6075
	dec c			;6076
	ld c,00fh		;6077
	ld de,01012h		;6079
	ld de,01012h		;607c
	ld de,00013h		;607f
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
l6109h:
	nop			;6109
	nop			;610a
	nop			;610b
	nop			;610c
l610dh:
	nop			;610d
	nop			;610e
l610fh:
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
	dec d			;6151
	rrca			;6152
	rrca			;6153
	rrca			;6154
	rrca			;6155
	rrca			;6156
	daa			;6157
	ld sp,00d02h		;6158
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
	ld l,d			;61c0
	ld (bc),a		;61c1
	ex af,af'		;61c2
	dec c			;61c3
	nop			;61c4
	nop			;61c5
	ld l,d			;61c6
	ld bc,00169h		;61c7
	ld bc,00f16h		;61ca
	rrca			;61cd
	ld l,c			;61ce
	ld (bc),a		;61cf
	nop			;61d0
	nop			;61d1
	nop			;61d2
	nop			;61d3
	nop			;61d4
	nop			;61d5
	nop			;61d6
	dec d			;61d7
	inc d			;61d8
	rrca			;61d9
	inc d			;61da
	dec c			;61db
	nop			;61dc
	nop			;61dd
	nop			;61de
	nop			;61df
	nop			;61e0
	nop			;61e1
	nop			;61e2
	ld d,008h		;61e3
	rrca			;61e5
	ex af,af'		;61e6
	dec c			;61e7
	dec h			;61e8
	ld a,(bc)		;61e9
	ld hl,(0000fh)		;61ea
	nop			;61ed
	ld a,(bc)		;61ee
	dec d			;61ef
	rrca			;61f0
	rrca			;61f1
	rrca			;61f2
	dec c			;61f3
	ld h,c			;61f4
	nop			;61f5
	ld h,c			;61f6
	nop			;61f7
	dec h			;61f8
	ex af,af'		;61f9
	ld (bc),a		;61fa
	ld d,014h		;61fb
	rrca			;61fd
	inc d			;61fe
	dec c			;61ff
	dec h			;6200
	ld a,(bc)		;6201
	ld hl,(l610fh)		;6202
	nop			;6205
	ld (bc),a		;6206
	dec d			;6207
	ex af,af'		;6208
	rrca			;6209
	ex af,af'		;620a
	dec c			;620b
l620ch:
	ld h,c			;620c
	nop			;620d
	ld h,c			;620e
	nop			;620f
	dec h			;6210
	ex af,af'		;6211
	ld bc,00f16h		;6212
	rrca			;6215
	rrca			;6216
	dec c			;6217
	nop			;6218
	nop			;6219
	nop			;621a
	nop			;621b
	ld h,c			;621c
	nop			;621d
	nop			;621e
	dec d			;621f
	inc d			;6220
	rrca			;6221
	inc d			;6222
	dec c			;6223
	nop			;6224
	nop			;6225
	nop			;6226
	nop			;6227
	nop			;6228
	nop			;6229
	nop			;622a
	ld d,008h		;622b
	rrca			;622d
	ex af,af'		;622e
	dec c			;622f
	daa			;6230
	ld a,(bc)		;6231
	inc l			;6232
	rrca			;6233
	nop			;6234
	nop			;6235
	ld (bc),a		;6236
	dec d			;6237
	rrca			;6238
	rrca			;6239
	rrca			;623a
	dec c			;623b
	ld h,c			;623c
	nop			;623d
	ld h,c			;623e
	nop			;623f
	daa			;6240
	ex af,af'		;6241
	ld a,(bc)		;6242
	ld d,014h		;6243
	rrca			;6245
	inc d			;6246
	dec c			;6247
	daa			;6248
	ld a,(bc)		;6249
	inc l			;624a
	rrca			;624b
	ld h,c			;624c
	nop			;624d
	ld (bc),a		;624e
	dec d			;624f
	ex af,af'		;6250
	rrca			;6251
	ex af,af'		;6252
	dec c			;6253
	ld h,c			;6254
	nop			;6255
	ld h,c			;6256
	nop			;6257
	daa			;6258
	ex af,af'		;6259
	ld bc,00f16h		;625a
	rrca			;625d
	rrca			;625e
	dec c			;625f
	nop			;6260
	nop			;6261
	nop			;6262
	nop			;6263
	ld h,c			;6264
	nop			;6265
	nop			;6266
	dec d			;6267
	inc d			;6268
	rrca			;6269
	inc d			;626a
	dec c			;626b
	nop			;626c
	nop			;626d
	nop			;626e
	nop			;626f
	nop			;6270
	nop			;6271
	nop			;6272
	ld d,008h		;6273
	rrca			;6275
	ex af,af'		;6276
	dec c			;6277
	dec h			;6278
	ld a,(bc)		;6279
	ld hl,(0000fh)		;627a
	nop			;627d
	ld (bc),a		;627e
	dec d			;627f
	rrca			;6280
	rrca			;6281
	rrca			;6282
	dec c			;6283
	ld h,c			;6284
	nop			;6285
	ld h,c			;6286
	nop			;6287
	dec h			;6288
	ex af,af'		;6289
	ld (bc),a		;628a
	ld d,014h		;628b
	rrca			;628d
	inc d			;628e
	dec c			;628f
	dec h			;6290
	ld a,(bc)		;6291
	ld hl,(l610fh)		;6292
	nop			;6295
	ld (bc),a		;6296
	dec d			;6297
	ex af,af'		;6298
	rrca			;6299
	ex af,af'		;629a
	dec c			;629b
	ld h,c			;629c
	nop			;629d
	ld h,c			;629e
	nop			;629f
	dec h			;62a0
	ex af,af'		;62a1
	ld bc,00f16h		;62a2
	rrca			;62a5
	rrca			;62a6
	dec c			;62a7
	nop			;62a8
	nop			;62a9
	nop			;62aa
	nop			;62ab
	ld h,c			;62ac
	nop			;62ad
	nop			;62ae
	dec d			;62af
	inc d			;62b0
	rrca			;62b1
	inc d			;62b2
	dec c			;62b3
	nop			;62b4
	nop			;62b5
	nop			;62b6
	nop			;62b7
	nop			;62b8
	nop			;62b9
	nop			;62ba
	ld d,008h		;62bb
	rrca			;62bd
	ex af,af'		;62be
	dec c			;62bf
	jr z,l62cch		;62c0
	inc l			;62c2
	dec bc			;62c3
	nop			;62c4
	nop			;62c5
	ld (bc),a		;62c6
	dec d			;62c7
	rrca			;62c8
	rrca			;62c9
	rrca			;62ca
	dec c			;62cb
l62cch:
	ld h,c			;62cc
	nop			;62cd
	ld h,c			;62ce
	nop			;62cf
	jr z,$+10		;62d0
	ld a,(bc)		;62d2
	ld d,014h		;62d3
	rrca			;62d5
	inc d			;62d6
	dec c			;62d7
	ld hl,(02d0ah)		;62d8
	dec bc			;62db
	ld h,c			;62dc
	nop			;62dd
	ld a,(bc)		;62de
	dec d			;62df
	dec c			;62e0
	rrca			;62e1
	dec c			;62e2
	dec c			;62e3
	ld h,c			;62e4
	nop			;62e5
	ld h,c			;62e6
	nop			;62e7
	ld hl,(00108h)		;62e8
	ld d,019h		;62eb
	rrca			;62ed
	add hl,de		;62ee
	dec c			;62ef
	nop			;62f0
	nop			;62f1
	nop			;62f2
	nop			;62f3
	ld h,c			;62f4
	nop			;62f5
	nop			;62f6
	dec d			;62f7
	ld bc,0010fh		;62f8
	dec c			;62fb
	nop			;62fc
	nop			;62fd
	nop			;62fe
	nop			;62ff
	nop			;6300
	nop			;6301
	nop			;6302
	ld d,00dh		;6303
	rrca			;6305
	dec c			;6306
	dec c			;6307
	ld sp,02c0ah		;6308
	rrca			;630b
	nop			;630c
	nop			;630d
	ld a,(bc)		;630e
	dec d			;630f
	add hl,de		;6310
	rrca			;6311
	add hl,de		;6312
	dec c			;6313
	ld h,c			;6314
	nop			;6315
	ld h,c			;6316
	nop			;6317
	ld sp,00208h		;6318
	ld d,001h		;631b
	rrca			;631d
	ld bc,0310dh		;631e
	ld a,(bc)		;6321
	cpl			;6322
	rrca			;6323
	ld h,c			;6324
	nop			;6325
	ld (bc),a		;6326
	dec d			;6327
	dec c			;6328
	rrca			;6329
	dec c			;632a
	dec c			;632b
	ld h,c			;632c
	nop			;632d
	ld h,c			;632e
	nop			;632f
	ld sp,00108h		;6330
	ld d,019h		;6333
	rrca			;6335
	add hl,de		;6336
	dec c			;6337
	nop			;6338
	nop			;6339
	nop			;633a
	nop			;633b
	ld h,c			;633c
	nop			;633d
	nop			;633e
	dec d			;633f
	ld bc,0010fh		;6340
	dec c			;6343
	nop			;6344
	nop			;6345
	nop			;6346
	nop			;6347
	nop			;6348
	nop			;6349
	nop			;634a
	ld d,00dh		;634b
	rrca			;634d
	dec c			;634e
	dec c			;634f
	inc sp			;6350
	ld a,(bc)		;6351
	cpl			;6352
	rrca			;6353
	nop			;6354
	nop			;6355
	ld a,(bc)		;6356
	dec d			;6357
	add hl,de		;6358
	rrca			;6359
	add hl,de		;635a
	dec c			;635b
	ld h,c			;635c
	nop			;635d
	ld h,c			;635e
	nop			;635f
	inc sp			;6360
	ex af,af'		;6361
	ld (bc),a		;6362
	ld d,001h		;6363
	rrca			;6365
	ld bc,0340dh		;6366
	ld a,(bc)		;6369
	ld sp,l610fh		;636a
	nop			;636d
	ld (bc),a		;636e
	dec d			;636f
	dec c			;6370
	rrca			;6371
	dec c			;6372
	dec c			;6373
	ld h,c			;6374
	nop			;6375
	ld h,c			;6376
	nop			;6377
	inc (hl)		;6378
	ex af,af'		;6379
	ld bc,01916h		;637a
	rrca			;637d
	add hl,de		;637e
	dec c			;637f
	nop			;6380
	nop			;6381
	nop			;6382
	nop			;6383
	ld h,c			;6384
	nop			;6385
	nop			;6386
	dec d			;6387
	ld bc,0010fh		;6388
	dec c			;638b
	nop			;638c
	nop			;638d
	nop			;638e
	nop			;638f
	nop			;6390
	nop			;6391
	nop			;6392
	ld d,00dh		;6393
	rrca			;6395
	dec c			;6396
	dec c			;6397
	ld (hl),00ah		;6398
	inc sp			;639a
	rrca			;639b
	nop			;639c
	nop			;639d
	ld (bc),a		;639e
	dec d			;639f
	add hl,de		;63a0
	rrca			;63a1
	add hl,de		;63a2
	dec c			;63a3
	ld h,c			;63a4
	nop			;63a5
	ld h,c			;63a6
	nop			;63a7
	ld (hl),008h		;63a8
	ld (bc),a		;63aa
	ld d,001h		;63ab
	rrca			;63ad
	ld bc,0380dh		;63ae
	ld a,(bc)		;63b1
	inc (hl)		;63b2
	rrca			;63b3
	ld h,c			;63b4
	nop			;63b5
	ld (bc),a		;63b6
	dec d			;63b7
	djnz l63c9h		;63b8
	djnz l63c9h		;63ba
	ld h,c			;63bc
	nop			;63bd
	ld h,c			;63be
	nop			;63bf
	jr c,l63cah		;63c0
	ld (bc),a		;63c2
	ld d,00fh		;63c3
	rrca			;63c5
	rrca			;63c6
	dec c			;63c7
	dec c			;63c8
l63c9h:
	ld a,(bc)		;63c9
l63cah:
	dec c			;63ca
	ld a,(bc)		;63cb
	dec c			;63cc
	ld a,(bc)		;63cd
	nop			;63ce
	dec d			;63cf
	dec bc			;63d0
	rrca			;63d1
	dec bc			;63d2
	dec c			;63d3
	add hl,de		;63d4
	ld a,(bc)		;63d5
	add hl,de		;63d6
	ld a,(bc)		;63d7
	add hl,de		;63d8
	ld a,(bc)		;63d9
	ld a,(bc)		;63da
	ld d,010h		;63db
	rrca			;63dd
	djnz $+15		;63de
	dec h			;63e0
	ld a,(bc)		;63e1
	dec h			;63e2
	ld a,(bc)		;63e3
	dec h			;63e4
	ld a,(bc)		;63e5
	ld (bc),a		;63e6
	dec d			;63e7
	rrca			;63e8
	rrca			;63e9
	rrca			;63ea
	dec c			;63eb
	ld sp,0310ah		;63ec
	ld a,(bc)		;63ef
	ld sp,0000ah		;63f0
	ld d,00bh		;63f3
	rrca			;63f5
	dec bc			;63f6
	dec c			;63f7
	dec a			;63f8
	ld a,(bc)		;63f9
	dec a			;63fa
	ld a,(bc)		;63fb
	dec a			;63fc
	ld a,(bc)		;63fd
	ld (bc),a		;63fe
	dec d			;63ff
	dec c			;6400
	rrca			;6401
	dec c			;6402
	dec c			;6403
	cpl			;6404
	inc c			;6405
	ld hl,(0360ch)		;6406
	inc c			;6409
	ld bc,01216h		;640a
	rrca			;640d
	ld (de),a		;640e
	dec c			;640f
	ld l,d			;6410
	ld bc,00169h		;6411
	nop			;6414
	nop			;6415
	nop			;6416
	dec d			;6417
	inc d			;6418
	rrca			;6419
	inc d			;641a
	dec c			;641b
	ld sp,02c0ch		;641c
	inc c			;641f
	jr c,l642eh		;6420
	ld bc,00d16h		;6422
	rrca			;6425
	dec c			;6426
	dec c			;6427
	ld h,c			;6428
	nop			;6429
	ld h,c			;642a
	nop			;642b
	ld h,c			;642c
	nop			;642d
l642eh:
	ld a,(bc)		;642e
	dec d			;642f
	ld (de),a		;6430
	rrca			;6431
	ld (de),a		;6432
	dec c			;6433
	ld sp,02c0ch		;6434
	inc c			;6437
	jr c,l6446h		;6438
	nop			;643a
	ld d,014h		;643b
	rrca			;643d
	inc d			;643e
	dec c			;643f
	ld h,c			;6440
	nop			;6441
	ld h,c			;6442
	nop			;6443
	ld h,c			;6444
	nop			;6445
l6446h:
	nop			;6446
	dec d			;6447
	dec c			;6448
	rrca			;6449
	dec c			;644a
	dec c			;644b
	nop			;644c
	nop			;644d
	nop			;644e
	nop			;644f
	nop			;6450
	nop			;6451
	ld bc,01216h		;6452
	rrca			;6455
	ld (de),a		;6456
	dec c			;6457
	nop			;6458
	nop			;6459
	nop			;645a
	nop			;645b
	nop			;645c
	nop			;645d
	nop			;645e
	dec d			;645f
	inc d			;6460
	rrca			;6461
	inc d			;6462
	dec c			;6463
	ld sp,02c09h		;6464
	rrca			;6467
	ld sp,0010ch		;6468
	ld d,00dh		;646b
	rrca			;646d
	dec c			;646e
	dec c			;646f
l6470h:
	ld l,h			;6470
	ld (bc),a		;6471
	nop			;6472
	nop			;6473
	nop			;6474
	nop			;6475
	ld (bc),a		;6476
	dec d			;6477
	ld (de),a		;6478
	rrca			;6479
	ld (de),a		;647a
	dec c			;647b
	ld l,h			;647c
	ld bc,00000h		;647d
	nop			;6480
	nop			;6481
	nop			;6482
	ld d,014h		;6483
	rrca			;6485
	inc d			;6486
	dec c			;6487
	nop			;6488
	nop			;6489
	nop			;648a
	nop			;648b
	nop			;648c
	nop			;648d
	nop			;648e
	dec d			;648f
	ld d,00fh		;6490
	ld d,00dh		;6492
	inc (hl)		;6494
	add hl,bc		;6495
	dec l			;6496
	rrca			;6497
	ld h,c			;6498
	nop			;6499
	ld bc,01916h		;649a
	rrca			;649d
	add hl,de		;649e
	dec c			;649f
	inc sp			;64a0
	add hl,bc		;64a1
	ld h,c			;64a2
	nop			;64a3
	cpl			;64a4
	rrca			;64a5
	nop			;64a6
	dec d			;64a7
	ld e,00fh		;64a8
	ld e,00dh		;64aa
	ld sp,02d09h		;64ac
	rrca			;64af
	ld h,c			;64b0
	nop			;64b1
	ld bc,01616h		;64b2
	rrca			;64b5
	ld d,00dh		;64b6
	inc sp			;64b8
	add hl,bc		;64b9
	ld h,c			;64ba
	nop			;64bb
	dec l			;64bc
	rrca			;64bd
	ld a,(bc)		;64be
	dec d			;64bf
	add hl,de		;64c0
	rrca			;64c1
	add hl,de		;64c2
	dec c			;64c3
	ld h,c			;64c4
	nop			;64c5
	nop			;64c6
	nop			;64c7
	ld h,c			;64c8
	nop			;64c9
	nop			;64ca
	ld d,01eh		;64cb
	rrca			;64cd
	ld e,00dh		;64ce
	nop			;64d0
	nop			;64d1
	nop			;64d2
	nop			;64d3
	nop			;64d4
	nop			;64d5
	nop			;64d6
	dec d			;64d7
	dec d			;64d8
	rrca			;64d9
	dec d			;64da
	dec c			;64db
	inc (hl)		;64dc
	add hl,bc		;64dd
	cpl			;64de
	rrca			;64df
	nop			;64e0
	nop			;64e1
	ld bc,01216h		;64e2
	rrca			;64e5
	ld (de),a		;64e6
	dec c			;64e7
	inc sp			;64e8
	add hl,bc		;64e9
	ld h,c			;64ea
	nop			;64eb
	cpl			;64ec
	rrca			;64ed
	nop			;64ee
	dec d			;64ef
	djnz l6501h		;64f0
	djnz l6501h		;64f2
	ld sp,02f09h		;64f4
	rrca			;64f7
	ld h,c			;64f8
	nop			;64f9
	ld bc,01516h		;64fa
	rrca			;64fd
	dec d			;64fe
	dec c			;64ff
	inc sp			;6500
l6501h:
	add hl,bc		;6501
sub_6502h:
	dec l			;6502
	rrca			;6503
	cpl			;6504
	add hl,bc		;6505
	ld (bc),a		;6506
	dec d			;6507
	ld (de),a		;6508
	rrca			;6509
	ld (de),a		;650a
	dec c			;650b
	ld h,c			;650c
	nop			;650d
	ld h,c			;650e
	nop			;650f
	ld h,c			;6510
	nop			;6511
sub_6512h:
	nop			;6512
	ld d,010h		;6513
	rrca			;6515
	djnz $+15		;6516
	nop			;6518
	nop			;6519
	nop			;651a
	nop			;651b
	nop			;651c
	nop			;651d
	nop			;651e
	dec d			;651f
	dec d			;6520
	rrca			;6521
	dec d			;6522
l6523h:
	dec c			;6523
	ld sp,02a09h		;6524
	rrca			;6527
	nop			;6528
	nop			;6529
	ld bc,01016h		;652a
	rrca			;652d
	djnz $+15		;652e
	nop			;6530
	nop			;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	nop			;6536
	dec d			;6537
	dec c			;6538
	rrca			;6539
	dec c			;653a
	dec c			;653b
	jr c,l6547h		;653c
	jr z,l654fh		;653e
	nop			;6540
	nop			;6541
	ld bc,01516h		;6542
	rrca			;6545
	dec d			;6546
l6547h:
	dec c			;6547
	ld sp,02c09h		;6548
	rrca			;654b
	nop			;654c
	nop			;654d
	ld a,(bc)		;654e
l654fh:
	dec d			;654f
	djnz l6561h		;6550
	djnz l6561h		;6552
	ld h,a			;6554
	ld (bc),a		;6555
	ld h,a			;6556
	ld (bc),a		;6557
	nop			;6558
	nop			;6559
	nop			;655a
	ld d,00dh		;655b
	rrca			;655d
	dec c			;655e
	dec c			;655f
	ld l,h			;6560
l6561h:
	ld bc,0016ch		;6561
	nop			;6564
	nop			;6565
	nop			;6566
	dec d			;6567
	dec bc			;6568
	rrca			;6569
	dec bc			;656a
	dec c			;656b
	ld l,h			;656c
	ld bc,0016ch		;656d
	nop			;6570
	nop			;6571
	ld bc,01216h		;6572
	rrca			;6575
	ld (de),a		;6576
	dec c			;6577
	ld l,h			;6578
	ld bc,0016ch		;6579
	nop			;657c
	nop			;657d
	nop			;657e
	dec d			;657f
	rla			;6580
	rrca			;6581
	rla			;6582
	dec c			;6583
	ld l,h			;6584
	ld bc,0016ch		;6585
	nop			;6588
	nop			;6589
	ld bc,00b16h		;658a
	rrca			;658d
	dec bc			;658e
	dec c			;658f
	ld l,h			;6590
	ld (bc),a		;6591
	ld l,h			;6592
	ld (bc),a		;6593
	nop			;6594
sub_6595h:
	nop			;6595
	ld a,(bc)		;6596
	dec d			;6597
	ld (de),a		;6598
	rrca			;6599
	ld (de),a		;659a
	dec c			;659b
	ld l,h			;659c
	ld (bc),a		;659d
	ld l,h			;659e
	ld (bc),a		;659f
	nop			;65a0
	nop			;65a1
	nop			;65a2
	ld d,017h		;65a3
	rrca			;65a5
	rla			;65a6
	dec c			;65a7
	ld l,h			;65a8
	ld (bc),a		;65a9
	ld l,h			;65aa
	ld (bc),a		;65ab
	nop			;65ac
	nop			;65ad
	nop			;65ae
	dec d			;65af
	add hl,bc		;65b0
	rrca			;65b1
	add hl,bc		;65b2
	dec c			;65b3
	cpl			;65b4
	dec bc			;65b5
	daa			;65b6
	rrca			;65b7
	nop			;65b8
	nop			;65b9
	ld bc,00b16h		;65ba
	rrca			;65bd
	dec bc			;65be
	dec c			;65bf
	nop			;65c0
	nop			;65c1
	nop			;65c2
	nop			;65c3
	daa			;65c4
	add hl,bc		;65c5
	nop			;65c6
	dec d			;65c7
	dec c			;65c8
	rrca			;65c9
	dec c			;65ca
	dec c			;65cb
	ld l,h			;65cc
	ld (bc),a		;65cd
	ld l,h			;65ce
	ld (bc),a		;65cf
	ld h,a			;65d0
	ld (bc),a		;65d1
	ld bc,00916h		;65d2
	rrca			;65d5
	add hl,bc		;65d6
	dec c			;65d7
	ld l,h			;65d8
	ld (bc),a		;65d9
	ld l,h			;65da
	ld (bc),a		;65db
	nop			;65dc
	nop			;65dd
	ld (bc),a		;65de
	dec d			;65df
	dec bc			;65e0
	rrca			;65e1
	dec bc			;65e2
	dec c			;65e3
	ld l,h			;65e4
	ld (bc),a		;65e5
	ld l,h			;65e6
	ld (bc),a		;65e7
	nop			;65e8
	nop			;65e9
	nop			;65ea
	ld d,00dh		;65eb
	rrca			;65ed
	dec c			;65ee
	dec c			;65ef
	jr z,l6601h		;65f0
	rla			;65f2
	rrca			;65f3
	nop			;65f4
	nop			;65f5
	nop			;65f6
	dec d			;65f7
	add hl,bc		;65f8
	rrca			;65f9
	add hl,bc		;65fa
	dec c			;65fb
	daa			;65fc
	rrca			;65fd
	add hl,de		;65fe
	rrca			;65ff
	inc hl			;6600
l6601h:
	add hl,bc		;6601
l6602h:
	ld (bc),a		;6602
	ld d,00bh		;6603
	rrca			;6605
	dec bc			;6606
	dec c			;6607
	ld h,c			;6608
	nop			;6609
	ld h,c			;660a
	nop			;660b
	dec h			;660c
	add hl,bc		;660d
	ld (bc),a		;660e
	dec d			;660f
	dec c			;6610
	rrca			;6611
	dec c			;6612
	dec c			;6613
	jr z,l6625h		;6614
	add hl,de		;6616
	rrca			;6617
	nop			;6618
	nop			;6619
	ld (bc),a		;661a
	ld d,009h		;661b
	rrca			;661d
	add hl,bc		;661e
	dec c			;661f
	daa			;6620
	rrca			;6621
	dec de			;6622
	rrca			;6623
	dec h			;6624
l6625h:
	add hl,bc		;6625
	ld a,(bc)		;6626
	dec d			;6627
	dec bc			;6628
	rrca			;6629
	dec bc			;662a
	dec c			;662b
	nop			;662c
	nop			;662d
	nop			;662e
	nop			;662f
	daa			;6630
	add hl,bc		;6631
	ld (bc),a		;6632
	ld d,00dh		;6633
	rrca			;6635
	dec c			;6636
	dec c			;6637
	nop			;6638
	nop			;6639
	nop			;663a
	nop			;663b
	nop			;663c
	nop			;663d
	ld (bc),a		;663e
	dec d			;663f
	dec c			;6640
	rrca			;6641
	dec c			;6642
	dec c			;6643
	cpl			;6644
	add hl,bc		;6645
	ld hl,(02f0fh)		;6646
	add hl,bc		;6649
	ld bc,01416h		;664a
	rrca			;664d
	inc d			;664e
	dec c			;664f
	nop			;6650
l6651h:
	nop			;6651
	nop			;6652
	nop			;6653
	nop			;6654
	nop			;6655
	nop			;6656
	dec d			;6657
	add hl,de		;6658
	rrca			;6659
	add hl,de		;665a
	dec c			;665b
	ld sp,02c09h		;665c
	rrca			;665f
	ld sp,00109h		;6660
	ld d,00dh		;6663
	rrca			;6665
	dec c			;6666
	dec c			;6667
	ld h,c			;6668
	nop			;6669
	ld h,c			;666a
	nop			;666b
	ld h,c			;666c
	nop			;666d
	ld (bc),a		;666e
	dec d			;666f
	inc d			;6670
	rrca			;6671
	inc d			;6672
	dec c			;6673
	ld sp,02c09h		;6674
	rrca			;6677
	ld sp,00009h		;6678
	ld d,019h		;667b
	rrca			;667d
	add hl,de		;667e
	dec c			;667f
	ld h,c			;6680
	nop			;6681
	ld h,c			;6682
	nop			;6683
	ld h,c			;6684
	nop			;6685
	nop			;6686
	dec d			;6687
	dec c			;6688
	rrca			;6689
	dec c			;668a
	dec c			;668b
	nop			;668c
	nop			;668d
	nop			;668e
	nop			;668f
	nop			;6690
	nop			;6691
	ld bc,01416h		;6692
	rrca			;6695
	inc d			;6696
	dec c			;6697
	nop			;6698
	nop			;6699
	nop			;669a
	nop			;669b
	nop			;669c
	nop			;669d
	nop			;669e
	dec d			;669f
	add hl,de		;66a0
	rrca			;66a1
	add hl,de		;66a2
	dec c			;66a3
	ld sp,02c09h		;66a4
	rrca			;66a7
	nop			;66a8
	nop			;66a9
	ld bc,00d16h		;66aa
	rrca			;66ad
	dec c			;66ae
	dec c			;66af
	nop			;66b0
	nop			;66b1
	nop			;66b2
	nop			;66b3
	inc l			;66b4
	add hl,bc		;66b5
	ld a,(bc)		;66b6
	dec d			;66b7
	inc d			;66b8
	rrca			;66b9
	inc d			;66ba
	dec c			;66bb
	ld h,a			;66bc
	ld (bc),a		;66bd
	ld h,a			;66be
	ld bc,00167h		;66bf
	nop			;66c2
	ld d,019h		;66c3
	rrca			;66c5
	add hl,de		;66c6
	dec c			;66c7
	nop			;66c8
	nop			;66c9
	nop			;66ca
	nop			;66cb
	nop			;66cc
	nop			;66cd
	nop			;66ce
l66cfh:
	dec d			;66cf
	dec c			;66d0
	rrca			;66d1
	dec c			;66d2
	dec c			;66d3
	inc (hl)		;66d4
	add hl,bc		;66d5
	dec l			;66d6
	rrca			;66d7
	ld h,c			;66d8
	nop			;66d9
	ld bc,01216h		;66da
	rrca			;66dd
	ld (de),a		;66de
	dec c			;66df
	inc sp			;66e0
	add hl,bc		;66e1
	ld h,c			;66e2
	nop			;66e3
	cpl			;66e4
	rrca			;66e5
	nop			;66e6
	dec d			;66e7
	add hl,de		;66e8
	rrca			;66e9
	add hl,de		;66ea
	dec c			;66eb
	ld sp,02d09h		;66ec
	rrca			;66ef
	ld h,c			;66f0
	nop			;66f1
	ld bc,00d16h		;66f2
	rrca			;66f5
	dec c			;66f6
	dec c			;66f7
	inc sp			;66f8
	add hl,bc		;66f9
	ld h,c			;66fa
	nop			;66fb
	dec l			;66fc
	rrca			;66fd
	ld a,(bc)		;66fe
	dec d			;66ff
	ld (de),a		;6700
	rrca			;6701
	ld (de),a		;6702
	dec c			;6703
	ld h,c			;6704
	nop			;6705
	nop			;6706
	nop			;6707
	ld h,c			;6708
	nop			;6709
	nop			;670a
	ld d,019h		;670b
	rrca			;670d
	add hl,de		;670e
	dec c			;670f
	nop			;6710
	nop			;6711
	nop			;6712
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	dec d			;6717
	dec c			;6718
	rrca			;6719
	dec c			;671a
	dec c			;671b
	jr z,l672dh		;671c
	ld hl,(02f0fh)		;671e
	inc c			;6721
	ld bc,01016h		;6722
	rrca			;6725
	djnz l6735h		;6726
	daa			;6728
	rrca			;6729
	ld h,c			;672a
	nop			;672b
	dec l			;672c
l672dh:
	inc c			;672d
	nop			;672e
	dec d			;672f
	add hl,de		;6730
	rrca			;6731
	add hl,de		;6732
	dec c			;6733
	dec h			;6734
l6735h:
	rrca			;6735
	ld hl,(02c0fh)		;6736
	inc c			;6739
	ld bc,00d16h		;673a
	rrca			;673d
	dec c			;673e
	dec c			;673f
	daa			;6740
	rrca			;6741
	ld h,c			;6742
	nop			;6743
	dec l			;6744
	inc c			;6745
	ld (bc),a		;6746
	dec d			;6747
	djnz l6759h		;6748
	djnz l6759h		;674a
	ld h,c			;674c
	nop			;674d
	nop			;674e
	nop			;674f
	ld h,c			;6750
	nop			;6751
	nop			;6752
	ld d,019h		;6753
	rrca			;6755
	add hl,de		;6756
	dec c			;6757
	nop			;6758
l6759h:
	nop			;6759
	nop			;675a
	nop			;675b
	nop			;675c
	nop			;675d
	nop			;675e
	dec d			;675f
	dec bc			;6760
	rrca			;6761
	dec bc			;6762
	dec c			;6763
	ld sp,0280dh		;6764
	rrca			;6767
	nop			;6768
	nop			;6769
	ld bc,01016h		;676a
	rrca			;676d
	djnz $+15		;676e
	ld h,c			;6770
	nop			;6771
	ld h,c			;6772
	nop			;6773
	jr z,l6785h		;6774
	nop			;6776
	dec d			;6777
	rla			;6778
	rrca			;6779
	rla			;677a
	dec c			;677b
	jr c,l678bh		;677c
	jr z,$+15		;677e
	ld h,c			;6780
	nop			;6781
	ld bc,00b16h		;6782
l6785h:
	rrca			;6785
	dec bc			;6786
	dec c			;6787
	ld sp,l610dh		;6788
l678bh:
	nop			;678b
	jr z,l679bh		;678c
	ld a,(bc)		;678e
	dec d			;678f
	djnz l67a1h		;6790
	djnz l67a1h		;6792
	ld h,a			;6794
	ld (bc),a		;6795
	jr z,$+13		;6796
	ld h,c			;6798
	nop			;6799
	nop			;679a
l679bh:
	ld d,017h		;679b
	rrca			;679d
	rla			;679e
	dec c			;679f
	ld l,h			;67a0
l67a1h:
	ld bc,00061h		;67a1
	jr z,l67b1h		;67a4
	nop			;67a6
	dec d			;67a7
	ld b,00fh		;67a8
	ld b,00dh		;67aa
	ld l,h			;67ac
	ld bc,00928h		;67ad
	ld h,c			;67b0
l67b1h:
	nop			;67b1
	ld bc,00d16h		;67b2
	rrca			;67b5
	dec c			;67b6
	dec c			;67b7
	ld l,h			;67b8
	ld bc,00061h		;67b9
	jr z,$+11		;67bc
	nop			;67be
	dec d			;67bf
	ld (de),a		;67c0
	rrca			;67c1
	ld (de),a		;67c2
	dec c			;67c3
	nop			;67c4
	nop			;67c5
	jr z,$+9		;67c6
	ld h,c			;67c8
	nop			;67c9
	ld bc,00616h		;67ca
	rrca			;67cd
	ld b,00dh		;67ce
	inc l			;67d0
	add hl,bc		;67d1
	nop			;67d2
	nop			;67d3
	jr z,l67e5h		;67d4
	ld (bc),a		;67d6
	dec d			;67d7
	dec c			;67d8
	rrca			;67d9
	dec c			;67da
	dec c			;67db
	ld hl,(l6109h)		;67dc
	nop			;67df
	ld hl,(0020fh)		;67e0
	ld d,012h		;67e3
l67e5h:
	rrca			;67e5
	ld (de),a		;67e6
	dec c			;67e7
	inc l			;67e8
	add hl,bc		;67e9
	ld hl,(l610fh)		;67ea
	nop			;67ed
	ld (bc),a		;67ee
	dec d			;67ef
	ex af,af'		;67f0
	rrca			;67f1
	ex af,af'		;67f2
	dec c			;67f3
	inc l			;67f4
	ld a,(bc)		;67f5
	inc h			;67f6
	rrca			;67f7
	ld hl,(00209h)		;67f8
	ld d,00fh		;67fb
	rrca			;67fd
	rrca			;67fe
	dec c			;67ff
	ld l,h			;6800
	ld bc,00000h		;6801
	inc h			;6804
	add hl,bc		;6805
	nop			;6806
	dec d			;6807
	inc d			;6808
	rrca			;6809
	inc d			;680a
	dec c			;680b
	ld l,h			;680c
	ld bc,00267h		;680d
	nop			;6810
	nop			;6811
	ld bc,00816h		;6812
	rrca			;6815
	ex af,af'		;6816
	dec c			;6817
	ld l,h			;6818
	ld bc,00000h		;6819
	ld h,a			;681c
	ld (bc),a		;681d
	nop			;681e
	dec d			;681f
	rrca			;6820
	rrca			;6821
	rrca			;6822
	dec c			;6823
	nop			;6824
	nop			;6825
	nop			;6826
	nop			;6827
	nop			;6828
	nop			;6829
	nop			;682a
	ld d,014h		;682b
	rrca			;682d
	inc d			;682e
	dec c			;682f
	inc (hl)		;6830
	dec c			;6831
	inc l			;6832
	inc c			;6833
	nop			;6834
	nop			;6835
	ld (bc),a		;6836
	dec d			;6837
	rrca			;6838
	rrca			;6839
	rrca			;683a
	dec c			;683b
	inc sp			;683c
	dec c			;683d
	daa			;683e
	rrca			;683f
	nop			;6840
	nop			;6841
	ld bc,01416h		;6842
	rrca			;6845
	inc d			;6846
	dec c			;6847
	nop			;6848
	nop			;6849
	ld h,a			;684a
	ld (bc),a		;684b
	daa			;684c
	add hl,bc		;684d
	nop			;684e
	dec d			;684f
	rrca			;6850
	rrca			;6851
	rrca			;6852
	dec c			;6853
	nop			;6854
	nop			;6855
	nop			;6856
	nop			;6857
	nop			;6858
	nop			;6859
	ld bc,00816h		;685a
	rrca			;685d
	ex af,af'		;685e
	dec c			;685f
	ccf			;6860
	ld b,000h		;6861
	nop			;6863
	ld h,a			;6864
	ld bc,01500h		;6865
	rrca			;6868
	rrca			;6869
	rrca			;686a
	dec c			;686b
	nop			;686c
	nop			;686d
	nop			;686e
	nop			;686f
	nop			;6870
	nop			;6871
	ld bc,01416h		;6872
	rrca			;6875
	inc d			;6876
	dec c			;6877
	nop			;6878
	nop			;6879
	nop			;687a
	nop			;687b
	nop			;687c
	nop			;687d
	nop			;687e
	dec d			;687f
	add hl,bc		;6880
	rrca			;6881
	add hl,bc		;6882
	dec c			;6883
	inc l			;6884
	dec bc			;6885
	cpl			;6886
	dec c			;6887
	nop			;6888
	nop			;6889
	ld bc,01016h		;688a
	rrca			;688d
	djnz l689dh		;688e
	ld h,a			;6890
	ld (bc),a		;6891
	nop			;6892
	nop			;6893
	ld sp,00007h		;6894
	dec d			;6897
	dec d			;6898
	rrca			;6899
	dec d			;689a
	dec c			;689b
	nop			;689c
l689dh:
	nop			;689d
	ld h,a			;689e
	ld (bc),a		;689f
	nop			;68a0
	nop			;68a1
	ld bc,00916h		;68a2
	rrca			;68a5
	add hl,bc		;68a6
	dec c			;68a7
	nop			;68a8
	nop			;68a9
	nop			;68aa
	nop			;68ab
	nop			;68ac
	nop			;68ad
	ld (bc),a		;68ae
	dec d			;68af
	djnz l68c1h		;68b0
	djnz l68c1h		;68b2
	jr z,l68c1h		;68b4
	dec l			;68b6
	dec c			;68b7
	nop			;68b8
	nop			;68b9
	nop			;68ba
	ld d,015h		;68bb
	rrca			;68bd
	dec d			;68be
	dec c			;68bf
	dec h			;68c0
l68c1h:
	dec bc			;68c1
	inc l			;68c2
	dec c			;68c3
	inc l			;68c4
	rlca			;68c5
	nop			;68c6
	dec d			;68c7
	add hl,bc		;68c8
	rrca			;68c9
	add hl,bc		;68ca
	dec c			;68cb
	jr z,l68d9h		;68cc
	dec l			;68ce
	dec c			;68cf
	ld hl,(00107h)		;68d0
	ld d,010h		;68d3
	rrca			;68d5
	djnz l68e5h		;68d6
	nop			;68d8
l68d9h:
	nop			;68d9
	ld h,a			;68da
	ld (bc),a		;68db
	inc l			;68dc
	rlca			;68dd
	nop			;68de
	dec d			;68df
	dec d			;68e0
	rrca			;68e1
	dec d			;68e2
	dec c			;68e3
	nop			;68e4
l68e5h:
	nop			;68e5
	nop			;68e6
	nop			;68e7
	nop			;68e8
	nop			;68e9
	ld bc,00916h		;68ea
	rrca			;68ed
	add hl,bc		;68ee
	dec c			;68ef
	cpl			;68f0
	dec bc			;68f1
	inc (hl)		;68f2
	rrca			;68f3
	nop			;68f4
	nop			;68f5
	ld a,(bc)		;68f6
	dec d			;68f7
	djnz l6909h		;68f8
	djnz l6909h		;68fa
	nop			;68fc
	nop			;68fd
	nop			;68fe
	nop			;68ff
	inc (hl)		;6900
	rlca			;6901
	nop			;6902
	ld d,015h		;6903
	rrca			;6905
	dec d			;6906
	dec c			;6907
	nop			;6908
l6909h:
	nop			;6909
	nop			;690a
	nop			;690b
	nop			;690c
	nop			;690d
	nop			;690e
	dec d			;690f
	add hl,bc		;6910
	rrca			;6911
	add hl,bc		;6912
	dec c			;6913
	ld hl,(0330bh)		;6914
	rrca			;6917
	nop			;6918
	nop			;6919
	ld bc,00f16h		;691a
	rrca			;691d
	rrca			;691e
	dec c			;691f
	ld l,h			;6920
	ld bc,00000h		;6921
	nop			;6924
	nop			;6925
	nop			;6926
	dec d			;6927
	dec d			;6928
	rrca			;6929
	dec d			;692a
	dec c			;692b
	nop			;692c
	nop			;692d
	ld h,a			;692e
	ld bc,0016ch		;692f
	ld bc,00916h		;6932
	rrca			;6935
	add hl,bc		;6936
	dec c			;6937
	nop			;6938
	nop			;6939
	nop			;693a
	nop			;693b
	nop			;693c
	nop			;693d
	ld a,(bc)		;693e
	dec d			;693f
	rrca			;6940
	rrca			;6941
	rrca			;6942
	dec c			;6943
	ld l,h			;6944
	ld bc,00000h		;6945
	nop			;6948
	nop			;6949
	nop			;694a
	ld d,015h		;694b
	rrca			;694d
	dec d			;694e
	dec c			;694f
	nop			;6950
	nop			;6951
	ld l,h			;6952
	ld bc,00000h		;6953
	nop			;6956
	dec d			;6957
	add hl,bc		;6958
	rrca			;6959
	add hl,bc		;695a
	dec c			;695b
	nop			;695c
	nop			;695d
	ld l,d			;695e
	nop			;695f
	ld l,h			;6960
	ld bc,01601h		;6961
	rrca			;6964
	rrca			;6965
	rrca			;6966
	dec c			;6967
	ld l,h			;6968
	ld bc,00000h		;6969
	nop			;696c
	nop			;696d
	nop			;696e
	dec d			;696f
	dec d			;6970
	rrca			;6971
	dec d			;6972
	dec c			;6973
	nop			;6974
	nop			;6975
	ld l,h			;6976
	ld bc,0006ah		;6977
	ld bc,00916h		;697a
	rrca			;697d
	add hl,bc		;697e
	dec c			;697f
	nop			;6980
	nop			;6981
	nop			;6982
	nop			;6983
	ld l,h			;6984
	ld bc,01502h		;6985
	rrca			;6988
	rrca			;6989
	rrca			;698a
	dec c			;698b
	ld l,h			;698c
	ld bc,00000h		;698d
	nop			;6990
	nop			;6991
	nop			;6992
	ld d,015h		;6993
	rrca			;6995
	dec d			;6996
	dec c			;6997
	nop			;6998
	nop			;6999
	ld l,h			;699a
	ld bc,00000h		;699b
	nop			;699e
	dec d			;699f
	add hl,bc		;69a0
	rrca			;69a1
	add hl,bc		;69a2
	dec c			;69a3
	jr c,l69b2h		;69a4
	ld sp,l610fh		;69a6
	nop			;69a9
	ld bc,01016h		;69aa
	rrca			;69ad
	djnz l69bdh		;69ae
	ld (hl),00ch		;69b0
l69b2h:
	inc l			;69b2
	rrca			;69b3
	ld sp,00007h		;69b4
	dec d			;69b7
	dec d			;69b8
	rrca			;69b9
	dec d			;69ba
	dec c			;69bb
	inc (hl)		;69bc
l69bdh:
	inc c			;69bd
	jr z,l69cfh		;69be
	inc l			;69c0
	rlca			;69c1
	nop			;69c2
	ld d,009h		;69c3
	rrca			;69c5
	add hl,bc		;69c6
	dec c			;69c7
	ld sp,0250ch		;69c8
	rrca			;69cb
	jr z,l69d5h		;69cc
	ld a,(bc)		;69ce
l69cfh:
	dec d			;69cf
	djnz l69e1h		;69d0
	djnz l69e1h		;69d2
	ld l,h			;69d4
l69d5h:
	ld bc,0016ch		;69d5
	dec h			;69d8
	rlca			;69d9
	ld a,(bc)		;69da
	ld d,015h		;69db
	rrca			;69dd
	dec d			;69de
	dec c			;69df
	ld l,h			;69e0
l69e1h:
	ld bc,0016ch		;69e1
	nop			;69e4
	nop			;69e5
	ld (bc),a		;69e6
	dec d			;69e7
	add hl,bc		;69e8
	rrca			;69e9
	add hl,bc		;69ea
	dec c			;69eb
	ld l,h			;69ec
	ld bc,0062ch		;69ed
	ld sp,0010fh		;69f0
	ld d,010h		;69f3
	rrca			;69f5
	djnz l6a05h		;69f6
	ld l,h			;69f8
	ld bc,0062ah		;69f9
	inc l			;69fc
	rrca			;69fd
	nop			;69fe
	dec d			;69ff
	dec d			;6a00
	rrca			;6a01
	dec d			;6a02
	dec c			;6a03
	ld l,h			;6a04
l6a05h:
	ld bc,00628h		;6a05
	jr z,l6a19h		;6a08
	ld bc,00916h		;6a0a
	rrca			;6a0d
	add hl,bc		;6a0e
	dec c			;6a0f
	ld l,h			;6a10
	ld bc,00625h		;6a11
	dec h			;6a14
	rrca			;6a15
	ld a,(bc)		;6a16
	dec d			;6a17
	dec bc			;6a18
l6a19h:
	rrca			;6a19
	dec bc			;6a1a
	dec c			;6a1b
	ld l,h			;6a1c
	ld bc,0016ch		;6a1d
	ld l,h			;6a20
	ld bc,01600h		;6a21
	dec d			;6a24
	rrca			;6a25
	dec d			;6a26
	dec c			;6a27
	ld l,h			;6a28
	ld bc,0016ch		;6a29
	ld l,h			;6a2c
	ld bc,0150ah		;6a2d
	dec c			;6a30
	rrca			;6a31
	dec c			;6a32
	dec c			;6a33
	jr c,l6a42h		;6a34
	daa			;6a36
	rrca			;6a37
	inc l			;6a38
	ld a,(bc)		;6a39
	ld bc,00816h		;6a3a
	rrca			;6a3d
	ex af,af'		;6a3e
	dec c			;6a3f
	dec sp			;6a40
	inc c			;6a41
l6a42h:
	jr z,l6a53h		;6a42
	cpl			;6a44
	ld a,(bc)		;6a45
	nop			;6a46
	dec d			;6a47
	add hl,de		;6a48
	rrca			;6a49
	add hl,de		;6a4a
	dec c			;6a4b
	ld sp,0310ch		;6a4c
	rrca			;6a4f
	dec h			;6a50
	ld a,(bc)		;6a51
	nop			;6a52
l6a53h:
	ld d,00dh		;6a53
	rrca			;6a55
	dec c			;6a56
	dec c			;6a57
	ld h,a			;6a58
	ld (bc),a		;6a59
	nop			;6a5a
	nop			;6a5b
	nop			;6a5c
	nop			;6a5d
	ld (bc),a		;6a5e
	dec d			;6a5f
	ex af,af'		;6a60
	rrca			;6a61
	ex af,af'		;6a62
	dec c			;6a63
	nop			;6a64
	nop			;6a65
	nop			;6a66
	nop			;6a67
	nop			;6a68
	nop			;6a69
	ld a,(bc)		;6a6a
	ld d,019h		;6a6b
	rrca			;6a6d
	add hl,de		;6a6e
	dec c			;6a6f
	nop			;6a70
	nop			;6a71
	ld h,a			;6a72
	ld bc,00000h		;6a73
	ld a,(bc)		;6a76
	dec d			;6a77
	dec c			;6a78
	rrca			;6a79
	dec c			;6a7a
	dec c			;6a7b
	ld l,h			;6a7c
	ld bc,00838h		;6a7d
	daa			;6a80
	dec bc			;6a81
	ld bc,00816h		;6a82
	rrca			;6a85
	ex af,af'		;6a86
	rrca			;6a87
	nop			;6a88
	nop			;6a89
	inc (hl)		;6a8a
	ex af,af'		;6a8b
	jr z,$+13		;6a8c
	nop			;6a8e
	dec d			;6a8f
	add hl,de		;6a90
	rrca			;6a91
	add hl,de		;6a92
	dec c			;6a93
	ld l,h			;6a94
	ld bc,0043dh		;6a95
	ld sp,0020fh		;6a98
	ld d,00dh		;6a9b
	rrca			;6a9d
	dec c			;6a9e
	dec c			;6a9f
	nop			;6aa0
	nop			;6aa1
	nop			;6aa2
	nop			;6aa3
	ld l,h			;6aa4
	ld bc,01502h		;6aa5
	ex af,af'		;6aa8
	rrca			;6aa9
	ex af,af'		;6aaa
	dec c			;6aab
	ld l,h			;6aac
	ld bc,00267h		;6aad
	ld l,h			;6ab0
	ld bc,01602h		;6ab1
	add hl,de		;6ab4
sub_6ab5h:
	rrca			;6ab5
	add hl,de		;6ab6
	dec c			;6ab7
	nop			;6ab8
	nop			;6ab9
	nop			;6aba
	nop			;6abb
	ld l,h			;6abc
	ld bc,0150ah		;6abd
	add hl,bc		;6ac0
	rrca			;6ac1
	add hl,bc		;6ac2
	dec c			;6ac3
	add hl,sp		;6ac4
	ld b,02dh		;6ac5
	rrca			;6ac7
	ld l,h			;6ac8
	ld bc,01601h		;6ac9
	djnz l6addh		;6acc
	djnz l6addh		;6ace
	nop			;6ad0
	nop			;6ad1
	nop			;6ad2
	nop			;6ad3
	ld l,h			;6ad4
	ld bc,01500h		;6ad5
	dec d			;6ad8
	rrca			;6ad9
	dec d			;6ada
	dec c			;6adb
	nop			;6adc
l6addh:
	nop			;6add
	nop			;6ade
	nop			;6adf
	ld l,h			;6ae0
	ld (bc),a		;6ae1
	ld bc,00916h		;6ae2
	rrca			;6ae5
	add hl,bc		;6ae6
	dec c			;6ae7
	nop			;6ae8
	nop			;6ae9
	nop			;6aea
	nop			;6aeb
	ld l,h			;6aec
	ld (bc),a		;6aed
	ld a,(bc)		;6aee
	dec d			;6aef
	djnz l6b01h		;6af0
	djnz l6b01h		;6af2
	jr z,l6b03h		;6af4
	cpl			;6af6
	ld a,(bc)		;6af7
	ld h,c			;6af8
	nop			;6af9
	nop			;6afa
	ld d,015h		;6afb
	rrca			;6afd
	dec d			;6afe
	dec c			;6aff
	dec h			;6b00
l6b01h:
	dec c			;6b01
	dec l			;6b02
l6b03h:
	ld a,(bc)		;6b03
	nop			;6b04
	nop			;6b05
	nop			;6b06
	dec d			;6b07
	add hl,bc		;6b08
	rrca			;6b09
	add hl,bc		;6b0a
	dec c			;6b0b
	jr z,l6b1bh		;6b0c
	inc l			;6b0e
	rrca			;6b0f
	nop			;6b10
	nop			;6b11
	ld bc,01016h		;6b12
	rrca			;6b15
	djnz l6b25h		;6b16
	nop			;6b18
	nop			;6b19
	nop			;6b1a
l6b1bh:
	nop			;6b1b
	inc l			;6b1c
	rlca			;6b1d
	nop			;6b1e
	dec d			;6b1f
	dec d			;6b20
	rrca			;6b21
	dec d			;6b22
	dec c			;6b23
	nop			;6b24
l6b25h:
	nop			;6b25
	inc e			;6b26
	rrca			;6b27
	nop			;6b28
	nop			;6b29
	ld bc,00916h		;6b2a
	rrca			;6b2d
	add hl,bc		;6b2e
	dec c			;6b2f
	inc hl			;6b30
	dec c			;6b31
	jr z,l6b43h		;6b32
	inc e			;6b34
	rlca			;6b35
	ld (bc),a		;6b36
	dec d			;6b37
	djnz l6b49h		;6b38
	djnz l6b49h		;6b3a
	nop			;6b3c
	nop			;6b3d
	nop			;6b3e
	nop			;6b3f
	jr z,l6b49h		;6b40
	nop			;6b42
l6b43h:
	ld d,015h		;6b43
	rrca			;6b45
	dec d			;6b46
	dec c			;6b47
	nop			;6b48
l6b49h:
	nop			;6b49
	nop			;6b4a
	nop			;6b4b
	nop			;6b4c
	nop			;6b4d
	nop			;6b4e
	dec d			;6b4f
	add hl,bc		;6b50
	rrca			;6b51
	add hl,bc		;6b52
	dec c			;6b53
	ld hl,(02f0dh)		;6b54
	rrca			;6b57
	nop			;6b58
	nop			;6b59
	ld bc,00f16h		;6b5a
	rrca			;6b5d
	rrca			;6b5e
	dec c			;6b5f
	nop			;6b60
	nop			;6b61
	nop			;6b62
	nop			;6b63
	cpl			;6b64
	rlca			;6b65
	nop			;6b66
	dec d			;6b67
	dec d			;6b68
	rrca			;6b69
	dec d			;6b6a
	dec c			;6b6b
	nop			;6b6c
	nop			;6b6d
	nop			;6b6e
	nop			;6b6f
	nop			;6b70
	nop			;6b71
	ld bc,00916h		;6b72
	rrca			;6b75
	add hl,bc		;6b76
	dec c			;6b77
	nop			;6b78
	nop			;6b79
	nop			;6b7a
	nop			;6b7b
	nop			;6b7c
	nop			;6b7d
	ld (bc),a		;6b7e
	dec d			;6b7f
	rrca			;6b80
	rrca			;6b81
	rrca			;6b82
	dec c			;6b83
	nop			;6b84
	nop			;6b85
	nop			;6b86
	nop			;6b87
	nop			;6b88
	nop			;6b89
	nop			;6b8a
	ld d,015h		;6b8b
	rrca			;6b8d
	dec d			;6b8e
	dec c			;6b8f
	nop			;6b90
	nop			;6b91
	nop			;6b92
	nop			;6b93
	nop			;6b94
	nop			;6b95
	nop			;6b96
	dec d			;6b97
	add hl,bc		;6b98
	rrca			;6b99
	add hl,bc		;6b9a
	dec c			;6b9b
	ld sp,02f09h		;6b9c
	rrca			;6b9f
	nop			;6ba0
	nop			;6ba1
	ld bc,00f16h		;6ba2
	rrca			;6ba5
	rrca			;6ba6
	dec c			;6ba7
	ld h,c			;6ba8
	nop			;6ba9
	ld h,c			;6baa
	nop			;6bab
	cpl			;6bac
	rlca			;6bad
	nop			;6bae
	dec d			;6baf
	dec d			;6bb0
	rrca			;6bb1
	dec d			;6bb2
	dec c			;6bb3
	ld sp,02f09h		;6bb4
	rrca			;6bb7
	ld h,c			;6bb8
	nop			;6bb9
	ld bc,00916h		;6bba
	rrca			;6bbd
	add hl,bc		;6bbe
	dec c			;6bbf
	jr z,l6bcch		;6bc0
	dec l			;6bc2
	rrca			;6bc3
	cpl			;6bc4
	rlca			;6bc5
	ld a,(bc)		;6bc6
	dec d			;6bc7
	rrca			;6bc8
	rrca			;6bc9
	rrca			;6bca
	dec c			;6bcb
l6bcch:
	nop			;6bcc
	nop			;6bcd
	nop			;6bce
	nop			;6bcf
	dec l			;6bd0
	rlca			;6bd1
	nop			;6bd2
	ld d,015h		;6bd3
	rrca			;6bd5
	dec d			;6bd6
	dec c			;6bd7
	nop			;6bd8
	nop			;6bd9
	nop			;6bda
	nop			;6bdb
	nop			;6bdc
	nop			;6bdd
	nop			;6bde
	dec d			;6bdf
	ex af,af'		;6be0
	rrca			;6be1
	ex af,af'		;6be2
	dec c			;6be3
	inc l			;6be4
	ld c,02fh		;6be5
	rrca			;6be7
	nop			;6be8
	nop			;6be9
	ld bc,00d16h		;6bea
	rrca			;6bed
	dec c			;6bee
	dec c			;6bef
	ld hl,(0310eh)		;6bf0
	rrca			;6bf3
	cpl			;6bf4
	rlca			;6bf5
	nop			;6bf6
	dec d			;6bf7
	inc d			;6bf8
	rrca			;6bf9
	inc d			;6bfa
	dec c			;6bfb
	jr z,l6c0ch		;6bfc
	inc l			;6bfe
	rrca			;6bff
	ld sp,00007h		;6c00
	ld d,008h		;6c03
	rrca			;6c05
	ex af,af'		;6c06
	dec c			;6c07
l6c08h:
	inc l			;6c08
	ld c,025h		;6c09
	rrca			;6c0b
l6c0ch:
	inc l			;6c0c
	rlca			;6c0d
	ld a,(bc)		;6c0e
	dec d			;6c0f
	dec c			;6c10
	rrca			;6c11
	dec c			;6c12
	dec c			;6c13
	nop			;6c14
	nop			;6c15
l6c16h:
	nop			;6c16
	nop			;6c17
	dec h			;6c18
	rlca			;6c19
	nop			;6c1a
	ld d,014h		;6c1b
	rrca			;6c1d
	inc d			;6c1e
	dec c			;6c1f
	nop			;6c20
	nop			;6c21
	ld h,a			;6c22
	ld bc,00000h		;6c23
	nop			;6c26
	dec d			;6c27
	ld b,00fh		;6c28
	ld b,00dh		;6c2a
	nop			;6c2c
	nop			;6c2d
	nop			;6c2e
	nop			;6c2f
	nop			;6c30
	nop			;6c31
	ld bc,00d16h		;6c32
	rrca			;6c35
	dec c			;6c36
	dec c			;6c37
	ld h,a			;6c38
	ld bc,00000h		;6c39
	nop			;6c3c
	nop			;6c3d
	ld a,(bc)		;6c3e
	dec d			;6c3f
	ld (de),a		;6c40
	rrca			;6c41
	ld (de),a		;6c42
	dec c			;6c43
	nop			;6c44
	nop			;6c45
	ld l,h			;6c46
	ld bc,00000h		;6c47
	ld a,(bc)		;6c4a
	ld d,006h		;6c4b
	rrca			;6c4d
	ld b,00dh		;6c4e
	nop			;6c50
	nop			;6c51
	nop			;6c52
	nop			;6c53
	ld l,h			;6c54
	ld bc,01502h		;6c55
	dec c			;6c58
	rrca			;6c59
	dec c			;6c5a
	dec c			;6c5b
	nop			;6c5c
	nop			;6c5d
	nop			;6c5e
	nop			;6c5f
	ld h,a			;6c60
	ld (bc),a		;6c61
	ld (bc),a		;6c62
	ld d,012h		;6c63
	rrca			;6c65
	ld (de),a		;6c66
	dec c			;6c67
	nop			;6c68
	nop			;6c69
	nop			;6c6a
	nop			;6c6b
	nop			;6c6c
	nop			;6c6d
	ld (bc),a		;6c6e
	dec d			;6c6f
	dec b			;6c70
	rrca			;6c71
	dec b			;6c72
	dec c			;6c73
	ld l,h			;6c74
	ld bc,00267h		;6c75
	nop			;6c78
	nop			;6c79
	ld bc,00d16h		;6c7a
	rrca			;6c7d
	dec c			;6c7e
	dec c			;6c7f
	nop			;6c80
	nop			;6c81
	nop			;6c82
	nop			;6c83
	nop			;6c84
	nop			;6c85
	nop			;6c86
	dec d			;6c87
	ld de,0110fh		;6c88
	dec c			;6c8b
	nop			;6c8c
	nop			;6c8d
	ld l,h			;6c8e
	ld bc,00000h		;6c8f
	ld (bc),a		;6c92
	ld d,005h		;6c93
	rrca			;6c95
	dec b			;6c96
	dec c			;6c97
	ld h,a			;6c98
	ld (bc),a		;6c99
	nop			;6c9a
	nop			;6c9b
	ld l,h			;6c9c
	ld bc,01502h		;6c9d
	dec c			;6ca0
	rrca			;6ca1
	dec c			;6ca2
	dec c			;6ca3
	ld l,h			;6ca4
	ld bc,00000h		;6ca5
	nop			;6ca8
	nop			;6ca9
	nop			;6caa
	ld d,011h		;6cab
	rrca			;6cad
	ld de,0000dh		;6cae
	nop			;6cb1
	nop			;6cb2
	nop			;6cb3
	ld h,a			;6cb4
	inc bc			;6cb5
	ld (bc),a		;6cb6
	dec d			;6cb7
	ld bc,0010fh		;6cb8
	dec c			;6cbb
	ld l,h			;6cbc
	ld bc,0016ch		;6cbd
	nop			;6cc0
	nop			;6cc1
	ld (bc),a		;6cc2
	ld d,00dh		;6cc3
	rrca			;6cc5
	dec c			;6cc6
	dec c			;6cc7
	nop			;6cc8
	nop			;6cc9
	nop			;6cca
	nop			;6ccb
	ld l,h			;6ccc
	ld bc,01500h		;6ccd
	rrca			;6cd0
	rrca			;6cd1
	rrca			;6cd2
	dec c			;6cd3
	ld l,h			;6cd4
	ld bc,00000h		;6cd5
	nop			;6cd8
	nop			;6cd9
	ld (bc),a		;6cda
	ld d,003h		;6cdb
	rrca			;6cdd
	inc bc			;6cde
	dec c			;6cdf
	nop			;6ce0
	nop			;6ce1
	ld l,h			;6ce2
	ld bc,00000h		;6ce3
	ld (bc),a		;6ce6
	dec d			;6ce7
	rrca			;6ce8
	rrca			;6ce9
	rrca			;6cea
	dec c			;6ceb
	ld l,h			;6cec
	ld bc,00000h		;6ced
	nop			;6cf0
	nop			;6cf1
	ld (bc),a		;6cf2
	ld d,014h		;6cf3
	rrca			;6cf5
	inc d			;6cf6
	dec c			;6cf7
	nop			;6cf8
	nop			;6cf9
	nop			;6cfa
	nop			;6cfb
	nop			;6cfc
	nop			;6cfd
	ld (bc),a		;6cfe
	dec d			;6cff
	dec c			;6d00
	rrca			;6d01
	dec c			;6d02
	inc c			;6d03
	ld h,d			;6d04
	jr nc,l6d69h		;6d05
	ld (00061h),a		;6d07
	ld bc,00116h		;6d0a
	rrca			;6d0d
	ld bc,00d0ch		;6d0e
	rrca			;6d11
	dec c			;6d12
	add hl,bc		;6d13
	dec c			;6d14
	add hl,bc		;6d15
	nop			;6d16
	dec d			;6d17
	add hl,de		;6d18
	rrca			;6d19
	add hl,de		;6d1a
	inc c			;6d1b
	nop			;6d1c
	nop			;6d1d
	ld h,e			;6d1e
	add hl,bc		;6d1f
	ld h,e			;6d20
	ld a,(bc)		;6d21
	ld bc,00d16h		;6d22
	rrca			;6d25
	dec c			;6d26
	inc c			;6d27
	ld h,d			;6d28
	cpl			;6d29
	nop			;6d2a
	nop			;6d2b
	nop			;6d2c
	nop			;6d2d
	ld a,(bc)		;6d2e
	dec d			;6d2f
	ld bc,0010fh		;6d30
	inc c			;6d33
	nop			;6d34
	nop			;6d35
	nop			;6d36
	nop			;6d37
	nop			;6d38
	nop			;6d39
	nop			;6d3a
	ld d,019h		;6d3b
	rrca			;6d3d
	add hl,de		;6d3e
	inc c			;6d3f
	ld h,d			;6d40
	ld l,000h		;6d41
	nop			;6d43
	nop			;6d44
	nop			;6d45
	nop			;6d46
	dec d			;6d47
	dec c			;6d48
	rrca			;6d49
	dec c			;6d4a
	inc c			;6d4b
	nop			;6d4c
	nop			;6d4d
	nop			;6d4e
	nop			;6d4f
	nop			;6d50
	nop			;6d51
	ld bc,00116h		;6d52
	rrca			;6d55
	ld bc,l620ch		;6d56
	dec l			;6d59
	nop			;6d5a
	nop			;6d5b
	nop			;6d5c
	nop			;6d5d
	nop			;6d5e
	dec d			;6d5f
	add hl,de		;6d60
	rrca			;6d61
	add hl,de		;6d62
	inc c			;6d63
	nop			;6d64
	nop			;6d65
	nop			;6d66
	nop			;6d67
	nop			;6d68
l6d69h:
	nop			;6d69
	ld bc,00d16h		;6d6a
	rrca			;6d6d
	dec c			;6d6e
	inc c			;6d6f
	ld h,d			;6d70
	inc l			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	ld (bc),a		;6d76
	dec d			;6d77
	ld bc,0010fh		;6d78
	inc c			;6d7b
	nop			;6d7c
	nop			;6d7d
	nop			;6d7e
	nop			;6d7f
	nop			;6d80
	nop			;6d81
	nop			;6d82
	ld d,019h		;6d83
	rrca			;6d85
	add hl,de		;6d86
	inc c			;6d87
	ld h,d			;6d88
	dec hl			;6d89
	nop			;6d8a
	nop			;6d8b
	nop			;6d8c
	nop			;6d8d
	nop			;6d8e
	dec d			;6d8f
	dec c			;6d90
	rrca			;6d91
	dec c			;6d92
	inc c			;6d93
	nop			;6d94
	nop			;6d95
	nop			;6d96
	nop			;6d97
	nop			;6d98
	nop			;6d99
	ld bc,00116h		;6d9a
	rrca			;6d9d
	ld bc,l620ch		;6d9e
	ld hl,(00000h)		;6da1
	nop			;6da4
	nop			;6da5
	nop			;6da6
	dec d			;6da7
	add hl,de		;6da8
	rrca			;6da9
	add hl,de		;6daa
	inc c			;6dab
	nop			;6dac
	nop			;6dad
	nop			;6dae
	nop			;6daf
	nop			;6db0
	nop			;6db1
	ld bc,00d16h		;6db2
	rrca			;6db5
	dec c			;6db6
	inc c			;6db7
	ld h,d			;6db8
	add hl,hl		;6db9
	nop			;6dba
	nop			;6dbb
	nop			;6dbc
	nop			;6dbd
	ld (bc),a		;6dbe
	dec d			;6dbf
	dec c			;6dc0
	rrca			;6dc1
	dec c			;6dc2
	inc c			;6dc3
	cpl			;6dc4
	inc c			;6dc5
	ld hl,(0360ch)		;6dc6
	inc c			;6dc9
	ld bc,00116h		;6dca
	rrca			;6dcd
	ld bc,0000ch		;6dce
	nop			;6dd1
	nop			;6dd2
	nop			;6dd3
	nop			;6dd4
	nop			;6dd5
	nop			;6dd6
	dec d			;6dd7
	add hl,de		;6dd8
	rrca			;6dd9
	add hl,de		;6dda
	inc c			;6ddb
	ld sp,02c0ch		;6ddc
	inc c			;6ddf
	jr c,l6deeh		;6de0
	ld bc,00d16h		;6de2
	rrca			;6de5
	dec c			;6de6
	inc c			;6de7
	ld h,c			;6de8
	nop			;6de9
	ld h,c			;6dea
	nop			;6deb
	ld h,c			;6dec
	nop			;6ded
l6deeh:
	ld a,(bc)		;6dee
	dec d			;6def
	ld bc,0010fh		;6df0
	inc c			;6df3
	ld sp,02c0ch		;6df4
	inc c			;6df7
	jr c,l6e06h		;6df8
	nop			;6dfa
	ld d,019h		;6dfb
	rrca			;6dfd
	add hl,de		;6dfe
	inc c			;6dff
	ld h,c			;6e00
	nop			;6e01
	ld h,c			;6e02
	nop			;6e03
	dec c			;6e04
	add hl,bc		;6e05
l6e06h:
	nop			;6e06
	dec d			;6e07
	dec c			;6e08
	rrca			;6e09
	dec c			;6e0a
	inc c			;6e0b
	nop			;6e0c
	nop			;6e0d
	ld h,d			;6e0e
	ld (00a63h),a		;6e0f
	ld bc,00116h		;6e12
	rrca			;6e15
	ld bc,l620ch		;6e16
	dec l			;6e19
	dec c			;6e1a
	add hl,bc		;6e1b
	nop			;6e1c
	nop			;6e1d
	nop			;6e1e
	dec d			;6e1f
	add hl,de		;6e20
	rrca			;6e21
	add hl,de		;6e22
	inc c			;6e23
	nop			;6e24
	nop			;6e25
	ld h,e			;6e26
	add hl,bc		;6e27
	nop			;6e28
	nop			;6e29
	ld bc,00d16h		;6e2a
	rrca			;6e2d
	dec c			;6e2e
	inc c			;6e2f
	ld h,d			;6e30
	inc l			;6e31
	nop			;6e32
l6e33h:
	nop			;6e33
	nop			;6e34
	nop			;6e35
	ld (bc),a		;6e36
	dec d			;6e37
	ld bc,0010fh		;6e38
	inc c			;6e3b
	nop			;6e3c
	nop			;6e3d
	nop			;6e3e
	nop			;6e3f
	nop			;6e40
	nop			;6e41
	nop			;6e42
	ld d,019h		;6e43
	rrca			;6e45
	add hl,de		;6e46
	inc c			;6e47
	ld h,d			;6e48
	dec hl			;6e49
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	nop			;6e4e
	dec d			;6e4f
	dec c			;6e50
	rrca			;6e51
	dec c			;6e52
	inc c			;6e53
	nop			;6e54
	nop			;6e55
	nop			;6e56
	nop			;6e57
	nop			;6e58
	nop			;6e59
	ld bc,00116h		;6e5a
	rrca			;6e5d
	ld bc,l620ch		;6e5e
	ld hl,(00000h)		;6e61
	nop			;6e64
	nop			;6e65
	nop			;6e66
	dec d			;6e67
	add hl,de		;6e68
	rrca			;6e69
	add hl,de		;6e6a
	inc c			;6e6b
	nop			;6e6c
	nop			;6e6d
	nop			;6e6e
	nop			;6e6f
	nop			;6e70
	nop			;6e71
	ld bc,00d16h		;6e72
	rrca			;6e75
	dec c			;6e76
	inc c			;6e77
	ld h,d			;6e78
	add hl,hl		;6e79
	nop			;6e7a
	nop			;6e7b
	nop			;6e7c
	nop			;6e7d
	ld (bc),a		;6e7e
	dec d			;6e7f
	ld bc,0010fh		;6e80
	inc c			;6e83
	nop			;6e84
	nop			;6e85
	ld h,h			;6e86
	inc bc			;6e87
	ld h,h			;6e88
	inc bc			;6e89
	nop			;6e8a
	ld d,019h		;6e8b
	rrca			;6e8d
	add hl,de		;6e8e
	inc c			;6e8f
	ld h,d			;6e90
	jr z,l6e93h		;6e91
l6e93h:
	nop			;6e93
	nop			;6e94
	nop			;6e95
	nop			;6e96
	dec d			;6e97
	dec c			;6e98
	rrca			;6e99
	dec c			;6e9a
	inc c			;6e9b
	nop			;6e9c
	nop			;6e9d
	nop			;6e9e
	nop			;6e9f
	nop			;6ea0
	nop			;6ea1
	ld bc,00116h		;6ea2
	rrca			;6ea5
	ld bc,l620ch		;6ea6
	daa			;6ea9
	nop			;6eaa
	nop			;6eab
	nop			;6eac
	nop			;6ead
	nop			;6eae
	dec d			;6eaf
	add hl,de		;6eb0
	rrca			;6eb1
	add hl,de		;6eb2
	inc c			;6eb3
	nop			;6eb4
	nop			;6eb5
	nop			;6eb6
	nop			;6eb7
	nop			;6eb8
	nop			;6eb9
	ld bc,00d16h		;6eba
	rrca			;6ebd
	dec c			;6ebe
	inc c			;6ebf
	ld h,d			;6ec0
	jr z,l6ec3h		;6ec1
l6ec3h:
	nop			;6ec3
	nop			;6ec4
	nop			;6ec5
	ld a,(bc)		;6ec6
	dec d			;6ec7
	ld bc,0010fh		;6ec8
	inc c			;6ecb
	nop			;6ecc
	nop			;6ecd
	nop			;6ece
	nop			;6ecf
	nop			;6ed0
	nop			;6ed1
	nop			;6ed2
	ld d,019h		;6ed3
	rrca			;6ed5
	add hl,de		;6ed6
	inc c			;6ed7
	ld h,d			;6ed8
	add hl,hl		;6ed9
	nop			;6eda
	nop			;6edb
	nop			;6edc
	nop			;6edd
	nop			;6ede
	dec d			;6edf
	dec c			;6ee0
	rrca			;6ee1
	dec c			;6ee2
	inc c			;6ee3
	nop			;6ee4
	nop			;6ee5
	nop			;6ee6
	nop			;6ee7
	nop			;6ee8
	nop			;6ee9
	ld bc,00116h		;6eea
	rrca			;6eed
	ld bc,l620ch		;6eee
	ld hl,(00000h)		;6ef1
	nop			;6ef4
	nop			;6ef5
	nop			;6ef6
l6ef7h:
	dec d			;6ef7
	add hl,de		;6ef8
	rrca			;6ef9
	add hl,de		;6efa
	inc c			;6efb
	nop			;6efc
	nop			;6efd
	nop			;6efe
	nop			;6eff
	nop			;6f00
	nop			;6f01
	nop			;6f02
	ld d,00dh		;6f03
	rrca			;6f05
	dec c			;6f06
	inc c			;6f07
	ld h,d			;6f08
	dec hl			;6f09
	ld h,e			;6f0a
	inc b			;6f0b
	ld h,e			;6f0c
	inc b			;6f0d
	ld a,(bc)		;6f0e
	dec d			;6f0f
	ld bc,0010fh		;6f10
	inc c			;6f13
	nop			;6f14
	nop			;6f15
	nop			;6f16
	nop			;6f17
	nop			;6f18
	nop			;6f19
	nop			;6f1a
	ld d,019h		;6f1b
	rrca			;6f1d
	add hl,de		;6f1e
	inc c			;6f1f
	ld h,d			;6f20
	inc l			;6f21
	nop			;6f22
	nop			;6f23
	nop			;6f24
	nop			;6f25
	nop			;6f26
	dec d			;6f27
	dec c			;6f28
	rrca			;6f29
	dec c			;6f2a
	inc c			;6f2b
	nop			;6f2c
	nop			;6f2d
	nop			;6f2e
	nop			;6f2f
	nop			;6f30
	nop			;6f31
	ld bc,00116h		;6f32
	rrca			;6f35
	ld bc,l620ch		;6f36
	dec l			;6f39
	nop			;6f3a
	nop			;6f3b
	nop			;6f3c
	nop			;6f3d
	ld a,(bc)		;6f3e
	dec d			;6f3f
	add hl,de		;6f40
	rrca			;6f41
	add hl,de		;6f42
	inc c			;6f43
	nop			;6f44
	nop			;6f45
	nop			;6f46
	nop			;6f47
	nop			;6f48
	nop			;6f49
	ld a,(bc)		;6f4a
	ld d,00dh		;6f4b
	rrca			;6f4d
	dec c			;6f4e
	inc c			;6f4f
	ld h,d			;6f50
	ld l,000h		;6f51
	nop			;6f53
	nop			;6f54
	nop			;6f55
	ld bc,00115h		;6f56
	rrca			;6f59
	ld bc,0000ch		;6f5a
	nop			;6f5d
	nop			;6f5e
	nop			;6f5f
	nop			;6f60
	nop			;6f61
	nop			;6f62
	ld d,019h		;6f63
	rrca			;6f65
	add hl,de		;6f66
	inc c			;6f67
	ld h,d			;6f68
	cpl			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	nop			;6f6d
	nop			;6f6e
	dec d			;6f6f
	dec c			;6f70
	rrca			;6f71
	dec c			;6f72
	inc c			;6f73
	nop			;6f74
	nop			;6f75
	nop			;6f76
	nop			;6f77
	nop			;6f78
	nop			;6f79
	ld bc,00116h		;6f7a
	rrca			;6f7d
	ld bc,l620ch		;6f7e
	jr nc,l6f83h		;6f81
l6f83h:
	nop			;6f83
	nop			;6f84
	nop			;6f85
	ld a,(bc)		;6f86
	dec d			;6f87
	add hl,de		;6f88
	rrca			;6f89
	add hl,de		;6f8a
	inc c			;6f8b
	nop			;6f8c
	nop			;6f8d
	nop			;6f8e
	nop			;6f8f
	nop			;6f90
	nop			;6f91
	ld (bc),a		;6f92
	ld d,00dh		;6f93
	rrca			;6f95
	dec c			;6f96
	inc c			;6f97
	ld h,d			;6f98
	cpl			;6f99
	nop			;6f9a
	nop			;6f9b
	nop			;6f9c
	nop			;6f9d
	ld bc,00115h		;6f9e
	rrca			;6fa1
	ld bc,0000ch		;6fa2
	nop			;6fa5
	nop			;6fa6
	nop			;6fa7
	ld l,h			;6fa8
	ld bc,01600h		;6fa9
	add hl,de		;6fac
	rrca			;6fad
	add hl,de		;6fae
	inc c			;6faf
	ld h,d			;6fb0
	ld l,000h		;6fb1
	nop			;6fb3
	nop			;6fb4
	nop			;6fb5
	nop			;6fb6
	dec d			;6fb7
	dec c			;6fb8
	rrca			;6fb9
	dec c			;6fba
	inc c			;6fbb
	nop			;6fbc
	nop			;6fbd
	nop			;6fbe
	nop			;6fbf
	ld l,h			;6fc0
	ld bc,01601h		;6fc1
	ld bc,0010fh		;6fc4
	inc c			;6fc7
	ld h,d			;6fc8
	dec l			;6fc9
	ld l,h			;6fca
	ld bc,00000h		;6fcb
	nop			;6fce
	dec d			;6fcf
	add hl,de		;6fd0
	rrca			;6fd1
	add hl,de		;6fd2
	inc c			;6fd3
	nop			;6fd4
	nop			;6fd5
	ld l,h			;6fd6
	ld bc,0016ch		;6fd7
	ld (bc),a		;6fda
	ld d,00dh		;6fdb
	rrca			;6fdd
	dec c			;6fde
	rrca			;6fdf
	ld h,d			;6fe0
	inc l			;6fe1
	ld l,h			;6fe2
	ld bc,00000h		;6fe3
	ld (bc),a		;6fe6
	dec d			;6fe7
	ld bc,0010fh		;6fe8
	rrca			;6feb
	ld h,c			;6fec
	nop			;6fed
	ld h,c			;6fee
	nop			;6fef
	ld h,c			;6ff0
	nop			;6ff1
	ld (bc),a		;6ff2
	ld d,019h		;6ff3
	rrca			;6ff5
	add hl,de		;6ff6
	rrca			;6ff7
	ld h,d			;6ff8
	ld (bc),a		;6ff9
	ld h,d			;6ffa
	dec c			;6ffb
	nop			;6ffc
	nop			;6ffd
	ld (bc),a		;6ffe
	dec d			;6fff
	add hl,de		;7000
	rrca			;7001
	add hl,de		;7002
	inc c			;7003
	nop			;7004
	nop			;7005
	nop			;7006
	nop			;7007
	nop			;7008
	nop			;7009
	ld a,(bc)		;700a
	ld d,00dh		;700b
	rrca			;700d
	dec c			;700e
	inc c			;700f
	ld h,d			;7010
	ld l,000h		;7011
	nop			;7013
	nop			;7014
	nop			;7015
	ld bc,00115h		;7016
	rrca			;7019
	ld bc,0000ch		;701a
	nop			;701d
	nop			;701e
	nop			;701f
	nop			;7020
	nop			;7021
	nop			;7022
	ld d,019h		;7023
	rrca			;7025
	add hl,de		;7026
	inc c			;7027
	ld h,d			;7028
	cpl			;7029
	nop			;702a
	nop			;702b
	nop			;702c
	nop			;702d
	nop			;702e
	dec d			;702f
	dec c			;7030
	rrca			;7031
	dec c			;7032
	inc c			;7033
	nop			;7034
	nop			;7035
	nop			;7036
	nop			;7037
	nop			;7038
	nop			;7039
	ld bc,00116h		;703a
	rrca			;703d
	ld bc,l620ch		;703e
	jr nc,l7043h		;7041
l7043h:
	nop			;7043
	nop			;7044
	nop			;7045
	ld a,(bc)		;7046
	dec d			;7047
	add hl,de		;7048
	rrca			;7049
	add hl,de		;704a
	inc c			;704b
	nop			;704c
	nop			;704d
	nop			;704e
	nop			;704f
	nop			;7050
	nop			;7051
	ld (bc),a		;7052
	ld d,00dh		;7053
	rrca			;7055
	dec c			;7056
	inc c			;7057
	ld h,d			;7058
	cpl			;7059
	nop			;705a
	nop			;705b
	nop			;705c
	nop			;705d
	ld bc,00115h		;705e
	rrca			;7061
	ld bc,0000ch		;7062
	nop			;7065
	nop			;7066
	nop			;7067
	ld l,h			;7068
	ld bc,01600h		;7069
	add hl,de		;706c
	rrca			;706d
	add hl,de		;706e
	inc c			;706f
	ld h,d			;7070
	ld l,000h		;7071
	nop			;7073
	nop			;7074
	nop			;7075
	nop			;7076
	dec d			;7077
	dec c			;7078
	rrca			;7079
	dec c			;707a
	inc c			;707b
	nop			;707c
	nop			;707d
	nop			;707e
	nop			;707f
	ld l,h			;7080
	ld bc,01601h		;7081
	ld bc,0010fh		;7084
	inc c			;7087
	ld h,d			;7088
	dec l			;7089
	ld l,h			;708a
	ld bc,00000h		;708b
	nop			;708e
	dec d			;708f
	add hl,de		;7090
	rrca			;7091
	add hl,de		;7092
	inc c			;7093
	nop			;7094
	nop			;7095
	ld l,h			;7096
	ld bc,0016ch		;7097
	ld (bc),a		;709a
	ld d,00dh		;709b
	rrca			;709d
	dec c			;709e
	rrca			;709f
	ld h,d			;70a0
	inc l			;70a1
	ld l,h			;70a2
	ld bc,00000h		;70a3
	ld (bc),a		;70a6
	dec d			;70a7
	ld bc,0010fh		;70a8
	rrca			;70ab
	ld h,c			;70ac
	nop			;70ad
	ld h,c			;70ae
	nop			;70af
	ld h,c			;70b0
	nop			;70b1
	ld (bc),a		;70b2
	ld d,019h		;70b3
	rrca			;70b5
	add hl,de		;70b6
	rrca			;70b7
	ld h,d			;70b8
	ld (bc),a		;70b9
	ld h,d			;70ba
	dec c			;70bb
	nop			;70bc
	nop			;70bd
	ld (bc),a		;70be
	dec d			;70bf
	rst 38h			;70c0
	ret nc			;70c1
	ld b,h			;70c2
	ld b,l			;70c3
	and (hl)		;70c4
	ld h,l			;70c5
	ret nz			;70c6
	ld d,h			;70c7
	call sub_6595h		;70c8
	scf			;70cb
	sub l			;70cc
	ld a,e			;70cd
	sbc a,059h		;70ce
	cp h			;70d0
	inc d			;70d1
	jp (hl)			;70d2
	ld (hl),c		;70d3
	cp d			;70d4
	adc a,c			;70d5
	add a,h			;70d6
	sub (hl)		;70d7
	or l			;70d8
	push hl			;70d9
	ld c,h			;70da
	add a,(hl)		;70db
	ld c,c			;70dc
	jp po,0c914h		;70dd
	ld d,e			;70e0
	add a,b			;70e1
	sub h			;70e2
	ld b,h			;70e3
	jp nz,04754h		;70e4
	sub d			;70e7
	ld h,h			;70e8
	and h			;70e9
	call po,sub_5685h	;70ea
l70edh:
	inc b			;70ed
	out (02bh),a		;70ee
	ld (bc),a		;70f0
	cp 068h			;70f1
	add a,d			;70f3
	jp z,09a63h		;70f4
	ld (l49a7h),a		;70f7
	xor a			;70fa
	jp z,l48b2h		;70fb
	sbc a,(hl)		;70fe
	jp z,0c523h		;70ff
	or d			;7102
	add a,c			;7103
	or d			;7104
	sbc a,0f3h		;7105
	add a,h			;7107
	ld (hl),a		;7108
	ex de,hl		;7109
	inc sp			;710a
	ld b,h			;710b
	daa			;710c
	and a			;710d
	daa			;710e
	exx			;710f
	add a,h			;7110
	ex af,af'		;7111
	ld sp,0fccdh		;7112
	jp c,0b3aah		;7115
	push de			;7118
	jp nc,0b789h		;7119
	xor 0f0h		;711c
	ld b,b			;711e
	ld l,d			;711f
	sub d			;7120
	ld l,b			;7121
	add hl,hl		;7122
	out (008h),a		;7123
	ld a,(bc)		;7125
	inc c			;7126
	ld h,h			;7127
	sub h			;7128
	and l			;7129
	add a,h			;712a
	inc sp			;712b
	cp h			;712c
	ld d,(hl)		;712d
	rlca			;712e
	add a,a			;712f
	cp c			;7130
	halt			;7131
	exx			;7132
	ld h,l			;7133
	rst 10h			;7134
	sub (hl)		;7135
	ld bc,0a657h		;7136
	add hl,bc		;7139
	sbc a,(hl)		;713a
	adc a,h			;713b
	cp a			;713c
	sbc a,h			;713d
	or l			;713e
	sub d			;713f
	xor (hl)		;7140
	inc hl			;7141
	ld b,(hl)		;7142
	dec b			;7143
	call nz,0ef4ah		;7144
	add a,091h		;7147
	exx			;7149
	cp c			;714a
	adc a,c			;714b
	exx			;714c
	di			;714d
	add hl,de		;714e
	jp z,0349bh		;714f
	ld h,h			;7152
	rra			;7153
	sub e			;7154
	ld h,l			;7155
	jr nc,l70edh		;7156
	cp b			;7158
	ld (bc),a		;7159
	sbc a,l			;715a
	call nc,0bd8ch		;715b
	jp z,09cc7h		;715e
	sub d			;7161
	daa			;7162
	jp pe,09792h		;7163
	adc a,b			;7166
	sbc a,0a8h		;7167
	call 0af8ch		;7169
	sbc a,h			;716c
	or (hl)			;716d
	cp h			;716e
	and c			;716f
	sbc a,d			;7170
	xor c			;7171
	pop bc			;7172
	xor c			;7173
	add hl,hl		;7174
	ld h,0c5h		;7175
	ld c,e			;7177
	rla			;7178
	ld sp,0f008h		;7179
	scf			;717c
	sub a			;717d
	dec sp			;717e
	add a,(hl)		;717f
	ld l,08fh		;7180
	or e			;7182
	sub e			;7183
	push de			;7184
	ld d,c			;7185
	jr nz,l71c7h		;7186
	ld c,b			;7188
	ret nz			;7189
	jr nz,l71dah		;718a
	add hl,hl		;718c
	adc a,l			;718d
	ld hl,(01904h)		;718e
	pop hl			;7191
	call z,035a5h		;7192
	dec (hl)		;7195
	dec h			;7196
	sbc a,b			;7197
	exx			;7198
	ld b,065h		;7199
	add a,l			;719b
	cp (hl)			;719c
	add hl,hl		;719d
	or b			;719e
	jr c,$+7		;719f
	call z,0b49eh		;71a1
	call c,08e8eh		;71a4
	ld (0d4c5h),a		;71a7
	jp nc,0a98ch		;71aa
	xor c			;71ad
	add hl,de		;71ae
	xor b			;71af
	add hl,de		;71b0
	inc h			;71b1
	add a,a			;71b2
	sub d			;71b3
	and b			;71b4
	adc a,l			;71b5
	inc h			;71b6
	jp z,02115h		;71b7
	ld a,(l7e3eh)		;71ba
	ld de,02027h		;71bd
	call nc,084b2h		;71c0
	sub d			;71c3
	push bc			;71c4
	ld c,d			;71c5
	dec bc			;71c6
l71c7h:
	defb 0edh ;next byte illegal after ed	;71c7
	rst 20h			;71c8
	xor b			;71c9
	sbc a,c			;71ca
	or h			;71cb
	add a,c			;71cc
	or h			;71cd
	or b			;71ce
	ld b,(hl)		;71cf
	add hl,bc		;71d0
	sbc a,c			;71d1
	inc c			;71d2
	ex af,af'		;71d3
	inc h			;71d4
	add hl,bc		;71d5
	adc a,c			;71d6
	and e			;71d7
	rst 8			;71d8
	daa			;71d9
l71dah:
	xor d			;71da
	inc hl			;71db
	ret p			;71dc
	ld h,0e2h		;71dd
	sbc a,h			;71df
	add a,(hl)		;71e0
	call z,0a5fch		;71e1
	ld e,d			;71e4
	sbc a,(hl)		;71e5
	ld hl,(0ba53h)		;71e6
	ld sp,026b5h		;71e9
	add a,l			;71ec
	sub l			;71ed
	xor 092h		;71ee
	call z,098b5h		;71f0
	sub e			;71f3
	and b			;71f4
	add a,d			;71f5
	jp nc,l4a4ah		;71f6
	ld h,0efh		;71f9
	ld h,(hl)		;71fb
	sbc a,a			;71fc
	jp z,0b5c9h		;71fd
	nop			;7200
	call p,sub_6512h	;7201
	sbc a,(hl)		;7204
	ld l,c			;7205
	jp (hl)			;7206
	rst 8			;7207
	ld a,c			;7208
	and c			;7209
	ld c,c			;720a
	ret m			;720b
	cp e			;720c
	ld a,(bc)		;720d
	ld b,l			;720e
	call c,014e2h		;720f
	or 0e2h			;7212
	dec h			;7214
	rst 28h			;7215
	ld (0f6c2h),a		;7216
	inc c			;7219
	sbc a,b			;721a
	ld b,024h		;721b
	xor e			;721d
	sub c			;721e
	ld d,e			;721f
	inc h			;7220
	ld c,b			;7221
	pop af			;7222
	jr l724ch		;7223
	and d			;7225
	dec de			;7226
	add a,h			;7227
	ld h,(hl)		;7228
	defb 0edh ;next byte illegal after ed	;7229
	rst 8			;722a
	out (04dh),a		;722b
	sbc a,a			;722d
	ld d,(hl)		;722e
	or h			;722f
	ld h,l			;7230
	dec hl			;7231
	ret nc			;7232
	ld d,a			;7233
	jp z,l6651h		;7234
	rst 38h			;7237
	ld e,(hl)		;7238
	xor d			;7239
	ld c,(hl)		;723a
	and c			;723b
	ld c,c			;723c
	rst 0			;723d
	ld e,091h		;723e
	xor h			;7240
	ld d,c			;7241
	and e			;7242
	ex (sp),hl		;7243
	add a,h			;7244
	add a,c			;7245
	ld d,c			;7246
	or (hl)			;7247
	ld b,(hl)		;7248
	rst 8			;7249
	add a,08ah		;724a
l724ch:
	ld e,d			;724c
	inc e			;724d
	sbc a,(hl)		;724e
	sbc a,e			;724f
	inc bc			;7250
	sbc a,h			;7251
	add hl,hl		;7252
	cp (hl)			;7253
	ld (de),a		;7254
	ld h,(hl)		;7255
	adc a,h			;7256
	scf			;7257
	rst 20h			;7258
	or d			;7259
	and d			;725a
	ld (09381h),a		;725b
	or a			;725e
	ld (de),a		;725f
	cp l			;7260
	sub d			;7261
	sbc a,02dh		;7262
	ld sp,hl		;7264
	ld b,c			;7265
	ld h,009h		;7266
	jr z,l7298h		;7268
	inc h			;726a
	ld h,a			;726b
	adc a,0a9h		;726c
l726eh:
	or 024h			;726e
	push hl			;7270
	add hl,de		;7271
	call po,0df25h		;7272
	ld l,h			;7275
	ld sp,hl		;7276
	xor (hl)		;7277
	jp pe,09827h		;7278
	defb 0edh ;next byte illegal after ed	;727b
	dec b			;727c
	ld d,h			;727d
	ld h,l			;727e
	halt			;727f
	ld d,e			;7280
	sbc a,e			;7281
	ret			;7282
	rst 20h			;7283
	inc h			;7284
	xor h			;7285
	sub c			;7286
	sbc a,h			;7287
	ld c,c			;7288
	push hl			;7289
	ld b,h			;728a
	ld h,002h		;728b
	xor c			;728d
	or d			;728e
	ld (hl),a		;728f
	call m,0a5d5h		;7290
	sub e			;7293
	push af			;7294
	xor l			;7295
	ld (hl),a		;7296
	sub a			;7297
l7298h:
	ld (hl),d		;7298
	scf			;7299
	ld d,a			;729a
	ld h,026h		;729b
	sbc a,(hl)		;729d
	or c			;729e
	rlca			;729f
	ld h,023h		;72a0
	ld e,b			;72a2
	ld c,h			;72a3
	defb 0edh ;next byte illegal after ed	;72a4
	dec b			;72a5
	and h			;72a6
	ld d,d			;72a7
	sbc a,l			;72a8
	dec (hl)		;72a9
	ld hl,0d226h		;72aa
	inc de			;72ad
	nop			;72ae
	add a,h			;72af
	or d			;72b0
	call m,0f693h		;72b1
	ld b,(hl)		;72b4
	or (hl)			;72b5
	ld (hl),d		;72b6
	or b			;72b7
	ld h,d			;72b8
	retn			;72b9
	ret nz			;72bb
	add a,d			;72bc
	add a,e			;72bd
	jr z,l726eh		;72be
	ld (hl),0a2h		;72c0
	ld d,c			;72c2
	ld h,a			;72c3
	jp z,0f635h		;72c4
	push hl			;72c7
	call z,00c66h		;72c8
	ld c,l			;72cb
	ei			;72cc
	adc a,c			;72cd
	dec d			;72ce
	inc b			;72cf
	ld h,099h		;72d0
	sbc a,(hl)		;72d2
	sbc a,(hl)		;72d3
	cp 092h			;72d4
	ld d,(hl)		;72d6
	defb 0edh ;next byte illegal after ed	;72d7
	sbc a,c			;72d8
	or e			;72d9
	defb 0cbh,035h ;sli l	;72da
	ld bc,025c6h		;72dc
	and h			;72df
	ld h,h			;72e0
	ld b,a			;72e1
	ld b,(hl)		;72e2
	ld b,(hl)		;72e3
	dec b			;72e4
	sub e			;72e5
	sub (hl)		;72e6
	inc b			;72e7
	ld h,(hl)		;72e8
	dec b			;72e9
	ei			;72ea
	sbc a,b			;72eb
	or a			;72ec
	cp h			;72ed
	pop af			;72ee
l72efh:
	xor c			;72ef
	ld (bc),a		;72f0
	add a,(hl)		;72f1
	jp z,l6e33h		;72f2
	cp 0c1h			;72f5
	ld (0bcd9h),hl		;72f7
	and a			;72fa
	sub h			;72fb
	exx			;72fc
	ld h,(hl)		;72fd
	add hl,bc		;72fe
	and 054h		;72ff
	call m,0f526h		;7301
	call 036c9h		;7304
	adc a,(hl)		;7307
	bit 2,h			;7308
	jp nz,0a06ch		;730a
	ld c,d			;730d
	ld b,h			;730e
	cp l			;730f
	halt			;7310
	cpl			;7311
	push hl			;7312
	sub b			;7313
	and h			;7314
	rst 0			;7315
	jp 038eah		;7316
	inc d			;7319
	jr nz,l7342h		;731a
	rst 18h			;731c
	ld d,h			;731d
	call po,0c576h		;731e
	ld e,c			;7321
	and 005h		;7322
	ld d,d			;7324
	ld l,d			;7325
	dec bc			;7326
	ld c,b			;7327
	cp d			;7328
	push bc			;7329
	ld (0b366h),hl		;732a
	adc a,c			;732d
	and h			;732e
	ld a,e			;732f
	ex (sp),hl		;7330
	ld e,c			;7331
	ret p			;7332
	add hl,hl		;7333
	add a,a			;7334
	ei			;7335
	add a,a			;7336
	ld l,c			;7337
	sbc a,d			;7338
	ld c,d			;7339
	ld b,a			;733a
	and e			;733b
	or h			;733c
	sbc a,h			;733d
	ld (hl),d		;733e
	rst 30h			;733f
	ld (hl),a		;7340
	adc a,c			;7341
l7342h:
	rst 30h			;7342
	add a,e			;7343
	jp p,0b2f6h		;7344
	push hl			;7347
	ld c,d			;7348
	adc a,d			;7349
	or e			;734a
	pop de			;734b
	jr z,l72efh		;734c
	push hl			;734e
	ret z			;734f
	ld b,(hl)		;7350
	add hl,hl		;7351
	sub a			;7352
	ld c,(hl)		;7353
	call z,0995ah		;7354
	call c,006dfh		;7357
	ld a,(de)		;735a
	ld h,a			;735b
	dec h			;735c
	inc hl			;735d
	sub 0b2h		;735e
	cp b			;7360
	inc de			;7361
	ld b,a			;7362
	ld b,l			;7363
	or e			;7364
	ld a,d			;7365
	call po,004b7h		;7366
	cp (hl)			;7369
	ld l,d			;736a
	ld a,h			;736b
	add a,c			;736c
	jr z,l737ch		;736d
	rst 38h			;736f
	ret			;7370
	and c			;7371
	adc a,e			;7372
	add a,(hl)		;7373
	ld (bc),a		;7374
	ld (hl),h		;7375
	defb 0ddh,091h,005h ;illegal sequence	;7376
	ld h,052h		;7379
	add a,d			;737b
l737ch:
	ld e,l			;737c
	sbc a,a			;737d
	dec bc			;737e
	ld d,(hl)		;737f
	xor e			;7380
	jp m,024aeh		;7381
	ld (091a5h),hl		;7384
	or d			;7387
	ld h,068h		;7388
	sbc a,(hl)		;738a
	add a,c			;738b
	dec h			;738c
l738dh:
	add hl,bc		;738d
	in a,(01dh)		;738e
	ld bc,0a28dh		;7390
	add hl,bc		;7393
	add hl,bc		;7394
	ld a,(bc)		;7395
	or l			;7396
	ld l,c			;7397
	ret m			;7398
	ld c,c			;7399
	ret			;739a
	call 02386h		;739b
	add a,c			;739e
	ld h,041h		;739f
	add hl,hl		;73a1
	sub 081h		;73a2
	dec c			;73a4
	daa			;73a5
	daa			;73a6
	ld l,h			;73a7
	add hl,de		;73a8
	inc b			;73a9
	rlca			;73aa
	ld c,d			;73ab
	add hl,bc		;73ac
	dec hl			;73ad
	ld a,(de)		;73ae
	ld c,c			;73af
	ld sp,005cch		;73b0
	ld (02229h),hl		;73b3
l73b6h:
	ld l,d			;73b6
	and l			;73b7
	ld (hl),d		;73b8
	ret pe			;73b9
	ld d,a			;73ba
	ld b,a			;73bb
	ld a,b			;73bc
	jp (hl)			;73bd
	inc h			;73be
	call pe,0ca5fh		;73bf
	sbc a,b			;73c2
	adc a,b			;73c3
	sub a			;73c4
	and c			;73c5
	adc a,d			;73c6
	jr nz,l738dh		;73c7
	sbc a,b			;73c9
	ld b,l			;73ca
	add hl,de		;73cb
	inc b			;73cc
	sbc a,h			;73cd
	defb 0edh ;next byte illegal after ed	;73ce
	sub d			;73cf
	or c			;73d0
	adc a,(hl)		;73d1
	sub d			;73d2
	call c,0b72dh		;73d3
	ld e,b			;73d6
	sub (hl)		;73d7
	jp c,01cdeh		;73d8
	ld c,b			;73db
	cp (hl)			;73dc
	ld d,l			;73dd
	sbc a,l			;73de
	ret po			;73df
	add hl,de		;73e0
	cp c			;73e1
	ret c			;73e2
	inc b			;73e3
	ld l,h			;73e4
	daa			;73e5
	and h			;73e6
	outd			;73e7
	inc b			;73e9
	djnz l73b6h		;73ea
	cpl			;73ec
	sub h			;73ed
	inc d			;73ee
	add hl,bc		;73ef
	ld hl,(093b5h)		;73f0
	add a,e			;73f3
	sub d			;73f4
	in a,(058h)		;73f5
	ld (hl),h		;73f7
	jp po,l488bh		;73f8
	cp 04bh			;73fb
	jp m,0c44ah		;73fd
	and a			;7400
	jp nz,0f162h		;7401
	and (hl)		;7404
	ld h,0d7h		;7405
	jp m,0eee0h		;7407
	or (hl)			;740a
	cp e			;740b
	sub e			;740c
	sub (hl)		;740d
	rst 8			;740e
	ret po			;740f
	xor d			;7410
	inc d			;7411
	inc l			;7412
	call nz,098aah		;7413
	jp z,l4d9ch		;7416
	ld l,c			;7419
	call po,09acch		;741a
	xor e			;741d
	jp nc,0cab2h		;741e
	halt			;7421
	add a,l			;7422
	ret z			;7423
	rst 18h			;7424
	call z,0e3a1h		;7425
	and (hl)		;7428
	ld (hl),e		;7429
	cp h			;742a
	or a			;742b
	adc a,h			;742c
	sub d			;742d
	ld h,e			;742e
	xor h			;742f
	adc a,e			;7430
	sbc a,c			;7431
	or e			;7432
	add hl,hl		;7433
	ret nc			;7434
	add hl,sp		;7435
	xor c			;7436
	ld a,d			;7437
	ld c,b			;7438
	ret nz			;7439
	push hl			;743a
	call pe,01329h		;743b
	ld c,c			;743e
	ld a,(bc)		;743f
	ld l,c			;7440
	and (hl)		;7441
	ld b,h			;7442
	dec bc			;7443
	ld hl,(0d008h)		;7444
	ld c,c			;7447
	ld l,c			;7448
	ld (0a329h),hl		;7449
	djnz l74b8h		;744c
	ld l,e			;744e
	ld b,088h		;744f
	exx			;7451
	ld c,c			;7452
	ld l,e			;7453
	ld b,(hl)		;7454
	ld a,(bc)		;7455
	sbc a,005h		;7456
	dec bc			;7458
	rlca			;7459
	ld a,(bc)		;745a
	ld c,h			;745b
	inc c			;745c
	pop hl			;745d
	ld (de),a		;745e
	ld b,(hl)		;745f
	add a,(hl)		;7460
	ld (l7893h),a		;7461
	push de			;7464
l7465h:
	adc a,(hl)		;7465
	call p,0b4adh		;7466
	rst 38h			;7469
	cp h			;746a
	cp (hl)			;746b
	push hl			;746c
	ld sp,hl		;746d
	push bc			;746e
	ld l,(hl)		;746f
	dec h			;7470
	jp (hl)			;7471
	and 0ebh		;7472
	ld hl,(0cc27h)		;7474
	add hl,hl		;7477
	add a,h			;7478
	cpl			;7479
	rst 20h			;747a
	ld (0daa4h),hl		;747b
	ld l,(hl)		;747e
	or l			;747f
	jp z,l49b0h		;7480
	ret nz			;7483
	ld b,c			;7484
	inc hl			;7485
	ld h,045h		;7486
	rra			;7488
	ld e,l			;7489
	rst 28h			;748a
	and 0d9h		;748b
	ex de,hl		;748d
	ld c,c			;748e
	add a,c			;748f
	ret c			;7490
	inc hl			;7491
	xor e			;7492
	ld d,a			;7493
	sbc a,d			;7494
	ld de,0c907h		;7495
	ld l,d			;7498
	sbc a,b			;7499
	jp nc,0ce5ah		;749a
	ld e,(hl)		;749d
	rst 18h			;749e
	ld c,c			;749f
	or d			;74a0
	and a			;74a1
	ld d,086h		;74a2
	ld h,h			;74a4
	jr c,l74eeh		;74a5
	and h			;74a7
	rst 0			;74a8
	ld c,b			;74a9
	dec b			;74aa
	ret			;74ab
	ld h,h			;74ac
	and h			;74ad
	sub a			;74ae
	sbc a,h			;74af
	ret			;74b0
	ld (02740h),hl		;74b1
	pop de			;74b4
	adc a,c			;74b5
	ret pe			;74b6
	ld b,b			;74b7
l74b8h:
	and l			;74b8
	push hl			;74b9
	rst 30h			;74ba
	and d			;74bb
	inc hl			;74bc
	jp c,031d2h		;74bd
	xor a			;74c0
	ld a,(bc)		;74c1
	adc a,c			;74c2
	inc sp			;74c3
	call p,0bc75h		;74c4
	jr z,l7465h		;74c7
	sbc a,d			;74c9
	sub l			;74ca
	and d			;74cb
	adc a,h			;74cc
	dec a			;74cd
	xor h			;74ce
	xor b			;74cf
	xor h			;74d0
	ret nz			;74d1
	xor l			;74d2
	sbc a,h			;74d3
	call nc,06cceh		;74d4
	inc bc			;74d7
	ret pe			;74d8
	ld hl,(0aa94h)		;74d9
	ld h,(hl)		;74dc
	add hl,bc		;74dd
	ld c,l			;74de
	ld (de),a		;74df
	push bc			;74e0
	pop hl			;74e1
	ld h,b			;74e2
	sub a			;74e3
	ret c			;74e4
	sub c			;74e5
	cp c			;74e6
	or (hl)			;74e7
	ld sp,hl		;74e8
	sub a			;74e9
	call z,0e895h		;74ea
	and b			;74ed
l74eeh:
	dec c			;74ee
	jr z,l7518h		;74ef
	call pe,08846h		;74f1
	add hl,de		;74f4
	ld hl,(02d01h)		;74f5
	jr nz,$+108		;74f8
	ld c,a			;74fa
	adc a,h			;74fb
	ld (hl),c		;74fc
	add hl,hl		;74fd
	jp c,089dah		;74fe
	ld (09cc1h),hl		;7501
	or a			;7504
	defb 0edh ;next byte illegal after ed	;7505
	call sub_472fh		;7506
	inc hl			;7509
	ex de,hl		;750a
	ld h,040h		;750b
	xor b			;750d
	and d			;750e
	sub h			;750f
	ld c,d			;7510
	jp p,l4768h		;7511
	inc h			;7514
	ld (09dc2h),hl		;7515
l7518h:
	pop bc			;7518
	or d			;7519
	xor c			;751a
	jp nz,00242h		;751b
	jp po,0dc2eh		;751e
	jp po,028c1h		;7521
	and a			;7524
l7525h:
	jp z,l4da9h		;7525
	call pe,0dc5ch		;7528
	jr l7534h		;752b
	jp po,0dc92h		;752d
	ld e,d			;7530
	ret c			;7531
	ld d,d			;7532
	xor c			;7533
l7534h:
	ld e,c			;7534
	adc a,(hl)		;7535
	jp nc,0c1abh		;7536
	ld sp,02747h		;7539
	sbc a,l			;753c
	xor c			;753d
	or (hl)			;753e
	ld e,c			;753f
	ex (sp),hl		;7540
	dec d			;7541
	ld e,(hl)		;7542
	sbc a,(hl)		;7543
	dec h			;7544
	add a,c			;7545
	sbc a,h			;7546
	rst 30h			;7547
	or c			;7548
	sub 025h		;7549
	add hl,hl		;754b
	inc b			;754c
	add a,b			;754d
	inc hl			;754e
	sbc a,h			;754f
	ld l,c			;7550
	or h			;7551
	jr l7556h		;7552
	ld e,c			;7554
	ld h,b			;7555
l7556h:
	sbc a,b			;7556
	xor b			;7557
	and h			;7558
	adc a,b			;7559
	sbc a,e			;755a
l755bh:
	add a,l			;755b
	ld h,b			;755c
	ld b,l			;755d
	inc hl			;755e
	ld b,l			;755f
	ld bc,0edd4h		;7560
	call z,0dcf7h		;7563
	add a,(hl)		;7566
	ld e,e			;7567
	ld b,a			;7568
	ld e,e			;7569
l756ah:
	rst 8			;756a
	sub c			;756b
	rst 8			;756c
	sub (hl)		;756d
	jp c,0d6b8h		;756e
	sub l			;7571
	dec c			;7572
	ld a,e			;7573
	rlca			;7574
	ld d,c			;7575
l7576h:
	sbc a,e			;7576
	cp 0a1h			;7577
	ld bc,018a8h		;7579
	adc a,c			;757c
	daa			;757d
	ld h,(hl)		;757e
	add hl,hl		;757f
	add a,(hl)		;7580
	ld a,c			;7581
	ld e,l			;7582
	rla			;7583
	adc a,l			;7584
	ld (bc),a		;7585
	adc a,0bfh		;7586
	call nc,0b69ch		;7588
	ld sp,0b969h		;758b
	jr nc,l7576h		;758e
	adc a,h			;7590
	call po,08808h		;7591
	add hl,hl		;7594
	ld l,h			;7595
	jr z,l7556h		;7596
	jp z,0280eh		;7598
	jp 0fcbfh		;759b
	jr nc,l7525h		;759e
	add a,a			;75a0
	adc a,l			;75a1
	res 2,d			;75a2
	sbc a,b			;75a4
	ld c,e			;75a5
	add a,d			;75a6
	ld a,l			;75a7
	jr nz,l75f3h		;75a8
	ld hl,l5e08h		;75aa
	jp m,0809fh		;75ad
	out (0beh),a		;75b0
	adc a,(hl)		;75b2
	sub a			;75b3
	ld c,b			;75b4
	sub e			;75b5
	xor h			;75b6
	sbc a,e			;75b7
	or d			;75b8
	jp c,02f8ah		;75b9
	xor e			;75bc
	ld (09ad1h),hl		;75bd
	and c			;75c0
	inc c			;75c1
	and d			;75c2
	ld a,(bc)		;75c3
	pop hl			;75c4
	sbc a,c			;75c5
	inc (hl)		;75c6
	inc h			;75c7
	jr l755bh		;75c8
	set 6,l			;75ca
	dec (hl)		;75cc
	cp 0a4h			;75cd
	defb 0fdh,062h ;ld iyh,d	;75cf
	jr z,l756ah		;75d1
	ld (hl),e		;75d3
	call pe,sub_5592h	;75d4
	ld l,d			;75d7
	ld c,c			;75d8
	adc a,(hl)		;75d9
	ld c,c			;75da
	jp nc,0e8c9h		;75db
	jr z,l760eh		;75de
	dec h			;75e0
	ld b,a			;75e1
	ld sp,l66cfh		;75e2
	ex de,hl		;75e5
	ld d,d			;75e6
	add a,d			;75e7
	inc sp			;75e8
	xor a			;75e9
	jp nc,0aaa6h		;75ea
	ld b,e			;75ed
	sbc a,l			;75ee
	ld d,d			;75ef
	adc a,e			;75f0
	pop de			;75f1
	dec b			;75f2
l75f3h:
	pop de			;75f3
	ld a,c			;75f4
	rrca			;75f5
	ld d,000h		;75f6
	inc hl			;75f8
	ei			;75f9
	ld b,(hl)		;75fa
	jp c,l6470h		;75fb
	inc bc			;75fe
	cp h			;75ff
	rst 38h			;7600
	xor e			;7601
	call z,032a9h		;7602
	call z,0e755h		;7605
	call 0ca14h		;7608
	jp po,0b445h		;760b
l760eh:
	ld c,h			;760e
	rst 38h			;760f
	ld d,h			;7610
	jr nz,$-117		;7611
	ld d,c			;7613
	and e			;7614
	ld de,02668h		;7615
	adc a,e			;7618
	halt			;7619
	adc a,0bfh		;761a
	add hl,hl		;761c
	call pe,0c929h		;761d
	jr c,$-25		;7620
	or e			;7622
	ld (de),a		;7623
	sbc a,(hl)		;7624
	inc hl			;7625
	add a,l			;7626
	ld d,d			;7627
	inc h			;7628
	sub (hl)		;7629
	ld c,d			;762a
	pop hl			;762b
	ld h,d			;762c
	add a,a			;762d
	ld h,b			;762e
	ld d,d			;762f
	ld hl,02021h		;7630
	sub e			;7633
	adc a,c			;7634
	ld h,b			;7635
	ld sp,013c3h		;7636
	ld b,(hl)		;7639
	in a,(044h)		;763a
	and h			;763c
	ld h,(hl)		;763d
	sbc a,h			;763e
	sub 0ach		;763f
	add a,b			;7641
	call c,029efh		;7642
	ld b,l			;7645
	ex af,af'		;7646
	cp h			;7647
	ld e,a			;7648
	ld l,b			;7649
	add a,d			;764a
	or d			;764b
	and h			;764c
	ld d,h			;764d
	inc l			;764e
	rst 8			;764f
	sub d			;7650
	and b			;7651
	ld c,c			;7652
	ei			;7653
	dec h			;7654
	ld a,(08423h)		;7655
	ld e,h			;7658
	ld h,l			;7659
	call sub_6502h		;765a
	inc hl			;765d
	dec bc			;765e
	rrca			;765f
	ld b,e			;7660
	ld h,d			;7661
	call po,0c9e7h		;7662
	ld d,0c8h		;7665
	adc a,h			;7667
	ld b,0abh		;7668
	add a,065h		;766a
	call p,0476ah		;766c
	cp (hl)			;766f
	jp p,03f72h		;7670
	ld (bc),a		;7673
	add hl,bc		;7674
	adc a,021h		;7675
	dec bc			;7677
	ld b,068h		;7678
	and (hl)		;767a
	cp (hl)			;767b
	ld a,c			;767c
	sub a			;767d
	ld e,c			;767e
	adc a,l			;767f
	ld sp,hl		;7680
	jr nz,l76cch		;7681
	adc a,c			;7683
	ret nc			;7684
	ret pe			;7685
	ld h,b			;7686
	call z,0fa40h		;7687
	ld e,l			;768a
	push hl			;768b
	rst 10h			;768c
	inc hl			;768d
	pop bc			;768e
	ld hl,l4102h		;768f
	call nc,0e959h		;7692
	ld sp,02147h		;7695
	inc hl			;7698
	ld (09c46h),hl		;7699
	cp h			;769c
	cp c			;769d
	and e			;769e
	sub a			;769f
	or 072h			;76a0
	or (hl)			;76a2
	ld sp,0bb47h		;76a3
	add hl,sp		;76a6
	rst 28h			;76a7
	add hl,sp		;76a8
	add a,d			;76a9
	ld d,0d7h		;76aa
l76ach:
	ld h,l			;76ac
	sub l			;76ad
	and (hl)		;76ae
	ld l,(hl)		;76af
	ld (hl),l		;76b0
	rst 28h			;76b1
	sbc a,b			;76b2
	dec (hl)		;76b3
	xor l			;76b4
	ld de,l7bedh		;76b5
	xor e			;76b8
	ex af,af'		;76b9
	ld b,0edh		;76ba
	call sub_499dh		;76bc
	jr nz,l7726h		;76bf
	xor h			;76c1
	dec d			;76c2
	sub h			;76c3
	ld e,b			;76c4
	jr z,l76c9h		;76c5
	and h			;76c7
	pop de			;76c8
l76c9h:
	cp h			;76c9
	sbc a,e			;76ca
	cp d			;76cb
l76cch:
	call pe,0d8d3h		;76cc
	ret z			;76cf
	ld e,c			;76d0
	xor b			;76d1
	defb 0cbh,035h ;sli l	;76d2
	ret pe			;76d4
	ld (de),a		;76d5
	ld (hl),l		;76d6
	call nz,08a95h		;76d7
	xor a			;76da
	ret p			;76db
	inc h			;76dc
	nop			;76dd
	and h			;76de
	sub a			;76df
	inc a			;76e0
	rst 38h			;76e1
	ld e,b			;76e2
	or (hl)			;76e3
	adc a,d			;76e4
	ld h,a			;76e5
	dec sp			;76e6
	xor a			;76e7
	sub d			;76e8
	call p,086abh		;76e9
	ld (l6ef7h),hl		;76ec
	ret z			;76ef
	pop af			;76f0
	jr z,l7715h		;76f1
	ld h,l			;76f3
	rst 20h			;76f4
	sub d			;76f5
	ld b,(hl)		;76f6
	dec l			;76f7
	daa			;76f8
	and b			;76f9
	xor c			;76fa
	xor d			;76fb
	add hl,hl		;76fc
	ld (hl),l		;76fd
	sub l			;76fe
	jr z,l76ach		;76ff
	xor c			;7701
	dec de			;7702
	jp m,0ce37h		;7703
	inc h			;7706
	call p,0d293h		;7707
	rst 28h			;770a
	ld (hl),a		;770b
	adc a,033h		;770c
	add hl,sp		;770e
	rrca			;770f
	ld bc,0b4a7h		;7710
	ld c,d			;7713
	ld d,(hl)		;7714
l7715h:
	add a,c			;7715
	cpl			;7716
	and b			;7717
	ld c,e			;7718
	ld (hl),d		;7719
	sbc a,c			;771a
	ld c,a			;771b
	add a,l			;771c
	inc h			;771d
	dec bc			;771e
	dec b			;771f
	add a,c			;7720
	or b			;7721
	defb 0edh ;next byte illegal after ed	;7722
	call pe,sub_7a93h	;7723
l7726h:
	ex af,af'		;7726
	ex (sp),hl		;7727
	sub e			;7728
	inc h			;7729
	daa			;772a
	jp p,0db9ah		;772b
	or h			;772e
	ld d,e			;772f
	add a,d			;7730
l7731h:
	ld e,h			;7731
	sbc a,b			;7732
	ld c,(hl)		;7733
	jp nc,l4518h		;7734
	defb 0edh ;next byte illegal after ed	;7737
	exx			;7738
	ld b,l			;7739
	cp l			;773a
	ret pe			;773b
	add a,h			;773c
	sbc a,a			;773d
	ld e,b			;773e
	push hl			;773f
	or c			;7740
	add a,a			;7741
	sub c			;7742
	ret pe			;7743
	ld b,l			;7744
	add a,a			;7745
	and h			;7746
	jr l7731h		;7747
	ld h,c			;7749
	defb 0edh ;next byte illegal after ed	;774a
	jp p,0159dh		;774b
	ei			;774e
	call nc,09296h		;774f
	and c			;7752
	sub c			;7753
	inc bc			;7754
	ld hl,0a028h		;7755
	call nz,sub_54dah	;7758
	ret nz			;775b
	ld e,c			;775c
	inc hl			;775d
	ld d,b			;775e
	add a,(hl)		;775f
	add a,d			;7760
	inc b			;7761
	rst 18h			;7762
	halt			;7763
	or c			;7764
	ld d,e			;7765
	jp nc,0edb2h		;7766
	sub a			;7769
	sub l			;776a
	halt			;776b
	ret pe			;776c
	ld d,d			;776d
	add a,h			;776e
l776fh:
	jr nc,$+9		;776f
	adc a,b			;7771
	cp l			;7772
	and d			;7773
	sbc a,h			;7774
	xor h			;7775
	adc a,c			;7776
	or 009h			;7777
	cp 0d8h			;7779
	jr nz,l776fh		;777b
	sbc a,c			;777d
	call 02431h		;777e
	sbc a,h			;7781
	ld b,l			;7782
	dec de			;7783
	jr z,l77a1h		;7784
	ld b,b			;7786
	jr nz,$-91		;7787
	sub c			;7789
	add a,l			;778a
	sbc a,b			;778b
	sbc a,e			;778c
	sub h			;778d
	cp a			;778e
	ld h,(hl)		;778f
	jp l4f5bh		;7790
	sbc a,(hl)		;7793
	halt			;7794
	jp z,0045ah		;7795
	push bc			;7798
	sub l			;7799
	ld d,a			;779a
	inc sp			;779b
	xor a			;779c
	dec d			;779d
	adc a,e			;779e
	sub a			;779f
	ld b,d			;77a0
l77a1h:
	di			;77a1
	ld l,(hl)		;77a2
	ei			;77a3
	sub l			;77a4
	add a,0b5h		;77a5
	add a,h			;77a7
	ld b,l			;77a8
	pop de			;77a9
	jp c,02e29h		;77aa
	inc (hl)		;77ad
	inc hl			;77ae
	pop af			;77af
	sub e			;77b0
	add a,l			;77b1
	rst 28h			;77b2
	or d			;77b3
	xor b			;77b4
	ld d,d			;77b5
	jp (hl)			;77b6
	ld d,d			;77b7
	rst 28h			;77b8
	ld c,b			;77b9
	cp d			;77ba
	xor a			;77bb
	xor e			;77bc
	ld (de),a		;77bd
	ld bc,07689h		;77be
l77c1h:
	jp m,0ae72h		;77c1
	ld d,e			;77c4
	dec sp			;77c5
	push de			;77c6
	dec h			;77c7
	ld b,0f4h		;77c8
	cp e			;77ca
	or l			;77cb
	inc hl			;77cc
	adc a,d			;77cd
	ld d,d			;77ce
	daa			;77cf
	dec hl			;77d0
	ld c,b			;77d1
	ret pe			;77d2
	ret			;77d3
	xor c			;77d4
	call nc,0f7edh		;77d5
	sub d			;77d8
	and l			;77d9
	dec d			;77da
	ld hl,09901h		;77db
	or l			;77de
	pop bc			;77df
	adc a,d			;77e0
	defb 0edh ;next byte illegal after ed	;77e1
	inc a			;77e2
	add hl,de		;77e3
	and d			;77e4
	and d			;77e5
	ei			;77e6
	ret z			;77e7
	ret z			;77e8
	xor e			;77e9
	sub (hl)		;77ea
	cpl			;77eb
	defb 0ddh,031h,03dh ;illegal sequence	;77ec
	jr nz,l781dh		;77ef
	ld c,a			;77f1
	ld b,b			;77f2
	ld (l5acdh),hl		;77f3
	xor c			;77f6
	ld c,h			;77f7
	out (045h),a		;77f8
	rlca			;77fa
	ld l,h			;77fb
	ld c,a			;77fc
	sub (hl)		;77fd
	adc a,e			;77fe
	xor h			;77ff
	ld h,a			;7800
	add a,e			;7801
	ld b,c			;7802
	ld b,l			;7803
	add a,(hl)		;7804
	defb 0edh ;next byte illegal after ed	;7805
	exx			;7806
	scf			;7807
	ex (sp),hl		;7808
	ld l,e			;7809
	ld h,09dh		;780a
	ld sp,0f725h		;780c
	exx			;780f
	xor (hl)		;7810
	ld de,00465h		;7811
	and 019h		;7814
	adc a,d			;7816
	inc h			;7817
	ret c			;7818
	ld c,e			;7819
	ld h,l			;781a
	cpl			;781b
	rst 30h			;781c
l781dh:
	ld l,e			;781d
	sbc a,a			;781e
	inc hl			;781f
	ret p			;7820
	ld sp,038a4h		;7821
	ex (sp),hl		;7824
	add a,0c7h		;7825
	inc sp			;7827
	sub (hl)		;7828
	dec de			;7829
	dec b			;782a
	or (hl)			;782b
	sbc a,e			;782c
	jp nz,0f9ceh		;782d
	and l			;7830
	ld b,c			;7831
	call pe,sub_6ab5h	;7832
	sbc a,e			;7835
	dec (hl)		;7836
	or c			;7837
	jr l77c1h		;7838
	ld (0c826h),hl		;783a
	xor c			;783d
	add a,(hl)		;783e
	rlca			;783f
	jr nc,l7888h		;7840
	ld hl,l4467h		;7842
	jp c,03bach		;7845
	adc a,b			;7848
	adc a,d			;7849
	adc a,d			;784a
	inc e			;784b
	ld d,(hl)		;784c
	ld h,a			;784d
	xor a			;784e
	ld (02c46h),a		;784f
	rst 18h			;7852
	ld (l448ah),a		;7853
	ld b,(hl)		;7856
	sbc a,0e4h		;7857
	inc a			;7859
	ld h,c			;785a
	sub l			;785b
	ld a,a			;785c
	inc h			;785d
	ld b,e			;785e
l785fh:
	add a,c			;785f
	inc d			;7860
	and 045h		;7861
	cp h			;7863
	ld a,(hl)		;7864
	ld c,l			;7865
	out (011h),a		;7866
	inc hl			;7868
	ld b,a			;7869
	rst 38h			;786a
	ld l,a			;786b
	rst 8			;786c
	dec l			;786d
	add a,d			;786e
	add hl,hl		;786f
	dec a			;7870
	dec bc			;7871
	ld h,l			;7872
	ld a,062h		;7873
	xor h			;7875
	ld c,(hl)		;7876
	sbc a,c			;7877
	dec sp			;7878
	defb 0edh ;next byte illegal after ed	;7879
	adc a,b			;787a
	ex af,af'		;787b
	ld b,h			;787c
	inc bc			;787d
	jp c,02ecah		;787e
	ld l,h			;7881
	ld d,l			;7882
	cpd			;7883
	or a			;7885
	cp c			;7886
	adc a,e			;7887
l7888h:
	xor c			;7888
	ld l,a			;7889
	ld c,(hl)		;788a
	bit 0,l			;788b
	xor (hl)		;788d
	rst 18h			;788e
	adc a,d			;788f
	ld bc,0c2f5h		;7890
l7893h:
	and h			;7893
	add a,097h		;7894
	ld a,h			;7896
	nop			;7897
	rst 0			;7898
	ld c,c			;7899
	xor a			;789a
	ld b,d			;789b
	dec hl			;789c
	daa			;789d
	jp nc,0b225h		;789e
	inc l			;78a1
	ld d,049h		;78a2
	push de			;78a4
	ret po			;78a5
	or d			;78a6
	or a			;78a7
	pop af			;78a8
	ld sp,034a7h		;78a9
	sbc a,l			;78ac
	adc a,095h		;78ad
	and b			;78af
	sub h			;78b0
	and b			;78b1
	ld e,(hl)		;78b2
	ret m			;78b3
	ld e,d			;78b4
	cp d			;78b5
	push bc			;78b6
	sub h			;78b7
	in a,(05bh)		;78b8
	adc a,l			;78ba
	cp c			;78bb
	xor d			;78bc
	ld (hl),08bh		;78bd
	jr l7928h		;78bf
	jr z,l785fh		;78c1
	sbc a,d			;78c3
	ld c,l			;78c4
	ld b,0ebh		;78c5
	ret z			;78c7
	ld a,e			;78c8
	call p,027c8h		;78c9
	or c			;78cc
	scf			;78cd
	adc a,e			;78ce
	ld h,0d8h		;78cf
	cp h			;78d1
	rst 38h			;78d2
	sub c			;78d3
	and b			;78d4
	ld hl,015aah		;78d5
	cp e			;78d8
	ld e,l			;78d9
	sub h			;78da
	or h			;78db
	sub a			;78dc
	adc a,e			;78dd
	ld b,e			;78de
	ld c,c			;78df
	ld b,c			;78e0
	ld (0aeefh),hl		;78e1
	ld e,(hl)		;78e4
	ccf			;78e5
	sub (hl)		;78e6
	cp l			;78e7
	adc a,a			;78e8
	ld (hl),0b6h		;78e9
	xor l			;78eb
	inc a			;78ec
	di			;78ed
	ld b,000h		;78ee
	xor b			;78f0
	ld b,h			;78f1
	and (hl)		;78f2
	ld d,09ch		;78f3
	sub d			;78f5
	call pe,0018bh		;78f6
	adc a,049h		;78f9
	ld e,e			;78fb
	dec h			;78fc
	ld a,b			;78fd
	ld e,c			;78fe
	push af			;78ff
	xor a			;7900
	dec d			;7901
	jp nz,0b917h		;7902
	ld b,l			;7905
	ex de,hl		;7906
	ld a,(bc)		;7907
	ld bc,l6602h		;7908
	inc hl			;790b
	ld hl,l4325h		;790c
	add a,(hl)		;790f
	sub l			;7910
	and d			;7911
	ld h,(hl)		;7912
	ld h,a			;7913
	ld d,(hl)		;7914
	and c			;7915
	ld c,l			;7916
	add a,0e8h		;7917
	dec d			;7919
	rst 0			;791a
	ld h,h			;791b
	sub c			;791c
	ret p			;791d
	ld h,0c4h		;791e
	and e			;7920
	ret z			;7921
	ld a,a			;7922
	di			;7923
	add a,067h		;7924
	and e			;7926
	dec e			;7927
l7928h:
	jp po,09193h		;7928
	sub (hl)		;792b
	rst 28h			;792c
	or l			;792d
	ld b,e			;792e
	cp (hl)			;792f
	ld d,d			;7930
	or e			;7931
	sub l			;7932
	ld c,092h		;7933
	inc h			;7935
	call z,0b0e4h		;7936
	ld h,l			;7939
	inc de			;793a
	sbc a,(hl)		;793b
	ld sp,00466h		;793c
	call pe,0ca24h		;793f
	and h			;7942
	call po,0eb6dh		;7943
	inc bc			;7946
	ld h,l			;7947
	ld h,a			;7948
	defb 0edh ;next byte illegal after ed	;7949
	jp nc,l4570h		;794a
	and (hl)		;794d
	sbc a,e			;794e
	add a,0f7h		;794f
	jp nc,025b9h		;7951
	ld (0cf48h),hl		;7954
	add a,h			;7957
	call po,0ca56h		;7958
	sbc a,b			;795b
	retn			;795c
	push bc			;795e
	jp nz,l44d8h		;795f
	and e			;7962
	ld hl,0269fh		;7963
	ret c			;7966
	push af			;7967
	rst 28h			;7968
	or e			;7969
	adc a,h			;796a
	cp h			;796b
	or e			;796c
	ld a,(08804h)		;796d
	nop			;7970
	ld hl,l52a9h		;7971
	in a,(0b2h)		;7974
	ld a,(hl)		;7976
	ld h,025h		;7977
	sub e			;7979
	jp pe,0176ch		;797a
	ld b,(hl)		;797d
	ld e,e			;797e
	add a,066h		;797f
	add a,l			;7981
	ld c,h			;7982
	ld (bc),a		;7983
	ld l,(hl)		;7984
	xor h			;7985
	xor b			;7986
	sbc a,h			;7987
	bit 3,e			;7988
	inc h			;798a
	inc sp			;798b
	or h			;798c
	sbc a,c			;798d
	ld a,e			;798e
	and c			;798f
	ld d,026h		;7990
	ld d,(hl)		;7992
	jp p,06c4ch		;7993
	dec h			;7996
	sbc a,h			;7997
	ld c,d			;7998
	inc c			;7999
	ld h,095h		;799a
	scf			;799c
	ld h,0d2h		;799d
	and e			;799f
	ld b,c			;79a0
	ex af,af'		;79a1
	and a			;79a2
	and b			;79a3
	ld d,b			;79a4
	ld (08c24h),hl		;79a5
	ex de,hl		;79a8
	call 0cdbdh		;79a9
	add a,09bh		;79ac
	and l			;79ae
	ld d,(hl)		;79af
	add hl,bc		;79b0
	ld (bc),a		;79b1
	rst 20h			;79b2
	add a,(hl)		;79b3
	ld hl,(00147h)		;79b4
	sbc a,h			;79b7
	ld d,d			;79b8
	and h			;79b9
	ld d,(hl)		;79ba
	rst 18h			;79bb
	sub 08fh		;79bc
	ld (hl),a		;79be
	dec b			;79bf
	ld hl,(00e1dh)		;79c0
	adc a,b			;79c3
	inc (hl)		;79c4
	ld h,l			;79c5
	ld b,(hl)		;79c6
	cp l			;79c7
	or h			;79c8
	ld h,d			;79c9
	ld b,a			;79ca
	sbc a,l			;79cb
	ld (de),a		;79cc
	ld b,045h		;79cd
	call sub_458eh		;79cf
	dec d			;79d2
	ld h,e			;79d3
	or 026h			;79d4
	call 09ce4h		;79d6
	sub d			;79d9
	dec (hl)		;79da
	dec h			;79db
	ex af,af'		;79dc
	nop			;79dd
	cp b			;79de
	dec l			;79df
	inc l			;79e0
	jp z,0ee9bh		;79e1
	ld (hl),e		;79e4
	add a,d			;79e5
	ret m			;79e6
	call m,0929ah		;79e7
	adc a,062h		;79ea
	xor a			;79ec
	inc (hl)		;79ed
	add a,h			;79ee
	scf			;79ef
	adc a,c			;79f0
	adc a,c			;79f1
	djnz $+70		;79f2
	xor a			;79f4
	inc h			;79f5
	rra			;79f6
	defb 0edh ;next byte illegal after ed	;79f7
	call z,08cd8h		;79f8
	add a,c			;79fb
	cp h			;79fc
	jp (hl)			;79fd
	ld c,e			;79fe
	ld h,(hl)		;79ff
	cp b			;7a00
	ld (09387h),a		;7a01
	cp d			;7a04
	ld b,l			;7a05
	sbc a,c			;7a06
	xor (hl)		;7a07
	ld d,l			;7a08
	sbc a,c			;7a09
	inc h			;7a0a
	cp c			;7a0b
	ld l,l			;7a0c
	dec d			;7a0d
	and h			;7a0e
	call nz,06484h		;7a0f
	add a,l			;7a12
l7a13h:
	sub d			;7a13
	add a,a			;7a14
	adc a,e			;7a15
	inc h			;7a16
	inc (hl)		;7a17
	ld d,e			;7a18
	dec (hl)		;7a19
	pop de			;7a1a
	jr $+8			;7a1b
	ld a,a			;7a1d
	rst 0			;7a1e
	or d			;7a1f
	di			;7a20
	ex af,af'		;7a21
	ld h,002h		;7a22
l7a24h:
	jr nz,$-119		;7a24
	ld c,d			;7a26
	rst 20h			;7a27
	add hl,hl		;7a28
	ld hl,02d56h		;7a29
	adc a,d			;7a2c
	sub c			;7a2d
	rrca			;7a2e
	jp po,0bea8h		;7a2f
	pop af			;7a32
	rst 0			;7a33
	and e			;7a34
	ret c			;7a35
	inc hl			;7a36
	call z,0a597h		;7a37
	cp a			;7a3a
	ld c,d			;7a3b
	ld b,(hl)		;7a3c
	push bc			;7a3d
	add hl,de		;7a3e
	add a,a			;7a3f
	ld (bc),a		;7a40
	jr $+120		;7a41
	adc a,d			;7a43
	inc hl			;7a44
	add hl,hl		;7a45
	rst 10h			;7a46
	jp nc,0d2d9h		;7a47
	cp l			;7a4a
	ld b,l			;7a4b
	ld b,l			;7a4c
	set 2,h			;7a4d
	rlca			;7a4f
	and e			;7a50
	ld l,c			;7a51
	add a,(hl)		;7a52
	ld h,l			;7a53
	cp b			;7a54
	ld (l7a24h),hl		;7a55
	sbc a,d			;7a58
	sbc a,l			;7a59
	inc h			;7a5a
	exx			;7a5b
	ld b,e			;7a5c
	call nc,08158h		;7a5d
	xor b			;7a60
	xor e			;7a61
	xor l			;7a62
	ld a,(0298dh)		;7a63
	dec e			;7a66
	rst 30h			;7a67
	ld c,h			;7a68
	ld b,d			;7a69
	ld c,(hl)		;7a6a
	dec h			;7a6b
	sbc a,e			;7a6c
	call z,sub_4598h	;7a6d
	ld l,d			;7a70
	ld b,a			;7a71
	adc a,h			;7a72
	ld b,(hl)		;7a73
	rst 0			;7a74
	dec l			;7a75
	ld b,l			;7a76
	adc a,l			;7a77
	add hl,de		;7a78
	ld h,a			;7a79
	rst 30h			;7a7a
	inc l			;7a7b
	ld b,l			;7a7c
	dec e			;7a7d
	xor h			;7a7e
	ld sp,l471bh		;7a7f
	ld d,c			;7a82
	ld b,(hl)		;7a83
l7a84h:
	call p,0ea4dh		;7a84
	adc a,h			;7a87
	ld c,c			;7a88
	adc a,h			;7a89
	jr l7a13h		;7a8a
	inc hl			;7a8c
	inc bc			;7a8d
	ld b,c			;7a8e
	or (hl)			;7a8f
	dec hl			;7a90
	ld c,l			;7a91
	or c			;7a92
sub_7a93h:
	or b			;7a93
l7a94h:
	ld l,b			;7a94
	ld h,(hl)		;7a95
	ld b,l			;7a96
	ld e,e			;7a97
	inc b			;7a98
	djnz l7b0ch		;7a99
	sub h			;7a9b
	sbc a,e			;7a9c
	add a,e			;7a9d
	add hl,sp		;7a9e
	dec d			;7a9f
	ld d,d			;7aa0
	dec bc			;7aa1
	add a,l			;7aa2
	ld h,d			;7aa3
	sbc a,h			;7aa4
	ld c,h			;7aa5
	sub h			;7aa6
	add a,0bch		;7aa7
	and (hl)		;7aa9
	adc a,h			;7aaa
	djnz l7a94h		;7aab
	ld (0751dh),hl		;7aad
	ld (bc),a		;7ab0
	jp pe,l7bffh		;7ab1
	ld b,a			;7ab4
	sub c			;7ab5
	or d			;7ab6
	call z,sub_5283h	;7ab7
	ret			;7aba
	sbc a,l			;7abb
	or d			;7abc
	ld h,d			;7abd
	ld e,d			;7abe
	rlca			;7abf
	and l			;7ac0
	rst 30h			;7ac1
	and e			;7ac2
	xor l			;7ac3
	ld b,c			;7ac4
	sub (hl)		;7ac5
	exx			;7ac6
	inc d			;7ac7
	ld h,l			;7ac8
	call nc,0ad91h		;7ac9
	ld d,c			;7acc
	rra			;7acd
	xor e			;7ace
	adc a,l			;7acf
	ld (0d9dch),hl		;7ad0
	ld (025edh),hl		;7ad3
	add a,0feh		;7ad6
	call po,0b1a7h		;7ad8
	ld e,e			;7adb
	sub c			;7adc
	sbc a,c			;7add
	sbc a,a			;7ade
	ret c			;7adf
	ld l,h			;7ae0
	rlca			;7ae1
	ld (hl),062h		;7ae2
	adc a,d			;7ae4
	rst 20h			;7ae5
	and d			;7ae6
	ld l,c			;7ae7
	ret pe			;7ae8
	xor c			;7ae9
	jr c,l7a84h		;7aea
	call nc,08c04h		;7aec
	ld c,c			;7aef
	ld h,l			;7af0
	and a			;7af1
	call nc,0da87h		;7af2
	defb 0edh ;next byte illegal after ed	;7af5
	dec bc			;7af6
	adc a,l			;7af7
	add hl,sp		;7af8
	jp p,l4129h		;7af9
	ld c,d			;7afc
	ret z			;7afd
	ld d,c			;7afe
	jp nc,0289bh		;7aff
	add a,04ah		;7b02
	push bc			;7b04
	add a,098h		;7b05
	ld (l6523h),hl		;7b07
	rst 20h			;7b0a
	ld b,(hl)		;7b0b
l7b0ch:
	add a,d			;7b0c
	ret nc			;7b0d
	ld b,h			;7b0e
	sbc a,a			;7b0f
	and l			;7b10
	adc a,l			;7b11
	sbc a,l			;7b12
	push bc			;7b13
	ld a,b			;7b14
	ld b,d			;7b15
	ld b,017h		;7b16
	and (hl)		;7b18
	inc bc			;7b19
	and d			;7b1a
	rlca			;7b1b
	exx			;7b1c
	inc bc			;7b1d
	add hl,bc		;7b1e
	ld bc,01b91h		;7b1f
	and 0e5h		;7b22
	sub b			;7b24
	add hl,hl		;7b25
	bit 2,h			;7b26
	dec l			;7b28
	defb 0edh ;next byte illegal after ed	;7b29
	dec h			;7b2a
	ld b,d			;7b2b
	ld bc,0c769h		;7b2c
	ld (hl),0e3h		;7b2f
	ld h,076h		;7b31
	and b			;7b33
	defb 0edh ;next byte illegal after ed	;7b34
	ld (hl),a		;7b35
	ld h,d			;7b36
	ld bc,0ede2h		;7b37
	jp nc,0d298h		;7b3a
	ld c,b			;7b3d
	ei			;7b3e
	xor h			;7b3f
	ld d,c			;7b40
	call p,sub_4348h	;7b41
	add a,d			;7b44
	rst 20h			;7b45
	push hl			;7b46
	and l			;7b47
	adc a,l			;7b48
	sub d			;7b49
	sub h			;7b4a
	sub h			;7b4b
	ld d,c			;7b4c
	and d			;7b4d
	ld l,(hl)		;7b4e
	ret nz			;7b4f
	ld e,h			;7b50
	inc hl			;7b51
	ld d,(hl)		;7b52
	ld (hl),b		;7b53
	ld c,d			;7b54
	defb 0edh ;next byte illegal after ed	;7b55
	or (hl)			;7b56
	dec a			;7b57
	ld e,b			;7b58
	ex af,af'		;7b59
	rst 10h			;7b5a
	ld h,(hl)		;7b5b
	ld h,d			;7b5c
	jp p,l5966h		;7b5d
	ld (hl),e		;7b60
	ld (bc),a		;7b61
	jp m,09e19h		;7b62
	ld h,03ah		;7b65
	ld c,l			;7b67
	ld e,b			;7b68
	rst 20h			;7b69
	ld h,0e5h		;7b6a
	ld c,b			;7b6c
	ld b,d			;7b6d
	ld (hl),0a5h		;7b6e
	sbc hl,hl		;7b70
	ld (hl),a		;7b72
	ld hl,(02d54h)		;7b73
	defb 0ddh,00fh,0e6h ;illegal sequence	;7b76
	defb 0edh ;next byte illegal after ed	;7b79
	push hl			;7b7a
	ld (bc),a		;7b7b
	pop hl			;7b7c
	call sub_4d46h		;7b7d
	sub c			;7b80
	adc a,a			;7b81
	dec c			;7b82
	dec b			;7b83
	nop			;7b84
	rst 38h			;7b85
	ret m			;7b86
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
l7bedh:
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
l7bffh:
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
l7e3eh:
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
