; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank17.asm /tmp/smanbow2_bank_17.bin

	org 04000h

	ld d,e			;4000
	ld b,l			;4001
	ld b,l			;4002
	inc sp			;4003
	ld b,l			;4004
	ld b,h			;4005
	ld c,c			;4006
	ld d,h			;4007
	rst 38h			;4008
	inc bc			;4009
	ld (hl),018h		;400a
	ld hl,00000h		;400c
	nop			;400f
	nop			;4010
	nop			;4011
	ld a,(bc)		;4012
	nop			;4013
	add hl,de		;4014
	nop			;4015
	daa			;4016
	nop			;4017
	ld (hl),000h		;4018
	ld b,a			;401a
	nop			;401b
	ld d,l			;401c
	nop			;401d
	ld h,(hl)		;401e
	nop			;401f
	ld (hl),h		;4020
	nop			;4021
	add a,l			;4022
	nop			;4023
	sub (hl)		;4024
	nop			;4025
	and a			;4026
	nop			;4027
	or c			;4028
	nop			;4029
	cp (hl)			;402a
	nop			;402b
	push bc			;402c
	nop			;402d
	rst 8			;402e
	nop			;402f
	ret c			;4030
	nop			;4031
	and 000h		;4032
	ret p			;4034
	nop			;4035
	ret m			;4036
	nop			;4037
	add hl,bc		;4038
	ld bc,00117h		;4039
	jr nz,l403fh		;403c
	cpl			;403e
l403fh:
	ld bc,0013eh		;403f
sub_4042h:
	ld b,h			;4042
	ld bc,0014ch		;4043
	ld d,e			;4046
	ld bc,0015bh		;4047
	ld e,(hl)		;404a
	ld bc,00164h		;404b
	ld (hl),c		;404e
	ld bc,00153h		;404f
	ld d,e			;4052
	ld bc,0ffffh		;4053
	rst 38h			;4056
	rst 38h			;4057
	rst 38h			;4058
	rst 38h			;4059
	rst 38h			;405a
	rst 38h			;405b
	rst 38h			;405c
	rst 38h			;405d
	rst 38h			;405e
l405fh:
	rst 38h			;405f
	rst 38h			;4060
	rst 38h			;4061
	rst 38h			;4062
	rst 38h			;4063
	rst 38h			;4064
l4065h:
	rst 38h			;4065
l4066h:
	rst 38h			;4066
	rst 38h			;4067
	rst 38h			;4068
	rst 38h			;4069
l406ah:
	rst 38h			;406a
	rst 38h			;406b
	rst 38h			;406c
	rst 38h			;406d
l406eh:
	rst 38h			;406e
	rst 38h			;406f
	rst 38h			;4070
	rst 38h			;4071
	rst 38h			;4072
	rst 38h			;4073
	rst 38h			;4074
	rst 38h			;4075
	rst 38h			;4076
l4077h:
	rst 38h			;4077
	rst 38h			;4078
	rst 38h			;4079
	rst 38h			;407a
	rst 38h			;407b
l407ch:
	rst 38h			;407c
	rst 38h			;407d
	rst 38h			;407e
	rst 38h			;407f
	rst 38h			;4080
	rst 38h			;4081
	rst 38h			;4082
	rst 38h			;4083
	rst 38h			;4084
	rst 38h			;4085
	rst 38h			;4086
	rst 38h			;4087
	rst 38h			;4088
l4089h:
	rst 38h			;4089
	rst 38h			;408a
	rst 38h			;408b
	rst 38h			;408c
	rst 38h			;408d
	rst 38h			;408e
	rst 38h			;408f
l4090h:
	rst 38h			;4090
	rst 38h			;4091
	rst 38h			;4092
	rst 38h			;4093
	rst 38h			;4094
	rst 38h			;4095
	rst 38h			;4096
	rst 38h			;4097
	rst 38h			;4098
	rst 38h			;4099
	rst 38h			;409a
	rst 38h			;409b
	rst 38h			;409c
	rst 38h			;409d
	rst 38h			;409e
	rst 38h			;409f
	rst 38h			;40a0
	rst 38h			;40a1
	rst 38h			;40a2
	rst 38h			;40a3
	rst 38h			;40a4
l40a5h:
	rst 38h			;40a5
	rst 38h			;40a6
	rst 38h			;40a7
	rst 38h			;40a8
	rst 38h			;40a9
	rst 38h			;40aa
	rst 38h			;40ab
	rst 38h			;40ac
l40adh:
	rst 38h			;40ad
	rst 38h			;40ae
	rst 38h			;40af
	rst 38h			;40b0
	rst 38h			;40b1
	rst 38h			;40b2
	rst 38h			;40b3
l40b4h:
	rst 38h			;40b4
	rst 38h			;40b5
	rst 38h			;40b6
	rst 38h			;40b7
	rst 38h			;40b8
	rst 38h			;40b9
	rst 38h			;40ba
	rst 38h			;40bb
	rst 38h			;40bc
	rst 38h			;40bd
	rst 38h			;40be
	rst 38h			;40bf
	rst 38h			;40c0
	rst 38h			;40c1
	rst 38h			;40c2
	rst 38h			;40c3
	rst 38h			;40c4
	rst 38h			;40c5
	rst 38h			;40c6
	rst 38h			;40c7
	rst 38h			;40c8
	rst 38h			;40c9
	rst 38h			;40ca
	rst 38h			;40cb
	rst 38h			;40cc
	rst 38h			;40cd
	rst 38h			;40ce
	rst 38h			;40cf
	rst 38h			;40d0
	rst 38h			;40d1
	rst 38h			;40d2
	rst 38h			;40d3
	rst 38h			;40d4
	rst 38h			;40d5
	rst 38h			;40d6
	rst 38h			;40d7
	rst 38h			;40d8
	rst 38h			;40d9
	rst 38h			;40da
	rst 38h			;40db
	rst 38h			;40dc
	rst 38h			;40dd
	rst 38h			;40de
	rst 38h			;40df
	rst 38h			;40e0
	rst 38h			;40e1
	rst 38h			;40e2
	rst 38h			;40e3
	rst 38h			;40e4
	rst 38h			;40e5
l40e6h:
	rst 38h			;40e6
	rst 38h			;40e7
	rst 38h			;40e8
	rst 38h			;40e9
l40eah:
	rst 38h			;40ea
	rst 38h			;40eb
l40ech:
	rst 38h			;40ec
	rst 38h			;40ed
	rst 38h			;40ee
	rst 38h			;40ef
	rst 38h			;40f0
	rst 38h			;40f1
l40f2h:
	rst 38h			;40f2
	rst 38h			;40f3
	rst 38h			;40f4
l40f5h:
	rst 38h			;40f5
	rst 38h			;40f6
	rst 38h			;40f7
	rst 38h			;40f8
	rst 38h			;40f9
	rst 38h			;40fa
	rst 38h			;40fb
	rst 38h			;40fc
	rst 38h			;40fd
	rst 38h			;40fe
	rst 38h			;40ff
	rst 38h			;4100
	rst 38h			;4101
	rst 38h			;4102
	rst 38h			;4103
	rst 38h			;4104
	rst 38h			;4105
	rst 38h			;4106
	rst 38h			;4107
	rst 38h			;4108
	rst 38h			;4109
	rst 38h			;410a
	rst 38h			;410b
	rst 38h			;410c
	rst 38h			;410d
	rst 38h			;410e
	rst 38h			;410f
	rst 38h			;4110
	rst 38h			;4111
	rst 38h			;4112
	rst 38h			;4113
	rst 38h			;4114
l4115h:
	rst 38h			;4115
sub_4116h:
	rst 38h			;4116
	rst 38h			;4117
	rst 38h			;4118
	rst 38h			;4119
	rst 38h			;411a
	rst 38h			;411b
	rst 38h			;411c
	rst 38h			;411d
	rst 38h			;411e
	rst 38h			;411f
	rst 38h			;4120
	rst 38h			;4121
	rst 38h			;4122
	rst 38h			;4123
	rst 38h			;4124
	rst 38h			;4125
	rst 38h			;4126
	rst 38h			;4127
	rst 38h			;4128
sub_4129h:
	rst 38h			;4129
	rst 38h			;412a
	rst 38h			;412b
	rst 38h			;412c
l412dh:
	rst 38h			;412d
	rst 38h			;412e
	rst 38h			;412f
	rst 38h			;4130
	rst 38h			;4131
	rst 38h			;4132
	rst 38h			;4133
	rst 38h			;4134
	rst 38h			;4135
	rst 38h			;4136
	rst 38h			;4137
	rst 38h			;4138
	rst 38h			;4139
	rst 38h			;413a
	rst 38h			;413b
sub_413ch:
	rst 38h			;413c
	rst 38h			;413d
	rst 38h			;413e
	rst 38h			;413f
	rst 38h			;4140
	rst 38h			;4141
	rst 38h			;4142
	rst 38h			;4143
	rst 38h			;4144
	rst 38h			;4145
	rst 38h			;4146
	rst 38h			;4147
	rst 38h			;4148
	rst 38h			;4149
	rst 38h			;414a
	rst 38h			;414b
	rst 38h			;414c
l414dh:
	rst 38h			;414d
	rst 38h			;414e
	rst 38h			;414f
	rst 38h			;4150
	rst 38h			;4151
	rst 38h			;4152
	rst 38h			;4153
	rst 38h			;4154
	rst 38h			;4155
	rst 38h			;4156
	rst 38h			;4157
	rst 38h			;4158
	rst 38h			;4159
	rst 38h			;415a
l415bh:
	rst 38h			;415b
	rst 38h			;415c
	rst 38h			;415d
	rst 38h			;415e
	rst 38h			;415f
	rst 38h			;4160
	rst 38h			;4161
	rst 38h			;4162
	rst 38h			;4163
l4164h:
	rst 38h			;4164
	rst 38h			;4165
	rst 38h			;4166
	rst 38h			;4167
	rst 38h			;4168
	rst 38h			;4169
	rst 38h			;416a
	rst 38h			;416b
	rst 38h			;416c
	rst 38h			;416d
	rst 38h			;416e
	rst 38h			;416f
	rst 38h			;4170
	rst 38h			;4171
	rst 38h			;4172
	rst 38h			;4173
	rst 38h			;4174
	rst 38h			;4175
	rst 38h			;4176
	rst 38h			;4177
	rst 38h			;4178
	rst 38h			;4179
	rst 38h			;417a
	rst 38h			;417b
	rst 38h			;417c
	rst 38h			;417d
	rst 38h			;417e
	rst 38h			;417f
	rst 38h			;4180
	rst 38h			;4181
	rst 38h			;4182
	rst 38h			;4183
	rst 38h			;4184
	rst 38h			;4185
l4186h:
	rst 38h			;4186
	rst 38h			;4187
	rst 38h			;4188
	rst 38h			;4189
	rst 38h			;418a
	rst 38h			;418b
	rst 38h			;418c
	rst 38h			;418d
	rst 38h			;418e
	rst 38h			;418f
	rst 38h			;4190
	rst 38h			;4191
	rst 38h			;4192
	rst 38h			;4193
	rst 38h			;4194
	rst 38h			;4195
	rst 38h			;4196
	rst 38h			;4197
	rst 38h			;4198
	rst 38h			;4199
	rst 38h			;419a
	rst 38h			;419b
	rst 38h			;419c
	rst 38h			;419d
	rst 38h			;419e
	rst 38h			;419f
	rst 38h			;41a0
	rst 38h			;41a1
	rst 38h			;41a2
	rst 38h			;41a3
	rst 38h			;41a4
	rst 38h			;41a5
	rst 38h			;41a6
	rst 38h			;41a7
	rst 38h			;41a8
	rst 38h			;41a9
	rst 38h			;41aa
	rst 38h			;41ab
	rst 38h			;41ac
	rst 38h			;41ad
	rst 38h			;41ae
	rst 38h			;41af
	rst 38h			;41b0
	rst 38h			;41b1
	rst 38h			;41b2
	rst 38h			;41b3
	rst 38h			;41b4
	rst 38h			;41b5
	rst 38h			;41b6
	rst 38h			;41b7
	rst 38h			;41b8
	rst 38h			;41b9
	rst 38h			;41ba
	rst 38h			;41bb
	rst 38h			;41bc
	rst 38h			;41bd
	rst 38h			;41be
	rst 38h			;41bf
	rst 38h			;41c0
	rst 38h			;41c1
	rst 38h			;41c2
	rst 38h			;41c3
	rst 38h			;41c4
	rst 38h			;41c5
	rst 38h			;41c6
	rst 38h			;41c7
	rst 38h			;41c8
	rst 38h			;41c9
	rst 38h			;41ca
	rst 38h			;41cb
	rst 38h			;41cc
	rst 38h			;41cd
	rst 38h			;41ce
	rst 38h			;41cf
	rst 38h			;41d0
	rst 38h			;41d1
	rst 38h			;41d2
	rst 38h			;41d3
	rst 38h			;41d4
	rst 38h			;41d5
	rst 38h			;41d6
	rst 38h			;41d7
	rst 38h			;41d8
	rst 38h			;41d9
	rst 38h			;41da
	rst 38h			;41db
	rst 38h			;41dc
	rst 38h			;41dd
	rst 38h			;41de
	rst 38h			;41df
	rst 38h			;41e0
	rst 38h			;41e1
	rst 38h			;41e2
	rst 38h			;41e3
	rst 38h			;41e4
	rst 38h			;41e5
	rst 38h			;41e6
	rst 38h			;41e7
	rst 38h			;41e8
	rst 38h			;41e9
	rst 38h			;41ea
	rst 38h			;41eb
	rst 38h			;41ec
	rst 38h			;41ed
	rst 38h			;41ee
	rst 38h			;41ef
	rst 38h			;41f0
	rst 38h			;41f1
	rst 38h			;41f2
	rst 38h			;41f3
	rst 38h			;41f4
	rst 38h			;41f5
	rst 38h			;41f6
	rst 38h			;41f7
	rst 38h			;41f8
	rst 38h			;41f9
	rst 38h			;41fa
	rst 38h			;41fb
	rst 38h			;41fc
	rst 38h			;41fd
	rst 38h			;41fe
	rst 38h			;41ff
	rst 38h			;4200
	rst 38h			;4201
	rst 38h			;4202
l4203h:
	rst 38h			;4203
	rst 38h			;4204
	rst 38h			;4205
	rst 38h			;4206
	rst 38h			;4207
	rst 38h			;4208
	rst 38h			;4209
	rst 38h			;420a
	rst 38h			;420b
	rst 38h			;420c
	rst 38h			;420d
	rst 38h			;420e
	rst 38h			;420f
l4210h:
	ld b,b			;4210
	nop			;4211
	nop			;4212
	nop			;4213
	nop			;4214
	sub b			;4215
	nop			;4216
	dec b			;4217
	cp e			;4218
	nop			;4219
	nop			;421a
	dec c			;421b
	nop			;421c
	nop			;421d
	nop			;421e
	inc h			;421f
	nop			;4220
	nop			;4221
	nop			;4222
	nop			;4223
	ld h,b			;4224
	nop			;4225
	dec b			;4226
	cp e			;4227
	nop			;4228
	nop			;4229
	ld b,d			;422a
	nop			;422b
	nop			;422c
	nop			;422d
	nop			;422e
	nop			;422f
	nop			;4230
	nop			;4231
	nop			;4232
	ld a,c			;4233
	nop			;4234
	dec b			;4235
	dec sp			;4236
	nop			;4237
	nop			;4238
	ld b,c			;4239
	nop			;423a
	nop			;423b
	nop			;423c
	nop			;423d
	nop			;423e
	nop			;423f
	nop			;4240
	nop			;4241
	adc a,d			;4242
	nop			;4243
	dec b			;4244
	dec sp			;4245
	nop			;4246
	nop			;4247
	add a,d			;4248
	nop			;4249
	nop			;424a
	nop			;424b
	nop			;424c
	nop			;424d
	nop			;424e
	nop			;424f
	nop			;4250
	sub h			;4251
	nop			;4252
	dec b			;4253
	dec sp			;4254
	nop			;4255
	nop			;4256
	add a,c			;4257
	nop			;4258
	nop			;4259
	nop			;425a
	nop			;425b
	nop			;425c
	nop			;425d
	nop			;425e
	nop			;425f
	and b			;4260
	nop			;4261
	dec b			;4262
	dec sp			;4263
	nop			;4264
	nop			;4265
	ld b,e			;4266
	nop			;4267
	nop			;4268
	nop			;4269
	nop			;426a
	nop			;426b
	nop			;426c
	nop			;426d
	nop			;426e
	or b			;426f
	nop			;4270
	dec b			;4271
	dec sp			;4272
	nop			;4273
	nop			;4274
	add a,c			;4275
	nop			;4276
	nop			;4277
	nop			;4278
	nop			;4279
	nop			;427a
	nop			;427b
	nop			;427c
	nop			;427d
	ret nz			;427e
	nop			;427f
	dec b			;4280
	dec sp			;4281
	nop			;4282
	nop			;4283
	ld b,c			;4284
	nop			;4285
	nop			;4286
	nop			;4287
	jr nc,l428ah		;4288
l428ah:
	nop			;428a
	nop			;428b
	nop			;428c
	nop			;428d
	nop			;428e
	nop			;428f
	ccf			;4290
	nop			;4291
	nop			;4292
	nop			;4293
	nop			;4294
	nop			;4295
	nop			;4296
	ret p			;4297
	nop			;4298
	nop			;4299
	nop			;429a
	nop			;429b
	nop			;429c
	nop			;429d
	nop			;429e
	ccf			;429f
	nop			;42a0
	nop			;42a1
	nop			;42a2
	nop			;42a3
	nop			;42a4
	nop			;42a5
	ld b,b			;42a6
	nop			;42a7
	nop			;42a8
	nop			;42a9
	nop			;42aa
	nop			;42ab
	nop			;42ac
	dec b			;42ad
	sbc a,a			;42ae
	nop			;42af
	nop			;42b0
l42b1h:
	dec b			;42b1
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
	dec b			;42bc
	rra			;42bd
	nop			;42be
	nop			;42bf
	rlca			;42c0
	nop			;42c1
	nop			;42c2
	nop			;42c3
	nop			;42c4
	nop			;42c5
	nop			;42c6
	nop			;42c7
	nop			;42c8
	nop			;42c9
	nop			;42ca
	dec b			;42cb
	rra			;42cc
	nop			;42cd
	nop			;42ce
l42cfh:
	ex af,af'		;42cf
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
	dec b			;42da
	rra			;42db
	nop			;42dc
	nop			;42dd
	ld a,(bc)		;42de
	nop			;42df
	nop			;42e0
	nop			;42e1
	nop			;42e2
	nop			;42e3
	nop			;42e4
	nop			;42e5
	nop			;42e6
	ret p			;42e7
	nop			;42e8
	nop			;42e9
	dec sp			;42ea
	nop			;42eb
	nop			;42ec
	ld c,000h		;42ed
	nop			;42ef
	nop			;42f0
	ld (00000h),hl		;42f1
	nop			;42f4
	nop			;42f5
	nop			;42f6
	ld bc,03b00h		;42f7
	nop			;42fa
	nop			;42fb
	ld b,c			;42fc
	nop			;42fd
	nop			;42fe
	nop			;42ff
	nop			;4300
	nop			;4301
	nop			;4302
	nop			;4303
	nop			;4304
	jr nz,l4308h		;4305
	nop			;4307
l4308h:
	dec sp			;4308
	nop			;4309
	nop			;430a
	ld b,c			;430b
	nop			;430c
	nop			;430d
	nop			;430e
	nop			;430f
	nop			;4310
	nop			;4311
	nop			;4312
	nop			;4313
	djnz l4317h		;4314
	nop			;4316
l4317h:
	dec sp			;4317
	nop			;4318
	nop			;4319
	add a,c			;431a
	nop			;431b
	nop			;431c
	nop			;431d
	nop			;431e
	nop			;431f
	nop			;4320
	nop			;4321
	nop			;4322
	ret p			;4323
	nop			;4324
	nop			;4325
	dec sp			;4326
	nop			;4327
	nop			;4328
	add a,c			;4329
	nop			;432a
	nop			;432b
	nop			;432c
	nop			;432d
	nop			;432e
	nop			;432f
	nop			;4330
	nop			;4331
	jr nz,l4335h		;4332
	nop			;4334
l4335h:
	dec sp			;4335
	nop			;4336
	nop			;4337
	ld b,c			;4338
	nop			;4339
	nop			;433a
	nop			;433b
	nop			;433c
	nop			;433d
	nop			;433e
	nop			;433f
	nop			;4340
	ld d,b			;4341
	ld bc,03b00h		;4342
	nop			;4345
	nop			;4346
	ld b,c			;4347
	nop			;4348
	nop			;4349
	nop			;434a
	nop			;434b
	nop			;434c
	nop			;434d
	nop			;434e
	nop			;434f
	add a,b			;4350
	ld bc,03b00h		;4351
	nop			;4354
	nop			;4355
	ld b,c			;4356
	nop			;4357
	nop			;4358
	nop			;4359
	jr nc,l435ch		;435a
l435ch:
	nop			;435c
	nop			;435d
	nop			;435e
	ld h,b			;435f
	inc bc			;4360
	nop			;4361
	dec sp			;4362
	nop			;4363
	nop			;4364
	ld b,e			;4365
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
	ccf			;4371
	nop			;4372
	nop			;4373
	nop			;4374
	nop			;4375
	nop			;4376
	nop			;4377
	ret p			;4378
	nop			;4379
	nop			;437a
	nop			;437b
	nop			;437c
	nop			;437d
	nop			;437e
	nop			;437f
	ccf			;4380
	nop			;4381
	nop			;4382
	nop			;4383
	nop			;4384
	nop			;4385
	nop			;4386
	ld b,b			;4387
	nop			;4388
	nop			;4389
	nop			;438a
	nop			;438b
	ld b,b			;438c
	ld (bc),a		;438d
	dec b			;438e
	dec de			;438f
	nop			;4390
	nop			;4391
	add hl,bc		;4392
	nop			;4393
	nop			;4394
	nop			;4395
	inc hl			;4396
	nop			;4397
	nop			;4398
	nop			;4399
	nop			;439a
	rst 30h			;439b
	add a,b			;439c
	dec b			;439d
	dec sp			;439e
	nop			;439f
	nop			;43a0
	ld c,000h		;43a1
	nop			;43a3
	nop			;43a4
	nop			;43a5
	nop			;43a6
	nop			;43a7
	nop			;43a8
	nop			;43a9
	nop			;43aa
	ld b,d			;43ab
	dec b			;43ac
	dec de			;43ad
	nop			;43ae
	nop			;43af
	ld b,d			;43b0
l43b1h:
	nop			;43b1
	nop			;43b2
l43b3h:
	nop			;43b3
	nop			;43b4
	nop			;43b5
	nop			;43b6
	nop			;43b7
	nop			;43b8
	ret nc			;43b9
	add a,c			;43ba
	dec b			;43bb
	dec de			;43bc
	nop			;43bd
	nop			;43be
	ld b,e			;43bf
	nop			;43c0
	nop			;43c1
	nop			;43c2
	nop			;43c3
	nop			;43c4
	nop			;43c5
	nop			;43c6
	nop			;43c7
	ld h,b			;43c8
	ld b,c			;43c9
	dec b			;43ca
	cp e			;43cb
	nop			;43cc
	nop			;43cd
	add a,e			;43ce
	nop			;43cf
	nop			;43d0
	nop			;43d1
	nop			;43d2
	nop			;43d3
	nop			;43d4
	nop			;43d5
	nop			;43d6
	sub b			;43d7
	add a,b			;43d8
	dec b			;43d9
	sbc a,e			;43da
	nop			;43db
	nop			;43dc
	ld b,l			;43dd
	nop			;43de
	nop			;43df
	nop			;43e0
	jr nc,l43e3h		;43e1
l43e3h:
	nop			;43e3
	nop			;43e4
	nop			;43e5
	or b			;43e6
	ld b,b			;43e7
	nop			;43e8
	cp e			;43e9
	nop			;43ea
	nop			;43eb
	add a,l			;43ec
	nop			;43ed
	nop			;43ee
l43efh:
	nop			;43ef
	ld h,000h		;43f0
	nop			;43f2
	nop			;43f3
	nop			;43f4
	nop			;43f5
	add a,d			;43f6
	dec b			;43f7
	cp e			;43f8
	nop			;43f9
	nop			;43fa
	add a,e			;43fb
	nop			;43fc
	nop			;43fd
	nop			;43fe
	nop			;43ff
	nop			;4400
	nop			;4401
	nop			;4402
	nop			;4403
	nop			;4404
	ld b,d			;4405
	dec b			;4406
	sbc a,e			;4407
	nop			;4408
	nop			;4409
	ld b,h			;440a
	nop			;440b
	nop			;440c
	nop			;440d
	nop			;440e
	nop			;440f
	nop			;4410
	nop			;4411
	nop			;4412
	ret nc			;4413
	add a,c			;4414
	dec b			;4415
	sbc a,e			;4416
	nop			;4417
	nop			;4418
	ld b,b			;4419
	nop			;441a
	nop			;441b
	nop			;441c
	nop			;441d
	nop			;441e
	nop			;441f
	nop			;4420
	nop			;4421
	or b			;4422
	ld b,c			;4423
	dec b			;4424
	dec sp			;4425
	nop			;4426
	nop			;4427
	add a,e			;4428
	nop			;4429
	nop			;442a
	nop			;442b
	nop			;442c
	nop			;442d
	nop			;442e
	nop			;442f
	nop			;4430
	jr nc,l43b3h		;4431
	dec b			;4433
	dec de			;4434
	nop			;4435
	nop			;4436
l4437h:
	ld b,h			;4437
	nop			;4438
	nop			;4439
	nop			;443a
	jr nc,l443dh		;443b
l443dh:
	nop			;443d
	nop			;443e
	nop			;443f
	nop			;4440
	nop			;4441
	nop			;4442
	ccf			;4443
	nop			;4444
	nop			;4445
	nop			;4446
	nop			;4447
	nop			;4448
	nop			;4449
	ret p			;444a
	nop			;444b
	nop			;444c
	nop			;444d
	nop			;444e
	nop			;444f
	nop			;4450
	nop			;4451
	ccf			;4452
	nop			;4453
	nop			;4454
	nop			;4455
	nop			;4456
	nop			;4457
	nop			;4458
	ld b,b			;4459
	sub b			;445a
	nop			;445b
	ld b,b			;445c
	ld bc,00130h		;445d
	dec b			;4460
	or b			;4461
	ld a,(bc)		;4462
	dec c			;4463
	inc c			;4464
	nop			;4465
	nop			;4466
	nop			;4467
	nop			;4468
	sub b			;4469
	ld b,b			;446a
	sub b			;446b
	ld b,b			;446c
	and d			;446d
	nop			;446e
	dec b			;446f
	or b			;4470
	ld b,b			;4471
	ld b,b			;4472
	ld b,b			;4473
	nop			;4474
	nop			;4475
	nop			;4476
	inc h			;4477
	ret nz			;4478
	ld bc,00140h		;4479
	ld (00501h),a		;447c
	or b			;447f
	ld b,b			;4480
	ld b,b			;4481
	ld b,b			;4482
	nop			;4483
	nop			;4484
	nop			;4485
	nop			;4486
	sub b			;4487
	ld b,b			;4488
	sub b			;4489
	ld b,b			;448a
	and d			;448b
	nop			;448c
	dec b			;448d
	or b			;448e
	ld b,b			;448f
	ld b,b			;4490
	ld b,b			;4491
	nop			;4492
	nop			;4493
	nop			;4494
	nop			;4495
	sub b			;4496
	add a,b			;4497
	sub b			;4498
	add a,b			;4499
	ld (00501h),a		;449a
	or b			;449d
	ld b,b			;449e
l449fh:
	ld b,b			;449f
	ld b,b			;44a0
	nop			;44a1
	nop			;44a2
	nop			;44a3
	nop			;44a4
	sub b			;44a5
	ld b,b			;44a6
	sub b			;44a7
	ld b,b			;44a8
	and d			;44a9
	nop			;44aa
	dec b			;44ab
	or b			;44ac
	ld b,b			;44ad
	ld b,b			;44ae
	ld b,b			;44af
	nop			;44b0
	nop			;44b1
	nop			;44b2
	nop			;44b3
	sub b			;44b4
	add a,b			;44b5
	sub b			;44b6
	add a,b			;44b7
	ld (00501h),a		;44b8
	or b			;44bb
sub_44bch:
	ld b,b			;44bc
	ld b,b			;44bd
	ld b,b			;44be
	nop			;44bf
	nop			;44c0
	nop			;44c1
	nop			;44c2
	nop			;44c3
	ld b,b			;44c4
	nop			;44c5
	ld b,b			;44c6
	ld (00501h),a		;44c7
	or b			;44ca
	ld b,b			;44cb
	ld b,b			;44cc
	ld b,b			;44cd
	nop			;44ce
	nop			;44cf
	nop			;44d0
	nop			;44d1
	sub b			;44d2
	ld b,b			;44d3
	sub b			;44d4
	ld b,b			;44d5
	and d			;44d6
	nop			;44d7
	dec b			;44d8
	or b			;44d9
	ld b,c			;44da
	ld b,c			;44db
	ld b,c			;44dc
	nop			;44dd
	nop			;44de
	nop			;44df
	nop			;44e0
	sub b			;44e1
	add a,b			;44e2
	sub b			;44e3
	add a,b			;44e4
	ld (00501h),a		;44e5
	or b			;44e8
	ld b,b			;44e9
	ld b,b			;44ea
	ld b,b			;44eb
	nop			;44ec
	nop			;44ed
	nop			;44ee
	nop			;44ef
	sub b			;44f0
	ld b,b			;44f1
	sub b			;44f2
	ld b,b			;44f3
l44f4h:
	and d			;44f4
	nop			;44f5
	dec b			;44f6
	or b			;44f7
	ld b,b			;44f8
	ld b,b			;44f9
	ld b,b			;44fa
	nop			;44fb
	nop			;44fc
	nop			;44fd
	nop			;44fe
	sub b			;44ff
	add a,b			;4500
	sub b			;4501
	add a,b			;4502
	ld (00501h),a		;4503
	or b			;4506
	ld b,b			;4507
	ld b,b			;4508
	ld b,b			;4509
	nop			;450a
	nop			;450b
	nop			;450c
	jr nc,l449fh		;450d
	ld b,b			;450f
	sub b			;4510
	ld b,b			;4511
l4512h:
	and d			;4512
	nop			;4513
	nop			;4514
	cp b			;4515
	ld b,b			;4516
	ld b,b			;4517
	ld b,b			;4518
	nop			;4519
	nop			;451a
	nop			;451b
	nop			;451c
	nop			;451d
	nop			;451e
	nop			;451f
	nop			;4520
	nop			;4521
	nop			;4522
	nop			;4523
	cp a			;4524
	nop			;4525
	nop			;4526
	nop			;4527
	nop			;4528
	nop			;4529
	nop			;452a
	ret p			;452b
	nop			;452c
	nop			;452d
	nop			;452e
	nop			;452f
	nop			;4530
	nop			;4531
	nop			;4532
	cp a			;4533
	nop			;4534
	nop			;4535
	nop			;4536
	nop			;4537
	nop			;4538
	nop			;4539
	ld b,b			;453a
	nop			;453b
	nop			;453c
	nop			;453d
	nop			;453e
	nop			;453f
	inc bc			;4540
	nop			;4541
	dec sp			;4542
	nop			;4543
	nop			;4544
	rrca			;4545
	nop			;4546
	nop			;4547
	nop			;4548
	nop			;4549
	nop			;454a
	nop			;454b
	nop			;454c
	nop			;454d
	nop			;454e
	inc b			;454f
	dec b			;4550
	dec sp			;4551
	nop			;4552
	nop			;4553
	rrca			;4554
	nop			;4555
	nop			;4556
	nop			;4557
	nop			;4558
	nop			;4559
	nop			;455a
	nop			;455b
	nop			;455c
	jr nz,l455fh		;455d
l455fh:
	dec b			;455f
	dec de			;4560
	nop			;4561
	nop			;4562
	inc c			;4563
	nop			;4564
	nop			;4565
	nop			;4566
	nop			;4567
	nop			;4568
	nop			;4569
	nop			;456a
	nop			;456b
	ld e,000h		;456c
	dec b			;456e
	dec de			;456f
	nop			;4570
	nop			;4571
	inc c			;4572
	nop			;4573
	nop			;4574
	nop			;4575
	nop			;4576
	nop			;4577
	nop			;4578
	nop			;4579
	nop			;457a
	ld d,b			;457b
	ld bc,0bb05h		;457c
	nop			;457f
	nop			;4580
	rrca			;4581
	nop			;4582
	nop			;4583
	nop			;4584
	nop			;4585
	nop			;4586
	nop			;4587
	nop			;4588
	nop			;4589
	nop			;458a
	ld (bc),a		;458b
	dec b			;458c
	cp e			;458d
	nop			;458e
	nop			;458f
	rrca			;4590
	nop			;4591
	nop			;4592
	nop			;4593
	nop			;4594
	nop			;4595
	nop			;4596
	nop			;4597
	nop			;4598
	nop			;4599
	inc bc			;459a
	nop			;459b
	cp e			;459c
	nop			;459d
	nop			;459e
	rrca			;459f
	nop			;45a0
	nop			;45a1
	nop			;45a2
	nop			;45a3
	nop			;45a4
	nop			;45a5
	nop			;45a6
	nop			;45a7
	ld d,b			;45a8
	inc b			;45a9
	nop			;45aa
	cp e			;45ab
	nop			;45ac
	nop			;45ad
	rrca			;45ae
	nop			;45af
	nop			;45b0
	nop			;45b1
	ld (00000h),hl		;45b2
	nop			;45b5
	nop			;45b6
	nop			;45b7
	ld b,005h		;45b8
	cp e			;45ba
	nop			;45bb
	nop			;45bc
	ld b,c			;45bd
	nop			;45be
	nop			;45bf
	nop			;45c0
	nop			;45c1
	nop			;45c2
	nop			;45c3
	nop			;45c4
	nop			;45c5
	nop			;45c6
	ld a,(bc)		;45c7
	dec b			;45c8
	cp e			;45c9
	nop			;45ca
	nop			;45cb
	ld b,c			;45cc
	nop			;45cd
	nop			;45ce
	nop			;45cf
	nop			;45d0
	nop			;45d1
	nop			;45d2
	nop			;45d3
	nop			;45d4
	nop			;45d5
	ld (bc),a		;45d6
	dec b			;45d7
	cp e			;45d8
	nop			;45d9
	nop			;45da
	add a,c			;45db
	nop			;45dc
	nop			;45dd
	nop			;45de
	nop			;45df
	nop			;45e0
	nop			;45e1
	nop			;45e2
	nop			;45e3
	ld d,b			;45e4
	ld bc,0bb00h		;45e5
	nop			;45e8
	nop			;45e9
	add a,c			;45ea
	nop			;45eb
	nop			;45ec
	nop			;45ed
	nop			;45ee
	nop			;45ef
	nop			;45f0
	nop			;45f1
	nop			;45f2
	nop			;45f3
	ld (bc),a		;45f4
	dec b			;45f5
	cp e			;45f6
	nop			;45f7
	nop			;45f8
	ld b,c			;45f9
	nop			;45fa
	nop			;45fb
	nop			;45fc
	nop			;45fd
	nop			;45fe
	nop			;45ff
	nop			;4600
	nop			;4601
	nop			;4602
	inc bc			;4603
	dec b			;4604
	cp e			;4605
	nop			;4606
	nop			;4607
	ld b,c			;4608
	nop			;4609
	nop			;460a
	nop			;460b
	nop			;460c
	nop			;460d
	nop			;460e
	nop			;460f
	nop			;4610
	ld d,b			;4611
	inc b			;4612
	dec b			;4613
	cp e			;4614
	nop			;4615
	nop			;4616
	ld b,c			;4617
	nop			;4618
	nop			;4619
	nop			;461a
	jr nc,l461dh		;461b
l461dh:
	nop			;461d
	nop			;461e
	nop			;461f
	nop			;4620
	nop			;4621
	nop			;4622
l4623h:
	cp a			;4623
	nop			;4624
	nop			;4625
	nop			;4626
	nop			;4627
	nop			;4628
	nop			;4629
	ret p			;462a
	nop			;462b
	nop			;462c
	nop			;462d
	nop			;462e
l462fh:
	nop			;462f
	nop			;4630
	nop			;4631
	cp a			;4632
	nop			;4633
	nop			;4634
	nop			;4635
	nop			;4636
	nop			;4637
	nop			;4638
	ld b,b			;4639
	nop			;463a
	nop			;463b
	nop			;463c
	nop			;463d
	jp m,01f01h		;463e
	cp e			;4641
	nop			;4642
	nop			;4643
	dec c			;4644
	nop			;4645
	nop			;4646
	nop			;4647
	jr z,l464ah		;4648
l464ah:
	nop			;464a
	nop			;464b
	nop			;464c
	jr l468fh		;464d
	rra			;464f
	cp e			;4650
	nop			;4651
	nop			;4652
	dec c			;4653
	nop			;4654
	nop			;4655
	nop			;4656
	jr nc,l4659h		;4657
l4659h:
	nop			;4659
	nop			;465a
	nop			;465b
	jr nc,l465fh		;465c
	rra			;465e
l465fh:
	cp e			;465f
	nop			;4660
	nop			;4661
	dec c			;4662
	nop			;4663
	nop			;4664
	nop			;4665
	dec h			;4666
	nop			;4667
	nop			;4668
	nop			;4669
	nop			;466a
	djnz l46adh		;466b
	rra			;466d
	cp e			;466e
	nop			;466f
	nop			;4670
	dec c			;4671
l4672h:
	nop			;4672
	nop			;4673
	nop			;4674
	jr nc,l4677h		;4675
l4677h:
	nop			;4677
	nop			;4678
	nop			;4679
	xor d			;467a
	ld bc,0bb1fh		;467b
	nop			;467e
	nop			;467f
	dec c			;4680
	nop			;4681
	nop			;4682
	nop			;4683
	ld h,000h		;4684
	nop			;4686
	nop			;4687
	nop			;4688
	jr l46cbh		;4689
	rra			;468b
	cp e			;468c
	nop			;468d
	nop			;468e
l468fh:
	dec c			;468f
	nop			;4690
	nop			;4691
l4692h:
	nop			;4692
	jr nc,l4695h		;4693
l4695h:
	nop			;4695
	nop			;4696
	nop			;4697
	jr nz,l469bh		;4698
	rra			;469a
l469bh:
	cp e			;469b
	nop			;469c
	nop			;469d
	dec c			;469e
	nop			;469f
	nop			;46a0
	nop			;46a1
	dec h			;46a2
	nop			;46a3
	nop			;46a4
	nop			;46a5
	nop			;46a6
	jr nz,l46e9h		;46a7
	rra			;46a9
	cp e			;46aa
	nop			;46ab
	nop			;46ac
l46adh:
	dec c			;46ad
	nop			;46ae
	nop			;46af
	nop			;46b0
	jr nc,l46b3h		;46b1
l46b3h:
	nop			;46b3
	nop			;46b4
	nop			;46b5
	ret nz			;46b6
	ld bc,0bb1fh		;46b7
	nop			;46ba
	nop			;46bb
	dec c			;46bc
	nop			;46bd
	nop			;46be
	nop			;46bf
	ld h,000h		;46c0
	nop			;46c2
	nop			;46c3
	nop			;46c4
	inc d			;46c5
	ld b,b			;46c6
	rra			;46c7
	cp e			;46c8
	nop			;46c9
	nop			;46ca
l46cbh:
	ld b,c			;46cb
	nop			;46cc
	nop			;46cd
	nop			;46ce
	nop			;46cf
	nop			;46d0
	nop			;46d1
	nop			;46d2
	nop			;46d3
	djnz l4716h		;46d4
	nop			;46d6
	dec sp			;46d7
	nop			;46d8
	nop			;46d9
	ld b,b			;46da
	nop			;46db
	nop			;46dc
	nop			;46dd
	jr nc,l46e0h		;46de
l46e0h:
	nop			;46e0
	nop			;46e1
	nop			;46e2
	nop			;46e3
	nop			;46e4
	rra			;46e5
	cp a			;46e6
	nop			;46e7
	nop			;46e8
l46e9h:
	nop			;46e9
	nop			;46ea
	nop			;46eb
l46ech:
	nop			;46ec
	nop			;46ed
	nop			;46ee
	nop			;46ef
	nop			;46f0
	nop			;46f1
	nop			;46f2
	nop			;46f3
	nop			;46f4
	ccf			;46f5
	nop			;46f6
	nop			;46f7
	nop			;46f8
	nop			;46f9
	nop			;46fa
l46fbh:
	nop			;46fb
	ret p			;46fc
	nop			;46fd
	nop			;46fe
	nop			;46ff
	nop			;4700
	nop			;4701
	nop			;4702
	nop			;4703
	ccf			;4704
	nop			;4705
	nop			;4706
	nop			;4707
	nop			;4708
	nop			;4709
l470ah:
	nop			;470a
	ld b,b			;470b
	nop			;470c
	nop			;470d
	nop			;470e
	nop			;470f
	and b			;4710
	ld (bc),a		;4711
	rra			;4712
	cp e			;4713
	nop			;4714
	nop			;4715
l4716h:
	dec c			;4716
	nop			;4717
	nop			;4718
l4719h:
	nop			;4719
	ld h,000h		;471a
	nop			;471c
	nop			;471d
	nop			;471e
	jr l4761h		;471f
	rra			;4721
	cp e			;4722
	nop			;4723
	nop			;4724
	dec c			;4725
	nop			;4726
	nop			;4727
	nop			;4728
	jr nc,l472bh		;4729
l472bh:
	nop			;472b
	nop			;472c
	nop			;472d
	jr l4770h		;472e
	rra			;4730
	cp e			;4731
	nop			;4732
	nop			;4733
	dec c			;4734
	nop			;4735
	nop			;4736
l4737h:
	nop			;4737
	daa			;4738
	nop			;4739
	nop			;473a
	nop			;473b
	nop			;473c
	djnz l477fh		;473d
	rra			;473f
	cp e			;4740
	nop			;4741
l4742h:
	nop			;4742
	dec c			;4743
	nop			;4744
	nop			;4745
l4746h:
	nop			;4746
	jr nc,l4749h		;4747
l4749h:
	nop			;4749
	nop			;474a
	nop			;474b
	djnz l478eh		;474c
	rra			;474e
	cp e			;474f
	nop			;4750
	nop			;4751
	dec c			;4752
	nop			;4753
	nop			;4754
l4755h:
	nop			;4755
	nop			;4756
	nop			;4757
	nop			;4758
	nop			;4759
	nop			;475a
	ld b,b			;475b
	add a,b			;475c
	rra			;475d
	cp e			;475e
	nop			;475f
	nop			;4760
l4761h:
	dec c			;4761
	nop			;4762
	nop			;4763
l4764h:
	nop			;4764
	cpl			;4765
	nop			;4766
	nop			;4767
	nop			;4768
	nop			;4769
	jr l46ech		;476a
	rra			;476c
	cp e			;476d
	nop			;476e
	nop			;476f
l4770h:
	dec c			;4770
	nop			;4771
	nop			;4772
	nop			;4773
	jr nc,l4776h		;4774
l4776h:
	nop			;4776
	nop			;4777
sub_4778h:
	nop			;4778
	jr l46fbh		;4779
	rra			;477b
	cp e			;477c
	nop			;477d
	nop			;477e
l477fh:
	dec c			;477f
	nop			;4780
	nop			;4781
	nop			;4782
	ld hl,(00000h)		;4783
	nop			;4786
	nop			;4787
	jr nz,l470ah		;4788
	rra			;478a
	cp e			;478b
	nop			;478c
	nop			;478d
l478eh:
	dec c			;478e
	nop			;478f
	nop			;4790
	nop			;4791
	jr nc,l4794h		;4792
l4794h:
	nop			;4794
	nop			;4795
	nop			;4796
	djnz l4719h		;4797
	rra			;4799
	cp e			;479a
	nop			;479b
	nop			;479c
	inc c			;479d
	nop			;479e
	nop			;479f
	nop			;47a0
	nop			;47a1
	nop			;47a2
	nop			;47a3
	nop			;47a4
	nop			;47a5
	ld h,b			;47a6
	add a,b			;47a7
	rra			;47a8
	cp e			;47a9
	nop			;47aa
	nop			;47ab
	inc c			;47ac
	nop			;47ad
	nop			;47ae
	nop			;47af
	add hl,hl		;47b0
	nop			;47b1
	nop			;47b2
	nop			;47b3
	nop			;47b4
	djnz l4737h		;47b5
	rra			;47b7
	cp e			;47b8
	nop			;47b9
	nop			;47ba
	ld b,c			;47bb
	nop			;47bc
	nop			;47bd
	nop			;47be
	nop			;47bf
	nop			;47c0
l47c1h:
	nop			;47c1
	nop			;47c2
	nop			;47c3
	djnz l4746h		;47c4
	nop			;47c6
	dec sp			;47c7
	nop			;47c8
	nop			;47c9
	ld b,b			;47ca
l47cbh:
	nop			;47cb
	nop			;47cc
	nop			;47cd
	nop			;47ce
	nop			;47cf
	nop			;47d0
	nop			;47d1
	nop			;47d2
	djnz l4755h		;47d3
	nop			;47d5
	dec sp			;47d6
	nop			;47d7
	nop			;47d8
	ld b,b			;47d9
	nop			;47da
	nop			;47db
	nop			;47dc
	jr nc,l47dfh		;47dd
l47dfh:
	nop			;47df
	nop			;47e0
	nop			;47e1
	jr l4764h		;47e2
	rra			;47e4
	cp e			;47e5
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
	ccf			;47f4
	nop			;47f5
	nop			;47f6
	nop			;47f7
	nop			;47f8
	nop			;47f9
	nop			;47fa
	ret p			;47fb
	nop			;47fc
	nop			;47fd
	nop			;47fe
	nop			;47ff
	nop			;4800
	nop			;4801
	nop			;4802
	ccf			;4803
	nop			;4804
	nop			;4805
	nop			;4806
	nop			;4807
	nop			;4808
	nop			;4809
	ld b,b			;480a
	nop			;480b
	nop			;480c
	nop			;480d
	nop			;480e
	ld b,b			;480f
	ld (bc),a		;4810
	dec b			;4811
	dec de			;4812
	nop			;4813
	nop			;4814
	rrca			;4815
	nop			;4816
	nop			;4817
	nop			;4818
	nop			;4819
	nop			;481a
	nop			;481b
	nop			;481c
	nop			;481d
	ld h,000h		;481e
	dec b			;4820
	dec de			;4821
	nop			;4822
	nop			;4823
	inc c			;4824
	nop			;4825
	nop			;4826
	nop			;4827
	nop			;4828
	nop			;4829
	nop			;482a
	nop			;482b
	nop			;482c
	ret nz			;482d
	ld (bc),a		;482e
	dec b			;482f
	dec sp			;4830
	nop			;4831
	nop			;4832
	dec c			;4833
	nop			;4834
	nop			;4835
	nop			;4836
	nop			;4837
	nop			;4838
	nop			;4839
	nop			;483a
	nop			;483b
	nop			;483c
	rlca			;483d
	rrca			;483e
	dec sp			;483f
	nop			;4840
	nop			;4841
	add a,b			;4842
	nop			;4843
	nop			;4844
	nop			;4845
	nop			;4846
	nop			;4847
	nop			;4848
	nop			;4849
	nop			;484a
	ld d,b			;484b
	rlca			;484c
	dec b			;484d
	dec sp			;484e
	nop			;484f
	nop			;4850
	add a,b			;4851
	nop			;4852
	nop			;4853
	nop			;4854
	ld (00000h),hl		;4855
	nop			;4858
	nop			;4859
	nop			;485a
	add hl,bc		;485b
	dec b			;485c
	dec sp			;485d
	nop			;485e
	nop			;485f
	add a,b			;4860
	nop			;4861
	nop			;4862
	nop			;4863
	nop			;4864
	nop			;4865
	nop			;4866
	nop			;4867
	nop			;4868
	nop			;4869
	ld b,(hl)		;486a
	dec b			;486b
	dec sp			;486c
	nop			;486d
	nop			;486e
	add a,b			;486f
	nop			;4870
	nop			;4871
sub_4872h:
	nop			;4872
	nop			;4873
	nop			;4874
	nop			;4875
	nop			;4876
	nop			;4877
	jr nz,l48bbh		;4878
	nop			;487a
	dec sp			;487b
	nop			;487c
	nop			;487d
	add a,b			;487e
	nop			;487f
	nop			;4880
	nop			;4881
	nop			;4882
	nop			;4883
	nop			;4884
	nop			;4885
	nop			;4886
	ld h,b			;4887
	ld b,c			;4888
	nop			;4889
	dec sp			;488a
	nop			;488b
	nop			;488c
	add a,b			;488d
	nop			;488e
	nop			;488f
	nop			;4890
	nop			;4891
	nop			;4892
	nop			;4893
	nop			;4894
	nop			;4895
	nop			;4896
	add a,c			;4897
	nop			;4898
	dec sp			;4899
	nop			;489a
	nop			;489b
	ld b,c			;489c
	nop			;489d
	nop			;489e
	nop			;489f
	inc hl			;48a0
	nop			;48a1
	nop			;48a2
	nop			;48a3
	nop			;48a4
	jr nc,l48e7h		;48a5
	nop			;48a7
	dec sp			;48a8
	nop			;48a9
	nop			;48aa
	ld b,b			;48ab
	nop			;48ac
	nop			;48ad
	nop			;48ae
	jr nc,l48b1h		;48af
l48b1h:
	nop			;48b1
	nop			;48b2
	nop			;48b3
	nop			;48b4
	ld b,c			;48b5
	dec b			;48b6
	dec sp			;48b7
	nop			;48b8
	nop			;48b9
	ld b,e			;48ba
l48bbh:
	nop			;48bb
	nop			;48bc
	nop			;48bd
	jr nc,l48c0h		;48be
l48c0h:
	nop			;48c0
	nop			;48c1
	nop			;48c2
	nop			;48c3
	nop			;48c4
	nop			;48c5
	ccf			;48c6
	nop			;48c7
	nop			;48c8
sub_48c9h:
	nop			;48c9
	nop			;48ca
	nop			;48cb
	nop			;48cc
	ret p			;48cd
	nop			;48ce
	nop			;48cf
	nop			;48d0
	nop			;48d1
	nop			;48d2
	nop			;48d3
	nop			;48d4
	cp a			;48d5
	nop			;48d6
	nop			;48d7
	nop			;48d8
	nop			;48d9
	nop			;48da
	nop			;48db
	ld b,b			;48dc
	ld b,h			;48dd
	inc b			;48de
	ld h,(hl)		;48df
	ld b,0e0h		;48e0
	nop			;48e2
	ld a,(de)		;48e3
	sub b			;48e4
	rrca			;48e5
	rrca			;48e6
l48e7h:
	rrca			;48e7
	nop			;48e8
	nop			;48e9
	nop			;48ea
	ld (00333h),hl		;48eb
	ld b,h			;48ee
	inc b			;48ef
	nop			;48f0
	ld (bc),a		;48f1
	rra			;48f2
	sub b			;48f3
	ld b,b			;48f4
	rrca			;48f5
	ld b,b			;48f6
	nop			;48f7
	nop			;48f8
	nop			;48f9
	nop			;48fa
	ld (03302h),hl		;48fb
sub_48feh:
	inc bc			;48fe
	ret po			;48ff
	ld bc,0b01fh		;4900
	ld b,b			;4903
	ld c,040h		;4904
	nop			;4906
	nop			;4907
l4908h:
	nop			;4908
	jr nc,l4908h		;4909
	ld bc,00133h		;490b
	ld h,b			;490e
	ld (bc),a		;490f
	rra			;4910
	sub b			;4911
	ld b,c			;4912
	dec c			;4913
	ld b,b			;4914
	nop			;4915
	nop			;4916
	nop			;4917
	nop			;4918
	ld (hl),c		;4919
	ld (bc),a		;491a
	nop			;491b
	nop			;491c
	ret po			;491d
	ld (bc),a		;491e
	rra			;491f
	or d			;4920
	ld b,c			;4921
	nop			;4922
	ld b,b			;4923
	nop			;4924
	nop			;4925
	nop			;4926
	nop			;4927
	dec c			;4928
	inc bc			;4929
	nop			;492a
	nop			;492b
	ld h,b			;492c
	inc bc			;492d
	rra			;492e
	sbc a,d			;492f
	add a,b			;4930
	nop			;4931
	ld b,b			;4932
	nop			;4933
	nop			;4934
	nop			;4935
	nop			;4936
	ret nc			;4937
	inc bc			;4938
	nop			;4939
	nop			;493a
	ret po			;493b
	inc bc			;493c
	rra			;493d
	sbc a,d			;493e
	add a,c			;493f
	nop			;4940
	ld b,b			;4941
	nop			;4942
	nop			;4943
	nop			;4944
	nop			;4945
	call nz,00004h		;4946
	nop			;4949
	ld h,b			;494a
	ld bc,0ba1fh		;494b
	add a,c			;494e
	rrca			;494f
	ld b,b			;4950
	nop			;4951
	nop			;4952
l4953h:
	nop			;4953
l4954h:
	dec h			;4954
	nop			;4955
	ld (bc),a		;4956
	nop			;4957
	dec b			;4958
	ret po			;4959
	nop			;495a
	rra			;495b
	sbc a,b			;495c
	ld b,d			;495d
	ld b,c			;495e
	ld b,d			;495f
	nop			;4960
	nop			;4961
	nop			;4962
	nop			;4963
	nop			;4964
	nop			;4965
	ld d,l			;4966
	dec b			;4967
	ld h,b			;4968
	ld bc,0981fh		;4969
	ld b,b			;496c
	ld b,b			;496d
	ld b,b			;496e
	nop			;496f
	nop			;4970
l4971h:
	nop			;4971
	nop			;4972
	nop			;4973
	inc bc			;4974
	nop			;4975
	nop			;4976
	ret po			;4977
	ld bc,09a18h		;4978
	ld b,b			;497b
	ld b,b			;497c
	add a,c			;497d
	nop			;497e
	nop			;497f
	nop			;4980
	nop			;4981
	ld (hl),b		;4982
	ld bc,00000h		;4983
	ld h,b			;4986
	ld (bc),a		;4987
	rra			;4988
	cp d			;4989
	ld b,b			;498a
	ld b,b			;498b
	ld b,b			;498c
	nop			;498d
	nop			;498e
	nop			;498f
	nop			;4990
	sub b			;4991
	ld bc,00000h		;4992
	ret po			;4995
	ld (bc),a		;4996
	rra			;4997
	cp d			;4998
	ld b,b			;4999
	ld b,b			;499a
	ld b,c			;499b
	nop			;499c
	nop			;499d
	nop			;499e
	nop			;499f
	defb 0fdh,001h,000h ;illegal sequence	;49a0
	nop			;49a3
	ld h,b			;49a4
	inc bc			;49a5
	inc b			;49a6
	cp d			;49a7
	ld b,b			;49a8
	ld b,c			;49a9
	add a,c			;49aa
	nop			;49ab
	nop			;49ac
	nop			;49ad
	nop			;49ae
	ld (hl),c		;49af
	ld (bc),a		;49b0
	nop			;49b1
	nop			;49b2
	ret po			;49b3
	inc bc			;49b4
	djnz l4971h		;49b5
	ld b,b			;49b7
	ld b,b			;49b8
	ld b,c			;49b9
	nop			;49ba
	nop			;49bb
	nop			;49bc
	jr nc,l49bfh		;49bd
l49bfh:
	nop			;49bf
	nop			;49c0
	nop			;49c1
	nop			;49c2
	nop			;49c3
	nop			;49c4
	ccf			;49c5
	nop			;49c6
	nop			;49c7
	nop			;49c8
	nop			;49c9
	nop			;49ca
	nop			;49cb
	ret p			;49cc
	nop			;49cd
	nop			;49ce
	nop			;49cf
	nop			;49d0
	nop			;49d1
	nop			;49d2
	nop			;49d3
	ccf			;49d4
	nop			;49d5
	nop			;49d6
	nop			;49d7
	nop			;49d8
	nop			;49d9
	nop			;49da
	ld b,b			;49db
	ld d,l			;49dc
	dec b			;49dd
	ld h,(hl)		;49de
	ld b,011h		;49df
	ld bc,09017h		;49e1
	nop			;49e4
	nop			;49e5
	nop			;49e6
	nop			;49e7
	nop			;49e8
	nop			;49e9
	inc hl			;49ea
	ld b,h			;49eb
	inc b			;49ec
	ld b,h			;49ed
	inc b			;49ee
	ld (01502h),hl		;49ef
	sub b			;49f2
	add a,h			;49f3
	add a,h			;49f4
	add a,h			;49f5
	nop			;49f6
	nop			;49f7
	nop			;49f8
	nop			;49f9
	ld (03303h),a		;49fa
	inc bc			;49fd
	ld (01f02h),hl		;49fe
	or b			;4a01
	add a,b			;4a02
	add a,b			;4a03
	add a,b			;4a04
	nop			;4a05
	nop			;4a06
	nop			;4a07
	jr nc,l4a2ch		;4a08
	ld (bc),a		;4a0a
	inc sp			;4a0b
	ld bc,00333h		;4a0c
	inc de			;4a0f
	sub b			;4a10
	rrca			;4a11
	rrca			;4a12
	rrca			;4a13
	nop			;4a14
	nop			;4a15
	nop			;4a16
	nop			;4a17
	or b			;4a18
	ld (bc),a		;4a19
	nop			;4a1a
	nop			;4a1b
	inc sp			;4a1c
	inc bc			;4a1d
	rra			;4a1e
	or d			;4a1f
	ld b,b			;4a20
	nop			;4a21
	ld b,b			;4a22
	nop			;4a23
	nop			;4a24
	nop			;4a25
	nop			;4a26
	ld b,b			;4a27
	inc bc			;4a28
	nop			;4a29
	nop			;4a2a
	ld b,h			;4a2b
l4a2ch:
	inc b			;4a2c
	rla			;4a2d
	sbc a,d			;4a2e
	add a,b			;4a2f
	nop			;4a30
	ld b,b			;4a31
	nop			;4a32
	nop			;4a33
	nop			;4a34
	nop			;4a35
	ret p			;4a36
	inc bc			;4a37
	nop			;4a38
	nop			;4a39
	ld b,h			;4a3a
	inc b			;4a3b
	dec c			;4a3c
	sbc a,d			;4a3d
	add a,c			;4a3e
	nop			;4a3f
	ld b,b			;4a40
	nop			;4a41
	nop			;4a42
	nop			;4a43
	nop			;4a44
	ret po			;4a45
	inc b			;4a46
	nop			;4a47
	nop			;4a48
	ld (01f02h),hl		;4a49
	cp d			;4a4c
	add a,c			;4a4d
	rrca			;4a4e
	ld b,b			;4a4f
	nop			;4a50
	nop			;4a51
	nop			;4a52
	daa			;4a53
	nop			;4a54
	inc bc			;4a55
	nop			;4a56
	dec b			;4a57
	ld de,01f01h		;4a58
	sbc a,b			;4a5b
	ld b,d			;4a5c
	ld b,c			;4a5d
	ld b,d			;4a5e
	nop			;4a5f
	nop			;4a60
	nop			;4a61
	nop			;4a62
	ld de,l5501h		;4a63
	dec b			;4a66
	add a,b			;4a67
	ld bc,0981fh		;4a68
	ld b,b			;4a6b
	ld b,b			;4a6c
	ld b,b			;4a6d
	nop			;4a6e
	nop			;4a6f
l4a70h:
	nop			;4a70
	nop			;4a71
	ld b,h			;4a72
	inc b			;4a73
	nop			;4a74
	nop			;4a75
	ret p			;4a76
	ld bc,09a18h		;4a77
	ld b,b			;4a7a
	ld b,b			;4a7b
	add a,c			;4a7c
	nop			;4a7d
	nop			;4a7e
	nop			;4a7f
	nop			;4a80
	ld (00002h),hl		;4a81
	nop			;4a84
	add a,b			;4a85
	ld (bc),a		;4a86
	rra			;4a87
	cp d			;4a88
	ld b,b			;4a89
	ld b,b			;4a8a
	ld b,b			;4a8b
	nop			;4a8c
	nop			;4a8d
	nop			;4a8e
	nop			;4a8f
	ld b,h			;4a90
	ld (bc),a		;4a91
	nop			;4a92
	nop			;4a93
	inc sp			;4a94
	inc bc			;4a95
	rra			;4a96
	cp d			;4a97
	ld b,b			;4a98
	ld b,b			;4a99
	ld b,c			;4a9a
	nop			;4a9b
	nop			;4a9c
	nop			;4a9d
	nop			;4a9e
	or b			;4a9f
	ld (bc),a		;4aa0
	nop			;4aa1
	nop			;4aa2
	ld b,h			;4aa3
	inc b			;4aa4
	inc b			;4aa5
	cp d			;4aa6
	ld b,b			;4aa7
	ld b,c			;4aa8
	add a,c			;4aa9
	nop			;4aaa
	nop			;4aab
	nop			;4aac
	nop			;4aad
	ld (hl),c		;4aae
	ld (bc),a		;4aaf
	nop			;4ab0
	nop			;4ab1
	ret po			;4ab2
	inc bc			;4ab3
	djnz l4a70h		;4ab4
	ld b,b			;4ab6
	ld b,b			;4ab7
	ld b,c			;4ab8
	nop			;4ab9
	nop			;4aba
	nop			;4abb
	jr nc,l4abeh		;4abc
l4abeh:
	nop			;4abe
	nop			;4abf
	nop			;4ac0
	nop			;4ac1
	nop			;4ac2
	nop			;4ac3
	ccf			;4ac4
	nop			;4ac5
	nop			;4ac6
	nop			;4ac7
	nop			;4ac8
	nop			;4ac9
	nop			;4aca
	ret p			;4acb
	nop			;4acc
	nop			;4acd
	nop			;4ace
	nop			;4acf
	nop			;4ad0
	nop			;4ad1
	nop			;4ad2
	ccf			;4ad3
	nop			;4ad4
	nop			;4ad5
	nop			;4ad6
	nop			;4ad7
	nop			;4ad8
	nop			;4ad9
	ld b,b			;4ada
	nop			;4adb
	nop			;4adc
	nop			;4add
	nop			;4ade
	xor b			;4adf
	nop			;4ae0
	dec b			;4ae1
	sbc a,e			;4ae2
	nop			;4ae3
	nop			;4ae4
	dec bc			;4ae5
	nop			;4ae6
	nop			;4ae7
	nop			;4ae8
	nop			;4ae9
	nop			;4aea
	nop			;4aeb
	nop			;4aec
	nop			;4aed
	ret nc			;4aee
	nop			;4aef
	dec b			;4af0
	dec sp			;4af1
	nop			;4af2
	nop			;4af3
	inc c			;4af4
	nop			;4af5
	nop			;4af6
	nop			;4af7
	nop			;4af8
	nop			;4af9
	nop			;4afa
	nop			;4afb
	nop			;4afc
	jr nc,l4b00h		;4afd
	dec b			;4aff
l4b00h:
	dec sp			;4b00
	nop			;4b01
	nop			;4b02
	dec c			;4b03
	nop			;4b04
	nop			;4b05
	nop			;4b06
	nop			;4b07
	nop			;4b08
	nop			;4b09
	nop			;4b0a
	nop			;4b0b
	dec d			;4b0c
	ld b,b			;4b0d
	inc d			;4b0e
	cp e			;4b0f
	nop			;4b10
	nop			;4b11
	inc c			;4b12
	nop			;4b13
	nop			;4b14
	nop			;4b15
	nop			;4b16
	nop			;4b17
	nop			;4b18
	nop			;4b19
	nop			;4b1a
	inc de			;4b1b
	ld b,b			;4b1c
	inc d			;4b1d
	cp e			;4b1e
	nop			;4b1f
	nop			;4b20
	dec c			;4b21
	nop			;4b22
	nop			;4b23
	nop			;4b24
	inc hl			;4b25
	nop			;4b26
	nop			;4b27
	nop			;4b28
	nop			;4b29
	add a,b			;4b2a
	nop			;4b2b
	nop			;4b2c
	dec sp			;4b2d
	nop			;4b2e
	nop			;4b2f
	ld b,d			;4b30
	nop			;4b31
	nop			;4b32
	nop			;4b33
	nop			;4b34
	nop			;4b35
	nop			;4b36
	nop			;4b37
	nop			;4b38
	djnz l4b7bh		;4b39
	inc d			;4b3b
	cp e			;4b3c
	nop			;4b3d
	nop			;4b3e
	ld b,b			;4b3f
	nop			;4b40
	nop			;4b41
	nop			;4b42
	nop			;4b43
	nop			;4b44
	nop			;4b45
	nop			;4b46
	nop			;4b47
	dec c			;4b48
	ld b,b			;4b49
	inc d			;4b4a
	cp e			;4b4b
	nop			;4b4c
	nop			;4b4d
	ld b,b			;4b4e
	nop			;4b4f
	nop			;4b50
	nop			;4b51
	nop			;4b52
	nop			;4b53
	nop			;4b54
	nop			;4b55
	nop			;4b56
	djnz l4b99h		;4b57
	inc d			;4b59
	cp e			;4b5a
	nop			;4b5b
	nop			;4b5c
	ld b,b			;4b5d
	nop			;4b5e
	nop			;4b5f
	nop			;4b60
	nop			;4b61
	nop			;4b62
	nop			;4b63
	nop			;4b64
	nop			;4b65
	ex af,af'		;4b66
	ld b,b			;4b67
	inc d			;4b68
	cp e			;4b69
	nop			;4b6a
	nop			;4b6b
	ld b,b			;4b6c
	nop			;4b6d
	nop			;4b6e
	nop			;4b6f
	nop			;4b70
	nop			;4b71
	nop			;4b72
	nop			;4b73
	nop			;4b74
	ex af,af'		;4b75
	ld b,b			;4b76
	inc d			;4b77
	cp e			;4b78
	nop			;4b79
	nop			;4b7a
l4b7bh:
	ld b,b			;4b7b
	nop			;4b7c
	nop			;4b7d
	nop			;4b7e
	nop			;4b7f
	nop			;4b80
	nop			;4b81
	nop			;4b82
	nop			;4b83
	inc b			;4b84
	add a,b			;4b85
	inc d			;4b86
	cp e			;4b87
	nop			;4b88
	nop			;4b89
	ld b,b			;4b8a
	nop			;4b8b
	nop			;4b8c
	nop			;4b8d
	nop			;4b8e
	nop			;4b8f
	nop			;4b90
	nop			;4b91
	nop			;4b92
	dec b			;4b93
	add a,b			;4b94
	inc d			;4b95
	cp e			;4b96
	nop			;4b97
	nop			;4b98
l4b99h:
	ld b,b			;4b99
	nop			;4b9a
	nop			;4b9b
	nop			;4b9c
	nop			;4b9d
	nop			;4b9e
	nop			;4b9f
	nop			;4ba0
	nop			;4ba1
	dec c			;4ba2
	ld b,b			;4ba3
	inc d			;4ba4
	cp e			;4ba5
	nop			;4ba6
	nop			;4ba7
	ld b,c			;4ba8
	nop			;4ba9
	nop			;4baa
	nop			;4bab
	jr nc,l4baeh		;4bac
l4baeh:
	nop			;4bae
	nop			;4baf
	nop			;4bb0
	dec b			;4bb1
	ld b,b			;4bb2
	inc d			;4bb3
	cp e			;4bb4
	nop			;4bb5
	nop			;4bb6
	ld b,b			;4bb7
	nop			;4bb8
	nop			;4bb9
	nop			;4bba
	nop			;4bbb
	nop			;4bbc
	nop			;4bbd
	nop			;4bbe
	nop			;4bbf
	nop			;4bc0
	nop			;4bc1
	nop			;4bc2
	ccf			;4bc3
	nop			;4bc4
	nop			;4bc5
	nop			;4bc6
	nop			;4bc7
	nop			;4bc8
	nop			;4bc9
	ret p			;4bca
	nop			;4bcb
	nop			;4bcc
	nop			;4bcd
	nop			;4bce
	nop			;4bcf
	nop			;4bd0
	nop			;4bd1
	ccf			;4bd2
	nop			;4bd3
	nop			;4bd4
	nop			;4bd5
	nop			;4bd6
	nop			;4bd7
	nop			;4bd8
	ld b,b			;4bd9
	nop			;4bda
	nop			;4bdb
	nop			;4bdc
	nop			;4bdd
	ld (00500h),a		;4bde
	sbc a,e			;4be1
	nop			;4be2
	nop			;4be3
	inc c			;4be4
	nop			;4be5
	nop			;4be6
	nop			;4be7
	nop			;4be8
	nop			;4be9
	nop			;4bea
	nop			;4beb
	nop			;4bec
	ld hl,(00500h)		;4bed
	sbc a,e			;4bf0
	nop			;4bf1
	nop			;4bf2
	inc c			;4bf3
	nop			;4bf4
	nop			;4bf5
	nop			;4bf6
	ld (00000h),hl		;4bf7
	nop			;4bfa
	nop			;4bfb
	add hl,hl		;4bfc
	nop			;4bfd
	dec b			;4bfe
	cp e			;4bff
	nop			;4c00
	nop			;4c01
	ld b,c			;4c02
	nop			;4c03
	nop			;4c04
	nop			;4c05
	nop			;4c06
	nop			;4c07
	nop			;4c08
	nop			;4c09
	nop			;4c0a
	dec hl			;4c0b
	nop			;4c0c
	dec b			;4c0d
	cp e			;4c0e
	nop			;4c0f
	nop			;4c10
	ld b,c			;4c11
	nop			;4c12
	nop			;4c13
	nop			;4c14
	nop			;4c15
	nop			;4c16
	nop			;4c17
	nop			;4c18
	nop			;4c19
	jr z,l4c1ch		;4c1a
l4c1ch:
	inc e			;4c1c
	cp e			;4c1d
	nop			;4c1e
	nop			;4c1f
	ld b,c			;4c20
	nop			;4c21
	nop			;4c22
l4c23h:
	nop			;4c23
	jr nc,l4c26h		;4c24
l4c26h:
	nop			;4c26
	nop			;4c27
	nop			;4c28
	add hl,hl		;4c29
	nop			;4c2a
	inc e			;4c2b
	cp e			;4c2c
	nop			;4c2d
	nop			;4c2e
	ex af,af'		;4c2f
	nop			;4c30
	nop			;4c31
	nop			;4c32
	inc de			;4c33
	nop			;4c34
	nop			;4c35
	nop			;4c36
	nop			;4c37
	ld (01c00h),a		;4c38
	cp e			;4c3b
	nop			;4c3c
	nop			;4c3d
	dec b			;4c3e
	nop			;4c3f
	nop			;4c40
	nop			;4c41
	nop			;4c42
	nop			;4c43
	nop			;4c44
	nop			;4c45
	nop			;4c46
	add hl,hl		;4c47
	nop			;4c48
	nop			;4c49
	dec sp			;4c4a
	nop			;4c4b
	nop			;4c4c
	dec b			;4c4d
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
	nop			;4c58
	ccf			;4c59
	nop			;4c5a
	nop			;4c5b
	nop			;4c5c
	nop			;4c5d
	nop			;4c5e
	nop			;4c5f
	ret p			;4c60
	nop			;4c61
	nop			;4c62
	nop			;4c63
	nop			;4c64
	nop			;4c65
	nop			;4c66
	inc e			;4c67
	cp a			;4c68
	nop			;4c69
	nop			;4c6a
	nop			;4c6b
	nop			;4c6c
	nop			;4c6d
	nop			;4c6e
	ld b,b			;4c6f
	nop			;4c70
	nop			;4c71
	nop			;4c72
	nop			;4c73
	xor b			;4c74
	nop			;4c75
	inc d			;4c76
	cp e			;4c77
	nop			;4c78
	nop			;4c79
	add hl,bc		;4c7a
	nop			;4c7b
	nop			;4c7c
	nop			;4c7d
	ld h,000h		;4c7e
	nop			;4c80
	nop			;4c81
	nop			;4c82
	ld c,040h		;4c83
	inc d			;4c85
	cp e			;4c86
	nop			;4c87
	nop			;4c88
	ld b,b			;4c89
	nop			;4c8a
	nop			;4c8b
	nop			;4c8c
	jr nc,l4c8fh		;4c8d
l4c8fh:
	nop			;4c8f
	nop			;4c90
	nop			;4c91
	inc de			;4c92
	ld b,b			;4c93
	inc d			;4c94
	cp e			;4c95
	nop			;4c96
	nop			;4c97
	ld b,b			;4c98
	nop			;4c99
	nop			;4c9a
	nop			;4c9b
	nop			;4c9c
	nop			;4c9d
	nop			;4c9e
	nop			;4c9f
	nop			;4ca0
	djnz l4c23h		;4ca1
	inc d			;4ca3
	cp e			;4ca4
	nop			;4ca5
	nop			;4ca6
	add a,e			;4ca7
	nop			;4ca8
	nop			;4ca9
	nop			;4caa
	add hl,hl		;4cab
	nop			;4cac
	nop			;4cad
	nop			;4cae
	nop			;4caf
	dec b			;4cb0
	ld b,b			;4cb1
	inc d			;4cb2
	cp e			;4cb3
	nop			;4cb4
	nop			;4cb5
	ld b,b			;4cb6
	nop			;4cb7
	nop			;4cb8
	nop			;4cb9
	jr nc,l4cbch		;4cba
l4cbch:
	nop			;4cbc
	nop			;4cbd
	nop			;4cbe
	ex af,af'		;4cbf
	ld b,b			;4cc0
	inc d			;4cc1
	cp e			;4cc2
	nop			;4cc3
	nop			;4cc4
	ld b,c			;4cc5
	nop			;4cc6
	nop			;4cc7
	nop			;4cc8
	inc hl			;4cc9
	nop			;4cca
	nop			;4ccb
	nop			;4ccc
	nop			;4ccd
	dec a			;4cce
	add a,b			;4ccf
	inc d			;4cd0
	cp e			;4cd1
	nop			;4cd2
	nop			;4cd3
	ld b,c			;4cd4
	nop			;4cd5
	nop			;4cd6
	nop			;4cd7
	nop			;4cd8
	nop			;4cd9
	nop			;4cda
	nop			;4cdb
	nop			;4cdc
	inc c			;4cdd
	ld b,b			;4cde
	inc d			;4cdf
	cp e			;4ce0
	nop			;4ce1
	nop			;4ce2
	ld b,d			;4ce3
	nop			;4ce4
	nop			;4ce5
	nop			;4ce6
	dec h			;4ce7
	nop			;4ce8
	nop			;4ce9
	nop			;4cea
	nop			;4ceb
	add hl,bc		;4cec
	ld b,b			;4ced
	inc d			;4cee
	cp e			;4cef
	nop			;4cf0
	nop			;4cf1
	ld b,b			;4cf2
	nop			;4cf3
	nop			;4cf4
	nop			;4cf5
	jr nc,l4cf8h		;4cf6
l4cf8h:
	nop			;4cf8
	nop			;4cf9
	nop			;4cfa
	ld b,040h		;4cfb
	inc d			;4cfd
	cp e			;4cfe
	nop			;4cff
	nop			;4d00
	ld b,b			;4d01
	nop			;4d02
	nop			;4d03
	nop			;4d04
	jr nc,l4d07h		;4d05
l4d07h:
	nop			;4d07
	nop			;4d08
	nop			;4d09
	ld b,040h		;4d0a
	inc d			;4d0c
	cp e			;4d0d
	nop			;4d0e
	nop			;4d0f
	ld b,d			;4d10
	nop			;4d11
	nop			;4d12
	nop			;4d13
	nop			;4d14
	nop			;4d15
	nop			;4d16
	nop			;4d17
	nop			;4d18
	nop			;4d19
	nop			;4d1a
	nop			;4d1b
	ccf			;4d1c
	nop			;4d1d
	nop			;4d1e
	nop			;4d1f
	nop			;4d20
	nop			;4d21
	nop			;4d22
	ret p			;4d23
	nop			;4d24
	nop			;4d25
	nop			;4d26
	nop			;4d27
	nop			;4d28
	nop			;4d29
	nop			;4d2a
	ccf			;4d2b
	nop			;4d2c
	nop			;4d2d
	nop			;4d2e
	nop			;4d2f
	nop			;4d30
	nop			;4d31
	ld b,b			;4d32
	nop			;4d33
	nop			;4d34
	nop			;4d35
	nop			;4d36
	jr z,l4d39h		;4d37
l4d39h:
	dec b			;4d39
	sbc a,e			;4d3a
	nop			;4d3b
	nop			;4d3c
	dec c			;4d3d
	nop			;4d3e
	nop			;4d3f
	nop			;4d40
	ld hl,00000h		;4d41
	nop			;4d44
	nop			;4d45
	ld hl,(00500h)		;4d46
	sbc a,e			;4d49
	nop			;4d4a
	nop			;4d4b
l4d4ch:
	inc c			;4d4c
	nop			;4d4d
	nop			;4d4e
	nop			;4d4f
	nop			;4d50
	nop			;4d51
	nop			;4d52
	nop			;4d53
	nop			;4d54
	dec l			;4d55
	nop			;4d56
	dec b			;4d57
	cp e			;4d58
	nop			;4d59
	nop			;4d5a
	inc c			;4d5b
	nop			;4d5c
	nop			;4d5d
l4d5eh:
	nop			;4d5e
	jr nc,l4d61h		;4d5f
l4d61h:
	nop			;4d61
	nop			;4d62
	nop			;4d63
	nop			;4d64
	ld (bc),a		;4d65
	dec b			;4d66
	sbc a,e			;4d67
	nop			;4d68
	nop			;4d69
	dec c			;4d6a
	nop			;4d6b
	nop			;4d6c
l4d6dh:
	nop			;4d6d
	cpl			;4d6e
	nop			;4d6f
	nop			;4d70
	nop			;4d71
	nop			;4d72
	jr z,l4d75h		;4d73
l4d75h:
	inc d			;4d75
	cp e			;4d76
	nop			;4d77
	nop			;4d78
	ld b,c			;4d79
	nop			;4d7a
	nop			;4d7b
l4d7ch:
	nop			;4d7c
	jr nc,l4d7fh		;4d7d
l4d7fh:
	nop			;4d7f
	nop			;4d80
	nop			;4d81
	nop			;4d82
	nop			;4d83
	nop			;4d84
	ccf			;4d85
	nop			;4d86
	nop			;4d87
	ld b,b			;4d88
	nop			;4d89
	nop			;4d8a
	nop			;4d8b
	ret p			;4d8c
	nop			;4d8d
	nop			;4d8e
	nop			;4d8f
	nop			;4d90
	nop			;4d91
	nop			;4d92
	nop			;4d93
	ccf			;4d94
	nop			;4d95
	nop			;4d96
	nop			;4d97
	nop			;4d98
	nop			;4d99
	nop			;4d9a
	ld b,b			;4d9b
	nop			;4d9c
	nop			;4d9d
	nop			;4d9e
	nop			;4d9f
	and b			;4da0
	nop			;4da1
	dec b			;4da2
	cp e			;4da3
	nop			;4da4
	nop			;4da5
	ld c,000h		;4da6
	nop			;4da8
	nop			;4da9
	inc h			;4daa
	nop			;4dab
	nop			;4dac
	nop			;4dad
	nop			;4dae
	jr nc,l4df1h		;4daf
	dec b			;4db1
	cp e			;4db2
	nop			;4db3
	nop			;4db4
	ld b,d			;4db5
	nop			;4db6
	nop			;4db7
	nop			;4db8
	nop			;4db9
	nop			;4dba
	nop			;4dbb
	nop			;4dbc
	nop			;4dbd
	add hl,de		;4dbe
	add a,b			;4dbf
	dec b			;4dc0
	dec sp			;4dc1
	nop			;4dc2
	nop			;4dc3
	ld b,c			;4dc4
	nop			;4dc5
	nop			;4dc6
	nop			;4dc7
	nop			;4dc8
	nop			;4dc9
	nop			;4dca
	nop			;4dcb
	nop			;4dcc
	djnz l4e0fh		;4dcd
	dec b			;4dcf
	dec sp			;4dd0
	nop			;4dd1
	nop			;4dd2
	add a,d			;4dd3
	nop			;4dd4
	nop			;4dd5
	nop			;4dd6
	nop			;4dd7
	nop			;4dd8
	nop			;4dd9
	nop			;4dda
	nop			;4ddb
	jr nz,l4d5eh		;4ddc
	dec b			;4dde
	dec sp			;4ddf
	nop			;4de0
	nop			;4de1
	add a,c			;4de2
	nop			;4de3
	nop			;4de4
	nop			;4de5
	nop			;4de6
	nop			;4de7
	nop			;4de8
	nop			;4de9
	nop			;4dea
	jr nz,l4d6dh		;4deb
	dec b			;4ded
	dec sp			;4dee
	nop			;4def
	nop			;4df0
l4df1h:
	ld b,e			;4df1
	nop			;4df2
	nop			;4df3
	nop			;4df4
	nop			;4df5
	nop			;4df6
	nop			;4df7
	nop			;4df8
	nop			;4df9
	djnz l4d7ch		;4dfa
	dec b			;4dfc
	dec sp			;4dfd
	nop			;4dfe
	nop			;4dff
	add a,c			;4e00
	nop			;4e01
	nop			;4e02
	nop			;4e03
	nop			;4e04
	nop			;4e05
	nop			;4e06
	nop			;4e07
	nop			;4e08
	djnz l4e4bh		;4e09
	dec b			;4e0b
	dec sp			;4e0c
	nop			;4e0d
	nop			;4e0e
l4e0fh:
	ld b,c			;4e0f
	nop			;4e10
	nop			;4e11
	nop			;4e12
	jr nc,l4e15h		;4e13
l4e15h:
	nop			;4e15
	nop			;4e16
	nop			;4e17
	nop			;4e18
	nop			;4e19
	nop			;4e1a
	ccf			;4e1b
	nop			;4e1c
	nop			;4e1d
	nop			;4e1e
	nop			;4e1f
	nop			;4e20
	nop			;4e21
	ret p			;4e22
	nop			;4e23
	nop			;4e24
	nop			;4e25
	nop			;4e26
	nop			;4e27
	nop			;4e28
	nop			;4e29
	ccf			;4e2a
	nop			;4e2b
	nop			;4e2c
	nop			;4e2d
	nop			;4e2e
	nop			;4e2f
	nop			;4e30
	ld b,b			;4e31
	nop			;4e32
	nop			;4e33
	nop			;4e34
	nop			;4e35
	ld d,b			;4e36
	nop			;4e37
	nop			;4e38
	cp e			;4e39
	nop			;4e3a
	nop			;4e3b
	dec c			;4e3c
	nop			;4e3d
	nop			;4e3e
	nop			;4e3f
	ld h,c			;4e40
	nop			;4e41
	nop			;4e42
	nop			;4e43
	nop			;4e44
	ld (hl),b		;4e45
	nop			;4e46
	nop			;4e47
	cp e			;4e48
	nop			;4e49
	nop			;4e4a
l4e4bh:
	dec bc			;4e4b
	nop			;4e4c
	nop			;4e4d
	nop			;4e4e
	nop			;4e4f
	nop			;4e50
	nop			;4e51
	nop			;4e52
	nop			;4e53
	jr nc,l4e56h		;4e54
l4e56h:
	nop			;4e56
	cp e			;4e57
	nop			;4e58
	nop			;4e59
	ld a,(bc)		;4e5a
	nop			;4e5b
	nop			;4e5c
	nop			;4e5d
	nop			;4e5e
	nop			;4e5f
	nop			;4e60
	nop			;4e61
	nop			;4e62
	ld b,b			;4e63
	nop			;4e64
	dec b			;4e65
	dec sp			;4e66
	nop			;4e67
	nop			;4e68
	ld a,(bc)		;4e69
	nop			;4e6a
	nop			;4e6b
	nop			;4e6c
	nop			;4e6d
	nop			;4e6e
	nop			;4e6f
	nop			;4e70
	nop			;4e71
	dec (hl)		;4e72
	nop			;4e73
	nop			;4e74
	cp e			;4e75
	nop			;4e76
	nop			;4e77
	ex af,af'		;4e78
	nop			;4e79
	nop			;4e7a
	nop			;4e7b
	ld h,b			;4e7c
	nop			;4e7d
	nop			;4e7e
	nop			;4e7f
	nop			;4e80
	ld b,b			;4e81
	nop			;4e82
	nop			;4e83
	dec sp			;4e84
	nop			;4e85
	nop			;4e86
	ex af,af'		;4e87
	nop			;4e88
	nop			;4e89
	nop			;4e8a
	nop			;4e8b
	nop			;4e8c
	nop			;4e8d
	nop			;4e8e
	nop			;4e8f
	jr nc,l4e92h		;4e90
l4e92h:
	nop			;4e92
	dec sp			;4e93
	nop			;4e94
	nop			;4e95
	rlca			;4e96
	nop			;4e97
	nop			;4e98
	nop			;4e99
	nop			;4e9a
	nop			;4e9b
	nop			;4e9c
	nop			;4e9d
	nop			;4e9e
	nop			;4e9f
	nop			;4ea0
	nop			;4ea1
	cp a			;4ea2
	nop			;4ea3
l4ea4h:
	nop			;4ea4
	nop			;4ea5
	nop			;4ea6
	nop			;4ea7
	nop			;4ea8
	ret p			;4ea9
	nop			;4eaa
	nop			;4eab
	nop			;4eac
	nop			;4ead
	nop			;4eae
	nop			;4eaf
	nop			;4eb0
	cp a			;4eb1
	nop			;4eb2
	nop			;4eb3
	nop			;4eb4
	nop			;4eb5
	nop			;4eb6
	nop			;4eb7
	ld b,b			;4eb8
	nop			;4eb9
	nop			;4eba
	nop			;4ebb
	nop			;4ebc
	ret p			;4ebd
	nop			;4ebe
	dec b			;4ebf
	sbc a,e			;4ec0
	nop			;4ec1
	nop			;4ec2
	dec bc			;4ec3
	nop			;4ec4
	nop			;4ec5
	nop			;4ec6
	nop			;4ec7
	nop			;4ec8
	nop			;4ec9
	nop			;4eca
	nop			;4ecb
	nop			;4ecc
	ld bc,01b05h		;4ecd
	nop			;4ed0
	nop			;4ed1
	inc c			;4ed2
	nop			;4ed3
	nop			;4ed4
	nop			;4ed5
	nop			;4ed6
	nop			;4ed7
	nop			;4ed8
	nop			;4ed9
	nop			;4eda
	ld d,b			;4edb
	ld bc,03b05h		;4edc
	nop			;4edf
	nop			;4ee0
	dec c			;4ee1
	nop			;4ee2
	nop			;4ee3
	nop			;4ee4
	nop			;4ee5
	nop			;4ee6
	nop			;4ee7
	nop			;4ee8
	nop			;4ee9
	dec d			;4eea
	ld b,b			;4eeb
	dec b			;4eec
	sbc a,e			;4eed
	nop			;4eee
	nop			;4eef
	inc c			;4ef0
	nop			;4ef1
	nop			;4ef2
	nop			;4ef3
	nop			;4ef4
	nop			;4ef5
	nop			;4ef6
	nop			;4ef7
	nop			;4ef8
	inc de			;4ef9
	ld b,b			;4efa
	dec b			;4efb
	sbc a,e			;4efc
	nop			;4efd
	nop			;4efe
	ld c,000h		;4eff
	nop			;4f01
	nop			;4f02
	inc h			;4f03
	nop			;4f04
	nop			;4f05
	nop			;4f06
	nop			;4f07
	nop			;4f08
	ld bc,03b00h		;4f09
	nop			;4f0c
	nop			;4f0d
	ld b,d			;4f0e
	nop			;4f0f
	nop			;4f10
	nop			;4f11
	ld (00000h),hl		;4f12
	nop			;4f15
	nop			;4f16
	djnz l4f59h		;4f17
	inc d			;4f19
	cp e			;4f1a
	nop			;4f1b
	nop			;4f1c
	ld b,b			;4f1d
	nop			;4f1e
	nop			;4f1f
	nop			;4f20
	jr nc,l4f23h		;4f21
l4f23h:
	nop			;4f23
	nop			;4f24
	nop			;4f25
	dec c			;4f26
	ld b,b			;4f27
	inc d			;4f28
	cp e			;4f29
	nop			;4f2a
	nop			;4f2b
	ld b,b			;4f2c
	nop			;4f2d
	nop			;4f2e
	nop			;4f2f
	ld (00000h),hl		;4f30
	nop			;4f33
	nop			;4f34
	ex af,af'		;4f35
	ld b,b			;4f36
	inc d			;4f37
	cp e			;4f38
	nop			;4f39
	nop			;4f3a
	ld b,b			;4f3b
	nop			;4f3c
	nop			;4f3d
	nop			;4f3e
	jr nc,l4f41h		;4f3f
l4f41h:
	nop			;4f41
	nop			;4f42
	nop			;4f43
	inc b			;4f44
	add a,b			;4f45
	inc d			;4f46
	cp e			;4f47
	nop			;4f48
	nop			;4f49
	ld b,b			;4f4a
	nop			;4f4b
	nop			;4f4c
	nop			;4f4d
	ld (00000h),hl		;4f4e
	nop			;4f51
	nop			;4f52
	dec b			;4f53
	add a,b			;4f54
	inc d			;4f55
	cp e			;4f56
	nop			;4f57
	nop			;4f58
l4f59h:
	ld b,b			;4f59
	nop			;4f5a
	nop			;4f5b
	nop			;4f5c
	jr nc,l4f5fh		;4f5d
l4f5fh:
	nop			;4f5f
	nop			;4f60
	nop			;4f61
	dec c			;4f62
	ld b,b			;4f63
	inc d			;4f64
	cp e			;4f65
	nop			;4f66
	nop			;4f67
	ld b,c			;4f68
	nop			;4f69
	nop			;4f6a
	nop			;4f6b
	jr nc,l4f6eh		;4f6c
l4f6eh:
	nop			;4f6e
	nop			;4f6f
	nop			;4f70
	nop			;4f71
	nop			;4f72
	nop			;4f73
	ccf			;4f74
	nop			;4f75
	nop			;4f76
	nop			;4f77
	nop			;4f78
	nop			;4f79
	nop			;4f7a
	ret p			;4f7b
	nop			;4f7c
	nop			;4f7d
	nop			;4f7e
	nop			;4f7f
	nop			;4f80
	nop			;4f81
	nop			;4f82
	ccf			;4f83
	nop			;4f84
	nop			;4f85
	nop			;4f86
	nop			;4f87
	nop			;4f88
	nop			;4f89
	ld b,b			;4f8a
	nop			;4f8b
	nop			;4f8c
	nop			;4f8d
	nop			;4f8e
	ld (00500h),a		;4f8f
	sbc a,e			;4f92
	nop			;4f93
	nop			;4f94
	ld c,000h		;4f95
	nop			;4f97
	nop			;4f98
	nop			;4f99
	nop			;4f9a
	nop			;4f9b
	nop			;4f9c
	nop			;4f9d
	inc bc			;4f9e
	ld b,b			;4f9f
	dec b			;4fa0
	sbc a,e			;4fa1
	nop			;4fa2
	nop			;4fa3
	dec c			;4fa4
	nop			;4fa5
	nop			;4fa6
	nop			;4fa7
	ld (00000h),hl		;4fa8
	nop			;4fab
	nop			;4fac
	inc bc			;4fad
	ld b,b			;4fae
	dec b			;4faf
	cp e			;4fb0
	nop			;4fb1
	nop			;4fb2
	ld b,c			;4fb3
	nop			;4fb4
	nop			;4fb5
	nop			;4fb6
	nop			;4fb7
	nop			;4fb8
	nop			;4fb9
	nop			;4fba
	nop			;4fbb
	inc bc			;4fbc
	ld b,b			;4fbd
	dec b			;4fbe
	cp e			;4fbf
	nop			;4fc0
	nop			;4fc1
	ld b,c			;4fc2
	nop			;4fc3
	nop			;4fc4
	nop			;4fc5
	nop			;4fc6
	nop			;4fc7
	nop			;4fc8
	nop			;4fc9
	nop			;4fca
	ld (bc),a		;4fcb
	add a,b			;4fcc
	inc e			;4fcd
	cp e			;4fce
	nop			;4fcf
	nop			;4fd0
	ld b,c			;4fd1
	nop			;4fd2
	nop			;4fd3
	nop			;4fd4
	jr nc,l4fd7h		;4fd5
l4fd7h:
	nop			;4fd7
	nop			;4fd8
	nop			;4fd9
	ld bc,01c80h		;4fda
	cp e			;4fdd
	nop			;4fde
	nop			;4fdf
	add hl,bc		;4fe0
	nop			;4fe1
	nop			;4fe2
	nop			;4fe3
	inc d			;4fe4
	nop			;4fe5
	nop			;4fe6
	nop			;4fe7
	nop			;4fe8
	ld bc,01c40h		;4fe9
	cp e			;4fec
	nop			;4fed
	nop			;4fee
	rlca			;4fef
	nop			;4ff0
	nop			;4ff1
	nop			;4ff2
	nop			;4ff3
	nop			;4ff4
	nop			;4ff5
	nop			;4ff6
	nop			;4ff7
	inc bc			;4ff8
	ld b,b			;4ff9
	nop			;4ffa
	dec sp			;4ffb
	nop			;4ffc
	nop			;4ffd
	rlca			;4ffe
	nop			;4fff
	nop			;5000
	nop			;5001
	nop			;5002
	nop			;5003
	nop			;5004
	nop			;5005
	nop			;5006
	nop			;5007
	nop			;5008
	nop			;5009
	ccf			;500a
	nop			;500b
	nop			;500c
	nop			;500d
	nop			;500e
	nop			;500f
	nop			;5010
	ret p			;5011
	nop			;5012
	nop			;5013
	nop			;5014
	nop			;5015
	nop			;5016
	nop			;5017
	inc e			;5018
	cp a			;5019
	nop			;501a
	nop			;501b
	nop			;501c
	nop			;501d
	nop			;501e
	nop			;501f
	ld b,b			;5020
	nop			;5021
	nop			;5022
	nop			;5023
	nop			;5024
	ld d,(hl)		;5025
sub_5026h:
	nop			;5026
	dec b			;5027
	cp e			;5028
	nop			;5029
	nop			;502a
	dec c			;502b
	nop			;502c
	nop			;502d
	nop			;502e
	daa			;502f
	nop			;5030
	nop			;5031
	nop			;5032
	nop			;5033
	dec bc			;5034
	ld b,b			;5035
	dec b			;5036
	cp e			;5037
	nop			;5038
	nop			;5039
	ld b,c			;503a
	nop			;503b
	nop			;503c
	nop			;503d
	nop			;503e
	nop			;503f
	nop			;5040
	nop			;5041
	nop			;5042
	ex af,af'		;5043
	add a,b			;5044
	dec b			;5045
	cp e			;5046
	nop			;5047
	nop			;5048
	ld b,b			;5049
	nop			;504a
	nop			;504b
	nop			;504c
	jr nc,l504fh		;504d
l504fh:
	nop			;504f
	nop			;5050
	nop			;5051
	ld c,(hl)		;5052
	nop			;5053
	dec b			;5054
	cp e			;5055
	nop			;5056
	nop			;5057
	ld b,b			;5058
	nop			;5059
	nop			;505a
	nop			;505b
	nop			;505c
	nop			;505d
	nop			;505e
	nop			;505f
	nop			;5060
	ld c,(hl)		;5061
	nop			;5062
	dec b			;5063
	cp e			;5064
	nop			;5065
	nop			;5066
	ld b,b			;5067
	nop			;5068
	nop			;5069
	nop			;506a
	nop			;506b
	nop			;506c
	nop			;506d
	nop			;506e
	nop			;506f
	ld bc,01f40h		;5070
	cp e			;5073
	nop			;5074
	nop			;5075
	ld b,b			;5076
	nop			;5077
	nop			;5078
	nop			;5079
	nop			;507a
	nop			;507b
	nop			;507c
	nop			;507d
	nop			;507e
	nop			;507f
	nop			;5080
	rra			;5081
	cp a			;5082
	nop			;5083
	nop			;5084
	nop			;5085
	nop			;5086
	nop			;5087
	nop			;5088
	ret p			;5089
	nop			;508a
	nop			;508b
	nop			;508c
	nop			;508d
	nop			;508e
	nop			;508f
	rra			;5090
	cp a			;5091
	nop			;5092
	nop			;5093
	nop			;5094
	nop			;5095
	nop			;5096
	nop			;5097
	ld b,b			;5098
	ld b,h			;5099
	inc b			;509a
	ld h,(hl)		;509b
	ld b,0e0h		;509c
	nop			;509e
	ld a,(de)		;509f
	sub b			;50a0
	dec c			;50a1
	dec c			;50a2
	dec c			;50a3
	nop			;50a4
	nop			;50a5
	nop			;50a6
	ld hl,00333h		;50a7
	ld b,h			;50aa
	inc b			;50ab
	nop			;50ac
	ld (bc),a		;50ad
	rra			;50ae
	sub b			;50af
	ld b,b			;50b0
	dec c			;50b1
	ld b,b			;50b2
	nop			;50b3
	nop			;50b4
	nop			;50b5
	nop			;50b6
	ld (03302h),hl		;50b7
	inc bc			;50ba
	ret po			;50bb
	ld bc,0b01fh		;50bc
	ld b,b			;50bf
	inc c			;50c0
	ld b,b			;50c1
	nop			;50c2
	nop			;50c3
l50c4h:
	nop			;50c4
	jr nc,l50c4h		;50c5
	ld bc,00133h		;50c7
	ld h,b			;50ca
	ld (bc),a		;50cb
	rra			;50cc
	sub b			;50cd
	ld b,c			;50ce
	dec bc			;50cf
	ld b,b			;50d0
	nop			;50d1
	nop			;50d2
	nop			;50d3
	nop			;50d4
	ld (hl),c		;50d5
	ld (bc),a		;50d6
	nop			;50d7
	nop			;50d8
	ret po			;50d9
	ld (bc),a		;50da
	rra			;50db
	or d			;50dc
	ld b,c			;50dd
	nop			;50de
	ld b,b			;50df
	nop			;50e0
	nop			;50e1
	nop			;50e2
	nop			;50e3
	dec c			;50e4
	inc bc			;50e5
	nop			;50e6
	nop			;50e7
	ld h,b			;50e8
	inc bc			;50e9
	rra			;50ea
	sbc a,d			;50eb
	add a,b			;50ec
	nop			;50ed
	ld b,b			;50ee
	nop			;50ef
	nop			;50f0
	nop			;50f1
	nop			;50f2
	ret nc			;50f3
	inc bc			;50f4
	nop			;50f5
	nop			;50f6
	ret po			;50f7
	inc bc			;50f8
	rra			;50f9
	sbc a,d			;50fa
	add a,c			;50fb
	nop			;50fc
	ld b,b			;50fd
	nop			;50fe
	nop			;50ff
	nop			;5100
	nop			;5101
	call nz,00004h		;5102
	nop			;5105
	ld h,b			;5106
	ld bc,0ba1fh		;5107
	add a,c			;510a
	dec c			;510b
	ld b,b			;510c
	nop			;510d
	nop			;510e
	nop			;510f
	inc h			;5110
	nop			;5111
	ld (bc),a		;5112
	nop			;5113
	dec b			;5114
	ret po			;5115
	nop			;5116
	rra			;5117
	sbc a,b			;5118
	ld b,d			;5119
	ld b,c			;511a
	ld b,d			;511b
	nop			;511c
	nop			;511d
	nop			;511e
	nop			;511f
	nop			;5120
	nop			;5121
	ld d,l			;5122
	dec b			;5123
	ld h,b			;5124
	ld bc,0981fh		;5125
	ld b,b			;5128
	ld b,b			;5129
	ld b,b			;512a
	nop			;512b
	nop			;512c
l512dh:
	nop			;512d
	nop			;512e
	nop			;512f
	inc bc			;5130
	nop			;5131
	nop			;5132
	ret po			;5133
	ld bc,09a18h		;5134
	ld b,b			;5137
	ld b,b			;5138
	add a,c			;5139
	nop			;513a
	nop			;513b
	nop			;513c
	nop			;513d
	ld (hl),b		;513e
	ld bc,00000h		;513f
	ld h,b			;5142
	ld (bc),a		;5143
	rra			;5144
	cp d			;5145
	ld b,b			;5146
	ld b,b			;5147
	ld b,b			;5148
	nop			;5149
	nop			;514a
	nop			;514b
	nop			;514c
	sub b			;514d
	ld bc,00000h		;514e
	ret po			;5151
	ld (bc),a		;5152
	rra			;5153
	cp d			;5154
	ld b,b			;5155
	ld b,b			;5156
	ld b,c			;5157
	nop			;5158
	nop			;5159
	nop			;515a
	nop			;515b
	defb 0fdh,001h,000h ;illegal sequence	;515c
	nop			;515f
	ld h,b			;5160
	inc bc			;5161
	inc b			;5162
	cp d			;5163
	ld b,b			;5164
	ld b,c			;5165
	add a,c			;5166
	nop			;5167
	nop			;5168
	nop			;5169
	nop			;516a
	ld (hl),c		;516b
	ld (bc),a		;516c
	nop			;516d
	nop			;516e
	ret po			;516f
	inc bc			;5170
	djnz l512dh		;5171
	ld b,b			;5173
	ld b,b			;5174
	ld b,c			;5175
	nop			;5176
	nop			;5177
	nop			;5178
	jr nc,l517bh		;5179
l517bh:
	nop			;517b
	nop			;517c
	nop			;517d
	nop			;517e
	nop			;517f
	nop			;5180
	ccf			;5181
	nop			;5182
	nop			;5183
	nop			;5184
	nop			;5185
	nop			;5186
	nop			;5187
	ret p			;5188
	nop			;5189
	nop			;518a
	nop			;518b
	nop			;518c
	nop			;518d
	nop			;518e
	nop			;518f
	ccf			;5190
	nop			;5191
	nop			;5192
	nop			;5193
	nop			;5194
	nop			;5195
	nop			;5196
	ld b,b			;5197
	nop			;5198
	nop			;5199
	nop			;519a
	nop			;519b
	jr nz,l51a0h		;519c
	rra			;519e
	cp e			;519f
l51a0h:
	nop			;51a0
	nop			;51a1
	ld c,000h		;51a2
	nop			;51a4
	nop			;51a5
	inc h			;51a6
	nop			;51a7
	nop			;51a8
	nop			;51a9
	nop			;51aa
	add a,b			;51ab
	ld (bc),a		;51ac
	dec b			;51ad
	dec sp			;51ae
	nop			;51af
	nop			;51b0
	ld b,d			;51b1
	nop			;51b2
	nop			;51b3
	nop			;51b4
	nop			;51b5
	nop			;51b6
	nop			;51b7
	nop			;51b8
	nop			;51b9
	add a,b			;51ba
	add a,b			;51bb
	inc de			;51bc
	cp e			;51bd
	nop			;51be
	nop			;51bf
	ld b,b			;51c0
	nop			;51c1
	nop			;51c2
	nop			;51c3
	nop			;51c4
	nop			;51c5
	nop			;51c6
	nop			;51c7
	nop			;51c8
	adc a,b			;51c9
	ld b,b			;51ca
	rla			;51cb
	cp e			;51cc
	nop			;51cd
	nop			;51ce
	add a,d			;51cf
	nop			;51d0
	nop			;51d1
	nop			;51d2
	nop			;51d3
	nop			;51d4
	nop			;51d5
	nop			;51d6
	nop			;51d7
	nop			;51d8
	ld b,c			;51d9
	dec b			;51da
	sbc a,e			;51db
	nop			;51dc
	nop			;51dd
	ld b,(hl)		;51de
	nop			;51df
	nop			;51e0
	nop			;51e1
	nop			;51e2
	nop			;51e3
	nop			;51e4
	nop			;51e5
	nop			;51e6
	add a,b			;51e7
	add a,c			;51e8
	dec b			;51e9
	cp e			;51ea
	nop			;51eb
	nop			;51ec
	add a,d			;51ed
	nop			;51ee
	nop			;51ef
	nop			;51f0
	nop			;51f1
	nop			;51f2
	nop			;51f3
	nop			;51f4
	nop			;51f5
	add a,b			;51f6
	ld b,b			;51f7
	rlca			;51f8
	cp e			;51f9
	nop			;51fa
	nop			;51fb
	add a,d			;51fc
	nop			;51fd
	nop			;51fe
	nop			;51ff
	nop			;5200
	nop			;5201
	nop			;5202
	nop			;5203
	nop			;5204
	nop			;5205
	ld b,c			;5206
	inc b			;5207
	cp e			;5208
	nop			;5209
	nop			;520a
	ld b,b			;520b
	nop			;520c
	nop			;520d
	nop			;520e
	nop			;520f
	nop			;5210
	nop			;5211
	nop			;5212
	nop			;5213
	add a,b			;5214
	add a,c			;5215
	add hl,de		;5216
	cp e			;5217
	nop			;5218
	nop			;5219
	add a,d			;521a
	nop			;521b
	nop			;521c
	nop			;521d
	ld (de),a		;521e
	nop			;521f
	nop			;5220
	nop			;5221
	nop			;5222
	add a,b			;5223
	add a,b			;5224
	rra			;5225
	cp e			;5226
	nop			;5227
	nop			;5228
	add a,c			;5229
	nop			;522a
	nop			;522b
l522ch:
	nop			;522c
	ld de,00000h		;522d
	nop			;5230
	nop			;5231
	nop			;5232
	ld b,c			;5233
	rra			;5234
	dec sp			;5235
	nop			;5236
	nop			;5237
	ld b,c			;5238
	nop			;5239
	nop			;523a
	nop			;523b
	jr nc,l523eh		;523c
l523eh:
	nop			;523e
	nop			;523f
	nop			;5240
	nop			;5241
	inc b			;5242
	nop			;5243
	cp e			;5244
	nop			;5245
	nop			;5246
	ld b,b			;5247
	nop			;5248
	nop			;5249
	nop			;524a
	nop			;524b
	nop			;524c
	nop			;524d
	nop			;524e
	nop			;524f
	nop			;5250
	nop			;5251
	nop			;5252
	ccf			;5253
	nop			;5254
	nop			;5255
	nop			;5256
	nop			;5257
	nop			;5258
	nop			;5259
	ret p			;525a
	nop			;525b
	nop			;525c
	nop			;525d
	nop			;525e
	nop			;525f
	nop			;5260
	nop			;5261
	ccf			;5262
	nop			;5263
	nop			;5264
	nop			;5265
	nop			;5266
	nop			;5267
	nop			;5268
	ld b,b			;5269
	nop			;526a
	nop			;526b
	nop			;526c
	nop			;526d
	nop			;526e
	inc bc			;526f
	inc e			;5270
	cp e			;5271
	nop			;5272
	nop			;5273
	rrca			;5274
	nop			;5275
	nop			;5276
	nop			;5277
	jr z,l527ah		;5278
l527ah:
	nop			;527a
	nop			;527b
	nop			;527c
	djnz l52bfh		;527d
	inc e			;527f
	cp e			;5280
	nop			;5281
	nop			;5282
	ld b,b			;5283
	nop			;5284
	nop			;5285
	nop			;5286
	nop			;5287
	nop			;5288
	nop			;5289
	nop			;528a
	nop			;528b
	ld d,b			;528c
	ld b,b			;528d
	nop			;528e
	dec sp			;528f
	nop			;5290
	nop			;5291
	ld b,b			;5292
	nop			;5293
	nop			;5294
l5295h:
	nop			;5295
	nop			;5296
	nop			;5297
	nop			;5298
	nop			;5299
	nop			;529a
	and b			;529b
	add a,b			;529c
	inc e			;529d
	cp e			;529e
	nop			;529f
	nop			;52a0
	ld b,b			;52a1
	nop			;52a2
	nop			;52a3
l52a4h:
	nop			;52a4
	nop			;52a5
	nop			;52a6
	nop			;52a7
	nop			;52a8
	nop			;52a9
	djnz l522ch		;52aa
	inc e			;52ac
	cp e			;52ad
	nop			;52ae
	nop			;52af
	ld b,b			;52b0
	nop			;52b1
	nop			;52b2
	nop			;52b3
	nop			;52b4
	nop			;52b5
	nop			;52b6
	nop			;52b7
	nop			;52b8
	ld (hl),b		;52b9
	ld b,b			;52ba
	inc e			;52bb
	cp e			;52bc
	nop			;52bd
	nop			;52be
l52bfh:
	ld b,c			;52bf
	nop			;52c0
	nop			;52c1
	nop			;52c2
	jr nc,l52c5h		;52c3
l52c5h:
	nop			;52c5
	nop			;52c6
	nop			;52c7
	nop			;52c8
	add a,b			;52c9
	inc e			;52ca
	cp e			;52cb
	nop			;52cc
	nop			;52cd
	ld b,b			;52ce
	nop			;52cf
	nop			;52d0
l52d1h:
	nop			;52d1
	nop			;52d2
	nop			;52d3
	nop			;52d4
	nop			;52d5
	nop			;52d6
	nop			;52d7
	nop			;52d8
	inc e			;52d9
	cp a			;52da
	nop			;52db
	nop			;52dc
	nop			;52dd
	nop			;52de
	nop			;52df
	nop			;52e0
	ret p			;52e1
	nop			;52e2
	nop			;52e3
	nop			;52e4
	nop			;52e5
	nop			;52e6
	nop			;52e7
	inc e			;52e8
	cp a			;52e9
	nop			;52ea
	nop			;52eb
	nop			;52ec
	nop			;52ed
	nop			;52ee
l52efh:
	nop			;52ef
	ld b,b			;52f0
	nop			;52f1
	nop			;52f2
	nop			;52f3
	nop			;52f4
	djnz l52f9h		;52f5
	nop			;52f7
	cp e			;52f8
l52f9h:
	nop			;52f9
	nop			;52fa
	add hl,bc		;52fb
	nop			;52fc
	nop			;52fd
	nop			;52fe
	ld h,000h		;52ff
	nop			;5301
	nop			;5302
	nop			;5303
	ld d,b			;5304
	ld b,b			;5305
	dec b			;5306
	sbc a,e			;5307
	nop			;5308
	nop			;5309
	add a,c			;530a
	nop			;530b
	nop			;530c
	nop			;530d
	nop			;530e
	nop			;530f
	nop			;5310
	nop			;5311
	nop			;5312
	jr nc,l5295h		;5313
	nop			;5315
	cp e			;5316
	nop			;5317
	nop			;5318
	ld b,b			;5319
	nop			;531a
	nop			;531b
	nop			;531c
	nop			;531d
	nop			;531e
	nop			;531f
	nop			;5320
	nop			;5321
	jr nz,l52a4h		;5322
	nop			;5324
	cp e			;5325
	nop			;5326
	nop			;5327
	ld b,b			;5328
sub_5329h:
	nop			;5329
	nop			;532a
	nop			;532b
	nop			;532c
	nop			;532d
	nop			;532e
	nop			;532f
	nop			;5330
	ld (bc),a		;5331
	ld b,b			;5332
	nop			;5333
	dec sp			;5334
	nop			;5335
	nop			;5336
	ld b,b			;5337
	nop			;5338
	nop			;5339
	nop			;533a
	jr nc,l533dh		;533b
l533dh:
	nop			;533d
	nop			;533e
	nop			;533f
	nop			;5340
	ld (bc),a		;5341
	nop			;5342
	cp e			;5343
	nop			;5344
	nop			;5345
	dec c			;5346
	nop			;5347
	nop			;5348
	nop			;5349
	cpl			;534a
	nop			;534b
	nop			;534c
	nop			;534d
	nop			;534e
	jr nc,l52d1h		;534f
	dec b			;5351
	cp e			;5352
	nop			;5353
	nop			;5354
	ld b,b			;5355
	nop			;5356
	nop			;5357
	nop			;5358
	inc h			;5359
	nop			;535a
	nop			;535b
	nop			;535c
	nop			;535d
	dec de			;535e
	add a,b			;535f
	dec b			;5360
	dec sp			;5361
	nop			;5362
	nop			;5363
	ld b,b			;5364
	nop			;5365
	nop			;5366
	nop			;5367
	nop			;5368
	nop			;5369
	nop			;536a
	nop			;536b
	nop			;536c
	jr nc,l52efh		;536d
	dec b			;536f
	dec sp			;5370
	nop			;5371
	nop			;5372
	ld b,b			;5373
	nop			;5374
	nop			;5375
	nop			;5376
	jr nc,l5379h		;5377
l5379h:
	nop			;5379
	nop			;537a
	nop			;537b
	ld d,b			;537c
	ld b,b			;537d
	nop			;537e
	cp e			;537f
	nop			;5380
	nop			;5381
	ld b,b			;5382
	nop			;5383
	nop			;5384
	nop			;5385
	inc hl			;5386
	nop			;5387
	nop			;5388
	nop			;5389
	nop			;538a
	jr nz,l53cdh		;538b
	nop			;538d
	cp e			;538e
	nop			;538f
	nop			;5390
	ld b,b			;5391
	nop			;5392
	nop			;5393
	nop			;5394
	jr nc,l5397h		;5395
l5397h:
	nop			;5397
	nop			;5398
	nop			;5399
	add a,b			;539a
	ld b,b			;539b
	nop			;539c
	cp e			;539d
	nop			;539e
	nop			;539f
	ld b,b			;53a0
	nop			;53a1
	nop			;53a2
	nop			;53a3
	nop			;53a4
	nop			;53a5
	nop			;53a6
	nop			;53a7
	nop			;53a8
	ld a,(00040h)		;53a9
	cp e			;53ac
	nop			;53ad
	nop			;53ae
	ld b,b			;53af
	nop			;53b0
	nop			;53b1
	nop			;53b2
	jr nc,l53b5h		;53b3
l53b5h:
	nop			;53b5
	nop			;53b6
	nop			;53b7
	nop			;53b8
	nop			;53b9
	nop			;53ba
	ccf			;53bb
	nop			;53bc
	nop			;53bd
	nop			;53be
	nop			;53bf
	nop			;53c0
	nop			;53c1
	ret p			;53c2
	nop			;53c3
	nop			;53c4
	nop			;53c5
	nop			;53c6
	nop			;53c7
	nop			;53c8
	rra			;53c9
	cp a			;53ca
	nop			;53cb
	nop			;53cc
l53cdh:
	nop			;53cd
	nop			;53ce
	nop			;53cf
	nop			;53d0
	ld b,b			;53d1
	sbc a,c			;53d2
	add hl,bc		;53d3
	ld h,(hl)		;53d4
	ld b,066h		;53d5
	ld b,005h		;53d7
	adc a,b			;53d9
	rrca			;53da
	rrca			;53db
	dec c			;53dc
	nop			;53dd
	nop			;53de
	nop			;53df
	nop			;53e0
	ld b,b			;53e1
	ld (bc),a		;53e2
	jr nz,l53e6h		;53e3
	nop			;53e5
l53e6h:
	ld bc,00805h		;53e6
	dec bc			;53e9
	ld a,(bc)		;53ea
	ld c,000h		;53eb
	nop			;53ed
	nop			;53ee
	inc hl			;53ef
	nop			;53f0
	add a,c			;53f1
	nop			;53f2
	add a,c			;53f3
	nop			;53f4
	add a,c			;53f5
	dec b			;53f6
	xor b			;53f7
	ld b,b			;53f8
	ld b,b			;53f9
	ld b,b			;53fa
	nop			;53fb
	nop			;53fc
	nop			;53fd
	dec l			;53fe
	sub e			;53ff
	nop			;5400
	nop			;5401
	ld (bc),a		;5402
	nop			;5403
	ld (bc),a		;5404
	ld b,028h		;5405
	ld b,b			;5407
	ld b,e			;5408
	ld b,d			;5409
	nop			;540a
	nop			;540b
	nop			;540c
	nop			;540d
	add a,b			;540e
	add a,b			;540f
	add a,h			;5410
	add a,b			;5411
	adc a,b			;5412
	add a,b			;5413
	inc de			;5414
	xor b			;5415
	ld b,c			;5416
	add a,e			;5417
	ld b,b			;5418
	nop			;5419
	nop			;541a
	nop			;541b
	nop			;541c
	adc a,b			;541d
	ld b,b			;541e
	adc a,b			;541f
	ld b,b			;5420
	adc a,b			;5421
	ld b,b			;5422
	rla			;5423
	xor b			;5424
	ld b,c			;5425
	ld b,b			;5426
	add a,d			;5427
	nop			;5428
	nop			;5429
	nop			;542a
	nop			;542b
	nop			;542c
	ld b,c			;542d
	nop			;542e
	ld b,c			;542f
	nop			;5430
	ld b,c			;5431
	dec e			;5432
	xor b			;5433
	add a,c			;5434
	ld b,c			;5435
	ld b,b			;5436
	nop			;5437
	nop			;5438
	nop			;5439
	nop			;543a
	add a,b			;543b
	add a,c			;543c
	add a,b			;543d
	add a,c			;543e
	add a,b			;543f
	add a,c			;5440
	dec e			;5441
	xor b			;5442
	ld b,b			;5443
	ld b,c			;5444
	ld b,d			;5445
	nop			;5446
	nop			;5447
	nop			;5448
	nop			;5449
	add a,b			;544a
	ld b,b			;544b
	add a,b			;544c
	ld b,b			;544d
	add a,b			;544e
	ld b,b			;544f
	rlca			;5450
	xor b			;5451
	ld b,b			;5452
	ld b,b			;5453
	ld b,b			;5454
	nop			;5455
	nop			;5456
	nop			;5457
	nop			;5458
	nop			;5459
	ld b,c			;545a
	nop			;545b
	ld b,c			;545c
	nop			;545d
	ld b,c			;545e
	inc b			;545f
	xor b			;5460
	add a,c			;5461
	ld b,b			;5462
	ld b,b			;5463
	nop			;5464
	nop			;5465
	nop			;5466
	nop			;5467
	add a,b			;5468
	add a,c			;5469
	add a,b			;546a
	add a,c			;546b
	add a,b			;546c
	add a,c			;546d
	ld e,0a8h		;546e
	ld b,d			;5470
	add a,c			;5471
	add a,d			;5472
	nop			;5473
	nop			;5474
	nop			;5475
	nop			;5476
	add a,b			;5477
	add a,b			;5478
	add a,b			;5479
	add a,b			;547a
	add a,b			;547b
	add a,b			;547c
	rra			;547d
	xor b			;547e
	add a,d			;547f
	add a,c			;5480
	ld b,b			;5481
	nop			;5482
	nop			;5483
	nop			;5484
	jr nc,l5487h		;5485
l5487h:
	ld b,c			;5487
	nop			;5488
	ld b,c			;5489
	nop			;548a
	ld b,c			;548b
	rra			;548c
	jr z,l54cfh		;548d
	ld b,b			;548f
	ld b,c			;5490
	nop			;5491
	nop			;5492
	nop			;5493
	jr nc,l5496h		;5494
l5496h:
	nop			;5496
	nop			;5497
	nop			;5498
	nop			;5499
	nop			;549a
	nop			;549b
	cp a			;549c
	nop			;549d
	ld b,b			;549e
	ld b,b			;549f
	nop			;54a0
	nop			;54a1
	nop			;54a2
	ret p			;54a3
	nop			;54a4
	nop			;54a5
	nop			;54a6
	nop			;54a7
	nop			;54a8
	nop			;54a9
	nop			;54aa
	ccf			;54ab
	nop			;54ac
	nop			;54ad
	nop			;54ae
	nop			;54af
	nop			;54b0
l54b1h:
	nop			;54b1
	ld b,b			;54b2
	nop			;54b3
	nop			;54b4
	nop			;54b5
	nop			;54b6
	add a,b			;54b7
	nop			;54b8
	dec b			;54b9
	sbc a,e			;54ba
	nop			;54bb
	nop			;54bc
	rrca			;54bd
	nop			;54be
	nop			;54bf
	nop			;54c0
	cpl			;54c1
	nop			;54c2
	nop			;54c3
	nop			;54c4
	nop			;54c5
	nop			;54c6
	nop			;54c7
	dec b			;54c8
	rra			;54c9
	nop			;54ca
	nop			;54cb
	ld b,c			;54cc
	nop			;54cd
	nop			;54ce
l54cfh:
	nop			;54cf
	inc hl			;54d0
	nop			;54d1
	nop			;54d2
	nop			;54d3
	nop			;54d4
	nop			;54d5
	nop			;54d6
	dec b			;54d7
	sbc a,a			;54d8
	nop			;54d9
	nop			;54da
	ld b,b			;54db
	nop			;54dc
	nop			;54dd
	nop			;54de
	jr nc,l54e1h		;54df
l54e1h:
	nop			;54e1
	nop			;54e2
	nop			;54e3
	nop			;54e4
	nop			;54e5
	dec b			;54e6
	rra			;54e7
	nop			;54e8
	nop			;54e9
	ld b,b			;54ea
	nop			;54eb
	nop			;54ec
	nop			;54ed
	jr nc,l54f0h		;54ee
l54f0h:
	nop			;54f0
	nop			;54f1
	nop			;54f2
	nop			;54f3
	nop			;54f4
	nop			;54f5
	ccf			;54f6
	nop			;54f7
	nop			;54f8
	ld b,b			;54f9
	nop			;54fa
	nop			;54fb
	nop			;54fc
	ret p			;54fd
	nop			;54fe
	nop			;54ff
	nop			;5500
l5501h:
	nop			;5501
	nop			;5502
	nop			;5503
	nop			;5504
	ccf			;5505
	nop			;5506
	nop			;5507
	nop			;5508
	nop			;5509
	nop			;550a
	nop			;550b
	ld b,b			;550c
	nop			;550d
	nop			;550e
	nop			;550f
	nop			;5510
	nop			;5511
	ld bc,0bb14h		;5512
	nop			;5515
	nop			;5516
	inc c			;5517
	nop			;5518
	nop			;5519
	nop			;551a
	jr z,l551dh		;551b
l551dh:
	nop			;551d
	nop			;551e
	nop			;551f
	ld a,(de)		;5520
	ld b,b			;5521
	inc d			;5522
	cp e			;5523
	nop			;5524
	nop			;5525
	dec c			;5526
	nop			;5527
	nop			;5528
	nop			;5529
	jr nc,l552ch		;552a
l552ch:
	nop			;552c
	nop			;552d
	nop			;552e
	djnz l54b1h		;552f
	inc d			;5531
	cp e			;5532
	nop			;5533
	nop			;5534
	rrca			;5535
	nop			;5536
	nop			;5537
	nop			;5538
	add hl,hl		;5539
	nop			;553a
	nop			;553b
	nop			;553c
	nop			;553d
	rlca			;553e
	ld b,b			;553f
	inc d			;5540
	cp e			;5541
	nop			;5542
	nop			;5543
	ld b,b			;5544
	nop			;5545
	nop			;5546
	nop			;5547
	nop			;5548
	nop			;5549
	nop			;554a
	nop			;554b
	nop			;554c
	inc b			;554d
	add a,b			;554e
	nop			;554f
	dec sp			;5550
	nop			;5551
	nop			;5552
	ld b,c			;5553
	nop			;5554
	nop			;5555
	nop			;5556
	jr nc,l5559h		;5557
l5559h:
	nop			;5559
	nop			;555a
	nop			;555b
	nop			;555c
	add a,b			;555d
	inc d			;555e
	cp e			;555f
	nop			;5560
	nop			;5561
	ld b,b			;5562
	nop			;5563
	nop			;5564
	nop			;5565
	nop			;5566
	nop			;5567
	nop			;5568
	nop			;5569
	nop			;556a
	nop			;556b
	nop			;556c
	nop			;556d
	ccf			;556e
	nop			;556f
	nop			;5570
	nop			;5571
	nop			;5572
	nop			;5573
	nop			;5574
	ret p			;5575
	nop			;5576
	nop			;5577
	nop			;5578
	nop			;5579
	nop			;557a
	nop			;557b
	nop			;557c
	ccf			;557d
	nop			;557e
	nop			;557f
	nop			;5580
	nop			;5581
	nop			;5582
	nop			;5583
	ld b,b			;5584
	nop			;5585
	nop			;5586
	nop			;5587
	nop			;5588
	nop			;5589
	nop			;558a
	dec b			;558b
	sbc a,a			;558c
	nop			;558d
	nop			;558e
	add hl,bc		;558f
	nop			;5590
	nop			;5591
	nop			;5592
	nop			;5593
	nop			;5594
	nop			;5595
	nop			;5596
	nop			;5597
	nop			;5598
	nop			;5599
	dec b			;559a
	sbc a,a			;559b
	nop			;559c
	nop			;559d
	inc c			;559e
	nop			;559f
	nop			;55a0
	nop			;55a1
	nop			;55a2
	nop			;55a3
	nop			;55a4
	nop			;55a5
	nop			;55a6
	nop			;55a7
	nop			;55a8
	dec b			;55a9
	sbc a,a			;55aa
	nop			;55ab
	nop			;55ac
	dec c			;55ad
	nop			;55ae
	nop			;55af
	nop			;55b0
	ld h,000h		;55b1
	nop			;55b3
	nop			;55b4
	nop			;55b5
	nop			;55b6
	nop			;55b7
	dec b			;55b8
	sbc a,a			;55b9
	nop			;55ba
	nop			;55bb
	ld b,b			;55bc
	nop			;55bd
	nop			;55be
	nop			;55bf
	ld de,00000h		;55c0
	nop			;55c3
	nop			;55c4
	nop			;55c5
	nop			;55c6
	dec b			;55c7
	sbc a,a			;55c8
	nop			;55c9
	nop			;55ca
	ld b,c			;55cb
	nop			;55cc
	nop			;55cd
	nop			;55ce
	jr nc,l55d1h		;55cf
l55d1h:
	nop			;55d1
	nop			;55d2
	nop			;55d3
	nop			;55d4
	nop			;55d5
	ld (bc),a		;55d6
	cp a			;55d7
	nop			;55d8
	nop			;55d9
	nop			;55da
	nop			;55db
	nop			;55dc
	nop			;55dd
	ret p			;55de
	nop			;55df
	nop			;55e0
	nop			;55e1
	nop			;55e2
	nop			;55e3
	nop			;55e4
	ld (bc),a		;55e5
	cp a			;55e6
	nop			;55e7
	nop			;55e8
	nop			;55e9
	nop			;55ea
	nop			;55eb
	nop			;55ec
	ld b,b			;55ed
	nop			;55ee
	nop			;55ef
	nop			;55f0
	nop			;55f1
	nop			;55f2
	nop			;55f3
	nop			;55f4
	cp a			;55f5
	nop			;55f6
	nop			;55f7
	rrca			;55f8
	ld hl,00800h		;55f9
	ld h,000h		;55fc
	nop			;55fe
	nop			;55ff
l5600h:
	nop			;5600
	jr nc,l5603h		;5601
l5603h:
	nop			;5603
	dec sp			;5604
	nop			;5605
	nop			;5606
	ld b,b			;5607
	nop			;5608
	nop			;5609
	nop			;560a
	inc h			;560b
	ld l,h			;560c
	nop			;560d
	ld l,e			;560e
	nop			;560f
	jr nc,l5612h		;5610
l5612h:
	nop			;5612
	cp e			;5613
	nop			;5614
	nop			;5615
	ld b,b			;5616
	ld hl,00800h		;5617
	jr nc,l561ch		;561a
l561ch:
	nop			;561c
	nop			;561d
	nop			;561e
	ld b,b			;561f
	nop			;5620
	nop			;5621
	dec sp			;5622
	nop			;5623
	nop			;5624
	ld b,c			;5625
	nop			;5626
	nop			;5627
	nop			;5628
	ld h,000h		;5629
	nop			;562b
	nop			;562c
	nop			;562d
	ld b,b			;562e
	nop			;562f
	nop			;5630
	dec sp			;5631
	nop			;5632
	nop			;5633
	ld b,b			;5634
	nop			;5635
	nop			;5636
	nop			;5637
	jr nc,l563ah		;5638
l563ah:
	nop			;563a
	nop			;563b
	nop			;563c
	nop			;563d
	nop			;563e
	nop			;563f
	dec sp			;5640
	nop			;5641
	nop			;5642
	ld b,b			;5643
	nop			;5644
	nop			;5645
	nop			;5646
	jr nc,l5649h		;5647
l5649h:
	nop			;5649
	nop			;564a
	nop			;564b
	nop			;564c
	nop			;564d
	nop			;564e
	ccf			;564f
	nop			;5650
	nop			;5651
	nop			;5652
	nop			;5653
	nop			;5654
	nop			;5655
	ret p			;5656
	nop			;5657
	nop			;5658
	nop			;5659
	nop			;565a
	nop			;565b
	nop			;565c
	nop			;565d
	cp a			;565e
	nop			;565f
	nop			;5660
	nop			;5661
	nop			;5662
	nop			;5663
	nop			;5664
	ld b,b			;5665
	nop			;5666
	nop			;5667
	nop			;5668
	nop			;5669
	nop			;566a
	nop			;566b
	nop			;566c
	cp a			;566d
	nop			;566e
	nop			;566f
	nop			;5670
	nop			;5671
	nop			;5672
	nop			;5673
	nop			;5674
	nop			;5675
	nop			;5676
	nop			;5677
	nop			;5678
	nop			;5679
	nop			;567a
	nop			;567b
	cp a			;567c
	nop			;567d
	nop			;567e
	nop			;567f
	nop			;5680
	nop			;5681
	nop			;5682
	ret p			;5683
	nop			;5684
	nop			;5685
	nop			;5686
	nop			;5687
	nop			;5688
	nop			;5689
	nop			;568a
	cp a			;568b
	nop			;568c
	nop			;568d
	nop			;568e
	nop			;568f
	nop			;5690
	nop			;5691
	ld b,b			;5692
	ld b,b			;5693
	nop			;5694
	nop			;5695
	inc bc			;5696
	jr nz,l569ah		;5697
	dec b			;5699
l569ah:
	sbc a,b			;569a
	inc b			;569b
l569ch:
	rlca			;569c
	inc c			;569d
l569eh:
	nop			;569e
	nop			;569f
l56a0h:
	nop			;56a0
	nop			;56a1
	ld d,b			;56a2
	nop			;56a3
	nop			;56a4
	inc b			;56a5
	ret nc			;56a6
	nop			;56a7
	dec b			;56a8
	sbc a,b			;56a9
	inc b			;56aa
	rlca			;56ab
	inc c			;56ac
	nop			;56ad
	nop			;56ae
	nop			;56af
	ld (00030h),hl		;56b0
	nop			;56b3
	ld (bc),a		;56b4
	ret nz			;56b5
	nop			;56b6
	dec b			;56b7
	cp b			;56b8
	ld (bc),a		;56b9
	ld b,b			;56ba
	ld b,b			;56bb
	nop			;56bc
	nop			;56bd
	nop			;56be
	jr nc,l56f1h		;56bf
	nop			;56c1
	nop			;56c2
	inc bc			;56c3
	ld h,b			;56c4
	nop			;56c5
	dec b			;56c6
	cp b			;56c7
	ld (bc),a		;56c8
	inc b			;56c9
	ld b,000h		;56ca
	nop			;56cc
	nop			;56cd
	inc d			;56ce
	nop			;56cf
	nop			;56d0
	nop			;56d1
	nop			;56d2
	nop			;56d3
	nop			;56d4
	nop			;56d5
	ccf			;56d6
	nop			;56d7
	nop			;56d8
	nop			;56d9
	nop			;56da
	nop			;56db
	nop			;56dc
	ret p			;56dd
	nop			;56de
	nop			;56df
	nop			;56e0
	nop			;56e1
	nop			;56e2
	nop			;56e3
	inc e			;56e4
	cp a			;56e5
	nop			;56e6
	nop			;56e7
	nop			;56e8
	nop			;56e9
	nop			;56ea
	nop			;56eb
	ld b,b			;56ec
	or b			;56ed
	nop			;56ee
	ret p			;56ef
	nop			;56f0
l56f1h:
	xor b			;56f1
	nop			;56f2
	inc d			;56f3
	cp b			;56f4
	rlca			;56f5
	inc b			;56f6
	add hl,bc		;56f7
	nop			;56f8
	nop			;56f9
	nop			;56fa
	inc hl			;56fb
	djnz l573eh		;56fc
	ld c,040h		;56fe
	ld c,040h		;5700
	inc d			;5702
	cp b			;5703
	ld b,b			;5704
	ld b,b			;5705
	ld b,b			;5706
	nop			;5707
	nop			;5708
	nop			;5709
	jr nc,$+21		;570a
	ld b,b			;570c
	inc de			;570d
	ld b,b			;570e
	inc de			;570f
	ld b,b			;5710
	inc d			;5711
	cp b			;5712
	ld b,b			;5713
	ld b,b			;5714
	ld b,b			;5715
	nop			;5716
	nop			;5717
	nop			;5718
	nop			;5719
	djnz l569ch		;571a
	djnz l569eh		;571c
	djnz l56a0h		;571e
	inc d			;5720
	cp b			;5721
	add a,e			;5722
	add a,e			;5723
	add a,e			;5724
	nop			;5725
	nop			;5726
	nop			;5727
	cpl			;5728
	dec b			;5729
	ld b,b			;572a
	dec b			;572b
	ld b,b			;572c
	dec b			;572d
	ld b,b			;572e
	inc d			;572f
	cp b			;5730
	ld b,b			;5731
	ld b,b			;5732
	ld b,b			;5733
	nop			;5734
	nop			;5735
	nop			;5736
	jr nc,l5769h		;5737
	add a,b			;5739
	ex af,af'		;573a
	ld b,b			;573b
	ex af,af'		;573c
	ld b,b			;573d
l573eh:
	inc d			;573e
	cp b			;573f
	ld b,c			;5740
	ld b,c			;5741
	ld b,c			;5742
	nop			;5743
	nop			;5744
	nop			;5745
	inc hl			;5746
	dec a			;5747
	add a,b			;5748
	dec a			;5749
	add a,b			;574a
	dec a			;574b
	add a,b			;574c
	inc d			;574d
	cp b			;574e
	ld b,c			;574f
	ld b,c			;5750
	ld b,c			;5751
	nop			;5752
	nop			;5753
l5754h:
	nop			;5754
	nop			;5755
	inc c			;5756
	ld b,b			;5757
	inc c			;5758
	ld b,b			;5759
	inc c			;575a
	ld b,b			;575b
	inc d			;575c
	cp b			;575d
	ld b,d			;575e
	ld b,d			;575f
	ld b,d			;5760
	nop			;5761
	nop			;5762
	nop			;5763
	dec h			;5764
	add hl,bc		;5765
	ld b,b			;5766
	add hl,bc		;5767
	ld b,b			;5768
l5769h:
	add hl,bc		;5769
	ld b,b			;576a
	inc d			;576b
	cp b			;576c
	ld b,b			;576d
	ld b,b			;576e
	ld b,b			;576f
	nop			;5770
	nop			;5771
l5772h:
	nop			;5772
	jr nc,l577bh		;5773
	ld b,b			;5775
	ld b,040h		;5776
	ld b,040h		;5778
	inc d			;577a
l577bh:
	cp b			;577b
	ld b,b			;577c
	ld b,b			;577d
	ld b,b			;577e
	nop			;577f
	nop			;5780
l5781h:
	nop			;5781
	jr nc,l578ah		;5782
	ld b,b			;5784
	ld b,040h		;5785
	ld b,040h		;5787
	inc d			;5789
l578ah:
	cp b			;578a
	ld b,d			;578b
	ld b,d			;578c
	ld b,d			;578d
	nop			;578e
	nop			;578f
	nop			;5790
	nop			;5791
	nop			;5792
	nop			;5793
	nop			;5794
	nop			;5795
	nop			;5796
	nop			;5797
	nop			;5798
	ccf			;5799
	nop			;579a
	nop			;579b
	nop			;579c
	nop			;579d
	nop			;579e
	nop			;579f
	ret p			;57a0
	nop			;57a1
	nop			;57a2
	nop			;57a3
	nop			;57a4
	nop			;57a5
	nop			;57a6
	nop			;57a7
	ccf			;57a8
	nop			;57a9
	nop			;57aa
	nop			;57ab
	nop			;57ac
	nop			;57ad
	nop			;57ae
	ld b,b			;57af
	nop			;57b0
	nop			;57b1
	nop			;57b2
	nop			;57b3
	ld b,b			;57b4
	nop			;57b5
	dec b			;57b6
	sbc a,e			;57b7
	nop			;57b8
	nop			;57b9
	dec c			;57ba
	nop			;57bb
	nop			;57bc
	nop			;57bd
	dec h			;57be
	nop			;57bf
	nop			;57c0
	nop			;57c1
	nop			;57c2
	jr nz,l57c5h		;57c3
l57c5h:
	dec b			;57c5
	sbc a,e			;57c6
	nop			;57c7
	nop			;57c8
	ld b,c			;57c9
	nop			;57ca
	nop			;57cb
	nop			;57cc
	nop			;57cd
	nop			;57ce
	nop			;57cf
	nop			;57d0
	nop			;57d1
	jr nz,l5754h		;57d2
	dec b			;57d4
	sbc a,e			;57d5
	nop			;57d6
	nop			;57d7
	ld b,c			;57d8
	nop			;57d9
	nop			;57da
	nop			;57db
	nop			;57dc
	nop			;57dd
	nop			;57de
	nop			;57df
	nop			;57e0
	ld b,b			;57e1
	ld b,b			;57e2
	dec b			;57e3
	sbc a,e			;57e4
	nop			;57e5
	nop			;57e6
	ld b,b			;57e7
	nop			;57e8
	nop			;57e9
	nop			;57ea
	nop			;57eb
	nop			;57ec
	nop			;57ed
	nop			;57ee
	nop			;57ef
	jr nz,l5772h		;57f0
	dec b			;57f2
	sbc a,e			;57f3
	nop			;57f4
	nop			;57f5
	ld b,b			;57f6
	nop			;57f7
	nop			;57f8
	nop			;57f9
	nop			;57fa
	nop			;57fb
	nop			;57fc
	nop			;57fd
	nop			;57fe
	djnz l5781h		;57ff
	dec b			;5801
	sbc a,e			;5802
	nop			;5803
	nop			;5804
	ld b,b			;5805
	nop			;5806
	nop			;5807
	nop			;5808
	nop			;5809
	nop			;580a
	nop			;580b
	nop			;580c
	nop			;580d
	jr nz,l5850h		;580e
	dec b			;5810
	sbc a,e			;5811
	nop			;5812
	nop			;5813
	ld b,b			;5814
	nop			;5815
	nop			;5816
	nop			;5817
	jr nc,l581ah		;5818
l581ah:
	nop			;581a
	nop			;581b
	nop			;581c
	nop			;581d
	nop			;581e
	ld de,000bfh		;581f
	nop			;5822
	nop			;5823
	nop			;5824
	nop			;5825
	nop			;5826
	ret p			;5827
	nop			;5828
	nop			;5829
	nop			;582a
	nop			;582b
	nop			;582c
	nop			;582d
	ld de,000bfh		;582e
	nop			;5831
	nop			;5832
	nop			;5833
	nop			;5834
	nop			;5835
	nop			;5836
	nop			;5837
	nop			;5838
	nop			;5839
	nop			;583a
	nop			;583b
	nop			;583c
	nop			;583d
	ccf			;583e
	nop			;583f
	nop			;5840
	nop			;5841
	nop			;5842
	nop			;5843
	nop			;5844
	nop			;5845
	nop			;5846
	nop			;5847
	nop			;5848
	nop			;5849
	nop			;584a
	nop			;584b
	nop			;584c
	ccf			;584d
	nop			;584e
	nop			;584f
l5850h:
	nop			;5850
	nop			;5851
	nop			;5852
	nop			;5853
	nop			;5854
	nop			;5855
	nop			;5856
	nop			;5857
	nop			;5858
	nop			;5859
	nop			;585a
	nop			;585b
	ccf			;585c
	nop			;585d
	nop			;585e
	nop			;585f
	nop			;5860
	nop			;5861
	nop			;5862
	nop			;5863
	nop			;5864
	nop			;5865
	nop			;5866
	nop			;5867
	nop			;5868
	nop			;5869
	nop			;586a
	ccf			;586b
	nop			;586c
	nop			;586d
	nop			;586e
	nop			;586f
	nop			;5870
	nop			;5871
	nop			;5872
	nop			;5873
	nop			;5874
	nop			;5875
	nop			;5876
	nop			;5877
	nop			;5878
	nop			;5879
	ccf			;587a
	nop			;587b
	nop			;587c
	nop			;587d
	nop			;587e
	nop			;587f
	nop			;5880
	nop			;5881
	nop			;5882
	nop			;5883
	nop			;5884
	nop			;5885
	nop			;5886
	nop			;5887
	nop			;5888
	ccf			;5889
	nop			;588a
	nop			;588b
	nop			;588c
	nop			;588d
	nop			;588e
	nop			;588f
	nop			;5890
	nop			;5891
	nop			;5892
	nop			;5893
	nop			;5894
	nop			;5895
	nop			;5896
	nop			;5897
	ccf			;5898
	nop			;5899
	nop			;589a
	nop			;589b
	nop			;589c
	nop			;589d
	nop			;589e
	nop			;589f
	nop			;58a0
	nop			;58a1
	nop			;58a2
	nop			;58a3
	nop			;58a4
	nop			;58a5
	nop			;58a6
	ccf			;58a7
	nop			;58a8
	nop			;58a9
	nop			;58aa
	nop			;58ab
	nop			;58ac
	nop			;58ad
	nop			;58ae
	nop			;58af
	nop			;58b0
	nop			;58b1
	nop			;58b2
	nop			;58b3
	nop			;58b4
	nop			;58b5
	ccf			;58b6
	nop			;58b7
	nop			;58b8
	nop			;58b9
	nop			;58ba
	nop			;58bb
	nop			;58bc
	nop			;58bd
	nop			;58be
	nop			;58bf
	nop			;58c0
	nop			;58c1
	nop			;58c2
	nop			;58c3
	nop			;58c4
	ccf			;58c5
	nop			;58c6
	nop			;58c7
	nop			;58c8
	nop			;58c9
	nop			;58ca
	nop			;58cb
	nop			;58cc
	nop			;58cd
	nop			;58ce
	nop			;58cf
	nop			;58d0
	nop			;58d1
	nop			;58d2
	nop			;58d3
	ccf			;58d4
	nop			;58d5
	nop			;58d6
	nop			;58d7
	nop			;58d8
	nop			;58d9
	nop			;58da
	nop			;58db
	nop			;58dc
	nop			;58dd
	nop			;58de
	nop			;58df
	nop			;58e0
	nop			;58e1
	nop			;58e2
	ccf			;58e3
	nop			;58e4
	nop			;58e5
	nop			;58e6
	nop			;58e7
	nop			;58e8
	nop			;58e9
	nop			;58ea
	nop			;58eb
	nop			;58ec
	nop			;58ed
	nop			;58ee
	nop			;58ef
	nop			;58f0
	nop			;58f1
	ccf			;58f2
	nop			;58f3
	nop			;58f4
	nop			;58f5
	nop			;58f6
	nop			;58f7
	nop			;58f8
	nop			;58f9
	nop			;58fa
	nop			;58fb
	nop			;58fc
	nop			;58fd
	nop			;58fe
	nop			;58ff
sub_5900h:
	nop			;5900
	ccf			;5901
	nop			;5902
	nop			;5903
	nop			;5904
	nop			;5905
	nop			;5906
	nop			;5907
	nop			;5908
	nop			;5909
	nop			;590a
	nop			;590b
	nop			;590c
	nop			;590d
	nop			;590e
	nop			;590f
	ccf			;5910
	nop			;5911
	nop			;5912
	nop			;5913
	nop			;5914
	nop			;5915
	nop			;5916
	nop			;5917
	nop			;5918
	nop			;5919
	nop			;591a
	nop			;591b
	nop			;591c
	nop			;591d
	nop			;591e
	ccf			;591f
	nop			;5920
	nop			;5921
	nop			;5922
	nop			;5923
	nop			;5924
	nop			;5925
	nop			;5926
	nop			;5927
	nop			;5928
	nop			;5929
	nop			;592a
	nop			;592b
	nop			;592c
	nop			;592d
	ccf			;592e
	nop			;592f
	nop			;5930
	nop			;5931
	nop			;5932
	nop			;5933
	nop			;5934
	nop			;5935
	nop			;5936
	nop			;5937
	nop			;5938
	nop			;5939
	nop			;593a
	nop			;593b
	nop			;593c
	ccf			;593d
	nop			;593e
	nop			;593f
	nop			;5940
	nop			;5941
	nop			;5942
	nop			;5943
	nop			;5944
	nop			;5945
	nop			;5946
	nop			;5947
	nop			;5948
	nop			;5949
	nop			;594a
	nop			;594b
	ccf			;594c
	nop			;594d
	nop			;594e
	nop			;594f
	nop			;5950
	nop			;5951
	nop			;5952
	nop			;5953
	nop			;5954
	nop			;5955
	nop			;5956
	nop			;5957
	nop			;5958
	nop			;5959
	nop			;595a
	ccf			;595b
	nop			;595c
	nop			;595d
	nop			;595e
	nop			;595f
	nop			;5960
	nop			;5961
	nop			;5962
	nop			;5963
	nop			;5964
	nop			;5965
	nop			;5966
	nop			;5967
	nop			;5968
	nop			;5969
	ccf			;596a
	nop			;596b
	nop			;596c
	nop			;596d
	nop			;596e
	nop			;596f
	nop			;5970
	nop			;5971
	nop			;5972
	nop			;5973
	nop			;5974
	nop			;5975
	nop			;5976
	nop			;5977
	nop			;5978
	ccf			;5979
	nop			;597a
	nop			;597b
	nop			;597c
	nop			;597d
	nop			;597e
	nop			;597f
	nop			;5980
	nop			;5981
	nop			;5982
	nop			;5983
	nop			;5984
	nop			;5985
	nop			;5986
	nop			;5987
	ccf			;5988
	nop			;5989
	nop			;598a
	nop			;598b
	nop			;598c
	nop			;598d
	nop			;598e
	nop			;598f
	nop			;5990
	nop			;5991
	nop			;5992
	nop			;5993
	nop			;5994
	nop			;5995
	nop			;5996
	ccf			;5997
	nop			;5998
	nop			;5999
	nop			;599a
	nop			;599b
	nop			;599c
	nop			;599d
	nop			;599e
	nop			;599f
	nop			;59a0
	nop			;59a1
	nop			;59a2
	nop			;59a3
	nop			;59a4
	nop			;59a5
	ccf			;59a6
	nop			;59a7
	nop			;59a8
	nop			;59a9
	nop			;59aa
	nop			;59ab
	nop			;59ac
	nop			;59ad
	nop			;59ae
	nop			;59af
	nop			;59b0
	nop			;59b1
	nop			;59b2
	nop			;59b3
	nop			;59b4
	ccf			;59b5
	nop			;59b6
	nop			;59b7
	nop			;59b8
	nop			;59b9
	nop			;59ba
	nop			;59bb
	nop			;59bc
	nop			;59bd
	nop			;59be
	nop			;59bf
	nop			;59c0
	nop			;59c1
	nop			;59c2
	nop			;59c3
	ccf			;59c4
	nop			;59c5
	nop			;59c6
	nop			;59c7
	nop			;59c8
	nop			;59c9
	nop			;59ca
	nop			;59cb
	nop			;59cc
	nop			;59cd
	nop			;59ce
	nop			;59cf
	nop			;59d0
	nop			;59d1
	nop			;59d2
	ccf			;59d3
	nop			;59d4
	nop			;59d5
	nop			;59d6
	nop			;59d7
	nop			;59d8
	nop			;59d9
	nop			;59da
	nop			;59db
	nop			;59dc
	nop			;59dd
	nop			;59de
	nop			;59df
	nop			;59e0
	nop			;59e1
	ccf			;59e2
	nop			;59e3
	nop			;59e4
	nop			;59e5
	nop			;59e6
	nop			;59e7
	nop			;59e8
	nop			;59e9
	nop			;59ea
	nop			;59eb
	nop			;59ec
	nop			;59ed
	nop			;59ee
	nop			;59ef
	nop			;59f0
	ccf			;59f1
	nop			;59f2
	nop			;59f3
	nop			;59f4
	nop			;59f5
	nop			;59f6
	nop			;59f7
	nop			;59f8
	nop			;59f9
	nop			;59fa
	nop			;59fb
	nop			;59fc
	nop			;59fd
	nop			;59fe
	nop			;59ff
	ccf			;5a00
	nop			;5a01
	nop			;5a02
	nop			;5a03
	nop			;5a04
	nop			;5a05
	nop			;5a06
	nop			;5a07
	nop			;5a08
	nop			;5a09
	nop			;5a0a
	nop			;5a0b
	nop			;5a0c
	nop			;5a0d
	nop			;5a0e
	ccf			;5a0f
	nop			;5a10
	nop			;5a11
	nop			;5a12
	nop			;5a13
	nop			;5a14
	nop			;5a15
	nop			;5a16
	nop			;5a17
	nop			;5a18
	nop			;5a19
	nop			;5a1a
	nop			;5a1b
	nop			;5a1c
	nop			;5a1d
	ccf			;5a1e
	nop			;5a1f
	nop			;5a20
	nop			;5a21
	nop			;5a22
	nop			;5a23
	nop			;5a24
	nop			;5a25
	nop			;5a26
	nop			;5a27
	nop			;5a28
	nop			;5a29
	nop			;5a2a
	nop			;5a2b
	nop			;5a2c
	ccf			;5a2d
	nop			;5a2e
	nop			;5a2f
	nop			;5a30
	nop			;5a31
	nop			;5a32
	nop			;5a33
	nop			;5a34
	nop			;5a35
	nop			;5a36
	nop			;5a37
	nop			;5a38
	nop			;5a39
	nop			;5a3a
	nop			;5a3b
	ccf			;5a3c
	nop			;5a3d
	nop			;5a3e
	nop			;5a3f
	nop			;5a40
	nop			;5a41
	nop			;5a42
	nop			;5a43
	nop			;5a44
	nop			;5a45
	nop			;5a46
	nop			;5a47
	nop			;5a48
	nop			;5a49
	nop			;5a4a
	ccf			;5a4b
	nop			;5a4c
	nop			;5a4d
	nop			;5a4e
	nop			;5a4f
	nop			;5a50
	nop			;5a51
	nop			;5a52
	nop			;5a53
	nop			;5a54
	nop			;5a55
	nop			;5a56
	nop			;5a57
	nop			;5a58
	nop			;5a59
	ccf			;5a5a
	nop			;5a5b
	nop			;5a5c
	nop			;5a5d
	nop			;5a5e
	nop			;5a5f
	nop			;5a60
	nop			;5a61
	nop			;5a62
	nop			;5a63
	nop			;5a64
	nop			;5a65
	nop			;5a66
	nop			;5a67
	nop			;5a68
	ccf			;5a69
	nop			;5a6a
	nop			;5a6b
	nop			;5a6c
	nop			;5a6d
	nop			;5a6e
	nop			;5a6f
	nop			;5a70
	nop			;5a71
	nop			;5a72
	nop			;5a73
	nop			;5a74
	nop			;5a75
	nop			;5a76
	nop			;5a77
	ccf			;5a78
	nop			;5a79
	nop			;5a7a
	nop			;5a7b
	nop			;5a7c
	nop			;5a7d
	nop			;5a7e
	nop			;5a7f
	nop			;5a80
	nop			;5a81
	nop			;5a82
	nop			;5a83
	nop			;5a84
	nop			;5a85
	nop			;5a86
	ccf			;5a87
	nop			;5a88
	nop			;5a89
	nop			;5a8a
	nop			;5a8b
	nop			;5a8c
	nop			;5a8d
	nop			;5a8e
	nop			;5a8f
	nop			;5a90
	nop			;5a91
	nop			;5a92
	nop			;5a93
	nop			;5a94
	nop			;5a95
	ccf			;5a96
	nop			;5a97
	nop			;5a98
	nop			;5a99
	nop			;5a9a
	nop			;5a9b
	nop			;5a9c
	nop			;5a9d
	nop			;5a9e
	nop			;5a9f
	nop			;5aa0
	nop			;5aa1
	nop			;5aa2
	nop			;5aa3
	nop			;5aa4
	ccf			;5aa5
	nop			;5aa6
	nop			;5aa7
	nop			;5aa8
	nop			;5aa9
	nop			;5aaa
	nop			;5aab
	nop			;5aac
	nop			;5aad
	nop			;5aae
	nop			;5aaf
	nop			;5ab0
	nop			;5ab1
	nop			;5ab2
	nop			;5ab3
	ccf			;5ab4
	nop			;5ab5
	nop			;5ab6
	nop			;5ab7
	nop			;5ab8
	nop			;5ab9
	nop			;5aba
	nop			;5abb
	nop			;5abc
	nop			;5abd
	nop			;5abe
	nop			;5abf
	nop			;5ac0
	nop			;5ac1
	nop			;5ac2
	ccf			;5ac3
	nop			;5ac4
	nop			;5ac5
	nop			;5ac6
	nop			;5ac7
	nop			;5ac8
	nop			;5ac9
	nop			;5aca
	nop			;5acb
	nop			;5acc
	nop			;5acd
	nop			;5ace
	nop			;5acf
	nop			;5ad0
	nop			;5ad1
	ccf			;5ad2
	nop			;5ad3
	nop			;5ad4
	nop			;5ad5
	nop			;5ad6
	nop			;5ad7
	nop			;5ad8
	nop			;5ad9
	nop			;5ada
	nop			;5adb
	nop			;5adc
	nop			;5add
	nop			;5ade
	nop			;5adf
	nop			;5ae0
	ccf			;5ae1
	nop			;5ae2
	nop			;5ae3
	nop			;5ae4
	nop			;5ae5
	nop			;5ae6
	nop			;5ae7
	nop			;5ae8
	nop			;5ae9
	nop			;5aea
	nop			;5aeb
	nop			;5aec
	nop			;5aed
	nop			;5aee
	nop			;5aef
	ccf			;5af0
	nop			;5af1
	nop			;5af2
	nop			;5af3
	nop			;5af4
	nop			;5af5
	nop			;5af6
	nop			;5af7
	nop			;5af8
	nop			;5af9
	nop			;5afa
	nop			;5afb
	nop			;5afc
	nop			;5afd
	nop			;5afe
	ccf			;5aff
	nop			;5b00
	nop			;5b01
	nop			;5b02
	nop			;5b03
	nop			;5b04
	nop			;5b05
	nop			;5b06
	nop			;5b07
	nop			;5b08
	nop			;5b09
	nop			;5b0a
	nop			;5b0b
	nop			;5b0c
	nop			;5b0d
	ccf			;5b0e
	nop			;5b0f
	nop			;5b10
	nop			;5b11
	nop			;5b12
	nop			;5b13
	nop			;5b14
	nop			;5b15
	nop			;5b16
	nop			;5b17
	nop			;5b18
	nop			;5b19
	nop			;5b1a
	nop			;5b1b
	nop			;5b1c
	ccf			;5b1d
	nop			;5b1e
	nop			;5b1f
	nop			;5b20
	nop			;5b21
	nop			;5b22
	nop			;5b23
	nop			;5b24
	nop			;5b25
	nop			;5b26
	nop			;5b27
	nop			;5b28
	nop			;5b29
	nop			;5b2a
	nop			;5b2b
	ccf			;5b2c
	nop			;5b2d
	nop			;5b2e
	nop			;5b2f
	nop			;5b30
	nop			;5b31
	nop			;5b32
	nop			;5b33
	nop			;5b34
	nop			;5b35
	nop			;5b36
	nop			;5b37
	nop			;5b38
	nop			;5b39
	nop			;5b3a
	ccf			;5b3b
	nop			;5b3c
	nop			;5b3d
	nop			;5b3e
	nop			;5b3f
	nop			;5b40
	nop			;5b41
	nop			;5b42
	nop			;5b43
	nop			;5b44
	nop			;5b45
	nop			;5b46
	nop			;5b47
	nop			;5b48
	nop			;5b49
	ccf			;5b4a
	nop			;5b4b
	nop			;5b4c
	nop			;5b4d
	nop			;5b4e
	nop			;5b4f
	nop			;5b50
	nop			;5b51
	nop			;5b52
	nop			;5b53
	nop			;5b54
	nop			;5b55
	nop			;5b56
	nop			;5b57
	nop			;5b58
	ccf			;5b59
	nop			;5b5a
	nop			;5b5b
	nop			;5b5c
	nop			;5b5d
	nop			;5b5e
	nop			;5b5f
	nop			;5b60
	nop			;5b61
	nop			;5b62
	nop			;5b63
	nop			;5b64
	nop			;5b65
	nop			;5b66
	nop			;5b67
	ccf			;5b68
	nop			;5b69
	nop			;5b6a
	nop			;5b6b
	nop			;5b6c
	nop			;5b6d
	nop			;5b6e
	nop			;5b6f
	nop			;5b70
	nop			;5b71
	nop			;5b72
	nop			;5b73
	nop			;5b74
	nop			;5b75
	nop			;5b76
	ccf			;5b77
	nop			;5b78
	nop			;5b79
	nop			;5b7a
	nop			;5b7b
	nop			;5b7c
	nop			;5b7d
	nop			;5b7e
	nop			;5b7f
	nop			;5b80
	nop			;5b81
	nop			;5b82
	nop			;5b83
	nop			;5b84
	nop			;5b85
	ccf			;5b86
	nop			;5b87
	nop			;5b88
	nop			;5b89
	nop			;5b8a
	nop			;5b8b
	nop			;5b8c
	nop			;5b8d
	nop			;5b8e
	nop			;5b8f
	nop			;5b90
	nop			;5b91
	nop			;5b92
	nop			;5b93
	nop			;5b94
	ccf			;5b95
	nop			;5b96
	nop			;5b97
	nop			;5b98
	nop			;5b99
	nop			;5b9a
	nop			;5b9b
	nop			;5b9c
	nop			;5b9d
	nop			;5b9e
	nop			;5b9f
	nop			;5ba0
	nop			;5ba1
	nop			;5ba2
	nop			;5ba3
	ccf			;5ba4
	nop			;5ba5
	nop			;5ba6
	nop			;5ba7
	nop			;5ba8
	nop			;5ba9
	nop			;5baa
	nop			;5bab
	nop			;5bac
	nop			;5bad
	nop			;5bae
	nop			;5baf
	nop			;5bb0
	nop			;5bb1
	nop			;5bb2
	ccf			;5bb3
	nop			;5bb4
	nop			;5bb5
	nop			;5bb6
	nop			;5bb7
	nop			;5bb8
	nop			;5bb9
	nop			;5bba
	nop			;5bbb
	nop			;5bbc
	nop			;5bbd
	nop			;5bbe
	nop			;5bbf
	nop			;5bc0
	nop			;5bc1
	ccf			;5bc2
	nop			;5bc3
	nop			;5bc4
	nop			;5bc5
	nop			;5bc6
	nop			;5bc7
	nop			;5bc8
	nop			;5bc9
	nop			;5bca
	nop			;5bcb
	nop			;5bcc
	nop			;5bcd
	nop			;5bce
	nop			;5bcf
	nop			;5bd0
	ccf			;5bd1
	nop			;5bd2
	nop			;5bd3
	nop			;5bd4
	nop			;5bd5
	nop			;5bd6
	nop			;5bd7
	nop			;5bd8
	nop			;5bd9
	nop			;5bda
	nop			;5bdb
	nop			;5bdc
	nop			;5bdd
	nop			;5bde
	nop			;5bdf
	ccf			;5be0
	nop			;5be1
	nop			;5be2
	nop			;5be3
	nop			;5be4
	nop			;5be5
	nop			;5be6
	nop			;5be7
	nop			;5be8
	nop			;5be9
	nop			;5bea
	nop			;5beb
	nop			;5bec
	nop			;5bed
	nop			;5bee
	ccf			;5bef
	nop			;5bf0
	nop			;5bf1
	nop			;5bf2
	nop			;5bf3
	nop			;5bf4
	nop			;5bf5
	nop			;5bf6
	nop			;5bf7
	nop			;5bf8
	nop			;5bf9
	nop			;5bfa
	nop			;5bfb
	nop			;5bfc
	nop			;5bfd
	ccf			;5bfe
	nop			;5bff
	nop			;5c00
	nop			;5c01
	nop			;5c02
	nop			;5c03
	nop			;5c04
	nop			;5c05
	nop			;5c06
	nop			;5c07
	nop			;5c08
	nop			;5c09
	nop			;5c0a
	nop			;5c0b
	nop			;5c0c
	ccf			;5c0d
	nop			;5c0e
	nop			;5c0f
	nop			;5c10
	nop			;5c11
l5c12h:
	nop			;5c12
	nop			;5c13
	nop			;5c14
	nop			;5c15
	nop			;5c16
	nop			;5c17
	nop			;5c18
	nop			;5c19
	nop			;5c1a
	nop			;5c1b
	ccf			;5c1c
	nop			;5c1d
	nop			;5c1e
	nop			;5c1f
	nop			;5c20
	nop			;5c21
	nop			;5c22
	nop			;5c23
	nop			;5c24
	nop			;5c25
	nop			;5c26
	nop			;5c27
	nop			;5c28
	nop			;5c29
	nop			;5c2a
	ccf			;5c2b
	nop			;5c2c
	nop			;5c2d
	nop			;5c2e
	nop			;5c2f
	nop			;5c30
	nop			;5c31
	nop			;5c32
	nop			;5c33
	nop			;5c34
	nop			;5c35
	nop			;5c36
	nop			;5c37
	nop			;5c38
	nop			;5c39
	ccf			;5c3a
	nop			;5c3b
	nop			;5c3c
	nop			;5c3d
	nop			;5c3e
	nop			;5c3f
	nop			;5c40
	nop			;5c41
	nop			;5c42
	nop			;5c43
	nop			;5c44
	nop			;5c45
	nop			;5c46
	nop			;5c47
	nop			;5c48
	ccf			;5c49
	nop			;5c4a
	nop			;5c4b
	nop			;5c4c
	nop			;5c4d
	nop			;5c4e
	nop			;5c4f
	nop			;5c50
	nop			;5c51
	nop			;5c52
	nop			;5c53
	nop			;5c54
	nop			;5c55
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
l5d06h:
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
l6000h:
	ld c,l			;6000
	ld h,c			;6001
	ld l,(hl)		;6002
	ld h,d			;6003
	ld l,a			;6004
	ld (hl),a		;6005
	jr nz,l603ah		;6006
	jr nz,$+47		;6008
	jr nz,l6055h		;600a
	ld l,(hl)		;600c
	ld (hl),e		;600d
	ld l,c			;600e
	ld h,h			;600f
	ld h,l			;6010
	jr nz,l6060h		;6011
	ld h,c			;6013
	ld l,(hl)		;6014
	ld h,d			;6015
	ld l,a			;6016
	ld (hl),a		;6017
	jr nz,l6047h		;6018
	jr nz,l6064h		;601a
	ld h,l			;601c
	ld h,c			;601d
	ld (hl),d		;601e
	ld (hl),h		;601f
	ld h,d			;6020
	ld h,l			;6021
	ld h,c			;6022
	ld (hl),h		;6023
	jr nz,l6046h		;6024
	jr nz,l6048h		;6026
	jr nz,l604ah		;6028
	jr nz,l604ch		;602a
	jr nz,l604eh		;602c
	jr nz,l6050h		;602e
	jr nz,l6052h		;6030
	jr nz,l6054h		;6032
	jr nz,l6056h		;6034
	jr nz,l6058h		;6036
	jr nz,l605ah		;6038
l603ah:
	jr nz,l605ch		;603a
	jr nz,l605eh		;603c
	jr nz,l6060h		;603e
	jr nz,l6062h		;6040
	jr nz,l6091h		;6042
	ld d,l			;6044
	ld d,e			;6045
l6046h:
	ld c,c			;6046
l6047h:
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
	nop			;604e
	nop			;604f
l6050h:
	inc bc			;6050
	nop			;6051
l6052h:
	nop			;6052
	nop			;6053
l6054h:
	nop			;6054
l6055h:
	nop			;6055
l6056h:
	nop			;6056
	nop			;6057
l6058h:
	nop			;6058
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
l6064h:
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
l60dch:
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
sub_6148h:
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
	rla			;6157
	jr nc,l618bh		;6158
	jr nc,l60dch		;615a
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
l618bh:
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
	ld l,c			;61c2
	dec b			;61c3
	nop			;61c4
	nop			;61c5
	nop			;61c6
	nop			;61c7
	nop			;61c8
	nop			;61c9
	nop			;61ca
	jr l61ceh		;61cb
	dec b			;61cd
l61ceh:
	ld bc,00005h		;61ce
	nop			;61d1
	ld bc,00105h		;61d2
	dec b			;61d5
	nop			;61d6
	nop			;61d7
	ld bc,0010fh		;61d8
	rrca			;61db
	ld bc,00106h		;61dc
	rrca			;61df
	ld (bc),a		;61e0
	rrca			;61e1
	dec bc			;61e2
	nop			;61e3
	ld l,h			;61e4
	ld (bc),a		;61e5
	ld l,h			;61e6
	ld (bc),a		;61e7
	ld l,h			;61e8
	ld (bc),a		;61e9
	ld l,h			;61ea
	ld (bc),a		;61eb
	ld l,h			;61ec
	ld (bc),a		;61ed
	nop			;61ee
	nop			;61ef
	ld l,h			;61f0
	ld (bc),a		;61f1
	ld l,h			;61f2
	ld (bc),a		;61f3
	ld l,h			;61f4
	ld (bc),a		;61f5
	ld l,h			;61f6
	ld (bc),a		;61f7
	ld l,h			;61f8
	ld (bc),a		;61f9
	nop			;61fa
	nop			;61fb
	ld l,h			;61fc
	ld (bc),a		;61fd
	ld l,h			;61fe
	ld (bc),a		;61ff
	ld l,h			;6200
	ld (bc),a		;6201
	ld l,h			;6202
	ld (bc),a		;6203
	ld l,h			;6204
	ld (bc),a		;6205
	nop			;6206
	nop			;6207
	ld l,h			;6208
	ld (bc),a		;6209
	ld l,h			;620a
	ld (bc),a		;620b
	ld l,h			;620c
	ld (bc),a		;620d
	ld l,h			;620e
	ld (bc),a		;620f
	ld l,h			;6210
	ld (bc),a		;6211
	nop			;6212
	nop			;6213
	ld bc,l6b05h		;6214
	ld a,(bc)		;6217
	nop			;6218
	nop			;6219
	ld l,e			;621a
	ld a,(bc)		;621b
	ld l,e			;621c
	ld a,(bc)		;621d
	nop			;621e
	nop			;621f
	ld bc,l6b0fh		;6220
	dec b			;6223
	ld bc,l6b06h		;6224
	dec b			;6227
	ld l,e			;6228
	dec b			;6229
	dec bc			;622a
	nop			;622b
	ld l,h			;622c
	ld (bc),a		;622d
	ld l,h			;622e
	ld bc,0026ch		;622f
	ld l,h			;6232
	ld bc,0016ch		;6233
	nop			;6236
	nop			;6237
	ld l,h			;6238
	ld (bc),a		;6239
	ld l,h			;623a
	ld bc,0026ch		;623b
	ld l,h			;623e
	ld bc,0016ch		;623f
	nop			;6242
	nop			;6243
	ld l,h			;6244
	ld (bc),a		;6245
	ld l,h			;6246
	ld bc,0026ch		;6247
	ld l,h			;624a
	ld bc,0016ch		;624b
	nop			;624e
	nop			;624f
	ld l,h			;6250
	ld (bc),a		;6251
	ld l,h			;6252
	ld bc,0026ch		;6253
	ld l,h			;6256
	ld bc,0016ch		;6257
	nop			;625a
	nop			;625b
	nop			;625c
	nop			;625d
	ld l,h			;625e
	ld bc,00000h		;625f
	ld l,h			;6262
	ld bc,0016ch		;6263
	nop			;6266
	nop			;6267
	nop			;6268
	nop			;6269
	ld l,h			;626a
	ld bc,00000h		;626b
	ld l,h			;626e
	ld bc,0016ch		;626f
	nop			;6272
	rrca			;6273
	nop			;6274
	nop			;6275
	ld h,c			;6276
	nop			;6277
	nop			;6278
	nop			;6279
	ld h,c			;627a
	nop			;627b
	ld h,c			;627c
	nop			;627d
	nop			;627e
	ld bc,023ffh		;627f
	add hl,bc		;6282
	nop			;6283
	nop			;6284
	nop			;6285
	call 004efh		;6286
	call 005cfh		;6289
	xor a			;628c
	di			;628d
	inc b			;628e
	out (099h),a		;628f
	ld a,092h		;6291
	ei			;6293
	inc b			;6294
	xor a			;6295
	nop			;6296
	ld (044c8h),a		;6297
	ld a,(0f3e0h)		;629a
	and 0bfh		;629d
	dec (hl)		;629f
	ld (012e0h),a		;62a0
	add a,c			;62a3
	inc bc			;62a4
	nop			;62a5
	ld hl,l47c1h		;62a6
	call 002e9h		;62a9
	call sub_5900h		;62ac
	ld b,l			;62af
	ld a,057h		;62b0
	ld (l4692h),a		;62b2
	ld (09602h),a		;62b5
	ld b,(hl)		;62b8
	ld a,035h		;62b9
	ld (00793h),a		;62bb
	nop			;62be
	sub a			;62bf
	ld b,(hl)		;62c0
	ld a,(0c1b5h)		;62c1
	ld c,a			;62c4
	ld a,(020b6h)		;62c5
	pop bc			;62c8
	add a,c			;62c9
	inc b			;62ca
	sbc a,e			;62cb
	jp 001feh		;62cc
	nop			;62cf
	ld b,002h		;62d0
	jp z,l4066h		;62d2
	cp 003h			;62d5
	ld b,068h		;62d7
	inc bc			;62d9
	ld b,005h		;62da
	ld b,004h		;62dc
	pop de			;62de
	ld b,007h		;62df
	ld b,005h		;62e1
	ld b,080h		;62e3
	xor a			;62e5
	jp l406eh		;62e6
	ld a,c			;62e9
	ld a,(bc)		;62ea
	cp b			;62eb
	ld a,001h		;62ec
	jp z,l5d06h		;62ee
	nop			;62f1
	sbc a,c			;62f2
	jp l6f32h		;62f3
	ld b,c			;62f6
	call sub_4872h		;62f7
	ld b,e			;62fa
	ld a,c			;62fb
	inc e			;62fc
	jp z,l40b4h		;62fd
	add hl,sp		;6300
	nop			;6301
	ld b,001h		;6302
	cp b			;6304
	jp z,l40adh		;6305
	cp b			;6308
	dec a			;6309
	dec b			;630a
	ld (hl),b		;630b
	inc bc			;630c
	dec b			;630d
	inc b			;630e
	pop hl			;630f
	dec b			;6310
	dec b			;6311
	dec b			;6312
	jp 00506h		;6313
	add a,(hl)		;6316
	rlca			;6317
	dec b			;6318
	xor l			;6319
	jp l462fh		;631a
	jr nc,$-36		;631d
	or l			;631f
	ld b,(hl)		;6320
	ld (hl),b		;6321
	ld b,c			;6322
	jp nz,03c3ah		;6323
	ld (l4203h),a		;6326
	ld a,(0b750h)		;6329
	call nz,00d35h		;632c
	and h			;632f
	djnz $+8		;6330
	ret nc			;6332
	ld (00011h),hl		;6333
	ld c,b			;6336
	ld hl,l4623h		;6337
	call 00103h		;633a
	call 0f100h		;633d
	ld b,d			;6340
	ld a,044h		;6341
	ld hl,l43efh		;6343
	call 03008h		;6346
	call nz,0e611h		;6349
	ld a,(bc)		;634c
	ld c,a			;634d
	ld (l6000h),a		;634e
	ld b,h			;6351
	ld a,05eh		;6352
	ld (0445fh),a		;6354
	call sub_6148h		;6357
	rlca			;635a
	ld c,(hl)		;635b
	add a,0e9h		;635c
	ld c,(hl)		;635e
	add a,01ch		;635f
	ret c			;6361
	ld d,c			;6362
	ld c,l			;6363
	ld (024a8h),a		;6364
	ld d,h			;6367
	sbc a,b			;6368
	and e			;6369
	defb 0fdh,040h,032h ;illegal sequence	;636a
	ld b,l			;636d
	pop bc			;636e
	call sub_48c9h		;636f
	inc h			;6372
	call sub_5329h		;6373
	ld h,d			;6376
	ld d,e			;6377
	jp z,01744h		;6378
	xor h			;637b
	ld c,e			;637c
	ld d,b			;637d
	ld b,l			;637e
	ld d,00ah		;637f
	ret			;6381
	xor a			;6382
	ld hl,l5600h		;6383
	pop bc			;6386
	cp (hl)			;6387
	jp z,l412dh		;6388
	ld (hl),a		;638b
	jp l7131h		;638c
	ld b,c			;638f
	ld e,e			;6390
	call nz,0a15bh		;6391
	ld a,058h		;6394
	ld hl,007cbh		;6396
	ret nz			;6399
	ld h,b			;639a
	ld hl,0dddeh		;639b
	rlca			;639e
	jr c,l6413h		;639f
	ld h,e			;63a1
	jr c,l63f4h		;63a2
	ret p			;63a4
	jr c,l6419h		;63a5
	nop			;63a7
	add hl,sp		;63a8
	ld h,a			;63a9
	ret nz			;63aa
	add hl,sp		;63ab
	ld (hl),l		;63ac
	ld b,d			;63ad
	nop			;63ae
	nop			;63af
	nop			;63b0
	call sub_48feh		;63b1
	ld a,(0c39ah)		;63b4
	bit 1,a			;63b7
	jr nz,$-52		;63b9
	and c			;63bb
	jr z,$+116		;63bc
	ld b,d			;63be
	or a			;63bf
	ret nz			;63c0
	ret z			;63c1
	ld a,a			;63c2
	ld b,03ah		;63c3
	push hl			;63c5
	ld de,l4742h		;63c6
	ld a,(01183h)		;63c9
	cp b			;63cc
	ret z			;63cd
	out (028h),a		;63ce
	and 00ch		;63d0
	sbc a,a			;63d2
	adc a,b			;63d3
	add a,006h		;63d4
	and h			;63d6
	call po,00ec3h		;63d7
	scf			;63da
	ld c,c			;63db
	xor a			;63dc
	ld e,030h		;63dd
	inc b			;63df
	ld b,a			;63e0
	jp z,030cdh		;63e1
	ld (hl),e		;63e4
	and 030h		;63e5
	ld b,0c3h		;63e7
	inc l			;63e9
	dec a			;63ea
	ret z			;63eb
	dec hl			;63ec
	sub a			;63ed
	sub 02bh		;63ee
	sbc a,e			;63f0
	ld (hl),e		;63f1
	dec hl			;63f2
	add a,c			;63f3
l63f4h:
	ld h,a			;63f4
	jp nz,0cbdeh		;63f5
	jr l646eh		;63f8
	ld c,042h		;63fa
	ret			;63fc
	ld a,(03074h)		;63fd
	ld h,c			;6400
	ld b,0cdh		;6401
	inc de			;6403
	ld c,c			;6404
	rlca			;6405
	sub c			;6406
	sbc a,003h		;6407
	ld b,031h		;6409
	call sub_44bch		;640b
	add hl,bc		;640e
	ld (0d098h),hl		;640f
	ld b,d			;6412
l6413h:
	ld d,000h		;6413
	ld e,a			;6415
	ld hl,0e700h		;6416
l6419h:
	ld b,d			;6419
	add hl,de		;641a
	ld a,(hl)		;641b
	dec a			;641c
	jp nz,l4210h		;641d
	pop bc			;6420
	inc d			;6421
	ld e,d			;6422
	pop bc			;6423
	ret			;6424
	add hl,bc		;6425
	inc (hl)		;6426
	add hl,hl		;6427
	add hl,bc		;6428
	ld e,b			;6429
	pop bc			;642a
	nop			;642b
	ld a,(0c13eh)		;642c
	add a,00fh		;642f
	cp 049h			;6431
	jp c,02545h		;6433
	ld c,049h		;6436
	ld (0180bh),a		;6438
	adc a,b			;643b
	dec (hl)		;643c
	ld e,e			;643d
	ld e,c			;643e
	pop bc			;643f
	adc a,c			;6440
	and b			;6441
	ld e,c			;6442
	dec bc			;6443
	xor l			;6444
	ccf			;6445
	inc h			;6446
	ld l,e			;6447
	ld e,h			;6448
	add hl,bc		;6449
	ld c,c			;644a
	add hl,bc		;644b
	ld e,d			;644c
	ld c,l			;644d
	add hl,bc		;644e
	ld d,e			;644f
	sbc a,h			;6450
	add hl,bc		;6451
	ld (bc),a		;6452
	ld b,d			;6453
	or l			;6454
	ld e,l			;6455
	inc de			;6456
	ld b,(hl)		;6457
	add hl,bc		;6458
	xor l			;6459
	ld h,a			;645a
	add hl,bc		;645b
	ld l,e			;645c
	ld c,(hl)		;645d
	add hl,bc		;645e
	ld (hl),c		;645f
	add hl,bc		;6460
	ld d,d			;6461
	ld d,b			;6462
	add hl,bc		;6463
	ret			;6464
	add a,d			;6465
	ld b,h			;6466
	ld bc,0b883h		;6467
	inc hl			;646a
	sub c			;646b
	ret nz			;646c
	ld b,c			;646d
l646eh:
	cp 05fh			;646e
	ret z			;6470
	ld a,05fh		;6471
	jp 0111eh		;6473
	ret pe			;6476
	adc a,(hl)		;6477
	and a			;6478
	dec d			;6479
	inc de			;647a
	ld d,a			;647b
	dec d			;647c
	ld d,a			;647d
	dec d			;647e
	add a,0d2h		;647f
	ld (l42b1h),hl		;6481
	jp nc,0b83dh		;6484
	inc h			;6487
	ld d,h			;6488
	ld hl,01181h		;6489
	ld bc,0c1b2h		;648c
	jp z,l42cfh		;648f
	ld hl,008b5h		;6492
	ld (bc),a		;6495
	inc de			;6496
	pop bc			;6497
	inc (hl)		;6498
	ex de,hl		;6499
	inc (hl)		;649a
	jp (hl)			;649b
	ld a,01dh		;649c
	ld (hl),d		;649e
	ld a,(bc)		;649f
	ld (bc),a		;64a0
	inc bc			;64a1
	inc b			;64a2
	dec b			;64a3
	rst 0			;64a4
	ld bc,00908h		;64a5
	nop			;64a8
	ld b,000h		;64a9
	pop af			;64ab
	jr $+60			;64ac
	nop			;64ae
	ld d,l			;64af
	pop bc			;64b0
	cp 00bh			;64b1
	jp c,l43b1h		;64b3
	ld a,(0ae88h)		;64b6
	or a			;64b9
	jp nz,00900h		;64ba
	ld b,e			;64bd
	ld (hl),001h		;64be
	inc b			;64c0
	inc hl			;64c1
	ld a,(0c458h)		;64c2
	ld a,(bc)		;64c5
	inc d			;64c6
	ld a,(bc)		;64c7
	ld (bc),a		;64c8
	call z,01d0ah		;64c9
	ld l,e			;64cc
	rrca			;64cd
	dec e			;64ce
	ld e,c			;64cf
	ld (de),a		;64d0
	dec d			;64d1
	daa			;64d2
	ld (de),a		;64d3
	ld a,(l4512h)		;64d4
	ex de,hl		;64d7
	ld a,(bc)		;64d8
	ld h,032h		;64d9
	ld a,(bc)		;64db
	inc b			;64dc
	ld a,(bc)		;64dd
	ld sp,00a4dh		;64de
	ld b,h			;64e1
	ld a,(0cac1h)		;64e2
	ld b,h			;64e5
	ld de,00539h		;64e6
	cpl			;64e9
	ld (hl),e		;64ea
	inc d			;64eb
	ld c,l			;64ec
	rst 20h			;64ed
	ld (de),a		;64ee
	ld d,a			;64ef
	ld (de),a		;64f0
	ld (hl),d		;64f1
	ld b,012h		;64f2
	add hl,de		;64f4
	exx			;64f5
	ld (de),a		;64f6
	add a,l			;64f7
	inc h			;64f8
	inc l			;64f9
	ld l,d			;64fa
	ld (de),a		;64fb
	rlca			;64fc
	push hl			;64fd
	ld (de),a		;64fe
	ld e,055h		;64ff
	call z,sub_7d25h	;6501
	rst 20h			;6504
	ld d,l			;6505
	ld (de),a		;6506
	ld a,(de)		;6507
	ld (l5c12h),a		;6508
	call nz,0974bh		;650b
	ld b,04eh		;650e
	call nz,0972ch		;6510
	add hl,de		;6513
	ex af,af'		;6514
	push hl			;6515
	add hl,de		;6516
	add hl,sp		;6517
	add hl,de		;6518
	sbc a,006h		;6519
	ld sp,01950h		;651b
	or c			;651e
	add hl,de		;651f
	jr nz,l652bh		;6520
	add hl,de		;6522
	ld (hl),000h		;6523
	ld a,b			;6525
	ld (0e544h),a		;6526
	ret nz			;6529
	rst 20h			;652a
l652bh:
	sub (hl)		;652b
	add a,l			;652c
	ld h,d			;652d
	call c,00600h		;652e
	ld e,0c9h		;6531
	ld d,e			;6533
	ld b,l			;6534
	ld c,h			;6535
	ld b,l			;6536
	ld b,e			;6537
	nop			;6538
	ld d,h			;6539
	nop			;653a
	ld c,l			;653b
	ld b,c			;653c
	ld e,b			;653d
	ld c,c			;653e
	ld c,l			;653f
	ld d,l			;6540
	nop			;6541
	ld c,l			;6542
	ld e,e			;6543
	ld b,e			;6544
	ld d,d			;6545
	ld b,l			;6546
	ld b,h			;6547
	ld c,c			;6548
	ld d,h			;6549
	rrca			;654a
	ld d,e			;654b
	ld e,e			;654c
l654dh:
	ld d,l			;654d
	ld d,b			;654e
	ld (de),a		;654f
	nop			;6550
	ld c,h			;6551
	ld c,c			;6552
	ld d,(hl)		;6553
	ld b,l			;6554
	ex (sp),hl		;6555
	djnz $+44		;6556
	sub b			;6558
	ld e,e			;6559
	ld d,a			;655a
	ld b,l			;655b
	ld b,c			;655c
	ld (bc),a		;655d
	ld d,b			;655e
	ld c,a			;655f
	ld c,(hl)		;6560
	nop			;6561
	ld c,c			;6562
	ld c,(hl)		;6563
	rrca			;6564
	ld d,b			;6565
	ld d,d			;6566
	dec c			;6567
	dec l			;6568
	ld d,e			;6569
	ld c,e			;656a
	nop			;656b
	jr nz,l65c5h		;656c
	ld d,d			;656e
	inc sp			;656f
	ld b,l			;6570
	ld e,e			;6571
	ld b,l			;6572
	ld c,(hl)		;6573
	djnz l65b7h		;6574
	ld b,d			;6576
	ld c,h			;6577
	ld a,000h		;6578
	ld c,a			;657a
	ld d,b			;657b
	ld sp,l4954h		;657c
	jr nz,l65d3h		;657f
	ld h,002h		;6581
	ld c,c			;6583
	ld b,h			;6584
	ld e,e			;6585
	ld b,(hl)		;6586
	ld c,c			;6587
	ld d,c			;6588
	xor c			;6589
	ld a,(bc)		;658a
	dec d			;658b
	ld (02e57h),a		;658c
	ld d,d			;658f
	jr z,l65a3h		;6590
	ld b,l			;6592
	ld e,b			;6593
	add a,h			;6594
	ld (l4953h),a		;6595
	ld c,h			;6598
	rlca			;6599
	ld c,b			;659a
	ld a,(bc)		;659b
	ld b,c			;659c
	ld d,a			;659d
	ld c,e			;659e
	ld d,a			;659f
	ld b,(hl)		;65a0
	jr nc,l654dh		;65a1
l65a3h:
	scf			;65a3
	pop af			;65a4
	ld bc,l4d4ch		;65a5
	nop			;65a8
	ld b,c			;65a9
	ld d,l			;65aa
	ld d,h			;65ab
	ld c,a			;65ac
	ld (hl),h		;65ad
	ld b,b			;65ae
	dec sp			;65af
	ld b,e			;65b0
	nop			;65b1
	ld c,h			;65b2
	ld b,c			;65b3
	ld d,e			;65b4
	ret z			;65b5
	inc l			;65b6
l65b7h:
	nop			;65b7
	inc de			;65b8
	ld a,(de)		;65b9
	nop			;65ba
	or a			;65bb
	ret z			;65bc
	dec a			;65bd
	ld hl,l4437h		;65be
	jp z,l4ea4h		;65c1
	ld b,h			;65c4
l65c5h:
	ld b,029h		;65c5
	ld b,05ch		;65c7
	rla			;65c9
	ld b,0b9h		;65ca
	ld (l7206h),a		;65cc
	ccf			;65cf
	ld b,048h		;65d0
	push hl			;65d2
l65d3h:
	ld b,01eh		;65d3
	ld b,0cbh		;65d5
	ld c,a			;65d7
	ld b,096h		;65d8
	ld e,c			;65da
	ld b,0aeh		;65db
	ld a,(0b2b8h)		;65dd
	sbc a,l			;65e0
	pop bc			;65e1
	push hl			;65e2
	push de			;65e3
	pop hl			;65e4
	and e			;65e5
	pop de			;65e6
	rlca			;65e7
	dec l			;65e8
	sbc a,h			;65e9
	dec h			;65ea
	inc b			;65eb
	jp 0d7c9h		;65ec
	sub d			;65ef
	ret nc			;65f0
	ret nz			;65f1
	ld b,h			;65f2
	ld (hl),a		;65f3
	ld h,010h		;65f4
	push af			;65f6
	jp po,03a4dh		;65f7
	pop af			;65fa
	ld l,b			;65fb
	ld (bc),a		;65fc
	ld b,030h		;65fd
	call sub_4778h		;65ff
	xor 070h		;6602
	ld d,l			;6604
	inc b			;6605
	nop			;6606
	ld b,h			;6607
	inc bc			;6608
	ld (05701h),hl		;6609
	ld b,035h		;660c
	inc bc			;660e
	adc a,h			;660f
	add a,c			;6610
	ret pe			;6611
	nop			;6612
	ld (hl),a		;6613
	rlca			;6614
	call pe,0c509h		;6615
	push de			;6618
	inc c			;6619
	push hl			;661a
	exx			;661b
	ex af,af'		;661c
	push af			;661d
	dec b			;661e
	inc c			;661f
	push iy			;6620
	push ix			;6622
	xor l			;6624
	inc c			;6625
	dec b			;6626
	call 028ech		;6627
	or h			;662a
	add hl,de		;662b
	inc bc			;662c
	call 0e812h		;662d
	add hl,hl		;6630
	ret			;6631
	or b			;6632
l6633h:
	ld h,b			;6633
	ld d,h			;6634
	pop ix			;6635
	pop iy			;6637
	inc bc			;6639
	pop hl			;663a
	pop de			;663b
	pop bc			;663c
	pop af			;663d
	ex af,af'		;663e
	exx			;663f
	dec b			;6640
	ld b,b			;6641
	ei			;6642
	ret			;6643
	push af			;6644
	in a,(099h)		;6645
	rlca			;6647
	add hl,de		;6648
	jp c,l44f4h		;6649
	add hl,bc		;664c
	dec a			;664d
	add a,b			;664e
	di			;664f
	ld hl,00038h		;6650
	ld de,02f10h		;6653
	ld b,l			;6656
	ld bc,0ed5ah		;6657
	or b			;665a
	ld hl,02503h		;665b
	ld b,l			;665e
	ld (00039h),hl		;665f
	ld a,0d4h		;6662
	ld hl,(01b12h)		;6664
	ld b,l			;6667
	ld hl,01114h		;6668
	jr c,$+32		;666b
	jr l6633h		;666d
	dec c			;666f
	ld a,018h		;6670
	ld (01832h),a		;6672
	call c,0ae58h		;6675
	ld a,(de)		;6678
	add a,h			;6679
	inc b			;667a
	sbc a,b			;667b
	ld (0041ch),a		;667c
	ld c,b			;667f
	jr nz,l66b4h		;6680
	ld e,004h		;6682
	ld de,02032h		;6684
	ld b,(hl)		;6687
	inc sp			;6688
	ld hl,0a114h		;6689
	ld c,l			;668c
	ld a,033h		;668d
	ld e,06bh		;668f
	dec a			;6691
	ld e,097h		;6692
	ld e,05ah		;6694
	ld b,a			;6696
	ld e,022h		;6697
l6699h:
	pop af			;6699
	ld e,06bh		;669a
	inc (hl)		;669c
	ld e,03eh		;669d
	ld e,05ah		;669f
	sub e			;66a1
	ld e,043h		;66a2
	rst 10h			;66a4
	ld e,000h		;66a5
	ld e,08bh		;66a7
	dec (hl)		;66a9
	ld e,05ah		;66aa
	ccf			;66ac
	ld e,092h		;66ad
	rst 10h			;66af
	ld e,042h		;66b0
	ld e,h			;66b2
	or a			;66b3
l66b4h:
	ld e,08bh		;66b4
	sub c			;66b6
	ld e,05eh		;66b7
	ld b,c			;66b9
	ld e,h			;66ba
	rst 8			;66bb
	ld (hl),01eh		;66bc
	rlca			;66be
	adc a,a			;66bf
	ld e,083h		;66c0
	inc sp			;66c2
	ld e,0c1h		;66c3
	ret			;66c5
	and e			;66c6
	ld hl,(0e8ffh)		;66c7
	ld bc,0014bh		;66ca
	ld l,l			;66cd
	add a,b			;66ce
	ld c,0f5h		;66cf
	inc bc			;66d1
	ld b,b			;66d2
	nop			;66d3
	sub b			;66d4
	inc bc			;66d5
	nop			;66d6
	inc sp			;66d7
	ld bc,00ec0h		;66d8
	rra			;66db
	dec e			;66dc
	rra			;66dd
	add hl,de		;66de
	ld c,000h		;66df
	nop			;66e1
	ld e,c			;66e2
	ld (bc),a		;66e3
	ld b,01dh		;66e4
	push af			;66e6
	or a			;66e7
	inc b			;66e8
	nop			;66e9
	rrca			;66ea
	ret			;66eb
	dec b			;66ec
	nop			;66ed
	cp (hl)			;66ee
	rrca			;66ef
	ld b,(hl)		;66f0
	ld d,a			;66f1
	dec (hl)		;66f2
	inc bc			;66f3
	call z,0ec21h		;66f4
	dec bc			;66f7
	cp 003h			;66f8
	call 0803ah		;66fa
	push bc			;66fd
	jp c,03a82h		;66fe
	adc a,a			;6701
	ld b,a			;6702
	sbc a,e			;6703
	ld l,d			;6704
	inc bc			;6705
	rlca			;6706
	jr nc,l6699h		;6707
	ld b,a			;6709
	ld b,021h		;670a
	sub c			;670c
	inc a			;670d
	ld b,a			;670e
	ld de,0a486h		;670f
	call c,sub_7203h	;6712
	ld b,a			;6715
	inc hl			;6716
	inc de			;6717
	djnz $-5		;6718
	sub d			;671a
	ret nc			;671b
	ld de,086f1h		;671c
	ld c,010h		;671f
	ld a,(hl)		;6721
	add a,a			;6722
	nop			;6723
	ld bc,02323h		;6724
	ld c,(hl)		;6727
	add a,c			;6728
	dec hl			;6729
	ld c,(hl)		;672a
	dec b			;672b
	inc b			;672c
	ld (de),a		;672d
	inc de			;672e
	ld a,c			;672f
	ld (de),a		;6730
	dec de			;6731
	call pe,0213dh		;6732
	pop af			;6735
	xor (hl)		;6736
	ld b,l			;6737
	ld a,(0c398h)		;6738
	ld a,003h		;673b
	ld e,h			;673d
	and c			;673e
	ld a,(bc)		;673f
	jp z,0d205h		;6740
	ld c,b			;6743
	ld d,d			;6744
	ld b,050h		;6745
	ret nz			;6747
	dec (hl)		;6748
	xor a			;6749
l674ah:
	inc hl			;674a
	djnz l674ah		;674b
	dec de			;674d
	ret			;674e
	ld a,(de)		;674f
	cp (hl)			;6750
	push hl			;6751
	add hl,de		;6752
	ld (de),a		;6753
	ret			;6754
	dec c			;6755
	push af			;6756
	and b			;6757
	cp 0ffh			;6758
	jr nz,l676ch		;675a
	ld bc,l77afh		;675c
	inc d			;675f
	push af			;6760
	call sub_7034h		;6761
	ld b,a			;6764
	ld hl,(025c9h)		;6765
	ld (bc),a		;6768
	ld (bc),a		;6769
	sub c			;676a
	ld d,(hl)		;676b
l676ch:
	inc b			;676c
	ld bc,00c9dh		;676d
	ld (bc),a		;6770
	or e			;6771
	or e			;6772
	or c			;6773
	dec d			;6774
	inc bc			;6775
	sbc a,(hl)		;6776
	ld c,e			;6777
	cp a			;6778
	or d			;6779
	rlca			;677a
	nop			;677b
	sub a			;677c
	defb 0fdh,0b3h,000h ;illegal sequence	;677d
	rst 30h			;6780
	add a,l			;6781
	ld a,(0c1b7h)		;6782
	or 08dh			;6785
	cp b			;6787
	pop de			;6788
	add hl,bc		;6789
	dec h			;678a
	ld c,b			;678b
	ld b,0c3h		;678c
	ld b,0a3h		;678e
	ld hl,0c1ceh		;6790
	and 0f2h		;6793
	and l			;6795
	cpl			;6796
	rst 28h			;6797
	call z,sub_6b04h	;6798
	ld e,c			;679b
	inc b			;679c
	ld b,(hl)		;679d
	inc b			;679e
	ld (hl),h		;679f
	xor a			;67a0
	add a,004h		;67a1
	ld e,h			;67a3
	inc b			;67a4
	jp pe,09a89h		;67a5
	ld d,l			;67a8
	ld c,b			;67a9
	sub a			;67aa
	cp a			;67ab
	push hl			;67ac
	sub a			;67ad
	ex af,af'		;67ae
	add a,l			;67af
	inc e			;67b0
	inc de			;67b1
l67b2h:
	jr l67b2h		;67b2
	ld (bc),a		;67b4
	dec c			;67b5
	ld h,e			;67b6
	sbc a,b			;67b7
	dec c			;67b8
	nop			;67b9
	dec c			;67ba
	ld c,(hl)		;67bb
	call nc,sub_5026h	;67bc
	inc b			;67bf
	call 02e14h		;67c0
	add a,0c9h		;67c3
	cp e			;67c5
	ld h,b			;67c6
	ld b,h			;67c7
	cp 001h			;67c8
	call z,0c735h		;67ca
	ld c,b			;67cd
	rlca			;67ce
	ld (bc),a		;67cf
	rlca			;67d0
	rst 20h			;67d1
	xor h			;67d2
	xor b			;67d3
	call nz,006cdh		;67d4
	adc a,c			;67d7
	call l7206h		;67d8
	ld e,h			;67db
	ld b,05ah		;67dc
	jp (hl)			;67de
	inc l			;67df
	ld e,d			;67e0
	inc h			;67e1
	sub 066h		;67e2
	ld l,e			;67e4
	ld d,04eh		;67e5
	ld b,097h		;67e7
	ld d,b			;67e9
	ld b,007h		;67ea
	ret			;67ec
	inc c			;67ed
	sub a			;67ee
l67efh:
	ld (bc),a		;67ef
	ret po			;67f0
	di			;67f1
	or 086h			;67f2
	ret z			;67f4
	inc b			;67f5
	out (099h),a		;67f6
	ld (0813eh),hl		;67f8
	inc bc			;67fb
	call 0d2a5h		;67fc
	jp (hl)			;67ff
	push af			;6800
	nop			;6801
	call 005aeh		;6802
	ld hl,l7400h		;6805
	ld e,h			;6808
	call 021abh		;6809
	ld bc,l4672h		;680c
	ld bc,02098h		;680f
	otir			;6812
	dec c			;6814
	dec (hl)		;6815
	ld a,b			;6816
	dec c			;6817
	ld (08a0dh),a		;6818
	ld b,b			;681b
	dec c			;681c
	or d			;681d
	ret p			;681e
	nop			;681f
	halt			;6820
	sub 00fh		;6821
	sub d			;6823
	rrca			;6824
	inc (hl)		;6825
	add a,b			;6826
	rrca			;6827
	ld a,00bh		;6828
	jr c,l67efh		;682a
	dec d			;682c
	cp l			;682d
	ld b,00ch		;682e
	ld (0c107h),a		;6830
	ld a,098h		;6833
	jp z,00408h		;6835
	cp c			;6838
	ld h,a			;6839
	ld b,0b1h		;683a
	ld e,a			;683c
	nop			;683d
	rst 38h			;683e
	ret p			;683f
	call 00512h		;6840
	call 00509h		;6843
	ld a,005h		;6846
	call 0050fh		;6848
	ld a,004h		;684b
	call 0050fh		;684d
	call 005a5h		;6850
	ld hl,l40f5h		;6853
	call 002e9h		;6856
	call 0050ch		;6859
	call 00313h		;685c
	call 005cch		;685f
	ld a,(l403fh+2)		;6862
	or a			;6865
	call nz,sub_4116h	;6866
	ld a,(l403fh+2)		;6869
	or a			;686c
	call z,sub_4129h	;686d
	ld a,(l4115h)		;6870
	dec a			;6873
	and 00fh		;6874
	ld (l4115h),a		;6876
	call sub_4042h		;6879
	ei			;687c
	halt			;687d
	jp 04019h		;687e
	ld bc,09f3ah		;6881
	jp l47cbh		;6884
	jp nz,l405fh		;6887
	bit 1,a			;688a
	jp nz,l4065h		;688c
	bit 2,a			;688f
	jp nz,l406ah		;6891
	bit 3,a			;6894
	jp nz,l407ch		;6896
	bit 4,a			;6899
	jp nz,l4090h		;689b
	ret			;689e
	ld a,001h		;689f
	ld (l403fh+2),a		;68a1
	ret			;68a4
	xor a			;68a5
	ld (l403fh+2),a		;68a6
	ret			;68a9
	ld a,(l403fh+2)		;68aa
	or a			;68ad
	ld hl,0c1dah		;68ae
	jp z,l4077h		;68b1
	ld hl,0c1d9h		;68b4
	ld a,(hl)		;68b7
	dec a			;68b8
	ret z			;68b9
	ld (hl),a		;68ba
	ret			;68bb
	ld a,(l403fh+2)		;68bc
	or a			;68bf
	ld hl,0c1dah		;68c0
	jp z,l4089h		;68c3
	ld hl,0c1d9h		;68c6
	ld a,(hl)		;68c9
	inc a			;68ca
	cp 011h			;68cb
	ret z			;68cd
	ld (hl),a		;68ce
	ret			;68cf
	ld hl,l40a5h		;68d0
	call 002e9h		;68d3
	ld a,005h		;68d6
	call 0050fh		;68d8
	call 0050ch		;68db
	call 0c62eh		;68de
	pop af			;68e1
	jp 0c400h		;68e2
	nop			;68e5
	nop			;68e6
	nop			;68e7
	nop			;68e8
	nop			;68e9
	nop			;68ea
	nop			;68eb
	nop			;68ec
	nop			;68ed
	nop			;68ee
	nop			;68ef
	nop			;68f0
	nop			;68f1
	nop			;68f2
	nop			;68f3
	nop			;68f4
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
	ld d,e			;6905
	ld h,l			;6906
	ld (hl),h		;6907
	ld (hl),h		;6908
	ld l,c			;6909
	ld l,(hl)		;690a
	ld h,a			;690b
	ld (hl),e		;690c
	ld b,h			;690d
	ld b,c			;690e
	ld d,h			;690f
	ld b,l			;6910
	ld c,(hl)		;6911
	ld b,a			;6912
	ld c,c			;6913
	ld c,(hl)		;6914
	ld b,l			;6915
	jr nz,l6938h		;6916
	ld b,e			;6918
	ld c,a			;6919
	ld c,l			;691a
	ld d,e			;691b
	ld h,c			;691c
	halt			;691d
	ld h,l			;691e
	ld b,h			;691f
	ld h,c			;6920
	ld (hl),h		;6921
	ld h,c			;6922
	ld h,h			;6923
	ld h,c			;6924
	ld (hl),h		;6925
	nop			;6926
	nop			;6927
	nop			;6928
	nop			;6929
	ld d,b			;692a
	nop			;692b
	ld (hl),d		;692c
	nop			;692d
	inc b			;692e
	nop			;692f
	ex af,af'		;6930
	nop			;6931
	ld de,0c001h		;6932
	nop			;6935
	nop			;6936
	inc sp			;6937
l6938h:
	inc bc			;6938
	ld h,l			;6939
	ld b,000h		;693a
	nop			;693c
	nop			;693d
	nop			;693e
	nop			;693f
	nop			;6940
	nop			;6941
	nop			;6942
	nop			;6943
	nop			;6944
	nop			;6945
	nop			;6946
	nop			;6947
	nop			;6948
	nop			;6949
	nop			;694a
	ld (hl),a		;694b
	rlca			;694c
	nop			;694d
	nop			;694e
	nop			;694f
	nop			;6950
	nop			;6951
	nop			;6952
	nop			;6953
	nop			;6954
	nop			;6955
	ld a,(l4115h)		;6956
	push af			;6959
	ld a,001h		;695a
	ld (l4115h),a		;695c
	call sub_413ch		;695f
	pop af			;6962
	ld (l4115h),a		;6963
	jp l414dh		;6966
	ld a,(l4115h)		;6969
	push af			;696c
	ld a,001h		;696d
	ld (l4115h),a		;696f
	call l414dh		;6972
	pop af			;6975
	ld (l4115h),a		;6976
	jp sub_413ch		;6979
	ld a,(0c1dah)		;697c
	ld b,a			;697f
	ld a,086h		;6980
	ld (l40ech),a		;6982
	ld a,050h		;6985
	ld (l40eah),a		;6987
	jp l415bh		;698a
	ld a,(0c1d9h)		;698d
	ld b,a			;6990
	ld a,05eh		;6991
	ld (l40ech),a		;6993
	ld a,050h		;6996
	ld (l40eah),a		;6998
	ld a,(l4115h)		;699b
	or a			;699e
	jp z,l4164h		;699f
	ld a,022h		;69a2
	ld (l40f2h),a		;69a4
	ld a,010h		;69a7
	sub b			;69a9
	ld c,a			;69aa
l69abh:
	push bc			;69ab
	ld hl,l40e6h		;69ac
	call 00103h		;69af
	ld a,(l40eah)		;69b2
	add a,006h		;69b5
	ld (l40eah),a		;69b7
	pop bc			;69ba
	djnz l69abh		;69bb
	ld a,(l4115h)		;69bd
	or a			;69c0
	jp z,l4186h		;69c1
	ld a,011h		;69c4
	ld (l40f2h),a		;69c6
	ld b,c			;69c9
	ld a,c			;69ca
	or a			;69cb
	ret z			;69cc
l69cdh:
	push bc			;69cd
	ld hl,l40e6h		;69ce
	call 00103h		;69d1
	ld a,(l40eah)		;69d4
	add a,006h		;69d7
	ld (l40eah),a		;69d9
	pop bc			;69dc
	djnz l69cdh		;69dd
	ret			;69df
	rst 38h			;69e0
	rst 38h			;69e1
	rst 38h			;69e2
	rst 38h			;69e3
	rst 38h			;69e4
	rst 38h			;69e5
	rst 38h			;69e6
	rst 38h			;69e7
	rst 38h			;69e8
	rst 38h			;69e9
	rst 38h			;69ea
	rst 38h			;69eb
	rst 38h			;69ec
	rst 38h			;69ed
	rst 38h			;69ee
	rst 38h			;69ef
	rst 38h			;69f0
	rst 38h			;69f1
	rst 38h			;69f2
	rst 38h			;69f3
	rst 38h			;69f4
	rst 38h			;69f5
	rst 38h			;69f6
	rst 38h			;69f7
	rst 38h			;69f8
	rst 38h			;69f9
	rst 38h			;69fa
	rst 38h			;69fb
	rst 38h			;69fc
	rst 38h			;69fd
	rst 38h			;69fe
	rst 38h			;69ff
	rst 38h			;6a00
	rst 38h			;6a01
	rst 38h			;6a02
	rst 38h			;6a03
	rst 38h			;6a04
	rst 38h			;6a05
	rst 38h			;6a06
	rst 38h			;6a07
	rst 38h			;6a08
	rst 38h			;6a09
	rst 38h			;6a0a
	rst 38h			;6a0b
	rst 38h			;6a0c
	rst 38h			;6a0d
	rst 38h			;6a0e
	rst 38h			;6a0f
	rst 38h			;6a10
	rst 38h			;6a11
	rst 38h			;6a12
	rst 38h			;6a13
	rst 38h			;6a14
	rst 38h			;6a15
	rst 38h			;6a16
	rst 38h			;6a17
	rst 38h			;6a18
	rst 38h			;6a19
	rst 38h			;6a1a
	rst 38h			;6a1b
	rst 38h			;6a1c
	rst 38h			;6a1d
	rst 38h			;6a1e
	rst 38h			;6a1f
	rst 38h			;6a20
	rst 38h			;6a21
	rst 38h			;6a22
	rst 38h			;6a23
	rst 38h			;6a24
	rst 38h			;6a25
	rst 38h			;6a26
	rst 38h			;6a27
	rst 38h			;6a28
	rst 38h			;6a29
	rst 38h			;6a2a
	rst 38h			;6a2b
	rst 38h			;6a2c
	rst 38h			;6a2d
	rst 38h			;6a2e
	rst 38h			;6a2f
	rst 38h			;6a30
	rst 38h			;6a31
	rst 38h			;6a32
	rst 38h			;6a33
	rst 38h			;6a34
	rst 38h			;6a35
	rst 38h			;6a36
	rst 38h			;6a37
	rst 38h			;6a38
	rst 38h			;6a39
	rst 38h			;6a3a
	rst 38h			;6a3b
	rst 38h			;6a3c
	rst 38h			;6a3d
	rst 38h			;6a3e
	rst 38h			;6a3f
	rst 38h			;6a40
	rst 38h			;6a41
	rst 38h			;6a42
	rst 38h			;6a43
	rst 38h			;6a44
	rst 38h			;6a45
	rst 38h			;6a46
	rst 38h			;6a47
	rst 38h			;6a48
	rst 38h			;6a49
	rst 38h			;6a4a
	rst 38h			;6a4b
	rst 38h			;6a4c
	rst 38h			;6a4d
	rst 38h			;6a4e
	rst 38h			;6a4f
	rst 38h			;6a50
	rst 38h			;6a51
	rst 38h			;6a52
	rst 38h			;6a53
	rst 38h			;6a54
	rst 38h			;6a55
	rst 38h			;6a56
	rst 38h			;6a57
	rst 38h			;6a58
	rst 38h			;6a59
	rst 38h			;6a5a
	rst 38h			;6a5b
	rst 38h			;6a5c
	rst 38h			;6a5d
	rst 38h			;6a5e
	rst 38h			;6a5f
	rst 38h			;6a60
	rst 38h			;6a61
	rst 38h			;6a62
	rst 38h			;6a63
	rst 38h			;6a64
	rst 38h			;6a65
	rst 38h			;6a66
	rst 38h			;6a67
	rst 38h			;6a68
	rst 38h			;6a69
	rst 38h			;6a6a
	rst 38h			;6a6b
	rst 38h			;6a6c
	rst 38h			;6a6d
	rst 38h			;6a6e
	rst 38h			;6a6f
	rst 38h			;6a70
	rst 38h			;6a71
	rst 38h			;6a72
	rst 38h			;6a73
	rst 38h			;6a74
	rst 38h			;6a75
	rst 38h			;6a76
	rst 38h			;6a77
	rst 38h			;6a78
	rst 38h			;6a79
	rst 38h			;6a7a
	rst 38h			;6a7b
	rst 38h			;6a7c
	rst 38h			;6a7d
	rst 38h			;6a7e
	rst 38h			;6a7f
	rst 38h			;6a80
	rst 38h			;6a81
	rst 38h			;6a82
	rst 38h			;6a83
	rst 38h			;6a84
	rst 38h			;6a85
	rst 38h			;6a86
	rst 38h			;6a87
	rst 38h			;6a88
	rst 38h			;6a89
	rst 38h			;6a8a
	rst 38h			;6a8b
	rst 38h			;6a8c
	rst 38h			;6a8d
	rst 38h			;6a8e
	rst 38h			;6a8f
	rst 38h			;6a90
	rst 38h			;6a91
	rst 38h			;6a92
	rst 38h			;6a93
	rst 38h			;6a94
	rst 38h			;6a95
	rst 38h			;6a96
	rst 38h			;6a97
	rst 38h			;6a98
	rst 38h			;6a99
	rst 38h			;6a9a
	rst 38h			;6a9b
	rst 38h			;6a9c
	rst 38h			;6a9d
	rst 38h			;6a9e
	rst 38h			;6a9f
	rst 38h			;6aa0
	rst 38h			;6aa1
	rst 38h			;6aa2
	rst 38h			;6aa3
	rst 38h			;6aa4
	rst 38h			;6aa5
	rst 38h			;6aa6
	rst 38h			;6aa7
	rst 38h			;6aa8
	rst 38h			;6aa9
	rst 38h			;6aaa
	rst 38h			;6aab
	rst 38h			;6aac
	rst 38h			;6aad
	rst 38h			;6aae
	rst 38h			;6aaf
	rst 38h			;6ab0
	rst 38h			;6ab1
	rst 38h			;6ab2
	rst 38h			;6ab3
	rst 38h			;6ab4
	rst 38h			;6ab5
	rst 38h			;6ab6
	rst 38h			;6ab7
	rst 38h			;6ab8
	rst 38h			;6ab9
	rst 38h			;6aba
	rst 38h			;6abb
	rst 38h			;6abc
	rst 38h			;6abd
	rst 38h			;6abe
	rst 38h			;6abf
	rst 38h			;6ac0
	rst 38h			;6ac1
	rst 38h			;6ac2
	rst 38h			;6ac3
	rst 38h			;6ac4
	rst 38h			;6ac5
	rst 38h			;6ac6
	rst 38h			;6ac7
	rst 38h			;6ac8
	rst 38h			;6ac9
	rst 38h			;6aca
	rst 38h			;6acb
	rst 38h			;6acc
	rst 38h			;6acd
	rst 38h			;6ace
	rst 38h			;6acf
	rst 38h			;6ad0
	rst 38h			;6ad1
	rst 38h			;6ad2
	rst 38h			;6ad3
	rst 38h			;6ad4
	rst 38h			;6ad5
	rst 38h			;6ad6
	rst 38h			;6ad7
	rst 38h			;6ad8
	rst 38h			;6ad9
	rst 38h			;6ada
	rst 38h			;6adb
	rst 38h			;6adc
	rst 38h			;6add
	rst 38h			;6ade
	rst 38h			;6adf
	rst 38h			;6ae0
	rst 38h			;6ae1
	rst 38h			;6ae2
	rst 38h			;6ae3
	rst 38h			;6ae4
	rst 38h			;6ae5
	rst 38h			;6ae6
	rst 38h			;6ae7
	rst 38h			;6ae8
	rst 38h			;6ae9
	rst 38h			;6aea
	rst 38h			;6aeb
	rst 38h			;6aec
	rst 38h			;6aed
	rst 38h			;6aee
	rst 38h			;6aef
	rst 38h			;6af0
	rst 38h			;6af1
	rst 38h			;6af2
	rst 38h			;6af3
	rst 38h			;6af4
	rst 38h			;6af5
	rst 38h			;6af6
	rst 38h			;6af7
	rst 38h			;6af8
	rst 38h			;6af9
	rst 38h			;6afa
	rst 38h			;6afb
	rst 38h			;6afc
	rst 38h			;6afd
	rst 38h			;6afe
	rst 38h			;6aff
	rst 38h			;6b00
	rst 38h			;6b01
	rst 38h			;6b02
	rst 38h			;6b03
sub_6b04h:
	rst 38h			;6b04
l6b05h:
	rst 38h			;6b05
l6b06h:
	rst 38h			;6b06
	rst 38h			;6b07
	rst 38h			;6b08
	rst 38h			;6b09
	rst 38h			;6b0a
	rst 38h			;6b0b
	rst 38h			;6b0c
	rst 38h			;6b0d
	rst 38h			;6b0e
l6b0fh:
	rst 38h			;6b0f
	rst 38h			;6b10
	rst 38h			;6b11
	rst 38h			;6b12
	rst 38h			;6b13
	rst 38h			;6b14
	rst 38h			;6b15
	rst 38h			;6b16
	rst 38h			;6b17
	rst 38h			;6b18
	rst 38h			;6b19
	rst 38h			;6b1a
	rst 38h			;6b1b
	rst 38h			;6b1c
	rst 38h			;6b1d
	rst 38h			;6b1e
	rst 38h			;6b1f
	rst 38h			;6b20
	rst 38h			;6b21
	rst 38h			;6b22
	rst 38h			;6b23
	rst 38h			;6b24
	rst 38h			;6b25
	rst 38h			;6b26
	rst 38h			;6b27
	rst 38h			;6b28
	rst 38h			;6b29
	rst 38h			;6b2a
	rst 38h			;6b2b
	rst 38h			;6b2c
	rst 38h			;6b2d
	rst 38h			;6b2e
	rst 38h			;6b2f
	rst 38h			;6b30
	rst 38h			;6b31
	rst 38h			;6b32
	rst 38h			;6b33
	rst 38h			;6b34
	rst 38h			;6b35
	rst 38h			;6b36
	rst 38h			;6b37
	rst 38h			;6b38
	rst 38h			;6b39
	rst 38h			;6b3a
	rst 38h			;6b3b
	rst 38h			;6b3c
	rst 38h			;6b3d
	rst 38h			;6b3e
	rst 38h			;6b3f
	rst 38h			;6b40
	rst 38h			;6b41
	rst 38h			;6b42
	rst 38h			;6b43
	rst 38h			;6b44
	rst 38h			;6b45
	rst 38h			;6b46
	rst 38h			;6b47
	rst 38h			;6b48
	rst 38h			;6b49
	rst 38h			;6b4a
	rst 38h			;6b4b
	rst 38h			;6b4c
	rst 38h			;6b4d
	rst 38h			;6b4e
	rst 38h			;6b4f
	rst 38h			;6b50
	rst 38h			;6b51
	rst 38h			;6b52
	rst 38h			;6b53
	rst 38h			;6b54
	rst 38h			;6b55
	rst 38h			;6b56
	rst 38h			;6b57
	rst 38h			;6b58
	rst 38h			;6b59
	rst 38h			;6b5a
	rst 38h			;6b5b
	rst 38h			;6b5c
	rst 38h			;6b5d
	rst 38h			;6b5e
	rst 38h			;6b5f
	rst 38h			;6b60
	rst 38h			;6b61
	rst 38h			;6b62
	rst 38h			;6b63
	rst 38h			;6b64
	rst 38h			;6b65
	rst 38h			;6b66
	rst 38h			;6b67
	rst 38h			;6b68
	rst 38h			;6b69
	rst 38h			;6b6a
	rst 38h			;6b6b
	rst 38h			;6b6c
	rst 38h			;6b6d
	rst 38h			;6b6e
	rst 38h			;6b6f
	rst 38h			;6b70
	rst 38h			;6b71
	rst 38h			;6b72
	rst 38h			;6b73
	rst 38h			;6b74
	rst 38h			;6b75
	rst 38h			;6b76
	rst 38h			;6b77
	rst 38h			;6b78
	rst 38h			;6b79
	rst 38h			;6b7a
	rst 38h			;6b7b
	rst 38h			;6b7c
	rst 38h			;6b7d
	rst 38h			;6b7e
	rst 38h			;6b7f
	rst 38h			;6b80
	rst 38h			;6b81
	rst 38h			;6b82
	rst 38h			;6b83
	rst 38h			;6b84
	rst 38h			;6b85
	rst 38h			;6b86
	rst 38h			;6b87
	rst 38h			;6b88
	rst 38h			;6b89
	rst 38h			;6b8a
	rst 38h			;6b8b
	rst 38h			;6b8c
	rst 38h			;6b8d
	rst 38h			;6b8e
	rst 38h			;6b8f
	rst 38h			;6b90
	rst 38h			;6b91
	rst 38h			;6b92
	rst 38h			;6b93
	rst 38h			;6b94
	rst 38h			;6b95
	rst 38h			;6b96
	rst 38h			;6b97
	rst 38h			;6b98
	rst 38h			;6b99
	rst 38h			;6b9a
	rst 38h			;6b9b
	rst 38h			;6b9c
	rst 38h			;6b9d
	rst 38h			;6b9e
	rst 38h			;6b9f
	rst 38h			;6ba0
	rst 38h			;6ba1
	rst 38h			;6ba2
	rst 38h			;6ba3
	rst 38h			;6ba4
	rst 38h			;6ba5
	rst 38h			;6ba6
	rst 38h			;6ba7
	rst 38h			;6ba8
	rst 38h			;6ba9
	rst 38h			;6baa
	rst 38h			;6bab
	rst 38h			;6bac
	rst 38h			;6bad
	rst 38h			;6bae
	rst 38h			;6baf
	rst 38h			;6bb0
	rst 38h			;6bb1
	rst 38h			;6bb2
	rst 38h			;6bb3
	rst 38h			;6bb4
	rst 38h			;6bb5
	rst 38h			;6bb6
	rst 38h			;6bb7
	rst 38h			;6bb8
	rst 38h			;6bb9
	rst 38h			;6bba
	rst 38h			;6bbb
	rst 38h			;6bbc
	rst 38h			;6bbd
	rst 38h			;6bbe
	rst 38h			;6bbf
	rst 38h			;6bc0
	rst 38h			;6bc1
	rst 38h			;6bc2
	rst 38h			;6bc3
	rst 38h			;6bc4
	rst 38h			;6bc5
	rst 38h			;6bc6
	rst 38h			;6bc7
	rst 38h			;6bc8
	rst 38h			;6bc9
	rst 38h			;6bca
	rst 38h			;6bcb
	rst 38h			;6bcc
	rst 38h			;6bcd
	rst 38h			;6bce
	rst 38h			;6bcf
	rst 38h			;6bd0
	rst 38h			;6bd1
	rst 38h			;6bd2
	rst 38h			;6bd3
	rst 38h			;6bd4
	rst 38h			;6bd5
	rst 38h			;6bd6
	rst 38h			;6bd7
	rst 38h			;6bd8
	rst 38h			;6bd9
	rst 38h			;6bda
	rst 38h			;6bdb
	rst 38h			;6bdc
	rst 38h			;6bdd
	rst 38h			;6bde
	rst 38h			;6bdf
	rst 38h			;6be0
	rst 38h			;6be1
	rst 38h			;6be2
	rst 38h			;6be3
	rst 38h			;6be4
	rst 38h			;6be5
	rst 38h			;6be6
	rst 38h			;6be7
	rst 38h			;6be8
	rst 38h			;6be9
	rst 38h			;6bea
	rst 38h			;6beb
	rst 38h			;6bec
	rst 38h			;6bed
	rst 38h			;6bee
	rst 38h			;6bef
	rst 38h			;6bf0
	rst 38h			;6bf1
	rst 38h			;6bf2
	rst 38h			;6bf3
	rst 38h			;6bf4
	rst 38h			;6bf5
	rst 38h			;6bf6
	rst 38h			;6bf7
	rst 38h			;6bf8
	rst 38h			;6bf9
	rst 38h			;6bfa
	rst 38h			;6bfb
	rst 38h			;6bfc
	rst 38h			;6bfd
	rst 38h			;6bfe
	rst 38h			;6bff
	rst 38h			;6c00
	rst 38h			;6c01
	rst 38h			;6c02
	rst 38h			;6c03
	rst 38h			;6c04
	rst 38h			;6c05
	rst 38h			;6c06
	rst 38h			;6c07
	rst 38h			;6c08
	rst 38h			;6c09
	rst 38h			;6c0a
	rst 38h			;6c0b
	rst 38h			;6c0c
	rst 38h			;6c0d
	rst 38h			;6c0e
	rst 38h			;6c0f
	rst 38h			;6c10
	rst 38h			;6c11
	rst 38h			;6c12
	rst 38h			;6c13
	rst 38h			;6c14
	rst 38h			;6c15
	rst 38h			;6c16
	rst 38h			;6c17
	rst 38h			;6c18
	rst 38h			;6c19
	rst 38h			;6c1a
	rst 38h			;6c1b
	rst 38h			;6c1c
	rst 38h			;6c1d
	rst 38h			;6c1e
	rst 38h			;6c1f
	rst 38h			;6c20
	rst 38h			;6c21
	rst 38h			;6c22
	rst 38h			;6c23
	rst 38h			;6c24
	rst 38h			;6c25
	rst 38h			;6c26
	rst 38h			;6c27
	rst 38h			;6c28
	rst 38h			;6c29
	rst 38h			;6c2a
	rst 38h			;6c2b
	rst 38h			;6c2c
	rst 38h			;6c2d
	rst 38h			;6c2e
	rst 38h			;6c2f
	rst 38h			;6c30
	rst 38h			;6c31
	rst 38h			;6c32
	rst 38h			;6c33
	rst 38h			;6c34
	rst 38h			;6c35
	rst 38h			;6c36
	rst 38h			;6c37
	rst 38h			;6c38
	rst 38h			;6c39
	rst 38h			;6c3a
	rst 38h			;6c3b
	rst 38h			;6c3c
	rst 38h			;6c3d
	rst 38h			;6c3e
	rst 38h			;6c3f
	rst 38h			;6c40
	rst 38h			;6c41
	rst 38h			;6c42
	rst 38h			;6c43
	rst 38h			;6c44
	rst 38h			;6c45
	rst 38h			;6c46
	rst 38h			;6c47
	rst 38h			;6c48
	rst 38h			;6c49
	rst 38h			;6c4a
	rst 38h			;6c4b
	rst 38h			;6c4c
	rst 38h			;6c4d
	rst 38h			;6c4e
	rst 38h			;6c4f
	rst 38h			;6c50
	rst 38h			;6c51
	rst 38h			;6c52
	rst 38h			;6c53
	rst 38h			;6c54
	rst 38h			;6c55
	rst 38h			;6c56
	rst 38h			;6c57
	rst 38h			;6c58
	rst 38h			;6c59
	rst 38h			;6c5a
	rst 38h			;6c5b
	rst 38h			;6c5c
	rst 38h			;6c5d
	rst 38h			;6c5e
	rst 38h			;6c5f
	rst 38h			;6c60
	rst 38h			;6c61
	rst 38h			;6c62
	rst 38h			;6c63
	rst 38h			;6c64
	rst 38h			;6c65
	rst 38h			;6c66
	rst 38h			;6c67
	rst 38h			;6c68
	rst 38h			;6c69
	rst 38h			;6c6a
	rst 38h			;6c6b
	rst 38h			;6c6c
	rst 38h			;6c6d
	rst 38h			;6c6e
	rst 38h			;6c6f
	rst 38h			;6c70
	rst 38h			;6c71
	rst 38h			;6c72
	rst 38h			;6c73
	rst 38h			;6c74
	rst 38h			;6c75
	rst 38h			;6c76
	rst 38h			;6c77
	rst 38h			;6c78
	rst 38h			;6c79
	rst 38h			;6c7a
	rst 38h			;6c7b
	rst 38h			;6c7c
	rst 38h			;6c7d
	rst 38h			;6c7e
	rst 38h			;6c7f
	rst 38h			;6c80
	rst 38h			;6c81
	rst 38h			;6c82
	rst 38h			;6c83
	rst 38h			;6c84
	rst 38h			;6c85
	rst 38h			;6c86
	rst 38h			;6c87
	rst 38h			;6c88
	rst 38h			;6c89
	rst 38h			;6c8a
	rst 38h			;6c8b
	rst 38h			;6c8c
	rst 38h			;6c8d
	rst 38h			;6c8e
	rst 38h			;6c8f
	rst 38h			;6c90
	rst 38h			;6c91
	rst 38h			;6c92
	rst 38h			;6c93
	rst 38h			;6c94
	rst 38h			;6c95
	rst 38h			;6c96
	rst 38h			;6c97
	rst 38h			;6c98
	rst 38h			;6c99
	rst 38h			;6c9a
	rst 38h			;6c9b
	rst 38h			;6c9c
	rst 38h			;6c9d
	rst 38h			;6c9e
	rst 38h			;6c9f
	rst 38h			;6ca0
	rst 38h			;6ca1
	rst 38h			;6ca2
	rst 38h			;6ca3
	rst 38h			;6ca4
	rst 38h			;6ca5
	rst 38h			;6ca6
	rst 38h			;6ca7
	rst 38h			;6ca8
	rst 38h			;6ca9
	rst 38h			;6caa
	rst 38h			;6cab
	rst 38h			;6cac
	rst 38h			;6cad
	rst 38h			;6cae
	rst 38h			;6caf
	rst 38h			;6cb0
	rst 38h			;6cb1
	rst 38h			;6cb2
	rst 38h			;6cb3
	rst 38h			;6cb4
	rst 38h			;6cb5
	rst 38h			;6cb6
	rst 38h			;6cb7
	rst 38h			;6cb8
	rst 38h			;6cb9
	rst 38h			;6cba
	rst 38h			;6cbb
	rst 38h			;6cbc
	rst 38h			;6cbd
	rst 38h			;6cbe
	rst 38h			;6cbf
	rst 38h			;6cc0
	rst 38h			;6cc1
	rst 38h			;6cc2
	rst 38h			;6cc3
	rst 38h			;6cc4
	rst 38h			;6cc5
	rst 38h			;6cc6
	rst 38h			;6cc7
	rst 38h			;6cc8
	rst 38h			;6cc9
	rst 38h			;6cca
	rst 38h			;6ccb
	rst 38h			;6ccc
	rst 38h			;6ccd
	rst 38h			;6cce
	rst 38h			;6ccf
	rst 38h			;6cd0
	rst 38h			;6cd1
	rst 38h			;6cd2
	rst 38h			;6cd3
	rst 38h			;6cd4
	rst 38h			;6cd5
	rst 38h			;6cd6
	rst 38h			;6cd7
	rst 38h			;6cd8
	rst 38h			;6cd9
	rst 38h			;6cda
	rst 38h			;6cdb
	rst 38h			;6cdc
	rst 38h			;6cdd
	rst 38h			;6cde
	rst 38h			;6cdf
	rst 38h			;6ce0
	rst 38h			;6ce1
	rst 38h			;6ce2
	rst 38h			;6ce3
	rst 38h			;6ce4
	rst 38h			;6ce5
	rst 38h			;6ce6
	rst 38h			;6ce7
	rst 38h			;6ce8
	rst 38h			;6ce9
	rst 38h			;6cea
	rst 38h			;6ceb
	rst 38h			;6cec
	rst 38h			;6ced
	rst 38h			;6cee
	rst 38h			;6cef
	rst 38h			;6cf0
	rst 38h			;6cf1
	rst 38h			;6cf2
	rst 38h			;6cf3
	rst 38h			;6cf4
	rst 38h			;6cf5
	rst 38h			;6cf6
	rst 38h			;6cf7
	rst 38h			;6cf8
	rst 38h			;6cf9
	rst 38h			;6cfa
	rst 38h			;6cfb
	rst 38h			;6cfc
	rst 38h			;6cfd
	rst 38h			;6cfe
	rst 38h			;6cff
	rst 38h			;6d00
	rst 38h			;6d01
	rst 38h			;6d02
	rst 38h			;6d03
	rst 38h			;6d04
	rst 38h			;6d05
	rst 38h			;6d06
	rst 38h			;6d07
	rst 38h			;6d08
	rst 38h			;6d09
	rst 38h			;6d0a
	rst 38h			;6d0b
	rst 38h			;6d0c
	rst 38h			;6d0d
	rst 38h			;6d0e
	rst 38h			;6d0f
	rst 38h			;6d10
	rst 38h			;6d11
	rst 38h			;6d12
	rst 38h			;6d13
	rst 38h			;6d14
	rst 38h			;6d15
	rst 38h			;6d16
	rst 38h			;6d17
	rst 38h			;6d18
	rst 38h			;6d19
	rst 38h			;6d1a
	rst 38h			;6d1b
	rst 38h			;6d1c
	rst 38h			;6d1d
	rst 38h			;6d1e
	rst 38h			;6d1f
	rst 38h			;6d20
	rst 38h			;6d21
	rst 38h			;6d22
	rst 38h			;6d23
	rst 38h			;6d24
	rst 38h			;6d25
	rst 38h			;6d26
	rst 38h			;6d27
	rst 38h			;6d28
	rst 38h			;6d29
	rst 38h			;6d2a
	rst 38h			;6d2b
	rst 38h			;6d2c
	rst 38h			;6d2d
	rst 38h			;6d2e
	rst 38h			;6d2f
	rst 38h			;6d30
	rst 38h			;6d31
	rst 38h			;6d32
	rst 38h			;6d33
	rst 38h			;6d34
	rst 38h			;6d35
	rst 38h			;6d36
	rst 38h			;6d37
	rst 38h			;6d38
	rst 38h			;6d39
	rst 38h			;6d3a
	rst 38h			;6d3b
	rst 38h			;6d3c
	rst 38h			;6d3d
	rst 38h			;6d3e
	rst 38h			;6d3f
	rst 38h			;6d40
	rst 38h			;6d41
	rst 38h			;6d42
	rst 38h			;6d43
	rst 38h			;6d44
	rst 38h			;6d45
	rst 38h			;6d46
	rst 38h			;6d47
	rst 38h			;6d48
	rst 38h			;6d49
	rst 38h			;6d4a
	rst 38h			;6d4b
	rst 38h			;6d4c
	rst 38h			;6d4d
	rst 38h			;6d4e
	rst 38h			;6d4f
	rst 38h			;6d50
	rst 38h			;6d51
	rst 38h			;6d52
	rst 38h			;6d53
	rst 38h			;6d54
	rst 38h			;6d55
	rst 38h			;6d56
	rst 38h			;6d57
	rst 38h			;6d58
	rst 38h			;6d59
	rst 38h			;6d5a
	rst 38h			;6d5b
	rst 38h			;6d5c
	rst 38h			;6d5d
	rst 38h			;6d5e
	rst 38h			;6d5f
	rst 38h			;6d60
	rst 38h			;6d61
	rst 38h			;6d62
	rst 38h			;6d63
	rst 38h			;6d64
	rst 38h			;6d65
	rst 38h			;6d66
	rst 38h			;6d67
	rst 38h			;6d68
	rst 38h			;6d69
	rst 38h			;6d6a
	rst 38h			;6d6b
	rst 38h			;6d6c
	rst 38h			;6d6d
	rst 38h			;6d6e
	rst 38h			;6d6f
	rst 38h			;6d70
	rst 38h			;6d71
	rst 38h			;6d72
	rst 38h			;6d73
	rst 38h			;6d74
	rst 38h			;6d75
	rst 38h			;6d76
	rst 38h			;6d77
	rst 38h			;6d78
	rst 38h			;6d79
	rst 38h			;6d7a
	rst 38h			;6d7b
	rst 38h			;6d7c
	rst 38h			;6d7d
	rst 38h			;6d7e
	rst 38h			;6d7f
	rst 38h			;6d80
	rst 38h			;6d81
	rst 38h			;6d82
	rst 38h			;6d83
	rst 38h			;6d84
	rst 38h			;6d85
	rst 38h			;6d86
	rst 38h			;6d87
	rst 38h			;6d88
	rst 38h			;6d89
	rst 38h			;6d8a
	rst 38h			;6d8b
	rst 38h			;6d8c
	rst 38h			;6d8d
	rst 38h			;6d8e
	rst 38h			;6d8f
	rst 38h			;6d90
	rst 38h			;6d91
	rst 38h			;6d92
	rst 38h			;6d93
	rst 38h			;6d94
	rst 38h			;6d95
	rst 38h			;6d96
	rst 38h			;6d97
	rst 38h			;6d98
	rst 38h			;6d99
	rst 38h			;6d9a
	rst 38h			;6d9b
	rst 38h			;6d9c
	rst 38h			;6d9d
	rst 38h			;6d9e
	rst 38h			;6d9f
	rst 38h			;6da0
	rst 38h			;6da1
	rst 38h			;6da2
	rst 38h			;6da3
	rst 38h			;6da4
	rst 38h			;6da5
	rst 38h			;6da6
	rst 38h			;6da7
	rst 38h			;6da8
	rst 38h			;6da9
	rst 38h			;6daa
	rst 38h			;6dab
	rst 38h			;6dac
	rst 38h			;6dad
	rst 38h			;6dae
	rst 38h			;6daf
	rst 38h			;6db0
	rst 38h			;6db1
	rst 38h			;6db2
	rst 38h			;6db3
	rst 38h			;6db4
	rst 38h			;6db5
	rst 38h			;6db6
	rst 38h			;6db7
	rst 38h			;6db8
	rst 38h			;6db9
	rst 38h			;6dba
	rst 38h			;6dbb
	rst 38h			;6dbc
	rst 38h			;6dbd
	rst 38h			;6dbe
	rst 38h			;6dbf
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
l6f32h:
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
sub_7034h:
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
	rst 38h			;70c0
	rst 38h			;70c1
	rst 38h			;70c2
	rst 38h			;70c3
	rst 38h			;70c4
	rst 38h			;70c5
	rst 38h			;70c6
	rst 38h			;70c7
	rst 38h			;70c8
	rst 38h			;70c9
	rst 38h			;70ca
	rst 38h			;70cb
	rst 38h			;70cc
	rst 38h			;70cd
	rst 38h			;70ce
	rst 38h			;70cf
	rst 38h			;70d0
	rst 38h			;70d1
	rst 38h			;70d2
	rst 38h			;70d3
	rst 38h			;70d4
	rst 38h			;70d5
	rst 38h			;70d6
	rst 38h			;70d7
	rst 38h			;70d8
	rst 38h			;70d9
	rst 38h			;70da
	rst 38h			;70db
	rst 38h			;70dc
	rst 38h			;70dd
	rst 38h			;70de
	rst 38h			;70df
	rst 38h			;70e0
	rst 38h			;70e1
	rst 38h			;70e2
	rst 38h			;70e3
	rst 38h			;70e4
	rst 38h			;70e5
	rst 38h			;70e6
	rst 38h			;70e7
	rst 38h			;70e8
	rst 38h			;70e9
	rst 38h			;70ea
	rst 38h			;70eb
	rst 38h			;70ec
	rst 38h			;70ed
	rst 38h			;70ee
	rst 38h			;70ef
	rst 38h			;70f0
	rst 38h			;70f1
	rst 38h			;70f2
	rst 38h			;70f3
	rst 38h			;70f4
	rst 38h			;70f5
	rst 38h			;70f6
	rst 38h			;70f7
	rst 38h			;70f8
	rst 38h			;70f9
	rst 38h			;70fa
	rst 38h			;70fb
	rst 38h			;70fc
	rst 38h			;70fd
	rst 38h			;70fe
	rst 38h			;70ff
	rst 38h			;7100
	rst 38h			;7101
	rst 38h			;7102
	rst 38h			;7103
	rst 38h			;7104
	rst 38h			;7105
	rst 38h			;7106
	rst 38h			;7107
	rst 38h			;7108
	rst 38h			;7109
	rst 38h			;710a
	rst 38h			;710b
	rst 38h			;710c
	rst 38h			;710d
	rst 38h			;710e
	rst 38h			;710f
	rst 38h			;7110
	rst 38h			;7111
	rst 38h			;7112
	rst 38h			;7113
	rst 38h			;7114
	rst 38h			;7115
	rst 38h			;7116
	rst 38h			;7117
	rst 38h			;7118
	rst 38h			;7119
	rst 38h			;711a
	rst 38h			;711b
	rst 38h			;711c
	rst 38h			;711d
	rst 38h			;711e
	rst 38h			;711f
	rst 38h			;7120
	rst 38h			;7121
	rst 38h			;7122
	rst 38h			;7123
	rst 38h			;7124
	rst 38h			;7125
	rst 38h			;7126
	rst 38h			;7127
	rst 38h			;7128
	rst 38h			;7129
	rst 38h			;712a
	rst 38h			;712b
	rst 38h			;712c
	rst 38h			;712d
	rst 38h			;712e
	rst 38h			;712f
	rst 38h			;7130
l7131h:
	rst 38h			;7131
	rst 38h			;7132
	rst 38h			;7133
	rst 38h			;7134
	rst 38h			;7135
	rst 38h			;7136
	rst 38h			;7137
	rst 38h			;7138
	rst 38h			;7139
	rst 38h			;713a
	rst 38h			;713b
	rst 38h			;713c
	rst 38h			;713d
	rst 38h			;713e
	rst 38h			;713f
	rst 38h			;7140
	rst 38h			;7141
	rst 38h			;7142
	rst 38h			;7143
	rst 38h			;7144
	rst 38h			;7145
	rst 38h			;7146
	rst 38h			;7147
	rst 38h			;7148
	rst 38h			;7149
	rst 38h			;714a
	rst 38h			;714b
	rst 38h			;714c
	rst 38h			;714d
	rst 38h			;714e
	rst 38h			;714f
	rst 38h			;7150
	rst 38h			;7151
	rst 38h			;7152
	rst 38h			;7153
	rst 38h			;7154
	rst 38h			;7155
	rst 38h			;7156
	rst 38h			;7157
	rst 38h			;7158
	rst 38h			;7159
	rst 38h			;715a
	rst 38h			;715b
	rst 38h			;715c
	rst 38h			;715d
	rst 38h			;715e
	rst 38h			;715f
	rst 38h			;7160
	rst 38h			;7161
	rst 38h			;7162
	rst 38h			;7163
	rst 38h			;7164
	rst 38h			;7165
	rst 38h			;7166
	rst 38h			;7167
	rst 38h			;7168
	rst 38h			;7169
	rst 38h			;716a
	rst 38h			;716b
	rst 38h			;716c
	rst 38h			;716d
	rst 38h			;716e
	rst 38h			;716f
	rst 38h			;7170
	rst 38h			;7171
	rst 38h			;7172
	rst 38h			;7173
	rst 38h			;7174
	rst 38h			;7175
	rst 38h			;7176
	rst 38h			;7177
	rst 38h			;7178
	rst 38h			;7179
	rst 38h			;717a
	rst 38h			;717b
	rst 38h			;717c
	rst 38h			;717d
	rst 38h			;717e
	rst 38h			;717f
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
sub_7203h:
	rst 38h			;7203
	rst 38h			;7204
	rst 38h			;7205
l7206h:
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
l7400h:
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
l77afh:
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
sub_7d25h:
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
