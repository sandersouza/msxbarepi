; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank19.asm /tmp/smanbow2_bank_19.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
	ld h,d			;4003
	ld l,a			;4004
	ld (hl),a		;4005
	jr nz,$+52		;4006
	jr nz,l4037h		;4008
	jr nz,$+71		;400a
	ld l,(hl)		;400c
	ld h,h			;400d
	ld h,d			;400e
	ld l,a			;400f
	ld (hl),e		;4010
	ld (hl),e		;4011
	jr nz,l4068h		;4012
	ld (hl),l		;4014
	ld l,(hl)		;4015
	ld h,l			;4016
	jr nz,l4039h		;4017
	jr nz,l403bh		;4019
	jr nz,l403dh		;401b
	jr nz,l403fh		;401d
	jr nz,l4041h		;401f
	jr nz,l4043h		;4021
	jr nz,l4045h		;4023
	jr nz,l4047h		;4025
	jr nz,l4049h		;4027
	jr nz,l404bh		;4029
	jr nz,l404dh		;402b
	jr nz,$+34		;402d
	jr nz,$+34		;402f
	jr nz,l4053h		;4031
	jr nz,l4055h		;4033
	jr nz,l4057h		;4035
l4037h:
	jr nz,l4059h		;4037
l4039h:
	jr nz,$+34		;4039
l403bh:
	jr nz,l405dh		;403b
l403dh:
	jr nz,l405fh		;403d
l403fh:
	jr nz,l4061h		;403f
l4041h:
	jr nz,l4063h		;4041
l4043h:
	ld c,l			;4043
	ld d,l			;4044
l4045h:
	ld d,e			;4045
	ld c,c			;4046
l4047h:
	ld c,(hl)		;4047
	ld d,e			;4048
l4049h:
	ld d,h			;4049
	ld d,d			;404a
l404bh:
	ld d,e			;404b
	ld b,d			;404c
l404dh:
	ld c,e			;404d
	jr nc,l4050h		;404e
l4050h:
	ld bc,00100h		;4050
l4053h:
	ld (bc),a		;4053
	inc bc			;4054
l4055h:
	inc b			;4055
	dec b			;4056
l4057h:
	ld b,007h		;4057
l4059h:
	ex af,af'		;4059
	ld bc,00302h		;405a
l405dh:
	inc b			;405d
	dec b			;405e
l405fh:
	ld b,007h		;405f
l4061h:
	ex af,af'		;4061
	add hl,bc		;4062
l4063h:
	ld a,(bc)		;4063
	dec bc			;4064
	inc c			;4065
	add hl,bc		;4066
	ld a,(bc)		;4067
l4068h:
	dec bc			;4068
	add hl,de		;4069
	dec c			;406a
	ld c,00fh		;406b
	djnz $+11		;406d
	ld a,(bc)		;406f
	dec bc			;4070
	inc c			;4071
	ld de,01312h		;4072
	inc d			;4075
	dec d			;4076
	ld d,017h		;4077
	jr l408ch		;4079
	ld (de),a		;407b
	inc de			;407c
	inc d			;407d
	dec d			;407e
	ld d,017h		;407f
	ld a,(de)		;4081
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
l408ch:
	nop			;408c
	nop			;408d
	nop			;408e
	nop			;408f
	nop			;4090
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
	jr $+17			;4151
	rrca			;4153
	rrca			;4154
	rrca			;4155
	rrca			;4156
	nop			;4157
	jr nc,l418ah		;4158
	cpl			;415a
	add a,d			;415b
	add a,b			;415c
	add a,h			;415d
	ld a,a			;415e
	add a,c			;415f
	dec bc			;4160
	djnz l4173h		;4161
	djnz l4175h		;4163
	nop			;4165
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
l4173h:
	nop			;4173
	nop			;4174
l4175h:
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
l418ah:
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
	inc d			;41c0
	rrca			;41c1
	ld h,d			;41c2
	dec l			;41c3
	ld h,d			;41c4
	ld l,014h		;41c5
	rrca			;41c7
	inc d			;41c8
	rrca			;41c9
	ld b,000h		;41ca
	ld h,c			;41cc
	nop			;41cd
	ld h,c			;41ce
	nop			;41cf
	ld h,c			;41d0
	nop			;41d1
	ld h,c			;41d2
	nop			;41d3
	ld h,c			;41d4
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
	ld h,c			;41e4
	nop			;41e5
	ld h,c			;41e6
	nop			;41e7
	ld h,c			;41e8
	nop			;41e9
	ld h,c			;41ea
	nop			;41eb
	ld h,c			;41ec
	nop			;41ed
	nop			;41ee
	nop			;41ef
	add hl,bc		;41f0
	ld a,(bc)		;41f1
	dec d			;41f2
	rrca			;41f3
	add hl,bc		;41f4
	rrca			;41f5
	add hl,bc		;41f6
	rrca			;41f7
	inc d			;41f8
	rrca			;41f9
	ld b,000h		;41fa
	ld h,c			;41fc
	nop			;41fd
	ld h,c			;41fe
	nop			;41ff
	ld h,c			;4200
	nop			;4201
	ld h,c			;4202
	nop			;4203
	ld h,c			;4204
	nop			;4205
	nop			;4206
	nop			;4207
	dec d			;4208
	ld a,(bc)		;4209
	dec d			;420a
	rrca			;420b
	add hl,bc		;420c
	rrca			;420d
	dec d			;420e
	rrca			;420f
	jr nz,l4221h		;4210
	ld b,000h		;4212
	ld h,c			;4214
	nop			;4215
	ld h,c			;4216
	nop			;4217
	ld h,c			;4218
	nop			;4219
	ld h,c			;421a
	nop			;421b
	ld h,c			;421c
	nop			;421d
	nop			;421e
	nop			;421f
	add hl,bc		;4220
l4221h:
	ld a,(bc)		;4221
	dec d			;4222
	rrca			;4223
	add hl,bc		;4224
	rrca			;4225
	add hl,bc		;4226
	rrca			;4227
	inc d			;4228
	rrca			;4229
	ld b,000h		;422a
	ld h,c			;422c
	nop			;422d
	ld h,c			;422e
	nop			;422f
	ld h,c			;4230
	nop			;4231
	ld h,c			;4232
	nop			;4233
	ld h,c			;4234
	nop			;4235
	nop			;4236
	nop			;4237
	ld h,d			;4238
	rrca			;4239
	nop			;423a
	nop			;423b
	nop			;423c
	nop			;423d
	ld h,d			;423e
	rrca			;423f
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
	ld a,(de)		;424f
	nop			;4250
	nop			;4251
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
	nop			;426c
	nop			;426d
	nop			;426e
	nop			;426f
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
	inc d			;4280
	rrca			;4281
	ex af,af'		;4282
	rrca			;4283
	ex af,af'		;4284
	rrca			;4285
	nop			;4286
	nop			;4287
	ex af,af'		;4288
	ld a,(bc)		;4289
	ld bc,00000h		;428a
	nop			;428d
	ld h,d			;428e
	add hl,hl		;428f
	ld h,d			;4290
	add hl,hl		;4291
	ld l,d			;4292
	ld (bc),a		;4293
	nop			;4294
	nop			;4295
	nop			;4296
	nop			;4297
	inc d			;4298
	rrca			;4299
	ld h,c			;429a
	nop			;429b
	ld h,c			;429c
	nop			;429d
	inc d			;429e
	ld a,(bc)		;429f
	ld h,c			;42a0
	nop			;42a1
	inc bc			;42a2
	nop			;42a3
	ld h,c			;42a4
	nop			;42a5
	ld l,d			;42a6
	ld de,01169h		;42a7
	nop			;42aa
	nop			;42ab
	ld l,c			;42ac
	ld de,00003h		;42ad
	inc d			;42b0
	rrca			;42b1
	ex af,af'		;42b2
	rrca			;42b3
	ex af,af'		;42b4
	rrca			;42b5
	inc d			;42b6
	ld a,(bc)		;42b7
	ex af,af'		;42b8
	ld a,(bc)		;42b9
	inc bc			;42ba
	nop			;42bb
	ld l,c			;42bc
	ld (bc),a		;42bd
	nop			;42be
	nop			;42bf
	nop			;42c0
	nop			;42c1
	ld h,c			;42c2
	nop			;42c3
	nop			;42c4
	nop			;42c5
	nop			;42c6
	nop			;42c7
	ld h,c			;42c8
	nop			;42c9
	inc d			;42ca
	rrca			;42cb
	inc d			;42cc
	rrca			;42cd
	inc d			;42ce
	ld a,(bc)		;42cf
	inc d			;42d0
	ld a,(bc)		;42d1
	inc bc			;42d2
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
	inc d			;42e0
	rrca			;42e1
	ex af,af'		;42e2
	rrca			;42e3
	ex af,af'		;42e4
	rrca			;42e5
	ld h,c			;42e6
	nop			;42e7
	ex af,af'		;42e8
	ld a,(bc)		;42e9
	ld (bc),a		;42ea
	nop			;42eb
	ld h,c			;42ec
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
	ld hl,l610fh		;42f8
	nop			;42fb
	ld h,c			;42fc
	nop			;42fd
	inc d			;42fe
	ld a,(bc)		;42ff
	ld h,c			;4300
	nop			;4301
	inc bc			;4302
	nop			;4303
	nop			;4304
	nop			;4305
	nop			;4306
	nop			;4307
	ld h,d			;4308
	jr z,l436ch		;4309
	nop			;430b
	nop			;430c
	nop			;430d
	nop			;430e
	nop			;430f
	ld h,c			;4310
	nop			;4311
	ex af,af'		;4312
	rrca			;4313
	ex af,af'		;4314
	rrca			;4315
	ld hl,0080ah		;4316
	ld a,(bc)		;4319
	inc bc			;431a
	nop			;431b
	nop			;431c
	nop			;431d
	ld h,c			;431e
	nop			;431f
	ld h,c			;4320
	nop			;4321
	nop			;4322
	nop			;4323
	ld h,c			;4324
	nop			;4325
	nop			;4326
	nop			;4327
	inc d			;4328
	rrca			;4329
	inc d			;432a
	rrca			;432b
	inc d			;432c
	rrca			;432d
	ld h,c			;432e
	nop			;432f
	inc d			;4330
	ld a,(bc)		;4331
	inc bc			;4332
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
	inc d			;4340
	rrca			;4341
	ex af,af'		;4342
	rrca			;4343
	ex af,af'		;4344
	rrca			;4345
	inc d			;4346
	ld a,(bc)		;4347
	ex af,af'		;4348
	ld a,(bc)		;4349
	ld bc,l6100h		;434a
	nop			;434d
	nop			;434e
	nop			;434f
	nop			;4350
	nop			;4351
	ld h,c			;4352
	nop			;4353
	nop			;4354
	nop			;4355
	nop			;4356
	nop			;4357
	jr nz,l4369h		;4358
	inc d			;435a
	rrca			;435b
	inc d			;435c
	rrca			;435d
	inc d			;435e
	ld a,(bc)		;435f
	inc d			;4360
	ld a,(bc)		;4361
	inc bc			;4362
	nop			;4363
	nop			;4364
	nop			;4365
	nop			;4366
	nop			;4367
	nop			;4368
l4369h:
	nop			;4369
	ld h,c			;436a
	nop			;436b
l436ch:
	nop			;436c
	nop			;436d
	inc bc			;436e
	nop			;436f
	ld h,c			;4370
	nop			;4371
	ex af,af'		;4372
	rrca			;4373
	ex af,af'		;4374
	rrca			;4375
	jr nz,l4382h		;4376
	ex af,af'		;4378
	ld a,(bc)		;4379
	inc bc			;437a
	nop			;437b
	nop			;437c
	nop			;437d
	ld h,d			;437e
	jr z,l43e3h		;437f
	add hl,hl		;4381
l4382h:
	nop			;4382
	nop			;4383
	nop			;4384
	nop			;4385
	nop			;4386
	nop			;4387
	inc d			;4388
	rrca			;4389
	ld h,c			;438a
	nop			;438b
	ld h,c			;438c
	nop			;438d
	ld h,c			;438e
	nop			;438f
	ld h,c			;4390
	nop			;4391
	ld (bc),a		;4392
	nop			;4393
	ld h,c			;4394
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
	inc d			;43a0
	rrca			;43a1
	ex af,af'		;43a2
	rrca			;43a3
	ex af,af'		;43a4
	rrca			;43a5
	inc d			;43a6
	ld a,(bc)		;43a7
	ex af,af'		;43a8
	ld a,(bc)		;43a9
	inc b			;43aa
	nop			;43ab
	nop			;43ac
	nop			;43ad
	nop			;43ae
	nop			;43af
	nop			;43b0
	nop			;43b1
	ld h,c			;43b2
	nop			;43b3
	nop			;43b4
	nop			;43b5
	nop			;43b6
	nop			;43b7
	ld h,c			;43b8
	nop			;43b9
	ld h,c			;43ba
	nop			;43bb
	ld h,c			;43bc
	nop			;43bd
	inc d			;43be
	ld a,(bc)		;43bf
	ld h,c			;43c0
	nop			;43c1
	inc bc			;43c2
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
	inc d			;43d0
	rrca			;43d1
	add hl,bc		;43d2
	rrca			;43d3
	add hl,bc		;43d4
	rrca			;43d5
	ld h,c			;43d6
	nop			;43d7
	add hl,bc		;43d8
	ld a,(bc)		;43d9
	inc bc			;43da
	nop			;43db
	ld h,c			;43dc
	nop			;43dd
	ld h,d			;43de
	add hl,hl		;43df
	ld h,d			;43e0
	ld d,b			;43e1
	nop			;43e2
l43e3h:
	nop			;43e3
	nop			;43e4
	nop			;43e5
	nop			;43e6
	nop			;43e7
	nop			;43e8
	nop			;43e9
	ld h,d			;43ea
	jr z,l444fh		;43eb
	add hl,hl		;43ed
	inc d			;43ee
	ld a,(bc)		;43ef
	nop			;43f0
	nop			;43f1
	inc bc			;43f2
	nop			;43f3
	nop			;43f4
	nop			;43f5
	ld h,d			;43f6
	daa			;43f7
	ld h,d			;43f8
	jr z,l445ch		;43f9
	nop			;43fb
	nop			;43fc
	nop			;43fd
	inc bc			;43fe
	nop			;43ff
	inc d			;4400
	rrca			;4401
	ex af,af'		;4402
	rrca			;4403
	ex af,af'		;4404
	rrca			;4405
	nop			;4406
	nop			;4407
	ex af,af'		;4408
	ld a,(bc)		;4409
	ld bc,00000h		;440a
	nop			;440d
	ld h,d			;440e
	jr z,l4473h		;440f
	daa			;4411
	nop			;4412
	nop			;4413
	nop			;4414
	nop			;4415
	nop			;4416
	nop			;4417
	inc d			;4418
	rrca			;4419
	ld h,d			;441a
	add hl,hl		;441b
	ld h,d			;441c
	jr z,l4433h		;441d
	ld a,(bc)		;441f
	nop			;4420
	nop			;4421
	inc b			;4422
	nop			;4423
	ld h,c			;4424
	nop			;4425
	ld h,d			;4426
	daa			;4427
	ld h,d			;4428
	add hl,hl		;4429
	nop			;442a
	nop			;442b
	nop			;442c
	nop			;442d
	nop			;442e
	nop			;442f
	inc d			;4430
	rrca			;4431
	inc d			;4432
l4433h:
	rrca			;4433
	inc d			;4434
	rrca			;4435
	inc d			;4436
	ld a,(bc)		;4437
	inc d			;4438
	ld a,(bc)		;4439
	ld (bc),a		;443a
	nop			;443b
	nop			;443c
	nop			;443d
	nop			;443e
	nop			;443f
	nop			;4440
	nop			;4441
	ld h,c			;4442
	nop			;4443
	nop			;4444
	nop			;4445
	nop			;4446
	nop			;4447
	ld h,c			;4448
	nop			;4449
	ld h,c			;444a
	nop			;444b
	ld h,c			;444c
	nop			;444d
	inc d			;444e
l444fh:
	ld a,(bc)		;444f
	ld h,c			;4450
	nop			;4451
	inc bc			;4452
	nop			;4453
	nop			;4454
	nop			;4455
	nop			;4456
	nop			;4457
	nop			;4458
	nop			;4459
	nop			;445a
	nop			;445b
l445ch:
	nop			;445c
	nop			;445d
	nop			;445e
	nop			;445f
	inc d			;4460
	rrca			;4461
	ex af,af'		;4462
	rrca			;4463
	ex af,af'		;4464
	rrca			;4465
	ld h,c			;4466
	nop			;4467
	ex af,af'		;4468
	ld a,(bc)		;4469
	ld (bc),a		;446a
	nop			;446b
	ld h,c			;446c
	nop			;446d
	nop			;446e
	nop			;446f
	nop			;4470
	nop			;4471
	nop			;4472
l4473h:
	nop			;4473
	nop			;4474
	nop			;4475
	inc bc			;4476
	nop			;4477
	ld hl,l610fh		;4478
	nop			;447b
	ld h,c			;447c
	nop			;447d
	inc d			;447e
	ld a,(bc)		;447f
	ld h,c			;4480
	nop			;4481
	inc bc			;4482
	nop			;4483
	nop			;4484
	nop			;4485
	nop			;4486
	nop			;4487
	nop			;4488
	nop			;4489
	ld h,c			;448a
	nop			;448b
	nop			;448c
	nop			;448d
	nop			;448e
	nop			;448f
	ld h,c			;4490
	nop			;4491
	inc d			;4492
	rrca			;4493
	inc d			;4494
	rrca			;4495
	ld hl,0140ah		;4496
	ld a,(bc)		;4499
	inc bc			;449a
	nop			;449b
	nop			;449c
	nop			;449d
	ld h,c			;449e
	nop			;449f
	ld h,c			;44a0
	nop			;44a1
	nop			;44a2
	nop			;44a3
	ld h,c			;44a4
	nop			;44a5
	inc bc			;44a6
	nop			;44a7
	inc d			;44a8
	rrca			;44a9
	inc d			;44aa
	rrca			;44ab
	inc d			;44ac
	rrca			;44ad
	ld h,c			;44ae
	nop			;44af
	inc d			;44b0
	ld a,(bc)		;44b1
	ld bc,l6100h		;44b2
	nop			;44b5
	ld h,c			;44b6
	nop			;44b7
	ld h,c			;44b8
	nop			;44b9
	nop			;44ba
	nop			;44bb
	ld h,c			;44bc
	nop			;44bd
	nop			;44be
	nop			;44bf
	ld (de),a		;44c0
	rrca			;44c1
	ld (de),a		;44c2
	rrca			;44c3
	ld (de),a		;44c4
	rrca			;44c5
	ld b,00fh		;44c6
	ld (de),a		;44c8
	ld a,(bc)		;44c9
	inc bc			;44ca
	nop			;44cb
	ld h,c			;44cc
	nop			;44cd
	ld h,c			;44ce
	nop			;44cf
	ld h,c			;44d0
	nop			;44d1
	ld h,c			;44d2
	nop			;44d3
	ld h,c			;44d4
	nop			;44d5
	nop			;44d6
	nop			;44d7
	ld (de),a		;44d8
	rrca			;44d9
	ld b,00fh		;44da
	ld b,00fh		;44dc
	ld (de),a		;44de
	rrca			;44df
	ld b,00ah		;44e0
	ld (bc),a		;44e2
	nop			;44e3
	ld h,c			;44e4
	nop			;44e5
	ld h,c			;44e6
	nop			;44e7
	ld h,c			;44e8
	nop			;44e9
	ld h,c			;44ea
	nop			;44eb
	ld h,c			;44ec
	nop			;44ed
	inc bc			;44ee
	nop			;44ef
	ld h,c			;44f0
	nop			;44f1
	ld (de),a		;44f2
	rrca			;44f3
	ld (de),a		;44f4
	rrca			;44f5
	ld (de),a		;44f6
	rrca			;44f7
	ld (de),a		;44f8
	ld a,(bc)		;44f9
	ld bc,00000h		;44fa
	nop			;44fd
	ld l,b			;44fe
	ret z			;44ff
	ld l,b			;4500
	ret z			;4501
	nop			;4502
	nop			;4503
	ld l,b			;4504
	ret z			;4505
	nop			;4506
	nop			;4507
	ld b,00fh		;4508
	ld b,00fh		;450a
	ld (de),a		;450c
	rrca			;450d
	ld h,c			;450e
	nop			;450f
	ld (de),a		;4510
	ld a,(bc)		;4511
	inc bc			;4512
	nop			;4513
	ld h,c			;4514
	nop			;4515
	ld h,h			;4516
	ld (02264h),hl		;4517
	nop			;451a
	nop			;451b
	ld h,h			;451c
	ld (00003h),hl		;451d
	ld (de),a		;4520
	rrca			;4521
	nop			;4522
	nop			;4523
	nop			;4524
	nop			;4525
	ld (de),a		;4526
	rrca			;4527
	nop			;4528
	nop			;4529
	ld (bc),a		;452a
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
	inc bc			;4536
	nop			;4537
	ld h,h			;4538
	xor d			;4539
	ld l,h			;453a
	dec b			;453b
	ld l,h			;453c
	dec b			;453d
	ld h,h			;453e
	xor d			;453f
	ld l,h			;4540
	dec b			;4541
	inc bc			;4542
	nop			;4543
	ld l,h			;4544
	ld bc,00000h		;4545
	nop			;4548
	nop			;4549
	ld l,h			;454a
	ld bc,00000h		;454b
	inc bc			;454e
	nop			;454f
	ld l,h			;4550
	ld (bc),a		;4551
	nop			;4552
	nop			;4553
	nop			;4554
	nop			;4555
	ld l,h			;4556
	ld (bc),a		;4557
	nop			;4558
	nop			;4559
	ld (bc),a		;455a
	nop			;455b
	ld l,h			;455c
	inc bc			;455d
	nop			;455e
	nop			;455f
	nop			;4560
	nop			;4561
	ld l,h			;4562
	inc bc			;4563
	nop			;4564
	nop			;4565
	inc bc			;4566
	nop			;4567
	ld l,h			;4568
	dec b			;4569
	ld l,h			;456a
	ld (bc),a		;456b
	ld l,h			;456c
	ld (bc),a		;456d
	ld l,h			;456e
	dec b			;456f
	ld l,h			;4570
	ld (bc),a		;4571
	ld (bc),a		;4572
	nop			;4573
	ld l,h			;4574
	ld b,000h		;4575
	nop			;4577
	nop			;4578
	nop			;4579
	ld h,c			;457a
	nop			;457b
	nop			;457c
	nop			;457d
	inc bc			;457e
	nop			;457f
	inc d			;4580
	rrca			;4581
	ex af,af'		;4582
	rrca			;4583
	ex af,af'		;4584
	rrca			;4585
	ld h,d			;4586
	inc h			;4587
	ex af,af'		;4588
	ld a,(bc)		;4589
	ld bc,l6200h		;458a
	ld hl,(00000h)		;458d
	nop			;4590
	nop			;4591
	nop			;4592
	nop			;4593
	nop			;4594
	nop			;4595
	nop			;4596
	nop			;4597
	inc d			;4598
	rrca			;4599
	ld h,c			;459a
	nop			;459b
	ld h,c			;459c
	nop			;459d
	inc d			;459e
	ld a,(bc)		;459f
	ld h,c			;45a0
	nop			;45a1
	inc bc			;45a2
	nop			;45a3
	ld h,c			;45a4
	nop			;45a5
	nop			;45a6
	nop			;45a7
	nop			;45a8
	nop			;45a9
	nop			;45aa
	nop			;45ab
	nop			;45ac
	nop			;45ad
	inc bc			;45ae
	nop			;45af
	inc d			;45b0
	rrca			;45b1
	ex af,af'		;45b2
	rrca			;45b3
	ex af,af'		;45b4
	rrca			;45b5
	inc d			;45b6
	ld a,(bc)		;45b7
	ex af,af'		;45b8
	ld a,(bc)		;45b9
	inc bc			;45ba
	nop			;45bb
	nop			;45bc
	nop			;45bd
	nop			;45be
	nop			;45bf
	nop			;45c0
	nop			;45c1
	ld h,c			;45c2
	nop			;45c3
	nop			;45c4
	nop			;45c5
	nop			;45c6
	nop			;45c7
	ld h,c			;45c8
	nop			;45c9
	inc d			;45ca
	rrca			;45cb
	inc d			;45cc
	rrca			;45cd
	inc d			;45ce
	ld a,(bc)		;45cf
	inc d			;45d0
	ld a,(bc)		;45d1
	inc bc			;45d2
	nop			;45d3
	nop			;45d4
	nop			;45d5
	nop			;45d6
	nop			;45d7
	nop			;45d8
	nop			;45d9
	nop			;45da
	nop			;45db
	nop			;45dc
	nop			;45dd
	nop			;45de
	nop			;45df
	inc d			;45e0
	rrca			;45e1
	ex af,af'		;45e2
	rrca			;45e3
	ex af,af'		;45e4
	rrca			;45e5
	ld h,c			;45e6
	nop			;45e7
	ex af,af'		;45e8
	ld a,(bc)		;45e9
	ld (bc),a		;45ea
	nop			;45eb
	ld h,c			;45ec
	nop			;45ed
	nop			;45ee
	nop			;45ef
	nop			;45f0
	nop			;45f1
	nop			;45f2
	nop			;45f3
	nop			;45f4
	nop			;45f5
	nop			;45f6
	nop			;45f7
	ld hl,l610fh		;45f8
	nop			;45fb
	ld h,c			;45fc
	nop			;45fd
	inc d			;45fe
	ld a,(bc)		;45ff
	ld h,c			;4600
	nop			;4601
	inc bc			;4602
	nop			;4603
	nop			;4604
	nop			;4605
	ld h,d			;4606
	add hl,hl		;4607
	ld h,d			;4608
	inc l			;4609
	ld h,c			;460a
	nop			;460b
	nop			;460c
	nop			;460d
	nop			;460e
	nop			;460f
	ld h,c			;4610
	nop			;4611
	ex af,af'		;4612
	rrca			;4613
	ex af,af'		;4614
	rrca			;4615
	ld hl,0080ah		;4616
	ld a,(bc)		;4619
	inc bc			;461a
	nop			;461b
	nop			;461c
	nop			;461d
	ld h,c			;461e
	nop			;461f
	ld h,c			;4620
	nop			;4621
	nop			;4622
	nop			;4623
	ld h,c			;4624
	nop			;4625
	nop			;4626
	nop			;4627
	inc d			;4628
	rrca			;4629
	inc d			;462a
	rrca			;462b
	inc d			;462c
	rrca			;462d
	ld h,c			;462e
	nop			;462f
	inc d			;4630
	ld a,(bc)		;4631
	inc bc			;4632
	nop			;4633
	ld h,c			;4634
	nop			;4635
	nop			;4636
	nop			;4637
	nop			;4638
	nop			;4639
	nop			;463a
	nop			;463b
	nop			;463c
	nop			;463d
	inc bc			;463e
	nop			;463f
	inc d			;4640
	rrca			;4641
	ex af,af'		;4642
	rrca			;4643
	ex af,af'		;4644
	rrca			;4645
	inc d			;4646
	ld a,(bc)		;4647
	ex af,af'		;4648
	ld a,(bc)		;4649
	ld bc,l6100h		;464a
	nop			;464d
	nop			;464e
	nop			;464f
	nop			;4650
	nop			;4651
	ld h,c			;4652
	nop			;4653
	nop			;4654
	nop			;4655
	nop			;4656
	nop			;4657
	jr nz,l4669h		;4658
	inc d			;465a
	rrca			;465b
	inc d			;465c
	rrca			;465d
	inc d			;465e
	ld a,(bc)		;465f
	inc d			;4660
	ld a,(bc)		;4661
	inc bc			;4662
	nop			;4663
	nop			;4664
	nop			;4665
	nop			;4666
	nop			;4667
	nop			;4668
l4669h:
	nop			;4669
	ld h,c			;466a
	nop			;466b
	nop			;466c
	nop			;466d
	inc bc			;466e
	nop			;466f
	ld h,c			;4670
	nop			;4671
	ex af,af'		;4672
	rrca			;4673
	ex af,af'		;4674
	rrca			;4675
	jr nz,l4682h		;4676
	ex af,af'		;4678
	ld a,(bc)		;4679
	inc bc			;467a
	nop			;467b
	nop			;467c
	nop			;467d
	ld h,d			;467e
	jr z,l46e3h		;467f
	dec l			;4681
l4682h:
	nop			;4682
	nop			;4683
	nop			;4684
	nop			;4685
	nop			;4686
	nop			;4687
	inc d			;4688
	rrca			;4689
	ld h,c			;468a
	nop			;468b
	ld h,c			;468c
	nop			;468d
	ld h,c			;468e
	nop			;468f
	ld h,c			;4690
	nop			;4691
	ld (bc),a		;4692
	nop			;4693
	ld h,c			;4694
	nop			;4695
	nop			;4696
	nop			;4697
	nop			;4698
	nop			;4699
	nop			;469a
	nop			;469b
	nop			;469c
	nop			;469d
	nop			;469e
	nop			;469f
	inc d			;46a0
	rrca			;46a1
	ex af,af'		;46a2
	rrca			;46a3
	ex af,af'		;46a4
	rrca			;46a5
	inc d			;46a6
	ld a,(bc)		;46a7
	ex af,af'		;46a8
	ld a,(bc)		;46a9
	inc b			;46aa
	nop			;46ab
	nop			;46ac
	nop			;46ad
	nop			;46ae
	nop			;46af
	nop			;46b0
	nop			;46b1
	ld h,c			;46b2
	nop			;46b3
	nop			;46b4
	nop			;46b5
	nop			;46b6
	nop			;46b7
	ld h,c			;46b8
	nop			;46b9
	ld h,c			;46ba
	nop			;46bb
	ld h,c			;46bc
	nop			;46bd
	inc d			;46be
	ld a,(bc)		;46bf
	ld h,c			;46c0
	nop			;46c1
	inc bc			;46c2
	nop			;46c3
	nop			;46c4
	nop			;46c5
	nop			;46c6
	nop			;46c7
	nop			;46c8
	nop			;46c9
	nop			;46ca
	nop			;46cb
	nop			;46cc
	nop			;46cd
	nop			;46ce
	nop			;46cf
	inc d			;46d0
	rrca			;46d1
	add hl,bc		;46d2
	rrca			;46d3
	add hl,bc		;46d4
	rrca			;46d5
	ld h,c			;46d6
	nop			;46d7
	add hl,bc		;46d8
	ld a,(bc)		;46d9
	inc bc			;46da
	nop			;46db
	ld h,c			;46dc
	nop			;46dd
	ld h,d			;46de
	add hl,hl		;46df
	ld h,d			;46e0
	ld l,000h		;46e1
l46e3h:
	nop			;46e3
	nop			;46e4
	nop			;46e5
	nop			;46e6
	nop			;46e7
	nop			;46e8
	nop			;46e9
	ld h,d			;46ea
	jr z,l474fh		;46eb
	cpl			;46ed
	inc d			;46ee
	ld a,(bc)		;46ef
	nop			;46f0
	nop			;46f1
	ld (bc),a		;46f2
	nop			;46f3
	nop			;46f4
	nop			;46f5
	ld h,d			;46f6
	daa			;46f7
	ld h,d			;46f8
	jr nc,l475ch		;46f9
	nop			;46fb
	nop			;46fc
	nop			;46fd
	nop			;46fe
	nop			;46ff
	inc d			;4700
	rrca			;4701
	ex af,af'		;4702
	rrca			;4703
	ex af,af'		;4704
	rrca			;4705
	nop			;4706
	nop			;4707
	ex af,af'		;4708
	ld a,(bc)		;4709
	ld bc,00000h		;470a
	nop			;470d
	ld h,d			;470e
	jr z,l4773h		;470f
	jr z,l4713h		;4711
l4713h:
	nop			;4713
	nop			;4714
	nop			;4715
	nop			;4716
	nop			;4717
	inc d			;4718
	rrca			;4719
	ld h,d			;471a
	add hl,hl		;471b
	ld h,d			;471c
	add hl,hl		;471d
	inc d			;471e
	ld a,(bc)		;471f
	nop			;4720
	nop			;4721
	inc bc			;4722
	nop			;4723
	ld h,c			;4724
	nop			;4725
	ld h,d			;4726
	daa			;4727
	ld h,d			;4728
	daa			;4729
	nop			;472a
	nop			;472b
	nop			;472c
	nop			;472d
	inc bc			;472e
	nop			;472f
	inc d			;4730
	rrca			;4731
	inc d			;4732
	rrca			;4733
	inc d			;4734
	rrca			;4735
	inc d			;4736
	ld a,(bc)		;4737
	inc d			;4738
	ld a,(bc)		;4739
	inc bc			;473a
	nop			;473b
	nop			;473c
	nop			;473d
	nop			;473e
	nop			;473f
	nop			;4740
	nop			;4741
	ld h,c			;4742
	nop			;4743
	nop			;4744
	nop			;4745
	nop			;4746
	nop			;4747
	ld h,c			;4748
	nop			;4749
	ld h,c			;474a
	nop			;474b
	ld h,c			;474c
	nop			;474d
	inc d			;474e
l474fh:
	ld a,(bc)		;474f
	ld h,c			;4750
	nop			;4751
	inc bc			;4752
	nop			;4753
	nop			;4754
	nop			;4755
	nop			;4756
	nop			;4757
	nop			;4758
	nop			;4759
	nop			;475a
	nop			;475b
l475ch:
	nop			;475c
	nop			;475d
	nop			;475e
	nop			;475f
	inc d			;4760
	rrca			;4761
	ex af,af'		;4762
	rrca			;4763
	ex af,af'		;4764
	rrca			;4765
	ld h,c			;4766
	nop			;4767
	ex af,af'		;4768
	ld a,(bc)		;4769
	ld (bc),a		;476a
	nop			;476b
	ld h,c			;476c
	nop			;476d
	nop			;476e
	nop			;476f
	nop			;4770
	nop			;4771
	nop			;4772
l4773h:
	nop			;4773
	nop			;4774
	nop			;4775
	inc bc			;4776
	nop			;4777
	ld hl,l610fh		;4778
	nop			;477b
	ld h,c			;477c
	nop			;477d
	inc d			;477e
	ld a,(bc)		;477f
	ld h,c			;4780
	nop			;4781
	inc bc			;4782
	nop			;4783
	nop			;4784
	nop			;4785
	nop			;4786
	nop			;4787
	nop			;4788
	nop			;4789
	ld h,c			;478a
	nop			;478b
	nop			;478c
	nop			;478d
	inc bc			;478e
	nop			;478f
	ld h,c			;4790
	nop			;4791
	inc d			;4792
	rrca			;4793
	inc d			;4794
	rrca			;4795
	ld hl,0140ah		;4796
	ld a,(bc)		;4799
	inc b			;479a
	nop			;479b
	nop			;479c
	nop			;479d
	ld h,c			;479e
	nop			;479f
	ld h,c			;47a0
	nop			;47a1
	nop			;47a2
	nop			;47a3
	ld h,c			;47a4
	nop			;47a5
	nop			;47a6
	nop			;47a7
	inc d			;47a8
	rrca			;47a9
	inc d			;47aa
	rrca			;47ab
	inc d			;47ac
	rrca			;47ad
	ld h,c			;47ae
	nop			;47af
	inc d			;47b0
	ld a,(bc)		;47b1
	nop			;47b2
	nop			;47b3
	ld h,c			;47b4
	nop			;47b5
	ld h,c			;47b6
	nop			;47b7
	ld h,c			;47b8
	nop			;47b9
	nop			;47ba
	nop			;47bb
	ld h,c			;47bc
	nop			;47bd
	nop			;47be
	nop			;47bf
	ld (de),a		;47c0
	rrca			;47c1
	ld (de),a		;47c2
	rrca			;47c3
	ld (de),a		;47c4
	rrca			;47c5
	ld b,00fh		;47c6
	ld (de),a		;47c8
	ld a,(bc)		;47c9
	inc bc			;47ca
	nop			;47cb
	ld h,c			;47cc
	nop			;47cd
	ld h,c			;47ce
	nop			;47cf
	ld h,c			;47d0
	nop			;47d1
	ld h,c			;47d2
	nop			;47d3
	ld h,c			;47d4
	nop			;47d5
	nop			;47d6
	nop			;47d7
	ld (de),a		;47d8
	rrca			;47d9
	ld b,00fh		;47da
	ld b,00fh		;47dc
	ld (de),a		;47de
	rrca			;47df
	ld b,00ah		;47e0
	ld (bc),a		;47e2
	nop			;47e3
	ld h,c			;47e4
	nop			;47e5
	ld h,c			;47e6
	nop			;47e7
	ld h,c			;47e8
	nop			;47e9
	ld h,c			;47ea
	nop			;47eb
	ld h,c			;47ec
	nop			;47ed
	inc bc			;47ee
	nop			;47ef
	ld h,c			;47f0
	nop			;47f1
	ld (de),a		;47f2
	rrca			;47f3
	ld (de),a		;47f4
	rrca			;47f5
	ld (de),a		;47f6
	rrca			;47f7
	ld (de),a		;47f8
	ld a,(bc)		;47f9
	ld bc,00000h		;47fa
	nop			;47fd
	ld l,b			;47fe
	ret z			;47ff
	ld l,b			;4800
	ret z			;4801
	nop			;4802
	nop			;4803
	ld l,b			;4804
	ret z			;4805
	nop			;4806
	nop			;4807
	ld b,00fh		;4808
	ld b,00fh		;480a
	ld (de),a		;480c
	rrca			;480d
	ld h,c			;480e
	nop			;480f
	ld (de),a		;4810
	ld a,(bc)		;4811
	inc bc			;4812
	nop			;4813
	ld h,c			;4814
	nop			;4815
	ld h,h			;4816
	ld (02264h),hl		;4817
	nop			;481a
	nop			;481b
	ld h,h			;481c
	ld (00003h),hl		;481d
	ld (de),a		;4820
	rrca			;4821
	nop			;4822
	nop			;4823
	nop			;4824
	nop			;4825
	ld (de),a		;4826
	rrca			;4827
	nop			;4828
	nop			;4829
	ld (bc),a		;482a
	nop			;482b
	nop			;482c
	nop			;482d
	nop			;482e
	nop			;482f
	nop			;4830
	nop			;4831
	nop			;4832
	nop			;4833
	nop			;4834
	nop			;4835
	inc bc			;4836
	nop			;4837
	ld h,h			;4838
	xor d			;4839
	ld l,h			;483a
	dec b			;483b
	ld l,h			;483c
	dec b			;483d
	ld h,h			;483e
	xor d			;483f
	ld l,h			;4840
	dec b			;4841
	ld (bc),a		;4842
	nop			;4843
	ld l,h			;4844
	ld bc,00000h		;4845
	nop			;4848
	nop			;4849
	ld l,h			;484a
	ld bc,00000h		;484b
	inc b			;484e
	nop			;484f
	ld l,h			;4850
	ld (bc),a		;4851
	nop			;4852
	nop			;4853
	nop			;4854
	nop			;4855
	ld l,h			;4856
	ld (bc),a		;4857
	nop			;4858
	nop			;4859
	nop			;485a
	nop			;485b
	ld l,h			;485c
	inc bc			;485d
	nop			;485e
	nop			;485f
	nop			;4860
	nop			;4861
	ld l,h			;4862
	inc bc			;4863
	nop			;4864
	nop			;4865
	nop			;4866
	nop			;4867
	ld l,h			;4868
	dec b			;4869
	ld l,h			;486a
	ld (bc),a		;486b
	ld l,h			;486c
	ld (bc),a		;486d
	ld h,c			;486e
	nop			;486f
	ld l,h			;4870
	ld (bc),a		;4871
	nop			;4872
	nop			;4873
	ld h,d			;4874
	rrca			;4875
	nop			;4876
	nop			;4877
	nop			;4878
	nop			;4879
	ld h,d			;487a
	rrca			;487b
	nop			;487c
	nop			;487d
	nop			;487e
	nop			;487f
	ld h,d			;4880
	rra			;4881
	ex af,af'		;4882
	rrca			;4883
	ex af,af'		;4884
	rrca			;4885
	ld h,d			;4886
	rra			;4887
	nop			;4888
	nop			;4889
	ld bc,l6a00h		;488a
	ld b,062h		;488d
	daa			;488f
	ld h,d			;4890
	daa			;4891
	ld l,c			;4892
	ld b,000h		;4893
	nop			;4895
	nop			;4896
	nop			;4897
	inc d			;4898
	dec bc			;4899
	ld h,c			;489a
	nop			;489b
	ld h,c			;489c
	nop			;489d
	inc d			;489e
	dec bc			;489f
	nop			;48a0
	nop			;48a1
	inc bc			;48a2
	nop			;48a3
	nop			;48a4
	nop			;48a5
	nop			;48a6
	nop			;48a7
	nop			;48a8
	nop			;48a9
	ld h,c			;48aa
	nop			;48ab
	nop			;48ac
	nop			;48ad
	inc bc			;48ae
	nop			;48af
	dec d			;48b0
	dec bc			;48b1
	ex af,af'		;48b2
	rrca			;48b3
	ex af,af'		;48b4
	rrca			;48b5
	dec d			;48b6
	dec bc			;48b7
	inc d			;48b8
	ex af,af'		;48b9
	inc b			;48ba
	nop			;48bb
	nop			;48bc
	nop			;48bd
	nop			;48be
	nop			;48bf
	nop			;48c0
	nop			;48c1
	ld h,c			;48c2
	nop			;48c3
	ld h,c			;48c4
	nop			;48c5
	nop			;48c6
	nop			;48c7
	nop			;48c8
	nop			;48c9
	inc d			;48ca
	rrca			;48cb
	inc d			;48cc
	rrca			;48cd
	nop			;48ce
	nop			;48cf
	dec d			;48d0
	ex af,af'		;48d1
	inc bc			;48d2
	nop			;48d3
	nop			;48d4
	nop			;48d5
	nop			;48d6
	nop			;48d7
	nop			;48d8
	nop			;48d9
	nop			;48da
	nop			;48db
	ld h,c			;48dc
	nop			;48dd
	nop			;48de
	nop			;48df
	dec e			;48e0
	dec bc			;48e1
	ex af,af'		;48e2
	rrca			;48e3
	ex af,af'		;48e4
	rrca			;48e5
	dec e			;48e6
	dec bc			;48e7
	nop			;48e8
	nop			;48e9
	ld (bc),a		;48ea
	nop			;48eb
	nop			;48ec
	nop			;48ed
	nop			;48ee
	nop			;48ef
	nop			;48f0
	nop			;48f1
	ld h,c			;48f2
	nop			;48f3
	nop			;48f4
	nop			;48f5
	nop			;48f6
	nop			;48f7
	dec d			;48f8
	dec bc			;48f9
	ld h,c			;48fa
	nop			;48fb
	ld h,c			;48fc
	nop			;48fd
	dec d			;48fe
	dec bc			;48ff
	dec e			;4900
	ex af,af'		;4901
	inc b			;4902
	nop			;4903
	nop			;4904
	nop			;4905
	ld h,d			;4906
	jr z,l496bh		;4907
	jr z,l496ch		;4909
	nop			;490b
	ld h,c			;490c
	nop			;490d
	nop			;490e
	nop			;490f
	dec d			;4910
	inc b			;4911
	ex af,af'		;4912
	rrca			;4913
	ex af,af'		;4914
	rrca			;4915
	nop			;4916
	nop			;4917
	dec d			;4918
	ld (bc),a		;4919
	nop			;491a
	nop			;491b
	nop			;491c
	nop			;491d
	ld h,c			;491e
	nop			;491f
	ld h,c			;4920
	nop			;4921
	nop			;4922
	nop			;4923
	ld h,c			;4924
	nop			;4925
	nop			;4926
	nop			;4927
	dec d			;4928
	inc b			;4929
	inc d			;492a
	rrca			;492b
	inc d			;492c
	rrca			;492d
	nop			;492e
	nop			;492f
	dec d			;4930
	ld (bc),a		;4931
	inc bc			;4932
	nop			;4933
	nop			;4934
	nop			;4935
	nop			;4936
	nop			;4937
	nop			;4938
	nop			;4939
	nop			;493a
	nop			;493b
	ld h,c			;493c
	nop			;493d
	inc bc			;493e
	nop			;493f
	inc d			;4940
	dec bc			;4941
	ex af,af'		;4942
	rrca			;4943
	ex af,af'		;4944
	rrca			;4945
	inc d			;4946
	dec bc			;4947
	dec d			;4948
	rlca			;4949
	ld bc,00000h		;494a
	nop			;494d
	nop			;494e
	nop			;494f
	nop			;4950
	nop			;4951
	ld h,c			;4952
	nop			;4953
	ld h,c			;4954
	nop			;4955
	nop			;4956
	nop			;4957
	dec d			;4958
	dec bc			;4959
	inc d			;495a
	rrca			;495b
	inc d			;495c
	rrca			;495d
	dec d			;495e
	dec bc			;495f
	inc d			;4960
	ex af,af'		;4961
	inc bc			;4962
	nop			;4963
	nop			;4964
	nop			;4965
	nop			;4966
	nop			;4967
	nop			;4968
	nop			;4969
	ld h,c			;496a
l496bh:
	nop			;496b
l496ch:
	ld h,c			;496c
	nop			;496d
	inc bc			;496e
	nop			;496f
	inc d			;4970
	dec bc			;4971
	ex af,af'		;4972
	rrca			;4973
	ex af,af'		;4974
	rrca			;4975
	inc d			;4976
	dec bc			;4977
	dec d			;4978
	ex af,af'		;4979
	inc bc			;497a
	nop			;497b
	nop			;497c
	nop			;497d
	ld h,d			;497e
	add hl,hl		;497f
	ld h,d			;4980
	add hl,hl		;4981
	ld h,c			;4982
	nop			;4983
	ld h,c			;4984
	nop			;4985
	nop			;4986
	nop			;4987
	dec d			;4988
	dec bc			;4989
	ld h,c			;498a
	nop			;498b
	ld h,c			;498c
	nop			;498d
	dec d			;498e
	dec bc			;498f
	inc d			;4990
	ex af,af'		;4991
	ld (bc),a		;4992
	nop			;4993
	nop			;4994
	nop			;4995
	nop			;4996
	nop			;4997
	nop			;4998
	nop			;4999
	ld h,c			;499a
	nop			;499b
	ld h,c			;499c
	nop			;499d
	nop			;499e
	nop			;499f
	nop			;49a0
	nop			;49a1
	ld b,00fh		;49a2
	ld b,00fh		;49a4
	nop			;49a6
	nop			;49a7
	nop			;49a8
	nop			;49a9
	inc b			;49aa
	nop			;49ab
	nop			;49ac
	nop			;49ad
	nop			;49ae
	nop			;49af
	nop			;49b0
	nop			;49b1
	nop			;49b2
	nop			;49b3
	nop			;49b4
	nop			;49b5
	nop			;49b6
	nop			;49b7
	nop			;49b8
	nop			;49b9
	ld h,c			;49ba
	nop			;49bb
	ld h,c			;49bc
	nop			;49bd
	dec de			;49be
	nop			;49bf
	nop			;49c0
	nop			;49c1
	inc bc			;49c2
	nop			;49c3
	nop			;49c4
	nop			;49c5
	ld h,d			;49c6
	ld hl,(02a62h)		;49c7
	ld l,e			;49ca
	ld bc,00015h		;49cb
	nop			;49ce
	nop			;49cf
	dec de			;49d0
	dec bc			;49d1
	ld b,00fh		;49d2
	ld b,00fh		;49d4
	dec de			;49d6
	dec bc			;49d7
	ld l,e			;49d8
	ld bc,00003h		;49d9
	nop			;49dc
	nop			;49dd
	ld h,d			;49de
	add hl,hl		;49df
	ld h,d			;49e0
	add hl,hl		;49e1
	ld h,c			;49e2
	nop			;49e3
	dec d			;49e4
	inc b			;49e5
	nop			;49e6
	nop			;49e7
	dec d			;49e8
	dec bc			;49e9
	ld h,d			;49ea
	jr z,l4a4fh		;49eb
	jr z,l4a04h		;49ed
	dec bc			;49ef
	dec de			;49f0
	ex af,af'		;49f1
	inc bc			;49f2
	nop			;49f3
	nop			;49f4
	nop			;49f5
	ld h,d			;49f6
	daa			;49f7
	ld h,d			;49f8
	daa			;49f9
	ld h,c			;49fa
	nop			;49fb
	ld h,c			;49fc
	nop			;49fd
	inc bc			;49fe
	nop			;49ff
	nop			;4a00
	nop			;4a01
	ex af,af'		;4a02
	rrca			;4a03
l4a04h:
	ex af,af'		;4a04
	rrca			;4a05
	nop			;4a06
	nop			;4a07
	dec d			;4a08
	ex af,af'		;4a09
	ld bc,00000h		;4a0a
	nop			;4a0d
	ld h,d			;4a0e
	jr z,l4a73h		;4a0f
	ld hl,(00000h)		;4a11
	ld h,c			;4a14
	nop			;4a15
	nop			;4a16
	nop			;4a17
	nop			;4a18
	nop			;4a19
	ld h,d			;4a1a
	add hl,hl		;4a1b
	ld h,d			;4a1c
	add hl,hl		;4a1d
	nop			;4a1e
	nop			;4a1f
	nop			;4a20
	nop			;4a21
	inc bc			;4a22
	nop			;4a23
	nop			;4a24
	nop			;4a25
	ld h,d			;4a26
	daa			;4a27
	ld h,d			;4a28
	jr z,l4a2bh		;4a29
l4a2bh:
	nop			;4a2b
	nop			;4a2c
	nop			;4a2d
	inc bc			;4a2e
	nop			;4a2f
	dec d			;4a30
	dec bc			;4a31
	ex af,af'		;4a32
	rrca			;4a33
	ex af,af'		;4a34
	rrca			;4a35
	dec d			;4a36
	dec bc			;4a37
	nop			;4a38
	nop			;4a39
	inc b			;4a3a
	nop			;4a3b
	nop			;4a3c
	nop			;4a3d
	nop			;4a3e
	nop			;4a3f
	nop			;4a40
	nop			;4a41
	ld h,c			;4a42
	nop			;4a43
	nop			;4a44
	nop			;4a45
	nop			;4a46
	nop			;4a47
	inc d			;4a48
	dec bc			;4a49
	ld h,c			;4a4a
	nop			;4a4b
	ld h,c			;4a4c
	nop			;4a4d
	inc d			;4a4e
l4a4fh:
	dec bc			;4a4f
	dec d			;4a50
	ex af,af'		;4a51
	inc bc			;4a52
	nop			;4a53
	nop			;4a54
	nop			;4a55
	nop			;4a56
	nop			;4a57
	nop			;4a58
	nop			;4a59
	ld h,c			;4a5a
	nop			;4a5b
	ld h,c			;4a5c
	nop			;4a5d
	nop			;4a5e
	nop			;4a5f
	dec d			;4a60
	dec bc			;4a61
	ex af,af'		;4a62
	rrca			;4a63
	ex af,af'		;4a64
	rrca			;4a65
	dec d			;4a66
	dec bc			;4a67
	inc d			;4a68
	ex af,af'		;4a69
	ld (bc),a		;4a6a
	nop			;4a6b
	nop			;4a6c
	nop			;4a6d
	nop			;4a6e
	nop			;4a6f
	nop			;4a70
	nop			;4a71
	ld h,c			;4a72
l4a73h:
	nop			;4a73
	ld h,c			;4a74
	nop			;4a75
	inc bc			;4a76
	nop			;4a77
	dec d			;4a78
	dec bc			;4a79
	ld h,c			;4a7a
	nop			;4a7b
	ld h,c			;4a7c
	nop			;4a7d
	dec d			;4a7e
	dec bc			;4a7f
	dec d			;4a80
	ex af,af'		;4a81
	inc bc			;4a82
	nop			;4a83
	nop			;4a84
	nop			;4a85
	nop			;4a86
	nop			;4a87
	nop			;4a88
	nop			;4a89
	ld h,c			;4a8a
	nop			;4a8b
	ld h,c			;4a8c
	nop			;4a8d
	nop			;4a8e
	nop			;4a8f
	dec e			;4a90
	dec bc			;4a91
	ld b,00fh		;4a92
	ld b,00fh		;4a94
	dec e			;4a96
	dec bc			;4a97
	dec d			;4a98
	ex af,af'		;4a99
	inc bc			;4a9a
	nop			;4a9b
	nop			;4a9c
	nop			;4a9d
	ld h,c			;4a9e
	nop			;4a9f
	ld h,c			;4aa0
	nop			;4aa1
	ld h,c			;4aa2
	nop			;4aa3
	ld h,c			;4aa4
	nop			;4aa5
	inc bc			;4aa6
	nop			;4aa7
	nop			;4aa8
	nop			;4aa9
	ld b,00fh		;4aaa
	ld b,00fh		;4aac
	nop			;4aae
	nop			;4aaf
	dec e			;4ab0
	ex af,af'		;4ab1
	ld bc,00000h		;4ab2
	nop			;4ab5
	ld h,c			;4ab6
	nop			;4ab7
	ld h,c			;4ab8
	nop			;4ab9
	nop			;4aba
	nop			;4abb
	ld h,c			;4abc
	nop			;4abd
	nop			;4abe
	nop			;4abf
	inc d			;4ac0
	dec bc			;4ac1
	ld (de),a		;4ac2
	rrca			;4ac3
	ld (de),a		;4ac4
	rrca			;4ac5
	inc d			;4ac6
	dec bc			;4ac7
	nop			;4ac8
	nop			;4ac9
	inc bc			;4aca
	nop			;4acb
	nop			;4acc
	nop			;4acd
	ld h,c			;4ace
	nop			;4acf
	ld h,c			;4ad0
	nop			;4ad1
	ld h,c			;4ad2
	nop			;4ad3
	nop			;4ad4
	nop			;4ad5
	nop			;4ad6
	nop			;4ad7
	dec d			;4ad8
	dec bc			;4ad9
	djnz l4aebh		;4ada
	djnz l4aedh		;4adc
	dec d			;4ade
	dec bc			;4adf
	inc d			;4ae0
	ex af,af'		;4ae1
	ld (bc),a		;4ae2
	nop			;4ae3
	nop			;4ae4
	nop			;4ae5
	nop			;4ae6
	nop			;4ae7
	nop			;4ae8
	nop			;4ae9
	ld h,c			;4aea
l4aebh:
	nop			;4aeb
	ld h,c			;4aec
l4aedh:
	nop			;4aed
	inc bc			;4aee
	nop			;4aef
	inc d			;4af0
	dec bc			;4af1
	ld h,c			;4af2
	nop			;4af3
	ld h,c			;4af4
	nop			;4af5
	inc d			;4af6
	dec bc			;4af7
	dec d			;4af8
	ex af,af'		;4af9
	ld bc,00000h		;4afa
	nop			;4afd
	nop			;4afe
	nop			;4aff
	nop			;4b00
	nop			;4b01
	ld h,c			;4b02
	nop			;4b03
	ld h,c			;4b04
	nop			;4b05
	nop			;4b06
	nop			;4b07
	dec d			;4b08
	dec bc			;4b09
	ex af,af'		;4b0a
	rrca			;4b0b
	ex af,af'		;4b0c
	rrca			;4b0d
	dec d			;4b0e
	dec bc			;4b0f
	inc d			;4b10
	ex af,af'		;4b11
	inc bc			;4b12
	nop			;4b13
	nop			;4b14
	nop			;4b15
	nop			;4b16
	nop			;4b17
	nop			;4b18
	nop			;4b19
	ld h,c			;4b1a
	nop			;4b1b
	ld h,c			;4b1c
	nop			;4b1d
	inc bc			;4b1e
	nop			;4b1f
	nop			;4b20
	nop			;4b21
	ld h,c			;4b22
	nop			;4b23
	ld h,c			;4b24
	nop			;4b25
	nop			;4b26
	nop			;4b27
	dec d			;4b28
	ex af,af'		;4b29
	ld (bc),a		;4b2a
	nop			;4b2b
	nop			;4b2c
	nop			;4b2d
	nop			;4b2e
	nop			;4b2f
	nop			;4b30
	nop			;4b31
	nop			;4b32
	nop			;4b33
	ld h,c			;4b34
	nop			;4b35
	inc c			;4b36
	nop			;4b37
	nop			;4b38
	nop			;4b39
	inc d			;4b3a
	rrca			;4b3b
	inc d			;4b3c
	rrca			;4b3d
	nop			;4b3e
	nop			;4b3f
	nop			;4b40
	nop			;4b41
	nop			;4b42
	nop			;4b43
	nop			;4b44
	nop			;4b45
	ld h,c			;4b46
	nop			;4b47
	ld h,c			;4b48
	nop			;4b49
	ld l,e			;4b4a
	ld bc,00000h		;4b4b
	nop			;4b4e
	nop			;4b4f
	dec de			;4b50
	dec bc			;4b51
	ex af,af'		;4b52
	rrca			;4b53
	ex af,af'		;4b54
	rrca			;4b55
	dec de			;4b56
	dec bc			;4b57
	nop			;4b58
	nop			;4b59
	nop			;4b5a
	nop			;4b5b
	nop			;4b5c
	nop			;4b5d
	nop			;4b5e
	nop			;4b5f
	nop			;4b60
	nop			;4b61
	ld h,c			;4b62
	nop			;4b63
	nop			;4b64
	nop			;4b65
	nop			;4b66
	nop			;4b67
	dec d			;4b68
	dec bc			;4b69
	ld h,c			;4b6a
	nop			;4b6b
	ld h,c			;4b6c
	nop			;4b6d
	nop			;4b6e
	nop			;4b6f
	dec de			;4b70
	ex af,af'		;4b71
	inc bc			;4b72
	nop			;4b73
	nop			;4b74
	nop			;4b75
	nop			;4b76
	nop			;4b77
	nop			;4b78
	nop			;4b79
	nop			;4b7a
	nop			;4b7b
	ld h,c			;4b7c
	nop			;4b7d
	inc bc			;4b7e
	nop			;4b7f
	ld h,d			;4b80
	rra			;4b81
	rlca			;4b82
	rrca			;4b83
	rlca			;4b84
	rrca			;4b85
	ld h,d			;4b86
	rra			;4b87
	ld h,c			;4b88
	nop			;4b89
	ld bc,00000h		;4b8a
	nop			;4b8d
	ld h,d			;4b8e
	ld hl,(02762h)		;4b8f
	nop			;4b92
	nop			;4b93
	nop			;4b94
	nop			;4b95
	nop			;4b96
	nop			;4b97
	inc de			;4b98
	dec bc			;4b99
	ld h,c			;4b9a
	nop			;4b9b
	ld h,c			;4b9c
	nop			;4b9d
	inc de			;4b9e
	dec bc			;4b9f
	nop			;4ba0
	nop			;4ba1
	inc bc			;4ba2
	nop			;4ba3
	nop			;4ba4
	nop			;4ba5
	nop			;4ba6
	nop			;4ba7
	nop			;4ba8
	nop			;4ba9
	ld h,c			;4baa
	nop			;4bab
	nop			;4bac
	nop			;4bad
	nop			;4bae
	nop			;4baf
	inc d			;4bb0
	dec bc			;4bb1
	rlca			;4bb2
	rrca			;4bb3
	rlca			;4bb4
	rrca			;4bb5
	inc d			;4bb6
	dec bc			;4bb7
	inc de			;4bb8
	ex af,af'		;4bb9
	ld bc,00000h		;4bba
	nop			;4bbd
	nop			;4bbe
	nop			;4bbf
	nop			;4bc0
	nop			;4bc1
	ld h,c			;4bc2
	nop			;4bc3
	ld h,c			;4bc4
	nop			;4bc5
	nop			;4bc6
	nop			;4bc7
	nop			;4bc8
	nop			;4bc9
	inc de			;4bca
	rrca			;4bcb
	inc de			;4bcc
	rrca			;4bcd
	nop			;4bce
	nop			;4bcf
	inc d			;4bd0
	ex af,af'		;4bd1
	ld bc,00000h		;4bd2
	nop			;4bd5
	nop			;4bd6
	nop			;4bd7
	nop			;4bd8
	nop			;4bd9
	nop			;4bda
	nop			;4bdb
	ld h,c			;4bdc
	nop			;4bdd
	inc bc			;4bde
	nop			;4bdf
	inc e			;4be0
	dec bc			;4be1
	rlca			;4be2
	rrca			;4be3
	rlca			;4be4
	rrca			;4be5
	inc e			;4be6
	dec bc			;4be7
	nop			;4be8
	nop			;4be9
	ld (bc),a		;4bea
	nop			;4beb
	nop			;4bec
	nop			;4bed
	nop			;4bee
	nop			;4bef
	nop			;4bf0
	nop			;4bf1
	ld h,c			;4bf2
	nop			;4bf3
	nop			;4bf4
	nop			;4bf5
	nop			;4bf6
	nop			;4bf7
	inc d			;4bf8
	dec bc			;4bf9
	ld h,c			;4bfa
	nop			;4bfb
	ld h,c			;4bfc
	nop			;4bfd
	inc d			;4bfe
	dec bc			;4bff
	inc e			;4c00
	ex af,af'		;4c01
	ld bc,00000h		;4c02
	nop			;4c05
	ld h,d			;4c06
	add hl,hl		;4c07
	ld h,d			;4c08
	jr z,l4c6ch		;4c09
	nop			;4c0b
	ld h,c			;4c0c
	nop			;4c0d
	nop			;4c0e
	nop			;4c0f
	nop			;4c10
	nop			;4c11
	rlca			;4c12
	rrca			;4c13
	rlca			;4c14
	rrca			;4c15
	nop			;4c16
	nop			;4c17
	inc d			;4c18
	ex af,af'		;4c19
	inc bc			;4c1a
	nop			;4c1b
	nop			;4c1c
	nop			;4c1d
	ld h,c			;4c1e
	nop			;4c1f
	ld h,c			;4c20
	nop			;4c21
	nop			;4c22
	nop			;4c23
	ld h,c			;4c24
	nop			;4c25
	inc bc			;4c26
	nop			;4c27
	nop			;4c28
	nop			;4c29
	inc de			;4c2a
	rrca			;4c2b
	inc de			;4c2c
	rrca			;4c2d
	nop			;4c2e
	nop			;4c2f
	nop			;4c30
	nop			;4c31
	inc bc			;4c32
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
	inc de			;4c40
	dec bc			;4c41
	rlca			;4c42
	rrca			;4c43
	rlca			;4c44
	rrca			;4c45
	inc de			;4c46
	dec bc			;4c47
	nop			;4c48
	nop			;4c49
	ld bc,00000h		;4c4a
	nop			;4c4d
	nop			;4c4e
	nop			;4c4f
	nop			;4c50
	nop			;4c51
	ld h,c			;4c52
	nop			;4c53
	nop			;4c54
	nop			;4c55
	nop			;4c56
	nop			;4c57
	inc d			;4c58
	dec bc			;4c59
	inc de			;4c5a
	rrca			;4c5b
	inc de			;4c5c
	rrca			;4c5d
	inc d			;4c5e
	dec bc			;4c5f
	inc de			;4c60
	ex af,af'		;4c61
	inc bc			;4c62
	nop			;4c63
	nop			;4c64
	nop			;4c65
	nop			;4c66
	nop			;4c67
	nop			;4c68
	nop			;4c69
	ld h,c			;4c6a
	nop			;4c6b
l4c6ch:
	ld h,c			;4c6c
	nop			;4c6d
	inc bc			;4c6e
	nop			;4c6f
	inc de			;4c70
	dec bc			;4c71
	rlca			;4c72
	rrca			;4c73
	rlca			;4c74
	rrca			;4c75
	inc de			;4c76
	dec bc			;4c77
	inc d			;4c78
	ex af,af'		;4c79
	inc bc			;4c7a
	nop			;4c7b
	nop			;4c7c
	nop			;4c7d
	ld h,d			;4c7e
	jr z,l4ce3h		;4c7f
	daa			;4c81
	ld h,c			;4c82
	nop			;4c83
	ld h,c			;4c84
	nop			;4c85
	nop			;4c86
	nop			;4c87
	inc d			;4c88
	dec bc			;4c89
	ld h,c			;4c8a
	nop			;4c8b
	ld h,c			;4c8c
	nop			;4c8d
	inc d			;4c8e
	dec bc			;4c8f
	inc de			;4c90
	ex af,af'		;4c91
	ld (bc),a		;4c92
	nop			;4c93
	nop			;4c94
	nop			;4c95
	nop			;4c96
	nop			;4c97
	nop			;4c98
	nop			;4c99
	ld h,c			;4c9a
	nop			;4c9b
	ld h,c			;4c9c
	nop			;4c9d
	inc bc			;4c9e
	nop			;4c9f
	nop			;4ca0
	nop			;4ca1
	dec b			;4ca2
	rrca			;4ca3
	dec b			;4ca4
	rrca			;4ca5
	nop			;4ca6
	nop			;4ca7
	inc d			;4ca8
	ex af,af'		;4ca9
	nop			;4caa
	nop			;4cab
	nop			;4cac
	nop			;4cad
	nop			;4cae
	nop			;4caf
	nop			;4cb0
	nop			;4cb1
	nop			;4cb2
	nop			;4cb3
	ld h,c			;4cb4
	nop			;4cb5
	nop			;4cb6
	nop			;4cb7
	nop			;4cb8
	nop			;4cb9
	ld h,c			;4cba
	nop			;4cbb
	ld h,c			;4cbc
	nop			;4cbd
	ld a,(de)		;4cbe
	nop			;4cbf
	nop			;4cc0
	nop			;4cc1
	inc bc			;4cc2
	nop			;4cc3
	nop			;4cc4
	nop			;4cc5
	nop			;4cc6
	nop			;4cc7
	nop			;4cc8
	nop			;4cc9
	ld l,e			;4cca
	ld bc,00000h		;4ccb
	inc bc			;4cce
	nop			;4ccf
	ld a,(de)		;4cd0
	dec bc			;4cd1
	dec b			;4cd2
	rrca			;4cd3
	dec b			;4cd4
	rrca			;4cd5
	ld a,(de)		;4cd6
	dec bc			;4cd7
	ld c,000h		;4cd8
	ld (bc),a		;4cda
	nop			;4cdb
	nop			;4cdc
	nop			;4cdd
	ld h,d			;4cde
	add hl,hl		;4cdf
	ld h,d			;4ce0
	jr z,l4d44h		;4ce1
l4ce3h:
	nop			;4ce3
	ld l,e			;4ce4
	ld bc,00000h		;4ce5
	inc d			;4ce8
	dec bc			;4ce9
	ld h,d			;4cea
	jr z,l4d4fh		;4ceb
	daa			;4ced
	inc d			;4cee
	dec bc			;4cef
	ld a,(de)		;4cf0
	ex af,af'		;4cf1
	nop			;4cf2
	nop			;4cf3
	nop			;4cf4
	nop			;4cf5
	ld h,d			;4cf6
	daa			;4cf7
	ld h,d			;4cf8
	jr z,l4d5ch		;4cf9
	nop			;4cfb
	ld h,c			;4cfc
	nop			;4cfd
	nop			;4cfe
	nop			;4cff
	nop			;4d00
	nop			;4d01
	rlca			;4d02
	rrca			;4d03
	rlca			;4d04
	rrca			;4d05
	nop			;4d06
	nop			;4d07
	inc d			;4d08
	ex af,af'		;4d09
	ld bc,00000h		;4d0a
	nop			;4d0d
	ld h,d			;4d0e
	jr z,l4d73h		;4d0f
	dec l			;4d11
	nop			;4d12
	nop			;4d13
	ld h,c			;4d14
	nop			;4d15
	nop			;4d16
	nop			;4d17
	nop			;4d18
	nop			;4d19
	ld h,d			;4d1a
	add hl,hl		;4d1b
	ld h,d			;4d1c
	ld l,000h		;4d1d
	nop			;4d1f
	nop			;4d20
	nop			;4d21
	inc b			;4d22
	nop			;4d23
	nop			;4d24
	nop			;4d25
	ld h,d			;4d26
	daa			;4d27
	ld h,d			;4d28
	daa			;4d29
	nop			;4d2a
	nop			;4d2b
	nop			;4d2c
	nop			;4d2d
	nop			;4d2e
	nop			;4d2f
	inc d			;4d30
	dec bc			;4d31
	rlca			;4d32
	rrca			;4d33
	rlca			;4d34
	rrca			;4d35
	inc d			;4d36
	dec bc			;4d37
	nop			;4d38
	nop			;4d39
	inc bc			;4d3a
	nop			;4d3b
	nop			;4d3c
	nop			;4d3d
	nop			;4d3e
	nop			;4d3f
	nop			;4d40
	nop			;4d41
	ld h,c			;4d42
	nop			;4d43
l4d44h:
	nop			;4d44
	nop			;4d45
	nop			;4d46
	nop			;4d47
	inc de			;4d48
	dec bc			;4d49
	ld h,c			;4d4a
	nop			;4d4b
	ld h,c			;4d4c
	nop			;4d4d
	inc de			;4d4e
l4d4fh:
	dec bc			;4d4f
	inc d			;4d50
	ex af,af'		;4d51
	inc bc			;4d52
	nop			;4d53
	nop			;4d54
	nop			;4d55
	nop			;4d56
	nop			;4d57
	nop			;4d58
	nop			;4d59
	ld h,c			;4d5a
	nop			;4d5b
l4d5ch:
	ld h,c			;4d5c
	nop			;4d5d
	nop			;4d5e
	nop			;4d5f
	inc d			;4d60
	dec bc			;4d61
	rlca			;4d62
	rrca			;4d63
	rlca			;4d64
	rrca			;4d65
	inc d			;4d66
	dec bc			;4d67
	inc de			;4d68
	ex af,af'		;4d69
	ld (bc),a		;4d6a
	nop			;4d6b
	nop			;4d6c
	nop			;4d6d
	nop			;4d6e
	nop			;4d6f
	nop			;4d70
	nop			;4d71
	ld h,c			;4d72
l4d73h:
	nop			;4d73
	ld h,c			;4d74
	nop			;4d75
	inc bc			;4d76
	nop			;4d77
	inc d			;4d78
	dec bc			;4d79
	ld h,c			;4d7a
	nop			;4d7b
	ld h,c			;4d7c
	nop			;4d7d
	inc d			;4d7e
	dec bc			;4d7f
	inc d			;4d80
	ex af,af'		;4d81
	inc bc			;4d82
	nop			;4d83
	nop			;4d84
	nop			;4d85
	nop			;4d86
	nop			;4d87
	nop			;4d88
	nop			;4d89
	ld h,c			;4d8a
	nop			;4d8b
	ld h,c			;4d8c
	nop			;4d8d
	nop			;4d8e
	nop			;4d8f
	inc e			;4d90
	dec bc			;4d91
	dec b			;4d92
	rrca			;4d93
	dec b			;4d94
	rrca			;4d95
	inc e			;4d96
	dec bc			;4d97
	inc d			;4d98
	ex af,af'		;4d99
	inc bc			;4d9a
	nop			;4d9b
	nop			;4d9c
	nop			;4d9d
	ld h,c			;4d9e
	nop			;4d9f
	ld h,c			;4da0
	nop			;4da1
	ld h,c			;4da2
	nop			;4da3
	ld h,c			;4da4
	nop			;4da5
	inc bc			;4da6
	nop			;4da7
	nop			;4da8
	nop			;4da9
	dec b			;4daa
	rrca			;4dab
	dec b			;4dac
	rrca			;4dad
	nop			;4dae
	nop			;4daf
	inc e			;4db0
	ex af,af'		;4db1
	ld bc,00000h		;4db2
	nop			;4db5
	ld h,c			;4db6
	nop			;4db7
	ld h,c			;4db8
	nop			;4db9
	nop			;4dba
	nop			;4dbb
	ld h,c			;4dbc
	nop			;4dbd
	nop			;4dbe
	nop			;4dbf
	inc de			;4dc0
	dec bc			;4dc1
	ld de,0110fh		;4dc2
	rrca			;4dc5
	inc de			;4dc6
	dec bc			;4dc7
	nop			;4dc8
	nop			;4dc9
	inc bc			;4dca
	nop			;4dcb
	nop			;4dcc
	nop			;4dcd
	ld h,c			;4dce
	nop			;4dcf
	ld h,c			;4dd0
	nop			;4dd1
	ld h,c			;4dd2
	nop			;4dd3
	nop			;4dd4
	nop			;4dd5
	nop			;4dd6
	nop			;4dd7
	inc d			;4dd8
	dec bc			;4dd9
	rrca			;4dda
	rrca			;4ddb
	rrca			;4ddc
	rrca			;4ddd
	inc d			;4dde
	dec bc			;4ddf
	inc de			;4de0
	ex af,af'		;4de1
	ld (bc),a		;4de2
	nop			;4de3
	nop			;4de4
	nop			;4de5
	nop			;4de6
	nop			;4de7
	nop			;4de8
	nop			;4de9
	ld h,c			;4dea
	nop			;4deb
	ld h,c			;4dec
	nop			;4ded
	inc bc			;4dee
	nop			;4def
	inc de			;4df0
	dec bc			;4df1
	ld h,c			;4df2
	nop			;4df3
	ld h,c			;4df4
	nop			;4df5
	inc de			;4df6
	dec bc			;4df7
	inc d			;4df8
	ex af,af'		;4df9
	ld bc,00000h		;4dfa
	nop			;4dfd
	nop			;4dfe
	nop			;4dff
	nop			;4e00
	nop			;4e01
	ld h,c			;4e02
	nop			;4e03
	ld h,c			;4e04
	nop			;4e05
	nop			;4e06
	nop			;4e07
	inc d			;4e08
	dec bc			;4e09
	rlca			;4e0a
	rrca			;4e0b
	rlca			;4e0c
	rrca			;4e0d
	inc d			;4e0e
	dec bc			;4e0f
	inc de			;4e10
	ex af,af'		;4e11
	inc bc			;4e12
	nop			;4e13
	nop			;4e14
	nop			;4e15
	nop			;4e16
	nop			;4e17
	nop			;4e18
	nop			;4e19
	ld h,c			;4e1a
	nop			;4e1b
	ld h,c			;4e1c
	nop			;4e1d
	inc bc			;4e1e
	nop			;4e1f
	nop			;4e20
	nop			;4e21
	ld h,c			;4e22
	nop			;4e23
	ld h,c			;4e24
	nop			;4e25
	nop			;4e26
	nop			;4e27
	inc d			;4e28
	ex af,af'		;4e29
	inc bc			;4e2a
	nop			;4e2b
	nop			;4e2c
	nop			;4e2d
	nop			;4e2e
	nop			;4e2f
	nop			;4e30
	nop			;4e31
	nop			;4e32
	nop			;4e33
	ld h,c			;4e34
	nop			;4e35
	inc bc			;4e36
	nop			;4e37
	nop			;4e38
	nop			;4e39
	inc de			;4e3a
	rrca			;4e3b
	inc de			;4e3c
	rrca			;4e3d
	nop			;4e3e
	nop			;4e3f
	nop			;4e40
	nop			;4e41
	inc bc			;4e42
	nop			;4e43
	nop			;4e44
	nop			;4e45
	ld h,c			;4e46
	nop			;4e47
	ld h,c			;4e48
	nop			;4e49
	nop			;4e4a
	nop			;4e4b
	nop			;4e4c
	nop			;4e4d
	inc bc			;4e4e
	nop			;4e4f
	ld a,(de)		;4e50
	dec bc			;4e51
	rlca			;4e52
	rrca			;4e53
	rlca			;4e54
	rrca			;4e55
	ld a,(de)		;4e56
	dec bc			;4e57
	nop			;4e58
	nop			;4e59
	ld (bc),a		;4e5a
	nop			;4e5b
	nop			;4e5c
	nop			;4e5d
	nop			;4e5e
	nop			;4e5f
	nop			;4e60
	nop			;4e61
	ld h,c			;4e62
	nop			;4e63
	nop			;4e64
	nop			;4e65
	inc bc			;4e66
	nop			;4e67
	inc d			;4e68
	dec bc			;4e69
	ld h,c			;4e6a
	nop			;4e6b
	ld h,c			;4e6c
	nop			;4e6d
	inc d			;4e6e
	dec bc			;4e6f
	ld a,(de)		;4e70
	ex af,af'		;4e71
	ld (bc),a		;4e72
	nop			;4e73
	nop			;4e74
	nop			;4e75
	nop			;4e76
	nop			;4e77
	nop			;4e78
	nop			;4e79
	ld h,c			;4e7a
	nop			;4e7b
	ld h,c			;4e7c
	nop			;4e7d
	inc bc			;4e7e
	nop			;4e7f
	ld h,d			;4e80
	rra			;4e81
	ex af,af'		;4e82
	rrca			;4e83
	ex af,af'		;4e84
	rrca			;4e85
	ld h,d			;4e86
	ld a,(de)		;4e87
	nop			;4e88
	nop			;4e89
	ld bc,l6a00h		;4e8a
	ld (bc),a		;4e8d
	ld h,d			;4e8e
	ld hl,(02e62h)		;4e8f
	jr nz,l4e97h		;4e92
	nop			;4e94
	nop			;4e95
	nop			;4e96
l4e97h:
	nop			;4e97
	inc d			;4e98
	rrca			;4e99
	ld h,c			;4e9a
	nop			;4e9b
	ld h,c			;4e9c
	nop			;4e9d
	ld h,a			;4e9e
	inc bc			;4e9f
	nop			;4ea0
	nop			;4ea1
	inc bc			;4ea2
	nop			;4ea3
	nop			;4ea4
	nop			;4ea5
	nop			;4ea6
	nop			;4ea7
	nop			;4ea8
	nop			;4ea9
	nop			;4eaa
	nop			;4eab
	nop			;4eac
	nop			;4ead
	inc bc			;4eae
	nop			;4eaf
	dec d			;4eb0
	rrca			;4eb1
	ex af,af'		;4eb2
	rrca			;4eb3
	ex af,af'		;4eb4
	rrca			;4eb5
	ld l,e			;4eb6
	ld bc,00914h		;4eb7
	inc bc			;4eba
	nop			;4ebb
	nop			;4ebc
	nop			;4ebd
	nop			;4ebe
	nop			;4ebf
	nop			;4ec0
	nop			;4ec1
	nop			;4ec2
	nop			;4ec3
	ld h,c			;4ec4
	nop			;4ec5
	nop			;4ec6
	nop			;4ec7
	nop			;4ec8
	nop			;4ec9
	inc d			;4eca
	rrca			;4ecb
	inc d			;4ecc
	rrca			;4ecd
	ld l,e			;4ece
	ld bc,00915h		;4ecf
	ld bc,00000h		;4ed2
	nop			;4ed5
	nop			;4ed6
	nop			;4ed7
	nop			;4ed8
	nop			;4ed9
	nop			;4eda
	nop			;4edb
	ld h,c			;4edc
	nop			;4edd
	nop			;4ede
	nop			;4edf
	dec e			;4ee0
	rrca			;4ee1
	ex af,af'		;4ee2
	rrca			;4ee3
	ex af,af'		;4ee4
	rrca			;4ee5
	ld l,e			;4ee6
	ld bc,00000h		;4ee7
	ld (bc),a		;4eea
	nop			;4eeb
	nop			;4eec
	nop			;4eed
	nop			;4eee
	nop			;4eef
	nop			;4ef0
	nop			;4ef1
	nop			;4ef2
	nop			;4ef3
	nop			;4ef4
	nop			;4ef5
	nop			;4ef6
	nop			;4ef7
	dec d			;4ef8
	rrca			;4ef9
	ld h,c			;4efa
	nop			;4efb
	ld h,c			;4efc
	nop			;4efd
	ld l,e			;4efe
	ld bc,0091dh		;4eff
	ld bc,00000h		;4f02
	nop			;4f05
	ld h,d			;4f06
	add hl,hl		;4f07
	ld h,d			;4f08
	dec l			;4f09
	nop			;4f0a
	nop			;4f0b
	ld h,c			;4f0c
	nop			;4f0d
	nop			;4f0e
	nop			;4f0f
	nop			;4f10
	nop			;4f11
	ex af,af'		;4f12
	rrca			;4f13
	ex af,af'		;4f14
	rrca			;4f15
	nop			;4f16
	nop			;4f17
	dec d			;4f18
	add hl,bc		;4f19
	ld bc,00000h		;4f1a
	nop			;4f1d
	ld h,c			;4f1e
	nop			;4f1f
	ld h,c			;4f20
	nop			;4f21
	nop			;4f22
	nop			;4f23
	ld h,c			;4f24
	nop			;4f25
	nop			;4f26
	nop			;4f27
	nop			;4f28
	nop			;4f29
	inc d			;4f2a
	rrca			;4f2b
	inc d			;4f2c
	rrca			;4f2d
	nop			;4f2e
	nop			;4f2f
	nop			;4f30
	nop			;4f31
	inc bc			;4f32
	nop			;4f33
	nop			;4f34
	nop			;4f35
	nop			;4f36
	nop			;4f37
	nop			;4f38
	nop			;4f39
	nop			;4f3a
	nop			;4f3b
	nop			;4f3c
	nop			;4f3d
	nop			;4f3e
	nop			;4f3f
	inc d			;4f40
	rrca			;4f41
	ex af,af'		;4f42
	rrca			;4f43
	ex af,af'		;4f44
	rrca			;4f45
	nop			;4f46
	nop			;4f47
	nop			;4f48
	nop			;4f49
	ld bc,00000h		;4f4a
	nop			;4f4d
	nop			;4f4e
	nop			;4f4f
	nop			;4f50
	nop			;4f51
	nop			;4f52
	nop			;4f53
	nop			;4f54
	nop			;4f55
	nop			;4f56
	nop			;4f57
	dec d			;4f58
	rrca			;4f59
	inc d			;4f5a
	rrca			;4f5b
	inc d			;4f5c
	rrca			;4f5d
	nop			;4f5e
	nop			;4f5f
	inc d			;4f60
	add hl,bc		;4f61
	inc bc			;4f62
	nop			;4f63
	nop			;4f64
	nop			;4f65
	nop			;4f66
	nop			;4f67
	nop			;4f68
	nop			;4f69
	nop			;4f6a
	nop			;4f6b
	ld h,c			;4f6c
	nop			;4f6d
	inc bc			;4f6e
	nop			;4f6f
	inc d			;4f70
	rrca			;4f71
	ex af,af'		;4f72
	rrca			;4f73
	ex af,af'		;4f74
	rrca			;4f75
	nop			;4f76
	nop			;4f77
	dec d			;4f78
	add hl,bc		;4f79
	inc bc			;4f7a
	nop			;4f7b
	nop			;4f7c
	nop			;4f7d
	ld h,d			;4f7e
	jr z,l4fe3h		;4f7f
	inc l			;4f81
	nop			;4f82
	nop			;4f83
	ld h,c			;4f84
	nop			;4f85
	nop			;4f86
	nop			;4f87
	dec d			;4f88
	rrca			;4f89
	ld h,c			;4f8a
	nop			;4f8b
	ld h,c			;4f8c
	nop			;4f8d
	nop			;4f8e
	nop			;4f8f
	inc d			;4f90
	add hl,bc		;4f91
	ld bc,00000h		;4f92
	nop			;4f95
	nop			;4f96
	nop			;4f97
	nop			;4f98
	nop			;4f99
	dec de			;4f9a
	inc bc			;4f9b
	ld h,c			;4f9c
	nop			;4f9d
	nop			;4f9e
	nop			;4f9f
	nop			;4fa0
	nop			;4fa1
	ld b,00fh		;4fa2
	ld b,00fh		;4fa4
	ld h,a			;4fa6
	inc b			;4fa7
	dec d			;4fa8
	add hl,bc		;4fa9
	ld (bc),a		;4faa
	nop			;4fab
	nop			;4fac
	nop			;4fad
	nop			;4fae
	nop			;4faf
	nop			;4fb0
	nop			;4fb1
	ld l,e			;4fb2
	ld bc,00061h		;4fb3
	nop			;4fb6
	nop			;4fb7
	nop			;4fb8
	nop			;4fb9
	ld h,c			;4fba
	nop			;4fbb
	ld h,c			;4fbc
	nop			;4fbd
	nop			;4fbe
	nop			;4fbf
	nop			;4fc0
	nop			;4fc1
	ld bc,00000h		;4fc2
	nop			;4fc5
	nop			;4fc6
	nop			;4fc7
	nop			;4fc8
	nop			;4fc9
	ld l,e			;4fca
	ld bc,00000h		;4fcb
	nop			;4fce
	nop			;4fcf
	dec de			;4fd0
	rrca			;4fd1
	ld b,00fh		;4fd2
	ld b,00fh		;4fd4
	nop			;4fd6
	nop			;4fd7
	nop			;4fd8
	nop			;4fd9
	ld bc,00000h		;4fda
	nop			;4fdd
	ld h,d			;4fde
	add hl,hl		;4fdf
	ld h,d			;4fe0
	inc l			;4fe1
	ld l,e			;4fe2
l4fe3h:
	ld bc,00000h		;4fe3
	nop			;4fe6
	nop			;4fe7
	dec d			;4fe8
	rrca			;4fe9
	ld h,d			;4fea
	jr z,l504fh		;4feb
	dec hl			;4fed
	nop			;4fee
	nop			;4fef
	dec de			;4ff0
	add hl,bc		;4ff1
	inc bc			;4ff2
	nop			;4ff3
	nop			;4ff4
	nop			;4ff5
	ld h,d			;4ff6
	daa			;4ff7
	ld h,d			;4ff8
	ld hl,(0016bh)		;4ff9
	ld h,c			;4ffc
	nop			;4ffd
	nop			;4ffe
	nop			;4fff
	ccf			;5000
	nop			;5001
	ex af,af'		;5002
	rrca			;5003
	ex af,af'		;5004
	rrca			;5005
	ld e,003h		;5006
	dec d			;5008
	add hl,bc		;5009
	ld bc,00000h		;500a
	nop			;500d
	ld h,d			;500e
	jr z,l5073h		;500f
	add hl,hl		;5011
	ld h,a			;5012
	ld b,061h		;5013
	nop			;5015
	nop			;5016
	nop			;5017
	nop			;5018
	nop			;5019
	ld h,d			;501a
	add hl,hl		;501b
	ld h,d			;501c
	jr z,l508ah		;501d
	ld bc,00000h		;501f
	inc bc			;5022
	nop			;5023
	nop			;5024
	nop			;5025
	ld h,d			;5026
	daa			;5027
	ld h,d			;5028
	daa			;5029
	nop			;502a
	nop			;502b
	nop			;502c
	nop			;502d
	inc bc			;502e
	nop			;502f
	dec d			;5030
	rrca			;5031
	ex af,af'		;5032
	rrca			;5033
	ex af,af'		;5034
	rrca			;5035
	ld l,e			;5036
	ld bc,00000h		;5037
	inc bc			;503a
	nop			;503b
	nop			;503c
	nop			;503d
	nop			;503e
	nop			;503f
	nop			;5040
	nop			;5041
	nop			;5042
	nop			;5043
	nop			;5044
	nop			;5045
	nop			;5046
	nop			;5047
	inc d			;5048
	rrca			;5049
	ld h,c			;504a
	nop			;504b
	ld h,c			;504c
	nop			;504d
	ld l,e			;504e
l504fh:
	ld bc,00915h		;504f
	ld bc,00000h		;5052
	nop			;5055
	nop			;5056
	nop			;5057
	nop			;5058
	nop			;5059
	nop			;505a
	nop			;505b
	ld h,c			;505c
	nop			;505d
	nop			;505e
	nop			;505f
	dec d			;5060
	rrca			;5061
	ex af,af'		;5062
	rrca			;5063
	ex af,af'		;5064
	rrca			;5065
l5066h:
	ld l,e			;5066
	ld bc,00914h		;5067
	ld (bc),a		;506a
	nop			;506b
	nop			;506c
	nop			;506d
	nop			;506e
	nop			;506f
	nop			;5070
	nop			;5071
	nop			;5072
l5073h:
	nop			;5073
	ld h,c			;5074
	nop			;5075
	nop			;5076
	nop			;5077
	dec d			;5078
	rrca			;5079
	ld h,c			;507a
	nop			;507b
	ld h,c			;507c
	nop			;507d
	nop			;507e
	nop			;507f
	dec d			;5080
	add hl,bc		;5081
	ld bc,00000h		;5082
	nop			;5085
	nop			;5086
	nop			;5087
	nop			;5088
	nop			;5089
l508ah:
	nop			;508a
	nop			;508b
	ld h,c			;508c
	nop			;508d
	nop			;508e
	nop			;508f
	dec e			;5090
	rrca			;5091
	ld b,00fh		;5092
	ld b,00fh		;5094
	nop			;5096
	nop			;5097
	dec d			;5098
	add hl,bc		;5099
	ld bc,00000h		;509a
	nop			;509d
	ld h,c			;509e
	nop			;509f
	ld h,c			;50a0
	nop			;50a1
	nop			;50a2
	nop			;50a3
	ld h,c			;50a4
	nop			;50a5
	nop			;50a6
	nop			;50a7
	nop			;50a8
	nop			;50a9
	ld b,00fh		;50aa
	ld b,00fh		;50ac
	nop			;50ae
	nop			;50af
	dec e			;50b0
	add hl,bc		;50b1
	inc bc			;50b2
	nop			;50b3
	nop			;50b4
	nop			;50b5
	ld h,c			;50b6
	nop			;50b7
	ld h,c			;50b8
	nop			;50b9
	nop			;50ba
	nop			;50bb
	ld h,c			;50bc
	nop			;50bd
	nop			;50be
	nop			;50bf
	inc d			;50c0
	rrca			;50c1
	ld (de),a		;50c2
	rrca			;50c3
	ld (de),a		;50c4
	rrca			;50c5
	nop			;50c6
	nop			;50c7
	nop			;50c8
	nop			;50c9
	inc bc			;50ca
	nop			;50cb
	nop			;50cc
	nop			;50cd
	ld h,c			;50ce
	nop			;50cf
	ld h,c			;50d0
	nop			;50d1
	nop			;50d2
	nop			;50d3
	nop			;50d4
	nop			;50d5
	nop			;50d6
	nop			;50d7
	dec d			;50d8
	rrca			;50d9
	djnz l50ebh		;50da
	djnz l50edh		;50dc
	nop			;50de
	nop			;50df
	inc d			;50e0
	add hl,bc		;50e1
	ld (bc),a		;50e2
	nop			;50e3
	nop			;50e4
	nop			;50e5
	nop			;50e6
	nop			;50e7
	nop			;50e8
	nop			;50e9
	nop			;50ea
l50ebh:
	nop			;50eb
	ld h,c			;50ec
l50edh:
	nop			;50ed
	inc bc			;50ee
	nop			;50ef
	inc d			;50f0
	rrca			;50f1
	ld h,c			;50f2
	nop			;50f3
	ld h,c			;50f4
	nop			;50f5
	nop			;50f6
	nop			;50f7
	dec d			;50f8
	add hl,bc		;50f9
	ld bc,00000h		;50fa
	nop			;50fd
	nop			;50fe
	nop			;50ff
	nop			;5100
	nop			;5101
	nop			;5102
	nop			;5103
	ld h,c			;5104
	nop			;5105
	nop			;5106
	nop			;5107
	dec d			;5108
	rrca			;5109
	ex af,af'		;510a
	rrca			;510b
	ex af,af'		;510c
	rrca			;510d
	nop			;510e
	nop			;510f
	inc d			;5110
	add hl,bc		;5111
	inc bc			;5112
	nop			;5113
	nop			;5114
	nop			;5115
	nop			;5116
	nop			;5117
	nop			;5118
	nop			;5119
	nop			;511a
	nop			;511b
	ld h,c			;511c
	nop			;511d
	nop			;511e
	nop			;511f
	nop			;5120
	nop			;5121
	ld h,c			;5122
	nop			;5123
	ld h,c			;5124
	nop			;5125
	nop			;5126
	nop			;5127
	dec d			;5128
	add hl,bc		;5129
	ld (bc),a		;512a
	nop			;512b
	nop			;512c
	nop			;512d
	nop			;512e
	nop			;512f
	nop			;5130
	nop			;5131
	nop			;5132
	nop			;5133
	ld h,c			;5134
	nop			;5135
	inc bc			;5136
	nop			;5137
	nop			;5138
	nop			;5139
	inc d			;513a
	rrca			;513b
	inc d			;513c
	rrca			;513d
	nop			;513e
	nop			;513f
	nop			;5140
	nop			;5141
	inc bc			;5142
	nop			;5143
	nop			;5144
	nop			;5145
	ld h,c			;5146
	nop			;5147
	ld h,c			;5148
	nop			;5149
	nop			;514a
	nop			;514b
	nop			;514c
	nop			;514d
	inc bc			;514e
	nop			;514f
	dec de			;5150
	rrca			;5151
	ex af,af'		;5152
	rrca			;5153
	ex af,af'		;5154
	rrca			;5155
	nop			;5156
	nop			;5157
	nop			;5158
	nop			;5159
	ld (bc),a		;515a
	nop			;515b
	nop			;515c
	nop			;515d
	nop			;515e
	nop			;515f
	nop			;5160
	nop			;5161
	nop			;5162
	nop			;5163
	nop			;5164
	nop			;5165
	inc bc			;5166
	nop			;5167
	dec d			;5168
	rrca			;5169
	ld h,c			;516a
	nop			;516b
	ld h,c			;516c
	nop			;516d
	nop			;516e
	nop			;516f
	dec de			;5170
	add hl,bc		;5171
	ld (bc),a		;5172
	nop			;5173
	nop			;5174
	nop			;5175
	nop			;5176
	nop			;5177
	nop			;5178
	nop			;5179
	nop			;517a
	nop			;517b
	ld h,c			;517c
	nop			;517d
	inc bc			;517e
	nop			;517f
	ld h,d			;5180
	rra			;5181
	ex af,af'		;5182
	rrca			;5183
	ex af,af'		;5184
	rrca			;5185
	ld h,d			;5186
	ld a,(de)		;5187
	inc e			;5188
	inc c			;5189
	ld bc,00000h		;518a
	nop			;518d
	ld h,d			;518e
	ld hl,(02862h)		;518f
	jr nz,l5194h		;5192
l5194h:
	nop			;5194
	nop			;5195
	nop			;5196
	nop			;5197
	inc d			;5198
	rrca			;5199
	ld h,c			;519a
	nop			;519b
	ld h,c			;519c
	nop			;519d
	ld h,a			;519e
	inc bc			;519f
	dec de			;51a0
	inc c			;51a1
	inc bc			;51a2
	nop			;51a3
	nop			;51a4
	nop			;51a5
	nop			;51a6
	nop			;51a7
	nop			;51a8
	nop			;51a9
	nop			;51aa
	nop			;51ab
	nop			;51ac
	nop			;51ad
	inc bc			;51ae
	nop			;51af
	dec d			;51b0
	rrca			;51b1
	ex af,af'		;51b2
	rrca			;51b3
	ex af,af'		;51b4
	rrca			;51b5
	ld l,e			;51b6
	ld bc,00c19h		;51b7
	inc bc			;51ba
	nop			;51bb
	nop			;51bc
	nop			;51bd
	nop			;51be
	nop			;51bf
	nop			;51c0
	nop			;51c1
	nop			;51c2
	nop			;51c3
	nop			;51c4
	nop			;51c5
	nop			;51c6
	nop			;51c7
	nop			;51c8
	nop			;51c9
	inc d			;51ca
	rrca			;51cb
	inc d			;51cc
	rrca			;51cd
	ld l,e			;51ce
	ld bc,00c1bh		;51cf
	ld bc,00000h		;51d2
	nop			;51d5
	nop			;51d6
	nop			;51d7
	nop			;51d8
	nop			;51d9
	nop			;51da
	nop			;51db
	nop			;51dc
	nop			;51dd
	nop			;51de
	nop			;51df
	dec e			;51e0
	rrca			;51e1
	ex af,af'		;51e2
	rrca			;51e3
	ex af,af'		;51e4
	rrca			;51e5
	ld l,e			;51e6
	ld bc,00c1ch		;51e7
	ld (bc),a		;51ea
	nop			;51eb
	nop			;51ec
	nop			;51ed
	nop			;51ee
	nop			;51ef
	nop			;51f0
	nop			;51f1
	nop			;51f2
	nop			;51f3
	ld h,a			;51f4
	dec b			;51f5
	nop			;51f6
	nop			;51f7
	dec d			;51f8
	rrca			;51f9
	ld h,c			;51fa
	nop			;51fb
	ld h,c			;51fc
	nop			;51fd
	ld l,e			;51fe
	ld bc,0016bh		;51ff
	ld bc,00000h		;5202
	nop			;5205
	ld h,d			;5206
	add hl,hl		;5207
	ld h,d			;5208
	daa			;5209
	nop			;520a
	nop			;520b
	nop			;520c
	nop			;520d
	nop			;520e
	nop			;520f
	nop			;5210
	nop			;5211
	ex af,af'		;5212
	rrca			;5213
	ex af,af'		;5214
	rrca			;5215
	nop			;5216
	nop			;5217
	ld l,e			;5218
	ld bc,00001h		;5219
	nop			;521c
	nop			;521d
	ld h,c			;521e
	nop			;521f
	ld h,c			;5220
	nop			;5221
	nop			;5222
	nop			;5223
	nop			;5224
	nop			;5225
	nop			;5226
	nop			;5227
	nop			;5228
	nop			;5229
	inc d			;522a
	rrca			;522b
	inc d			;522c
	rrca			;522d
	nop			;522e
	nop			;522f
	ld l,e			;5230
	ld bc,00003h		;5231
	nop			;5234
	nop			;5235
	nop			;5236
	nop			;5237
	nop			;5238
	nop			;5239
	nop			;523a
	nop			;523b
	nop			;523c
	nop			;523d
	nop			;523e
	nop			;523f
	inc d			;5240
	rrca			;5241
	ex af,af'		;5242
	rrca			;5243
	ex af,af'		;5244
	rrca			;5245
	nop			;5246
	nop			;5247
	nop			;5248
	nop			;5249
	inc bc			;524a
	nop			;524b
	nop			;524c
	nop			;524d
	nop			;524e
	nop			;524f
	nop			;5250
	nop			;5251
	nop			;5252
	nop			;5253
	nop			;5254
	nop			;5255
	nop			;5256
	nop			;5257
	dec d			;5258
	rrca			;5259
	inc d			;525a
	rrca			;525b
	inc d			;525c
	rrca			;525d
	nop			;525e
	nop			;525f
	nop			;5260
	nop			;5261
	inc bc			;5262
	nop			;5263
	nop			;5264
	nop			;5265
	nop			;5266
	nop			;5267
	nop			;5268
	nop			;5269
	nop			;526a
	nop			;526b
	nop			;526c
	nop			;526d
	inc bc			;526e
	nop			;526f
	inc d			;5270
	rrca			;5271
	ex af,af'		;5272
	rrca			;5273
	ex af,af'		;5274
	rrca			;5275
	nop			;5276
	nop			;5277
	ld h,c			;5278
	nop			;5279
	inc bc			;527a
	nop			;527b
	nop			;527c
	nop			;527d
	ld h,d			;527e
	jr z,l52e3h		;527f
	jr z,l5283h		;5281
l5283h:
	nop			;5283
	rra			;5284
	inc c			;5285
	nop			;5286
	nop			;5287
	dec d			;5288
	rrca			;5289
	ld h,c			;528a
	nop			;528b
	ld h,c			;528c
	nop			;528d
	nop			;528e
	nop			;528f
	ld h,c			;5290
	nop			;5291
	inc bc			;5292
	nop			;5293
	nop			;5294
	nop			;5295
	nop			;5296
	nop			;5297
	nop			;5298
	nop			;5299
	dec de			;529a
	nop			;529b
	jr nz,l52a8h		;529c
	nop			;529e
	nop			;529f
	nop			;52a0
	nop			;52a1
	ld b,00fh		;52a2
	ld b,00fh		;52a4
	ld l,b			;52a6
	rlca			;52a7
l52a8h:
	ld l,b			;52a8
	rlca			;52a9
	ld (bc),a		;52aa
	nop			;52ab
	nop			;52ac
	nop			;52ad
	nop			;52ae
	nop			;52af
	nop			;52b0
	nop			;52b1
	ld l,e			;52b2
	ld bc,00000h		;52b3
	nop			;52b6
	nop			;52b7
	nop			;52b8
	nop			;52b9
	ld h,c			;52ba
	nop			;52bb
	ld h,c			;52bc
	nop			;52bd
	nop			;52be
	nop			;52bf
	nop			;52c0
	nop			;52c1
	inc bc			;52c2
	nop			;52c3
	nop			;52c4
	nop			;52c5
	nop			;52c6
	nop			;52c7
	nop			;52c8
	nop			;52c9
	ld l,e			;52ca
	ld bc,00000h		;52cb
	nop			;52ce
	nop			;52cf
	dec de			;52d0
	rrca			;52d1
	ld b,00fh		;52d2
	ld b,00fh		;52d4
	nop			;52d6
	nop			;52d7
	nop			;52d8
	nop			;52d9
	ld (bc),a		;52da
	nop			;52db
	nop			;52dc
	nop			;52dd
	ld h,d			;52de
	add hl,hl		;52df
	ld h,d			;52e0
	add hl,hl		;52e1
	ld l,e			;52e2
l52e3h:
	ld bc,00000h		;52e3
	nop			;52e6
	nop			;52e7
	dec d			;52e8
	rrca			;52e9
	ld h,d			;52ea
	jr z,l534fh		;52eb
	ld hl,(00000h)		;52ed
	nop			;52f0
	nop			;52f1
	ld (bc),a		;52f2
	nop			;52f3
	nop			;52f4
	nop			;52f5
	ld h,d			;52f6
	daa			;52f7
	ld h,d			;52f8
	ld hl,(0016bh)		;52f9
	nop			;52fc
	nop			;52fd
	inc bc			;52fe
	nop			;52ff
	nop			;5300
	nop			;5301
	ex af,af'		;5302
	rrca			;5303
	ex af,af'		;5304
	rrca			;5305
	ld e,000h		;5306
	ld e,00ch		;5308
	ld bc,00000h		;530a
	nop			;530d
	ld h,d			;530e
	jr z,l5373h		;530f
	ld l,067h		;5311
	ld b,000h		;5313
	nop			;5315
	nop			;5316
	nop			;5317
	nop			;5318
	nop			;5319
	ld h,d			;531a
	add hl,hl		;531b
	ld h,d			;531c
	cpl			;531d
	ld l,e			;531e
	ld bc,00c1ch		;531f
	inc bc			;5322
	nop			;5323
	nop			;5324
	nop			;5325
	ld h,d			;5326
	daa			;5327
	ld h,d			;5328
	jr nc,l532bh		;5329
l532bh:
	nop			;532b
	nop			;532c
	nop			;532d
	inc bc			;532e
	nop			;532f
	dec d			;5330
	rrca			;5331
	ex af,af'		;5332
	rrca			;5333
	ex af,af'		;5334
	rrca			;5335
	ld l,e			;5336
	ld bc,00c1bh		;5337
	inc bc			;533a
	nop			;533b
	nop			;533c
	nop			;533d
	nop			;533e
	nop			;533f
	nop			;5340
	nop			;5341
	nop			;5342
	nop			;5343
	nop			;5344
	nop			;5345
	nop			;5346
	nop			;5347
	inc d			;5348
	rrca			;5349
	ld h,c			;534a
	nop			;534b
	ld h,c			;534c
	nop			;534d
	ld l,e			;534e
l534fh:
	ld bc,00c1ch		;534f
	ld bc,00000h		;5352
	nop			;5355
	nop			;5356
	nop			;5357
	nop			;5358
	nop			;5359
	nop			;535a
	nop			;535b
	nop			;535c
	nop			;535d
	nop			;535e
	nop			;535f
	dec d			;5360
	rrca			;5361
	ex af,af'		;5362
	rrca			;5363
	ex af,af'		;5364
	rrca			;5365
	ld l,e			;5366
	ld bc,00c1eh		;5367
	ld (bc),a		;536a
	nop			;536b
	nop			;536c
	nop			;536d
	nop			;536e
	nop			;536f
	nop			;5370
	nop			;5371
	nop			;5372
l5373h:
	nop			;5373
	ld h,a			;5374
	dec b			;5375
	nop			;5376
	nop			;5377
	dec d			;5378
	rrca			;5379
	ld h,c			;537a
	nop			;537b
	ld h,c			;537c
	nop			;537d
	nop			;537e
	nop			;537f
	ld l,e			;5380
	ld bc,00001h		;5381
	nop			;5384
	nop			;5385
	nop			;5386
	nop			;5387
	nop			;5388
	nop			;5389
	nop			;538a
	nop			;538b
	nop			;538c
	nop			;538d
	nop			;538e
	nop			;538f
	dec e			;5390
	rrca			;5391
	ld b,00fh		;5392
	ld b,00fh		;5394
	nop			;5396
	nop			;5397
	ld l,e			;5398
	ld bc,00001h		;5399
	nop			;539c
	nop			;539d
	ld h,c			;539e
	nop			;539f
	ld h,c			;53a0
	nop			;53a1
	nop			;53a2
	nop			;53a3
	nop			;53a4
	nop			;53a5
	nop			;53a6
	nop			;53a7
	nop			;53a8
	nop			;53a9
	ld b,00fh		;53aa
	ld b,00fh		;53ac
	nop			;53ae
	nop			;53af
	ld l,e			;53b0
	ld bc,00003h		;53b1
	nop			;53b4
	nop			;53b5
	ld h,c			;53b6
	nop			;53b7
	ld h,c			;53b8
	nop			;53b9
	nop			;53ba
	nop			;53bb
	nop			;53bc
	nop			;53bd
	nop			;53be
	nop			;53bf
	inc d			;53c0
	rrca			;53c1
	ld (de),a		;53c2
	rrca			;53c3
	ld (de),a		;53c4
	rrca			;53c5
	nop			;53c6
	nop			;53c7
	nop			;53c8
	nop			;53c9
	inc bc			;53ca
	nop			;53cb
	nop			;53cc
	nop			;53cd
	ld h,c			;53ce
	nop			;53cf
	ld h,c			;53d0
	nop			;53d1
	nop			;53d2
	nop			;53d3
	nop			;53d4
	nop			;53d5
	nop			;53d6
	nop			;53d7
	dec d			;53d8
	rrca			;53d9
	djnz l53ebh		;53da
	djnz l53edh		;53dc
	nop			;53de
	nop			;53df
	inc d			;53e0
	inc c			;53e1
	ld (bc),a		;53e2
	nop			;53e3
	nop			;53e4
	nop			;53e5
	nop			;53e6
	nop			;53e7
	nop			;53e8
	nop			;53e9
	nop			;53ea
l53ebh:
	nop			;53eb
	ld h,c			;53ec
l53edh:
	nop			;53ed
	inc bc			;53ee
	nop			;53ef
	inc d			;53f0
	rrca			;53f1
	ld h,c			;53f2
	nop			;53f3
	ld h,c			;53f4
	nop			;53f5
	nop			;53f6
	nop			;53f7
	dec d			;53f8
	inc c			;53f9
	ld bc,00000h		;53fa
	nop			;53fd
	nop			;53fe
	nop			;53ff
	nop			;5400
	nop			;5401
	nop			;5402
	nop			;5403
	ld h,c			;5404
	nop			;5405
	nop			;5406
	nop			;5407
	dec d			;5408
	rrca			;5409
	ex af,af'		;540a
	rrca			;540b
	ex af,af'		;540c
	rrca			;540d
	nop			;540e
	nop			;540f
	inc d			;5410
	inc c			;5411
	inc bc			;5412
	nop			;5413
	nop			;5414
	nop			;5415
	nop			;5416
	nop			;5417
	nop			;5418
	nop			;5419
	dec de			;541a
	inc bc			;541b
	ld h,c			;541c
	nop			;541d
	inc bc			;541e
	nop			;541f
	nop			;5420
	nop			;5421
	ld h,c			;5422
	nop			;5423
	ld h,c			;5424
	nop			;5425
	ld h,a			;5426
	inc b			;5427
	dec d			;5428
	inc c			;5429
	ld (bc),a		;542a
	nop			;542b
	nop			;542c
	nop			;542d
	nop			;542e
	nop			;542f
	nop			;5430
	nop			;5431
	ld l,e			;5432
	ld bc,00061h		;5433
	inc bc			;5436
	nop			;5437
	nop			;5438
	nop			;5439
	inc d			;543a
	rrca			;543b
	inc d			;543c
	rrca			;543d
	nop			;543e
	nop			;543f
	nop			;5440
	nop			;5441
	inc bc			;5442
	nop			;5443
	nop			;5444
	nop			;5445
	ld h,c			;5446
	nop			;5447
	ld h,c			;5448
	nop			;5449
	ld l,e			;544a
	ld bc,00000h		;544b
	inc bc			;544e
	nop			;544f
	dec de			;5450
	rrca			;5451
	ex af,af'		;5452
	rrca			;5453
	ex af,af'		;5454
	rrca			;5455
	nop			;5456
	nop			;5457
	nop			;5458
	nop			;5459
	ld (bc),a		;545a
	nop			;545b
	nop			;545c
	nop			;545d
	nop			;545e
	nop			;545f
	nop			;5460
	nop			;5461
	ld l,e			;5462
	ld bc,00000h		;5463
	inc bc			;5466
	nop			;5467
	dec d			;5468
	rrca			;5469
	ld h,c			;546a
	nop			;546b
	ld h,c			;546c
	nop			;546d
	nop			;546e
	nop			;546f
	dec de			;5470
	inc c			;5471
	ld (bc),a		;5472
	nop			;5473
	nop			;5474
	nop			;5475
	nop			;5476
	nop			;5477
	nop			;5478
	nop			;5479
	ld l,e			;547a
	ld bc,00061h		;547b
	inc bc			;547e
	nop			;547f
	inc d			;5480
	dec bc			;5481
	ld (de),a		;5482
	rrca			;5483
	ld (de),a		;5484
	rrca			;5485
	nop			;5486
	nop			;5487
	nop			;5488
	nop			;5489
	inc bc			;548a
	nop			;548b
	nop			;548c
	nop			;548d
	ld h,c			;548e
	nop			;548f
	ld h,c			;5490
	nop			;5491
	nop			;5492
	nop			;5493
	nop			;5494
	nop			;5495
	nop			;5496
	nop			;5497
	dec d			;5498
	dec bc			;5499
	ld b,00fh		;549a
	ld b,00fh		;549c
	nop			;549e
	nop			;549f
	inc d			;54a0
	ex af,af'		;54a1
	ld (bc),a		;54a2
	nop			;54a3
	nop			;54a4
	nop			;54a5
	ld h,c			;54a6
	nop			;54a7
	ld h,c			;54a8
	nop			;54a9
	nop			;54aa
	nop			;54ab
	ld h,c			;54ac
	nop			;54ad
	inc bc			;54ae
	nop			;54af
	inc d			;54b0
	dec bc			;54b1
	ld (de),a		;54b2
	rrca			;54b3
	ld (de),a		;54b4
	rrca			;54b5
	nop			;54b6
	nop			;54b7
	dec d			;54b8
	ex af,af'		;54b9
	ld bc,l6200h		;54ba
	rrca			;54bd
	ld l,b			;54be
	ret z			;54bf
	ld l,b			;54c0
	ret z			;54c1
	ld h,d			;54c2
	rrca			;54c3
	nop			;54c4
	nop			;54c5
	nop			;54c6
	nop			;54c7
	add hl,bc		;54c8
	ex af,af'		;54c9
	ld b,00fh		;54ca
	ld (de),a		;54cc
	rrca			;54cd
	add hl,bc		;54ce
	ex af,af'		;54cf
	add hl,bc		;54d0
	ex af,af'		;54d1
	inc bc			;54d2
	nop			;54d3
	ld h,h			;54d4
	ld a,(02264h)		;54d5
	ld h,h			;54d8
	ld (03a64h),hl		;54d9
	ld h,h			;54dc
	ld a,(00003h)		;54dd
	inc d			;54e0
	rrca			;54e1
	nop			;54e2
	nop			;54e3
	nop			;54e4
	nop			;54e5
	inc d			;54e6
	rrca			;54e7
	inc d			;54e8
	rrca			;54e9
	ld (bc),a		;54ea
	nop			;54eb
	ld h,c			;54ec
	nop			;54ed
	nop			;54ee
	nop			;54ef
	nop			;54f0
	nop			;54f1
	ld h,c			;54f2
	nop			;54f3
	ld h,c			;54f4
	nop			;54f5
	nop			;54f6
	nop			;54f7
	ld hl,l6c0fh		;54f8
	dec b			;54fb
	ld l,h			;54fc
	dec b			;54fd
	dec d			;54fe
	ex af,af'		;54ff
	add hl,bc		;5500
	ex af,af'		;5501
	ld (bc),a		;5502
	nop			;5503
	nop			;5504
	nop			;5505
	nop			;5506
	nop			;5507
	nop			;5508
	nop			;5509
	nop			;550a
	nop			;550b
	nop			;550c
	nop			;550d
	inc b			;550e
	nop			;550f
	ld h,c			;5510
	nop			;5511
	nop			;5512
	nop			;5513
	nop			;5514
	nop			;5515
	ld h,c			;5516
	nop			;5517
	ld h,c			;5518
	nop			;5519
	nop			;551a
	nop			;551b
	nop			;551c
	nop			;551d
	nop			;551e
	nop			;551f
	nop			;5520
	nop			;5521
	nop			;5522
	nop			;5523
	nop			;5524
	nop			;5525
	nop			;5526
	nop			;5527
	inc d			;5528
	rrca			;5529
	ld l,h			;552a
	ld (bc),a		;552b
	ld l,h			;552c
	ld (bc),a		;552d
	ld h,c			;552e
	nop			;552f
	inc d			;5530
	rrca			;5531
	ld (bc),a		;5532
	nop			;5533
	ld h,d			;5534
	rrca			;5535
	nop			;5536
	nop			;5537
	nop			;5538
	nop			;5539
	ld h,d			;553a
	rrca			;553b
	ld h,c			;553c
	nop			;553d
	nop			;553e
	nop			;553f
	inc d			;5540
	dec bc			;5541
	ld (de),a		;5542
	rrca			;5543
	ld (de),a		;5544
	rrca			;5545
	nop			;5546
	nop			;5547
	nop			;5548
	nop			;5549
	inc bc			;554a
	nop			;554b
	nop			;554c
	nop			;554d
	ld h,c			;554e
	nop			;554f
	ld h,c			;5550
	nop			;5551
	nop			;5552
	nop			;5553
	nop			;5554
	nop			;5555
	nop			;5556
	nop			;5557
	dec d			;5558
	dec bc			;5559
	ld b,00fh		;555a
	ld b,00fh		;555c
	nop			;555e
	nop			;555f
	inc d			;5560
	ex af,af'		;5561
	ld (bc),a		;5562
	nop			;5563
	nop			;5564
	nop			;5565
	ld h,c			;5566
	nop			;5567
	ld h,c			;5568
	nop			;5569
	nop			;556a
	nop			;556b
	ld h,c			;556c
	nop			;556d
	inc bc			;556e
	nop			;556f
	inc d			;5570
	dec bc			;5571
	ld (de),a		;5572
	rrca			;5573
	ld (de),a		;5574
	rrca			;5575
	nop			;5576
	nop			;5577
	dec d			;5578
	ex af,af'		;5579
	ld bc,l6200h		;557a
	rrca			;557d
	ld l,b			;557e
	ret z			;557f
	ld l,b			;5580
	ret z			;5581
	ld h,d			;5582
	rrca			;5583
	nop			;5584
	nop			;5585
	nop			;5586
	nop			;5587
	add hl,bc		;5588
	ex af,af'		;5589
	ld b,00fh		;558a
	ld (de),a		;558c
	rrca			;558d
	add hl,bc		;558e
	ex af,af'		;558f
	add hl,bc		;5590
	ex af,af'		;5591
	inc bc			;5592
	nop			;5593
	ld h,h			;5594
	ld a,(02264h)		;5595
	ld h,h			;5598
	ld (03a64h),hl		;5599
	ld h,h			;559c
	ld a,(00003h)		;559d
	inc d			;55a0
	rrca			;55a1
	nop			;55a2
	nop			;55a3
	nop			;55a4
	nop			;55a5
	inc d			;55a6
	rrca			;55a7
	inc d			;55a8
	rrca			;55a9
	ld (bc),a		;55aa
	nop			;55ab
	ld h,c			;55ac
	nop			;55ad
	nop			;55ae
	nop			;55af
	nop			;55b0
	nop			;55b1
	ld h,c			;55b2
	nop			;55b3
	ld h,c			;55b4
	nop			;55b5
	nop			;55b6
	nop			;55b7
	ld hl,l6c0fh		;55b8
	dec b			;55bb
	ld l,h			;55bc
	dec b			;55bd
	dec d			;55be
	ex af,af'		;55bf
	add hl,bc		;55c0
	ex af,af'		;55c1
	ld (bc),a		;55c2
	nop			;55c3
	nop			;55c4
	nop			;55c5
	nop			;55c6
	nop			;55c7
	nop			;55c8
	nop			;55c9
	nop			;55ca
	nop			;55cb
	nop			;55cc
	nop			;55cd
	inc b			;55ce
	nop			;55cf
	ld h,c			;55d0
	nop			;55d1
	nop			;55d2
	nop			;55d3
	nop			;55d4
	nop			;55d5
	ld h,c			;55d6
	nop			;55d7
	ld h,c			;55d8
	nop			;55d9
	nop			;55da
	nop			;55db
	nop			;55dc
	nop			;55dd
	nop			;55de
	nop			;55df
	nop			;55e0
	nop			;55e1
	nop			;55e2
	nop			;55e3
	nop			;55e4
	nop			;55e5
	nop			;55e6
	nop			;55e7
	inc d			;55e8
	rrca			;55e9
	ld l,h			;55ea
	ld (bc),a		;55eb
	ld l,h			;55ec
	ld (bc),a		;55ed
	ld h,c			;55ee
	nop			;55ef
	inc d			;55f0
	rrca			;55f1
	ld (bc),a		;55f2
	nop			;55f3
	ld h,d			;55f4
	rrca			;55f5
	nop			;55f6
	nop			;55f7
	nop			;55f8
	nop			;55f9
	ld h,d			;55fa
	rrca			;55fb
	ld h,c			;55fc
	nop			;55fd
	nop			;55fe
	nop			;55ff
	nop			;5600
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
	jr nz,l6043h		;6010
	jr nz,l6041h		;6012
	jr nz,l606ah		;6014
	ld l,b			;6016
	ld h,l			;6017
	jr nz,l605dh		;6018
	ld h,c			;601a
	halt			;601b
	ld h,l			;601c
	jr nz,l603fh		;601d
	jr nz,l6041h		;601f
	jr nz,l6043h		;6021
	jr nz,l6045h		;6023
	jr nz,l6047h		;6025
	jr nz,l6049h		;6027
	jr nz,l604bh		;6029
	jr nz,l604dh		;602b
	jr nz,l604fh		;602d
	jr nz,l6051h		;602f
	jr nz,$+34		;6031
	jr nz,l6055h		;6033
	jr nz,l6057h		;6035
l6037h:
	jr nz,l6059h		;6037
	jr nz,l605bh		;6039
	jr nz,l605dh		;603b
	jr nz,l605fh		;603d
l603fh:
	jr nz,l6061h		;603f
l6041h:
	jr nz,l6063h		;6041
l6043h:
	ld c,l			;6043
	ld d,l			;6044
l6045h:
	ld d,e			;6045
	ld c,c			;6046
l6047h:
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
	ccf			;604e
l604fh:
	nop			;604f
	nop			;6050
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
	add hl,bc		;605a
l605bh:
	ld a,(bc)		;605b
	dec bc			;605c
l605dh:
	inc c			;605d
	dec c			;605e
l605fh:
	ld c,00fh		;605f
l6061h:
	djnz $+19		;6061
l6063h:
	ld (de),a		;6063
	inc de			;6064
	inc d			;6065
	dec d			;6066
	ld d,017h		;6067
	inc d			;6069
l606ah:
	dec d			;606a
	ld d,031h		;606b
	jr $+27			;606d
	ld a,(de)		;606f
	dec de			;6070
	inc e			;6071
	dec e			;6072
	ld e,01fh		;6073
	dec l			;6075
	ld l,02fh		;6076
	jr nc,l60a7h		;6078
	ld l,02fh		;607a
	jr nc,l609eh		;607c
	ld hl,02322h		;607e
	inc h			;6081
	dec h			;6082
	ld h,027h		;6083
	jr z,l60b0h		;6085
	ld hl,(0002bh)		;6087
	ld bc,00302h		;608a
	inc b			;608d
	dec b			;608e
	ld b,032h		;608f
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
l609eh:
	nop			;609e
	nop			;609f
	nop			;60a0
	nop			;60a1
	nop			;60a2
	nop			;60a3
	nop			;60a4
	nop			;60a5
	nop			;60a6
l60a7h:
	nop			;60a7
	nop			;60a8
	nop			;60a9
	nop			;60aa
	nop			;60ab
	nop			;60ac
	nop			;60ad
	nop			;60ae
	nop			;60af
l60b0h:
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
l610fh:
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
	dec d			;6151
	rrca			;6152
	rrca			;6153
	rrca			;6154
	rrca			;6155
	rrca			;6156
	nop			;6157
	inc b			;6158
	ld hl,(08022h)		;6159
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
	dec bc			;61c1
	ld h,c			;61c2
	nop			;61c3
	ld h,c			;61c4
	nop			;61c5
	dec h			;61c6
	rrca			;61c7
	ld h,d			;61c8
	ld (01501h),hl		;61c9
	nop			;61cc
	nop			;61cd
	ld h,d			;61ce
	ld (hl),062h		;61cf
	ld (hl),028h		;61d1
	rrca			;61d3
	ld l,c			;61d4
	ld (bc),a		;61d5
	inc bc			;61d6
	nop			;61d7
	nop			;61d8
	nop			;61d9
	dec h			;61da
	inc bc			;61db
	jr z,l61e1h		;61dc
	dec h			;61de
	rrca			;61df
	dec h			;61e0
l61e1h:
	dec bc			;61e1
	inc bc			;61e2
	nop			;61e3
	nop			;61e4
	nop			;61e5
	inc l			;61e6
	inc bc			;61e7
	cpl			;61e8
	inc bc			;61e9
	jr z,l61fbh		;61ea
	jr z,l61f9h		;61ec
	ld bc,00000h		;61ee
	nop			;61f1
	cpl			;61f2
	inc bc			;61f3
	daa			;61f4
	inc bc			;61f5
	dec h			;61f6
	rrca			;61f7
	dec h			;61f8
l61f9h:
	dec bc			;61f9
	inc bc			;61fa
l61fbh:
	nop			;61fb
	nop			;61fc
	nop			;61fd
	ld h,a			;61fe
	inc b			;61ff
l6200h:
	ld h,a			;6200
	inc b			;6201
	inc l			;6202
	rrca			;6203
	jr z,l6211h		;6204
	inc bc			;6206
l6207h:
	nop			;6207
	nop			;6208
	nop			;6209
l620ah:
	ld l,d			;620a
l620bh:
	ld (bc),a		;620b
	ld l,c			;620c
	ld (bc),a		;620d
	ld h,a			;620e
	ld (bc),a		;620f
	dec h			;6210
l6211h:
	dec bc			;6211
	ld bc,00000h		;6212
	nop			;6215
	nop			;6216
	nop			;6217
	nop			;6218
	nop			;6219
	ld l,d			;621a
	ld bc,00b2ch		;621b
	inc bc			;621e
	nop			;621f
	nop			;6220
	nop			;6221
	nop			;6222
	nop			;6223
	nop			;6224
	nop			;6225
	nop			;6226
	nop			;6227
	ld h,a			;6228
	ld (bc),a		;6229
	ld (bc),a		;622a
	nop			;622b
	inc b			;622c
	dec bc			;622d
	nop			;622e
	nop			;622f
	nop			;6230
	nop			;6231
	nop			;6232
	nop			;6233
	ld l,c			;6234
	ld bc,00001h		;6235
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
	inc bc			;6242
	nop			;6243
	nop			;6244
	nop			;6245
	nop			;6246
	nop			;6247
	nop			;6248
	nop			;6249
	nop			;624a
	nop			;624b
	nop			;624c
	nop			;624d
	ld bc,0001ah		;624e
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
	nop			;625b
	nop			;625c
	nop			;625d
	nop			;625e
	nop			;625f
	nop			;6260
	nop			;6261
	nop			;6262
	nop			;6263
	nop			;6264
	nop			;6265
	nop			;6266
	nop			;6267
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
	dec bc			;6280
	dec bc			;6281
	inc sp			;6282
	inc bc			;6283
	ld hl,(02303h)		;6284
	rrca			;6287
	nop			;6288
	nop			;6289
	ld bc,00000h		;628a
	nop			;628d
	nop			;628e
	nop			;628f
	nop			;6290
	nop			;6291
	daa			;6292
	rrca			;6293
	nop			;6294
	nop			;6295
	inc bc			;6296
	nop			;6297
	nop			;6298
	nop			;6299
	nop			;629a
	nop			;629b
	nop			;629c
	nop			;629d
	inc hl			;629e
	rrca			;629f
	inc hl			;62a0
	dec bc			;62a1
	ld bc,00000h		;62a2
	nop			;62a5
	cpl			;62a6
	inc bc			;62a7
	inc sp			;62a8
	inc bc			;62a9
	daa			;62aa
	rrca			;62ab
	daa			;62ac
	dec bc			;62ad
	ld (bc),a		;62ae
	nop			;62af
	nop			;62b0
	nop			;62b1
	nop			;62b2
	nop			;62b3
	nop			;62b4
	nop			;62b5
	inc hl			;62b6
	rrca			;62b7
	inc hl			;62b8
	dec bc			;62b9
	inc bc			;62ba
	nop			;62bb
	nop			;62bc
	nop			;62bd
	nop			;62be
	nop			;62bf
	nop			;62c0
	nop			;62c1
	ld hl,(0270fh)		;62c2
	dec bc			;62c5
	inc bc			;62c6
	nop			;62c7
	nop			;62c8
	nop			;62c9
	ld hl,(02f03h)		;62ca
	inc bc			;62cd
	ld h,a			;62ce
	ld (bc),a		;62cf
	inc hl			;62d0
	dec bc			;62d1
	ld bc,00000h		;62d2
	nop			;62d5
	nop			;62d6
	nop			;62d7
	nop			;62d8
	nop			;62d9
	nop			;62da
	nop			;62db
	ld hl,(0030bh)		;62dc
	nop			;62df
	inc b			;62e0
	dec bc			;62e1
	ld h,a			;62e2
	ld (bc),a		;62e3
	ld h,a			;62e4
	ld (bc),a		;62e5
	nop			;62e6
	nop			;62e7
	ld h,a			;62e8
	ld (bc),a		;62e9
	inc bc			;62ea
	nop			;62eb
	nop			;62ec
	nop			;62ed
	nop			;62ee
	nop			;62ef
	nop			;62f0
	nop			;62f1
	nop			;62f2
	nop			;62f3
	nop			;62f4
	nop			;62f5
	ld bc,00300h		;62f6
	dec bc			;62f9
	nop			;62fa
	nop			;62fb
	nop			;62fc
	nop			;62fd
	nop			;62fe
	nop			;62ff
	nop			;6300
	nop			;6301
	ld (bc),a		;6302
	nop			;6303
	nop			;6304
	nop			;6305
	ld h,c			;6306
	nop			;6307
	ld h,c			;6308
	nop			;6309
	nop			;630a
	nop			;630b
	nop			;630c
	nop			;630d
	ld bc,0001ah		;630e
	nop			;6311
	nop			;6312
	nop			;6313
	nop			;6314
	nop			;6315
	nop			;6316
	nop			;6317
	nop			;6318
	nop			;6319
	nop			;631a
	nop			;631b
	nop			;631c
	nop			;631d
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
	add hl,bc		;6340
	dec bc			;6341
	inc (hl)		;6342
	inc bc			;6343
	jr c,l6349h		;6344
	ld hl,0000fh		;6346
l6349h:
	nop			;6349
	ld bc,00000h		;634a
	nop			;634d
	nop			;634e
	nop			;634f
	nop			;6350
	nop			;6351
	ld hl,0000fh		;6352
	nop			;6355
	inc bc			;6356
	nop			;6357
	nop			;6358
	nop			;6359
	ld h,a			;635a
	ld (bc),a		;635b
	nop			;635c
	nop			;635d
	ld hl,0210fh		;635e
	dec bc			;6361
	inc bc			;6362
	nop			;6363
	nop			;6364
	nop			;6365
	nop			;6366
	nop			;6367
	nop			;6368
	nop			;6369
	nop			;636a
	nop			;636b
	ld hl,0010bh		;636c
	nop			;636f
	nop			;6370
	nop			;6371
	nop			;6372
	nop			;6373
	nop			;6374
	nop			;6375
	nop			;6376
	nop			;6377
	ld hl,0030bh		;6378
	nop			;637b
	nop			;637c
	nop			;637d
	jr c,$+5		;637e
	dec sp			;6380
	inc bc			;6381
	jr z,$+17		;6382
	nop			;6384
	nop			;6385
	inc bc			;6386
	nop			;6387
	nop			;6388
	nop			;6389
	ld (hl),003h		;638a
	add hl,sp		;638c
	inc bc			;638d
	daa			;638e
	rrca			;638f
	nop			;6390
	nop			;6391
	ld bc,00000h		;6392
	nop			;6395
	nop			;6396
	nop			;6397
	nop			;6398
	nop			;6399
	nop			;639a
	nop			;639b
	jr z,l63a9h		;639c
	inc bc			;639e
	nop			;639f
	ld bc,0340bh		;63a0
	inc bc			;63a3
	jr c,l63a9h		;63a4
	dec h			;63a6
	rrca			;63a7
	daa			;63a8
l63a9h:
	dec bc			;63a9
	ld (bc),a		;63aa
	nop			;63ab
	nop			;63ac
	nop			;63ad
	nop			;63ae
	nop			;63af
	nop			;63b0
	nop			;63b1
	nop			;63b2
	nop			;63b3
	nop			;63b4
	nop			;63b5
	inc bc			;63b6
	nop			;63b7
	djnz l63c5h		;63b8
	inc sp			;63ba
	inc bc			;63bb
	ld (hl),003h		;63bc
	inc hl			;63be
	rrca			;63bf
	dec h			;63c0
	dec bc			;63c1
	inc bc			;63c2
	nop			;63c3
	nop			;63c4
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
	ld bc,0001ah		;63ce
	nop			;63d1
	nop			;63d2
	nop			;63d3
	nop			;63d4
	nop			;63d5
	nop			;63d6
	nop			;63d7
	nop			;63d8
	nop			;63d9
	nop			;63da
	nop			;63db
	nop			;63dc
	nop			;63dd
	nop			;63de
	nop			;63df
	nop			;63e0
	nop			;63e1
	nop			;63e2
	nop			;63e3
	nop			;63e4
	nop			;63e5
	nop			;63e6
	nop			;63e7
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
	ld bc,0340bh		;6400
	inc bc			;6403
	jr c,l6409h		;6404
	dec h			;6406
	rrca			;6407
	inc hl			;6408
l6409h:
	dec bc			;6409
	ld bc,00000h		;640a
	nop			;640d
	nop			;640e
	nop			;640f
	nop			;6410
	nop			;6411
	ld h,a			;6412
	ld (bc),a		;6413
	nop			;6414
	nop			;6415
	inc bc			;6416
	nop			;6417
	dec c			;6418
	dec bc			;6419
	ld h,a			;641a
	ld (bc),a		;641b
	nop			;641c
	nop			;641d
	nop			;641e
	nop			;641f
	dec h			;6420
	dec bc			;6421
	inc bc			;6422
	nop			;6423
	nop			;6424
	nop			;6425
	nop			;6426
	nop			;6427
	nop			;6428
	nop			;6429
	nop			;642a
	nop			;642b
	ld h,a			;642c
	ld (bc),a		;642d
	ld bc,00100h		;642e
	dec bc			;6431
	nop			;6432
	nop			;6433
	nop			;6434
	nop			;6435
	nop			;6436
	nop			;6437
	nop			;6438
	nop			;6439
	inc bc			;643a
	nop			;643b
	nop			;643c
	nop			;643d
	nop			;643e
	nop			;643f
	nop			;6440
	nop			;6441
	nop			;6442
	nop			;6443
	nop			;6444
	nop			;6445
	ld (bc),a		;6446
	nop			;6447
	ld bc,0000bh		;6448
	nop			;644b
	nop			;644c
	nop			;644d
	nop			;644e
	nop			;644f
	nop			;6450
	nop			;6451
	ld bc,00000h		;6452
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
	dec c			;6460
	dec bc			;6461
	nop			;6462
	nop			;6463
	nop			;6464
	nop			;6465
	nop			;6466
	nop			;6467
	nop			;6468
	nop			;6469
	inc bc			;646a
	nop			;646b
	nop			;646c
	nop			;646d
	nop			;646e
	nop			;646f
	nop			;6470
	nop			;6471
	ld l,h			;6472
	ld bc,0016ch		;6473
	ld bc,00100h		;6476
	dec bc			;6479
	nop			;647a
	nop			;647b
	nop			;647c
	nop			;647d
	ld l,h			;647e
	ld bc,0016ch		;647f
	ld (bc),a		;6482
	nop			;6483
	nop			;6484
	nop			;6485
	nop			;6486
	nop			;6487
	nop			;6488
	nop			;6489
	ld l,h			;648a
	ld bc,0016ch		;648b
	inc bc			;648e
	ld a,(de)		;648f
	nop			;6490
	nop			;6491
	nop			;6492
	nop			;6493
	nop			;6494
	nop			;6495
	nop			;6496
	nop			;6497
	nop			;6498
	nop			;6499
	nop			;649a
	nop			;649b
	nop			;649c
	nop			;649d
	nop			;649e
	nop			;649f
	nop			;64a0
	nop			;64a1
	nop			;64a2
	nop			;64a3
	nop			;64a4
	nop			;64a5
	nop			;64a6
	nop			;64a7
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
	dec c			;64c0
	dec bc			;64c1
	ld h,c			;64c2
	nop			;64c3
	ld h,c			;64c4
	nop			;64c5
	dec h			;64c6
	rrca			;64c7
	nop			;64c8
	nop			;64c9
	ld bc,00000h		;64ca
	nop			;64cd
	ld h,d			;64ce
	ld (hl),062h		;64cf
	ld (hl),028h		;64d1
	rrca			;64d3
	nop			;64d4
	nop			;64d5
	inc bc			;64d6
	nop			;64d7
	nop			;64d8
	nop			;64d9
	dec h			;64da
	inc bc			;64db
	jr z,l64e1h		;64dc
	dec h			;64de
	rrca			;64df
	dec h			;64e0
l64e1h:
	dec bc			;64e1
	inc bc			;64e2
	nop			;64e3
	nop			;64e4
	nop			;64e5
	inc l			;64e6
	inc bc			;64e7
	cpl			;64e8
	inc bc			;64e9
	jr z,l64fbh		;64ea
	jr z,l64f9h		;64ec
	ld bc,00000h		;64ee
	nop			;64f1
	cpl			;64f2
	inc bc			;64f3
	daa			;64f4
	inc bc			;64f5
	dec h			;64f6
	rrca			;64f7
	dec h			;64f8
l64f9h:
	dec bc			;64f9
	inc bc			;64fa
l64fbh:
	nop			;64fb
	nop			;64fc
	nop			;64fd
	ld h,a			;64fe
	inc b			;64ff
	ld h,a			;6500
	inc b			;6501
	inc l			;6502
	rrca			;6503
	jr z,l6511h		;6504
	inc bc			;6506
	nop			;6507
	nop			;6508
	nop			;6509
	nop			;650a
	nop			;650b
	nop			;650c
	nop			;650d
	ld h,a			;650e
	ld (bc),a		;650f
	dec h			;6510
l6511h:
	dec bc			;6511
	ld bc,00000h		;6512
	nop			;6515
	nop			;6516
	nop			;6517
	nop			;6518
	nop			;6519
	nop			;651a
	nop			;651b
	inc l			;651c
	dec bc			;651d
	inc bc			;651e
	nop			;651f
	nop			;6520
	nop			;6521
	nop			;6522
	nop			;6523
	nop			;6524
	nop			;6525
	nop			;6526
	nop			;6527
	ld h,a			;6528
	ld (bc),a		;6529
	ld (bc),a		;652a
	nop			;652b
	inc b			;652c
	dec bc			;652d
	nop			;652e
	nop			;652f
	nop			;6530
	nop			;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	ld bc,00000h		;6536
	nop			;6539
	nop			;653a
	nop			;653b
	nop			;653c
	nop			;653d
	nop			;653e
	nop			;653f
	nop			;6540
	nop			;6541
	inc bc			;6542
	nop			;6543
	nop			;6544
	nop			;6545
	nop			;6546
	nop			;6547
	nop			;6548
	nop			;6549
	nop			;654a
	nop			;654b
	nop			;654c
	nop			;654d
	ld bc,0001ah		;654e
	nop			;6551
	nop			;6552
	nop			;6553
	nop			;6554
	nop			;6555
	nop			;6556
	nop			;6557
	nop			;6558
	nop			;6559
	nop			;655a
	nop			;655b
	nop			;655c
	nop			;655d
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
	dec bc			;6580
	dec bc			;6581
	inc (hl)		;6582
	inc bc			;6583
	jr c,l6589h		;6584
	ld sp,0000fh		;6586
l6589h:
	nop			;6589
	ld bc,00000h		;658a
	nop			;658d
	nop			;658e
	nop			;658f
	nop			;6590
	nop			;6591
	ld h,a			;6592
	ld (bc),a		;6593
	nop			;6594
	nop			;6595
	inc bc			;6596
	nop			;6597
	rla			;6598
	dec bc			;6599
	nop			;659a
	nop			;659b
	nop			;659c
	nop			;659d
	nop			;659e
	nop			;659f
	ld sp,00309h		;65a0
	nop			;65a3
	nop			;65a4
	nop			;65a5
	nop			;65a6
	nop			;65a7
	nop			;65a8
	nop			;65a9
	nop			;65aa
	nop			;65ab
	ld h,a			;65ac
	ld (bc),a		;65ad
	ld bc,00b00h		;65ae
	dec bc			;65b1
	inc sp			;65b2
	inc bc			;65b3
	ld (hl),003h		;65b4
	cpl			;65b6
	rrca			;65b7
	nop			;65b8
	nop			;65b9
	inc bc			;65ba
	nop			;65bb
	nop			;65bc
	nop			;65bd
	ld sp,03403h		;65be
	inc bc			;65c1
	ld l,00fh		;65c2
	nop			;65c4
	nop			;65c5
	inc bc			;65c6
	nop			;65c7
	ex af,af'		;65c8
	dec bc			;65c9
	cpl			;65ca
	inc bc			;65cb
	inc sp			;65cc
	inc bc			;65cd
	inc l			;65ce
	rrca			;65cf
	cpl			;65d0
	add hl,bc		;65d1
	ld (bc),a		;65d2
	nop			;65d3
	nop			;65d4
	nop			;65d5
	nop			;65d6
	nop			;65d7
	nop			;65d8
	nop			;65d9
	ld h,a			;65da
	ld (bc),a		;65db
	ld l,009h		;65dc
	inc bc			;65de
	nop			;65df
	nop			;65e0
	nop			;65e1
	ld h,a			;65e2
	ld (bc),a		;65e3
	ld h,a			;65e4
	ld (bc),a		;65e5
	nop			;65e6
	nop			;65e7
	inc l			;65e8
	add hl,bc		;65e9
	ld bc,00000h		;65ea
	nop			;65ed
	nop			;65ee
	nop			;65ef
	nop			;65f0
	nop			;65f1
	nop			;65f2
	nop			;65f3
	ld h,a			;65f4
	ld (bc),a		;65f5
	inc bc			;65f6
	nop			;65f7
	nop			;65f8
	nop			;65f9
	nop			;65fa
	nop			;65fb
	nop			;65fc
	nop			;65fd
	nop			;65fe
	nop			;65ff
	nop			;6600
	nop			;6601
	ld bc,00000h		;6602
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
	ld a,(de)		;660f
	nop			;6610
	nop			;6611
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
	nop			;661d
	nop			;661e
	nop			;661f
	nop			;6620
	nop			;6621
	nop			;6622
	nop			;6623
	nop			;6624
	nop			;6625
	nop			;6626
	nop			;6627
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
	dec d			;6640
	dec bc			;6641
	jr z,l6647h		;6642
	inc l			;6644
	inc bc			;6645
	dec h			;6646
l6647h:
	rrca			;6647
	nop			;6648
	nop			;6649
	ld bc,00900h		;664a
	dec bc			;664d
	nop			;664e
	nop			;664f
	nop			;6650
	nop			;6651
	inc hl			;6652
	rrca			;6653
	nop			;6654
	nop			;6655
	inc bc			;6656
	nop			;6657
	nop			;6658
	nop			;6659
	nop			;665a
	nop			;665b
	nop			;665c
	nop			;665d
	dec h			;665e
	rrca			;665f
	dec h			;6660
	dec bc			;6661
	inc bc			;6662
	nop			;6663
	dec d			;6664
	dec bc			;6665
	inc l			;6666
	inc bc			;6667
	cpl			;6668
	inc bc			;6669
	jr z,l667bh		;666a
	inc hl			;666c
	dec bc			;666d
	ld bc,00900h		;666e
	dec bc			;6671
	nop			;6672
	nop			;6673
	nop			;6674
	nop			;6675
	ld h,a			;6676
	ld (bc),a		;6677
	dec h			;6678
	dec bc			;6679
	inc bc			;667a
l667bh:
	nop			;667b
	nop			;667c
	nop			;667d
	nop			;667e
	nop			;667f
	nop			;6680
	nop			;6681
	nop			;6682
	nop			;6683
	jr z,l6691h		;6684
	inc bc			;6686
	nop			;6687
	inc c			;6688
	dec bc			;6689
	ld hl,(02d03h)		;668a
	inc bc			;668d
	daa			;668e
	rrca			;668f
	ld h,a			;6690
l6691h:
	ld (bc),a		;6691
	ld bc,00000h		;6692
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
	dec c			;66a0
	dec bc			;66a1
	jr z,l66a7h		;66a2
	inc l			;66a4
	inc bc			;66a5
	dec h			;66a6
l66a7h:
	rrca			;66a7
	daa			;66a8
	dec bc			;66a9
	ld (bc),a		;66aa
	nop			;66ab
	nop			;66ac
	nop			;66ad
	nop			;66ae
	nop			;66af
	nop			;66b0
	nop			;66b1
	nop			;66b2
	nop			;66b3
	nop			;66b4
	nop			;66b5
	inc bc			;66b6
	nop			;66b7
	rrca			;66b8
	dec bc			;66b9
	daa			;66ba
	inc bc			;66bb
	ld hl,(02303h)		;66bc
	rrca			;66bf
	dec h			;66c0
	dec bc			;66c1
	inc bc			;66c2
	nop			;66c3
	nop			;66c4
	nop			;66c5
	nop			;66c6
	nop			;66c7
	nop			;66c8
	nop			;66c9
	nop			;66ca
	nop			;66cb
	nop			;66cc
	nop			;66cd
	ld bc,0001ah		;66ce
	nop			;66d1
	nop			;66d2
	nop			;66d3
	nop			;66d4
	nop			;66d5
	nop			;66d6
	nop			;66d7
	nop			;66d8
	nop			;66d9
	nop			;66da
	nop			;66db
	nop			;66dc
	nop			;66dd
	nop			;66de
	nop			;66df
	nop			;66e0
	nop			;66e1
	nop			;66e2
	nop			;66e3
	nop			;66e4
	nop			;66e5
	nop			;66e6
	nop			;66e7
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
	ld bc,0280bh		;6700
	inc bc			;6703
	inc l			;6704
	inc bc			;6705
	dec h			;6706
	rrca			;6707
	inc hl			;6708
	dec bc			;6709
	inc bc			;670a
	nop			;670b
	nop			;670c
l670dh:
	nop			;670d
	nop			;670e
	nop			;670f
	nop			;6710
	nop			;6711
	ld h,a			;6712
	ld (bc),a		;6713
	nop			;6714
	nop			;6715
	inc bc			;6716
	nop			;6717
	dec c			;6718
	dec bc			;6719
	ld h,a			;671a
	ld (bc),a		;671b
	ld h,a			;671c
	ld (bc),a		;671d
	nop			;671e
	nop			;671f
	dec h			;6720
	dec bc			;6721
	rlca			;6722
	nop			;6723
	nop			;6724
	nop			;6725
	nop			;6726
	nop			;6727
	nop			;6728
	nop			;6729
	nop			;672a
	nop			;672b
	ld h,a			;672c
	ld (bc),a		;672d
	inc bc			;672e
	nop			;672f
	ld bc,0000bh		;6730
	nop			;6733
	nop			;6734
	nop			;6735
	nop			;6736
	nop			;6737
	nop			;6738
	nop			;6739
	inc bc			;673a
	nop			;673b
	nop			;673c
	nop			;673d
	nop			;673e
	nop			;673f
	nop			;6740
	nop			;6741
	nop			;6742
	nop			;6743
	nop			;6744
	nop			;6745
	ld (bc),a		;6746
	nop			;6747
	ld bc,0000bh		;6748
	nop			;674b
	nop			;674c
	nop			;674d
	nop			;674e
	nop			;674f
	nop			;6750
	nop			;6751
	nop			;6752
	nop			;6753
	nop			;6754
	nop			;6755
	nop			;6756
	nop			;6757
	nop			;6758
	nop			;6759
	nop			;675a
	nop			;675b
	nop			;675c
	nop			;675d
	ld bc,00d00h		;675e
	dec bc			;6761
	nop			;6762
	nop			;6763
	nop			;6764
	nop			;6765
	nop			;6766
	nop			;6767
	nop			;6768
	nop			;6769
	ld (bc),a		;676a
	nop			;676b
	nop			;676c
	nop			;676d
	nop			;676e
	nop			;676f
	nop			;6770
	nop			;6771
	nop			;6772
	nop			;6773
	nop			;6774
	nop			;6775
	ld bc,00100h		;6776
	dec bc			;6779
	ld h,c			;677a
	nop			;677b
	ld h,c			;677c
	nop			;677d
	ld sp,0000fh		;677e
	nop			;6781
	ld (bc),a		;6782
	nop			;6783
	nop			;6784
	nop			;6785
	nop			;6786
	nop			;6787
	nop			;6788
	nop			;6789
	cpl			;678a
	rrca			;678b
	nop			;678c
	nop			;678d
	ld bc,0001ah		;678e
	nop			;6791
	nop			;6792
	nop			;6793
	nop			;6794
	nop			;6795
	nop			;6796
	nop			;6797
	nop			;6798
	nop			;6799
	nop			;679a
	nop			;679b
	nop			;679c
	nop			;679d
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
	add hl,bc		;67c0
	dec bc			;67c1
	nop			;67c2
	nop			;67c3
	nop			;67c4
	nop			;67c5
	dec l			;67c6
	rrca			;67c7
	ld sp,0010bh		;67c8
	dec d			;67cb
	nop			;67cc
	nop			;67cd
	nop			;67ce
	nop			;67cf
	nop			;67d0
	nop			;67d1
	inc l			;67d2
	rrca			;67d3
	cpl			;67d4
	dec bc			;67d5
	inc bc			;67d6
	nop			;67d7
	nop			;67d8
	nop			;67d9
	inc (hl)		;67da
	inc bc			;67db
	jr c,l67e1h		;67dc
	dec l			;67de
	rrca			;67df
	dec l			;67e0
l67e1h:
	dec bc			;67e1
	ld bc,00000h		;67e2
	nop			;67e5
	nop			;67e6
	nop			;67e7
	nop			;67e8
	nop			;67e9
	nop			;67ea
	nop			;67eb
	inc l			;67ec
	dec bc			;67ed
	inc bc			;67ee
	nop			;67ef
	nop			;67f0
	nop			;67f1
	nop			;67f2
	nop			;67f3
	nop			;67f4
	nop			;67f5
	nop			;67f6
	nop			;67f7
	dec l			;67f8
	dec bc			;67f9
	inc bc			;67fa
	nop			;67fb
	nop			;67fc
	nop			;67fd
	nop			;67fe
	nop			;67ff
	nop			;6800
	nop			;6801
	inc (hl)		;6802
	dec bc			;6803
	nop			;6804
	nop			;6805
	inc bc			;6806
	nop			;6807
	inc b			;6808
	dec bc			;6809
	daa			;680a
	inc bc			;680b
	ld (hl),003h		;680c
	inc sp			;680e
	rrca			;680f
	nop			;6810
	nop			;6811
	ld (bc),a		;6812
	nop			;6813
	nop			;6814
	nop			;6815
	nop			;6816
	nop			;6817
	nop			;6818
	nop			;6819
	ld h,a			;681a
	ld (bc),a		;681b
	jr z,l6829h		;681c
	inc bc			;681e
	nop			;681f
	add hl,bc		;6820
	dec bc			;6821
	cpl			;6822
	inc bc			;6823
	inc (hl)		;6824
	inc bc			;6825
	nop			;6826
	nop			;6827
	inc sp			;6828
l6829h:
	dec bc			;6829
	inc bc			;682a
	nop			;682b
	nop			;682c
	nop			;682d
	ld h,a			;682e
	inc bc			;682f
	ld h,a			;6830
	inc bc			;6831
	nop			;6832
	nop			;6833
	ld h,a			;6834
	ld (bc),a		;6835
	inc bc			;6836
	nop			;6837
	nop			;6838
	nop			;6839
	nop			;683a
	nop			;683b
	nop			;683c
	nop			;683d
	nop			;683e
	nop			;683f
	nop			;6840
	nop			;6841
	ld bc,00000h		;6842
	nop			;6845
	nop			;6846
	nop			;6847
	nop			;6848
	nop			;6849
	nop			;684a
	nop			;684b
	nop			;684c
	nop			;684d
	inc bc			;684e
	ld a,(de)		;684f
	nop			;6850
	nop			;6851
	nop			;6852
	nop			;6853
	nop			;6854
	nop			;6855
	nop			;6856
	nop			;6857
	nop			;6858
	nop			;6859
	nop			;685a
	nop			;685b
	nop			;685c
	nop			;685d
	nop			;685e
	nop			;685f
	nop			;6860
	nop			;6861
	nop			;6862
	nop			;6863
	nop			;6864
	nop			;6865
	nop			;6866
	nop			;6867
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
	dec bc			;6880
	dec bc			;6881
	nop			;6882
	nop			;6883
	nop			;6884
	nop			;6885
	cpl			;6886
	rrca			;6887
	nop			;6888
	nop			;6889
	ld bc,00000h		;688a
	nop			;688d
	nop			;688e
	nop			;688f
	nop			;6890
	nop			;6891
	ld l,00fh		;6892
	nop			;6894
	nop			;6895
	inc bc			;6896
	nop			;6897
	nop			;6898
	nop			;6899
	cpl			;689a
	inc bc			;689b
	inc sp			;689c
	inc bc			;689d
	cpl			;689e
	rrca			;689f
	cpl			;68a0
	dec bc			;68a1
	ld bc,00000h		;68a2
	nop			;68a5
	nop			;68a6
	nop			;68a7
	nop			;68a8
	nop			;68a9
	ld h,a			;68aa
	ld (bc),a		;68ab
	ld l,00bh		;68ac
	inc bc			;68ae
	nop			;68af
	nop			;68b0
	nop			;68b1
	nop			;68b2
	nop			;68b3
	nop			;68b4
	nop			;68b5
	nop			;68b6
	nop			;68b7
	cpl			;68b8
	dec bc			;68b9
	inc bc			;68ba
	nop			;68bb
	nop			;68bc
	nop			;68bd
	nop			;68be
	nop			;68bf
	nop			;68c0
	nop			;68c1
	nop			;68c2
	nop			;68c3
	ld h,a			;68c4
	ld (bc),a		;68c5
	inc bc			;68c6
	nop			;68c7
	ld bc,0360bh		;68c8
	inc bc			;68cb
	ld a,(03603h)		;68cc
	rrca			;68cf
	nop			;68d0
	nop			;68d1
	ld (bc),a		;68d2
	nop			;68d3
	nop			;68d4
	nop			;68d5
	nop			;68d6
	nop			;68d7
	nop			;68d8
	nop			;68d9
	ld h,a			;68da
	ld (bc),a		;68db
	nop			;68dc
	nop			;68dd
	inc bc			;68de
	nop			;68df
	dec bc			;68e0
	dec bc			;68e1
	inc (hl)		;68e2
	inc bc			;68e3
	jr c,$+5		;68e4
	inc (hl)		;68e6
	rrca			;68e7
	ld (hl),00bh		;68e8
	inc bc			;68ea
	nop			;68eb
	nop			;68ec
	nop			;68ed
	nop			;68ee
	nop			;68ef
	nop			;68f0
	nop			;68f1
	ld h,a			;68f2
	inc b			;68f3
	ld h,a			;68f4
	ld (bc),a		;68f5
	inc bc			;68f6
	nop			;68f7
	nop			;68f8
	nop			;68f9
	inc sp			;68fa
	inc bc			;68fb
	ld (hl),003h		;68fc
	inc sp			;68fe
	rrca			;68ff
	inc (hl)		;6900
	dec bc			;6901
	ld bc,00000h		;6902
	nop			;6905
	nop			;6906
	nop			;6907
	nop			;6908
	nop			;6909
	ld h,a			;690a
	ld (bc),a		;690b
	ld h,a			;690c
	inc b			;690d
	inc bc			;690e
	ld a,(de)		;690f
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
	add hl,bc		;6940
	dec bc			;6941
	ld sp,03403h		;6942
	inc bc			;6945
	dec l			;6946
	rrca			;6947
	inc sp			;6948
	dec bc			;6949
	ld bc,00000h		;694a
	nop			;694d
	nop			;694e
	nop			;694f
	nop			;6950
	nop			;6951
	dec l			;6952
	rrca			;6953
	ld h,a			;6954
	ld (bc),a		;6955
	inc bc			;6956
	nop			;6957
	nop			;6958
	nop			;6959
	nop			;695a
	nop			;695b
	nop			;695c
	nop			;695d
	dec l			;695e
	rrca			;695f
	dec l			;6960
	dec bc			;6961
	ld bc,l6700h		;6962
	jr nc,l6967h		;6965
l6967h:
	nop			;6967
	nop			;6968
	nop			;6969
	ld h,a			;696a
	inc b			;696b
	dec l			;696c
	dec bc			;696d
	inc bc			;696e
	nop			;696f
	ld l,h			;6970
	ld bc,00000h		;6971
	nop			;6974
	nop			;6975
	ld l,h			;6976
	ld (bc),a		;6977
	dec l			;6978
	dec bc			;6979
	inc bc			;697a
	nop			;697b
	ld l,h			;697c
	ld bc,00000h		;697d
	nop			;6980
	nop			;6981
	ld l,h			;6982
	ld (bc),a		;6983
	ld h,a			;6984
	inc b			;6985
	inc bc			;6986
	nop			;6987
	add hl,bc		;6988
	dec bc			;6989
	ld sp,03403h		;698a
	inc bc			;698d
	dec l			;698e
	rrca			;698f
	ld l,h			;6990
	ld (bc),a		;6991
	ld (bc),a		;6992
	nop			;6993
	nop			;6994
	nop			;6995
	nop			;6996
	nop			;6997
	nop			;6998
	nop			;6999
	nop			;699a
	nop			;699b
	ld l,h			;699c
	ld (bc),a		;699d
	inc bc			;699e
	nop			;699f
	ex af,af'		;69a0
	dec bc			;69a1
	inc sp			;69a2
	inc bc			;69a3
	ld (hl),003h		;69a4
	cpl			;69a6
	rrca			;69a7
	dec l			;69a8
	dec bc			;69a9
	inc bc			;69aa
	nop			;69ab
	nop			;69ac
	nop			;69ad
	nop			;69ae
	nop			;69af
	nop			;69b0
	nop			;69b1
	nop			;69b2
	nop			;69b3
	nop			;69b4
	nop			;69b5
	inc bc			;69b6
	nop			;69b7
	ld b,00bh		;69b8
	inc (hl)		;69ba
	inc bc			;69bb
	jr c,l69c1h		;69bc
	ld sp,02f0fh		;69be
l69c1h:
	dec bc			;69c1
	ld bc,00000h		;69c2
	nop			;69c5
	nop			;69c6
	nop			;69c7
	nop			;69c8
	nop			;69c9
	nop			;69ca
	nop			;69cb
	nop			;69cc
	nop			;69cd
	inc bc			;69ce
	ld a,(de)		;69cf
	nop			;69d0
	nop			;69d1
	nop			;69d2
	nop			;69d3
	nop			;69d4
	nop			;69d5
	nop			;69d6
	nop			;69d7
	nop			;69d8
	nop			;69d9
	nop			;69da
	nop			;69db
	nop			;69dc
	nop			;69dd
	nop			;69de
	nop			;69df
	nop			;69e0
	nop			;69e1
	nop			;69e2
	nop			;69e3
	nop			;69e4
	nop			;69e5
	nop			;69e6
	nop			;69e7
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
l6a00h:
	ex af,af'		;6a00
	dec bc			;6a01
	inc sp			;6a02
	inc bc			;6a03
	scf			;6a04
	inc bc			;6a05
	jr nc,l6a16h		;6a06
	ld sp,0030ah		;6a08
	nop			;6a0b
	nop			;6a0c
	nop			;6a0d
	nop			;6a0e
	nop			;6a0f
	nop			;6a10
	nop			;6a11
	nop			;6a12
	nop			;6a13
	nop			;6a14
	nop			;6a15
l6a16h:
	inc bc			;6a16
	nop			;6a17
	nop			;6a18
	nop			;6a19
	nop			;6a1a
	nop			;6a1b
	nop			;6a1c
	nop			;6a1d
	nop			;6a1e
	nop			;6a1f
	jr nc,l6a2ch		;6a20
	rlca			;6a22
	nop			;6a23
	nop			;6a24
	nop			;6a25
	nop			;6a26
	nop			;6a27
	nop			;6a28
	nop			;6a29
	nop			;6a2a
	nop			;6a2b
l6a2ch:
	nop			;6a2c
	nop			;6a2d
	inc bc			;6a2e
	nop			;6a2f
	nop			;6a30
	nop			;6a31
	nop			;6a32
	nop			;6a33
	nop			;6a34
	nop			;6a35
	nop			;6a36
	nop			;6a37
	nop			;6a38
	nop			;6a39
	inc bc			;6a3a
	nop			;6a3b
	inc bc			;6a3c
	dec bc			;6a3d
	nop			;6a3e
	nop			;6a3f
	nop			;6a40
	nop			;6a41
	nop			;6a42
	nop			;6a43
	nop			;6a44
	nop			;6a45
	ld (bc),a		;6a46
	nop			;6a47
	inc c			;6a48
	dec bc			;6a49
	nop			;6a4a
	nop			;6a4b
	nop			;6a4c
	nop			;6a4d
	ld h,a			;6a4e
	inc bc			;6a4f
	nop			;6a50
	nop			;6a51
	nop			;6a52
	nop			;6a53
	nop			;6a54
	nop			;6a55
	nop			;6a56
	nop			;6a57
	nop			;6a58
	nop			;6a59
	nop			;6a5a
	nop			;6a5b
	nop			;6a5c
	nop			;6a5d
	ld bc,00000h		;6a5e
	nop			;6a61
	nop			;6a62
	nop			;6a63
	nop			;6a64
	nop			;6a65
	nop			;6a66
	nop			;6a67
	ld h,a			;6a68
	inc bc			;6a69
	ld (bc),a		;6a6a
	nop			;6a6b
	nop			;6a6c
	nop			;6a6d
	nop			;6a6e
	nop			;6a6f
	nop			;6a70
	nop			;6a71
	nop			;6a72
	nop			;6a73
	nop			;6a74
	nop			;6a75
	ld bc,00000h		;6a76
	nop			;6a79
	nop			;6a7a
	nop			;6a7b
	nop			;6a7c
	nop			;6a7d
	nop			;6a7e
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	ld (bc),a		;6a82
	nop			;6a83
	ld h,c			;6a84
	nop			;6a85
	ld h,c			;6a86
	nop			;6a87
	ld h,c			;6a88
	nop			;6a89
	ld h,c			;6a8a
	nop			;6a8b
	ld h,c			;6a8c
	nop			;6a8d
	ld (bc),a		;6a8e
	ld a,(de)		;6a8f
	nop			;6a90
	nop			;6a91
	nop			;6a92
	nop			;6a93
	nop			;6a94
	nop			;6a95
	nop			;6a96
	nop			;6a97
	nop			;6a98
	nop			;6a99
	nop			;6a9a
	nop			;6a9b
	nop			;6a9c
	nop			;6a9d
	nop			;6a9e
	nop			;6a9f
	nop			;6aa0
	nop			;6aa1
	nop			;6aa2
	nop			;6aa3
	nop			;6aa4
	nop			;6aa5
	nop			;6aa6
	nop			;6aa7
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
	ld bc,l610bh		;6ac0
	nop			;6ac3
	ld h,c			;6ac4
	nop			;6ac5
	dec h			;6ac6
	rrca			;6ac7
	add hl,hl		;6ac8
	dec b			;6ac9
	ld bc,l6115h		;6aca
	nop			;6acd
	nop			;6ace
	nop			;6acf
	nop			;6ad0
	nop			;6ad1
	daa			;6ad2
	rrca			;6ad3
	ld hl,(00005h)		;6ad4
	nop			;6ad7
	ld bc,l620bh		;6ad8
	ld b,062h		;6adb
	ld b,067h		;6add
	ld (bc),a		;6adf
	ld h,a			;6ae0
	ld (bc),a		;6ae1
	inc bc			;6ae2
	nop			;6ae3
	nop			;6ae4
	nop			;6ae5
	dec h			;6ae6
	ex af,af'		;6ae7
	add hl,hl		;6ae8
	inc b			;6ae9
	nop			;6aea
	nop			;6aeb
	nop			;6aec
	nop			;6aed
	ld bc,00d00h		;6aee
	dec bc			;6af1
	daa			;6af2
	ex af,af'		;6af3
	ld hl,(00004h)		;6af4
	nop			;6af7
	nop			;6af8
	nop			;6af9
	inc bc			;6afa
	nop			;6afb
	nop			;6afc
	nop			;6afd
	ld h,a			;6afe
	ld (bc),a		;6aff
	ld h,a			;6b00
	ld (bc),a		;6b01
	nop			;6b02
	nop			;6b03
	nop			;6b04
	nop			;6b05
	nop			;6b06
	nop			;6b07
	nop			;6b08
	nop			;6b09
	nop			;6b0a
	nop			;6b0b
	nop			;6b0c
	nop			;6b0d
	nop			;6b0e
	nop			;6b0f
	nop			;6b10
	nop			;6b11
	ld (bc),a		;6b12
	nop			;6b13
	nop			;6b14
	nop			;6b15
	nop			;6b16
	nop			;6b17
	nop			;6b18
	nop			;6b19
	nop			;6b1a
	nop			;6b1b
	nop			;6b1c
	nop			;6b1d
	ld bc,00100h		;6b1e
	dec bc			;6b21
	nop			;6b22
	nop			;6b23
	nop			;6b24
	nop			;6b25
	nop			;6b26
	nop			;6b27
	nop			;6b28
	nop			;6b29
	nop			;6b2a
	nop			;6b2b
	nop			;6b2c
	nop			;6b2d
	ld l,h			;6b2e
	ld bc,0016ch		;6b2f
	nop			;6b32
	nop			;6b33
	nop			;6b34
	nop			;6b35
	ld bc,00000h		;6b36
	nop			;6b39
	ld l,h			;6b3a
	ld bc,0016ch		;6b3b
	nop			;6b3e
	nop			;6b3f
	nop			;6b40
	nop			;6b41
	nop			;6b42
	nop			;6b43
	nop			;6b44
	nop			;6b45
	ld l,h			;6b46
	ld bc,0016ch		;6b47
	nop			;6b4a
	nop			;6b4b
	nop			;6b4c
	nop			;6b4d
	inc bc			;6b4e
	ld a,(de)		;6b4f
	nop			;6b50
	nop			;6b51
	nop			;6b52
	nop			;6b53
	nop			;6b54
	nop			;6b55
	nop			;6b56
	nop			;6b57
	nop			;6b58
	nop			;6b59
	nop			;6b5a
	nop			;6b5b
	nop			;6b5c
	nop			;6b5d
	nop			;6b5e
	nop			;6b5f
	nop			;6b60
	nop			;6b61
	nop			;6b62
	nop			;6b63
	nop			;6b64
	nop			;6b65
	nop			;6b66
	nop			;6b67
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
	ld bc,0000bh		;6b80
	nop			;6b83
	nop			;6b84
	nop			;6b85
	dec h			;6b86
	rrca			;6b87
	ld hl,(00106h)		;6b88
	nop			;6b8b
	nop			;6b8c
	nop			;6b8d
	nop			;6b8e
	nop			;6b8f
	nop			;6b90
	nop			;6b91
	jr z,$+17		;6b92
	inc l			;6b94
	ld b,000h		;6b95
	nop			;6b97
	nop			;6b98
	nop			;6b99
	nop			;6b9a
	nop			;6b9b
	nop			;6b9c
	nop			;6b9d
	ld h,a			;6b9e
	ld (bc),a		;6b9f
	ld h,a			;6ba0
	ld (bc),a		;6ba1
	ld bc,00000h		;6ba2
	nop			;6ba5
	dec h			;6ba6
	ex af,af'		;6ba7
	ld hl,(00004h)		;6ba8
	nop			;6bab
	nop			;6bac
	nop			;6bad
	nop			;6bae
	nop			;6baf
	dec c			;6bb0
	dec bc			;6bb1
	jr z,l6bbch		;6bb2
	inc l			;6bb4
	inc b			;6bb5
	nop			;6bb6
	nop			;6bb7
	nop			;6bb8
	nop			;6bb9
	ld (bc),a		;6bba
	nop			;6bbb
l6bbch:
	ld h,c			;6bbc
	nop			;6bbd
	ld h,a			;6bbe
	ld (bc),a		;6bbf
	ld h,a			;6bc0
	ld (bc),a		;6bc1
	nop			;6bc2
	nop			;6bc3
	nop			;6bc4
	nop			;6bc5
	ld bc,00000h		;6bc6
	nop			;6bc9
	nop			;6bca
	nop			;6bcb
	nop			;6bcc
	nop			;6bcd
	nop			;6bce
	nop			;6bcf
	nop			;6bd0
	nop			;6bd1
	nop			;6bd2
	nop			;6bd3
	ld bc,0000bh		;6bd4
	nop			;6bd7
	nop			;6bd8
	nop			;6bd9
	nop			;6bda
	nop			;6bdb
	nop			;6bdc
	nop			;6bdd
	ld bc,00000h		;6bde
	nop			;6be1
	nop			;6be2
	nop			;6be3
	nop			;6be4
	nop			;6be5
	nop			;6be6
	nop			;6be7
	nop			;6be8
	nop			;6be9
	nop			;6bea
	nop			;6beb
	nop			;6bec
	nop			;6bed
	ld l,h			;6bee
	ld bc,0016ch		;6bef
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	nop			;6bf5
	inc bc			;6bf6
	nop			;6bf7
	nop			;6bf8
	nop			;6bf9
	ld l,h			;6bfa
	ld bc,0016ch		;6bfb
	nop			;6bfe
	nop			;6bff
	nop			;6c00
	nop			;6c01
	nop			;6c02
	nop			;6c03
	nop			;6c04
	nop			;6c05
	ld l,h			;6c06
l6c07h:
	ld bc,0016ch		;6c07
l6c0ah:
	nop			;6c0a
l6c0bh:
	nop			;6c0b
	nop			;6c0c
	nop			;6c0d
	inc bc			;6c0e
l6c0fh:
	ld a,(de)		;6c0f
	nop			;6c10
	nop			;6c11
	nop			;6c12
	nop			;6c13
	nop			;6c14
	nop			;6c15
	nop			;6c16
	nop			;6c17
	nop			;6c18
	nop			;6c19
	nop			;6c1a
	nop			;6c1b
	nop			;6c1c
	nop			;6c1d
	nop			;6c1e
	nop			;6c1f
	nop			;6c20
	nop			;6c21
	nop			;6c22
	nop			;6c23
	nop			;6c24
	nop			;6c25
	nop			;6c26
	nop			;6c27
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
	ld b,00bh		;6c40
	nop			;6c42
	nop			;6c43
	nop			;6c44
	nop			;6c45
	dec hl			;6c46
	rrca			;6c47
	rra			;6c48
	nop			;6c49
	ld bc,l6100h		;6c4a
	nop			;6c4d
	nop			;6c4e
	nop			;6c4f
	nop			;6c50
	nop			;6c51
	ld h,a			;6c52
	ld (bc),a		;6c53
	ld l,e			;6c54
	ld bc,00000h		;6c55
	nop			;6c58
	nop			;6c59
	nop			;6c5a
	nop			;6c5b
	nop			;6c5c
	nop			;6c5d
	nop			;6c5e
	nop			;6c5f
	ld h,a			;6c60
	djnz l6c66h		;6c61
	nop			;6c63
	nop			;6c64
	nop			;6c65
l6c66h:
	dec hl			;6c66
	dec b			;6c67
	rra			;6c68
	ld (bc),a		;6c69
	nop			;6c6a
	nop			;6c6b
	nop			;6c6c
	nop			;6c6d
	ld bc,00600h		;6c6e
	dec bc			;6c71
	ld h,a			;6c72
	ld (bc),a		;6c73
	ld l,e			;6c74
	ld bc,00000h		;6c75
	ld l,e			;6c78
	ld bc,00000h		;6c79
	ld (de),a		;6c7c
	dec bc			;6c7d
	nop			;6c7e
	nop			;6c7f
	ld h,a			;6c80
	djnz l6c83h		;6c81
l6c83h:
	nop			;6c83
	nop			;6c84
	nop			;6c85
	inc bc			;6c86
	nop			;6c87
	nop			;6c88
	nop			;6c89
	nop			;6c8a
	nop			;6c8b
	nop			;6c8c
	nop			;6c8d
	nop			;6c8e
	nop			;6c8f
	ld l,e			;6c90
	ld bc,00002h		;6c91
	nop			;6c94
	nop			;6c95
	nop			;6c96
	nop			;6c97
	ld l,e			;6c98
	ld bc,00000h		;6c99
	nop			;6c9c
	nop			;6c9d
	ld bc,00600h		;6c9e
	dec bc			;6ca1
	nop			;6ca2
	nop			;6ca3
	nop			;6ca4
	nop			;6ca5
	nop			;6ca6
	nop			;6ca7
	ld l,e			;6ca8
	ld bc,00000h		;6ca9
	nop			;6cac
	nop			;6cad
	nop			;6cae
	nop			;6caf
	ld l,e			;6cb0
	ld bc,00000h		;6cb1
	nop			;6cb4
	nop			;6cb5
	ld bc,00000h		;6cb6
	nop			;6cb9
	nop			;6cba
	nop			;6cbb
	nop			;6cbc
	nop			;6cbd
	nop			;6cbe
	nop			;6cbf
	ld l,e			;6cc0
	ld bc,00000h		;6cc1
	nop			;6cc4
	nop			;6cc5
	nop			;6cc6
	nop			;6cc7
	ld l,e			;6cc8
	ld bc,00000h		;6cc9
	nop			;6ccc
	nop			;6ccd
	inc bc			;6cce
	ld a,(de)		;6ccf
	nop			;6cd0
	nop			;6cd1
	nop			;6cd2
	nop			;6cd3
	nop			;6cd4
	nop			;6cd5
	nop			;6cd6
	nop			;6cd7
	nop			;6cd8
	nop			;6cd9
	nop			;6cda
	nop			;6cdb
	nop			;6cdc
	nop			;6cdd
	nop			;6cde
	nop			;6cdf
	nop			;6ce0
	nop			;6ce1
	nop			;6ce2
	nop			;6ce3
	nop			;6ce4
	nop			;6ce5
	nop			;6ce6
	nop			;6ce7
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
	rlca			;6d00
	dec bc			;6d01
	nop			;6d02
	nop			;6d03
	nop			;6d04
	nop			;6d05
	nop			;6d06
	nop			;6d07
	ld l,e			;6d08
	ld bc,00001h		;6d09
	ld h,c			;6d0c
	nop			;6d0d
	nop			;6d0e
	nop			;6d0f
	nop			;6d10
	nop			;6d11
	nop			;6d12
	nop			;6d13
	nop			;6d14
	nop			;6d15
	nop			;6d16
	nop			;6d17
	rlca			;6d18
	dec bc			;6d19
	nop			;6d1a
	nop			;6d1b
	nop			;6d1c
	nop			;6d1d
	nop			;6d1e
	nop			;6d1f
	ld l,e			;6d20
	ld bc,00001h		;6d21
	ld h,c			;6d24
	nop			;6d25
	nop			;6d26
	nop			;6d27
	ld l,e			;6d28
	ld bc,00000h		;6d29
	nop			;6d2c
	nop			;6d2d
	nop			;6d2e
	nop			;6d2f
	inc de			;6d30
	dec bc			;6d31
	nop			;6d32
	nop			;6d33
	nop			;6d34
	nop			;6d35
	nop			;6d36
	nop			;6d37
	nop			;6d38
	nop			;6d39
	ld (bc),a		;6d3a
	nop			;6d3b
	nop			;6d3c
	nop			;6d3d
	nop			;6d3e
	nop			;6d3f
	ld l,e			;6d40
	ld bc,00000h		;6d41
	nop			;6d44
	nop			;6d45
	ld bc,00000h		;6d46
	nop			;6d49
	ld h,e			;6d4a
	ld (bc),a		;6d4b
	ld h,e			;6d4c
	ld (bc),a		;6d4d
	ld h,e			;6d4e
	ld (bc),a		;6d4f
	ld h,e			;6d50
	ld (bc),a		;6d51
	inc bc			;6d52
	nop			;6d53
	nop			;6d54
	nop			;6d55
	nop			;6d56
	nop			;6d57
	nop			;6d58
	nop			;6d59
	nop			;6d5a
	nop			;6d5b
	nop			;6d5c
	nop			;6d5d
	nop			;6d5e
	nop			;6d5f
	rlca			;6d60
	dec bc			;6d61
	ld h,c			;6d62
	nop			;6d63
	ld h,c			;6d64
	nop			;6d65
	ld hl,(0310fh)		;6d66
	ld b,001h		;6d69
	nop			;6d6b
	nop			;6d6c
	nop			;6d6d
	nop			;6d6e
	nop			;6d6f
	nop			;6d70
	nop			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	nop			;6d76
	nop			;6d77
	nop			;6d78
	nop			;6d79
	nop			;6d7a
	nop			;6d7b
	nop			;6d7c
	nop			;6d7d
	jr z,l6d8fh		;6d7e
	cpl			;6d80
	ld b,002h		;6d81
	nop			;6d83
	nop			;6d84
	nop			;6d85
	ld hl,(03108h)		;6d86
	inc b			;6d89
	nop			;6d8a
	nop			;6d8b
	nop			;6d8c
	nop			;6d8d
	ld (bc),a		;6d8e
l6d8fh:
	ld a,(de)		;6d8f
	nop			;6d90
	nop			;6d91
	nop			;6d92
	nop			;6d93
	nop			;6d94
	nop			;6d95
	nop			;6d96
	nop			;6d97
	nop			;6d98
	nop			;6d99
	nop			;6d9a
	nop			;6d9b
	nop			;6d9c
	nop			;6d9d
	nop			;6d9e
	nop			;6d9f
	nop			;6da0
	nop			;6da1
	nop			;6da2
	nop			;6da3
	nop			;6da4
	nop			;6da5
	nop			;6da6
	nop			;6da7
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
	ld bc,0000bh		;6dc0
	nop			;6dc3
	nop			;6dc4
	nop			;6dc5
	dec h			;6dc6
	rrca			;6dc7
	add hl,hl		;6dc8
	ld b,001h		;6dc9
	dec d			;6dcb
	ld h,c			;6dcc
	nop			;6dcd
	jr z,l6dd8h		;6dce
	cpl			;6dd0
	inc b			;6dd1
	daa			;6dd2
	rrca			;6dd3
	ld hl,(00006h)		;6dd4
	nop			;6dd7
l6dd8h:
	ld bc,0000bh		;6dd8
	nop			;6ddb
	nop			;6ddc
	nop			;6ddd
	ld h,a			;6dde
	ld (bc),a		;6ddf
	ld h,a			;6de0
	ld (bc),a		;6de1
	inc bc			;6de2
	nop			;6de3
	nop			;6de4
	nop			;6de5
	dec h			;6de6
	ex af,af'		;6de7
	add hl,hl		;6de8
	inc b			;6de9
	nop			;6dea
	nop			;6deb
	nop			;6dec
	nop			;6ded
	ld bc,00d00h		;6dee
	dec bc			;6df1
	daa			;6df2
	ex af,af'		;6df3
	ld hl,(00004h)		;6df4
	nop			;6df7
	nop			;6df8
	nop			;6df9
	inc bc			;6dfa
	nop			;6dfb
	nop			;6dfc
	nop			;6dfd
	ld h,a			;6dfe
	ld (bc),a		;6dff
	ld h,a			;6e00
	ld (bc),a		;6e01
	nop			;6e02
	nop			;6e03
	nop			;6e04
	nop			;6e05
	nop			;6e06
	nop			;6e07
	nop			;6e08
	nop			;6e09
	nop			;6e0a
	nop			;6e0b
	nop			;6e0c
	nop			;6e0d
	nop			;6e0e
	nop			;6e0f
	nop			;6e10
	nop			;6e11
	ld (bc),a		;6e12
	nop			;6e13
	nop			;6e14
	nop			;6e15
	nop			;6e16
	nop			;6e17
	nop			;6e18
	nop			;6e19
	nop			;6e1a
	nop			;6e1b
	nop			;6e1c
	nop			;6e1d
	ld bc,00100h		;6e1e
	dec bc			;6e21
	nop			;6e22
	nop			;6e23
	nop			;6e24
	nop			;6e25
	nop			;6e26
	nop			;6e27
	nop			;6e28
	nop			;6e29
	nop			;6e2a
	nop			;6e2b
	nop			;6e2c
	nop			;6e2d
	ld l,h			;6e2e
	ld bc,0016ch		;6e2f
	nop			;6e32
	nop			;6e33
	nop			;6e34
	nop			;6e35
	ld bc,00000h		;6e36
	nop			;6e39
	ld l,h			;6e3a
	ld bc,0016ch		;6e3b
	nop			;6e3e
	nop			;6e3f
	nop			;6e40
	nop			;6e41
	nop			;6e42
	nop			;6e43
	nop			;6e44
	nop			;6e45
	ld l,h			;6e46
	ld bc,0016ch		;6e47
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	inc bc			;6e4e
	ld a,(de)		;6e4f
	nop			;6e50
	nop			;6e51
	nop			;6e52
	nop			;6e53
	nop			;6e54
	nop			;6e55
	nop			;6e56
	nop			;6e57
	nop			;6e58
	nop			;6e59
	nop			;6e5a
	nop			;6e5b
	nop			;6e5c
	nop			;6e5d
	nop			;6e5e
	nop			;6e5f
	nop			;6e60
	nop			;6e61
	nop			;6e62
	nop			;6e63
	nop			;6e64
	nop			;6e65
	nop			;6e66
	nop			;6e67
	nop			;6e68
	nop			;6e69
	nop			;6e6a
	nop			;6e6b
	nop			;6e6c
	nop			;6e6d
	nop			;6e6e
	nop			;6e6f
	nop			;6e70
	nop			;6e71
	nop			;6e72
	nop			;6e73
	nop			;6e74
	nop			;6e75
	nop			;6e76
	nop			;6e77
	nop			;6e78
	nop			;6e79
	nop			;6e7a
	nop			;6e7b
	nop			;6e7c
	nop			;6e7d
	nop			;6e7e
	nop			;6e7f
	ld bc,0000bh		;6e80
	nop			;6e83
	nop			;6e84
	nop			;6e85
	dec h			;6e86
	rrca			;6e87
	ld hl,(00106h)		;6e88
	nop			;6e8b
	nop			;6e8c
	nop			;6e8d
	nop			;6e8e
	nop			;6e8f
	nop			;6e90
	nop			;6e91
	jr z,$+17		;6e92
	inc l			;6e94
	ld b,000h		;6e95
	nop			;6e97
	nop			;6e98
	nop			;6e99
	nop			;6e9a
	nop			;6e9b
	nop			;6e9c
	nop			;6e9d
	ld h,a			;6e9e
	ld (bc),a		;6e9f
	ld h,a			;6ea0
	ld (bc),a		;6ea1
	ld bc,00000h		;6ea2
	nop			;6ea5
	dec h			;6ea6
	ex af,af'		;6ea7
	ld hl,(00004h)		;6ea8
	nop			;6eab
	nop			;6eac
	nop			;6ead
	nop			;6eae
	nop			;6eaf
	dec c			;6eb0
	dec bc			;6eb1
	jr z,l6ebch		;6eb2
	inc l			;6eb4
	inc b			;6eb5
	nop			;6eb6
	nop			;6eb7
	nop			;6eb8
	nop			;6eb9
	ld (bc),a		;6eba
	nop			;6ebb
l6ebch:
	ld h,c			;6ebc
	nop			;6ebd
	ld h,a			;6ebe
	ld (bc),a		;6ebf
	ld h,a			;6ec0
	ld (bc),a		;6ec1
	nop			;6ec2
	nop			;6ec3
	nop			;6ec4
	nop			;6ec5
	ld bc,00000h		;6ec6
	nop			;6ec9
	nop			;6eca
	nop			;6ecb
	nop			;6ecc
	nop			;6ecd
	nop			;6ece
	nop			;6ecf
	nop			;6ed0
	nop			;6ed1
	nop			;6ed2
	nop			;6ed3
	ld bc,0000bh		;6ed4
	nop			;6ed7
	nop			;6ed8
	nop			;6ed9
	nop			;6eda
	nop			;6edb
	nop			;6edc
	nop			;6edd
	ld bc,00000h		;6ede
	nop			;6ee1
	nop			;6ee2
	nop			;6ee3
	nop			;6ee4
	nop			;6ee5
	nop			;6ee6
	nop			;6ee7
	nop			;6ee8
	nop			;6ee9
	nop			;6eea
	nop			;6eeb
	nop			;6eec
	nop			;6eed
	nop			;6eee
	nop			;6eef
	nop			;6ef0
	nop			;6ef1
	nop			;6ef2
	nop			;6ef3
	nop			;6ef4
	nop			;6ef5
	inc bc			;6ef6
	nop			;6ef7
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
	nop			;6f02
	nop			;6f03
	nop			;6f04
	nop			;6f05
	nop			;6f06
	nop			;6f07
	nop			;6f08
	nop			;6f09
	nop			;6f0a
	nop			;6f0b
	nop			;6f0c
	nop			;6f0d
	inc bc			;6f0e
	ld a,(de)		;6f0f
	nop			;6f10
	nop			;6f11
	nop			;6f12
	nop			;6f13
	nop			;6f14
	nop			;6f15
	nop			;6f16
	nop			;6f17
	nop			;6f18
	nop			;6f19
	nop			;6f1a
	nop			;6f1b
	nop			;6f1c
	nop			;6f1d
	nop			;6f1e
	nop			;6f1f
	nop			;6f20
	nop			;6f21
	nop			;6f22
	nop			;6f23
	nop			;6f24
	nop			;6f25
	nop			;6f26
	nop			;6f27
	nop			;6f28
	nop			;6f29
	nop			;6f2a
	nop			;6f2b
	nop			;6f2c
	nop			;6f2d
	nop			;6f2e
	nop			;6f2f
	nop			;6f30
	nop			;6f31
	nop			;6f32
	nop			;6f33
	nop			;6f34
	nop			;6f35
	nop			;6f36
	nop			;6f37
	nop			;6f38
	nop			;6f39
	nop			;6f3a
	nop			;6f3b
	nop			;6f3c
	nop			;6f3d
	nop			;6f3e
	nop			;6f3f
	ld b,00bh		;6f40
	nop			;6f42
	nop			;6f43
	nop			;6f44
	nop			;6f45
	nop			;6f46
	nop			;6f47
	nop			;6f48
	nop			;6f49
	ld bc,l6100h		;6f4a
	nop			;6f4d
	nop			;6f4e
	nop			;6f4f
	nop			;6f50
	nop			;6f51
	nop			;6f52
	nop			;6f53
	ld l,h			;6f54
	ld bc,00000h		;6f55
	nop			;6f58
	nop			;6f59
	nop			;6f5a
	nop			;6f5b
	nop			;6f5c
	nop			;6f5d
	nop			;6f5e
	nop			;6f5f
	nop			;6f60
	nop			;6f61
	inc bc			;6f62
	nop			;6f63
	nop			;6f64
	nop			;6f65
	nop			;6f66
	nop			;6f67
	nop			;6f68
	nop			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	nop			;6f6d
	ld bc,00600h		;6f6e
	dec bc			;6f71
	nop			;6f72
	nop			;6f73
	ld l,h			;6f74
	ld bc,00000h		;6f75
	nop			;6f78
	nop			;6f79
	nop			;6f7a
	nop			;6f7b
	ld (de),a		;6f7c
	dec bc			;6f7d
	nop			;6f7e
	nop			;6f7f
	nop			;6f80
	nop			;6f81
	nop			;6f82
	nop			;6f83
	ld l,h			;6f84
	ld bc,00003h		;6f85
	nop			;6f88
	nop			;6f89
	nop			;6f8a
	nop			;6f8b
	nop			;6f8c
	nop			;6f8d
	nop			;6f8e
	nop			;6f8f
	nop			;6f90
	nop			;6f91
	ld (bc),a		;6f92
	nop			;6f93
	nop			;6f94
	nop			;6f95
	nop			;6f96
	nop			;6f97
	nop			;6f98
	nop			;6f99
	nop			;6f9a
	nop			;6f9b
	nop			;6f9c
	nop			;6f9d
	ld bc,00600h		;6f9e
	dec bc			;6fa1
	nop			;6fa2
	nop			;6fa3
	ld l,h			;6fa4
	ld bc,00367h		;6fa5
	nop			;6fa8
	nop			;6fa9
	nop			;6faa
	nop			;6fab
	nop			;6fac
	nop			;6fad
	nop			;6fae
	nop			;6faf
	nop			;6fb0
	nop			;6fb1
	nop			;6fb2
	nop			;6fb3
	ld l,h			;6fb4
	ld bc,00001h		;6fb5
	nop			;6fb8
	nop			;6fb9
	nop			;6fba
	nop			;6fbb
	nop			;6fbc
	nop			;6fbd
	nop			;6fbe
	nop			;6fbf
	nop			;6fc0
	nop			;6fc1
	nop			;6fc2
	nop			;6fc3
	nop			;6fc4
	nop			;6fc5
	ld h,a			;6fc6
	inc bc			;6fc7
	nop			;6fc8
	nop			;6fc9
	nop			;6fca
	nop			;6fcb
	nop			;6fcc
	nop			;6fcd
	inc bc			;6fce
	ld a,(de)		;6fcf
	nop			;6fd0
	nop			;6fd1
	nop			;6fd2
	nop			;6fd3
	nop			;6fd4
	nop			;6fd5
	nop			;6fd6
	nop			;6fd7
	nop			;6fd8
	nop			;6fd9
	nop			;6fda
	nop			;6fdb
	nop			;6fdc
	nop			;6fdd
	nop			;6fde
	nop			;6fdf
	nop			;6fe0
	nop			;6fe1
	nop			;6fe2
	nop			;6fe3
	nop			;6fe4
	nop			;6fe5
	nop			;6fe6
	nop			;6fe7
	nop			;6fe8
	nop			;6fe9
	nop			;6fea
	nop			;6feb
	nop			;6fec
	nop			;6fed
	nop			;6fee
	nop			;6fef
	nop			;6ff0
	nop			;6ff1
	nop			;6ff2
	nop			;6ff3
	nop			;6ff4
	nop			;6ff5
	nop			;6ff6
	nop			;6ff7
	nop			;6ff8
	nop			;6ff9
	nop			;6ffa
	nop			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	nop			;6fff
	rlca			;7000
	rrca			;7001
	nop			;7002
	nop			;7003
	nop			;7004
	nop			;7005
	ld h,a			;7006
	inc b			;7007
	nop			;7008
	nop			;7009
	ld bc,l6100h		;700a
	nop			;700d
	nop			;700e
	nop			;700f
	nop			;7010
	nop			;7011
	nop			;7012
	nop			;7013
	ld l,h			;7014
	ld bc,00000h		;7015
	rlca			;7018
	dec bc			;7019
	nop			;701a
	nop			;701b
	nop			;701c
	nop			;701d
	ld h,a			;701e
	rlca			;701f
	nop			;7020
	nop			;7021
	inc bc			;7022
	nop			;7023
	ld h,c			;7024
	nop			;7025
	ld h,a			;7026
	inc b			;7027
	nop			;7028
	nop			;7029
	nop			;702a
	nop			;702b
	nop			;702c
	nop			;702d
	ld bc,01300h		;702e
	dec bc			;7031
	nop			;7032
	nop			;7033
	ld l,h			;7034
	ld bc,00f2bh		;7035
	cpl			;7038
	ld b,003h		;7039
	nop			;703b
	nop			;703c
	nop			;703d
	ld h,a			;703e
	rlca			;703f
	nop			;7040
	nop			;7041
	nop			;7042
	nop			;7043
	nop			;7044
	nop			;7045
	nop			;7046
	nop			;7047
	nop			;7048
	nop			;7049
	nop			;704a
	nop			;704b
	nop			;704c
	nop			;704d
	ld h,h			;704e
	ld (bc),a		;704f
	ld h,h			;7050
	ld (bc),a		;7051
	ld (bc),a		;7052
	nop			;7053
	nop			;7054
	nop			;7055
	dec hl			;7056
	ex af,af'		;7057
	cpl			;7058
	inc b			;7059
	nop			;705a
	nop			;705b
	nop			;705c
	nop			;705d
	ld bc,00700h		;705e
	dec bc			;7061
	nop			;7062
	nop			;7063
	nop			;7064
	nop			;7065
	ld hl,(02d0fh)		;7066
	ld b,000h		;7069
	nop			;706b
	nop			;706c
	nop			;706d
	ld h,h			;706e
	ld (bc),a		;706f
	ld h,h			;7070
	ld (bc),a		;7071
	nop			;7072
	nop			;7073
	nop			;7074
	nop			;7075
	ld bc,00000h		;7076
	nop			;7079
	nop			;707a
	nop			;707b
	nop			;707c
	nop			;707d
	jr z,l708fh		;707e
	dec hl			;7080
	ld b,000h		;7081
	nop			;7083
	nop			;7084
	nop			;7085
	ld hl,(02d08h)		;7086
	inc b			;7089
	nop			;708a
	nop			;708b
	nop			;708c
	nop			;708d
	inc bc			;708e
l708fh:
	ld a,(de)		;708f
	nop			;7090
	nop			;7091
	nop			;7092
	nop			;7093
	nop			;7094
	nop			;7095
	nop			;7096
	nop			;7097
	nop			;7098
	nop			;7099
	nop			;709a
	nop			;709b
	nop			;709c
	nop			;709d
	nop			;709e
	nop			;709f
	nop			;70a0
	nop			;70a1
	nop			;70a2
	nop			;70a3
	nop			;70a4
	nop			;70a5
	nop			;70a6
	nop			;70a7
	nop			;70a8
	nop			;70a9
	nop			;70aa
	nop			;70ab
	nop			;70ac
	nop			;70ad
	nop			;70ae
	nop			;70af
	nop			;70b0
	nop			;70b1
	nop			;70b2
	nop			;70b3
	nop			;70b4
	nop			;70b5
	nop			;70b6
	nop			;70b7
	nop			;70b8
	nop			;70b9
	nop			;70ba
	nop			;70bb
	nop			;70bc
	nop			;70bd
	nop			;70be
	nop			;70bf
	ld bc,l610bh		;70c0
	nop			;70c3
	ld h,c			;70c4
	nop			;70c5
	dec h			;70c6
	rrca			;70c7
	add hl,hl		;70c8
	ld b,001h		;70c9
	dec d			;70cb
	ld h,c			;70cc
	nop			;70cd
	nop			;70ce
	nop			;70cf
	nop			;70d0
	nop			;70d1
	daa			;70d2
	rrca			;70d3
	ld hl,(00006h)		;70d4
	nop			;70d7
	ld bc,0000bh		;70d8
	nop			;70db
	dec h			;70dc
	dec c			;70dd
	ld h,a			;70de
	ld (bc),a		;70df
	ld h,a			;70e0
	ld (bc),a		;70e1
	inc bc			;70e2
	nop			;70e3
	nop			;70e4
	nop			;70e5
	ld h,d			;70e6
	ld h,027h		;70e7
	dec c			;70e9
	nop			;70ea
	nop			;70eb
	nop			;70ec
	nop			;70ed
	ld bc,00d00h		;70ee
	dec bc			;70f1
	dec h			;70f2
	rlca			;70f3
	dec h			;70f4
	dec c			;70f5
	nop			;70f6
	nop			;70f7
	nop			;70f8
	nop			;70f9
	inc bc			;70fa
	nop			;70fb
	nop			;70fc
	nop			;70fd
	daa			;70fe
	rlca			;70ff
	daa			;7100
	dec c			;7101
	nop			;7102
	nop			;7103
	nop			;7104
	nop			;7105
	nop			;7106
	nop			;7107
	nop			;7108
	nop			;7109
	dec h			;710a
	rlca			;710b
	ld h,a			;710c
	ld b,000h		;710d
	nop			;710f
	nop			;7110
	nop			;7111
	ld (bc),a		;7112
	nop			;7113
	nop			;7114
	nop			;7115
	daa			;7116
	rlca			;7117
	nop			;7118
	nop			;7119
	nop			;711a
	nop			;711b
	nop			;711c
	nop			;711d
	ld bc,00100h		;711e
	dec bc			;7121
	ld h,a			;7122
	ld b,06ch		;7123
	ld bc,00000h		;7125
	nop			;7128
	nop			;7129
	nop			;712a
	nop			;712b
	nop			;712c
	nop			;712d
	nop			;712e
	nop			;712f
	ld l,h			;7130
	ld bc,00000h		;7131
	nop			;7134
	nop			;7135
	ld bc,00000h		;7136
	nop			;7139
	ld l,h			;713a
	ld bc,0016ch		;713b
	nop			;713e
	nop			;713f
	nop			;7140
	nop			;7141
	nop			;7142
	nop			;7143
	nop			;7144
	nop			;7145
	ld l,h			;7146
	ld bc,0016ch		;7147
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	inc bc			;714e
	ld a,(de)		;714f
	nop			;7150
	nop			;7151
	nop			;7152
	nop			;7153
	nop			;7154
	nop			;7155
	nop			;7156
	nop			;7157
	nop			;7158
	nop			;7159
	nop			;715a
	nop			;715b
	nop			;715c
	nop			;715d
	nop			;715e
	nop			;715f
	nop			;7160
	nop			;7161
	nop			;7162
	nop			;7163
	nop			;7164
	nop			;7165
	nop			;7166
	nop			;7167
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
	ld bc,l6c0bh		;7180
	ld bc,0016ch		;7183
	dec h			;7186
	rrca			;7187
	ld hl,(00106h)		;7188
	nop			;718b
	nop			;718c
	nop			;718d
	ld l,h			;718e
	ld bc,00061h		;718f
	jr z,$+17		;7192
	inc l			;7194
	ld b,000h		;7195
	nop			;7197
	nop			;7198
	nop			;7199
	ld l,h			;719a
	ld bc,00d1eh		;719b
	ld h,a			;719e
	ld (bc),a		;719f
	ld h,a			;71a0
	ld (bc),a		;71a1
	ld bc,00000h		;71a2
	nop			;71a5
	ld h,c			;71a6
	nop			;71a7
	jr nz,l71b7h		;71a8
	nop			;71aa
	nop			;71ab
	nop			;71ac
	nop			;71ad
	nop			;71ae
	nop			;71af
	dec c			;71b0
	dec bc			;71b1
	ld e,007h		;71b2
	ld e,00dh		;71b4
	nop			;71b6
l71b7h:
	nop			;71b7
	nop			;71b8
	nop			;71b9
	ld (bc),a		;71ba
	nop			;71bb
	ld h,c			;71bc
	nop			;71bd
	jr nz,$+9		;71be
	jr nz,l71cfh		;71c0
	nop			;71c2
	nop			;71c3
	nop			;71c4
	nop			;71c5
	ld bc,00000h		;71c6
	nop			;71c9
	ld e,005h		;71ca
	ld h,a			;71cc
	ld b,000h		;71cd
l71cfh:
	nop			;71cf
	nop			;71d0
	nop			;71d1
	nop			;71d2
	nop			;71d3
	ld bc,0200bh		;71d4
	dec b			;71d7
	nop			;71d8
	nop			;71d9
	nop			;71da
	nop			;71db
	nop			;71dc
	nop			;71dd
	ld bc,00000h		;71de
	nop			;71e1
	ld h,a			;71e2
	ld b,06ch		;71e3
	ld bc,00000h		;71e5
	nop			;71e8
	nop			;71e9
	nop			;71ea
	nop			;71eb
	nop			;71ec
	nop			;71ed
	nop			;71ee
	nop			;71ef
	ld l,h			;71f0
	ld bc,00000h		;71f1
	nop			;71f4
	nop			;71f5
	inc bc			;71f6
	nop			;71f7
	nop			;71f8
	nop			;71f9
	ld l,h			;71fa
	ld bc,0016ch		;71fb
	nop			;71fe
	nop			;71ff
	nop			;7200
	nop			;7201
	nop			;7202
	nop			;7203
	nop			;7204
	nop			;7205
	ld l,h			;7206
	ld bc,0016ch		;7207
	nop			;720a
	nop			;720b
	nop			;720c
	nop			;720d
	inc bc			;720e
	ld a,(de)		;720f
	nop			;7210
	nop			;7211
	nop			;7212
	nop			;7213
	nop			;7214
	nop			;7215
	nop			;7216
	nop			;7217
	nop			;7218
	nop			;7219
	nop			;721a
	nop			;721b
	nop			;721c
	nop			;721d
	nop			;721e
	nop			;721f
	nop			;7220
	nop			;7221
	nop			;7222
	nop			;7223
	nop			;7224
	nop			;7225
	nop			;7226
	nop			;7227
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
	ld b,00bh		;7240
	ld l,h			;7242
	ld bc,0016ch		;7243
	dec hl			;7246
	rrca			;7247
	rra			;7248
	nop			;7249
	ld bc,l6100h		;724a
	nop			;724d
	ld l,h			;724e
	ld bc,00061h		;724f
	ld h,a			;7252
	ld (bc),a		;7253
	ld l,e			;7254
	ld bc,00000h		;7255
	nop			;7258
	nop			;7259
	ld l,h			;725a
	ld bc,00000h		;725b
	nop			;725e
	nop			;725f
	ld h,a			;7260
	djnz l7266h		;7261
	nop			;7263
	nop			;7264
	nop			;7265
l7266h:
	ld h,c			;7266
	nop			;7267
	nop			;7268
	nop			;7269
	nop			;726a
	nop			;726b
	nop			;726c
	nop			;726d
	ld bc,00600h		;726e
	dec bc			;7271
	nop			;7272
	nop			;7273
	nop			;7274
	nop			;7275
	nop			;7276
	nop			;7277
	ld l,e			;7278
	ld bc,00000h		;7279
	ld (de),a		;727c
	dec bc			;727d
	nop			;727e
	nop			;727f
	nop			;7280
	nop			;7281
	nop			;7282
	nop			;7283
	nop			;7284
	nop			;7285
	inc bc			;7286
	nop			;7287
	nop			;7288
	nop			;7289
	nop			;728a
	nop			;728b
	nop			;728c
	nop			;728d
	nop			;728e
	nop			;728f
	ld l,e			;7290
	ld bc,00002h		;7291
	nop			;7294
	nop			;7295
	nop			;7296
	nop			;7297
	nop			;7298
	nop			;7299
	nop			;729a
	nop			;729b
	nop			;729c
	nop			;729d
	ld bc,00600h		;729e
	dec bc			;72a1
	nop			;72a2
	nop			;72a3
	nop			;72a4
	nop			;72a5
	nop			;72a6
	nop			;72a7
	ld l,e			;72a8
	ld bc,00000h		;72a9
	nop			;72ac
	nop			;72ad
	nop			;72ae
	nop			;72af
	nop			;72b0
	nop			;72b1
	nop			;72b2
	nop			;72b3
	nop			;72b4
	nop			;72b5
	ld bc,00000h		;72b6
	nop			;72b9
	nop			;72ba
	nop			;72bb
	nop			;72bc
	nop			;72bd
	nop			;72be
	nop			;72bf
	ld l,e			;72c0
	ld bc,00000h		;72c1
	nop			;72c4
	nop			;72c5
	nop			;72c6
	nop			;72c7
	nop			;72c8
	nop			;72c9
	nop			;72ca
	nop			;72cb
	nop			;72cc
	nop			;72cd
	inc bc			;72ce
	ld a,(de)		;72cf
	nop			;72d0
	nop			;72d1
	nop			;72d2
	nop			;72d3
	nop			;72d4
	nop			;72d5
	nop			;72d6
	nop			;72d7
	nop			;72d8
	nop			;72d9
	nop			;72da
	nop			;72db
	nop			;72dc
	nop			;72dd
	nop			;72de
	nop			;72df
	nop			;72e0
	nop			;72e1
	nop			;72e2
	nop			;72e3
	nop			;72e4
	nop			;72e5
	nop			;72e6
	nop			;72e7
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
	rlca			;7300
	dec bc			;7301
	nop			;7302
	nop			;7303
	inc l			;7304
	nop			;7305
	nop			;7306
	nop			;7307
	ld l,e			;7308
	ld bc,00001h		;7309
	ld h,c			;730c
	nop			;730d
	nop			;730e
	nop			;730f
	ld h,a			;7310
	inc b			;7311
	nop			;7312
	nop			;7313
	nop			;7314
	nop			;7315
	nop			;7316
	nop			;7317
	rlca			;7318
	dec bc			;7319
	inc l			;731a
	nop			;731b
	ld l,e			;731c
	ld bc,00000h		;731d
	ld l,e			;7320
	ld bc,00001h		;7321
	ld h,c			;7324
	nop			;7325
	ld h,a			;7326
	inc b			;7327
	ld l,e			;7328
	ld (bc),a		;7329
	nop			;732a
	nop			;732b
	nop			;732c
	nop			;732d
	nop			;732e
	nop			;732f
	inc de			;7330
	dec bc			;7331
	ld l,e			;7332
	ld bc,00000h		;7333
	nop			;7336
	nop			;7337
	nop			;7338
	nop			;7339
	ld (bc),a		;733a
	nop			;733b
	nop			;733c
	nop			;733d
	nop			;733e
	nop			;733f
	ld l,e			;7340
	ld bc,00000h		;7341
	nop			;7344
	nop			;7345
	ld bc,00000h		;7346
	nop			;7349
	ld l,e			;734a
	ld bc,00000h		;734b
	ld h,e			;734e
	ld (bc),a		;734f
	ld h,e			;7350
	ld (bc),a		;7351
	inc bc			;7352
	nop			;7353
	nop			;7354
	nop			;7355
	ld l,e			;7356
	ld bc,0016bh		;7357
	nop			;735a
	nop			;735b
	nop			;735c
	nop			;735d
	nop			;735e
	nop			;735f
	rlca			;7360
	dec bc			;7361
	nop			;7362
	nop			;7363
	ld l,e			;7364
	ld bc,00f2ah		;7365
	ld sp,00106h		;7368
	nop			;736b
	nop			;736c
	nop			;736d
	ld l,e			;736e
	ld bc,l5066h		;736f
	nop			;7372
	nop			;7373
	nop			;7374
	nop			;7375
	nop			;7376
	nop			;7377
	nop			;7378
	nop			;7379
	nop			;737a
	nop			;737b
	nop			;737c
	nop			;737d
	jr z,l738fh		;737e
	cpl			;7380
	ld b,002h		;7381
	nop			;7383
	nop			;7384
	nop			;7385
	ld h,(hl)		;7386
	ld d,b			;7387
	nop			;7388
	nop			;7389
	nop			;738a
	nop			;738b
	nop			;738c
	nop			;738d
	ld (bc),a		;738e
l738fh:
	ld a,(de)		;738f
	nop			;7390
	nop			;7391
	nop			;7392
	nop			;7393
	nop			;7394
	nop			;7395
	nop			;7396
	nop			;7397
	nop			;7398
	nop			;7399
	nop			;739a
	nop			;739b
	nop			;739c
	nop			;739d
	nop			;739e
	nop			;739f
	nop			;73a0
	nop			;73a1
	nop			;73a2
	nop			;73a3
	nop			;73a4
	nop			;73a5
	nop			;73a6
	nop			;73a7
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
	ld bc,00d0bh		;73c0
	dec c			;73c3
	add hl,de		;73c4
	dec c			;73c5
	ld h,d			;73c6
	jr nc,l73e2h		;73c7
	rlca			;73c9
	ld bc,l6115h		;73ca
	nop			;73cd
	ld h,c			;73ce
	nop			;73cf
	nop			;73d0
	nop			;73d1
	add hl,de		;73d2
	dec b			;73d3
	nop			;73d4
	nop			;73d5
	nop			;73d6
	nop			;73d7
	ld bc,00d0bh		;73d8
	dec c			;73db
	ld h,a			;73dc
	djnz $+109		;73dd
	ld (bc),a		;73df
	nop			;73e0
	nop			;73e1
l73e2h:
	inc bc			;73e2
	nop			;73e3
	nop			;73e4
	nop			;73e5
	ld h,c			;73e6
	nop			;73e7
	nop			;73e8
	nop			;73e9
	ld h,d			;73ea
	cpl			;73eb
	nop			;73ec
	nop			;73ed
	ld bc,00d00h		;73ee
	dec bc			;73f1
	ld bc,0000dh		;73f2
	nop			;73f5
	ld l,e			;73f6
	ld (bc),a		;73f7
	nop			;73f8
	nop			;73f9
	inc bc			;73fa
	nop			;73fb
	nop			;73fc
	nop			;73fd
	ld h,c			;73fe
	nop			;73ff
	nop			;7400
	nop			;7401
	ld h,d			;7402
	ld l,000h		;7403
	nop			;7405
	nop			;7406
	nop			;7407
	nop			;7408
	nop			;7409
	ld bc,0000dh		;740a
	nop			;740d
	ld l,e			;740e
	ld (bc),a		;740f
	nop			;7410
	nop			;7411
	ld (bc),a		;7412
	nop			;7413
	nop			;7414
	nop			;7415
	ld h,c			;7416
	nop			;7417
	nop			;7418
	nop			;7419
	ld h,d			;741a
	dec l			;741b
	nop			;741c
	nop			;741d
	ld bc,00100h		;741e
	dec bc			;7421
	dec c			;7422
	dec c			;7423
	nop			;7424
	nop			;7425
	ld l,e			;7426
	ld bc,00000h		;7427
	nop			;742a
	nop			;742b
	nop			;742c
	nop			;742d
	ld h,c			;742e
	nop			;742f
	ld l,h			;7430
	ld bc,02c62h		;7431
	nop			;7434
	nop			;7435
	ld bc,00000h		;7436
	nop			;7439
	nop			;743a
	nop			;743b
	nop			;743c
	nop			;743d
	ld l,e			;743e
	ld bc,00000h		;743f
	nop			;7442
	nop			;7443
	nop			;7444
	nop			;7445
	nop			;7446
	nop			;7447
	ld l,h			;7448
	ld bc,02b62h		;7449
	nop			;744c
	nop			;744d
	inc bc			;744e
	ld a,(de)		;744f
	nop			;7450
	nop			;7451
	nop			;7452
	nop			;7453
	nop			;7454
	nop			;7455
	nop			;7456
	nop			;7457
	nop			;7458
	nop			;7459
	nop			;745a
	nop			;745b
	nop			;745c
	nop			;745d
	nop			;745e
	nop			;745f
	nop			;7460
	nop			;7461
	nop			;7462
	nop			;7463
	nop			;7464
	nop			;7465
	nop			;7466
	nop			;7467
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
	ld bc,00d0bh		;7480
	dec c			;7483
	nop			;7484
	nop			;7485
	ld l,e			;7486
	ld bc,00000h		;7487
	ld bc,00000h		;748a
	nop			;748d
	ld h,c			;748e
	nop			;748f
	ld l,h			;7490
	ld bc,02a62h		;7491
	nop			;7494
	nop			;7495
	nop			;7496
	nop			;7497
	nop			;7498
	nop			;7499
	dec c			;749a
	dec c			;749b
	nop			;749c
	nop			;749d
	ld l,e			;749e
	ld bc,00000h		;749f
	ld bc,00000h		;74a2
	nop			;74a5
	ld h,c			;74a6
	nop			;74a7
	ld l,h			;74a8
	ld bc,02962h		;74a9
	nop			;74ac
	nop			;74ad
	nop			;74ae
	nop			;74af
	dec c			;74b0
	dec bc			;74b1
	dec c			;74b2
	dec c			;74b3
	nop			;74b4
	nop			;74b5
	ld l,e			;74b6
	ld bc,00000h		;74b7
	ld (bc),a		;74ba
	nop			;74bb
	ld h,c			;74bc
	nop			;74bd
	ld h,c			;74be
	nop			;74bf
	ld l,h			;74c0
	ld bc,02862h		;74c1
	nop			;74c4
	nop			;74c5
	ld bc,00000h		;74c6
	nop			;74c9
	dec c			;74ca
	dec c			;74cb
	nop			;74cc
	nop			;74cd
	ld l,h			;74ce
	ld (bc),a		;74cf
	nop			;74d0
	nop			;74d1
	nop			;74d2
	nop			;74d3
	ld bc,l610bh		;74d4
	nop			;74d7
	nop			;74d8
	nop			;74d9
	ld h,d			;74da
	daa			;74db
	ld l,h			;74dc
	ld bc,00001h		;74dd
	nop			;74e0
	nop			;74e1
	nop			;74e2
	nop			;74e3
	nop			;74e4
	nop			;74e5
	ld l,h			;74e6
	ld (bc),a		;74e7
	ld l,h			;74e8
	ld bc,00000h		;74e9
	nop			;74ec
	nop			;74ed
	nop			;74ee
	nop			;74ef
	nop			;74f0
	nop			;74f1
	ld h,d			;74f2
	jr z,$+110		;74f3
	ld bc,00003h		;74f5
	nop			;74f8
	nop			;74f9
	nop			;74fa
	nop			;74fb
	nop			;74fc
	nop			;74fd
	ld l,h			;74fe
	ld (bc),a		;74ff
	ld l,h			;7500
	ld bc,00000h		;7501
	nop			;7504
	nop			;7505
	nop			;7506
	nop			;7507
	nop			;7508
	nop			;7509
	ld h,d			;750a
	add hl,hl		;750b
	ld l,h			;750c
	ld bc,01a03h		;750d
	nop			;7510
	nop			;7511
	nop			;7512
	nop			;7513
	nop			;7514
	nop			;7515
	nop			;7516
	nop			;7517
	nop			;7518
	nop			;7519
	nop			;751a
	nop			;751b
	nop			;751c
	nop			;751d
	nop			;751e
	nop			;751f
	nop			;7520
	nop			;7521
	nop			;7522
	nop			;7523
	nop			;7524
	nop			;7525
	nop			;7526
	nop			;7527
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
	ld b,00bh		;7540
	dec c			;7542
	dec c			;7543
	ld hl,(02a0dh)		;7544
	inc bc			;7547
	ld hl,(00107h)		;7548
	nop			;754b
	ld h,c			;754c
	nop			;754d
	ld h,c			;754e
	nop			;754f
	nop			;7550
	nop			;7551
	ld h,a			;7552
	inc bc			;7553
	nop			;7554
	nop			;7555
	nop			;7556
	nop			;7557
	nop			;7558
	nop			;7559
	ld bc,l670dh		;755a
	ld b,06bh		;755d
	ld bc,00000h		;755f
	inc bc			;7562
	nop			;7563
	nop			;7564
	nop			;7565
	ld h,c			;7566
	nop			;7567
	nop			;7568
	nop			;7569
	ld h,d			;756a
	ld hl,(00000h)		;756b
	ld bc,00600h		;756e
	dec bc			;7571
	dec c			;7572
	dec c			;7573
	nop			;7574
	nop			;7575
	ld l,e			;7576
	ld (bc),a		;7577
	nop			;7578
	nop			;7579
	nop			;757a
	nop			;757b
	ld (de),a		;757c
	dec bc			;757d
	ld h,c			;757e
	nop			;757f
	nop			;7580
	nop			;7581
	ld h,d			;7582
	dec hl			;7583
	nop			;7584
	nop			;7585
	inc bc			;7586
	nop			;7587
	nop			;7588
	nop			;7589
	ld bc,0000dh		;758a
	nop			;758d
	ld l,e			;758e
	ld (bc),a		;758f
	nop			;7590
	nop			;7591
	ld (bc),a		;7592
	nop			;7593
	nop			;7594
	nop			;7595
	ld h,c			;7596
	nop			;7597
	nop			;7598
	nop			;7599
	ld h,d			;759a
	inc l			;759b
	nop			;759c
	nop			;759d
	ld bc,00600h		;759e
	dec bc			;75a1
	ld bc,0000dh		;75a2
	nop			;75a5
	ld l,e			;75a6
	ld bc,00000h		;75a7
	nop			;75aa
	nop			;75ab
	nop			;75ac
	nop			;75ad
	ld h,c			;75ae
	nop			;75af
	ld l,h			;75b0
	ld bc,02d62h		;75b1
	nop			;75b4
	nop			;75b5
	ld bc,00000h		;75b6
	nop			;75b9
	nop			;75ba
	nop			;75bb
	nop			;75bc
	nop			;75bd
	ld l,e			;75be
	ld bc,00000h		;75bf
	nop			;75c2
	nop			;75c3
	nop			;75c4
	nop			;75c5
	nop			;75c6
	nop			;75c7
	ld l,h			;75c8
	ld bc,02e62h		;75c9
	nop			;75cc
	nop			;75cd
	inc bc			;75ce
	ld a,(de)		;75cf
	nop			;75d0
	nop			;75d1
	nop			;75d2
	nop			;75d3
	nop			;75d4
	nop			;75d5
	nop			;75d6
	nop			;75d7
	nop			;75d8
	nop			;75d9
	nop			;75da
	nop			;75db
	nop			;75dc
	nop			;75dd
	nop			;75de
	nop			;75df
	nop			;75e0
	nop			;75e1
	nop			;75e2
	nop			;75e3
	nop			;75e4
	nop			;75e5
	nop			;75e6
	nop			;75e7
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
	rlca			;7600
	dec bc			;7601
	ld c,00dh		;7602
	nop			;7604
	nop			;7605
	ld l,e			;7606
	ld bc,00000h		;7607
	ld bc,l6100h		;760a
	nop			;760d
	ld h,c			;760e
	nop			;760f
	ld l,h			;7610
	ld bc,02f62h		;7611
	nop			;7614
	nop			;7615
	nop			;7616
	nop			;7617
	rlca			;7618
	dec bc			;7619
	ld c,00dh		;761a
	nop			;761c
	nop			;761d
	ld l,e			;761e
	ld bc,00000h		;761f
	ld bc,l6100h		;7622
	nop			;7625
	ld h,c			;7626
	nop			;7627
	ld l,h			;7628
	ld bc,03062h		;7629
	nop			;762c
	nop			;762d
	nop			;762e
	nop			;762f
	inc de			;7630
	dec bc			;7631
	ld c,00dh		;7632
	nop			;7634
	nop			;7635
	ld l,e			;7636
	ld bc,00000h		;7637
	ld (bc),a		;763a
	nop			;763b
	nop			;763c
	nop			;763d
	ld h,c			;763e
	nop			;763f
	ld l,h			;7640
	ld bc,02f62h		;7641
	nop			;7644
	nop			;7645
	ld bc,00000h		;7646
	nop			;7649
	ld c,00dh		;764a
	nop			;764c
	nop			;764d
	ld l,h			;764e
	ld (bc),a		;764f
	nop			;7650
	nop			;7651
	inc bc			;7652
	nop			;7653
	nop			;7654
	nop			;7655
	ld h,c			;7656
	nop			;7657
	nop			;7658
	nop			;7659
	ld h,d			;765a
	ld l,000h		;765b
	nop			;765d
	nop			;765e
	nop			;765f
	rlca			;7660
	dec bc			;7661
	nop			;7662
	nop			;7663
	nop			;7664
	nop			;7665
	ld l,h			;7666
	ld (bc),a		;7667
	nop			;7668
	nop			;7669
	ld bc,00000h		;766a
	nop			;766d
	nop			;766e
	nop			;766f
	nop			;7670
	nop			;7671
	ld h,d			;7672
	dec l			;7673
	nop			;7674
	nop			;7675
	nop			;7676
	nop			;7677
	nop			;7678
	nop			;7679
	nop			;767a
	nop			;767b
	nop			;767c
	nop			;767d
	ld l,h			;767e
	ld (bc),a		;767f
	ld l,h			;7680
	ld bc,00002h		;7681
	nop			;7684
	nop			;7685
	nop			;7686
	nop			;7687
	nop			;7688
	nop			;7689
	ld h,d			;768a
	inc l			;768b
	ld l,h			;768c
	ld bc,01a02h		;768d
	nop			;7690
	nop			;7691
	nop			;7692
	nop			;7693
	nop			;7694
	nop			;7695
	nop			;7696
	nop			;7697
	nop			;7698
	nop			;7699
	nop			;769a
	nop			;769b
	nop			;769c
	nop			;769d
	nop			;769e
	nop			;769f
	nop			;76a0
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
	nop			;76b2
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
	ld bc,00d0bh		;76c0
	dec c			;76c3
	add hl,de		;76c4
	dec c			;76c5
	nop			;76c6
	nop			;76c7
	add hl,de		;76c8
	rlca			;76c9
	ld bc,l6115h		;76ca
	nop			;76cd
	ld h,c			;76ce
	nop			;76cf
	nop			;76d0
	nop			;76d1
	add hl,de		;76d2
	dec b			;76d3
	nop			;76d4
	nop			;76d5
	nop			;76d6
	nop			;76d7
	ld bc,00d0bh		;76d8
	dec c			;76db
	ld h,a			;76dc
	djnz $+109		;76dd
	ld (bc),a		;76df
	nop			;76e0
	nop			;76e1
	inc bc			;76e2
	nop			;76e3
	nop			;76e4
	nop			;76e5
	ld h,c			;76e6
	nop			;76e7
	nop			;76e8
	nop			;76e9
	ld h,d			;76ea
	cpl			;76eb
	nop			;76ec
	nop			;76ed
	ld bc,00d00h		;76ee
	dec bc			;76f1
	ld bc,0000dh		;76f2
	nop			;76f5
	ld l,e			;76f6
	ld (bc),a		;76f7
	nop			;76f8
	nop			;76f9
	inc bc			;76fa
	nop			;76fb
	nop			;76fc
	nop			;76fd
	ld h,c			;76fe
	nop			;76ff
	nop			;7700
	nop			;7701
	ld h,d			;7702
	ld l,000h		;7703
	nop			;7705
	nop			;7706
	nop			;7707
	nop			;7708
	nop			;7709
	ld bc,0000dh		;770a
	nop			;770d
	ld l,e			;770e
	ld (bc),a		;770f
	nop			;7710
	nop			;7711
	ld (bc),a		;7712
	nop			;7713
	nop			;7714
	nop			;7715
	ld h,c			;7716
	nop			;7717
	nop			;7718
	nop			;7719
	ld h,d			;771a
	dec l			;771b
	nop			;771c
	nop			;771d
	ld bc,00100h		;771e
	dec bc			;7721
	dec c			;7722
	dec c			;7723
	nop			;7724
	nop			;7725
	ld l,e			;7726
	ld bc,00000h		;7727
	nop			;772a
	nop			;772b
	nop			;772c
	nop			;772d
	ld h,c			;772e
	nop			;772f
	ld l,h			;7730
	ld bc,02c62h		;7731
	nop			;7734
	nop			;7735
	ld bc,00000h		;7736
	nop			;7739
	nop			;773a
	nop			;773b
	nop			;773c
	nop			;773d
	ld l,e			;773e
	ld bc,00000h		;773f
	nop			;7742
	nop			;7743
	nop			;7744
	nop			;7745
	nop			;7746
	nop			;7747
	ld l,h			;7748
	ld bc,02b62h		;7749
	nop			;774c
	nop			;774d
	inc bc			;774e
	ld a,(de)		;774f
	nop			;7750
	nop			;7751
	nop			;7752
	nop			;7753
	nop			;7754
	nop			;7755
	nop			;7756
	nop			;7757
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
	nop			;776a
	nop			;776b
	nop			;776c
	nop			;776d
	nop			;776e
	nop			;776f
	nop			;7770
	nop			;7771
	nop			;7772
	nop			;7773
	nop			;7774
	nop			;7775
	nop			;7776
	nop			;7777
	nop			;7778
	nop			;7779
	nop			;777a
	nop			;777b
	nop			;777c
	nop			;777d
	nop			;777e
	nop			;777f
	ld bc,00d0bh		;7780
	dec c			;7783
	nop			;7784
	nop			;7785
	ld l,e			;7786
	ld bc,00000h		;7787
	ld bc,00000h		;778a
	nop			;778d
	ld h,c			;778e
	nop			;778f
	ld l,h			;7790
	ld bc,02a62h		;7791
	nop			;7794
	nop			;7795
	nop			;7796
	nop			;7797
	nop			;7798
	nop			;7799
	dec c			;779a
	dec c			;779b
	nop			;779c
	nop			;779d
	ld l,e			;779e
	ld bc,00000h		;779f
	ld bc,00000h		;77a2
	nop			;77a5
	ld h,c			;77a6
	nop			;77a7
	ld l,h			;77a8
	ld bc,02962h		;77a9
	nop			;77ac
	nop			;77ad
	nop			;77ae
	nop			;77af
	dec c			;77b0
	dec bc			;77b1
	dec c			;77b2
	dec c			;77b3
	nop			;77b4
	nop			;77b5
	ld l,e			;77b6
	ld bc,00000h		;77b7
	ld (bc),a		;77ba
	nop			;77bb
	ld h,c			;77bc
	nop			;77bd
	ld h,c			;77be
	nop			;77bf
	ld l,h			;77c0
	ld bc,02862h		;77c1
	nop			;77c4
	nop			;77c5
	ld bc,00000h		;77c6
	nop			;77c9
	dec c			;77ca
	dec c			;77cb
	nop			;77cc
	nop			;77cd
	ld l,h			;77ce
	ld (bc),a		;77cf
	nop			;77d0
	nop			;77d1
	nop			;77d2
	nop			;77d3
	ld bc,l610bh		;77d4
	nop			;77d7
	nop			;77d8
	nop			;77d9
	ld h,d			;77da
	daa			;77db
	nop			;77dc
	nop			;77dd
	ld bc,00000h		;77de
	nop			;77e1
	nop			;77e2
	nop			;77e3
	nop			;77e4
	nop			;77e5
	ld l,h			;77e6
	ld (bc),a		;77e7
	nop			;77e8
	nop			;77e9
	nop			;77ea
	nop			;77eb
	nop			;77ec
	nop			;77ed
	nop			;77ee
	nop			;77ef
	nop			;77f0
	nop			;77f1
	ld h,d			;77f2
	jr z,$+110		;77f3
	ld bc,00003h		;77f5
	nop			;77f8
	nop			;77f9
	nop			;77fa
	nop			;77fb
	nop			;77fc
	nop			;77fd
	ld l,h			;77fe
	ld (bc),a		;77ff
	ld l,h			;7800
	ld bc,00000h		;7801
	nop			;7804
	nop			;7805
	nop			;7806
	nop			;7807
	nop			;7808
	nop			;7809
	ld h,d			;780a
	add hl,hl		;780b
	ld l,h			;780c
	ld bc,01a03h		;780d
	nop			;7810
	nop			;7811
	nop			;7812
	nop			;7813
	nop			;7814
	nop			;7815
	nop			;7816
	nop			;7817
	nop			;7818
	nop			;7819
	nop			;781a
	nop			;781b
	nop			;781c
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
	nop			;782a
	nop			;782b
	nop			;782c
	nop			;782d
	nop			;782e
	nop			;782f
	nop			;7830
	nop			;7831
	nop			;7832
	nop			;7833
	nop			;7834
	nop			;7835
	nop			;7836
	nop			;7837
	nop			;7838
	nop			;7839
	nop			;783a
	nop			;783b
	nop			;783c
	nop			;783d
	nop			;783e
	nop			;783f
	ld b,00bh		;7840
	dec c			;7842
	dec c			;7843
	dec h			;7844
	dec c			;7845
	dec h			;7846
	ld (bc),a		;7847
	ld sp,00107h		;7848
	nop			;784b
	ld h,c			;784c
	nop			;784d
	ld h,c			;784e
	nop			;784f
	nop			;7850
	nop			;7851
	ld h,a			;7852
	inc bc			;7853
	nop			;7854
	nop			;7855
	nop			;7856
	nop			;7857
	nop			;7858
	nop			;7859
	ld bc,l670dh		;785a
	djnz $+109		;785d
	ld bc,00000h		;785f
	inc bc			;7862
	nop			;7863
	nop			;7864
	nop			;7865
	ld h,c			;7866
	nop			;7867
	nop			;7868
	nop			;7869
	ld h,d			;786a
	ld hl,(00000h)		;786b
	ld bc,00600h		;786e
	dec bc			;7871
	dec c			;7872
	dec c			;7873
	nop			;7874
	nop			;7875
	ld l,e			;7876
	ld (bc),a		;7877
	nop			;7878
	nop			;7879
	nop			;787a
	nop			;787b
	ld (de),a		;787c
	dec bc			;787d
	ld h,c			;787e
	nop			;787f
	nop			;7880
	nop			;7881
	ld h,d			;7882
	dec hl			;7883
	nop			;7884
	nop			;7885
	inc bc			;7886
	nop			;7887
	nop			;7888
	nop			;7889
	nop			;788a
	nop			;788b
	nop			;788c
	nop			;788d
	nop			;788e
	nop			;788f
	nop			;7890
	nop			;7891
	ld (bc),a		;7892
	nop			;7893
	nop			;7894
	nop			;7895
	ld h,c			;7896
	nop			;7897
	nop			;7898
	nop			;7899
	ld h,d			;789a
	inc l			;789b
	nop			;789c
	nop			;789d
	ld bc,00600h		;789e
	dec bc			;78a1
	ld bc,0000dh		;78a2
	nop			;78a5
	ld l,e			;78a6
	ld bc,00000h		;78a7
	nop			;78aa
	nop			;78ab
	nop			;78ac
	nop			;78ad
	ld h,c			;78ae
	nop			;78af
	ld l,h			;78b0
	ld bc,02d62h		;78b1
	nop			;78b4
	nop			;78b5
	ld bc,00000h		;78b6
	nop			;78b9
	nop			;78ba
	nop			;78bb
	nop			;78bc
	nop			;78bd
	ld l,e			;78be
	ld bc,00000h		;78bf
	nop			;78c2
	nop			;78c3
	nop			;78c4
	nop			;78c5
	nop			;78c6
	nop			;78c7
	ld l,h			;78c8
	ld bc,02e62h		;78c9
	nop			;78cc
	nop			;78cd
	inc bc			;78ce
	ld a,(de)		;78cf
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
	nop			;78ea
	nop			;78eb
	nop			;78ec
	nop			;78ed
	nop			;78ee
	nop			;78ef
	nop			;78f0
	nop			;78f1
	nop			;78f2
	nop			;78f3
	nop			;78f4
	nop			;78f5
	nop			;78f6
	nop			;78f7
	nop			;78f8
	nop			;78f9
	nop			;78fa
	nop			;78fb
	nop			;78fc
	nop			;78fd
	nop			;78fe
	nop			;78ff
	rlca			;7900
	dec bc			;7901
	ld c,00dh		;7902
	nop			;7904
	nop			;7905
	ld l,e			;7906
	ld bc,00000h		;7907
	ld bc,l6100h		;790a
	nop			;790d
	ld h,c			;790e
	nop			;790f
	ld l,h			;7910
	ld bc,02f62h		;7911
	nop			;7914
	nop			;7915
	nop			;7916
	nop			;7917
	rlca			;7918
	dec bc			;7919
	ld c,00dh		;791a
	nop			;791c
	nop			;791d
	ld l,e			;791e
	ld bc,00000h		;791f
	ld bc,l6100h		;7922
	nop			;7925
	ld h,c			;7926
	nop			;7927
	ld l,h			;7928
	ld bc,03062h		;7929
	nop			;792c
	nop			;792d
	nop			;792e
	nop			;792f
	inc de			;7930
	dec bc			;7931
	ld c,00dh		;7932
	nop			;7934
	nop			;7935
	ld l,e			;7936
	ld bc,00000h		;7937
	ld (bc),a		;793a
	nop			;793b
	nop			;793c
	nop			;793d
	ld h,c			;793e
	nop			;793f
	ld l,h			;7940
	ld bc,02f62h		;7941
	nop			;7944
	nop			;7945
	ld bc,00000h		;7946
	nop			;7949
	ld c,00dh		;794a
	nop			;794c
	nop			;794d
	ld l,h			;794e
	ld (bc),a		;794f
	nop			;7950
	nop			;7951
	inc bc			;7952
	nop			;7953
	nop			;7954
	nop			;7955
	ld h,c			;7956
	nop			;7957
	nop			;7958
	nop			;7959
	ld h,d			;795a
	ld l,000h		;795b
	nop			;795d
	nop			;795e
	nop			;795f
	rlca			;7960
	dec bc			;7961
	nop			;7962
	nop			;7963
	nop			;7964
	nop			;7965
	ld l,h			;7966
	ld (bc),a		;7967
	nop			;7968
	nop			;7969
	ld bc,00000h		;796a
	nop			;796d
	nop			;796e
	nop			;796f
	nop			;7970
	nop			;7971
	ld h,d			;7972
	dec l			;7973
	nop			;7974
	nop			;7975
	nop			;7976
	nop			;7977
	nop			;7978
	nop			;7979
	nop			;797a
	nop			;797b
	nop			;797c
	nop			;797d
	ld l,h			;797e
	ld (bc),a		;797f
	nop			;7980
	nop			;7981
	ld (bc),a		;7982
	nop			;7983
	nop			;7984
	nop			;7985
	nop			;7986
	nop			;7987
	ld h,d			;7988
	scf			;7989
	ld h,d			;798a
	inc l			;798b
	nop			;798c
	nop			;798d
	ld (bc),a		;798e
	ld a,(de)		;798f
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
	nop			;799a
	nop			;799b
	nop			;799c
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
	nop			;79aa
	nop			;79ab
	nop			;79ac
	nop			;79ad
	nop			;79ae
	nop			;79af
	nop			;79b0
	nop			;79b1
	nop			;79b2
	nop			;79b3
	nop			;79b4
	nop			;79b5
	nop			;79b6
	nop			;79b7
	nop			;79b8
	nop			;79b9
	nop			;79ba
	nop			;79bb
	nop			;79bc
	nop			;79bd
	nop			;79be
	nop			;79bf
	ld bc,l6c0bh		;79c0
	ld bc,0036ch		;79c3
	ld h,c			;79c6
	nop			;79c7
	ld h,c			;79c8
	nop			;79c9
	ld bc,l6115h		;79ca
	nop			;79cd
	ld l,h			;79ce
	ld bc,00a25h		;79cf
	nop			;79d2
	nop			;79d3
	nop			;79d4
	nop			;79d5
	nop			;79d6
	nop			;79d7
	ld bc,l6c0bh		;79d8
	ld bc,00a2ah		;79db
	ld l,h			;79de
	inc bc			;79df
	nop			;79e0
	nop			;79e1
	inc bc			;79e2
	nop			;79e3
	nop			;79e4
	nop			;79e5
	ld h,c			;79e6
	nop			;79e7
	inc l			;79e8
	ld a,(bc)		;79e9
	dec h			;79ea
	rlca			;79eb
	nop			;79ec
	nop			;79ed
	ld bc,00d00h		;79ee
	dec bc			;79f1
	nop			;79f2
	nop			;79f3
	nop			;79f4
	nop			;79f5
	ld hl,(l6c07h)		;79f6
	inc bc			;79f9
	inc bc			;79fa
	nop			;79fb
	nop			;79fc
	nop			;79fd
	nop			;79fe
	nop			;79ff
	nop			;7a00
	nop			;7a01
	inc l			;7a02
	rlca			;7a03
	dec h			;7a04
	dec b			;7a05
	nop			;7a06
	nop			;7a07
	nop			;7a08
	nop			;7a09
	nop			;7a0a
	nop			;7a0b
	nop			;7a0c
	nop			;7a0d
	nop			;7a0e
	nop			;7a0f
	ld hl,(00205h)		;7a10
	nop			;7a13
	nop			;7a14
	nop			;7a15
	nop			;7a16
	nop			;7a17
	nop			;7a18
	nop			;7a19
	nop			;7a1a
	nop			;7a1b
	inc l			;7a1c
	dec b			;7a1d
	ld bc,00100h		;7a1e
	dec bc			;7a21
	nop			;7a22
	nop			;7a23
	nop			;7a24
	nop			;7a25
	nop			;7a26
	nop			;7a27
	nop			;7a28
	nop			;7a29
	nop			;7a2a
	nop			;7a2b
	inc b			;7a2c
	dec bc			;7a2d
	nop			;7a2e
	nop			;7a2f
	ld h,c			;7a30
	nop			;7a31
	nop			;7a32
	nop			;7a33
	nop			;7a34
	nop			;7a35
	ld bc,00000h		;7a36
	nop			;7a39
	nop			;7a3a
	nop			;7a3b
	inc l			;7a3c
	ld a,(bc)		;7a3d
	nop			;7a3e
	nop			;7a3f
	nop			;7a40
	nop			;7a41
	nop			;7a42
	nop			;7a43
	nop			;7a44
	nop			;7a45
	nop			;7a46
	nop			;7a47
	nop			;7a48
	nop			;7a49
	ld h,c			;7a4a
	nop			;7a4b
	nop			;7a4c
	nop			;7a4d
	inc bc			;7a4e
	ld a,(de)		;7a4f
	nop			;7a50
	nop			;7a51
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
	nop			;7a6a
	nop			;7a6b
	nop			;7a6c
	nop			;7a6d
	nop			;7a6e
	nop			;7a6f
	nop			;7a70
	nop			;7a71
	nop			;7a72
	nop			;7a73
	nop			;7a74
	nop			;7a75
	nop			;7a76
	nop			;7a77
	nop			;7a78
	nop			;7a79
	nop			;7a7a
	nop			;7a7b
	nop			;7a7c
	nop			;7a7d
	nop			;7a7e
	nop			;7a7f
	dec bc			;7a80
	dec bc			;7a81
	nop			;7a82
	nop			;7a83
	inc l			;7a84
	ld a,(bc)		;7a85
	inc l			;7a86
	rlca			;7a87
	nop			;7a88
	nop			;7a89
	ld bc,00000h		;7a8a
	nop			;7a8d
	nop			;7a8e
	nop			;7a8f
	dec l			;7a90
	ld a,(bc)		;7a91
	nop			;7a92
	nop			;7a93
	ld h,c			;7a94
	nop			;7a95
	inc bc			;7a96
	nop			;7a97
	dec bc			;7a98
	ex af,af'		;7a99
	nop			;7a9a
	nop			;7a9b
	inc l			;7a9c
	ld a,(bc)		;7a9d
	inc l			;7a9e
	rlca			;7a9f
	inc l			;7aa0
	dec b			;7aa1
	ld bc,l6100h		;7aa2
	nop			;7aa5
	nop			;7aa6
	nop			;7aa7
	ld hl,(02d0ah)		;7aa8
	rlca			;7aab
	nop			;7aac
	nop			;7aad
	inc bc			;7aae
	nop			;7aaf
	dec bc			;7ab0
	rrca			;7ab1
	nop			;7ab2
	nop			;7ab3
	inc l			;7ab4
	ld a,(bc)		;7ab5
	inc l			;7ab6
	rlca			;7ab7
	inc l			;7ab8
	dec b			;7ab9
	ld (bc),a		;7aba
	nop			;7abb
	nop			;7abc
	nop			;7abd
	nop			;7abe
	nop			;7abf
	nop			;7ac0
	nop			;7ac1
	ld hl,(02d07h)		;7ac2
	dec b			;7ac5
	ld bc,00000h		;7ac6
	nop			;7ac9
	nop			;7aca
	nop			;7acb
	ld h,a			;7acc
	ld (bc),a		;7acd
	inc l			;7ace
	rlca			;7acf
	inc l			;7ad0
	dec b			;7ad1
	nop			;7ad2
	nop			;7ad3
	nop			;7ad4
	nop			;7ad5
	nop			;7ad6
	nop			;7ad7
	nop			;7ad8
	nop			;7ad9
	nop			;7ada
	nop			;7adb
	ld hl,(00105h)		;7adc
	nop			;7adf
	inc b			;7ae0
	dec bc			;7ae1
	nop			;7ae2
	nop			;7ae3
	nop			;7ae4
	nop			;7ae5
	ld h,a			;7ae6
	ld (bc),a		;7ae7
	inc l			;7ae8
	dec b			;7ae9
	nop			;7aea
	nop			;7aeb
	nop			;7aec
	nop			;7aed
	nop			;7aee
	nop			;7aef
	nop			;7af0
	nop			;7af1
	nop			;7af2
	nop			;7af3
	nop			;7af4
	nop			;7af5
	inc bc			;7af6
	nop			;7af7
	inc bc			;7af8
	dec bc			;7af9
	nop			;7afa
	nop			;7afb
	nop			;7afc
	nop			;7afd
	nop			;7afe
	nop			;7aff
	ld h,a			;7b00
	ld (bc),a		;7b01
	nop			;7b02
	nop			;7b03
	nop			;7b04
	nop			;7b05
	nop			;7b06
	nop			;7b07
	nop			;7b08
	nop			;7b09
	ld l,h			;7b0a
	ld bc,0016ch		;7b0b
	inc bc			;7b0e
	ld a,(de)		;7b0f
	nop			;7b10
	nop			;7b11
	nop			;7b12
	nop			;7b13
	nop			;7b14
	nop			;7b15
	nop			;7b16
	nop			;7b17
	nop			;7b18
	nop			;7b19
	nop			;7b1a
	nop			;7b1b
	nop			;7b1c
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
	nop			;7b2a
	nop			;7b2b
	nop			;7b2c
	nop			;7b2d
	nop			;7b2e
	nop			;7b2f
	nop			;7b30
	nop			;7b31
	nop			;7b32
	nop			;7b33
	nop			;7b34
	nop			;7b35
	nop			;7b36
	nop			;7b37
	nop			;7b38
	nop			;7b39
	nop			;7b3a
	nop			;7b3b
	nop			;7b3c
	nop			;7b3d
	nop			;7b3e
	nop			;7b3f
	add hl,bc		;7b40
	dec bc			;7b41
	nop			;7b42
	nop			;7b43
	inc l			;7b44
	ld a,(bc)		;7b45
	nop			;7b46
	nop			;7b47
	nop			;7b48
	nop			;7b49
	ld bc,00000h		;7b4a
	nop			;7b4d
	nop			;7b4e
	nop			;7b4f
	ld hl,(0000ah)		;7b50
	nop			;7b53
	nop			;7b54
	nop			;7b55
	nop			;7b56
	nop			;7b57
	nop			;7b58
	nop			;7b59
	nop			;7b5a
	nop			;7b5b
	ld hl,(02c0ah)		;7b5c
	rlca			;7b5f
	nop			;7b60
	nop			;7b61
	inc bc			;7b62
	nop			;7b63
	nop			;7b64
	nop			;7b65
	nop			;7b66
	nop			;7b67
	jr z,l7b74h		;7b68
	ld hl,(00007h)		;7b6a
	nop			;7b6d
	ld bc,00000h		;7b6e
	nop			;7b71
	nop			;7b72
	nop			;7b73
l7b74h:
	ld hl,(02a0ah)		;7b74
	rlca			;7b77
	inc l			;7b78
	dec b			;7b79
	inc bc			;7b7a
	nop			;7b7b
	nop			;7b7c
	nop			;7b7d
	nop			;7b7e
	nop			;7b7f
	nop			;7b80
	nop			;7b81
	jr z,l7b8bh		;7b82
	ld hl,(00305h)		;7b84
	nop			;7b87
	dec d			;7b88
	rrca			;7b89
	nop			;7b8a
l7b8bh:
	nop			;7b8b
	nop			;7b8c
	nop			;7b8d
	ld hl,(02a07h)		;7b8e
	dec b			;7b91
	ld (bc),a		;7b92
	nop			;7b93
	nop			;7b94
	nop			;7b95
	nop			;7b96
	nop			;7b97
	nop			;7b98
	nop			;7b99
	nop			;7b9a
	nop			;7b9b
	jr z,l7ba3h		;7b9c
	ld bc,00100h		;7b9e
	dec bc			;7ba1
	nop			;7ba2
l7ba3h:
	nop			;7ba3
	nop			;7ba4
	nop			;7ba5
	nop			;7ba6
	nop			;7ba7
	ld hl,(00005h)		;7ba8
	nop			;7bab
	nop			;7bac
	nop			;7bad
	nop			;7bae
	nop			;7baf
	ld h,c			;7bb0
	nop			;7bb1
	nop			;7bb2
	nop			;7bb3
	nop			;7bb4
	nop			;7bb5
	ld bc,01000h		;7bb6
	dec bc			;7bb9
	nop			;7bba
	nop			;7bbb
	ld hl,(0000ah)		;7bbc
	nop			;7bbf
	nop			;7bc0
	nop			;7bc1
	inc bc			;7bc2
	nop			;7bc3
	nop			;7bc4
	nop			;7bc5
	nop			;7bc6
	nop			;7bc7
	nop			;7bc8
	nop			;7bc9
	ld h,c			;7bca
	nop			;7bcb
	nop			;7bcc
	nop			;7bcd
	inc bc			;7bce
	ld a,(de)		;7bcf
	nop			;7bd0
	nop			;7bd1
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
	nop			;7bea
	nop			;7beb
	nop			;7bec
	nop			;7bed
	nop			;7bee
	nop			;7bef
	nop			;7bf0
	nop			;7bf1
	nop			;7bf2
	nop			;7bf3
	nop			;7bf4
	nop			;7bf5
	nop			;7bf6
	nop			;7bf7
	nop			;7bf8
	nop			;7bf9
	nop			;7bfa
	nop			;7bfb
	nop			;7bfc
	nop			;7bfd
	nop			;7bfe
	nop			;7bff
	ld bc,0000bh		;7c00
	nop			;7c03
	ld hl,(02a0ah)		;7c04
	rlca			;7c07
	nop			;7c08
	nop			;7c09
	ld bc,00000h		;7c0a
	nop			;7c0d
	nop			;7c0e
	nop			;7c0f
	jr z,l7c1ch		;7c10
	nop			;7c12
	nop			;7c13
	ld h,c			;7c14
	nop			;7c15
	inc c			;7c16
	nop			;7c17
	dec c			;7c18
	dec bc			;7c19
	nop			;7c1a
	nop			;7c1b
l7c1ch:
	daa			;7c1c
	ld a,(bc)		;7c1d
	ld hl,(02a07h)		;7c1e
	dec b			;7c21
	nop			;7c22
	nop			;7c23
	nop			;7c24
	nop			;7c25
	nop			;7c26
	nop			;7c27
	inc hl			;7c28
	ld a,(bc)		;7c29
	jr z,$+9		;7c2a
	nop			;7c2c
	nop			;7c2d
	ld bc,00100h		;7c2e
	dec bc			;7c31
	ld hl,(02509h)		;7c32
	ld a,(bc)		;7c35
	daa			;7c36
	rlca			;7c37
	ld hl,(00205h)		;7c38
	nop			;7c3b
	nop			;7c3c
	nop			;7c3d
	jr z,l7c49h		;7c3e
	nop			;7c40
	nop			;7c41
	inc hl			;7c42
	rlca			;7c43
	jr z,l7c4bh		;7c44
	ld bc,00100h		;7c46
l7c49h:
	dec bc			;7c49
	daa			;7c4a
l7c4bh:
	add hl,bc		;7c4b
	ld h,a			;7c4c
	ld (bc),a		;7c4d
	dec h			;7c4e
	rlca			;7c4f
	daa			;7c50
	dec b			;7c51
	inc bc			;7c52
	nop			;7c53
	nop			;7c54
	nop			;7c55
	inc hl			;7c56
	add hl,bc		;7c57
	nop			;7c58
	nop			;7c59
	nop			;7c5a
	nop			;7c5b
	inc hl			;7c5c
	dec b			;7c5d
	inc bc			;7c5e
	nop			;7c5f
	dec c			;7c60
	dec bc			;7c61
	dec h			;7c62
	add hl,bc		;7c63
	nop			;7c64
	nop			;7c65
	ld h,a			;7c66
	ld (bc),a		;7c67
	dec h			;7c68
	dec b			;7c69
	ld bc,00000h		;7c6a
	nop			;7c6d
	ld h,a			;7c6e
	ld (bc),a		;7c6f
	nop			;7c70
	nop			;7c71
	nop			;7c72
	nop			;7c73
	nop			;7c74
	nop			;7c75
	nop			;7c76
	nop			;7c77
	ld bc,0000bh		;7c78
	nop			;7c7b
	nop			;7c7c
	nop			;7c7d
	nop			;7c7e
	nop			;7c7f
	ld h,a			;7c80
	ld (bc),a		;7c81
	ld (bc),a		;7c82
	nop			;7c83
	nop			;7c84
	nop			;7c85
	nop			;7c86
	nop			;7c87
	nop			;7c88
	nop			;7c89
	nop			;7c8a
	nop			;7c8b
	nop			;7c8c
	nop			;7c8d
	ld (bc),a		;7c8e
	ld a,(de)		;7c8f
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
	nop			;7c9a
	nop			;7c9b
	nop			;7c9c
	nop			;7c9d
	nop			;7c9e
	nop			;7c9f
	nop			;7ca0
	nop			;7ca1
	nop			;7ca2
	nop			;7ca3
	nop			;7ca4
	nop			;7ca5
	nop			;7ca6
	nop			;7ca7
	nop			;7ca8
	nop			;7ca9
	nop			;7caa
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
	nop			;7cb8
	nop			;7cb9
	nop			;7cba
	nop			;7cbb
	nop			;7cbc
	nop			;7cbd
	nop			;7cbe
	nop			;7cbf
	ld bc,l610bh		;7cc0
	nop			;7cc3
	ld h,d			;7cc4
	scf			;7cc5
	nop			;7cc6
	nop			;7cc7
	nop			;7cc8
	nop			;7cc9
	ld bc,00015h		;7cca
	nop			;7ccd
	nop			;7cce
	nop			;7ccf
	dec h			;7cd0
	ld a,(bc)		;7cd1
	nop			;7cd2
	nop			;7cd3
	nop			;7cd4
	nop			;7cd5
	nop			;7cd6
	nop			;7cd7
	ld bc,0000fh		;7cd8
	nop			;7cdb
	ld hl,(l620ah)		;7cdc
	scf			;7cdf
	nop			;7ce0
	nop			;7ce1
	inc bc			;7ce2
	nop			;7ce3
	nop			;7ce4
	nop			;7ce5
	nop			;7ce6
	nop			;7ce7
	inc l			;7ce8
	ld a,(bc)		;7ce9
	dec h			;7cea
	rlca			;7ceb
	nop			;7cec
	nop			;7ced
	ld bc,00d00h		;7cee
	dec bc			;7cf1
	nop			;7cf2
	nop			;7cf3
	ld h,a			;7cf4
	ld (bc),a		;7cf5
	ld hl,(l6207h)		;7cf6
	scf			;7cf9
	inc bc			;7cfa
	nop			;7cfb
	nop			;7cfc
	nop			;7cfd
	nop			;7cfe
	nop			;7cff
	nop			;7d00
	nop			;7d01
	inc l			;7d02
	rlca			;7d03
	dec h			;7d04
	dec b			;7d05
	nop			;7d06
	nop			;7d07
	nop			;7d08
	nop			;7d09
	nop			;7d0a
	nop			;7d0b
	nop			;7d0c
	nop			;7d0d
	ld h,a			;7d0e
	ld (bc),a		;7d0f
	ld hl,(00205h)		;7d10
	nop			;7d13
	nop			;7d14
	nop			;7d15
	nop			;7d16
	nop			;7d17
	nop			;7d18
	nop			;7d19
	nop			;7d1a
	nop			;7d1b
	inc l			;7d1c
	dec b			;7d1d
	ld bc,00100h		;7d1e
	dec bc			;7d21
	nop			;7d22
	nop			;7d23
	nop			;7d24
	nop			;7d25
	nop			;7d26
	nop			;7d27
	ld h,a			;7d28
	ld (bc),a		;7d29
	nop			;7d2a
	nop			;7d2b
	inc b			;7d2c
	dec bc			;7d2d
	nop			;7d2e
	nop			;7d2f
	ld l,h			;7d30
	ld bc,00000h		;7d31
	nop			;7d34
	nop			;7d35
	ld bc,00000h		;7d36
	nop			;7d39
	nop			;7d3a
	nop			;7d3b
	ld l,h			;7d3c
	ld bc,00000h		;7d3d
	nop			;7d40
	nop			;7d41
	nop			;7d42
	nop			;7d43
	nop			;7d44
	nop			;7d45
	nop			;7d46
	nop			;7d47
	inc l			;7d48
	ld a,(bc)		;7d49
	ld l,h			;7d4a
	ld bc,00000h		;7d4b
	inc bc			;7d4e
	ld a,(de)		;7d4f
	nop			;7d50
	nop			;7d51
	nop			;7d52
	nop			;7d53
	nop			;7d54
	nop			;7d55
	nop			;7d56
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
	dec bc			;7d80
	dec bc			;7d81
	nop			;7d82
	nop			;7d83
	ld sp,l6c0ah		;7d84
	ld bc,00000h		;7d87
	ld bc,00000h		;7d8a
	nop			;7d8d
	nop			;7d8e
	nop			;7d8f
	cpl			;7d90
	ld a,(bc)		;7d91
	inc l			;7d92
	rlca			;7d93
	ld l,h			;7d94
	ld bc,00003h		;7d95
	dec bc			;7d98
	ex af,af'		;7d99
	nop			;7d9a
	nop			;7d9b
	cpl			;7d9c
	ld a,(bc)		;7d9d
	ld sp,l6c07h		;7d9e
	ld bc,00002h		;7da1
	ld h,c			;7da4
	nop			;7da5
	nop			;7da6
	nop			;7da7
	inc l			;7da8
	ld a,(bc)		;7da9
	cpl			;7daa
	rlca			;7dab
	inc l			;7dac
	dec b			;7dad
	inc bc			;7dae
	nop			;7daf
	dec bc			;7db0
	rrca			;7db1
	nop			;7db2
	nop			;7db3
	cpl			;7db4
	ld a,(bc)		;7db5
	cpl			;7db6
	rlca			;7db7
	ld sp,00205h		;7db8
	nop			;7dbb
	nop			;7dbc
	nop			;7dbd
	nop			;7dbe
	nop			;7dbf
	ld sp,02c0ah		;7dc0
	rlca			;7dc3
	cpl			;7dc4
	dec b			;7dc5
	ld bc,00000h		;7dc6
	nop			;7dc9
	nop			;7dca
	nop			;7dcb
	cpl			;7dcc
	ld a,(bc)		;7dcd
	cpl			;7dce
	rlca			;7dcf
	cpl			;7dd0
	dec b			;7dd1
	inc bc			;7dd2
	nop			;7dd3
	nop			;7dd4
	nop			;7dd5
	nop			;7dd6
	nop			;7dd7
	nop			;7dd8
	nop			;7dd9
	ld sp,02c07h		;7dda
	dec b			;7ddd
	ld bc,00400h		;7dde
	dec bc			;7de1
	nop			;7de2
	nop			;7de3
	ld h,a			;7de4
	ld (bc),a		;7de5
	cpl			;7de6
	rlca			;7de7
	cpl			;7de8
	dec b			;7de9
	ld (bc),a		;7dea
	nop			;7deb
	nop			;7dec
	nop			;7ded
	nop			;7dee
	nop			;7def
	nop			;7df0
	nop			;7df1
	nop			;7df2
	nop			;7df3
	ld sp,00305h		;7df4
	nop			;7df7
	inc bc			;7df8
	dec bc			;7df9
	nop			;7dfa
	nop			;7dfb
	nop			;7dfc
	nop			;7dfd
	ld h,a			;7dfe
	ld (bc),a		;7dff
	cpl			;7e00
	dec b			;7e01
	nop			;7e02
	nop			;7e03
	nop			;7e04
	nop			;7e05
	nop			;7e06
	nop			;7e07
	nop			;7e08
	nop			;7e09
	nop			;7e0a
	nop			;7e0b
	nop			;7e0c
	nop			;7e0d
	inc bc			;7e0e
	ld a,(de)		;7e0f
	nop			;7e10
	nop			;7e11
	nop			;7e12
	nop			;7e13
	nop			;7e14
	nop			;7e15
	nop			;7e16
	nop			;7e17
	nop			;7e18
	nop			;7e19
	nop			;7e1a
	nop			;7e1b
	nop			;7e1c
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
	nop			;7e29
	nop			;7e2a
	nop			;7e2b
	nop			;7e2c
	nop			;7e2d
	nop			;7e2e
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
	nop			;7e39
	nop			;7e3a
	nop			;7e3b
	nop			;7e3c
	nop			;7e3d
	nop			;7e3e
	nop			;7e3f
	add hl,bc		;7e40
	dec bc			;7e41
	nop			;7e42
	nop			;7e43
	cpl			;7e44
	ld a,(bc)		;7e45
	nop			;7e46
	nop			;7e47
	ld h,a			;7e48
	ld (bc),a		;7e49
	ld bc,00000h		;7e4a
	nop			;7e4d
	nop			;7e4e
	nop			;7e4f
	dec l			;7e50
	rlca			;7e51
	nop			;7e52
	nop			;7e53
	nop			;7e54
	nop			;7e55
	inc bc			;7e56
	nop			;7e57
	nop			;7e58
	nop			;7e59
	nop			;7e5a
	nop			;7e5b
	dec l			;7e5c
	ld a,(bc)		;7e5d
	cpl			;7e5e
	rlca			;7e5f
	nop			;7e60
	nop			;7e61
	inc bc			;7e62
	nop			;7e63
	nop			;7e64
	nop			;7e65
	nop			;7e66
	nop			;7e67
	ld h,a			;7e68
	ld (bc),a		;7e69
	dec l			;7e6a
	rlca			;7e6b
	nop			;7e6c
	nop			;7e6d
	ld bc,00000h		;7e6e
	nop			;7e71
	nop			;7e72
	nop			;7e73
	nop			;7e74
	nop			;7e75
	dec l			;7e76
	rlca			;7e77
	cpl			;7e78
	dec b			;7e79
	inc bc			;7e7a
	nop			;7e7b
	nop			;7e7c
	nop			;7e7d
	nop			;7e7e
	nop			;7e7f
	nop			;7e80
	nop			;7e81
	ld h,a			;7e82
	ld (bc),a		;7e83
	dec l			;7e84
	dec b			;7e85
	inc bc			;7e86
	nop			;7e87
	dec d			;7e88
	rrca			;7e89
	nop			;7e8a
	nop			;7e8b
	nop			;7e8c
	nop			;7e8d
	nop			;7e8e
	nop			;7e8f
	dec l			;7e90
	dec b			;7e91
	ld bc,00000h		;7e92
	nop			;7e95
	nop			;7e96
	nop			;7e97
	ld l,h			;7e98
	ld bc,00000h		;7e99
	ld h,a			;7e9c
	ld (bc),a		;7e9d
	inc bc			;7e9e
	nop			;7e9f
	ld bc,0000bh		;7ea0
	nop			;7ea3
	ld l,h			;7ea4
	ld bc,00000h		;7ea5
	nop			;7ea8
	nop			;7ea9
	ld (bc),a		;7eaa
	nop			;7eab
	nop			;7eac
	nop			;7ead
	nop			;7eae
	nop			;7eaf
	ld l,h			;7eb0
	ld bc,0016ch		;7eb1
	nop			;7eb4
	nop			;7eb5
	inc bc			;7eb6
	nop			;7eb7
	djnz l7ec5h		;7eb8
	nop			;7eba
	nop			;7ebb
	inc l			;7ebc
	ld a,(bc)		;7ebd
	ld l,h			;7ebe
	ld bc,00000h		;7ebf
	inc bc			;7ec2
	nop			;7ec3
	nop			;7ec4
l7ec5h:
	nop			;7ec5
	nop			;7ec6
	nop			;7ec7
	jr z,l7ed4h		;7ec8
	ld l,h			;7eca
	ld bc,0016ch		;7ecb
	ld bc,0001ah		;7ece
	nop			;7ed1
	nop			;7ed2
	nop			;7ed3
l7ed4h:
	nop			;7ed4
	nop			;7ed5
	nop			;7ed6
	nop			;7ed7
	nop			;7ed8
	nop			;7ed9
	nop			;7eda
	nop			;7edb
	nop			;7edc
	nop			;7edd
	nop			;7ede
	nop			;7edf
	nop			;7ee0
	nop			;7ee1
	nop			;7ee2
	nop			;7ee3
	nop			;7ee4
	nop			;7ee5
	nop			;7ee6
	nop			;7ee7
	nop			;7ee8
	nop			;7ee9
	nop			;7eea
	nop			;7eeb
	nop			;7eec
	nop			;7eed
	nop			;7eee
	nop			;7eef
	nop			;7ef0
	nop			;7ef1
	nop			;7ef2
	nop			;7ef3
	nop			;7ef4
	nop			;7ef5
	nop			;7ef6
	nop			;7ef7
	nop			;7ef8
	nop			;7ef9
	nop			;7efa
	nop			;7efb
	nop			;7efc
	nop			;7efd
	nop			;7efe
	nop			;7eff
	ld bc,0000bh		;7f00
	nop			;7f03
	dec h			;7f04
	ld a,(bc)		;7f05
	inc l			;7f06
	rlca			;7f07
	ld l,h			;7f08
	ld bc,00003h		;7f09
	nop			;7f0c
	nop			;7f0d
	nop			;7f0e
	nop			;7f0f
	nop			;7f10
	nop			;7f11
	jr z,l7f1bh		;7f12
	ld l,h			;7f14
	ld bc,00003h		;7f15
	dec c			;7f18
	dec bc			;7f19
	nop			;7f1a
l7f1bh:
	nop			;7f1b
	ld h,a			;7f1c
	ld (bc),a		;7f1d
	dec h			;7f1e
	rlca			;7f1f
	inc l			;7f20
	dec b			;7f21
	rlca			;7f22
	nop			;7f23
	nop			;7f24
	nop			;7f25
	nop			;7f26
	nop			;7f27
	nop			;7f28
	nop			;7f29
	nop			;7f2a
	nop			;7f2b
	jr z,l7f33h		;7f2c
	inc bc			;7f2e
	nop			;7f2f
	ld bc,0000bh		;7f30
l7f33h:
	nop			;7f33
	nop			;7f34
	nop			;7f35
	ld h,a			;7f36
	ld (bc),a		;7f37
	dec h			;7f38
	dec b			;7f39
	inc bc			;7f3a
	nop			;7f3b
	nop			;7f3c
	nop			;7f3d
	nop			;7f3e
	nop			;7f3f
	nop			;7f40
	nop			;7f41
	nop			;7f42
	nop			;7f43
	nop			;7f44
	nop			;7f45
	ld (bc),a		;7f46
	nop			;7f47
	ld bc,0000bh		;7f48
	nop			;7f4b
	nop			;7f4c
	nop			;7f4d
	nop			;7f4e
	nop			;7f4f
	ld h,a			;7f50
	ld (bc),a		;7f51
	nop			;7f52
	nop			;7f53
	nop			;7f54
	nop			;7f55
	nop			;7f56
	nop			;7f57
	nop			;7f58
	nop			;7f59
	nop			;7f5a
	nop			;7f5b
	nop			;7f5c
	nop			;7f5d
	ld bc,00d00h		;7f5e
	dec bc			;7f61
	nop			;7f62
	nop			;7f63
	nop			;7f64
	nop			;7f65
	nop			;7f66
	nop			;7f67
	nop			;7f68
	nop			;7f69
	ld (bc),a		;7f6a
	nop			;7f6b
	nop			;7f6c
	nop			;7f6d
	nop			;7f6e
	nop			;7f6f
	nop			;7f70
	nop			;7f71
	ld h,d			;7f72
	ld (00000h),hl		;7f73
	ld bc,00100h		;7f76
	dec bc			;7f79
	nop			;7f7a
	nop			;7f7b
	nop			;7f7c
	nop			;7f7d
	ld sp,0000fh		;7f7e
	nop			;7f81
	ld (bc),a		;7f82
	nop			;7f83
	nop			;7f84
	nop			;7f85
	nop			;7f86
	nop			;7f87
	nop			;7f88
	nop			;7f89
	cpl			;7f8a
	rrca			;7f8b
	nop			;7f8c
	nop			;7f8d
	ld bc,0001ah		;7f8e
	nop			;7f91
	nop			;7f92
	nop			;7f93
	nop			;7f94
	nop			;7f95
	nop			;7f96
	nop			;7f97
	nop			;7f98
	nop			;7f99
	nop			;7f9a
	nop			;7f9b
	nop			;7f9c
	nop			;7f9d
	nop			;7f9e
	nop			;7f9f
	nop			;7fa0
	nop			;7fa1
	nop			;7fa2
	nop			;7fa3
	nop			;7fa4
	nop			;7fa5
	nop			;7fa6
	nop			;7fa7
	nop			;7fa8
	nop			;7fa9
	nop			;7faa
	nop			;7fab
	nop			;7fac
	nop			;7fad
	nop			;7fae
	nop			;7faf
	nop			;7fb0
	nop			;7fb1
	nop			;7fb2
	nop			;7fb3
	nop			;7fb4
	nop			;7fb5
	nop			;7fb6
	nop			;7fb7
	nop			;7fb8
	nop			;7fb9
	nop			;7fba
	nop			;7fbb
	nop			;7fbc
	nop			;7fbd
	nop			;7fbe
	nop			;7fbf
	add hl,bc		;7fc0
	dec bc			;7fc1
	nop			;7fc2
	nop			;7fc3
	nop			;7fc4
	nop			;7fc5
	dec l			;7fc6
	rrca			;7fc7
	ld sp,0010bh		;7fc8
	dec d			;7fcb
	nop			;7fcc
	nop			;7fcd
	nop			;7fce
	nop			;7fcf
	nop			;7fd0
	nop			;7fd1
	inc l			;7fd2
	rrca			;7fd3
	cpl			;7fd4
	dec bc			;7fd5
	inc bc			;7fd6
	nop			;7fd7
	nop			;7fd8
	nop			;7fd9
	inc (hl)		;7fda
	dec b			;7fdb
	jr c,$+7		;7fdc
	dec l			;7fde
	rrca			;7fdf
	dec l			;7fe0
	dec bc			;7fe1
	ld bc,00000h		;7fe2
	nop			;7fe5
	nop			;7fe6
	nop			;7fe7
	nop			;7fe8
	nop			;7fe9
	nop			;7fea
	nop			;7feb
	inc l			;7fec
	dec bc			;7fed
	inc bc			;7fee
	nop			;7fef
	nop			;7ff0
	nop			;7ff1
	nop			;7ff2
	nop			;7ff3
	nop			;7ff4
	nop			;7ff5
	nop			;7ff6
	nop			;7ff7
	dec l			;7ff8
	dec bc			;7ff9
	inc bc			;7ffa
	nop			;7ffb
	nop			;7ffc
	nop			;7ffd
	nop			;7ffe
	nop			;7fff
