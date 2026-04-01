; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank22.asm /tmp/smanbow2_bank_22.bin

	org 04000h

	ld c,l			;4000
	ld h,c			;4001
	ld l,(hl)		;4002
	ld h,d			;4003
	ld l,a			;4004
	ld (hl),a		;4005
	jr nz,$+52		;4006
	jr nz,l4037h		;4008
	jr nz,$+78		;400a
	ld h,l			;400c
	halt			;400d
	ld h,l			;400e
	ld l,h			;400f
	jr nz,l4046h		;4010
	jr nz,l4041h		;4012
	jr nz,l4065h		;4014
	ld (hl),l		;4016
	ld (hl),h		;4017
	jr nz,l4083h		;4018
	ld l,(hl)		;401a
	jr nz,$+85		;401b
	ld (hl),b		;401d
	ld h,c			;401e
	ld h,e			;401f
	ld h,l			;4020
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
	jr nz,$+34		;4035
l4037h:
	jr nz,l4059h		;4037
	jr nz,l405bh		;4039
	jr nz,l405dh		;403b
	jr nz,$+34		;403d
	jr nz,l4061h		;403f
l4041h:
	jr nz,$+34		;4041
l4043h:
	ld c,l			;4043
	ld d,l			;4044
l4045h:
	ld d,e			;4045
l4046h:
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
	ld l,000h		;404e
	ld bc,00100h		;4050
l4053h:
	ld (bc),a		;4053
	inc bc			;4054
l4055h:
	inc b			;4055
	ld bc,00302h		;4056
l4059h:
	inc b			;4059
	dec b			;405a
l405bh:
	ld b,007h		;405b
l405dh:
	ex af,af'		;405d
	ld bc,00302h		;405e
l4061h:
	inc b			;4061
	ld bc,00302h		;4062
l4065h:
	inc b			;4065
	dec b			;4066
	ld b,007h		;4067
	ex af,af'		;4069
	add hl,bc		;406a
	ld a,(bc)		;406b
	dec bc			;406c
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
	dec de			;407c
	inc e			;407d
	dec e			;407e
	ld e,000h		;407f
	nop			;4081
	nop			;4082
l4083h:
	nop			;4083
l4084h:
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
	nop			;4091
	nop			;4092
	nop			;4093
l4094h:
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
	ld d,00fh		;4151
	rrca			;4153
	rrca			;4154
	rrca			;4155
	rrca			;4156
	ex af,af'		;4157
	ex af,af'		;4158
	add hl,bc		;4159
	add hl,bc		;415a
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
	ld a,(bc)		;41c0
	ld a,(bc)		;41c1
	ld a,(bc)		;41c2
	ld a,(bc)		;41c3
	ld l,d			;41c4
	ld bc,00169h		;41c5
	ld l,c			;41c8
	nop			;41c9
	rlca			;41ca
	jr l422eh		;41cb
	nop			;41cd
	ld h,c			;41ce
	nop			;41cf
	ld h,d			;41d0
	ld a,(bc)		;41d1
	ld h,d			;41d2
	ld a,(bc)		;41d3
	ld h,d			;41d4
	ld (hl),h		;41d5
	nop			;41d6
	add hl,de		;41d7
	ld a,(bc)		;41d8
	ld a,(bc)		;41d9
	ld a,(bc)		;41da
	ld a,(bc)		;41db
	add hl,de		;41dc
	ex af,af'		;41dd
	add hl,de		;41de
	ex af,af'		;41df
	add hl,de		;41e0
	ex af,af'		;41e1
	rlca			;41e2
	jr l4246h		;41e3
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
	add hl,de		;41ef
	ld a,(bc)		;41f0
	ld a,(bc)		;41f1
	ld a,(bc)		;41f2
	ld a,(bc)		;41f3
	add hl,de		;41f4
	ex af,af'		;41f5
	add hl,de		;41f6
	ex af,af'		;41f7
	add hl,de		;41f8
	ex af,af'		;41f9
	rlca			;41fa
	jr l425eh		;41fb
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
	add hl,de		;4207
	ld a,(bc)		;4208
	ld a,(bc)		;4209
	ld a,(bc)		;420a
	ld a,(bc)		;420b
	add hl,de		;420c
	ex af,af'		;420d
	add hl,de		;420e
	ex af,af'		;420f
	add hl,de		;4210
	ex af,af'		;4211
	rlca			;4212
	jr l4276h		;4213
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
	add hl,de		;421f
	ld a,(bc)		;4220
	ld a,(bc)		;4221
	ld a,(bc)		;4222
	ld a,(bc)		;4223
	ld (02208h),hl		;4224
	ex af,af'		;4227
	ld (00708h),hl		;4228
	jr l428eh		;422b
	nop			;422d
l422eh:
	ld h,c			;422e
	nop			;422f
	ld h,c			;4230
	nop			;4231
	ld h,c			;4232
	nop			;4233
	ld h,c			;4234
	nop			;4235
	nop			;4236
	add hl,de		;4237
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
	jr l4245h		;4243
l4245h:
	nop			;4245
l4246h:
	nop			;4246
	nop			;4247
	nop			;4248
	nop			;4249
	nop			;424a
	nop			;424b
	nop			;424c
	nop			;424d
	nop			;424e
	add hl,de		;424f
	ld a,(bc)		;4250
	rlca			;4251
	ld a,(bc)		;4252
	rlca			;4253
	ld (02207h),hl		;4254
	rlca			;4257
	ld (00707h),hl		;4258
	jr l42beh		;425b
	nop			;425d
l425eh:
	ld h,c			;425e
	nop			;425f
	ld h,c			;4260
	nop			;4261
	ld h,c			;4262
	nop			;4263
	ld h,c			;4264
	nop			;4265
	nop			;4266
	add hl,de		;4267
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
	jr l4275h		;4273
l4275h:
	nop			;4275
l4276h:
	nop			;4276
	nop			;4277
	ld h,d			;4278
	add hl,bc		;4279
	ld h,d			;427a
	add hl,bc		;427b
	nop			;427c
	nop			;427d
	nop			;427e
	add hl,de		;427f
	nop			;4280
	nop			;4281
	ld d,00fh		;4282
	ld sp,02e05h		;4284
	ld a,(bc)		;4287
	daa			;4288
	ld a,(bc)		;4289
	ld bc,01616h		;428a
	rrca			;428d
l428eh:
	ld h,c			;428e
	nop			;428f
	daa			;4290
	dec b			;4291
	ld l,h			;4292
	ld bc,0016ch		;4293
	inc bc			;4296
	nop			;4297
	ld h,c			;4298
	nop			;4299
	ld d,00fh		;429a
	inc l			;429c
	dec b			;429d
	nop			;429e
	nop			;429f
	nop			;42a0
	nop			;42a1
	inc bc			;42a2
	nop			;42a3
	ld d,00fh		;42a4
	ld h,c			;42a6
	nop			;42a7
	daa			;42a8
	dec b			;42a9
	nop			;42aa
	nop			;42ab
	nop			;42ac
	nop			;42ad
	inc bc			;42ae
	nop			;42af
	ld h,c			;42b0
	nop			;42b1
	ld l,h			;42b2
	add hl,bc		;42b3
	ld l,005h		;42b4
	nop			;42b6
	nop			;42b7
	nop			;42b8
	nop			;42b9
	ld (bc),a		;42ba
	nop			;42bb
	nop			;42bc
	nop			;42bd
l42beh:
	rrca			;42be
	rrca			;42bf
	daa			;42c0
	dec b			;42c1
	inc l			;42c2
	add hl,bc		;42c3
	dec h			;42c4
	add hl,bc		;42c5
	nop			;42c6
	nop			;42c7
	nop			;42c8
	nop			;42c9
	ld (de),a		;42ca
	rrca			;42cb
	ld sp,02a05h		;42cc
	add hl,bc		;42cf
	inc h			;42d0
	add hl,bc		;42d1
	inc bc			;42d2
	nop			;42d3
	nop			;42d4
	nop			;42d5
	inc d			;42d6
	rrca			;42d7
	daa			;42d8
	dec b			;42d9
	add hl,hl		;42da
	ld a,(bc)		;42db
	ld (0010ah),hl		;42dc
	nop			;42df
	nop			;42e0
	nop			;42e1
	ld d,00fh		;42e2
	inc sp			;42e4
	dec b			;42e5
	ld l,h			;42e6
	ld bc,0016ch		;42e7
	ld bc,01600h		;42ea
	rrca			;42ed
	ld h,c			;42ee
	nop			;42ef
	daa			;42f0
	dec b			;42f1
	ld l,h			;42f2
	ld bc,0016ch		;42f3
	inc bc			;42f6
	nop			;42f7
	ld h,c			;42f8
	nop			;42f9
	ld d,00fh		;42fa
	inc l			;42fc
	dec b			;42fd
	ld l,009h		;42fe
	daa			;4300
	add hl,bc		;4301
	ld bc,00000h		;4302
	nop			;4305
	add hl,de		;4306
	rrca			;4307
	daa			;4308
	dec b			;4309
	ld l,h			;430a
	ld bc,0016ch		;430b
	nop			;430e
	nop			;430f
	nop			;4310
	nop			;4311
	ld l,h			;4312
	add hl,bc		;4313
	ld l,005h		;4314
	inc l			;4316
	add hl,bc		;4317
	dec h			;4318
	add hl,bc		;4319
	ld (bc),a		;431a
	nop			;431b
	nop			;431c
	nop			;431d
	ld (de),a		;431e
	rrca			;431f
	daa			;4320
	dec b			;4321
	ld l,009h		;4322
	daa			;4324
	add hl,bc		;4325
	nop			;4326
	nop			;4327
	nop			;4328
	nop			;4329
	ld de,0310fh		;432a
	dec b			;432d
	inc l			;432e
	ld a,(bc)		;432f
	dec h			;4330
	ld a,(bc)		;4331
	inc bc			;4332
	nop			;4333
	nop			;4334
	nop			;4335
	dec c			;4336
	rrca			;4337
	daa			;4338
	dec b			;4339
	ld l,h			;433a
	ld bc,0016ch		;433b
	ld bc,00000h		;433e
	nop			;4341
	rrca			;4342
	rrca			;4343
	inc sp			;4344
	dec b			;4345
	ld sp,02a09h		;4346
	add hl,bc		;4349
	ld bc,00f00h		;434a
	rrca			;434d
	ld h,c			;434e
	nop			;434f
	ld hl,(l6c05h)		;4350
	ld bc,0016ch		;4353
	inc bc			;4356
	nop			;4357
	ld h,c			;4358
	nop			;4359
	rrca			;435a
	rrca			;435b
	jr nc,l4363h		;435c
	nop			;435e
	nop			;435f
	nop			;4360
	nop			;4361
	inc bc			;4362
l4363h:
	nop			;4363
	rrca			;4364
	rrca			;4365
	ld h,c			;4366
	nop			;4367
	ld hl,(00005h)		;4368
	nop			;436b
	nop			;436c
	nop			;436d
	inc bc			;436e
	nop			;436f
	ld h,c			;4370
	nop			;4371
	ld l,h			;4372
	add hl,bc		;4373
	ld sp,00005h		;4374
	nop			;4377
	nop			;4378
	nop			;4379
	ld (bc),a		;437a
	nop			;437b
	nop			;437c
	nop			;437d
	rrca			;437e
	rrca			;437f
	ld hl,(l6705h)		;4380
	ld (bc),a		;4383
	ld h,a			;4384
	ld (bc),a		;4385
	nop			;4386
	nop			;4387
	nop			;4388
	nop			;4389
	inc d			;438a
	rrca			;438b
	dec (hl)		;438c
	dec b			;438d
	nop			;438e
	nop			;438f
	nop			;4390
	nop			;4391
	inc bc			;4392
	nop			;4393
	nop			;4394
	nop			;4395
	ld d,00fh		;4396
	ld hl,(l6c05h)		;4398
	ld bc,0016ch		;439b
	ld bc,00000h		;439e
	nop			;43a1
	jr l43b3h		;43a2
	ld (hl),005h		;43a4
	nop			;43a6
	nop			;43a7
	nop			;43a8
	nop			;43a9
	ld bc,01800h		;43aa
	rrca			;43ad
	ld h,c			;43ae
	nop			;43af
	ld hl,(00005h)		;43b0
l43b3h:
	nop			;43b3
	nop			;43b4
	nop			;43b5
	inc bc			;43b6
	nop			;43b7
	ld h,c			;43b8
	nop			;43b9
	jr l43cbh		;43ba
	ld sp,00005h		;43bc
	nop			;43bf
	nop			;43c0
	nop			;43c1
	ld bc,00000h		;43c2
	nop			;43c5
	add hl,de		;43c6
	rrca			;43c7
	ld (hl),005h		;43c8
	nop			;43ca
l43cbh:
	nop			;43cb
	nop			;43cc
	nop			;43cd
	nop			;43ce
	nop			;43cf
	nop			;43d0
	nop			;43d1
	ld l,h			;43d2
	add hl,bc		;43d3
	ld sp,00005h		;43d4
	nop			;43d7
	nop			;43d8
	nop			;43d9
	ld (bc),a		;43da
	nop			;43db
	nop			;43dc
	nop			;43dd
	ld (de),a		;43de
	rrca			;43df
	dec (hl)		;43e0
	dec b			;43e1
	ld l,h			;43e2
	ld bc,0016ch		;43e3
	nop			;43e6
	nop			;43e7
	nop			;43e8
	nop			;43e9
	ld de,0330fh		;43ea
	dec b			;43ed
	nop			;43ee
	nop			;43ef
	nop			;43f0
	nop			;43f1
	inc bc			;43f2
	nop			;43f3
	nop			;43f4
	nop			;43f5
	dec c			;43f6
	rrca			;43f7
	jr nc,$+7		;43f8
	nop			;43fa
	nop			;43fb
	nop			;43fc
	nop			;43fd
	ld bc,00000h		;43fe
	nop			;4401
	ld de,02c0fh		;4402
	dec b			;4405
	inc sp			;4406
	add hl,bc		;4407
	ld l,009h		;4408
	ld bc,01100h		;440a
	rrca			;440d
	ld h,c			;440e
	nop			;440f
	daa			;4410
	dec b			;4411
	ld l,h			;4412
	ld bc,0016ch		;4413
	inc bc			;4416
	nop			;4417
	ld h,c			;4418
	nop			;4419
	ld de,02c0fh		;441a
	dec b			;441d
	nop			;441e
	nop			;441f
	nop			;4420
	nop			;4421
	inc bc			;4422
	nop			;4423
	ld de,l610fh		;4424
	nop			;4427
	daa			;4428
	dec b			;4429
	nop			;442a
	nop			;442b
	nop			;442c
	nop			;442d
	inc bc			;442e
	nop			;442f
	ld h,c			;4430
	nop			;4431
	ld l,h			;4432
	add hl,bc		;4433
	ld l,005h		;4434
	nop			;4436
	nop			;4437
	nop			;4438
	nop			;4439
	ld (bc),a		;443a
	nop			;443b
	nop			;443c
	nop			;443d
	rrca			;443e
	rrca			;443f
	daa			;4440
	dec b			;4441
	ld sp,02a09h		;4442
	add hl,bc		;4445
	nop			;4446
	nop			;4447
	nop			;4448
	nop			;4449
	ld (de),a		;444a
	rrca			;444b
	ld sp,03305h		;444c
	add hl,bc		;444f
	inc l			;4450
	add hl,bc		;4451
	inc bc			;4452
	nop			;4453
	nop			;4454
	nop			;4455
	inc d			;4456
	rrca			;4457
	daa			;4458
	dec b			;4459
	dec (hl)		;445a
	ld a,(bc)		;445b
	ld l,00ah		;445c
	ld bc,00000h		;445e
	nop			;4461
	ld d,00fh		;4462
	inc sp			;4464
	dec b			;4465
	ld l,h			;4466
	ld bc,0016ch		;4467
	ld bc,01600h		;446a
	rrca			;446d
	ld h,c			;446e
	nop			;446f
	daa			;4470
	dec b			;4471
	ld l,h			;4472
	ld bc,0016ch		;4473
	inc bc			;4476
	nop			;4477
	ld h,c			;4478
	nop			;4479
	ld d,00fh		;447a
	inc l			;447c
	dec b			;447d
	inc sp			;447e
	add hl,bc		;447f
	inc l			;4480
	add hl,bc		;4481
	ld bc,00000h		;4482
	nop			;4485
	add hl,de		;4486
	rrca			;4487
	daa			;4488
	dec b			;4489
	ld l,h			;448a
	ld bc,0016ch		;448b
	nop			;448e
	nop			;448f
	nop			;4490
	nop			;4491
	ld l,h			;4492
	add hl,bc		;4493
	ld l,005h		;4494
	ld sp,02a09h		;4496
	add hl,bc		;4499
	ld (bc),a		;449a
	nop			;449b
	nop			;449c
	nop			;449d
	ld (de),a		;449e
	rrca			;449f
	daa			;44a0
	dec b			;44a1
	jr nc,l44adh		;44a2
	add hl,hl		;44a4
	add hl,bc		;44a5
	nop			;44a6
	nop			;44a7
	nop			;44a8
	nop			;44a9
	ld de,0310fh		;44aa
l44adh:
	dec b			;44ad
	ld l,h			;44ae
	ld (bc),a		;44af
	ld l,h			;44b0
	ld (bc),a		;44b1
	inc bc			;44b2
	nop			;44b3
	nop			;44b4
	nop			;44b5
	dec c			;44b6
	rrca			;44b7
	daa			;44b8
	dec b			;44b9
	inc l			;44ba
	add hl,bc		;44bb
	dec h			;44bc
	add hl,bc		;44bd
	ld bc,00000h		;44be
	nop			;44c1
	ld a,(bc)		;44c2
	rrca			;44c3
	inc sp			;44c4
	dec b			;44c5
	ld l,009h		;44c6
	daa			;44c8
	add hl,bc		;44c9
	ld bc,00a00h		;44ca
	rrca			;44cd
	ld h,c			;44ce
	nop			;44cf
	ld hl,(l6c05h)		;44d0
	ld bc,0016ch		;44d3
	inc bc			;44d6
	nop			;44d7
	ld h,c			;44d8
	nop			;44d9
	ld a,(bc)		;44da
	rrca			;44db
	jr nc,l44e3h		;44dc
	nop			;44de
	nop			;44df
	nop			;44e0
	nop			;44e1
	inc bc			;44e2
l44e3h:
	nop			;44e3
	ld a,(bc)		;44e4
	rrca			;44e5
	ld h,c			;44e6
	nop			;44e7
	ld hl,(00005h)		;44e8
	nop			;44eb
	nop			;44ec
	nop			;44ed
	inc bc			;44ee
	nop			;44ef
	ld h,c			;44f0
	nop			;44f1
	ld l,h			;44f2
	add hl,bc		;44f3
	ld sp,00005h		;44f4
	nop			;44f7
	nop			;44f8
	nop			;44f9
	ld (bc),a		;44fa
	nop			;44fb
	nop			;44fc
	nop			;44fd
	ld a,(bc)		;44fe
	rrca			;44ff
	ld hl,(l6705h)		;4500
	ld (bc),a		;4503
	ld h,a			;4504
	ld (bc),a		;4505
	nop			;4506
	nop			;4507
	ld a,(bc)		;4508
	rrca			;4509
	ld h,c			;450a
	nop			;450b
	dec (hl)		;450c
	dec b			;450d
	nop			;450e
	nop			;450f
	nop			;4510
	nop			;4511
	inc bc			;4512
	nop			;4513
	ld h,c			;4514
	nop			;4515
	ld a,(bc)		;4516
	rrca			;4517
	ld hl,(l6c05h)		;4518
	ld bc,0016ch		;451b
	ld bc,00a00h		;451e
	rrca			;4521
	ld h,c			;4522
	nop			;4523
	ld (hl),005h		;4524
	nop			;4526
	nop			;4527
	nop			;4528
	nop			;4529
	ld bc,l6100h		;452a
	nop			;452d
	ld l,h			;452e
	add hl,bc		;452f
	ld hl,(00005h)		;4530
	nop			;4533
	nop			;4534
	nop			;4535
	inc bc			;4536
	nop			;4537
	nop			;4538
	nop			;4539
	ld a,(bc)		;453a
	rrca			;453b
	ld sp,00005h		;453c
	nop			;453f
	nop			;4540
	nop			;4541
	ld bc,00000h		;4542
	nop			;4545
	dec c			;4546
	rrca			;4547
	ld (hl),005h		;4548
	nop			;454a
	nop			;454b
	nop			;454c
	nop			;454d
	nop			;454e
	nop			;454f
	nop			;4550
	nop			;4551
	ld l,h			;4552
	add hl,bc		;4553
	ld sp,00005h		;4554
	nop			;4557
	nop			;4558
	nop			;4559
	ld (bc),a		;455a
	nop			;455b
	nop			;455c
	nop			;455d
	inc c			;455e
	rrca			;455f
	dec (hl)		;4560
	dec b			;4561
	ld l,h			;4562
	ld bc,0016ch		;4563
	nop			;4566
	nop			;4567
	nop			;4568
	nop			;4569
	dec c			;456a
	rrca			;456b
	inc sp			;456c
	dec b			;456d
	nop			;456e
	nop			;456f
	nop			;4570
	nop			;4571
	inc bc			;4572
	nop			;4573
	nop			;4574
	nop			;4575
	rrca			;4576
	rrca			;4577
	jr nc,$+7		;4578
	nop			;457a
	nop			;457b
	nop			;457c
	nop			;457d
	ld bc,00000h		;457e
	nop			;4581
	add hl,de		;4582
	rrca			;4583
	ld (02905h),hl		;4584
	add hl,bc		;4587
	dec h			;4588
	add hl,bc		;4589
	ld bc,00000h		;458a
	nop			;458d
	ld l,h			;458e
	rlca			;458f
	dec h			;4590
	dec b			;4591
	ld l,h			;4592
	add hl,bc		;4593
	ld l,h			;4594
	add hl,bc		;4595
	nop			;4596
	nop			;4597
	nop			;4598
	nop			;4599
	jr l45abh		;459a
	add hl,hl		;459c
	dec b			;459d
	add hl,hl		;459e
	add hl,bc		;459f
	dec h			;45a0
	add hl,bc		;45a1
	ld bc,00000h		;45a2
	nop			;45a5
	ld l,h			;45a6
	rlca			;45a7
	ld (l6c05h),hl		;45a8
l45abh:
	add hl,bc		;45ab
	ld l,h			;45ac
	add hl,bc		;45ad
	nop			;45ae
	nop			;45af
	nop			;45b0
	nop			;45b1
	nop			;45b2
	nop			;45b3
	inc h			;45b4
	dec b			;45b5
	ld l,009h		;45b6
	inc h			;45b8
	add hl,bc		;45b9
	ld (bc),a		;45ba
	nop			;45bb
	nop			;45bc
	nop			;45bd
	dec de			;45be
	rrca			;45bf
	daa			;45c0
	dec b			;45c1
	dec h			;45c2
	add hl,bc		;45c3
	ld (00109h),hl		;45c4
	nop			;45c7
	nop			;45c8
	nop			;45c9
	ld l,h			;45ca
	rlca			;45cb
	ld hl,(00005h)		;45cc
	nop			;45cf
	nop			;45d0
	nop			;45d1
	nop			;45d2
	nop			;45d3
	nop			;45d4
	nop			;45d5
	nop			;45d6
	nop			;45d7
	inc h			;45d8
	dec b			;45d9
	nop			;45da
	nop			;45db
	nop			;45dc
	nop			;45dd
	nop			;45de
	nop			;45df
	nop			;45e0
	nop			;45e1
	add hl,de		;45e2
	rrca			;45e3
	dec h			;45e4
	dec b			;45e5
	inc l			;45e6
	add hl,bc		;45e7
	daa			;45e8
	add hl,bc		;45e9
	ld bc,00000h		;45ea
	nop			;45ed
	ld l,h			;45ee
	rlca			;45ef
	add hl,hl		;45f0
	dec b			;45f1
	ld l,h			;45f2
	add hl,bc		;45f3
	ld l,h			;45f4
	add hl,bc		;45f5
	nop			;45f6
	nop			;45f7
	nop			;45f8
	nop			;45f9
	jr l460bh		;45fa
	inc l			;45fc
	dec b			;45fd
	inc l			;45fe
	add hl,bc		;45ff
	daa			;4600
	add hl,bc		;4601
	ld bc,00000h		;4602
	nop			;4605
	rrca			;4606
	rrca			;4607
	ld sp,l6c05h		;4608
l460bh:
	add hl,bc		;460b
	ld l,h			;460c
	add hl,bc		;460d
	nop			;460e
	nop			;460f
	nop			;4610
	nop			;4611
	ld l,h			;4612
	rlca			;4613
	dec (hl)		;4614
	dec b			;4615
	jr nc,l4621h		;4616
	dec h			;4618
	add hl,bc		;4619
	ld (bc),a		;461a
	nop			;461b
	nop			;461c
	nop			;461d
	inc d			;461e
	rrca			;461f
	inc sp			;4620
l4621h:
	dec b			;4621
	add hl,hl		;4622
	add hl,bc		;4623
	inc h			;4624
	add hl,bc		;4625
	ld bc,00000h		;4626
	nop			;4629
	ld (de),a		;462a
	rrca			;462b
	ld sp,00005h		;462c
	nop			;462f
	nop			;4630
	nop			;4631
	inc bc			;4632
	nop			;4633
	nop			;4634
	nop			;4635
	ld de,0330fh		;4636
	dec b			;4639
	nop			;463a
	dec bc			;463b
	nop			;463c
	dec bc			;463d
	inc bc			;463e
	nop			;463f
	nop			;4640
	nop			;4641
	dec de			;4642
	rrca			;4643
	inc h			;4644
	dec b			;4645
	ld hl,(02509h)		;4646
	add hl,bc		;4649
	ld bc,00000h		;464a
	nop			;464d
	ld l,h			;464e
	rlca			;464f
	daa			;4650
	dec b			;4651
	ld l,h			;4652
	add hl,bc		;4653
	ld l,h			;4654
	add hl,bc		;4655
	nop			;4656
	nop			;4657
	nop			;4658
	nop			;4659
	add hl,de		;465a
	rrca			;465b
	ld hl,(02a05h)		;465c
	add hl,bc		;465f
	dec h			;4660
	add hl,bc		;4661
	ld bc,00000h		;4662
	nop			;4665
	ld l,h			;4666
	rlca			;4667
	inc h			;4668
	dec b			;4669
	ld l,h			;466a
	add hl,bc		;466b
	ld l,h			;466c
	add hl,bc		;466d
	inc bc			;466e
	nop			;466f
	nop			;4670
	nop			;4671
	nop			;4672
	nop			;4673
	daa			;4674
	dec b			;4675
	ld l,009h		;4676
	dec h			;4678
	add hl,bc		;4679
	ld (bc),a		;467a
	nop			;467b
	nop			;467c
	nop			;467d
	jr l468fh		;467e
	add hl,hl		;4680
	dec b			;4681
	jr nc,l468dh		;4682
	daa			;4684
	add hl,bc		;4685
	ld bc,00000h		;4686
	nop			;4689
	ld l,h			;468a
	rlca			;468b
	inc l			;468c
l468dh:
	dec b			;468d
	nop			;468e
l468fh:
	nop			;468f
	nop			;4690
	nop			;4691
	nop			;4692
	nop			;4693
	nop			;4694
	nop			;4695
	nop			;4696
	nop			;4697
	dec h			;4698
	dec b			;4699
	nop			;469a
	nop			;469b
	nop			;469c
	nop			;469d
	nop			;469e
	nop			;469f
	nop			;46a0
	nop			;46a1
	dec de			;46a2
	rrca			;46a3
	ld hl,(03105h)		;46a4
	add hl,bc		;46a7
	dec h			;46a8
	add hl,bc		;46a9
	ld bc,00000h		;46aa
	nop			;46ad
	ld l,h			;46ae
	rlca			;46af
	ld l,h			;46b0
	rlca			;46b1
	nop			;46b2
	nop			;46b3
	nop			;46b4
	nop			;46b5
	nop			;46b6
	nop			;46b7
	nop			;46b8
	nop			;46b9
	dec de			;46ba
	rrca			;46bb
	ld hl,(00005h)		;46bc
	nop			;46bf
	nop			;46c0
	nop			;46c1
	ld bc,00000h		;46c2
	nop			;46c5
	ld l,h			;46c6
	rlca			;46c7
	nop			;46c8
	nop			;46c9
	nop			;46ca
	nop			;46cb
	nop			;46cc
	nop			;46cd
	inc bc			;46ce
	nop			;46cf
	nop			;46d0
	nop			;46d1
	add hl,de		;46d2
	rrca			;46d3
	add hl,hl		;46d4
	dec b			;46d5
	jr nc,l46e1h		;46d6
	inc h			;46d8
	add hl,bc		;46d9
	ld (bc),a		;46da
	nop			;46db
	nop			;46dc
	nop			;46dd
	jr l46efh		;46de
	nop			;46e0
l46e1h:
	nop			;46e1
	nop			;46e2
	nop			;46e3
	nop			;46e4
	nop			;46e5
	ld bc,00000h		;46e6
	nop			;46e9
	nop			;46ea
	nop			;46eb
	nop			;46ec
	nop			;46ed
	nop			;46ee
l46efh:
	nop			;46ef
	nop			;46f0
	nop			;46f1
	inc bc			;46f2
	nop			;46f3
	nop			;46f4
	nop			;46f5
	nop			;46f6
	nop			;46f7
	nop			;46f8
	nop			;46f9
	nop			;46fa
	nop			;46fb
	nop			;46fc
	nop			;46fd
	inc bc			;46fe
	nop			;46ff
	nop			;4700
	nop			;4701
	ld d,00fh		;4702
	ld (l6c05h),hl		;4704
	ld (bc),a		;4707
	ld l,h			;4708
	ld (bc),a		;4709
	ld bc,00000h		;470a
	nop			;470d
	ld l,h			;470e
	rlca			;470f
	dec h			;4710
	dec b			;4711
	ld l,h			;4712
	ld (bc),a		;4713
	ld l,h			;4714
	ld (bc),a		;4715
	nop			;4716
	nop			;4717
	nop			;4718
	nop			;4719
	ld d,00fh		;471a
	add hl,hl		;471c
	dec b			;471d
	add hl,hl		;471e
	add hl,bc		;471f
	dec h			;4720
	add hl,bc		;4721
	ld bc,00000h		;4722
	nop			;4725
	ld l,h			;4726
	rlca			;4727
	ld (l6c05h),hl		;4728
	add hl,bc		;472b
	ld l,h			;472c
	add hl,bc		;472d
	inc bc			;472e
	nop			;472f
	nop			;4730
	nop			;4731
	nop			;4732
	nop			;4733
	inc h			;4734
	dec b			;4735
	ld l,009h		;4736
	inc h			;4738
	add hl,bc		;4739
	ld (bc),a		;473a
	nop			;473b
	nop			;473c
	nop			;473d
	ld e,00fh		;473e
	daa			;4740
	dec b			;4741
	dec h			;4742
	add hl,bc		;4743
	ld (00109h),hl		;4744
	nop			;4747
	nop			;4748
	nop			;4749
	nop			;474a
	nop			;474b
	ld hl,(00005h)		;474c
	nop			;474f
	nop			;4750
	nop			;4751
	nop			;4752
	nop			;4753
	nop			;4754
	nop			;4755
	nop			;4756
	nop			;4757
	inc h			;4758
	dec b			;4759
	nop			;475a
	nop			;475b
	nop			;475c
	nop			;475d
	inc bc			;475e
	nop			;475f
	nop			;4760
	nop			;4761
	add hl,de		;4762
	rrca			;4763
	dec h			;4764
	dec b			;4765
	inc l			;4766
	add hl,bc		;4767
	daa			;4768
	add hl,bc		;4769
	ld bc,00000h		;476a
	nop			;476d
	ld l,h			;476e
	rlca			;476f
	add hl,hl		;4770
	dec b			;4771
	ld l,h			;4772
	add hl,bc		;4773
	ld l,h			;4774
	add hl,bc		;4775
	nop			;4776
	nop			;4777
	nop			;4778
	nop			;4779
	ld a,(bc)		;477a
	rrca			;477b
	inc l			;477c
	dec b			;477d
	inc l			;477e
	add hl,bc		;477f
	daa			;4780
	add hl,bc		;4781
	ld bc,00000h		;4782
	nop			;4785
	rrca			;4786
	rrca			;4787
	ld sp,l6c05h		;4788
	add hl,bc		;478b
	ld l,h			;478c
	add hl,bc		;478d
	inc bc			;478e
	nop			;478f
	nop			;4790
	nop			;4791
	ld l,h			;4792
	rlca			;4793
	dec (hl)		;4794
	dec b			;4795
	jr nc,l47a1h		;4796
	add hl,hl		;4798
	add hl,bc		;4799
	ld (bc),a		;479a
	nop			;479b
	nop			;479c
	nop			;479d
	inc d			;479e
	rrca			;479f
	inc sp			;47a0
l47a1h:
	dec b			;47a1
	add hl,hl		;47a2
	add hl,bc		;47a3
	inc h			;47a4
	add hl,bc		;47a5
	ld bc,00000h		;47a6
	nop			;47a9
	ld (de),a		;47aa
	rrca			;47ab
	ld sp,00005h		;47ac
	nop			;47af
	nop			;47b0
	nop			;47b1
	inc bc			;47b2
	nop			;47b3
	nop			;47b4
	nop			;47b5
	ld de,0330fh		;47b6
	dec b			;47b9
	nop			;47ba
	dec bc			;47bb
	nop			;47bc
	dec bc			;47bd
	inc bc			;47be
	nop			;47bf
	nop			;47c0
	nop			;47c1
	dec de			;47c2
	rrca			;47c3
	inc h			;47c4
	dec b			;47c5
	jr nc,l47d1h		;47c6
	dec e			;47c8
	add hl,bc		;47c9
	ld (bc),a		;47ca
	nop			;47cb
	nop			;47cc
	nop			;47cd
	ld l,h			;47ce
	rlca			;47cf
	daa			;47d0
l47d1h:
	dec b			;47d1
	ld l,h			;47d2
	add hl,bc		;47d3
	ld l,h			;47d4
	add hl,bc		;47d5
	nop			;47d6
	nop			;47d7
	nop			;47d8
	nop			;47d9
	dec de			;47da
	rrca			;47db
	ld hl,(03005h)		;47dc
	add hl,bc		;47df
	dec e			;47e0
	add hl,bc		;47e1
	ld (bc),a		;47e2
	nop			;47e3
	nop			;47e4
	nop			;47e5
	ld l,h			;47e6
	rlca			;47e7
	inc h			;47e8
	dec b			;47e9
	ld l,h			;47ea
	add hl,bc		;47eb
	ld l,h			;47ec
	add hl,bc		;47ed
	ld (bc),a		;47ee
	nop			;47ef
	nop			;47f0
	nop			;47f1
	nop			;47f2
	nop			;47f3
	daa			;47f4
	dec b			;47f5
	jr nc,l4801h		;47f6
	dec e			;47f8
	add hl,bc		;47f9
	ld (bc),a		;47fa
	nop			;47fb
	nop			;47fc
	nop			;47fd
	add hl,de		;47fe
	rrca			;47ff
	add hl,hl		;4800
l4801h:
	dec b			;4801
	ld sp,01e09h		;4802
	add hl,bc		;4805
	ld (bc),a		;4806
	nop			;4807
	nop			;4808
	nop			;4809
	nop			;480a
	nop			;480b
	inc l			;480c
	dec b			;480d
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
	dec h			;4818
	dec b			;4819
	nop			;481a
	nop			;481b
	nop			;481c
	nop			;481d
	ld (bc),a		;481e
	nop			;481f
	nop			;4820
	nop			;4821
	dec e			;4822
	rrca			;4823
	daa			;4824
	dec b			;4825
	inc sp			;4826
	add hl,bc		;4827
	jr nz,l4833h		;4828
	ld (bc),a		;482a
	nop			;482b
	nop			;482c
	nop			;482d
	nop			;482e
	nop			;482f
	nop			;4830
	nop			;4831
	nop			;4832
l4833h:
	nop			;4833
	nop			;4834
	nop			;4835
	ld (bc),a		;4836
	nop			;4837
	nop			;4838
	nop			;4839
	ld l,h			;483a
	ld (bc),a		;483b
	nop			;483c
	nop			;483d
	ld h,a			;483e
	ld (bc),a		;483f
	ld h,a			;4840
	ld (bc),a		;4841
	ld (bc),a		;4842
	nop			;4843
	nop			;4844
	nop			;4845
	ld l,h			;4846
	ld (bc),a		;4847
	nop			;4848
	nop			;4849
	nop			;484a
	nop			;484b
	nop			;484c
	nop			;484d
	nop			;484e
	nop			;484f
	nop			;4850
	nop			;4851
	inc d			;4852
	rrca			;4853
	inc l			;4854
	dec b			;4855
	jr c,l4861h		;4856
	ld sp,00209h		;4858
	nop			;485b
	nop			;485c
	nop			;485d
	nop			;485e
	nop			;485f
	ld l,h			;4860
l4861h:
	ld (bc),a		;4861
	ld h,a			;4862
	ld bc,00167h		;4863
	nop			;4866
	nop			;4867
	nop			;4868
	nop			;4869
	nop			;486a
	nop			;486b
	ld l,h			;486c
	rlca			;486d
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
	ld h,d			;4878
	ld a,(bc)		;4879
	nop			;487a
	nop			;487b
	nop			;487c
	nop			;487d
	nop			;487e
	nop			;487f
	ld h,c			;4880
	nop			;4881
	ld a,(bc)		;4882
	rrca			;4883
	ld l,003h		;4884
	ld l,009h		;4886
	add hl,hl		;4888
	add hl,bc		;4889
	ld bc,00000h		;488a
	nop			;488d
	ld l,h			;488e
	rlca			;488f
	nop			;4890
	nop			;4891
	nop			;4892
	nop			;4893
	nop			;4894
	nop			;4895
	inc bc			;4896
	nop			;4897
	ld l,003h		;4898
	ld a,(bc)		;489a
	rrca			;489b
	nop			;489c
	nop			;489d
	ld h,a			;489e
	ld bc,00167h		;489f
	inc bc			;48a2
	nop			;48a3
	nop			;48a4
	nop			;48a5
	ld l,h			;48a6
	rlca			;48a7
	ld l,h			;48a8
	rlca			;48a9
	nop			;48aa
	nop			;48ab
	nop			;48ac
	nop			;48ad
	inc bc			;48ae
	nop			;48af
	ld h,a			;48b0
	ld bc,00f0ah		;48b1
	ld l,003h		;48b4
	nop			;48b6
	nop			;48b7
	nop			;48b8
	nop			;48b9
	ld (bc),a		;48ba
	nop			;48bb
	nop			;48bc
	nop			;48bd
	ld de,0300fh		;48be
	inc bc			;48c1
	ld sp,02c09h		;48c2
	add hl,bc		;48c5
	nop			;48c6
	nop			;48c7
	nop			;48c8
	nop			;48c9
	ld l,h			;48ca
	rlca			;48cb
	nop			;48cc
	nop			;48cd
	ld l,h			;48ce
	rlca			;48cf
	ld l,h			;48d0
	rlca			;48d1
	inc bc			;48d2
	nop			;48d3
	ld sp,01903h		;48d4
	rrca			;48d7
	ld sp,03003h		;48d8
	add hl,bc		;48db
	dec hl			;48dc
	add hl,bc		;48dd
	ld bc,l6c00h		;48de
	rlca			;48e1
	ld a,(bc)		;48e2
	rrca			;48e3
	dec (hl)		;48e4
	inc bc			;48e5
	ld l,009h		;48e6
	add hl,hl		;48e8
	add hl,bc		;48e9
	ld bc,03000h		;48ea
	inc bc			;48ed
	ld l,h			;48ee
	rlca			;48ef
	nop			;48f0
	nop			;48f1
	ld l,h			;48f2
	add hl,bc		;48f3
	ld l,h			;48f4
	add hl,bc		;48f5
	inc bc			;48f6
	nop			;48f7
	ld l,003h		;48f8
	ld a,(bc)		;48fa
	rrca			;48fb
	inc sp			;48fc
	inc bc			;48fd
	inc sp			;48fe
	add hl,bc		;48ff
	ld l,009h		;4900
	ld bc,l6c00h		;4902
	add hl,bc		;4905
	ld l,h			;4906
	rlca			;4907
	nop			;4908
	nop			;4909
	nop			;490a
	nop			;490b
	nop			;490c
	nop			;490d
	nop			;490e
	nop			;490f
	inc sp			;4910
	inc bc			;4911
	ld a,(bc)		;4912
	rrca			;4913
	ld sp,03003h		;4914
	add hl,bc		;4917
	dec hl			;4918
	add hl,bc		;4919
	ld (bc),a		;491a
	nop			;491b
	nop			;491c
	nop			;491d
	ld d,00fh		;491e
	jr nc,l4925h		;4920
	ld sp,02c09h		;4922
l4925h:
	add hl,bc		;4925
	nop			;4926
	nop			;4927
	jr nc,l492dh		;4928
	ld l,h			;492a
	rlca			;492b
	nop			;492c
l492dh:
	nop			;492d
	nop			;492e
	nop			;492f
	nop			;4930
	nop			;4931
	inc bc			;4932
	nop			;4933
	ld sp,01803h		;4934
	rrca			;4937
	inc l			;4938
	inc bc			;4939
	nop			;493a
	nop			;493b
	nop			;493c
	nop			;493d
	ld bc,00000h		;493e
	nop			;4941
	ld (de),a		;4942
	rrca			;4943
	ld l,003h		;4944
	dec (hl)		;4946
	add hl,bc		;4947
	dec h			;4948
	add hl,bc		;4949
	ld bc,00000h		;494a
	nop			;494d
	ld l,h			;494e
	rlca			;494f
	nop			;4950
	nop			;4951
	nop			;4952
	nop			;4953
	nop			;4954
	nop			;4955
	inc bc			;4956
	nop			;4957
	dec (hl)		;4958
	inc bc			;4959
	ld (de),a		;495a
	rrca			;495b
	nop			;495c
	nop			;495d
	nop			;495e
	nop			;495f
	nop			;4960
	nop			;4961
	inc bc			;4962
	nop			;4963
	nop			;4964
	nop			;4965
	ld l,h			;4966
	rlca			;4967
	ld l,h			;4968
	rlca			;4969
	nop			;496a
	nop			;496b
	nop			;496c
	nop			;496d
	inc bc			;496e
	nop			;496f
	nop			;4970
	nop			;4971
	ld (de),a		;4972
	rrca			;4973
	ld l,003h		;4974
	inc sp			;4976
	add hl,bc		;4977
	inc h			;4978
	add hl,bc		;4979
	ld (bc),a		;497a
	nop			;497b
	nop			;497c
	nop			;497d
	inc d			;497e
	rrca			;497f
	jr nc,l4985h		;4980
	nop			;4982
	nop			;4983
	nop			;4984
l4985h:
	nop			;4985
	nop			;4986
	nop			;4987
	inc sp			;4988
	inc bc			;4989
	ld l,h			;498a
	rlca			;498b
	nop			;498c
	nop			;498d
	ld h,a			;498e
	ld bc,00167h		;498f
	inc bc			;4992
	nop			;4993
	nop			;4994
	nop			;4995
	ld d,00fh		;4996
	ld sp,00003h		;4998
	nop			;499b
	nop			;499c
	nop			;499d
	ld bc,l6700h		;499e
	ld bc,00f19h		;49a1
	inc sp			;49a4
	inc bc			;49a5
	nop			;49a6
	nop			;49a7
	nop			;49a8
	nop			;49a9
	ld bc,00000h		;49aa
	nop			;49ad
	ld l,h			;49ae
	rlca			;49af
	nop			;49b0
	nop			;49b1
	nop			;49b2
	nop			;49b3
	nop			;49b4
	nop			;49b5
	inc bc			;49b6
	nop			;49b7
	nop			;49b8
	nop			;49b9
	dec de			;49ba
	rrca			;49bb
	nop			;49bc
	nop			;49bd
	nop			;49be
	nop			;49bf
	nop			;49c0
	nop			;49c1
	ld bc,00000h		;49c2
	nop			;49c5
	ld l,h			;49c6
	rlca			;49c7
	nop			;49c8
	nop			;49c9
	nop			;49ca
	nop			;49cb
	nop			;49cc
	nop			;49cd
	nop			;49ce
	nop			;49cf
	nop			;49d0
	nop			;49d1
	ld d,00fh		;49d2
	dec (hl)		;49d4
	inc bc			;49d5
	nop			;49d6
	nop			;49d7
	nop			;49d8
	nop			;49d9
	ld (bc),a		;49da
	nop			;49db
	nop			;49dc
	nop			;49dd
	jr l49efh		;49de
	ld (hl),003h		;49e0
	nop			;49e2
	nop			;49e3
	nop			;49e4
	nop			;49e5
	nop			;49e6
	nop			;49e7
	nop			;49e8
	nop			;49e9
	ld l,h			;49ea
	rlca			;49eb
	nop			;49ec
	nop			;49ed
	nop			;49ee
l49efh:
	nop			;49ef
	nop			;49f0
	nop			;49f1
	inc bc			;49f2
	nop			;49f3
	nop			;49f4
	nop			;49f5
	jr l4a07h		;49f6
	nop			;49f8
	nop			;49f9
	nop			;49fa
	nop			;49fb
	nop			;49fc
	nop			;49fd
	ld bc,00000h		;49fe
	nop			;4a01
	ld de,0350fh		;4a02
	inc bc			;4a05
	inc l			;4a06
l4a07h:
	add hl,bc		;4a07
	dec h			;4a08
	add hl,bc		;4a09
	ld (bc),a		;4a0a
	nop			;4a0b
	nop			;4a0c
	nop			;4a0d
	ld l,h			;4a0e
	dec c			;4a0f
	dec (hl)		;4a10
	inc bc			;4a11
	jr nc,l4a1dh		;4a12
	add hl,hl		;4a14
	add hl,bc		;4a15
	ld (bc),a		;4a16
	nop			;4a17
	ld l,h			;4a18
	dec c			;4a19
	ld de,0350fh		;4a1a
l4a1dh:
	inc bc			;4a1d
	inc l			;4a1e
	add hl,bc		;4a1f
	dec h			;4a20
	add hl,bc		;4a21
	ld (bc),a		;4a22
	nop			;4a23
	ld de,06c0fh		;4a24
	dec c			;4a27
	dec (hl)		;4a28
	inc bc			;4a29
	jr nc,l4a35h		;4a2a
	add hl,hl		;4a2c
	add hl,bc		;4a2d
	ld (bc),a		;4a2e
	nop			;4a2f
	nop			;4a30
	nop			;4a31
	ld h,c			;4a32
	nop			;4a33
	nop			;4a34
l4a35h:
	nop			;4a35
	nop			;4a36
	nop			;4a37
	nop			;4a38
	nop			;4a39
	ld (bc),a		;4a3a
	nop			;4a3b
	ld l,h			;4a3c
	dec c			;4a3d
	nop			;4a3e
	nop			;4a3f
	ld l,h			;4a40
	inc bc			;4a41
	ld l,h			;4a42
	inc bc			;4a43
	ld l,h			;4a44
	inc bc			;4a45
	nop			;4a46
	nop			;4a47
	ld de,0000fh		;4a48
	nop			;4a4b
	dec (hl)		;4a4c
	inc bc			;4a4d
	inc l			;4a4e
	add hl,bc		;4a4f
	dec h			;4a50
	add hl,bc		;4a51
	ld (bc),a		;4a52
	nop			;4a53
	ld l,h			;4a54
	dec c			;4a55
	ld de,0350fh		;4a56
	inc bc			;4a59
	jr nc,l4a65h		;4a5a
	add hl,hl		;4a5c
	add hl,bc		;4a5d
	ld (bc),a		;4a5e
	nop			;4a5f
	ld de,06c0fh		;4a60
	dec c			;4a63
	dec (hl)		;4a64
l4a65h:
	inc bc			;4a65
	inc l			;4a66
	add hl,bc		;4a67
	dec h			;4a68
	add hl,bc		;4a69
	ld (bc),a		;4a6a
	nop			;4a6b
	ld l,h			;4a6c
	dec c			;4a6d
	ld de,0350fh		;4a6e
	inc bc			;4a71
	jr nc,l4a7dh		;4a72
	add hl,hl		;4a74
	add hl,bc		;4a75
	ld (bc),a		;4a76
	nop			;4a77
	ld h,c			;4a78
	nop			;4a79
	nop			;4a7a
	nop			;4a7b
	dec (hl)		;4a7c
l4a7dh:
	inc bc			;4a7d
	inc l			;4a7e
	add hl,bc		;4a7f
	dec h			;4a80
	add hl,bc		;4a81
	ld (bc),a		;4a82
	nop			;4a83
	nop			;4a84
	nop			;4a85
	ld l,h			;4a86
	dec c			;4a87
	ld l,h			;4a88
	inc bc			;4a89
	ld l,h			;4a8a
	inc bc			;4a8b
	ld l,h			;4a8c
	inc bc			;4a8d
	nop			;4a8e
	nop			;4a8f
	nop			;4a90
	nop			;4a91
	ld de,0350fh		;4a92
	inc bc			;4a95
	inc l			;4a96
	add hl,bc		;4a97
	dec h			;4a98
	add hl,bc		;4a99
	ld bc,00000h		;4a9a
	nop			;4a9d
	ld (de),a		;4a9e
	rrca			;4a9f
	ld (hl),003h		;4aa0
	ld l,009h		;4aa2
	daa			;4aa4
	add hl,bc		;4aa5
	ld bc,00000h		;4aa6
	nop			;4aa9
	nop			;4aaa
	nop			;4aab
	ld l,h			;4aac
	inc bc			;4aad
	ld l,h			;4aae
	inc bc			;4aaf
	ld l,h			;4ab0
	inc bc			;4ab1
	nop			;4ab2
	nop			;4ab3
	nop			;4ab4
	nop			;4ab5
	inc d			;4ab6
	rrca			;4ab7
	jr c,l4abfh		;4ab8
	jr nc,$+11		;4aba
	add hl,hl		;4abc
	add hl,bc		;4abd
	inc bc			;4abe
l4abfh:
	nop			;4abf
	nop			;4ac0
	nop			;4ac1
	ld d,00fh		;4ac2
	ld l,003h		;4ac4
	ld l,009h		;4ac6
	dec (hl)		;4ac8
	add hl,bc		;4ac9
	ld bc,00000h		;4aca
	nop			;4acd
	ld l,h			;4ace
	rlca			;4acf
	nop			;4ad0
	nop			;4ad1
	ld l,h			;4ad2
	inc bc			;4ad3
	ld l,h			;4ad4
	inc bc			;4ad5
	inc bc			;4ad6
	nop			;4ad7
	ld l,003h		;4ad8
	ld d,00fh		;4ada
	nop			;4adc
	nop			;4add
	ld a,(03509h)		;4ade
	add hl,bc		;4ae1
	nop			;4ae2
	nop			;4ae3
	ld l,h			;4ae4
	inc bc			;4ae5
	ld l,h			;4ae6
	rlca			;4ae7
	ld l,h			;4ae8
	rlca			;4ae9
	ld l,h			;4aea
	rlca			;4aeb
	ld l,h			;4aec
	rlca			;4aed
	inc bc			;4aee
	nop			;4aef
	ld a,(01403h)		;4af0
	rrca			;4af3
	ld l,003h		;4af4
	jr c,$+11		;4af6
	inc sp			;4af8
	add hl,bc		;4af9
	ld (bc),a		;4afa
	nop			;4afb
	ld l,h			;4afc
	rlca			;4afd
	ld d,00fh		;4afe
	jr nc,$+5		;4b00
	ld (hl),009h		;4b02
	ld sp,00009h		;4b04
	nop			;4b07
	jr c,l4b0dh		;4b08
	ld l,h			;4b0a
	rlca			;4b0b
	ld l,h			;4b0c
l4b0dh:
	ld (bc),a		;4b0d
	ld l,h			;4b0e
	ld (bc),a		;4b0f
	ld l,h			;4b10
	ld (bc),a		;4b11
	inc bc			;4b12
	nop			;4b13
	ld (hl),003h		;4b14
	ld d,00fh		;4b16
	ld sp,03503h		;4b18
	add hl,bc		;4b1b
	jr nc,$+11		;4b1c
	ld bc,l6c00h		;4b1e
	ld (bc),a		;4b21
	dec c			;4b22
	rrca			;4b23
	dec (hl)		;4b24
	inc bc			;4b25
	ld (hl),009h		;4b26
	ld sp,00109h		;4b28
	nop			;4b2b
	dec (hl)		;4b2c
	inc bc			;4b2d
	ld l,h			;4b2e
	rlca			;4b2f
	ld l,h			;4b30
	ld bc,0016ch		;4b31
	ld l,h			;4b34
	ld bc,00003h		;4b35
	ld (hl),003h		;4b38
	dec c			;4b3a
	rrca			;4b3b
	inc sp			;4b3c
	inc bc			;4b3d
	dec (hl)		;4b3e
	add hl,bc		;4b3f
	jr nc,$+11		;4b40
	ld bc,l6c00h		;4b42
	ld bc,0076ch		;4b45
	ld l,h			;4b48
	ld bc,0016ch		;4b49
	ld l,h			;4b4c
	ld bc,00000h		;4b4d
	dec (hl)		;4b50
	inc bc			;4b51
	inc d			;4b52
	rrca			;4b53
	jr c,$+5		;4b54
	inc sp			;4b56
	add hl,bc		;4b57
	ld l,009h		;4b58
	ld (bc),a		;4b5a
	nop			;4b5b
	ld l,h			;4b5c
	ld bc,00f12h		;4b5d
	ld (hl),003h		;4b60
	ld sp,02c09h		;4b62
	add hl,bc		;4b65
	nop			;4b66
	nop			;4b67
	inc sp			;4b68
	inc bc			;4b69
	ld l,h			;4b6a
	rlca			;4b6b
	ld l,h			;4b6c
	ld (bc),a		;4b6d
	ld l,h			;4b6e
	ld (bc),a		;4b6f
	ld l,h			;4b70
	ld (bc),a		;4b71
	inc bc			;4b72
	nop			;4b73
	ld sp,01103h		;4b74
	rrca			;4b77
	dec (hl)		;4b78
	inc bc			;4b79
	ld sp,02c09h		;4b7a
	add hl,bc		;4b7d
	ld bc,00000h		;4b7e
	nop			;4b81
	jr l4b93h		;4b82
	jr nc,l4b89h		;4b84
	inc sp			;4b86
	add hl,bc		;4b87
	inc l			;4b88
l4b89h:
	add hl,bc		;4b89
	ld bc,01800h		;4b8a
	rrca			;4b8d
	ld l,h			;4b8e
	dec c			;4b8f
	ld hl,(00003h)		;4b90
l4b93h:
	nop			;4b93
	nop			;4b94
	nop			;4b95
	inc bc			;4b96
	nop			;4b97
	ld l,h			;4b98
	dec c			;4b99
	jr l4babh		;4b9a
	jr nc,l4ba1h		;4b9c
	nop			;4b9e
	nop			;4b9f
	nop			;4ba0
l4ba1h:
	nop			;4ba1
	nop			;4ba2
	nop			;4ba3
	jr $+17			;4ba4
	ld l,h			;4ba6
	dec c			;4ba7
	ld hl,(00003h)		;4ba8
l4babh:
	nop			;4bab
	nop			;4bac
	nop			;4bad
	inc bc			;4bae
	nop			;4baf
	nop			;4bb0
	nop			;4bb1
	ld h,c			;4bb2
	nop			;4bb3
	jr nc,l4bb9h		;4bb4
	nop			;4bb6
	nop			;4bb7
	nop			;4bb8
l4bb9h:
	nop			;4bb9
	ld (bc),a		;4bba
	nop			;4bbb
	ld l,h			;4bbc
	dec c			;4bbd
	nop			;4bbe
	nop			;4bbf
	ld l,h			;4bc0
	inc bc			;4bc1
	nop			;4bc2
	nop			;4bc3
	nop			;4bc4
	nop			;4bc5
	nop			;4bc6
	nop			;4bc7
	jr $+17			;4bc8
	nop			;4bca
	nop			;4bcb
	jr nc,l4bd1h		;4bcc
	jr c,$+11		;4bce
	dec h			;4bd0
l4bd1h:
	add hl,bc		;4bd1
	inc bc			;4bd2
	nop			;4bd3
	ld l,h			;4bd4
	dec c			;4bd5
	jr l4be7h		;4bd6
	ld hl,(00003h)		;4bd8
	nop			;4bdb
	nop			;4bdc
	nop			;4bdd
	ld bc,01800h		;4bde
	rrca			;4be1
	ld l,h			;4be2
	dec c			;4be3
	jr nc,$+5		;4be4
	ld h,a			;4be6
l4be7h:
	ld bc,00167h		;4be7
	ld bc,l6c00h		;4bea
	dec c			;4bed
	jr l4bffh		;4bee
	ld hl,(00003h)		;4bf0
	nop			;4bf3
	nop			;4bf4
	nop			;4bf5
	inc bc			;4bf6
	nop			;4bf7
	ld h,c			;4bf8
	nop			;4bf9
	nop			;4bfa
	nop			;4bfb
	jr nc,l4c01h		;4bfc
	nop			;4bfe
l4bffh:
	nop			;4bff
	nop			;4c00
l4c01h:
	nop			;4c01
	ld bc,00000h		;4c02
	nop			;4c05
	ld l,h			;4c06
	dec c			;4c07
	ld l,h			;4c08
	inc bc			;4c09
	nop			;4c0a
	nop			;4c0b
	nop			;4c0c
	nop			;4c0d
	nop			;4c0e
	nop			;4c0f
	nop			;4c10
	nop			;4c11
	jr l4c23h		;4c12
	jr nc,l4c19h		;4c14
	inc a			;4c16
	add hl,bc		;4c17
	add hl,hl		;4c18
l4c19h:
	add hl,bc		;4c19
	ld (bc),a		;4c1a
	nop			;4c1b
	nop			;4c1c
	nop			;4c1d
	add hl,de		;4c1e
	rrca			;4c1f
	ld sp,00005h		;4c20
l4c23h:
	nop			;4c23
	nop			;4c24
	nop			;4c25
	nop			;4c26
	nop			;4c27
	nop			;4c28
	nop			;4c29
	nop			;4c2a
	nop			;4c2b
	ld l,h			;4c2c
	inc bc			;4c2d
	nop			;4c2e
	nop			;4c2f
	nop			;4c30
	nop			;4c31
	inc bc			;4c32
	nop			;4c33
	ld de,l610fh		;4c34
	nop			;4c37
	inc sp			;4c38
	dec b			;4c39
	nop			;4c3a
	nop			;4c3b
	nop			;4c3c
	nop			;4c3d
	ld bc,l6c00h		;4c3e
	dec c			;4c41
	ld de,0350fh		;4c42
	inc bc			;4c45
	inc l			;4c46
	add hl,bc		;4c47
	daa			;4c48
	add hl,bc		;4c49
	ld (bc),a		;4c4a
	nop			;4c4b
	ld de,06c0fh		;4c4c
	dec c			;4c4f
	dec (hl)		;4c50
	inc bc			;4c51
	daa			;4c52
	rlca			;4c53
	inc l			;4c54
	dec bc			;4c55
	ld (bc),a		;4c56
	nop			;4c57
	ld l,h			;4c58
	dec c			;4c59
	ld de,0350fh		;4c5a
	inc bc			;4c5d
	inc l			;4c5e
	add hl,bc		;4c5f
	daa			;4c60
	add hl,bc		;4c61
	ld (bc),a		;4c62
	nop			;4c63
	dec b			;4c64
	rrca			;4c65
	ld l,h			;4c66
	dec c			;4c67
	dec (hl)		;4c68
	inc bc			;4c69
	daa			;4c6a
	rlca			;4c6b
	inc l			;4c6c
	dec bc			;4c6d
	ld bc,00000h		;4c6e
	nop			;4c71
	ld h,c			;4c72
	nop			;4c73
	dec (hl)		;4c74
	inc bc			;4c75
	inc l			;4c76
	add hl,bc		;4c77
	daa			;4c78
	add hl,bc		;4c79
	nop			;4c7a
	nop			;4c7b
	ld l,h			;4c7c
	dec c			;4c7d
	nop			;4c7e
	nop			;4c7f
	ld l,h			;4c80
	inc bc			;4c81
	ld l,h			;4c82
	inc bc			;4c83
	ld l,h			;4c84
	inc bc			;4c85
	nop			;4c86
	nop			;4c87
	ld de,0000fh		;4c88
	nop			;4c8b
	dec (hl)		;4c8c
	inc bc			;4c8d
	inc l			;4c8e
	add hl,bc		;4c8f
	daa			;4c90
	add hl,bc		;4c91
	ld (bc),a		;4c92
	nop			;4c93
	ld l,h			;4c94
	dec c			;4c95
	ld de,0350fh		;4c96
	inc bc			;4c99
	daa			;4c9a
	rlca			;4c9b
	inc l			;4c9c
	dec bc			;4c9d
	ld (bc),a		;4c9e
	nop			;4c9f
	ld de,06c0fh		;4ca0
	dec c			;4ca3
	dec (hl)		;4ca4
	inc bc			;4ca5
	inc l			;4ca6
	add hl,bc		;4ca7
	daa			;4ca8
	add hl,bc		;4ca9
	ld (bc),a		;4caa
	nop			;4cab
	ld l,h			;4cac
	dec c			;4cad
	dec b			;4cae
	rrca			;4caf
	dec (hl)		;4cb0
	inc bc			;4cb1
	daa			;4cb2
	rlca			;4cb3
	inc l			;4cb4
	dec bc			;4cb5
	ld bc,l6100h		;4cb6
	nop			;4cb9
	nop			;4cba
	nop			;4cbb
	dec (hl)		;4cbc
	inc bc			;4cbd
	ld l,h			;4cbe
	add hl,bc		;4cbf
	ld l,h			;4cc0
	add hl,bc		;4cc1
	nop			;4cc2
	nop			;4cc3
	nop			;4cc4
	nop			;4cc5
	ld l,h			;4cc6
	dec c			;4cc7
	ld l,h			;4cc8
	ld bc,00000h		;4cc9
	nop			;4ccc
	nop			;4ccd
	nop			;4cce
	nop			;4ccf
	nop			;4cd0
	nop			;4cd1
	nop			;4cd2
	nop			;4cd3
	ld h,c			;4cd4
	nop			;4cd5
	ld h,c			;4cd6
	nop			;4cd7
	ld h,c			;4cd8
	nop			;4cd9
	nop			;4cda
	nop			;4cdb
	nop			;4cdc
	nop			;4cdd
	nop			;4cde
	nop			;4cdf
	ld h,005h		;4ce0
	inc l			;4ce2
	add hl,bc		;4ce3
	daa			;4ce4
	add hl,bc		;4ce5
	inc bc			;4ce6
	nop			;4ce7
	nop			;4ce8
	nop			;4ce9
	nop			;4cea
	nop			;4ceb
	daa			;4cec
	dec b			;4ced
	ld hl,(02509h)		;4cee
	add hl,bc		;4cf1
	inc bc			;4cf2
	nop			;4cf3
	nop			;4cf4
	nop			;4cf5
	nop			;4cf6
	nop			;4cf7
	jr z,l4cffh		;4cf8
	daa			;4cfa
	add hl,bc		;4cfb
	inc l			;4cfc
	add hl,bc		;4cfd
	inc bc			;4cfe
l4cffh:
	nop			;4cff
	nop			;4d00
	nop			;4d01
	ld a,(bc)		;4d02
	rrca			;4d03
	add hl,hl		;4d04
	add hl,bc		;4d05
	add hl,hl		;4d06
	add hl,bc		;4d07
	ld l,009h		;4d08
	ld bc,00000h		;4d0a
	nop			;4d0d
	ld l,h			;4d0e
	dec c			;4d0f
	nop			;4d10
	nop			;4d11
	daa			;4d12
	add hl,bc		;4d13
	inc l			;4d14
	add hl,bc		;4d15
	nop			;4d16
	nop			;4d17
	nop			;4d18
	nop			;4d19
	ld a,(bc)		;4d1a
	rrca			;4d1b
	ld h,a			;4d1c
	dec b			;4d1d
	add hl,hl		;4d1e
	add hl,bc		;4d1f
	ld l,009h		;4d20
	ld bc,00a00h		;4d22
	rrca			;4d25
	ld l,h			;4d26
	dec c			;4d27
	nop			;4d28
	nop			;4d29
	inc l			;4d2a
	add hl,bc		;4d2b
	ld sp,00109h		;4d2c
	nop			;4d2f
	ld l,h			;4d30
	dec c			;4d31
	ld d,00fh		;4d32
	ld l,e			;4d34
	ld bc,00000h		;4d35
	nop			;4d38
	nop			;4d39
	ld (bc),a		;4d3a
	nop			;4d3b
	ld h,c			;4d3c
	nop			;4d3d
	ld l,h			;4d3e
	dec c			;4d3f
	nop			;4d40
	nop			;4d41
	jr nz,l4d4dh		;4d42
	inc h			;4d44
	add hl,bc		;4d45
	nop			;4d46
	nop			;4d47
	nop			;4d48
	nop			;4d49
	ld d,00fh		;4d4a
	nop			;4d4c
l4d4dh:
	nop			;4d4d
	dec h			;4d4e
	add hl,bc		;4d4f
	add hl,hl		;4d50
	add hl,bc		;4d51
	ld (bc),a		;4d52
	nop			;4d53
	ld a,(bc)		;4d54
	rrca			;4d55
	ld l,h			;4d56
	dec c			;4d57
	nop			;4d58
	nop			;4d59
	inc h			;4d5a
	add hl,bc		;4d5b
	daa			;4d5c
	add hl,bc		;4d5d
	ld bc,l6c00h		;4d5e
	dec c			;4d61
	ld a,(bc)		;4d62
	rrca			;4d63
	ld l,e			;4d64
	ld bc,00925h		;4d65
	add hl,hl		;4d68
	add hl,bc		;4d69
	ld bc,l6100h		;4d6a
	nop			;4d6d
	ld l,h			;4d6e
	dec c			;4d6f
	nop			;4d70
	nop			;4d71
	daa			;4d72
	add hl,bc		;4d73
	inc l			;4d74
	add hl,bc		;4d75
	nop			;4d76
	nop			;4d77
	nop			;4d78
	nop			;4d79
	ld a,(bc)		;4d7a
	rrca			;4d7b
	nop			;4d7c
	nop			;4d7d
	nop			;4d7e
	nop			;4d7f
	nop			;4d80
	nop			;4d81
	dec b			;4d82
	nop			;4d83
	ld a,(bc)		;4d84
	rrca			;4d85
	ld l,h			;4d86
	dec c			;4d87
	nop			;4d88
	nop			;4d89
	nop			;4d8a
	nop			;4d8b
	nop			;4d8c
	nop			;4d8d
	ld bc,l6c00h		;4d8e
	dec c			;4d91
	ld a,(bc)		;4d92
	rrca			;4d93
	ld l,e			;4d94
	ld bc,00929h		;4d95
	dec e			;4d98
	add hl,bc		;4d99
	ld bc,l6100h		;4d9a
	nop			;4d9d
	ld l,h			;4d9e
	dec c			;4d9f
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
	ld d,00fh		;4daa
	nop			;4dac
	nop			;4dad
	ld h,a			;4dae
	ld bc,00167h		;4daf
	ld (bc),a		;4db2
	nop			;4db3
	ld d,00fh		;4db4
	ld l,h			;4db6
	dec c			;4db7
	nop			;4db8
	nop			;4db9
	nop			;4dba
	nop			;4dbb
	nop			;4dbc
	nop			;4dbd
	ld (bc),a		;4dbe
	nop			;4dbf
	ld h,c			;4dc0
	nop			;4dc1
	dec c			;4dc2
	rrca			;4dc3
	inc l			;4dc4
	add hl,bc		;4dc5
	inc l			;4dc6
	add hl,bc		;4dc7
	ld sp,00109h		;4dc8
	nop			;4dcb
	nop			;4dcc
	nop			;4dcd
	ld l,h			;4dce
	dec c			;4dcf
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
	dec c			;4dda
	rrca			;4ddb
	ld h,a			;4ddc
	dec b			;4ddd
	ld h,a			;4dde
	ld bc,00167h		;4ddf
	ld bc,00d00h		;4de2
	rrca			;4de5
	ld l,h			;4de6
	dec c			;4de7
	nop			;4de8
	nop			;4de9
	nop			;4dea
	nop			;4deb
	nop			;4dec
	nop			;4ded
	ld bc,l6c00h		;4dee
	dec c			;4df1
	add hl,de		;4df2
	rrca			;4df3
	ld l,e			;4df4
	ld bc,00929h		;4df5
	inc l			;4df8
	add hl,bc		;4df9
	ld (bc),a		;4dfa
	nop			;4dfb
	ld h,c			;4dfc
	nop			;4dfd
	ld l,h			;4dfe
	dec c			;4dff
	nop			;4e00
	nop			;4e01
	nop			;4e02
	nop			;4e03
	nop			;4e04
	nop			;4e05
	nop			;4e06
	nop			;4e07
	nop			;4e08
	nop			;4e09
	add hl,de		;4e0a
	rrca			;4e0b
	nop			;4e0c
	nop			;4e0d
	daa			;4e0e
	add hl,bc		;4e0f
	ld hl,(00209h)		;4e10
	nop			;4e13
	dec c			;4e14
	rrca			;4e15
	ld l,h			;4e16
	dec c			;4e17
	nop			;4e18
	nop			;4e19
	nop			;4e1a
	nop			;4e1b
	nop			;4e1c
	nop			;4e1d
	ld bc,l6c00h		;4e1e
	dec c			;4e21
	dec c			;4e22
	rrca			;4e23
	ld l,e			;4e24
	ld bc,00929h		;4e25
	inc l			;4e28
	add hl,bc		;4e29
	ex af,af'		;4e2a
	nop			;4e2b
	ld h,c			;4e2c
	nop			;4e2d
	ld l,h			;4e2e
	dec c			;4e2f
	nop			;4e30
	nop			;4e31
	nop			;4e32
	nop			;4e33
	nop			;4e34
	nop			;4e35
	nop			;4e36
	nop			;4e37
	nop			;4e38
	nop			;4e39
	dec c			;4e3a
	rrca			;4e3b
	nop			;4e3c
	nop			;4e3d
	dec h			;4e3e
	add hl,bc		;4e3f
	add hl,hl		;4e40
	add hl,bc		;4e41
	ld bc,00d00h		;4e42
	rrca			;4e45
	ld l,h			;4e46
	dec c			;4e47
	nop			;4e48
	nop			;4e49
	daa			;4e4a
	add hl,bc		;4e4b
	ld hl,(00109h)		;4e4c
	nop			;4e4f
	ld l,h			;4e50
	dec c			;4e51
	dec c			;4e52
	rrca			;4e53
	ld l,e			;4e54
	ld bc,00000h		;4e55
	nop			;4e58
	nop			;4e59
	ld bc,l6100h		;4e5a
	nop			;4e5d
	ld l,h			;4e5e
	dec c			;4e5f
	nop			;4e60
	nop			;4e61
	inc h			;4e62
	add hl,bc		;4e63
	daa			;4e64
	add hl,bc		;4e65
	nop			;4e66
	nop			;4e67
	nop			;4e68
	nop			;4e69
	add hl,de		;4e6a
	rrca			;4e6b
	nop			;4e6c
	nop			;4e6d
	dec h			;4e6e
	add hl,bc		;4e6f
	add hl,hl		;4e70
	add hl,bc		;4e71
	ld (bc),a		;4e72
	nop			;4e73
	add hl,de		;4e74
	rrca			;4e75
	ld l,h			;4e76
	dec c			;4e77
	nop			;4e78
	nop			;4e79
	nop			;4e7a
	nop			;4e7b
	nop			;4e7c
	nop			;4e7d
	ld (bc),a		;4e7e
	nop			;4e7f
	ld h,c			;4e80
	nop			;4e81
	rrca			;4e82
	rrca			;4e83
	daa			;4e84
	dec b			;4e85
	ld (03309h),hl		;4e86
	add hl,bc		;4e89
	ld bc,00000h		;4e8a
	nop			;4e8d
	ld l,h			;4e8e
	dec c			;4e8f
	add hl,hl		;4e90
	dec b			;4e91
	inc h			;4e92
	add hl,bc		;4e93
	dec (hl)		;4e94
	add hl,bc		;4e95
	nop			;4e96
	nop			;4e97
	nop			;4e98
	nop			;4e99
	rrca			;4e9a
	rrca			;4e9b
	dec hl			;4e9c
	dec b			;4e9d
	nop			;4e9e
	nop			;4e9f
	nop			;4ea0
	nop			;4ea1
	ld bc,00f00h		;4ea2
	rrca			;4ea5
	ld l,h			;4ea6
	dec c			;4ea7
	daa			;4ea8
	dec b			;4ea9
	jr nz,l4eb5h		;4eaa
	ld sp,00109h		;4eac
	nop			;4eaf
	ld l,h			;4eb0
	dec c			;4eb1
	dec de			;4eb2
	rrca			;4eb3
	add hl,hl		;4eb4
l4eb5h:
	dec b			;4eb5
	ld (03309h),hl		;4eb6
	add hl,bc		;4eb9
	ld (bc),a		;4eba
	nop			;4ebb
	ld h,c			;4ebc
	nop			;4ebd
	ld l,h			;4ebe
	dec c			;4ebf
	dec hl			;4ec0
	dec b			;4ec1
	nop			;4ec2
	nop			;4ec3
	nop			;4ec4
	nop			;4ec5
	nop			;4ec6
	nop			;4ec7
	nop			;4ec8
	nop			;4ec9
	dec de			;4eca
	rrca			;4ecb
	inc l			;4ecc
	dec b			;4ecd
	ld e,009h		;4ece
	jr nc,$+11		;4ed0
	ld (bc),a		;4ed2
	nop			;4ed3
	rrca			;4ed4
	rrca			;4ed5
	ld l,h			;4ed6
	dec c			;4ed7
	add hl,hl		;4ed8
	dec b			;4ed9
	jr nz,l4ee5h		;4eda
	ld sp,00109h		;4edc
	nop			;4edf
	ld l,h			;4ee0
	dec c			;4ee1
	rrca			;4ee2
	rrca			;4ee3
	dec hl			;4ee4
l4ee5h:
	dec b			;4ee5
	nop			;4ee6
	nop			;4ee7
	nop			;4ee8
	nop			;4ee9
	ld bc,l6100h		;4eea
	nop			;4eed
	ld l,h			;4eee
	dec c			;4eef
	inc l			;4ef0
	dec b			;4ef1
	ld e,009h		;4ef2
	ld l,009h		;4ef4
	nop			;4ef6
	nop			;4ef7
	nop			;4ef8
	nop			;4ef9
	rrca			;4efa
	rrca			;4efb
	ld l,005h		;4efc
	dec e			;4efe
	add hl,bc		;4eff
	jr nc,l4f0bh		;4f00
	ex af,af'		;4f02
	nop			;4f03
	rrca			;4f04
	rrca			;4f05
	ld l,h			;4f06
	dec c			;4f07
	dec hl			;4f08
	dec b			;4f09
	dec de			;4f0a
l4f0bh:
	add hl,bc		;4f0b
	inc l			;4f0c
	add hl,bc		;4f0d
	ex af,af'		;4f0e
	nop			;4f0f
	ld l,h			;4f10
	dec c			;4f11
	rrca			;4f12
	rrca			;4f13
	inc l			;4f14
	dec b			;4f15
	dec e			;4f16
	add hl,bc		;4f17
	ld l,009h		;4f18
	ld bc,l6100h		;4f1a
	nop			;4f1d
	ld l,h			;4f1e
	dec c			;4f1f
	ld l,005h		;4f20
	nop			;4f22
	nop			;4f23
	nop			;4f24
	nop			;4f25
	nop			;4f26
	nop			;4f27
	nop			;4f28
	nop			;4f29
	dec de			;4f2a
	rrca			;4f2b
	jr nc,l4f33h		;4f2c
	nop			;4f2e
	nop			;4f2f
	nop			;4f30
	nop			;4f31
	ld (bc),a		;4f32
l4f33h:
	nop			;4f33
	dec de			;4f34
	rrca			;4f35
	ld l,h			;4f36
	dec c			;4f37
	inc l			;4f38
	dec b			;4f39
	nop			;4f3a
	nop			;4f3b
	nop			;4f3c
	nop			;4f3d
	ld (bc),a		;4f3e
	nop			;4f3f
	ld h,c			;4f40
	nop			;4f41
	ld a,(bc)		;4f42
	rrca			;4f43
	ld l,005h		;4f44
	add hl,hl		;4f46
	add hl,bc		;4f47
	inc l			;4f48
	add hl,bc		;4f49
	ld bc,00000h		;4f4a
	nop			;4f4d
	ld l,h			;4f4e
	dec c			;4f4f
	jr nc,l4f57h		;4f50
	nop			;4f52
	nop			;4f53
	nop			;4f54
	nop			;4f55
	nop			;4f56
l4f57h:
	nop			;4f57
	nop			;4f58
	nop			;4f59
	ld a,(bc)		;4f5a
	rrca			;4f5b
	ld sp,00005h		;4f5c
	nop			;4f5f
	nop			;4f60
	nop			;4f61
	ex af,af'		;4f62
	nop			;4f63
	ld a,(bc)		;4f64
	rrca			;4f65
	ld l,h			;4f66
	dec c			;4f67
	ld l,005h		;4f68
	ld h,a			;4f6a
	ld bc,00167h		;4f6b
	ex af,af'		;4f6e
	nop			;4f6f
	ld l,h			;4f70
	dec c			;4f71
	ld d,00fh		;4f72
	jr nc,l4f7bh		;4f74
	nop			;4f76
	nop			;4f77
	nop			;4f78
	nop			;4f79
	ld (bc),a		;4f7a
l4f7bh:
	nop			;4f7b
	ld h,c			;4f7c
	nop			;4f7d
	ld l,h			;4f7e
	dec c			;4f7f
	ld sp,00005h		;4f80
	nop			;4f83
	nop			;4f84
	nop			;4f85
	nop			;4f86
	nop			;4f87
	nop			;4f88
	nop			;4f89
	ld d,00fh		;4f8a
	inc sp			;4f8c
	dec b			;4f8d
	nop			;4f8e
	nop			;4f8f
	nop			;4f90
	nop			;4f91
	ld (bc),a		;4f92
	nop			;4f93
	ld a,(bc)		;4f94
	rrca			;4f95
	ld l,h			;4f96
	dec c			;4f97
	dec (hl)		;4f98
	dec b			;4f99
	nop			;4f9a
	nop			;4f9b
	nop			;4f9c
	nop			;4f9d
	ld bc,l6c00h		;4f9e
	dec c			;4fa1
	ld a,(bc)		;4fa2
	rrca			;4fa3
	inc sp			;4fa4
	dec b			;4fa5
	daa			;4fa6
	add hl,bc		;4fa7
	ld hl,(00109h)		;4fa8
	nop			;4fab
	ld h,c			;4fac
	nop			;4fad
	ld l,h			;4fae
	dec c			;4faf
	nop			;4fb0
	nop			;4fb1
	nop			;4fb2
	nop			;4fb3
	nop			;4fb4
	nop			;4fb5
	inc bc			;4fb6
	nop			;4fb7
	ld de,0000fh		;4fb8
	nop			;4fbb
	nop			;4fbc
	nop			;4fbd
	nop			;4fbe
	nop			;4fbf
	nop			;4fc0
	nop			;4fc1
	ld bc,l6c00h		;4fc2
	dec c			;4fc5
	ld de,0000fh		;4fc6
	nop			;4fc9
	ld h,a			;4fca
	ld bc,00167h		;4fcb
	nop			;4fce
	nop			;4fcf
	ld h,c			;4fd0
	nop			;4fd1
	rrca			;4fd2
	rrca			;4fd3
	ld sp,00005h		;4fd4
	nop			;4fd7
	nop			;4fd8
	nop			;4fd9
	ld (bc),a		;4fda
	nop			;4fdb
	nop			;4fdc
	nop			;4fdd
	ld de,0000fh		;4fde
	nop			;4fe1
	nop			;4fe2
	nop			;4fe3
	nop			;4fe4
	nop			;4fe5
	nop			;4fe6
	nop			;4fe7
	nop			;4fe8
	nop			;4fe9
	ld (de),a		;4fea
	rrca			;4feb
	nop			;4fec
	nop			;4fed
	ld sp,03509h		;4fee
	add hl,bc		;4ff1
	ld (bc),a		;4ff2
	nop			;4ff3
	nop			;4ff4
	nop			;4ff5
	inc d			;4ff6
	rrca			;4ff7
	nop			;4ff8
	nop			;4ff9
	inc sp			;4ffa
	add hl,bc		;4ffb
	ld (hl),009h		;4ffc
	rlca			;4ffe
	nop			;4fff
	nop			;5000
	nop			;5001
	ld a,(bc)		;5002
	rrca			;5003
	add hl,hl		;5004
	dec b			;5005
	dec (hl)		;5006
	add hl,bc		;5007
	jr c,$+11		;5008
	ld bc,00000h		;500a
	nop			;500d
	ld l,h			;500e
	dec c			;500f
	nop			;5010
	nop			;5011
	ld sp,03509h		;5012
	add hl,bc		;5015
	inc bc			;5016
	nop			;5017
	nop			;5018
	nop			;5019
	ld a,(bc)		;501a
	rrca			;501b
	ld h,a			;501c
	ex af,af'		;501d
	jr nc,l5029h		;501e
	inc sp			;5020
	add hl,bc		;5021
	ld bc,00a00h		;5022
	rrca			;5025
	ld l,h			;5026
	dec c			;5027
	nop			;5028
l5029h:
	nop			;5029
	ld sp,03509h		;502a
	add hl,bc		;502d
	ld bc,l6c00h		;502e
	dec c			;5031
	ld d,00fh		;5032
	ld l,e			;5034
	ld bc,00000h		;5035
	nop			;5038
	nop			;5039
	ld (bc),a		;503a
	nop			;503b
	ld h,c			;503c
	nop			;503d
	ld l,h			;503e
	dec c			;503f
	nop			;5040
	nop			;5041
	inc l			;5042
	add hl,bc		;5043
	ld sp,00309h		;5044
	nop			;5047
	nop			;5048
	nop			;5049
	ld d,00fh		;504a
	nop			;504c
	nop			;504d
	ld sp,03509h		;504e
	add hl,bc		;5051
	ld (bc),a		;5052
	nop			;5053
	ld a,(bc)		;5054
	rrca			;5055
	ld l,h			;5056
	dec c			;5057
	nop			;5058
	nop			;5059
	jr nc,l5065h		;505a
	inc sp			;505c
	add hl,bc		;505d
	ld bc,l6c00h		;505e
	dec c			;5061
	ld a,(bc)		;5062
	rrca			;5063
	ld l,e			;5064
l5065h:
	ld bc,00931h		;5065
	dec (hl)		;5068
	add hl,bc		;5069
	ld bc,l6100h		;506a
	nop			;506d
	ld l,h			;506e
	dec c			;506f
	nop			;5070
	nop			;5071
	inc sp			;5072
	add hl,bc		;5073
	jr c,l507fh		;5074
	inc bc			;5076
	nop			;5077
	nop			;5078
	nop			;5079
	ld a,(bc)		;507a
	rrca			;507b
	nop			;507c
	nop			;507d
	nop			;507e
l507fh:
	nop			;507f
	nop			;5080
	nop			;5081
	ld bc,00a00h		;5082
	rrca			;5085
	ld l,h			;5086
	dec c			;5087
	nop			;5088
	nop			;5089
	nop			;508a
	nop			;508b
	nop			;508c
	nop			;508d
	ld bc,l6c00h		;508e
	dec c			;5091
	ld a,(bc)		;5092
	rrca			;5093
	ld l,e			;5094
	ld bc,00c27h		;5095
	inc l			;5098
	inc c			;5099
	ld bc,l6100h		;509a
	nop			;509d
	ld l,h			;509e
	dec c			;509f
	nop			;50a0
	nop			;50a1
	nop			;50a2
	nop			;50a3
	nop			;50a4
	nop			;50a5
	inc bc			;50a6
	nop			;50a7
	nop			;50a8
	nop			;50a9
	ld d,00fh		;50aa
	nop			;50ac
	nop			;50ad
	ld h,a			;50ae
	ld bc,00167h		;50af
	ld (bc),a		;50b2
	nop			;50b3
	ld d,00fh		;50b4
	ld l,h			;50b6
	dec c			;50b7
	nop			;50b8
	nop			;50b9
	nop			;50ba
	nop			;50bb
	nop			;50bc
	nop			;50bd
	ld (bc),a		;50be
	nop			;50bf
	ld h,c			;50c0
	nop			;50c1
	dec c			;50c2
	rrca			;50c3
	inc l			;50c4
	dec b			;50c5
	jr c,l50d1h		;50c6
	dec h			;50c8
	add hl,bc		;50c9
	ld bc,00000h		;50ca
	nop			;50cd
	ld l,h			;50ce
	dec c			;50cf
	nop			;50d0
l50d1h:
	nop			;50d1
	nop			;50d2
	nop			;50d3
	nop			;50d4
	nop			;50d5
	nop			;50d6
	nop			;50d7
	nop			;50d8
	nop			;50d9
	dec c			;50da
	rrca			;50db
	ld h,a			;50dc
	ex af,af'		;50dd
	ld h,a			;50de
	ld bc,00167h		;50df
	ld bc,00d00h		;50e2
	rrca			;50e5
	ld l,h			;50e6
	dec c			;50e7
	nop			;50e8
	nop			;50e9
	nop			;50ea
	nop			;50eb
	nop			;50ec
	nop			;50ed
	ld bc,l6c00h		;50ee
	dec c			;50f1
	add hl,de		;50f2
	rrca			;50f3
	ld l,e			;50f4
	ld bc,00935h		;50f5
	ld l,009h		;50f8
	ld (bc),a		;50fa
	nop			;50fb
	ld h,c			;50fc
	nop			;50fd
	ld l,h			;50fe
	dec c			;50ff
	nop			;5100
	nop			;5101
	nop			;5102
	nop			;5103
	nop			;5104
	nop			;5105
	nop			;5106
	nop			;5107
	nop			;5108
	nop			;5109
	add hl,de		;510a
	rrca			;510b
	nop			;510c
	nop			;510d
	inc sp			;510e
	add hl,bc		;510f
	inc l			;5110
	add hl,bc		;5111
	ld (bc),a		;5112
	nop			;5113
	dec c			;5114
	rrca			;5115
	ld l,h			;5116
	dec c			;5117
	nop			;5118
	nop			;5119
	nop			;511a
	nop			;511b
	nop			;511c
	nop			;511d
	ld bc,l6c00h		;511e
	dec c			;5121
	dec c			;5122
	rrca			;5123
	ld l,e			;5124
	ld bc,00935h		;5125
	ld l,009h		;5128
	ld bc,l6100h		;512a
	nop			;512d
	ld l,h			;512e
	dec c			;512f
	nop			;5130
	nop			;5131
	nop			;5132
	nop			;5133
	nop			;5134
	nop			;5135
	nop			;5136
	nop			;5137
	nop			;5138
	nop			;5139
	dec c			;513a
	rrca			;513b
	nop			;513c
	nop			;513d
	ld sp,02a09h		;513e
	add hl,bc		;5141
	ld bc,00d00h		;5142
	rrca			;5145
	ld l,h			;5146
	dec c			;5147
	nop			;5148
	nop			;5149
	inc sp			;514a
	add hl,bc		;514b
	inc l			;514c
	add hl,bc		;514d
	ld bc,l6c00h		;514e
	dec c			;5151
	dec c			;5152
	rrca			;5153
	ld l,e			;5154
	ld bc,00000h		;5155
	nop			;5158
	nop			;5159
	ld bc,l6100h		;515a
	nop			;515d
	ld l,h			;515e
	dec c			;515f
	nop			;5160
	nop			;5161
	jr nc,l516dh		;5162
	add hl,hl		;5164
	add hl,bc		;5165
	inc bc			;5166
	nop			;5167
	nop			;5168
	nop			;5169
	add hl,de		;516a
	rrca			;516b
	nop			;516c
l516dh:
	nop			;516d
	ld sp,02a09h		;516e
	add hl,bc		;5171
	ld (bc),a		;5172
	nop			;5173
	add hl,de		;5174
	rrca			;5175
	ld l,h			;5176
	dec c			;5177
	nop			;5178
	nop			;5179
	nop			;517a
	nop			;517b
	nop			;517c
	nop			;517d
	ld (bc),a		;517e
	nop			;517f
	ld h,c			;5180
	nop			;5181
	rrca			;5182
	rrca			;5183
	daa			;5184
	dec b			;5185
	dec hl			;5186
	add hl,bc		;5187
	jr nc,l5193h		;5188
	ld bc,00000h		;518a
	nop			;518d
	ld l,h			;518e
	dec c			;518f
	add hl,hl		;5190
	dec b			;5191
	nop			;5192
l5193h:
	nop			;5193
	nop			;5194
	nop			;5195
	inc bc			;5196
	nop			;5197
	nop			;5198
	nop			;5199
	rrca			;519a
	rrca			;519b
	dec hl			;519c
	dec b			;519d
	inc l			;519e
	add hl,bc		;519f
	jr nc,l51abh		;51a0
	ld bc,00f00h		;51a2
	rrca			;51a5
	ld l,h			;51a6
	dec c			;51a7
	daa			;51a8
	dec b			;51a9
	dec hl			;51aa
l51abh:
	add hl,bc		;51ab
	jr nc,l51b7h		;51ac
	ld bc,l6c00h		;51ae
	dec c			;51b1
	dec de			;51b2
	rrca			;51b3
	add hl,hl		;51b4
	dec b			;51b5
	nop			;51b6
l51b7h:
	nop			;51b7
	nop			;51b8
	nop			;51b9
	ld (bc),a		;51ba
	nop			;51bb
	ld h,c			;51bc
	nop			;51bd
	ld l,h			;51be
	dec c			;51bf
	dec hl			;51c0
	dec b			;51c1
	ld l,009h		;51c2
	ld sp,00309h		;51c4
	nop			;51c7
	nop			;51c8
	nop			;51c9
	dec de			;51ca
	rrca			;51cb
	inc l			;51cc
	dec b			;51cd
	dec hl			;51ce
	add hl,bc		;51cf
	jr nc,l51dbh		;51d0
	ld (bc),a		;51d2
	nop			;51d3
	rrca			;51d4
	rrca			;51d5
	ld l,h			;51d6
	dec c			;51d7
	add hl,hl		;51d8
	dec b			;51d9
	nop			;51da
l51dbh:
	nop			;51db
	nop			;51dc
	nop			;51dd
	ld bc,l6c00h		;51de
	dec c			;51e1
	rrca			;51e2
	rrca			;51e3
	dec hl			;51e4
	dec b			;51e5
	jr nc,l51f1h		;51e6
	inc sp			;51e8
	add hl,bc		;51e9
	ld bc,l6100h		;51ea
	nop			;51ed
	ld l,h			;51ee
	dec c			;51ef
	inc l			;51f0
l51f1h:
	dec b			;51f1
	dec hl			;51f2
	add hl,bc		;51f3
	jr nc,l51ffh		;51f4
	inc bc			;51f6
	nop			;51f7
	nop			;51f8
	nop			;51f9
	rrca			;51fa
	rrca			;51fb
	ld l,005h		;51fc
	nop			;51fe
l51ffh:
	nop			;51ff
	nop			;5200
	nop			;5201
	ld bc,00f00h		;5202
	rrca			;5205
	ld l,h			;5206
	dec c			;5207
	dec hl			;5208
	dec b			;5209
	ld sp,03509h		;520a
	add hl,bc		;520d
	ld bc,l6c00h		;520e
	dec c			;5211
	rrca			;5212
	rrca			;5213
	inc l			;5214
	dec b			;5215
	dec hl			;5216
	add hl,bc		;5217
	jr nc,l5223h		;5218
	ld bc,l6100h		;521a
	nop			;521d
	ld l,h			;521e
	dec c			;521f
	ld l,005h		;5220
	nop			;5222
l5223h:
	nop			;5223
	nop			;5224
	nop			;5225
	inc bc			;5226
	nop			;5227
	nop			;5228
	nop			;5229
	dec de			;522a
	rrca			;522b
	jr nc,l5233h		;522c
	ld (03609h),a		;522e
	add hl,bc		;5231
	ld (bc),a		;5232
l5233h:
	nop			;5233
	dec de			;5234
	rrca			;5235
	ld l,h			;5236
	dec c			;5237
	inc l			;5238
	dec b			;5239
	dec hl			;523a
	add hl,bc		;523b
	jr nc,l5247h		;523c
	ld (bc),a		;523e
	nop			;523f
	ld h,c			;5240
	nop			;5241
	ld a,(bc)		;5242
	rrca			;5243
	ld l,005h		;5244
	inc sp			;5246
l5247h:
	add hl,bc		;5247
	scf			;5248
	add hl,bc		;5249
	ld bc,00000h		;524a
	nop			;524d
	ld l,h			;524e
	dec c			;524f
	ld l,005h		;5250
	dec hl			;5252
	add hl,bc		;5253
	jr nc,l525fh		;5254
	nop			;5256
	nop			;5257
	nop			;5258
	nop			;5259
	ld a,(bc)		;525a
	rrca			;525b
	ld l,005h		;525c
	nop			;525e
l525fh:
	nop			;525f
	nop			;5260
	nop			;5261
	ld bc,00a00h		;5262
	rrca			;5265
	ld l,h			;5266
	dec c			;5267
	ld l,h			;5268
	rlca			;5269
	inc (hl)		;526a
	add hl,bc		;526b
	jr c,l5277h		;526c
	ld bc,l6c00h		;526e
	dec c			;5271
	ld d,00fh		;5272
	ld l,005h		;5274
	dec hl			;5276
l5277h:
	add hl,bc		;5277
	jr nc,l5283h		;5278
	ld (bc),a		;527a
	nop			;527b
	ld h,c			;527c
	nop			;527d
	ld l,h			;527e
	dec c			;527f
	jr nc,l5287h		;5280
	nop			;5282
l5283h:
	nop			;5283
	nop			;5284
	nop			;5285
	nop			;5286
l5287h:
	nop			;5287
	nop			;5288
	nop			;5289
	ld d,00fh		;528a
	ld l,h			;528c
	rlca			;528d
	dec (hl)		;528e
	add hl,bc		;528f
	add hl,sp		;5290
	add hl,bc		;5291
	ld (bc),a		;5292
	nop			;5293
	ld a,(bc)		;5294
	rrca			;5295
	ld l,h			;5296
	dec c			;5297
	ld h,d			;5298
	ld a,(bc)		;5299
	dec hl			;529a
	add hl,bc		;529b
	jr nc,$+11		;529c
	ld bc,l6c00h		;529e
	dec c			;52a1
	dec c			;52a2
	rrca			;52a3
	dec h			;52a4
	rrca			;52a5
	jr nc,l52b1h		;52a6
	jr nc,l52b3h		;52a8
	ld bc,l6100h		;52aa
	nop			;52ad
	nop			;52ae
	nop			;52af
	ld h,d			;52b0
l52b1h:
	dec bc			;52b1
	inc a			;52b2
l52b3h:
	add hl,bc		;52b3
	dec (hl)		;52b4
	add hl,bc		;52b5
	ld (bc),a		;52b6
	nop			;52b7
	nop			;52b8
	nop			;52b9
	nop			;52ba
	nop			;52bb
	ld h,d			;52bc
	ld a,(bc)		;52bd
	ld h,a			;52be
	ld (bc),a		;52bf
	ld h,a			;52c0
	ld (bc),a		;52c1
	ld (bc),a		;52c2
	nop			;52c3
	nop			;52c4
	nop			;52c5
	nop			;52c6
	nop			;52c7
	ld l,h			;52c8
	rlca			;52c9
	nop			;52ca
	nop			;52cb
	nop			;52cc
	nop			;52cd
	nop			;52ce
	nop			;52cf
	nop			;52d0
	nop			;52d1
	rrca			;52d2
	rrca			;52d3
	jr nz,l52e5h		;52d4
	nop			;52d6
	nop			;52d7
	nop			;52d8
	nop			;52d9
	ld bc,00000h		;52da
	nop			;52dd
	nop			;52de
	nop			;52df
	ld h,d			;52e0
	dec bc			;52e1
	nop			;52e2
	nop			;52e3
	nop			;52e4
l52e5h:
	nop			;52e5
	nop			;52e6
	nop			;52e7
	nop			;52e8
	nop			;52e9
	nop			;52ea
	nop			;52eb
	ld h,d			;52ec
	ld a,(bc)		;52ed
	nop			;52ee
	nop			;52ef
	nop			;52f0
	nop			;52f1
	nop			;52f2
	nop			;52f3
	nop			;52f4
	nop			;52f5
	nop			;52f6
	nop			;52f7
	ld h,d			;52f8
	dec bc			;52f9
	nop			;52fa
	nop			;52fb
	nop			;52fc
	nop			;52fd
	ld (bc),a		;52fe
	nop			;52ff
	nop			;5300
	nop			;5301
	ld de,0290fh		;5302
	dec b			;5305
	inc l			;5306
	add hl,bc		;5307
	inc h			;5308
	add hl,bc		;5309
	ld bc,00500h		;530a
	rrca			;530d
	ld l,h			;530e
	dec c			;530f
	dec hl			;5310
	dec b			;5311
	dec hl			;5312
	add hl,bc		;5313
	ld (00309h),hl		;5314
	nop			;5317
	ld l,h			;5318
	dec c			;5319
	ld de,02c0fh		;531a
	dec b			;531d
	add hl,hl		;531e
	add hl,bc		;531f
	jr nz,l532bh		;5320
	inc bc			;5322
	nop			;5323
	ld de,06c0fh		;5324
	dec c			;5327
	add hl,hl		;5328
	dec b			;5329
	dec hl			;532a
l532bh:
	add hl,bc		;532b
	ld (00309h),hl		;532c
	nop			;532f
	nop			;5330
	nop			;5331
	ld h,c			;5332
	nop			;5333
	jr nc,l533bh		;5334
	inc l			;5336
	add hl,bc		;5337
	inc h			;5338
	add hl,bc		;5339
	ld (bc),a		;533a
l533bh:
	nop			;533b
	ld l,h			;533c
	dec c			;533d
	nop			;533e
	nop			;533f
	ld l,005h		;5340
	ld l,009h		;5342
	dec h			;5344
	add hl,bc		;5345
	nop			;5346
	nop			;5347
	ld de,0000fh		;5348
	nop			;534b
	inc l			;534c
	dec b			;534d
	inc l			;534e
	add hl,bc		;534f
	inc h			;5350
	add hl,bc		;5351
	inc bc			;5352
	nop			;5353
	ld l,h			;5354
	dec c			;5355
	ld de,02e0fh		;5356
	dec b			;5359
	ld l,009h		;535a
	dec h			;535c
	add hl,bc		;535d
	ld bc,00500h		;535e
	rrca			;5361
	ld l,h			;5362
	dec c			;5363
	jr nc,$+7		;5364
	inc l			;5366
	add hl,bc		;5367
	inc h			;5368
	add hl,bc		;5369
	ld bc,l6c00h		;536a
	dec c			;536d
	rrca			;536e
	rrca			;536f
	inc l			;5370
	dec b			;5371
	add hl,hl		;5372
	add hl,bc		;5373
	ld (00309h),hl		;5374
	nop			;5377
	ld h,c			;5378
	nop			;5379
	ld l,h			;537a
	dec c			;537b
	inc sp			;537c
	dec b			;537d
	ld l,h			;537e
	add hl,bc		;537f
	ld l,h			;5380
	add hl,bc		;5381
	inc bc			;5382
	nop			;5383
	nop			;5384
	nop			;5385
	nop			;5386
	nop			;5387
	ld sp,00005h		;5388
	nop			;538b
	nop			;538c
	nop			;538d
	nop			;538e
	nop			;538f
	nop			;5390
	nop			;5391
	ld de,0300fh		;5392
	dec b			;5395
	inc l			;5396
	add hl,bc		;5397
	inc h			;5398
	add hl,bc		;5399
	ld (bc),a		;539a
	nop			;539b
	nop			;539c
	nop			;539d
	rrca			;539e
	rrca			;539f
	ld l,005h		;53a0
	daa			;53a2
	add hl,bc		;53a3
	ld (00309h),hl		;53a4
	nop			;53a7
	nop			;53a8
	nop			;53a9
	nop			;53aa
	nop			;53ab
	inc l			;53ac
	dec b			;53ad
	nop			;53ae
	nop			;53af
	nop			;53b0
	nop			;53b1
	inc bc			;53b2
	nop			;53b3
	nop			;53b4
	nop			;53b5
	nop			;53b6
	nop			;53b7
	dec hl			;53b8
	dec b			;53b9
	nop			;53ba
	nop			;53bb
	nop			;53bc
	nop			;53bd
	inc bc			;53be
	nop			;53bf
	nop			;53c0
	nop			;53c1
	dec c			;53c2
	rrca			;53c3
	dec h			;53c4
	dec b			;53c5
	add hl,hl		;53c6
	add hl,bc		;53c7
	dec e			;53c8
	add hl,bc		;53c9
	ld bc,00d00h		;53ca
	rrca			;53cd
	ld l,h			;53ce
	dec c			;53cf
	daa			;53d0
	dec b			;53d1
	dec h			;53d2
	add hl,bc		;53d3
	add hl,de		;53d4
	add hl,bc		;53d5
	inc bc			;53d6
	nop			;53d7
	ld l,h			;53d8
	dec c			;53d9
	dec c			;53da
	rrca			;53db
	add hl,hl		;53dc
	dec b			;53dd
	add hl,hl		;53de
	add hl,bc		;53df
	dec e			;53e0
	add hl,bc		;53e1
	inc bc			;53e2
	nop			;53e3
	dec c			;53e4
	rrca			;53e5
	ld l,h			;53e6
	dec c			;53e7
	dec h			;53e8
	dec b			;53e9
	dec h			;53ea
	add hl,bc		;53eb
	add hl,de		;53ec
	add hl,bc		;53ed
	inc bc			;53ee
	nop			;53ef
	nop			;53f0
	nop			;53f1
	ld h,c			;53f2
	nop			;53f3
	inc l			;53f4
	dec b			;53f5
	ld l,h			;53f6
	ld (bc),a		;53f7
	ld l,h			;53f8
	ld (bc),a		;53f9
	ld (bc),a		;53fa
	nop			;53fb
	ld l,h			;53fc
	dec c			;53fd
	nop			;53fe
	nop			;53ff
	add hl,hl		;5400
	dec b			;5401
	nop			;5402
	nop			;5403
	nop			;5404
	nop			;5405
	nop			;5406
	nop			;5407
	dec c			;5408
	rrca			;5409
	nop			;540a
	nop			;540b
	jr nc,l5413h		;540c
	add hl,hl		;540e
	add hl,bc		;540f
	dec e			;5410
	add hl,bc		;5411
	inc bc			;5412
l5413h:
	nop			;5413
	ld l,h			;5414
	dec c			;5415
	dec c			;5416
	rrca			;5417
	inc l			;5418
	dec b			;5419
	dec h			;541a
	add hl,bc		;541b
	add hl,de		;541c
	add hl,bc		;541d
	ld bc,00d00h		;541e
	rrca			;5421
	ld l,h			;5422
	dec c			;5423
	ld l,005h		;5424
	add hl,hl		;5426
	add hl,bc		;5427
	dec e			;5428
	add hl,bc		;5429
	ld bc,l6c00h		;542a
	dec c			;542d
	inc c			;542e
	rrca			;542f
	jr nc,l5437h		;5430
	dec h			;5432
	add hl,bc		;5433
	add hl,de		;5434
	add hl,bc		;5435
	inc bc			;5436
l5437h:
	nop			;5437
	ld h,c			;5438
	nop			;5439
	ld l,h			;543a
	dec c			;543b
	ld sp,l6c05h		;543c
	rlca			;543f
	ld l,h			;5440
	rlca			;5441
	inc bc			;5442
	nop			;5443
	nop			;5444
	nop			;5445
	nop			;5446
	nop			;5447
	jr nc,l544fh		;5448
	nop			;544a
	nop			;544b
	nop			;544c
	nop			;544d
	nop			;544e
l544fh:
	nop			;544f
	nop			;5450
	nop			;5451
	ex af,af'		;5452
	rrca			;5453
	jr c,l545bh		;5454
	ld l,009h		;5456
	daa			;5458
	add hl,bc		;5459
	ld (bc),a		;545a
l545bh:
	nop			;545b
	nop			;545c
	nop			;545d
	rrca			;545e
	rrca			;545f
	scf			;5460
	dec b			;5461
	nop			;5462
	nop			;5463
	nop			;5464
	nop			;5465
	inc bc			;5466
	nop			;5467
	nop			;5468
	nop			;5469
	nop			;546a
	nop			;546b
	dec (hl)		;546c
	dec b			;546d
	inc l			;546e
	add hl,bc		;546f
	dec h			;5470
	add hl,bc		;5471
	inc bc			;5472
	nop			;5473
	nop			;5474
	nop			;5475
	nop			;5476
	nop			;5477
	inc sp			;5478
	dec b			;5479
	nop			;547a
	nop			;547b
	nop			;547c
	nop			;547d
	inc bc			;547e
	nop			;547f
	nop			;5480
	nop			;5481
	dec b			;5482
	rrca			;5483
	add hl,hl		;5484
	dec b			;5485
	jr nc,l5491h		;5486
	daa			;5488
	add hl,bc		;5489
	ld bc,01100h		;548a
	rrca			;548d
	ld l,h			;548e
	dec c			;548f
	dec hl			;5490
l5491h:
	dec b			;5491
	ld l,009h		;5492
	dec h			;5494
	add hl,bc		;5495
	inc bc			;5496
	nop			;5497
	ld l,h			;5498
	dec c			;5499
	dec b			;549a
	rrca			;549b
	inc l			;549c
	dec b			;549d
	inc l			;549e
	add hl,bc		;549f
	inc h			;54a0
	add hl,bc		;54a1
	inc bc			;54a2
	nop			;54a3
	ld de,06c0fh		;54a4
	dec c			;54a7
	add hl,hl		;54a8
	dec b			;54a9
	jr nc,$+11		;54aa
	daa			;54ac
	add hl,bc		;54ad
	inc bc			;54ae
	nop			;54af
	nop			;54b0
	nop			;54b1
	ld h,c			;54b2
	nop			;54b3
	jr nc,l54bbh		;54b4
	ld l,009h		;54b6
	dec h			;54b8
	add hl,bc		;54b9
	ld (bc),a		;54ba
l54bbh:
	nop			;54bb
	ld l,h			;54bc
	dec c			;54bd
	nop			;54be
	nop			;54bf
	ld l,005h		;54c0
	inc l			;54c2
	add hl,bc		;54c3
	inc h			;54c4
	add hl,bc		;54c5
	nop			;54c6
	nop			;54c7
	ld de,0000fh		;54c8
	nop			;54cb
	inc l			;54cc
	dec b			;54cd
	dec hl			;54ce
	add hl,bc		;54cf
	ld (00309h),hl		;54d0
	nop			;54d3
	ld l,h			;54d4
	dec c			;54d5
	dec b			;54d6
	rrca			;54d7
	ld l,005h		;54d8
	ld l,009h		;54da
	dec h			;54dc
	add hl,bc		;54dd
	ld bc,01100h		;54de
	rrca			;54e1
	ld l,h			;54e2
	dec c			;54e3
	jr nc,$+7		;54e4
	inc l			;54e6
	add hl,bc		;54e7
	inc h			;54e8
	add hl,bc		;54e9
	ld bc,l6c00h		;54ea
	dec c			;54ed
	inc de			;54ee
	rrca			;54ef
	inc l			;54f0
	dec b			;54f1
	add hl,hl		;54f2
	add hl,bc		;54f3
	ld (00309h),hl		;54f4
	nop			;54f7
	ld h,c			;54f8
	nop			;54f9
	ld l,h			;54fa
	ld (bc),a		;54fb
	inc sp			;54fc
	dec b			;54fd
	ld l,h			;54fe
	dec c			;54ff
	ld l,h			;5500
	dec c			;5501
	inc bc			;5502
	nop			;5503
	nop			;5504
	nop			;5505
	ld l,h			;5506
	add hl,bc		;5507
	ld sp,00005h		;5508
	nop			;550b
	nop			;550c
	nop			;550d
	nop			;550e
	nop			;550f
	nop			;5510
	nop			;5511
	dec b			;5512
	rrca			;5513
	jr nc,l551bh		;5514
	add hl,hl		;5516
	add hl,bc		;5517
	ld (00209h),hl		;5518
l551bh:
	nop			;551b
	nop			;551c
	nop			;551d
	rrca			;551e
	rrca			;551f
	ld l,005h		;5520
	dec hl			;5522
	add hl,bc		;5523
	inc h			;5524
	add hl,bc		;5525
	inc bc			;5526
	nop			;5527
	nop			;5528
	nop			;5529
	nop			;552a
	nop			;552b
	inc l			;552c
	dec b			;552d
	nop			;552e
	nop			;552f
	nop			;5530
	nop			;5531
	inc bc			;5532
	nop			;5533
	nop			;5534
	nop			;5535
	nop			;5536
	nop			;5537
	dec hl			;5538
	dec b			;5539
	nop			;553a
	nop			;553b
	nop			;553c
	nop			;553d
	inc bc			;553e
	nop			;553f
	nop			;5540
	nop			;5541
	inc d			;5542
	rrca			;5543
	dec h			;5544
	dec b			;5545
	add hl,hl		;5546
	add hl,bc		;5547
	dec e			;5548
	add hl,bc		;5549
	ld bc,01400h		;554a
	rrca			;554d
	ld l,h			;554e
	dec c			;554f
	daa			;5550
	dec b			;5551
	dec h			;5552
	add hl,bc		;5553
	add hl,de		;5554
	add hl,bc		;5555
	inc bc			;5556
	nop			;5557
	ld l,h			;5558
	dec c			;5559
	ex af,af'		;555a
	rrca			;555b
	add hl,hl		;555c
	dec b			;555d
	add hl,hl		;555e
	add hl,bc		;555f
	dec e			;5560
	add hl,bc		;5561
	inc bc			;5562
	nop			;5563
	inc d			;5564
	rrca			;5565
	ld l,h			;5566
	dec c			;5567
	dec h			;5568
	dec b			;5569
	dec h			;556a
	add hl,bc		;556b
	add hl,de		;556c
	add hl,bc		;556d
	inc bc			;556e
	nop			;556f
	nop			;5570
	nop			;5571
	ld h,c			;5572
	nop			;5573
	inc l			;5574
	dec b			;5575
	ld l,h			;5576
	ld (bc),a		;5577
	ld l,h			;5578
	ld (bc),a		;5579
	ld (bc),a		;557a
	nop			;557b
	ld l,h			;557c
	dec c			;557d
	nop			;557e
	nop			;557f
	add hl,hl		;5580
	dec b			;5581
	nop			;5582
	nop			;5583
	nop			;5584
	nop			;5585
	nop			;5586
	nop			;5587
	inc d			;5588
	rrca			;5589
	nop			;558a
	nop			;558b
	jr nc,l5593h		;558c
	add hl,hl		;558e
	add hl,bc		;558f
	jr nz,l559bh		;5590
	inc bc			;5592
l5593h:
	nop			;5593
	ld h,c			;5594
	nop			;5595
	inc d			;5596
	rrca			;5597
	inc l			;5598
	dec b			;5599
	dec hl			;559a
l559bh:
	add hl,bc		;559b
	ld (00109h),hl		;559c
	nop			;559f
	nop			;55a0
	nop			;55a1
	ld de,02e0fh		;55a2
	dec b			;55a5
	inc l			;55a6
	add hl,bc		;55a7
	inc h			;55a8
	add hl,bc		;55a9
	ld bc,00000h		;55aa
	nop			;55ad
	inc de			;55ae
	rrca			;55af
	jr nc,l55b7h		;55b0
	dec hl			;55b2
	add hl,bc		;55b3
	ld (00309h),hl		;55b4
l55b7h:
	nop			;55b7
	inc de			;55b8
	rrca			;55b9
	ld l,h			;55ba
	dec c			;55bb
	ld sp,02905h		;55bc
	add hl,bc		;55bf
	jr nz,l55cbh		;55c0
	inc bc			;55c2
	nop			;55c3
	ld h,c			;55c4
	nop			;55c5
	nop			;55c6
	nop			;55c7
	jr nc,l55cfh		;55c8
	daa			;55ca
l55cbh:
	add hl,bc		;55cb
	rra			;55cc
	add hl,bc		;55cd
	nop			;55ce
l55cfh:
	nop			;55cf
	nop			;55d0
	nop			;55d1
	inc de			;55d2
	rrca			;55d3
	jr c,l55dbh		;55d4
	ld l,h			;55d6
	add hl,bc		;55d7
	ld l,h			;55d8
	add hl,bc		;55d9
	ld (bc),a		;55da
l55dbh:
	nop			;55db
	nop			;55dc
	nop			;55dd
	rrca			;55de
	rrca			;55df
	scf			;55e0
	dec b			;55e1
	daa			;55e2
	add hl,bc		;55e3
	rra			;55e4
	add hl,bc		;55e5
	inc bc			;55e6
	nop			;55e7
	nop			;55e8
	nop			;55e9
	nop			;55ea
	nop			;55eb
	dec (hl)		;55ec
	dec b			;55ed
	nop			;55ee
	nop			;55ef
	nop			;55f0
	nop			;55f1
	inc bc			;55f2
	nop			;55f3
	nop			;55f4
	nop			;55f5
	nop			;55f6
	nop			;55f7
	inc sp			;55f8
	dec b			;55f9
	nop			;55fa
	nop			;55fb
	nop			;55fc
	nop			;55fd
	inc bc			;55fe
	nop			;55ff
	nop			;5600
	nop			;5601
	ld de,0290fh		;5602
	dec b			;5605
	inc sp			;5606
	add hl,bc		;5607
	inc l			;5608
	add hl,bc		;5609
	ld bc,00500h		;560a
	rrca			;560d
	ld l,h			;560e
	dec c			;560f
	dec hl			;5610
	dec b			;5611
	ld sp,02b09h		;5612
	add hl,bc		;5615
	inc bc			;5616
	nop			;5617
	ld l,h			;5618
	dec c			;5619
	ld de,02c0fh		;561a
	dec b			;561d
	jr nc,l5629h		;561e
	add hl,hl		;5620
	add hl,bc		;5621
	inc bc			;5622
	nop			;5623
	ld de,06c0fh		;5624
	dec c			;5627
	add hl,hl		;5628
l5629h:
	dec b			;5629
	ld sp,02b09h		;562a
	add hl,bc		;562d
	inc bc			;562e
	nop			;562f
	nop			;5630
	nop			;5631
	ld h,c			;5632
	nop			;5633
	jr nc,l563bh		;5634
	jr nc,$+11		;5636
	add hl,hl		;5638
	add hl,bc		;5639
	ld (bc),a		;563a
l563bh:
	nop			;563b
	ld l,h			;563c
	dec c			;563d
	nop			;563e
	nop			;563f
	ld l,005h		;5640
	ld l,009h		;5642
	daa			;5644
	add hl,bc		;5645
	nop			;5646
	nop			;5647
	ld de,0000fh		;5648
	nop			;564b
	inc l			;564c
	dec b			;564d
	inc l			;564e
	add hl,bc		;564f
	dec h			;5650
	add hl,bc		;5651
	inc bc			;5652
	nop			;5653
	ld l,h			;5654
	dec c			;5655
	ld de,02e0fh		;5656
	dec b			;5659
	jr nc,$+11		;565a
	add hl,hl		;565c
	add hl,bc		;565d
	ld bc,00500h		;565e
	rrca			;5661
	ld l,h			;5662
	dec c			;5663
	jr nc,$+7		;5664
	ld l,009h		;5666
	daa			;5668
	add hl,bc		;5669
	ld bc,l6c00h		;566a
	dec c			;566d
	rrca			;566e
	rrca			;566f
	inc l			;5670
	dec b			;5671
	inc l			;5672
	add hl,bc		;5673
	dec h			;5674
	add hl,bc		;5675
	inc bc			;5676
	nop			;5677
	ld h,c			;5678
	nop			;5679
	ld l,h			;567a
	dec c			;567b
	inc sp			;567c
	dec b			;567d
	ld l,h			;567e
	add hl,bc		;567f
	ld l,h			;5680
	add hl,bc		;5681
	inc bc			;5682
	nop			;5683
	nop			;5684
	nop			;5685
	nop			;5686
	nop			;5687
	ld sp,00005h		;5688
	nop			;568b
	nop			;568c
	nop			;568d
	nop			;568e
	nop			;568f
	nop			;5690
	nop			;5691
	ld de,0300fh		;5692
	dec b			;5695
	dec hl			;5696
	add hl,bc		;5697
	inc h			;5698
	add hl,bc		;5699
	ld (bc),a		;569a
	nop			;569b
	nop			;569c
	nop			;569d
	rrca			;569e
	rrca			;569f
	ld l,005h		;56a0
	inc l			;56a2
	add hl,bc		;56a3
	dec h			;56a4
	add hl,bc		;56a5
	inc bc			;56a6
	nop			;56a7
	nop			;56a8
	nop			;56a9
	nop			;56aa
	nop			;56ab
	inc l			;56ac
	dec b			;56ad
	ld l,h			;56ae
	ld (bc),a		;56af
	ld l,h			;56b0
	ld (bc),a		;56b1
	inc bc			;56b2
	nop			;56b3
	nop			;56b4
	nop			;56b5
	nop			;56b6
	nop			;56b7
	dec hl			;56b8
	dec b			;56b9
	nop			;56ba
	nop			;56bb
	nop			;56bc
	nop			;56bd
	inc bc			;56be
	nop			;56bf
	nop			;56c0
	nop			;56c1
	dec c			;56c2
	rrca			;56c3
	dec h			;56c4
	dec b			;56c5
	jr nz,l56d1h		;56c6
	dec h			;56c8
	add hl,bc		;56c9
	ld bc,00d00h		;56ca
	rrca			;56cd
	ld l,h			;56ce
	dec c			;56cf
	daa			;56d0
l56d1h:
	dec b			;56d1
	ld (02709h),hl		;56d2
	add hl,bc		;56d5
	inc bc			;56d6
	nop			;56d7
	ld l,h			;56d8
	dec c			;56d9
	dec c			;56da
	rrca			;56db
	add hl,hl		;56dc
	dec b			;56dd
	dec h			;56de
	add hl,bc		;56df
	add hl,hl		;56e0
	add hl,bc		;56e1
	inc bc			;56e2
	nop			;56e3
	dec c			;56e4
	rrca			;56e5
	ld l,h			;56e6
	dec c			;56e7
	dec h			;56e8
	dec b			;56e9
	daa			;56ea
	add hl,bc		;56eb
	inc l			;56ec
	add hl,bc		;56ed
	inc bc			;56ee
	nop			;56ef
	nop			;56f0
	nop			;56f1
	ld h,c			;56f2
	nop			;56f3
	inc l			;56f4
	dec b			;56f5
	ld l,h			;56f6
	ld (bc),a		;56f7
	ld l,h			;56f8
	ld (bc),a		;56f9
	ld (bc),a		;56fa
	nop			;56fb
	ld l,h			;56fc
	dec c			;56fd
	nop			;56fe
	nop			;56ff
	add hl,hl		;5700
	dec b			;5701
	nop			;5702
	nop			;5703
	nop			;5704
	nop			;5705
	nop			;5706
	nop			;5707
	dec c			;5708
	rrca			;5709
	nop			;570a
	nop			;570b
	jr nc,l5713h		;570c
	add hl,hl		;570e
	add hl,bc		;570f
	ld l,009h		;5710
	inc bc			;5712
l5713h:
	nop			;5713
	ld l,h			;5714
	dec c			;5715
	dec c			;5716
	rrca			;5717
	inc l			;5718
	dec b			;5719
	inc l			;571a
	add hl,bc		;571b
	inc l			;571c
	add hl,bc		;571d
	ld bc,00d00h		;571e
	rrca			;5721
	ld l,h			;5722
	dec c			;5723
	ld l,005h		;5724
	ld l,009h		;5726
	dec hl			;5728
	add hl,bc		;5729
	ld bc,l6c00h		;572a
	dec c			;572d
	inc c			;572e
	rrca			;572f
	jr nc,l5737h		;5730
	jr nc,$+11		;5732
	add hl,hl		;5734
	add hl,bc		;5735
	inc bc			;5736
l5737h:
	nop			;5737
	ld h,c			;5738
	nop			;5739
	ld l,h			;573a
	dec c			;573b
	ld sp,l6c05h		;573c
	add hl,bc		;573f
	ld l,h			;5740
	add hl,bc		;5741
	inc bc			;5742
	nop			;5743
	nop			;5744
	nop			;5745
	nop			;5746
	nop			;5747
	jr nc,l574fh		;5748
	nop			;574a
	nop			;574b
	nop			;574c
	nop			;574d
	nop			;574e
l574fh:
	nop			;574f
	nop			;5750
	nop			;5751
	ex af,af'		;5752
	rrca			;5753
	jr c,l575bh		;5754
	ld l,009h		;5756
	daa			;5758
	add hl,bc		;5759
	ld (bc),a		;575a
l575bh:
	nop			;575b
	nop			;575c
	nop			;575d
	rrca			;575e
	rrca			;575f
	scf			;5760
	dec b			;5761
	nop			;5762
	nop			;5763
	nop			;5764
	nop			;5765
	inc bc			;5766
	nop			;5767
	nop			;5768
	nop			;5769
	nop			;576a
	nop			;576b
	dec (hl)		;576c
	dec b			;576d
	inc l			;576e
	add hl,bc		;576f
	add hl,hl		;5770
	add hl,bc		;5771
	inc bc			;5772
	nop			;5773
	nop			;5774
	nop			;5775
	nop			;5776
	nop			;5777
	inc sp			;5778
	dec b			;5779
	nop			;577a
	nop			;577b
	nop			;577c
	nop			;577d
	inc bc			;577e
	nop			;577f
	nop			;5780
	nop			;5781
	dec b			;5782
	rrca			;5783
	add hl,hl		;5784
	dec b			;5785
	jr nc,l5791h		;5786
	daa			;5788
	add hl,bc		;5789
	ld bc,01100h		;578a
	rrca			;578d
	ld l,h			;578e
	dec c			;578f
	dec hl			;5790
l5791h:
	dec b			;5791
	inc l			;5792
	add hl,bc		;5793
	inc h			;5794
	add hl,bc		;5795
	inc bc			;5796
	nop			;5797
	ld l,h			;5798
	dec c			;5799
	dec b			;579a
	rrca			;579b
	inc l			;579c
	dec b			;579d
	jr nc,l57a9h		;579e
	daa			;57a0
	add hl,bc		;57a1
	inc bc			;57a2
	nop			;57a3
	ld de,06c0fh		;57a4
	dec c			;57a7
	add hl,hl		;57a8
l57a9h:
	dec b			;57a9
	inc l			;57aa
	add hl,bc		;57ab
	inc h			;57ac
	add hl,bc		;57ad
	inc bc			;57ae
	nop			;57af
	nop			;57b0
	nop			;57b1
	ld h,c			;57b2
	nop			;57b3
	jr nc,l57bbh		;57b4
	jr nc,$+11		;57b6
	daa			;57b8
	add hl,bc		;57b9
	ld (bc),a		;57ba
l57bbh:
	nop			;57bb
	ld l,h			;57bc
	dec c			;57bd
	nop			;57be
	nop			;57bf
	ld l,005h		;57c0
	ld l,h			;57c2
	rlca			;57c3
	ld l,h			;57c4
	rlca			;57c5
	nop			;57c6
	nop			;57c7
	ld de,0000fh		;57c8
	nop			;57cb
	inc l			;57cc
	dec b			;57cd
	inc l			;57ce
	add hl,bc		;57cf
	inc h			;57d0
	add hl,bc		;57d1
	inc bc			;57d2
	nop			;57d3
	ld l,h			;57d4
	dec c			;57d5
	dec b			;57d6
	rrca			;57d7
	ld l,005h		;57d8
	jr nc,$+11		;57da
	daa			;57dc
	add hl,bc		;57dd
	ld bc,01100h		;57de
	rrca			;57e1
	ld l,h			;57e2
	dec c			;57e3
	jr nc,$+7		;57e4
	inc l			;57e6
	add hl,bc		;57e7
	inc h			;57e8
	add hl,bc		;57e9
	ld bc,l6c00h		;57ea
	dec c			;57ed
	dec b			;57ee
	rrca			;57ef
	inc l			;57f0
	dec b			;57f1
	jr nc,l57fdh		;57f2
	daa			;57f4
	add hl,bc		;57f5
	inc bc			;57f6
	nop			;57f7
	ld h,c			;57f8
	nop			;57f9
	ld l,h			;57fa
	dec c			;57fb
	inc sp			;57fc
l57fdh:
	dec b			;57fd
	ld l,h			;57fe
	add hl,bc		;57ff
	ld l,h			;5800
	add hl,bc		;5801
	inc bc			;5802
	nop			;5803
	nop			;5804
	nop			;5805
	dec b			;5806
	rrca			;5807
	ld sp,00005h		;5808
	nop			;580b
	nop			;580c
	nop			;580d
	nop			;580e
	nop			;580f
	nop			;5810
	nop			;5811
	nop			;5812
	nop			;5813
	jr nc,l581bh		;5814
	jr nc,$+11		;5816
	add hl,hl		;5818
	add hl,bc		;5819
	ld (bc),a		;581a
l581bh:
	nop			;581b
	nop			;581c
	nop			;581d
	dec c			;581e
	rrca			;581f
	ld l,005h		;5820
	ld sp,02b09h		;5822
	add hl,bc		;5825
	inc bc			;5826
	nop			;5827
	nop			;5828
	nop			;5829
	rrca			;582a
	rrca			;582b
	inc l			;582c
	dec b			;582d
	nop			;582e
	nop			;582f
	nop			;5830
	nop			;5831
	inc bc			;5832
	nop			;5833
	nop			;5834
	nop			;5835
	ld de,02b0fh		;5836
	dec b			;5839
	nop			;583a
	nop			;583b
	nop			;583c
	nop			;583d
	inc bc			;583e
	nop			;583f
	nop			;5840
	nop			;5841
	inc bc			;5842
	rrca			;5843
	scf			;5844
	dec b			;5845
	inc sp			;5846
	add hl,bc		;5847
	ld l,009h		;5848
	ld (bc),a		;584a
	nop			;584b
	rrca			;584c
	rrca			;584d
	ld l,h			;584e
	dec c			;584f
	scf			;5850
	dec b			;5851
	ld l,009h		;5852
	daa			;5854
	add hl,bc		;5855
	ld (bc),a		;5856
	nop			;5857
	ld l,h			;5858
	dec c			;5859
	inc bc			;585a
	rrca			;585b
	scf			;585c
	dec b			;585d
	inc sp			;585e
	add hl,bc		;585f
	ld l,009h		;5860
	inc bc			;5862
	nop			;5863
	rrca			;5864
	rrca			;5865
	ld l,h			;5866
	dec c			;5867
	scf			;5868
	dec b			;5869
	ld l,009h		;586a
	daa			;586c
	add hl,bc		;586d
	inc bc			;586e
	nop			;586f
	nop			;5870
	nop			;5871
	ld h,c			;5872
	nop			;5873
	ld l,h			;5874
	ld (bc),a		;5875
	ld l,h			;5876
	ld (bc),a		;5877
	ld l,h			;5878
	ld (bc),a		;5879
	ld (bc),a		;587a
	nop			;587b
	ld l,h			;587c
	dec c			;587d
	nop			;587e
	nop			;587f
	ld l,h			;5880
	ld (bc),a		;5881
	ld l,h			;5882
	ld (bc),a		;5883
	ld l,h			;5884
	ld (bc),a		;5885
	inc bc			;5886
	nop			;5887
	rrca			;5888
	rrca			;5889
	nop			;588a
	nop			;588b
	scf			;588c
	dec b			;588d
	inc sp			;588e
	add hl,bc		;588f
	ld l,009h		;5890
	inc bc			;5892
	nop			;5893
	ld l,h			;5894
	dec c			;5895
	inc bc			;5896
	rrca			;5897
	scf			;5898
	dec b			;5899
	ld l,009h		;589a
	daa			;589c
	add hl,bc		;589d
	nop			;589e
	nop			;589f
	rrca			;58a0
	rrca			;58a1
	ld l,h			;58a2
	dec c			;58a3
	scf			;58a4
	dec b			;58a5
	inc sp			;58a6
	add hl,bc		;58a7
	ld l,009h		;58a8
	ld (bc),a		;58aa
	nop			;58ab
	ld l,h			;58ac
	dec c			;58ad
	inc bc			;58ae
	rrca			;58af
	scf			;58b0
	dec b			;58b1
	ld l,009h		;58b2
	daa			;58b4
	add hl,bc		;58b5
	inc bc			;58b6
	nop			;58b7
	ld h,c			;58b8
	nop			;58b9
	nop			;58ba
	nop			;58bb
	ld l,h			;58bc
	ld (bc),a		;58bd
	ld l,h			;58be
	ld (bc),a		;58bf
	ld l,h			;58c0
	ld (bc),a		;58c1
	inc bc			;58c2
	nop			;58c3
	nop			;58c4
	nop			;58c5
	ld l,h			;58c6
	ld (bc),a		;58c7
	ld l,h			;58c8
	ld (bc),a		;58c9
	ld l,h			;58ca
	ld (bc),a		;58cb
	ld l,h			;58cc
	ld (bc),a		;58cd
	nop			;58ce
	nop			;58cf
	nop			;58d0
	nop			;58d1
	ld l,h			;58d2
	ld (bc),a		;58d3
	ld l,h			;58d4
	ld (bc),a		;58d5
	ld l,h			;58d6
	ld (bc),a		;58d7
	ld l,h			;58d8
	ld (bc),a		;58d9
	inc bc			;58da
	nop			;58db
	nop			;58dc
	nop			;58dd
	ld l,h			;58de
	ld (bc),a		;58df
	ld h,c			;58e0
	nop			;58e1
	ld h,c			;58e2
	nop			;58e3
	ld h,c			;58e4
	nop			;58e5
	ld (bc),a		;58e6
	nop			;58e7
	nop			;58e8
	nop			;58e9
	ld h,c			;58ea
	nop			;58eb
	nop			;58ec
	nop			;58ed
	nop			;58ee
	nop			;58ef
	nop			;58f0
	nop			;58f1
	ld (bc),a		;58f2
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
	ld (bc),a		;58fe
	nop			;58ff
	rrca			;5900
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
	jr nz,l6047h		;6010
	jr nz,l6041h		;6012
	jr nz,l605ah		;6014
	ld h,l			;6016
	ld h,l			;6017
	ld (hl),b		;6018
	jr nz,l605eh		;6019
	ld l,a			;601b
	ld (hl),d		;601c
	ld h,l			;601d
	jr nz,$+82		;601e
	ld l,h			;6020
	ld h,c			;6021
	ld l,(hl)		;6022
	ld h,l			;6023
	ld (hl),h		;6024
	jr nz,l6047h		;6025
	jr nz,l6049h		;6027
	jr nz,l604bh		;6029
	jr nz,l604dh		;602b
	jr nz,$+34		;602d
	jr nz,$+34		;602f
	jr nz,l6053h		;6031
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
	jr c,l6050h		;604e
l6050h:
	ld bc,00100h		;6050
l6053h:
	ld (bc),a		;6053
	inc bc			;6054
l6055h:
	inc b			;6055
	dec b			;6056
l6057h:
	ld b,007h		;6057
l6059h:
	ex af,af'		;6059
l605ah:
	add hl,bc		;605a
l605bh:
	ld a,(bc)		;605b
	dec bc			;605c
l605dh:
	inc c			;605d
l605eh:
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
	jr $+27			;6069
	ld a,(de)		;606b
	dec de			;606c
	inc e			;606d
	dec e			;606e
	ld e,01fh		;606f
	jr nz,l6094h		;6071
	ld (02423h),hl		;6073
	dec h			;6076
	ld h,027h		;6077
	jr z,l60a4h		;6079
	ld hl,(02c2bh)		;607b
	dec l			;607e
	ld l,02fh		;607f
	jr nc,l60b4h		;6081
	ld (03433h),a		;6083
	dec (hl)		;6086
	ld (hl),037h		;6087
	jr c,l608bh		;6089
l608bh:
	nop			;608b
	nop			;608c
	nop			;608d
	nop			;608e
	nop			;608f
	nop			;6090
	nop			;6091
	nop			;6092
	nop			;6093
l6094h:
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
l60a4h:
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
l60b4h:
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
	ld d,00fh		;6151
	rrca			;6153
	rrca			;6154
	rrca			;6155
	rrca			;6156
	rra			;6157
	ld (01800h),hl		;6158
	add a,b			;615b
	add a,c			;615c
	add a,b			;615d
	add a,b			;615e
	add a,c			;615f
	ld c,00eh		;6160
	ld c,010h		;6162
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
	nop			;6172
	nop			;6173
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
	ld h,d			;61c0
	rlca			;61c1
	ld h,d			;61c2
	rlca			;61c3
	rrca			;61c4
	ld a,(bc)		;61c5
	ld h,d			;61c6
	inc d			;61c7
	ld h,c			;61c8
	nop			;61c9
	ld bc,l6a00h		;61ca
	inc b			;61cd
	ld l,c			;61ce
	inc b			;61cf
	rrca			;61d0
	ld a,(bc)		;61d1
	ld l,d			;61d2
	inc b			;61d3
	ld l,c			;61d4
	inc b			;61d5
	nop			;61d6
	nop			;61d7
	daa			;61d8
	rrca			;61d9
	daa			;61da
	rrca			;61db
	rrca			;61dc
	ld a,(bc)		;61dd
	inc sp			;61de
	dec bc			;61df
	inc sp			;61e0
	dec bc			;61e1
	ld bc,00f00h		;61e2
	rrca			;61e5
	rrca			;61e6
	rrca			;61e7
	inc bc			;61e8
	ld a,(bc)		;61e9
	ld h,c			;61ea
	nop			;61eb
	ld h,c			;61ec
	nop			;61ed
	nop			;61ee
	nop			;61ef
	inc sp			;61f0
	rrca			;61f1
	inc sp			;61f2
	rrca			;61f3
	inc bc			;61f4
	ld a,(bc)		;61f5
	inc sp			;61f6
	add hl,bc		;61f7
	inc sp			;61f8
	add hl,bc		;61f9
	ld (bc),a		;61fa
	nop			;61fb
	inc bc			;61fc
	rrca			;61fd
	inc bc			;61fe
	rrca			;61ff
	inc bc			;6200
	ld a,(bc)		;6201
	ld h,c			;6202
	nop			;6203
	ld h,c			;6204
	nop			;6205
	ld bc,00f00h		;6206
	rrca			;6209
	rrca			;620a
	rrca			;620b
	rrca			;620c
l620dh:
	ld a,(bc)		;620d
	inc sp			;620e
l620fh:
	ld b,033h		;620f
	ld b,003h		;6211
	nop			;6213
	rrca			;6214
	rrca			;6215
	rrca			;6216
	rrca			;6217
	rrca			;6218
	ld a,(bc)		;6219
	ld h,c			;621a
	nop			;621b
	ld h,c			;621c
	nop			;621d
	ld bc,01b00h		;621e
	rrca			;6221
	dec de			;6222
	rrca			;6223
	rrca			;6224
	ld a,(bc)		;6225
	inc sp			;6226
	inc b			;6227
	inc sp			;6228
	inc b			;6229
	nop			;622a
	nop			;622b
	inc bc			;622c
	rrca			;622d
	inc bc			;622e
	rrca			;622f
	rrca			;6230
	ld a,(bc)		;6231
	ld h,c			;6232
	nop			;6233
	ld h,c			;6234
	nop			;6235
	ld bc,00300h		;6236
	rrca			;6239
	inc bc			;623a
	rrca			;623b
	rrca			;623c
	ld a,(bc)		;623d
	inc sp			;623e
	ld (bc),a		;623f
	inc sp			;6240
	ld (bc),a		;6241
	ld bc,00f00h		;6242
	rrca			;6245
	rrca			;6246
	rrca			;6247
	rrca			;6248
	ld a,(bc)		;6249
	ld h,c			;624a
	nop			;624b
	ld h,c			;624c
	nop			;624d
	inc bc			;624e
	nop			;624f
	inc bc			;6250
	rrca			;6251
	inc bc			;6252
	rrca			;6253
	rrca			;6254
	ld a,(bc)		;6255
	inc sp			;6256
	ld bc,00133h		;6257
	ld (bc),a		;625a
	nop			;625b
	inc bc			;625c
	rrca			;625d
	inc bc			;625e
	rrca			;625f
	rrca			;6260
	ld a,(bc)		;6261
	ld h,c			;6262
	nop			;6263
	ld h,c			;6264
	nop			;6265
	nop			;6266
	nop			;6267
	rrca			;6268
	rrca			;6269
	rrca			;626a
	rrca			;626b
	inc bc			;626c
	ld a,(bc)		;626d
	nop			;626e
	nop			;626f
	nop			;6270
	nop			;6271
	inc bc			;6272
	nop			;6273
	inc bc			;6274
	rrca			;6275
	inc bc			;6276
	rrca			;6277
	inc bc			;6278
	ld a,(bc)		;6279
	nop			;627a
	nop			;627b
	nop			;627c
	nop			;627d
	nop			;627e
	nop			;627f
	inc bc			;6280
	rrca			;6281
	inc bc			;6282
	rrca			;6283
	rrca			;6284
	ld a,(bc)		;6285
	nop			;6286
	nop			;6287
	nop			;6288
	nop			;6289
	inc bc			;628a
	nop			;628b
	rrca			;628c
	rrca			;628d
	rrca			;628e
	rrca			;628f
	rrca			;6290
	ld a,(bc)		;6291
	nop			;6292
	nop			;6293
	nop			;6294
	nop			;6295
	nop			;6296
	nop			;6297
	daa			;6298
	rrca			;6299
	daa			;629a
	rrca			;629b
	rrca			;629c
	ld a,(bc)		;629d
	inc sp			;629e
	add hl,bc		;629f
	inc sp			;62a0
	add hl,bc		;62a1
	ld bc,00f00h		;62a2
	rrca			;62a5
	rrca			;62a6
	rrca			;62a7
	inc bc			;62a8
	ld a,(bc)		;62a9
	ld h,c			;62aa
	nop			;62ab
	ld h,c			;62ac
	nop			;62ad
	nop			;62ae
	nop			;62af
	inc sp			;62b0
	rrca			;62b1
	inc sp			;62b2
	rrca			;62b3
	inc bc			;62b4
	ld a,(bc)		;62b5
	inc sp			;62b6
	ld b,033h		;62b7
	ld b,002h		;62b9
	nop			;62bb
	inc bc			;62bc
	rrca			;62bd
	inc bc			;62be
	rrca			;62bf
	inc bc			;62c0
	ld a,(bc)		;62c1
	ld h,c			;62c2
	nop			;62c3
	ld h,c			;62c4
	nop			;62c5
	ld bc,00f00h		;62c6
	rrca			;62c9
	rrca			;62ca
	rrca			;62cb
	rrca			;62cc
	ld a,(bc)		;62cd
	inc sp			;62ce
	inc b			;62cf
	inc sp			;62d0
	inc b			;62d1
	inc bc			;62d2
	nop			;62d3
	rrca			;62d4
	rrca			;62d5
	rrca			;62d6
	rrca			;62d7
	rrca			;62d8
	ld a,(bc)		;62d9
	ld h,c			;62da
	nop			;62db
	ld h,c			;62dc
	nop			;62dd
	nop			;62de
	nop			;62df
	dec de			;62e0
	rrca			;62e1
	dec de			;62e2
	rrca			;62e3
	rrca			;62e4
	ld a,(bc)		;62e5
	inc sp			;62e6
	ld (bc),a		;62e7
	inc sp			;62e8
	ld (bc),a		;62e9
	inc bc			;62ea
	nop			;62eb
	inc bc			;62ec
	rrca			;62ed
	inc bc			;62ee
	rrca			;62ef
	rrca			;62f0
	ld a,(bc)		;62f1
	ld h,c			;62f2
	nop			;62f3
	ld h,c			;62f4
	nop			;62f5
	ld bc,00600h		;62f6
	rrca			;62f9
	ld b,00fh		;62fa
	ld b,00ah		;62fc
	inc sp			;62fe
	ld bc,00133h		;62ff
	inc bc			;6302
	nop			;6303
	ld (de),a		;6304
	rrca			;6305
	ld (de),a		;6306
	rrca			;6307
	ld b,00ah		;6308
	ld h,c			;630a
	nop			;630b
	ld h,c			;630c
	nop			;630d
	ld bc,00600h		;630e
	rrca			;6311
	ld b,00fh		;6312
	ld b,00ah		;6314
	nop			;6316
	nop			;6317
	nop			;6318
	nop			;6319
	inc bc			;631a
	nop			;631b
	ld b,00fh		;631c
	ld b,00fh		;631e
	ld b,00ah		;6320
	nop			;6322
	nop			;6323
	nop			;6324
	nop			;6325
	nop			;6326
	nop			;6327
	ld (de),a		;6328
	rrca			;6329
	ld (de),a		;632a
	rrca			;632b
	ld b,00ah		;632c
	nop			;632e
	nop			;632f
	nop			;6330
	nop			;6331
	inc bc			;6332
	nop			;6333
	ld b,00fh		;6334
	ld b,00fh		;6336
	ld b,00ah		;6338
	nop			;633a
	nop			;633b
	nop			;633c
	nop			;633d
	ld (bc),a		;633e
	nop			;633f
	inc bc			;6340
	rrca			;6341
	inc bc			;6342
	rrca			;6343
	rrca			;6344
	ld a,(bc)		;6345
	nop			;6346
	nop			;6347
	nop			;6348
	nop			;6349
	ld bc,00f00h		;634a
	rrca			;634d
	rrca			;634e
	rrca			;634f
	rrca			;6350
	ld a,(bc)		;6351
	nop			;6352
	nop			;6353
	nop			;6354
	nop			;6355
	nop			;6356
	nop			;6357
	daa			;6358
	rrca			;6359
	daa			;635a
	rrca			;635b
	rrca			;635c
	ld a,(bc)		;635d
	inc sp			;635e
	dec bc			;635f
	inc sp			;6360
	dec bc			;6361
	ld bc,00f00h		;6362
	rrca			;6365
	rrca			;6366
	rrca			;6367
	inc bc			;6368
	ld a,(bc)		;6369
	ld h,c			;636a
	nop			;636b
	ld h,c			;636c
	nop			;636d
	nop			;636e
	nop			;636f
	inc sp			;6370
	rrca			;6371
	inc sp			;6372
	rrca			;6373
	inc bc			;6374
	ld a,(bc)		;6375
	inc sp			;6376
	add hl,bc		;6377
	inc sp			;6378
	add hl,bc		;6379
	ld (bc),a		;637a
	nop			;637b
	inc bc			;637c
	rrca			;637d
	inc bc			;637e
	rrca			;637f
	inc bc			;6380
	ld a,(bc)		;6381
	ld h,c			;6382
	nop			;6383
	ld h,c			;6384
	nop			;6385
	ld bc,00f00h		;6386
	rrca			;6389
	rrca			;638a
	rrca			;638b
	rrca			;638c
	ld a,(bc)		;638d
	inc sp			;638e
	ld b,033h		;638f
	ld b,003h		;6391
	nop			;6393
	rrca			;6394
	rrca			;6395
	rrca			;6396
	rrca			;6397
	rrca			;6398
	ld a,(bc)		;6399
	ld h,c			;639a
	nop			;639b
	ld h,c			;639c
	nop			;639d
	nop			;639e
	nop			;639f
	dec de			;63a0
	rrca			;63a1
	dec de			;63a2
	rrca			;63a3
	rrca			;63a4
	ld a,(bc)		;63a5
	inc sp			;63a6
	inc b			;63a7
	inc sp			;63a8
	inc b			;63a9
	inc bc			;63aa
	nop			;63ab
	inc bc			;63ac
	rrca			;63ad
	inc bc			;63ae
	rrca			;63af
	rrca			;63b0
	ld a,(bc)		;63b1
	ld h,c			;63b2
	nop			;63b3
	ld h,c			;63b4
	nop			;63b5
	ld bc,00300h		;63b6
	rrca			;63b9
	inc bc			;63ba
	rrca			;63bb
	rrca			;63bc
	ld a,(bc)		;63bd
	inc sp			;63be
	ld (bc),a		;63bf
	inc sp			;63c0
	ld (bc),a		;63c1
	ld bc,00f00h		;63c2
	rrca			;63c5
	rrca			;63c6
	rrca			;63c7
	rrca			;63c8
	ld a,(bc)		;63c9
	ld h,c			;63ca
	nop			;63cb
	ld h,c			;63cc
	nop			;63cd
	nop			;63ce
	nop			;63cf
	inc bc			;63d0
	rrca			;63d1
	inc bc			;63d2
	rrca			;63d3
	rrca			;63d4
	ld a,(bc)		;63d5
	inc sp			;63d6
	ld bc,00133h		;63d7
	ld bc,00300h		;63da
	rrca			;63dd
	inc bc			;63de
	rrca			;63df
	rrca			;63e0
	ld a,(bc)		;63e1
	ld h,c			;63e2
	nop			;63e3
	ld h,c			;63e4
	nop			;63e5
	nop			;63e6
	nop			;63e7
	rrca			;63e8
	rrca			;63e9
	rrca			;63ea
	rrca			;63eb
	inc bc			;63ec
	ld a,(bc)		;63ed
	nop			;63ee
	nop			;63ef
	nop			;63f0
	nop			;63f1
	ld (bc),a		;63f2
	nop			;63f3
	inc bc			;63f4
	rrca			;63f5
	inc bc			;63f6
	rrca			;63f7
	inc bc			;63f8
	ld a,(bc)		;63f9
	nop			;63fa
	nop			;63fb
	nop			;63fc
	nop			;63fd
	nop			;63fe
	nop			;63ff
	inc bc			;6400
	rrca			;6401
	inc bc			;6402
	rrca			;6403
	rrca			;6404
	ld a,(bc)		;6405
	nop			;6406
	nop			;6407
	nop			;6408
	nop			;6409
	inc bc			;640a
	nop			;640b
	rrca			;640c
	rrca			;640d
	rrca			;640e
	rrca			;640f
	rrca			;6410
	ld a,(bc)		;6411
	nop			;6412
	nop			;6413
	nop			;6414
	nop			;6415
	nop			;6416
	nop			;6417
	daa			;6418
	rrca			;6419
	daa			;641a
	rrca			;641b
	rrca			;641c
	ld a,(bc)		;641d
	inc sp			;641e
	add hl,bc		;641f
	inc sp			;6420
	add hl,bc		;6421
	ld bc,00f00h		;6422
	rrca			;6425
	rrca			;6426
	rrca			;6427
	inc bc			;6428
	ld a,(bc)		;6429
	ld h,c			;642a
	nop			;642b
	ld h,c			;642c
	nop			;642d
	nop			;642e
	nop			;642f
	inc sp			;6430
	rrca			;6431
	inc sp			;6432
	rrca			;6433
	inc bc			;6434
	ld a,(bc)		;6435
	inc sp			;6436
	ld b,033h		;6437
	ld b,002h		;6439
	nop			;643b
	inc bc			;643c
	rrca			;643d
	inc bc			;643e
	rrca			;643f
	inc bc			;6440
	ld a,(bc)		;6441
	ld h,c			;6442
	nop			;6443
	ld h,c			;6444
	nop			;6445
	nop			;6446
	nop			;6447
	rrca			;6448
	rrca			;6449
	rrca			;644a
	rrca			;644b
	rrca			;644c
	ld a,(bc)		;644d
	inc sp			;644e
	inc b			;644f
	inc sp			;6450
	inc b			;6451
	ld bc,00f00h		;6452
	rrca			;6455
	rrca			;6456
	rrca			;6457
	rrca			;6458
	ld a,(bc)		;6459
	ld h,c			;645a
	nop			;645b
	ld h,c			;645c
	nop			;645d
	ld (bc),a		;645e
	nop			;645f
	dec de			;6460
	rrca			;6461
	dec de			;6462
	rrca			;6463
	rrca			;6464
	ld a,(bc)		;6465
	inc sp			;6466
	ld (bc),a		;6467
	inc sp			;6468
	ld (bc),a		;6469
	inc bc			;646a
	nop			;646b
	inc bc			;646c
	rrca			;646d
	inc bc			;646e
	rrca			;646f
	rrca			;6470
	ld a,(bc)		;6471
	ld h,c			;6472
	nop			;6473
	ld h,c			;6474
	nop			;6475
	nop			;6476
	nop			;6477
	dec b			;6478
	rrca			;6479
	dec b			;647a
	rrca			;647b
	dec b			;647c
	ld a,(bc)		;647d
	inc sp			;647e
	ld bc,00133h		;647f
	inc bc			;6482
	nop			;6483
	ld de,0110fh		;6484
	rrca			;6487
	dec b			;6488
	ld a,(bc)		;6489
	ld h,c			;648a
	nop			;648b
	ld h,c			;648c
	nop			;648d
	nop			;648e
	nop			;648f
	dec b			;6490
	rrca			;6491
	dec b			;6492
	rrca			;6493
	dec b			;6494
	ld a,(bc)		;6495
	nop			;6496
	nop			;6497
	nop			;6498
	nop			;6499
	inc bc			;649a
	nop			;649b
	dec b			;649c
	rrca			;649d
	dec b			;649e
	rrca			;649f
	dec b			;64a0
	ld a,(bc)		;64a1
	nop			;64a2
	nop			;64a3
	nop			;64a4
	nop			;64a5
	ld bc,01100h		;64a6
	rrca			;64a9
	ld de,0050fh		;64aa
	ld a,(bc)		;64ad
	nop			;64ae
	nop			;64af
	nop			;64b0
	nop			;64b1
	ld (bc),a		;64b2
	nop			;64b3
	dec b			;64b4
	rrca			;64b5
	dec b			;64b6
	rrca			;64b7
	dec b			;64b8
	ld a,(bc)		;64b9
	nop			;64ba
	nop			;64bb
	nop			;64bc
	nop			;64bd
	nop			;64be
	nop			;64bf
	inc bc			;64c0
	rrca			;64c1
	inc bc			;64c2
	rrca			;64c3
	rrca			;64c4
	ld a,(bc)		;64c5
	nop			;64c6
	nop			;64c7
	nop			;64c8
	nop			;64c9
	ld bc,00f00h		;64ca
	rrca			;64cd
	rrca			;64ce
	rrca			;64cf
	rrca			;64d0
	ld a,(bc)		;64d1
	ld h,d			;64d2
	inc d			;64d3
	nop			;64d4
	nop			;64d5
	nop			;64d6
	nop			;64d7
	daa			;64d8
	rrca			;64d9
	daa			;64da
	rrca			;64db
	rrca			;64dc
	ld a,(bc)		;64dd
	inc sp			;64de
	inc c			;64df
	inc sp			;64e0
	dec bc			;64e1
	ld bc,00f00h		;64e2
	rrca			;64e5
	rrca			;64e6
	rrca			;64e7
	inc bc			;64e8
	ld a,(bc)		;64e9
	ld h,c			;64ea
	nop			;64eb
	ld h,c			;64ec
	nop			;64ed
	nop			;64ee
	nop			;64ef
	inc sp			;64f0
	rrca			;64f1
	inc sp			;64f2
	rrca			;64f3
	inc bc			;64f4
	ld a,(bc)		;64f5
	inc sp			;64f6
	ld a,(bc)		;64f7
	inc sp			;64f8
	add hl,bc		;64f9
	ld (bc),a		;64fa
	nop			;64fb
	inc bc			;64fc
	rrca			;64fd
	inc bc			;64fe
	rrca			;64ff
	inc bc			;6500
	ld a,(bc)		;6501
	ld h,c			;6502
	nop			;6503
	ld h,c			;6504
	nop			;6505
	ld bc,00f00h		;6506
	rrca			;6509
	rrca			;650a
	rrca			;650b
	rrca			;650c
	ld a,(bc)		;650d
	inc sp			;650e
	ex af,af'		;650f
	inc sp			;6510
	ld b,003h		;6511
	nop			;6513
	rrca			;6514
	rrca			;6515
	rrca			;6516
	rrca			;6517
	rrca			;6518
	ld a,(bc)		;6519
	ld h,c			;651a
	nop			;651b
	ld h,c			;651c
	nop			;651d
	ld bc,01b00h		;651e
	rrca			;6521
	dec de			;6522
	rrca			;6523
	rrca			;6524
	ld a,(bc)		;6525
	inc sp			;6526
	ld b,033h		;6527
	inc b			;6529
	nop			;652a
	nop			;652b
	inc bc			;652c
	rrca			;652d
	inc bc			;652e
	rrca			;652f
	rrca			;6530
	ld a,(bc)		;6531
	ld h,c			;6532
	nop			;6533
	ld h,c			;6534
	nop			;6535
	ld bc,00300h		;6536
	rrca			;6539
	inc bc			;653a
	rrca			;653b
	rrca			;653c
	ld a,(bc)		;653d
	inc sp			;653e
	inc b			;653f
	inc sp			;6540
	ld (bc),a		;6541
	ld bc,00f00h		;6542
	rrca			;6545
	rrca			;6546
	rrca			;6547
	rrca			;6548
	ld a,(bc)		;6549
	ld h,c			;654a
	nop			;654b
	ld h,c			;654c
	nop			;654d
	inc bc			;654e
	nop			;654f
	inc bc			;6550
	rrca			;6551
	inc bc			;6552
	rrca			;6553
	rrca			;6554
	ld a,(bc)		;6555
	inc sp			;6556
	ld (bc),a		;6557
	inc sp			;6558
	ld bc,00002h		;6559
	inc bc			;655c
	rrca			;655d
	inc bc			;655e
	rrca			;655f
	rrca			;6560
	ld a,(bc)		;6561
	ld h,c			;6562
	nop			;6563
	ld h,c			;6564
	nop			;6565
	nop			;6566
	nop			;6567
	rrca			;6568
	rrca			;6569
	rrca			;656a
	rrca			;656b
	inc bc			;656c
	ld a,(bc)		;656d
	inc sp			;656e
	ld bc,00000h		;656f
	inc bc			;6572
	nop			;6573
	inc bc			;6574
	rrca			;6575
	inc bc			;6576
	rrca			;6577
	inc bc			;6578
	ld a,(bc)		;6579
	ld h,c			;657a
	nop			;657b
	nop			;657c
	nop			;657d
	nop			;657e
	nop			;657f
	inc bc			;6580
	rrca			;6581
	inc bc			;6582
	rrca			;6583
	rrca			;6584
	ld a,(bc)		;6585
	nop			;6586
	nop			;6587
	nop			;6588
	nop			;6589
	inc bc			;658a
	nop			;658b
	rrca			;658c
	rrca			;658d
	rrca			;658e
	rrca			;658f
	rrca			;6590
	ld a,(bc)		;6591
	nop			;6592
	nop			;6593
	nop			;6594
	nop			;6595
	nop			;6596
	nop			;6597
	daa			;6598
	rrca			;6599
	daa			;659a
	rrca			;659b
	rrca			;659c
	ld a,(bc)		;659d
	inc sp			;659e
	add hl,bc		;659f
	inc sp			;65a0
	add hl,bc		;65a1
	ld bc,00f00h		;65a2
	rrca			;65a5
	rrca			;65a6
	rrca			;65a7
	inc bc			;65a8
	ld a,(bc)		;65a9
	ld h,c			;65aa
	nop			;65ab
	ld h,c			;65ac
	nop			;65ad
	nop			;65ae
	nop			;65af
	inc sp			;65b0
	rrca			;65b1
	inc sp			;65b2
	rrca			;65b3
	inc bc			;65b4
	ld a,(bc)		;65b5
	inc sp			;65b6
	ld b,033h		;65b7
	ld b,002h		;65b9
	nop			;65bb
	inc bc			;65bc
	rrca			;65bd
	inc bc			;65be
	rrca			;65bf
	inc bc			;65c0
	ld a,(bc)		;65c1
	ld h,c			;65c2
	nop			;65c3
	ld h,c			;65c4
	nop			;65c5
	ld bc,00f00h		;65c6
	rrca			;65c9
	rrca			;65ca
	rrca			;65cb
	rrca			;65cc
	ld a,(bc)		;65cd
	inc sp			;65ce
	inc b			;65cf
	inc sp			;65d0
	inc b			;65d1
	inc bc			;65d2
	nop			;65d3
	rrca			;65d4
	rrca			;65d5
	rrca			;65d6
	rrca			;65d7
	rrca			;65d8
	ld a,(bc)		;65d9
	ld h,c			;65da
	nop			;65db
	ld h,c			;65dc
	nop			;65dd
	nop			;65de
	nop			;65df
	dec de			;65e0
	rrca			;65e1
	dec de			;65e2
	rrca			;65e3
	rrca			;65e4
	ld a,(bc)		;65e5
	inc sp			;65e6
	ld (bc),a		;65e7
	inc sp			;65e8
	ld (bc),a		;65e9
	inc bc			;65ea
	nop			;65eb
	inc bc			;65ec
	rrca			;65ed
	inc bc			;65ee
	rrca			;65ef
	rrca			;65f0
	ld a,(bc)		;65f1
	ld h,c			;65f2
	nop			;65f3
	ld h,c			;65f4
	nop			;65f5
	ld bc,00600h		;65f6
	rrca			;65f9
	ld b,00fh		;65fa
	ld b,00ah		;65fc
	inc sp			;65fe
	ld bc,00133h		;65ff
	inc bc			;6602
	nop			;6603
	ld (de),a		;6604
	rrca			;6605
	ld (de),a		;6606
	rrca			;6607
	ld b,00ah		;6608
	ld h,c			;660a
	nop			;660b
	ld h,c			;660c
	nop			;660d
	ld bc,00600h		;660e
	rrca			;6611
	ld b,00fh		;6612
	ld b,00ah		;6614
	nop			;6616
	nop			;6617
	nop			;6618
	nop			;6619
	inc bc			;661a
	nop			;661b
	ld b,00fh		;661c
	ld b,00fh		;661e
	ld b,00ah		;6620
	nop			;6622
	nop			;6623
	nop			;6624
	nop			;6625
	nop			;6626
	nop			;6627
	ld (de),a		;6628
	rrca			;6629
	ld (de),a		;662a
	rrca			;662b
	ld b,00ah		;662c
	nop			;662e
	nop			;662f
	nop			;6630
	nop			;6631
	inc bc			;6632
	nop			;6633
	ld b,00fh		;6634
	ld b,00fh		;6636
	ld b,00ah		;6638
	nop			;663a
	nop			;663b
	nop			;663c
	nop			;663d
	ld (bc),a		;663e
	nop			;663f
	inc bc			;6640
	rrca			;6641
	inc bc			;6642
	rrca			;6643
	rrca			;6644
	ld a,(bc)		;6645
	nop			;6646
	nop			;6647
	nop			;6648
	nop			;6649
	ld bc,00f00h		;664a
	rrca			;664d
	rrca			;664e
	rrca			;664f
	rrca			;6650
	ld a,(bc)		;6651
	nop			;6652
	nop			;6653
	nop			;6654
	nop			;6655
	nop			;6656
	nop			;6657
	daa			;6658
	rrca			;6659
	daa			;665a
	rrca			;665b
	rrca			;665c
	ld a,(bc)		;665d
	inc sp			;665e
	inc c			;665f
	inc sp			;6660
	dec bc			;6661
	ld bc,00f00h		;6662
	rrca			;6665
	rrca			;6666
	rrca			;6667
	inc bc			;6668
	ld a,(bc)		;6669
	ld h,c			;666a
	nop			;666b
	ld h,c			;666c
	nop			;666d
	nop			;666e
	nop			;666f
	inc sp			;6670
	rrca			;6671
	inc sp			;6672
	rrca			;6673
	inc bc			;6674
	ld a,(bc)		;6675
	inc sp			;6676
	ld a,(bc)		;6677
	inc sp			;6678
	add hl,bc		;6679
	ld (bc),a		;667a
	nop			;667b
	inc bc			;667c
	rrca			;667d
	inc bc			;667e
	rrca			;667f
	inc bc			;6680
	ld a,(bc)		;6681
	ld h,c			;6682
	nop			;6683
	ld h,c			;6684
	nop			;6685
	ld bc,00f00h		;6686
	rrca			;6689
	rrca			;668a
	rrca			;668b
	rrca			;668c
	ld a,(bc)		;668d
	inc sp			;668e
	ex af,af'		;668f
	inc sp			;6690
	ld b,003h		;6691
	nop			;6693
	rrca			;6694
	rrca			;6695
	rrca			;6696
	rrca			;6697
	rrca			;6698
	ld a,(bc)		;6699
	ld h,c			;669a
	nop			;669b
	ld h,c			;669c
	nop			;669d
	nop			;669e
	nop			;669f
	dec de			;66a0
	rrca			;66a1
	dec de			;66a2
	rrca			;66a3
	rrca			;66a4
	ld a,(bc)		;66a5
	inc sp			;66a6
	ld b,033h		;66a7
	inc b			;66a9
	inc bc			;66aa
	nop			;66ab
	inc bc			;66ac
	rrca			;66ad
	inc bc			;66ae
	rrca			;66af
	rrca			;66b0
	ld a,(bc)		;66b1
	ld h,c			;66b2
	nop			;66b3
	ld h,c			;66b4
	nop			;66b5
	ld bc,00300h		;66b6
	rrca			;66b9
	inc bc			;66ba
	rrca			;66bb
	rrca			;66bc
	ld a,(bc)		;66bd
	inc sp			;66be
	inc b			;66bf
	inc sp			;66c0
	ld (bc),a		;66c1
	ld bc,00f00h		;66c2
	rrca			;66c5
	rrca			;66c6
	rrca			;66c7
	rrca			;66c8
	ld a,(bc)		;66c9
	ld h,c			;66ca
	nop			;66cb
	ld h,c			;66cc
	nop			;66cd
	nop			;66ce
	nop			;66cf
	inc bc			;66d0
	rrca			;66d1
	inc bc			;66d2
	rrca			;66d3
	rrca			;66d4
	ld a,(bc)		;66d5
	inc sp			;66d6
	ld (bc),a		;66d7
	inc sp			;66d8
	ld bc,00001h		;66d9
	inc bc			;66dc
	rrca			;66dd
	inc bc			;66de
	rrca			;66df
	rrca			;66e0
	ld a,(bc)		;66e1
	ld h,c			;66e2
	nop			;66e3
	ld h,c			;66e4
	nop			;66e5
	nop			;66e6
	nop			;66e7
	rrca			;66e8
	rrca			;66e9
	rrca			;66ea
	rrca			;66eb
	inc bc			;66ec
	ld a,(bc)		;66ed
	inc sp			;66ee
	ld bc,00000h		;66ef
	ld (bc),a		;66f2
	nop			;66f3
	inc bc			;66f4
	rrca			;66f5
	inc bc			;66f6
	rrca			;66f7
	inc bc			;66f8
	ld a,(bc)		;66f9
	ld h,c			;66fa
	nop			;66fb
	nop			;66fc
	nop			;66fd
	nop			;66fe
	nop			;66ff
l6700h:
	inc bc			;6700
	rrca			;6701
	inc bc			;6702
	rrca			;6703
	rrca			;6704
l6705h:
	ld a,(bc)		;6705
	nop			;6706
	nop			;6707
	nop			;6708
	nop			;6709
	inc bc			;670a
	nop			;670b
	rrca			;670c
	rrca			;670d
	rrca			;670e
l670fh:
	rrca			;670f
	rrca			;6710
	ld a,(bc)		;6711
	nop			;6712
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	nop			;6717
	daa			;6718
	rrca			;6719
	daa			;671a
	rrca			;671b
	rrca			;671c
	ld a,(bc)		;671d
	inc sp			;671e
	add hl,bc		;671f
	inc sp			;6720
	add hl,bc		;6721
	ld bc,00f00h		;6722
	rrca			;6725
	rrca			;6726
	rrca			;6727
	inc bc			;6728
	ld a,(bc)		;6729
	ld h,c			;672a
	nop			;672b
	ld h,c			;672c
	nop			;672d
	nop			;672e
	nop			;672f
	inc sp			;6730
	rrca			;6731
	inc sp			;6732
	rrca			;6733
	inc bc			;6734
	ld a,(bc)		;6735
	inc sp			;6736
	ld b,033h		;6737
	ld b,002h		;6739
	nop			;673b
	inc bc			;673c
	rrca			;673d
	inc bc			;673e
	rrca			;673f
	inc bc			;6740
	ld a,(bc)		;6741
	ld h,c			;6742
	nop			;6743
	ld h,c			;6744
	nop			;6745
	nop			;6746
	nop			;6747
	rrca			;6748
	rrca			;6749
	rrca			;674a
	rrca			;674b
	rrca			;674c
	ld a,(bc)		;674d
	inc sp			;674e
	inc b			;674f
	inc sp			;6750
	inc b			;6751
	ld bc,00f00h		;6752
	rrca			;6755
	rrca			;6756
	rrca			;6757
	rrca			;6758
	ld a,(bc)		;6759
	ld h,c			;675a
	nop			;675b
	ld h,c			;675c
	nop			;675d
	ld (bc),a		;675e
	nop			;675f
	dec de			;6760
	rrca			;6761
	dec de			;6762
	rrca			;6763
	rrca			;6764
	ld a,(bc)		;6765
	inc sp			;6766
	ld (bc),a		;6767
	inc sp			;6768
	ld (bc),a		;6769
	inc bc			;676a
	nop			;676b
	inc bc			;676c
	rrca			;676d
	inc bc			;676e
	rrca			;676f
	rrca			;6770
	ld a,(bc)		;6771
	ld h,c			;6772
	nop			;6773
	ld h,c			;6774
	nop			;6775
	nop			;6776
	nop			;6777
	dec b			;6778
	rrca			;6779
	dec b			;677a
	rrca			;677b
	dec b			;677c
	ld a,(bc)		;677d
	inc sp			;677e
	ld bc,00133h		;677f
	inc bc			;6782
	nop			;6783
	ld de,0110fh		;6784
	rrca			;6787
	dec b			;6788
	ld a,(bc)		;6789
	ld h,c			;678a
	nop			;678b
	ld h,c			;678c
	nop			;678d
	nop			;678e
	nop			;678f
	dec b			;6790
	rrca			;6791
	dec b			;6792
	rrca			;6793
	dec b			;6794
	ld a,(bc)		;6795
	nop			;6796
	nop			;6797
	nop			;6798
	nop			;6799
	inc bc			;679a
	nop			;679b
	dec b			;679c
	rrca			;679d
	dec b			;679e
	rrca			;679f
	dec b			;67a0
	ld a,(bc)		;67a1
	nop			;67a2
	nop			;67a3
	nop			;67a4
	nop			;67a5
	ld bc,01100h		;67a6
	rrca			;67a9
	ld de,0050fh		;67aa
	ld a,(bc)		;67ad
	nop			;67ae
	nop			;67af
	nop			;67b0
	nop			;67b1
	ld (bc),a		;67b2
	nop			;67b3
	dec b			;67b4
	rrca			;67b5
	dec b			;67b6
	rrca			;67b7
	dec b			;67b8
	ld a,(bc)		;67b9
	ld l,d			;67ba
	ld bc,00169h		;67bb
	nop			;67be
	nop			;67bf
	ld h,d			;67c0
	ld (03262h),a		;67c1
	rrca			;67c4
	rrca			;67c5
	ld h,d			;67c6
	dec hl			;67c7
	dec de			;67c8
	rrca			;67c9
	ld bc,01700h		;67ca
	rrca			;67cd
	ld d,00fh		;67ce
	rrca			;67d0
	rrca			;67d1
	inc sp			;67d2
	ld c,01bh		;67d3
	rrca			;67d5
	nop			;67d6
	nop			;67d7
	ld h,e			;67d8
	dec b			;67d9
	ld h,e			;67da
	inc bc			;67db
	rrca			;67dc
	rrca			;67dd
	inc sp			;67de
	rrca			;67df
	dec de			;67e0
	rrca			;67e1
	ld bc,00000h		;67e2
	rrca			;67e5
	nop			;67e6
	rrca			;67e7
	inc bc			;67e8
	rrca			;67e9
	ld h,e			;67ea
	ld b,b			;67eb
	ld h,e			;67ec
	ld b,b			;67ed
	nop			;67ee
	nop			;67ef
	nop			;67f0
	nop			;67f1
	nop			;67f2
	nop			;67f3
	inc bc			;67f4
	rrca			;67f5
	ccf			;67f6
	ld c,027h		;67f7
	rrca			;67f9
	ld (bc),a		;67fa
	nop			;67fb
	nop			;67fc
	nop			;67fd
	nop			;67fe
	nop			;67ff
l6800h:
	inc bc			;6800
	rrca			;6801
	ccf			;6802
	ld c,027h		;6803
	rrca			;6805
	ld bc,00000h		;6806
	rrca			;6809
	nop			;680a
	rrca			;680b
	rrca			;680c
	rrca			;680d
	inc sp			;680e
	ld c,01bh		;680f
	rrca			;6811
	nop			;6812
	nop			;6813
	nop			;6814
	rrca			;6815
	nop			;6816
	rrca			;6817
	rrca			;6818
	rrca			;6819
	ld h,c			;681a
	nop			;681b
	ld h,c			;681c
	nop			;681d
	ld bc,00000h		;681e
	rrca			;6821
	nop			;6822
	rrca			;6823
	rrca			;6824
	rrca			;6825
	inc sp			;6826
	ld c,01bh		;6827
	rrca			;6829
	inc bc			;682a
	nop			;682b
	nop			;682c
	rrca			;682d
	nop			;682e
	rrca			;682f
	rrca			;6830
	rrca			;6831
	nop			;6832
	nop			;6833
	nop			;6834
	nop			;6835
	ld bc,00000h		;6836
	rrca			;6839
	nop			;683a
	rrca			;683b
	rrca			;683c
	rrca			;683d
	dec a			;683e
	ld c,025h		;683f
	rrca			;6841
	ld bc,00000h		;6842
	rrca			;6845
	nop			;6846
	rrca			;6847
	rrca			;6848
	rrca			;6849
	ld h,a			;684a
	ld (bc),a		;684b
	ld h,a			;684c
	ld (bc),a		;684d
	nop			;684e
	nop			;684f
	nop			;6850
	rrca			;6851
	nop			;6852
	rrca			;6853
	rrca			;6854
	rrca			;6855
	ld h,c			;6856
	nop			;6857
	ld h,c			;6858
	nop			;6859
	ld (bc),a		;685a
	nop			;685b
	nop			;685c
	rrca			;685d
	nop			;685e
	rrca			;685f
	rrca			;6860
	rrca			;6861
	inc sp			;6862
	ld c,01bh		;6863
	rrca			;6865
	inc bc			;6866
	nop			;6867
	nop			;6868
	rrca			;6869
	nop			;686a
	rrca			;686b
	inc bc			;686c
	rrca			;686d
	ccf			;686e
	rrca			;686f
	daa			;6870
	rrca			;6871
	nop			;6872
	nop			;6873
	nop			;6874
	rrca			;6875
	nop			;6876
	rrca			;6877
	inc bc			;6878
	rrca			;6879
	dec de			;687a
	rrca			;687b
	rrca			;687c
	rrca			;687d
	nop			;687e
	nop			;687f
	ld h,h			;6880
	dec b			;6881
	ld h,h			;6882
	inc bc			;6883
	rrca			;6884
	rrca			;6885
	inc sp			;6886
	ld c,01bh		;6887
	rrca			;6889
	inc bc			;688a
	nop			;688b
	nop			;688c
	rrca			;688d
	nop			;688e
	rrca			;688f
	rrca			;6890
	rrca			;6891
	ld h,c			;6892
	nop			;6893
	ld h,c			;6894
	nop			;6895
	nop			;6896
	nop			;6897
	nop			;6898
	rrca			;6899
	nop			;689a
	rrca			;689b
	rrca			;689c
	rrca			;689d
	inc sp			;689e
	ld c,01bh		;689f
	rrca			;68a1
	ld bc,00000h		;68a2
	rrca			;68a5
	nop			;68a6
	rrca			;68a7
	inc bc			;68a8
	rrca			;68a9
	inc sp			;68aa
	rrca			;68ab
	dec de			;68ac
	rrca			;68ad
	nop			;68ae
	nop			;68af
	nop			;68b0
	rrca			;68b1
	nop			;68b2
	rrca			;68b3
	inc bc			;68b4
	rrca			;68b5
	ld h,e			;68b6
	inc sp			;68b7
	ld h,e			;68b8
	inc sp			;68b9
	ld (bc),a		;68ba
	nop			;68bb
	nop			;68bc
	rrca			;68bd
	nop			;68be
	rrca			;68bf
	inc bc			;68c0
	rrca			;68c1
	inc sp			;68c2
	ld c,01bh		;68c3
	rrca			;68c5
	ld bc,00000h		;68c6
	rrca			;68c9
	nop			;68ca
	rrca			;68cb
	rrca			;68cc
	rrca			;68cd
	ccf			;68ce
	ld c,027h		;68cf
	rrca			;68d1
	inc bc			;68d2
	nop			;68d3
	nop			;68d4
	rrca			;68d5
	nop			;68d6
	rrca			;68d7
	rrca			;68d8
	rrca			;68d9
	inc sp			;68da
	ld c,01bh		;68db
	rrca			;68dd
	nop			;68de
	nop			;68df
	nop			;68e0
	rrca			;68e1
	nop			;68e2
	rrca			;68e3
	rrca			;68e4
	rrca			;68e5
	ld h,c			;68e6
	nop			;68e7
	ld h,c			;68e8
	nop			;68e9
	inc bc			;68ea
	nop			;68eb
	nop			;68ec
	rrca			;68ed
	nop			;68ee
	rrca			;68ef
	rrca			;68f0
	rrca			;68f1
	ccf			;68f2
	ld c,027h		;68f3
	rrca			;68f5
	ld bc,00000h		;68f6
	rrca			;68f9
	nop			;68fa
	rrca			;68fb
	ld b,00fh		;68fc
	ld (hl),00eh		;68fe
	ld e,00fh		;6900
	inc bc			;6902
	nop			;6903
	nop			;6904
	rrca			;6905
	nop			;6906
	rrca			;6907
	ld b,00fh		;6908
	ld (hl),00eh		;690a
	ld e,00fh		;690c
	ld bc,00000h		;690e
	rrca			;6911
	nop			;6912
	rrca			;6913
	ld b,00fh		;6914
	ld h,c			;6916
	nop			;6917
	ld h,c			;6918
	nop			;6919
	inc bc			;691a
	nop			;691b
	nop			;691c
	rrca			;691d
	nop			;691e
	rrca			;691f
	ld b,00fh		;6920
	ld hl,(0120eh)		;6922
	rrca			;6925
	nop			;6926
	nop			;6927
	nop			;6928
	rrca			;6929
	nop			;692a
	rrca			;692b
	ld b,00fh		;692c
	ld (hl),00eh		;692e
	ld e,00fh		;6930
	inc bc			;6932
	nop			;6933
	nop			;6934
	rrca			;6935
	nop			;6936
	rrca			;6937
	ld b,00fh		;6938
	ld (hl),00eh		;693a
	ld e,00fh		;693c
	ld (bc),a		;693e
	nop			;693f
	ld h,e			;6940
	dec b			;6941
	ld h,e			;6942
	ld b,00fh		;6943
	rrca			;6945
	ld h,c			;6946
	nop			;6947
	ld h,c			;6948
	nop			;6949
	ld bc,00000h		;694a
	rrca			;694d
	nop			;694e
	rrca			;694f
	rrca			;6950
	rrca			;6951
	inc sp			;6952
	ld c,01bh		;6953
	rrca			;6955
	nop			;6956
	nop			;6957
	nop			;6958
	rrca			;6959
	nop			;695a
	rrca			;695b
	rrca			;695c
	rrca			;695d
	inc sp			;695e
	rrca			;695f
	dec de			;6960
	rrca			;6961
	ld bc,00000h		;6962
	rrca			;6965
	nop			;6966
	rrca			;6967
	inc bc			;6968
	rrca			;6969
	ld h,e			;696a
	ld b,b			;696b
	ld h,e			;696c
	ld b,b			;696d
	nop			;696e
	nop			;696f
	nop			;6970
	rrca			;6971
	nop			;6972
	rrca			;6973
	inc bc			;6974
	rrca			;6975
	ccf			;6976
	ld c,027h		;6977
	rrca			;6979
	ld (bc),a		;697a
	nop			;697b
	nop			;697c
	rrca			;697d
	nop			;697e
	rrca			;697f
	inc bc			;6980
	rrca			;6981
	ccf			;6982
	ld c,027h		;6983
	rrca			;6985
	ld bc,00000h		;6986
	rrca			;6989
	nop			;698a
	rrca			;698b
	rrca			;698c
	rrca			;698d
	inc sp			;698e
	ld c,01bh		;698f
	rrca			;6991
	inc bc			;6992
	nop			;6993
	nop			;6994
	rrca			;6995
	nop			;6996
	rrca			;6997
	rrca			;6998
	rrca			;6999
	ld h,c			;699a
	nop			;699b
	ld h,c			;699c
	nop			;699d
	nop			;699e
	nop			;699f
	nop			;69a0
	rrca			;69a1
	nop			;69a2
	rrca			;69a3
	rrca			;69a4
	rrca			;69a5
	inc sp			;69a6
	ld c,01bh		;69a7
	rrca			;69a9
	inc bc			;69aa
	nop			;69ab
	nop			;69ac
	rrca			;69ad
	nop			;69ae
	rrca			;69af
	rrca			;69b0
	rrca			;69b1
	nop			;69b2
	nop			;69b3
	nop			;69b4
	nop			;69b5
	ld bc,00000h		;69b6
	rrca			;69b9
	nop			;69ba
	rrca			;69bb
	rrca			;69bc
	rrca			;69bd
	dec a			;69be
	ld c,025h		;69bf
	rrca			;69c1
	ld bc,00000h		;69c2
	rrca			;69c5
	nop			;69c6
	rrca			;69c7
	rrca			;69c8
	rrca			;69c9
	ld h,a			;69ca
	ld (bc),a		;69cb
	ld h,a			;69cc
	ld (bc),a		;69cd
	nop			;69ce
	nop			;69cf
	nop			;69d0
	rrca			;69d1
	nop			;69d2
	rrca			;69d3
	rrca			;69d4
	rrca			;69d5
	inc sp			;69d6
	ld c,01bh		;69d7
	rrca			;69d9
	ld bc,00000h		;69da
	rrca			;69dd
	nop			;69de
	rrca			;69df
	rrca			;69e0
	rrca			;69e1
	ld h,c			;69e2
	nop			;69e3
	ld h,c			;69e4
	nop			;69e5
	nop			;69e6
	nop			;69e7
	nop			;69e8
	rrca			;69e9
	nop			;69ea
	rrca			;69eb
	inc bc			;69ec
	rrca			;69ed
	inc sp			;69ee
	ld c,01bh		;69ef
	ld c,002h		;69f1
	nop			;69f3
	nop			;69f4
	rrca			;69f5
	nop			;69f6
	rrca			;69f7
	inc bc			;69f8
	rrca			;69f9
	ccf			;69fa
	ld c,027h		;69fb
	ld c,000h		;69fd
	nop			;69ff
l6a00h:
	ld h,h			;6a00
	dec b			;6a01
	ld h,h			;6a02
	ld b,00fh		;6a03
	rrca			;6a05
	ld h,c			;6a06
	nop			;6a07
	ld h,c			;6a08
	nop			;6a09
	inc bc			;6a0a
	nop			;6a0b
	nop			;6a0c
	rrca			;6a0d
	nop			;6a0e
	rrca			;6a0f
	rrca			;6a10
	rrca			;6a11
	inc sp			;6a12
	ld c,01bh		;6a13
	rrca			;6a15
	nop			;6a16
	nop			;6a17
	nop			;6a18
	rrca			;6a19
	nop			;6a1a
	rrca			;6a1b
	rrca			;6a1c
	rrca			;6a1d
	inc sp			;6a1e
	ld c,01bh		;6a1f
	rrca			;6a21
	ld bc,00000h		;6a22
	rrca			;6a25
	nop			;6a26
	rrca			;6a27
	inc bc			;6a28
	rrca			;6a29
	inc sp			;6a2a
	rrca			;6a2b
	dec de			;6a2c
	rrca			;6a2d
	nop			;6a2e
	nop			;6a2f
	nop			;6a30
	rrca			;6a31
	nop			;6a32
	rrca			;6a33
	inc bc			;6a34
	rrca			;6a35
	ld h,e			;6a36
	inc sp			;6a37
	ld h,e			;6a38
	inc sp			;6a39
	ld (bc),a		;6a3a
	nop			;6a3b
	nop			;6a3c
	rrca			;6a3d
	nop			;6a3e
	rrca			;6a3f
	inc bc			;6a40
	rrca			;6a41
	inc sp			;6a42
	ld c,01bh		;6a43
	rrca			;6a45
	nop			;6a46
	nop			;6a47
	nop			;6a48
	rrca			;6a49
	nop			;6a4a
	rrca			;6a4b
	rrca			;6a4c
	rrca			;6a4d
	ccf			;6a4e
	ld c,027h		;6a4f
	rrca			;6a51
	ld bc,00000h		;6a52
	rrca			;6a55
	nop			;6a56
	rrca			;6a57
	rrca			;6a58
	rrca			;6a59
	inc sp			;6a5a
	ld c,01bh		;6a5b
	rrca			;6a5d
	ld (bc),a		;6a5e
	nop			;6a5f
	nop			;6a60
	rrca			;6a61
	nop			;6a62
	rrca			;6a63
	rrca			;6a64
	rrca			;6a65
	inc sp			;6a66
	ld c,01bh		;6a67
	rrca			;6a69
	inc bc			;6a6a
	nop			;6a6b
	nop			;6a6c
	rrca			;6a6d
	nop			;6a6e
	rrca			;6a6f
	rrca			;6a70
	rrca			;6a71
	ld h,c			;6a72
	nop			;6a73
	ld h,c			;6a74
	nop			;6a75
	nop			;6a76
	nop			;6a77
	nop			;6a78
	rrca			;6a79
	nop			;6a7a
	rrca			;6a7b
	dec b			;6a7c
	rrca			;6a7d
	dec (hl)		;6a7e
	ld c,01dh		;6a7f
	rrca			;6a81
	inc bc			;6a82
	nop			;6a83
	nop			;6a84
	rrca			;6a85
	nop			;6a86
	rrca			;6a87
	dec b			;6a88
	rrca			;6a89
	ld h,a			;6a8a
	inc bc			;6a8b
	ld h,a			;6a8c
	inc bc			;6a8d
	nop			;6a8e
	nop			;6a8f
	nop			;6a90
	rrca			;6a91
	nop			;6a92
	rrca			;6a93
	dec b			;6a94
	rrca			;6a95
	nop			;6a96
	nop			;6a97
	nop			;6a98
	nop			;6a99
	inc bc			;6a9a
	nop			;6a9b
	nop			;6a9c
	rrca			;6a9d
	nop			;6a9e
	rrca			;6a9f
	dec b			;6aa0
	rrca			;6aa1
	nop			;6aa2
	nop			;6aa3
	nop			;6aa4
	nop			;6aa5
	ld bc,00000h		;6aa6
	rrca			;6aa9
	nop			;6aaa
	rrca			;6aab
	dec b			;6aac
	rrca			;6aad
	nop			;6aae
	nop			;6aaf
	nop			;6ab0
	nop			;6ab1
	ld (bc),a		;6ab2
	nop			;6ab3
	nop			;6ab4
	rrca			;6ab5
	ld h,e			;6ab6
	ld b,005h		;6ab7
	rrca			;6ab9
	nop			;6aba
	nop			;6abb
	nop			;6abc
	nop			;6abd
	nop			;6abe
	nop			;6abf
	ld h,e			;6ac0
	dec b			;6ac1
	nop			;6ac2
	rrca			;6ac3
	rrca			;6ac4
	rrca			;6ac5
	inc sp			;6ac6
	ld c,01bh		;6ac7
	rrca			;6ac9
	ld bc,00000h		;6aca
	rrca			;6acd
	nop			;6ace
	rrca			;6acf
	rrca			;6ad0
	rrca			;6ad1
	inc sp			;6ad2
	ld c,01bh		;6ad3
	rrca			;6ad5
	nop			;6ad6
	nop			;6ad7
	nop			;6ad8
	rrca			;6ad9
	nop			;6ada
	rrca			;6adb
	rrca			;6adc
	rrca			;6add
	inc sp			;6ade
	rrca			;6adf
	dec de			;6ae0
	rrca			;6ae1
	ld bc,00000h		;6ae2
	rrca			;6ae5
	nop			;6ae6
	rrca			;6ae7
	inc bc			;6ae8
	rrca			;6ae9
	ld h,e			;6aea
	ld b,b			;6aeb
	ld h,e			;6aec
	ld b,b			;6aed
	nop			;6aee
	nop			;6aef
	nop			;6af0
	rrca			;6af1
	nop			;6af2
	rrca			;6af3
	inc bc			;6af4
	rrca			;6af5
	ccf			;6af6
	ld c,027h		;6af7
	rrca			;6af9
	ld (bc),a		;6afa
	nop			;6afb
	nop			;6afc
	rrca			;6afd
	nop			;6afe
	rrca			;6aff
	inc bc			;6b00
	rrca			;6b01
	ld h,c			;6b02
	nop			;6b03
	ld h,c			;6b04
	nop			;6b05
	ld bc,00000h		;6b06
	rrca			;6b09
	nop			;6b0a
	rrca			;6b0b
	rrca			;6b0c
	rrca			;6b0d
	inc sp			;6b0e
	ld c,01bh		;6b0f
	rrca			;6b11
	inc bc			;6b12
	nop			;6b13
	nop			;6b14
	rrca			;6b15
	nop			;6b16
	rrca			;6b17
	rrca			;6b18
	rrca			;6b19
	inc sp			;6b1a
	ld c,01bh		;6b1b
	rrca			;6b1d
	ld bc,00000h		;6b1e
	rrca			;6b21
	nop			;6b22
	rrca			;6b23
	rrca			;6b24
	rrca			;6b25
	inc sp			;6b26
	ld c,01bh		;6b27
	rrca			;6b29
	nop			;6b2a
	nop			;6b2b
	nop			;6b2c
	rrca			;6b2d
	nop			;6b2e
	rrca			;6b2f
	rrca			;6b30
	rrca			;6b31
	ld h,c			;6b32
	nop			;6b33
	ld h,c			;6b34
	nop			;6b35
	ld bc,00000h		;6b36
	rrca			;6b39
	nop			;6b3a
	rrca			;6b3b
	rrca			;6b3c
	rrca			;6b3d
	dec a			;6b3e
	ld c,025h		;6b3f
	rrca			;6b41
	ld bc,00000h		;6b42
	rrca			;6b45
	nop			;6b46
	rrca			;6b47
	rrca			;6b48
	rrca			;6b49
	ld h,a			;6b4a
	ld (bc),a		;6b4b
	ld h,a			;6b4c
	ld (bc),a		;6b4d
	inc bc			;6b4e
	nop			;6b4f
	nop			;6b50
	rrca			;6b51
	nop			;6b52
	rrca			;6b53
	rrca			;6b54
	rrca			;6b55
	ld h,c			;6b56
	nop			;6b57
	ld h,c			;6b58
	nop			;6b59
	ld (bc),a		;6b5a
	nop			;6b5b
	nop			;6b5c
	rrca			;6b5d
	nop			;6b5e
	rrca			;6b5f
	rrca			;6b60
	rrca			;6b61
	inc sp			;6b62
	ld c,01bh		;6b63
	rrca			;6b65
	nop			;6b66
	nop			;6b67
	nop			;6b68
	rrca			;6b69
	nop			;6b6a
	rrca			;6b6b
	inc bc			;6b6c
	rrca			;6b6d
	ccf			;6b6e
	ld c,027h		;6b6f
	rrca			;6b71
	inc bc			;6b72
	nop			;6b73
	nop			;6b74
	rrca			;6b75
	nop			;6b76
	rrca			;6b77
	inc bc			;6b78
	rrca			;6b79
	ccf			;6b7a
	ld c,027h		;6b7b
	rrca			;6b7d
	nop			;6b7e
	nop			;6b7f
	ld h,h			;6b80
	dec b			;6b81
	ld h,h			;6b82
	ld b,00fh		;6b83
	rrca			;6b85
	ld h,c			;6b86
	nop			;6b87
	ld h,c			;6b88
	nop			;6b89
	inc bc			;6b8a
	nop			;6b8b
	nop			;6b8c
	rrca			;6b8d
	nop			;6b8e
	rrca			;6b8f
	rrca			;6b90
	rrca			;6b91
	inc sp			;6b92
	ld c,01bh		;6b93
	rrca			;6b95
	nop			;6b96
	nop			;6b97
	nop			;6b98
	rrca			;6b99
	nop			;6b9a
	rrca			;6b9b
	rrca			;6b9c
	rrca			;6b9d
	inc sp			;6b9e
	ld c,01bh		;6b9f
	rrca			;6ba1
	ld bc,00000h		;6ba2
	rrca			;6ba5
	nop			;6ba6
	rrca			;6ba7
	inc bc			;6ba8
	rrca			;6ba9
	inc sp			;6baa
	rrca			;6bab
	dec de			;6bac
	rrca			;6bad
	nop			;6bae
	nop			;6baf
	nop			;6bb0
	rrca			;6bb1
	nop			;6bb2
	rrca			;6bb3
	inc bc			;6bb4
	rrca			;6bb5
	ld h,e			;6bb6
	inc sp			;6bb7
	ld h,e			;6bb8
	inc sp			;6bb9
	ld (bc),a		;6bba
	nop			;6bbb
	nop			;6bbc
	rrca			;6bbd
	nop			;6bbe
	rrca			;6bbf
	inc bc			;6bc0
	rrca			;6bc1
	inc sp			;6bc2
	ld c,01bh		;6bc3
	rrca			;6bc5
	ld bc,00000h		;6bc6
	rrca			;6bc9
	nop			;6bca
	rrca			;6bcb
	rrca			;6bcc
	rrca			;6bcd
	ld h,c			;6bce
	nop			;6bcf
	ld h,c			;6bd0
	nop			;6bd1
	inc bc			;6bd2
	nop			;6bd3
	nop			;6bd4
	rrca			;6bd5
	nop			;6bd6
	rrca			;6bd7
	rrca			;6bd8
	rrca			;6bd9
	inc sp			;6bda
	ld c,01bh		;6bdb
	rrca			;6bdd
	nop			;6bde
	nop			;6bdf
	nop			;6be0
	rrca			;6be1
	nop			;6be2
	rrca			;6be3
	rrca			;6be4
	rrca			;6be5
	inc sp			;6be6
	ld c,01bh		;6be7
	rrca			;6be9
	inc bc			;6bea
	nop			;6beb
	nop			;6bec
	rrca			;6bed
	nop			;6bee
	rrca			;6bef
	rrca			;6bf0
	rrca			;6bf1
	ccf			;6bf2
	ld c,027h		;6bf3
	rrca			;6bf5
	ld bc,00000h		;6bf6
	rrca			;6bf9
	nop			;6bfa
	rrca			;6bfb
	ld b,00fh		;6bfc
	ld (hl),00eh		;6bfe
l6c00h:
	ld e,00fh		;6c00
	inc bc			;6c02
	nop			;6c03
	nop			;6c04
l6c05h:
	rrca			;6c05
	nop			;6c06
l6c07h:
	rrca			;6c07
	ld b,00fh		;6c08
	ld h,c			;6c0a
	nop			;6c0b
	ld h,c			;6c0c
	nop			;6c0d
	ld bc,00000h		;6c0e
	rrca			;6c11
	nop			;6c12
	rrca			;6c13
	ld b,00fh		;6c14
	ld (hl),00eh		;6c16
	ld e,00fh		;6c18
	inc bc			;6c1a
	nop			;6c1b
	nop			;6c1c
	rrca			;6c1d
	nop			;6c1e
	rrca			;6c1f
	ld b,00fh		;6c20
	ld hl,(0120eh)		;6c22
	rrca			;6c25
	nop			;6c26
	nop			;6c27
	nop			;6c28
	rrca			;6c29
	nop			;6c2a
	rrca			;6c2b
	ld b,00fh		;6c2c
	ld h,c			;6c2e
	nop			;6c2f
	ld h,c			;6c30
	nop			;6c31
	inc bc			;6c32
	nop			;6c33
	nop			;6c34
	rrca			;6c35
	nop			;6c36
	rrca			;6c37
	ld b,00fh		;6c38
	ld (hl),00eh		;6c3a
	ld e,00fh		;6c3c
	ld (bc),a		;6c3e
	nop			;6c3f
	ld h,e			;6c40
	dec b			;6c41
	ld h,e			;6c42
	rlca			;6c43
	rrca			;6c44
	rrca			;6c45
	inc sp			;6c46
	ld c,01bh		;6c47
	rrca			;6c49
	ld bc,00000h		;6c4a
	rrca			;6c4d
	nop			;6c4e
	rrca			;6c4f
	rrca			;6c50
	rrca			;6c51
	inc sp			;6c52
	ld c,01bh		;6c53
	rrca			;6c55
	nop			;6c56
	nop			;6c57
	nop			;6c58
	rrca			;6c59
	nop			;6c5a
	rrca			;6c5b
	rrca			;6c5c
	rrca			;6c5d
	ld h,c			;6c5e
	nop			;6c5f
	ld h,c			;6c60
	nop			;6c61
	ld bc,00000h		;6c62
	rrca			;6c65
	nop			;6c66
	rrca			;6c67
	inc bc			;6c68
	rrca			;6c69
	ccf			;6c6a
	dec c			;6c6b
	daa			;6c6c
	rrca			;6c6d
	nop			;6c6e
	nop			;6c6f
	nop			;6c70
	rrca			;6c71
	nop			;6c72
	rrca			;6c73
	inc bc			;6c74
	rrca			;6c75
	ld h,e			;6c76
	ld h,b			;6c77
	ld h,e			;6c78
	ld b,b			;6c79
	ld (bc),a		;6c7a
	nop			;6c7b
	nop			;6c7c
	rrca			;6c7d
	nop			;6c7e
	rrca			;6c7f
	inc bc			;6c80
	rrca			;6c81
	ccf			;6c82
	ld c,027h		;6c83
	rrca			;6c85
	ld bc,00000h		;6c86
	rrca			;6c89
	nop			;6c8a
	rrca			;6c8b
	rrca			;6c8c
	rrca			;6c8d
	inc sp			;6c8e
	ld c,01bh		;6c8f
	rrca			;6c91
	inc bc			;6c92
	nop			;6c93
	nop			;6c94
	rrca			;6c95
	nop			;6c96
	rrca			;6c97
	rrca			;6c98
	rrca			;6c99
	ld h,c			;6c9a
	nop			;6c9b
	ld h,c			;6c9c
	nop			;6c9d
	nop			;6c9e
	nop			;6c9f
	nop			;6ca0
	rrca			;6ca1
	nop			;6ca2
	rrca			;6ca3
	rrca			;6ca4
	rrca			;6ca5
	inc sp			;6ca6
	ld c,01bh		;6ca7
	rrca			;6ca9
	inc bc			;6caa
	nop			;6cab
	nop			;6cac
	rrca			;6cad
	nop			;6cae
	rrca			;6caf
	rrca			;6cb0
	rrca			;6cb1
	nop			;6cb2
	nop			;6cb3
	nop			;6cb4
	nop			;6cb5
	ld bc,00000h		;6cb6
	rrca			;6cb9
	nop			;6cba
	rrca			;6cbb
	rrca			;6cbc
	rrca			;6cbd
	dec a			;6cbe
	ld c,025h		;6cbf
	rrca			;6cc1
	ld bc,00000h		;6cc2
	rrca			;6cc5
	nop			;6cc6
	rrca			;6cc7
	rrca			;6cc8
	rrca			;6cc9
	ld h,a			;6cca
	ld (bc),a		;6ccb
	ld h,a			;6ccc
	ld (bc),a		;6ccd
	nop			;6cce
	nop			;6ccf
	nop			;6cd0
	rrca			;6cd1
	nop			;6cd2
	rrca			;6cd3
	rrca			;6cd4
	rrca			;6cd5
	inc sp			;6cd6
	ld c,01bh		;6cd7
	rrca			;6cd9
	ld bc,00000h		;6cda
	rrca			;6cdd
	nop			;6cde
	rrca			;6cdf
	rrca			;6ce0
	rrca			;6ce1
	inc sp			;6ce2
	ld c,01bh		;6ce3
	rrca			;6ce5
	nop			;6ce6
	nop			;6ce7
	nop			;6ce8
	rrca			;6ce9
	nop			;6cea
	rrca			;6ceb
	inc bc			;6cec
	rrca			;6ced
	ccf			;6cee
	ld c,027h		;6cef
	rrca			;6cf1
	ld (bc),a		;6cf2
	nop			;6cf3
	nop			;6cf4
	rrca			;6cf5
	nop			;6cf6
	rrca			;6cf7
	inc bc			;6cf8
	rrca			;6cf9
	ccf			;6cfa
	ld c,027h		;6cfb
	rrca			;6cfd
	nop			;6cfe
	nop			;6cff
	ld h,h			;6d00
	dec b			;6d01
	ld h,h			;6d02
	rlca			;6d03
	rrca			;6d04
	rrca			;6d05
	ld h,c			;6d06
	nop			;6d07
	ld h,c			;6d08
	nop			;6d09
	inc bc			;6d0a
	nop			;6d0b
	nop			;6d0c
	rrca			;6d0d
	nop			;6d0e
	rrca			;6d0f
	rrca			;6d10
	rrca			;6d11
	inc sp			;6d12
	ld c,01bh		;6d13
	rrca			;6d15
	nop			;6d16
	nop			;6d17
	nop			;6d18
	rrca			;6d19
	nop			;6d1a
	rrca			;6d1b
	rrca			;6d1c
	rrca			;6d1d
	inc sp			;6d1e
	ld c,01bh		;6d1f
	rrca			;6d21
	ld bc,00000h		;6d22
	rrca			;6d25
	nop			;6d26
	rrca			;6d27
	inc bc			;6d28
	rrca			;6d29
	inc sp			;6d2a
	rrca			;6d2b
	dec de			;6d2c
	rrca			;6d2d
	nop			;6d2e
	nop			;6d2f
	nop			;6d30
	rrca			;6d31
	nop			;6d32
	rrca			;6d33
	inc bc			;6d34
	rrca			;6d35
	ld h,e			;6d36
	inc sp			;6d37
	ld h,e			;6d38
	inc sp			;6d39
	ld (bc),a		;6d3a
	nop			;6d3b
	nop			;6d3c
	rrca			;6d3d
	nop			;6d3e
	rrca			;6d3f
	inc bc			;6d40
	rrca			;6d41
	inc sp			;6d42
	ld c,01bh		;6d43
	rrca			;6d45
	nop			;6d46
	nop			;6d47
	nop			;6d48
	rrca			;6d49
	nop			;6d4a
	rrca			;6d4b
	rrca			;6d4c
	rrca			;6d4d
	ccf			;6d4e
	ld c,027h		;6d4f
	rrca			;6d51
	ld bc,00000h		;6d52
	rrca			;6d55
	nop			;6d56
	rrca			;6d57
	ld h,c			;6d58
	nop			;6d59
	ld h,c			;6d5a
	nop			;6d5b
	ld h,c			;6d5c
	nop			;6d5d
	ld (bc),a		;6d5e
	nop			;6d5f
	nop			;6d60
	rrca			;6d61
	nop			;6d62
	rrca			;6d63
	nop			;6d64
	nop			;6d65
	nop			;6d66
	nop			;6d67
	nop			;6d68
	nop			;6d69
	inc bc			;6d6a
	nop			;6d6b
	nop			;6d6c
	rrca			;6d6d
	nop			;6d6e
	rrca			;6d6f
	nop			;6d70
	nop			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	nop			;6d76
	nop			;6d77
	nop			;6d78
	rrca			;6d79
	nop			;6d7a
	rrca			;6d7b
	dec b			;6d7c
	rrca			;6d7d
	dec (hl)		;6d7e
	ld c,01dh		;6d7f
	rrca			;6d81
	inc bc			;6d82
	nop			;6d83
	nop			;6d84
	rrca			;6d85
	nop			;6d86
	rrca			;6d87
	ld de,l670fh		;6d88
	inc bc			;6d8b
	ld h,a			;6d8c
	inc bc			;6d8d
	ld bc,00000h		;6d8e
	rrca			;6d91
	nop			;6d92
	rrca			;6d93
	ld de,0000fh		;6d94
	nop			;6d97
	nop			;6d98
	nop			;6d99
	inc bc			;6d9a
	nop			;6d9b
	nop			;6d9c
	rrca			;6d9d
	nop			;6d9e
	rrca			;6d9f
	dec b			;6da0
	rrca			;6da1
	nop			;6da2
	nop			;6da3
	nop			;6da4
	nop			;6da5
	inc bc			;6da6
	nop			;6da7
	nop			;6da8
	rrca			;6da9
	nop			;6daa
	rrca			;6dab
	dec b			;6dac
	rrca			;6dad
	nop			;6dae
	nop			;6daf
	nop			;6db0
	nop			;6db1
	inc bc			;6db2
	nop			;6db3
	nop			;6db4
	rrca			;6db5
	nop			;6db6
	rrca			;6db7
	ld h,c			;6db8
	nop			;6db9
	ld h,c			;6dba
	nop			;6dbb
	nop			;6dbc
	nop			;6dbd
	nop			;6dbe
	nop			;6dbf
	ld h,d			;6dc0
	ld (03262h),a		;6dc1
	rrca			;6dc4
	dec c			;6dc5
	ld h,d			;6dc6
	rra			;6dc7
	daa			;6dc8
	ld bc,00001h		;6dc9
	rla			;6dcc
	rrca			;6dcd
	ld d,00fh		;6dce
	rrca			;6dd0
	rrca			;6dd1
	dec de			;6dd2
	ld b,01bh		;6dd3
	ld b,000h		;6dd5
	nop			;6dd7
	ld h,e			;6dd8
	dec b			;6dd9
	ld h,e			;6dda
	inc bc			;6ddb
	rrca			;6ddc
	rrca			;6ddd
	ld l,c			;6dde
	dec b			;6ddf
	ld l,d			;6de0
	ld bc,00001h		;6de1
	nop			;6de4
	rrca			;6de5
	nop			;6de6
	rrca			;6de7
	inc bc			;6de8
	rrca			;6de9
	dec de			;6dea
	ld b,01bh		;6deb
	ld b,000h		;6ded
	nop			;6def
	nop			;6df0
	rrca			;6df1
	nop			;6df2
	rrca			;6df3
	ld h,c			;6df4
	nop			;6df5
	ld h,c			;6df6
	nop			;6df7
	ld h,c			;6df8
	nop			;6df9
	ld (bc),a		;6dfa
	nop			;6dfb
	nop			;6dfc
	rrca			;6dfd
	nop			;6dfe
	rrca			;6dff
	inc bc			;6e00
	rrca			;6e01
	nop			;6e02
	nop			;6e03
	nop			;6e04
	nop			;6e05
	ld bc,00000h		;6e06
	rrca			;6e09
	nop			;6e0a
	rrca			;6e0b
	rrca			;6e0c
	rrca			;6e0d
	dec de			;6e0e
	ld b,01bh		;6e0f
	ld b,000h		;6e11
	nop			;6e13
	nop			;6e14
	rrca			;6e15
	nop			;6e16
	rrca			;6e17
	ld h,c			;6e18
	nop			;6e19
	ld h,c			;6e1a
	nop			;6e1b
	ld h,c			;6e1c
	nop			;6e1d
	ld bc,00000h		;6e1e
	rrca			;6e21
	nop			;6e22
	rrca			;6e23
	nop			;6e24
	nop			;6e25
	nop			;6e26
	nop			;6e27
	nop			;6e28
	nop			;6e29
	inc bc			;6e2a
	nop			;6e2b
	nop			;6e2c
	rrca			;6e2d
	nop			;6e2e
	rrca			;6e2f
	nop			;6e30
	nop			;6e31
	nop			;6e32
	nop			;6e33
	nop			;6e34
	nop			;6e35
	ld bc,00000h		;6e36
	rrca			;6e39
	nop			;6e3a
	rrca			;6e3b
	nop			;6e3c
	nop			;6e3d
	nop			;6e3e
	nop			;6e3f
	nop			;6e40
	nop			;6e41
	ld bc,00000h		;6e42
	rrca			;6e45
	nop			;6e46
	rrca			;6e47
	nop			;6e48
	nop			;6e49
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	nop			;6e4e
	nop			;6e4f
	nop			;6e50
	rrca			;6e51
	nop			;6e52
	rrca			;6e53
	ld h,c			;6e54
	nop			;6e55
	nop			;6e56
	nop			;6e57
	nop			;6e58
	nop			;6e59
	ld (bc),a		;6e5a
	nop			;6e5b
	nop			;6e5c
	rrca			;6e5d
	nop			;6e5e
	rrca			;6e5f
	rrca			;6e60
	rrca			;6e61
	nop			;6e62
	nop			;6e63
	nop			;6e64
	nop			;6e65
	inc bc			;6e66
	nop			;6e67
	nop			;6e68
	rrca			;6e69
	nop			;6e6a
	rrca			;6e6b
	inc bc			;6e6c
	rrca			;6e6d
	nop			;6e6e
	nop			;6e6f
	nop			;6e70
	nop			;6e71
	nop			;6e72
	nop			;6e73
	nop			;6e74
	rrca			;6e75
	nop			;6e76
	rrca			;6e77
	inc bc			;6e78
	rrca			;6e79
	nop			;6e7a
	nop			;6e7b
	nop			;6e7c
	nop			;6e7d
	nop			;6e7e
	nop			;6e7f
	ld h,h			;6e80
	dec b			;6e81
	ld h,h			;6e82
	inc bc			;6e83
	rrca			;6e84
	rrca			;6e85
	jr nz,l6e8eh		;6e86
	jr nz,l6e90h		;6e88
	inc bc			;6e8a
	nop			;6e8b
	nop			;6e8c
	rrca			;6e8d
l6e8eh:
	nop			;6e8e
	rrca			;6e8f
l6e90h:
	rrca			;6e90
	rrca			;6e91
	dec de			;6e92
	ld b,01bh		;6e93
	ld b,000h		;6e95
	nop			;6e97
	nop			;6e98
	rrca			;6e99
	nop			;6e9a
	rrca			;6e9b
	rrca			;6e9c
	rrca			;6e9d
	ld l,h			;6e9e
	ld b,06ch		;6e9f
	ld b,001h		;6ea1
	nop			;6ea3
	nop			;6ea4
	rrca			;6ea5
	nop			;6ea6
	rrca			;6ea7
	inc bc			;6ea8
	rrca			;6ea9
	dec de			;6eaa
	ld b,01bh		;6eab
	ld b,000h		;6ead
	nop			;6eaf
	nop			;6eb0
	rrca			;6eb1
	nop			;6eb2
	rrca			;6eb3
	ld h,c			;6eb4
	nop			;6eb5
	ld h,c			;6eb6
	nop			;6eb7
	ld h,c			;6eb8
	nop			;6eb9
	ld (bc),a		;6eba
	nop			;6ebb
	nop			;6ebc
	rrca			;6ebd
	nop			;6ebe
	rrca			;6ebf
	inc bc			;6ec0
	rrca			;6ec1
	ld l,h			;6ec2
	ld b,06ch		;6ec3
	ld b,001h		;6ec5
	nop			;6ec7
	nop			;6ec8
	rrca			;6ec9
	nop			;6eca
	rrca			;6ecb
	rrca			;6ecc
	rrca			;6ecd
	dec de			;6ece
	ld b,01bh		;6ecf
	ld b,003h		;6ed1
	nop			;6ed3
	nop			;6ed4
	rrca			;6ed5
	nop			;6ed6
	rrca			;6ed7
	ld h,c			;6ed8
	nop			;6ed9
	ld h,c			;6eda
	nop			;6edb
	ld h,c			;6edc
	nop			;6edd
	nop			;6ede
	nop			;6edf
	nop			;6ee0
	rrca			;6ee1
	nop			;6ee2
	rrca			;6ee3
	nop			;6ee4
	nop			;6ee5
	nop			;6ee6
	nop			;6ee7
	nop			;6ee8
	nop			;6ee9
	inc bc			;6eea
	nop			;6eeb
	nop			;6eec
	rrca			;6eed
	nop			;6eee
	rrca			;6eef
	nop			;6ef0
	nop			;6ef1
	nop			;6ef2
	nop			;6ef3
	nop			;6ef4
	nop			;6ef5
	ld bc,00000h		;6ef6
	rrca			;6ef9
	nop			;6efa
	rrca			;6efb
	ld b,00fh		;6efc
	nop			;6efe
	nop			;6eff
	nop			;6f00
	nop			;6f01
	inc bc			;6f02
	nop			;6f03
	nop			;6f04
	rrca			;6f05
	nop			;6f06
	rrca			;6f07
	ld b,00fh		;6f08
	nop			;6f0a
	nop			;6f0b
	nop			;6f0c
	nop			;6f0d
	ld bc,00000h		;6f0e
	rrca			;6f11
	nop			;6f12
	rrca			;6f13
	ld h,c			;6f14
	nop			;6f15
	ld e,006h		;6f16
	ld e,006h		;6f18
	inc bc			;6f1a
	nop			;6f1b
	nop			;6f1c
	rrca			;6f1d
	nop			;6f1e
	rrca			;6f1f
	ld b,00fh		;6f20
	ld e,006h		;6f22
	ld e,006h		;6f24
	nop			;6f26
	nop			;6f27
	nop			;6f28
	rrca			;6f29
	nop			;6f2a
	rrca			;6f2b
	ld b,00fh		;6f2c
	ld (02206h),hl		;6f2e
	ld b,003h		;6f31
	nop			;6f33
	nop			;6f34
	rrca			;6f35
	nop			;6f36
	rrca			;6f37
	ld b,00fh		;6f38
	ld (02206h),hl		;6f3a
	ld b,002h		;6f3d
	nop			;6f3f
	ld h,e			;6f40
	dec b			;6f41
	ld h,e			;6f42
	ld b,014h		;6f43
	rrca			;6f45
	jr nz,l6f4eh		;6f46
	jr nz,l6f50h		;6f48
	ld bc,00000h		;6f4a
	rrca			;6f4d
l6f4eh:
	nop			;6f4e
	rrca			;6f4f
l6f50h:
	ld h,c			;6f50
	nop			;6f51
	ld h,c			;6f52
	nop			;6f53
	ld h,c			;6f54
	nop			;6f55
	nop			;6f56
	nop			;6f57
	nop			;6f58
	rrca			;6f59
	nop			;6f5a
	rrca			;6f5b
	inc d			;6f5c
	rrca			;6f5d
	jr nz,l6f66h		;6f5e
	jr nz,l6f68h		;6f60
	ld bc,00000h		;6f62
	rrca			;6f65
l6f66h:
	nop			;6f66
	rrca			;6f67
l6f68h:
	ex af,af'		;6f68
	rrca			;6f69
	jr nz,l6f72h		;6f6a
	jr nz,l6f74h		;6f6c
	nop			;6f6e
	nop			;6f6f
	nop			;6f70
	rrca			;6f71
l6f72h:
	nop			;6f72
	rrca			;6f73
l6f74h:
	ex af,af'		;6f74
	rrca			;6f75
	ld h,c			;6f76
	nop			;6f77
	ld h,c			;6f78
	nop			;6f79
	ld (bc),a		;6f7a
	nop			;6f7b
	nop			;6f7c
	rrca			;6f7d
	nop			;6f7e
	rrca			;6f7f
	ex af,af'		;6f80
	rrca			;6f81
	jr nz,l6f8ah		;6f82
	jr nz,l6f8ch		;6f84
	nop			;6f86
	nop			;6f87
	nop			;6f88
	rrca			;6f89
l6f8ah:
	nop			;6f8a
	rrca			;6f8b
l6f8ch:
	inc d			;6f8c
	rrca			;6f8d
	jr nz,l6f96h		;6f8e
	jr nz,l6f98h		;6f90
	nop			;6f92
	nop			;6f93
	nop			;6f94
	rrca			;6f95
l6f96h:
	nop			;6f96
	rrca			;6f97
l6f98h:
	ld h,c			;6f98
	nop			;6f99
	ld h,c			;6f9a
	nop			;6f9b
	ld h,c			;6f9c
	nop			;6f9d
	nop			;6f9e
	nop			;6f9f
	nop			;6fa0
	rrca			;6fa1
	nop			;6fa2
	rrca			;6fa3
	inc d			;6fa4
	rrca			;6fa5
	nop			;6fa6
	nop			;6fa7
	nop			;6fa8
	nop			;6fa9
	inc bc			;6faa
	nop			;6fab
	nop			;6fac
	rrca			;6fad
	nop			;6fae
	rrca			;6faf
	ld h,c			;6fb0
	nop			;6fb1
	nop			;6fb2
	nop			;6fb3
	nop			;6fb4
	nop			;6fb5
	ld bc,00000h		;6fb6
	rrca			;6fb9
	nop			;6fba
	rrca			;6fbb
	nop			;6fbc
	nop			;6fbd
	nop			;6fbe
	nop			;6fbf
	nop			;6fc0
	nop			;6fc1
	ld bc,00000h		;6fc2
	rrca			;6fc5
	nop			;6fc6
	rrca			;6fc7
	nop			;6fc8
	nop			;6fc9
	nop			;6fca
	nop			;6fcb
	nop			;6fcc
	nop			;6fcd
	nop			;6fce
	nop			;6fcf
	nop			;6fd0
	rrca			;6fd1
	nop			;6fd2
	rrca			;6fd3
	nop			;6fd4
	nop			;6fd5
	nop			;6fd6
	nop			;6fd7
	nop			;6fd8
	nop			;6fd9
	ld bc,00000h		;6fda
	rrca			;6fdd
	nop			;6fde
	rrca			;6fdf
	inc d			;6fe0
	rrca			;6fe1
	nop			;6fe2
	nop			;6fe3
	nop			;6fe4
	nop			;6fe5
	nop			;6fe6
	nop			;6fe7
	nop			;6fe8
	rrca			;6fe9
	nop			;6fea
	rrca			;6feb
	ex af,af'		;6fec
	rrca			;6fed
	jr nz,l6ff6h		;6fee
	jr nz,l6ff8h		;6ff0
	ld (bc),a		;6ff2
	nop			;6ff3
	nop			;6ff4
	rrca			;6ff5
l6ff6h:
	nop			;6ff6
	rrca			;6ff7
l6ff8h:
	ex af,af'		;6ff8
	rrca			;6ff9
	jr nz,l7002h		;6ffa
	jr nz,$+8		;6ffc
	nop			;6ffe
	nop			;6fff
	ld h,h			;7000
	dec b			;7001
l7002h:
	ld h,h			;7002
	ld b,014h		;7003
	rrca			;7005
	ld (02206h),hl		;7006
	ld b,003h		;7009
	nop			;700b
	nop			;700c
	rrca			;700d
	nop			;700e
	rrca			;700f
	inc d			;7010
	rrca			;7011
	ld h,c			;7012
	nop			;7013
	ld h,c			;7014
	nop			;7015
	nop			;7016
	nop			;7017
	nop			;7018
	rrca			;7019
	nop			;701a
	rrca			;701b
	inc d			;701c
	rrca			;701d
	ld (02206h),hl		;701e
	ld b,001h		;7021
	nop			;7023
	nop			;7024
	rrca			;7025
	nop			;7026
	rrca			;7027
	ld h,c			;7028
	nop			;7029
	jr nz,l7032h		;702a
	jr nz,l7034h		;702c
	nop			;702e
	nop			;702f
	nop			;7030
	rrca			;7031
l7032h:
	nop			;7032
	rrca			;7033
l7034h:
	nop			;7034
	nop			;7035
	jr nz,l703fh		;7036
	ld d,007h		;7038
	ld (bc),a		;703a
	nop			;703b
	nop			;703c
	rrca			;703d
	nop			;703e
l703fh:
	rrca			;703f
	nop			;7040
	nop			;7041
	jr nz,l704bh		;7042
	ld h,c			;7044
	nop			;7045
	nop			;7046
	nop			;7047
	nop			;7048
	rrca			;7049
	nop			;704a
l704bh:
	rrca			;704b
	nop			;704c
	nop			;704d
	ld e,007h		;704e
	ld hl,(00101h)		;7050
	nop			;7053
	nop			;7054
	rrca			;7055
	nop			;7056
	rrca			;7057
	nop			;7058
	nop			;7059
	ld l,b			;705a
	dec b			;705b
	ld h,c			;705c
	nop			;705d
	ld (bc),a		;705e
	nop			;705f
	nop			;7060
	rrca			;7061
	nop			;7062
	rrca			;7063
	inc d			;7064
	rrca			;7065
	jr nz,l706fh		;7066
	inc l			;7068
	ld bc,00000h		;7069
	nop			;706c
	rrca			;706d
	nop			;706e
l706fh:
	rrca			;706f
	inc d			;7070
	rrca			;7071
	ld h,a			;7072
	ld bc,00000h		;7073
	nop			;7076
	nop			;7077
	nop			;7078
	rrca			;7079
	nop			;707a
	rrca			;707b
	ld a,(bc)		;707c
	rrca			;707d
	ld l,h			;707e
	ld bc,00729h		;707f
	nop			;7082
	nop			;7083
	nop			;7084
	rrca			;7085
	nop			;7086
	rrca			;7087
	ld a,(bc)		;7088
	rrca			;7089
	ld h,a			;708a
	ld (bc),a		;708b
	ld h,a			;708c
	inc b			;708d
	nop			;708e
	nop			;708f
	nop			;7090
	rrca			;7091
	nop			;7092
	rrca			;7093
	ld a,(bc)		;7094
	rrca			;7095
	ld h,a			;7096
	inc b			;7097
	nop			;7098
	nop			;7099
	nop			;709a
	nop			;709b
	nop			;709c
	rrca			;709d
	nop			;709e
	rrca			;709f
	ld h,c			;70a0
	nop			;70a1
	ld h,c			;70a2
	nop			;70a3
	nop			;70a4
	nop			;70a5
	ld bc,00000h		;70a6
	rrca			;70a9
	nop			;70aa
	rrca			;70ab
	nop			;70ac
	nop			;70ad
	nop			;70ae
	nop			;70af
	ld d,007h		;70b0
	ld (bc),a		;70b2
	nop			;70b3
	nop			;70b4
	rrca			;70b5
	ld h,e			;70b6
	ld b,000h		;70b7
	nop			;70b9
	nop			;70ba
	nop			;70bb
	ld h,c			;70bc
	nop			;70bd
	nop			;70be
	nop			;70bf
	ld h,d			;70c0
	ld (03262h),a		;70c1
	rrca			;70c4
	rrca			;70c5
	ld h,d			;70c6
	rra			;70c7
	nop			;70c8
	nop			;70c9
	ld (bc),a		;70ca
	nop			;70cb
	rla			;70cc
	rrca			;70cd
	ld d,00fh		;70ce
	rrca			;70d0
	rrca			;70d1
	dec de			;70d2
	rlca			;70d3
	ld d,007h		;70d4
	ld bc,06300h		;70d6
	dec b			;70d9
	ld h,e			;70da
	inc bc			;70db
	rrca			;70dc
	rrca			;70dd
	ld h,c			;70de
	nop			;70df
	add hl,hl		;70e0
	ld bc,00000h		;70e1
	nop			;70e4
	rrca			;70e5
	nop			;70e6
	rrca			;70e7
	inc bc			;70e8
	rrca			;70e9
	dec de			;70ea
	rlca			;70eb
	nop			;70ec
	nop			;70ed
	ld bc,00000h		;70ee
	rrca			;70f1
	nop			;70f2
	rrca			;70f3
	ld h,c			;70f4
	nop			;70f5
	ld h,c			;70f6
	nop			;70f7
	ld hl,(00201h)		;70f8
	nop			;70fb
	nop			;70fc
	rrca			;70fd
	nop			;70fe
	rrca			;70ff
	inc bc			;7100
	rrca			;7101
	nop			;7102
	nop			;7103
	nop			;7104
	nop			;7105
	ld bc,00000h		;7106
	rrca			;7109
	nop			;710a
	rrca			;710b
	rrca			;710c
	rrca			;710d
	dec de			;710e
	rlca			;710f
	ld l,001h		;7110
	nop			;7112
	nop			;7113
	nop			;7114
	rrca			;7115
	nop			;7116
	rrca			;7117
	ld h,c			;7118
	nop			;7119
	ld h,c			;711a
	nop			;711b
	ld h,c			;711c
	nop			;711d
	nop			;711e
	nop			;711f
	nop			;7120
	rrca			;7121
	nop			;7122
	rrca			;7123
	nop			;7124
	nop			;7125
	nop			;7126
	nop			;7127
	nop			;7128
	nop			;7129
	ld bc,00000h		;712a
	rrca			;712d
	nop			;712e
	rrca			;712f
	nop			;7130
	nop			;7131
	nop			;7132
	nop			;7133
	nop			;7134
	nop			;7135
	nop			;7136
	nop			;7137
	nop			;7138
	rrca			;7139
	nop			;713a
	rrca			;713b
	nop			;713c
	nop			;713d
	nop			;713e
	nop			;713f
	nop			;7140
	nop			;7141
	nop			;7142
	nop			;7143
	nop			;7144
	rrca			;7145
	nop			;7146
	rrca			;7147
	nop			;7148
	nop			;7149
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	nop			;714e
	nop			;714f
	nop			;7150
	rrca			;7151
	nop			;7152
	rrca			;7153
	ld h,c			;7154
	nop			;7155
	nop			;7156
	nop			;7157
	nop			;7158
	nop			;7159
	ld bc,00000h		;715a
	rrca			;715d
	nop			;715e
	rrca			;715f
	rrca			;7160
	rrca			;7161
	nop			;7162
	nop			;7163
	nop			;7164
	nop			;7165
	inc bc			;7166
	nop			;7167
	nop			;7168
	rrca			;7169
	nop			;716a
	rrca			;716b
	inc bc			;716c
	rrca			;716d
	nop			;716e
	nop			;716f
	nop			;7170
	nop			;7171
	nop			;7172
	nop			;7173
	nop			;7174
	rrca			;7175
	nop			;7176
	rrca			;7177
	inc bc			;7178
	rrca			;7179
	nop			;717a
	nop			;717b
	nop			;717c
	nop			;717d
	nop			;717e
	nop			;717f
	ld h,h			;7180
	dec b			;7181
	ld h,h			;7182
	inc bc			;7183
	rrca			;7184
	rrca			;7185
	jr nz,l718fh		;7186
	nop			;7188
	nop			;7189
	ld (bc),a		;718a
	nop			;718b
	nop			;718c
	rrca			;718d
	nop			;718e
l718fh:
	rrca			;718f
	rrca			;7190
	rrca			;7191
	dec de			;7192
	rlca			;7193
	ld d,007h		;7194
	ld bc,00000h		;7196
	rrca			;7199
	nop			;719a
	rrca			;719b
	rrca			;719c
	rrca			;719d
	ld l,h			;719e
	ld b,061h		;719f
	nop			;71a1
	nop			;71a2
	nop			;71a3
	nop			;71a4
	rrca			;71a5
	nop			;71a6
	rrca			;71a7
	inc bc			;71a8
	rrca			;71a9
	dec de			;71aa
	rlca			;71ab
	nop			;71ac
	nop			;71ad
	ld bc,00000h		;71ae
	rrca			;71b1
	nop			;71b2
	rrca			;71b3
	ld h,c			;71b4
	nop			;71b5
	ld h,c			;71b6
	nop			;71b7
	ld e,007h		;71b8
	ld (bc),a		;71ba
	nop			;71bb
	nop			;71bc
	rrca			;71bd
	nop			;71be
	rrca			;71bf
	inc bc			;71c0
	rrca			;71c1
	ld l,h			;71c2
	ld b,061h		;71c3
	nop			;71c5
	ld bc,00000h		;71c6
	rrca			;71c9
	nop			;71ca
	rrca			;71cb
	rrca			;71cc
	rrca			;71cd
	dec de			;71ce
	rlca			;71cf
	ld (00007h),hl		;71d0
	nop			;71d3
	nop			;71d4
	rrca			;71d5
	nop			;71d6
	rrca			;71d7
	ld h,c			;71d8
	nop			;71d9
	ld h,c			;71da
	nop			;71db
	ld h,c			;71dc
	nop			;71dd
	nop			;71de
	nop			;71df
	nop			;71e0
	rrca			;71e1
	nop			;71e2
	rrca			;71e3
	nop			;71e4
	nop			;71e5
	nop			;71e6
	nop			;71e7
	nop			;71e8
	nop			;71e9
	ld bc,00000h		;71ea
	rrca			;71ed
	nop			;71ee
	rrca			;71ef
	nop			;71f0
	nop			;71f1
	nop			;71f2
	nop			;71f3
	nop			;71f4
	nop			;71f5
	nop			;71f6
	nop			;71f7
	nop			;71f8
	rrca			;71f9
	nop			;71fa
	rrca			;71fb
	ld b,00fh		;71fc
	nop			;71fe
	nop			;71ff
	nop			;7200
	nop			;7201
	nop			;7202
	nop			;7203
	nop			;7204
	rrca			;7205
	nop			;7206
	rrca			;7207
	ld b,00fh		;7208
	nop			;720a
	nop			;720b
	nop			;720c
	nop			;720d
	nop			;720e
	nop			;720f
	nop			;7210
	rrca			;7211
	nop			;7212
	rrca			;7213
	ld h,c			;7214
	nop			;7215
	ld e,007h		;7216
	nop			;7218
	nop			;7219
	ld bc,00000h		;721a
	rrca			;721d
	nop			;721e
	rrca			;721f
	ld b,00fh		;7220
	ld e,007h		;7222
	nop			;7224
	nop			;7225
	inc bc			;7226
	nop			;7227
	nop			;7228
	rrca			;7229
	nop			;722a
	rrca			;722b
	ld b,00fh		;722c
	ld (00007h),hl		;722e
	nop			;7231
	nop			;7232
	nop			;7233
	nop			;7234
	rrca			;7235
	nop			;7236
	rrca			;7237
	ld b,00fh		;7238
	ld (00007h),hl		;723a
	nop			;723d
	nop			;723e
	nop			;723f
	ld h,e			;7240
	dec b			;7241
	ld h,e			;7242
	ld b,011h		;7243
	dec c			;7245
	dec e			;7246
	rlca			;7247
	ld de,0010bh		;7248
	nop			;724b
	nop			;724c
	rrca			;724d
	nop			;724e
	rrca			;724f
	ld de,01d0dh		;7250
	rlca			;7253
	dec e			;7254
	dec bc			;7255
	nop			;7256
	nop			;7257
	nop			;7258
	rrca			;7259
	nop			;725a
	rrca			;725b
	ld de,l610dh		;725c
	nop			;725f
	ld h,c			;7260
	nop			;7261
	inc bc			;7262
	nop			;7263
	nop			;7264
	rrca			;7265
	nop			;7266
	rrca			;7267
	dec b			;7268
	dec c			;7269
	dec e			;726a
	rlca			;726b
	ld de,0030bh		;726c
	nop			;726f
	nop			;7270
	rrca			;7271
	nop			;7272
	rrca			;7273
	dec b			;7274
	dec c			;7275
	dec e			;7276
	rlca			;7277
	dec b			;7278
	dec bc			;7279
	inc bc			;727a
	nop			;727b
	nop			;727c
	rrca			;727d
	nop			;727e
	rrca			;727f
	ld h,c			;7280
	nop			;7281
	dec e			;7282
	rlca			;7283
	ld de,0000bh		;7284
	nop			;7287
	nop			;7288
	rrca			;7289
	nop			;728a
	rrca			;728b
	nop			;728c
	nop			;728d
	ld h,c			;728e
	nop			;728f
	ld h,c			;7290
	nop			;7291
	inc bc			;7292
	nop			;7293
	nop			;7294
	rrca			;7295
	nop			;7296
	rrca			;7297
	nop			;7298
	nop			;7299
	nop			;729a
	nop			;729b
	nop			;729c
	nop			;729d
	ld bc,00000h		;729e
	rrca			;72a1
	nop			;72a2
	rrca			;72a3
	nop			;72a4
	nop			;72a5
	nop			;72a6
	nop			;72a7
	nop			;72a8
	nop			;72a9
	ld (bc),a		;72aa
	nop			;72ab
	nop			;72ac
	rrca			;72ad
	nop			;72ae
	rrca			;72af
	nop			;72b0
	nop			;72b1
	nop			;72b2
	nop			;72b3
	nop			;72b4
	nop			;72b5
	nop			;72b6
	nop			;72b7
	nop			;72b8
	rrca			;72b9
	nop			;72ba
	rrca			;72bb
	dec b			;72bc
	rrca			;72bd
	dec e			;72be
	rlca			;72bf
	inc h			;72c0
	add hl,bc		;72c1
	nop			;72c2
	nop			;72c3
	nop			;72c4
	rrca			;72c5
	nop			;72c6
	rrca			;72c7
	dec b			;72c8
	rrca			;72c9
	dec e			;72ca
	rlca			;72cb
	jr l72d7h		;72cc
	nop			;72ce
	nop			;72cf
	nop			;72d0
	rrca			;72d1
	nop			;72d2
	rrca			;72d3
	ld de,l610fh		;72d4
l72d7h:
	nop			;72d7
	ld h,c			;72d8
	nop			;72d9
	ld bc,00000h		;72da
	rrca			;72dd
	nop			;72de
	rrca			;72df
	ld de,01d0fh		;72e0
	rlca			;72e3
	inc h			;72e4
	add hl,bc		;72e5
	nop			;72e6
	nop			;72e7
	nop			;72e8
	rrca			;72e9
	nop			;72ea
	rrca			;72eb
	dec b			;72ec
	rrca			;72ed
	dec e			;72ee
	rlca			;72ef
	jr l72fbh		;72f0
	nop			;72f2
	nop			;72f3
	nop			;72f4
	rrca			;72f5
	nop			;72f6
	rrca			;72f7
	dec b			;72f8
	rrca			;72f9
	ld h,c			;72fa
l72fbh:
	nop			;72fb
	ld h,c			;72fc
	nop			;72fd
	nop			;72fe
	nop			;72ff
	ld h,h			;7300
	dec b			;7301
	ld h,h			;7302
	ld b,006h		;7303
	rrca			;7305
	ld e,007h		;7306
	ld (de),a		;7308
	inc c			;7309
	inc bc			;730a
	nop			;730b
	nop			;730c
	rrca			;730d
	nop			;730e
	rrca			;730f
	ld (de),a		;7310
	rrca			;7311
	ld e,007h		;7312
	ld e,00ch		;7314
	nop			;7316
	nop			;7317
	nop			;7318
	rrca			;7319
	nop			;731a
	rrca			;731b
	ld (de),a		;731c
	rrca			;731d
	ld h,c			;731e
	nop			;731f
	ld h,c			;7320
	nop			;7321
	ld bc,00000h		;7322
	rrca			;7325
	nop			;7326
	rrca			;7327
	ld b,00fh		;7328
	ld e,007h		;732a
	ld (de),a		;732c
	inc c			;732d
	nop			;732e
	nop			;732f
	nop			;7330
	rrca			;7331
	nop			;7332
	rrca			;7333
	ld b,00fh		;7334
	ld e,007h		;7336
	ld (de),a		;7338
	inc c			;7339
	ld (bc),a		;733a
	nop			;733b
	nop			;733c
	rrca			;733d
	nop			;733e
	rrca			;733f
	ld b,00fh		;7340
	ld h,c			;7342
	nop			;7343
	ld h,c			;7344
	nop			;7345
	nop			;7346
	nop			;7347
	nop			;7348
	rrca			;7349
	nop			;734a
	rrca			;734b
	ld (de),a		;734c
	rrca			;734d
	nop			;734e
	nop			;734f
	nop			;7350
	nop			;7351
	ld bc,00000h		;7352
	rrca			;7355
	nop			;7356
	rrca			;7357
	ld h,c			;7358
	nop			;7359
	nop			;735a
	nop			;735b
	nop			;735c
	nop			;735d
	nop			;735e
	nop			;735f
	nop			;7360
	rrca			;7361
	nop			;7362
	rrca			;7363
	nop			;7364
	nop			;7365
	nop			;7366
	nop			;7367
	ld l,d			;7368
	nop			;7369
	ld (bc),a		;736a
	nop			;736b
	nop			;736c
	rrca			;736d
	nop			;736e
	rrca			;736f
	nop			;7370
	nop			;7371
	nop			;7372
	nop			;7373
	nop			;7374
	nop			;7375
	nop			;7376
	nop			;7377
	nop			;7378
	rrca			;7379
	nop			;737a
	rrca			;737b
	nop			;737c
	nop			;737d
	jr nz,l7387h		;737e
	nop			;7380
	nop			;7381
	ld (bc),a		;7382
	nop			;7383
	nop			;7384
	rrca			;7385
	nop			;7386
l7387h:
	rrca			;7387
	inc d			;7388
	rrca			;7389
	jr nz,l7393h		;738a
	inc d			;738c
	inc c			;738d
	ld (bc),a		;738e
	nop			;738f
	nop			;7390
	rrca			;7391
	nop			;7392
l7393h:
	rrca			;7393
	ex af,af'		;7394
	rrca			;7395
	ld h,c			;7396
	nop			;7397
	ex af,af'		;7398
	inc c			;7399
	ld bc,00000h		;739a
	rrca			;739d
	nop			;739e
	rrca			;739f
	ex af,af'		;73a0
	rrca			;73a1
	jr nz,l73abh		;73a2
	ex af,af'		;73a4
	inc c			;73a5
	nop			;73a6
	nop			;73a7
	nop			;73a8
	rrca			;73a9
	nop			;73aa
l73abh:
	rrca			;73ab
	ex af,af'		;73ac
	rrca			;73ad
	jr nz,l73b7h		;73ae
	ex af,af'		;73b0
	inc c			;73b1
	ld (bc),a		;73b2
	nop			;73b3
	nop			;73b4
	rrca			;73b5
	ld h,e			;73b6
l73b7h:
	ld b,008h		;73b7
	rrca			;73b9
	ld l,d			;73ba
	ld bc,00169h		;73bb
	nop			;73be
	nop			;73bf
	nop			;73c0
	nop			;73c1
	inc sp			;73c2
	add hl,bc		;73c3
	rrca			;73c4
	dec c			;73c5
	daa			;73c6
	rlca			;73c7
	daa			;73c8
	rlca			;73c9
	inc bc			;73ca
	nop			;73cb
	dec de			;73cc
	rrca			;73cd
	inc sp			;73ce
	add hl,bc		;73cf
	rrca			;73d0
	rrca			;73d1
	ld h,c			;73d2
	nop			;73d3
	ld h,c			;73d4
	nop			;73d5
	nop			;73d6
	nop			;73d7
	ld l,d			;73d8
	dec b			;73d9
	inc sp			;73da
	add hl,bc		;73db
	rrca			;73dc
	rrca			;73dd
	add hl,hl		;73de
	rlca			;73df
	add hl,hl		;73e0
	rlca			;73e1
	nop			;73e2
	nop			;73e3
	dec de			;73e4
	rrca			;73e5
	daa			;73e6
	add hl,bc		;73e7
	inc bc			;73e8
	rrca			;73e9
	ld h,c			;73ea
	nop			;73eb
	ld h,c			;73ec
	nop			;73ed
	nop			;73ee
	nop			;73ef
	ld h,c			;73f0
	nop			;73f1
	ld h,c			;73f2
	nop			;73f3
	ld h,c			;73f4
	nop			;73f5
	ld hl,(02a07h)		;73f6
	rlca			;73f9
	ld bc,00000h		;73fa
	nop			;73fd
	daa			;73fe
	add hl,bc		;73ff
	inc bc			;7400
	rrca			;7401
	ld h,c			;7402
	nop			;7403
	ld h,c			;7404
	nop			;7405
	nop			;7406
	nop			;7407
	dec de			;7408
	rrca			;7409
	inc sp			;740a
	add hl,bc		;740b
	rrca			;740c
	rrca			;740d
	ld l,007h		;740e
	ld l,007h		;7410
	nop			;7412
	nop			;7413
	ld h,c			;7414
	nop			;7415
	ld h,c			;7416
	nop			;7417
	ld h,c			;7418
	nop			;7419
	ld h,c			;741a
	nop			;741b
	ld l,c			;741c
	nop			;741d
	ld bc,00000h		;741e
	nop			;7421
	nop			;7422
	nop			;7423
	nop			;7424
	nop			;7425
	ld l,c			;7426
	ld bc,0016bh		;7427
	ld (bc),a		;742a
	nop			;742b
	nop			;742c
	nop			;742d
	nop			;742e
	nop			;742f
	nop			;7430
	nop			;7431
	ld l,d			;7432
	nop			;7433
	ld h,a			;7434
	ld bc,00000h		;7435
	nop			;7438
	nop			;7439
	nop			;743a
	nop			;743b
	nop			;743c
	nop			;743d
	ld (l6800h),hl		;743e
	ld bc,00000h		;7441
	nop			;7444
	nop			;7445
	nop			;7446
	nop			;7447
	nop			;7448
	nop			;7449
	ld l,e			;744a
	ld bc,00167h		;744b
	nop			;744e
	nop			;744f
	nop			;7450
	nop			;7451
	ld h,c			;7452
	nop			;7453
	ld h,c			;7454
	nop			;7455
	nop			;7456
	nop			;7457
	ld h,h			;7458
	jr nc,l745ch		;7459
	nop			;745b
l745ch:
	nop			;745c
	nop			;745d
	inc sp			;745e
	add hl,bc		;745f
	rrca			;7460
	rrca			;7461
	ld l,e			;7462
	ld bc,0016bh		;7463
	inc bc			;7466
	nop			;7467
	nop			;7468
	nop			;7469
	daa			;746a
	add hl,bc		;746b
	inc bc			;746c
	rrca			;746d
	ld h,h			;746e
	jr nc,$+99		;746f
	nop			;7471
	nop			;7472
	nop			;7473
	nop			;7474
	nop			;7475
	daa			;7476
	add hl,bc		;7477
	inc bc			;7478
	rrca			;7479
	nop			;747a
	nop			;747b
	nop			;747c
	nop			;747d
	nop			;747e
	nop			;747f
	jr nz,l7491h		;7480
	inc sp			;7482
	add hl,bc		;7483
	rrca			;7484
	rrca			;7485
	jr nz,l748fh		;7486
	nop			;7488
	nop			;7489
	inc bc			;748a
	nop			;748b
	dec de			;748c
	rrca			;748d
	inc sp			;748e
l748fh:
	add hl,bc		;748f
	rrca			;7490
l7491h:
	rrca			;7491
	dec de			;7492
	rlca			;7493
	nop			;7494
	nop			;7495
	nop			;7496
	nop			;7497
	ld l,h			;7498
	ld b,033h		;7499
	add hl,bc		;749b
	rrca			;749c
	rrca			;749d
	ld l,h			;749e
	ld b,000h		;749f
	nop			;74a1
	nop			;74a2
	nop			;74a3
	dec de			;74a4
	rrca			;74a5
	daa			;74a6
	add hl,bc		;74a7
	inc bc			;74a8
	rrca			;74a9
	dec de			;74aa
	rlca			;74ab
	nop			;74ac
	nop			;74ad
	nop			;74ae
	nop			;74af
	ld h,c			;74b0
	nop			;74b1
	ld h,c			;74b2
	nop			;74b3
	ld h,c			;74b4
	nop			;74b5
	ld h,c			;74b6
	nop			;74b7
	nop			;74b8
	nop			;74b9
	ld bc,l6c00h		;74ba
	ld b,027h		;74bd
	add hl,bc		;74bf
	inc bc			;74c0
	rrca			;74c1
	ld l,h			;74c2
	ld b,000h		;74c3
	nop			;74c5
	nop			;74c6
	nop			;74c7
	dec de			;74c8
	rrca			;74c9
	inc sp			;74ca
	add hl,bc		;74cb
	rrca			;74cc
	rrca			;74cd
	dec de			;74ce
	rlca			;74cf
	ld l,h			;74d0
	ld bc,00003h		;74d1
	ld h,c			;74d4
	nop			;74d5
	ld h,c			;74d6
	nop			;74d7
	ld h,c			;74d8
	nop			;74d9
	ld h,c			;74da
	nop			;74db
	nop			;74dc
	nop			;74dd
	ld bc,00000h		;74de
	nop			;74e1
	nop			;74e2
	nop			;74e3
	nop			;74e4
	nop			;74e5
	nop			;74e6
	nop			;74e7
	nop			;74e8
	nop			;74e9
	ld (bc),a		;74ea
	nop			;74eb
	nop			;74ec
	nop			;74ed
	nop			;74ee
	nop			;74ef
	nop			;74f0
	nop			;74f1
	nop			;74f2
	nop			;74f3
	nop			;74f4
	nop			;74f5
	nop			;74f6
	nop			;74f7
	nop			;74f8
	nop			;74f9
	ld hl,(00609h)		;74fa
	rrca			;74fd
	nop			;74fe
	nop			;74ff
	ld l,h			;7500
	ld bc,00000h		;7501
	nop			;7504
	nop			;7505
	ld hl,(00609h)		;7506
	rrca			;7509
	nop			;750a
	nop			;750b
	nop			;750c
	nop			;750d
	nop			;750e
	nop			;750f
	ld e,00fh		;7510
	ld h,c			;7512
	nop			;7513
	ld h,c			;7514
	nop			;7515
	ld e,007h		;7516
	nop			;7518
	nop			;7519
	ld bc,01e00h		;751a
	rrca			;751d
	ld hl,(00609h)		;751e
	rrca			;7521
	ld e,007h		;7522
	nop			;7524
	nop			;7525
	inc bc			;7526
	nop			;7527
	ld (02a0fh),hl		;7528
	add hl,bc		;752b
	ld b,00fh		;752c
	ld (l6c07h),hl		;752e
	ld bc,00000h		;7531
	ld (02a0fh),hl		;7534
	add hl,bc		;7537
	ld b,00fh		;7538
	ld (00007h),hl		;753a
	nop			;753d
	nop			;753e
	nop			;753f
	jr nz,l7551h		;7540
	jr c,l754dh		;7542
	inc d			;7544
	rrca			;7545
	jr nz,l754fh		;7546
	ld h,c			;7548
	nop			;7549
	ld bc,l6100h		;754a
l754dh:
	nop			;754d
	ld h,c			;754e
l754fh:
	nop			;754f
	ld h,c			;7550
l7551h:
	nop			;7551
	ld h,c			;7552
	nop			;7553
	nop			;7554
	nop			;7555
	nop			;7556
	nop			;7557
	jr nz,l7569h		;7558
	jr c,l7565h		;755a
	inc d			;755c
	rrca			;755d
	jr nz,l7567h		;755e
	add hl,hl		;7560
	ex af,af'		;7561
	ld bc,02000h		;7562
l7565h:
	rrca			;7565
	inc l			;7566
l7567h:
	add hl,bc		;7567
	ex af,af'		;7568
l7569h:
	rrca			;7569
	jr nz,l7573h		;756a
	ld h,c			;756c
	nop			;756d
	nop			;756e
	nop			;756f
	ld h,c			;7570
	nop			;7571
	inc l			;7572
l7573h:
	add hl,bc		;7573
	ex af,af'		;7574
	rrca			;7575
	ld l,d			;7576
	ld (bc),a		;7577
	ld l,00ah		;7578
	nop			;757a
	nop			;757b
	jr nz,l758dh		;757c
	inc l			;757e
	add hl,bc		;757f
	ex af,af'		;7580
	rrca			;7581
	ld l,006h		;7582
	ld l,007h		;7584
	nop			;7586
	nop			;7587
	jr nz,l7599h		;7588
	jr c,l7595h		;758a
	inc d			;758c
l758dh:
	rrca			;758d
	inc l			;758e
	ld b,02ch		;758f
	rlca			;7591
	inc bc			;7592
	nop			;7593
	ld h,c			;7594
l7595h:
	nop			;7595
	ld h,c			;7596
	nop			;7597
	ld h,c			;7598
l7599h:
	nop			;7599
	ld hl,(02a06h)		;759a
	rlca			;759d
	ld bc,00000h		;759e
	nop			;75a1
	jr c,l75adh		;75a2
	inc d			;75a4
	rrca			;75a5
	inc l			;75a6
	ld b,02ch		;75a7
	rlca			;75a9
	ld (bc),a		;75aa
	nop			;75ab
	nop			;75ac
l75adh:
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
	nop			;75b8
	nop			;75b9
	nop			;75ba
	nop			;75bb
	nop			;75bc
	nop			;75bd
	ld h,a			;75be
	ld bc,00167h		;75bf
	nop			;75c2
	nop			;75c3
	nop			;75c4
	nop			;75c5
	nop			;75c6
	nop			;75c7
	nop			;75c8
	nop			;75c9
	nop			;75ca
	nop			;75cb
	nop			;75cc
	nop			;75cd
	nop			;75ce
	nop			;75cf
	nop			;75d0
	nop			;75d1
	nop			;75d2
	nop			;75d3
	nop			;75d4
	nop			;75d5
	nop			;75d6
	nop			;75d7
	ld h,h			;75d8
	jr nz,l75dch		;75d9
	nop			;75db
l75dch:
	nop			;75dc
	nop			;75dd
	jr c,$+11		;75de
	inc d			;75e0
	rrca			;75e1
	ld l,c			;75e2
	nop			;75e3
	nop			;75e4
	nop			;75e5
	nop			;75e6
	nop			;75e7
	jr nz,l75f9h		;75e8
	inc l			;75ea
	add hl,bc		;75eb
	ex af,af'		;75ec
	rrca			;75ed
	jr nz,l75f7h		;75ee
	ld hl,(00008h)		;75f0
	nop			;75f3
	jr nz,l7605h		;75f4
	inc l			;75f6
l75f7h:
	add hl,bc		;75f7
	ex af,af'		;75f8
l75f9h:
	rrca			;75f9
	jr nz,l7603h		;75fa
	add hl,hl		;75fc
	ex af,af'		;75fd
	nop			;75fe
	nop			;75ff
	ld (0380fh),hl		;7600
l7603h:
	add hl,bc		;7603
	inc d			;7604
l7605h:
	rrca			;7605
	ld (02c07h),hl		;7606
	rlca			;7609
	inc bc			;760a
	nop			;760b
	ld h,c			;760c
	nop			;760d
	jr c,$+11		;760e
	inc d			;7610
	rrca			;7611
	ld h,c			;7612
	nop			;7613
	ld h,c			;7614
	nop			;7615
	nop			;7616
	nop			;7617
	ld (0380fh),hl		;7618
	add hl,bc		;761b
	inc d			;761c
	rrca			;761d
	ld (02c07h),hl		;761e
	rlca			;7621
	ld bc,02000h		;7622
	rrca			;7625
	ld h,c			;7626
	nop			;7627
	ld h,c			;7628
	nop			;7629
	jr nz,l7633h		;762a
	inc l			;762c
	inc b			;762d
	nop			;762e
	nop			;762f
	jr nz,l7641h		;7630
	nop			;7632
l7633h:
	nop			;7633
	nop			;7634
	nop			;7635
	jr nz,l763fh		;7636
	inc l			;7638
	inc b			;7639
	ld (bc),a		;763a
	nop			;763b
	jr nz,l764dh		;763c
	nop			;763e
l763fh:
	nop			;763f
	nop			;7640
l7641h:
	nop			;7641
	jr nz,l764bh		;7642
	ld h,c			;7644
	nop			;7645
	nop			;7646
	nop			;7647
	ld e,00fh		;7648
	nop			;764a
l764bh:
	nop			;764b
	nop			;764c
l764dh:
	nop			;764d
	ld e,007h		;764e
	ld hl,(00104h)		;7650
	nop			;7653
	ld h,c			;7654
	nop			;7655
	nop			;7656
	nop			;7657
	nop			;7658
	nop			;7659
	ld l,b			;765a
	dec b			;765b
	ld h,c			;765c
	nop			;765d
	nop			;765e
	nop			;765f
	jr nz,l7671h		;7660
	jr c,$+11		;7662
	inc d			;7664
	rrca			;7665
	jr nz,$+9		;7666
	inc l			;7668
	inc b			;7669
	nop			;766a
	nop			;766b
	jr nz,l767dh		;766c
	jr c,$+11		;766e
	inc d			;7670
l7671h:
	rrca			;7671
	ld h,a			;7672
	ld bc,00000h		;7673
	nop			;7676
	nop			;7677
	jr nz,l7689h		;7678
	ld l,009h		;767a
	ld a,(bc)		;767c
l767dh:
	rrca			;767d
	ld l,h			;767e
	ld bc,00631h		;767f
	inc bc			;7682
	nop			;7683
	jr nz,$+13		;7684
	ld l,009h		;7686
	ld a,(bc)		;7688
l7689h:
	rrca			;7689
	ld h,a			;768a
	ld (bc),a		;768b
	ld h,a			;768c
	ld bc,00003h		;768d
	jr nz,l769ah		;7690
	ld l,009h		;7692
	ld a,(bc)		;7694
	rrca			;7695
	ld h,a			;7696
	inc b			;7697
	nop			;7698
	nop			;7699
l769ah:
	inc bc			;769a
	nop			;769b
	ld h,c			;769c
	nop			;769d
	ld h,c			;769e
	nop			;769f
	ld h,c			;76a0
	nop			;76a1
	ld h,c			;76a2
	nop			;76a3
	nop			;76a4
	nop			;76a5
	ld bc,00000h		;76a6
	nop			;76a9
	nop			;76aa
	nop			;76ab
	nop			;76ac
	nop			;76ad
	nop			;76ae
	nop			;76af
	ld h,e			;76b0
	ld (bc),a		;76b1
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
	ld h,e			;76bc
	inc bc			;76bd
	nop			;76be
	nop			;76bf
	nop			;76c0
	nop			;76c1
	inc sp			;76c2
	add hl,bc		;76c3
	rrca			;76c4
	rrca			;76c5
	nop			;76c6
	nop			;76c7
	ld h,c			;76c8
	nop			;76c9
	inc bc			;76ca
	nop			;76cb
	dec de			;76cc
	rrca			;76cd
	inc sp			;76ce
	add hl,bc		;76cf
	rrca			;76d0
	rrca			;76d1
	ld l,d			;76d2
	ld (bc),a		;76d3
	ld l,c			;76d4
	nop			;76d5
	nop			;76d6
	nop			;76d7
	ld h,c			;76d8
	nop			;76d9
	inc sp			;76da
	add hl,bc		;76db
	rrca			;76dc
	rrca			;76dd
	add hl,hl		;76de
	rlca			;76df
	add hl,hl		;76e0
	rlca			;76e1
	nop			;76e2
	nop			;76e3
	dec de			;76e4
	rrca			;76e5
	daa			;76e6
	add hl,bc		;76e7
	inc bc			;76e8
	rrca			;76e9
	nop			;76ea
	nop			;76eb
	nop			;76ec
	nop			;76ed
	nop			;76ee
	nop			;76ef
	ld h,c			;76f0
	nop			;76f1
	ld h,c			;76f2
	nop			;76f3
	ld h,c			;76f4
	nop			;76f5
	ld hl,(02a07h)		;76f6
	rlca			;76f9
	ld bc,00000h		;76fa
	nop			;76fd
	daa			;76fe
	add hl,bc		;76ff
	inc bc			;7700
	rrca			;7701
	nop			;7702
	nop			;7703
	nop			;7704
	nop			;7705
	nop			;7706
	nop			;7707
	dec de			;7708
	rrca			;7709
	inc sp			;770a
	add hl,bc		;770b
	rrca			;770c
	rrca			;770d
	ld l,007h		;770e
	ld l,007h		;7710
	nop			;7712
	nop			;7713
	ld h,c			;7714
	nop			;7715
	ld h,c			;7716
	nop			;7717
	ld h,c			;7718
	nop			;7719
	nop			;771a
	nop			;771b
	nop			;771c
	nop			;771d
	ld bc,00000h		;771e
	nop			;7721
	nop			;7722
	nop			;7723
	nop			;7724
	nop			;7725
	ld l,c			;7726
	ld bc,00000h		;7727
	ld (bc),a		;772a
	nop			;772b
	nop			;772c
	nop			;772d
	nop			;772e
	nop			;772f
	nop			;7730
	nop			;7731
	nop			;7732
	nop			;7733
	nop			;7734
	nop			;7735
	nop			;7736
	nop			;7737
	nop			;7738
	nop			;7739
	nop			;773a
	nop			;773b
	nop			;773c
	nop			;773d
	nop			;773e
	nop			;773f
	nop			;7740
	nop			;7741
	nop			;7742
	nop			;7743
	nop			;7744
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
	nop			;774f
	nop			;7750
	nop			;7751
	ld h,c			;7752
	nop			;7753
	ld h,c			;7754
	nop			;7755
	ld l,h			;7756
	ld bc,00167h		;7757
	ld bc,00000h		;775a
	nop			;775d
	inc sp			;775e
	add hl,bc		;775f
	rrca			;7760
	rrca			;7761
	ld l,h			;7762
	ld bc,03064h		;7763
	inc bc			;7766
	nop			;7767
	nop			;7768
	nop			;7769
	daa			;776a
	add hl,bc		;776b
	inc bc			;776c
	rrca			;776d
	ld l,h			;776e
	ld bc,00000h		;776f
	nop			;7772
	nop			;7773
	nop			;7774
	nop			;7775
	daa			;7776
	add hl,bc		;7777
	inc bc			;7778
	rrca			;7779
	ld l,h			;777a
	ld bc,00061h		;777b
	nop			;777e
	nop			;777f
	jr nz,l7791h		;7780
	inc sp			;7782
	add hl,bc		;7783
	rrca			;7784
	rrca			;7785
	jr nz,l778fh		;7786
	nop			;7788
	nop			;7789
	inc bc			;778a
	nop			;778b
	dec de			;778c
	rrca			;778d
	inc sp			;778e
l778fh:
	add hl,bc		;778f
	rrca			;7790
l7791h:
	rrca			;7791
	dec de			;7792
	rlca			;7793
	nop			;7794
	nop			;7795
	nop			;7796
	nop			;7797
	ld l,h			;7798
	ld b,033h		;7799
	add hl,bc		;779b
	rrca			;779c
	rrca			;779d
	ld l,h			;779e
	ld b,000h		;779f
	nop			;77a1
	nop			;77a2
	nop			;77a3
	dec de			;77a4
	rrca			;77a5
	daa			;77a6
	add hl,bc		;77a7
	inc bc			;77a8
	rrca			;77a9
	dec de			;77aa
	rlca			;77ab
	nop			;77ac
	nop			;77ad
	nop			;77ae
	nop			;77af
	ld h,c			;77b0
	nop			;77b1
	ld h,c			;77b2
	nop			;77b3
	ld h,c			;77b4
	nop			;77b5
	ld h,c			;77b6
	nop			;77b7
	nop			;77b8
	nop			;77b9
	ld bc,l6c00h		;77ba
	ld b,027h		;77bd
	add hl,bc		;77bf
	inc bc			;77c0
	rrca			;77c1
	ld l,h			;77c2
	ld b,000h		;77c3
	nop			;77c5
	nop			;77c6
	nop			;77c7
	dec de			;77c8
	rrca			;77c9
	inc sp			;77ca
	add hl,bc		;77cb
	rrca			;77cc
	rrca			;77cd
	dec de			;77ce
	rlca			;77cf
	nop			;77d0
	nop			;77d1
	inc bc			;77d2
	nop			;77d3
	ld h,c			;77d4
	nop			;77d5
	ld h,c			;77d6
	nop			;77d7
	ld h,c			;77d8
	nop			;77d9
	ld h,c			;77da
	nop			;77db
	nop			;77dc
	nop			;77dd
	ld bc,00000h		;77de
	nop			;77e1
	nop			;77e2
	nop			;77e3
	nop			;77e4
	nop			;77e5
	nop			;77e6
	nop			;77e7
	nop			;77e8
	nop			;77e9
	ld (bc),a		;77ea
	nop			;77eb
	nop			;77ec
	nop			;77ed
	nop			;77ee
	nop			;77ef
	nop			;77f0
	nop			;77f1
	nop			;77f2
	nop			;77f3
	nop			;77f4
	nop			;77f5
	nop			;77f6
	nop			;77f7
	nop			;77f8
	nop			;77f9
	ld hl,(00609h)		;77fa
	rrca			;77fd
	nop			;77fe
	nop			;77ff
	nop			;7800
	nop			;7801
	nop			;7802
	nop			;7803
	nop			;7804
	nop			;7805
	ld hl,(00609h)		;7806
	rrca			;7809
	nop			;780a
	nop			;780b
	nop			;780c
	nop			;780d
	nop			;780e
	nop			;780f
	ld e,00fh		;7810
	ld h,c			;7812
	nop			;7813
	ld h,c			;7814
	nop			;7815
	ld e,007h		;7816
	nop			;7818
	nop			;7819
	ld bc,01e00h		;781a
	rrca			;781d
	ld hl,(00609h)		;781e
	rrca			;7821
	ld e,007h		;7822
	nop			;7824
	nop			;7825
	inc bc			;7826
	nop			;7827
	ld (02a0fh),hl		;7828
	add hl,bc		;782b
	ld b,00fh		;782c
	ld (00007h),hl		;782e
	nop			;7831
	nop			;7832
	nop			;7833
	ld (02a0fh),hl		;7834
	add hl,bc		;7837
	ld b,00fh		;7838
	ld (00007h),hl		;783a
	nop			;783d
	nop			;783e
	nop			;783f
	dec e			;7840
	dec c			;7841
	dec (hl)		;7842
	add hl,bc		;7843
	ld de,l620dh		;7844
	inc h			;7847
	add hl,hl		;7848
	ld b,001h		;7849
	nop			;784b
	dec e			;784c
	dec c			;784d
	dec (hl)		;784e
	add hl,bc		;784f
	ld de,01d0dh		;7850
	rlca			;7853
	dec (hl)		;7854
	ld b,000h		;7855
	nop			;7857
	ld h,c			;7858
	nop			;7859
	dec (hl)		;785a
	add hl,bc		;785b
	ld de,l610dh		;785c
	nop			;785f
	ld h,c			;7860
	nop			;7861
	inc bc			;7862
	nop			;7863
	dec e			;7864
	dec c			;7865
	add hl,hl		;7866
	add hl,bc		;7867
	dec b			;7868
	dec c			;7869
	dec e			;786a
	rlca			;786b
	add hl,hl		;786c
	ld b,003h		;786d
	nop			;786f
	dec e			;7870
	dec c			;7871
	add hl,hl		;7872
	add hl,bc		;7873
	dec b			;7874
	dec c			;7875
	dec e			;7876
	rlca			;7877
	dec e			;7878
	ld b,002h		;7879
	nop			;787b
	dec e			;787c
	dec c			;787d
	ld h,c			;787e
	nop			;787f
	ld h,c			;7880
	nop			;7881
	dec e			;7882
	rlca			;7883
	add hl,hl		;7884
	ld b,000h		;7885
	nop			;7887
	ld h,c			;7888
	nop			;7889
	nop			;788a
	nop			;788b
	nop			;788c
	nop			;788d
	ld h,c			;788e
	nop			;788f
	ld h,c			;7890
	nop			;7891
	inc bc			;7892
	nop			;7893
	nop			;7894
	nop			;7895
	nop			;7896
	nop			;7897
	nop			;7898
	nop			;7899
	nop			;789a
	nop			;789b
	nop			;789c
	nop			;789d
	ld bc,00000h		;789e
	nop			;78a1
	nop			;78a2
	nop			;78a3
	nop			;78a4
	nop			;78a5
	nop			;78a6
	nop			;78a7
	nop			;78a8
	nop			;78a9
	ld (bc),a		;78aa
	nop			;78ab
	nop			;78ac
	nop			;78ad
	nop			;78ae
	nop			;78af
	nop			;78b0
	nop			;78b1
	nop			;78b2
	nop			;78b3
	nop			;78b4
	nop			;78b5
	nop			;78b6
	nop			;78b7
	dec e			;78b8
	rrca			;78b9
	add hl,hl		;78ba
	add hl,bc		;78bb
	dec b			;78bc
	rrca			;78bd
	dec e			;78be
	rlca			;78bf
	jr nc,l78c8h		;78c0
	ld bc,01d00h		;78c2
	rrca			;78c5
	add hl,hl		;78c6
	add hl,bc		;78c7
l78c8h:
	dec b			;78c8
	rrca			;78c9
	dec e			;78ca
	rlca			;78cb
	inc h			;78cc
	ld b,000h		;78cd
	nop			;78cf
	ld h,c			;78d0
	nop			;78d1
	dec (hl)		;78d2
	add hl,bc		;78d3
	ld de,l610fh		;78d4
	nop			;78d7
	ld h,c			;78d8
	nop			;78d9
	ld (bc),a		;78da
	nop			;78db
	dec e			;78dc
	rrca			;78dd
	dec (hl)		;78de
	add hl,bc		;78df
	ld de,01d0fh		;78e0
	rlca			;78e3
	jr nc,l78ech		;78e4
	nop			;78e6
	nop			;78e7
	dec e			;78e8
	rrca			;78e9
	add hl,hl		;78ea
	add hl,bc		;78eb
l78ech:
	dec b			;78ec
	rrca			;78ed
	dec e			;78ee
	rlca			;78ef
	inc h			;78f0
	ld b,001h		;78f1
	nop			;78f3
	ld h,c			;78f4
	nop			;78f5
	add hl,hl		;78f6
	add hl,bc		;78f7
	dec b			;78f8
	rrca			;78f9
	ld h,c			;78fa
	nop			;78fb
	ld h,c			;78fc
	nop			;78fd
	nop			;78fe
	nop			;78ff
	ld e,00fh		;7900
	ld hl,(00609h)		;7902
	rrca			;7905
	ld e,007h		;7906
	ld hl,(00208h)		;7908
	nop			;790b
	ld e,00fh		;790c
	ld (hl),009h		;790e
	ld (de),a		;7910
	rrca			;7911
	ld e,007h		;7912
	ld (hl),006h		;7914
	nop			;7916
	nop			;7917
	ld h,c			;7918
	nop			;7919
	ld (hl),009h		;791a
	ld (de),a		;791c
	rrca			;791d
	ld h,c			;791e
	nop			;791f
	ld h,c			;7920
	nop			;7921
	ld bc,01e00h		;7922
	rrca			;7925
	ld hl,(00609h)		;7926
	rrca			;7929
	ld e,007h		;792a
	ld hl,(00006h)		;792c
	nop			;792f
	ld e,00fh		;7930
	ld hl,(00609h)		;7932
	rrca			;7935
	ld e,007h		;7936
	ld hl,(00206h)		;7938
	nop			;793b
	ld h,c			;793c
	nop			;793d
	ld hl,(00609h)		;793e
	rrca			;7941
	ld h,c			;7942
	nop			;7943
	ld h,c			;7944
	nop			;7945
	nop			;7946
	nop			;7947
	nop			;7948
	nop			;7949
	ld (hl),009h		;794a
	ld (de),a		;794c
	rrca			;794d
	nop			;794e
	nop			;794f
	nop			;7950
	nop			;7951
	ld bc,00000h		;7952
	nop			;7955
	ld h,c			;7956
	nop			;7957
	ld h,c			;7958
	nop			;7959
	nop			;795a
	nop			;795b
	nop			;795c
	nop			;795d
	nop			;795e
	nop			;795f
	nop			;7960
	nop			;7961
	nop			;7962
	nop			;7963
	nop			;7964
	nop			;7965
	nop			;7966
	nop			;7967
	nop			;7968
	nop			;7969
	ld (bc),a		;796a
	nop			;796b
	nop			;796c
	nop			;796d
	nop			;796e
	nop			;796f
	nop			;7970
	nop			;7971
	nop			;7972
	nop			;7973
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
	nop			;797e
	nop			;797f
	nop			;7980
	nop			;7981
	ld (bc),a		;7982
	nop			;7983
	nop			;7984
	nop			;7985
	nop			;7986
	nop			;7987
	nop			;7988
	nop			;7989
	nop			;798a
	nop			;798b
	nop			;798c
	nop			;798d
	ld (bc),a		;798e
	nop			;798f
	nop			;7990
	nop			;7991
	nop			;7992
	nop			;7993
	nop			;7994
	nop			;7995
	ld h,d			;7996
	rra			;7997
	nop			;7998
	nop			;7999
	ld bc,00a00h		;799a
	dec bc			;799d
	ld a,(bc)		;799e
	dec bc			;799f
	ld a,(bc)		;79a0
	dec bc			;79a1
	ld a,(bc)		;79a2
	rlca			;79a3
	ld a,(bc)		;79a4
	rlca			;79a5
	nop			;79a6
	nop			;79a7
	ld h,a			;79a8
	ld (bc),a		;79a9
	ld h,a			;79aa
	ld (bc),a		;79ab
	ld h,a			;79ac
	inc bc			;79ad
	ld h,a			;79ae
	inc bc			;79af
	ld h,a			;79b0
	ld (bc),a		;79b1
	ld (bc),a		;79b2
	nop			;79b3
	ld h,d			;79b4
	ld (02262h),hl		;79b5
	ld h,d			;79b8
	nop			;79b9
	ld l,d			;79ba
	nop			;79bb
	nop			;79bc
	nop			;79bd
	nop			;79be
	nop			;79bf
	ld hl,(0000fh)		;79c0
	nop			;79c3
	inc bc			;79c4
	rrca			;79c5
	ld h,d			;79c6
	inc c			;79c7
	ld h,c			;79c8
	nop			;79c9
	ld bc,02900h		;79ca
	rrca			;79cd
	nop			;79ce
	nop			;79cf
	inc bc			;79d0
	rrca			;79d1
	nop			;79d2
	nop			;79d3
	ld l,c			;79d4
	ld bc,00000h		;79d5
	daa			;79d8
	rrca			;79d9
	ld hl,(00309h)		;79da
	rrca			;79dd
	ld l,00fh		;79de
	nop			;79e0
	nop			;79e1
	inc bc			;79e2
	nop			;79e3
	ld (0290fh),hl		;79e4
	add hl,bc		;79e7
	inc bc			;79e8
	rrca			;79e9
	ld h,c			;79ea
	nop			;79eb
	nop			;79ec
	nop			;79ed
	nop			;79ee
	nop			;79ef
	ld hl,(0270fh)		;79f0
	add hl,bc		;79f3
	inc bc			;79f4
	rrca			;79f5
	ld l,00dh		;79f6
	nop			;79f8
	nop			;79f9
	ld (bc),a		;79fa
	nop			;79fb
	add hl,hl		;79fc
	rrca			;79fd
	ld (00309h),hl		;79fe
	rrca			;7a01
	inc l			;7a02
	rrca			;7a03
	nop			;7a04
	nop			;7a05
	nop			;7a06
	nop			;7a07
	daa			;7a08
	rrca			;7a09
	ld hl,(00009h)		;7a0a
	nop			;7a0d
	ld h,c			;7a0e
	nop			;7a0f
	ld l,008h		;7a10
	ld bc,02200h		;7a12
	rrca			;7a15
	add hl,hl		;7a16
	add hl,bc		;7a17
	nop			;7a18
	nop			;7a19
	inc sp			;7a1a
	rrca			;7a1b
	ld h,c			;7a1c
	nop			;7a1d
	ld (bc),a		;7a1e
	nop			;7a1f
	ld hl,(0270fh)		;7a20
	add hl,bc		;7a23
	nop			;7a24
	nop			;7a25
	nop			;7a26
	nop			;7a27
	ld l,008h		;7a28
	ld (bc),a		;7a2a
	nop			;7a2b
	add hl,hl		;7a2c
	rrca			;7a2d
	ld (00009h),hl		;7a2e
	nop			;7a31
	nop			;7a32
	nop			;7a33
	inc l			;7a34
	ex af,af'		;7a35
	ld bc,02700h		;7a36
	rrca			;7a39
	ld hl,(00309h)		;7a3a
	rrca			;7a3d
	nop			;7a3e
	nop			;7a3f
	ld l,008h		;7a40
	inc bc			;7a42
	nop			;7a43
	ld (0290fh),hl		;7a44
	add hl,bc		;7a47
	inc bc			;7a48
	rrca			;7a49
	nop			;7a4a
	nop			;7a4b
	inc sp			;7a4c
	ex af,af'		;7a4d
	ld bc,02a00h		;7a4e
	rrca			;7a51
	daa			;7a52
	add hl,bc		;7a53
	inc bc			;7a54
	rrca			;7a55
	nop			;7a56
	nop			;7a57
	nop			;7a58
	nop			;7a59
	inc bc			;7a5a
	nop			;7a5b
	add hl,hl		;7a5c
	rrca			;7a5d
	ld (00309h),hl		;7a5e
	rrca			;7a61
	nop			;7a62
	nop			;7a63
	nop			;7a64
	nop			;7a65
	inc bc			;7a66
	nop			;7a67
	daa			;7a68
	rrca			;7a69
	ld hl,(00009h)		;7a6a
	nop			;7a6d
	ld l,00fh		;7a6e
	nop			;7a70
	nop			;7a71
	inc bc			;7a72
	nop			;7a73
	ld (0290fh),hl		;7a74
	add hl,bc		;7a77
	nop			;7a78
	nop			;7a79
	inc l			;7a7a
	rrca			;7a7b
	nop			;7a7c
	nop			;7a7d
	inc bc			;7a7e
	nop			;7a7f
	ld hl,(0270fh)		;7a80
	add hl,bc		;7a83
	inc bc			;7a84
	rrca			;7a85
	dec (hl)		;7a86
	rrca			;7a87
	nop			;7a88
	nop			;7a89
	ld bc,02900h		;7a8a
	rrca			;7a8d
	ld (00309h),hl		;7a8e
	rrca			;7a91
	nop			;7a92
	nop			;7a93
	nop			;7a94
	nop			;7a95
	nop			;7a96
	nop			;7a97
	daa			;7a98
	rrca			;7a99
	ld hl,(00009h)		;7a9a
	nop			;7a9d
	nop			;7a9e
	nop			;7a9f
	ld l,008h		;7aa0
	inc bc			;7aa2
	nop			;7aa3
	ld (0290fh),hl		;7aa4
	add hl,bc		;7aa7
	inc bc			;7aa8
	rrca			;7aa9
	ld (hl),00fh		;7aaa
	inc l			;7aac
	ex af,af'		;7aad
	ld (bc),a		;7aae
	nop			;7aaf
	ld hl,(0270fh)		;7ab0
	add hl,bc		;7ab3
	inc bc			;7ab4
	rrca			;7ab5
	nop			;7ab6
	nop			;7ab7
	dec (hl)		;7ab8
	ex af,af'		;7ab9
	nop			;7aba
	nop			;7abb
	add hl,hl		;7abc
	rrca			;7abd
	ld (00309h),hl		;7abe
	rrca			;7ac1
	nop			;7ac2
	nop			;7ac3
	nop			;7ac4
	nop			;7ac5
	inc bc			;7ac6
	nop			;7ac7
	daa			;7ac8
	rrca			;7ac9
	ld hl,(00009h)		;7aca
	nop			;7acd
	dec (hl)		;7ace
	rrca			;7acf
	nop			;7ad0
	nop			;7ad1
	ld bc,02200h		;7ad2
	rrca			;7ad5
	add hl,hl		;7ad6
	add hl,bc		;7ad7
	inc bc			;7ad8
	add hl,bc		;7ad9
	nop			;7ada
	nop			;7adb
	ld (hl),008h		;7adc
	nop			;7ade
	nop			;7adf
	ld hl,(0270fh)		;7ae0
	add hl,bc		;7ae3
	inc bc			;7ae4
	rrca			;7ae5
	inc sp			;7ae6
	rrca			;7ae7
	nop			;7ae8
	nop			;7ae9
	ld (bc),a		;7aea
	nop			;7aeb
	add hl,hl		;7aec
	rrca			;7aed
	ld (00309h),hl		;7aee
	rrca			;7af1
	nop			;7af2
	nop			;7af3
	nop			;7af4
	nop			;7af5
	ld bc,02700h		;7af6
	rrca			;7af9
	ld hl,(00309h)		;7afa
	rrca			;7afd
	ld l,h			;7afe
	ld bc,00835h		;7aff
	inc bc			;7b02
	nop			;7b03
	ld (0290fh),hl		;7b04
	add hl,bc		;7b07
	inc bc			;7b08
	rrca			;7b09
	nop			;7b0a
	nop			;7b0b
	nop			;7b0c
	nop			;7b0d
	ld bc,02a00h		;7b0e
	rrca			;7b11
	daa			;7b12
	add hl,bc		;7b13
	inc bc			;7b14
	rrca			;7b15
	ld l,h			;7b16
	ld bc,00833h		;7b17
	nop			;7b1a
	nop			;7b1b
	add hl,hl		;7b1c
	rrca			;7b1d
	ld (00309h),hl		;7b1e
	rrca			;7b21
	nop			;7b22
	nop			;7b23
	nop			;7b24
	nop			;7b25
	inc bc			;7b26
	nop			;7b27
	daa			;7b28
	rrca			;7b29
	ld hl,(00009h)		;7b2a
	nop			;7b2d
	ld l,h			;7b2e
	ld bc,0016ch		;7b2f
	ld bc,02200h		;7b32
	rrca			;7b35
	add hl,hl		;7b36
	add hl,bc		;7b37
	inc bc			;7b38
	rrca			;7b39
	nop			;7b3a
	nop			;7b3b
	nop			;7b3c
	nop			;7b3d
	nop			;7b3e
	nop			;7b3f
	add hl,hl		;7b40
	rrca			;7b41
	daa			;7b42
	add hl,bc		;7b43
	ld bc,0380fh		;7b44
	rrca			;7b47
	ld l,h			;7b48
	ld bc,00001h		;7b49
	daa			;7b4c
	rrca			;7b4d
	ld (00109h),hl		;7b4e
	rrca			;7b51
	nop			;7b52
	nop			;7b53
	nop			;7b54
	nop			;7b55
	nop			;7b56
	nop			;7b57
	dec h			;7b58
	rrca			;7b59
	add hl,hl		;7b5a
	add hl,bc		;7b5b
	ld bc,0000fh		;7b5c
	nop			;7b5f
	ld l,h			;7b60
	ld bc,00003h		;7b61
	jr nz,$+17		;7b64
	daa			;7b66
	add hl,bc		;7b67
	ld bc,0000fh		;7b68
	nop			;7b6b
	nop			;7b6c
	nop			;7b6d
	nop			;7b6e
	nop			;7b6f
	add hl,hl		;7b70
	rrca			;7b71
	dec h			;7b72
	add hl,bc		;7b73
	ld bc,0000fh		;7b74
	nop			;7b77
	jr c,$+10		;7b78
	ld (bc),a		;7b7a
	nop			;7b7b
	daa			;7b7c
	rrca			;7b7d
	jr nz,l7b89h		;7b7e
	ld bc,0000fh		;7b80
	nop			;7b83
	nop			;7b84
	nop			;7b85
	nop			;7b86
	nop			;7b87
	dec h			;7b88
l7b89h:
	rrca			;7b89
	add hl,hl		;7b8a
	add hl,bc		;7b8b
	nop			;7b8c
	nop			;7b8d
	ld (hl),00fh		;7b8e
	nop			;7b90
	nop			;7b91
	ld bc,02000h		;7b92
	rrca			;7b95
	daa			;7b96
	add hl,bc		;7b97
	nop			;7b98
	nop			;7b99
	dec (hl)		;7b9a
	rrca			;7b9b
	nop			;7b9c
	nop			;7b9d
	ld (bc),a		;7b9e
	nop			;7b9f
	add hl,hl		;7ba0
	rrca			;7ba1
	dec h			;7ba2
	add hl,bc		;7ba3
	nop			;7ba4
	nop			;7ba5
	inc sp			;7ba6
	rrca			;7ba7
	nop			;7ba8
	nop			;7ba9
	ld (bc),a		;7baa
	nop			;7bab
	daa			;7bac
	rrca			;7bad
	jr nz,l7bb9h		;7bae
	nop			;7bb0
	nop			;7bb1
	nop			;7bb2
	nop			;7bb3
	nop			;7bb4
	nop			;7bb5
	ld bc,02500h		;7bb6
l7bb9h:
	rrca			;7bb9
	add hl,hl		;7bba
	add hl,bc		;7bbb
	ld bc,0000fh		;7bbc
	nop			;7bbf
	ld (hl),008h		;7bc0
	inc bc			;7bc2
	nop			;7bc3
	jr nz,$+17		;7bc4
	daa			;7bc6
	add hl,bc		;7bc7
	ld bc,0000fh		;7bc8
	nop			;7bcb
	dec (hl)		;7bcc
	ex af,af'		;7bcd
	ld bc,02900h		;7bce
	rrca			;7bd1
	dec h			;7bd2
	add hl,bc		;7bd3
	ld bc,0000fh		;7bd4
	nop			;7bd7
	inc sp			;7bd8
	ex af,af'		;7bd9
	inc bc			;7bda
	nop			;7bdb
	daa			;7bdc
	rrca			;7bdd
	jr nz,l7be9h		;7bde
	ld bc,0000fh		;7be0
	nop			;7be3
	nop			;7be4
	nop			;7be5
	nop			;7be6
	nop			;7be7
	dec h			;7be8
l7be9h:
	rrca			;7be9
	add hl,hl		;7bea
	add hl,bc		;7beb
	nop			;7bec
	nop			;7bed
	nop			;7bee
	nop			;7bef
	nop			;7bf0
	nop			;7bf1
	ld bc,02000h		;7bf2
	rrca			;7bf5
	daa			;7bf6
	add hl,bc		;7bf7
	nop			;7bf8
	nop			;7bf9
	nop			;7bfa
	nop			;7bfb
	nop			;7bfc
	nop			;7bfd
	nop			;7bfe
	nop			;7bff
	add hl,hl		;7c00
	rrca			;7c01
	dec h			;7c02
	add hl,bc		;7c03
	ld bc,02c0fh		;7c04
	rrca			;7c07
	nop			;7c08
	nop			;7c09
	ld bc,02700h		;7c0a
	rrca			;7c0d
	jr nz,l7c19h		;7c0e
	ld bc,l610fh		;7c10
	nop			;7c13
	nop			;7c14
	nop			;7c15
	nop			;7c16
	nop			;7c17
	dec h			;7c18
l7c19h:
	rrca			;7c19
	add hl,hl		;7c1a
	add hl,bc		;7c1b
	nop			;7c1c
	nop			;7c1d
	inc l			;7c1e
	rrca			;7c1f
	nop			;7c20
	nop			;7c21
	inc bc			;7c22
	nop			;7c23
	jr nz,$+17		;7c24
	daa			;7c26
	add hl,bc		;7c27
	nop			;7c28
	nop			;7c29
	nop			;7c2a
	nop			;7c2b
	nop			;7c2c
	nop			;7c2d
	ld (bc),a		;7c2e
	nop			;7c2f
	add hl,hl		;7c30
	rrca			;7c31
	dec h			;7c32
	add hl,bc		;7c33
	ld bc,0000fh		;7c34
	nop			;7c37
	inc l			;7c38
	ex af,af'		;7c39
	nop			;7c3a
	nop			;7c3b
	daa			;7c3c
	rrca			;7c3d
	jr nz,l7c49h		;7c3e
	ld bc,0000fh		;7c40
	nop			;7c43
	ld h,c			;7c44
	nop			;7c45
	inc bc			;7c46
	nop			;7c47
	dec h			;7c48
l7c49h:
	rrca			;7c49
	add hl,hl		;7c4a
	add hl,bc		;7c4b
	ld bc,02a0fh		;7c4c
	rrca			;7c4f
	inc l			;7c50
	ex af,af'		;7c51
	ld bc,02000h		;7c52
	rrca			;7c55
	daa			;7c56
	add hl,bc		;7c57
	ld bc,02c0fh		;7c58
	rrca			;7c5b
	nop			;7c5c
	nop			;7c5d
	nop			;7c5e
	nop			;7c5f
	add hl,hl		;7c60
	rrca			;7c61
	dec h			;7c62
	add hl,bc		;7c63
	ld bc,0000fh		;7c64
	nop			;7c67
	nop			;7c68
	nop			;7c69
	ld (bc),a		;7c6a
	nop			;7c6b
	daa			;7c6c
	rrca			;7c6d
	jr nz,l7c79h		;7c6e
	ld bc,0000fh		;7c70
	nop			;7c73
	nop			;7c74
	nop			;7c75
	ld bc,02500h		;7c76
l7c79h:
	rrca			;7c79
	add hl,hl		;7c7a
	add hl,bc		;7c7b
	ld bc,0310fh		;7c7c
	rrca			;7c7f
	ld hl,(00308h)		;7c80
	nop			;7c83
	jr nz,l7c95h		;7c84
	daa			;7c86
	add hl,bc		;7c87
	ld bc,0000fh		;7c88
	nop			;7c8b
	inc l			;7c8c
	ex af,af'		;7c8d
	ld bc,02900h		;7c8e
	rrca			;7c91
	dec h			;7c92
	add hl,bc		;7c93
	nop			;7c94
l7c95h:
	nop			;7c95
	inc sp			;7c96
	rrca			;7c97
	nop			;7c98
	nop			;7c99
	nop			;7c9a
	nop			;7c9b
	daa			;7c9c
	rrca			;7c9d
	jr nz,l7ca9h		;7c9e
	ld bc,0000fh		;7ca0
	nop			;7ca3
	nop			;7ca4
	nop			;7ca5
	inc bc			;7ca6
	nop			;7ca7
	dec h			;7ca8
l7ca9h:
	rrca			;7ca9
	add hl,hl		;7caa
	add hl,bc		;7cab
	nop			;7cac
	nop			;7cad
	dec (hl)		;7cae
	rrca			;7caf
	ld sp,00108h		;7cb0
	nop			;7cb3
	jr nz,l7cc5h		;7cb4
	daa			;7cb6
	add hl,bc		;7cb7
	nop			;7cb8
	nop			;7cb9
	nop			;7cba
	nop			;7cbb
	nop			;7cbc
	nop			;7cbd
	nop			;7cbe
	nop			;7cbf
	ld hl,(0000fh)		;7cc0
	nop			;7cc3
	inc bc			;7cc4
l7cc5h:
	rrca			;7cc5
	nop			;7cc6
	nop			;7cc7
	inc sp			;7cc8
	ex af,af'		;7cc9
	ld bc,02900h		;7cca
	rrca			;7ccd
	nop			;7cce
	nop			;7ccf
	inc bc			;7cd0
	rrca			;7cd1
	nop			;7cd2
	nop			;7cd3
	nop			;7cd4
	nop			;7cd5
	nop			;7cd6
	nop			;7cd7
	daa			;7cd8
	rrca			;7cd9
	ld hl,(00309h)		;7cda
	rrca			;7cdd
	ld l,00fh		;7cde
	dec (hl)		;7ce0
	ex af,af'		;7ce1
	inc bc			;7ce2
	nop			;7ce3
	ld (0290fh),hl		;7ce4
	add hl,bc		;7ce7
	inc bc			;7ce8
	rrca			;7ce9
	ld h,c			;7cea
	nop			;7ceb
	nop			;7cec
	nop			;7ced
	nop			;7cee
	nop			;7cef
	ld hl,(0270fh)		;7cf0
	add hl,bc		;7cf3
	inc bc			;7cf4
	rrca			;7cf5
	ld l,00fh		;7cf6
	nop			;7cf8
	nop			;7cf9
	ld (bc),a		;7cfa
	nop			;7cfb
	add hl,hl		;7cfc
	rrca			;7cfd
	ld (00309h),hl		;7cfe
	rrca			;7d01
	inc l			;7d02
	rrca			;7d03
	nop			;7d04
	nop			;7d05
	nop			;7d06
	nop			;7d07
	daa			;7d08
	rrca			;7d09
	ld hl,(00009h)		;7d0a
	nop			;7d0d
	ld l,00fh		;7d0e
	ld l,008h		;7d10
	ld bc,02200h		;7d12
	rrca			;7d15
	add hl,hl		;7d16
	add hl,bc		;7d17
	nop			;7d18
	nop			;7d19
	inc sp			;7d1a
	rrca			;7d1b
	ld h,c			;7d1c
	nop			;7d1d
	ld (bc),a		;7d1e
	nop			;7d1f
	ld hl,(0270fh)		;7d20
	add hl,bc		;7d23
	nop			;7d24
	nop			;7d25
	nop			;7d26
	nop			;7d27
	ld l,008h		;7d28
	ld (bc),a		;7d2a
	nop			;7d2b
	add hl,hl		;7d2c
	rrca			;7d2d
	ld (00009h),hl		;7d2e
	nop			;7d31
	nop			;7d32
	nop			;7d33
	inc l			;7d34
	ex af,af'		;7d35
	ld bc,02700h		;7d36
	rrca			;7d39
	ld hl,(00309h)		;7d3a
	rrca			;7d3d
	nop			;7d3e
	nop			;7d3f
	ld l,008h		;7d40
	inc bc			;7d42
	nop			;7d43
	ld (0290fh),hl		;7d44
	add hl,bc		;7d47
	inc bc			;7d48
	rrca			;7d49
	nop			;7d4a
	nop			;7d4b
	inc sp			;7d4c
	ex af,af'		;7d4d
	ld bc,02a00h		;7d4e
	rrca			;7d51
	daa			;7d52
	add hl,bc		;7d53
	inc bc			;7d54
	rrca			;7d55
	nop			;7d56
	nop			;7d57
	nop			;7d58
	nop			;7d59
	inc bc			;7d5a
	nop			;7d5b
	add hl,hl		;7d5c
	rrca			;7d5d
	ld (00309h),hl		;7d5e
	rrca			;7d61
	nop			;7d62
	nop			;7d63
	nop			;7d64
	nop			;7d65
	inc bc			;7d66
	nop			;7d67
	daa			;7d68
	rrca			;7d69
	ld hl,(00009h)		;7d6a
	nop			;7d6d
	ld l,00fh		;7d6e
	nop			;7d70
	nop			;7d71
	inc bc			;7d72
	nop			;7d73
	ld (0290fh),hl		;7d74
	add hl,bc		;7d77
	nop			;7d78
	nop			;7d79
	inc l			;7d7a
	rrca			;7d7b
	nop			;7d7c
	nop			;7d7d
	inc bc			;7d7e
	nop			;7d7f
	ld hl,(0270fh)		;7d80
	add hl,bc		;7d83
	inc bc			;7d84
	rrca			;7d85
	jr c,l7d97h		;7d86
	nop			;7d88
	nop			;7d89
	ld bc,02900h		;7d8a
	rrca			;7d8d
	ld (00309h),hl		;7d8e
	rrca			;7d91
	nop			;7d92
	nop			;7d93
	nop			;7d94
	nop			;7d95
	nop			;7d96
l7d97h:
	nop			;7d97
	daa			;7d98
	rrca			;7d99
	ld hl,(00009h)		;7d9a
	nop			;7d9d
	nop			;7d9e
	nop			;7d9f
	ld l,008h		;7da0
	inc bc			;7da2
	nop			;7da3
	ld (0290fh),hl		;7da4
	add hl,bc		;7da7
	inc bc			;7da8
	rrca			;7da9
	ld (hl),00fh		;7daa
	inc l			;7dac
	ex af,af'		;7dad
	ld (bc),a		;7dae
	nop			;7daf
	ld hl,(0270fh)		;7db0
	add hl,bc		;7db3
	inc bc			;7db4
	rrca			;7db5
	nop			;7db6
	nop			;7db7
	jr c,l7dc2h		;7db8
	nop			;7dba
	nop			;7dbb
	add hl,hl		;7dbc
	rrca			;7dbd
	ld (00309h),hl		;7dbe
	rrca			;7dc1
l7dc2h:
	nop			;7dc2
	nop			;7dc3
	nop			;7dc4
	nop			;7dc5
	inc bc			;7dc6
	nop			;7dc7
	daa			;7dc8
	rrca			;7dc9
	ld hl,(00009h)		;7dca
	nop			;7dcd
	dec (hl)		;7dce
	rrca			;7dcf
	nop			;7dd0
	nop			;7dd1
	ld bc,02200h		;7dd2
	rrca			;7dd5
	add hl,hl		;7dd6
	add hl,bc		;7dd7
	inc bc			;7dd8
	add hl,bc		;7dd9
	nop			;7dda
	nop			;7ddb
	ld (hl),008h		;7ddc
	nop			;7dde
	nop			;7ddf
	ld hl,(0270fh)		;7de0
	add hl,bc		;7de3
	inc bc			;7de4
	rrca			;7de5
	dec a			;7de6
	rrca			;7de7
	nop			;7de8
	nop			;7de9
	ld (bc),a		;7dea
	nop			;7deb
	add hl,hl		;7dec
	rrca			;7ded
	ld (00309h),hl		;7dee
	rrca			;7df1
	nop			;7df2
	nop			;7df3
	nop			;7df4
	nop			;7df5
	ld bc,02700h		;7df6
	rrca			;7df9
	ld hl,(00309h)		;7dfa
	rrca			;7dfd
	ld l,h			;7dfe
	ld bc,00835h		;7dff
	inc bc			;7e02
	nop			;7e03
	ld (0290fh),hl		;7e04
	add hl,bc		;7e07
	inc bc			;7e08
	rrca			;7e09
	ld h,a			;7e0a
	ld (bc),a		;7e0b
	nop			;7e0c
	nop			;7e0d
	ld bc,02a00h		;7e0e
	rrca			;7e11
	daa			;7e12
	add hl,bc		;7e13
	inc bc			;7e14
	rrca			;7e15
	ld l,h			;7e16
	ld bc,0083dh		;7e17
	nop			;7e1a
	nop			;7e1b
	add hl,hl		;7e1c
	rrca			;7e1d
	ld (00309h),hl		;7e1e
	rrca			;7e21
	nop			;7e22
	nop			;7e23
	ld h,a			;7e24
	ld (bc),a		;7e25
	inc bc			;7e26
	nop			;7e27
	daa			;7e28
	rrca			;7e29
	ld hl,(00009h)		;7e2a
	nop			;7e2d
	ld l,h			;7e2e
	ld bc,0016ch		;7e2f
	ld bc,02200h		;7e32
	rrca			;7e35
	add hl,hl		;7e36
	add hl,bc		;7e37
	inc bc			;7e38
	rrca			;7e39
	ld h,d			;7e3a
	ld (00000h),hl		;7e3b
	nop			;7e3e
	nop			;7e3f
	add hl,hl		;7e40
	rrca			;7e41
	daa			;7e42
	add hl,bc		;7e43
	ld bc,0380fh		;7e44
	ld a,(bc)		;7e47
	inc sp			;7e48
	rlca			;7e49
	ld bc,02700h		;7e4a
	rrca			;7e4d
	ld (00109h),hl		;7e4e
	rrca			;7e51
	nop			;7e52
	nop			;7e53
	nop			;7e54
	nop			;7e55
	nop			;7e56
	nop			;7e57
	dec h			;7e58
	rrca			;7e59
	add hl,hl		;7e5a
	add hl,bc		;7e5b
	ld bc,0310fh		;7e5c
	ld a,(bc)		;7e5f
	dec (hl)		;7e60
	rlca			;7e61
	inc bc			;7e62
	nop			;7e63
	jr nz,$+17		;7e64
	daa			;7e66
	add hl,bc		;7e67
	ld bc,0000fh		;7e68
	nop			;7e6b
	nop			;7e6c
	nop			;7e6d
	nop			;7e6e
	nop			;7e6f
	add hl,hl		;7e70
	rrca			;7e71
	dec h			;7e72
	add hl,bc		;7e73
	ld bc,0330fh		;7e74
	ld a,(bc)		;7e77
	ld (hl),007h		;7e78
	ld (bc),a		;7e7a
	nop			;7e7b
	daa			;7e7c
	rrca			;7e7d
	jr nz,l7e89h		;7e7e
	ld bc,0350fh		;7e80
	ld a,(bc)		;7e83
	jr c,l7e8dh		;7e84
	nop			;7e86
	nop			;7e87
	dec h			;7e88
l7e89h:
	rrca			;7e89
	add hl,hl		;7e8a
	add hl,bc		;7e8b
	nop			;7e8c
l7e8dh:
	nop			;7e8d
	ld h,a			;7e8e
	inc bc			;7e8f
	ld h,a			;7e90
	inc bc			;7e91
	ld bc,02000h		;7e92
	rrca			;7e95
	daa			;7e96
	add hl,bc		;7e97
	nop			;7e98
	nop			;7e99
	nop			;7e9a
	nop			;7e9b
	nop			;7e9c
	nop			;7e9d
	ld (bc),a		;7e9e
	nop			;7e9f
	add hl,hl		;7ea0
	rrca			;7ea1
	dec h			;7ea2
	add hl,bc		;7ea3
	nop			;7ea4
	nop			;7ea5
	ld h,c			;7ea6
	nop			;7ea7
	ld h,c			;7ea8
	nop			;7ea9
	ld (bc),a		;7eaa
	nop			;7eab
	daa			;7eac
	rrca			;7ead
	jr nz,l7eb9h		;7eae
	nop			;7eb0
	nop			;7eb1
	nop			;7eb2
	nop			;7eb3
	nop			;7eb4
	nop			;7eb5
	ld bc,02500h		;7eb6
l7eb9h:
	rrca			;7eb9
	add hl,hl		;7eba
	add hl,bc		;7ebb
	ld bc,0310fh		;7ebc
	ld a,(bc)		;7ebf
	dec (hl)		;7ec0
	rlca			;7ec1
	inc bc			;7ec2
	nop			;7ec3
	jr nz,$+17		;7ec4
	daa			;7ec6
	add hl,bc		;7ec7
	ld bc,0000fh		;7ec8
	nop			;7ecb
	nop			;7ecc
	nop			;7ecd
	ld bc,02900h		;7ece
	rrca			;7ed1
	dec h			;7ed2
	add hl,bc		;7ed3
	ld bc,0330fh		;7ed4
	ld a,(bc)		;7ed7
	ld (hl),007h		;7ed8
	inc bc			;7eda
	nop			;7edb
	daa			;7edc
	rrca			;7edd
	jr nz,l7ee9h		;7ede
	ld bc,0350fh		;7ee0
	ld a,(bc)		;7ee3
	jr c,l7eedh		;7ee4
	nop			;7ee6
	nop			;7ee7
	dec h			;7ee8
l7ee9h:
	rrca			;7ee9
	add hl,hl		;7eea
	add hl,bc		;7eeb
	nop			;7eec
l7eedh:
	nop			;7eed
	ld h,a			;7eee
	inc bc			;7eef
	ld h,a			;7ef0
	inc bc			;7ef1
	ld bc,02000h		;7ef2
	rrca			;7ef5
	daa			;7ef6
	add hl,bc		;7ef7
	nop			;7ef8
	nop			;7ef9
	nop			;7efa
	nop			;7efb
	nop			;7efc
	nop			;7efd
	nop			;7efe
	nop			;7eff
	add hl,hl		;7f00
	rrca			;7f01
	dec h			;7f02
	add hl,bc		;7f03
	ld bc,0000fh		;7f04
	nop			;7f07
	nop			;7f08
	nop			;7f09
	ld bc,02700h		;7f0a
	rrca			;7f0d
	jr nz,l7f19h		;7f0e
	ld bc,l610fh		;7f10
	nop			;7f13
	ld h,c			;7f14
	nop			;7f15
	nop			;7f16
	nop			;7f17
	dec h			;7f18
l7f19h:
	rrca			;7f19
	add hl,hl		;7f1a
	add hl,bc		;7f1b
	nop			;7f1c
	nop			;7f1d
	dec (hl)		;7f1e
	ld a,(bc)		;7f1f
	jr c,l7f29h		;7f20
	inc bc			;7f22
	nop			;7f23
	jr nz,$+17		;7f24
	daa			;7f26
	add hl,bc		;7f27
	nop			;7f28
l7f29h:
	nop			;7f29
	nop			;7f2a
	nop			;7f2b
	nop			;7f2c
	nop			;7f2d
	ld (bc),a		;7f2e
	nop			;7f2f
	add hl,hl		;7f30
	rrca			;7f31
	dec h			;7f32
	add hl,bc		;7f33
	ld bc,0000fh		;7f34
	nop			;7f37
	nop			;7f38
	nop			;7f39
	nop			;7f3a
	nop			;7f3b
	daa			;7f3c
	rrca			;7f3d
	jr nz,l7f49h		;7f3e
	ld bc,l610fh		;7f40
	nop			;7f43
	ld h,c			;7f44
	nop			;7f45
	inc bc			;7f46
	nop			;7f47
	dec h			;7f48
l7f49h:
	rrca			;7f49
	add hl,hl		;7f4a
	add hl,bc		;7f4b
	ld bc,0350fh		;7f4c
	ld a,(bc)		;7f4f
	jr c,$+9		;7f50
	ld bc,02000h		;7f52
	rrca			;7f55
	daa			;7f56
	add hl,bc		;7f57
	ld bc,0000fh		;7f58
	nop			;7f5b
	nop			;7f5c
	nop			;7f5d
	nop			;7f5e
	nop			;7f5f
	add hl,hl		;7f60
	rrca			;7f61
	dec h			;7f62
	add hl,bc		;7f63
	ld bc,l610fh		;7f64
	nop			;7f67
	ld h,c			;7f68
	nop			;7f69
	ld (bc),a		;7f6a
	nop			;7f6b
	daa			;7f6c
	rrca			;7f6d
	jr nz,l7f79h		;7f6e
	ld bc,l620fh		;7f70
	inc c			;7f73
	nop			;7f74
	nop			;7f75
	ld bc,02500h		;7f76
l7f79h:
	rrca			;7f79
	add hl,hl		;7f7a
	add hl,bc		;7f7b
	ld bc,0350fh		;7f7c
	dec c			;7f7f
	jr c,l7f8ch		;7f80
	inc bc			;7f82
	nop			;7f83
	jr nz,l7f95h		;7f84
	daa			;7f86
	add hl,bc		;7f87
	ld bc,0000fh		;7f88
	nop			;7f8b
l7f8ch:
	nop			;7f8c
	nop			;7f8d
	ld bc,02900h		;7f8e
	rrca			;7f91
	dec h			;7f92
	add hl,bc		;7f93
	nop			;7f94
l7f95h:
	nop			;7f95
	inc sp			;7f96
	dec c			;7f97
	ld (hl),00ah		;7f98
	nop			;7f9a
	nop			;7f9b
	daa			;7f9c
	rrca			;7f9d
	jr nz,l7fa9h		;7f9e
	ld bc,0000fh		;7fa0
	nop			;7fa3
	nop			;7fa4
	nop			;7fa5
	inc bc			;7fa6
	nop			;7fa7
	dec h			;7fa8
l7fa9h:
	rrca			;7fa9
	add hl,hl		;7faa
	add hl,bc		;7fab
	nop			;7fac
	nop			;7fad
	ld sp,0350dh		;7fae
	ld a,(bc)		;7fb1
	ld bc,02000h		;7fb2
	rrca			;7fb5
	daa			;7fb6
	add hl,bc		;7fb7
	nop			;7fb8
	nop			;7fb9
	nop			;7fba
	nop			;7fbb
	nop			;7fbc
	nop			;7fbd
	nop			;7fbe
	nop			;7fbf
	ld hl,(0000fh)		;7fc0
	nop			;7fc3
	inc bc			;7fc4
	rrca			;7fc5
	nop			;7fc6
	nop			;7fc7
	nop			;7fc8
	nop			;7fc9
	ld bc,02900h		;7fca
	rrca			;7fcd
	nop			;7fce
	nop			;7fcf
	inc bc			;7fd0
	rrca			;7fd1
	nop			;7fd2
	nop			;7fd3
	nop			;7fd4
	nop			;7fd5
	nop			;7fd6
	nop			;7fd7
	daa			;7fd8
	rrca			;7fd9
	ld hl,(00309h)		;7fda
	rrca			;7fdd
	ld l,00fh		;7fde
	nop			;7fe0
	nop			;7fe1
	inc bc			;7fe2
	nop			;7fe3
	ld (0290fh),hl		;7fe4
	add hl,bc		;7fe7
	inc bc			;7fe8
	rrca			;7fe9
	ld h,c			;7fea
	nop			;7feb
	nop			;7fec
	nop			;7fed
	nop			;7fee
	nop			;7fef
	ld hl,(0270fh)		;7ff0
	add hl,bc		;7ff3
	inc bc			;7ff4
	rrca			;7ff5
	ld l,00fh		;7ff6
	nop			;7ff8
	nop			;7ff9
	ld (bc),a		;7ffa
	nop			;7ffb
	add hl,hl		;7ffc
	rrca			;7ffd
	defb 022h,009h		;7ffe
