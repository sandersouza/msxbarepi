; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank25.asm /tmp/smanbow2_bank_25.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
	ld h,d			;4003
	ld l,a			;4004
	ld (hl),a		;4005
	jr nz,l403ah		;4006
	jr nz,$+47		;4008
l400ah:
	jr nz,l4051h		;400a
	ld l,(hl)		;400c
	ld h,h			;400d
	ld h,h			;400e
	ld h,l			;400f
	ld l,l			;4010
	ld l,a			;4011
	jr nz,$+47		;4012
	jr nz,l4059h		;4014
	ld (hl),d		;4016
	ld h,l			;4017
	ld h,h			;4018
	ld l,c			;4019
	ld (hl),h		;401a
	ld (hl),e		;401b
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
	scf			;404e
	nop			;404f
l4050h:
	ex af,af'		;4050
l4051h:
	nop			;4051
l4052h:
	ld bc,00302h		;4052
	inc b			;4055
l4056h:
	dec b			;4056
	ld b,007h		;4057
l4059h:
	ex af,af'		;4059
l405ah:
	add hl,bc		;405a
	ld a,(bc)		;405b
l405ch:
	dec bc			;405c
	ex af,af'		;405d
l405eh:
	add hl,bc		;405e
	ld a,(bc)		;405f
l4060h:
	dec bc			;4060
	ex af,af'		;4061
l4062h:
	add hl,bc		;4062
	ld a,(bc)		;4063
	dec bc			;4064
	ex af,af'		;4065
	add hl,bc		;4066
	ld a,(bc)		;4067
	dec bc			;4068
	inc c			;4069
	dec c			;406a
	ld c,00fh		;406b
	inc c			;406d
	dec c			;406e
	ld c,00fh		;406f
	djnz l4084h		;4071
	ld (de),a		;4073
	inc de			;4074
	inc d			;4075
	dec d			;4076
	ld d,017h		;4077
	jr l4094h		;4079
	ld a,(de)		;407b
	inc de			;407c
	inc d			;407d
	dec d			;407e
	ld d,017h		;407f
	djnz l4094h		;4081
	ld (de),a		;4083
l4084h:
	inc de			;4084
	djnz l4098h		;4085
	ld (de),a		;4087
	dec de			;4088
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
l4094h:
	nop			;4094
	nop			;4095
	nop			;4096
	nop			;4097
l4098h:
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
	dec d			;4151
	rrca			;4152
	rrca			;4153
	rrca			;4154
	rrca			;4155
	rrca			;4156
	inc d			;4157
	inc hl			;4158
	inc hl			;4159
	dec (hl)		;415a
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
	nop			;41c0
	nop			;41c1
	inc (hl)		;41c2
	nop			;41c3
	add hl,sp		;41c4
	nop			;41c5
	inc (hl)		;41c6
	nop			;41c7
	add hl,sp		;41c8
	nop			;41c9
	nop			;41ca
	ld (bc),a		;41cb
	nop			;41cc
	nop			;41cd
	nop			;41ce
	nop			;41cf
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
l420bh:
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
	nop			;423c
	nop			;423d
	nop			;423e
	nop			;423f
	nop			;4240
	nop			;4241
	nop			;4242
	add hl,de		;4243
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
	nop			;4280
	nop			;4281
	inc (hl)		;4282
	nop			;4283
	add hl,sp		;4284
	nop			;4285
	cpl			;4286
	ld bc,00132h		;4287
	nop			;428a
	rrca			;428b
	nop			;428c
	nop			;428d
	nop			;428e
	nop			;428f
	nop			;4290
	nop			;4291
	ld sp,03401h		;4292
	ld bc,00000h		;4295
	nop			;4298
	nop			;4299
	nop			;429a
	nop			;429b
	nop			;429c
	nop			;429d
	ld (03601h),a		;429e
	ld bc,00000h		;42a1
	nop			;42a4
	nop			;42a5
	nop			;42a6
	nop			;42a7
	nop			;42a8
	nop			;42a9
	inc (hl)		;42aa
	ld bc,00139h		;42ab
	nop			;42ae
	nop			;42af
	nop			;42b0
	nop			;42b1
	inc (hl)		;42b2
	ld bc,00139h		;42b3
	cpl			;42b6
	ld (bc),a		;42b7
	ld (00002h),a		;42b8
	nop			;42bb
	nop			;42bc
	nop			;42bd
	cpl			;42be
	ld bc,00132h		;42bf
	ld sp,03402h		;42c2
	ld (bc),a		;42c5
	nop			;42c6
	nop			;42c7
	nop			;42c8
	nop			;42c9
	ld sp,03401h		;42ca
	ld bc,00332h		;42cd
	ld (hl),003h		;42d0
	nop			;42d2
	nop			;42d3
	nop			;42d4
	nop			;42d5
	ld (03601h),a		;42d6
	ld bc,00334h		;42d9
	add hl,sp		;42dc
	inc bc			;42dd
	nop			;42de
	nop			;42df
	nop			;42e0
	nop			;42e1
	inc (hl)		;42e2
	ld bc,00139h		;42e3
	ld (hl),004h		;42e6
	dec sp			;42e8
	inc b			;42e9
	nop			;42ea
	nop			;42eb
	nop			;42ec
	nop			;42ed
	ld (hl),002h		;42ee
	dec sp			;42f0
	ld (bc),a		;42f1
	ld h,a			;42f2
	ld bc,00167h		;42f3
	nop			;42f6
	nop			;42f7
	nop			;42f8
	nop			;42f9
	ld h,a			;42fa
	ld bc,00167h		;42fb
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
	inc (hl)		;4316
	inc b			;4317
	add hl,sp		;4318
	inc b			;4319
	nop			;431a
	dec d			;431b
	nop			;431c
	nop			;431d
	nop			;431e
	nop			;431f
	nop			;4320
	nop			;4321
	ld (hl),004h		;4322
	dec sp			;4324
	inc b			;4325
	nop			;4326
	nop			;4327
	nop			;4328
	nop			;4329
	inc (hl)		;432a
	ld (bc),a		;432b
	add hl,sp		;432c
	ld (bc),a		;432d
	nop			;432e
	nop			;432f
	nop			;4330
	nop			;4331
	nop			;4332
	nop			;4333
	nop			;4334
	nop			;4335
	ld (hl),002h		;4336
	dec sp			;4338
	ld (bc),a		;4339
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
	ld (03604h),a		;4346
	inc b			;4349
	nop			;434a
	rrca			;434b
	nop			;434c
	nop			;434d
	ld (03602h),a		;434e
	ld (bc),a		;4351
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
	add hl,sp		;436a
	dec b			;436b
	dec sp			;436c
	dec b			;436d
	nop			;436e
	nop			;436f
	nop			;4370
	nop			;4371
	add hl,sp		;4372
	ld (bc),a		;4373
	dec sp			;4374
	ld (bc),a		;4375
	scf			;4376
	dec b			;4377
	add hl,sp		;4378
	dec b			;4379
	nop			;437a
	nop			;437b
	nop			;437c
	nop			;437d
	scf			;437e
	ld (bc),a		;437f
	add hl,sp		;4380
	ld (bc),a		;4381
	ld (hl),005h		;4382
	ld (hl),005h		;4384
	nop			;4386
	nop			;4387
	nop			;4388
	nop			;4389
	ld (hl),002h		;438a
	ld (hl),002h		;438c
	scf			;438e
	dec b			;438f
	add hl,sp		;4390
	dec b			;4391
	nop			;4392
	dec d			;4393
	nop			;4394
	nop			;4395
	nop			;4396
	nop			;4397
	nop			;4398
	nop			;4399
	add hl,sp		;439a
	dec b			;439b
	dec sp			;439c
	dec b			;439d
	nop			;439e
	nop			;439f
	nop			;43a0
	nop			;43a1
	scf			;43a2
	ld (bc),a		;43a3
	add hl,sp		;43a4
	ld (bc),a		;43a5
	nop			;43a6
	nop			;43a7
	nop			;43a8
	nop			;43a9
	nop			;43aa
	nop			;43ab
	nop			;43ac
	nop			;43ad
	add hl,sp		;43ae
	ld (bc),a		;43af
	dec sp			;43b0
	ld (bc),a		;43b1
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
	ld (03705h),a		;43be
	dec b			;43c1
	nop			;43c2
	nop			;43c3
	nop			;43c4
	nop			;43c5
	nop			;43c6
	nop			;43c7
	nop			;43c8
	nop			;43c9
	inc (hl)		;43ca
	dec b			;43cb
	add hl,sp		;43cc
	dec b			;43cd
	nop			;43ce
	nop			;43cf
	nop			;43d0
	nop			;43d1
	ld (03702h),a		;43d2
	ld (bc),a		;43d5
	nop			;43d6
	nop			;43d7
	nop			;43d8
	nop			;43d9
	nop			;43da
	nop			;43db
	nop			;43dc
	nop			;43dd
	inc (hl)		;43de
	ld (bc),a		;43df
	add hl,sp		;43e0
	ld (bc),a		;43e1
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
	ld (hl),006h		;43ee
	ld (00006h),a		;43f0
	rrca			;43f3
	nop			;43f4
	nop			;43f5
	ld (hl),002h		;43f6
	ld (00002h),a		;43f8
	nop			;43fb
	nop			;43fc
	nop			;43fd
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
	nop			;440a
	nop			;440b
	nop			;440c
	nop			;440d
	nop			;440e
	nop			;440f
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
	inc (hl)		;441e
	ld b,031h		;441f
	ld b,000h		;4421
	nop			;4423
	nop			;4424
	nop			;4425
	inc (hl)		;4426
	ld (bc),a		;4427
	ld sp,00002h		;4428
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
	ld (02f06h),a		;4436
	ld b,000h		;4439
	nop			;443b
	nop			;443c
	nop			;443d
	ld (02f02h),a		;443e
	ld (bc),a		;4441
	ld sp,02e06h		;4442
	ld b,000h		;4445
	ld a,(de)		;4447
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
	nop			;446e
	nop			;446f
	nop			;4470
	nop			;4471
	nop			;4472
	nop			;4473
	nop			;4474
	nop			;4475
	nop			;4476
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
	nop			;4484
	nop			;4485
	nop			;4486
	nop			;4487
	nop			;4488
	nop			;4489
	nop			;448a
	nop			;448b
	nop			;448c
	nop			;448d
	nop			;448e
	nop			;448f
	nop			;4490
	nop			;4491
	nop			;4492
	nop			;4493
	nop			;4494
	nop			;4495
	nop			;4496
	nop			;4497
	nop			;4498
	nop			;4499
	nop			;449a
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
	nop			;44a7
	nop			;44a8
	nop			;44a9
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
	nop			;44b6
	nop			;44b7
	nop			;44b8
	nop			;44b9
	nop			;44ba
	nop			;44bb
	nop			;44bc
	nop			;44bd
	nop			;44be
	nop			;44bf
	nop			;44c0
	nop			;44c1
	ld sp,02e02h		;44c2
	ld (bc),a		;44c5
	ld h,e			;44c6
	ld bc,00163h		;44c7
	nop			;44ca
	dec d			;44cb
	nop			;44cc
	nop			;44cd
	nop			;44ce
	nop			;44cf
	nop			;44d0
	nop			;44d1
	ld l,d			;44d2
	ld bc,0016ch		;44d3
	nop			;44d6
	nop			;44d7
	nop			;44d8
	nop			;44d9
	ld h,e			;44da
	ld bc,00163h		;44db
	ld h,e			;44de
	nop			;44df
	ld h,e			;44e0
	nop			;44e1
	nop			;44e2
	nop			;44e3
	nop			;44e4
	nop			;44e5
	ld l,d			;44e6
	ld bc,0016ch		;44e7
	ld h,a			;44ea
	ld (bc),a		;44eb
	ld h,a			;44ec
	ld (bc),a		;44ed
	nop			;44ee
	nop			;44ef
	nop			;44f0
	nop			;44f1
	ld h,e			;44f2
	nop			;44f3
	ld h,e			;44f4
	nop			;44f5
	nop			;44f6
	nop			;44f7
	nop			;44f8
	nop			;44f9
	nop			;44fa
	nop			;44fb
	nop			;44fc
	nop			;44fd
	ld h,a			;44fe
	ld (bc),a		;44ff
	ld h,a			;4500
	ld (bc),a		;4501
	ld l,h			;4502
	ld bc,0016ch		;4503
	nop			;4506
	nop			;4507
	nop			;4508
	nop			;4509
	nop			;450a
	nop			;450b
	nop			;450c
	nop			;450d
	ld l,h			;450e
	ld bc,0016ch		;450f
	nop			;4512
	nop			;4513
	nop			;4514
	nop			;4515
	ld l,h			;4516
	ld bc,0016ch		;4517
	nop			;451a
	nop			;451b
	nop			;451c
	nop			;451d
	nop			;451e
	nop			;451f
	nop			;4520
	nop			;4521
	ld l,h			;4522
	ld bc,0016ch		;4523
	cpl			;4526
	rlca			;4527
	ld (00007h),a		;4528
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
	nop			;4538
	nop			;4539
	cpl			;453a
	inc bc			;453b
	ld (03103h),a		;453c
	rlca			;453f
	inc (hl)		;4540
	rlca			;4541
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
	ld sp,03403h		;4552
	inc bc			;4555
	ld (03607h),a		;4556
	rlca			;4559
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
	ld (03603h),a		;456a
	inc bc			;456d
	inc (hl)		;456e
	rlca			;456f
	add hl,sp		;4570
	rlca			;4571
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
	inc (hl)		;4582
	inc bc			;4583
	add hl,sp		;4584
	inc bc			;4585
	ld (hl),008h		;4586
	dec sp			;4588
	ex af,af'		;4589
	nop			;458a
	nop			;458b
	nop			;458c
	nop			;458d
	nop			;458e
	nop			;458f
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
	ld (hl),004h		;459a
	dec sp			;459c
	inc b			;459d
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
	ld h,a			;45aa
	ld bc,00167h		;45ab
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
	ld h,a			;45be
	ld bc,00167h		;45bf
	nop			;45c2
	nop			;45c3
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
	nop			;45e0
	nop			;45e1
	nop			;45e2
	nop			;45e3
	nop			;45e4
	nop			;45e5
	inc (hl)		;45e6
	ex af,af'		;45e7
	add hl,sp		;45e8
	ex af,af'		;45e9
	nop			;45ea
	nop			;45eb
	nop			;45ec
	nop			;45ed
	nop			;45ee
	nop			;45ef
	nop			;45f0
	nop			;45f1
	ld (hl),008h		;45f2
	dec sp			;45f4
	ex af,af'		;45f5
	nop			;45f6
	nop			;45f7
	nop			;45f8
	nop			;45f9
	inc (hl)		;45fa
	inc b			;45fb
	add hl,sp		;45fc
	inc b			;45fd
	nop			;45fe
	nop			;45ff
	nop			;4600
	nop			;4601
	nop			;4602
	nop			;4603
	nop			;4604
	nop			;4605
	ld (hl),004h		;4606
	dec sp			;4608
	inc b			;4609
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
	ld (03608h),a		;4616
	ex af,af'		;4619
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
	ld (03604h),a		;462a
	inc b			;462d
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
	nop			;463e
	nop			;463f
	nop			;4640
	nop			;4641
	nop			;4642
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
	nop			;464e
	nop			;464f
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
	add hl,sp		;465e
	add hl,bc		;465f
	dec sp			;4660
	add hl,bc		;4661
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
	add hl,sp		;4672
	dec b			;4673
	dec sp			;4674
	dec b			;4675
	scf			;4676
	add hl,bc		;4677
	add hl,sp		;4678
	add hl,bc		;4679
	nop			;467a
	nop			;467b
	nop			;467c
	nop			;467d
	nop			;467e
	nop			;467f
	nop			;4680
	nop			;4681
	nop			;4682
	nop			;4683
	nop			;4684
	nop			;4685
	nop			;4686
	nop			;4687
	nop			;4688
	nop			;4689
	scf			;468a
	dec b			;468b
	add hl,sp		;468c
	dec b			;468d
	ld (hl),009h		;468e
	ld (hl),009h		;4690
	nop			;4692
	nop			;4693
	nop			;4694
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
	nop			;46a0
	nop			;46a1
	ld (hl),005h		;46a2
	ld (hl),005h		;46a4
	scf			;46a6
	add hl,bc		;46a7
	add hl,sp		;46a8
	add hl,bc		;46a9
	nop			;46aa
	nop			;46ab
	nop			;46ac
	nop			;46ad
	nop			;46ae
	nop			;46af
	nop			;46b0
	nop			;46b1
	add hl,sp		;46b2
	add hl,bc		;46b3
	dec sp			;46b4
	add hl,bc		;46b5
	nop			;46b6
	nop			;46b7
	nop			;46b8
	nop			;46b9
	scf			;46ba
	dec b			;46bb
	add hl,sp		;46bc
	dec b			;46bd
	nop			;46be
	nop			;46bf
	nop			;46c0
	nop			;46c1
	nop			;46c2
	nop			;46c3
	nop			;46c4
	nop			;46c5
	add hl,sp		;46c6
	dec b			;46c7
	dec sp			;46c8
	dec b			;46c9
	nop			;46ca
	nop			;46cb
	nop			;46cc
	nop			;46cd
	nop			;46ce
	nop			;46cf
	nop			;46d0
	nop			;46d1
	nop			;46d2
	nop			;46d3
	nop			;46d4
	nop			;46d5
	ld (03709h),a		;46d6
	add hl,bc		;46d9
	nop			;46da
	nop			;46db
	nop			;46dc
	nop			;46dd
	nop			;46de
	nop			;46df
	nop			;46e0
	nop			;46e1
	inc (hl)		;46e2
	add hl,bc		;46e3
	add hl,sp		;46e4
	add hl,bc		;46e5
	nop			;46e6
	nop			;46e7
	nop			;46e8
	nop			;46e9
	ld (03705h),a		;46ea
	dec b			;46ed
	nop			;46ee
	nop			;46ef
	nop			;46f0
	nop			;46f1
	nop			;46f2
	nop			;46f3
	nop			;46f4
	nop			;46f5
	inc (hl)		;46f6
	dec b			;46f7
	add hl,sp		;46f8
	dec b			;46f9
	nop			;46fa
	nop			;46fb
	nop			;46fc
	nop			;46fd
	nop			;46fe
	nop			;46ff
	nop			;4700
	nop			;4701
	nop			;4702
	nop			;4703
	nop			;4704
	nop			;4705
	ld (hl),00ah		;4706
	ld (0000ah),a		;4708
	nop			;470b
	nop			;470c
	nop			;470d
	nop			;470e
	nop			;470f
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
	ld (hl),005h		;471a
	ld (00005h),a		;471c
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
	nop			;4740
	nop			;4741
	nop			;4742
	nop			;4743
	nop			;4744
	nop			;4745
	nop			;4746
	nop			;4747
	nop			;4748
	nop			;4749
	nop			;474a
	nop			;474b
	nop			;474c
	nop			;474d
	nop			;474e
	nop			;474f
	nop			;4750
	nop			;4751
	nop			;4752
	nop			;4753
	nop			;4754
	nop			;4755
	nop			;4756
	nop			;4757
	nop			;4758
	nop			;4759
	nop			;475a
	nop			;475b
	nop			;475c
	nop			;475d
	nop			;475e
	nop			;475f
	nop			;4760
	nop			;4761
	nop			;4762
	nop			;4763
	nop			;4764
	nop			;4765
	inc (hl)		;4766
	ld a,(bc)		;4767
	ld sp,0000ah		;4768
	nop			;476b
	nop			;476c
	nop			;476d
	nop			;476e
	nop			;476f
	nop			;4770
	nop			;4771
	nop			;4772
	nop			;4773
	nop			;4774
	nop			;4775
	nop			;4776
	nop			;4777
	nop			;4778
	nop			;4779
	inc (hl)		;477a
	ld b,031h		;477b
	ld b,000h		;477d
	nop			;477f
	nop			;4780
	nop			;4781
	nop			;4782
	nop			;4783
	nop			;4784
	nop			;4785
	nop			;4786
	nop			;4787
	nop			;4788
	nop			;4789
	nop			;478a
	nop			;478b
	nop			;478c
	nop			;478d
	nop			;478e
	nop			;478f
	nop			;4790
	nop			;4791
	nop			;4792
	nop			;4793
	nop			;4794
	nop			;4795
	ld (02f0ah),a		;4796
	ld a,(bc)		;4799
	inc c			;479a
	nop			;479b
	nop			;479c
	nop			;479d
	nop			;479e
	nop			;479f
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
	ld (02f06h),a		;47aa
	ld b,031h		;47ad
	ld a,(bc)		;47af
	ld l,00ah		;47b0
	nop			;47b2
	nop			;47b3
	nop			;47b4
	nop			;47b5
	nop			;47b6
	nop			;47b7
	ld h,c			;47b8
	nop			;47b9
	nop			;47ba
	nop			;47bb
	nop			;47bc
	nop			;47bd
	ex af,af'		;47be
	nop			;47bf
	dec bc			;47c0
	rrca			;47c1
	nop			;47c2
	nop			;47c3
	ld h,a			;47c4
	ld bc,00163h		;47c5
	ld h,e			;47c8
	ld bc,01505h		;47c9
	ld l,h			;47cc
	ld (bc),a		;47cd
	ld l,d			;47ce
	ld bc,00000h		;47cf
	ld l,d			;47d2
	ld bc,0016ch		;47d3
	nop			;47d6
	nop			;47d7
	ld l,e			;47d8
	ld (bc),a		;47d9
	ld (0000fh),a		;47da
	nop			;47dd
	ld h,e			;47de
	nop			;47df
	ld h,e			;47e0
	nop			;47e1
	dec b			;47e2
	nop			;47e3
	ld l,h			;47e4
	ld (bc),a		;47e5
	nop			;47e6
	nop			;47e7
	ld h,e			;47e8
	ld bc,00267h		;47e9
	ld h,a			;47ec
	ld (bc),a		;47ed
	inc b			;47ee
	nop			;47ef
	rla			;47f0
	rrca			;47f1
	nop			;47f2
	nop			;47f3
	nop			;47f4
	nop			;47f5
	nop			;47f6
	nop			;47f7
	nop			;47f8
	nop			;47f9
	ex af,af'		;47fa
	nop			;47fb
	dec bc			;47fc
	rrca			;47fd
	ld h,a			;47fe
	ld bc,00063h		;47ff
	ld l,h			;4802
	ld bc,0016ch		;4803
	inc b			;4806
	nop			;4807
	nop			;4808
	nop			;4809
	nop			;480a
	nop			;480b
	nop			;480c
	nop			;480d
	ld l,h			;480e
	ld bc,0016ch		;480f
	nop			;4812
	nop			;4813
	ld l,h			;4814
	ld (bc),a		;4815
	nop			;4816
	nop			;4817
	ld h,d			;4818
	jr l481bh		;4819
l481bh:
	nop			;481b
	nop			;481c
	nop			;481d
	dec b			;481e
	nop			;481f
	djnz $+17		;4820
	ld sp,02f0fh		;4822
	dec c			;4825
	cpl			;4826
	ld a,(bc)		;4827
	ld (0050ah),a		;4828
	nop			;482b
	ld l,h			;482c
	ld (bc),a		;482d
	ld h,a			;482e
	ld bc,00000h		;482f
	nop			;4832
	nop			;4833
	nop			;4834
	nop			;4835
	nop			;4836
	nop			;4837
	ld l,e			;4838
	ld (bc),a		;4839
	cpl			;483a
	rrca			;483b
	ld sp,0310dh		;483c
	ld a,(bc)		;483f
	inc (hl)		;4840
	ld a,(bc)		;4841
	inc b			;4842
	nop			;4843
	ld l,h			;4844
	ld (bc),a		;4845
	ld h,a			;4846
	ld bc,00000h		;4847
	nop			;484a
	nop			;484b
	nop			;484c
	nop			;484d
	nop			;484e
	nop			;484f
	ld (de),a		;4850
	rrca			;4851
	ld hl,(0320fh)		;4852
	dec c			;4855
	ld (0360ah),a		;4856
	ld a,(bc)		;4859
	ex af,af'		;485a
	nop			;485b
	ld l,h			;485c
	ld (bc),a		;485d
	ld h,a			;485e
	ld bc,00000h		;485f
	nop			;4862
	nop			;4863
	nop			;4864
	nop			;4865
	dec b			;4866
	nop			;4867
	ld l,e			;4868
	ld (bc),a		;4869
	inc (hl)		;486a
	rrca			;486b
	inc (hl)		;486c
	dec c			;486d
	inc (hl)		;486e
	ld a,(bc)		;486f
	add hl,sp		;4870
	ld a,(bc)		;4871
	dec b			;4872
	nop			;4873
	ld l,h			;4874
	ld (bc),a		;4875
	ld h,a			;4876
	ld bc,00000h		;4877
	nop			;487a
	nop			;487b
	nop			;487c
	nop			;487d
	nop			;487e
	nop			;487f
	add hl,bc		;4880
	rrca			;4881
	ld (0360fh),a		;4882
	dec c			;4885
	ld (hl),00ah		;4886
	dec sp			;4888
	ld a,(bc)		;4889
	inc bc			;488a
	nop			;488b
	ld l,h			;488c
	ld (bc),a		;488d
	ld h,a			;488e
	ld bc,00000h		;488f
	nop			;4892
	nop			;4893
	nop			;4894
	nop			;4895
	nop			;4896
	nop			;4897
	ld l,e			;4898
	ld (bc),a		;4899
	inc (hl)		;489a
	rrca			;489b
	nop			;489c
	nop			;489d
	nop			;489e
	nop			;489f
	nop			;48a0
	nop			;48a1
	inc bc			;48a2
	nop			;48a3
	ld l,h			;48a4
	ld (bc),a		;48a5
	ld h,a			;48a6
	ld bc,00000h		;48a7
	ld h,a			;48aa
	ld bc,00167h		;48ab
	dec b			;48ae
	nop			;48af
	dec d			;48b0
	rrca			;48b1
	add hl,sp		;48b2
	rrca			;48b3
	nop			;48b4
	nop			;48b5
	nop			;48b6
	nop			;48b7
	nop			;48b8
	nop			;48b9
	inc bc			;48ba
	nop			;48bb
	add hl,bc		;48bc
	rrca			;48bd
	ld h,a			;48be
	ld bc,00000h		;48bf
	nop			;48c2
	nop			;48c3
	nop			;48c4
	nop			;48c5
	inc bc			;48c6
	nop			;48c7
	ld l,e			;48c8
	ld (bc),a		;48c9
	inc (hl)		;48ca
	rrca			;48cb
	nop			;48cc
	nop			;48cd
	nop			;48ce
	nop			;48cf
	nop			;48d0
	nop			;48d1
	nop			;48d2
	nop			;48d3
	ld l,h			;48d4
	ld (bc),a		;48d5
	ld h,a			;48d6
	ld bc,00000h		;48d7
	nop			;48da
	nop			;48db
	nop			;48dc
	nop			;48dd
	dec b			;48de
	nop			;48df
	ld l,e			;48e0
	ld (bc),a		;48e1
	ld (0000fh),a		;48e2
	nop			;48e5
	inc (hl)		;48e6
	ld a,(bc)		;48e7
	add hl,sp		;48e8
	ld a,(bc)		;48e9
	dec b			;48ea
	nop			;48eb
	ld l,h			;48ec
	ld (bc),a		;48ed
	ld h,a			;48ee
	ld bc,00167h		;48ef
	ld (hl),00ah		;48f2
	dec sp			;48f4
	ld a,(bc)		;48f5
	nop			;48f6
	nop			;48f7
	ld l,e			;48f8
	ld (bc),a		;48f9
	ld sp,0000fh		;48fa
	nop			;48fd
	nop			;48fe
	nop			;48ff
	nop			;4900
	nop			;4901
	inc b			;4902
	nop			;4903
	ld l,h			;4904
	ld (bc),a		;4905
	ld h,a			;4906
	ld bc,00000h		;4907
	nop			;490a
	nop			;490b
	nop			;490c
	nop			;490d
	nop			;490e
	nop			;490f
	nop			;4910
	nop			;4911
	dec l			;4912
	rrca			;4913
	ld l,h			;4914
	ld bc,00a32h		;4915
	ld (hl),00ah		;4918
	ex af,af'		;491a
	nop			;491b
	inc b			;491c
	rrca			;491d
	nop			;491e
	nop			;491f
	ld h,a			;4920
	ld (bc),a		;4921
	nop			;4922
	nop			;4923
	nop			;4924
	nop			;4925
	dec b			;4926
	nop			;4927
	nop			;4928
	nop			;4929
	nop			;492a
	nop			;492b
	nop			;492c
	nop			;492d
	nop			;492e
	nop			;492f
	nop			;4930
	nop			;4931
	dec b			;4932
	nop			;4933
	nop			;4934
	nop			;4935
	nop			;4936
	nop			;4937
	ld l,h			;4938
	ld bc,00000h		;4939
	nop			;493c
	nop			;493d
	nop			;493e
	nop			;493f
	rlca			;4940
	rrca			;4941
	ld h,a			;4942
	ld bc,00f32h		;4943
	nop			;4946
	nop			;4947
	nop			;4948
	nop			;4949
	dec b			;494a
	nop			;494b
	ld l,h			;494c
	ld (bc),a		;494d
	nop			;494e
	nop			;494f
	ld l,h			;4950
	ex af,af'		;4951
	nop			;4952
	nop			;4953
	nop			;4954
	nop			;4955
	nop			;4956
	nop			;4957
	ld l,e			;4958
	ld (bc),a		;4959
	dec hl			;495a
	rrca			;495b
	ld (0390fh),a		;495c
	ld a,(bc)		;495f
	dec sp			;4960
	ld a,(bc)		;4961
	dec b			;4962
	nop			;4963
	ld l,h			;4964
	ld (bc),a		;4965
	ld h,a			;4966
	ld bc,00f2dh		;4967
	nop			;496a
	nop			;496b
	nop			;496c
	nop			;496d
	inc b			;496e
	nop			;496f
	inc de			;4970
	rrca			;4971
	dec l			;4972
	rrca			;4973
	ld l,h			;4974
	ex af,af'		;4975
	scf			;4976
	ld a,(bc)		;4977
	add hl,sp		;4978
	ld a,(bc)		;4979
	ex af,af'		;497a
	nop			;497b
	rlca			;497c
	rrca			;497d
	ld h,a			;497e
	ld bc,00f2dh		;497f
	nop			;4982
	nop			;4983
	nop			;4984
	nop			;4985
	ex af,af'		;4986
	nop			;4987
	ld l,e			;4988
	ld (bc),a		;4989
	cpl			;498a
	rrca			;498b
	ld (0360fh),a		;498c
	ld a,(bc)		;498f
	ld (hl),00ah		;4990
	nop			;4992
	nop			;4993
	ld l,h			;4994
	ld (bc),a		;4995
	ld h,a			;4996
	ld bc,0086ch		;4997
	nop			;499a
	nop			;499b
	nop			;499c
	nop			;499d
	dec b			;499e
	nop			;499f
	ld l,e			;49a0
	ld (bc),a		;49a1
	nop			;49a2
	nop			;49a3
	ld (0370fh),a		;49a4
	ld a,(bc)		;49a7
	add hl,sp		;49a8
	ld a,(bc)		;49a9
	inc b			;49aa
	nop			;49ab
	ld l,h			;49ac
	ld (bc),a		;49ad
	nop			;49ae
	nop			;49af
	inc (hl)		;49b0
	rrca			;49b1
	add hl,sp		;49b2
	ld a,(bc)		;49b3
	dec sp			;49b4
	ld a,(bc)		;49b5
	nop			;49b6
	nop			;49b7
	ld l,e			;49b8
	ld (bc),a		;49b9
	ld (l6c0fh),a		;49ba
	ex af,af'		;49bd
	nop			;49be
	nop			;49bf
	nop			;49c0
	nop			;49c1
	ex af,af'		;49c2
	nop			;49c3
	ld l,h			;49c4
	ld (bc),a		;49c5
	ld h,a			;49c6
	ld bc,00f34h		;49c7
	nop			;49ca
	nop			;49cb
	nop			;49cc
	nop			;49cd
	nop			;49ce
	nop			;49cf
	nop			;49d0
	nop			;49d1
	nop			;49d2
	nop			;49d3
	ld (0320fh),a		;49d4
	ld a,(bc)		;49d7
	scf			;49d8
	ld a,(bc)		;49d9
	ex af,af'		;49da
	nop			;49db
	inc b			;49dc
	rrca			;49dd
	nop			;49de
	nop			;49df
	ld l,h			;49e0
	ex af,af'		;49e1
	inc (hl)		;49e2
	ld a,(bc)		;49e3
	add hl,sp		;49e4
	ld a,(bc)		;49e5
	ex af,af'		;49e6
	nop			;49e7
	nop			;49e8
	nop			;49e9
	ld sp,0320fh		;49ea
	rrca			;49ed
	nop			;49ee
	nop			;49ef
	nop			;49f0
	nop			;49f1
	inc b			;49f2
	nop			;49f3
	nop			;49f4
	nop			;49f5
	ld h,a			;49f6
	ld bc,00f31h		;49f7
	nop			;49fa
	nop			;49fb
	nop			;49fc
	nop			;49fd
	nop			;49fe
	nop			;49ff
	ld (bc),a		;4a00
	rrca			;4a01
	cpl			;4a02
	rrca			;4a03
	cpl			;4a04
	dec c			;4a05
	ld (hl),00ah		;4a06
	ld (0040ah),a		;4a08
	nop			;4a0b
	ld l,h			;4a0c
	ld (bc),a		;4a0d
	ld h,a			;4a0e
	ld bc,00000h		;4a0f
	nop			;4a12
	nop			;4a13
	nop			;4a14
	nop			;4a15
	nop			;4a16
	nop			;4a17
	ld l,e			;4a18
	ld (bc),a		;4a19
	ld sp,0000fh		;4a1a
	nop			;4a1d
	nop			;4a1e
	nop			;4a1f
	nop			;4a20
	nop			;4a21
	inc b			;4a22
	nop			;4a23
	ld l,h			;4a24
	ld (bc),a		;4a25
	nop			;4a26
	nop			;4a27
	nop			;4a28
	nop			;4a29
	nop			;4a2a
	nop			;4a2b
	nop			;4a2c
	nop			;4a2d
	inc b			;4a2e
	nop			;4a2f
	ld l,e			;4a30
	ld (bc),a		;4a31
	ld (0000fh),a		;4a32
	nop			;4a35
	nop			;4a36
	nop			;4a37
	nop			;4a38
	nop			;4a39
	ex af,af'		;4a3a
	nop			;4a3b
	ld l,h			;4a3c
	ld (bc),a		;4a3d
	ld h,a			;4a3e
	ld bc,00000h		;4a3f
	nop			;4a42
	nop			;4a43
	nop			;4a44
	nop			;4a45
	inc b			;4a46
	nop			;4a47
	ld l,e			;4a48
	ld (bc),a		;4a49
	inc (hl)		;4a4a
	rrca			;4a4b
	ld sp,0000dh		;4a4c
	nop			;4a4f
	nop			;4a50
	nop			;4a51
	nop			;4a52
	nop			;4a53
	ld l,h			;4a54
	ld (bc),a		;4a55
	nop			;4a56
	nop			;4a57
	cpl			;4a58
	dec c			;4a59
	nop			;4a5a
	nop			;4a5b
	nop			;4a5c
	nop			;4a5d
	ex af,af'		;4a5e
	nop			;4a5f
	ld b,00fh		;4a60
	ld (hl),00fh		;4a62
	ld l,00dh		;4a64
	inc (hl)		;4a66
	ld c,031h		;4a67
	ld c,004h		;4a69
	nop			;4a6b
	ld l,h			;4a6c
	ld (bc),a		;4a6d
	ld h,a			;4a6e
	ld bc,00000h		;4a6f
	nop			;4a72
	nop			;4a73
	nop			;4a74
	nop			;4a75
	nop			;4a76
	nop			;4a77
	ld l,e			;4a78
	ld (bc),a		;4a79
	inc (hl)		;4a7a
	rrca			;4a7b
	ld (hl),00dh		;4a7c
	nop			;4a7e
	nop			;4a7f
	nop			;4a80
	nop			;4a81
	ex af,af'		;4a82
	nop			;4a83
	ld l,h			;4a84
	ld (bc),a		;4a85
	ld h,a			;4a86
	ld bc,00167h		;4a87
	nop			;4a8a
	nop			;4a8b
	nop			;4a8c
	nop			;4a8d
	nop			;4a8e
	nop			;4a8f
	ld l,e			;4a90
	ld (bc),a		;4a91
	nop			;4a92
	nop			;4a93
	inc (hl)		;4a94
	dec c			;4a95
	ld (02f0eh),a		;4a96
	ld c,005h		;4a99
	nop			;4a9b
	ld l,h			;4a9c
	ld (bc),a		;4a9d
	nop			;4a9e
	nop			;4a9f
	ld h,a			;4aa0
	ld bc,00000h		;4aa1
	nop			;4aa4
	nop			;4aa5
	ex af,af'		;4aa6
	nop			;4aa7
	ld l,e			;4aa8
	ld (bc),a		;4aa9
	ld sp,0310fh		;4aaa
	dec c			;4aad
	ld sp,02e0ah		;4aae
	ld a,(bc)		;4ab1
	ex af,af'		;4ab2
	nop			;4ab3
	ld l,h			;4ab4
	ld (bc),a		;4ab5
	ld h,a			;4ab6
	ld bc,00000h		;4ab7
	nop			;4aba
	nop			;4abb
	nop			;4abc
	nop			;4abd
	ex af,af'		;4abe
	nop			;4abf
	dec bc			;4ac0
	rrca			;4ac1
	nop			;4ac2
	nop			;4ac3
	ld h,a			;4ac4
	ld bc,00162h		;4ac5
	ld h,c			;4ac8
	nop			;4ac9
	inc b			;4aca
	dec d			;4acb
	ld l,h			;4acc
	ld (bc),a		;4acd
	ld l,d			;4ace
	ld bc,00000h		;4acf
	nop			;4ad2
	nop			;4ad3
	nop			;4ad4
	nop			;4ad5
	nop			;4ad6
	nop			;4ad7
	ld l,e			;4ad8
	ld (bc),a		;4ad9
	ld (0000fh),a		;4ada
	nop			;4add
	nop			;4ade
	nop			;4adf
	nop			;4ae0
	nop			;4ae1
	inc b			;4ae2
	nop			;4ae3
	ld l,h			;4ae4
	ld (bc),a		;4ae5
	nop			;4ae6
	nop			;4ae7
	ld h,e			;4ae8
	ld bc,00000h		;4ae9
	nop			;4aec
	nop			;4aed
	inc b			;4aee
	nop			;4aef
	rla			;4af0
	rrca			;4af1
	nop			;4af2
	nop			;4af3
	ld l,h			;4af4
	ld bc,00a32h		;4af5
	nop			;4af8
	nop			;4af9
	dec b			;4afa
	nop			;4afb
	dec bc			;4afc
	rrca			;4afd
	ld h,a			;4afe
	ld bc,00063h		;4aff
	nop			;4b02
	nop			;4b03
	nop			;4b04
	nop			;4b05
	inc b			;4b06
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
	ld l,h			;4b14
	ld (bc),a		;4b15
	nop			;4b16
	nop			;4b17
	ld l,h			;4b18
	ld bc,00167h		;4b19
	nop			;4b1c
	nop			;4b1d
	inc b			;4b1e
	nop			;4b1f
	djnz $+17		;4b20
	ld sp,0000fh		;4b22
	nop			;4b25
	nop			;4b26
	nop			;4b27
	nop			;4b28
	nop			;4b29
	inc b			;4b2a
	nop			;4b2b
	ld l,h			;4b2c
	ld (bc),a		;4b2d
	ld h,a			;4b2e
	ld bc,0016ch		;4b2f
	nop			;4b32
	nop			;4b33
	nop			;4b34
	nop			;4b35
	nop			;4b36
	nop			;4b37
	ld l,e			;4b38
	ld (bc),a		;4b39
	cpl			;4b3a
	rrca			;4b3b
	nop			;4b3c
	nop			;4b3d
	ld sp,0000ah		;4b3e
	nop			;4b41
	inc b			;4b42
	nop			;4b43
	ld l,h			;4b44
	ld (bc),a		;4b45
	ld h,a			;4b46
	ld bc,0016ch		;4b47
	ld h,a			;4b4a
	ld bc,00000h		;4b4b
	nop			;4b4e
	nop			;4b4f
	ld (de),a		;4b50
	rrca			;4b51
	ld hl,(0000fh)		;4b52
	nop			;4b55
	cpl			;4b56
	ld a,(bc)		;4b57
	nop			;4b58
	nop			;4b59
	dec b			;4b5a
	nop			;4b5b
	ld l,h			;4b5c
	ld (bc),a		;4b5d
	ld h,a			;4b5e
	ld bc,00162h		;4b5f
	ld h,a			;4b62
	ld bc,00000h		;4b63
	dec b			;4b66
	nop			;4b67
	ld l,e			;4b68
	ld (bc),a		;4b69
	inc (hl)		;4b6a
	rrca			;4b6b
	ld hl,(l610ah)		;4b6c
	nop			;4b6f
	nop			;4b70
	nop			;4b71
	inc b			;4b72
	nop			;4b73
	ld l,h			;4b74
	ld (bc),a		;4b75
	ld h,a			;4b76
	ld bc,00167h		;4b77
	nop			;4b7a
	nop			;4b7b
	nop			;4b7c
	nop			;4b7d
	nop			;4b7e
	nop			;4b7f
	add hl,bc		;4b80
	rrca			;4b81
	ld (0340fh),a		;4b82
	ld a,(bc)		;4b85
	nop			;4b86
	nop			;4b87
	nop			;4b88
	nop			;4b89
	inc b			;4b8a
	nop			;4b8b
	ld l,h			;4b8c
	ld (bc),a		;4b8d
	ld h,a			;4b8e
	ld bc,00167h		;4b8f
	nop			;4b92
	nop			;4b93
	nop			;4b94
	nop			;4b95
	nop			;4b96
	nop			;4b97
	ld l,e			;4b98
	ld (bc),a		;4b99
	inc (hl)		;4b9a
	rrca			;4b9b
	ld (0000ah),a		;4b9c
	nop			;4b9f
	nop			;4ba0
	nop			;4ba1
	inc b			;4ba2
	nop			;4ba3
	ld l,h			;4ba4
	ld (bc),a		;4ba5
	ld h,a			;4ba6
	ld bc,00167h		;4ba7
	nop			;4baa
	nop			;4bab
	nop			;4bac
	nop			;4bad
	inc b			;4bae
	nop			;4baf
	dec d			;4bb0
	rrca			;4bb1
	add hl,sp		;4bb2
	rrca			;4bb3
	inc (hl)		;4bb4
	ld a,(bc)		;4bb5
	nop			;4bb6
	nop			;4bb7
	nop			;4bb8
	nop			;4bb9
	dec b			;4bba
	nop			;4bbb
	add hl,bc		;4bbc
	rrca			;4bbd
	ld h,a			;4bbe
	ld bc,00167h		;4bbf
	nop			;4bc2
	nop			;4bc3
	nop			;4bc4
	nop			;4bc5
	inc b			;4bc6
	nop			;4bc7
	ld l,e			;4bc8
	ld (bc),a		;4bc9
	inc (hl)		;4bca
	rrca			;4bcb
	add hl,sp		;4bcc
	ld a,(bc)		;4bcd
	nop			;4bce
	nop			;4bcf
	nop			;4bd0
	nop			;4bd1
	nop			;4bd2
	nop			;4bd3
	ld l,h			;4bd4
	ld (bc),a		;4bd5
	ld h,a			;4bd6
	ld bc,00167h		;4bd7
	nop			;4bda
	nop			;4bdb
	nop			;4bdc
	nop			;4bdd
	inc b			;4bde
	nop			;4bdf
	ld l,e			;4be0
	ld (bc),a		;4be1
	ld (0340fh),a		;4be2
	ld a,(bc)		;4be5
	nop			;4be6
	nop			;4be7
	nop			;4be8
	nop			;4be9
	inc b			;4bea
	nop			;4beb
	ld l,h			;4bec
	ld (bc),a		;4bed
	ld h,a			;4bee
	ld bc,00167h		;4bef
	nop			;4bf2
	nop			;4bf3
	nop			;4bf4
	nop			;4bf5
	nop			;4bf6
	nop			;4bf7
	ld l,e			;4bf8
	ld (bc),a		;4bf9
	ld sp,0320fh		;4bfa
	ld a,(bc)		;4bfd
	nop			;4bfe
	nop			;4bff
	nop			;4c00
	nop			;4c01
	inc b			;4c02
	nop			;4c03
	ld l,h			;4c04
	ld (bc),a		;4c05
	ld h,a			;4c06
	ld bc,00167h		;4c07
	nop			;4c0a
	nop			;4c0b
	nop			;4c0c
	nop			;4c0d
	nop			;4c0e
	nop			;4c0f
	nop			;4c10
	nop			;4c11
	dec l			;4c12
	rrca			;4c13
	ld sp,0000ah		;4c14
	nop			;4c17
	nop			;4c18
	nop			;4c19
	dec b			;4c1a
	nop			;4c1b
	inc b			;4c1c
	rrca			;4c1d
	nop			;4c1e
	nop			;4c1f
	ld h,a			;4c20
	ld bc,00000h		;4c21
	nop			;4c24
	nop			;4c25
	dec b			;4c26
	nop			;4c27
	nop			;4c28
	nop			;4c29
	nop			;4c2a
	nop			;4c2b
	dec l			;4c2c
	ld a,(bc)		;4c2d
	nop			;4c2e
	nop			;4c2f
	nop			;4c30
	nop			;4c31
	inc b			;4c32
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
	rlca			;4c40
	rrca			;4c41
	ld h,a			;4c42
	ld bc,00000h		;4c43
	nop			;4c46
	nop			;4c47
	nop			;4c48
	nop			;4c49
	inc b			;4c4a
	nop			;4c4b
	ld l,h			;4c4c
	ld (bc),a		;4c4d
	nop			;4c4e
	nop			;4c4f
	nop			;4c50
	nop			;4c51
	nop			;4c52
	nop			;4c53
	nop			;4c54
	nop			;4c55
	nop			;4c56
	nop			;4c57
	ld l,e			;4c58
	ld (bc),a		;4c59
	dec hl			;4c5a
	rrca			;4c5b
	ld h,a			;4c5c
	ld bc,00000h		;4c5d
	nop			;4c60
	nop			;4c61
	inc b			;4c62
	nop			;4c63
	ld l,h			;4c64
	ld (bc),a		;4c65
	ld h,a			;4c66
	ld bc,00000h		;4c67
	nop			;4c6a
	nop			;4c6b
	nop			;4c6c
	nop			;4c6d
	inc b			;4c6e
	nop			;4c6f
	inc de			;4c70
	rrca			;4c71
	dec l			;4c72
	rrca			;4c73
	dec hl			;4c74
	ld a,(bc)		;4c75
	nop			;4c76
	nop			;4c77
	nop			;4c78
	nop			;4c79
	dec b			;4c7a
	nop			;4c7b
	rlca			;4c7c
	rrca			;4c7d
	ld h,a			;4c7e
	ld bc,00167h		;4c7f
	nop			;4c82
	nop			;4c83
	nop			;4c84
	nop			;4c85
	inc b			;4c86
	nop			;4c87
	ld l,e			;4c88
	ld (bc),a		;4c89
	cpl			;4c8a
	rrca			;4c8b
	dec l			;4c8c
	ld a,(bc)		;4c8d
	nop			;4c8e
	nop			;4c8f
	nop			;4c90
	nop			;4c91
	nop			;4c92
	nop			;4c93
	ld l,h			;4c94
	ld (bc),a		;4c95
	ld h,a			;4c96
	ld bc,00167h		;4c97
	nop			;4c9a
	nop			;4c9b
	nop			;4c9c
	nop			;4c9d
	inc b			;4c9e
	nop			;4c9f
	ld l,e			;4ca0
	ld (bc),a		;4ca1
	nop			;4ca2
	nop			;4ca3
	cpl			;4ca4
	ld a,(bc)		;4ca5
	nop			;4ca6
	nop			;4ca7
	nop			;4ca8
	nop			;4ca9
	inc b			;4caa
	nop			;4cab
	ld l,h			;4cac
	ld (bc),a		;4cad
	nop			;4cae
	nop			;4caf
	ld h,a			;4cb0
	ld bc,00000h		;4cb1
	nop			;4cb4
	nop			;4cb5
	nop			;4cb6
	nop			;4cb7
	ld l,e			;4cb8
	ld (bc),a		;4cb9
	ld (0000fh),a		;4cba
	nop			;4cbd
	nop			;4cbe
	nop			;4cbf
	nop			;4cc0
	nop			;4cc1
	inc b			;4cc2
	nop			;4cc3
	ld l,h			;4cc4
	ld (bc),a		;4cc5
	ld h,a			;4cc6
	ld bc,00000h		;4cc7
	nop			;4cca
	nop			;4ccb
	nop			;4ccc
	nop			;4ccd
	nop			;4cce
	nop			;4ccf
	nop			;4cd0
	nop			;4cd1
	nop			;4cd2
	nop			;4cd3
	ld (0000ah),a		;4cd4
	nop			;4cd7
	nop			;4cd8
	nop			;4cd9
	dec b			;4cda
	nop			;4cdb
	inc b			;4cdc
	rrca			;4cdd
	nop			;4cde
	nop			;4cdf
	ld h,a			;4ce0
	ld bc,00000h		;4ce1
	nop			;4ce4
	nop			;4ce5
	dec b			;4ce6
	nop			;4ce7
	nop			;4ce8
	nop			;4ce9
	ld sp,0000fh		;4cea
	nop			;4ced
	nop			;4cee
	nop			;4cef
	nop			;4cf0
	nop			;4cf1
	inc b			;4cf2
	nop			;4cf3
	nop			;4cf4
	nop			;4cf5
	ld h,a			;4cf6
	ld bc,00000h		;4cf7
	nop			;4cfa
	nop			;4cfb
	nop			;4cfc
	nop			;4cfd
	nop			;4cfe
	nop			;4cff
	ld (bc),a		;4d00
	rrca			;4d01
	cpl			;4d02
	rrca			;4d03
	ld sp,0000ah		;4d04
	nop			;4d07
	nop			;4d08
	nop			;4d09
	inc b			;4d0a
	nop			;4d0b
	ld l,h			;4d0c
	ld (bc),a		;4d0d
	ld h,a			;4d0e
	ld bc,00167h		;4d0f
	nop			;4d12
	nop			;4d13
	nop			;4d14
	nop			;4d15
	nop			;4d16
	nop			;4d17
	ld l,e			;4d18
	ld (bc),a		;4d19
	ld sp,02f0fh		;4d1a
	ld a,(bc)		;4d1d
	nop			;4d1e
	nop			;4d1f
	nop			;4d20
	nop			;4d21
	inc b			;4d22
	nop			;4d23
	ld l,h			;4d24
	ld (bc),a		;4d25
	nop			;4d26
	nop			;4d27
	ld h,a			;4d28
	ld bc,00000h		;4d29
	nop			;4d2c
	nop			;4d2d
	inc b			;4d2e
	nop			;4d2f
	ld l,e			;4d30
	ld (bc),a		;4d31
	ld (0310fh),a		;4d32
	ld a,(bc)		;4d35
	nop			;4d36
	nop			;4d37
	nop			;4d38
	nop			;4d39
	dec b			;4d3a
	nop			;4d3b
	ld l,h			;4d3c
	ld (bc),a		;4d3d
	ld h,a			;4d3e
	ld bc,00000h		;4d3f
	nop			;4d42
	nop			;4d43
	nop			;4d44
	nop			;4d45
	inc b			;4d46
	nop			;4d47
	ld l,e			;4d48
	ld (bc),a		;4d49
	inc (hl)		;4d4a
	rrca			;4d4b
	ld (0000ah),a		;4d4c
	nop			;4d4f
	nop			;4d50
	nop			;4d51
	nop			;4d52
	nop			;4d53
	ld l,h			;4d54
	ld (bc),a		;4d55
	nop			;4d56
	nop			;4d57
	ld h,a			;4d58
	ld bc,00000h		;4d59
	nop			;4d5c
	nop			;4d5d
	inc b			;4d5e
	nop			;4d5f
	ld b,00fh		;4d60
	ld (hl),00fh		;4d62
	inc (hl)		;4d64
	ld a,(bc)		;4d65
	nop			;4d66
	nop			;4d67
	nop			;4d68
	nop			;4d69
	inc b			;4d6a
	nop			;4d6b
	ld l,h			;4d6c
	ld (bc),a		;4d6d
	ld h,a			;4d6e
	ld bc,00000h		;4d6f
	nop			;4d72
	nop			;4d73
	nop			;4d74
	nop			;4d75
	nop			;4d76
	nop			;4d77
	ld l,e			;4d78
	ld (bc),a		;4d79
	inc (hl)		;4d7a
	rrca			;4d7b
	ld (hl),00ah		;4d7c
	nop			;4d7e
	nop			;4d7f
	nop			;4d80
	nop			;4d81
	inc b			;4d82
	nop			;4d83
	ld l,h			;4d84
	ld (bc),a		;4d85
	ld h,a			;4d86
	ld bc,00167h		;4d87
	nop			;4d8a
	nop			;4d8b
	nop			;4d8c
	nop			;4d8d
	nop			;4d8e
	nop			;4d8f
	ld l,e			;4d90
	ld (bc),a		;4d91
	nop			;4d92
	nop			;4d93
	inc (hl)		;4d94
	ld a,(bc)		;4d95
	nop			;4d96
	nop			;4d97
	nop			;4d98
	nop			;4d99
	dec b			;4d9a
	nop			;4d9b
	ld l,h			;4d9c
	ld (bc),a		;4d9d
	nop			;4d9e
	nop			;4d9f
	ld h,a			;4da0
	ld bc,00000h		;4da1
	nop			;4da4
	nop			;4da5
	dec b			;4da6
	nop			;4da7
	ld l,e			;4da8
	ld (bc),a		;4da9
	ld sp,l6c0fh		;4daa
	ld (bc),a		;4dad
	nop			;4dae
	nop			;4daf
	nop			;4db0
	nop			;4db1
	inc b			;4db2
	nop			;4db3
	ld l,h			;4db4
	ld (bc),a		;4db5
	ld h,a			;4db6
	ld bc,00061h		;4db7
	ld h,d			;4dba
	inc a			;4dbb
	nop			;4dbc
	nop			;4dbd
	nop			;4dbe
	nop			;4dbf
	add hl,bc		;4dc0
	rrca			;4dc1
	nop			;4dc2
	nop			;4dc3
	ld h,a			;4dc4
	ld bc,00001h		;4dc5
	ld bc,00400h		;4dc8
	dec d			;4dcb
	ld l,h			;4dcc
	ld (bc),a		;4dcd
	ld l,d			;4dce
	ld bc,00000h		;4dcf
	nop			;4dd2
	nop			;4dd3
	nop			;4dd4
	nop			;4dd5
	nop			;4dd6
	nop			;4dd7
	ld l,e			;4dd8
	ld (bc),a		;4dd9
	dec hl			;4dda
	rrca			;4ddb
	nop			;4ddc
	nop			;4ddd
	nop			;4dde
	nop			;4ddf
	nop			;4de0
	nop			;4de1
	inc b			;4de2
	nop			;4de3
	ld l,h			;4de4
	ld (bc),a		;4de5
	nop			;4de6
	nop			;4de7
	ld h,e			;4de8
	ld bc,00000h		;4de9
	nop			;4dec
	nop			;4ded
	inc b			;4dee
	nop			;4def
	dec d			;4df0
	rrca			;4df1
	nop			;4df2
	nop			;4df3
	dec hl			;4df4
	ld a,(bc)		;4df5
	nop			;4df6
	nop			;4df7
	nop			;4df8
	nop			;4df9
	dec b			;4dfa
	nop			;4dfb
	add hl,bc		;4dfc
	rrca			;4dfd
	ld h,a			;4dfe
	ld bc,00000h		;4dff
	nop			;4e02
	nop			;4e03
	nop			;4e04
	nop			;4e05
	inc b			;4e06
	nop			;4e07
	nop			;4e08
	nop			;4e09
	nop			;4e0a
	nop			;4e0b
	nop			;4e0c
	nop			;4e0d
	nop			;4e0e
	nop			;4e0f
	nop			;4e10
	nop			;4e11
	nop			;4e12
	nop			;4e13
	ld l,h			;4e14
	ld (bc),a		;4e15
	nop			;4e16
	nop			;4e17
	ld h,a			;4e18
	ld bc,00000h		;4e19
	nop			;4e1c
	nop			;4e1d
	inc b			;4e1e
	nop			;4e1f
	rlca			;4e20
	rrca			;4e21
	ld hl,(0000fh)		;4e22
	nop			;4e25
	nop			;4e26
	nop			;4e27
	nop			;4e28
	nop			;4e29
	inc b			;4e2a
	nop			;4e2b
	ld l,h			;4e2c
	ld (bc),a		;4e2d
	ld h,a			;4e2e
	ld bc,00000h		;4e2f
	nop			;4e32
	nop			;4e33
	nop			;4e34
	nop			;4e35
	nop			;4e36
	nop			;4e37
	ld l,e			;4e38
	ld (bc),a		;4e39
	jr z,l4e4bh		;4e3a
	ld hl,(0000ah)		;4e3c
	nop			;4e3f
	nop			;4e40
	nop			;4e41
	inc b			;4e42
	nop			;4e43
	ld l,h			;4e44
	ld (bc),a		;4e45
	ld h,a			;4e46
	ld bc,00167h		;4e47
	nop			;4e4a
l4e4bh:
	nop			;4e4b
	nop			;4e4c
	nop			;4e4d
	nop			;4e4e
	nop			;4e4f
	inc de			;4e50
	rrca			;4e51
	ld h,00fh		;4e52
	jr z,$+12		;4e54
	nop			;4e56
	nop			;4e57
	nop			;4e58
	nop			;4e59
	dec b			;4e5a
	nop			;4e5b
	ld l,h			;4e5c
	ld (bc),a		;4e5d
	ld h,a			;4e5e
	ld bc,00167h		;4e5f
	nop			;4e62
	nop			;4e63
	nop			;4e64
	nop			;4e65
	dec b			;4e66
	nop			;4e67
	ld l,e			;4e68
	ld (bc),a		;4e69
	jr z,l4e7bh		;4e6a
	ld h,00ah		;4e6c
	nop			;4e6e
	nop			;4e6f
	nop			;4e70
	nop			;4e71
	inc b			;4e72
	nop			;4e73
	ld l,h			;4e74
	ld (bc),a		;4e75
	ld h,a			;4e76
	ld bc,00167h		;4e77
	nop			;4e7a
l4e7bh:
	nop			;4e7b
	nop			;4e7c
	nop			;4e7d
	nop			;4e7e
	nop			;4e7f
	ld b,00fh		;4e80
	ld hl,(0280fh)		;4e82
	ld a,(bc)		;4e85
	nop			;4e86
	nop			;4e87
	nop			;4e88
	nop			;4e89
	inc b			;4e8a
	nop			;4e8b
	ld l,h			;4e8c
	ld (bc),a		;4e8d
	ld h,a			;4e8e
	ld bc,00167h		;4e8f
	nop			;4e92
	nop			;4e93
	nop			;4e94
	nop			;4e95
	nop			;4e96
	nop			;4e97
	ld l,e			;4e98
	ld (bc),a		;4e99
	jr z,l4eabh		;4e9a
	ld hl,(0000ah)		;4e9c
	nop			;4e9f
	nop			;4ea0
	nop			;4ea1
	inc b			;4ea2
	nop			;4ea3
	ld l,h			;4ea4
	ld (bc),a		;4ea5
	ld h,a			;4ea6
	ld bc,00167h		;4ea7
	nop			;4eaa
l4eabh:
	nop			;4eab
	nop			;4eac
	nop			;4ead
	inc b			;4eae
	nop			;4eaf
	ld (de),a		;4eb0
	rrca			;4eb1
	ld h,00fh		;4eb2
	jr z,$+12		;4eb4
	nop			;4eb6
	nop			;4eb7
	nop			;4eb8
	nop			;4eb9
	dec b			;4eba
	nop			;4ebb
	ld b,00fh		;4ebc
	ld h,a			;4ebe
	ld bc,00167h		;4ebf
	nop			;4ec2
	nop			;4ec3
	nop			;4ec4
	nop			;4ec5
	inc b			;4ec6
	nop			;4ec7
	ld l,e			;4ec8
	ld (bc),a		;4ec9
	cpl			;4eca
	rrca			;4ecb
	ld h,00ah		;4ecc
	nop			;4ece
	nop			;4ecf
	nop			;4ed0
	nop			;4ed1
	nop			;4ed2
	nop			;4ed3
	ld l,h			;4ed4
	ld (bc),a		;4ed5
	ld h,a			;4ed6
	ld bc,00167h		;4ed7
	nop			;4eda
	nop			;4edb
	nop			;4edc
	nop			;4edd
	inc b			;4ede
	nop			;4edf
	ld l,e			;4ee0
	ld (bc),a		;4ee1
	nop			;4ee2
	nop			;4ee3
	cpl			;4ee4
	ld a,(bc)		;4ee5
	nop			;4ee6
	nop			;4ee7
	nop			;4ee8
	nop			;4ee9
	inc b			;4eea
	nop			;4eeb
	ld l,h			;4eec
	ld (bc),a		;4eed
	nop			;4eee
	nop			;4eef
	ld h,a			;4ef0
	ld bc,00000h		;4ef1
	nop			;4ef4
	nop			;4ef5
	nop			;4ef6
	nop			;4ef7
	ld l,e			;4ef8
	ld (bc),a		;4ef9
	nop			;4efa
	nop			;4efb
	nop			;4efc
	nop			;4efd
	nop			;4efe
	nop			;4eff
	nop			;4f00
	nop			;4f01
	inc b			;4f02
	nop			;4f03
	ld l,h			;4f04
	ld (bc),a		;4f05
	ld h,a			;4f06
	ld bc,00000h		;4f07
	nop			;4f0a
	nop			;4f0b
	nop			;4f0c
	nop			;4f0d
	nop			;4f0e
	nop			;4f0f
	nop			;4f10
	nop			;4f11
	dec h			;4f12
	rrca			;4f13
	nop			;4f14
	nop			;4f15
	nop			;4f16
	nop			;4f17
	nop			;4f18
	nop			;4f19
	dec b			;4f1a
	nop			;4f1b
	inc b			;4f1c
	rrca			;4f1d
	ld h,a			;4f1e
	ld (bc),a		;4f1f
	ld h,a			;4f20
	ld bc,00000h		;4f21
	nop			;4f24
	nop			;4f25
	dec b			;4f26
	nop			;4f27
	nop			;4f28
	nop			;4f29
	nop			;4f2a
	nop			;4f2b
	dec h			;4f2c
	ld a,(bc)		;4f2d
	nop			;4f2e
	nop			;4f2f
	nop			;4f30
	nop			;4f31
	inc b			;4f32
	nop			;4f33
	nop			;4f34
	nop			;4f35
	nop			;4f36
	nop			;4f37
	ld h,a			;4f38
	ld (bc),a		;4f39
	nop			;4f3a
	nop			;4f3b
	nop			;4f3c
	nop			;4f3d
	nop			;4f3e
	nop			;4f3f
	rlca			;4f40
	rrca			;4f41
	ld h,a			;4f42
	ld bc,00000h		;4f43
	nop			;4f46
	nop			;4f47
	nop			;4f48
	nop			;4f49
	inc b			;4f4a
	nop			;4f4b
	ld l,h			;4f4c
	ld (bc),a		;4f4d
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
	ld l,e			;4f58
	ld (bc),a		;4f59
	dec hl			;4f5a
	rrca			;4f5b
	ld h,a			;4f5c
	ld bc,00000h		;4f5d
	nop			;4f60
	nop			;4f61
	inc b			;4f62
	nop			;4f63
	ld l,h			;4f64
	ld (bc),a		;4f65
	ld h,a			;4f66
	ld bc,00000h		;4f67
	nop			;4f6a
	nop			;4f6b
	nop			;4f6c
	nop			;4f6d
	inc b			;4f6e
	nop			;4f6f
	inc de			;4f70
	rrca			;4f71
	dec l			;4f72
	rrca			;4f73
	dec hl			;4f74
	ld a,(bc)		;4f75
	nop			;4f76
	nop			;4f77
	nop			;4f78
	nop			;4f79
	dec b			;4f7a
	nop			;4f7b
	rlca			;4f7c
	rrca			;4f7d
	ld h,a			;4f7e
	ld bc,00167h		;4f7f
	nop			;4f82
	nop			;4f83
	nop			;4f84
	nop			;4f85
	inc b			;4f86
	nop			;4f87
	ld l,e			;4f88
	ld (bc),a		;4f89
	cpl			;4f8a
	rrca			;4f8b
	dec l			;4f8c
	ld a,(bc)		;4f8d
	nop			;4f8e
	nop			;4f8f
	nop			;4f90
	nop			;4f91
	nop			;4f92
	nop			;4f93
	ld l,h			;4f94
	ld (bc),a		;4f95
	ld h,a			;4f96
	ld bc,00167h		;4f97
	nop			;4f9a
	nop			;4f9b
	nop			;4f9c
	nop			;4f9d
	inc b			;4f9e
	nop			;4f9f
	ld l,e			;4fa0
	ld (bc),a		;4fa1
	nop			;4fa2
	nop			;4fa3
	cpl			;4fa4
	ld a,(bc)		;4fa5
	nop			;4fa6
	nop			;4fa7
	nop			;4fa8
	nop			;4fa9
	inc b			;4faa
	nop			;4fab
	ld l,h			;4fac
	ld (bc),a		;4fad
	nop			;4fae
	nop			;4faf
	ld h,a			;4fb0
	ld bc,00000h		;4fb1
	nop			;4fb4
	nop			;4fb5
	nop			;4fb6
	nop			;4fb7
	ld l,e			;4fb8
	ld (bc),a		;4fb9
	ld (0000fh),a		;4fba
	nop			;4fbd
	nop			;4fbe
	nop			;4fbf
	nop			;4fc0
	nop			;4fc1
	inc b			;4fc2
	nop			;4fc3
	ld l,h			;4fc4
	ld (bc),a		;4fc5
	ld h,a			;4fc6
	ld bc,00000h		;4fc7
	nop			;4fca
	nop			;4fcb
	nop			;4fcc
	nop			;4fcd
	nop			;4fce
	nop			;4fcf
	nop			;4fd0
	nop			;4fd1
	nop			;4fd2
	nop			;4fd3
	ld (0000ah),a		;4fd4
	nop			;4fd7
	nop			;4fd8
	nop			;4fd9
	dec b			;4fda
	nop			;4fdb
	inc b			;4fdc
	rrca			;4fdd
	nop			;4fde
	nop			;4fdf
	ld h,a			;4fe0
	ld bc,00000h		;4fe1
	nop			;4fe4
	nop			;4fe5
	dec b			;4fe6
	nop			;4fe7
	nop			;4fe8
	nop			;4fe9
	ld sp,0000fh		;4fea
	nop			;4fed
	nop			;4fee
	nop			;4fef
	nop			;4ff0
	nop			;4ff1
	inc b			;4ff2
	nop			;4ff3
	nop			;4ff4
	nop			;4ff5
	ld h,a			;4ff6
	ld bc,00000h		;4ff7
	nop			;4ffa
	nop			;4ffb
	nop			;4ffc
	nop			;4ffd
	nop			;4ffe
	nop			;4fff
	ld (bc),a		;5000
	rrca			;5001
	cpl			;5002
	rrca			;5003
	ld sp,02f0ah		;5004
	ld a,(bc)		;5007
	ld sp,00407h		;5008
	nop			;500b
	ld l,h			;500c
	ld (bc),a		;500d
	ld h,a			;500e
	ld bc,00167h		;500f
	ld h,a			;5012
	ld bc,00167h		;5013
	nop			;5016
	nop			;5017
	ld l,e			;5018
	ld (bc),a		;5019
	ld sp,02f0fh		;501a
	ld a,(bc)		;501d
	ld sp,02f0ah		;501e
	rlca			;5021
	inc b			;5022
	nop			;5023
	ld l,h			;5024
	ld (bc),a		;5025
	nop			;5026
	nop			;5027
	ld h,a			;5028
	ld bc,00000h		;5029
	ld h,a			;502c
	ld bc,00004h		;502d
	ld l,e			;5030
	ld (bc),a		;5031
	ld (0310fh),a		;5032
	ld a,(bc)		;5035
	ld (0310ah),a		;5036
	rlca			;5039
	ex af,af'		;503a
	nop			;503b
	ld l,h			;503c
	ld (bc),a		;503d
	ld h,a			;503e
	ld bc,00000h		;503f
	ld h,a			;5042
	ld bc,00000h		;5043
	inc b			;5046
	nop			;5047
	ld l,e			;5048
	ld (bc),a		;5049
	inc (hl)		;504a
	rrca			;504b
	ld (0340ah),a		;504c
	ld a,(bc)		;504f
	ld (00007h),a		;5050
	nop			;5053
	ld l,h			;5054
	ld (bc),a		;5055
	nop			;5056
	nop			;5057
	ld h,a			;5058
	ld bc,00000h		;5059
	ld h,a			;505c
	ld bc,00008h		;505d
	ld b,00fh		;5060
	ld (hl),00fh		;5062
	inc (hl)		;5064
	ld a,(bc)		;5065
	ld (hl),00ah		;5066
	inc (hl)		;5068
	rlca			;5069
	inc b			;506a
	nop			;506b
	ld l,h			;506c
	ld (bc),a		;506d
	ld h,a			;506e
	ld bc,00000h		;506f
	ld h,a			;5072
	ld bc,00000h		;5073
	nop			;5076
	nop			;5077
	ld l,e			;5078
	ld (bc),a		;5079
	inc (hl)		;507a
	rrca			;507b
	ld (hl),00ah		;507c
	inc (hl)		;507e
	ld a,(bc)		;507f
	ld (hl),007h		;5080
	ex af,af'		;5082
	nop			;5083
	ld l,h			;5084
	ld (bc),a		;5085
	ld h,a			;5086
	ld bc,00167h		;5087
	ld h,a			;508a
	ld bc,00167h		;508b
	nop			;508e
	nop			;508f
	ld l,e			;5090
	ld (bc),a		;5091
	nop			;5092
	nop			;5093
	inc (hl)		;5094
	ld a,(bc)		;5095
	nop			;5096
	nop			;5097
	inc (hl)		;5098
	rlca			;5099
	dec b			;509a
	nop			;509b
	ld l,h			;509c
	ld (bc),a		;509d
	nop			;509e
	nop			;509f
	ld h,a			;50a0
	ld bc,00000h		;50a1
	ld h,a			;50a4
	ld bc,00008h		;50a5
	ld l,e			;50a8
	ld (bc),a		;50a9
	ld sp,0000fh		;50aa
	nop			;50ad
	ld sp,0000ah		;50ae
	nop			;50b1
	ex af,af'		;50b2
	nop			;50b3
	ld l,h			;50b4
	ld (bc),a		;50b5
	ld h,a			;50b6
	ld bc,00000h		;50b7
	ld h,a			;50ba
	ld bc,00000h		;50bb
	ex af,af'		;50be
	nop			;50bf
	dec bc			;50c0
	rrca			;50c1
	nop			;50c2
	nop			;50c3
	ld h,a			;50c4
	ld bc,03862h		;50c5
	nop			;50c8
	nop			;50c9
	inc b			;50ca
	dec d			;50cb
	ld l,h			;50cc
	ld (bc),a		;50cd
	ld l,d			;50ce
	ld bc,00000h		;50cf
	nop			;50d2
	nop			;50d3
	nop			;50d4
	nop			;50d5
	nop			;50d6
	nop			;50d7
	ld l,e			;50d8
	ld (bc),a		;50d9
	ld (0000fh),a		;50da
	nop			;50dd
	dec sp			;50de
	ld a,(bc)		;50df
	ld (0040ah),a		;50e0
	nop			;50e3
	ld l,h			;50e4
	ld (bc),a		;50e5
	nop			;50e6
	nop			;50e7
	ld h,e			;50e8
	ld bc,00000h		;50e9
	nop			;50ec
	nop			;50ed
	inc b			;50ee
	nop			;50ef
	rla			;50f0
	rrca			;50f1
	nop			;50f2
	nop			;50f3
	ld l,h			;50f4
	ld bc,00a36h		;50f5
	cpl			;50f8
	ld a,(bc)		;50f9
	dec b			;50fa
	nop			;50fb
	dec bc			;50fc
	rrca			;50fd
	ld h,a			;50fe
	ld bc,00063h		;50ff
	nop			;5102
	nop			;5103
	nop			;5104
	nop			;5105
	inc b			;5106
	nop			;5107
	nop			;5108
	nop			;5109
	nop			;510a
	nop			;510b
	nop			;510c
	nop			;510d
	ld h,a			;510e
	ld bc,00167h		;510f
	nop			;5112
	nop			;5113
	ld l,h			;5114
	ld (bc),a		;5115
	nop			;5116
	nop			;5117
	ld l,h			;5118
	ld bc,00000h		;5119
	nop			;511c
	nop			;511d
	inc b			;511e
	nop			;511f
	djnz $+17		;5120
	ld sp,0000fh		;5122
	nop			;5125
	nop			;5126
	nop			;5127
	nop			;5128
	nop			;5129
	inc b			;512a
	nop			;512b
	ld l,h			;512c
	ld (bc),a		;512d
	ld h,a			;512e
	ld bc,0016ch		;512f
	nop			;5132
	nop			;5133
	nop			;5134
	nop			;5135
	nop			;5136
	nop			;5137
	ld l,e			;5138
	ld (bc),a		;5139
	cpl			;513a
	rrca			;513b
	nop			;513c
	nop			;513d
	add hl,sp		;513e
	ld a,(bc)		;513f
	inc (hl)		;5140
	dec bc			;5141
	inc b			;5142
	nop			;5143
	ld l,h			;5144
	ld (bc),a		;5145
	ld h,a			;5146
	ld bc,0016ch		;5147
	nop			;514a
	nop			;514b
	nop			;514c
	nop			;514d
	nop			;514e
	nop			;514f
	ld (de),a		;5150
	rrca			;5151
	ld hl,(0000fh)		;5152
	nop			;5155
	inc (hl)		;5156
	ld a,(bc)		;5157
	dec sp			;5158
	dec bc			;5159
	dec b			;515a
	nop			;515b
	ld l,h			;515c
	ld (bc),a		;515d
	ld h,a			;515e
	ld bc,00162h		;515f
	nop			;5162
	nop			;5163
	nop			;5164
	nop			;5165
	dec b			;5166
	nop			;5167
	ld l,e			;5168
	ld (bc),a		;5169
	inc (hl)		;516a
	rrca			;516b
	ld hl,(l670ah)		;516c
	ld (bc),a		;516f
	nop			;5170
	nop			;5171
	inc b			;5172
	nop			;5173
	ld l,h			;5174
	ld (bc),a		;5175
	ld h,a			;5176
	ld bc,00167h		;5177
	nop			;517a
	nop			;517b
	nop			;517c
	nop			;517d
	nop			;517e
	nop			;517f
	add hl,bc		;5180
	rrca			;5181
	ld (0340fh),a		;5182
	ld a,(bc)		;5185
	nop			;5186
	nop			;5187
	nop			;5188
	nop			;5189
	inc b			;518a
	nop			;518b
	ld l,h			;518c
	ld (bc),a		;518d
	ld h,a			;518e
	ld bc,00167h		;518f
	nop			;5192
	nop			;5193
	nop			;5194
	nop			;5195
	nop			;5196
	nop			;5197
	ld l,e			;5198
	ld (bc),a		;5199
	inc (hl)		;519a
	rrca			;519b
	ld (0000ah),a		;519c
	nop			;519f
	nop			;51a0
	nop			;51a1
	inc b			;51a2
	nop			;51a3
	ld l,h			;51a4
	ld (bc),a		;51a5
	ld h,a			;51a6
	ld bc,00167h		;51a7
	nop			;51aa
	nop			;51ab
	nop			;51ac
	nop			;51ad
	inc b			;51ae
	nop			;51af
	dec d			;51b0
	rrca			;51b1
	add hl,sp		;51b2
	rrca			;51b3
	inc (hl)		;51b4
	ld a,(bc)		;51b5
	ld l,h			;51b6
	ld bc,00000h		;51b7
	dec b			;51ba
	nop			;51bb
	add hl,bc		;51bc
	rrca			;51bd
	ld h,a			;51be
	ld bc,00167h		;51bf
	ld l,h			;51c2
	ld bc,00000h		;51c3
	inc b			;51c6
	nop			;51c7
	ld l,e			;51c8
	ld (bc),a		;51c9
	inc (hl)		;51ca
	rrca			;51cb
	add hl,sp		;51cc
	ld a,(bc)		;51cd
	inc (hl)		;51ce
	ld a,(bc)		;51cf
	ld (hl),00ah		;51d0
	nop			;51d2
	nop			;51d3
	ld l,h			;51d4
	ld (bc),a		;51d5
	ld h,a			;51d6
	ld bc,00167h		;51d7
	ld (0340ah),a		;51da
	ld a,(bc)		;51dd
	inc b			;51de
	nop			;51df
	ld l,e			;51e0
	ld (bc),a		;51e1
	ld (0340fh),a		;51e2
	ld a,(bc)		;51e5
	inc (hl)		;51e6
	ld a,(bc)		;51e7
	ld (hl),00ah		;51e8
	inc b			;51ea
	nop			;51eb
	ld l,h			;51ec
	ld (bc),a		;51ed
	ld h,a			;51ee
	ld bc,00167h		;51ef
	nop			;51f2
	nop			;51f3
	nop			;51f4
	nop			;51f5
	nop			;51f6
	nop			;51f7
	ld l,e			;51f8
	ld (bc),a		;51f9
	ld sp,0320fh		;51fa
	ld a,(bc)		;51fd
	ld (0340ah),a		;51fe
	ld a,(bc)		;5201
	inc b			;5202
	nop			;5203
	ld l,h			;5204
	ld (bc),a		;5205
	ld h,a			;5206
	ld bc,00167h		;5207
	nop			;520a
	nop			;520b
	nop			;520c
	nop			;520d
	nop			;520e
	nop			;520f
	nop			;5210
	nop			;5211
	dec l			;5212
	rrca			;5213
	ld sp,l670ah		;5214
	ld (bc),a		;5217
	nop			;5218
	nop			;5219
	dec b			;521a
	nop			;521b
	inc b			;521c
	rrca			;521d
	nop			;521e
	nop			;521f
	ld h,a			;5220
	ld bc,00000h		;5221
	nop			;5224
	nop			;5225
	dec b			;5226
	nop			;5227
	nop			;5228
	nop			;5229
	nop			;522a
	nop			;522b
	dec l			;522c
	ld a,(bc)		;522d
	dec l			;522e
	ld a,(bc)		;522f
	ld (0040ah),a		;5230
	nop			;5233
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
	rlca			;5240
	rrca			;5241
	ld h,a			;5242
	ld bc,00000h		;5243
	nop			;5246
	nop			;5247
	nop			;5248
	nop			;5249
	inc b			;524a
	nop			;524b
	ld l,h			;524c
	ld (bc),a		;524d
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
	ld l,e			;5258
	ld (bc),a		;5259
	dec hl			;525a
	rrca			;525b
	ld h,a			;525c
	ld bc,00000h		;525d
	nop			;5260
	nop			;5261
	inc b			;5262
	nop			;5263
	ld l,h			;5264
	ld (bc),a		;5265
	ld h,a			;5266
	ld bc,00000h		;5267
	nop			;526a
	nop			;526b
	nop			;526c
	nop			;526d
	inc b			;526e
	nop			;526f
	inc de			;5270
	rrca			;5271
	dec l			;5272
	rrca			;5273
	dec hl			;5274
	ld a,(bc)		;5275
	cpl			;5276
	ld a,(bc)		;5277
	jr z,l5284h		;5278
	dec b			;527a
	nop			;527b
	rlca			;527c
	rrca			;527d
	ld h,a			;527e
	ld bc,00167h		;527f
	dec l			;5282
	ld a,(bc)		;5283
l5284h:
	ld h,00ah		;5284
	inc b			;5286
	nop			;5287
	ld l,e			;5288
	ld (bc),a		;5289
	cpl			;528a
	rrca			;528b
	dec l			;528c
	ld a,(bc)		;528d
	cpl			;528e
	ld a,(bc)		;528f
	jr z,l529ch		;5290
	nop			;5292
	nop			;5293
	ld l,h			;5294
	ld (bc),a		;5295
	ld h,a			;5296
	ld bc,00167h		;5297
	nop			;529a
	nop			;529b
l529ch:
	nop			;529c
	nop			;529d
	inc b			;529e
	nop			;529f
	ld l,e			;52a0
	ld (bc),a		;52a1
	nop			;52a2
	nop			;52a3
	cpl			;52a4
	ld a,(bc)		;52a5
	nop			;52a6
	nop			;52a7
	nop			;52a8
	nop			;52a9
	inc b			;52aa
	nop			;52ab
	ld l,h			;52ac
	ld (bc),a		;52ad
	nop			;52ae
	nop			;52af
	ld h,a			;52b0
	ld bc,00000h		;52b1
	nop			;52b4
	nop			;52b5
	nop			;52b6
	nop			;52b7
	ld l,e			;52b8
	ld (bc),a		;52b9
	ld (0000fh),a		;52ba
	nop			;52bd
	nop			;52be
	nop			;52bf
	nop			;52c0
	nop			;52c1
	inc b			;52c2
	nop			;52c3
	ld l,h			;52c4
	ld (bc),a		;52c5
	ld h,a			;52c6
	ld bc,00000h		;52c7
	ld l,h			;52ca
	add hl,bc		;52cb
	ld l,h			;52cc
	add hl,bc		;52cd
	nop			;52ce
	nop			;52cf
	nop			;52d0
	nop			;52d1
	nop			;52d2
	nop			;52d3
	ld (02f0ah),a		;52d4
	ld a,(bc)		;52d7
	inc (hl)		;52d8
	ld a,(bc)		;52d9
	dec b			;52da
	nop			;52db
	inc b			;52dc
	rrca			;52dd
	nop			;52de
	nop			;52df
	ld h,a			;52e0
	ld bc,0096ch		;52e1
	ld l,h			;52e4
	add hl,bc		;52e5
	dec b			;52e6
	nop			;52e7
	nop			;52e8
	nop			;52e9
	ld sp,0000fh		;52ea
	nop			;52ed
	cpl			;52ee
	ld a,(bc)		;52ef
	inc (hl)		;52f0
	ld a,(bc)		;52f1
	inc b			;52f2
	nop			;52f3
	nop			;52f4
	nop			;52f5
	ld h,a			;52f6
	ld bc,00000h		;52f7
	dec l			;52fa
	ld a,(bc)		;52fb
	ld (0000ah),a		;52fc
	nop			;52ff
	ld (bc),a		;5300
	rrca			;5301
	cpl			;5302
	rrca			;5303
	ld sp,02f0ah		;5304
	ld a,(bc)		;5307
	scf			;5308
	dec bc			;5309
	inc b			;530a
	nop			;530b
	ld l,h			;530c
	ld (bc),a		;530d
	ld h,a			;530e
	ld bc,00167h		;530f
	nop			;5312
	nop			;5313
	nop			;5314
	nop			;5315
	nop			;5316
	nop			;5317
	ld l,e			;5318
	ld (bc),a		;5319
	ld sp,02f0fh		;531a
	ld a,(bc)		;531d
	ld sp,0360ah		;531e
	ld a,(bc)		;5321
	inc b			;5322
	nop			;5323
	ld l,h			;5324
	ld (bc),a		;5325
	nop			;5326
	nop			;5327
	ld h,a			;5328
	ld bc,00000h		;5329
	nop			;532c
	nop			;532d
	inc b			;532e
	nop			;532f
	ld l,e			;5330
	ld (bc),a		;5331
	ld (0310fh),a		;5332
	ld a,(bc)		;5335
	ld (0340ah),a		;5336
	dec bc			;5339
	dec b			;533a
	nop			;533b
	ld l,h			;533c
	ld (bc),a		;533d
	ld h,a			;533e
	ld bc,00000h		;533f
	nop			;5342
	nop			;5343
	nop			;5344
	nop			;5345
	inc b			;5346
	nop			;5347
	ld l,e			;5348
	ld (bc),a		;5349
	inc (hl)		;534a
	rrca			;534b
	ld (0340ah),a		;534c
	ld a,(bc)		;534f
	add hl,sp		;5350
	dec bc			;5351
	nop			;5352
	nop			;5353
	ld l,h			;5354
	ld (bc),a		;5355
	nop			;5356
	nop			;5357
	ld h,a			;5358
	ld bc,00000h		;5359
	nop			;535c
	nop			;535d
	inc b			;535e
	nop			;535f
	ld b,00fh		;5360
	ld (hl),00fh		;5362
	inc (hl)		;5364
	ld a,(bc)		;5365
	ld (hl),00ah		;5366
	dec sp			;5368
	dec bc			;5369
	ex af,af'		;536a
	nop			;536b
	ld l,h			;536c
	ld (bc),a		;536d
	ld h,a			;536e
	ld bc,00000h		;536f
	nop			;5372
	nop			;5373
	nop			;5374
	nop			;5375
	nop			;5376
	nop			;5377
	ld l,e			;5378
	ld (bc),a		;5379
	inc (hl)		;537a
	rrca			;537b
	ld (hl),00ah		;537c
	inc (hl)		;537e
	ld a,(bc)		;537f
	dec a			;5380
	dec bc			;5381
	ex af,af'		;5382
	nop			;5383
	ld l,h			;5384
	ld (bc),a		;5385
	ld h,a			;5386
	ld bc,00167h		;5387
	nop			;538a
	nop			;538b
	nop			;538c
	nop			;538d
	ex af,af'		;538e
	nop			;538f
	ld l,e			;5390
	ld (bc),a		;5391
	nop			;5392
	nop			;5393
	inc (hl)		;5394
	ld a,(bc)		;5395
	cpl			;5396
	ld a,(bc)		;5397
	ld a,00bh		;5398
	ex af,af'		;539a
	nop			;539b
	ld l,h			;539c
	ld (bc),a		;539d
	nop			;539e
	nop			;539f
	ld h,a			;53a0
	ld bc,00000h		;53a1
	nop			;53a4
	nop			;53a5
	nop			;53a6
	nop			;53a7
	ld l,e			;53a8
	ld (bc),a		;53a9
	ld sp,l6c0fh		;53aa
	ld (bc),a		;53ad
	ld sp,l400ah		;53ae
	dec bc			;53b1
	ex af,af'		;53b2
	nop			;53b3
	ld l,h			;53b4
	ld (bc),a		;53b5
	ld h,a			;53b6
	ld bc,00061h		;53b7
	ld h,a			;53ba
	ld bc,00167h		;53bb
	nop			;53be
	nop			;53bf
	add hl,bc		;53c0
	rrca			;53c1
	nop			;53c2
	nop			;53c3
	ld h,a			;53c4
	ld bc,00000h		;53c5
	ld h,a			;53c8
	ld bc,01505h		;53c9
	ld l,h			;53cc
	ld (bc),a		;53cd
	ld l,d			;53ce
	ld bc,00000h		;53cf
	ld l,d			;53d2
	ld bc,0016ch		;53d3
	nop			;53d6
	nop			;53d7
	ld l,e			;53d8
	ld (bc),a		;53d9
	dec hl			;53da
	rrca			;53db
	nop			;53dc
	nop			;53dd
	dec hl			;53de
	ld a,(bc)		;53df
	ld l,h			;53e0
	ld bc,00005h		;53e1
	ld l,h			;53e4
	ld (bc),a		;53e5
	nop			;53e6
	nop			;53e7
	ld h,e			;53e8
	ld bc,00000h		;53e9
	ld l,h			;53ec
	ld bc,00004h		;53ed
	dec d			;53f0
	rrca			;53f1
	nop			;53f2
	nop			;53f3
	dec hl			;53f4
	ld a,(bc)		;53f5
	nop			;53f6
	nop			;53f7
	dec hl			;53f8
	rlca			;53f9
	ex af,af'		;53fa
	nop			;53fb
	add hl,bc		;53fc
	rrca			;53fd
	ld h,a			;53fe
	ld bc,00000h		;53ff
	ld h,a			;5402
	ld bc,00000h		;5403
	inc b			;5406
	nop			;5407
	nop			;5408
	nop			;5409
	nop			;540a
	nop			;540b
	nop			;540c
	nop			;540d
	nop			;540e
	nop			;540f
	nop			;5410
	nop			;5411
	nop			;5412
	nop			;5413
	ld l,h			;5414
	ld (bc),a		;5415
	nop			;5416
	nop			;5417
	ld h,a			;5418
	ld bc,00000h		;5419
	ld h,a			;541c
	ld bc,00005h		;541d
	rlca			;5420
	rrca			;5421
	ld hl,(0000fh)		;5422
	nop			;5425
	ld hl,(0000ah)		;5426
	nop			;5429
	dec b			;542a
	nop			;542b
	ld l,h			;542c
	ld (bc),a		;542d
	ld h,a			;542e
	ld bc,00000h		;542f
	ld h,a			;5432
	ld bc,00000h		;5433
	nop			;5436
	nop			;5437
	ld l,e			;5438
	ld (bc),a		;5439
	jr z,l544bh		;543a
	ld hl,(0280ah)		;543c
	ld a,(bc)		;543f
	ld hl,(00407h)		;5440
	nop			;5443
	ld l,h			;5444
	ld (bc),a		;5445
	ld h,a			;5446
	ld bc,00167h		;5447
	ld h,a			;544a
l544bh:
	ld bc,00167h		;544b
	nop			;544e
	nop			;544f
	inc de			;5450
	rrca			;5451
	ld h,00fh		;5452
	jr z,$+12		;5454
	ld h,00ah		;5456
	jr z,$+9		;5458
	ex af,af'		;545a
	nop			;545b
	ld l,h			;545c
	ld (bc),a		;545d
	ld h,a			;545e
	ld bc,00167h		;545f
	ld h,a			;5462
	ld bc,00167h		;5463
	dec b			;5466
	nop			;5467
	ld l,e			;5468
	ld (bc),a		;5469
	jr z,l547bh		;546a
	ld h,00ah		;546c
	jr z,l547ah		;546e
	ld h,007h		;5470
	dec b			;5472
	nop			;5473
	ld l,h			;5474
	ld (bc),a		;5475
	ld h,a			;5476
	ld bc,00167h		;5477
l547ah:
	ld h,a			;547a
l547bh:
	ld bc,00167h		;547b
	nop			;547e
	nop			;547f
	ld b,00fh		;5480
	ld hl,(0280fh)		;5482
	ld a,(bc)		;5485
	ld hl,(0280ah)		;5486
	rlca			;5489
	dec b			;548a
	nop			;548b
	ld l,h			;548c
	ld (bc),a		;548d
	ld h,a			;548e
	ld bc,00167h		;548f
	ld h,a			;5492
	ld bc,00167h		;5493
	nop			;5496
	nop			;5497
	ld l,e			;5498
	ld (bc),a		;5499
	jr z,l54abh		;549a
	ld hl,(0280ah)		;549c
	ld a,(bc)		;549f
	ld hl,(00507h)		;54a0
	nop			;54a3
	ld l,h			;54a4
	ld (bc),a		;54a5
	ld h,a			;54a6
	ld bc,00167h		;54a7
	ld h,a			;54aa
l54abh:
	ld bc,00167h		;54ab
	inc b			;54ae
	nop			;54af
	ld (de),a		;54b0
	rrca			;54b1
	ld h,00fh		;54b2
	jr z,$+12		;54b4
	ld h,00ah		;54b6
	jr z,$+9		;54b8
	ex af,af'		;54ba
	nop			;54bb
	ld b,00fh		;54bc
	ld h,a			;54be
	ld bc,00167h		;54bf
	ld h,a			;54c2
	ld bc,00167h		;54c3
	inc b			;54c6
	nop			;54c7
	ld l,e			;54c8
	ld (bc),a		;54c9
	cpl			;54ca
	rrca			;54cb
	ld h,00ah		;54cc
	cpl			;54ce
	ld a,(bc)		;54cf
	ld h,007h		;54d0
	nop			;54d2
	nop			;54d3
	ld l,h			;54d4
	ld (bc),a		;54d5
	ld h,a			;54d6
	ld bc,00167h		;54d7
	ld h,a			;54da
	ld bc,00167h		;54db
	dec b			;54de
	nop			;54df
	ld l,e			;54e0
	ld (bc),a		;54e1
	nop			;54e2
	nop			;54e3
	cpl			;54e4
	ld a,(bc)		;54e5
	nop			;54e6
	nop			;54e7
	cpl			;54e8
	rlca			;54e9
	dec b			;54ea
	nop			;54eb
	ld l,h			;54ec
	ld (bc),a		;54ed
	nop			;54ee
	nop			;54ef
	ld h,a			;54f0
	ld bc,00000h		;54f1
	ld h,a			;54f4
	ld bc,00000h		;54f5
	ld l,e			;54f8
	ld (bc),a		;54f9
	nop			;54fa
	nop			;54fb
	nop			;54fc
	nop			;54fd
	nop			;54fe
	nop			;54ff
	nop			;5500
	nop			;5501
	inc b			;5502
	nop			;5503
	ld l,h			;5504
	ld (bc),a		;5505
	ld h,a			;5506
	ld bc,00000h		;5507
	ld h,a			;550a
	ld bc,00000h		;550b
	nop			;550e
	nop			;550f
	nop			;5510
	nop			;5511
	dec h			;5512
	rrca			;5513
	nop			;5514
	nop			;5515
	dec h			;5516
	ld a,(bc)		;5517
	nop			;5518
	nop			;5519
	ex af,af'		;551a
	nop			;551b
	inc b			;551c
	rrca			;551d
	ld h,a			;551e
	ld (bc),a		;551f
	ld h,a			;5520
	ld bc,00267h		;5521
	ld h,a			;5524
	ld bc,00005h		;5525
	nop			;5528
	nop			;5529
	nop			;552a
	nop			;552b
	dec h			;552c
	ld a,(bc)		;552d
	nop			;552e
	nop			;552f
	dec h			;5530
	rlca			;5531
	dec b			;5532
	nop			;5533
	nop			;5534
	nop			;5535
	nop			;5536
	nop			;5537
	ld h,a			;5538
	ld (bc),a		;5539
	nop			;553a
	nop			;553b
	ld h,a			;553c
	ld (bc),a		;553d
	nop			;553e
	nop			;553f
	rlca			;5540
	rrca			;5541
	ld h,a			;5542
	ld bc,00000h		;5543
	ld h,a			;5546
	ld bc,00000h		;5547
	dec b			;554a
	nop			;554b
	ld l,h			;554c
	ld (bc),a		;554d
	nop			;554e
	nop			;554f
	nop			;5550
	nop			;5551
	nop			;5552
	nop			;5553
	nop			;5554
	nop			;5555
	nop			;5556
	nop			;5557
	ld l,e			;5558
	ld (bc),a		;5559
	dec hl			;555a
	rrca			;555b
	ld h,a			;555c
	ld bc,00a2bh		;555d
	ld h,a			;5560
	ld bc,00005h		;5561
	ld l,h			;5564
	ld (bc),a		;5565
	ld h,a			;5566
	ld bc,00000h		;5567
	ld h,a			;556a
	ld bc,00000h		;556b
	inc b			;556e
	nop			;556f
	inc de			;5570
	rrca			;5571
	dec l			;5572
	rrca			;5573
	dec hl			;5574
	ld a,(bc)		;5575
	dec l			;5576
	ld a,(bc)		;5577
	dec hl			;5578
	rlca			;5579
	ex af,af'		;557a
	nop			;557b
	rlca			;557c
	rrca			;557d
	ld h,a			;557e
	ld bc,00167h		;557f
	ld h,a			;5582
	ld bc,00167h		;5583
	ex af,af'		;5586
	nop			;5587
	ld l,e			;5588
	ld (bc),a		;5589
	cpl			;558a
	rrca			;558b
	dec l			;558c
	ld a,(bc)		;558d
	cpl			;558e
	ld a,(bc)		;558f
	dec l			;5590
	rlca			;5591
	nop			;5592
	nop			;5593
	ld l,h			;5594
	ld (bc),a		;5595
	ld h,a			;5596
	ld bc,00167h		;5597
	ld h,a			;559a
	ld bc,00167h		;559b
	dec b			;559e
	nop			;559f
	ld l,e			;55a0
	ld (bc),a		;55a1
	nop			;55a2
	nop			;55a3
	cpl			;55a4
	ld a,(bc)		;55a5
	nop			;55a6
	nop			;55a7
	cpl			;55a8
	rlca			;55a9
	inc b			;55aa
	nop			;55ab
	ld l,h			;55ac
	ld (bc),a		;55ad
	nop			;55ae
	nop			;55af
	ld h,a			;55b0
	ld bc,00000h		;55b1
	ld h,a			;55b4
	ld bc,00000h		;55b5
	ld l,e			;55b8
	ld (bc),a		;55b9
	ld (0000fh),a		;55ba
	nop			;55bd
	ld (0000ah),a		;55be
	nop			;55c1
	ex af,af'		;55c2
	nop			;55c3
	ld l,h			;55c4
	ld (bc),a		;55c5
	ld h,a			;55c6
	ld bc,00000h		;55c7
	ld h,a			;55ca
	ld bc,00000h		;55cb
	nop			;55ce
	nop			;55cf
	nop			;55d0
	nop			;55d1
	nop			;55d2
	nop			;55d3
	ld (0000ah),a		;55d4
	nop			;55d7
	ld (00807h),a		;55d8
	nop			;55db
	inc b			;55dc
	rrca			;55dd
	nop			;55de
	nop			;55df
	ld h,a			;55e0
	ld bc,00000h		;55e1
	ld h,a			;55e4
	ld bc,00008h		;55e5
	nop			;55e8
	nop			;55e9
	ld sp,0000fh		;55ea
	nop			;55ed
	ld sp,0000ah		;55ee
	nop			;55f1
	inc b			;55f2
	nop			;55f3
	nop			;55f4
	nop			;55f5
	ld h,a			;55f6
	ld bc,00000h		;55f7
	ld h,a			;55fa
	ld bc,00000h		;55fb
	nop			;55fe
	nop			;55ff
	ld (bc),a		;5600
	rrca			;5601
	cpl			;5602
	rrca			;5603
	ld sp,0000ah		;5604
	nop			;5607
	nop			;5608
	nop			;5609
	inc b			;560a
	nop			;560b
	ld l,h			;560c
	ld (bc),a		;560d
	ld h,a			;560e
	ld bc,00167h		;560f
	nop			;5612
	nop			;5613
	nop			;5614
	nop			;5615
	nop			;5616
	nop			;5617
	ld l,e			;5618
	ld (bc),a		;5619
	ld sp,02f0fh		;561a
	ld a,(bc)		;561d
	nop			;561e
	nop			;561f
	nop			;5620
	nop			;5621
	inc b			;5622
	nop			;5623
	ld l,h			;5624
	ld (bc),a		;5625
	nop			;5626
	nop			;5627
	ld h,a			;5628
	ld bc,00000h		;5629
	nop			;562c
	nop			;562d
	inc b			;562e
	nop			;562f
	ld l,e			;5630
	ld (bc),a		;5631
	ld (0310fh),a		;5632
	ld a,(bc)		;5635
	nop			;5636
	nop			;5637
	nop			;5638
	nop			;5639
	dec b			;563a
	nop			;563b
	ld l,h			;563c
	ld (bc),a		;563d
	ld h,a			;563e
	ld bc,00000h		;563f
	nop			;5642
	nop			;5643
	nop			;5644
	nop			;5645
	inc b			;5646
	nop			;5647
	ld l,e			;5648
	ld (bc),a		;5649
	inc (hl)		;564a
	rrca			;564b
	ld (0000ah),a		;564c
	nop			;564f
	nop			;5650
	nop			;5651
	nop			;5652
	nop			;5653
	ld l,h			;5654
	ld (bc),a		;5655
	nop			;5656
	nop			;5657
	ld h,a			;5658
	ld bc,00000h		;5659
	nop			;565c
	nop			;565d
	inc b			;565e
	nop			;565f
	ld b,00fh		;5660
	ld (hl),00fh		;5662
	inc (hl)		;5664
	ld a,(bc)		;5665
	nop			;5666
	nop			;5667
	nop			;5668
	nop			;5669
	inc b			;566a
	nop			;566b
	ld l,h			;566c
	ld (bc),a		;566d
	ld h,a			;566e
	ld bc,00000h		;566f
	nop			;5672
	nop			;5673
	nop			;5674
	nop			;5675
	nop			;5676
	nop			;5677
	ld l,e			;5678
	ld (bc),a		;5679
	inc (hl)		;567a
	rrca			;567b
	ld (hl),00ah		;567c
	nop			;567e
	nop			;567f
	nop			;5680
	nop			;5681
	inc b			;5682
	nop			;5683
	ld l,h			;5684
	ld (bc),a		;5685
	ld h,a			;5686
	ld bc,00167h		;5687
	nop			;568a
	nop			;568b
	nop			;568c
	nop			;568d
	nop			;568e
	nop			;568f
	ld l,e			;5690
	ld (bc),a		;5691
	nop			;5692
	nop			;5693
	inc (hl)		;5694
	ld a,(bc)		;5695
	nop			;5696
	nop			;5697
	nop			;5698
	nop			;5699
	dec b			;569a
	nop			;569b
	ld l,h			;569c
	ld (bc),a		;569d
	nop			;569e
	nop			;569f
	ld h,a			;56a0
	ld bc,00000h		;56a1
	nop			;56a4
	nop			;56a5
	dec b			;56a6
	nop			;56a7
	ld l,e			;56a8
	ld (bc),a		;56a9
	ld sp,l6c0fh		;56aa
	ld (bc),a		;56ad
	nop			;56ae
	nop			;56af
	nop			;56b0
	nop			;56b1
	inc b			;56b2
	nop			;56b3
	ld l,h			;56b4
	ld (bc),a		;56b5
	ld h,a			;56b6
	ld bc,00061h		;56b7
	nop			;56ba
	nop			;56bb
	nop			;56bc
	nop			;56bd
	nop			;56be
	nop			;56bf
	nop			;56c0
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
	jr nz,l603ah		;6006
	jr nz,$+47		;6008
	jr nz,$+78		;600a
	ld h,l			;600c
	halt			;600d
	ld h,l			;600e
	ld l,h			;600f
	jr nz,l604bh		;6010
	jr nz,$+47		;6012
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
	jr nz,l607bh		;6024
	ld l,(hl)		;6026
	ld h,h			;6027
	ld h,l			;6028
	ld (hl),d		;6029
	jr nz,l6083h		;602a
	ld h,c			;602c
	ld (hl),h		;602d
	ld h,l			;602e
	ld (hl),d		;602f
	jr nz,l6052h		;6030
	jr nz,$+34		;6032
	jr nz,l6056h		;6034
	jr nz,$+34		;6036
	jr nz,l605ah		;6038
l603ah:
	jr nz,$+34		;603a
	jr nz,l605eh		;603c
	jr nz,$+34		;603e
	jr nz,l6062h		;6040
	jr nz,l6091h		;6042
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
	ld sp,00000h		;604e
l6051h:
	nop			;6051
l6052h:
	ld bc,00302h		;6052
	nop			;6055
l6056h:
	ld bc,00302h		;6056
	inc b			;6059
l605ah:
	dec b			;605a
	ld b,007h		;605b
	inc b			;605d
l605eh:
	dec b			;605e
l605fh:
	ld b,007h		;605f
	ex af,af'		;6061
l6062h:
	add hl,bc		;6062
	ld a,(bc)		;6063
	dec bc			;6064
	nop			;6065
	ld bc,00302h		;6066
	inc b			;6069
l606ah:
	dec b			;606a
	ld b,007h		;606b
	inc c			;606d
	dec c			;606e
	ld c,00fh		;606f
	inc c			;6071
	dec c			;6072
	ld c,00fh		;6073
	djnz l6088h		;6075
	ld (de),a		;6077
	inc de			;6078
	djnz l608ch		;6079
l607bh:
	ld (de),a		;607b
	inc de			;607c
	inc c			;607d
	dec c			;607e
	ld c,00fh		;607f
	inc c			;6081
	inc d			;6082
l6083h:
	nop			;6083
	nop			;6084
	nop			;6085
	nop			;6086
	nop			;6087
l6088h:
	nop			;6088
	nop			;6089
	nop			;608a
	nop			;608b
l608ch:
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
	ld hl,03232h		;6157
	ld (08080h),a		;615a
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
	ld (de),a		;61c0
	inc c			;61c1
	ld hl,(l610fh)		;61c2
	nop			;61c5
	ld h,c			;61c6
	nop			;61c7
	ld hl,(00500h)		;61c8
	dec d			;61cb
	nop			;61cc
	nop			;61cd
	ld h,h			;61ce
	djnz l61d1h		;61cf
l61d1h:
	nop			;61d1
	ld l,d			;61d2
	ld bc,00169h		;61d3
	add hl,bc		;61d6
	rla			;61d7
	nop			;61d8
	nop			;61d9
	nop			;61da
	nop			;61db
	nop			;61dc
	nop			;61dd
	nop			;61de
	nop			;61df
	ld h,a			;61e0
	dec b			;61e1
	add hl,bc		;61e2
	rla			;61e3
	nop			;61e4
	nop			;61e5
	ld e,00bh		;61e6
	nop			;61e8
	nop			;61e9
	nop			;61ea
	nop			;61eb
	nop			;61ec
	nop			;61ed
	add hl,bc		;61ee
	dec d			;61ef
	nop			;61f0
	nop			;61f1
	ld h,h			;61f2
	djnz l61f5h		;61f3
l61f5h:
	nop			;61f5
	ld hl,(0000bh)		;61f6
	nop			;61f9
	add hl,bc		;61fa
	dec d			;61fb
	ld b,00ch		;61fc
	nop			;61fe
	nop			;61ff
	nop			;6200
	nop			;6201
	ld h,h			;6202
	djnz l6270h		;6203
	inc bc			;6205
	ex af,af'		;6206
	dec d			;6207
	nop			;6208
	nop			;6209
	ld (de),a		;620a
	dec bc			;620b
	nop			;620c
	nop			;620d
	nop			;620e
	nop			;620f
	nop			;6210
	nop			;6211
	nop			;6212
	dec d			;6213
	ld (de),a		;6214
	inc c			;6215
	ld h,h			;6216
	djnz l6219h		;6217
l6219h:
	nop			;6219
	ld e,00bh		;621a
	nop			;621c
	nop			;621d
	dec b			;621e
	dec d			;621f
	nop			;6220
	nop			;6221
	nop			;6222
	nop			;6223
	dec l			;6224
	nop			;6225
	ld h,h			;6226
	djnz l6229h		;6227
l6229h:
	nop			;6229
	add hl,bc		;622a
	rla			;622b
	nop			;622c
	nop			;622d
	nop			;622e
	nop			;622f
	ld h,a			;6230
	inc b			;6231
	nop			;6232
	nop			;6233
	ld l,e			;6234
	ld bc,01709h		;6235
	nop			;6238
	nop			;6239
	nop			;623a
	nop			;623b
	ld l,e			;623c
	ld (bc),a		;623d
	ld (de),a		;623e
	dec bc			;623f
	nop			;6240
	nop			;6241
	add hl,bc		;6242
	dec d			;6243
	nop			;6244
	nop			;6245
	ld l,h			;6246
	ld bc,00000h		;6247
	ld h,h			;624a
	djnz l624dh		;624b
l624dh:
	nop			;624d
	add hl,bc		;624e
	dec d			;624f
	ld b,00ch		;6250
	ld l,h			;6252
	ld bc,0016bh		;6253
	nop			;6256
	nop			;6257
	nop			;6258
	nop			;6259
	ex af,af'		;625a
	dec d			;625b
	nop			;625c
	nop			;625d
	ld l,h			;625e
	ld bc,00000h		;625f
	nop			;6262
	nop			;6263
	ld l,e			;6264
	ld bc,01509h		;6265
	nop			;6268
	nop			;6269
	ld h,c			;626a
	nop			;626b
	ld l,e			;626c
	ld bc,00000h		;626d
l6270h:
	nop			;6270
	nop			;6271
	add hl,bc		;6272
	rrca			;6273
	nop			;6274
	nop			;6275
	nop			;6276
	nop			;6277
	ld l,e			;6278
	ld bc,0016ch		;6279
	ld l,e			;627c
	ld bc,00f09h		;627d
	ld (de),a		;6280
	inc c			;6281
	ld hl,(0000fh)		;6282
	nop			;6285
	ld l,h			;6286
	ld bc,0002dh		;6287
	dec b			;628a
	dec d			;628b
	nop			;628c
	nop			;628d
	ld h,h			;628e
	djnz l6291h		;628f
l6291h:
	nop			;6291
	ld l,h			;6292
	ld bc,0016bh		;6293
	add hl,bc		;6296
	rla			;6297
	nop			;6298
	nop			;6299
	nop			;629a
	nop			;629b
	nop			;629c
	nop			;629d
	ld h,c			;629e
	nop			;629f
	ld h,a			;62a0
	dec b			;62a1
	add hl,bc		;62a2
	rla			;62a3
	nop			;62a4
	nop			;62a5
	dec l			;62a6
	dec bc			;62a7
	nop			;62a8
	nop			;62a9
	nop			;62aa
	nop			;62ab
	nop			;62ac
	nop			;62ad
	add hl,bc		;62ae
	dec d			;62af
	nop			;62b0
	nop			;62b1
	ld h,h			;62b2
	djnz l62b5h		;62b3
l62b5h:
	nop			;62b5
	ld hl,(0000bh)		;62b6
	nop			;62b9
	add hl,bc		;62ba
	dec d			;62bb
	ld b,00ch		;62bc
	nop			;62be
	nop			;62bf
	nop			;62c0
	nop			;62c1
	ld h,h			;62c2
	djnz l6330h		;62c3
	inc bc			;62c5
	ex af,af'		;62c6
	dec d			;62c7
	nop			;62c8
	nop			;62c9
	nop			;62ca
	nop			;62cb
	nop			;62cc
	nop			;62cd
	nop			;62ce
	nop			;62cf
	nop			;62d0
	nop			;62d1
	nop			;62d2
	dec d			;62d3
	ld (de),a		;62d4
	inc c			;62d5
	ld e,00bh		;62d6
	nop			;62d8
	nop			;62d9
	dec l			;62da
	dec bc			;62db
	nop			;62dc
	nop			;62dd
	dec b			;62de
	dec d			;62df
	nop			;62e0
	nop			;62e1
	ld h,h			;62e2
	djnz l62e5h		;62e3
l62e5h:
	nop			;62e5
	ld h,h			;62e6
	djnz l62e9h		;62e7
l62e9h:
	nop			;62e9
	add hl,bc		;62ea
	rla			;62eb
	nop			;62ec
	nop			;62ed
	nop			;62ee
	nop			;62ef
	ld l,h			;62f0
	ld bc,00000h		;62f1
	ld l,e			;62f4
	ld bc,01709h		;62f5
	nop			;62f8
	nop			;62f9
	nop			;62fa
	nop			;62fb
	nop			;62fc
	nop			;62fd
	nop			;62fe
	nop			;62ff
	nop			;6300
	nop			;6301
	add hl,bc		;6302
	dec d			;6303
	nop			;6304
	nop			;6305
	ld l,h			;6306
	ld bc,0016ch		;6307
	ld e,00bh		;630a
	nop			;630c
	nop			;630d
	add hl,bc		;630e
	dec d			;630f
	dec d			;6310
	inc c			;6311
	ld l,h			;6312
	ld bc,00000h		;6313
	ld h,h			;6316
	djnz l6319h		;6317
l6319h:
	nop			;6319
	dec b			;631a
	dec d			;631b
	nop			;631c
	nop			;631d
	ld l,h			;631e
	ld bc,0016ch		;631f
	nop			;6322
	nop			;6323
	ld l,e			;6324
	ld bc,01508h		;6325
	nop			;6328
	nop			;6329
	ld h,c			;632a
	nop			;632b
	nop			;632c
	nop			;632d
	nop			;632e
	nop			;632f
l6330h:
	nop			;6330
	nop			;6331
	dec b			;6332
	rrca			;6333
	nop			;6334
	nop			;6335
	nop			;6336
	nop			;6337
	ld l,h			;6338
	ld bc,0016ch		;6339
	ld l,e			;633c
	ld bc,00f09h		;633d
	ld (de),a		;6340
	inc c			;6341
	ld sp,0000fh		;6342
	nop			;6345
	ld l,h			;6346
	ld bc,00031h		;6347
	dec b			;634a
	dec d			;634b
	nop			;634c
	nop			;634d
	ld h,h			;634e
	djnz l6351h		;634f
l6351h:
	nop			;6351
	ld l,h			;6352
	ld bc,0016bh		;6353
	add hl,bc		;6356
	rla			;6357
	nop			;6358
	nop			;6359
	nop			;635a
	nop			;635b
	nop			;635c
	nop			;635d
	ld h,c			;635e
	nop			;635f
	ld h,a			;6360
	dec b			;6361
	add hl,bc		;6362
	rla			;6363
	nop			;6364
	nop			;6365
	dec h			;6366
	dec bc			;6367
	nop			;6368
	nop			;6369
	nop			;636a
	nop			;636b
	nop			;636c
	nop			;636d
	add hl,bc		;636e
	dec d			;636f
	nop			;6370
	nop			;6371
	ld h,h			;6372
	djnz l6375h		;6373
l6375h:
	nop			;6375
	ld sp,0000bh		;6376
	nop			;6379
	add hl,bc		;637a
	dec d			;637b
	ld b,00ch		;637c
	nop			;637e
	nop			;637f
	nop			;6380
	nop			;6381
	ld h,h			;6382
	djnz l63f0h		;6383
	inc bc			;6385
	ex af,af'		;6386
	dec d			;6387
	nop			;6388
	nop			;6389
	add hl,de		;638a
	dec bc			;638b
	nop			;638c
	nop			;638d
	nop			;638e
	nop			;638f
	nop			;6390
	nop			;6391
	nop			;6392
	dec d			;6393
	ld (de),a		;6394
	inc c			;6395
	ld h,h			;6396
	djnz l6399h		;6397
l6399h:
	nop			;6399
	dec h			;639a
	dec bc			;639b
	nop			;639c
	nop			;639d
	dec b			;639e
	dec d			;639f
	nop			;63a0
	nop			;63a1
	nop			;63a2
	nop			;63a3
	ld sp,l6400h		;63a4
	djnz l63a9h		;63a7
l63a9h:
	nop			;63a9
	add hl,bc		;63aa
	rla			;63ab
	nop			;63ac
	nop			;63ad
	nop			;63ae
	nop			;63af
	ld h,a			;63b0
	inc b			;63b1
	nop			;63b2
	nop			;63b3
	ld l,e			;63b4
	ld bc,01709h		;63b5
	nop			;63b8
	nop			;63b9
	nop			;63ba
	nop			;63bb
	ld l,e			;63bc
	ld (bc),a		;63bd
	add hl,de		;63be
	dec bc			;63bf
	nop			;63c0
	nop			;63c1
	add hl,bc		;63c2
	dec d			;63c3
	nop			;63c4
	nop			;63c5
	ld l,h			;63c6
	ld bc,00000h		;63c7
	ld h,h			;63ca
	djnz l63cdh		;63cb
l63cdh:
	nop			;63cd
	add hl,bc		;63ce
	dec d			;63cf
	ld b,00ch		;63d0
	ld l,h			;63d2
	ld bc,0016bh		;63d3
	nop			;63d6
	nop			;63d7
	nop			;63d8
	nop			;63d9
	ex af,af'		;63da
	dec d			;63db
	nop			;63dc
	nop			;63dd
	ld l,h			;63de
	ld bc,00000h		;63df
	nop			;63e2
	nop			;63e3
	ld l,e			;63e4
	ld bc,01509h		;63e5
	nop			;63e8
	nop			;63e9
	ld h,c			;63ea
	nop			;63eb
	ld l,e			;63ec
	ld bc,00000h		;63ed
l63f0h:
	nop			;63f0
	nop			;63f1
	add hl,bc		;63f2
	rrca			;63f3
	nop			;63f4
	nop			;63f5
	nop			;63f6
	nop			;63f7
	nop			;63f8
	nop			;63f9
	ld l,h			;63fa
	ld bc,0016bh		;63fb
	add hl,bc		;63fe
	rrca			;63ff
l6400h:
	ld (de),a		;6400
	inc c			;6401
	ld hl,(0000fh)		;6402
	nop			;6405
l6406h:
	ld l,h			;6406
	ld bc,00036h		;6407
	dec b			;640a
	dec d			;640b
	nop			;640c
	nop			;640d
	ld h,h			;640e
	djnz l6411h		;640f
l6411h:
	nop			;6411
	ld l,h			;6412
	ld bc,0016bh		;6413
	add hl,bc		;6416
	rla			;6417
	nop			;6418
	nop			;6419
	nop			;641a
	nop			;641b
	nop			;641c
	nop			;641d
	ld h,c			;641e
	nop			;641f
	ld h,a			;6420
	dec b			;6421
	add hl,bc		;6422
	rla			;6423
	ld h,c			;6424
	nop			;6425
	nop			;6426
	nop			;6427
	nop			;6428
	nop			;6429
	nop			;642a
	nop			;642b
	nop			;642c
	nop			;642d
	add hl,bc		;642e
	dec d			;642f
	ld b,00ch		;6430
	ld sp,0000fh		;6432
	nop			;6435
	ld hl,(0000bh)		;6436
	nop			;6439
	add hl,bc		;643a
	dec d			;643b
	ld h,c			;643c
	nop			;643d
	ld h,h			;643e
	ld de,00000h		;643f
	ld h,h			;6442
	djnz $+109		;6443
	ld (bc),a		;6445
	ex af,af'		;6446
	dec d			;6447
	ld b,00ch		;6448
	nop			;644a
	nop			;644b
	nop			;644c
	nop			;644d
	nop			;644e
	nop			;644f
	nop			;6450
	nop			;6451
	nop			;6452
	dec d			;6453
	nop			;6454
	nop			;6455
	ld (hl),00fh		;6456
	nop			;6458
	nop			;6459
	nop			;645a
	nop			;645b
	nop			;645c
	nop			;645d
	ex af,af'		;645e
	dec d			;645f
	nop			;6460
	nop			;6461
	nop			;6462
	nop			;6463
	nop			;6464
	nop			;6465
	ld sp,0000bh		;6466
	nop			;6469
	add hl,bc		;646a
	rla			;646b
	nop			;646c
	nop			;646d
	ld h,a			;646e
	ld bc,0016ch		;646f
	ld h,h			;6472
	ld de,0016bh		;6473
	add hl,bc		;6476
	rla			;6477
	ld (de),a		;6478
	inc c			;6479
	ld h,h			;647a
	djnz l647dh		;647b
l647dh:
	nop			;647d
	nop			;647e
	nop			;647f
	nop			;6480
	nop			;6481
	add hl,bc		;6482
	dec d			;6483
	nop			;6484
	nop			;6485
	ld l,h			;6486
	ld bc,0016ch		;6487
	ld (hl),00bh		;648a
	nop			;648c
	nop			;648d
	add hl,bc		;648e
	dec d			;648f
	djnz l649eh		;6490
	ld l,h			;6492
	ld bc,00000h		;6493
	nop			;6496
	nop			;6497
	nop			;6498
	nop			;6499
	dec b			;649a
	dec d			;649b
	nop			;649c
	nop			;649d
l649eh:
	ld l,h			;649e
	ld (bc),a		;649f
	ld l,h			;64a0
	ld bc,00167h		;64a1
	ld l,e			;64a4
	ld bc,01508h		;64a5
	nop			;64a8
	nop			;64a9
	ld h,c			;64aa
	nop			;64ab
	nop			;64ac
	nop			;64ad
	ld h,h			;64ae
	djnz l64b1h		;64af
l64b1h:
	nop			;64b1
	dec b			;64b2
	rrca			;64b3
	nop			;64b4
	nop			;64b5
	nop			;64b6
	nop			;64b7
	ld l,h			;64b8
	ld bc,0016ch		;64b9
	ld l,h			;64bc
	ld bc,00f09h		;64bd
	ld (de),a		;64c0
	inc c			;64c1
	ld e,00fh		;64c2
	ld e,00fh		;64c4
	ld hl,(l610fh)		;64c6
	nop			;64c9
	dec b			;64ca
	dec d			;64cb
	nop			;64cc
	nop			;64cd
	ld l,d			;64ce
	ex af,af'		;64cf
	ld l,c			;64d0
	ex af,af'		;64d1
	ld h,h			;64d2
	djnz l64d5h		;64d3
l64d5h:
	nop			;64d5
	nop			;64d6
	rla			;64d7
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
	add hl,bc		;64e2
	rla			;64e3
	nop			;64e4
	nop			;64e5
	nop			;64e6
	nop			;64e7
	nop			;64e8
	nop			;64e9
	ld e,00fh		;64ea
	nop			;64ec
	nop			;64ed
	add hl,bc		;64ee
	dec d			;64ef
	nop			;64f0
	nop			;64f1
	nop			;64f2
	nop			;64f3
	nop			;64f4
	nop			;64f5
	ld h,h			;64f6
	djnz l64f9h		;64f7
l64f9h:
	nop			;64f9
	add hl,bc		;64fa
	dec d			;64fb
	add hl,bc		;64fc
	inc c			;64fd
	ld hl,0210fh		;64fe
	rrca			;6501
	nop			;6502
	nop			;6503
	nop			;6504
	nop			;6505
	ex af,af'		;6506
	dec d			;6507
	ld b,00ch		;6508
	ld e,00fh		;650a
	ld e,00fh		;650c
	ld (de),a		;650e
	rrca			;650f
	nop			;6510
	nop			;6511
	nop			;6512
	dec d			;6513
	nop			;6514
	nop			;6515
	ld l,h			;6516
	ld bc,0016ch		;6517
	ld h,h			;651a
	djnz l651dh		;651b
l651dh:
	nop			;651d
	ex af,af'		;651e
	dec d			;651f
	nop			;6520
	nop			;6521
	ld l,h			;6522
	inc bc			;6523
	ld l,h			;6524
	inc bc			;6525
	ld l,h			;6526
	ld bc,0002dh		;6527
	nop			;652a
	rla			;652b
	ld b,00ch		;652c
	ld e,00fh		;652e
	ld e,00fh		;6530
	ld l,h			;6532
	ld bc,00467h		;6533
	nop			;6536
	rla			;6537
	nop			;6538
	nop			;6539
	nop			;653a
	nop			;653b
	nop			;653c
	nop			;653d
	ld l,h			;653e
	ld (bc),a		;653f
	ld l,e			;6540
	ld (bc),a		;6541
	add hl,bc		;6542
	dec d			;6543
	nop			;6544
	nop			;6545
	nop			;6546
	nop			;6547
	nop			;6548
	nop			;6549
	ld l,h			;654a
	ld (bc),a		;654b
	nop			;654c
	nop			;654d
	add hl,bc		;654e
	dec d			;654f
	add hl,bc		;6550
	inc c			;6551
	ld hl,0210fh		;6552
	rrca			;6555
	ld h,c			;6556
	nop			;6557
	ld l,e			;6558
	ld bc,01508h		;6559
	ld b,00ch		;655c
	ld e,00fh		;655e
	ld e,00fh		;6560
	nop			;6562
	nop			;6563
	nop			;6564
	nop			;6565
	ld (bc),a		;6566
	inc d			;6567
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
	dec b			;6572
	rrca			;6573
	nop			;6574
	nop			;6575
	nop			;6576
	nop			;6577
	nop			;6578
	nop			;6579
	nop			;657a
	nop			;657b
	ld l,e			;657c
	ld bc,00f08h		;657d
	ld (de),a		;6580
	inc c			;6581
	ld e,00fh		;6582
	ld e,00fh		;6584
	ld hl,(0000fh)		;6586
	nop			;6589
	dec b			;658a
	dec d			;658b
	nop			;658c
	nop			;658d
	nop			;658e
	nop			;658f
	nop			;6590
	nop			;6591
	ld h,h			;6592
	djnz l6595h		;6593
l6595h:
	nop			;6595
	nop			;6596
	rla			;6597
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
	add hl,bc		;65a2
	rla			;65a3
	nop			;65a4
	nop			;65a5
	nop			;65a6
	nop			;65a7
	nop			;65a8
	nop			;65a9
	dec l			;65aa
	rrca			;65ab
	nop			;65ac
	nop			;65ad
	add hl,bc		;65ae
	dec d			;65af
	nop			;65b0
	nop			;65b1
	nop			;65b2
	nop			;65b3
	nop			;65b4
	nop			;65b5
	ld h,h			;65b6
	djnz l65b9h		;65b7
l65b9h:
	nop			;65b9
	add hl,bc		;65ba
	dec d			;65bb
	ld b,00ch		;65bc
	ld hl,0210fh		;65be
	rrca			;65c1
	nop			;65c2
	nop			;65c3
	nop			;65c4
	nop			;65c5
	ex af,af'		;65c6
	dec d			;65c7
	nop			;65c8
	nop			;65c9
	ld e,00fh		;65ca
	ld e,00fh		;65cc
	nop			;65ce
	nop			;65cf
	nop			;65d0
	nop			;65d1
	nop			;65d2
	dec d			;65d3
	ld (de),a		;65d4
	inc c			;65d5
	ld l,h			;65d6
	ld bc,0016ch		;65d7
	ld e,00fh		;65da
	nop			;65dc
	nop			;65dd
	dec b			;65de
	dec d			;65df
	nop			;65e0
	nop			;65e1
	ld l,h			;65e2
	inc bc			;65e3
	ld l,h			;65e4
	inc bc			;65e5
	ld h,h			;65e6
	djnz l65e9h		;65e7
l65e9h:
	nop			;65e9
	nop			;65ea
	rla			;65eb
	nop			;65ec
	nop			;65ed
	ld e,00fh		;65ee
	ld e,00fh		;65f0
	ld l,h			;65f2
	ld bc,00000h		;65f3
	nop			;65f6
	rla			;65f7
	nop			;65f8
	nop			;65f9
	nop			;65fa
	nop			;65fb
	nop			;65fc
	nop			;65fd
	ld l,h			;65fe
	ld bc,00000h		;65ff
	ex af,af'		;6602
	dec d			;6603
	nop			;6604
	nop			;6605
	nop			;6606
	nop			;6607
	nop			;6608
	nop			;6609
	ld l,h			;660a
	ld (bc),a		;660b
	ld l,h			;660c
	ld bc,01509h		;660d
	add hl,bc		;6610
	inc c			;6611
	ld hl,0210fh		;6612
	rrca			;6615
	ld l,h			;6616
	ld (bc),a		;6617
	nop			;6618
	nop			;6619
	nop			;661a
	dec d			;661b
	nop			;661c
	nop			;661d
	nop			;661e
	nop			;661f
	nop			;6620
	nop			;6621
	ld h,c			;6622
	nop			;6623
	nop			;6624
	nop			;6625
	ex af,af'		;6626
	inc d			;6627
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
	rrca			;6633
	nop			;6634
	nop			;6635
	nop			;6636
	nop			;6637
	nop			;6638
	nop			;6639
	nop			;663a
	nop			;663b
	ld l,h			;663c
	ld (bc),a		;663d
	ex af,af'		;663e
	rrca			;663f
	ld (de),a		;6640
	inc c			;6641
	ld e,00fh		;6642
	ld e,00fh		;6644
	ld sp,0000fh		;6646
	nop			;6649
	dec b			;664a
	dec d			;664b
	nop			;664c
	nop			;664d
	nop			;664e
	nop			;664f
	nop			;6650
	nop			;6651
	ld h,h			;6652
	djnz l6655h		;6653
l6655h:
	nop			;6655
	nop			;6656
	rla			;6657
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
	add hl,bc		;6662
	rla			;6663
	nop			;6664
	nop			;6665
	nop			;6666
	nop			;6667
	nop			;6668
	nop			;6669
	dec h			;666a
	rrca			;666b
	nop			;666c
	nop			;666d
	add hl,bc		;666e
	dec d			;666f
	nop			;6670
	nop			;6671
	nop			;6672
	nop			;6673
	nop			;6674
	nop			;6675
	ld h,h			;6676
	djnz l6679h		;6677
l6679h:
	nop			;6679
	add hl,bc		;667a
	dec d			;667b
	add hl,bc		;667c
	inc c			;667d
	ld hl,0210fh		;667e
	rrca			;6681
	nop			;6682
	nop			;6683
	nop			;6684
	nop			;6685
	ex af,af'		;6686
	dec d			;6687
	ld b,00ch		;6688
	ld e,00fh		;668a
	ld e,00fh		;668c
	add hl,de		;668e
	rrca			;668f
	nop			;6690
	nop			;6691
	nop			;6692
	dec d			;6693
	nop			;6694
	nop			;6695
	ld l,h			;6696
	ld bc,0016ch		;6697
	ld h,h			;669a
	djnz l669dh		;669b
l669dh:
	nop			;669d
	dec b			;669e
	dec d			;669f
	nop			;66a0
	nop			;66a1
	ld l,h			;66a2
	inc bc			;66a3
	ld l,h			;66a4
	inc bc			;66a5
	ld l,h			;66a6
	ld bc,00031h		;66a7
	nop			;66aa
	rla			;66ab
	ld b,00ch		;66ac
	ld e,00fh		;66ae
	ld e,00fh		;66b0
	ld l,h			;66b2
	ld bc,00467h		;66b3
	nop			;66b6
	rla			;66b7
	nop			;66b8
	nop			;66b9
	nop			;66ba
	nop			;66bb
	nop			;66bc
	nop			;66bd
	ld l,h			;66be
	ld bc,0026bh		;66bf
	add hl,bc		;66c2
	dec d			;66c3
	nop			;66c4
	nop			;66c5
	nop			;66c6
	nop			;66c7
	nop			;66c8
	nop			;66c9
	ld l,h			;66ca
	ld (bc),a		;66cb
	nop			;66cc
	nop			;66cd
	add hl,bc		;66ce
	dec d			;66cf
	add hl,bc		;66d0
	inc c			;66d1
	ld hl,0210fh		;66d2
	rrca			;66d5
	ld h,c			;66d6
	nop			;66d7
	ld l,e			;66d8
	ld bc,01508h		;66d9
	ld b,00ch		;66dc
	ld e,00fh		;66de
	ld e,00fh		;66e0
	nop			;66e2
	nop			;66e3
	nop			;66e4
	nop			;66e5
	ex af,af'		;66e6
	inc d			;66e7
	nop			;66e8
	nop			;66e9
	nop			;66ea
	nop			;66eb
	nop			;66ec
	nop			;66ed
	nop			;66ee
	nop			;66ef
	ld l,e			;66f0
	ld bc,00f05h		;66f1
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
	ex af,af'		;66fe
	rrca			;66ff
	ld (de),a		;6700
	inc c			;6701
	ld e,00fh		;6702
l6704h:
	ld e,00fh		;6704
	ld hl,(0000fh)		;6706
	nop			;6709
l670ah:
	dec b			;670a
	dec d			;670b
	nop			;670c
	nop			;670d
	nop			;670e
	nop			;670f
	nop			;6710
	nop			;6711
	ld h,h			;6712
	djnz l6715h		;6713
l6715h:
	nop			;6715
	nop			;6716
	rla			;6717
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
	nop			;6722
	rla			;6723
	ld h,c			;6724
	nop			;6725
	nop			;6726
	nop			;6727
	nop			;6728
	nop			;6729
	nop			;672a
	nop			;672b
	nop			;672c
	nop			;672d
	ex af,af'		;672e
	dec d			;672f
	ld b,00ch		;6730
	nop			;6732
	nop			;6733
	nop			;6734
	nop			;6735
	ld sp,0000fh		;6736
	nop			;6739
	nop			;673a
	inc d			;673b
	ld h,c			;673c
	nop			;673d
	ld hl,0210fh		;673e
	rrca			;6741
	ld h,h			;6742
	ld de,00000h		;6743
	dec b			;6746
	dec d			;6747
	ld b,00ch		;6748
	ld e,00fh		;674a
	ld e,00fh		;674c
	nop			;674e
	nop			;674f
	nop			;6750
	nop			;6751
	nop			;6752
	dec d			;6753
	nop			;6754
	nop			;6755
	ld l,h			;6756
	ld bc,0016ch		;6757
	ld (hl),00fh		;675a
	nop			;675c
	nop			;675d
	ex af,af'		;675e
	dec d			;675f
	nop			;6760
	nop			;6761
	ld l,h			;6762
	inc bc			;6763
	ld l,h			;6764
	inc bc			;6765
	nop			;6766
	nop			;6767
	nop			;6768
	nop			;6769
	nop			;676a
	rla			;676b
	nop			;676c
	nop			;676d
	ld e,00fh		;676e
	ld e,00fh		;6770
	ld h,a			;6772
	ld bc,0016ch		;6773
	nop			;6776
	rla			;6777
	ld (de),a		;6778
	inc c			;6779
	nop			;677a
	nop			;677b
	nop			;677c
	nop			;677d
	ld h,h			;677e
	djnz l6781h		;677f
l6781h:
	nop			;6781
	add hl,bc		;6782
	dec d			;6783
	nop			;6784
	nop			;6785
	nop			;6786
	nop			;6787
	nop			;6788
	nop			;6789
	ld l,h			;678a
	ld bc,0016ch		;678b
	add hl,bc		;678e
	dec d			;678f
	djnz l679eh		;6790
	ld hl,0210fh		;6792
	rrca			;6795
	ld l,h			;6796
	ld bc,00000h		;6797
	nop			;679a
	dec d			;679b
	nop			;679c
	nop			;679d
l679eh:
	inc hl			;679e
	dec c			;679f
	inc hl			;67a0
	dec c			;67a1
	ld l,h			;67a2
	ld bc,0016ch		;67a3
	ex af,af'		;67a6
	dec d			;67a7
	nop			;67a8
	nop			;67a9
	nop			;67aa
	nop			;67ab
	nop			;67ac
	nop			;67ad
	ld h,c			;67ae
	nop			;67af
	nop			;67b0
	nop			;67b1
	nop			;67b2
	rrca			;67b3
	nop			;67b4
	nop			;67b5
	ld h,a			;67b6
	ld (bc),a		;67b7
	ld h,a			;67b8
	inc bc			;67b9
	nop			;67ba
	nop			;67bb
	ld l,h			;67bc
	ld (bc),a		;67bd
	ex af,af'		;67be
	rrca			;67bf
	ld c,00ch		;67c0
	ld h,c			;67c2
	nop			;67c3
	ld h,c			;67c4
	nop			;67c5
	nop			;67c6
	nop			;67c7
	ld hl,(00500h)		;67c8
	dec d			;67cb
	nop			;67cc
	nop			;67cd
	ld a,(de)		;67ce
	ld (bc),a		;67cf
	rrca			;67d0
	ld b,000h		;67d1
	nop			;67d3
	ld l,e			;67d4
	inc bc			;67d5
	add hl,bc		;67d6
	dec d			;67d7
	nop			;67d8
	nop			;67d9
	nop			;67da
	nop			;67db
	nop			;67dc
	nop			;67dd
	nop			;67de
	nop			;67df
	ld h,a			;67e0
	dec b			;67e1
	dec b			;67e2
	dec d			;67e3
	nop			;67e4
	nop			;67e5
	nop			;67e6
	nop			;67e7
	nop			;67e8
	nop			;67e9
	ld h,c			;67ea
	nop			;67eb
	nop			;67ec
	nop			;67ed
	nop			;67ee
	dec d			;67ef
	ld (bc),a		;67f0
	inc c			;67f1
	nop			;67f2
	nop			;67f3
	nop			;67f4
	nop			;67f5
	ld a,(de)		;67f6
	ex af,af'		;67f7
	nop			;67f8
	nop			;67f9
	ex af,af'		;67fa
	dec d			;67fb
	nop			;67fc
	nop			;67fd
	ld h,e			;67fe
	jr nz,l6864h		;67ff
	jr nz,l6829h		;6801
	ex af,af'		;6803
	nop			;6804
	nop			;6805
	add hl,bc		;6806
	dec d			;6807
	ld h,c			;6808
	nop			;6809
	nop			;680a
	nop			;680b
	nop			;680c
	nop			;680d
	ld a,(de)		;680e
	ex af,af'		;680f
	nop			;6810
	nop			;6811
	nop			;6812
	dec d			;6813
	ld c,00ch		;6814
	ld h,h			;6816
	jr nc,l687dh		;6817
	jr nc,l687ch		;6819
	nop			;681b
	nop			;681c
	nop			;681d
	add hl,bc		;681e
	dec d			;681f
	nop			;6820
	nop			;6821
	nop			;6822
	nop			;6823
	nop			;6824
	nop			;6825
	ld (00005h),a		;6826
l6829h:
	nop			;6829
	add hl,bc		;682a
	dec d			;682b
	nop			;682c
	nop			;682d
	ld h,e			;682e
	ld b,b			;682f
	ld h,e			;6830
	ld b,b			;6831
	ld h,c			;6832
	nop			;6833
	ld l,e			;6834
	ld bc,01500h		;6835
	ld h,c			;6838
	nop			;6839
	nop			;683a
	nop			;683b
	nop			;683c
	nop			;683d
	ld a,(de)		;683e
	ex af,af'		;683f
	nop			;6840
	nop			;6841
	dec b			;6842
	dec d			;6843
	ld (bc),a		;6844
	inc c			;6845
	ld h,h			;6846
	jr nc,l68adh		;6847
	jr nc,l6871h		;6849
	ex af,af'		;684b
	nop			;684c
	nop			;684d
	nop			;684e
	dec d			;684f
	nop			;6850
	nop			;6851
	nop			;6852
	nop			;6853
	nop			;6854
	nop			;6855
	ld a,(de)		;6856
	ex af,af'		;6857
	nop			;6858
	nop			;6859
	ex af,af'		;685a
	dec d			;685b
	nop			;685c
	nop			;685d
	nop			;685e
	nop			;685f
	nop			;6860
	nop			;6861
	ld h,008h		;6862
l6864h:
	nop			;6864
	nop			;6865
	dec b			;6866
	dec d			;6867
	ld (bc),a		;6868
	inc c			;6869
	ld h,e			;686a
	ld (03263h),a		;686b
	ld h,c			;686e
	nop			;686f
	nop			;6870
l6871h:
	nop			;6871
	nop			;6872
	dec d			;6873
	ld h,c			;6874
	nop			;6875
	nop			;6876
	nop			;6877
	nop			;6878
	nop			;6879
	ld h,008h		;687a
l687ch:
	ld l,e			;687c
l687dh:
	ld bc,01500h		;687d
	ld h,c			;6880
	nop			;6881
	ld l,e			;6882
	ld bc,0016bh		;6883
	ld a,(de)		;6886
	ex af,af'		;6887
	nop			;6888
	nop			;6889
	dec b			;688a
	dec d			;688b
	ld c,00ch		;688c
	ld h,h			;688e
	jr nc,l68f5h		;688f
	jr nc,l68b9h		;6891
	ex af,af'		;6893
	nop			;6894
	nop			;6895
	nop			;6896
	dec d			;6897
	nop			;6898
	nop			;6899
	nop			;689a
	nop			;689b
	nop			;689c
	nop			;689d
	ld a,(de)		;689e
	ex af,af'		;689f
	nop			;68a0
	nop			;68a1
	dec b			;68a2
	dec d			;68a3
	nop			;68a4
	nop			;68a5
	nop			;68a6
	nop			;68a7
	nop			;68a8
	nop			;68a9
	ld (l6c05h),a		;68aa
l68adh:
	ld bc,01500h		;68ad
	ld (bc),a		;68b0
	inc c			;68b1
	ld h,e			;68b2
	jr nc,l6918h		;68b3
	jr nc,l6918h		;68b5
	nop			;68b7
	nop			;68b8
l68b9h:
	nop			;68b9
	ex af,af'		;68ba
	dec d			;68bb
	nop			;68bc
	nop			;68bd
	nop			;68be
	nop			;68bf
	nop			;68c0
	nop			;68c1
	nop			;68c2
	nop			;68c3
	nop			;68c4
	nop			;68c5
	dec b			;68c6
	dec d			;68c7
	nop			;68c8
	nop			;68c9
	nop			;68ca
	nop			;68cb
	nop			;68cc
	nop			;68cd
	nop			;68ce
	nop			;68cf
	nop			;68d0
	nop			;68d1
	add hl,bc		;68d2
	dec d			;68d3
	ld c,00ch		;68d4
	ld h,h			;68d6
	jr nc,l693dh		;68d7
	jr nc,l68dbh		;68d9
l68dbh:
	nop			;68db
	nop			;68dc
	nop			;68dd
	dec b			;68de
	dec d			;68df
	ld h,c			;68e0
	nop			;68e1
	nop			;68e2
	nop			;68e3
	nop			;68e4
	nop			;68e5
	ld a,(de)		;68e6
	ex af,af'		;68e7
	nop			;68e8
	nop			;68e9
	dec b			;68ea
	dec d			;68eb
	nop			;68ec
	nop			;68ed
	nop			;68ee
	nop			;68ef
	nop			;68f0
	nop			;68f1
	ld h,008h		;68f2
	nop			;68f4
l68f5h:
	nop			;68f5
	nop			;68f6
	dec d			;68f7
	nop			;68f8
	nop			;68f9
	ld h,e			;68fa
	jr nc,l6960h		;68fb
	jr nc,l6919h		;68fd
	ex af,af'		;68ff
	nop			;6900
	nop			;6901
	dec b			;6902
	dec d			;6903
	ld (bc),a		;6904
	inc c			;6905
	nop			;6906
	nop			;6907
	nop			;6908
	nop			;6909
	ld h,c			;690a
	nop			;690b
	nop			;690c
	nop			;690d
	nop			;690e
	dec d			;690f
	nop			;6910
	nop			;6911
	nop			;6912
	nop			;6913
	nop			;6914
	nop			;6915
	ld h,008h		;6916
l6918h:
	nop			;6918
l6919h:
	nop			;6919
	ex af,af'		;691a
	dec d			;691b
	nop			;691c
	nop			;691d
	ld h,h			;691e
	jr nc,l6985h		;691f
	jr nc,$+40		;6921
	ex af,af'		;6923
	ld l,h			;6924
	ld bc,01505h		;6925
	nop			;6928
	nop			;6929
	nop			;692a
	nop			;692b
	nop			;692c
	nop			;692d
	ld a,(de)		;692e
	ex af,af'		;692f
	nop			;6930
	nop			;6931
	nop			;6932
	dec d			;6933
	nop			;6934
	nop			;6935
	nop			;6936
	nop			;6937
	nop			;6938
	nop			;6939
	ld a,002h		;693a
	nop			;693c
l693dh:
	nop			;693d
	nop			;693e
	dec d			;693f
	ld c,00ch		;6940
	ld h,e			;6942
	jr nc,l69a8h		;6943
	jr nc,l696dh		;6945
	ex af,af'		;6947
	ld hl,(00500h)		;6948
	dec d			;694b
	ld h,c			;694c
	nop			;694d
	ld l,e			;694e
	ld bc,0016bh		;694f
	ld h,008h		;6952
	ld l,e			;6954
	inc bc			;6955
	add hl,bc		;6956
	dec d			;6957
	nop			;6958
	nop			;6959
	nop			;695a
	nop			;695b
	nop			;695c
	nop			;695d
	ld h,c			;695e
	nop			;695f
l6960h:
	ld h,a			;6960
	dec b			;6961
	dec b			;6962
	dec d			;6963
	nop			;6964
	nop			;6965
	ld h,h			;6966
	jr nc,l69cdh		;6967
	jr nc,l699dh		;6969
	dec b			;696b
	nop			;696c
l696dh:
	nop			;696d
	nop			;696e
	dec d			;696f
	ld (bc),a		;6970
	inc c			;6971
	nop			;6972
	nop			;6973
	nop			;6974
	nop			;6975
	ld h,c			;6976
	nop			;6977
	nop			;6978
	nop			;6979
	ex af,af'		;697a
	dec d			;697b
	nop			;697c
	nop			;697d
	nop			;697e
	nop			;697f
	nop			;6980
	nop			;6981
	ld a,002h		;6982
	nop			;6984
l6985h:
	nop			;6985
	add hl,bc		;6986
	dec d			;6987
	nop			;6988
	nop			;6989
	ld h,e			;698a
	jr nc,l69f0h		;698b
	jr nc,l69f0h		;698d
	nop			;698f
	nop			;6990
	nop			;6991
	nop			;6992
	dec d			;6993
	ld c,00ch		;6994
	nop			;6996
	nop			;6997
	nop			;6998
	nop			;6999
	ld (00005h),a		;699a
l699dh:
	nop			;699d
	add hl,bc		;699e
	dec d			;699f
	ld h,c			;69a0
	nop			;69a1
	nop			;69a2
	nop			;69a3
	nop			;69a4
	nop			;69a5
	ld a,(de)		;69a6
	ex af,af'		;69a7
l69a8h:
	nop			;69a8
	nop			;69a9
	add hl,bc		;69aa
	dec d			;69ab
	nop			;69ac
	nop			;69ad
	ld h,h			;69ae
	jr nc,l6a15h		;69af
	jr nc,l6a14h		;69b1
	nop			;69b3
	ld l,e			;69b4
	ld bc,01500h		;69b5
	nop			;69b8
	nop			;69b9
	nop			;69ba
	nop			;69bb
	nop			;69bc
	nop			;69bd
	ld a,(de)		;69be
	ex af,af'		;69bf
	nop			;69c0
	nop			;69c1
	dec b			;69c2
	dec d			;69c3
	ld (bc),a		;69c4
	inc c			;69c5
	nop			;69c6
	nop			;69c7
	nop			;69c8
	nop			;69c9
	ld (00005h),a		;69ca
l69cdh:
	nop			;69cd
	nop			;69ce
	dec d			;69cf
	nop			;69d0
	nop			;69d1
	ld h,e			;69d2
	jr nc,l6a38h		;69d3
	jr nc,l69fdh		;69d5
	ex af,af'		;69d7
	nop			;69d8
	nop			;69d9
	ex af,af'		;69da
	dec d			;69db
	nop			;69dc
	nop			;69dd
	nop			;69de
	nop			;69df
	nop			;69e0
	nop			;69e1
	ld (l6b05h),a		;69e2
	ld bc,01505h		;69e5
	nop			;69e8
	nop			;69e9
	nop			;69ea
	nop			;69eb
	nop			;69ec
	nop			;69ed
	ld h,c			;69ee
	nop			;69ef
l69f0h:
	nop			;69f0
	nop			;69f1
	nop			;69f2
	dec d			;69f3
	nop			;69f4
	nop			;69f5
	ld h,h			;69f6
	jr nc,l6a5dh		;69f7
	jr nc,l6a2dh		;69f9
	dec b			;69fb
	ld l,e			;69fc
l69fdh:
	ld bc,01500h		;69fd
	ld c,00ch		;6a00
	nop			;6a02
	nop			;6a03
	nop			;6a04
	nop			;6a05
	ld h,008h		;6a06
	ld l,h			;6a08
	ld bc,01505h		;6a09
	nop			;6a0c
	nop			;6a0d
	ld l,e			;6a0e
	ld bc,0016bh		;6a0f
	ld h,c			;6a12
	nop			;6a13
l6a14h:
	nop			;6a14
l6a15h:
	nop			;6a15
	nop			;6a16
	dec d			;6a17
	nop			;6a18
	nop			;6a19
	ld h,e			;6a1a
	jr nc,l6a80h		;6a1b
	jr nc,l6a45h		;6a1d
	ex af,af'		;6a1f
	nop			;6a20
	nop			;6a21
	dec b			;6a22
	dec d			;6a23
	nop			;6a24
	nop			;6a25
	nop			;6a26
	nop			;6a27
	nop			;6a28
	nop			;6a29
	ld (00005h),a		;6a2a
l6a2dh:
	nop			;6a2d
	nop			;6a2e
	dec d			;6a2f
	ld (bc),a		;6a30
	inc c			;6a31
	nop			;6a32
	nop			;6a33
	nop			;6a34
	nop			;6a35
	ld h,c			;6a36
	nop			;6a37
l6a38h:
	nop			;6a38
	nop			;6a39
	ex af,af'		;6a3a
	dec d			;6a3b
	nop			;6a3c
	nop			;6a3d
	ld h,h			;6a3e
	jr nc,l6aa5h		;6a3f
	jr nc,l6a75h		;6a41
	dec b			;6a43
	nop			;6a44
l6a45h:
	nop			;6a45
	dec b			;6a46
	dec d			;6a47
	nop			;6a48
	nop			;6a49
	nop			;6a4a
	nop			;6a4b
	nop			;6a4c
	nop			;6a4d
	ld a,(de)		;6a4e
	ex af,af'		;6a4f
	nop			;6a50
	nop			;6a51
	add hl,bc		;6a52
	dec d			;6a53
	ld c,00ch		;6a54
	nop			;6a56
	nop			;6a57
	nop			;6a58
	nop			;6a59
	ld h,c			;6a5a
	nop			;6a5b
	nop			;6a5c
l6a5dh:
	nop			;6a5d
	dec b			;6a5e
	dec d			;6a5f
	nop			;6a60
	nop			;6a61
	ld h,e			;6a62
	jr nc,l6ac8h		;6a63
	jr nc,l6a67h		;6a65
l6a67h:
	nop			;6a67
	ld l,h			;6a68
	ld bc,01505h		;6a69
	nop			;6a6c
	nop			;6a6d
	nop			;6a6e
	nop			;6a6f
	nop			;6a70
	nop			;6a71
	ld (00005h),a		;6a72
l6a75h:
	nop			;6a75
	nop			;6a76
	dec d			;6a77
	nop			;6a78
	nop			;6a79
	nop			;6a7a
	nop			;6a7b
	nop			;6a7c
	nop			;6a7d
	ld a,002h		;6a7e
l6a80h:
	nop			;6a80
	nop			;6a81
	dec b			;6a82
	dec d			;6a83
	nop			;6a84
	nop			;6a85
	ld h,h			;6a86
	jr nc,l6aedh		;6a87
	jr nc,l6abdh		;6a89
	ex af,af'		;6a8b
	nop			;6a8c
	nop			;6a8d
	nop			;6a8e
	dec d			;6a8f
	djnz l6a9eh		;6a90
	ld l,h			;6a92
	ld bc,0016ch		;6a93
	ld (00005h),a		;6a96
	nop			;6a99
	ex af,af'		;6a9a
	dec d			;6a9b
	nop			;6a9c
	nop			;6a9d
l6a9eh:
	ld l,h			;6a9e
	ld bc,0016ch		;6a9f
	inc e			;6aa2
	ex af,af'		;6aa3
	ld l,h			;6aa4
l6aa5h:
	ld bc,01505h		;6aa5
	nop			;6aa8
	nop			;6aa9
	ld h,e			;6aaa
	jr nc,l6b10h		;6aab
	jr nc,l6aefh		;6aad
	ld (bc),a		;6aaf
	nop			;6ab0
	nop			;6ab1
	nop			;6ab2
	dec d			;6ab3
	nop			;6ab4
	nop			;6ab5
	ld l,d			;6ab6
	ld bc,00169h		;6ab7
	inc e			;6aba
	ex af,af'		;6abb
	nop			;6abc
l6abdh:
	nop			;6abd
	nop			;6abe
	dec d			;6abf
	ld c,00ch		;6ac0
	ld h,c			;6ac2
	nop			;6ac3
	ld h,c			;6ac4
	nop			;6ac5
	ld h,c			;6ac6
	nop			;6ac7
l6ac8h:
	ld h,c			;6ac8
	nop			;6ac9
	dec b			;6aca
	dec d			;6acb
	nop			;6acc
	nop			;6acd
	ld l,d			;6ace
	ld bc,00169h		;6acf
	nop			;6ad2
	nop			;6ad3
	nop			;6ad4
	nop			;6ad5
	add hl,bc		;6ad6
	dec d			;6ad7
	nop			;6ad8
	nop			;6ad9
	nop			;6ada
	nop			;6adb
	ld hl,(0260ch)		;6adc
	rrca			;6adf
	nop			;6ae0
	nop			;6ae1
	dec b			;6ae2
	dec d			;6ae3
	nop			;6ae4
	nop			;6ae5
	nop			;6ae6
	nop			;6ae7
	nop			;6ae8
	nop			;6ae9
	ld h,a			;6aea
	djnz l6aedh		;6aeb
l6aedh:
	nop			;6aed
	nop			;6aee
l6aefh:
	dec d			;6aef
	ld (bc),a		;6af0
	inc c			;6af1
	nop			;6af2
	nop			;6af3
	dec l			;6af4
	inc c			;6af5
	ld hl,(0000fh)		;6af6
	nop			;6af9
	ex af,af'		;6afa
	dec d			;6afb
	nop			;6afc
	nop			;6afd
	nop			;6afe
	nop			;6aff
	nop			;6b00
	nop			;6b01
	nop			;6b02
	nop			;6b03
	nop			;6b04
l6b05h:
	nop			;6b05
	add hl,bc		;6b06
	dec d			;6b07
	nop			;6b08
	nop			;6b09
	ld h,009h		;6b0a
	nop			;6b0c
	nop			;6b0d
	nop			;6b0e
	nop			;6b0f
l6b10h:
	nop			;6b10
	nop			;6b11
	nop			;6b12
	dec d			;6b13
	ld c,00ch		;6b14
	ld h,a			;6b16
	djnz l6b19h		;6b17
l6b19h:
	nop			;6b19
	nop			;6b1a
	nop			;6b1b
	ld sp,00900h		;6b1c
	dec d			;6b1f
	nop			;6b20
	nop			;6b21
	ld hl,(00009h)		;6b22
	nop			;6b25
	nop			;6b26
	nop			;6b27
	ld l,e			;6b28
	inc bc			;6b29
	add hl,bc		;6b2a
	dec d			;6b2b
	nop			;6b2c
	nop			;6b2d
	nop			;6b2e
	nop			;6b2f
	nop			;6b30
	nop			;6b31
	ld l,h			;6b32
	ld bc,0036bh		;6b33
	nop			;6b36
	dec d			;6b37
	nop			;6b38
	nop			;6b39
	ld h,a			;6b3a
	ld bc,00000h		;6b3b
	ld l,h			;6b3e
	ld bc,00a2fh		;6b3f
	dec b			;6b42
	dec d			;6b43
	ld (bc),a		;6b44
	inc c			;6b45
	nop			;6b46
	nop			;6b47
	nop			;6b48
	nop			;6b49
	ld l,h			;6b4a
	ld bc,00000h		;6b4b
	nop			;6b4e
	dec d			;6b4f
	nop			;6b50
	nop			;6b51
	nop			;6b52
	nop			;6b53
	dec l			;6b54
	inc c			;6b55
	ld l,h			;6b56
	ld bc,00a2ah		;6b57
	ex af,af'		;6b5a
	dec d			;6b5b
	nop			;6b5c
	nop			;6b5d
	ld l,h			;6b5e
	ld bc,00000h		;6b5f
	nop			;6b62
	nop			;6b63
	nop			;6b64
	nop			;6b65
	dec b			;6b66
	dec d			;6b67
	nop			;6b68
	nop			;6b69
	ld l,h			;6b6a
	ld bc,00c28h		;6b6b
	nop			;6b6e
	nop			;6b6f
	inc l			;6b70
	ld a,(bc)		;6b71
	nop			;6b72
	dec d			;6b73
	nop			;6b74
	nop			;6b75
	ld l,h			;6b76
	ld bc,00000h		;6b77
	nop			;6b7a
	nop			;6b7b
	nop			;6b7c
	nop			;6b7d
	nop			;6b7e
	dec d			;6b7f
	ld c,00ch		;6b80
	ld l,h			;6b82
	ld bc,00c26h		;6b83
	dec l			;6b86
	rrca			;6b87
	ld h,c			;6b88
	nop			;6b89
	dec b			;6b8a
	dec d			;6b8b
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
	dec d			;6b97
	nop			;6b98
	nop			;6b99
	nop			;6b9a
	nop			;6b9b
	nop			;6b9c
	nop			;6b9d
	nop			;6b9e
	nop			;6b9f
	add hl,sp		;6ba0
	nop			;6ba1
	dec b			;6ba2
	dec d			;6ba3
	nop			;6ba4
	nop			;6ba5
	nop			;6ba6
	nop			;6ba7
	nop			;6ba8
	nop			;6ba9
	nop			;6baa
	nop			;6bab
	ld l,e			;6bac
	ld bc,01500h		;6bad
	ld (bc),a		;6bb0
	inc c			;6bb1
	dec l			;6bb2
	add hl,bc		;6bb3
	nop			;6bb4
	nop			;6bb5
	nop			;6bb6
	nop			;6bb7
	ld h,a			;6bb8
	djnz l6bc3h		;6bb9
	dec d			;6bbb
	nop			;6bbc
	nop			;6bbd
	nop			;6bbe
	nop			;6bbf
	nop			;6bc0
	nop			;6bc1
	nop			;6bc2
l6bc3h:
	nop			;6bc3
	ld l,e			;6bc4
	ld bc,01505h		;6bc5
	nop			;6bc8
	nop			;6bc9
	ld h,a			;6bca
	ld bc,00000h		;6bcb
	nop			;6bce
	nop			;6bcf
	nop			;6bd0
	nop			;6bd1
	add hl,bc		;6bd2
	dec d			;6bd3
	ld c,00ch		;6bd4
	nop			;6bd6
	nop			;6bd7
	nop			;6bd8
	nop			;6bd9
	nop			;6bda
	nop			;6bdb
	ld l,b			;6bdc
	ld (bc),a		;6bdd
	dec b			;6bde
	dec d			;6bdf
	nop			;6be0
	nop			;6be1
	nop			;6be2
	nop			;6be3
	nop			;6be4
	nop			;6be5
	nop			;6be6
	nop			;6be7
	nop			;6be8
	nop			;6be9
	dec b			;6bea
	dec d			;6beb
	nop			;6bec
	nop			;6bed
	nop			;6bee
	nop			;6bef
	nop			;6bf0
	nop			;6bf1
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	nop			;6bf5
	nop			;6bf6
	dec d			;6bf7
	nop			;6bf8
	nop			;6bf9
	nop			;6bfa
	nop			;6bfb
	nop			;6bfc
	nop			;6bfd
	nop			;6bfe
	nop			;6bff
	ld h,a			;6c00
	ld b,005h		;6c01
	dec d			;6c03
l6c04h:
	ld (bc),a		;6c04
l6c05h:
	inc c			;6c05
	ld l,h			;6c06
	ld bc,00000h		;6c07
	nop			;6c0a
l6c0bh:
	nop			;6c0b
	nop			;6c0c
	nop			;6c0d
	nop			;6c0e
l6c0fh:
	dec d			;6c0f
	nop			;6c10
	nop			;6c11
	nop			;6c12
	nop			;6c13
	nop			;6c14
	nop			;6c15
	nop			;6c16
	nop			;6c17
	ld l,h			;6c18
	ld bc,01508h		;6c19
	nop			;6c1c
	nop			;6c1d
	ld l,h			;6c1e
	ld bc,00000h		;6c1f
	nop			;6c22
	nop			;6c23
	nop			;6c24
	nop			;6c25
	dec b			;6c26
	dec d			;6c27
	nop			;6c28
	nop			;6c29
	nop			;6c2a
	nop			;6c2b
	ld h,00ch		;6c2c
	inc l			;6c2e
	rrca			;6c2f
	nop			;6c30
	nop			;6c31
	nop			;6c32
	dec d			;6c33
	nop			;6c34
	nop			;6c35
	ld l,h			;6c36
	ld bc,00c25h		;6c37
	dec l			;6c3a
	rrca			;6c3b
	nop			;6c3c
	nop			;6c3d
	nop			;6c3e
	dec d			;6c3f
	ld b,00ch		;6c40
	ld h,c			;6c42
	nop			;6c43
	cpl			;6c44
	inc c			;6c45
	inc l			;6c46
	rrca			;6c47
	inc l			;6c48
	nop			;6c49
	dec b			;6c4a
	dec d			;6c4b
	nop			;6c4c
	nop			;6c4d
	nop			;6c4e
	nop			;6c4f
	nop			;6c50
	nop			;6c51
	nop			;6c52
	nop			;6c53
	nop			;6c54
	nop			;6c55
	add hl,bc		;6c56
	dec d			;6c57
	nop			;6c58
	nop			;6c59
	nop			;6c5a
	nop			;6c5b
	nop			;6c5c
	nop			;6c5d
	ld l,h			;6c5e
	ld (bc),a		;6c5f
	ld l,e			;6c60
	ld (bc),a		;6c61
	dec b			;6c62
	dec d			;6c63
	nop			;6c64
	nop			;6c65
	nop			;6c66
	nop			;6c67
	nop			;6c68
	nop			;6c69
	ld l,h			;6c6a
	ld (bc),a		;6c6b
	ld l,e			;6c6c
	ld (bc),a		;6c6d
	nop			;6c6e
	dec d			;6c6f
	ld (de),a		;6c70
	inc c			;6c71
	nop			;6c72
	nop			;6c73
	dec l			;6c74
	inc c			;6c75
	ld hl,(l610fh)		;6c76
	nop			;6c79
	ex af,af'		;6c7a
	dec d			;6c7b
	nop			;6c7c
	nop			;6c7d
	nop			;6c7e
	nop			;6c7f
	nop			;6c80
	nop			;6c81
	nop			;6c82
	nop			;6c83
	nop			;6c84
	nop			;6c85
	add hl,bc		;6c86
	dec d			;6c87
	nop			;6c88
	nop			;6c89
	nop			;6c8a
	nop			;6c8b
	nop			;6c8c
	nop			;6c8d
	nop			;6c8e
	nop			;6c8f
	ld (hl),002h		;6c90
	dec b			;6c92
	dec d			;6c93
	ld b,00ch		;6c94
	nop			;6c96
	nop			;6c97
	nop			;6c98
	nop			;6c99
	nop			;6c9a
	nop			;6c9b
	ld h,a			;6c9c
	ld b,000h		;6c9d
	dec d			;6c9f
	nop			;6ca0
	nop			;6ca1
	ld (00007h),a		;6ca2
	nop			;6ca5
	nop			;6ca6
	nop			;6ca7
	ld l,e			;6ca8
	ld bc,01509h		;6ca9
	nop			;6cac
	nop			;6cad
	nop			;6cae
	nop			;6caf
	nop			;6cb0
	nop			;6cb1
	nop			;6cb2
	nop			;6cb3
	ld l,e			;6cb4
	ld bc,01509h		;6cb5
	nop			;6cb8
	nop			;6cb9
	nop			;6cba
	nop			;6cbb
	nop			;6cbc
	nop			;6cbd
	nop			;6cbe
	nop			;6cbf
	ld h,h			;6cc0
	djnz l6cc8h		;6cc1
	dec d			;6cc3
	nop			;6cc4
	nop			;6cc5
	ld h,a			;6cc6
	ld (bc),a		;6cc7
l6cc8h:
	nop			;6cc8
	nop			;6cc9
	nop			;6cca
	nop			;6ccb
	nop			;6ccc
	nop			;6ccd
	nop			;6cce
	dec d			;6ccf
	ld (de),a		;6cd0
	inc c			;6cd1
	ld sp,02507h		;6cd2
	inc c			;6cd5
	nop			;6cd6
	nop			;6cd7
	ld l,h			;6cd8
	ld bc,01508h		;6cd9
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
	dec b			;6ce6
	dec d			;6ce7
	nop			;6ce8
	nop			;6ce9
	ld h,a			;6cea
	ld (bc),a		;6ceb
	ld sp,0000ch		;6cec
	nop			;6cef
	nop			;6cf0
	nop			;6cf1
	nop			;6cf2
	dec d			;6cf3
	nop			;6cf4
	nop			;6cf5
	ld h,h			;6cf6
	ld bc,00000h		;6cf7
	nop			;6cfa
	nop			;6cfb
	ld h,c			;6cfc
	nop			;6cfd
	nop			;6cfe
	dec d			;6cff
	ld b,00ch		;6d00
	nop			;6d02
	nop			;6d03
	ld h,a			;6d04
	ld bc,00000h		;6d05
	nop			;6d08
	nop			;6d09
	dec b			;6d0a
	dec d			;6d0b
	nop			;6d0c
	nop			;6d0d
	ld l,h			;6d0e
	ld bc,00000h		;6d0f
	nop			;6d12
	nop			;6d13
	nop			;6d14
	nop			;6d15
	nop			;6d16
	dec d			;6d17
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
	dec b			;6d22
	dec d			;6d23
	nop			;6d24
	nop			;6d25
	ld l,h			;6d26
	ld bc,00000h		;6d27
	ld l,h			;6d2a
	ld bc,00000h		;6d2b
	nop			;6d2e
	dec d			;6d2f
	ld (de),a		;6d30
	inc c			;6d31
	ld h,c			;6d32
	nop			;6d33
	nop			;6d34
	nop			;6d35
	nop			;6d36
	nop			;6d37
	nop			;6d38
	nop			;6d39
	ex af,af'		;6d3a
	dec d			;6d3b
	nop			;6d3c
	nop			;6d3d
	nop			;6d3e
	nop			;6d3f
	ld h,a			;6d40
	ld (bc),a		;6d41
	ld h,a			;6d42
	inc b			;6d43
	nop			;6d44
	nop			;6d45
	dec b			;6d46
	dec d			;6d47
	nop			;6d48
	nop			;6d49
	nop			;6d4a
	nop			;6d4b
	ld l,h			;6d4c
	ld bc,00000h		;6d4d
	add hl,hl		;6d50
	ld bc,01509h		;6d51
	ld (de),a		;6d54
	inc c			;6d55
	nop			;6d56
	nop			;6d57
	nop			;6d58
	nop			;6d59
	ld l,h			;6d5a
	ld bc,00163h		;6d5b
	dec b			;6d5e
	dec d			;6d5f
	nop			;6d60
	nop			;6d61
	nop			;6d62
	nop			;6d63
	nop			;6d64
	nop			;6d65
	nop			;6d66
	nop			;6d67
	ld l,e			;6d68
	ld bc,01505h		;6d69
	nop			;6d6c
	nop			;6d6d
	nop			;6d6e
	nop			;6d6f
	ld l,h			;6d70
	ld bc,00867h		;6d71
	ld l,e			;6d74
	ld bc,01500h		;6d75
	nop			;6d78
	nop			;6d79
	nop			;6d7a
	nop			;6d7b
	nop			;6d7c
	nop			;6d7d
	ld hl,(l610fh)		;6d7e
	nop			;6d81
	dec b			;6d82
	dec d			;6d83
	nop			;6d84
	nop			;6d85
	nop			;6d86
	nop			;6d87
	nop			;6d88
	nop			;6d89
	nop			;6d8a
	nop			;6d8b
	nop			;6d8c
	nop			;6d8d
	nop			;6d8e
	dec d			;6d8f
	ld b,00ch		;6d90
	nop			;6d92
	nop			;6d93
	ld l,h			;6d94
	ld bc,00f28h		;6d95
	nop			;6d98
	nop			;6d99
	ex af,af'		;6d9a
	dec d			;6d9b
	nop			;6d9c
	nop			;6d9d
	nop			;6d9e
	nop			;6d9f
	nop			;6da0
	nop			;6da1
	nop			;6da2
	nop			;6da3
	inc (hl)		;6da4
	inc b			;6da5
	dec b			;6da6
	dec d			;6da7
	nop			;6da8
	nop			;6da9
	ld hl,(00007h)		;6daa
	nop			;6dad
	dec h			;6dae
	rrca			;6daf
	ld sp,00004h		;6db0
	dec d			;6db3
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
	dec d			;6dbf
	inc b			;6dc0
	inc c			;6dc1
	ld h,c			;6dc2
	nop			;6dc3
	ld h,c			;6dc4
	nop			;6dc5
	ld h,a			;6dc6
	ld (bc),a		;6dc7
	ld h,a			;6dc8
	ld (bc),a		;6dc9
	dec b			;6dca
	dec d			;6dcb
	nop			;6dcc
	nop			;6dcd
	nop			;6dce
	nop			;6dcf
	nop			;6dd0
	nop			;6dd1
	nop			;6dd2
	nop			;6dd3
	nop			;6dd4
	nop			;6dd5
	add hl,bc		;6dd6
	dec d			;6dd7
	nop			;6dd8
	nop			;6dd9
	nop			;6dda
	nop			;6ddb
	nop			;6ddc
	nop			;6ddd
	ld (hl),00fh		;6dde
	ld hl,(00504h)		;6de0
	dec d			;6de3
	nop			;6de4
	nop			;6de5
	nop			;6de6
	nop			;6de7
	nop			;6de8
	nop			;6de9
	nop			;6dea
	nop			;6deb
	nop			;6dec
	nop			;6ded
	nop			;6dee
	dec d			;6def
	djnz l6dfeh		;6df0
	nop			;6df2
	nop			;6df3
	nop			;6df4
	nop			;6df5
	cpl			;6df6
	rrca			;6df7
	dec sp			;6df8
	inc b			;6df9
	ex af,af'		;6dfa
	dec d			;6dfb
	nop			;6dfc
	nop			;6dfd
l6dfeh:
	nop			;6dfe
	nop			;6dff
	nop			;6e00
	nop			;6e01
	nop			;6e02
	nop			;6e03
	nop			;6e04
	nop			;6e05
	add hl,bc		;6e06
	dec d			;6e07
	nop			;6e08
	nop			;6e09
	nop			;6e0a
	nop			;6e0b
	nop			;6e0c
	nop			;6e0d
	ld h,a			;6e0e
	ld bc,00000h		;6e0f
	nop			;6e12
	dec d			;6e13
	inc b			;6e14
	inc c			;6e15
	nop			;6e16
	nop			;6e17
	nop			;6e18
	nop			;6e19
	nop			;6e1a
	nop			;6e1b
	ld l,e			;6e1c
	ld bc,01509h		;6e1d
	nop			;6e20
	nop			;6e21
	ld (02a04h),a		;6e22
	ex af,af'		;6e25
	ld l,h			;6e26
	ld bc,00167h		;6e27
	add hl,bc		;6e2a
	dec d			;6e2b
	nop			;6e2c
	nop			;6e2d
	nop			;6e2e
	nop			;6e2f
	nop			;6e30
	nop			;6e31
	ld h,a			;6e32
	ld (bc),a		;6e33
	nop			;6e34
	nop			;6e35
	nop			;6e36
	dec d			;6e37
	nop			;6e38
	nop			;6e39
	nop			;6e3a
	nop			;6e3b
	nop			;6e3c
	nop			;6e3d
	nop			;6e3e
	nop			;6e3f
	nop			;6e40
	nop			;6e41
	dec b			;6e42
	dec d			;6e43
	djnz l6e52h		;6e44
	ld sp,02804h		;6e46
	ex af,af'		;6e49
	ld l,h			;6e4a
	ld bc,00000h		;6e4b
	nop			;6e4e
	dec d			;6e4f
	nop			;6e50
	nop			;6e51
l6e52h:
	nop			;6e52
	nop			;6e53
	nop			;6e54
	nop			;6e55
	ld h,a			;6e56
	dec b			;6e57
	jr z,l6e5dh		;6e58
	ex af,af'		;6e5a
	dec d			;6e5b
	nop			;6e5c
l6e5dh:
	nop			;6e5d
	nop			;6e5e
	nop			;6e5f
	nop			;6e60
	nop			;6e61
	nop			;6e62
	nop			;6e63
	nop			;6e64
	nop			;6e65
	dec b			;6e66
	dec d			;6e67
	nop			;6e68
	nop			;6e69
	ld hl,(02504h)		;6e6a
	ex af,af'		;6e6d
	ld e,00fh		;6e6e
	ld sp,00008h		;6e70
	dec d			;6e73
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
	dec d			;6e7f
	ld c,00ch		;6e80
	ld hl,l420bh		;6e82
	inc bc			;6e85
	ld hl,0360fh		;6e86
	ex af,af'		;6e89
	dec b			;6e8a
	dec d			;6e8b
	nop			;6e8c
	nop			;6e8d
	ld h,c			;6e8e
	nop			;6e8f
	nop			;6e90
	nop			;6e91
	nop			;6e92
	ld a,(bc)		;6e93
	nop			;6e94
	nop			;6e95
	nop			;6e96
	dec d			;6e97
	nop			;6e98
	nop			;6e99
	ld hl,l6c0bh		;6e9a
	ld bc,00a00h		;6e9d
	nop			;6ea0
	nop			;6ea1
	dec b			;6ea2
	dec d			;6ea3
	nop			;6ea4
	nop			;6ea5
	nop			;6ea6
	nop			;6ea7
	ld h,h			;6ea8
	ld bc,00000h		;6ea9
	nop			;6eac
	nop			;6ead
	nop			;6eae
	dec d			;6eaf
	ld (bc),a		;6eb0
	inc c			;6eb1
	ld h,c			;6eb2
	nop			;6eb3
	nop			;6eb4
	nop			;6eb5
	nop			;6eb6
	ld a,(bc)		;6eb7
	nop			;6eb8
	nop			;6eb9
	ex af,af'		;6eba
	dec d			;6ebb
	nop			;6ebc
	nop			;6ebd
	ld a,(de)		;6ebe
	dec bc			;6ebf
	cpl			;6ec0
	ld b,06ch		;6ec1
	ld bc,00000h		;6ec3
	dec b			;6ec6
	dec d			;6ec7
	nop			;6ec8
	nop			;6ec9
	nop			;6eca
	nop			;6ecb
	ld sp,00006h		;6ecc
	nop			;6ecf
	nop			;6ed0
	nop			;6ed1
	add hl,bc		;6ed2
	dec d			;6ed3
	ld c,00ch		;6ed4
	ld h,c			;6ed6
	nop			;6ed7
	cpl			;6ed8
	ld b,000h		;6ed9
	nop			;6edb
	nop			;6edc
	nop			;6edd
	dec b			;6ede
	dec d			;6edf
	nop			;6ee0
	nop			;6ee1
	nop			;6ee2
	nop			;6ee3
	ld sp,l6406h		;6ee4
	djnz l6ee9h		;6ee7
l6ee9h:
	nop			;6ee9
	dec b			;6eea
	dec d			;6eeb
	nop			;6eec
	nop			;6eed
	nop			;6eee
	nop			;6eef
	ld h,a			;6ef0
	ld bc,01063h		;6ef1
	nop			;6ef4
	nop			;6ef5
	nop			;6ef6
	dec d			;6ef7
	add hl,bc		;6ef8
	inc c			;6ef9
	nop			;6efa
	nop			;6efb
	nop			;6efc
	nop			;6efd
	ld h,a			;6efe
	djnz l6f68h		;6eff
	ld bc,01505h		;6f01
	nop			;6f04
	nop			;6f05
	nop			;6f06
	nop			;6f07
	ld h,a			;6f08
	ld (bc),a		;6f09
	nop			;6f0a
	ld a,(bc)		;6f0b
	nop			;6f0c
	nop			;6f0d
	nop			;6f0e
	dec d			;6f0f
	nop			;6f10
	nop			;6f11
	nop			;6f12
	nop			;6f13
	nop			;6f14
	nop			;6f15
	dec l			;6f16
	rrca			;6f17
	ld h,a			;6f18
	ld (bc),a		;6f19
	ex af,af'		;6f1a
	dec d			;6f1b
	nop			;6f1c
	nop			;6f1d
	nop			;6f1e
	nop			;6f1f
	ld l,h			;6f20
	ld bc,00a00h		;6f21
	nop			;6f24
	nop			;6f25
	dec b			;6f26
	dec d			;6f27
	nop			;6f28
	nop			;6f29
	nop			;6f2a
	nop			;6f2b
	ld l,h			;6f2c
	ld bc,0016ch		;6f2d
	ld l,h			;6f30
	ld bc,01500h		;6f31
	nop			;6f34
	nop			;6f35
	nop			;6f36
	nop			;6f37
	ld h,c			;6f38
	nop			;6f39
	nop			;6f3a
	nop			;6f3b
	nop			;6f3c
	nop			;6f3d
	nop			;6f3e
	dec d			;6f3f
	dec bc			;6f40
	inc c			;6f41
	nop			;6f42
	nop			;6f43
	nop			;6f44
	nop			;6f45
	ld h,a			;6f46
	ld bc,00000h		;6f47
	dec b			;6f4a
	dec d			;6f4b
	nop			;6f4c
	nop			;6f4d
	nop			;6f4e
	nop			;6f4f
	nop			;6f50
	nop			;6f51
	nop			;6f52
	nop			;6f53
	ld l,h			;6f54
	ld bc,01509h		;6f55
	nop			;6f58
	nop			;6f59
	nop			;6f5a
	nop			;6f5b
	nop			;6f5c
	nop			;6f5d
	ld h,a			;6f5e
	inc bc			;6f5f
	nop			;6f60
	nop			;6f61
	dec b			;6f62
	dec d			;6f63
	nop			;6f64
	nop			;6f65
	nop			;6f66
	nop			;6f67
l6f68h:
	nop			;6f68
	nop			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	nop			;6f6d
	nop			;6f6e
	dec d			;6f6f
	rla			;6f70
	inc c			;6f71
	nop			;6f72
	nop			;6f73
	cpl			;6f74
	inc b			;6f75
	nop			;6f76
	nop			;6f77
	nop			;6f78
	nop			;6f79
	ex af,af'		;6f7a
	dec d			;6f7b
	nop			;6f7c
	nop			;6f7d
	nop			;6f7e
	nop			;6f7f
	ld sp,l6704h		;6f80
	ld b,000h		;6f83
	nop			;6f85
	add hl,bc		;6f86
	dec d			;6f87
	nop			;6f88
	nop			;6f89
	nop			;6f8a
	nop			;6f8b
	cpl			;6f8c
	inc b			;6f8d
	nop			;6f8e
	nop			;6f8f
	nop			;6f90
	nop			;6f91
	nop			;6f92
	dec d			;6f93
	dec bc			;6f94
	inc c			;6f95
	cpl			;6f96
	inc b			;6f97
	ld sp,l6c04h		;6f98
	ld bc,0043bh		;6f9b
	add hl,bc		;6f9e
	dec d			;6f9f
	nop			;6fa0
	nop			;6fa1
	ld sp,l6c04h		;6fa2
	ld bc,00000h		;6fa5
	dec a			;6fa8
	inc b			;6fa9
	add hl,bc		;6faa
	dec d			;6fab
	nop			;6fac
	nop			;6fad
	cpl			;6fae
	inc b			;6faf
	nop			;6fb0
	nop			;6fb1
	ld h,e			;6fb2
	ld bc,0043bh		;6fb3
	nop			;6fb6
	dec d			;6fb7
	nop			;6fb8
	nop			;6fb9
	ld sp,l6c04h		;6fba
	ld bc,00000h		;6fbd
	dec a			;6fc0
	inc b			;6fc1
	dec b			;6fc2
	dec d			;6fc3
	nop			;6fc4
	nop			;6fc5
	ld l,h			;6fc6
	ld bc,00000h		;6fc7
	ld l,h			;6fca
	ld bc,00000h		;6fcb
	nop			;6fce
	dec d			;6fcf
	rla			;6fd0
	inc c			;6fd1
	nop			;6fd2
	nop			;6fd3
	nop			;6fd4
	nop			;6fd5
	nop			;6fd6
	nop			;6fd7
	ld h,a			;6fd8
	ld (bc),a		;6fd9
	ex af,af'		;6fda
	dec d			;6fdb
	nop			;6fdc
	nop			;6fdd
	ld l,h			;6fde
	ld bc,00000h		;6fdf
	nop			;6fe2
	nop			;6fe3
	ld l,h			;6fe4
	ld bc,01505h		;6fe5
	nop			;6fe8
	nop			;6fe9
	ld h,c			;6fea
	nop			;6feb
	nop			;6fec
	nop			;6fed
	ld l,h			;6fee
	ld bc,00367h		;6fef
	nop			;6ff2
	dec d			;6ff3
	nop			;6ff4
	nop			;6ff5
	ld l,d			;6ff6
	ld (bc),a		;6ff7
	ld l,c			;6ff8
	ld (bc),a		;6ff9
	nop			;6ffa
	nop			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	dec d			;6fff
	add hl,bc		;7000
	inc c			;7001
	inc l			;7002
	ld b,000h		;7003
	nop			;7005
	nop			;7006
	nop			;7007
	ld l,h			;7008
	ld bc,01505h		;7009
	nop			;700c
	nop			;700d
	ld h,a			;700e
	ld (bc),a		;700f
	nop			;7010
	nop			;7011
	nop			;7012
	nop			;7013
	nop			;7014
	nop			;7015
	nop			;7016
	dec d			;7017
	nop			;7018
	nop			;7019
	nop			;701a
	nop			;701b
	nop			;701c
	nop			;701d
	nop			;701e
	nop			;701f
	nop			;7020
	nop			;7021
	dec b			;7022
	dec d			;7023
	nop			;7024
	nop			;7025
	nop			;7026
	nop			;7027
	inc l			;7028
	dec b			;7029
	nop			;702a
	nop			;702b
	nop			;702c
	nop			;702d
	nop			;702e
	dec d			;702f
	dec d			;7030
	inc c			;7031
	dec l			;7032
	ld b,067h		;7033
	ld (bc),a		;7035
	nop			;7036
	nop			;7037
	nop			;7038
	nop			;7039
	ex af,af'		;703a
	dec d			;703b
	nop			;703c
	nop			;703d
	ld h,a			;703e
	ld (bc),a		;703f
	nop			;7040
	nop			;7041
	ld l,h			;7042
	ld bc,00000h		;7043
	dec b			;7046
	dec d			;7047
	nop			;7048
	nop			;7049
	ld hl,(00006h)		;704a
	nop			;704d
	nop			;704e
	nop			;704f
	daa			;7050
	inc bc			;7051
	add hl,bc		;7052
	dec d			;7053
	add hl,bc		;7054
	inc c			;7055
	nop			;7056
	nop			;7057
	dec l			;7058
	dec b			;7059
	nop			;705a
	nop			;705b
	ld h,e			;705c
	ld bc,01505h		;705d
	nop			;7060
	nop			;7061
	ld h,a			;7062
	ld (bc),a		;7063
	ld h,a			;7064
	ld (bc),a		;7065
	nop			;7066
	nop			;7067
	ld l,e			;7068
	ld bc,01505h		;7069
	nop			;706c
	nop			;706d
	nop			;706e
	nop			;706f
	ld hl,(l6704h+1)	;7070
	ex af,af'		;7073
	ld l,e			;7074
	ld bc,01500h		;7075
	nop			;7078
	nop			;7079
	nop			;707a
	nop			;707b
	nop			;707c
	nop			;707d
	jr z,l708fh		;707e
	ld h,c			;7080
	nop			;7081
	dec b			;7082
	dec d			;7083
	nop			;7084
	nop			;7085
	nop			;7086
	nop			;7087
	ld h,a			;7088
	ld (bc),a		;7089
	nop			;708a
	nop			;708b
	nop			;708c
	nop			;708d
	nop			;708e
l708fh:
	dec d			;708f
	ld b,00ch		;7090
	cpl			;7092
	ld b,000h		;7093
	nop			;7095
	ld hl,(0360fh)		;7096
	dec b			;7099
	ex af,af'		;709a
	dec d			;709b
	nop			;709c
	nop			;709d
	ld h,a			;709e
	ld (bc),a		;709f
	nop			;70a0
	nop			;70a1
	ld h,a			;70a2
	ld (bc),a		;70a3
	ld h,a			;70a4
	ld bc,01505h		;70a5
	nop			;70a8
	nop			;70a9
	ld l,d			;70aa
	ld bc,00169h		;70ab
	cpl			;70ae
	rrca			;70af
	dec sp			;70b0
	dec b			;70b1
	nop			;70b2
	dec d			;70b3
	nop			;70b4
	nop			;70b5
	nop			;70b6
	nop			;70b7
	cpl			;70b8
	dec b			;70b9
	ld h,a			;70ba
	ld bc,00167h		;70bb
	nop			;70be
	dec d			;70bf
	ld c,00ch		;70c0
	nop			;70c2
	nop			;70c3
	nop			;70c4
	nop			;70c5
	dec l			;70c6
	ld a,(bc)		;70c7
	ld h,c			;70c8
	nop			;70c9
	dec b			;70ca
	dec d			;70cb
	nop			;70cc
	nop			;70cd
	nop			;70ce
	nop			;70cf
	nop			;70d0
	nop			;70d1
	nop			;70d2
	nop			;70d3
	nop			;70d4
	nop			;70d5
	ex af,af'		;70d6
	dec d			;70d7
	nop			;70d8
	nop			;70d9
	ld a,000h		;70da
	dec sp			;70dc
	nop			;70dd
	ld h,a			;70de
	ld bc,00039h		;70df
	dec b			;70e2
	dec d			;70e3
	nop			;70e4
	nop			;70e5
	nop			;70e6
	nop			;70e7
	nop			;70e8
	nop			;70e9
	nop			;70ea
	nop			;70eb
	ld l,e			;70ec
	ld bc,01505h		;70ed
	ld (bc),a		;70f0
	inc c			;70f1
	ld h,a			;70f2
	djnz l715ch		;70f3
	djnz l70f7h		;70f5
l70f7h:
	nop			;70f7
	ld h,a			;70f8
	djnz l7103h		;70f9
	dec d			;70fb
	nop			;70fc
	nop			;70fd
	ld l,e			;70fe
	ld bc,0016bh		;70ff
	nop			;7102
l7103h:
	nop			;7103
	ld l,e			;7104
	ld bc,01508h		;7105
	nop			;7108
	nop			;7109
	nop			;710a
	nop			;710b
	nop			;710c
	nop			;710d
	nop			;710e
	nop			;710f
	nop			;7110
	nop			;7111
	nop			;7112
	dec d			;7113
	ld c,00ch		;7114
	ld l,b			;7116
	ld (bc),a		;7117
	ld l,b			;7118
	ld (bc),a		;7119
	nop			;711a
	nop			;711b
	ld l,b			;711c
	ld (bc),a		;711d
	nop			;711e
	dec d			;711f
	nop			;7120
	nop			;7121
	nop			;7122
	nop			;7123
	nop			;7124
	nop			;7125
	nop			;7126
	nop			;7127
	nop			;7128
	nop			;7129
	ex af,af'		;712a
	dec d			;712b
	nop			;712c
	nop			;712d
	nop			;712e
	nop			;712f
	nop			;7130
	nop			;7131
	nop			;7132
	nop			;7133
	nop			;7134
	nop			;7135
	ex af,af'		;7136
	dec d			;7137
	nop			;7138
	nop			;7139
	ld h,a			;713a
	ld b,067h		;713b
	ld b,000h		;713d
	nop			;713f
	ld h,a			;7140
	ld b,005h		;7141
	dec d			;7143
	ld (bc),a		;7144
	inc c			;7145
	nop			;7146
	nop			;7147
	nop			;7148
	nop			;7149
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	dec b			;714e
	dec d			;714f
	nop			;7150
	nop			;7151
	ld l,h			;7152
	ld bc,0016ch		;7153
	nop			;7156
	nop			;7157
	ld l,h			;7158
	ld bc,01508h		;7159
l715ch:
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
	dec d			;7167
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
	ex af,af'		;7172
	dec d			;7173
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
	dec d			;717f
	rst 38h			;7180
	rst 38h			;7181
	rst 38h			;7182
	rst 38h			;7183
	rst 38h			;7184
	rst 38h			;7185
	rst 38h			;7186
	rst 38h			;7187
	rst 38h			;7188
	rst 38h			;7189
	rst 38h			;718a
	rst 38h			;718b
	rst 38h			;718c
	rst 38h			;718d
	rst 38h			;718e
	rst 38h			;718f
	rst 38h			;7190
	rst 38h			;7191
	rst 38h			;7192
	rst 38h			;7193
	rst 38h			;7194
	rst 38h			;7195
	rst 38h			;7196
	rst 38h			;7197
	rst 38h			;7198
	rst 38h			;7199
	rst 38h			;719a
	rst 38h			;719b
	rst 38h			;719c
	rst 38h			;719d
	rst 38h			;719e
	rst 38h			;719f
	rst 38h			;71a0
	rst 38h			;71a1
	rst 38h			;71a2
	rst 38h			;71a3
	rst 38h			;71a4
	rst 38h			;71a5
	rst 38h			;71a6
	rst 38h			;71a7
	rst 38h			;71a8
	rst 38h			;71a9
	rst 38h			;71aa
	rst 38h			;71ab
	rst 38h			;71ac
	rst 38h			;71ad
	rst 38h			;71ae
	rst 38h			;71af
	rst 38h			;71b0
	rst 38h			;71b1
	rst 38h			;71b2
	rst 38h			;71b3
	rst 38h			;71b4
	rst 38h			;71b5
	rst 38h			;71b6
	rst 38h			;71b7
	rst 38h			;71b8
	rst 38h			;71b9
	rst 38h			;71ba
	rst 38h			;71bb
	rst 38h			;71bc
	rst 38h			;71bd
	rst 38h			;71be
	rst 38h			;71bf
	rst 38h			;71c0
	rst 38h			;71c1
	rst 38h			;71c2
	rst 38h			;71c3
	rst 38h			;71c4
	rst 38h			;71c5
	rst 38h			;71c6
	rst 38h			;71c7
	rst 38h			;71c8
	rst 38h			;71c9
	rst 38h			;71ca
	rst 38h			;71cb
	rst 38h			;71cc
	rst 38h			;71cd
	rst 38h			;71ce
	rst 38h			;71cf
	rst 38h			;71d0
	rst 38h			;71d1
	rst 38h			;71d2
	rst 38h			;71d3
	rst 38h			;71d4
	rst 38h			;71d5
	rst 38h			;71d6
	rst 38h			;71d7
	rst 38h			;71d8
	rst 38h			;71d9
	rst 38h			;71da
	rst 38h			;71db
	rst 38h			;71dc
	rst 38h			;71dd
	rst 38h			;71de
	rst 38h			;71df
	rst 38h			;71e0
	rst 38h			;71e1
	rst 38h			;71e2
	rst 38h			;71e3
	rst 38h			;71e4
	rst 38h			;71e5
	rst 38h			;71e6
	rst 38h			;71e7
	rst 38h			;71e8
	rst 38h			;71e9
	rst 38h			;71ea
	rst 38h			;71eb
	rst 38h			;71ec
	rst 38h			;71ed
	rst 38h			;71ee
	rst 38h			;71ef
	rst 38h			;71f0
	rst 38h			;71f1
	rst 38h			;71f2
	rst 38h			;71f3
	rst 38h			;71f4
	rst 38h			;71f5
	rst 38h			;71f6
	rst 38h			;71f7
	rst 38h			;71f8
	rst 38h			;71f9
	rst 38h			;71fa
	rst 38h			;71fb
	rst 38h			;71fc
	rst 38h			;71fd
	rst 38h			;71fe
	rst 38h			;71ff
	rst 38h			;7200
	rst 38h			;7201
	rst 38h			;7202
	rst 38h			;7203
	rst 38h			;7204
	rst 38h			;7205
	rst 38h			;7206
	rst 38h			;7207
	rst 38h			;7208
	rst 38h			;7209
	rst 38h			;720a
	rst 38h			;720b
	rst 38h			;720c
	rst 38h			;720d
	rst 38h			;720e
	rst 38h			;720f
	rst 38h			;7210
	rst 38h			;7211
	rst 38h			;7212
	rst 38h			;7213
	rst 38h			;7214
	rst 38h			;7215
	rst 38h			;7216
	rst 38h			;7217
	rst 38h			;7218
	rst 38h			;7219
	rst 38h			;721a
	rst 38h			;721b
	rst 38h			;721c
	rst 38h			;721d
	rst 38h			;721e
	rst 38h			;721f
	rst 38h			;7220
	rst 38h			;7221
	rst 38h			;7222
	rst 38h			;7223
	rst 38h			;7224
	rst 38h			;7225
	rst 38h			;7226
	rst 38h			;7227
	rst 38h			;7228
	rst 38h			;7229
	rst 38h			;722a
	rst 38h			;722b
	rst 38h			;722c
	rst 38h			;722d
	rst 38h			;722e
	rst 38h			;722f
	rst 38h			;7230
	rst 38h			;7231
	rst 38h			;7232
	rst 38h			;7233
	rst 38h			;7234
	rst 38h			;7235
	rst 38h			;7236
	rst 38h			;7237
	rst 38h			;7238
	rst 38h			;7239
	rst 38h			;723a
	rst 38h			;723b
	rst 38h			;723c
	rst 38h			;723d
	rst 38h			;723e
	rst 38h			;723f
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
