; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank18.asm /tmp/smanbow2_bank_18.bin

	org 04000h

l4000h:
	ld c,h			;4000
	ld sp,03532h		;4001
	add hl,sp		;4004
	ld e,c			;4005
	jr nz,l4028h		;4006
	ld (hl),b		;4008
	ld (hl),b		;4009
	ld (hl),b		;400a
	ld (hl),b		;400b
	ld (hl),b		;400c
	ld (hl),b		;400d
	ld (hl),b		;400e
	ld (hl),b		;400f
	add a,b			;4010
	add a,b			;4011
	add a,b			;4012
	add a,b			;4013
	add a,b			;4014
	add a,b			;4015
	add a,b			;4016
	add a,b			;4017
	ld (hl),b		;4018
	ld (hl),b		;4019
	ld (hl),b		;401a
	add a,b			;401b
	add a,b			;401c
	add a,b			;401d
	ld (hl),b		;401e
	ld (hl),b		;401f
	ld (hl),b		;4020
	ld (hl),b		;4021
	add a,b			;4022
	add a,b			;4023
	add a,b			;4024
	add a,b			;4025
	add a,b			;4026
	add a,b			;4027
l4028h:
	ld c,h			;4028
	ld e,d			;4029
	jr nz,l404ch		;402a
	jr nz,l404eh		;402c
	jr nz,l4050h		;402e
	ld a,b			;4030
	ld (hl),b		;4031
	ld l,b			;4032
	ld h,b			;4033
	ld e,b			;4034
	ld d,b			;4035
	ld c,b			;4036
	ld b,b			;4037
	jr c,l406ah		;4038
	jr z,l405ch		;403a
	jr l404eh		;403c
	ex af,af'		;403e
	nop			;403f
	ld a,b			;4040
	ld (hl),b		;4041
	ld l,b			;4042
	ld h,b			;4043
	ld e,b			;4044
	ld d,b			;4045
	ld c,b			;4046
	ld b,b			;4047
	jr c,$+50		;4048
	jr z,l406ch		;404a
l404ch:
	jr l405eh		;404c
l404eh:
	ex af,af'		;404e
	nop			;404f
l4050h:
	ld c,h			;4050
l4051h:
	scf			;4051
	ld h,c			;4052
	jr nz,l4075h		;4053
	jr nz,l4077h		;4055
	jr nz,l4059h		;4057
l4059h:
	ret p			;4059
	ret po			;405a
	ret nc			;405b
l405ch:
	ret nz			;405c
	or b			;405d
l405eh:
	and b			;405e
	sub b			;405f
	add a,b			;4060
	add a,b			;4061
	add a,b			;4062
	add a,b			;4063
	add a,b			;4064
	add a,b			;4065
	add a,b			;4066
	add a,b			;4067
	add a,b			;4068
	add a,b			;4069
l406ah:
	add a,b			;406a
	add a,b			;406b
l406ch:
	add a,b			;406c
	add a,b			;406d
	add a,b			;406e
	add a,b			;406f
	ld a,a			;4070
	ld (hl),b		;4071
	ld h,b			;4072
	ld d,b			;4073
	ld b,b			;4074
l4075h:
	jr nc,l4097h		;4075
l4077h:
	djnz l40c5h		;4077
	ld (02061h),a		;4079
	jr nz,l409eh		;407c
	jr nz,l40a0h		;407e
	nop			;4080
	ld a,a			;4081
	nop			;4082
	add a,b			;4083
	and b			;4084
	ret nz			;4085
	ret c			;4086
	ret p			;4087
	ex af,af'		;4088
	jr nz,l40bbh		;4089
	ld b,b			;408b
	ld d,b			;408c
	ld h,b			;408d
	ld (hl),b		;408e
	ld a,b			;408f
	ld a,h			;4090
	ld a,a			;4091
	ld a,h			;4092
	ld a,b			;4093
	ld (hl),b		;4094
	ld h,b			;4095
	ld d,b			;4096
l4097h:
	ld b,b			;4097
	jr nc,l40bah		;4098
	ex af,af'		;409a
	ret p			;409b
	ret c			;409c
	ret nz			;409d
l409eh:
	and b			;409e
	add a,b			;409f
l40a0h:
	ld c,h			;40a0
	add hl,sp		;40a1
	ld h,l			;40a2
	jr nz,l40c5h		;40a3
	jr nz,l40c7h		;40a5
	jr nz,l40a9h		;40a7
l40a9h:
	ret m			;40a9
	ret p			;40aa
	ret pe			;40ab
	ret po			;40ac
	ret c			;40ad
	ret nc			;40ae
	ret z			;40af
	ret nz			;40b0
	cp b			;40b1
	or b			;40b2
	xor b			;40b3
	and b			;40b4
	sbc a,b			;40b5
	sub b			;40b6
	adc a,b			;40b7
	add a,b			;40b8
	ld a,b			;40b9
l40bah:
	ld (hl),b		;40ba
l40bbh:
	ld l,b			;40bb
	ld h,b			;40bc
	ld e,b			;40bd
	ld d,b			;40be
	ld c,b			;40bf
	ld b,b			;40c0
	jr c,$+50		;40c1
	jr z,l40e5h		;40c3
l40c5h:
	jr $+18			;40c5
l40c7h:
	ex af,af'		;40c7
	ld c,h			;40c8
l40c9h:
	add hl,sp		;40c9
	ld h,h			;40ca
	jr nz,l40edh		;40cb
	jr nz,l40efh		;40cd
	jr nz,l4051h		;40cf
	or b			;40d1
	ret nz			;40d2
	djnz l40efh		;40d3
	ld hl,(01a2ch)		;40d5
	nop			;40d8
	ret po			;40d9
	ret nc			;40da
	ret po			;40db
	ld (l7053h),hl		;40dc
	ld (hl),l		;40df
	ld (hl),b		;40e0
	ld sp,080eah		;40e1
	adc a,b			;40e4
l40e5h:
	adc a,d			;40e5
	adc a,h			;40e6
	adc a,(hl)		;40e7
	nop			;40e8
	ld a,a			;40e9
	ld (hl),l		;40ea
	ld (hl),e		;40eb
	ld h,d			;40ec
l40edh:
	nop			;40ed
	ret nz			;40ee
l40efh:
	sub b			;40ef
	ld c,h			;40f0
	ld sp,l6232h		;40f1
	jr nz,l4116h		;40f4
	jr nz,$+34		;40f6
	add a,b			;40f8
	ld a,b			;40f9
	ld (hl),b		;40fa
l40fbh:
	ld l,b			;40fb
	ld h,b			;40fc
	ld e,b			;40fd
	ld d,b			;40fe
	ld c,b			;40ff
	ld b,b			;4100
	jr c,l4133h		;4101
	jr z,l4125h		;4103
	jr l4117h		;4105
	ex af,af'		;4107
	nop			;4108
	jr nc,l40fbh		;4109
	jr nc,l414dh		;410b
	ld d,b			;410d
	ld h,b			;410e
	ld h,b			;410f
	ld (hl),b		;4110
	ld a,c			;4111
	ld (hl),b		;4112
	ld a,b			;4113
	ld b,b			;4114
	nop			;4115
l4116h:
	nop			;4116
l4117h:
	ld c,04ch		;4117
	dec (hl)		;4119
	ld h,c			;411a
	jr nz,l413dh		;411b
	jr nz,l413fh		;411d
	jr nz,l4191h		;411f
	add a,e			;4121
	ld h,b			;4122
l4123h:
	ld d,b			;4123
	nop			;4124
l4125h:
	nop			;4125
	nop			;4126
	ld h,074h		;4127
	add a,d			;4129
	add a,h			;412a
	ld h,l			;412b
	ld h,h			;412c
	call po,08493h		;412d
	nop			;4130
	jr nc,l4123h		;4131
l4133h:
	jr nc,l4175h		;4133
	ld d,b			;4135
	ld h,b			;4136
	ld h,b			;4137
	ld (hl),b		;4138
	ld a,c			;4139
	ld (hl),b		;413a
	ld a,b			;413b
	ld b,b			;413c
l413dh:
	nop			;413d
	nop			;413e
l413fh:
	ld c,04ch		;413f
	inc (hl)		;4141
	ld h,c			;4142
	jr nz,l4165h		;4143
	jr nz,l4167h		;4145
	jr nz,l40c9h		;4147
	or b			;4149
	ret nz			;414a
	djnz l4167h		;414b
l414dh:
	ld hl,(01a2ch)		;414d
	nop			;4150
	ret po			;4151
	ret nc			;4152
	ret po			;4153
	ld (l7053h),hl		;4154
l4157h:
	ld (hl),l		;4157
	ld (hl),b		;4158
	ld sp,080eah		;4159
	adc a,b			;415c
	adc a,d			;415d
	adc a,h			;415e
	adc a,(hl)		;415f
	nop			;4160
	ld a,a			;4161
	ld (hl),l		;4162
	ld (hl),e		;4163
	ld h,d			;4164
l4165h:
	nop			;4165
	ret nz			;4166
l4167h:
	sub b			;4167
	ld c,h			;4168
	inc (hl)		;4169
	ld e,c			;416a
	jr nz,l418dh		;416b
	jr nz,l418fh		;416d
	jr nz,l4171h		;416f
l4171h:
	ret m			;4171
	ret p			;4172
	ret pe			;4173
	ret po			;4174
l4175h:
	ret c			;4175
	ret nc			;4176
	ret z			;4177
	ret nz			;4178
	cp b			;4179
	or b			;417a
	xor b			;417b
	and b			;417c
	sbc a,b			;417d
	sub b			;417e
	adc a,b			;417f
	add a,b			;4180
	ld a,b			;4181
	ld (hl),b		;4182
	ld l,b			;4183
	ld h,b			;4184
	ld e,b			;4185
	ld d,b			;4186
	ld c,b			;4187
	ld b,b			;4188
	jr c,l41bbh		;4189
	jr z,l41adh		;418b
l418dh:
	jr l419fh		;418d
l418fh:
	ex af,af'		;418f
	ld c,h			;4190
l4191h:
	inc (hl)		;4191
	ld (hl),h		;4192
	ld l,a			;4193
	ld l,l			;4194
	ld (hl),e		;4195
	ld h,c			;4196
	jr nz,l4199h		;4197
l4199h:
	add hl,de		;4199
	ld sp,l5a47h		;419a
	ld l,d			;419d
	ld (hl),l		;419e
l419fh:
	ld a,l			;419f
	ld a,a			;41a0
	ld a,l			;41a1
	ld (hl),l		;41a2
	ld l,d			;41a3
	ld e,d			;41a4
	ld b,a			;41a5
	ld sp,00019h		;41a6
	rst 20h			;41a9
	rst 8			;41aa
	cp c			;41ab
	and (hl)		;41ac
l41adh:
	sub (hl)		;41ad
	adc a,e			;41ae
	add a,e			;41af
	add a,b			;41b0
	add a,e			;41b1
	adc a,e			;41b2
	sub (hl)		;41b3
	and (hl)		;41b4
	cp c			;41b5
	rst 8			;41b6
	rst 20h			;41b7
	ld c,h			;41b8
	inc (hl)		;41b9
	ld (hl),h		;41ba
l41bbh:
	ld l,a			;41bb
	ld l,l			;41bc
	ld (hl),e		;41bd
	ld h,d			;41be
	jr nz,l4157h		;41bf
	adc a,e			;41c1
	add a,e			;41c2
	add a,b			;41c3
	add a,e			;41c4
	add a,l			;41c5
	adc a,l			;41c6
	sbc a,d			;41c7
	xor h			;41c8
	rst 0			;41c9
	rst 20h			;41ca
	nop			;41cb
	add hl,de		;41cc
	ld sp,l5a47h		;41cd
	ld l,d			;41d0
	ld (hl),l		;41d1
	ld a,l			;41d2
	ld a,a			;41d3
	ld a,l			;41d4
	ld (hl),l		;41d5
	ld l,d			;41d6
	ld e,d			;41d7
	ld b,a			;41d8
	ld sp,00019h		;41d9
	rst 20h			;41dc
	rst 8			;41dd
	cp c			;41de
	and (hl)		;41df
	ld c,h			;41e0
	dec (hl)		;41e1
	ld h,h			;41e2
	jr nz,l4205h		;41e3
	jr nz,l4207h		;41e5
	jr nz,l4268h		;41e7
	dec bc			;41e9
	ld (bc),a		;41ea
	ret m			;41eb
	xor 0e4h		;41ec
	jp c,0c6d0h		;41ee
	cp l			;41f1
	or e			;41f2
	xor c			;41f3
	sbc a,(hl)		;41f4
	sub h			;41f5
	adc a,e			;41f6
	add a,b			;41f7
	add a,b			;41f8
	adc a,e			;41f9
	sub h			;41fa
	sbc a,(hl)		;41fb
	xor c			;41fc
	or d			;41fd
	cp h			;41fe
	rst 0			;41ff
	ret nc			;4200
	jp c,0eee5h		;4201
	ret m			;4204
l4205h:
	ld (bc),a		;4205
	inc c			;4206
l4207h:
	ld a,a			;4207
	ld c,h			;4208
	scf			;4209
	ld h,d			;420a
	jr nz,l422dh		;420b
	jr nz,l422fh		;420d
	jr nz,l4211h		;420f
l4211h:
	ret p			;4211
	ret po			;4212
	ret nc			;4213
	ret nz			;4214
	or b			;4215
	and b			;4216
	sub b			;4217
	add a,b			;4218
	add a,b			;4219
	add a,b			;421a
	add a,b			;421b
	add a,b			;421c
	add a,b			;421d
	add a,b			;421e
	add a,b			;421f
	add a,b			;4220
	add a,b			;4221
	add a,b			;4222
	add a,b			;4223
	add a,b			;4224
	add a,b			;4225
	add a,b			;4226
	add a,b			;4227
	ld a,a			;4228
	ld (hl),b		;4229
	ld h,b			;422a
	ld d,b			;422b
	ld b,b			;422c
l422dh:
	jr nc,l424fh		;422d
l422fh:
	djnz l427dh		;422f
	ld (02064h),a		;4231
	jr nz,$+34		;4234
	jr nz,l4258h		;4236
	nop			;4238
	ld de,02d1fh		;4239
	jr c,$+114		;423c
	ld (hl),c		;423e
	ld c,l			;423f
	ld c,l			;4240
	add hl,de		;4241
	inc de			;4242
	inc c			;4243
	jr c,l4273h		;4244
	rra			;4246
	ld de,01a2ch		;4247
	ld b,0c6h		;424a
	add a,b			;424c
	sub (hl)		;424d
	ret c			;424e
l424fh:
	jp pe,01600h		;424f
	ld d,d			;4252
	ld l,b			;4253
	ld c,l			;4254
	ld a,(0e2f2h)		;4255
l4258h:
	ld c,h			;4258
l4259h:
	ld e,b			;4259
	jr nz,l427ch		;425a
	jr nz,l427eh		;425c
	jr nz,l4280h		;425e
	ld a,a			;4260
	ld a,a			;4261
	ld a,a			;4262
	ld a,a			;4263
	ld a,a			;4264
	ld a,a			;4265
	ld a,a			;4266
	ld a,a			;4267
l4268h:
	rlca			;4268
	cp (hl)			;4269
	sub h			;426a
	adc a,e			;426b
	sbc a,d			;426c
	and l			;426d
	xor h			;426e
	pop bc			;426f
	ld a,a			;4270
	ld a,a			;4271
	ld a,a			;4272
l4273h:
	adc a,094h		;4273
	and b			;4275
	ld a,a			;4276
	ld a,a			;4277
	ld a,a			;4278
	ld a,a			;4279
	ld a,a			;427a
	xor b			;427b
l427ch:
	xor (hl)		;427c
l427dh:
	push bc			;427d
l427eh:
	ex (sp),hl		;427e
	ld a,a			;427f
l4280h:
	ld c,h			;4280
l4281h:
	ld (02063h),a		;4281
	jr nz,l42a6h		;4284
	jr nz,l42a8h		;4286
	nop			;4288
	nop			;4289
	nop			;428a
	nop			;428b
	nop			;428c
	ld (hl),b		;428d
	ld (hl),b		;428e
	nop			;428f
	nop			;4290
	add a,b			;4291
	add a,b			;4292
	add a,b			;4293
	nop			;4294
	nop			;4295
	nop			;4296
	nop			;4297
	ld (hl),b		;4298
	ld (hl),b		;4299
	ld (hl),b		;429a
l429bh:
	nop			;429b
	add a,b			;429c
	add a,b			;429d
	nop			;429e
	nop			;429f
	nop			;42a0
	nop			;42a1
	ld (hl),b		;42a2
	ld (hl),b		;42a3
	nop			;42a4
	nop			;42a5
l42a6h:
	add a,b			;42a6
	add a,b			;42a7
l42a8h:
	ld c,h			;42a8
l42a9h:
	ld (hl),066h		;42a9
	jr nz,l42cdh		;42ab
	jr nz,l42cfh		;42ad
	jr nz,l42b1h		;42af
l42b1h:
	add hl,de		;42b1
	ld sp,l5a47h		;42b2
l42b5h:
	ld l,d			;42b5
	ld (hl),l		;42b6
	ld a,l			;42b7
	ld a,a			;42b8
	ld a,l			;42b9
	ld (hl),l		;42ba
l42bbh:
	ld l,d			;42bb
	ld e,d			;42bc
	ld b,a			;42bd
	ld sp,08019h		;42be
	sub b			;42c1
	and b			;42c2
	or b			;42c3
	ret nz			;42c4
	ret nc			;42c5
	ret po			;42c6
	ret p			;42c7
	nop			;42c8
	djnz l42ebh		;42c9
	jr nc,l430dh		;42cb
l42cdh:
	ld d,b			;42cd
	ld h,b			;42ce
l42cfh:
	ld (hl),b		;42cf
l42d0h:
	ld c,h			;42d0
	ld (hl),064h		;42d1
	jr nz,l42f5h		;42d3
	jr nz,l42f7h		;42d5
	jr nz,l4259h		;42d7
	ret nc			;42d9
	jr nz,l435bh		;42da
	ld b,b			;42dc
	nop			;42dd
	ret nz			;42de
	add a,b			;42df
	ret nc			;42e0
	jr nz,l4362h		;42e1
	jr nc,l42b5h		;42e3
	add a,b			;42e5
	ret nc			;42e6
	jr nc,l4368h		;42e7
	jr nc,l42bbh		;42e9
l42ebh:
	add a,b			;42eb
	or b			;42ec
	ret po			;42ed
	jr l42d0h		;42ee
	or b			;42f0
	add a,b			;42f1
	sub b			;42f2
	and b			;42f3
	or b			;42f4
l42f5h:
	and b			;42f5
	sub b			;42f6
l42f7h:
	add a,b			;42f7
	ld c,h			;42f8
l42f9h:
	add hl,sp		;42f9
	ld h,d			;42fa
	jr nz,$+34		;42fb
	jr nz,l431fh		;42fd
	jr nz,l4281h		;42ff
	add a,b			;4301
	ret pe			;4302
	jr l433dh		;4303
	ld h,(hl)		;4305
	ld a,b			;4306
	ld a,a			;4307
	add a,b			;4308
	add a,b			;4309
	add a,b			;430a
	add a,b			;430b
	add a,b			;430c
l430dh:
	add a,b			;430d
	add a,b			;430e
	sbc a,h			;430f
	add a,b			;4310
	call c,02080h		;4311
	ret nc			;4314
	add a,b			;4315
	ld a,a			;4316
	add a,b			;4317
	ret nc			;4318
	jr nz,l429bh		;4319
	call c,09c80h		;431b
	add a,b			;431e
l431fh:
	adc a,b			;431f
	ld c,h			;4320
	dec (hl)		;4321
	ld e,d			;4322
	jr nz,l4345h		;4323
	jr nz,l4347h		;4325
	jr nz,l42a9h		;4327
	or b			;4329
	ret nz			;432a
	djnz l4347h		;432b
	ld hl,(01a2ch)		;432d
	nop			;4330
	ret po			;4331
	ret nc			;4332
	ret po			;4333
	ld (l7053h),hl		;4334
	ld (hl),l		;4337
	ld (hl),b		;4338
	ld sp,080eah		;4339
	adc a,b			;433c
l433dh:
	adc a,d			;433d
	adc a,h			;433e
	adc a,(hl)		;433f
	nop			;4340
	nop			;4341
	nop			;4342
	nop			;4343
	nop			;4344
l4345h:
	ld (hl),b		;4345
	ld (hl),b		;4346
l4347h:
	nop			;4347
	ld c,h			;4348
	ld sp,02063h		;4349
	jr nz,l436eh		;434c
	jr nz,l4370h		;434e
	jr nc,$+6		;4350
	ld (bc),a		;4352
	nop			;4353
	ld (02204h),hl		;4354
	ld (bc),a		;4357
	djnz l436ah		;4358
	nop			;435a
l435bh:
	nop			;435b
	nop			;435c
	djnz l435fh		;435d
l435fh:
	nop			;435f
	add a,b			;4360
	ld b,b			;4361
l4362h:
	nop			;4362
	nop			;4363
	ld b,b			;4364
	nop			;4365
	ld b,b			;4366
	ld b,b			;4367
l4368h:
	nop			;4368
	nop			;4369
l436ah:
	nop			;436a
	add a,b			;436b
	nop			;436c
	add a,b			;436d
l436eh:
	nop			;436e
	nop			;436f
l4370h:
	ld c,h			;4370
	ld (hl),039h		;4371
	jr nz,$+34		;4373
	jr nz,l4397h		;4375
	jr nz,l42f9h		;4377
	add a,b			;4379
	ret pe			;437a
	jr l43b5h		;437b
	ld h,(hl)		;437d
	ld a,b			;437e
	ld a,a			;437f
	add a,b			;4380
	add a,b			;4381
	add a,b			;4382
	add a,b			;4383
	add a,b			;4384
	add a,b			;4385
	add a,b			;4386
	sbc a,h			;4387
	add a,b			;4388
	call c,02080h		;4389
	ret nc			;438c
	add a,b			;438d
	ld a,a			;438e
	add a,b			;438f
	ret nc			;4390
	jr nz,$-126		;4391
	call c,09c80h		;4393
	add a,b			;4396
l4397h:
	adc a,b			;4397
	ld c,h			;4398
	inc sp			;4399
	ld (hl),039h		;439a
	jr nz,l43beh		;439c
	jr nz,$+34		;439e
	nop			;43a0
	add hl,de		;43a1
	ld sp,l5a47h		;43a2
	ld l,d			;43a5
	ld (hl),l		;43a6
	ld a,l			;43a7
	ld a,a			;43a8
	ld a,l			;43a9
	ld (hl),l		;43aa
	ld l,d			;43ab
	ld e,d			;43ac
	ld b,a			;43ad
	ld sp,00019h		;43ae
	ret po			;43b1
	ret nz			;43b2
	and b			;43b3
	add a,b			;43b4
l43b5h:
	and b			;43b5
	ret nz			;43b6
	ret po			;43b7
	nop			;43b8
	jr nz,l43fbh		;43b9
	ld h,b			;43bb
	ld a,a			;43bc
	ld h,b			;43bd
l43beh:
	ld b,b			;43be
	jr nz,l440dh		;43bf
	ld (hl),05ah		;43c1
	jr nz,l43e5h		;43c3
	jr nz,l43e7h		;43c5
	jr nz,l43c9h		;43c7
l43c9h:
	add hl,de		;43c9
	ld sp,l5a47h		;43ca
	ld l,d			;43cd
	ld (hl),l		;43ce
	ld a,l			;43cf
	ld a,a			;43d0
	ld a,l			;43d1
	ld (hl),l		;43d2
	ld l,d			;43d3
	ld e,d			;43d4
	ld b,a			;43d5
	ld sp,08019h		;43d6
	and b			;43d9
	ret nz			;43da
	ret po			;43db
	nop			;43dc
	jr nz,l441fh		;43dd
	ld h,b			;43df
	add a,b			;43e0
	and b			;43e1
	ret nz			;43e2
	ret po			;43e3
	nop			;43e4
l43e5h:
	jr nz,l4427h		;43e5
l43e7h:
	ld h,b			;43e7
	ld c,h			;43e8
	ld sp,02064h		;43e9
	jr nz,l440eh		;43ec
	jr nz,l4410h		;43ee
	nop			;43f0
	ld b,b			;43f1
	ld a,a			;43f2
	ld b,b			;43f3
	ld bc,081c0h		;43f4
	ret nz			;43f7
	ld bc,l7f40h		;43f8
l43fbh:
	ld b,b			;43fb
	ld bc,001c0h		;43fc
	ld b,b			;43ff
	ld bc,001e0h		;4400
	jr nz,l4406h		;4403
	ret p			;4405
l4406h:
	ld bc,00110h		;4406
	rst 38h			;4409
	rst 38h			;440a
	rst 38h			;440b
	rst 38h			;440c
l440dh:
	ld b,b			;440d
l440eh:
	ld b,b			;440e
	ld b,b			;440f
l4410h:
	ld c,h			;4410
	ld e,b			;4411
	ld h,c			;4412
	jr nz,l4435h		;4413
	jr nz,l4437h		;4415
	jr nz,l4498h		;4417
	nop			;4419
	add a,b			;441a
	nop			;441b
	ld a,a			;441c
l441dh:
	nop			;441d
	add a,b			;441e
l441fh:
	nop			;441f
	ld a,a			;4420
	nop			;4421
	add a,b			;4422
l4423h:
	nop			;4423
	ld a,a			;4424
	nop			;4425
	add a,b			;4426
l4427h:
	nop			;4427
	ld a,a			;4428
	nop			;4429
l442ah:
	add a,b			;442a
	nop			;442b
	ld a,a			;442c
	nop			;442d
	add a,b			;442e
	nop			;442f
	ld a,a			;4430
	nop			;4431
	add a,b			;4432
	nop			;4433
	ld a,a			;4434
l4435h:
	nop			;4435
	add a,b			;4436
l4437h:
	ld a,a			;4437
l4438h:
	ld c,h			;4438
	inc sp			;4439
	ld (hl),061h		;443a
	jr nz,l445eh		;443c
	jr nz,l4460h		;443e
	add a,b			;4440
	ret nc			;4441
	jr nz,l44c3h		;4442
	ld b,b			;4444
	nop			;4445
	ret nz			;4446
	add a,b			;4447
	ret nc			;4448
	jr nz,l44cah		;4449
	jr nc,l441dh		;444b
	add a,b			;444d
	ret nc			;444e
	jr nc,l44d0h		;444f
	jr nc,l4423h		;4451
	add a,b			;4453
	or b			;4454
	ret po			;4455
	jr l4438h		;4456
	or b			;4458
	add a,b			;4459
	sub b			;445a
	and b			;445b
	or b			;445c
	and b			;445d
l445eh:
	sub b			;445e
	add a,b			;445f
l4460h:
	ld c,h			;4460
l4461h:
	inc sp			;4461
	ld h,d			;4462
	jr nz,l4485h		;4463
	jr nz,l4487h		;4465
	jr nz,l4469h		;4467
l4469h:
	ld b,b			;4469
	ld a,a			;446a
	ld b,b			;446b
	ld bc,081c0h		;446c
	ret nz			;446f
	ld bc,l7f40h		;4470
	ld b,b			;4473
	ld bc,001c0h		;4474
	ld b,b			;4477
	ld bc,001e0h		;4478
	jr nz,l447eh		;447b
	ret p			;447d
l447eh:
	ld bc,00110h		;447e
	rst 38h			;4481
	rst 38h			;4482
	rst 38h			;4483
	rst 38h			;4484
l4485h:
	ld b,b			;4485
	ld b,b			;4486
l4487h:
	ld b,b			;4487
	ld c,h			;4488
	ld (02062h),a		;4489
	jr nz,l44aeh		;448c
	jr nz,l44b0h		;448e
	add a,b			;4490
	add a,b			;4491
	nop			;4492
	add a,b			;4493
	nop			;4494
	add a,b			;4495
	add a,b			;4496
	add a,b			;4497
l4498h:
	jr nz,l44dah		;4498
	ld h,b			;449a
	ld b,b			;449b
	jr nz,l44beh		;449c
	ld h,b			;449e
	ld h,b			;449f
	ld (hl),b		;44a0
	ld (hl),b		;44a1
	ld a,b			;44a2
	ld a,b			;44a3
	ld a,b			;44a4
	ld a,b			;44a5
	ld a,b			;44a6
	ld h,b			;44a7
	nop			;44a8
	nop			;44a9
	nop			;44aa
	add a,b			;44ab
	nop			;44ac
	add a,b			;44ad
l44aeh:
	nop			;44ae
	add a,b			;44af
l44b0h:
	ld c,h			;44b0
	add hl,sp		;44b1
	ld h,c			;44b2
	jr nz,l44d5h		;44b3
	jr nz,l44d7h		;44b5
	jr nz,l44b9h		;44b7
l44b9h:
	nop			;44b9
	nop			;44ba
	nop			;44bb
	nop			;44bc
	ld (hl),b		;44bd
l44beh:
	ld (hl),b		;44be
	nop			;44bf
	nop			;44c0
l44c1h:
	add a,b			;44c1
	add a,b			;44c2
l44c3h:
	add a,b			;44c3
	nop			;44c4
	nop			;44c5
	nop			;44c6
	nop			;44c7
	ld (hl),b		;44c8
	ld (hl),b		;44c9
l44cah:
	ld (hl),b		;44ca
	nop			;44cb
	add a,b			;44cc
	add a,b			;44cd
	nop			;44ce
	nop			;44cf
l44d0h:
	nop			;44d0
	nop			;44d1
	ld (hl),b		;44d2
	ld (hl),b		;44d3
	nop			;44d4
l44d5h:
	nop			;44d5
	add a,b			;44d6
l44d7h:
	add a,b			;44d7
	ld c,h			;44d8
	dec (hl)		;44d9
l44dah:
	ld e,b			;44da
	jr nz,l44fdh		;44db
	jr nz,l44ffh		;44dd
	jr nz,l4461h		;44df
	ld (hl),b		;44e1
	add a,b			;44e2
	ld (hl),b		;44e3
	add a,b			;44e4
	ld (hl),b		;44e5
	add a,b			;44e6
	ld (hl),b		;44e7
	ld (hl),b		;44e8
	add a,b			;44e9
	ld (hl),b		;44ea
	add a,b			;44eb
	add a,b			;44ec
	add a,b			;44ed
	ld (hl),b		;44ee
	ld (hl),b		;44ef
	add a,b			;44f0
	ld (hl),b		;44f1
	add a,b			;44f2
	add a,b			;44f3
	add a,b			;44f4
	ld (hl),b		;44f5
	ld (hl),b		;44f6
	ld (hl),b		;44f7
	ld (hl),b		;44f8
	add a,b			;44f9
	add a,b			;44fa
	add a,b			;44fb
	ld (hl),b		;44fc
l44fdh:
	add a,b			;44fd
	ld (hl),b		;44fe
l44ffh:
	add a,b			;44ff
	ld c,h			;4500
	ld (hl),062h		;4501
	jr nz,l4525h		;4503
	jr nz,l4527h		;4505
	jr nz,l4588h		;4507
	ld a,a			;4509
	ld a,a			;450a
	ld a,a			;450b
	ld a,a			;450c
	ld a,a			;450d
	ld a,a			;450e
	ld a,a			;450f
	ld a,a			;4510
	ld a,a			;4511
	ld a,a			;4512
	ld a,a			;4513
	ld a,a			;4514
	ld a,a			;4515
	ld a,a			;4516
	ld a,a			;4517
	add a,b			;4518
	add a,b			;4519
	add a,b			;451a
	add a,b			;451b
	add a,b			;451c
	add a,b			;451d
	add a,b			;451e
	add a,b			;451f
	add a,b			;4520
	add a,b			;4521
	add a,b			;4522
	add a,b			;4523
	add a,b			;4524
l4525h:
	add a,b			;4525
	add a,b			;4526
l4527h:
	add a,b			;4527
	ld c,h			;4528
	add hl,sp		;4529
	ld h,e			;452a
	jr nz,l454dh		;452b
	jr nz,l454fh		;452d
	jr nz,l44c1h		;452f
	adc a,b			;4531
	sub b			;4532
	sbc a,h			;4533
	or b			;4534
	ret nz			;4535
	ret po			;4536
	ld h,070h		;4537
	ld a,h			;4539
	ld (hl),b		;453a
	ld d,(hl)		;453b
	ld b,b			;453c
	jr nz,l454fh		;453d
	call m,0fce0h		;453f
	djnz $+38		;4542
	ld b,b			;4544
	ld d,h			;4545
	ld (hl),d		;4546
	ld a,a			;4547
	ld (hl),b		;4548
	ld h,0e0h		;4549
	ret nz			;454b
	or b			;454c
l454dh:
	sbc a,h			;454d
	sub b			;454e
l454fh:
	adc a,b			;454f
	ld c,h			;4550
	ld sp,02035h		;4551
	jr nz,l4576h		;4554
	jr nz,l4578h		;4556
	nop			;4558
	add hl,de		;4559
	ld sp,l5a47h		;455a
	ld l,d			;455d
	ld (hl),l		;455e
	ld a,l			;455f
	ld a,a			;4560
	ld a,l			;4561
	ld (hl),l		;4562
	ld l,d			;4563
	ld e,d			;4564
	ld b,a			;4565
	ld sp,08019h		;4566
	sub b			;4569
	and b			;456a
	or b			;456b
	ret nz			;456c
	ret nc			;456d
	ret po			;456e
	ret p			;456f
	nop			;4570
	djnz l4593h		;4571
	jr nc,l45b5h		;4573
	ld d,b			;4575
l4576h:
	ld h,b			;4576
	ld (hl),b		;4577
l4578h:
	ld c,h			;4578
	ld e,d			;4579
	ld h,e			;457a
	ld l,b			;457b
	inc sp			;457c
	jr nz,l459fh		;457d
	jr nz,l45f9h		;457f
	ld (hl),b		;4581
	ld l,b			;4582
	ld h,b			;4583
	ld e,b			;4584
	ld d,b			;4585
	ld c,b			;4586
	ld b,b			;4587
l4588h:
	jr c,l45bah		;4588
	jr z,l45ach		;458a
	jr l459eh		;458c
	ex af,af'		;458e
	nop			;458f
	ld a,b			;4590
	ld (hl),b		;4591
	ld l,b			;4592
l4593h:
	ld h,b			;4593
	ld e,b			;4594
	ld d,b			;4595
	ld c,b			;4596
	ld b,b			;4597
	jr c,l45cah		;4598
	jr z,l45bch		;459a
	jr l45aeh		;459c
l459eh:
	ex af,af'		;459e
l459fh:
	nop			;459f
	ld c,h			;45a0
	dec (hl)		;45a1
	ld (hl),058h		;45a2
	jr nz,l45c6h		;45a4
	jr nz,l45c8h		;45a6
	ld a,a			;45a8
	ld a,a			;45a9
	ld a,a			;45aa
	ld a,a			;45ab
l45ach:
	ld a,a			;45ac
	ld a,a			;45ad
l45aeh:
	add a,b			;45ae
	add a,b			;45af
	add a,b			;45b0
	add a,b			;45b1
	add a,b			;45b2
	add a,b			;45b3
	ld a,a			;45b4
l45b5h:
	ld a,a			;45b5
	ld a,a			;45b6
	ld a,a			;45b7
	ld a,a			;45b8
	add a,b			;45b9
l45bah:
	add a,b			;45ba
	add a,b			;45bb
l45bch:
	add a,b			;45bc
	add a,b			;45bd
	ld a,a			;45be
	ld a,a			;45bf
	ld a,a			;45c0
	ld a,a			;45c1
	ld a,a			;45c2
	add a,b			;45c3
	add a,b			;45c4
	add a,b			;45c5
l45c6h:
	add a,b			;45c6
	add a,b			;45c7
l45c8h:
	ld c,h			;45c8
	inc sp			;45c9
l45cah:
	jr nz,l45ech		;45ca
	jr nz,l45eeh		;45cc
	jr nz,l45f0h		;45ce
	nop			;45d0
	ld (hl),b		;45d1
	ld d,b			;45d2
	jr nz,l4625h		;45d3
	ld (hl),b		;45d5
	jr nc,l45d8h		;45d6
l45d8h:
	ld d,b			;45d8
	ld a,a			;45d9
	ld h,b			;45da
	djnz l460dh		;45db
	ld b,b			;45dd
	nop			;45de
	or b			;45df
	djnz $+98		;45e0
	nop			;45e2
	ret po			;45e3
	ret p			;45e4
	nop			;45e5
	or b			;45e6
	sub b			;45e7
	ret nz			;45e8
	djnz $-30		;45e9
	and b			;45eb
l45ech:
	ret nz			;45ec
	ret p			;45ed
l45eeh:
	ret nz			;45ee
	and b			;45ef
l45f0h:
	ld c,h			;45f0
	ld sp,02065h		;45f1
	jr nz,l4616h		;45f4
	jr nz,l4618h		;45f6
	nop			;45f8
l45f9h:
	nop			;45f9
	nop			;45fa
	nop			;45fb
	nop			;45fc
	ld (hl),b		;45fd
	ld (hl),b		;45fe
	nop			;45ff
	nop			;4600
	add a,b			;4601
	add a,b			;4602
	add a,b			;4603
	nop			;4604
	nop			;4605
	nop			;4606
	nop			;4607
	ld (hl),b		;4608
	ld (hl),b		;4609
	ld (hl),b		;460a
	nop			;460b
	add a,b			;460c
l460dh:
	add a,b			;460d
	nop			;460e
	nop			;460f
	nop			;4610
	nop			;4611
	ld (hl),b		;4612
	ld (hl),b		;4613
	nop			;4614
	nop			;4615
l4616h:
	add a,b			;4616
	add a,b			;4617
l4618h:
	ld c,h			;4618
	ld sp,03533h		;4619
	scf			;461c
	ld e,b			;461d
	ld h,c			;461e
	jr nz,l4621h		;461f
l4621h:
	jp p,0d3e3h		;4621
	cp l			;4624
l4625h:
	add a,d			;4625
	add a,b			;4626
	add a,b			;4627
	add a,b			;4628
	nop			;4629
	jr l4658h		;462a
	ld a,(l6b6bh)		;462c
	ld d,a			;462f
	add a,b			;4630
	ld a,a			;4631
	ld a,a			;4632
	ld a,a			;4633
	add hl,hl		;4634
	inc sp			;4635
	ld b,h			;4636
	ld e,c			;4637
	ld (hl),d		;4638
	ld a,a			;4639
	ld e,c			;463a
	ld (hl),01fh		;463b
	djnz $+6		;463d
	nop			;463f
	ld c,h			;4640
	ld sp,03533h		;4641
	scf			;4644
	ld e,b			;4645
	ld h,d			;4646
	jr nz,l4649h		;4647
l4649h:
	jp p,0d3e3h		;4649
	cp l			;464c
	sub (hl)		;464d
	add a,b			;464e
	add a,b			;464f
	ex (sp),hl		;4650
	nop			;4651
	jr l4680h		;4652
	ld a,(l7f7ah)		;4654
	ld l,c			;4657
l4658h:
	sub l			;4658
	ld a,a			;4659
	ld a,a			;465a
	rla			;465b
	jr z,l4691h		;465c
	ld b,h			;465e
	ld e,c			;465f
	ld (hl),d		;4660
	ld a,a			;4661
	ld e,c			;4662
	ld (hl),01fh		;4663
	djnz $+6		;4665
	nop			;4667
	ld c,h			;4668
	ld sp,03533h		;4669
	scf			;466c
	ld e,b			;466d
	ld h,e			;466e
	jr nz,l4671h		;466f
l4671h:
	jp p,0d3e3h		;4671
	cp l			;4674
	sub (hl)		;4675
	sbc a,b			;4676
	add a,b			;4677
	add a,b			;4678
	ld de,02c18h		;4679
	ld a,(l7f48h)		;467c
	ld e,l			;467f
l4680h:
	add a,b			;4680
	jp c,01732h		;4681
	jr z,l46b9h		;4684
	ld b,h			;4686
	ld e,c			;4687
	ld (hl),d		;4688
	ld (hl),b		;4689
	ld e,c			;468a
	ld (hl),01fh		;468b
	djnz $+6		;468d
	nop			;468f
	ld c,h			;4690
l4691h:
	ld sp,03533h		;4691
	scf			;4694
	ld e,b			;4695
	ld h,h			;4696
	jr nz,l4699h		;4697
l4699h:
	jp p,0d3e3h		;4699
	cp l			;469c
	and l			;469d
	add a,b			;469e
	add a,b			;469f
	add a,000h		;46a0
	jr l46d0h		;46a2
	ld a,(l6266h)		;46a4
	ld a,a			;46a7
	add a,b			;46a8
	xor b			;46a9
	nop			;46aa
	rla			;46ab
	jr z,l46e1h		;46ac
	ld b,h			;46ae
	ld e,c			;46af
	ld l,h			;46b0
	ld l,h			;46b1
	ld e,c			;46b2
	ld (hl),01fh		;46b3
	djnz $+6		;46b5
	nop			;46b7
	ld c,h			;46b8
l46b9h:
	ld sp,03533h		;46b9
	scf			;46bc
	ld e,b			;46bd
	ld h,l			;46be
	jr nz,l46c1h		;46bf
l46c1h:
	jp p,0d3e3h		;46c1
	cp l			;46c4
	and l			;46c5
	and e			;46c6
	or d			;46c7
	ex (sp),hl		;46c8
	nop			;46c9
	jr l46f8h		;46ca
	ld a,(l7f7fh)		;46cc
	scf			;46cf
l46d0h:
	sbc a,(hl)		;46d0
	call 01700h		;46d1
	jr z,l4709h		;46d4
	ld b,h			;46d6
	ld e,c			;46d7
	ld l,h			;46d8
	ld l,h			;46d9
	ld e,c			;46da
	ld (hl),01fh		;46db
	djnz $+6		;46dd
	nop			;46df
	ld c,h			;46e0
l46e1h:
	ld sp,03533h		;46e1
	ld (hl),037h		;46e4
	ld e,b			;46e6
	jr nz,l46e9h		;46e7
l46e9h:
	jp p,0d3e3h		;46e9
	cp l			;46ec
	and l			;46ed
	and e			;46ee
	or d			;46ef
	ex (sp),hl		;46f0
	nop			;46f1
	jr l4720h		;46f2
	ld a,(l4848h)		;46f4
	scf			;46f7
l46f8h:
	sub b			;46f8
	exx			;46f9
	nop			;46fa
	rla			;46fb
	jr z,l4731h		;46fc
	ld b,h			;46fe
	ld e,c			;46ff
	ld l,b			;4700
	ld h,a			;4701
	ld e,c			;4702
	ld (hl),01fh		;4703
	djnz $+6		;4705
	nop			;4707
	ld c,h			;4708
l4709h:
	ld sp,03533h		;4709
	scf			;470c
	ld e,b			;470d
	ld h,(hl)		;470e
	jr nz,l4711h		;470f
l4711h:
	jp p,0d3e3h		;4711
	cp l			;4714
	and l			;4715
	and e			;4716
	or d			;4717
	ex (sp),hl		;4718
	nop			;4719
	jr l4748h		;471a
	ld a,(l4848h)		;471c
	scf			;471f
l4720h:
	push bc			;4720
	ret pe			;4721
	nop			;4722
	rla			;4723
	jr z,l4759h		;4724
	ld b,h			;4726
	ld e,c			;4727
	ld l,b			;4728
	ld h,a			;4729
	ld e,c			;472a
	ld (hl),01fh		;472b
	djnz $+6		;472d
	nop			;472f
	ld c,h			;4730
l4731h:
	ld sp,03533h		;4731
	scf			;4734
	ld e,b			;4735
	ld h,a			;4736
	jr nz,l4739h		;4737
l4739h:
	jp p,0d3e3h		;4739
	cp l			;473c
	and l			;473d
	and e			;473e
	or d			;473f
	ex (sp),hl		;4740
	nop			;4741
	jr l4770h		;4742
	ld a,(03f40h)		;4744
	scf			;4747
l4748h:
	inc de			;4748
	nop			;4749
	rst 38h			;474a
	ld a,(bc)		;474b
	dec e			;474c
	inc sp			;474d
	ld b,h			;474e
	ld e,c			;474f
	ld l,b			;4750
	ld h,a			;4751
	ld e,c			;4752
	ld (hl),01fh		;4753
	djnz $+6		;4755
	nop			;4757
	ld c,h			;4758
l4759h:
	ld sp,03533h		;4759
	scf			;475c
	ld e,b			;475d
	ld l,b			;475e
	jr nz,l4761h		;475f
l4761h:
	jp p,0d3e3h		;4761
	cp l			;4764
	xor l			;4765
	xor d			;4766
	or d			;4767
	ex (sp),hl		;4768
	nop			;4769
	jr l4798h		;476a
	ld a,(03f40h)		;476c
	scf			;476f
l4770h:
	ld (01213h),hl		;4770
	inc d			;4773
	dec e			;4774
	inc sp			;4775
	ld b,h			;4776
	ld e,c			;4777
	ld h,l			;4778
	ld h,l			;4779
	ld e,c			;477a
	ld (hl),01fh		;477b
	djnz $+6		;477d
	nop			;477f
	ld c,h			;4780
	ld sp,03533h		;4781
	scf			;4784
	add hl,sp		;4785
	ld e,b			;4786
	jr nz,l4789h		;4787
l4789h:
	jp p,0d3e3h		;4789
	cp l			;478c
	xor l			;478d
	xor d			;478e
	or d			;478f
	ex (sp),hl		;4790
	nop			;4791
	jr l47c0h		;4792
	ld a,(03f40h)		;4794
	ld b,d			;4797
l4798h:
	ld c,b			;4798
	ld c,c			;4799
	ld c,l			;479a
	ld d,d			;479b
	ld e,b			;479c
	ld e,d			;479d
	ld e,(hl)		;479e
	ld e,a			;479f
	ld h,l			;47a0
	ld h,l			;47a1
	ld e,c			;47a2
	ld (hl),01fh		;47a3
	djnz l47abh		;47a5
	nop			;47a7
	ld c,h			;47a8
	inc sp			;47a9
	scf			;47aa
l47abh:
	add hl,sp		;47ab
	jr nz,l47ceh		;47ac
	jr nz,l47d0h		;47ae
	add a,b			;47b0
	or b			;47b1
	ret nz			;47b2
	djnz l47cfh		;47b3
	ld hl,(01a2ch)		;47b5
	nop			;47b8
	ret po			;47b9
	ret nc			;47ba
	ret po			;47bb
	ld (l7053h),hl		;47bc
	ld (hl),l		;47bf
l47c0h:
	ld (hl),b		;47c0
	ld sp,080eah		;47c1
	adc a,b			;47c4
	adc a,d			;47c5
	adc a,h			;47c6
	adc a,(hl)		;47c7
	nop			;47c8
	nop			;47c9
	nop			;47ca
	nop			;47cb
	nop			;47cc
	ld (hl),b		;47cd
l47ceh:
	ld (hl),b		;47ce
l47cfh:
	nop			;47cf
l47d0h:
	ld c,h			;47d0
	dec (hl)		;47d1
	scf			;47d2
	add hl,sp		;47d3
l47d4h:
	ld d,c			;47d4
	ld (hl),a		;47d5
	ld l,c			;47d6
	ld l,(hl)		;47d7
	nop			;47d8
	add hl,de		;47d9
	ld sp,l5a47h		;47da
	ld l,d			;47dd
	ld (hl),l		;47de
	ld a,l			;47df
	ld a,a			;47e0
	ld a,l			;47e1
	ld (hl),l		;47e2
	ld l,d			;47e3
	ld e,d			;47e4
	ld b,a			;47e5
	ld sp,00019h		;47e6
	rst 20h			;47e9
	rst 8			;47ea
	cp c			;47eb
	and (hl)		;47ec
	sub (hl)		;47ed
	adc a,e			;47ee
	add a,e			;47ef
	add a,b			;47f0
	add a,e			;47f1
	adc a,e			;47f2
	sub (hl)		;47f3
	and (hl)		;47f4
	cp c			;47f5
	rst 8			;47f6
	rst 20h			;47f7
	ld c,h			;47f8
	ld (hl),063h		;47f9
	jr nz,l481dh		;47fb
l47fdh:
	jr nz,l481fh		;47fd
	jr nz,l4831h		;47ff
	ld d,b			;4801
	ld d,b			;4802
	jr nc,l4805h		;4803
l4805h:
	nop			;4805
	djnz l4848h		;4806
	ld h,b			;4808
	ld (hl),b		;4809
	ld h,b			;480a
	jr nc,l47fdh		;480b
	ret po			;480d
	ret po			;480e
	nop			;480f
	jr nz,l4832h		;4810
	djnz l47d4h		;4812
	and b			;4814
	sub b			;4815
	and b			;4816
	ret nz			;4817
	nop			;4818
	nop			;4819
	ret nc			;481a
	or b			;481b
	or b			;481c
l481dh:
	ret nc			;481d
	nop			;481e
l481fh:
	nop			;481f
	ld c,h			;4820
	ld (hl),065h		;4821
	jr nz,$+34		;4823
	jr nz,l4847h		;4825
	jr nz,l4829h		;4827
l4829h:
	ld b,b			;4829
	ld a,a			;482a
	ld b,b			;482b
	djnz $+3		;482c
	jp pe,0c3d6h		;482e
l4831h:
	cp c			;4831
l4832h:
	xor a			;4832
	and h			;4833
	sbc a,h			;4834
	sub l			;4835
	adc a,a			;4836
	adc a,d			;4837
	add a,(hl)		;4838
	add a,e			;4839
	add a,c			;483a
	add a,e			;483b
	add a,(hl)		;483c
	adc a,d			;483d
	adc a,a			;483e
	sub l			;483f
	sbc a,h			;4840
	and h			;4841
	xor a			;4842
	cp c			;4843
	jp 0ead6h		;4844
l4847h:
	rst 38h			;4847
l4848h:
	ld c,h			;4848
l4849h:
	inc sp			;4849
	ld e,d			;484a
	jr nz,l486dh		;484b
	jr nz,l486fh		;484d
	jr nz,l4851h		;484f
l4851h:
	ret po			;4851
	ret nz			;4852
	and b			;4853
	add a,b			;4854
	and b			;4855
	ret nz			;4856
	ret po			;4857
	nop			;4858
	jr nz,$+66		;4859
	ld h,b			;485b
	ld a,a			;485c
	ld h,b			;485d
	ld b,b			;485e
	jr nz,l4861h		;485f
l4861h:
	ret po			;4861
	ret nz			;4862
	and b			;4863
	add a,b			;4864
	and b			;4865
	ret nz			;4866
	ret po			;4867
	nop			;4868
	jr nz,l48abh		;4869
	ld h,b			;486b
	ld a,a			;486c
l486dh:
	ld h,b			;486d
	ld b,b			;486e
l486fh:
	jr nz,l48bdh		;486f
	ld sp,02061h		;4871
	jr nz,$+34		;4874
	jr nz,$+34		;4876
	nop			;4878
	ret p			;4879
	ret po			;487a
	ret nc			;487b
	ret nz			;487c
	or b			;487d
	and b			;487e
	sub b			;487f
	add a,b			;4880
	add a,b			;4881
	add a,b			;4882
	add a,b			;4883
	add a,b			;4884
	add a,b			;4885
	add a,b			;4886
	add a,b			;4887
	add a,b			;4888
	add a,b			;4889
	add a,b			;488a
	add a,b			;488b
	add a,b			;488c
	add a,b			;488d
	add a,b			;488e
	add a,b			;488f
	ld a,a			;4890
	ld (hl),b		;4891
	ld h,b			;4892
l4893h:
	ld d,b			;4893
	ld b,b			;4894
	jr nc,l48b7h		;4895
	djnz l48e5h		;4897
	ld sp,02062h		;4899
	jr nz,$+34		;489c
	jr nz,l48c0h		;489e
	nop			;48a0
	jr nc,l4893h		;48a1
	jr nc,l48e5h		;48a3
	ld d,b			;48a5
	ld h,b			;48a6
	ld h,b			;48a7
	ld (hl),b		;48a8
	ld a,c			;48a9
	ld (hl),b		;48aa
l48abh:
	ld a,b			;48ab
	ld b,b			;48ac
	nop			;48ad
	nop			;48ae
	ld c,070h		;48af
	add a,e			;48b1
	ld h,b			;48b2
	ld d,b			;48b3
	nop			;48b4
	nop			;48b5
	nop			;48b6
l48b7h:
	ld h,074h		;48b7
	add a,d			;48b9
	add a,h			;48ba
	ld h,l			;48bb
	ld h,h			;48bc
l48bdh:
	call po,08493h		;48bd
l48c0h:
	ld c,h			;48c0
	ld e,d			;48c1
l48c2h:
	ld h,e			;48c2
	ld l,b			;48c3
	ld (02020h),a		;48c4
	jr nz,l4849h		;48c7
	adc a,(hl)		;48c9
	and b			;48ca
	ret nz			;48cb
	ret po			;48cc
	nop			;48cd
	jr nz,l490fh		;48ce
	ld a,03ch		;48d0
	ld a,(03137h)		;48d2
	add hl,hl		;48d5
	jr nz,l48f4h		;48d6
	djnz l48dah		;48d8
l48dah:
	and 0c0h		;48da
	ret nc			;48dc
	nop			;48dd
	jr nz,l491fh		;48de
	djnz l48c2h		;48e0
	add a,b			;48e2
	ret nz			;48e3
	nop			;48e4
l48e5h:
	jr nz,l48e7h		;48e5
l48e7h:
	sub b			;48e7
	ld b,h			;48e8
	ld h,l			;48e9
	ld h,(hl)		;48ea
	ld h,c			;48eb
	ld (hl),l		;48ec
	ld l,h			;48ed
	ld (hl),h		;48ee
	jr nz,l48f1h		;48ef
l48f1h:
	nop			;48f1
	nop			;48f2
	nop			;48f3
l48f4h:
	nop			;48f4
	nop			;48f5
	nop			;48f6
	nop			;48f7
	nop			;48f8
	nop			;48f9
	nop			;48fa
	nop			;48fb
	nop			;48fc
	nop			;48fd
	nop			;48fe
	nop			;48ff
	nop			;4900
	nop			;4901
	nop			;4902
	nop			;4903
	nop			;4904
	nop			;4905
	nop			;4906
	nop			;4907
	nop			;4908
	nop			;4909
	nop			;490a
	nop			;490b
	nop			;490c
	nop			;490d
	nop			;490e
l490fh:
	nop			;490f
	ld b,h			;4910
	ld h,l			;4911
	ld h,(hl)		;4912
	ld h,c			;4913
	ld (hl),l		;4914
	ld l,h			;4915
	ld (hl),h		;4916
	jr nz,l4919h		;4917
l4919h:
	nop			;4919
	nop			;491a
	nop			;491b
	nop			;491c
	nop			;491d
	nop			;491e
l491fh:
	nop			;491f
	nop			;4920
	nop			;4921
	nop			;4922
	nop			;4923
	nop			;4924
	nop			;4925
	nop			;4926
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
	nop			;4932
	nop			;4933
	nop			;4934
	nop			;4935
	nop			;4936
	nop			;4937
	ld b,h			;4938
	ld h,l			;4939
	ld h,(hl)		;493a
	ld h,c			;493b
	ld (hl),l		;493c
	ld l,h			;493d
	ld (hl),h		;493e
	jr nz,l4941h		;493f
l4941h:
	nop			;4941
	nop			;4942
	nop			;4943
	nop			;4944
	nop			;4945
	nop			;4946
	nop			;4947
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
	ld b,h			;4960
	ld h,l			;4961
	ld h,(hl)		;4962
	ld h,c			;4963
	ld (hl),l		;4964
	ld l,h			;4965
	ld (hl),h		;4966
	jr nz,l4969h		;4967
l4969h:
	nop			;4969
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
	ld b,h			;4988
	ld h,l			;4989
	ld h,(hl)		;498a
	ld h,c			;498b
	ld (hl),l		;498c
	ld l,h			;498d
	ld (hl),h		;498e
	jr nz,l4991h		;498f
l4991h:
	nop			;4991
	nop			;4992
	nop			;4993
	nop			;4994
	nop			;4995
	nop			;4996
	nop			;4997
	nop			;4998
	nop			;4999
	nop			;499a
	nop			;499b
	nop			;499c
	nop			;499d
	nop			;499e
	nop			;499f
	nop			;49a0
	nop			;49a1
	nop			;49a2
	nop			;49a3
	nop			;49a4
	nop			;49a5
	nop			;49a6
	nop			;49a7
	nop			;49a8
	nop			;49a9
	nop			;49aa
	nop			;49ab
	nop			;49ac
	nop			;49ad
	nop			;49ae
	nop			;49af
	ld b,h			;49b0
	ld h,l			;49b1
	ld h,(hl)		;49b2
	ld h,c			;49b3
	ld (hl),l		;49b4
	ld l,h			;49b5
	ld (hl),h		;49b6
	jr nz,l49b9h		;49b7
l49b9h:
	nop			;49b9
	nop			;49ba
	nop			;49bb
	nop			;49bc
	nop			;49bd
	nop			;49be
	nop			;49bf
	nop			;49c0
	nop			;49c1
	nop			;49c2
	nop			;49c3
	nop			;49c4
	nop			;49c5
	nop			;49c6
	nop			;49c7
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
	nop			;49d2
	nop			;49d3
	nop			;49d4
	nop			;49d5
	nop			;49d6
	nop			;49d7
	ld b,h			;49d8
	ld h,l			;49d9
	ld h,(hl)		;49da
	ld h,c			;49db
	ld (hl),l		;49dc
	ld l,h			;49dd
	ld (hl),h		;49de
	jr nz,l49e1h		;49df
l49e1h:
	nop			;49e1
	nop			;49e2
	nop			;49e3
	nop			;49e4
	nop			;49e5
	nop			;49e6
	nop			;49e7
	nop			;49e8
	nop			;49e9
	nop			;49ea
	nop			;49eb
	nop			;49ec
	nop			;49ed
	nop			;49ee
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
	nop			;49fa
	nop			;49fb
	nop			;49fc
	nop			;49fd
	nop			;49fe
	nop			;49ff
	ld b,h			;4a00
	ld h,l			;4a01
	ld h,(hl)		;4a02
	ld h,c			;4a03
	ld (hl),l		;4a04
	ld l,h			;4a05
	ld (hl),h		;4a06
	jr nz,l4a09h		;4a07
l4a09h:
	nop			;4a09
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
	ld b,h			;4a28
	ld h,l			;4a29
	ld h,(hl)		;4a2a
	ld h,c			;4a2b
	ld (hl),l		;4a2c
	ld l,h			;4a2d
	ld (hl),h		;4a2e
	jr nz,l4a31h		;4a2f
l4a31h:
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
	ld b,h			;4a50
	ld h,l			;4a51
	ld h,(hl)		;4a52
	ld h,c			;4a53
	ld (hl),l		;4a54
	ld l,h			;4a55
	ld (hl),h		;4a56
	jr nz,l4a59h		;4a57
l4a59h:
	nop			;4a59
	nop			;4a5a
	nop			;4a5b
	nop			;4a5c
	nop			;4a5d
	nop			;4a5e
	nop			;4a5f
	nop			;4a60
	nop			;4a61
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
	ld b,h			;4a78
	ld h,l			;4a79
	ld h,(hl)		;4a7a
	ld h,c			;4a7b
	ld (hl),l		;4a7c
	ld l,h			;4a7d
	ld (hl),h		;4a7e
	jr nz,l4a81h		;4a7f
l4a81h:
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
	ld b,h			;4aa0
	ld h,l			;4aa1
	ld h,(hl)		;4aa2
	ld h,c			;4aa3
	ld (hl),l		;4aa4
	ld l,h			;4aa5
	ld (hl),h		;4aa6
	jr nz,l4aa9h		;4aa7
l4aa9h:
	nop			;4aa9
	nop			;4aaa
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
	ld b,h			;4ac8
	ld h,l			;4ac9
	ld h,(hl)		;4aca
	ld h,c			;4acb
	ld (hl),l		;4acc
	ld l,h			;4acd
	ld (hl),h		;4ace
	jr nz,l4ad1h		;4acf
l4ad1h:
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
	ld b,h			;4af0
	ld h,l			;4af1
	ld h,(hl)		;4af2
	ld h,c			;4af3
	ld (hl),l		;4af4
	ld l,h			;4af5
	ld (hl),h		;4af6
	jr nz,l4af9h		;4af7
l4af9h:
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
	ld b,h			;4b18
	ld h,l			;4b19
	ld h,(hl)		;4b1a
	ld h,c			;4b1b
	ld (hl),l		;4b1c
	ld l,h			;4b1d
	ld (hl),h		;4b1e
	jr nz,l4b21h		;4b1f
l4b21h:
	nop			;4b21
	nop			;4b22
	nop			;4b23
	nop			;4b24
	nop			;4b25
	nop			;4b26
	nop			;4b27
	nop			;4b28
	nop			;4b29
	nop			;4b2a
	nop			;4b2b
	nop			;4b2c
	nop			;4b2d
	nop			;4b2e
	nop			;4b2f
	ld (hl),b		;4b30
	ld (hl),b		;4b31
	ld (hl),b		;4b32
	ld (hl),b		;4b33
	ld (hl),b		;4b34
	ld (hl),b		;4b35
	ld (hl),b		;4b36
	ld (hl),b		;4b37
	add a,b			;4b38
	add a,b			;4b39
	add a,b			;4b3a
	add a,b			;4b3b
	add a,b			;4b3c
	add a,b			;4b3d
	add a,b			;4b3e
	add a,b			;4b3f
	ld b,h			;4b40
	ld h,l			;4b41
	ld h,(hl)		;4b42
	ld h,c			;4b43
	ld (hl),l		;4b44
	ld l,h			;4b45
	ld (hl),h		;4b46
	jr nz,l4b49h		;4b47
l4b49h:
	nop			;4b49
	nop			;4b4a
	nop			;4b4b
	nop			;4b4c
	nop			;4b4d
	nop			;4b4e
	nop			;4b4f
	nop			;4b50
	nop			;4b51
	nop			;4b52
	nop			;4b53
	nop			;4b54
	nop			;4b55
	nop			;4b56
	nop			;4b57
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
	nop			;4b62
	nop			;4b63
	nop			;4b64
	nop			;4b65
	nop			;4b66
	nop			;4b67
	ld b,h			;4b68
	ld h,l			;4b69
	ld h,(hl)		;4b6a
	ld h,c			;4b6b
	ld (hl),l		;4b6c
	ld l,h			;4b6d
	ld (hl),h		;4b6e
	jr nz,l4b71h		;4b6f
l4b71h:
	nop			;4b71
	nop			;4b72
	nop			;4b73
	nop			;4b74
	nop			;4b75
	nop			;4b76
	nop			;4b77
	nop			;4b78
	nop			;4b79
	nop			;4b7a
	nop			;4b7b
	nop			;4b7c
	nop			;4b7d
	nop			;4b7e
	nop			;4b7f
	nop			;4b80
	nop			;4b81
	nop			;4b82
	nop			;4b83
	nop			;4b84
	nop			;4b85
	nop			;4b86
	nop			;4b87
	nop			;4b88
	nop			;4b89
	nop			;4b8a
	nop			;4b8b
	nop			;4b8c
	nop			;4b8d
	nop			;4b8e
	nop			;4b8f
	ld b,h			;4b90
	ld h,l			;4b91
	ld h,(hl)		;4b92
	ld h,c			;4b93
	ld (hl),l		;4b94
	ld l,h			;4b95
	ld (hl),h		;4b96
	jr nz,l4b99h		;4b97
l4b99h:
	nop			;4b99
	nop			;4b9a
	nop			;4b9b
	nop			;4b9c
	nop			;4b9d
	nop			;4b9e
	nop			;4b9f
	nop			;4ba0
	nop			;4ba1
	nop			;4ba2
	nop			;4ba3
	nop			;4ba4
	nop			;4ba5
	nop			;4ba6
	nop			;4ba7
	nop			;4ba8
	nop			;4ba9
	nop			;4baa
	nop			;4bab
	nop			;4bac
	nop			;4bad
	nop			;4bae
	nop			;4baf
	nop			;4bb0
	nop			;4bb1
	nop			;4bb2
	nop			;4bb3
	nop			;4bb4
	nop			;4bb5
	nop			;4bb6
	nop			;4bb7
	ld b,h			;4bb8
	ld h,l			;4bb9
	ld h,(hl)		;4bba
	ld h,c			;4bbb
	ld (hl),l		;4bbc
	ld l,h			;4bbd
	ld (hl),h		;4bbe
	jr nz,l4bc1h		;4bbf
l4bc1h:
	nop			;4bc1
	nop			;4bc2
	nop			;4bc3
	nop			;4bc4
	nop			;4bc5
	nop			;4bc6
	nop			;4bc7
	nop			;4bc8
	nop			;4bc9
	nop			;4bca
	nop			;4bcb
	nop			;4bcc
	nop			;4bcd
	nop			;4bce
	nop			;4bcf
	nop			;4bd0
	nop			;4bd1
	nop			;4bd2
	nop			;4bd3
	nop			;4bd4
	nop			;4bd5
	nop			;4bd6
	nop			;4bd7
	nop			;4bd8
	nop			;4bd9
	nop			;4bda
	nop			;4bdb
	nop			;4bdc
	nop			;4bdd
	nop			;4bde
	nop			;4bdf
	ld b,h			;4be0
	ld h,l			;4be1
	ld h,(hl)		;4be2
	ld h,c			;4be3
	ld (hl),l		;4be4
	ld l,h			;4be5
	ld (hl),h		;4be6
	jr nz,l4be9h		;4be7
l4be9h:
	nop			;4be9
	nop			;4bea
	nop			;4beb
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
	ld b,h			;4c08
	ld h,l			;4c09
	ld h,(hl)		;4c0a
	ld h,c			;4c0b
	ld (hl),l		;4c0c
	ld l,h			;4c0d
	ld (hl),h		;4c0e
	jr nz,l4c11h		;4c0f
l4c11h:
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
	ld b,h			;4c30
	ld h,l			;4c31
	ld h,(hl)		;4c32
	ld h,c			;4c33
	ld (hl),l		;4c34
	ld l,h			;4c35
	ld (hl),h		;4c36
	jr nz,l4c39h		;4c37
l4c39h:
	nop			;4c39
	nop			;4c3a
	nop			;4c3b
	nop			;4c3c
	nop			;4c3d
	nop			;4c3e
	nop			;4c3f
	nop			;4c40
	nop			;4c41
	nop			;4c42
	nop			;4c43
	nop			;4c44
	nop			;4c45
	nop			;4c46
	nop			;4c47
	nop			;4c48
	nop			;4c49
	nop			;4c4a
	nop			;4c4b
	nop			;4c4c
	nop			;4c4d
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
	ld b,h			;4c58
	ld h,l			;4c59
	ld h,(hl)		;4c5a
	ld h,c			;4c5b
	ld (hl),l		;4c5c
	ld l,h			;4c5d
	ld (hl),h		;4c5e
	jr nz,l4c61h		;4c5f
l4c61h:
	nop			;4c61
	nop			;4c62
	nop			;4c63
	nop			;4c64
	nop			;4c65
	nop			;4c66
	nop			;4c67
	nop			;4c68
	nop			;4c69
	nop			;4c6a
	nop			;4c6b
	nop			;4c6c
	nop			;4c6d
	nop			;4c6e
	nop			;4c6f
	ld (hl),b		;4c70
	ld (hl),b		;4c71
	ld (hl),b		;4c72
	ld (hl),b		;4c73
	ld (hl),b		;4c74
	ld (hl),b		;4c75
	ld (hl),b		;4c76
	ld (hl),b		;4c77
	add a,b			;4c78
	add a,b			;4c79
	add a,b			;4c7a
	add a,b			;4c7b
	add a,b			;4c7c
	add a,b			;4c7d
	add a,b			;4c7e
	add a,b			;4c7f
	ld b,h			;4c80
	ld h,l			;4c81
	ld h,(hl)		;4c82
	ld h,c			;4c83
	ld (hl),l		;4c84
	ld l,h			;4c85
	ld (hl),h		;4c86
	jr nz,l4c89h		;4c87
l4c89h:
	nop			;4c89
	nop			;4c8a
	nop			;4c8b
	nop			;4c8c
	nop			;4c8d
	nop			;4c8e
	nop			;4c8f
	nop			;4c90
	nop			;4c91
	nop			;4c92
	nop			;4c93
	nop			;4c94
	nop			;4c95
	nop			;4c96
	nop			;4c97
	nop			;4c98
	nop			;4c99
	nop			;4c9a
	nop			;4c9b
	nop			;4c9c
	nop			;4c9d
	nop			;4c9e
	nop			;4c9f
	nop			;4ca0
	nop			;4ca1
	nop			;4ca2
	nop			;4ca3
	nop			;4ca4
	nop			;4ca5
	nop			;4ca6
	nop			;4ca7
	ld b,h			;4ca8
	ld h,l			;4ca9
	ld h,(hl)		;4caa
	ld h,c			;4cab
	ld (hl),l		;4cac
	ld l,h			;4cad
	ld (hl),h		;4cae
	jr nz,l4cb1h		;4caf
l4cb1h:
	nop			;4cb1
	nop			;4cb2
	nop			;4cb3
	nop			;4cb4
	nop			;4cb5
	nop			;4cb6
	nop			;4cb7
	nop			;4cb8
	nop			;4cb9
	nop			;4cba
	nop			;4cbb
	nop			;4cbc
	nop			;4cbd
	nop			;4cbe
	nop			;4cbf
	nop			;4cc0
	nop			;4cc1
	nop			;4cc2
	nop			;4cc3
	nop			;4cc4
	nop			;4cc5
	nop			;4cc6
	nop			;4cc7
	nop			;4cc8
	nop			;4cc9
	nop			;4cca
	nop			;4ccb
	nop			;4ccc
	nop			;4ccd
	nop			;4cce
	nop			;4ccf
	ld b,h			;4cd0
	ld h,l			;4cd1
	ld h,(hl)		;4cd2
	ld h,c			;4cd3
	ld (hl),l		;4cd4
	ld l,h			;4cd5
	ld (hl),h		;4cd6
	jr nz,l4cd9h		;4cd7
l4cd9h:
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
	ld b,h			;4cf8
	ld h,l			;4cf9
	ld h,(hl)		;4cfa
	ld h,c			;4cfb
	ld (hl),l		;4cfc
	ld l,h			;4cfd
	ld (hl),h		;4cfe
	jr nz,l4d01h		;4cff
l4d01h:
	nop			;4d01
	nop			;4d02
	nop			;4d03
	nop			;4d04
	nop			;4d05
	nop			;4d06
	nop			;4d07
	nop			;4d08
	nop			;4d09
	nop			;4d0a
	nop			;4d0b
	nop			;4d0c
	nop			;4d0d
	nop			;4d0e
	nop			;4d0f
	nop			;4d10
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
	nop			;4d1c
	nop			;4d1d
	nop			;4d1e
	nop			;4d1f
	ld b,h			;4d20
	ld h,l			;4d21
	ld h,(hl)		;4d22
	ld h,c			;4d23
	ld (hl),l		;4d24
	ld l,h			;4d25
	ld (hl),h		;4d26
	jr nz,l4d29h		;4d27
l4d29h:
	nop			;4d29
	nop			;4d2a
	nop			;4d2b
	nop			;4d2c
	nop			;4d2d
	nop			;4d2e
	nop			;4d2f
	nop			;4d30
	nop			;4d31
	nop			;4d32
	nop			;4d33
	nop			;4d34
	nop			;4d35
	nop			;4d36
	nop			;4d37
	nop			;4d38
	nop			;4d39
	nop			;4d3a
	nop			;4d3b
	nop			;4d3c
	nop			;4d3d
	nop			;4d3e
	nop			;4d3f
	nop			;4d40
	nop			;4d41
	nop			;4d42
	nop			;4d43
	nop			;4d44
	nop			;4d45
	nop			;4d46
	nop			;4d47
	ld b,h			;4d48
	ld h,l			;4d49
	ld h,(hl)		;4d4a
	ld h,c			;4d4b
	ld (hl),l		;4d4c
	ld l,h			;4d4d
	ld (hl),h		;4d4e
	jr nz,l4d51h		;4d4f
l4d51h:
	nop			;4d51
	nop			;4d52
	nop			;4d53
	nop			;4d54
	nop			;4d55
	nop			;4d56
	nop			;4d57
	nop			;4d58
	nop			;4d59
	nop			;4d5a
	nop			;4d5b
	nop			;4d5c
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
	ld b,h			;4d70
	ld h,l			;4d71
	ld h,(hl)		;4d72
	ld h,c			;4d73
	ld (hl),l		;4d74
	ld l,h			;4d75
	ld (hl),h		;4d76
	jr nz,l4d79h		;4d77
l4d79h:
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
	ld b,h			;4d98
	ld h,l			;4d99
	ld h,(hl)		;4d9a
	ld h,c			;4d9b
	ld (hl),l		;4d9c
	ld l,h			;4d9d
	ld (hl),h		;4d9e
	jr nz,l4da1h		;4d9f
l4da1h:
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
	ld b,h			;4dc0
	ld h,l			;4dc1
	ld h,(hl)		;4dc2
	ld h,c			;4dc3
	ld (hl),l		;4dc4
	ld l,h			;4dc5
	ld (hl),h		;4dc6
	jr nz,l4dc9h		;4dc7
l4dc9h:
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
	nop			;4de0
	nop			;4de1
	nop			;4de2
	nop			;4de3
	nop			;4de4
	nop			;4de5
	nop			;4de6
	nop			;4de7
	ld b,h			;4de8
	ld h,l			;4de9
	ld h,(hl)		;4dea
	ld h,c			;4deb
	ld (hl),l		;4dec
	ld l,h			;4ded
	ld (hl),h		;4dee
	jr nz,l4df1h		;4def
l4df1h:
	nop			;4df1
	nop			;4df2
	nop			;4df3
	nop			;4df4
	nop			;4df5
	nop			;4df6
	nop			;4df7
	nop			;4df8
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
	nop			;4e04
	nop			;4e05
	nop			;4e06
	nop			;4e07
	nop			;4e08
	nop			;4e09
	nop			;4e0a
	nop			;4e0b
	nop			;4e0c
	nop			;4e0d
	nop			;4e0e
	nop			;4e0f
	ld b,h			;4e10
	ld h,l			;4e11
	ld h,(hl)		;4e12
	ld h,c			;4e13
	ld (hl),l		;4e14
	ld l,h			;4e15
	ld (hl),h		;4e16
	jr nz,l4e19h		;4e17
l4e19h:
	nop			;4e19
	nop			;4e1a
	nop			;4e1b
	nop			;4e1c
	nop			;4e1d
	nop			;4e1e
	nop			;4e1f
	nop			;4e20
	nop			;4e21
	nop			;4e22
	nop			;4e23
	nop			;4e24
	nop			;4e25
	nop			;4e26
	nop			;4e27
	nop			;4e28
	nop			;4e29
	nop			;4e2a
	nop			;4e2b
	nop			;4e2c
	nop			;4e2d
	nop			;4e2e
	nop			;4e2f
	nop			;4e30
	nop			;4e31
	nop			;4e32
	nop			;4e33
	nop			;4e34
	nop			;4e35
	nop			;4e36
	nop			;4e37
	ld b,h			;4e38
	ld h,l			;4e39
	ld h,(hl)		;4e3a
	ld h,c			;4e3b
	ld (hl),l		;4e3c
	ld l,h			;4e3d
	ld (hl),h		;4e3e
	jr nz,l4e41h		;4e3f
l4e41h:
	nop			;4e41
	nop			;4e42
	nop			;4e43
	nop			;4e44
	nop			;4e45
	nop			;4e46
	nop			;4e47
	nop			;4e48
	nop			;4e49
	nop			;4e4a
	nop			;4e4b
	nop			;4e4c
	nop			;4e4d
	nop			;4e4e
	nop			;4e4f
	nop			;4e50
	nop			;4e51
	nop			;4e52
	nop			;4e53
	nop			;4e54
	nop			;4e55
	nop			;4e56
	nop			;4e57
	nop			;4e58
	nop			;4e59
	nop			;4e5a
	nop			;4e5b
	nop			;4e5c
	nop			;4e5d
	nop			;4e5e
	nop			;4e5f
	ld b,h			;4e60
	ld h,l			;4e61
	ld h,(hl)		;4e62
	ld h,c			;4e63
	ld (hl),l		;4e64
	ld l,h			;4e65
	ld (hl),h		;4e66
	jr nz,l4e69h		;4e67
l4e69h:
	nop			;4e69
	nop			;4e6a
	nop			;4e6b
	nop			;4e6c
	nop			;4e6d
	nop			;4e6e
	nop			;4e6f
	nop			;4e70
	nop			;4e71
	nop			;4e72
	nop			;4e73
	nop			;4e74
	nop			;4e75
	nop			;4e76
	nop			;4e77
	nop			;4e78
	nop			;4e79
	nop			;4e7a
	nop			;4e7b
	nop			;4e7c
	nop			;4e7d
	nop			;4e7e
	nop			;4e7f
	nop			;4e80
	nop			;4e81
	nop			;4e82
	nop			;4e83
	nop			;4e84
	nop			;4e85
	nop			;4e86
	nop			;4e87
	ld b,h			;4e88
	ld h,l			;4e89
	ld h,(hl)		;4e8a
	ld h,c			;4e8b
	ld (hl),l		;4e8c
	ld l,h			;4e8d
	ld (hl),h		;4e8e
	jr nz,l4e91h		;4e8f
l4e91h:
	nop			;4e91
	nop			;4e92
	nop			;4e93
	nop			;4e94
	nop			;4e95
	nop			;4e96
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
	nop			;4ea2
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
	nop			;4eae
	nop			;4eaf
	ld b,h			;4eb0
	ld h,l			;4eb1
	ld h,(hl)		;4eb2
	ld h,c			;4eb3
	ld (hl),l		;4eb4
	ld l,h			;4eb5
	ld (hl),h		;4eb6
	jr nz,l4eb9h		;4eb7
l4eb9h:
	nop			;4eb9
	nop			;4eba
	nop			;4ebb
	nop			;4ebc
	nop			;4ebd
	nop			;4ebe
	nop			;4ebf
	nop			;4ec0
	nop			;4ec1
	nop			;4ec2
	nop			;4ec3
	nop			;4ec4
	nop			;4ec5
	nop			;4ec6
	nop			;4ec7
	nop			;4ec8
	nop			;4ec9
	nop			;4eca
	nop			;4ecb
	nop			;4ecc
	nop			;4ecd
	nop			;4ece
	nop			;4ecf
	nop			;4ed0
	nop			;4ed1
	nop			;4ed2
	nop			;4ed3
	nop			;4ed4
	nop			;4ed5
	nop			;4ed6
	nop			;4ed7
	ld b,h			;4ed8
	ld h,l			;4ed9
	ld h,(hl)		;4eda
	ld h,c			;4edb
	ld (hl),l		;4edc
	ld l,h			;4edd
	ld (hl),h		;4ede
	jr nz,l4ee1h		;4edf
l4ee1h:
	nop			;4ee1
	nop			;4ee2
	nop			;4ee3
	nop			;4ee4
	nop			;4ee5
	nop			;4ee6
	nop			;4ee7
	nop			;4ee8
	nop			;4ee9
	nop			;4eea
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
	nop			;4ef8
	nop			;4ef9
	nop			;4efa
	nop			;4efb
	nop			;4efc
	nop			;4efd
	nop			;4efe
	nop			;4eff
	ld b,h			;4f00
	ld h,l			;4f01
	ld h,(hl)		;4f02
	ld h,c			;4f03
	ld (hl),l		;4f04
	ld l,h			;4f05
	ld (hl),h		;4f06
	jr nz,l4f09h		;4f07
l4f09h:
	nop			;4f09
	nop			;4f0a
	nop			;4f0b
	nop			;4f0c
	nop			;4f0d
	nop			;4f0e
	nop			;4f0f
	nop			;4f10
	nop			;4f11
	nop			;4f12
	nop			;4f13
	nop			;4f14
	nop			;4f15
	nop			;4f16
	nop			;4f17
	nop			;4f18
	nop			;4f19
	nop			;4f1a
	nop			;4f1b
	nop			;4f1c
	nop			;4f1d
	nop			;4f1e
	nop			;4f1f
	nop			;4f20
	nop			;4f21
	nop			;4f22
	nop			;4f23
	nop			;4f24
	nop			;4f25
	nop			;4f26
	nop			;4f27
	ld b,h			;4f28
	ld h,l			;4f29
	ld h,(hl)		;4f2a
	ld h,c			;4f2b
	ld (hl),l		;4f2c
	ld l,h			;4f2d
	ld (hl),h		;4f2e
	jr nz,l4f31h		;4f2f
l4f31h:
	nop			;4f31
	nop			;4f32
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
	nop			;4f40
	nop			;4f41
	nop			;4f42
	nop			;4f43
	nop			;4f44
	nop			;4f45
	nop			;4f46
	nop			;4f47
	nop			;4f48
	nop			;4f49
	nop			;4f4a
	nop			;4f4b
	nop			;4f4c
	nop			;4f4d
	nop			;4f4e
	nop			;4f4f
	ld b,h			;4f50
	ld h,l			;4f51
	ld h,(hl)		;4f52
	ld h,c			;4f53
	ld (hl),l		;4f54
	ld l,h			;4f55
	ld (hl),h		;4f56
	jr nz,l4f59h		;4f57
l4f59h:
	nop			;4f59
	nop			;4f5a
	nop			;4f5b
	nop			;4f5c
	nop			;4f5d
	nop			;4f5e
	nop			;4f5f
	nop			;4f60
	nop			;4f61
	nop			;4f62
	nop			;4f63
	nop			;4f64
	nop			;4f65
	nop			;4f66
	nop			;4f67
	nop			;4f68
	nop			;4f69
	nop			;4f6a
	nop			;4f6b
	nop			;4f6c
	nop			;4f6d
	nop			;4f6e
	nop			;4f6f
	nop			;4f70
	nop			;4f71
	nop			;4f72
	nop			;4f73
	nop			;4f74
	nop			;4f75
	nop			;4f76
	nop			;4f77
	ld b,h			;4f78
	ld h,l			;4f79
	ld h,(hl)		;4f7a
	ld h,c			;4f7b
	ld (hl),l		;4f7c
	ld l,h			;4f7d
	ld (hl),h		;4f7e
	jr nz,l4f81h		;4f7f
l4f81h:
	nop			;4f81
	nop			;4f82
	nop			;4f83
	nop			;4f84
	nop			;4f85
	nop			;4f86
	nop			;4f87
	nop			;4f88
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
	ld b,h			;4fa0
	ld h,l			;4fa1
	ld h,(hl)		;4fa2
	ld h,c			;4fa3
	ld (hl),l		;4fa4
	ld l,h			;4fa5
	ld (hl),h		;4fa6
	jr nz,l4fa9h		;4fa7
l4fa9h:
	nop			;4fa9
	nop			;4faa
	nop			;4fab
	nop			;4fac
	nop			;4fad
	nop			;4fae
	nop			;4faf
	nop			;4fb0
	nop			;4fb1
	nop			;4fb2
	nop			;4fb3
	nop			;4fb4
	nop			;4fb5
	nop			;4fb6
	nop			;4fb7
	nop			;4fb8
	nop			;4fb9
	nop			;4fba
	nop			;4fbb
	nop			;4fbc
	nop			;4fbd
	nop			;4fbe
	nop			;4fbf
	nop			;4fc0
	nop			;4fc1
	nop			;4fc2
	nop			;4fc3
	nop			;4fc4
	nop			;4fc5
	nop			;4fc6
	nop			;4fc7
	ld b,h			;4fc8
	ld h,l			;4fc9
	ld h,(hl)		;4fca
	ld h,c			;4fcb
	ld (hl),l		;4fcc
	ld l,h			;4fcd
	ld (hl),h		;4fce
	jr nz,l4fd1h		;4fcf
l4fd1h:
	nop			;4fd1
	nop			;4fd2
	nop			;4fd3
	nop			;4fd4
	nop			;4fd5
	nop			;4fd6
	nop			;4fd7
	nop			;4fd8
	nop			;4fd9
	nop			;4fda
	nop			;4fdb
	nop			;4fdc
	nop			;4fdd
	nop			;4fde
	nop			;4fdf
	nop			;4fe0
	nop			;4fe1
	nop			;4fe2
	nop			;4fe3
	nop			;4fe4
	nop			;4fe5
	nop			;4fe6
	nop			;4fe7
	nop			;4fe8
	nop			;4fe9
	nop			;4fea
	nop			;4feb
	nop			;4fec
	nop			;4fed
	nop			;4fee
	nop			;4fef
	ld b,h			;4ff0
	ld h,l			;4ff1
	ld h,(hl)		;4ff2
	ld h,c			;4ff3
	ld (hl),l		;4ff4
	ld l,h			;4ff5
	ld (hl),h		;4ff6
	jr nz,l4ff9h		;4ff7
l4ff9h:
	nop			;4ff9
	nop			;4ffa
	nop			;4ffb
	nop			;4ffc
	nop			;4ffd
	nop			;4ffe
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
	nop			;500a
	nop			;500b
	nop			;500c
	nop			;500d
	nop			;500e
	nop			;500f
	nop			;5010
	nop			;5011
	nop			;5012
	nop			;5013
	nop			;5014
	nop			;5015
	nop			;5016
	nop			;5017
	ld b,h			;5018
	ld h,l			;5019
	ld h,(hl)		;501a
	ld h,c			;501b
	ld (hl),l		;501c
	ld l,h			;501d
	ld (hl),h		;501e
	jr nz,l5021h		;501f
l5021h:
	nop			;5021
	nop			;5022
	nop			;5023
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
	ld b,h			;5040
	ld h,l			;5041
	ld h,(hl)		;5042
	ld h,c			;5043
	ld (hl),l		;5044
	ld l,h			;5045
	ld (hl),h		;5046
	jr nz,l5049h		;5047
l5049h:
	nop			;5049
	nop			;504a
	nop			;504b
	nop			;504c
	nop			;504d
	nop			;504e
	nop			;504f
	nop			;5050
	nop			;5051
	nop			;5052
	nop			;5053
	nop			;5054
	nop			;5055
	nop			;5056
	nop			;5057
	nop			;5058
	nop			;5059
	nop			;505a
	nop			;505b
	nop			;505c
	nop			;505d
	nop			;505e
	nop			;505f
	nop			;5060
	nop			;5061
	nop			;5062
	nop			;5063
	nop			;5064
	nop			;5065
	nop			;5066
	nop			;5067
	ld b,h			;5068
	ld h,l			;5069
	ld h,(hl)		;506a
	ld h,c			;506b
	ld (hl),l		;506c
	ld l,h			;506d
	ld (hl),h		;506e
	jr nz,l5071h		;506f
l5071h:
	nop			;5071
	nop			;5072
	nop			;5073
	nop			;5074
	nop			;5075
	nop			;5076
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
	nop			;5081
	nop			;5082
	nop			;5083
	nop			;5084
	nop			;5085
	nop			;5086
	nop			;5087
	nop			;5088
	nop			;5089
	nop			;508a
	nop			;508b
	nop			;508c
	nop			;508d
	nop			;508e
	nop			;508f
	ld b,h			;5090
	ld h,l			;5091
	ld h,(hl)		;5092
	ld h,c			;5093
	ld (hl),l		;5094
	ld l,h			;5095
	ld (hl),h		;5096
	jr nz,l5099h		;5097
l5099h:
	nop			;5099
	nop			;509a
	nop			;509b
	nop			;509c
	nop			;509d
	nop			;509e
	nop			;509f
	nop			;50a0
	nop			;50a1
	nop			;50a2
	nop			;50a3
	nop			;50a4
	nop			;50a5
	nop			;50a6
	nop			;50a7
	nop			;50a8
	nop			;50a9
	nop			;50aa
	nop			;50ab
	nop			;50ac
	nop			;50ad
	nop			;50ae
	nop			;50af
	nop			;50b0
	nop			;50b1
	nop			;50b2
	nop			;50b3
	nop			;50b4
	nop			;50b5
	nop			;50b6
	nop			;50b7
	ld b,h			;50b8
	ld h,l			;50b9
	ld h,(hl)		;50ba
	ld h,c			;50bb
	ld (hl),l		;50bc
	ld l,h			;50bd
	ld (hl),h		;50be
	jr nz,l50c1h		;50bf
l50c1h:
	nop			;50c1
	nop			;50c2
	nop			;50c3
	nop			;50c4
	nop			;50c5
	nop			;50c6
	nop			;50c7
	nop			;50c8
	nop			;50c9
	nop			;50ca
	nop			;50cb
	nop			;50cc
	nop			;50cd
	nop			;50ce
	nop			;50cf
	nop			;50d0
	nop			;50d1
	nop			;50d2
	nop			;50d3
	nop			;50d4
	nop			;50d5
	nop			;50d6
	nop			;50d7
	nop			;50d8
	nop			;50d9
	nop			;50da
	nop			;50db
	nop			;50dc
	nop			;50dd
	nop			;50de
	nop			;50df
	ld b,h			;50e0
	ld h,l			;50e1
	ld h,(hl)		;50e2
	ld h,c			;50e3
	ld (hl),l		;50e4
	ld l,h			;50e5
	ld (hl),h		;50e6
	jr nz,l50e9h		;50e7
l50e9h:
	nop			;50e9
	nop			;50ea
	nop			;50eb
	nop			;50ec
	nop			;50ed
	nop			;50ee
	nop			;50ef
	nop			;50f0
	nop			;50f1
	nop			;50f2
	nop			;50f3
	nop			;50f4
	nop			;50f5
	nop			;50f6
	nop			;50f7
	nop			;50f8
	nop			;50f9
	nop			;50fa
	nop			;50fb
	nop			;50fc
	nop			;50fd
	nop			;50fe
	nop			;50ff
	nop			;5100
	nop			;5101
	nop			;5102
	nop			;5103
	nop			;5104
	nop			;5105
	nop			;5106
	nop			;5107
	ld b,h			;5108
	ld h,l			;5109
	ld h,(hl)		;510a
	ld h,c			;510b
	ld (hl),l		;510c
	ld l,h			;510d
	ld (hl),h		;510e
	jr nz,l5111h		;510f
l5111h:
	nop			;5111
	nop			;5112
	nop			;5113
	nop			;5114
	nop			;5115
	nop			;5116
	nop			;5117
	nop			;5118
	nop			;5119
	nop			;511a
	nop			;511b
	nop			;511c
	nop			;511d
	nop			;511e
	nop			;511f
	nop			;5120
	nop			;5121
	nop			;5122
	nop			;5123
	nop			;5124
	nop			;5125
	nop			;5126
	nop			;5127
	nop			;5128
	nop			;5129
	nop			;512a
	nop			;512b
	nop			;512c
	nop			;512d
	nop			;512e
	nop			;512f
	ld b,h			;5130
	ld h,l			;5131
	ld h,(hl)		;5132
	ld h,c			;5133
	ld (hl),l		;5134
	ld l,h			;5135
	ld (hl),h		;5136
	jr nz,l5139h		;5137
l5139h:
	nop			;5139
	nop			;513a
	nop			;513b
	nop			;513c
	nop			;513d
	nop			;513e
	nop			;513f
	nop			;5140
	nop			;5141
	nop			;5142
	nop			;5143
	nop			;5144
	nop			;5145
	nop			;5146
	nop			;5147
	nop			;5148
	nop			;5149
	nop			;514a
	nop			;514b
	nop			;514c
	nop			;514d
	nop			;514e
	nop			;514f
	nop			;5150
	nop			;5151
	nop			;5152
	nop			;5153
	nop			;5154
	nop			;5155
	nop			;5156
	nop			;5157
	ld b,h			;5158
	ld h,l			;5159
	ld h,(hl)		;515a
	ld h,c			;515b
	ld (hl),l		;515c
	ld l,h			;515d
	ld (hl),h		;515e
	jr nz,l5161h		;515f
l5161h:
	nop			;5161
	nop			;5162
	nop			;5163
	nop			;5164
	nop			;5165
	nop			;5166
	nop			;5167
	nop			;5168
	nop			;5169
	nop			;516a
	nop			;516b
	nop			;516c
	nop			;516d
	nop			;516e
	nop			;516f
	nop			;5170
	nop			;5171
	nop			;5172
	nop			;5173
	nop			;5174
	nop			;5175
	nop			;5176
	nop			;5177
	nop			;5178
	nop			;5179
	nop			;517a
	nop			;517b
	nop			;517c
	nop			;517d
	nop			;517e
	nop			;517f
	ld b,h			;5180
	ld h,l			;5181
	ld h,(hl)		;5182
	ld h,c			;5183
	ld (hl),l		;5184
	ld l,h			;5185
	ld (hl),h		;5186
	jr nz,l5189h		;5187
l5189h:
	nop			;5189
	nop			;518a
	nop			;518b
	nop			;518c
	nop			;518d
	nop			;518e
	nop			;518f
	nop			;5190
	nop			;5191
	nop			;5192
	nop			;5193
	nop			;5194
	nop			;5195
	nop			;5196
	nop			;5197
	nop			;5198
	nop			;5199
	nop			;519a
	nop			;519b
	nop			;519c
	nop			;519d
	nop			;519e
	nop			;519f
	nop			;51a0
	nop			;51a1
	nop			;51a2
	nop			;51a3
	nop			;51a4
	nop			;51a5
	nop			;51a6
	nop			;51a7
	ld b,h			;51a8
	ld h,l			;51a9
	ld h,(hl)		;51aa
	ld h,c			;51ab
	ld (hl),l		;51ac
	ld l,h			;51ad
	ld (hl),h		;51ae
	jr nz,l51b1h		;51af
l51b1h:
	nop			;51b1
	nop			;51b2
	nop			;51b3
	nop			;51b4
	nop			;51b5
	nop			;51b6
	nop			;51b7
	nop			;51b8
	nop			;51b9
	nop			;51ba
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
	nop			;51ca
	nop			;51cb
	nop			;51cc
	nop			;51cd
	nop			;51ce
	nop			;51cf
	ld b,h			;51d0
	ld h,l			;51d1
	ld h,(hl)		;51d2
	ld h,c			;51d3
	ld (hl),l		;51d4
	ld l,h			;51d5
	ld (hl),h		;51d6
	jr nz,l51d9h		;51d7
l51d9h:
	nop			;51d9
	nop			;51da
	nop			;51db
	nop			;51dc
	nop			;51dd
	nop			;51de
	nop			;51df
	nop			;51e0
	nop			;51e1
	nop			;51e2
	nop			;51e3
	nop			;51e4
	nop			;51e5
	nop			;51e6
	nop			;51e7
	nop			;51e8
	nop			;51e9
	nop			;51ea
	nop			;51eb
	nop			;51ec
	nop			;51ed
	nop			;51ee
	nop			;51ef
	nop			;51f0
	nop			;51f1
	nop			;51f2
	nop			;51f3
	nop			;51f4
	nop			;51f5
	nop			;51f6
	nop			;51f7
	ld b,h			;51f8
	ld h,l			;51f9
	ld h,(hl)		;51fa
	ld h,c			;51fb
	ld (hl),l		;51fc
	ld l,h			;51fd
	ld (hl),h		;51fe
	jr nz,l5201h		;51ff
l5201h:
	nop			;5201
	nop			;5202
	nop			;5203
	nop			;5204
	nop			;5205
	nop			;5206
	nop			;5207
	nop			;5208
	nop			;5209
	nop			;520a
	nop			;520b
	nop			;520c
	nop			;520d
	nop			;520e
	nop			;520f
	nop			;5210
	nop			;5211
	nop			;5212
	nop			;5213
	nop			;5214
	nop			;5215
	nop			;5216
	nop			;5217
	nop			;5218
	nop			;5219
	nop			;521a
	nop			;521b
	nop			;521c
	nop			;521d
	nop			;521e
	nop			;521f
	ld b,h			;5220
	ld h,l			;5221
	ld h,(hl)		;5222
	ld h,c			;5223
	ld (hl),l		;5224
	ld l,h			;5225
	ld (hl),h		;5226
	jr nz,l5229h		;5227
l5229h:
	nop			;5229
	nop			;522a
	nop			;522b
	nop			;522c
	nop			;522d
	nop			;522e
	nop			;522f
	nop			;5230
	nop			;5231
	nop			;5232
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
	nop			;5240
	nop			;5241
	nop			;5242
	nop			;5243
	nop			;5244
	nop			;5245
	nop			;5246
	nop			;5247
	ld b,h			;5248
	ld h,l			;5249
	ld h,(hl)		;524a
	ld h,c			;524b
	ld (hl),l		;524c
	ld l,h			;524d
	ld (hl),h		;524e
	jr nz,l5251h		;524f
l5251h:
	nop			;5251
	nop			;5252
	nop			;5253
	nop			;5254
	nop			;5255
	nop			;5256
	nop			;5257
	nop			;5258
	nop			;5259
	nop			;525a
	nop			;525b
	nop			;525c
	nop			;525d
	nop			;525e
	nop			;525f
	nop			;5260
	nop			;5261
	nop			;5262
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
	nop			;526e
	nop			;526f
	ld b,h			;5270
	ld h,l			;5271
	ld h,(hl)		;5272
	ld h,c			;5273
	ld (hl),l		;5274
	ld l,h			;5275
	ld (hl),h		;5276
	jr nz,l5279h		;5277
l5279h:
	nop			;5279
	nop			;527a
	nop			;527b
	nop			;527c
	nop			;527d
	nop			;527e
	nop			;527f
	nop			;5280
	nop			;5281
	nop			;5282
	nop			;5283
	nop			;5284
	nop			;5285
	nop			;5286
	nop			;5287
	nop			;5288
	nop			;5289
	nop			;528a
	nop			;528b
	nop			;528c
	nop			;528d
	nop			;528e
	nop			;528f
	nop			;5290
	nop			;5291
	nop			;5292
	nop			;5293
	nop			;5294
	nop			;5295
	nop			;5296
	nop			;5297
	ld b,h			;5298
	ld h,l			;5299
	ld h,(hl)		;529a
	ld h,c			;529b
	ld (hl),l		;529c
	ld l,h			;529d
	ld (hl),h		;529e
	jr nz,l52a1h		;529f
l52a1h:
	nop			;52a1
	nop			;52a2
	nop			;52a3
	nop			;52a4
	nop			;52a5
	nop			;52a6
	nop			;52a7
	nop			;52a8
	nop			;52a9
	nop			;52aa
	nop			;52ab
	nop			;52ac
	nop			;52ad
	nop			;52ae
	nop			;52af
	nop			;52b0
	nop			;52b1
	nop			;52b2
	nop			;52b3
	nop			;52b4
	nop			;52b5
	nop			;52b6
	nop			;52b7
	nop			;52b8
	nop			;52b9
	nop			;52ba
	nop			;52bb
	nop			;52bc
	nop			;52bd
	nop			;52be
	nop			;52bf
	ld b,h			;52c0
	ld h,l			;52c1
	ld h,(hl)		;52c2
	ld h,c			;52c3
	ld (hl),l		;52c4
	ld l,h			;52c5
	ld (hl),h		;52c6
	jr nz,l52c9h		;52c7
l52c9h:
	nop			;52c9
	nop			;52ca
	nop			;52cb
	nop			;52cc
	nop			;52cd
	nop			;52ce
	nop			;52cf
	nop			;52d0
	nop			;52d1
	nop			;52d2
	nop			;52d3
	nop			;52d4
	nop			;52d5
	nop			;52d6
	nop			;52d7
	nop			;52d8
	nop			;52d9
	nop			;52da
	nop			;52db
	nop			;52dc
	nop			;52dd
	nop			;52de
	nop			;52df
	ld hl,(02a2ah)		;52e0
	ld hl,(02a2ah)		;52e3
	ld hl,(l442ah)		;52e6
	ld h,l			;52e9
	ld h,(hl)		;52ea
	ld h,c			;52eb
	ld (hl),l		;52ec
	ld l,h			;52ed
	ld (hl),h		;52ee
	jr nz,l52f1h		;52ef
l52f1h:
	nop			;52f1
	nop			;52f2
	nop			;52f3
	nop			;52f4
	nop			;52f5
	nop			;52f6
	nop			;52f7
	nop			;52f8
	nop			;52f9
	nop			;52fa
	nop			;52fb
	nop			;52fc
	nop			;52fd
	nop			;52fe
	nop			;52ff
	nop			;5300
	nop			;5301
	nop			;5302
	nop			;5303
	nop			;5304
	nop			;5305
	nop			;5306
	nop			;5307
	nop			;5308
	nop			;5309
	nop			;530a
	nop			;530b
	nop			;530c
	nop			;530d
	nop			;530e
	nop			;530f
	ld b,h			;5310
	ld h,l			;5311
	ld h,(hl)		;5312
	ld h,c			;5313
	ld (hl),l		;5314
	ld l,h			;5315
	ld (hl),h		;5316
	jr nz,l5319h		;5317
l5319h:
	nop			;5319
	nop			;531a
	nop			;531b
	nop			;531c
	nop			;531d
	nop			;531e
	nop			;531f
	nop			;5320
	nop			;5321
	nop			;5322
	nop			;5323
	nop			;5324
	nop			;5325
	nop			;5326
	nop			;5327
	nop			;5328
	nop			;5329
	nop			;532a
	nop			;532b
	nop			;532c
	nop			;532d
	nop			;532e
	nop			;532f
	nop			;5330
	nop			;5331
	nop			;5332
	nop			;5333
	nop			;5334
	nop			;5335
	nop			;5336
	nop			;5337
	ld b,h			;5338
	ld h,l			;5339
	ld h,(hl)		;533a
	ld h,c			;533b
	ld (hl),l		;533c
	ld l,h			;533d
	ld (hl),h		;533e
	jr nz,l5341h		;533f
l5341h:
	nop			;5341
	nop			;5342
	nop			;5343
	nop			;5344
	nop			;5345
	nop			;5346
	nop			;5347
	nop			;5348
	nop			;5349
	nop			;534a
	nop			;534b
	nop			;534c
	nop			;534d
	nop			;534e
	nop			;534f
	nop			;5350
	nop			;5351
	nop			;5352
	nop			;5353
	nop			;5354
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
	ld b,h			;5360
	ld h,l			;5361
	ld h,(hl)		;5362
	ld h,c			;5363
	ld (hl),l		;5364
	ld l,h			;5365
	ld (hl),h		;5366
	jr nz,l5369h		;5367
l5369h:
	nop			;5369
	nop			;536a
	nop			;536b
	nop			;536c
	nop			;536d
	nop			;536e
	nop			;536f
	nop			;5370
	nop			;5371
	nop			;5372
	nop			;5373
	nop			;5374
	nop			;5375
	nop			;5376
	nop			;5377
	nop			;5378
	nop			;5379
	nop			;537a
	nop			;537b
	nop			;537c
	nop			;537d
	nop			;537e
	nop			;537f
	nop			;5380
	nop			;5381
	nop			;5382
	nop			;5383
	nop			;5384
	nop			;5385
	nop			;5386
	nop			;5387
	ld b,h			;5388
	ld h,l			;5389
	ld h,(hl)		;538a
	ld h,c			;538b
	ld (hl),l		;538c
	ld l,h			;538d
	ld (hl),h		;538e
	jr nz,l5391h		;538f
l5391h:
	nop			;5391
	nop			;5392
	nop			;5393
	nop			;5394
	nop			;5395
	nop			;5396
	nop			;5397
	nop			;5398
	nop			;5399
	nop			;539a
	nop			;539b
	nop			;539c
	nop			;539d
	nop			;539e
	nop			;539f
	nop			;53a0
	nop			;53a1
	nop			;53a2
	nop			;53a3
	nop			;53a4
	nop			;53a5
	nop			;53a6
	nop			;53a7
	nop			;53a8
	nop			;53a9
	nop			;53aa
	nop			;53ab
	nop			;53ac
	nop			;53ad
	nop			;53ae
	nop			;53af
	ld b,h			;53b0
	ld h,l			;53b1
	ld h,(hl)		;53b2
	ld h,c			;53b3
	ld (hl),l		;53b4
	ld l,h			;53b5
	ld (hl),h		;53b6
	jr nz,l53b9h		;53b7
l53b9h:
	nop			;53b9
	nop			;53ba
	nop			;53bb
	nop			;53bc
	nop			;53bd
	nop			;53be
	nop			;53bf
	nop			;53c0
	nop			;53c1
	nop			;53c2
	nop			;53c3
	nop			;53c4
	nop			;53c5
	nop			;53c6
	nop			;53c7
	nop			;53c8
	nop			;53c9
	nop			;53ca
	nop			;53cb
	nop			;53cc
	nop			;53cd
	nop			;53ce
	nop			;53cf
	nop			;53d0
	nop			;53d1
	nop			;53d2
	nop			;53d3
	nop			;53d4
	nop			;53d5
	nop			;53d6
	nop			;53d7
	ld b,h			;53d8
	ld h,l			;53d9
	ld h,(hl)		;53da
	ld h,c			;53db
	ld (hl),l		;53dc
	ld l,h			;53dd
	ld (hl),h		;53de
	jr nz,l53e1h		;53df
l53e1h:
	nop			;53e1
	nop			;53e2
	nop			;53e3
	nop			;53e4
	nop			;53e5
	nop			;53e6
	nop			;53e7
	nop			;53e8
	nop			;53e9
	nop			;53ea
	nop			;53eb
	nop			;53ec
	nop			;53ed
	nop			;53ee
	nop			;53ef
	nop			;53f0
	nop			;53f1
	nop			;53f2
	nop			;53f3
	nop			;53f4
	nop			;53f5
	nop			;53f6
	nop			;53f7
	nop			;53f8
	nop			;53f9
	nop			;53fa
	nop			;53fb
	nop			;53fc
	nop			;53fd
	nop			;53fe
	nop			;53ff
	ld b,h			;5400
	ld h,l			;5401
	ld h,(hl)		;5402
	ld h,c			;5403
	ld (hl),l		;5404
	ld l,h			;5405
	ld (hl),h		;5406
	jr nz,l5409h		;5407
l5409h:
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
	nop			;5414
	nop			;5415
	nop			;5416
	nop			;5417
	nop			;5418
	nop			;5419
	nop			;541a
	nop			;541b
	nop			;541c
	nop			;541d
	nop			;541e
	nop			;541f
	nop			;5420
	nop			;5421
	nop			;5422
	nop			;5423
	nop			;5424
	nop			;5425
	nop			;5426
	nop			;5427
	ld b,h			;5428
	ld h,l			;5429
	ld h,(hl)		;542a
	ld h,c			;542b
	ld (hl),l		;542c
	ld l,h			;542d
	ld (hl),h		;542e
	jr nz,l5431h		;542f
l5431h:
	nop			;5431
	nop			;5432
	nop			;5433
	nop			;5434
	nop			;5435
	nop			;5436
	nop			;5437
	nop			;5438
	nop			;5439
	nop			;543a
	nop			;543b
	nop			;543c
	nop			;543d
	nop			;543e
	nop			;543f
	nop			;5440
	nop			;5441
	nop			;5442
	nop			;5443
	nop			;5444
	nop			;5445
	nop			;5446
	nop			;5447
	nop			;5448
	nop			;5449
	nop			;544a
	nop			;544b
	nop			;544c
	nop			;544d
	nop			;544e
	nop			;544f
	ld b,h			;5450
	ld h,l			;5451
	ld h,(hl)		;5452
	ld h,c			;5453
	ld (hl),l		;5454
	ld l,h			;5455
	ld (hl),h		;5456
	jr nz,l5459h		;5457
l5459h:
	nop			;5459
	nop			;545a
	nop			;545b
	nop			;545c
	nop			;545d
	nop			;545e
	nop			;545f
	nop			;5460
	nop			;5461
	nop			;5462
	nop			;5463
	nop			;5464
	nop			;5465
	nop			;5466
	nop			;5467
	nop			;5468
	nop			;5469
	nop			;546a
	nop			;546b
	nop			;546c
	nop			;546d
	nop			;546e
	nop			;546f
	nop			;5470
	nop			;5471
	nop			;5472
	nop			;5473
	nop			;5474
	nop			;5475
	nop			;5476
	nop			;5477
	ld b,h			;5478
	ld h,l			;5479
	ld h,(hl)		;547a
	ld h,c			;547b
	ld (hl),l		;547c
	ld l,h			;547d
	ld (hl),h		;547e
	jr nz,l5481h		;547f
l5481h:
	nop			;5481
	nop			;5482
	nop			;5483
	nop			;5484
	nop			;5485
	nop			;5486
	nop			;5487
	nop			;5488
	nop			;5489
	nop			;548a
	nop			;548b
	nop			;548c
	nop			;548d
	nop			;548e
	nop			;548f
	nop			;5490
	nop			;5491
	nop			;5492
	nop			;5493
	nop			;5494
	nop			;5495
	nop			;5496
	nop			;5497
	nop			;5498
	nop			;5499
	nop			;549a
	nop			;549b
	nop			;549c
	nop			;549d
	nop			;549e
	nop			;549f
	ld b,h			;54a0
	ld h,l			;54a1
	ld h,(hl)		;54a2
	ld h,c			;54a3
	ld (hl),l		;54a4
	ld l,h			;54a5
	ld (hl),h		;54a6
	jr nz,l54a9h		;54a7
l54a9h:
	nop			;54a9
	nop			;54aa
	nop			;54ab
	nop			;54ac
	nop			;54ad
	nop			;54ae
	nop			;54af
	nop			;54b0
	nop			;54b1
	nop			;54b2
	nop			;54b3
	nop			;54b4
	nop			;54b5
	nop			;54b6
	nop			;54b7
	nop			;54b8
	nop			;54b9
	nop			;54ba
	nop			;54bb
	nop			;54bc
	nop			;54bd
	nop			;54be
	nop			;54bf
	nop			;54c0
	nop			;54c1
	nop			;54c2
	nop			;54c3
	nop			;54c4
	nop			;54c5
	nop			;54c6
	nop			;54c7
	ld b,h			;54c8
	ld h,l			;54c9
	ld h,(hl)		;54ca
	ld h,c			;54cb
	ld (hl),l		;54cc
	ld l,h			;54cd
	ld (hl),h		;54ce
	jr nz,l54d1h		;54cf
l54d1h:
	nop			;54d1
	nop			;54d2
	nop			;54d3
	nop			;54d4
	nop			;54d5
	nop			;54d6
	nop			;54d7
	nop			;54d8
	nop			;54d9
	nop			;54da
	nop			;54db
	nop			;54dc
	nop			;54dd
	nop			;54de
	nop			;54df
	nop			;54e0
	nop			;54e1
	nop			;54e2
	nop			;54e3
	nop			;54e4
	nop			;54e5
	nop			;54e6
	nop			;54e7
	nop			;54e8
	nop			;54e9
	nop			;54ea
	nop			;54eb
	nop			;54ec
	nop			;54ed
	nop			;54ee
	nop			;54ef
	ld b,h			;54f0
	ld h,l			;54f1
	ld h,(hl)		;54f2
	ld h,c			;54f3
	ld (hl),l		;54f4
	ld l,h			;54f5
	ld (hl),h		;54f6
	jr nz,l54f9h		;54f7
l54f9h:
	nop			;54f9
	nop			;54fa
	nop			;54fb
	nop			;54fc
	nop			;54fd
	nop			;54fe
	nop			;54ff
	nop			;5500
	nop			;5501
	nop			;5502
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
	nop			;550e
	nop			;550f
	nop			;5510
	nop			;5511
	nop			;5512
	nop			;5513
	nop			;5514
	nop			;5515
	nop			;5516
	nop			;5517
	ld b,h			;5518
	ld h,l			;5519
	ld h,(hl)		;551a
	ld h,c			;551b
	ld (hl),l		;551c
	ld l,h			;551d
	ld (hl),h		;551e
	jr nz,l5521h		;551f
l5521h:
	nop			;5521
	nop			;5522
	nop			;5523
	nop			;5524
	nop			;5525
	nop			;5526
	nop			;5527
	nop			;5528
	nop			;5529
	nop			;552a
	nop			;552b
	nop			;552c
	nop			;552d
	nop			;552e
	nop			;552f
	nop			;5530
	nop			;5531
	nop			;5532
	nop			;5533
	nop			;5534
	nop			;5535
	nop			;5536
	nop			;5537
	nop			;5538
	nop			;5539
	nop			;553a
	nop			;553b
	nop			;553c
	nop			;553d
	nop			;553e
	nop			;553f
	ld b,h			;5540
	ld h,l			;5541
	ld h,(hl)		;5542
	ld h,c			;5543
	ld (hl),l		;5544
	ld l,h			;5545
	ld (hl),h		;5546
	jr nz,l5549h		;5547
l5549h:
	nop			;5549
	nop			;554a
	nop			;554b
	nop			;554c
	nop			;554d
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
	nop			;5558
	nop			;5559
	nop			;555a
	nop			;555b
	nop			;555c
	nop			;555d
	nop			;555e
	nop			;555f
	nop			;5560
	nop			;5561
	nop			;5562
	nop			;5563
	nop			;5564
	nop			;5565
	nop			;5566
	nop			;5567
	ld b,h			;5568
	ld h,l			;5569
	ld h,(hl)		;556a
	ld h,c			;556b
	ld (hl),l		;556c
	ld l,h			;556d
	ld (hl),h		;556e
	jr nz,l5571h		;556f
l5571h:
	nop			;5571
	nop			;5572
	nop			;5573
	nop			;5574
	nop			;5575
	nop			;5576
	nop			;5577
	nop			;5578
	nop			;5579
	nop			;557a
	nop			;557b
	nop			;557c
	nop			;557d
	nop			;557e
	nop			;557f
	nop			;5580
	nop			;5581
	nop			;5582
	nop			;5583
	nop			;5584
	nop			;5585
	nop			;5586
	nop			;5587
	nop			;5588
	nop			;5589
	nop			;558a
	nop			;558b
	nop			;558c
	nop			;558d
	nop			;558e
	nop			;558f
	ld b,h			;5590
	ld h,l			;5591
	ld h,(hl)		;5592
	ld h,c			;5593
	ld (hl),l		;5594
	ld l,h			;5595
	ld (hl),h		;5596
	jr nz,l5599h		;5597
l5599h:
	nop			;5599
	nop			;559a
	nop			;559b
	nop			;559c
	nop			;559d
	nop			;559e
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
	nop			;55a9
	nop			;55aa
	nop			;55ab
	nop			;55ac
	nop			;55ad
	nop			;55ae
	nop			;55af
	nop			;55b0
	nop			;55b1
	nop			;55b2
	nop			;55b3
	nop			;55b4
	nop			;55b5
	nop			;55b6
	nop			;55b7
	ld b,h			;55b8
	ld h,l			;55b9
	ld h,(hl)		;55ba
	ld h,c			;55bb
	ld (hl),l		;55bc
	ld l,h			;55bd
	ld (hl),h		;55be
	jr nz,l55c1h		;55bf
l55c1h:
	nop			;55c1
	nop			;55c2
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
	nop			;55ce
	nop			;55cf
	nop			;55d0
	nop			;55d1
	nop			;55d2
	nop			;55d3
	nop			;55d4
	nop			;55d5
	nop			;55d6
	nop			;55d7
	nop			;55d8
	nop			;55d9
	nop			;55da
	nop			;55db
	nop			;55dc
	nop			;55dd
	nop			;55de
	nop			;55df
	ld b,h			;55e0
	ld h,l			;55e1
	ld h,(hl)		;55e2
	ld h,c			;55e3
	ld (hl),l		;55e4
	ld l,h			;55e5
	ld (hl),h		;55e6
	jr nz,l55e9h		;55e7
l55e9h:
	nop			;55e9
	nop			;55ea
	nop			;55eb
	nop			;55ec
	nop			;55ed
	nop			;55ee
	nop			;55ef
	nop			;55f0
	nop			;55f1
	nop			;55f2
	nop			;55f3
	nop			;55f4
	nop			;55f5
	nop			;55f6
	nop			;55f7
	nop			;55f8
	nop			;55f9
	nop			;55fa
	nop			;55fb
	nop			;55fc
	nop			;55fd
	nop			;55fe
	nop			;55ff
	nop			;5600
	nop			;5601
	nop			;5602
	nop			;5603
	nop			;5604
	nop			;5605
	nop			;5606
	nop			;5607
	ld b,h			;5608
	ld h,l			;5609
	ld h,(hl)		;560a
	ld h,c			;560b
	ld (hl),l		;560c
	ld l,h			;560d
	ld (hl),h		;560e
	jr nz,l5611h		;560f
l5611h:
	nop			;5611
	nop			;5612
	nop			;5613
	nop			;5614
	nop			;5615
	nop			;5616
	nop			;5617
	nop			;5618
	nop			;5619
	nop			;561a
	nop			;561b
	nop			;561c
	nop			;561d
	nop			;561e
	nop			;561f
	nop			;5620
	nop			;5621
	nop			;5622
	nop			;5623
	nop			;5624
	nop			;5625
	nop			;5626
	nop			;5627
	nop			;5628
	nop			;5629
	nop			;562a
	nop			;562b
	nop			;562c
	nop			;562d
	nop			;562e
	nop			;562f
	ld b,h			;5630
	ld h,l			;5631
	ld h,(hl)		;5632
	ld h,c			;5633
	ld (hl),l		;5634
	ld l,h			;5635
	ld (hl),h		;5636
	jr nz,l5639h		;5637
l5639h:
	nop			;5639
	nop			;563a
	nop			;563b
	nop			;563c
	nop			;563d
	nop			;563e
	nop			;563f
	nop			;5640
	nop			;5641
	nop			;5642
	nop			;5643
	nop			;5644
	nop			;5645
	nop			;5646
	nop			;5647
	nop			;5648
	nop			;5649
	nop			;564a
	nop			;564b
	nop			;564c
	nop			;564d
	nop			;564e
	nop			;564f
	nop			;5650
	nop			;5651
	nop			;5652
	nop			;5653
	nop			;5654
	nop			;5655
	nop			;5656
	nop			;5657
	ld b,h			;5658
	ld h,l			;5659
	ld h,(hl)		;565a
	ld h,c			;565b
	ld (hl),l		;565c
	ld l,h			;565d
	ld (hl),h		;565e
	jr nz,l5661h		;565f
l5661h:
	nop			;5661
	nop			;5662
	nop			;5663
	nop			;5664
	nop			;5665
	nop			;5666
	nop			;5667
	nop			;5668
	nop			;5669
	nop			;566a
	nop			;566b
	nop			;566c
	nop			;566d
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
	nop			;567c
	nop			;567d
	nop			;567e
	nop			;567f
	ld b,h			;5680
	ld h,l			;5681
	ld h,(hl)		;5682
	ld h,c			;5683
	ld (hl),l		;5684
	ld l,h			;5685
	ld (hl),h		;5686
	jr nz,l5689h		;5687
l5689h:
	nop			;5689
	nop			;568a
	nop			;568b
	nop			;568c
	nop			;568d
	nop			;568e
	nop			;568f
	nop			;5690
	nop			;5691
	nop			;5692
	nop			;5693
	nop			;5694
	nop			;5695
	nop			;5696
	nop			;5697
	nop			;5698
	nop			;5699
	nop			;569a
	nop			;569b
	nop			;569c
	nop			;569d
	nop			;569e
	nop			;569f
	nop			;56a0
	nop			;56a1
	nop			;56a2
	nop			;56a3
	nop			;56a4
	nop			;56a5
	nop			;56a6
	nop			;56a7
	ld b,h			;56a8
	ld h,l			;56a9
	ld h,(hl)		;56aa
	ld h,c			;56ab
	ld (hl),l		;56ac
	ld l,h			;56ad
	ld (hl),h		;56ae
	jr nz,l56b1h		;56af
l56b1h:
	nop			;56b1
	nop			;56b2
	nop			;56b3
	nop			;56b4
	nop			;56b5
	nop			;56b6
	nop			;56b7
	nop			;56b8
	nop			;56b9
	nop			;56ba
	nop			;56bb
	nop			;56bc
	nop			;56bd
	nop			;56be
	nop			;56bf
	nop			;56c0
	nop			;56c1
	nop			;56c2
	nop			;56c3
	nop			;56c4
	nop			;56c5
	nop			;56c6
	nop			;56c7
	nop			;56c8
	nop			;56c9
	nop			;56ca
	nop			;56cb
	nop			;56cc
	nop			;56cd
	nop			;56ce
	nop			;56cf
	ld b,h			;56d0
	ld h,l			;56d1
	ld h,(hl)		;56d2
	ld h,c			;56d3
	ld (hl),l		;56d4
	ld l,h			;56d5
	ld (hl),h		;56d6
	jr nz,l56d9h		;56d7
l56d9h:
	nop			;56d9
	nop			;56da
	nop			;56db
	nop			;56dc
	nop			;56dd
	nop			;56de
	nop			;56df
	nop			;56e0
	nop			;56e1
	nop			;56e2
	nop			;56e3
	nop			;56e4
	nop			;56e5
	nop			;56e6
	nop			;56e7
	nop			;56e8
	nop			;56e9
	nop			;56ea
	nop			;56eb
	nop			;56ec
	nop			;56ed
	nop			;56ee
	nop			;56ef
	nop			;56f0
	nop			;56f1
	nop			;56f2
	nop			;56f3
	nop			;56f4
	nop			;56f5
	nop			;56f6
	nop			;56f7
	ld b,h			;56f8
	ld h,l			;56f9
	ld h,(hl)		;56fa
	ld h,c			;56fb
	ld (hl),l		;56fc
	ld l,h			;56fd
	ld (hl),h		;56fe
	jr nz,l5701h		;56ff
l5701h:
	nop			;5701
	nop			;5702
	nop			;5703
	nop			;5704
	nop			;5705
	nop			;5706
	nop			;5707
	nop			;5708
	nop			;5709
	nop			;570a
	nop			;570b
	nop			;570c
	nop			;570d
	nop			;570e
	nop			;570f
	nop			;5710
	nop			;5711
	nop			;5712
	nop			;5713
	nop			;5714
	nop			;5715
	nop			;5716
	nop			;5717
	nop			;5718
	nop			;5719
	nop			;571a
	nop			;571b
	nop			;571c
	nop			;571d
	nop			;571e
	nop			;571f
	ld b,h			;5720
	ld h,l			;5721
	ld h,(hl)		;5722
	ld h,c			;5723
	ld (hl),l		;5724
	ld l,h			;5725
	ld (hl),h		;5726
	jr nz,l5729h		;5727
l5729h:
	nop			;5729
	nop			;572a
	nop			;572b
	nop			;572c
	nop			;572d
	nop			;572e
	nop			;572f
	nop			;5730
	nop			;5731
	nop			;5732
	nop			;5733
	nop			;5734
	nop			;5735
	nop			;5736
	nop			;5737
	nop			;5738
	nop			;5739
	nop			;573a
	nop			;573b
	nop			;573c
	nop			;573d
	nop			;573e
	nop			;573f
	nop			;5740
	nop			;5741
	nop			;5742
	nop			;5743
	nop			;5744
	nop			;5745
	nop			;5746
	nop			;5747
	ld b,h			;5748
	ld h,l			;5749
	ld h,(hl)		;574a
	ld h,c			;574b
	ld (hl),l		;574c
	ld l,h			;574d
	ld (hl),h		;574e
	jr nz,l5751h		;574f
l5751h:
	nop			;5751
	nop			;5752
	nop			;5753
	nop			;5754
	nop			;5755
	nop			;5756
	nop			;5757
	nop			;5758
	nop			;5759
	nop			;575a
	nop			;575b
	nop			;575c
	nop			;575d
	nop			;575e
	nop			;575f
	nop			;5760
	nop			;5761
	nop			;5762
	nop			;5763
	nop			;5764
	nop			;5765
	nop			;5766
	nop			;5767
	nop			;5768
	nop			;5769
	nop			;576a
	nop			;576b
	nop			;576c
	nop			;576d
	nop			;576e
	nop			;576f
	ld b,h			;5770
	ld h,l			;5771
	ld h,(hl)		;5772
	ld h,c			;5773
	ld (hl),l		;5774
	ld l,h			;5775
	ld (hl),h		;5776
	jr nz,l5779h		;5777
l5779h:
	nop			;5779
	nop			;577a
	nop			;577b
	nop			;577c
	nop			;577d
	nop			;577e
	nop			;577f
	nop			;5780
	nop			;5781
	nop			;5782
	nop			;5783
	nop			;5784
	nop			;5785
	nop			;5786
	nop			;5787
	nop			;5788
	nop			;5789
	nop			;578a
	nop			;578b
	nop			;578c
	nop			;578d
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
	ld b,h			;5798
	ld h,l			;5799
	ld h,(hl)		;579a
	ld h,c			;579b
	ld (hl),l		;579c
	ld l,h			;579d
	ld (hl),h		;579e
	jr nz,l57a1h		;579f
l57a1h:
	nop			;57a1
	nop			;57a2
	nop			;57a3
	nop			;57a4
	nop			;57a5
	nop			;57a6
	nop			;57a7
	nop			;57a8
	nop			;57a9
	nop			;57aa
	nop			;57ab
	nop			;57ac
	nop			;57ad
	nop			;57ae
	nop			;57af
	nop			;57b0
	nop			;57b1
	nop			;57b2
	nop			;57b3
	nop			;57b4
	nop			;57b5
	nop			;57b6
	nop			;57b7
	nop			;57b8
	nop			;57b9
	nop			;57ba
	nop			;57bb
	nop			;57bc
	nop			;57bd
	nop			;57be
	nop			;57bf
	ld b,h			;57c0
	ld h,l			;57c1
	ld h,(hl)		;57c2
	ld h,c			;57c3
	ld (hl),l		;57c4
	ld l,h			;57c5
	ld (hl),h		;57c6
	jr nz,l57c9h		;57c7
l57c9h:
	nop			;57c9
	nop			;57ca
	nop			;57cb
	nop			;57cc
	nop			;57cd
	nop			;57ce
	nop			;57cf
	nop			;57d0
	nop			;57d1
	nop			;57d2
	nop			;57d3
	nop			;57d4
	nop			;57d5
	nop			;57d6
	nop			;57d7
	nop			;57d8
	nop			;57d9
	nop			;57da
	nop			;57db
	nop			;57dc
	nop			;57dd
	nop			;57de
	nop			;57df
	nop			;57e0
	nop			;57e1
	nop			;57e2
	nop			;57e3
	nop			;57e4
	nop			;57e5
	nop			;57e6
	nop			;57e7
	ld b,h			;57e8
	ld h,l			;57e9
	ld h,(hl)		;57ea
	ld h,c			;57eb
	ld (hl),l		;57ec
	ld l,h			;57ed
	ld (hl),h		;57ee
	jr nz,l57f1h		;57ef
l57f1h:
	nop			;57f1
	nop			;57f2
	nop			;57f3
	nop			;57f4
	nop			;57f5
	nop			;57f6
	nop			;57f7
	nop			;57f8
	nop			;57f9
	nop			;57fa
	nop			;57fb
	nop			;57fc
	nop			;57fd
	nop			;57fe
	nop			;57ff
	nop			;5800
	nop			;5801
	nop			;5802
	nop			;5803
	nop			;5804
	nop			;5805
	nop			;5806
	nop			;5807
	nop			;5808
	nop			;5809
	nop			;580a
	nop			;580b
	nop			;580c
	nop			;580d
	nop			;580e
	nop			;580f
	ld b,h			;5810
	ld h,l			;5811
	ld h,(hl)		;5812
	ld h,c			;5813
	ld (hl),l		;5814
	ld l,h			;5815
	ld (hl),h		;5816
	jr nz,l5819h		;5817
l5819h:
	nop			;5819
	nop			;581a
	nop			;581b
	nop			;581c
	nop			;581d
	nop			;581e
	nop			;581f
	nop			;5820
	nop			;5821
	nop			;5822
	nop			;5823
	nop			;5824
	nop			;5825
	nop			;5826
	nop			;5827
	nop			;5828
	nop			;5829
	nop			;582a
	nop			;582b
	nop			;582c
	nop			;582d
	nop			;582e
	nop			;582f
	nop			;5830
	nop			;5831
	nop			;5832
	nop			;5833
	nop			;5834
	nop			;5835
	nop			;5836
	nop			;5837
	ld b,h			;5838
	ld h,l			;5839
	ld h,(hl)		;583a
	ld h,c			;583b
	ld (hl),l		;583c
	ld l,h			;583d
	ld (hl),h		;583e
	jr nz,l5841h		;583f
l5841h:
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
	nop			;584d
	nop			;584e
	nop			;584f
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
	nop			;585c
	nop			;585d
	nop			;585e
	nop			;585f
	ld b,h			;5860
	ld h,l			;5861
	ld h,(hl)		;5862
	ld h,c			;5863
	ld (hl),l		;5864
	ld l,h			;5865
	ld (hl),h		;5866
	jr nz,l5869h		;5867
l5869h:
	nop			;5869
	nop			;586a
	nop			;586b
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
	nop			;587a
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
	ld b,h			;5888
	ld h,l			;5889
	ld h,(hl)		;588a
	ld h,c			;588b
	ld (hl),l		;588c
	ld l,h			;588d
	ld (hl),h		;588e
	jr nz,l5891h		;588f
l5891h:
	nop			;5891
	nop			;5892
	nop			;5893
	nop			;5894
	nop			;5895
	nop			;5896
	nop			;5897
	nop			;5898
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
	nop			;58a7
	nop			;58a8
	nop			;58a9
	nop			;58aa
	nop			;58ab
	nop			;58ac
	nop			;58ad
	nop			;58ae
	nop			;58af
	ld b,h			;58b0
	ld h,l			;58b1
	ld h,(hl)		;58b2
	ld h,c			;58b3
	ld (hl),l		;58b4
	ld l,h			;58b5
	ld (hl),h		;58b6
	jr nz,l58b9h		;58b7
l58b9h:
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
	nop			;58c5
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
	nop			;58d4
	nop			;58d5
	nop			;58d6
	nop			;58d7
	ld b,h			;58d8
	ld h,l			;58d9
	ld h,(hl)		;58da
	ld h,c			;58db
	ld (hl),l		;58dc
	ld l,h			;58dd
	ld (hl),h		;58de
	jr nz,l58e1h		;58df
l58e1h:
	nop			;58e1
	nop			;58e2
	nop			;58e3
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
	nop			;58f2
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
	ld b,h			;5900
	ld h,l			;5901
	ld h,(hl)		;5902
	ld h,c			;5903
	ld (hl),l		;5904
	ld l,h			;5905
	ld (hl),h		;5906
	jr nz,l5909h		;5907
l5909h:
	nop			;5909
	nop			;590a
	nop			;590b
	nop			;590c
	nop			;590d
	nop			;590e
	nop			;590f
	nop			;5910
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
	nop			;591f
	nop			;5920
	nop			;5921
	nop			;5922
	nop			;5923
	nop			;5924
	nop			;5925
	nop			;5926
	nop			;5927
	ld b,h			;5928
	ld h,l			;5929
	ld h,(hl)		;592a
	ld h,c			;592b
	ld (hl),l		;592c
	ld l,h			;592d
	ld (hl),h		;592e
	jr nz,l5931h		;592f
l5931h:
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
	nop			;593d
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
	nop			;594c
	nop			;594d
	nop			;594e
	nop			;594f
	ld b,h			;5950
	ld h,l			;5951
	ld h,(hl)		;5952
	ld h,c			;5953
	ld (hl),l		;5954
	ld l,h			;5955
	ld (hl),h		;5956
	jr nz,l5959h		;5957
l5959h:
	nop			;5959
	nop			;595a
	nop			;595b
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
	nop			;596a
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
	ld b,h			;5978
	ld h,l			;5979
	ld h,(hl)		;597a
	ld h,c			;597b
	ld (hl),l		;597c
	ld l,h			;597d
	ld (hl),h		;597e
	jr nz,l5981h		;597f
l5981h:
	nop			;5981
	nop			;5982
	nop			;5983
	nop			;5984
	nop			;5985
	nop			;5986
	nop			;5987
	nop			;5988
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
	nop			;5997
	nop			;5998
	nop			;5999
	nop			;599a
	nop			;599b
	nop			;599c
	nop			;599d
	nop			;599e
	nop			;599f
	ld b,h			;59a0
	ld h,l			;59a1
	ld h,(hl)		;59a2
	ld h,c			;59a3
	ld (hl),l		;59a4
	ld l,h			;59a5
	ld (hl),h		;59a6
	jr nz,l59a9h		;59a7
l59a9h:
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
	nop			;59b5
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
	nop			;59c4
	nop			;59c5
	nop			;59c6
	nop			;59c7
	ld b,h			;59c8
	ld h,l			;59c9
	ld h,(hl)		;59ca
	ld h,c			;59cb
	ld (hl),l		;59cc
	ld l,h			;59cd
	ld (hl),h		;59ce
	jr nz,l59d1h		;59cf
l59d1h:
	nop			;59d1
	nop			;59d2
	nop			;59d3
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
	nop			;59e2
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
	ld b,h			;59f0
	ld h,l			;59f1
	ld h,(hl)		;59f2
	ld h,c			;59f3
	ld (hl),l		;59f4
	ld l,h			;59f5
	ld (hl),h		;59f6
	jr nz,l59f9h		;59f7
l59f9h:
	nop			;59f9
	nop			;59fa
	nop			;59fb
	nop			;59fc
	nop			;59fd
	nop			;59fe
	nop			;59ff
	nop			;5a00
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
	nop			;5a0f
	nop			;5a10
	nop			;5a11
	nop			;5a12
	nop			;5a13
	nop			;5a14
	nop			;5a15
	nop			;5a16
	nop			;5a17
	ld b,h			;5a18
	ld h,l			;5a19
	ld h,(hl)		;5a1a
	ld h,c			;5a1b
	ld (hl),l		;5a1c
	ld l,h			;5a1d
	ld (hl),h		;5a1e
	jr nz,l5a21h		;5a1f
l5a21h:
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
	nop			;5a2d
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
	nop			;5a3c
	nop			;5a3d
	nop			;5a3e
	nop			;5a3f
	ld b,h			;5a40
	ld h,l			;5a41
	ld h,(hl)		;5a42
	ld h,c			;5a43
	ld (hl),l		;5a44
	ld l,h			;5a45
	ld (hl),h		;5a46
l5a47h:
	jr nz,l5a49h		;5a47
l5a49h:
	nop			;5a49
	nop			;5a4a
	nop			;5a4b
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
	nop			;5a5a
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
	ld b,h			;5a68
	ld h,l			;5a69
	ld h,(hl)		;5a6a
	ld h,c			;5a6b
	ld (hl),l		;5a6c
	ld l,h			;5a6d
	ld (hl),h		;5a6e
	jr nz,l5a71h		;5a6f
l5a71h:
	nop			;5a71
	nop			;5a72
	nop			;5a73
	nop			;5a74
	nop			;5a75
	nop			;5a76
	nop			;5a77
	nop			;5a78
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
	nop			;5a87
	nop			;5a88
	nop			;5a89
	nop			;5a8a
	nop			;5a8b
	nop			;5a8c
	nop			;5a8d
	nop			;5a8e
	nop			;5a8f
	ld b,h			;5a90
	ld h,l			;5a91
	ld h,(hl)		;5a92
	ld h,c			;5a93
	ld (hl),l		;5a94
	ld l,h			;5a95
	ld (hl),h		;5a96
	jr nz,l5a99h		;5a97
l5a99h:
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
	nop			;5aa5
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
	nop			;5ab4
	nop			;5ab5
	nop			;5ab6
	nop			;5ab7
	ld b,h			;5ab8
	ld h,l			;5ab9
	ld h,(hl)		;5aba
	ld h,c			;5abb
	ld (hl),l		;5abc
	ld l,h			;5abd
	ld (hl),h		;5abe
	jr nz,l5ac1h		;5abf
l5ac1h:
	nop			;5ac1
	nop			;5ac2
	nop			;5ac3
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
	nop			;5ad2
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
	ld b,h			;5ae0
	ld h,l			;5ae1
	ld h,(hl)		;5ae2
	ld h,c			;5ae3
	ld (hl),l		;5ae4
	ld l,h			;5ae5
	ld (hl),h		;5ae6
	jr nz,l5ae9h		;5ae7
l5ae9h:
	nop			;5ae9
	nop			;5aea
	nop			;5aeb
	nop			;5aec
	nop			;5aed
	nop			;5aee
	nop			;5aef
	nop			;5af0
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
	nop			;5aff
	nop			;5b00
	nop			;5b01
	nop			;5b02
	nop			;5b03
	nop			;5b04
	nop			;5b05
	nop			;5b06
	nop			;5b07
	ld b,h			;5b08
	ld h,l			;5b09
	ld h,(hl)		;5b0a
	ld h,c			;5b0b
	ld (hl),l		;5b0c
	ld l,h			;5b0d
	ld (hl),h		;5b0e
	jr nz,l5b11h		;5b0f
l5b11h:
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
	nop			;5b1d
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
	nop			;5b2c
	nop			;5b2d
	nop			;5b2e
	nop			;5b2f
	ld b,h			;5b30
	ld h,l			;5b31
	ld h,(hl)		;5b32
	ld h,c			;5b33
	ld (hl),l		;5b34
	ld l,h			;5b35
	ld (hl),h		;5b36
	jr nz,l5b39h		;5b37
l5b39h:
	nop			;5b39
	nop			;5b3a
	nop			;5b3b
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
	nop			;5b4a
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
	ld b,h			;5b58
	ld h,l			;5b59
	ld h,(hl)		;5b5a
	ld h,c			;5b5b
	ld (hl),l		;5b5c
	ld l,h			;5b5d
	ld (hl),h		;5b5e
	jr nz,l5b61h		;5b5f
l5b61h:
	nop			;5b61
	nop			;5b62
	nop			;5b63
	nop			;5b64
	nop			;5b65
	nop			;5b66
	nop			;5b67
	nop			;5b68
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
	nop			;5b77
	nop			;5b78
	nop			;5b79
	nop			;5b7a
	nop			;5b7b
	nop			;5b7c
	nop			;5b7d
	nop			;5b7e
	nop			;5b7f
	ld b,h			;5b80
	ld h,l			;5b81
	ld h,(hl)		;5b82
	ld h,c			;5b83
	ld (hl),l		;5b84
	ld l,h			;5b85
	ld (hl),h		;5b86
	jr nz,l5b89h		;5b87
l5b89h:
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
	nop			;5b95
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
	nop			;5ba4
	nop			;5ba5
	nop			;5ba6
	nop			;5ba7
	ld b,h			;5ba8
	ld h,l			;5ba9
	ld h,(hl)		;5baa
	ld h,c			;5bab
	ld (hl),l		;5bac
	ld l,h			;5bad
	ld (hl),h		;5bae
	jr nz,l5bb1h		;5baf
l5bb1h:
	nop			;5bb1
	nop			;5bb2
	nop			;5bb3
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
	nop			;5bc2
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
	ld b,h			;5bd0
	ld h,l			;5bd1
	ld h,(hl)		;5bd2
	ld h,c			;5bd3
	ld (hl),l		;5bd4
	ld l,h			;5bd5
	ld (hl),h		;5bd6
	jr nz,l5bd9h		;5bd7
l5bd9h:
	nop			;5bd9
	nop			;5bda
	nop			;5bdb
	nop			;5bdc
	nop			;5bdd
	nop			;5bde
	nop			;5bdf
	nop			;5be0
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
	nop			;5bef
	nop			;5bf0
	nop			;5bf1
	nop			;5bf2
	nop			;5bf3
	nop			;5bf4
	nop			;5bf5
	nop			;5bf6
	nop			;5bf7
	ld b,h			;5bf8
	ld h,l			;5bf9
	ld h,(hl)		;5bfa
	ld h,c			;5bfb
	ld (hl),l		;5bfc
	ld l,h			;5bfd
	ld (hl),h		;5bfe
	jr nz,l5c01h		;5bff
l5c01h:
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
	nop			;5c0d
	nop			;5c0e
	nop			;5c0f
	nop			;5c10
	nop			;5c11
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
	nop			;5c1c
	nop			;5c1d
	nop			;5c1e
	nop			;5c1f
	ld b,h			;5c20
	ld h,l			;5c21
	ld h,(hl)		;5c22
	ld h,c			;5c23
	ld (hl),l		;5c24
	ld l,h			;5c25
	ld (hl),h		;5c26
	jr nz,l5c29h		;5c27
l5c29h:
	nop			;5c29
	nop			;5c2a
	nop			;5c2b
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
	nop			;5c3a
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
	ld b,h			;5c48
	ld h,l			;5c49
	ld h,(hl)		;5c4a
	ld h,c			;5c4b
	ld (hl),l		;5c4c
	ld l,h			;5c4d
	ld (hl),h		;5c4e
	jr nz,l5c51h		;5c4f
l5c51h:
	nop			;5c51
	nop			;5c52
	nop			;5c53
	nop			;5c54
	nop			;5c55
	nop			;5c56
	nop			;5c57
	nop			;5c58
	nop			;5c59
	nop			;5c5a
	nop			;5c5b
	nop			;5c5c
	nop			;5c5d
	nop			;5c5e
	nop			;5c5f
	nop			;5c60
	nop			;5c61
	nop			;5c62
	nop			;5c63
	nop			;5c64
	nop			;5c65
	nop			;5c66
	nop			;5c67
	nop			;5c68
	nop			;5c69
	nop			;5c6a
	nop			;5c6b
	nop			;5c6c
	nop			;5c6d
	nop			;5c6e
	nop			;5c6f
	ld b,h			;5c70
	ld h,l			;5c71
	ld h,(hl)		;5c72
	ld h,c			;5c73
	ld (hl),l		;5c74
	ld l,h			;5c75
	ld (hl),h		;5c76
	jr nz,l5c79h		;5c77
l5c79h:
	nop			;5c79
	nop			;5c7a
	nop			;5c7b
	nop			;5c7c
	nop			;5c7d
	nop			;5c7e
	nop			;5c7f
	nop			;5c80
	nop			;5c81
	nop			;5c82
	nop			;5c83
	nop			;5c84
	nop			;5c85
	nop			;5c86
	nop			;5c87
	nop			;5c88
	nop			;5c89
	nop			;5c8a
	nop			;5c8b
	nop			;5c8c
	nop			;5c8d
	nop			;5c8e
	nop			;5c8f
	nop			;5c90
	nop			;5c91
	nop			;5c92
	nop			;5c93
	nop			;5c94
	nop			;5c95
	nop			;5c96
	nop			;5c97
	ld b,h			;5c98
	ld h,l			;5c99
	ld h,(hl)		;5c9a
	ld h,c			;5c9b
	ld (hl),l		;5c9c
	ld l,h			;5c9d
	ld (hl),h		;5c9e
	jr nz,l5ca1h		;5c9f
l5ca1h:
	nop			;5ca1
	nop			;5ca2
	nop			;5ca3
	nop			;5ca4
	nop			;5ca5
	nop			;5ca6
	nop			;5ca7
	nop			;5ca8
	nop			;5ca9
	nop			;5caa
	nop			;5cab
	nop			;5cac
	nop			;5cad
	nop			;5cae
	nop			;5caf
	nop			;5cb0
	nop			;5cb1
	nop			;5cb2
	nop			;5cb3
	nop			;5cb4
	nop			;5cb5
	nop			;5cb6
	nop			;5cb7
	nop			;5cb8
	nop			;5cb9
	nop			;5cba
	nop			;5cbb
	nop			;5cbc
	nop			;5cbd
	nop			;5cbe
	nop			;5cbf
	ld b,h			;5cc0
	ld h,l			;5cc1
	ld h,(hl)		;5cc2
	ld h,c			;5cc3
	ld (hl),l		;5cc4
	ld l,h			;5cc5
	ld (hl),h		;5cc6
	jr nz,l5cc9h		;5cc7
l5cc9h:
	nop			;5cc9
	nop			;5cca
	nop			;5ccb
	nop			;5ccc
	nop			;5ccd
	nop			;5cce
	nop			;5ccf
	nop			;5cd0
	nop			;5cd1
	nop			;5cd2
	nop			;5cd3
	nop			;5cd4
	nop			;5cd5
	nop			;5cd6
	nop			;5cd7
	nop			;5cd8
	nop			;5cd9
	nop			;5cda
	nop			;5cdb
	nop			;5cdc
	nop			;5cdd
	nop			;5cde
	nop			;5cdf
	nop			;5ce0
	nop			;5ce1
	nop			;5ce2
	nop			;5ce3
	nop			;5ce4
	nop			;5ce5
	nop			;5ce6
	nop			;5ce7
	ld b,h			;5ce8
	ld h,l			;5ce9
	ld h,(hl)		;5cea
	ld h,c			;5ceb
	ld (hl),l		;5cec
	ld l,h			;5ced
	ld (hl),h		;5cee
	jr nz,l5cf1h		;5cef
l5cf1h:
	nop			;5cf1
	nop			;5cf2
	nop			;5cf3
	nop			;5cf4
	nop			;5cf5
	nop			;5cf6
	nop			;5cf7
	nop			;5cf8
	nop			;5cf9
	nop			;5cfa
	nop			;5cfb
	nop			;5cfc
	nop			;5cfd
	nop			;5cfe
	nop			;5cff
	nop			;5d00
	nop			;5d01
	nop			;5d02
	nop			;5d03
	nop			;5d04
	nop			;5d05
	nop			;5d06
	nop			;5d07
	nop			;5d08
	nop			;5d09
	nop			;5d0a
	nop			;5d0b
	nop			;5d0c
	nop			;5d0d
	nop			;5d0e
	nop			;5d0f
	ld b,h			;5d10
	ld h,l			;5d11
	ld h,(hl)		;5d12
	ld h,c			;5d13
	ld (hl),l		;5d14
	ld l,h			;5d15
	ld (hl),h		;5d16
	jr nz,l5d19h		;5d17
l5d19h:
	nop			;5d19
	nop			;5d1a
	nop			;5d1b
	nop			;5d1c
	nop			;5d1d
	nop			;5d1e
	nop			;5d1f
	nop			;5d20
	nop			;5d21
	nop			;5d22
	nop			;5d23
	nop			;5d24
	nop			;5d25
	nop			;5d26
	nop			;5d27
	nop			;5d28
	nop			;5d29
	nop			;5d2a
	nop			;5d2b
	nop			;5d2c
	nop			;5d2d
	nop			;5d2e
	nop			;5d2f
	nop			;5d30
	nop			;5d31
	nop			;5d32
	nop			;5d33
	nop			;5d34
	nop			;5d35
	nop			;5d36
	nop			;5d37
	ld b,h			;5d38
	ld h,l			;5d39
	ld h,(hl)		;5d3a
	ld h,c			;5d3b
	ld (hl),l		;5d3c
	ld l,h			;5d3d
	ld (hl),h		;5d3e
	jr nz,l5d41h		;5d3f
l5d41h:
	nop			;5d41
	nop			;5d42
	nop			;5d43
	nop			;5d44
	nop			;5d45
	nop			;5d46
	nop			;5d47
	nop			;5d48
	nop			;5d49
	nop			;5d4a
	nop			;5d4b
	nop			;5d4c
	nop			;5d4d
	nop			;5d4e
	nop			;5d4f
	nop			;5d50
	nop			;5d51
	nop			;5d52
	nop			;5d53
	nop			;5d54
	nop			;5d55
	nop			;5d56
	nop			;5d57
	nop			;5d58
	nop			;5d59
	nop			;5d5a
	nop			;5d5b
	nop			;5d5c
	nop			;5d5d
	nop			;5d5e
	nop			;5d5f
	ld b,h			;5d60
	ld h,l			;5d61
	ld h,(hl)		;5d62
	ld h,c			;5d63
	ld (hl),l		;5d64
	ld l,h			;5d65
	ld (hl),h		;5d66
	jr nz,l5d69h		;5d67
l5d69h:
	nop			;5d69
	nop			;5d6a
	nop			;5d6b
	nop			;5d6c
	nop			;5d6d
	nop			;5d6e
	nop			;5d6f
	nop			;5d70
	nop			;5d71
	nop			;5d72
	nop			;5d73
	nop			;5d74
	nop			;5d75
	nop			;5d76
	nop			;5d77
	nop			;5d78
	nop			;5d79
	nop			;5d7a
	nop			;5d7b
	nop			;5d7c
	nop			;5d7d
	nop			;5d7e
	nop			;5d7f
	nop			;5d80
	nop			;5d81
	nop			;5d82
	nop			;5d83
	nop			;5d84
	nop			;5d85
	nop			;5d86
	nop			;5d87
	ld b,h			;5d88
	ld h,l			;5d89
	ld h,(hl)		;5d8a
	ld h,c			;5d8b
	ld (hl),l		;5d8c
	ld l,h			;5d8d
	ld (hl),h		;5d8e
	jr nz,l5d91h		;5d8f
l5d91h:
	nop			;5d91
	nop			;5d92
	nop			;5d93
	nop			;5d94
	nop			;5d95
	nop			;5d96
	nop			;5d97
	nop			;5d98
	nop			;5d99
	nop			;5d9a
	nop			;5d9b
	nop			;5d9c
	nop			;5d9d
	nop			;5d9e
	nop			;5d9f
	nop			;5da0
	nop			;5da1
	nop			;5da2
	nop			;5da3
	nop			;5da4
	nop			;5da5
	nop			;5da6
	nop			;5da7
	nop			;5da8
	nop			;5da9
	nop			;5daa
	nop			;5dab
	nop			;5dac
	nop			;5dad
	nop			;5dae
	nop			;5daf
	ld b,h			;5db0
	ld h,l			;5db1
	ld h,(hl)		;5db2
	ld h,c			;5db3
	ld (hl),l		;5db4
	ld l,h			;5db5
	ld (hl),h		;5db6
	jr nz,l5db9h		;5db7
l5db9h:
	nop			;5db9
	nop			;5dba
	nop			;5dbb
	nop			;5dbc
	nop			;5dbd
	nop			;5dbe
	nop			;5dbf
	nop			;5dc0
	nop			;5dc1
	nop			;5dc2
	nop			;5dc3
	nop			;5dc4
	nop			;5dc5
	nop			;5dc6
	nop			;5dc7
	nop			;5dc8
	nop			;5dc9
	nop			;5dca
	nop			;5dcb
	nop			;5dcc
	nop			;5dcd
	nop			;5dce
	nop			;5dcf
	nop			;5dd0
	nop			;5dd1
	nop			;5dd2
	nop			;5dd3
	nop			;5dd4
	nop			;5dd5
	nop			;5dd6
	nop			;5dd7
	ld b,h			;5dd8
	ld h,l			;5dd9
	ld h,(hl)		;5dda
	ld h,c			;5ddb
	ld (hl),l		;5ddc
	ld l,h			;5ddd
	ld (hl),h		;5dde
	jr nz,l5de1h		;5ddf
l5de1h:
	nop			;5de1
	nop			;5de2
	nop			;5de3
	nop			;5de4
	nop			;5de5
	nop			;5de6
	nop			;5de7
	nop			;5de8
	nop			;5de9
	nop			;5dea
	nop			;5deb
	nop			;5dec
	nop			;5ded
	nop			;5dee
	nop			;5def
	nop			;5df0
	nop			;5df1
	nop			;5df2
	nop			;5df3
	nop			;5df4
	nop			;5df5
	nop			;5df6
	nop			;5df7
	nop			;5df8
	nop			;5df9
	nop			;5dfa
	nop			;5dfb
	nop			;5dfc
	nop			;5dfd
	nop			;5dfe
	nop			;5dff
	ld b,h			;5e00
	ld h,l			;5e01
	ld h,(hl)		;5e02
	ld h,c			;5e03
	ld (hl),l		;5e04
	ld l,h			;5e05
	ld (hl),h		;5e06
	jr nz,l5e09h		;5e07
l5e09h:
	nop			;5e09
	nop			;5e0a
	nop			;5e0b
	nop			;5e0c
	nop			;5e0d
	nop			;5e0e
	nop			;5e0f
	nop			;5e10
	nop			;5e11
	nop			;5e12
	nop			;5e13
	nop			;5e14
	nop			;5e15
	nop			;5e16
	nop			;5e17
	nop			;5e18
	nop			;5e19
	nop			;5e1a
	nop			;5e1b
	nop			;5e1c
	nop			;5e1d
	nop			;5e1e
	nop			;5e1f
	nop			;5e20
	nop			;5e21
	nop			;5e22
	nop			;5e23
	nop			;5e24
	nop			;5e25
	nop			;5e26
	nop			;5e27
	ld b,h			;5e28
	ld h,l			;5e29
	ld h,(hl)		;5e2a
	ld h,c			;5e2b
	ld (hl),l		;5e2c
	ld l,h			;5e2d
	ld (hl),h		;5e2e
	jr nz,l5e31h		;5e2f
l5e31h:
	nop			;5e31
	nop			;5e32
	nop			;5e33
	nop			;5e34
	nop			;5e35
	nop			;5e36
	nop			;5e37
	nop			;5e38
	nop			;5e39
	nop			;5e3a
	nop			;5e3b
	nop			;5e3c
	nop			;5e3d
	nop			;5e3e
	nop			;5e3f
	nop			;5e40
	nop			;5e41
	nop			;5e42
	nop			;5e43
	nop			;5e44
	nop			;5e45
	nop			;5e46
	nop			;5e47
	nop			;5e48
	nop			;5e49
	nop			;5e4a
	nop			;5e4b
	nop			;5e4c
	nop			;5e4d
	nop			;5e4e
	nop			;5e4f
	ld b,h			;5e50
	ld h,l			;5e51
	ld h,(hl)		;5e52
	ld h,c			;5e53
	ld (hl),l		;5e54
	ld l,h			;5e55
	ld (hl),h		;5e56
	jr nz,l5e59h		;5e57
l5e59h:
	nop			;5e59
	nop			;5e5a
	nop			;5e5b
	nop			;5e5c
	nop			;5e5d
	nop			;5e5e
	nop			;5e5f
	nop			;5e60
	nop			;5e61
	nop			;5e62
	nop			;5e63
	nop			;5e64
	nop			;5e65
	nop			;5e66
	nop			;5e67
	nop			;5e68
	nop			;5e69
	nop			;5e6a
	nop			;5e6b
	nop			;5e6c
	nop			;5e6d
	nop			;5e6e
	nop			;5e6f
	nop			;5e70
	nop			;5e71
	nop			;5e72
	nop			;5e73
	nop			;5e74
	nop			;5e75
	nop			;5e76
	nop			;5e77
	ld b,h			;5e78
	ld h,l			;5e79
	ld h,(hl)		;5e7a
	ld h,c			;5e7b
	ld (hl),l		;5e7c
	ld l,h			;5e7d
	ld (hl),h		;5e7e
	jr nz,l5e81h		;5e7f
l5e81h:
	nop			;5e81
	nop			;5e82
	nop			;5e83
	nop			;5e84
	nop			;5e85
	nop			;5e86
	nop			;5e87
	nop			;5e88
	nop			;5e89
	nop			;5e8a
	nop			;5e8b
	nop			;5e8c
	nop			;5e8d
	nop			;5e8e
	nop			;5e8f
	nop			;5e90
	nop			;5e91
	nop			;5e92
	nop			;5e93
	nop			;5e94
	nop			;5e95
	nop			;5e96
	nop			;5e97
	nop			;5e98
	nop			;5e99
	nop			;5e9a
	nop			;5e9b
	nop			;5e9c
	nop			;5e9d
	nop			;5e9e
	nop			;5e9f
	ld b,h			;5ea0
	ld h,l			;5ea1
	ld h,(hl)		;5ea2
	ld h,c			;5ea3
	ld (hl),l		;5ea4
	ld l,h			;5ea5
	ld (hl),h		;5ea6
	jr nz,l5ea9h		;5ea7
l5ea9h:
	nop			;5ea9
	nop			;5eaa
	nop			;5eab
	nop			;5eac
	nop			;5ead
	nop			;5eae
	nop			;5eaf
	nop			;5eb0
	nop			;5eb1
	nop			;5eb2
	nop			;5eb3
	nop			;5eb4
	nop			;5eb5
	nop			;5eb6
	nop			;5eb7
	nop			;5eb8
	nop			;5eb9
	nop			;5eba
	nop			;5ebb
	nop			;5ebc
	nop			;5ebd
	nop			;5ebe
	nop			;5ebf
	nop			;5ec0
	nop			;5ec1
	nop			;5ec2
	nop			;5ec3
	nop			;5ec4
	nop			;5ec5
	nop			;5ec6
	nop			;5ec7
	ld b,h			;5ec8
	ld h,l			;5ec9
	ld h,(hl)		;5eca
	ld h,c			;5ecb
	ld (hl),l		;5ecc
	ld l,h			;5ecd
	ld (hl),h		;5ece
	jr nz,l5ed1h		;5ecf
l5ed1h:
	nop			;5ed1
	nop			;5ed2
	nop			;5ed3
	nop			;5ed4
	nop			;5ed5
	nop			;5ed6
	nop			;5ed7
	nop			;5ed8
	nop			;5ed9
	nop			;5eda
	nop			;5edb
	nop			;5edc
	nop			;5edd
	nop			;5ede
	nop			;5edf
	nop			;5ee0
	nop			;5ee1
	nop			;5ee2
	nop			;5ee3
	nop			;5ee4
	nop			;5ee5
	nop			;5ee6
	nop			;5ee7
	nop			;5ee8
	nop			;5ee9
	nop			;5eea
	nop			;5eeb
	nop			;5eec
	nop			;5eed
	nop			;5eee
	nop			;5eef
	ld b,h			;5ef0
	ld h,l			;5ef1
	ld h,(hl)		;5ef2
	ld h,c			;5ef3
	ld (hl),l		;5ef4
	ld l,h			;5ef5
	ld (hl),h		;5ef6
	jr nz,l5ef9h		;5ef7
l5ef9h:
	nop			;5ef9
	nop			;5efa
	nop			;5efb
	nop			;5efc
	nop			;5efd
	nop			;5efe
	nop			;5eff
	nop			;5f00
	nop			;5f01
	nop			;5f02
	nop			;5f03
	nop			;5f04
	nop			;5f05
	nop			;5f06
	nop			;5f07
	nop			;5f08
	nop			;5f09
	nop			;5f0a
	nop			;5f0b
	nop			;5f0c
	nop			;5f0d
	nop			;5f0e
	nop			;5f0f
	nop			;5f10
	nop			;5f11
	nop			;5f12
	nop			;5f13
	nop			;5f14
	nop			;5f15
	nop			;5f16
	nop			;5f17
	ld b,h			;5f18
	ld h,l			;5f19
	ld h,(hl)		;5f1a
	ld h,c			;5f1b
	ld (hl),l		;5f1c
	ld l,h			;5f1d
	ld (hl),h		;5f1e
	jr nz,l5f21h		;5f1f
l5f21h:
	nop			;5f21
	nop			;5f22
	nop			;5f23
	nop			;5f24
	nop			;5f25
	nop			;5f26
	nop			;5f27
	nop			;5f28
	nop			;5f29
	nop			;5f2a
	nop			;5f2b
	nop			;5f2c
	nop			;5f2d
	nop			;5f2e
	nop			;5f2f
	nop			;5f30
	nop			;5f31
	nop			;5f32
	nop			;5f33
	nop			;5f34
	nop			;5f35
	nop			;5f36
	nop			;5f37
	nop			;5f38
	nop			;5f39
	nop			;5f3a
	nop			;5f3b
	nop			;5f3c
	nop			;5f3d
	nop			;5f3e
	nop			;5f3f
	ld b,h			;5f40
	ld h,l			;5f41
	ld h,(hl)		;5f42
	ld h,c			;5f43
	ld (hl),l		;5f44
	ld l,h			;5f45
	ld (hl),h		;5f46
	jr nz,l5f49h		;5f47
l5f49h:
	nop			;5f49
	nop			;5f4a
	nop			;5f4b
	nop			;5f4c
	nop			;5f4d
	nop			;5f4e
	nop			;5f4f
	nop			;5f50
	nop			;5f51
	nop			;5f52
	nop			;5f53
	nop			;5f54
	nop			;5f55
	nop			;5f56
	nop			;5f57
	nop			;5f58
	nop			;5f59
	nop			;5f5a
	nop			;5f5b
	nop			;5f5c
	nop			;5f5d
	nop			;5f5e
	nop			;5f5f
	nop			;5f60
	nop			;5f61
	nop			;5f62
	nop			;5f63
	nop			;5f64
	nop			;5f65
	nop			;5f66
	nop			;5f67
	ld b,h			;5f68
	ld h,l			;5f69
	ld h,(hl)		;5f6a
	ld h,c			;5f6b
	ld (hl),l		;5f6c
	ld l,h			;5f6d
	ld (hl),h		;5f6e
	jr nz,l5f71h		;5f6f
l5f71h:
	nop			;5f71
	nop			;5f72
	nop			;5f73
	nop			;5f74
	nop			;5f75
	nop			;5f76
	nop			;5f77
	nop			;5f78
	nop			;5f79
	nop			;5f7a
	nop			;5f7b
	nop			;5f7c
	nop			;5f7d
	nop			;5f7e
	nop			;5f7f
	nop			;5f80
	nop			;5f81
	nop			;5f82
	nop			;5f83
	nop			;5f84
	nop			;5f85
	nop			;5f86
	nop			;5f87
	nop			;5f88
	nop			;5f89
	nop			;5f8a
	nop			;5f8b
	nop			;5f8c
	nop			;5f8d
	nop			;5f8e
	nop			;5f8f
	ld b,h			;5f90
	ld h,l			;5f91
	ld h,(hl)		;5f92
	ld h,c			;5f93
	ld (hl),l		;5f94
	ld l,h			;5f95
	ld (hl),h		;5f96
	jr nz,l5f99h		;5f97
l5f99h:
	nop			;5f99
	nop			;5f9a
	nop			;5f9b
	nop			;5f9c
	nop			;5f9d
	nop			;5f9e
	nop			;5f9f
	nop			;5fa0
	nop			;5fa1
	nop			;5fa2
	nop			;5fa3
	nop			;5fa4
	nop			;5fa5
	nop			;5fa6
	nop			;5fa7
	nop			;5fa8
	nop			;5fa9
	nop			;5faa
	nop			;5fab
	nop			;5fac
	nop			;5fad
	nop			;5fae
	nop			;5faf
	nop			;5fb0
	nop			;5fb1
	nop			;5fb2
	nop			;5fb3
	nop			;5fb4
	nop			;5fb5
	nop			;5fb6
	nop			;5fb7
	ld b,h			;5fb8
	ld h,l			;5fb9
	ld h,(hl)		;5fba
	ld h,c			;5fbb
	ld (hl),l		;5fbc
	ld l,h			;5fbd
	ld (hl),h		;5fbe
	jr nz,l5fc1h		;5fbf
l5fc1h:
	nop			;5fc1
	nop			;5fc2
	nop			;5fc3
	nop			;5fc4
	nop			;5fc5
	nop			;5fc6
	nop			;5fc7
	nop			;5fc8
	nop			;5fc9
	nop			;5fca
	nop			;5fcb
	nop			;5fcc
	nop			;5fcd
	nop			;5fce
	nop			;5fcf
	nop			;5fd0
	nop			;5fd1
	nop			;5fd2
	nop			;5fd3
	nop			;5fd4
	nop			;5fd5
	nop			;5fd6
	nop			;5fd7
	nop			;5fd8
	nop			;5fd9
	nop			;5fda
	nop			;5fdb
	nop			;5fdc
	nop			;5fdd
	nop			;5fde
	nop			;5fdf
	ld b,h			;5fe0
	ld h,l			;5fe1
	ld h,(hl)		;5fe2
	ld h,c			;5fe3
	ld (hl),l		;5fe4
	ld l,h			;5fe5
	ld (hl),h		;5fe6
	jr nz,l5fe9h		;5fe7
l5fe9h:
	nop			;5fe9
	nop			;5fea
	nop			;5feb
	nop			;5fec
	nop			;5fed
	nop			;5fee
	nop			;5fef
	nop			;5ff0
	nop			;5ff1
	nop			;5ff2
	nop			;5ff3
	nop			;5ff4
	nop			;5ff5
	nop			;5ff6
	nop			;5ff7
	nop			;5ff8
	nop			;5ff9
	nop			;5ffa
	nop			;5ffb
	nop			;5ffc
	nop			;5ffd
	nop			;5ffe
	nop			;5fff
	nop			;6000
	nop			;6001
	nop			;6002
	nop			;6003
	nop			;6004
	nop			;6005
	nop			;6006
	nop			;6007
	nop			;6008
	nop			;6009
	nop			;600a
	nop			;600b
	nop			;600c
	nop			;600d
	nop			;600e
	nop			;600f
	nop			;6010
	nop			;6011
	nop			;6012
	nop			;6013
	nop			;6014
	nop			;6015
	nop			;6016
	nop			;6017
	nop			;6018
	nop			;6019
	nop			;601a
	nop			;601b
	nop			;601c
	nop			;601d
	nop			;601e
	nop			;601f
	nop			;6020
	nop			;6021
	nop			;6022
	nop			;6023
	nop			;6024
	nop			;6025
	nop			;6026
	nop			;6027
	nop			;6028
	nop			;6029
	nop			;602a
	nop			;602b
	nop			;602c
	nop			;602d
	nop			;602e
	nop			;602f
	nop			;6030
	nop			;6031
	nop			;6032
	nop			;6033
	nop			;6034
	nop			;6035
	nop			;6036
	nop			;6037
	nop			;6038
	nop			;6039
	nop			;603a
	nop			;603b
	nop			;603c
	nop			;603d
	nop			;603e
	nop			;603f
	nop			;6040
	nop			;6041
	nop			;6042
	nop			;6043
	nop			;6044
	nop			;6045
	nop			;6046
	nop			;6047
	nop			;6048
	nop			;6049
	nop			;604a
	nop			;604b
	nop			;604c
	nop			;604d
	nop			;604e
	nop			;604f
	nop			;6050
	nop			;6051
	nop			;6052
	nop			;6053
	nop			;6054
	nop			;6055
	nop			;6056
	nop			;6057
	nop			;6058
	nop			;6059
	nop			;605a
	nop			;605b
	nop			;605c
	nop			;605d
	nop			;605e
	nop			;605f
	ld b,d			;6060
	ld b,c			;6061
	ld d,e			;6062
	ld d,e			;6063
	jr nz,l6086h		;6064
	jr nz,l6088h		;6066
	nop			;6068
	nop			;6069
	ex af,af'		;606a
	xor d			;606b
	ld a,(bc)		;606c
	xor d			;606d
	ld a,(bc)		;606e
	ld c,h			;606f
	rrca			;6070
	rrca			;6071
	inc b			;6072
	inc bc			;6073
	nop			;6074
	ld b,099h		;6075
	add hl,bc		;6077
	jr nz,l60bah		;6078
	ld (02621h),hl		;607a
	nop			;607d
	djnz l6080h		;607e
l6080h:
	djnz l6082h		;6080
l6082h:
	djnz l6084h		;6082
l6084h:
	djnz l6086h		;6084
l6086h:
	nop			;6086
	nop			;6087
l6088h:
	nop			;6088
	inc e			;6089
	nop			;608a
	nop			;608b
	nop			;608c
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
l60bah:
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
	ld d,e			;6118
	ld c,(hl)		;6119
	ld b,c			;611a
	ld d,d			;611b
	ld b,l			;611c
	ld sp,02020h		;611d
	nop			;6120
	nop			;6121
	ld (bc),a		;6122
	jr nz,l6127h		;6123
	nop			;6125
	inc bc			;6126
l6127h:
	ld c,l			;6127
	ld c,h			;6128
	ld a,(bc)		;6129
	inc b			;612a
	ex af,af'		;612b
	nop			;612c
	ld (bc),a		;612d
	jr nz,l6170h		;612e
	jr nz,l6172h		;6130
	ld h,c			;6132
	ld h,c			;6133
	ld h,h			;6134
	inc b			;6135
	djnz l6138h		;6136
l6138h:
	djnz l613ah		;6138
l613ah:
	djnz l613ch		;613a
l613ch:
	djnz l613eh		;613c
l613eh:
	nop			;613e
	nop			;613f
	nop			;6140
	inc e			;6141
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
	nop			;6151
	nop			;6152
	nop			;6153
	nop			;6154
	nop			;6155
	nop			;6156
	nop			;6157
	nop			;6158
	nop			;6159
	nop			;615a
	nop			;615b
	nop			;615c
	nop			;615d
	nop			;615e
	nop			;615f
	nop			;6160
	nop			;6161
	nop			;6162
	nop			;6163
	nop			;6164
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
l6170h:
	nop			;6170
	nop			;6171
l6172h:
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
	nop			;61cb
	nop			;61cc
	nop			;61cd
	nop			;61ce
	nop			;61cf
	ld c,b			;61d0
	ld c,c			;61d1
	ld c,b			;61d2
	ld b,c			;61d3
	ld d,h			;61d4
	ld sp,02020h		;61d5
	nop			;61d8
	nop			;61d9
	nop			;61da
	nop			;61db
	nop			;61dc
	nop			;61dd
	nop			;61de
	ld c,d			;61df
	ld b,a			;61e0
	nop			;61e1
	inc b			;61e2
	add hl,bc		;61e3
	nop			;61e4
	nop			;61e5
	nop			;61e6
	nop			;61e7
	nop			;61e8
	nop			;61e9
	ld h,d			;61ea
	ld b,b			;61eb
	nop			;61ec
	inc b			;61ed
	djnz l61f0h		;61ee
l61f0h:
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
	nop			;61fb
	nop			;61fc
	nop			;61fd
	nop			;61fe
	nop			;61ff
	nop			;6200
	nop			;6201
	nop			;6202
	nop			;6203
	nop			;6204
	nop			;6205
	nop			;6206
	nop			;6207
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
	nop			;6213
	nop			;6214
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
	nop			;622c
	nop			;622d
	nop			;622e
	nop			;622f
	nop			;6230
	nop			;6231
l6232h:
	nop			;6232
	nop			;6233
	nop			;6234
	nop			;6235
	nop			;6236
	nop			;6237
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
	nop			;624e
	nop			;624f
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
l6266h:
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
	nop			;6280
	nop			;6281
	nop			;6282
	nop			;6283
	nop			;6284
	nop			;6285
	nop			;6286
	nop			;6287
	ld l,b			;6288
	ld l,c			;6289
	dec l			;628a
	ld l,b			;628b
	ld h,c			;628c
	ld (hl),h		;628d
	ld (00020h),a		;628e
	nop			;6291
	nop			;6292
	nop			;6293
	nop			;6294
	nop			;6295
	nop			;6296
	ld b,a			;6297
	ld c,b			;6298
	nop			;6299
	inc b			;629a
	rrca			;629b
	nop			;629c
	nop			;629d
	nop			;629e
	nop			;629f
	nop			;62a0
	nop			;62a1
	ld b,b			;62a2
	ld h,c			;62a3
	nop			;62a4
	inc b			;62a5
	djnz l62a8h		;62a6
l62a8h:
	nop			;62a8
	nop			;62a9
	nop			;62aa
	nop			;62ab
	nop			;62ac
	nop			;62ad
	nop			;62ae
	nop			;62af
	nop			;62b0
	nop			;62b1
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
	nop			;62bc
	nop			;62bd
	nop			;62be
	nop			;62bf
	nop			;62c0
	nop			;62c1
	nop			;62c2
	nop			;62c3
	nop			;62c4
	nop			;62c5
	nop			;62c6
	nop			;62c7
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
	nop			;62de
	nop			;62df
	nop			;62e0
	nop			;62e1
	nop			;62e2
	nop			;62e3
	nop			;62e4
	nop			;62e5
	nop			;62e6
	nop			;62e7
	nop			;62e8
	nop			;62e9
	nop			;62ea
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
	nop			;62f6
	nop			;62f7
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
	nop			;6302
	nop			;6303
	nop			;6304
	nop			;6305
	nop			;6306
	nop			;6307
	nop			;6308
	nop			;6309
	nop			;630a
	nop			;630b
	nop			;630c
	nop			;630d
	nop			;630e
	nop			;630f
	nop			;6310
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
	ld h,d			;6340
	ld h,c			;6341
	ld (hl),e		;6342
	ld (hl),e		;6343
	ld c,h			;6344
	ld l,a			;6345
	ld (hl),a		;6346
	jr nz,l6349h		;6347
l6349h:
	defb 0ddh,00dh,088h ;illegal sequence	;6349
	ex af,af'		;634c
	rst 38h			;634d
	rrca			;634e
	ld a,(bc)		;634f
	ld c,00ch		;6350
	nop			;6352
	ld a,(bc)		;6353
	defb 0ddh,00dh,088h ;illegal sequence	;6354
	ex af,af'		;6357
	rst 38h			;6358
	rrca			;6359
	ld (02622h),hl		;635a
	nop			;635d
	djnz l6360h		;635e
l6360h:
	djnz l6362h		;6360
l6362h:
	djnz l6364h		;6362
l6364h:
	djnz l6366h		;6364
l6366h:
	nop			;6366
	nop			;6367
	nop			;6368
	nop			;6369
	nop			;636a
	nop			;636b
	nop			;636c
	nop			;636d
	nop			;636e
	nop			;636f
	nop			;6370
	nop			;6371
	nop			;6372
	nop			;6373
	nop			;6374
	nop			;6375
	nop			;6376
	nop			;6377
	nop			;6378
	nop			;6379
	nop			;637a
	nop			;637b
	nop			;637c
	nop			;637d
	nop			;637e
	nop			;637f
	nop			;6380
	nop			;6381
	nop			;6382
	nop			;6383
	nop			;6384
	nop			;6385
	nop			;6386
	nop			;6387
	nop			;6388
	nop			;6389
	nop			;638a
	nop			;638b
	nop			;638c
	nop			;638d
	nop			;638e
	nop			;638f
	nop			;6390
	nop			;6391
	nop			;6392
	nop			;6393
	nop			;6394
	nop			;6395
	nop			;6396
	nop			;6397
	nop			;6398
	nop			;6399
	nop			;639a
	nop			;639b
	nop			;639c
	nop			;639d
	nop			;639e
	nop			;639f
	nop			;63a0
	nop			;63a1
	nop			;63a2
	nop			;63a3
	nop			;63a4
	nop			;63a5
	nop			;63a6
	nop			;63a7
	nop			;63a8
	nop			;63a9
	nop			;63aa
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
	nop			;63b6
	nop			;63b7
	nop			;63b8
	nop			;63b9
	nop			;63ba
	nop			;63bb
	nop			;63bc
	nop			;63bd
	nop			;63be
	nop			;63bf
	nop			;63c0
	nop			;63c1
	nop			;63c2
	nop			;63c3
	nop			;63c4
	nop			;63c5
	nop			;63c6
	nop			;63c7
	nop			;63c8
	nop			;63c9
	nop			;63ca
	nop			;63cb
	nop			;63cc
	nop			;63cd
	nop			;63ce
	nop			;63cf
	nop			;63d0
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
	ld d,e			;63f8
	ld c,(hl)		;63f9
	ld b,c			;63fa
	ld d,d			;63fb
	ld c,h			;63fc
	ld c,a			;63fd
	ld d,l			;63fe
	ld b,h			;63ff
	nop			;6400
	nop			;6401
	ld (bc),a		;6402
	jr nz,l6407h		;6403
	nop			;6405
	inc bc			;6406
l6407h:
	ld c,a			;6407
	ld c,h			;6408
	dec c			;6409
	inc b			;640a
	ex af,af'		;640b
	nop			;640c
	ld (bc),a		;640d
	jr nz,l6450h		;640e
	jr nz,l6452h		;6410
	ld h,c			;6412
	ld h,c			;6413
	ld h,c			;6414
	inc b			;6415
	djnz l6418h		;6416
l6418h:
	djnz l641ah		;6418
l641ah:
	djnz l641ch		;641a
l641ch:
	djnz l641eh		;641c
l641eh:
	nop			;641e
	nop			;641f
	nop			;6420
	inc e			;6421
	nop			;6422
	nop			;6423
	nop			;6424
	nop			;6425
	nop			;6426
	nop			;6427
	nop			;6428
	nop			;6429
	nop			;642a
	nop			;642b
	nop			;642c
	nop			;642d
	nop			;642e
	nop			;642f
	nop			;6430
	nop			;6431
	nop			;6432
	nop			;6433
	nop			;6434
	nop			;6435
	nop			;6436
	nop			;6437
	nop			;6438
	nop			;6439
	nop			;643a
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
	nop			;6446
	nop			;6447
	nop			;6448
	nop			;6449
	nop			;644a
	nop			;644b
	nop			;644c
	nop			;644d
	nop			;644e
	nop			;644f
l6450h:
	nop			;6450
	nop			;6451
l6452h:
	nop			;6452
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
	nop			;645e
	nop			;645f
	nop			;6460
	nop			;6461
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
	nop			;646d
	nop			;646e
	nop			;646f
	nop			;6470
	nop			;6471
	nop			;6472
	nop			;6473
	nop			;6474
	nop			;6475
	nop			;6476
	nop			;6477
	nop			;6478
	nop			;6479
	nop			;647a
	nop			;647b
	nop			;647c
	nop			;647d
	nop			;647e
	nop			;647f
	nop			;6480
	nop			;6481
	nop			;6482
	nop			;6483
	nop			;6484
	nop			;6485
	nop			;6486
	nop			;6487
	nop			;6488
	nop			;6489
	nop			;648a
	nop			;648b
	nop			;648c
	nop			;648d
	nop			;648e
	nop			;648f
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
	ld d,e			;64b0
	ld c,(hl)		;64b1
	ld b,c			;64b2
	ld d,d			;64b3
	ld b,l			;64b4
	ld sp,02020h		;64b5
	nop			;64b8
	nop			;64b9
	ld (bc),a		;64ba
	jr nz,l64bfh		;64bb
	nop			;64bd
	inc bc			;64be
l64bfh:
	ld c,(hl)		;64bf
	ld c,h			;64c0
	dec c			;64c1
	inc b			;64c2
	ex af,af'		;64c3
	nop			;64c4
	ld (bc),a		;64c5
	jr nz,l6508h		;64c6
	jr nz,l650ah		;64c8
	ld h,c			;64ca
	ld h,c			;64cb
	ld h,d			;64cc
	inc b			;64cd
	djnz l64d0h		;64ce
l64d0h:
	djnz l64d2h		;64d0
l64d2h:
	djnz l64d4h		;64d2
l64d4h:
	djnz l64d6h		;64d4
l64d6h:
	nop			;64d6
	nop			;64d7
	nop			;64d8
	inc e			;64d9
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
	nop			;64e5
	nop			;64e6
	nop			;64e7
	nop			;64e8
	nop			;64e9
	nop			;64ea
	nop			;64eb
	nop			;64ec
	nop			;64ed
	nop			;64ee
	nop			;64ef
	nop			;64f0
	nop			;64f1
	nop			;64f2
	nop			;64f3
	nop			;64f4
	nop			;64f5
	nop			;64f6
	nop			;64f7
	nop			;64f8
	nop			;64f9
	nop			;64fa
	nop			;64fb
	nop			;64fc
	nop			;64fd
	nop			;64fe
	nop			;64ff
	nop			;6500
	nop			;6501
	nop			;6502
	nop			;6503
	nop			;6504
	nop			;6505
	nop			;6506
	nop			;6507
l6508h:
	nop			;6508
	nop			;6509
l650ah:
	nop			;650a
	nop			;650b
	nop			;650c
	nop			;650d
	nop			;650e
	nop			;650f
	nop			;6510
	nop			;6511
	nop			;6512
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
	nop			;651e
	nop			;651f
	nop			;6520
	nop			;6521
	nop			;6522
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
	nop			;652d
	nop			;652e
	nop			;652f
	nop			;6530
	nop			;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	nop			;6536
	nop			;6537
	nop			;6538
	nop			;6539
	nop			;653a
	nop			;653b
	nop			;653c
	nop			;653d
	nop			;653e
	nop			;653f
	nop			;6540
	nop			;6541
	nop			;6542
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
	nop			;654e
	nop			;654f
	nop			;6550
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
	ld d,e			;6568
	ld c,(hl)		;6569
	ld b,c			;656a
	ld d,d			;656b
	ld b,l			;656c
	ld sp,02020h		;656d
	nop			;6570
	nop			;6571
	ld (bc),a		;6572
	jr nz,l6577h		;6573
	nop			;6575
	inc bc			;6576
l6577h:
	ld c,e			;6577
	ld c,e			;6578
	ld a,(bc)		;6579
	inc b			;657a
	ex af,af'		;657b
	nop			;657c
	ld (bc),a		;657d
	jr nz,l65c0h		;657e
	jr nz,l65c2h		;6580
	ld h,c			;6582
	ld h,c			;6583
	ld h,(hl)		;6584
	inc b			;6585
	djnz l6588h		;6586
l6588h:
	djnz l658ah		;6588
l658ah:
	djnz l658ch		;658a
l658ch:
	djnz l658eh		;658c
l658eh:
	nop			;658e
	nop			;658f
	nop			;6590
	inc e			;6591
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
	nop			;65a2
	nop			;65a3
	nop			;65a4
	nop			;65a5
	nop			;65a6
	nop			;65a7
	nop			;65a8
	nop			;65a9
	nop			;65aa
	nop			;65ab
	nop			;65ac
	nop			;65ad
	nop			;65ae
	nop			;65af
	nop			;65b0
	nop			;65b1
	nop			;65b2
	nop			;65b3
	nop			;65b4
	nop			;65b5
	nop			;65b6
	nop			;65b7
	nop			;65b8
	nop			;65b9
	nop			;65ba
	nop			;65bb
	nop			;65bc
	nop			;65bd
	nop			;65be
	nop			;65bf
l65c0h:
	nop			;65c0
	nop			;65c1
l65c2h:
	nop			;65c2
	nop			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	nop			;65c7
	nop			;65c8
	nop			;65c9
	nop			;65ca
	nop			;65cb
	nop			;65cc
	nop			;65cd
	nop			;65ce
	nop			;65cf
	nop			;65d0
	nop			;65d1
	nop			;65d2
	nop			;65d3
	nop			;65d4
	nop			;65d5
	nop			;65d6
	nop			;65d7
	nop			;65d8
	nop			;65d9
	nop			;65da
	nop			;65db
	nop			;65dc
	nop			;65dd
	nop			;65de
	nop			;65df
	nop			;65e0
	nop			;65e1
	nop			;65e2
	nop			;65e3
	nop			;65e4
	nop			;65e5
	nop			;65e6
	nop			;65e7
	nop			;65e8
	nop			;65e9
	nop			;65ea
	nop			;65eb
	nop			;65ec
	nop			;65ed
	nop			;65ee
	nop			;65ef
	nop			;65f0
	nop			;65f1
	nop			;65f2
	nop			;65f3
	nop			;65f4
	nop			;65f5
	nop			;65f6
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
	nop			;6602
	nop			;6603
	nop			;6604
	nop			;6605
	nop			;6606
	nop			;6607
	nop			;6608
	nop			;6609
	nop			;660a
	nop			;660b
	nop			;660c
	nop			;660d
	nop			;660e
	nop			;660f
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
	ld c,b			;6620
	ld c,c			;6621
	ld c,b			;6622
	ld b,c			;6623
	ld d,h			;6624
	ld sp,02020h		;6625
	nop			;6628
	nop			;6629
	nop			;662a
	nop			;662b
	nop			;662c
	nop			;662d
	nop			;662e
	ld c,b			;662f
	ld b,l			;6630
	nop			;6631
	inc b			;6632
	add hl,bc		;6633
	nop			;6634
	nop			;6635
	nop			;6636
	nop			;6637
	nop			;6638
	nop			;6639
	ld h,d			;663a
	ld b,b			;663b
	nop			;663c
	inc b			;663d
	djnz l6640h		;663e
l6640h:
	nop			;6640
	nop			;6641
	nop			;6642
	nop			;6643
	nop			;6644
	nop			;6645
	nop			;6646
	nop			;6647
	nop			;6648
	nop			;6649
	nop			;664a
	nop			;664b
	nop			;664c
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
	nop			;6662
	nop			;6663
	nop			;6664
	nop			;6665
	nop			;6666
	nop			;6667
	nop			;6668
	nop			;6669
	nop			;666a
	nop			;666b
	nop			;666c
	nop			;666d
	nop			;666e
	nop			;666f
	nop			;6670
	nop			;6671
	nop			;6672
	nop			;6673
	nop			;6674
	nop			;6675
	nop			;6676
	nop			;6677
	nop			;6678
	nop			;6679
	nop			;667a
	nop			;667b
	nop			;667c
	nop			;667d
	nop			;667e
	nop			;667f
	nop			;6680
	nop			;6681
	nop			;6682
	nop			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	nop			;6687
	nop			;6688
	nop			;6689
	nop			;668a
	nop			;668b
	nop			;668c
	nop			;668d
	nop			;668e
	nop			;668f
	nop			;6690
	nop			;6691
	nop			;6692
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
	nop			;669e
	nop			;669f
	nop			;66a0
	nop			;66a1
	nop			;66a2
	nop			;66a3
	nop			;66a4
	nop			;66a5
	nop			;66a6
	nop			;66a7
	nop			;66a8
	nop			;66a9
	nop			;66aa
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
	nop			;66b6
	nop			;66b7
	nop			;66b8
	nop			;66b9
	nop			;66ba
	nop			;66bb
	nop			;66bc
	nop			;66bd
	nop			;66be
	nop			;66bf
	nop			;66c0
	nop			;66c1
	nop			;66c2
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
	nop			;66ce
	nop			;66cf
	nop			;66d0
	nop			;66d1
	nop			;66d2
	nop			;66d3
	nop			;66d4
	nop			;66d5
	nop			;66d6
	nop			;66d7
	ld d,e			;66d8
	ld l,(hl)		;66d9
	ld h,c			;66da
	ld (hl),d		;66db
	ld h,l			;66dc
	ld b,c			;66dd
	ld l,h			;66de
	ld (hl),h		;66df
	nop			;66e0
	adc a,b			;66e1
	ex af,af'		;66e2
	ld (hl),a		;66e3
	rlca			;66e4
	ld d,l			;66e5
	dec b			;66e6
	ld c,04dh		;66e7
	ld c,h			;66e9
	inc b			;66ea
	ex af,af'		;66eb
	ld b,b			;66ec
	jr nz,l671fh		;66ed
	jr nz,l6761h		;66ef
	jr nz,l6714h		;66f1
	ld h,c			;66f3
	ld h,c			;66f4
	inc b			;66f5
	djnz l66f8h		;66f6
l66f8h:
	djnz l66fah		;66f8
l66fah:
	djnz l66fch		;66fa
l66fch:
	djnz l66feh		;66fc
l66feh:
	nop			;66fe
	nop			;66ff
	nop			;6700
	inc e			;6701
	nop			;6702
	nop			;6703
	nop			;6704
	nop			;6705
	nop			;6706
	nop			;6707
	nop			;6708
	nop			;6709
	nop			;670a
	nop			;670b
	nop			;670c
	nop			;670d
	nop			;670e
	nop			;670f
	nop			;6710
	nop			;6711
	nop			;6712
	nop			;6713
l6714h:
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
l671fh:
	nop			;671f
	nop			;6720
	nop			;6721
	nop			;6722
	nop			;6723
	nop			;6724
	nop			;6725
	nop			;6726
	nop			;6727
	nop			;6728
	nop			;6729
	nop			;672a
	nop			;672b
	nop			;672c
	nop			;672d
	nop			;672e
	nop			;672f
	nop			;6730
	nop			;6731
	nop			;6732
	nop			;6733
	nop			;6734
	nop			;6735
	nop			;6736
	nop			;6737
	nop			;6738
	nop			;6739
	nop			;673a
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
	nop			;6746
	nop			;6747
	nop			;6748
	nop			;6749
	nop			;674a
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
	nop			;675e
	nop			;675f
	nop			;6760
l6761h:
	nop			;6761
	nop			;6762
	nop			;6763
	nop			;6764
	nop			;6765
	nop			;6766
	nop			;6767
	nop			;6768
	nop			;6769
	nop			;676a
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
	nop			;6776
	nop			;6777
	nop			;6778
	nop			;6779
	nop			;677a
	nop			;677b
	nop			;677c
	nop			;677d
	nop			;677e
	nop			;677f
	nop			;6780
	nop			;6781
	nop			;6782
	nop			;6783
	nop			;6784
	nop			;6785
	nop			;6786
	nop			;6787
	nop			;6788
	nop			;6789
	nop			;678a
	nop			;678b
	nop			;678c
	nop			;678d
	nop			;678e
	nop			;678f
	ld l,b			;6790
	ld h,l			;6791
	ld h,c			;6792
	ld (hl),d		;6793
	ld (hl),h		;6794
	jr nz,$+34		;6795
	jr nz,l6799h		;6797
l6799h:
	call z,0cc0ch		;6799
	inc c			;679c
	ld h,(hl)		;679d
	ld b,00ch		;679e
	dec bc			;67a0
	ex af,af'		;67a1
	inc b			;67a2
	dec c			;67a3
	ld de,0dd20h		;67a4
	dec c			;67a7
	nop			;67a8
	dec c			;67a9
	nop			;67aa
	ld hl,00061h		;67ab
	nop			;67ae
	nop			;67af
	nop			;67b0
	nop			;67b1
	nop			;67b2
	ld (hl),a		;67b3
	rlca			;67b4
	ld hl,00000h		;67b5
	nop			;67b8
	djnz l67bbh		;67b9
l67bbh:
	nop			;67bb
	nop			;67bc
	nop			;67bd
	nop			;67be
	nop			;67bf
	ld bc,00101h		;67c0
	nop			;67c3
	ld h,000h		;67c4
	nop			;67c6
	nop			;67c7
	nop			;67c8
	nop			;67c9
	nop			;67ca
	ld (bc),a		;67cb
	ld (bc),a		;67cc
	ld (bc),a		;67cd
	nop			;67ce
	nop			;67cf
	nop			;67d0
	nop			;67d1
	nop			;67d2
	nop			;67d3
	nop			;67d4
	nop			;67d5
	inc bc			;67d6
	inc bc			;67d7
	inc bc			;67d8
	nop			;67d9
	nop			;67da
	nop			;67db
	nop			;67dc
	nop			;67dd
	nop			;67de
	nop			;67df
	nop			;67e0
	ld (bc),a		;67e1
	ld (bc),a		;67e2
	ld (bc),a		;67e3
	nop			;67e4
	nop			;67e5
	nop			;67e6
	nop			;67e7
	nop			;67e8
	nop			;67e9
	nop			;67ea
	nop			;67eb
	ld bc,00101h		;67ec
	nop			;67ef
	inc e			;67f0
	nop			;67f1
	djnz l67f4h		;67f2
l67f4h:
	djnz l67f6h		;67f4
l67f6h:
	djnz l67f8h		;67f6
l67f8h:
	nop			;67f8
	nop			;67f9
	nop			;67fa
	nop			;67fb
	nop			;67fc
	nop			;67fd
	nop			;67fe
	nop			;67ff
	nop			;6800
	nop			;6801
	nop			;6802
	nop			;6803
	nop			;6804
	nop			;6805
	nop			;6806
	nop			;6807
	nop			;6808
	nop			;6809
	nop			;680a
	nop			;680b
	nop			;680c
	nop			;680d
	nop			;680e
	nop			;680f
	nop			;6810
	nop			;6811
	nop			;6812
	nop			;6813
	nop			;6814
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
	nop			;681f
	nop			;6820
	nop			;6821
	nop			;6822
	nop			;6823
	nop			;6824
	nop			;6825
	nop			;6826
	nop			;6827
	nop			;6828
	nop			;6829
	nop			;682a
	nop			;682b
	nop			;682c
	nop			;682d
	nop			;682e
	nop			;682f
	nop			;6830
	nop			;6831
	nop			;6832
	nop			;6833
	nop			;6834
	nop			;6835
	nop			;6836
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
	nop			;6842
	nop			;6843
	nop			;6844
	nop			;6845
	nop			;6846
	nop			;6847
	ld d,e			;6848
	ld (hl),b		;6849
	ld l,h			;684a
	ld h,c			;684b
	ld (hl),e		;684c
	ld l,b			;684d
	jr nz,l6870h		;684e
	nop			;6850
	nop			;6851
	nop			;6852
	nop			;6853
	nop			;6854
	nop			;6855
	nop			;6856
	ld c,c			;6857
	ld c,c			;6858
	ld bc,00900h		;6859
	nop			;685c
	nop			;685d
	nop			;685e
	nop			;685f
	nop			;6860
	nop			;6861
	ld h,c			;6862
	ld h,c			;6863
	nop			;6864
	inc b			;6865
	nop			;6866
	nop			;6867
	nop			;6868
	nop			;6869
	nop			;686a
	nop			;686b
	nop			;686c
	ld b,b			;686d
	ld b,b			;686e
	nop			;686f
l6870h:
	nop			;6870
	nop			;6871
	nop			;6872
	nop			;6873
	nop			;6874
	nop			;6875
	nop			;6876
	nop			;6877
	ld b,b			;6878
	ld b,b			;6879
	nop			;687a
	nop			;687b
	djnz l687eh		;687c
l687eh:
	nop			;687e
	nop			;687f
	nop			;6880
	nop			;6881
	nop			;6882
	ld b,b			;6883
	ld b,b			;6884
	nop			;6885
	nop			;6886
	nop			;6887
	nop			;6888
	nop			;6889
	nop			;688a
	nop			;688b
	nop			;688c
	nop			;688d
	ld b,b			;688e
	ld b,b			;688f
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
	nop			;68a2
	nop			;68a3
	nop			;68a4
	nop			;68a5
	nop			;68a6
	nop			;68a7
	nop			;68a8
	nop			;68a9
	nop			;68aa
	nop			;68ab
	nop			;68ac
	nop			;68ad
	nop			;68ae
	nop			;68af
	nop			;68b0
	nop			;68b1
	nop			;68b2
	nop			;68b3
	nop			;68b4
	nop			;68b5
	nop			;68b6
	nop			;68b7
	nop			;68b8
	nop			;68b9
	nop			;68ba
	nop			;68bb
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
	nop			;68c6
	nop			;68c7
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
	nop			;68d2
	nop			;68d3
	nop			;68d4
	nop			;68d5
	nop			;68d6
	nop			;68d7
	nop			;68d8
	nop			;68d9
	nop			;68da
	nop			;68db
	nop			;68dc
	nop			;68dd
	nop			;68de
	nop			;68df
	nop			;68e0
	nop			;68e1
	nop			;68e2
	nop			;68e3
	nop			;68e4
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
	ld e,b			;6900
	ld d,b			;6901
	ld c,h			;6902
	ld c,a			;6903
	ld d,e			;6904
	ld c,c			;6905
	ld c,a			;6906
	ld c,(hl)		;6907
	nop			;6908
	nop			;6909
	rlca			;690a
	cp e			;690b
	ld a,(bc)		;690c
	xor d			;690d
	ld a,(bc)		;690e
	rrca			;690f
	rrca			;6910
	rrca			;6911
	nop			;6912
	ld c,000h		;6913
	nop			;6915
	nop			;6916
	nop			;6917
	nop			;6918
	nop			;6919
	ld b,b			;691a
	nop			;691b
	nop			;691c
	nop			;691d
	nop			;691e
	nop			;691f
	inc b			;6920
	nop			;6921
	nop			;6922
	inc sp			;6923
	inc bc			;6924
	ld b,b			;6925
	nop			;6926
	nop			;6927
	inc e			;6928
	nop			;6929
	nop			;692a
	nop			;692b
	nop			;692c
	nop			;692d
	inc sp			;692e
	inc bc			;692f
	ld b,b			;6930
	ld hl,00040h		;6931
	nop			;6934
	nop			;6935
	dec b			;6936
	nop			;6937
	nop			;6938
	halt			;6939
	rlca			;693a
	ld hl,l4000h		;693b
	inc e			;693e
	nop			;693f
	nop			;6940
	nop			;6941
	nop			;6942
	nop			;6943
	ld h,(hl)		;6944
	ld b,040h		;6945
	ld b,b			;6947
	ld b,b			;6948
	nop			;6949
	nop			;694a
	nop			;694b
	rlca			;694c
	nop			;694d
	nop			;694e
	ld d,l			;694f
	dec b			;6950
	nop			;6951
	ld b,b			;6952
	nop			;6953
	inc e			;6954
	nop			;6955
	nop			;6956
	nop			;6957
	ld b,h			;6958
	inc b			;6959
	ld h,(hl)		;695a
	ld b,000h		;695b
	ld b,b			;695d
	nop			;695e
	jr l6961h		;695f
l6961h:
	nop			;6961
	inc b			;6962
	inc sp			;6963
	inc bc			;6964
	nop			;6965
	nop			;6966
	ld b,b			;6967
	ld b,b			;6968
	ld hl,01000h		;6969
	nop			;696c
	dec b			;696d
	jr nc,l6974h		;696e
	nop			;6970
	nop			;6971
	nop			;6972
	nop			;6973
l6974h:
	nop			;6974
	nop			;6975
	nop			;6976
	nop			;6977
	nop			;6978
	nop			;6979
	nop			;697a
	nop			;697b
	nop			;697c
	nop			;697d
	nop			;697e
	nop			;697f
	djnz l6982h		;6980
l6982h:
	nop			;6982
	nop			;6983
	nop			;6984
	nop			;6985
	nop			;6986
	nop			;6987
	nop			;6988
	nop			;6989
	nop			;698a
	djnz l698dh		;698b
l698dh:
	nop			;698d
	nop			;698e
	nop			;698f
	nop			;6990
	nop			;6991
	nop			;6992
	nop			;6993
	nop			;6994
	nop			;6995
	djnz l6998h		;6996
l6998h:
	nop			;6998
	nop			;6999
	nop			;699a
	nop			;699b
	nop			;699c
	nop			;699d
	nop			;699e
	nop			;699f
	nop			;69a0
	nop			;69a1
	nop			;69a2
	nop			;69a3
	nop			;69a4
	nop			;69a5
	nop			;69a6
	nop			;69a7
	nop			;69a8
	nop			;69a9
	nop			;69aa
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
	nop			;69b6
	nop			;69b7
	ld b,h			;69b8
	ld h,l			;69b9
	ld h,(hl)		;69ba
	ld h,c			;69bb
	ld (hl),l		;69bc
	ld l,h			;69bd
	ld (hl),h		;69be
	jr nz,l69c1h		;69bf
l69c1h:
	nop			;69c1
	nop			;69c2
	nop			;69c3
	nop			;69c4
	nop			;69c5
	nop			;69c6
	nop			;69c7
	nop			;69c8
	nop			;69c9
	nop			;69ca
	nop			;69cb
	nop			;69cc
	nop			;69cd
	nop			;69ce
	nop			;69cf
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
	nop			;6a00
	nop			;6a01
	nop			;6a02
	nop			;6a03
	nop			;6a04
	nop			;6a05
	nop			;6a06
	nop			;6a07
	nop			;6a08
	nop			;6a09
	nop			;6a0a
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
	nop			;6a22
	nop			;6a23
	nop			;6a24
	nop			;6a25
	nop			;6a26
	nop			;6a27
	nop			;6a28
	nop			;6a29
	nop			;6a2a
	nop			;6a2b
	nop			;6a2c
	nop			;6a2d
	nop			;6a2e
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
	nop			;6a3a
	nop			;6a3b
	nop			;6a3c
	nop			;6a3d
	nop			;6a3e
	nop			;6a3f
	nop			;6a40
	nop			;6a41
	nop			;6a42
	nop			;6a43
	nop			;6a44
	nop			;6a45
	nop			;6a46
	nop			;6a47
	nop			;6a48
	nop			;6a49
	nop			;6a4a
	nop			;6a4b
	nop			;6a4c
	nop			;6a4d
	nop			;6a4e
	nop			;6a4f
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
	nop			;6a5e
	nop			;6a5f
	nop			;6a60
	nop			;6a61
	nop			;6a62
	nop			;6a63
	nop			;6a64
	nop			;6a65
	nop			;6a66
	nop			;6a67
	nop			;6a68
	nop			;6a69
	nop			;6a6a
	nop			;6a6b
	nop			;6a6c
	nop			;6a6d
	nop			;6a6e
	nop			;6a6f
	ld b,h			;6a70
	ld h,l			;6a71
	ld h,(hl)		;6a72
	ld h,c			;6a73
	ld (hl),l		;6a74
	ld l,h			;6a75
	ld (hl),h		;6a76
	jr nz,l6a79h		;6a77
l6a79h:
	nop			;6a79
	nop			;6a7a
	nop			;6a7b
	nop			;6a7c
	nop			;6a7d
	nop			;6a7e
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	nop			;6a82
	nop			;6a83
	nop			;6a84
	nop			;6a85
	nop			;6a86
	nop			;6a87
	nop			;6a88
	nop			;6a89
	nop			;6a8a
	nop			;6a8b
	nop			;6a8c
	nop			;6a8d
	nop			;6a8e
	nop			;6a8f
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
	nop			;6ac0
	nop			;6ac1
	nop			;6ac2
	nop			;6ac3
	nop			;6ac4
	nop			;6ac5
	nop			;6ac6
	nop			;6ac7
	nop			;6ac8
	nop			;6ac9
	nop			;6aca
	nop			;6acb
	nop			;6acc
	nop			;6acd
	nop			;6ace
	nop			;6acf
	nop			;6ad0
	nop			;6ad1
	nop			;6ad2
	nop			;6ad3
	nop			;6ad4
	nop			;6ad5
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
	nop			;6ae2
	nop			;6ae3
	nop			;6ae4
	nop			;6ae5
	nop			;6ae6
	nop			;6ae7
	nop			;6ae8
	nop			;6ae9
	nop			;6aea
	nop			;6aeb
	nop			;6aec
	nop			;6aed
	nop			;6aee
	nop			;6aef
	nop			;6af0
	nop			;6af1
	nop			;6af2
	nop			;6af3
	nop			;6af4
	nop			;6af5
	nop			;6af6
	nop			;6af7
	nop			;6af8
	nop			;6af9
	nop			;6afa
	nop			;6afb
	nop			;6afc
	nop			;6afd
	nop			;6afe
	nop			;6aff
	nop			;6b00
	nop			;6b01
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
	nop			;6b12
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
	nop			;6b1e
	nop			;6b1f
	nop			;6b20
	nop			;6b21
	nop			;6b22
	nop			;6b23
	nop			;6b24
	nop			;6b25
	nop			;6b26
	nop			;6b27
	ld b,h			;6b28
	ld h,l			;6b29
	ld h,(hl)		;6b2a
	ld h,c			;6b2b
	ld (hl),l		;6b2c
	ld l,h			;6b2d
	ld (hl),h		;6b2e
	jr nz,l6b31h		;6b2f
l6b31h:
	nop			;6b31
	nop			;6b32
	nop			;6b33
	nop			;6b34
	nop			;6b35
	nop			;6b36
	nop			;6b37
	nop			;6b38
	nop			;6b39
	nop			;6b3a
	nop			;6b3b
	nop			;6b3c
	nop			;6b3d
	nop			;6b3e
	nop			;6b3f
	nop			;6b40
	nop			;6b41
	nop			;6b42
	nop			;6b43
	nop			;6b44
	nop			;6b45
	nop			;6b46
	nop			;6b47
	nop			;6b48
	nop			;6b49
	nop			;6b4a
	nop			;6b4b
	nop			;6b4c
	nop			;6b4d
	nop			;6b4e
	nop			;6b4f
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
l6b6bh:
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
	nop			;6b80
	nop			;6b81
	nop			;6b82
	nop			;6b83
	nop			;6b84
	nop			;6b85
	nop			;6b86
	nop			;6b87
	nop			;6b88
	nop			;6b89
	nop			;6b8a
	nop			;6b8b
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
	nop			;6ba2
	nop			;6ba3
	nop			;6ba4
	nop			;6ba5
	nop			;6ba6
	nop			;6ba7
	nop			;6ba8
	nop			;6ba9
	nop			;6baa
	nop			;6bab
	nop			;6bac
	nop			;6bad
	nop			;6bae
	nop			;6baf
	nop			;6bb0
	nop			;6bb1
	nop			;6bb2
	nop			;6bb3
	nop			;6bb4
	nop			;6bb5
	nop			;6bb6
	nop			;6bb7
	nop			;6bb8
	nop			;6bb9
	nop			;6bba
	nop			;6bbb
	nop			;6bbc
	nop			;6bbd
	nop			;6bbe
	nop			;6bbf
	nop			;6bc0
	nop			;6bc1
	nop			;6bc2
	nop			;6bc3
	nop			;6bc4
	nop			;6bc5
	nop			;6bc6
	nop			;6bc7
	nop			;6bc8
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
	nop			;6bd4
	nop			;6bd5
	nop			;6bd6
	nop			;6bd7
	nop			;6bd8
	nop			;6bd9
	nop			;6bda
	nop			;6bdb
	nop			;6bdc
	nop			;6bdd
	nop			;6bde
	nop			;6bdf
	ld b,h			;6be0
	ld h,l			;6be1
	ld h,(hl)		;6be2
	ld h,c			;6be3
	ld (hl),l		;6be4
	ld l,h			;6be5
	ld (hl),h		;6be6
	jr nz,l6be9h		;6be7
l6be9h:
	nop			;6be9
	nop			;6bea
	nop			;6beb
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
	nop			;6bf7
	nop			;6bf8
	nop			;6bf9
	nop			;6bfa
	nop			;6bfb
	nop			;6bfc
	nop			;6bfd
	nop			;6bfe
	nop			;6bff
	nop			;6c00
	nop			;6c01
	nop			;6c02
	nop			;6c03
	nop			;6c04
	nop			;6c05
	nop			;6c06
	nop			;6c07
	nop			;6c08
	nop			;6c09
	nop			;6c0a
	nop			;6c0b
	nop			;6c0c
	nop			;6c0d
	nop			;6c0e
	nop			;6c0f
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
	nop			;6c40
	nop			;6c41
	nop			;6c42
	nop			;6c43
	nop			;6c44
	nop			;6c45
	nop			;6c46
	nop			;6c47
	nop			;6c48
	nop			;6c49
	nop			;6c4a
	nop			;6c4b
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
	nop			;6c56
	nop			;6c57
	nop			;6c58
	nop			;6c59
	nop			;6c5a
	nop			;6c5b
	nop			;6c5c
	nop			;6c5d
	nop			;6c5e
	nop			;6c5f
	nop			;6c60
	nop			;6c61
	nop			;6c62
	nop			;6c63
	nop			;6c64
	nop			;6c65
	nop			;6c66
	nop			;6c67
	nop			;6c68
	nop			;6c69
	nop			;6c6a
	nop			;6c6b
	nop			;6c6c
	nop			;6c6d
	nop			;6c6e
	nop			;6c6f
	nop			;6c70
	nop			;6c71
	nop			;6c72
	nop			;6c73
	nop			;6c74
	nop			;6c75
	nop			;6c76
	nop			;6c77
	nop			;6c78
	nop			;6c79
	nop			;6c7a
	nop			;6c7b
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
	nop			;6c86
	nop			;6c87
	nop			;6c88
	nop			;6c89
	nop			;6c8a
	nop			;6c8b
	nop			;6c8c
	nop			;6c8d
	nop			;6c8e
	nop			;6c8f
	nop			;6c90
	nop			;6c91
	nop			;6c92
	nop			;6c93
	nop			;6c94
	nop			;6c95
	nop			;6c96
	nop			;6c97
	ld b,h			;6c98
	ld h,l			;6c99
	ld h,(hl)		;6c9a
	ld h,c			;6c9b
	ld (hl),l		;6c9c
	ld l,h			;6c9d
	ld (hl),h		;6c9e
	jr nz,l6ca1h		;6c9f
l6ca1h:
	nop			;6ca1
	nop			;6ca2
	nop			;6ca3
	nop			;6ca4
	nop			;6ca5
	nop			;6ca6
	nop			;6ca7
	nop			;6ca8
	nop			;6ca9
	nop			;6caa
	nop			;6cab
	nop			;6cac
	nop			;6cad
	nop			;6cae
	nop			;6caf
	nop			;6cb0
	nop			;6cb1
	nop			;6cb2
	nop			;6cb3
	nop			;6cb4
	nop			;6cb5
	nop			;6cb6
	nop			;6cb7
	nop			;6cb8
	nop			;6cb9
	nop			;6cba
	nop			;6cbb
	nop			;6cbc
	nop			;6cbd
	nop			;6cbe
	nop			;6cbf
	nop			;6cc0
	nop			;6cc1
	nop			;6cc2
	nop			;6cc3
	nop			;6cc4
	nop			;6cc5
	nop			;6cc6
	nop			;6cc7
	nop			;6cc8
	nop			;6cc9
	nop			;6cca
	nop			;6ccb
	nop			;6ccc
	nop			;6ccd
	nop			;6cce
	nop			;6ccf
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
	nop			;6d00
	nop			;6d01
	nop			;6d02
	nop			;6d03
	nop			;6d04
	nop			;6d05
	nop			;6d06
	nop			;6d07
	nop			;6d08
	nop			;6d09
	nop			;6d0a
	nop			;6d0b
	nop			;6d0c
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
	nop			;6d22
	nop			;6d23
	nop			;6d24
	nop			;6d25
	nop			;6d26
	nop			;6d27
	nop			;6d28
	nop			;6d29
	nop			;6d2a
	nop			;6d2b
	nop			;6d2c
	nop			;6d2d
	nop			;6d2e
	nop			;6d2f
	nop			;6d30
	nop			;6d31
	nop			;6d32
	nop			;6d33
	nop			;6d34
	nop			;6d35
	nop			;6d36
	nop			;6d37
	nop			;6d38
	nop			;6d39
	nop			;6d3a
	nop			;6d3b
	nop			;6d3c
	nop			;6d3d
	nop			;6d3e
	nop			;6d3f
	nop			;6d40
	nop			;6d41
	nop			;6d42
	nop			;6d43
	nop			;6d44
	nop			;6d45
	nop			;6d46
	nop			;6d47
	nop			;6d48
	nop			;6d49
	nop			;6d4a
	nop			;6d4b
	nop			;6d4c
	nop			;6d4d
	nop			;6d4e
	nop			;6d4f
	ld b,h			;6d50
	ld h,l			;6d51
	ld h,(hl)		;6d52
	ld h,c			;6d53
	ld (hl),l		;6d54
	ld l,h			;6d55
	ld (hl),h		;6d56
	jr nz,l6d59h		;6d57
l6d59h:
	nop			;6d59
	nop			;6d5a
	nop			;6d5b
	nop			;6d5c
	nop			;6d5d
	nop			;6d5e
	nop			;6d5f
	nop			;6d60
	nop			;6d61
	nop			;6d62
	nop			;6d63
	nop			;6d64
	nop			;6d65
	nop			;6d66
	nop			;6d67
	nop			;6d68
	nop			;6d69
	nop			;6d6a
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
	nop			;6d7e
	nop			;6d7f
	nop			;6d80
	nop			;6d81
	nop			;6d82
	nop			;6d83
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
	nop			;6d8f
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
	nop			;6dc0
	nop			;6dc1
	nop			;6dc2
	nop			;6dc3
	nop			;6dc4
	nop			;6dc5
	nop			;6dc6
	nop			;6dc7
	nop			;6dc8
	nop			;6dc9
	nop			;6dca
	nop			;6dcb
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
	nop			;6dd6
	nop			;6dd7
	nop			;6dd8
	nop			;6dd9
	nop			;6dda
	nop			;6ddb
	nop			;6ddc
	nop			;6ddd
	nop			;6dde
	nop			;6ddf
	nop			;6de0
	nop			;6de1
	nop			;6de2
	nop			;6de3
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
	nop			;6def
	nop			;6df0
	nop			;6df1
	nop			;6df2
	nop			;6df3
	nop			;6df4
	nop			;6df5
	nop			;6df6
	nop			;6df7
	nop			;6df8
	nop			;6df9
	nop			;6dfa
	nop			;6dfb
	nop			;6dfc
	nop			;6dfd
	nop			;6dfe
	nop			;6dff
	nop			;6e00
	nop			;6e01
	nop			;6e02
	nop			;6e03
	nop			;6e04
	nop			;6e05
	nop			;6e06
	nop			;6e07
	ld b,h			;6e08
	ld h,l			;6e09
	ld h,(hl)		;6e0a
	ld h,c			;6e0b
	ld (hl),l		;6e0c
	ld l,h			;6e0d
	ld (hl),h		;6e0e
	jr nz,l6e11h		;6e0f
l6e11h:
	nop			;6e11
	nop			;6e12
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
	nop			;6e1e
	nop			;6e1f
	nop			;6e20
	nop			;6e21
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
	nop			;6e2e
	nop			;6e2f
	nop			;6e30
	nop			;6e31
	nop			;6e32
	nop			;6e33
	nop			;6e34
	nop			;6e35
	nop			;6e36
	nop			;6e37
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
	nop			;6e42
	nop			;6e43
	nop			;6e44
	nop			;6e45
	nop			;6e46
	nop			;6e47
	nop			;6e48
	nop			;6e49
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	nop			;6e4e
	nop			;6e4f
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
	nop			;6e80
	nop			;6e81
	nop			;6e82
	nop			;6e83
	nop			;6e84
	nop			;6e85
	nop			;6e86
	nop			;6e87
	nop			;6e88
	nop			;6e89
	nop			;6e8a
	nop			;6e8b
	nop			;6e8c
	nop			;6e8d
	nop			;6e8e
	nop			;6e8f
	nop			;6e90
	nop			;6e91
	nop			;6e92
	nop			;6e93
	nop			;6e94
	nop			;6e95
	nop			;6e96
	nop			;6e97
	nop			;6e98
	nop			;6e99
	nop			;6e9a
	nop			;6e9b
	nop			;6e9c
	nop			;6e9d
	nop			;6e9e
	nop			;6e9f
	nop			;6ea0
	nop			;6ea1
	nop			;6ea2
	nop			;6ea3
	nop			;6ea4
	nop			;6ea5
	nop			;6ea6
	nop			;6ea7
	nop			;6ea8
	nop			;6ea9
	nop			;6eaa
	nop			;6eab
	nop			;6eac
	nop			;6ead
	nop			;6eae
	nop			;6eaf
	nop			;6eb0
	nop			;6eb1
	nop			;6eb2
	nop			;6eb3
	nop			;6eb4
	nop			;6eb5
	nop			;6eb6
	nop			;6eb7
	nop			;6eb8
	nop			;6eb9
	nop			;6eba
	nop			;6ebb
	nop			;6ebc
	nop			;6ebd
	nop			;6ebe
	nop			;6ebf
	ld b,h			;6ec0
	ld h,l			;6ec1
	ld h,(hl)		;6ec2
	ld h,c			;6ec3
	ld (hl),l		;6ec4
	ld l,h			;6ec5
	ld (hl),h		;6ec6
	jr nz,l6ec9h		;6ec7
l6ec9h:
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
	nop			;6ed4
	nop			;6ed5
	nop			;6ed6
	nop			;6ed7
	nop			;6ed8
	nop			;6ed9
	nop			;6eda
	nop			;6edb
	nop			;6edc
	nop			;6edd
	nop			;6ede
	nop			;6edf
	nop			;6ee0
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
	nop			;6ef6
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
	nop			;6f0e
	nop			;6f0f
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
	nop			;6f40
	nop			;6f41
	nop			;6f42
	nop			;6f43
	nop			;6f44
	nop			;6f45
	nop			;6f46
	nop			;6f47
	nop			;6f48
	nop			;6f49
	nop			;6f4a
	nop			;6f4b
	nop			;6f4c
	nop			;6f4d
	nop			;6f4e
	nop			;6f4f
	nop			;6f50
	nop			;6f51
	nop			;6f52
	nop			;6f53
	nop			;6f54
	nop			;6f55
	nop			;6f56
	nop			;6f57
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
	nop			;6f62
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
	nop			;6f6e
	nop			;6f6f
	nop			;6f70
	nop			;6f71
	nop			;6f72
	nop			;6f73
	nop			;6f74
	nop			;6f75
	nop			;6f76
	nop			;6f77
	ld b,h			;6f78
	ld h,l			;6f79
	ld h,(hl)		;6f7a
	ld h,c			;6f7b
	ld (hl),l		;6f7c
	ld l,h			;6f7d
	ld (hl),h		;6f7e
	jr nz,l6f81h		;6f7f
l6f81h:
	nop			;6f81
	nop			;6f82
	nop			;6f83
	nop			;6f84
	nop			;6f85
	nop			;6f86
	nop			;6f87
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
	nop			;6f92
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
	nop			;6f9e
	nop			;6f9f
	nop			;6fa0
	nop			;6fa1
	nop			;6fa2
	nop			;6fa3
	nop			;6fa4
	nop			;6fa5
	nop			;6fa6
	nop			;6fa7
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
	nop			;6fb4
	nop			;6fb5
	nop			;6fb6
	nop			;6fb7
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
	nop			;6fc6
	nop			;6fc7
	nop			;6fc8
	nop			;6fc9
	nop			;6fca
	nop			;6fcb
	nop			;6fcc
	nop			;6fcd
	nop			;6fce
	nop			;6fcf
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
	nop			;7000
	nop			;7001
	nop			;7002
	nop			;7003
	nop			;7004
	nop			;7005
	nop			;7006
	nop			;7007
	nop			;7008
	nop			;7009
	nop			;700a
	nop			;700b
	nop			;700c
	nop			;700d
	nop			;700e
	nop			;700f
	nop			;7010
	nop			;7011
	nop			;7012
	nop			;7013
	nop			;7014
	nop			;7015
	nop			;7016
	nop			;7017
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
	nop			;7022
	nop			;7023
	nop			;7024
	nop			;7025
	nop			;7026
	nop			;7027
	nop			;7028
	nop			;7029
	nop			;702a
	nop			;702b
	nop			;702c
	nop			;702d
	nop			;702e
	nop			;702f
	ld b,h			;7030
	ld h,l			;7031
	ld h,(hl)		;7032
	ld h,c			;7033
	ld (hl),l		;7034
	ld l,h			;7035
	ld (hl),h		;7036
	jr nz,l7039h		;7037
l7039h:
	nop			;7039
	nop			;703a
	nop			;703b
	nop			;703c
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
	nop			;7047
	nop			;7048
	nop			;7049
	nop			;704a
	nop			;704b
	nop			;704c
	nop			;704d
	nop			;704e
	nop			;704f
	nop			;7050
	nop			;7051
	nop			;7052
l7053h:
	nop			;7053
	nop			;7054
	nop			;7055
	nop			;7056
	nop			;7057
	nop			;7058
	nop			;7059
	nop			;705a
	nop			;705b
	nop			;705c
	nop			;705d
	nop			;705e
	nop			;705f
	nop			;7060
	nop			;7061
	nop			;7062
	nop			;7063
	nop			;7064
	nop			;7065
	nop			;7066
	nop			;7067
	nop			;7068
	nop			;7069
	nop			;706a
	nop			;706b
	nop			;706c
	nop			;706d
	nop			;706e
	nop			;706f
	nop			;7070
	nop			;7071
	nop			;7072
	nop			;7073
	nop			;7074
	nop			;7075
	nop			;7076
	nop			;7077
	nop			;7078
	nop			;7079
	nop			;707a
	nop			;707b
	nop			;707c
	nop			;707d
	nop			;707e
	nop			;707f
	nop			;7080
	nop			;7081
	nop			;7082
	nop			;7083
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
	nop			;708e
	nop			;708f
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
	nop			;70c0
	nop			;70c1
	nop			;70c2
	nop			;70c3
	nop			;70c4
	nop			;70c5
	nop			;70c6
	nop			;70c7
	nop			;70c8
	nop			;70c9
	nop			;70ca
	nop			;70cb
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
	nop			;70d6
	nop			;70d7
	nop			;70d8
	nop			;70d9
	nop			;70da
	nop			;70db
	nop			;70dc
	nop			;70dd
	nop			;70de
	nop			;70df
	nop			;70e0
	nop			;70e1
	nop			;70e2
	nop			;70e3
	nop			;70e4
	nop			;70e5
	nop			;70e6
	nop			;70e7
	ld b,h			;70e8
	ld h,l			;70e9
	ld h,(hl)		;70ea
	ld h,c			;70eb
	ld (hl),l		;70ec
	ld l,h			;70ed
	ld (hl),h		;70ee
	jr nz,l70f1h		;70ef
l70f1h:
	nop			;70f1
	nop			;70f2
	nop			;70f3
	nop			;70f4
	nop			;70f5
	nop			;70f6
	nop			;70f7
	nop			;70f8
	nop			;70f9
	nop			;70fa
	nop			;70fb
	nop			;70fc
	nop			;70fd
	nop			;70fe
	nop			;70ff
	nop			;7100
	nop			;7101
	nop			;7102
	nop			;7103
	nop			;7104
	nop			;7105
	nop			;7106
	nop			;7107
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
	nop			;7113
	nop			;7114
	nop			;7115
	nop			;7116
	nop			;7117
	nop			;7118
	nop			;7119
	nop			;711a
	nop			;711b
	nop			;711c
	nop			;711d
	nop			;711e
	nop			;711f
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
	nop			;712a
	nop			;712b
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
	nop			;7136
	nop			;7137
	nop			;7138
	nop			;7139
	nop			;713a
	nop			;713b
	nop			;713c
	nop			;713d
	nop			;713e
	nop			;713f
	nop			;7140
	nop			;7141
	nop			;7142
	nop			;7143
	nop			;7144
	nop			;7145
	nop			;7146
	nop			;7147
	nop			;7148
	nop			;7149
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	nop			;714e
	nop			;714f
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
	nop			;7180
	nop			;7181
	nop			;7182
	nop			;7183
	nop			;7184
	nop			;7185
	nop			;7186
	nop			;7187
	nop			;7188
	nop			;7189
	nop			;718a
	nop			;718b
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
	nop			;7196
	nop			;7197
	nop			;7198
	nop			;7199
	nop			;719a
	nop			;719b
	nop			;719c
	nop			;719d
	nop			;719e
	nop			;719f
	ld b,h			;71a0
	ld h,l			;71a1
	ld h,(hl)		;71a2
	ld h,c			;71a3
	ld (hl),l		;71a4
	ld l,h			;71a5
	ld (hl),h		;71a6
	jr nz,l71a9h		;71a7
l71a9h:
	nop			;71a9
	nop			;71aa
	nop			;71ab
	nop			;71ac
	nop			;71ad
	nop			;71ae
	nop			;71af
	nop			;71b0
	nop			;71b1
	nop			;71b2
	nop			;71b3
	nop			;71b4
	nop			;71b5
	nop			;71b6
	nop			;71b7
	nop			;71b8
	nop			;71b9
	nop			;71ba
	nop			;71bb
	nop			;71bc
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
	nop			;71c7
	nop			;71c8
	nop			;71c9
	nop			;71ca
	nop			;71cb
	nop			;71cc
	nop			;71cd
	nop			;71ce
	nop			;71cf
	nop			;71d0
	nop			;71d1
	nop			;71d2
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
	nop			;71e0
	nop			;71e1
	nop			;71e2
	nop			;71e3
	nop			;71e4
	nop			;71e5
	nop			;71e6
	nop			;71e7
	nop			;71e8
	nop			;71e9
	nop			;71ea
	nop			;71eb
	nop			;71ec
	nop			;71ed
	nop			;71ee
	nop			;71ef
	nop			;71f0
	nop			;71f1
	nop			;71f2
	nop			;71f3
	nop			;71f4
	nop			;71f5
	nop			;71f6
	nop			;71f7
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
	nop			;7202
	nop			;7203
	nop			;7204
	nop			;7205
	nop			;7206
	nop			;7207
	nop			;7208
	nop			;7209
	nop			;720a
	nop			;720b
	nop			;720c
	nop			;720d
	nop			;720e
	nop			;720f
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
	nop			;7240
	nop			;7241
	nop			;7242
	nop			;7243
	nop			;7244
	nop			;7245
	nop			;7246
	nop			;7247
	nop			;7248
	nop			;7249
	nop			;724a
	nop			;724b
	nop			;724c
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
	ld b,h			;7258
	ld h,l			;7259
	ld h,(hl)		;725a
	ld h,c			;725b
	ld (hl),l		;725c
	ld l,h			;725d
	ld (hl),h		;725e
	jr nz,l7261h		;725f
l7261h:
	nop			;7261
	nop			;7262
	nop			;7263
	nop			;7264
	nop			;7265
	nop			;7266
	nop			;7267
	nop			;7268
	nop			;7269
	nop			;726a
	nop			;726b
	nop			;726c
	nop			;726d
	nop			;726e
	nop			;726f
	nop			;7270
	nop			;7271
	nop			;7272
	nop			;7273
	nop			;7274
	nop			;7275
	nop			;7276
	nop			;7277
	nop			;7278
	nop			;7279
	nop			;727a
	nop			;727b
	nop			;727c
	nop			;727d
	nop			;727e
	nop			;727f
	nop			;7280
	nop			;7281
	nop			;7282
	nop			;7283
	nop			;7284
	nop			;7285
	nop			;7286
	nop			;7287
	nop			;7288
	nop			;7289
	nop			;728a
	nop			;728b
	nop			;728c
	nop			;728d
	nop			;728e
	nop			;728f
	nop			;7290
	nop			;7291
	nop			;7292
	nop			;7293
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
	nop			;729e
	nop			;729f
	nop			;72a0
	nop			;72a1
	nop			;72a2
	nop			;72a3
	nop			;72a4
	nop			;72a5
	nop			;72a6
	nop			;72a7
	nop			;72a8
	nop			;72a9
	nop			;72aa
	nop			;72ab
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
	nop			;72b6
	nop			;72b7
	nop			;72b8
	nop			;72b9
	nop			;72ba
	nop			;72bb
	nop			;72bc
	nop			;72bd
	nop			;72be
	nop			;72bf
	nop			;72c0
	nop			;72c1
	nop			;72c2
	nop			;72c3
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
	nop			;72ce
	nop			;72cf
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
	nop			;7300
	nop			;7301
	nop			;7302
	nop			;7303
	nop			;7304
	nop			;7305
	nop			;7306
	nop			;7307
	nop			;7308
	nop			;7309
	nop			;730a
	nop			;730b
	nop			;730c
	nop			;730d
	nop			;730e
	nop			;730f
	ld b,h			;7310
	ld h,l			;7311
	ld h,(hl)		;7312
	ld h,c			;7313
	ld (hl),l		;7314
	ld l,h			;7315
	ld (hl),h		;7316
	jr nz,l7319h		;7317
l7319h:
	nop			;7319
	nop			;731a
	nop			;731b
	nop			;731c
	nop			;731d
	nop			;731e
	nop			;731f
	nop			;7320
	nop			;7321
	nop			;7322
	nop			;7323
	nop			;7324
	nop			;7325
	nop			;7326
	nop			;7327
	nop			;7328
	nop			;7329
	nop			;732a
	nop			;732b
	nop			;732c
	nop			;732d
	nop			;732e
	nop			;732f
	nop			;7330
	nop			;7331
	nop			;7332
	nop			;7333
	nop			;7334
	nop			;7335
	nop			;7336
	nop			;7337
	nop			;7338
	nop			;7339
	nop			;733a
	nop			;733b
	nop			;733c
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
	nop			;7347
	nop			;7348
	nop			;7349
	nop			;734a
	nop			;734b
	nop			;734c
	nop			;734d
	nop			;734e
	nop			;734f
	nop			;7350
	nop			;7351
	nop			;7352
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
	nop			;735e
	nop			;735f
	nop			;7360
	nop			;7361
	nop			;7362
	nop			;7363
	nop			;7364
	nop			;7365
	nop			;7366
	nop			;7367
	nop			;7368
	nop			;7369
	nop			;736a
	nop			;736b
	nop			;736c
	nop			;736d
	nop			;736e
	nop			;736f
	nop			;7370
	nop			;7371
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
	nop			;737e
	nop			;737f
	nop			;7380
	nop			;7381
	nop			;7382
	nop			;7383
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
	nop			;738e
	nop			;738f
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
	nop			;73c0
	nop			;73c1
	nop			;73c2
	nop			;73c3
	nop			;73c4
	nop			;73c5
	nop			;73c6
	nop			;73c7
	ld b,h			;73c8
	ld h,l			;73c9
	ld h,(hl)		;73ca
	ld h,c			;73cb
	ld (hl),l		;73cc
	ld l,h			;73cd
	ld (hl),h		;73ce
	jr nz,l73d1h		;73cf
l73d1h:
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
	nop			;73e2
	nop			;73e3
	nop			;73e4
	nop			;73e5
	nop			;73e6
	nop			;73e7
	nop			;73e8
	nop			;73e9
	nop			;73ea
	nop			;73eb
	nop			;73ec
	nop			;73ed
	nop			;73ee
	nop			;73ef
	nop			;73f0
	nop			;73f1
	nop			;73f2
	nop			;73f3
	nop			;73f4
	nop			;73f5
	nop			;73f6
	nop			;73f7
	nop			;73f8
	nop			;73f9
	nop			;73fa
	nop			;73fb
	nop			;73fc
	nop			;73fd
	nop			;73fe
	nop			;73ff
	nop			;7400
	nop			;7401
	nop			;7402
	nop			;7403
	nop			;7404
	nop			;7405
	nop			;7406
	nop			;7407
	nop			;7408
	nop			;7409
	nop			;740a
	nop			;740b
	nop			;740c
	nop			;740d
	nop			;740e
	nop			;740f
	nop			;7410
	nop			;7411
	nop			;7412
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
	nop			;741e
	nop			;741f
	nop			;7420
	nop			;7421
	nop			;7422
	nop			;7423
	nop			;7424
	nop			;7425
	nop			;7426
	nop			;7427
	nop			;7428
	nop			;7429
	nop			;742a
	nop			;742b
	nop			;742c
	nop			;742d
	nop			;742e
	nop			;742f
	nop			;7430
	nop			;7431
	nop			;7432
	nop			;7433
	nop			;7434
	nop			;7435
	nop			;7436
	nop			;7437
	nop			;7438
	nop			;7439
	nop			;743a
	nop			;743b
	nop			;743c
	nop			;743d
	nop			;743e
	nop			;743f
	nop			;7440
	nop			;7441
	nop			;7442
	nop			;7443
	nop			;7444
	nop			;7445
	nop			;7446
	nop			;7447
	nop			;7448
	nop			;7449
	nop			;744a
	nop			;744b
	nop			;744c
	nop			;744d
	nop			;744e
	nop			;744f
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
	ld b,h			;7480
	ld h,l			;7481
	ld h,(hl)		;7482
	ld h,c			;7483
	ld (hl),l		;7484
	ld l,h			;7485
	ld (hl),h		;7486
	jr nz,l7489h		;7487
l7489h:
	nop			;7489
	nop			;748a
	nop			;748b
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
	nop			;7496
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
	nop			;74a2
	nop			;74a3
	nop			;74a4
	nop			;74a5
	nop			;74a6
	nop			;74a7
	nop			;74a8
	nop			;74a9
	nop			;74aa
	nop			;74ab
	nop			;74ac
	nop			;74ad
	nop			;74ae
	nop			;74af
	nop			;74b0
	nop			;74b1
	nop			;74b2
	nop			;74b3
	nop			;74b4
	nop			;74b5
	nop			;74b6
	nop			;74b7
	nop			;74b8
	nop			;74b9
	nop			;74ba
	nop			;74bb
	nop			;74bc
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
	nop			;74c7
	nop			;74c8
	nop			;74c9
	nop			;74ca
	nop			;74cb
	nop			;74cc
	nop			;74cd
	nop			;74ce
	nop			;74cf
	nop			;74d0
	nop			;74d1
	nop			;74d2
	nop			;74d3
	nop			;74d4
	nop			;74d5
	nop			;74d6
	nop			;74d7
	nop			;74d8
	nop			;74d9
	nop			;74da
	nop			;74db
	nop			;74dc
	nop			;74dd
	nop			;74de
	nop			;74df
	nop			;74e0
	nop			;74e1
	nop			;74e2
	nop			;74e3
	nop			;74e4
	nop			;74e5
	nop			;74e6
	nop			;74e7
	nop			;74e8
	nop			;74e9
	nop			;74ea
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
	nop			;74fa
	nop			;74fb
	nop			;74fc
	nop			;74fd
	nop			;74fe
	nop			;74ff
	nop			;7500
	nop			;7501
	nop			;7502
	nop			;7503
	nop			;7504
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
	nop			;750f
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
	ld b,h			;7538
	ld h,l			;7539
	ld h,(hl)		;753a
	ld h,c			;753b
	ld (hl),l		;753c
	ld l,h			;753d
	ld (hl),h		;753e
	jr nz,l7541h		;753f
l7541h:
	nop			;7541
	nop			;7542
	nop			;7543
	nop			;7544
	nop			;7545
	nop			;7546
	nop			;7547
	nop			;7548
	nop			;7549
	nop			;754a
	nop			;754b
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
	nop			;7562
	nop			;7563
	nop			;7564
	nop			;7565
	nop			;7566
	nop			;7567
	nop			;7568
	nop			;7569
	nop			;756a
	nop			;756b
	nop			;756c
	nop			;756d
	nop			;756e
	nop			;756f
	nop			;7570
	nop			;7571
	nop			;7572
	nop			;7573
	nop			;7574
	nop			;7575
	nop			;7576
	nop			;7577
	nop			;7578
	nop			;7579
	nop			;757a
	nop			;757b
	nop			;757c
	nop			;757d
	nop			;757e
	nop			;757f
	nop			;7580
	nop			;7581
	nop			;7582
	nop			;7583
	nop			;7584
	nop			;7585
	nop			;7586
	nop			;7587
	nop			;7588
	nop			;7589
	nop			;758a
	nop			;758b
	nop			;758c
	nop			;758d
	nop			;758e
	nop			;758f
	nop			;7590
	nop			;7591
	nop			;7592
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
	nop			;759e
	nop			;759f
	nop			;75a0
	nop			;75a1
	nop			;75a2
	nop			;75a3
	nop			;75a4
	nop			;75a5
	nop			;75a6
	nop			;75a7
	nop			;75a8
	nop			;75a9
	nop			;75aa
	nop			;75ab
	nop			;75ac
	nop			;75ad
	nop			;75ae
	nop			;75af
	nop			;75b0
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
	nop			;75be
	nop			;75bf
	nop			;75c0
	nop			;75c1
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
	ld b,h			;75f0
	ld h,l			;75f1
	ld h,(hl)		;75f2
	ld h,c			;75f3
	ld (hl),l		;75f4
	ld l,h			;75f5
	ld (hl),h		;75f6
	jr nz,l75f9h		;75f7
l75f9h:
	nop			;75f9
	nop			;75fa
	nop			;75fb
	nop			;75fc
	nop			;75fd
	nop			;75fe
	nop			;75ff
	nop			;7600
	nop			;7601
	nop			;7602
	nop			;7603
	nop			;7604
	nop			;7605
	nop			;7606
	nop			;7607
	nop			;7608
	nop			;7609
	nop			;760a
	nop			;760b
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
	nop			;7616
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
	nop			;7622
	nop			;7623
	nop			;7624
	nop			;7625
	nop			;7626
	nop			;7627
	nop			;7628
	nop			;7629
	nop			;762a
	nop			;762b
	nop			;762c
	nop			;762d
	nop			;762e
	nop			;762f
	nop			;7630
	nop			;7631
	nop			;7632
	nop			;7633
	nop			;7634
	nop			;7635
	nop			;7636
	nop			;7637
	nop			;7638
	nop			;7639
	nop			;763a
	nop			;763b
	nop			;763c
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
	nop			;7647
	nop			;7648
	nop			;7649
	nop			;764a
	nop			;764b
	nop			;764c
	nop			;764d
	nop			;764e
	nop			;764f
	nop			;7650
	nop			;7651
	nop			;7652
	nop			;7653
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
	nop			;7660
	nop			;7661
	nop			;7662
	nop			;7663
	nop			;7664
	nop			;7665
	nop			;7666
	nop			;7667
	nop			;7668
	nop			;7669
	nop			;766a
	nop			;766b
	nop			;766c
	nop			;766d
	nop			;766e
	nop			;766f
	nop			;7670
	nop			;7671
	nop			;7672
	nop			;7673
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
	nop			;767e
	nop			;767f
	nop			;7680
	nop			;7681
	nop			;7682
	nop			;7683
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
	nop			;768e
	nop			;768f
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
	ld b,h			;76a8
	ld h,l			;76a9
	ld h,(hl)		;76aa
	ld h,c			;76ab
	ld (hl),l		;76ac
	ld l,h			;76ad
	ld (hl),h		;76ae
	jr nz,l76b1h		;76af
l76b1h:
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
	nop			;76c0
	nop			;76c1
	nop			;76c2
	nop			;76c3
	nop			;76c4
	nop			;76c5
	nop			;76c6
	nop			;76c7
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
	nop			;76d2
	nop			;76d3
	nop			;76d4
	nop			;76d5
	nop			;76d6
	nop			;76d7
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
	nop			;76e8
	nop			;76e9
	nop			;76ea
	nop			;76eb
	nop			;76ec
	nop			;76ed
	nop			;76ee
	nop			;76ef
	nop			;76f0
	nop			;76f1
	nop			;76f2
	nop			;76f3
	nop			;76f4
	nop			;76f5
	nop			;76f6
	nop			;76f7
	nop			;76f8
	nop			;76f9
	nop			;76fa
	nop			;76fb
	nop			;76fc
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
	nop			;7707
	nop			;7708
	nop			;7709
	nop			;770a
	nop			;770b
	nop			;770c
	nop			;770d
	nop			;770e
	nop			;770f
	nop			;7710
	nop			;7711
	nop			;7712
	nop			;7713
	nop			;7714
	nop			;7715
	nop			;7716
	nop			;7717
	nop			;7718
	nop			;7719
	nop			;771a
	nop			;771b
	nop			;771c
	nop			;771d
	nop			;771e
	nop			;771f
	nop			;7720
	nop			;7721
	nop			;7722
	nop			;7723
	nop			;7724
	nop			;7725
	nop			;7726
	nop			;7727
	nop			;7728
	nop			;7729
	nop			;772a
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
	ld b,h			;7760
	ld h,l			;7761
	ld h,(hl)		;7762
	ld h,c			;7763
	ld (hl),l		;7764
	ld l,h			;7765
	ld (hl),h		;7766
	jr nz,l7769h		;7767
l7769h:
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
	nop			;7780
	nop			;7781
	nop			;7782
	nop			;7783
	nop			;7784
	nop			;7785
	nop			;7786
	nop			;7787
	nop			;7788
	nop			;7789
	nop			;778a
	nop			;778b
	nop			;778c
	nop			;778d
	nop			;778e
	nop			;778f
	nop			;7790
	nop			;7791
	nop			;7792
	nop			;7793
	nop			;7794
	nop			;7795
	nop			;7796
	nop			;7797
	nop			;7798
	nop			;7799
	nop			;779a
	nop			;779b
	nop			;779c
	nop			;779d
	nop			;779e
	nop			;779f
	nop			;77a0
	nop			;77a1
	nop			;77a2
	nop			;77a3
	nop			;77a4
	nop			;77a5
	nop			;77a6
	nop			;77a7
	nop			;77a8
	nop			;77a9
	nop			;77aa
	nop			;77ab
	nop			;77ac
	nop			;77ad
	nop			;77ae
	nop			;77af
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
	nop			;77ba
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
	nop			;77c8
	nop			;77c9
	nop			;77ca
	nop			;77cb
	nop			;77cc
	nop			;77cd
	nop			;77ce
	nop			;77cf
	nop			;77d0
	nop			;77d1
	nop			;77d2
	nop			;77d3
	nop			;77d4
	nop			;77d5
	nop			;77d6
	nop			;77d7
	nop			;77d8
	nop			;77d9
	nop			;77da
	nop			;77db
	nop			;77dc
	nop			;77dd
	nop			;77de
	nop			;77df
	nop			;77e0
	nop			;77e1
	nop			;77e2
	nop			;77e3
	nop			;77e4
	nop			;77e5
	nop			;77e6
	nop			;77e7
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
	nop			;77f2
	nop			;77f3
	nop			;77f4
	nop			;77f5
	nop			;77f6
	nop			;77f7
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
	nop			;7802
	nop			;7803
	nop			;7804
	nop			;7805
	nop			;7806
	nop			;7807
	nop			;7808
	nop			;7809
	nop			;780a
	nop			;780b
	nop			;780c
	nop			;780d
	nop			;780e
	nop			;780f
	nop			;7810
	nop			;7811
	nop			;7812
	nop			;7813
	nop			;7814
	nop			;7815
	nop			;7816
	nop			;7817
	ld b,h			;7818
	ld h,l			;7819
	ld h,(hl)		;781a
	ld h,c			;781b
	ld (hl),l		;781c
	ld l,h			;781d
	ld (hl),h		;781e
	jr nz,l7821h		;781f
l7821h:
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
	nop			;7840
	nop			;7841
	nop			;7842
	nop			;7843
	nop			;7844
	nop			;7845
	nop			;7846
	nop			;7847
	nop			;7848
	nop			;7849
	nop			;784a
	nop			;784b
	nop			;784c
	nop			;784d
	nop			;784e
	nop			;784f
	nop			;7850
	nop			;7851
	nop			;7852
	nop			;7853
	nop			;7854
	nop			;7855
	nop			;7856
	nop			;7857
	nop			;7858
	nop			;7859
	nop			;785a
	nop			;785b
	nop			;785c
	nop			;785d
	nop			;785e
	nop			;785f
	nop			;7860
	nop			;7861
	nop			;7862
	nop			;7863
	nop			;7864
	nop			;7865
	nop			;7866
	nop			;7867
	nop			;7868
	nop			;7869
	nop			;786a
	nop			;786b
	nop			;786c
	nop			;786d
	nop			;786e
	nop			;786f
	nop			;7870
	nop			;7871
	nop			;7872
	nop			;7873
	nop			;7874
	nop			;7875
	nop			;7876
	nop			;7877
	nop			;7878
	nop			;7879
	nop			;787a
	nop			;787b
	nop			;787c
	nop			;787d
	nop			;787e
	nop			;787f
	nop			;7880
	nop			;7881
	nop			;7882
	nop			;7883
	nop			;7884
	nop			;7885
	nop			;7886
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
	nop			;7892
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
	nop			;789e
	nop			;789f
	nop			;78a0
	nop			;78a1
	nop			;78a2
	nop			;78a3
	nop			;78a4
	nop			;78a5
	nop			;78a6
	nop			;78a7
	nop			;78a8
	nop			;78a9
	nop			;78aa
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
	nop			;78b8
	nop			;78b9
	nop			;78ba
	nop			;78bb
	nop			;78bc
	nop			;78bd
	nop			;78be
	nop			;78bf
	nop			;78c0
	nop			;78c1
	nop			;78c2
	nop			;78c3
	nop			;78c4
	nop			;78c5
	nop			;78c6
	nop			;78c7
	nop			;78c8
	nop			;78c9
	nop			;78ca
	nop			;78cb
	nop			;78cc
	nop			;78cd
	nop			;78ce
	nop			;78cf
	ld b,h			;78d0
	ld h,l			;78d1
	ld h,(hl)		;78d2
	ld h,c			;78d3
	ld (hl),l		;78d4
	ld l,h			;78d5
	ld (hl),h		;78d6
	jr nz,l78d9h		;78d7
l78d9h:
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
	nop			;7900
	nop			;7901
	nop			;7902
	nop			;7903
	nop			;7904
	nop			;7905
	nop			;7906
	nop			;7907
	nop			;7908
	nop			;7909
	nop			;790a
	nop			;790b
	nop			;790c
	nop			;790d
	nop			;790e
	nop			;790f
	nop			;7910
	nop			;7911
	nop			;7912
	nop			;7913
	nop			;7914
	nop			;7915
	nop			;7916
	nop			;7917
	nop			;7918
	nop			;7919
	nop			;791a
	nop			;791b
	nop			;791c
	nop			;791d
	nop			;791e
	nop			;791f
	nop			;7920
	nop			;7921
	nop			;7922
	nop			;7923
	nop			;7924
	nop			;7925
	nop			;7926
	nop			;7927
	nop			;7928
	nop			;7929
	nop			;792a
	nop			;792b
	nop			;792c
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
	nop			;7948
	nop			;7949
	nop			;794a
	nop			;794b
	nop			;794c
	nop			;794d
	nop			;794e
	nop			;794f
	nop			;7950
	nop			;7951
	nop			;7952
	nop			;7953
	nop			;7954
	nop			;7955
	nop			;7956
	nop			;7957
	nop			;7958
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
	nop			;796a
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
	nop			;7982
	nop			;7983
	nop			;7984
	nop			;7985
	nop			;7986
	nop			;7987
	ld b,h			;7988
	ld h,l			;7989
	ld h,(hl)		;798a
	ld h,c			;798b
	ld (hl),l		;798c
	ld l,h			;798d
	ld (hl),h		;798e
	jr nz,l7991h		;798f
l7991h:
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
	nop			;79c0
	nop			;79c1
	nop			;79c2
	nop			;79c3
	nop			;79c4
	nop			;79c5
	nop			;79c6
	nop			;79c7
	nop			;79c8
	nop			;79c9
	nop			;79ca
	nop			;79cb
	nop			;79cc
	nop			;79cd
	nop			;79ce
	nop			;79cf
	nop			;79d0
	nop			;79d1
	nop			;79d2
	nop			;79d3
	nop			;79d4
	nop			;79d5
	nop			;79d6
	nop			;79d7
	nop			;79d8
	nop			;79d9
	nop			;79da
	nop			;79db
	nop			;79dc
	nop			;79dd
	nop			;79de
	nop			;79df
	nop			;79e0
	nop			;79e1
	nop			;79e2
	nop			;79e3
	nop			;79e4
	nop			;79e5
	nop			;79e6
	nop			;79e7
	nop			;79e8
	nop			;79e9
	nop			;79ea
	nop			;79eb
	nop			;79ec
	nop			;79ed
	nop			;79ee
	nop			;79ef
	nop			;79f0
	nop			;79f1
	nop			;79f2
	nop			;79f3
	nop			;79f4
	nop			;79f5
	nop			;79f6
	nop			;79f7
	nop			;79f8
	nop			;79f9
	nop			;79fa
	nop			;79fb
	nop			;79fc
	nop			;79fd
	nop			;79fe
	nop			;79ff
	nop			;7a00
	nop			;7a01
	nop			;7a02
	nop			;7a03
	nop			;7a04
	nop			;7a05
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
	nop			;7a10
	nop			;7a11
	nop			;7a12
	nop			;7a13
	nop			;7a14
	nop			;7a15
	nop			;7a16
	nop			;7a17
	nop			;7a18
	nop			;7a19
	nop			;7a1a
	nop			;7a1b
	nop			;7a1c
	nop			;7a1d
	nop			;7a1e
	nop			;7a1f
	nop			;7a20
	nop			;7a21
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
	nop			;7a2c
	nop			;7a2d
	nop			;7a2e
	nop			;7a2f
	nop			;7a30
	nop			;7a31
	nop			;7a32
	nop			;7a33
	nop			;7a34
	nop			;7a35
	nop			;7a36
	nop			;7a37
	nop			;7a38
	nop			;7a39
	nop			;7a3a
	nop			;7a3b
	nop			;7a3c
	nop			;7a3d
	nop			;7a3e
	nop			;7a3f
	ld b,h			;7a40
	ld h,l			;7a41
	ld h,(hl)		;7a42
	ld h,c			;7a43
	ld (hl),l		;7a44
	ld l,h			;7a45
	ld (hl),h		;7a46
	jr nz,l7a49h		;7a47
l7a49h:
	nop			;7a49
	nop			;7a4a
	nop			;7a4b
	nop			;7a4c
	nop			;7a4d
	nop			;7a4e
	nop			;7a4f
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
	nop			;7a80
	nop			;7a81
	nop			;7a82
	nop			;7a83
	nop			;7a84
	nop			;7a85
	nop			;7a86
	nop			;7a87
	nop			;7a88
	nop			;7a89
	nop			;7a8a
	nop			;7a8b
	nop			;7a8c
	nop			;7a8d
	nop			;7a8e
	nop			;7a8f
	nop			;7a90
	nop			;7a91
	nop			;7a92
	nop			;7a93
	nop			;7a94
	nop			;7a95
	nop			;7a96
	nop			;7a97
	nop			;7a98
	nop			;7a99
	nop			;7a9a
	nop			;7a9b
	nop			;7a9c
	nop			;7a9d
	nop			;7a9e
	nop			;7a9f
	nop			;7aa0
	nop			;7aa1
	nop			;7aa2
	nop			;7aa3
	nop			;7aa4
	nop			;7aa5
	nop			;7aa6
	nop			;7aa7
	nop			;7aa8
	nop			;7aa9
	nop			;7aaa
	nop			;7aab
	nop			;7aac
	nop			;7aad
	nop			;7aae
	nop			;7aaf
	nop			;7ab0
	nop			;7ab1
	nop			;7ab2
	nop			;7ab3
	nop			;7ab4
	nop			;7ab5
	nop			;7ab6
	nop			;7ab7
	nop			;7ab8
	nop			;7ab9
	nop			;7aba
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
	nop			;7ac8
	nop			;7ac9
	nop			;7aca
	nop			;7acb
	nop			;7acc
	nop			;7acd
	nop			;7ace
	nop			;7acf
	nop			;7ad0
	nop			;7ad1
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
	nop			;7adc
	nop			;7add
	nop			;7ade
	nop			;7adf
	nop			;7ae0
	nop			;7ae1
	nop			;7ae2
	nop			;7ae3
	nop			;7ae4
	nop			;7ae5
	nop			;7ae6
	nop			;7ae7
	nop			;7ae8
	nop			;7ae9
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
	nop			;7af6
	nop			;7af7
	ld b,h			;7af8
	ld h,l			;7af9
	ld h,(hl)		;7afa
	ld h,c			;7afb
	ld (hl),l		;7afc
	ld l,h			;7afd
	ld (hl),h		;7afe
	jr nz,l7b01h		;7aff
l7b01h:
	nop			;7b01
	nop			;7b02
	nop			;7b03
	nop			;7b04
	nop			;7b05
	nop			;7b06
	nop			;7b07
	nop			;7b08
	nop			;7b09
	nop			;7b0a
	nop			;7b0b
	nop			;7b0c
	nop			;7b0d
	nop			;7b0e
	nop			;7b0f
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
	nop			;7b40
	nop			;7b41
	nop			;7b42
	nop			;7b43
	nop			;7b44
	nop			;7b45
	nop			;7b46
	nop			;7b47
	nop			;7b48
	nop			;7b49
	nop			;7b4a
	nop			;7b4b
	nop			;7b4c
	nop			;7b4d
	nop			;7b4e
	nop			;7b4f
	nop			;7b50
	nop			;7b51
	nop			;7b52
	nop			;7b53
	nop			;7b54
	nop			;7b55
	nop			;7b56
	nop			;7b57
	nop			;7b58
	nop			;7b59
	nop			;7b5a
	nop			;7b5b
	nop			;7b5c
	nop			;7b5d
	nop			;7b5e
	nop			;7b5f
	nop			;7b60
	nop			;7b61
	nop			;7b62
	nop			;7b63
	nop			;7b64
	nop			;7b65
	nop			;7b66
	nop			;7b67
	nop			;7b68
	nop			;7b69
	nop			;7b6a
	nop			;7b6b
	nop			;7b6c
	nop			;7b6d
	nop			;7b6e
	nop			;7b6f
	nop			;7b70
	nop			;7b71
	nop			;7b72
	nop			;7b73
	nop			;7b74
	nop			;7b75
	nop			;7b76
	nop			;7b77
	nop			;7b78
	nop			;7b79
	nop			;7b7a
	nop			;7b7b
	nop			;7b7c
	nop			;7b7d
	nop			;7b7e
	nop			;7b7f
	nop			;7b80
	nop			;7b81
	nop			;7b82
	nop			;7b83
	nop			;7b84
	nop			;7b85
	nop			;7b86
	nop			;7b87
	nop			;7b88
	nop			;7b89
	nop			;7b8a
	nop			;7b8b
	nop			;7b8c
	nop			;7b8d
	nop			;7b8e
	nop			;7b8f
	nop			;7b90
	nop			;7b91
	nop			;7b92
	nop			;7b93
	nop			;7b94
	nop			;7b95
	nop			;7b96
	nop			;7b97
	nop			;7b98
	nop			;7b99
	nop			;7b9a
	nop			;7b9b
	nop			;7b9c
	nop			;7b9d
	nop			;7b9e
	nop			;7b9f
	nop			;7ba0
	nop			;7ba1
	nop			;7ba2
	nop			;7ba3
	nop			;7ba4
	nop			;7ba5
	nop			;7ba6
	nop			;7ba7
	nop			;7ba8
	nop			;7ba9
	nop			;7baa
	nop			;7bab
	nop			;7bac
	nop			;7bad
	nop			;7bae
	nop			;7baf
	ld b,h			;7bb0
	ld h,l			;7bb1
	ld h,(hl)		;7bb2
	ld h,c			;7bb3
	ld (hl),l		;7bb4
	ld l,h			;7bb5
	ld (hl),h		;7bb6
	jr nz,l7bb9h		;7bb7
l7bb9h:
	nop			;7bb9
	nop			;7bba
	nop			;7bbb
	nop			;7bbc
	nop			;7bbd
	nop			;7bbe
	nop			;7bbf
	nop			;7bc0
	nop			;7bc1
	nop			;7bc2
	nop			;7bc3
	nop			;7bc4
	nop			;7bc5
	nop			;7bc6
	nop			;7bc7
	nop			;7bc8
	nop			;7bc9
	nop			;7bca
	nop			;7bcb
	nop			;7bcc
	nop			;7bcd
	nop			;7bce
	nop			;7bcf
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
	nop			;7c00
	nop			;7c01
	nop			;7c02
	nop			;7c03
	nop			;7c04
	nop			;7c05
	nop			;7c06
	nop			;7c07
	nop			;7c08
	nop			;7c09
	nop			;7c0a
	nop			;7c0b
	nop			;7c0c
	nop			;7c0d
	nop			;7c0e
	nop			;7c0f
	nop			;7c10
	nop			;7c11
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
	nop			;7c1d
	nop			;7c1e
	nop			;7c1f
	nop			;7c20
	nop			;7c21
	nop			;7c22
	nop			;7c23
	nop			;7c24
	nop			;7c25
	nop			;7c26
	nop			;7c27
	nop			;7c28
	nop			;7c29
	nop			;7c2a
	nop			;7c2b
	nop			;7c2c
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
	nop			;7c4a
	nop			;7c4b
	nop			;7c4c
	nop			;7c4d
	nop			;7c4e
	nop			;7c4f
	nop			;7c50
	nop			;7c51
	nop			;7c52
	nop			;7c53
	nop			;7c54
	nop			;7c55
	nop			;7c56
	nop			;7c57
	nop			;7c58
	nop			;7c59
	nop			;7c5a
	nop			;7c5b
	nop			;7c5c
	nop			;7c5d
	nop			;7c5e
	nop			;7c5f
	nop			;7c60
	nop			;7c61
	nop			;7c62
	nop			;7c63
	nop			;7c64
	nop			;7c65
	nop			;7c66
	nop			;7c67
	ld b,h			;7c68
	ld h,l			;7c69
	ld h,(hl)		;7c6a
	ld h,c			;7c6b
	ld (hl),l		;7c6c
	ld l,h			;7c6d
	ld (hl),h		;7c6e
	jr nz,l7c71h		;7c6f
l7c71h:
	nop			;7c71
	nop			;7c72
	nop			;7c73
	nop			;7c74
	nop			;7c75
	nop			;7c76
	nop			;7c77
	nop			;7c78
	nop			;7c79
	nop			;7c7a
	nop			;7c7b
	nop			;7c7c
	nop			;7c7d
	nop			;7c7e
	nop			;7c7f
	nop			;7c80
	nop			;7c81
	nop			;7c82
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
	nop			;7cc0
	nop			;7cc1
	nop			;7cc2
	nop			;7cc3
	nop			;7cc4
	nop			;7cc5
	nop			;7cc6
	nop			;7cc7
	nop			;7cc8
	nop			;7cc9
	nop			;7cca
	nop			;7ccb
	nop			;7ccc
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
	nop			;7cd9
	nop			;7cda
	nop			;7cdb
	nop			;7cdc
	nop			;7cdd
	nop			;7cde
	nop			;7cdf
	nop			;7ce0
	nop			;7ce1
	nop			;7ce2
	nop			;7ce3
	nop			;7ce4
	nop			;7ce5
	nop			;7ce6
	nop			;7ce7
	nop			;7ce8
	nop			;7ce9
	nop			;7cea
	nop			;7ceb
	nop			;7cec
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
	nop			;7cf8
	nop			;7cf9
	nop			;7cfa
	nop			;7cfb
	nop			;7cfc
	nop			;7cfd
	nop			;7cfe
	nop			;7cff
	nop			;7d00
	nop			;7d01
	nop			;7d02
	nop			;7d03
	nop			;7d04
	nop			;7d05
	nop			;7d06
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
	nop			;7d12
	nop			;7d13
	nop			;7d14
	nop			;7d15
	nop			;7d16
	nop			;7d17
	nop			;7d18
	nop			;7d19
	nop			;7d1a
	nop			;7d1b
	nop			;7d1c
	nop			;7d1d
	nop			;7d1e
	nop			;7d1f
	ld b,h			;7d20
	ld h,l			;7d21
	ld h,(hl)		;7d22
	ld h,c			;7d23
	ld (hl),l		;7d24
	ld l,h			;7d25
	ld (hl),h		;7d26
	jr nz,l7d29h		;7d27
l7d29h:
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
	nop			;7d33
	nop			;7d34
	nop			;7d35
	nop			;7d36
	nop			;7d37
	nop			;7d38
	nop			;7d39
	nop			;7d3a
	nop			;7d3b
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
	nop			;7dc3
	nop			;7dc4
	nop			;7dc5
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
	ld b,h			;7dd8
	ld h,l			;7dd9
	ld h,(hl)		;7dda
	ld h,c			;7ddb
	ld (hl),l		;7ddc
	ld l,h			;7ddd
	ld (hl),h		;7dde
	jr nz,l7de1h		;7ddf
l7de1h:
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
	nop			;7e09
	nop			;7e0a
	nop			;7e0b
	nop			;7e0c
	nop			;7e0d
	nop			;7e0e
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
	nop			;7e40
	nop			;7e41
	nop			;7e42
	nop			;7e43
	nop			;7e44
	nop			;7e45
	nop			;7e46
	nop			;7e47
	nop			;7e48
	nop			;7e49
	nop			;7e4a
	nop			;7e4b
	nop			;7e4c
	nop			;7e4d
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
	nop			;7e59
	nop			;7e5a
	nop			;7e5b
	nop			;7e5c
	nop			;7e5d
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
	nop			;7e68
	nop			;7e69
	nop			;7e6a
	nop			;7e6b
	nop			;7e6c
	nop			;7e6d
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
	nop			;7e79
	nop			;7e7a
	nop			;7e7b
	nop			;7e7c
	nop			;7e7d
	nop			;7e7e
	nop			;7e7f
	nop			;7e80
	nop			;7e81
	nop			;7e82
	nop			;7e83
	nop			;7e84
	nop			;7e85
	nop			;7e86
	nop			;7e87
	nop			;7e88
	nop			;7e89
	nop			;7e8a
	nop			;7e8b
	nop			;7e8c
	nop			;7e8d
	nop			;7e8e
	nop			;7e8f
	ld b,h			;7e90
	ld h,l			;7e91
	ld h,(hl)		;7e92
	ld h,c			;7e93
	ld (hl),l		;7e94
	ld l,h			;7e95
	ld (hl),h		;7e96
	jr nz,l7e99h		;7e97
l7e99h:
	nop			;7e99
	nop			;7e9a
	nop			;7e9b
	nop			;7e9c
	nop			;7e9d
	nop			;7e9e
	nop			;7e9f
	nop			;7ea0
	nop			;7ea1
	nop			;7ea2
	nop			;7ea3
	nop			;7ea4
	nop			;7ea5
	nop			;7ea6
	nop			;7ea7
	nop			;7ea8
	nop			;7ea9
	nop			;7eaa
	nop			;7eab
	nop			;7eac
	nop			;7ead
	nop			;7eae
	nop			;7eaf
	nop			;7eb0
	nop			;7eb1
	nop			;7eb2
	nop			;7eb3
	nop			;7eb4
	nop			;7eb5
	nop			;7eb6
	nop			;7eb7
	nop			;7eb8
	nop			;7eb9
	nop			;7eba
	nop			;7ebb
	nop			;7ebc
	nop			;7ebd
	nop			;7ebe
	nop			;7ebf
	nop			;7ec0
	nop			;7ec1
	nop			;7ec2
	nop			;7ec3
	nop			;7ec4
	nop			;7ec5
	nop			;7ec6
	nop			;7ec7
	nop			;7ec8
	nop			;7ec9
	nop			;7eca
	nop			;7ecb
	nop			;7ecc
	nop			;7ecd
	nop			;7ece
	nop			;7ecf
	nop			;7ed0
	nop			;7ed1
	nop			;7ed2
	nop			;7ed3
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
	nop			;7f00
	nop			;7f01
	nop			;7f02
	nop			;7f03
	nop			;7f04
	nop			;7f05
	nop			;7f06
	nop			;7f07
	nop			;7f08
	nop			;7f09
	nop			;7f0a
	nop			;7f0b
	nop			;7f0c
	nop			;7f0d
	nop			;7f0e
	nop			;7f0f
	nop			;7f10
	nop			;7f11
	nop			;7f12
	nop			;7f13
	nop			;7f14
	nop			;7f15
	nop			;7f16
	nop			;7f17
	nop			;7f18
	nop			;7f19
	nop			;7f1a
	nop			;7f1b
	nop			;7f1c
	nop			;7f1d
	nop			;7f1e
	nop			;7f1f
	nop			;7f20
	nop			;7f21
	nop			;7f22
	nop			;7f23
	nop			;7f24
	nop			;7f25
	nop			;7f26
	nop			;7f27
	nop			;7f28
	nop			;7f29
	nop			;7f2a
	nop			;7f2b
	nop			;7f2c
	nop			;7f2d
	nop			;7f2e
	nop			;7f2f
	nop			;7f30
	nop			;7f31
	nop			;7f32
	nop			;7f33
	nop			;7f34
	nop			;7f35
	nop			;7f36
	nop			;7f37
	nop			;7f38
	nop			;7f39
	nop			;7f3a
	nop			;7f3b
	nop			;7f3c
	nop			;7f3d
	nop			;7f3e
	nop			;7f3f
l7f40h:
	nop			;7f40
	nop			;7f41
	nop			;7f42
	nop			;7f43
	nop			;7f44
	nop			;7f45
	nop			;7f46
	nop			;7f47
l7f48h:
	ld b,h			;7f48
	ld h,l			;7f49
	ld h,(hl)		;7f4a
	ld h,c			;7f4b
	ld (hl),l		;7f4c
	ld l,h			;7f4d
	ld (hl),h		;7f4e
	jr nz,l7f51h		;7f4f
l7f51h:
	nop			;7f51
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
	nop			;7f5e
	nop			;7f5f
	nop			;7f60
	nop			;7f61
	nop			;7f62
	nop			;7f63
	nop			;7f64
	nop			;7f65
	nop			;7f66
	nop			;7f67
	nop			;7f68
	nop			;7f69
	nop			;7f6a
	nop			;7f6b
	nop			;7f6c
	nop			;7f6d
	nop			;7f6e
	nop			;7f6f
	nop			;7f70
	nop			;7f71
	nop			;7f72
	nop			;7f73
	nop			;7f74
	nop			;7f75
	nop			;7f76
	nop			;7f77
	nop			;7f78
	nop			;7f79
l7f7ah:
	nop			;7f7a
	nop			;7f7b
	nop			;7f7c
	nop			;7f7d
	nop			;7f7e
l7f7fh:
	nop			;7f7f
	nop			;7f80
	nop			;7f81
	nop			;7f82
	nop			;7f83
	nop			;7f84
	nop			;7f85
	nop			;7f86
	nop			;7f87
	nop			;7f88
	nop			;7f89
	nop			;7f8a
	nop			;7f8b
	nop			;7f8c
	nop			;7f8d
	nop			;7f8e
	nop			;7f8f
	nop			;7f90
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
	nop			;7fc0
	nop			;7fc1
	nop			;7fc2
	nop			;7fc3
	nop			;7fc4
	nop			;7fc5
	nop			;7fc6
	nop			;7fc7
	nop			;7fc8
	nop			;7fc9
	nop			;7fca
	nop			;7fcb
	nop			;7fcc
	nop			;7fcd
	nop			;7fce
	nop			;7fcf
	nop			;7fd0
	nop			;7fd1
	nop			;7fd2
	nop			;7fd3
	nop			;7fd4
	nop			;7fd5
	nop			;7fd6
	nop			;7fd7
	nop			;7fd8
	nop			;7fd9
	nop			;7fda
	nop			;7fdb
	nop			;7fdc
	nop			;7fdd
	nop			;7fde
	nop			;7fdf
	nop			;7fe0
	nop			;7fe1
	nop			;7fe2
	nop			;7fe3
	nop			;7fe4
	nop			;7fe5
	nop			;7fe6
	nop			;7fe7
	nop			;7fe8
	nop			;7fe9
	nop			;7fea
	nop			;7feb
	nop			;7fec
	nop			;7fed
	nop			;7fee
	nop			;7fef
	nop			;7ff0
	nop			;7ff1
	nop			;7ff2
	nop			;7ff3
	nop			;7ff4
	nop			;7ff5
	nop			;7ff6
	nop			;7ff7
	nop			;7ff8
	nop			;7ff9
	nop			;7ffa
	nop			;7ffb
	nop			;7ffc
	nop			;7ffd
	nop			;7ffe
	nop			;7fff
