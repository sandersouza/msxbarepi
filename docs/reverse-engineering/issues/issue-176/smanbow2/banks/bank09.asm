; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank09.asm /tmp/smanbow2_bank_09.bin

	org 04000h

	sbc a,c			;4000
	nop			;4001
	ld (hl),b		;4002
	add a,b			;4003
	daa			;4004
	ret p			;4005
	adc a,d			;4006
	add a,a			;4007
	ld (hl),a		;4008
	add a,c			;4009
	ld c,e			;400a
	ld a,(hl)		;400b
	jp m,0eb7dh		;400c
	call m,0fd99h		;400f
	ld b,(hl)		;4012
	jr nz,$-63		;4013
	push af			;4015
	ld a,a			;4016
	pop af			;4017
	and e			;4018
	dec bc			;4019
	rst 38h			;401a
	call po,00155h		;401b
	rst 28h			;401e
	nop			;401f
	ld a,000h		;4020
	ld a,a			;4022
	ld c,e			;4023
	rst 38h			;4024
	ld (hl),d		;4025
	sub (hl)		;4026
	add a,c			;4027
	ld d,h			;4028
	cp b			;4029
	push af			;402a
	cp h			;402b
	adc a,h			;402c
	sbc a,b			;402d
	ld a,a			;402e
	ld (hl),a		;402f
	rst 8			;4030
	jp m,l4457h		;4031
	ld a,(hl)		;4034
	rra			;4035
	ld a,a			;4036
	ld l,l			;4037
	rst 38h			;4038
	defb 0fdh,05fh,000h ;illegal sequence	;4039
	ld b,a			;403c
	ld a,a			;403d
	sbc a,h			;403e
	add a,b			;403f
	ld b,b			;4040
	ld l,b			;4041
	adc a,e			;4042
	add a,(hl)		;4043
	ld d,e			;4044
	adc a,b			;4045
	sub e			;4046
	add a,d			;4047
	ld sp,hl		;4048
	rst 10h			;4049
	ld sp,hl		;404a
	ld a,l			;404b
	cp a			;404c
	ld a,a			;404d
	ld e,c			;404e
	sbc a,c			;404f
	nop			;4050
	ret m			;4051
	ld a,02eh		;4052
	ld h,d			;4054
	ld b,066h		;4055
	ld e,a			;4057
	add a,d			;4058
	adc a,e			;4059
	jp m,0f863h		;405a
	cp (hl)			;405d
	ld a,(de)		;405e
	call m,08de2h		;405f
	sbc a,e			;4062
	call m,sub_777fh	;4063
	cp e			;4066
	nop			;4067
	ret po			;4068
	jp m,09530h		;4069
	dec b			;406c
l406dh:
	push af			;406d
	ld a,a			;406e
	add a,(hl)		;406f
	ld (de),a		;4070
	nop			;4071
	nop			;4072
l4073h:
	call m,sub_4abeh	;4073
	cp d			;4076
	jp pe,033ffh		;4077
	rst 38h			;407a
	ccf			;407b
	rra			;407c
	nop			;407d
	ret p			;407e
	ld a,l			;407f
	ld sp,00689h		;4080
	ld l,b			;4083
	call m,07043h		;4084
	nop			;4087
	ld a,a			;4088
	jp p,000ffh		;4089
l408ch:
	rst 38h			;408c
	ret po			;408d
	nop			;408e
	dec de			;408f
	nop			;4090
	nop			;4091
	ld a,(hl)		;4092
	sbc a,c			;4093
	nop			;4094
	sbc a,c			;4095
	sbc a,h			;4096
	call pe,08704h		;4097
	call z,030c9h		;409a
	call po,0ccb5h		;409d
	inc (hl)		;40a0
	call z,0f31dh		;40a1
	cp a			;40a4
	call pe,0357dh		;40a5
	jp (hl)			;40a8
	ld c,d			;40a9
	ld de,0beebh		;40aa
	ld b,0ceh		;40ad
	cp (hl)			;40af
	add a,b			;40b0
	jr l408ch		;40b1
	adc a,a			;40b3
	and e			;40b4
	and l			;40b5
	ret			;40b6
	inc bc			;40b7
	adc a,b			;40b8
	exx			;40b9
	and (hl)		;40ba
	call po,0dccdh		;40bb
	jp 0cb10h		;40be
	cp h			;40c1
	ld hl,(0e0e7h)		;40c2
	jr $-96			;40c5
	xor 099h		;40c7
	ld d,a			;40c9
	xor 005h		;40ca
	inc b			;40cc
	ld h,b			;40cd
	ld (bc),a		;40ce
	sbc a,(hl)		;40cf
	jp (hl)			;40d0
	xor 0b3h		;40d1
	ld c,011h		;40d3
	dec b			;40d5
	adc a,l			;40d6
	inc d			;40d7
	jr l4073h		;40d8
	sbc a,l			;40da
	call z,0d900h		;40db
	ld h,b			;40de
	call c,09904h		;40df
	ex de,hl		;40e2
	ret			;40e3
	add a,b			;40e4
	ld a,a			;40e5
	cp e			;40e6
	xor 0cch		;40e7
	adc a,0bbh		;40e9
	cp (hl)			;40eb
	rr c			;40ec
	ld c,015h		;40ee
	sub a			;40f0
	call 06920h		;40f1
	ret			;40f4
	ld a,(bc)		;40f5
	sbc a,c			;40f6
	ex af,af'		;40f7
	ld e,b			;40f8
	ld (09c73h),hl		;40f9
	ld b,d			;40fc
	defb 0ddh,07bh,0cdh ;illegal sequence	;40fd
	cp l			;4100
	ret			;4101
	rlca			;4102
	inc sp			;4103
l4104h:
	cp e			;4104
	cp h			;4105
	ld a,(hl)		;4106
	ex af,af'		;4107
	ld (de),a		;4108
	sbc a,c			;4109
	add a,d			;410a
	jp p,09b12h		;410b
	xor h			;410e
	ret			;410f
	xor c			;4110
	cp e			;4111
	ld bc,0039bh		;4112
	ld de,09bb9h		;4115
	add a,l			;4118
	ld d,d			;4119
	ld (bc),a		;411a
	add hl,bc		;411b
	cp c			;411c
	ld a,(bc)		;411d
	call z,01b11h		;411e
	cp b			;4121
	ex af,af'		;4122
	ld c,018h		;4123
	sbc a,c			;4125
	sbc a,a			;4126
	rst 38h			;4127
	nop			;4128
	ld sp,hl		;4129
	ld h,h			;412a
	defb 0ddh,000h,074h ;illegal sequence	;412b
	cp e			;412e
	ld b,l			;412f
	call pe,001ffh		;4130
	add a,b			;4133
	cp e			;4134
	ex de,hl		;4135
	jp (hl)			;4136
	sbc a,0bbh		;4137
	add a,b			;4139
	dec bc			;413a
	jp pe,0aaadh		;413b
l413eh:
	xor d			;413e
	cp e			;413f
	cp d			;4140
	djnz $-84		;4141
	sbc a,l			;4143
	in a,(01ah)		;4144
	cp e			;4146
	exx			;4147
	in a,(010h)		;4148
	cp l			;414a
	defb 0ddh,0dbh,068h ;illegal sequence	;414b
	in a,(0bbh)		;414e
	call c,0db08h		;4150
	set 3,l			;4153
	call 0cc1ch		;4155
	defb 0ddh,0a2h,003h ;illegal sequence	;4158
	adc a,d			;415b
	ld d,c			;415c
	in a,(017h)		;415d
	ld a,(hl)		;415f
	call 08cdbh		;4160
	jr l413eh		;4163
	ld sp,hl		;4165
	ld a,a			;4166
	dec e			;4167
	cp h			;4168
	ld a,a			;4169
	ld l,l			;416a
	ld (hl),c		;416b
	ld (bc),a		;416c
	add a,l			;416d
	add hl,de		;416e
	inc (hl)		;416f
	ld e,e			;4170
	halt			;4171
	ld (bc),a		;4172
	ld c,0d5h		;4173
	ld (bc),a		;4175
	ld a,a			;4176
	ld e,b			;4177
	ld b,e			;4178
	nop			;4179
	cp l			;417a
	pop de			;417b
	inc b			;417c
	call pe,0ee9ch		;417d
	inc b			;4180
	ld a,(bc)		;4181
	cp (hl)			;4182
	jp (hl)			;4183
	ex de,hl		;4184
	inc bc			;4185
	rlca			;4186
	ex (sp),hl		;4187
l4188h:
	dec d			;4188
	nop			;4189
	sbc a,a			;418a
	jr nz,l41abh		;418b
	ld a,(bc)		;418d
	ld e,e			;418e
	in a,(005h)		;418f
	adc a,h			;4191
	inc d			;4192
	add a,b			;4193
	ld d,h			;4194
	ld bc,0dc7ah		;4195
	adc a,b			;4198
	defb 0fdh,09ch ;sbc a,iyh	;4199
	cp c			;419b
	ld c,h			;419c
	sbc a,h			;419d
	add a,c			;419e
	exx			;419f
	ld a,h			;41a0
	sbc a,h			;41a1
	ld a,a			;41a2
	ld d,h			;41a3
	dec (hl)		;41a4
	sub (hl)		;41a5
	xor a			;41a6
	ld a,a			;41a7
	ld sp,09be9h		;41a8
l41abh:
	inc bc			;41ab
	ld b,0b5h		;41ac
	dec a			;41ae
	dec b			;41af
	rlca			;41b0
	sub c			;41b1
	call m,002b8h		;41b2
	rst 18h			;41b5
	adc a,l			;41b6
	rst 38h			;41b7
	ld b,(hl)		;41b8
	defb 0fdh,0ffh,0c9h ;illegal sequence	;41b9
	jp m,034fah		;41bc
	rst 38h			;41bf
	jp po,09bech		;41c0
	ld l,d			;41c3
	ld (bc),a		;41c4
	add a,a			;41c5
	ld (hl),c		;41c6
	xor 03eh		;41c7
	ld a,(bc)		;41c9
	xor d			;41ca
	xor e			;41cb
	cp d			;41cc
	ld (bc),a		;41cd
	jr $-106		;41ce
	add a,b			;41d0
	adc a,l			;41d1
	ex (sp),iy		;41d2
	ld (bc),a		;41d4
	ld a,c			;41d5
	dec h			;41d6
	adc a,a			;41d7
	ld e,d			;41d8
	cp e			;41d9
	inc bc			;41da
	call c,0cd46h		;41db
	sbc a,b			;41de
	inc b			;41df
	call 0bccdh		;41e0
	sbc a,e			;41e3
	add a,l			;41e4
	out (09bh),a		;41e5
	ld d,a			;41e7
	or h			;41e8
	call nz,sub_52bdh	;41e9
	cp h			;41ec
	sbc a,(hl)		;41ed
	add a,0e4h		;41ee
	rst 0			;41f0
	ld sp,hl		;41f1
	ld d,d			;41f2
	or 0c5h			;41f3
	ex af,af'		;41f5
	ld sp,hl		;41f6
	dec de			;41f7
	ld a,e			;41f8
	sbc a,d			;41f9
	inc d			;41fa
	sbc a,c			;41fb
	sub a			;41fc
	rst 38h			;41fd
	ld (0ecceh),hl		;41fe
	ei			;4201
	sub b			;4202
	jp (hl)			;4203
	call z,0d59ah		;4204
	ld a,a			;4207
	and d			;4208
	add a,e			;4209
	ld a,(hl)		;420a
	adc a,l			;420b
	ld (bc),a		;420c
	xor c			;420d
	xor d			;420e
	nop			;420f
	ld l,c			;4210
	sbc a,l			;4211
	dec de			;4212
	exx			;4213
	defb 0ddh,000h,0bah ;illegal sequence	;4214
	ld a,(bc)		;4217
	call 00190h		;4218
	call c,0dc03h		;421b
	call c,0a9ddh		;421e
	ld a,(hl)		;4221
	ld (hl),d		;4222
	sub d			;4223
	call nz,0839ch		;4224
	sub h			;4227
	add a,h			;4228
	or h			;4229
	dec c			;422a
	cp 0bch			;422b
	ld (0cd18h),a		;422d
	jp z,006dfh		;4230
	rst 38h			;4233
	sbc a,h			;4234
	ld d,(hl)		;4235
	sbc a,(hl)		;4236
	xor (hl)		;4237
	push bc			;4238
	add a,c			;4239
	pop af			;423a
	ld (bc),a		;423b
	sbc a,c			;423c
	ld de,l4effh		;423d
	cp h			;4240
	ld a,(bc)		;4241
	exx			;4242
	ld l,a			;4243
	halt			;4244
	add a,c			;4245
	inc d			;4246
	ld b,0ddh		;4247
	ret z			;4249
	ld (hl),b		;424a
	adc a,l			;424b
	sub l			;424c
	ret			;424d
	adc a,e			;424e
	xor h			;424f
	ret			;4250
	ld a,a			;4251
	ld a,h			;4252
	call c,05659h		;4253
	add a,0f6h		;4256
	ld e,e			;4258
	jp c,082cfh		;4259
	inc h			;425c
	or e			;425d
	ld a,(hl)		;425e
	inc c			;425f
	call pe,sub_70eeh	;4260
	xor a			;4263
	call 08bfdh		;4264
	adc a,a			;4267
	push de			;4268
	cp h			;4269
	add a,b			;426a
	cp h			;426b
	sub c			;426c
	cp 0b8h			;426d
	sbc a,l			;426f
	call p,0c1e3h		;4270
	adc a,e			;4273
	adc a,026h		;4274
	sbc a,c			;4276
	ret m			;4277
	ld sp,09e2fh		;4278
	rst 10h			;427b
	ld d,h			;427c
	or e			;427d
	ld a,(hl)		;427e
	ld l,h			;427f
	cp b			;4280
	ld a,b			;4281
l4282h:
	ld b,a			;4282
	cp 0beh			;4283
	ld a,a			;4285
	ld e,d			;4286
	sbc a,a			;4287
	ld c,(hl)		;4288
	sbc a,a			;4289
	ld (hl),c		;428a
	dec bc			;428b
	nop			;428c
	call c,0b7c8h		;428d
	ld (hl),b		;4290
	dec hl			;4291
	exx			;4292
	ld (bc),a		;4293
	call po,0ffc4h		;4294
	ld a,(l62cfh)		;4297
	call pe,027f8h		;429a
	call pe,06bc4h		;429d
	dec bc			;42a0
	ld a,(hl)		;42a1
	add a,c			;42a2
l42a3h:
	ld (0add2h),a		;42a3
	cp l			;42a6
	ld a,l			;42a7
	ld c,a			;42a8
	ld a,a			;42a9
	ld h,(hl)		;42aa
	cp h			;42ab
	ld a,a			;42ac
	dec hl			;42ad
	cp l			;42ae
	ld l,(hl)		;42af
	and h			;42b0
	call nc,0b0ddh		;42b1
	call po,0f4c8h		;42b4
	rst 38h			;42b7
	ld (bc),a		;42b8
	cp a			;42b9
	rst 38h			;42ba
	ei			;42bb
	cp l			;42bc
	sbc a,a			;42bd
	cp e			;42be
	di			;42bf
	add a,d			;42c0
	cp e			;42c1
	call m,00405h		;42c2
	cp a			;42c5
	rst 8			;42c6
	cp h			;42c7
	cp a			;42c8
	call m,0bc09h		;42c9
	xor e			;42cc
	rst 30h			;42cd
	ret			;42ce
	inc de			;42cf
	rst 30h			;42d0
	dec d			;42d1
	sbc a,h			;42d2
	rst 38h			;42d3
	ld a,c			;42d4
	inc b			;42d5
	adc a,h			;42d6
	sbc a,c			;42d7
	jp (hl)			;42d8
	ld c,c			;42d9
	rst 38h			;42da
	push af			;42db
	adc a,a			;42dc
	add a,b			;42dd
	jp nc,09caah		;42de
	ld a,a			;42e1
	cp l			;42e2
	and l			;42e3
	jr nc,l42a3h		;42e4
	cp l			;42e6
	jp nz,0a7b4h		;42e7
	xor h			;42ea
	cp e			;42eb
	or h			;42ec
	cp l			;42ed
	ld e,a			;42ee
	exx			;42ef
	out (0b1h),a		;42f0
	cp a			;42f2
	cp a			;42f3
	inc b			;42f4
	sub a			;42f5
	ret p			;42f6
	ld h,d			;42f7
	or 0a0h			;42f8
	cp h			;42fa
	dec b			;42fb
	call z,0e9bbh		;42fc
	res 6,e			;42ff
	add a,c			;4301
	adc a,c			;4302
	dec c			;4303
	adc a,d			;4304
	xor e			;4305
	call p,09ac5h		;4306
	add a,h			;4309
	ld l,d			;430a
	xor c			;430b
	or l			;430c
	rst 0			;430d
	or l			;430e
	or b			;430f
	or (hl)			;4310
	ret			;4311
	dec l			;4312
	jp nc,0c22fh		;4313
	ld (hl),d		;4316
	add hl,bc		;4317
	call z,006f7h		;4318
	inc (hl)		;431b
	xor (hl)		;431c
	push de			;431d
	call c,0d6d4h		;431e
	ld l,d			;4321
l4322h:
	sbc a,c			;4322
	ret po			;4323
	jp (hl)			;4324
	push hl			;4325
	dec c			;4326
	sub e			;4327
	ei			;4328
	ld (l65cdh),a		;4329
	or d			;432c
	call z,056abh		;432d
	cp l			;4330
	call 09238h		;4331
	cp l			;4334
	rst 38h			;4335
	add a,b			;4336
	or a			;4337
l4338h:
	call p,0804ah		;4338
	push hl			;433b
	ld (bc),a		;433c
	dec bc			;433d
	add a,b			;433e
	inc de			;433f
	cp 0f1h			;4340
	rla			;4342
	inc bc			;4343
	inc c			;4344
	call z,083ebh		;4345
	exx			;4348
	adc a,b			;4349
	and d			;434a
	add a,e			;434b
	sbc a,b			;434c
	inc b			;434d
	xor 0f4h		;434e
	call pe,0cbbdh		;4350
	ld a,a			;4353
	cp h			;4354
	ret c			;4355
	add a,(hl)		;4356
	defb 0ddh,0d2h,067h ;illegal sequence	;4357
	ld a,a			;435a
	ld sp,0c3c3h		;435b
	inc bc			;435e
	ld a,b			;435f
	ld de,004b9h		;4360
	inc hl			;4363
	call nc,0caeah		;4364
	sbc a,b			;4367
	rst 18h			;4368
	ld l,l			;4369
	or a			;436a
	ld b,d			;436b
	sbc a,l			;436c
	call 0f6b2h		;436d
	ccf			;4370
	adc a,l			;4371
	ei			;4372
	sub h			;4373
	adc a,h			;4374
	jp 0eec8h		;4375
	jr l4338h		;4378
	call p,00371h		;437a
	call m,08b01h		;437d
	call z,0ccebh		;4380
	ret m			;4383
	ld b,(hl)		;4384
	call z,0acffh		;4385
	add a,h			;4388
	ex (sp),hl		;4389
	cp e			;438a
	add a,(hl)		;438b
	or a			;438c
	add hl,hl		;438d
	dec sp			;438e
	nop			;438f
	ld b,(hl)		;4390
	jp c,0a3ffh		;4391
	xor l			;4394
	rst 38h			;4395
	rst 8			;4396
	ld a,a			;4397
	cp c			;4398
	adc a,c			;4399
	ld e,h			;439a
	rst 0			;439b
	ld e,c			;439c
	sub b			;439d
	ld e,h			;439e
	call nc,006e7h		;439f
	scf			;43a2
	inc bc			;43a3
	ld hl,(0a379h)		;43a4
	ld l,d			;43a7
	inc bc			;43a8
	sbc a,b			;43a9
	jp z,0be7dh		;43aa
	ld l,c			;43ad
	ld b,l			;43ae
	call c,08cbdh		;43af
	xor a			;43b2
	defb 0ddh,0d3h,0dah ;illegal sequence	;43b3
	dec e			;43b6
	push bc			;43b7
	rst 28h			;43b8
	sub l			;43b9
	inc bc			;43ba
	adc a,0fah		;43bb
	sub d			;43bd
	or l			;43be
	ld h,(hl)		;43bf
	add a,b			;43c0
	sub (hl)		;43c1
sub_43c2h:
	xor 09ch		;43c2
	add a,e			;43c4
	xor c			;43c5
	cp c			;43c6
	rst 38h			;43c7
	ld a,b			;43c8
	or a			;43c9
	ld e,a			;43ca
	sub 058h		;43cb
	ld (hl),a		;43cd
	cp c			;43ce
	ld a,a			;43cf
	exx			;43d0
	res 0,d			;43d1
	dec hl			;43d3
	sub h			;43d4
	inc l			;43d5
	ld (hl),c		;43d6
	ld de,0bc01h		;43d7
	ld a,(bc)		;43da
	or e			;43db
	sbc a,c			;43dc
	ld a,a			;43dd
	add a,e			;43de
	add hl,de		;43df
	adc a,h			;43e0
	add a,e			;43e1
	and d			;43e2
	call m,09ec8h		;43e3
	cp e			;43e6
	push af			;43e7
	ld e,l			;43e8
	daa			;43e9
	ld e,(hl)		;43ea
	jp (hl)			;43eb
	adc a,d			;43ec
	jp po,0c6ffh		;43ed
	adc a,l			;43f0
	ld d,e			;43f1
	rst 38h			;43f2
	jp 034d9h		;43f3
	in a,(0f8h)		;43f6
	ld a,e			;43f8
	jp nc,0ed13h		;43f9
	or e			;43fc
	call p,09each		;43fd
	add hl,bc		;4400
	jp po,0fb7fh		;4401
	scf			;4404
	ret po			;4405
	ld e,b			;4406
	sbc a,0dfh		;4407
	ld a,a			;4409
	nop			;440a
	call 00084h		;440b
l440eh:
	nop			;440e
	inc c			;440f
	xor 04bh		;4410
	ret nz			;4412
	dec b			;4413
	rlca			;4414
	rst 30h			;4415
	rst 38h			;4416
	ld a,a			;4417
	ld h,c			;4418
	dec c			;4419
	call p,0d03ah		;441a
	cp a			;441d
	ld b,b			;441e
	rlca			;441f
	ld a,e			;4420
	ld a,a			;4421
	or 02fh			;4422
	and a			;4424
	sub a			;4425
	nop			;4426
	rlca			;4427
	rst 28h			;4428
	cp 07fh			;4429
	cp d			;442b
	dec bc			;442c
	push af			;442d
	exx			;442e
	ld a,(hl)		;442f
	or b			;4430
	rlca			;4431
	rst 38h			;4432
	ld a,a			;4433
	ex de,hl		;4434
	cp e			;4435
	inc c			;4436
	xor a			;4437
	adc a,c			;4438
	pop bc			;4439
	sbc a,h			;443a
	inc c			;443b
	jp nc,007c6h		;443c
	ccf			;443f
	call z,03b07h		;4440
	scf			;4443
	xor a			;4444
	ld a,a			;4445
	rst 10h			;4446
	ld e,d			;4447
	add hl,bc		;4448
	ret pe			;4449
	ld h,e			;444a
	ld b,090h		;444b
	rlca			;444d
	ld l,l			;444e
	push bc			;444f
	jr c,$+9		;4450
	ld (hl),c		;4452
	sbc a,(hl)		;4453
	rlca			;4454
	ex de,hl		;4455
	ld l,c			;4456
l4457h:
	rla			;4457
	add a,005h		;4458
	ld a,(00fbbh)		;445a
	ex (sp),hl		;445d
	rla			;445e
	defb 0cbh,037h ;sli a	;445f
	rlca			;4461
	ld (hl),c		;4462
	and a			;4463
	ld a,c			;4464
	rla			;4465
	ld h,a			;4466
	cp c			;4467
	daa			;4468
	ld a,a			;4469
	ex de,hl		;446a
	sbc a,d			;446b
	jp (hl)			;446c
	cp c			;446d
	ld a,a			;446e
	sbc a,(hl)		;446f
	or a			;4470
	ld (hl),d		;4471
	call nc,0d837h		;4472
	jr c,l447eh		;4475
	ld (hl),d		;4477
	sbc a,e			;4478
	rlca			;4479
	jp (hl)			;447a
	and 007h		;447b
	pop af			;447d
l447eh:
	ex de,hl		;447e
sub_447fh:
	ex (sp),hl		;447f
	cp c			;4480
	rla			;4481
	pop de			;4482
	daa			;4483
	sbc a,a			;4484
	ld sp,hl		;4485
	defb 0fdh,0edh,022h ;illegal sequence	;4486
	rst 18h			;4489
	dec b			;448a
	ld a,(de)		;448b
	sbc a,d			;448c
	xor c			;448d
	xor l			;448e
	xor e			;448f
	sub (hl)		;4490
	dec b			;4491
	daa			;4492
	push bc			;4493
	sbc a,(hl)		;4494
	rla			;4495
	ld a,(hl)		;4496
	ld a,a			;4497
	jp l7fe9h		;4498
	xor h			;449b
	sbc a,031h		;449c
	defb 0cbh,036h ;sli (hl)	;449e
	rlca			;44a0
	add a,a			;44a1
	ld a,(0e975h)		;44a2
	ld a,a			;44a5
	rla			;44a6
	pop hl			;44a7
	rst 20h			;44a8
	ld d,067h		;44a9
	call pe,0fec6h		;44ab
	sub c			;44ae
	add a,a			;44af
	rst 28h			;44b0
	ret nc			;44b1
	or (hl)			;44b2
	and d			;44b3
	adc a,d			;44b4
	xor e			;44b5
	push af			;44b6
l44b7h:
	ld a,(de)		;44b7
sub_44b8h:
	cp d			;44b8
	xor h			;44b9
	ld h,(hl)		;44ba
	rra			;44bb
	add a,h			;44bc
	ld h,a			;44bd
	ld a,a			;44be
	ret p			;44bf
	ld l,0e9h		;44c0
	ld h,a			;44c2
	or a			;44c3
	rrca			;44c4
	ld a,a			;44c5
	ld e,l			;44c6
	jp (hl)			;44c7
	ld a,a			;44c8
	ld h,e			;44c9
	rlca			;44ca
	cp e			;44cb
	rrca			;44cc
	sbc a,l			;44cd
	adc a,c			;44ce
	ret c			;44cf
	rst 38h			;44d0
	ret m			;44d1
	ld (hl),e		;44d2
	scf			;44d3
	rra			;44d4
	adc a,c			;44d5
	rst 38h			;44d6
	xor (iy-043h)		;44d7
	ld c,c			;44da
	rst 0			;44db
	call nc,0e7ebh		;44dc
	call p,0d59eh		;44df
	call 0d79dh		;44e2
	jp (hl)			;44e5
	rla			;44e6
	sbc a,e			;44e7
	rrca			;44e8
	rst 10h			;44e9
	daa			;44ea
	ld (hl),e		;44eb
	rst 38h			;44ec
	rst 28h			;44ed
	rst 38h			;44ee
	dec de			;44ef
	rst 38h			;44f0
	ccf			;44f1
	or e			;44f2
	rst 38h			;44f3
	ld e,a			;44f4
	rst 18h			;44f5
	rst 18h			;44f6
	rst 38h			;44f7
	rst 30h			;44f8
	ld sp,hl		;44f9
	rst 38h			;44fa
	defb 0fdh,0feh,0ffh ;illegal sequence	;44fb
	rst 38h			;44fe
	add a,b			;44ff
l4500h:
	ld (hl),a		;4500
	rst 38h			;4501
	ret p			;4502
	jp nc,l4c87h		;4503
	adc a,d			;4506
	cp e			;4507
	ex (sp),hl		;4508
	inc bc			;4509
	ld (bc),a		;450a
	dec h			;450b
	sub h			;450c
	sbc a,h			;450d
	ex af,af'		;450e
	sbc a,c			;450f
	djnz l4512h		;4510
l4512h:
	dec c			;4512
	ld de,003b4h		;4513
	ld a,(bc)		;4516
	dec bc			;4517
l4518h:
	ex (sp),hl		;4518
	dec c			;4519
	rla			;451a
	ld a,h			;451b
	ld hl,(01278h)		;451c
	adc a,a			;451f
	adc a,e			;4520
	rlca			;4521
	add hl,bc		;4522
	dec b			;4523
	dec de			;4524
	nop			;4525
	add hl,bc		;4526
	jp p,09f3bh		;4527
	add hl,bc		;452a
	ld e,d			;452b
	rrca			;452c
	add a,e			;452d
	ld a,d			;452e
	add hl,bc		;452f
	rst 10h			;4530
	ld e,e			;4531
	ld c,l			;4532
	ld l,h			;4533
	ld d,l			;4534
	ld e,c			;4535
	dec bc			;4536
	ld l,e			;4537
	add a,015h		;4538
	rst 30h			;453a
	ld a,a			;453b
	dec e			;453c
	or (hl)			;453d
	rlca			;453e
	ld (hl),b		;453f
	rst 0			;4540
	adc a,h			;4541
	ld e,l			;4542
	ld b,0aah		;4543
	dec bc			;4545
	dec h			;4546
	cp h			;4547
	ld l,a			;4548
	ld l,d			;4549
	adc a,(hl)		;454a
	ld h,d			;454b
	ld a,(hl)		;454c
	add hl,bc		;454d
	inc sp			;454e
	rrca			;454f
	sbc a,c			;4550
	call m,0090eh		;4551
	sbc a,c			;4554
	ld b,h			;4555
	add a,e			;4556
	inc e			;4557
	ld b,h			;4558
	rst 38h			;4559
	add hl,bc		;455a
	ld h,0f4h		;455b
	ld a,(hl)		;455d
	ld sp,hl		;455e
	inc de			;455f
	pop af			;4560
	ld h,l			;4561
	ld e,h			;4562
	sbc a,l			;4563
	ld (hl),e		;4564
	ld h,h			;4565
	ld l,c			;4566
	sub b			;4567
sub_4568h:
	ld h,l			;4568
	sbc a,e			;4569
	dec (hl)		;456a
	add hl,de		;456b
	rst 0			;456c
	ld a,a			;456d
	inc e			;456e
	ld a,(hl)		;456f
	halt			;4570
	ld hl,(0e10bh)		;4571
	ld b,0b0h		;4574
	sub l			;4576
	add hl,de		;4577
	ld a,a			;4578
	rst 18h			;4579
	rlca			;457a
	ld b,a			;457b
	sub b			;457c
	nop			;457d
	add hl,bc		;457e
sub_457fh:
	ret z			;457f
	call p,0f95dh		;4580
	nop			;4583
	add hl,bc		;4584
	ld d,b			;4585
	ld a,(hl)		;4586
	nop			;4587
	call po,0f04fh		;4588
	and h			;458b
	add hl,bc		;458c
	inc b			;458d
	ld b,h			;458e
	adc a,c			;458f
	ld h,(hl)		;4590
	inc de			;4591
	ld l,h			;4592
	ld l,b			;4593
	rst 38h			;4594
	ld a,h			;4595
	ld de,0cae7h		;4596
	or b			;4599
	rst 38h			;459a
	inc a			;459b
	ld l,06ch		;459c
	inc c			;459e
	ld (hl),l		;459f
	rla			;45a0
	nop			;45a1
	inc de			;45a2
	add a,012h		;45a3
	ld h,(hl)		;45a5
	rla			;45a6
	adc a,e			;45a7
	ld a,b			;45a8
	ld (hl),a		;45a9
	ld l,e			;45aa
	add hl,bc		;45ab
	ex de,hl		;45ac
	ret p			;45ad
	adc a,h			;45ae
	ld c,d			;45af
	defb 0fdh,026h,044h ;ld iyh,044h	;45b0
	nop			;45b3
	ld c,a			;45b4
	inc de			;45b5
	adc a,h			;45b6
	rrca			;45b7
	ld c,(hl)		;45b8
	ex de,hl		;45b9
	ld l,l			;45ba
	adc a,c			;45bb
	add a,b			;45bc
	ret p			;45bd
	add hl,bc		;45be
	ld d,c			;45bf
	inc b			;45c0
	adc a,c			;45c1
	call nc,077e5h		;45c2
	rst 38h			;45c5
	ld a,011h		;45c6
	xor 0d2h		;45c8
	nop			;45ca
	adc a,d			;45cb
	ld e,c			;45cc
	ex (sp),hl		;45cd
	inc c			;45ce
	dec c			;45cf
	ld d,e			;45d0
	or b			;45d1
	rst 38h			;45d2
	adc a,07fh		;45d3
	ld c,(hl)		;45d5
	adc a,l			;45d6
	rst 28h			;45d7
l45d8h:
	djnz l4659h		;45d8
	jp 03d88h		;45da
	call p,09f09h		;45dd
	ld (de),a		;45e0
	call p,sub_4f4fh	;45e1
	ex (sp),hl		;45e4
	sub a			;45e5
	ld a,a			;45e6
	ld l,d			;45e7
	ld de,l648dh		;45e8
	ld a,a			;45eb
	rst 10h			;45ec
	or b			;45ed
	xor 008h		;45ee
	ld c,a			;45f0
	nop			;45f1
	inc b			;45f2
	xor 089h		;45f3
	push hl			;45f5
	ld sp,hl		;45f6
	ld e,a			;45f7
	rst 8			;45f8
	ld h,c			;45f9
	ld a,(bc)		;45fa
	dec bc			;45fb
	dec bc			;45fc
	adc a,c			;45fd
	sbc a,h			;45fe
	dec h			;45ff
	sub (hl)		;4600
	adc a,c			;4601
	sub c			;4602
	ld h,l			;4603
	or b			;4604
	ld (hl),l		;4605
	or c			;4606
	and d			;4607
	sub 013h		;4608
	add a,08ah		;460a
	call pe,0ff00h		;460c
	cp c			;460f
	ld a,d			;4610
	ld a,a			;4611
	pop af			;4612
	ex (sp),hl		;4613
	add hl,bc		;4614
	ret nc			;4615
	rst 38h			;4616
	ld b,h			;4617
l4618h:
	ex de,hl		;4618
	sub h			;4619
	jp po,009a4h		;461a
	push af			;461d
	sbc a,h			;461e
	scf			;461f
	cp (hl)			;4620
	jp m,0f433h		;4621
	ld (hl),l		;4624
	ex af,af'		;4625
	jr nc,$+4		;4626
	call po,sub_4c00h	;4628
	ld c,07bh		;462b
	cp e			;462d
	ex af,af'		;462e
	adc a,d			;462f
	sbc a,a			;4630
	call pe,0df96h		;4631
	ld d,e			;4634
	ld a,b			;4635
	jp nz,0b68dh		;4636
	call p,0965bh		;4639
	adc a,(hl)		;463c
	daa			;463d
	adc a,l			;463e
	sbc a,h			;463f
	or b			;4640
	ld h,d			;4641
	xor l			;4642
	sub (hl)		;4643
	sub h			;4644
	ld e,c			;4645
	xor (hl)		;4646
	cp b			;4647
	add hl,hl		;4648
l4649h:
	rst 38h			;4649
	rst 0			;464a
	ld a,a			;464b
	jp l76fdh		;464c
	ld a,(hl)		;464f
	jr c,$+81		;4650
	rst 38h			;4652
	add hl,bc		;4653
	xor e			;4654
	ld (hl),b		;4655
	ld h,e			;4656
	ld h,c			;4657
	add hl,bc		;4658
l4659h:
	ld (080eah),hl		;4659
	ld bc,044e4h		;465c
	ld c,(hl)		;465f
	rst 28h			;4660
	sub b			;4661
	inc b			;4662
	ld (hl),c		;4663
	ex de,hl		;4664
	ld a,a			;4665
	ld a,e			;4666
	ld de,00bf0h		;4667
	rlca			;466a
	ex de,hl		;466b
	cp (hl)			;466c
	add a,a			;466d
	inc d			;466e
	sub a			;466f
	ret			;4670
	ret po			;4671
	sub 0e3h		;4672
	ld a,a			;4674
	jp 08970h		;4675
	add a,c			;4678
	exx			;4679
	and 0e2h		;467a
	ret pe			;467c
	ld a,c			;467d
	xor (hl)		;467e
	dec iy			;467f
	rst 38h			;4681
	xor h			;4682
	inc c			;4683
	sbc a,028h		;4684
	nop			;4686
	inc sp			;4687
	cp h			;4688
	jp po,0cde5h		;4689
	sbc a,b			;468c
sub_468dh:
	defb 0edh ;next byte illegal after ed	;468d
	call po,0e2f4h		;468e
	add hl,bc		;4691
	ld a,a			;4692
	add a,06eh		;4693
	rst 28h			;4695
	add hl,bc		;4696
	inc hl			;4697
	ld c,e			;4698
	call pe,0ee27h		;4699
	rlca			;469c
	ld c,a			;469d
	sub b			;469e
	call p,sub_457fh	;469f
	cp (hl)			;46a2
	ld b,b			;46a3
	ld (de),a		;46a4
	inc de			;46a5
	ld d,d			;46a6
	ld a,a			;46a7
	sbc a,a			;46a8
	ld de,0e0eeh		;46a9
	defb 0fdh,0ceh,07fh ;illegal sequence	;46ac
	sbc a,089h		;46af
	call pe,0f701h		;46b1
	ld l,l			;46b4
	di			;46b5
	di			;46b6
	inc de			;46b7
	push bc			;46b8
	sbc a,b			;46b9
	or e			;46ba
	jp m,l4b1ch		;46bb
	sbc a,c			;46be
	ld e,l			;46bf
	ld a,a			;46c0
	ld h,(hl)		;46c1
	nop			;46c2
	sbc a,b			;46c3
	ld a,h			;46c4
	ld l,d			;46c5
	rst 38h			;46c6
	ld l,h			;46c7
	push af			;46c8
	ld (hl),e		;46c9
	ld a,(hl)		;46ca
	ld e,b			;46cb
	rst 28h			;46cc
	ld l,(hl)		;46cd
	call po,010c2h		;46ce
	ld c,(hl)		;46d1
	cp (hl)			;46d2
	ld a,h			;46d3
	ld c,d			;46d4
	ld c,(hl)		;46d5
	adc a,d			;46d6
	and e			;46d7
	cp 0fbh			;46d8
	ld d,e			;46da
	ex de,hl		;46db
	adc a,h			;46dc
	cp c			;46dd
	ld c,07fh		;46de
	adc a,h			;46e0
	cp 01fh			;46e1
	or (hl)			;46e3
	sub 02bh		;46e4
	defb 0edh ;next byte illegal after ed	;46e6
	adc a,h			;46e7
	adc a,c			;46e8
	in a,(0f6h)		;46e9
	ret p			;46eb
	cp (hl)			;46ec
	adc a,d			;46ed
	xor c			;46ee
	sbc a,l			;46ef
	sbc a,(hl)		;46f0
	dec c			;46f1
	inc hl			;46f2
	jp m,0fc8ah		;46f3
	ld l,e			;46f6
	ld a,a			;46f7
	jp pe,0f2aah		;46f8
	ld h,b			;46fb
	ld l,h			;46fc
	rst 28h			;46fd
	ld a,a			;46fe
	rlca			;46ff
	cp a			;4700
	ex (sp),hl		;4701
	ld (hl),h		;4702
	ld a,a			;4703
	ld l,b			;4704
	defb 0fdh,057h,0feh ;illegal sequence	;4705
	ld a,(bc)		;4708
	add hl,bc		;4709
	ld a,a			;470a
	sbc a,l			;470b
	sub d			;470c
	ld h,c			;470d
	call po,09f4eh		;470e
	inc e			;4711
	ld a,a			;4712
	nop			;4713
	ld a,(de)		;4714
	cp 049h			;4715
	ld b,h			;4717
	push hl			;4718
	ld a,a			;4719
	ret nz			;471a
	call p,0bfbbh		;471b
	ld d,h			;471e
	call p,08a63h		;471f
	adc a,h			;4722
	call p,08a7fh		;4723
	add a,e			;4726
	ld (hl),h		;4727
	ld l,e			;4728
	ld sp,hl		;4729
	ld a,a			;472a
	cp (hl)			;472b
	ld a,a			;472c
	pop bc			;472d
	call po,sub_47a6h	;472e
	ld a,a			;4731
	jp p,0fb63h		;4732
	cp (hl)			;4735
	rst 38h			;4736
	jp c,08828h		;4737
	ret po			;473a
	cp e			;473b
	or h			;473c
	ld d,l			;473d
	ld sp,hl		;473e
	adc a,e			;473f
	adc a,c			;4740
	inc e			;4741
	ld c,c			;4742
	add a,l			;4743
	adc a,c			;4744
	ld (hl),c		;4745
	ld c,e			;4746
	xor 07fh		;4747
	call z,0f1ffh		;4749
	ld a,a			;474c
	push bc			;474d
	daa			;474e
	ld a,a			;474f
	adc a,a			;4750
	rst 28h			;4751
	ld a,a			;4752
	ex (sp),hl		;4753
	jp po,08df6h		;4754
	di			;4757
	pop hl			;4758
	ld a,a			;4759
	cp (hl)			;475a
	ex af,af'		;475b
	call 00889h		;475c
	ex de,hl		;475f
	jp (hl)			;4760
	adc a,(hl)		;4761
	call po,sub_7ffeh	;4762
	ld e,(hl)		;4765
	cp e			;4766
	ld a,a			;4767
	dec bc			;4768
	rst 28h			;4769
l476ah:
	sbc a,(hl)		;476a
	xor e			;476b
	adc a,a			;476c
	inc hl			;476d
	rst 38h			;476e
	ld sp,hl		;476f
	ld a,(bc)		;4770
	or 028h			;4771
	cp 047h			;4773
	sbc a,a			;4775
	push af			;4776
	ld d,0e0h		;4777
	ld e,l			;4779
	adc a,c			;477a
	add a,c			;477b
	ld (011f9h),hl		;477c
	dec hl			;477f
	ld c,c			;4780
	rst 38h			;4781
	sub e			;4782
	add hl,de		;4783
l4784h:
	cp a			;4784
	add a,b			;4785
	adc a,h			;4786
	cp 0f4h			;4787
	ld e,(hl)		;4789
	ld a,a			;478a
	dec hl			;478b
	inc h			;478c
	adc a,(hl)		;478d
	inc l			;478e
	call m,0868ah		;478f
	add hl,bc		;4792
	cp 07fh			;4793
	ld a,080h		;4795
	or d			;4797
	ld (hl),h		;4798
	adc a,(hl)		;4799
	adc a,b			;479a
	ld l,(hl)		;479b
	sbc a,032h		;479c
	or h			;479e
	ld c,c			;479f
sub_47a0h:
	ld a,(bc)		;47a0
	add a,l			;47a1
	dec h			;47a2
	sbc a,a			;47a3
	ld a,a			;47a4
	sub e			;47a5
sub_47a6h:
	ld b,h			;47a6
	ld a,a			;47a7
	call p,0ffb5h		;47a8
	sub 080h		;47ab
	ld (01c8ch),a		;47ad
	ld c,(hl)		;47b0
	or h			;47b1
	rst 38h			;47b2
	add a,b			;47b3
	jr z,l476ah		;47b4
	and b			;47b6
	cp 07fh			;47b7
	inc de			;47b9
	rst 38h			;47ba
	inc e			;47bb
	inc a			;47bc
	add hl,bc		;47bd
	pop de			;47be
	sbc a,a			;47bf
	call m,0fb1ch		;47c0
	cp a			;47c3
sub_47c4h:
	ret m			;47c4
	xor c			;47c5
	inc b			;47c6
	ex (sp),hl		;47c7
	ld a,(de)		;47c8
	ld sp,hl		;47c9
	rst 38h			;47ca
	or c			;47cb
	adc a,b			;47cc
	ld l,l			;47cd
	push af			;47ce
	ld a,a			;47cf
	out (04fh),a		;47d0
	sub e			;47d2
	ld c,d			;47d3
	defb 0fdh,04bh,0a8h ;illegal sequence	;47d4
	jp 04f4eh		;47d7
	ld a,a			;47da
	ld sp,hl		;47db
	adc a,c			;47dc
	add a,b			;47dd
	scf			;47de
	adc a,c			;47df
	sbc a,d			;47e0
	ld a,a			;47e1
	dec b			;47e2
	push af			;47e3
	ex de,hl		;47e4
	sub h			;47e5
	sub c			;47e6
	ld h,(hl)		;47e7
	rrca			;47e8
	ld (hl),d		;47e9
	or 0f1h			;47ea
	ld a,a			;47ec
	ld e,h			;47ed
	ld a,(de)		;47ee
	sub l			;47ef
	ld c,c			;47f0
	adc a,l			;47f1
	add a,b			;47f2
	inc hl			;47f3
sub_47f4h:
	rst 38h			;47f4
	ld a,a			;47f5
	ret m			;47f6
	ld (hl),000h		;47f7
	rst 38h			;47f9
	ld a,b			;47fa
	ld a,h			;47fb
	add hl,bc		;47fc
	sbc a,l			;47fd
	ld h,e			;47fe
	cp l			;47ff
	sub b			;4800
	rst 38h			;4801
	sbc a,b			;4802
	nop			;4803
	ld b,h			;4804
	ret p			;4805
	adc a,01dh		;4806
	sub l			;4808
	jp z,03cfdh		;4809
	add a,b			;480c
	cp 07fh			;480d
	ld de,00809h		;480f
	rst 18h			;4812
	add hl,bc		;4813
	call 0f987h		;4814
	add hl,bc		;4817
	pop bc			;4818
	rrca			;4819
	call p,0eb8ah		;481a
	sub h			;481d
l481eh:
	sub 013h		;481e
	cp l			;4820
	cp 094h			;4821
	ld a,d			;4823
	rst 38h			;4824
	cp 07fh			;4825
	ld de,00700h		;4827
sub_482ah:
	rst 18h			;482a
	add hl,bc		;482b
	call sub_6c90h		;482c
	ld l,e			;482f
	add hl,bc		;4830
	rst 38h			;4831
	nop			;4832
	adc a,(hl)		;4833
	inc de			;4834
	ld a,b			;4835
	ld a,(hl)		;4836
	ccf			;4837
	nop			;4838
	sbc a,c			;4839
	nop			;483a
	cp (hl)			;483b
	rst 38h			;483c
	nop			;483d
	rst 38h			;483e
	add a,b			;483f
	nop			;4840
	jr c,l4843h		;4841
l4843h:
	nop			;4843
	ld h,c			;4844
	call z,0cf00h		;4845
	call z,0e200h		;4848
	call m,0cc7eh		;484b
	nop			;484e
	add hl,bc		;484f
	rst 8			;4850
	rst 38h			;4851
	nop			;4852
	call m,sub_4f4fh	;4853
	ccf			;4856
	ld h,l			;4857
	jr l481eh		;4858
	call z,0f84ch		;485a
	nop			;485d
	rst 18h			;485e
	call nz,0c77fh		;485f
	inc b			;4862
	ld b,h			;4863
	ld b,h			;4864
	ld b,a			;4865
	ld c,a			;4866
	ld b,0c4h		;4867
	add a,a			;4869
	dec b			;486a
	ld (hl),h		;486b
	ld c,h			;486c
	ld b,h			;486d
	nop			;486e
	dec (hl)		;486f
	ld a,c			;4870
	inc bc			;4871
	ld (bc),a		;4872
	jr l48c4h		;4873
	call p,0b400h		;4875
	ld hl,0b2b4h		;4878
	nop			;487b
	and d			;487c
	and d			;487d
	and e			;487e
	nop			;487f
	adc a,b			;4880
	inc sp			;4881
	nop			;4882
	ld d,e			;4883
	ld d,l			;4884
	add a,e			;4885
	nop			;4886
	ld d,h			;4887
	ld b,h			;4888
	ld c,h			;4889
	ld a,h			;488a
	ld a,a			;488b
	ret m			;488c
	ret nz			;488d
	ld b,a			;488e
	ld a,e			;488f
	cp e			;4890
	cp a			;4891
	add a,b			;4892
	ld b,0fch		;4893
	ld c,e			;4895
	or a			;4896
	or d			;4897
	cp e			;4898
	ld (hl),h		;4899
	inc h			;489a
	ld (hl),h		;489b
	ld (hl),a		;489c
	nop			;489d
	ld a,e			;489e
	ld b,044h		;489f
	sub c			;48a1
	ex af,af'		;48a2
	ld b,a			;48a3
	adc a,(hl)		;48a4
	ld sp,l6d75h		;48a5
	ld e,l			;48a8
	ld bc,0009eh		;48a9
	call nz,044a4h		;48ac
	rst 38h			;48af
	ld a,a			;48b0
	inc e			;48b1
	ld (02211h),hl		;48b2
	inc l			;48b5
	rst 38h			;48b6
	add a,b			;48b7
	and b			;48b8
	xor e			;48b9
	xor e			;48ba
	inc l			;48bb
	rst 0			;48bc
	or a			;48bd
	ld (07bbbh),hl		;48be
	ld c,02bh		;48c1
	or h			;48c3
l48c4h:
	adc a,h			;48c4
	inc h			;48c5
	ld (hl),a		;48c6
	ex af,af'		;48c7
	ld (hl),h		;48c8
	add a,c			;48c9
	ld a,e			;48ca
	ld e,l			;48cb
	push de			;48cc
	ld e,l			;48cd
	defb 0ddh,055h ;ld d,ixl	;48ce
	inc bc			;48d0
	sub c			;48d1
	add a,h			;48d2
	dec hl			;48d3
	defb 0ddh,003h,002h ;illegal sequence	;48d4
	nop			;48d7
	ld c,c			;48d8
	push de			;48d9
	jp c,03a80h		;48da
	ld a,a			;48dd
	sbc a,c			;48de
	adc a,c			;48df
	call p,03e0ah		;48e0
	ld c,a			;48e3
	ld d,(hl)		;48e4
	ld d,d			;48e5
	rst 8			;48e6
	rst 8			;48e7
	ld a,(de)		;48e8
	sub l			;48e9
	bit 7,(hl)		;48ea
	ld c,h			;48ec
	ld a,a			;48ed
	nop			;48ee
	ld c,e			;48ef
	ld h,02ah		;48f0
	ld b,(hl)		;48f2
	xor h			;48f3
	pop de			;48f4
	add a,b			;48f5
	call m,02a47h		;48f6
	inc l			;48f9
	ld b,h			;48fa
	ld b,d			;48fb
l48fch:
	or d			;48fc
	ld hl,02b2bh		;48fd
sub_4900h:
	ld a,a			;4900
	daa			;4901
	ld b,a			;4902
	ld (hl),a		;4903
	ld b,046h		;4904
	dec b			;4906
	ld b,l			;4907
	defb 0ddh,07ah,07bh ;illegal sequence	;4908
	nop			;490b
	inc b			;490c
	push de			;490d
	ld d,l			;490e
	ld d,e			;490f
	and h			;4910
	rst 38h			;4911
	ld (hl),h		;4912
	call p,05d88h		;4913
	ld (hl),d		;4916
	inc h			;4917
	inc bc			;4918
	ld c,a			;4919
	ld c,a			;491a
	ld a,h			;491b
	call m,01454h		;491c
	ld de,0d2cbh		;491f
	jp nz,02222h		;4922
	nop			;4925
	ld b,a			;4926
	ld b,h			;4927
	rst 38h			;4928
	ld e,a			;4929
	inc b			;492a
	ld (l51aah),hl		;492b
	inc a			;492e
	jp nc,0a434h		;492f
	ld b,d			;4932
	inc l			;4933
	ld c,l			;4934
	or d			;4935
	jp z,00034h		;4936
	defb 0fdh,026h,0b7h ;ld iyh,0b7h	;4939
	ex af,af'		;493c
	ld de,0bdb7h		;493d
	ld sp,hl		;4940
	sbc a,(hl)		;4941
	ld a,a			;4942
	jp nc,011ffh		;4943
	inc sp			;4946
l4947h:
	and h			;4947
	rst 38h			;4948
l4949h:
	call nc,0dba2h		;4949
	ld hl,(03e32h)		;494c
	call p,02255h		;494f
	call m,0cac4h		;4952
	ld l,049h		;4955
	ccf			;4957
	ld a,a			;4958
	ex af,af'		;4959
	ld (hl),d		;495a
	xor d			;495b
	ld e,d			;495c
	and a			;495d
	call p,0d046h		;495e
	xor c			;4961
	inc l			;4962
	ld d,d			;4963
	cp 048h			;4964
	rst 38h			;4966
	and c			;4967
	ld a,a			;4968
	or a			;4969
	ld a,a			;496a
	call nz,0843fh		;496b
	cp e			;496e
	dec (hl)		;496f
	add a,d			;4970
	pop de			;4971
	cp 0eeh			;4972
	ld d,l			;4974
	ld (hl),a		;4975
	dec (hl)		;4976
	ld a,a			;4977
	cp b			;4978
	add hl,sp		;4979
	nop			;497a
l497bh:
	or h			;497b
	xor e			;497c
	ld a,h			;497d
	ld d,l			;497e
	ld d,d			;497f
	sbc a,e			;4980
	add hl,sp		;4981
	ld b,d			;4982
	dec e			;4983
	ld c,c			;4984
	inc h			;4985
	sbc a,(hl)		;4986
	rst 38h			;4987
	ccf			;4988
	ld a,b			;4989
	or d			;498a
	ld h,0a2h		;498b
l498dh:
	and (hl)		;498d
	dec b			;498e
	res 1,h			;498f
	or h			;4991
	adc a,d			;4992
	rst 38h			;4993
	cp 084h			;4994
	or d			;4996
	add a,b			;4997
	ld l,l			;4998
	add a,h			;4999
	ld c,b			;499a
	cp a			;499b
	sub c			;499c
	and e			;499d
	ld b,c			;499e
	xor e			;499f
	or e			;49a0
	ld a,a			;49a1
	exx			;49a2
	push de			;49a3
	add a,b			;49a4
	ld e,h			;49a5
	ld c,e			;49a6
	rst 38h			;49a7
	ld d,09bh		;49a8
	halt			;49aa
	ld h,c			;49ab
	ld b,h			;49ac
	ret m			;49ad
	ld a,a			;49ae
	push hl			;49af
	sbc a,e			;49b0
	ld b,h			;49b1
	ld hl,(0aa2ah)		;49b2
	sbc a,a			;49b5
l49b6h:
	xor h			;49b6
	rst 38h			;49b7
	ld a,l			;49b8
	ex de,hl		;49b9
	cp e			;49ba
	inc h			;49bb
	or 016h			;49bc
	ld d,h			;49be
	sub e			;49bf
	ld a,a			;49c0
sub_49c1h:
	ld b,a			;49c1
	ret m			;49c2
	inc hl			;49c3
	ld (hl),d		;49c4
	add a,b			;49c5
	ld b,h			;49c6
	daa			;49c7
	cp e			;49c8
	inc l			;49c9
	djnz $-58		;49ca
	inc de			;49cc
	ld (0bbbah),hl		;49cd
	add a,c			;49d0
	sub d			;49d1
	defb 0fdh,0ebh,0ffh ;illegal sequence	;49d2
	dec hl			;49d5
	ld a,a			;49d6
	call nz,093e0h		;49d7
	ld h,0aah		;49da
	nop			;49dc
	dec h			;49dd
	jp po,08ce5h		;49de
	sbc a,h			;49e1
	ld b,d			;49e2
	ld hl,(0a31bh)		;49e3
	ld a,(081a2h)		;49e6
	ld a,a			;49e9
	ld (bc),a		;49ea
	rst 38h			;49eb
	ld (0a76eh),a		;49ec
	dec b			;49ef
	add a,c			;49f0
	ld h,e			;49f1
	rst 38h			;49f2
	add a,e			;49f3
	ld (hl),d		;49f4
	cp e			;49f5
	ld a,a			;49f6
	inc de			;49f7
	ld h,h			;49f8
	add a,(hl)		;49f9
	ld h,(hl)		;49fa
	add a,b			;49fb
	ld d,h			;49fc
	sub b			;49fd
	inc hl			;49fe
	ld b,a			;49ff
	ld a,e			;4a00
	cp 0c0h			;4a01
	ld d,e			;4a03
	sbc a,(hl)		;4a04
	rst 38h			;4a05
	or c			;4a06
	ld a,(hl)		;4a07
	ld hl,(0085fh)		;4a08
	inc sp			;4a0b
	and e			;4a0c
	and d			;4a0d
	rst 38h			;4a0e
	and l			;4a0f
	pop hl			;4a10
	jp po,0c422h		;4a11
	ld (hl),h		;4a14
	sbc a,h			;4a15
	ret			;4a16
	dec e			;4a17
	inc bc			;4a18
	ld hl,(02f9fh)		;4a19
	dec l			;4a1c
	rst 38h			;4a1d
	jp m,02256h		;4a1e
	or b			;4a21
	add a,07fh		;4a22
l4a24h:
	and h			;4a24
	ld b,a			;4a25
	rst 38h			;4a26
	add hl,hl		;4a27
	ld a,e			;4a28
	or d			;4a29
	add a,b			;4a2a
	inc h			;4a2b
	cp (hl)			;4a2c
	ld h,b			;4a2d
	ld c,a			;4a2e
	ld a,a			;4a2f
	ld b,a			;4a30
	and d			;4a31
	and a			;4a32
	ld c,e			;4a33
	ld (hl),l		;4a34
	defb 0fdh,0bbh,033h ;illegal sequence	;4a35
	ld a,a			;4a38
	sbc a,d			;4a39
	sbc a,(hl)		;4a3a
	ld c,h			;4a3b
	sub l			;4a3c
	xor b			;4a3d
	ld e,(hl)		;4a3e
	ld h,c			;4a3f
	xor d			;4a40
	ld hl,(l723eh)		;4a41
	xor a			;4a44
	ld d,l			;4a45
	ld de,l4aa2h		;4a46
l4a49h:
	ld hl,(09cb1h)		;4a49
	ld (bc),a		;4a4c
	ld a,(0a2aah)		;4a4d
	daa			;4a50
	ld c,a			;4a51
	rst 38h			;4a52
	ld a,0e9h		;4a53
	ld a,a			;4a55
	inc l			;4a56
	ret nc			;4a57
	dec de			;4a58
	add a,l			;4a59
	ret			;4a5a
	rst 38h			;4a5b
	inc h			;4a5c
	rst 38h			;4a5d
	ld h,h			;4a5e
	rrca			;4a5f
	cp e			;4a60
	inc b			;4a61
	cp e			;4a62
	ld h,0b4h		;4a63
	ld (hl),d		;4a65
	rst 8			;4a66
	sub c			;4a67
	adc a,e			;4a68
	ld b,a			;4a69
	rst 18h			;4a6a
	rlca			;4a6b
	ld (03d72h),hl		;4a6c
	ld a,(hl)		;4a6f
	adc a,h			;4a70
	cp 072h			;4a71
	inc sp			;4a73
	ld l,h			;4a74
	inc (hl)		;4a75
	ld a,a			;4a76
	ret po			;4a77
	sub d			;4a78
	rst 18h			;4a79
	ld h,(hl)		;4a7a
	ld h,b			;4a7b
	ld (bc),a		;4a7c
	ld c,h			;4a7d
	add a,c			;4a7e
	cpl			;4a7f
	ret m			;4a80
	ld d,l			;4a81
	ld d,(hl)		;4a82
	or d			;4a83
	dec e			;4a84
	inc e			;4a85
	and e			;4a86
	dec (hl)		;4a87
	add a,c			;4a88
	daa			;4a89
	add a,b			;4a8a
	xor 055h		;4a8b
	rst 8			;4a8d
	rst 38h			;4a8e
	ld a,a			;4a8f
	add hl,hl		;4a90
	ld c,h			;4a91
	defb 0fdh,011h,04ch ;illegal sequence	;4a92
	rst 38h			;4a95
	adc a,d			;4a96
	ld (hl),a		;4a97
	rst 38h			;4a98
	ld b,l			;4a99
	ld b,a			;4a9a
	call m,09111h		;4a9b
	ld (de),a		;4a9e
	ld h,a			;4a9f
	ld a,e			;4aa0
	adc a,(hl)		;4aa1
l4aa2h:
	sbc a,e			;4aa2
	add a,h			;4aa3
	ld c,h			;4aa4
	add a,c			;4aa5
	ld a,e			;4aa6
	inc hl			;4aa7
	dec hl			;4aa8
	dec e			;4aa9
	cp 0cah			;4aaa
	ld (bc),a		;4aac
	ld h,h			;4aad
	inc sp			;4aae
	ld a,a			;4aaf
	rst 38h			;4ab0
	call pe,093feh		;4ab1
	ld h,b			;4ab4
	ld d,e			;4ab5
	ld e,(hl)		;4ab6
	jr nc,$+4		;4ab7
	ld (0b724h),a		;4ab9
	cp 085h			;4abc
sub_4abeh:
	ld (0467bh),hl		;4abe
	xor c			;4ac1
	scf			;4ac2
	dec a			;4ac3
	or d			;4ac4
	jr z,l4a49h		;4ac5
	and a			;4ac7
	add a,b			;4ac8
	cp d			;4ac9
	xor d			;4aca
	sub c			;4acb
	ld a,h			;4acc
	push de			;4acd
	add a,06dh		;4ace
	ld (hl),0cfh		;4ad0
	ld a,a			;4ad2
	defb 0fdh,04dh ;ld c,iyl	;4ad3
	defb 0fdh,031h,0d7h ;illegal sequence	;4ad5
	ld d,02ah		;4ad8
	call nc,07ca4h		;4ada
	call nz,02b08h		;4add
	dec h			;4ae0
	ld hl,(080b3h)		;4ae1
	call sub_7f53h		;4ae4
	add a,(hl)		;4ae7
	scf			;4ae8
l4ae9h:
	ld b,h			;4ae9
	ld a,a			;4aea
	ret			;4aeb
	rst 18h			;4aec
	dec bc			;4aed
	add a,h			;4aee
	push de			;4aef
	ex (sp),ix		;4af0
	xor e			;4af2
	ld b,h			;4af3
	ld d,e			;4af4
	pop hl			;4af5
	ld h,h			;4af6
	ld c,d			;4af7
	ld a,(hl)		;4af8
	cp c			;4af9
	xor d			;4afa
	push de			;4afb
	ld e,0a3h		;4afc
	and b			;4afe
	ld a,a			;4aff
	defb 0edh ;next byte illegal after ed	;4b00
	inc e			;4b01
	call nz,sub_72c4h	;4b02
	ret m			;4b05
	adc a,l			;4b06
	call z,03ccbh		;4b07
	ld a,a			;4b0a
	ld l,d			;4b0b
	ld de,02392h		;4b0c
	rst 38h			;4b0f
	inc h			;4b10
	sub l			;4b11
	inc h			;4b12
	ld (hl),a		;4b13
	ld b,d			;4b14
	ld a,a			;4b15
	cp e			;4b16
	add a,c			;4b17
	ld sp,hl		;4b18
	ld b,(hl)		;4b19
	cp 0c4h			;4b1a
l4b1ch:
	rst 38h			;4b1c
	ld c,a			;4b1d
	ret			;4b1e
	ld a,a			;4b1f
	cp 02dh			;4b20
	ex af,af'		;4b22
	sbc a,(hl)		;4b23
	or (hl)			;4b24
	inc d			;4b25
	add a,c			;4b26
	ld b,a			;4b27
	inc h			;4b28
	ld a,a			;4b29
	jp nz,0ad23h		;4b2a
	ld a,l			;4b2d
l4b2eh:
	cp c			;4b2e
	sub d			;4b2f
	out (03ah),a		;4b30
	ld a,a			;4b32
	and a			;4b33
	add a,b			;4b34
	cp e			;4b35
	rst 30h			;4b36
	ld hl,(00b83h)		;4b37
	ld (hl),a		;4b3a
	ld c,h			;4b3b
	ld b,0b4h		;4b3c
	ld c,(hl)		;4b3e
	ld a,a			;4b3f
	ld de,08d27h		;4b40
	adc a,d			;4b43
	daa			;4b44
	call c,sub_4c94h	;4b45
	ld b,h			;4b48
	ld h,(hl)		;4b49
	rst 0			;4b4a
	ld (hl),c		;4b4b
	ld (hl),h		;4b4c
	sub b			;4b4d
	ret po			;4b4e
l4b4fh:
	ld b,l			;4b4f
	cp 0b8h			;4b50
	add a,0feh		;4b52
	rst 8			;4b54
	rst 38h			;4b55
	inc d			;4b56
	inc sp			;4b57
	rst 38h			;4b58
	ld d,c			;4b59
	sub a			;4b5a
	call nz,sub_5783h	;4b5b
	inc de			;4b5e
	ld a,a			;4b5f
	add a,053h		;4b60
	sub e			;4b62
	xor h			;4b63
	ld a,a			;4b64
	sbc a,c			;4b65
	sbc a,(hl)		;4b66
	rst 8			;4b67
	ld a,a			;4b68
	or (hl)			;4b69
	ld a,c			;4b6a
	ld h,0bbh		;4b6b
	call nz,sub_447fh	;4b6d
	push bc			;4b70
	call nc,02783h		;4b71
	cp h			;4b74
	jp m,0fd2ah		;4b75
	jr nc,l4b2eh		;4b78
	ld b,h			;4b7a
	dec b			;4b7b
	ld (hl),d		;4b7c
	daa			;4b7d
	jr nz,l4b4fh		;4b7e
	call nz,0cc65h		;4b80
	ld a,e			;4b83
	ld c,e			;4b84
	ld (hl),d		;4b85
	adc a,c			;4b86
	adc a,d			;4b87
	ld h,l			;4b88
	ei			;4b89
	xor (hl)		;4b8a
	inc a			;4b8b
	ld a,a			;4b8c
	ld c,(hl)		;4b8d
	rst 38h			;4b8e
sub_4b8fh:
	ld d,d			;4b8f
	cp 04ah			;4b90
	rst 18h			;4b92
	cp (hl)			;4b93
	rst 18h			;4b94
	ld d,l			;4b95
	add a,d			;4b96
	di			;4b97
	dec a			;4b98
	inc bc			;4b99
	sub l			;4b9a
	add a,c			;4b9b
	inc l			;4b9c
	ld d,e			;4b9d
	ld d,e			;4b9e
	add a,b			;4b9f
	and a			;4ba0
	add a,b			;4ba1
	or c			;4ba2
	call m,052f6h		;4ba3
	or h			;4ba6
	xor l			;4ba7
	pop hl			;4ba8
	or h			;4ba9
	ld (hl),a		;4baa
	ld c,a			;4bab
	add a,b			;4bac
	add hl,hl		;4bad
	ld a,a			;4bae
	push bc			;4baf
	ld l,081h		;4bb0
	ld (hl),086h		;4bb2
	ld h,l			;4bb4
	sub h			;4bb5
	ld de,09b91h		;4bb6
	add a,008h		;4bb9
	or a			;4bbb
	ld c,e			;4bbc
	ld hl,(09c80h)		;4bbd
	dec (hl)		;4bc0
	jp m,l7fdfh		;4bc1
	ex af,af'		;4bc4
	and a			;4bc5
	rst 38h			;4bc6
	push bc			;4bc7
	ld b,h			;4bc8
	ld a,a			;4bc9
	ld b,(iy+07fh)		;4bca
	dec b			;4bcd
	ld de,01f11h		;4bce
	ld de,l4500h		;4bd1
	ld b,a			;4bd4
	ld b,0ffh		;4bd5
	pop af			;4bd7
	dec bc			;4bd8
	rla			;4bd9
	rlca			;4bda
	inc c			;4bdb
	nop			;4bdc
	ld de,033f3h		;4bdd
	pop af			;4be0
	rra			;4be1
	xor d			;4be2
	xor (hl)		;4be3
	rst 38h			;4be4
	ld (hl),0ffh		;4be5
	ld b,l			;4be7
	ld b,d			;4be8
	call po,sub_7f5fh	;4be9
	ld d,b			;4bec
	call z,024c7h		;4bed
	ld h,l			;4bf0
	call z,sub_5470h	;4bf1
l4bf4h:
	ld l,l			;4bf4
	ld d,c			;4bf5
	ret p			;4bf6
	ei			;4bf7
	ld h,c			;4bf8
	or (hl)			;4bf9
	dec hl			;4bfa
	cp 034h			;4bfb
	add a,c			;4bfd
	sub a			;4bfe
	sub h			;4bff
sub_4c00h:
	sub e			;4c00
	add a,a			;4c01
	ld b,l			;4c02
	sub b			;4c03
l4c04h:
	inc e			;4c04
	dec (hl)		;4c05
	ld c,e			;4c06
	sbc a,(hl)		;4c07
	ld d,d			;4c08
	ld h,0fdh		;4c09
	ex (sp),hl		;4c0b
	inc bc			;4c0c
	cpl			;4c0d
	xor d			;4c0e
	rst 38h			;4c0f
	ld d,c			;4c10
	or a			;4c11
	rst 38h			;4c12
	or c			;4c13
	rst 18h			;4c14
	dec (hl)		;4c15
	ld e,a			;4c16
	ld a,d			;4c17
	rst 38h			;4c18
	ld l,c			;4c19
	ld d,e			;4c1a
	ld bc,01105h		;4c1b
	ld a,c			;4c1e
	ld (hl),a		;4c1f
	ld d,c			;4c20
	inc c			;4c21
	adc a,l			;4c22
	ld a,a			;4c23
	sbc a,h			;4c24
l4c25h:
	sbc a,d			;4c25
	and h			;4c26
	rst 38h			;4c27
	ld b,a			;4c28
	ld a,(0dcffh)		;4c29
	call m,0c734h		;4c2c
	cp h			;4c2f
	jp pe,0a8fch		;4c30
	adc a,b			;4c33
	ld l,e			;4c34
	call p,0087ch		;4c35
	ld a,e			;4c38
	cp d			;4c39
	ld b,(hl)		;4c3a
	dec hl			;4c3b
	ld a,(bc)		;4c3c
	res 6,h			;4c3d
	sub l			;4c3f
	or c			;4c40
	ld h,a			;4c41
	sbc a,b			;4c42
	add a,e			;4c43
	sbc a,d			;4c44
	adc a,a			;4c45
	xor b			;4c46
	xor l			;4c47
	cp 0d8h			;4c48
	defb 0fdh,0e4h,03ah ;illegal sequence	;4c4a
	and e			;4c4d
	inc hl			;4c4e
	inc (hl)		;4c4f
	ld a,h			;4c50
	rst 38h			;4c51
	ld l,l			;4c52
	cp 004h			;4c53
	ld e,l			;4c55
	inc sp			;4c56
	ccf			;4c57
	ei			;4c58
	ld h,h			;4c59
	rst 38h			;4c5a
	ld l,h			;4c5b
	add a,e			;4c5c
	ld (hl),c		;4c5d
	dec bc			;4c5e
	call nz,sub_7184h	;4c5f
	add a,c			;4c62
	jr $-3			;4c63
	ret z			;4c65
l4c66h:
	ld a,a			;4c66
	xor a			;4c67
	call po,0a4a2h		;4c68
	ld a,l			;4c6b
	ld c,a			;4c6c
	ld a,a			;4c6d
	and l			;4c6e
	ld b,a			;4c6f
	cp a			;4c70
	ld (bc),a		;4c71
	rst 38h			;4c72
	ld d,l			;4c73
	defb 0fdh,052h,0a4h ;illegal sequence	;4c74
	pop de			;4c77
	ei			;4c78
	ld a,a			;4c79
	defb 0ddh,059h,01dh ;illegal sequence	;4c7a
	pop hl			;4c7d
sub_4c7eh:
	dec sp			;4c7e
	sbc a,b			;4c7f
	sbc a,015h		;4c80
	jp p,00525h		;4c82
	ei			;4c85
	ld (hl),c		;4c86
l4c87h:
	ld c,l			;4c87
	ld d,(hl)		;4c88
	ld a,(hl)		;4c89
	rst 38h			;4c8a
	daa			;4c8b
	ld c,h			;4c8c
	rst 38h			;4c8d
	ex af,af'		;4c8e
	ld a,d			;4c8f
	ld hl,(0db8ch)		;4c90
	ld a,a			;4c93
sub_4c94h:
	ld l,(hl)		;4c94
	ld h,e			;4c95
	add a,e			;4c96
	add a,h			;4c97
	rra			;4c98
	ret m			;4c99
	ld (hl),e		;4c9a
	ld a,a			;4c9b
	or e			;4c9c
	adc a,b			;4c9d
	cp d			;4c9e
	dec c			;4c9f
	rst 38h			;4ca0
	ld l,l			;4ca1
	jp m,03081h		;4ca2
	dec d			;4ca5
	ld (0aea4h),a		;4ca6
	sbc a,b			;4ca9
	rst 38h			;4caa
	push af			;4cab
	inc bc			;4cac
	rst 38h			;4cad
	ld (hl),a		;4cae
	or h			;4caf
	call m,sub_7d4bh	;4cb0
	ld (09f81h),hl		;4cb3
	call z,09487h		;4cb6
	sub d			;4cb9
	call z,0f274h		;4cba
	ld (0cc8eh),hl		;4cbd
	ld (hl),l		;4cc0
	rst 8			;4cc1
	ld (hl),l		;4cc2
	rst 38h			;4cc3
	sub (hl)		;4cc4
	call m,090dfh		;4cc5
	ld e,e			;4cc8
	ld e,d			;4cc9
sub_4ccah:
	ld a,(0e3afh)		;4cca
	ld l,d			;4ccd
	ld (hl),a		;4cce
	ld e,h			;4ccf
	pop af			;4cd0
	ld a,(08647h)		;4cd1
	dec e			;4cd4
	inc c			;4cd5
	ld h,b			;4cd6
	ld b,d			;4cd7
	ld (de),a		;4cd8
	inc h			;4cd9
	ld b,a			;4cda
	ld l,d			;4cdb
	xor d			;4cdc
	sbc a,(hl)		;4cdd
	ld a,(iy+051h)		;4cde
	jp po,l4784h		;4ce1
	ld (hl),h		;4ce4
	push hl			;4ce5
	sbc a,l			;4ce6
	defb 0edh ;next byte illegal after ed	;4ce7
	sub c			;4ce8
	add a,c			;4ce9
	ld c,a			;4cea
	call z,085c3h		;4ceb
	add a,a			;4cee
	inc c			;4cef
	dec de			;4cf0
	ld a,a			;4cf1
	defb 0fdh,01dh,0d6h ;illegal sequence	;4cf2
	dec b			;4cf5
	rst 38h			;4cf6
	adc a,c			;4cf7
	rst 8			;4cf8
sub_4cf9h:
	and l			;4cf9
	ld (04de1h),a		;4cfa
	and e			;4cfd
	add a,h			;4cfe
	ld sp,hl		;4cff
	xor a			;4d00
	dec d			;4d01
	add a,h			;4d02
	cp d			;4d03
	dec c			;4d04
	ld a,(0c224h)		;4d05
	rst 38h			;4d08
	ld a,(de)		;4d09
	rst 8			;4d0a
	rst 38h			;4d0b
	or 0cah			;4d0c
	ld a,c			;4d0e
	ld c,h			;4d0f
	ret p			;4d10
	add hl,hl		;4d11
	ld a,a			;4d12
	add a,c			;4d13
	and a			;4d14
	cp l			;4d15
	ld h,a			;4d16
	call z,077d6h		;4d17
	ld b,a			;4d1a
	cpl			;4d1b
	call z,sub_7f1ch	;4d1c
	res 0,c			;4d1f
	ld sp,0b7ffh		;4d21
	sbc a,c			;4d24
l4d25h:
	ld l,d			;4d25
	pop hl			;4d26
	inc d			;4d27
	xor d			;4d28
	inc l			;4d29
	add a,e			;4d2a
	sub d			;4d2b
	ld bc,0ddabh		;4d2c
sub_4d2fh:
	ld a,(hl)		;4d2f
	ld d,e			;4d30
	rra			;4d31
	set 7,(hl)		;4d32
l4d34h:
	xor a			;4d34
	cp 040h			;4d35
	ld c,h			;4d37
	ld hl,(02ca2h)		;4d38
	cp c			;4d3b
	ld b,c			;4d3c
	rst 38h			;4d3d
	defb 0edh ;next byte illegal after ed	;4d3e
	adc a,b			;4d3f
	ld a,c			;4d40
	call nz,08027h		;4d41
	or d			;4d44
	ld d,h			;4d45
	call z,01c7eh		;4d46
	ld a,a			;4d49
	sbc a,a			;4d4a
	call z,0ff07h		;4d4b
	ld a,(hl)		;4d4e
	ld e,h			;4d4f
l4d50h:
	rst 38h			;4d50
	rst 8			;4d51
	nop			;4d52
	inc sp			;4d53
	ld a,e			;4d54
	ei			;4d55
	ld d,l			;4d56
	push hl			;4d57
	call z,01972h		;4d58
	ld b,a			;4d5b
	ld b,h			;4d5c
	adc a,h			;4d5d
	ld a,a			;4d5e
	ld a,a			;4d5f
	ld e,c			;4d60
	ld c,e			;4d61
	and a			;4d62
	add a,c			;4d63
	ld (hl),c		;4d64
	or h			;4d65
	or d			;4d66
	jp (hl)			;4d67
	ld (hl),0f0h		;4d68
	ld d,e			;4d6a
	call z,0c7f0h		;4d6b
	rst 38h			;4d6e
	ld d,e			;4d6f
	call z,081c4h		;4d70
	adc a,c			;4d73
	and e			;4d74
	rst 38h			;4d75
	sbc a,0f5h		;4d76
	and a			;4d78
	rst 38h			;4d79
	halt			;4d7a
	rrca			;4d7b
	sbc a,d			;4d7c
	sbc a,b			;4d7d
	ex (sp),hl		;4d7e
	ld e,002h		;4d7f
	adc a,b			;4d81
	and d			;4d82
	call c,0e107h		;4d83
	add hl,de		;4d86
	rst 38h			;4d87
	add hl,de		;4d88
	call z,0b1c8h		;4d89
	add hl,bc		;4d8c
	cp a			;4d8d
	ld a,a			;4d8e
	ld e,c			;4d8f
	ld c,d			;4d90
	xor d			;4d91
	add a,d			;4d92
	dec d			;4d93
	rst 38h			;4d94
	ret z			;4d95
	call z,0ead4h		;4d96
	xor d			;4d99
	sub l			;4d9a
	or 01ch			;4d9b
	ret po			;4d9d
	ld a,e			;4d9e
	ld c,l			;4d9f
	cpl			;4da0
	jp 0e10ch		;4da1
	rst 38h			;4da4
	ld c,h			;4da5
	ld hl,(0d433h)		;4da6
	push bc			;4da9
	rst 38h			;4daa
	ld e,a			;4dab
	ld de,l69e7h		;4dac
	rst 30h			;4daf
	and a			;4db0
	ld h,e			;4db1
	ld (bc),a		;4db2
	ld a,b			;4db3
	ld a,a			;4db4
	add a,082h		;4db5
	or e			;4db7
	ld a,a			;4db8
	rla			;4db9
	xor c			;4dba
	ld a,a			;4dbb
	rra			;4dbc
l4dbdh:
	ld a,a			;4dbd
	rst 30h			;4dbe
	adc a,c			;4dbf
	scf			;4dc0
	call nz,08342h		;4dc1
	add a,0b2h		;4dc4
	add a,b			;4dc6
	jr l4d50h		;4dc7
	ld d,d			;4dc9
	add a,l			;4dca
	ld a,d			;4dcb
	di			;4dcc
	ld (hl),066h		;4dcd
	di			;4dcf
	sub a			;4dd0
	nop			;4dd1
	ld h,(hl)		;4dd2
	push af			;4dd3
	add hl,de		;4dd4
	ld h,e			;4dd5
	and a			;4dd6
	add a,(hl)		;4dd7
	sub a			;4dd8
	ei			;4dd9
	ld h,01dh		;4dda
	ld c,l			;4ddc
	ld (0cb00h),hl		;4ddd
	defb 0fdh,032h,04bh ;illegal sequence	;4de0
	ld h,a			;4de3
	rst 38h			;4de4
	add hl,sp		;4de5
	adc a,(hl)		;4de6
	ei			;4de7
	ld h,e			;4de8
	rst 38h			;4de9
	adc a,d			;4dea
	cp c			;4deb
	ld h,d			;4dec
	rst 38h			;4ded
	add hl,sp		;4dee
	jp po,0f119h		;4def
	ld e,b			;4df2
	ld b,(hl)		;4df3
	ld de,0b883h		;4df4
	call m,0fb1eh		;4df7
	ld a,a			;4dfa
	dec bc			;4dfb
	ld (hl),e		;4dfc
	and h			;4dfd
	add a,(hl)		;4dfe
	and 0cch		;4dff
	ld (hl),d		;4e01
	and a			;4e02
	call c,066ceh		;4e03
	ld l,a			;4e06
	ex af,af'		;4e07
	adc a,h			;4e08
l4e09h:
	ld (03edfh),hl		;4e09
	ld h,h			;4e0c
	jp p,0cc07h		;4e0d
	or 0fbh			;4e10
	sub (hl)		;4e12
	xor d			;4e13
	daa			;4e14
	sub (hl)		;4e15
	adc a,e			;4e16
	xor e			;4e17
	ld l,(hl)		;4e18
	rst 38h			;4e19
	inc a			;4e1a
	xor c			;4e1b
	xor e			;4e1c
	sbc a,e			;4e1d
	pop bc			;4e1e
	defb 0ddh,00eh,04fh ;illegal sequence	;4e1f
	call nz,01181h		;4e22
	rst 38h			;4e25
	or 0a7h			;4e26
	ld e,a			;4e28
	call z,0fcc1h		;4e29
	call z,0443eh		;4e2c
	and (hl)		;4e2f
	ld l,a			;4e30
	call z,sub_7bf4h	;4e31
	ld c,a			;4e34
	ld l,a			;4e35
	call z,02f29h		;4e36
	call z,0f7edh		;4e39
	rst 38h			;4e3c
	dec hl			;4e3d
	rst 38h			;4e3e
	dec e			;4e3f
	ld (hl),c		;4e40
	ld (hl),0a1h		;4e41
	ld e,h			;4e43
	ld d,e			;4e44
	and d			;4e45
	jr l4e09h		;4e46
	in a,(0ffh)		;4e48
	jr l4e9dh		;4e4a
	di			;4e4c
	ld e,0fah		;4e4d
	and e			;4e4f
	ld (0ffb1h),hl		;4e50
	rst 30h			;4e53
	daa			;4e54
	rst 8			;4e55
	call z,0fcc1h		;4e56
	call z,0443eh		;4e59
	xor d			;4e5c
	ld l,a			;4e5d
	call z,sub_47f4h	;4e5e
	inc de			;4e61
	cpl			;4e62
	rra			;4e63
	rra			;4e64
	call z,0fae4h		;4e65
	dec d			;4e68
	pop af			;4e69
	ei			;4e6a
	ld a,h			;4e6b
	rst 38h			;4e6c
	push de			;4e6d
	sbc a,d			;4e6e
	ld hl,0ff3fh		;4e6f
	in a,(0cfh)		;4e72
	ld l,071h		;4e74
	xor c			;4e76
	ld d,l			;4e77
	or d			;4e78
	ld (hl),l		;4e79
	cp (hl)			;4e7a
	ld l,e			;4e7b
	rst 38h			;4e7c
	defb 0edh ;next byte illegal after ed	;4e7d
	daa			;4e7e
	ld c,d			;4e7f
sub_4e80h:
	ld c,a			;4e80
	call z,027e4h		;4e81
	xor d			;4e84
	xor a			;4e85
	call z,sub_47a0h	;4e86
	ld a,a			;4e89
	rra			;4e8a
	sbc a,(ix-034h)		;4e8b
	ld e,e			;4e8e
	jp p,l7f1eh		;4e8f
	ret z			;4e92
	res 5,e			;4e93
	xor d			;4e95
	or c			;4e96
	adc a,l			;4e97
	ld e,l			;4e98
	ld e,(hl)		;4e99
	ld a,(hl)		;4e9a
sub_4e9bh:
	sub d			;4e9b
l4e9ch:
	ld a,(de)		;4e9c
l4e9dh:
	or d			;4e9d
	dec sp			;4e9e
	ld b,(hl)		;4e9f
	push af			;4ea0
	add hl,sp		;4ea1
	xor a			;4ea2
	ld e,a			;4ea3
	ld c,a			;4ea4
	jr c,l4e9ch		;4ea5
	jp m,09108h		;4ea7
	or (hl)			;4eaa
sub_4eabh:
	inc sp			;4eab
	or c			;4eac
	jp nz,00333h		;4ead
	or h			;4eb0
	or c			;4eb1
	ld e,a			;4eb2
	cp d			;4eb3
	rst 38h			;4eb4
	jp c,09f43h		;4eb5
	call z,sub_44b8h	;4eb8
	rst 8			;4ebb
	daa			;4ebc
	rra			;4ebd
	xor a			;4ebe
l4ebfh:
	call z,02294h		;4ebf
	add a,c			;4ec2
	call pe,0f37fh		;4ec3
	sub h			;4ec6
	rst 38h			;4ec7
	ld b,a			;4ec8
	or d			;4ec9
	dec (hl)		;4eca
	call p,0934fh		;4ecb
	ld e,0e0h		;4ece
	add a,b			;4ed0
	inc sp			;4ed1
	ld (02233h),a		;4ed2
	ld hl,(028c3h)		;4ed5
l4ed8h:
	ld d,d			;4ed8
	ld a,a			;4ed9
	ld c,a			;4eda
	sub e			;4edb
	call p,0042dh		;4edc
	ld de,0f42bh		;4edf
	rra			;4ee2
	or e			;4ee3
	inc sp			;4ee4
	or c			;4ee5
	cp d			;4ee6
	dec h			;4ee7
	inc (hl)		;4ee8
	ld h,e			;4ee9
	dec hl			;4eea
	rst 38h			;4eeb
	jp c,09fcfh		;4eec
	call z,0f272h		;4eef
	cpl			;4ef2
	call z,0cd7ch		;4ef3
	inc h			;4ef6
	ld c,a			;4ef7
	jr $-74			;4ef8
	rst 20h			;4efa
	ld h,h			;4efb
	or 07fh			;4efc
l4efeh:
	rst 38h			;4efe
l4effh:
	or 04ch			;4eff
	ld l,b			;4f01
	cpl			;4f02
	or l			;4f03
	rst 30h			;4f04
	rrca			;4f05
	ld b,d			;4f06
	defb 0fdh,05dh ;ld e,iyl	;4f07
	ld d,l			;4f09
	ex (sp),hl		;4f0a
	dec e			;4f0b
	ld d,e			;4f0c
	adc a,c			;4f0d
	add a,(hl)		;4f0e
	res 5,d			;4f0f
	xor 00eh		;4f11
	xor a			;4f13
	ld c,a			;4f14
	ld d,c			;4f15
	jp m,01587h		;4f16
	xor d			;4f19
	cp h			;4f1a
	ld de,08cadh		;4f1b
	ld e,l			;4f1e
	ld a,(hl)		;4f1f
	inc de			;4f20
	rst 18h			;4f21
	inc h			;4f22
	ld c,h			;4f23
	dec l			;4f24
	jp p,053aeh		;4f25
	ld a,a			;4f28
	jp pe,0f8beh		;4f29
	sub e			;4f2c
	di			;4f2d
	xor c			;4f2e
	rst 0			;4f2f
	dec bc			;4f30
	ld d,07fh		;4f31
	jp l51fah		;4f33
	ret m			;4f36
	ld b,08ah		;4f37
l4f39h:
	inc l			;4f39
	adc a,b			;4f3a
	ld b,h			;4f3b
	ld (0f2cch),hl		;4f3c
	di			;4f3f
	halt			;4f40
	call z,005ffh		;4f41
	call nz,0acc4h		;4f44
	ld (0ff19h),hl		;4f47
	ld (de),a		;4f4a
	ld e,l			;4f4b
	call po,03240h		;4f4c
sub_4f4fh:
	inc hl			;4f4f
	xor d			;4f50
	inc hl			;4f51
	dec e			;4f52
	ccf			;4f53
	rst 30h			;4f54
	inc l			;4f55
	jr nc,l4ed8h		;4f56
	jp p,0f34ch		;4f58
	ld (0a2aah),a		;4f5b
	inc hl			;4f5e
	jp m,l7ffah		;4f5f
	jr c,l4f39h		;4f62
l4f64h:
	jp p,01efdh		;4f64
sub_4f67h:
	jp z,04c4ch		;4f67
	rst 38h			;4f6a
	or 007h			;4f6b
	call z,0f47ch		;4f6d
	or e			;4f70
	and e			;4f71
l4f72h:
	jp nz,l6caah		;4f72
	ld (hl),e		;4f75
	xor c			;4f76
	ld h,e			;4f77
	and (hl)		;4f78
	daa			;4f79
	add a,h			;4f7a
	ld l,e			;4f7b
l4f7ch:
	rst 38h			;4f7c
	or d			;4f7d
	adc a,e			;4f7e
	ld e,h			;4f7f
	or d			;4f80
	ex de,hl		;4f81
	ld h,061h		;4f82
	ld l,d			;4f84
	add a,c			;4f85
	rst 28h			;4f86
	adc a,h			;4f87
	dec b			;4f88
	dec (hl)		;4f89
	ld d,e			;4f8a
	and d			;4f8b
	ld h,d			;4f8c
	rst 38h			;4f8d
	ret po			;4f8e
	dec a			;4f8f
	ld d,a			;4f90
	call z,01a97h		;4f91
	ld b,d			;4f94
	ld d,0f5h		;4f95
	ld de,l628ch		;4f97
	rst 38h			;4f9a
	nop			;4f9b
	call m,0c444h		;4f9c
	ld (l42a3h+1),hl	;4f9f
	ld b,d			;4fa2
	ld c,c			;4fa3
	ld (00080h),a		;4fa4
	jr nc,l4f7ch		;4fa7
	dec h			;4fa9
	ld b,e			;4faa
	call nz,sub_723bh	;4fab
	and d			;4fae
	ld d,b			;4faf
	ld b,h			;4fb0
	ld hl,(034f3h)		;4fb1
	call po,sub_51ach	;4fb4
	dec a			;4fb7
	ld a,l			;4fb8
	cp 000h			;4fb9
	inc hl			;4fbb
	inc h			;4fbc
	inc h			;4fbd
	ld b,e			;4fbe
	ld (0444ch),hl		;4fbf
	ld a,l			;4fc2
	ld c,a			;4fc3
	ld a,a			;4fc4
	ld (hl),c		;4fc5
	ld e,b			;4fc6
	or e			;4fc7
	ld a,(010adh)		;4fc8
	xor h			;4fcb
	ld (hl),e		;4fcc
	ld a,(0aaa4h)		;4fcd
	ld l,(hl)		;4fd0
	inc h			;4fd1
	ld a,a			;4fd2
	call p,02228h		;4fd3
	ld h,(hl)		;4fd6
	ld h,(hl)		;4fd7
	and h			;4fd8
	ret po			;4fd9
	ld b,(hl)		;4fda
	ld d,l			;4fdb
	defb 0ddh,00ch,0ddh ;illegal sequence	;4fdc
	ld (hl),032h		;4fdf
l4fe1h:
	adc a,c			;4fe1
	ld (bc),a		;4fe2
	ld (hl),d		;4fe3
	ld h,035h		;4fe4
	ld (hl),a		;4fe6
	ld (hl),h		;4fe7
	ld b,(hl)		;4fe8
	call nz,04d98h		;4fe9
	jp pe,09bffh		;4fec
	push de			;4fef
	jr nc,l5036h		;4ff0
	ld c,h			;4ff2
	ld b,e			;4ff3
	ld h,h			;4ff4
	and h			;4ff5
	xor c			;4ff6
	call sub_7e9dh		;4ff7
	ld d,l			;4ffa
	sub a			;4ffb
	add a,b			;4ffc
	inc (hl)		;4ffd
	ld (hl),e		;4ffe
	jp nz,0f423h		;4fff
	in d,(c)		;5002
	ld c,h			;5004
	pop af			;5005
	pop bc			;5006
	inc (hl)		;5007
	ld c,d			;5008
	cp d			;5009
	jr l4fe1h		;500a
	add a,h			;500c
	nop			;500d
	rst 18h			;500e
	and d			;500f
	ld b,a			;5010
	dec h			;5011
	rst 30h			;5012
	ld a,044h		;5013
	call p,0d27fh		;5015
	rst 0			;5018
	ld a,(070c1h)		;5019
	inc a			;501c
	ld b,e			;501d
	ld b,a			;501e
	inc sp			;501f
	ld (hl),b		;5020
	xor d			;5021
	and (hl)		;5022
	ld a,a			;5023
	ld (de),a		;5024
	add a,b			;5025
	or c			;5026
	add a,b			;5027
	add hl,bc		;5028
	ld l,d			;5029
	and e			;502a
	dec (hl)		;502b
	jp nz,000b0h		;502c
	ld (00163h),a		;502f
	xor d			;5032
	daa			;5033
	ld b,h			;5034
	ld (hl),d		;5035
l5036h:
	inc hl			;5036
	xor h			;5037
	rst 8			;5038
	add hl,hl		;5039
	sub d			;503a
	ld d,02bh		;503b
	inc hl			;503d
	ld h,b			;503e
	ld h,a			;503f
	ld a,a			;5040
	ld c,h			;5041
	ld b,d			;5042
	ld (hl),d		;5043
	inc a			;5044
	ld b,e			;5045
	and a			;5046
	cp 08ah			;5047
	rst 38h			;5049
	and h			;504a
	ld d,l			;504b
	inc hl			;504c
	jp nz,0c240h		;504d
	xor a			;5050
	jp nc,l50ech		;5051
	cp l			;5054
	jp m,02f15h		;5055
	rst 8			;5058
	ld (hl),h		;5059
	sub h			;505a
	inc hl			;505b
	dec (hl)		;505c
	add a,c			;505d
	nop			;505e
	rst 18h			;505f
	jp nz,l4a24h		;5060
	inc (hl)		;5063
	inc h			;5064
	adc a,e			;5065
	call nc,0ec7fh		;5066
	ld c,0fch		;5069
	rst 0			;506b
	cp d			;506c
	inc sp			;506d
	ld a,a			;506e
	inc hl			;506f
	add a,b			;5070
	rlca			;5071
	ld (hl),0cbh		;5072
	inc l			;5074
	adc a,c			;5075
	ret			;5076
	call nz,00b80h		;5077
	or d			;507a
	cp e			;507b
	ld l,c			;507c
	ld a,a			;507d
	ld a,(de)		;507e
	defb 0ddh,000h,0d6h ;illegal sequence	;507f
	inc h			;5082
	and (hl)		;5083
	and e			;5084
	jp nc,0fb98h		;5085
	and d			;5088
	daa			;5089
	and a			;508a
	ld a,a			;508b
	add a,c			;508c
	ld (de),a		;508d
	ld (02b08h),hl		;508e
	rst 38h			;5091
	ld d,e			;5092
	jp c,008a8h		;5093
l5096h:
	ld b,h			;5096
	and h			;5097
	add hl,hl		;5098
	call nz,034cfh		;5099
	ld h,a			;509c
	dec sp			;509d
	dec e			;509e
	ld c,h			;509f
	adc a,a			;50a0
	dec a			;50a1
	ld (hl),h		;50a2
	ld d,e			;50a3
	ld h,h			;50a4
	call p,00995h		;50a5
	ld b,h			;50a8
	out (011h),a		;50a9
	ld b,d			;50ab
	ld hl,(0a998h)		;50ac
	call m,034a4h		;50af
	daa			;50b2
	rst 8			;50b3
	rst 8			;50b4
	adc a,a			;50b5
	rst 38h			;50b6
	or c			;50b7
	ld b,d			;50b8
	add hl,hl		;50b9
	add a,e			;50ba
	ld d,l			;50bb
	ld e,h			;50bc
	ld b,e			;50bd
	dec b			;50be
	ld h,0f3h		;50bf
	djnz $-58		;50c1
	ld h,d			;50c3
	cp h			;50c4
	ld b,c			;50c5
	ld b,h			;50c6
	ld (hl),a		;50c7
	ld (hl),a		;50c8
	ld c,b			;50c9
	dec hl			;50ca
	add a,d			;50cb
	ld h,0d0h		;50cc
	ld a,a			;50ce
l50cfh:
	pop de			;50cf
	dec e			;50d0
	ld de,04cd3h		;50d1
sub_50d4h:
	push de			;50d4
	sbc a,c			;50d5
	ld l,d			;50d6
	dec b			;50d7
	or h			;50d8
	ld (hl),a		;50d9
	ld hl,(02462h)		;50da
	jp p,0cc44h		;50dd
	ld (hl),d		;50e0
	add a,b			;50e1
	ld h,e			;50e2
	and a			;50e3
	ld a,a			;50e4
	ld c,b			;50e5
	jp nz,l6342h		;50e6
	inc (hl)		;50e9
	ld b,d			;50ea
	ld e,a			;50eb
l50ech:
	xor h			;50ec
	inc hl			;50ed
	push hl			;50ee
	nop			;50ef
	or d			;50f0
	daa			;50f1
	ld c,a			;50f2
	call z,03327h		;50f3
	out (0aeh),a		;50f6
	or h			;50f8
	add a,b			;50f9
	ei			;50fa
	dec a			;50fb
	inc sp			;50fc
	ld (hl),d		;50fd
	rst 8			;50fe
	call nz,0a88ah		;50ff
	rla			;5102
	sbc a,c			;5103
	sub a			;5104
	jp m,034fdh		;5105
	sbc a,e			;5108
	ld b,a			;5109
	inc h			;510a
l510bh:
	cpl			;510b
	ld a,a			;510c
	ret c			;510d
	rst 8			;510e
	pop de			;510f
	ld a,a			;5110
	dec (hl)		;5111
	dec (hl)		;5112
	ld d,h			;5113
	rst 38h			;5114
	add hl,hl		;5115
	ld bc,l6612h		;5116
	call nz,009f7h		;5119
	inc l			;511c
	push bc			;511d
	and h			;511e
	add a,c			;511f
	push bc			;5120
	cp e			;5121
	add a,d			;5122
	ld h,d			;5123
	dec a			;5124
	ld a,a			;5125
	cp h			;5126
	add a,b			;5127
	dec bc			;5128
	push de			;5129
	pop de			;512a
	out (0a3h),a		;512b
	ld c,h			;512d
	ld c,009h		;512e
	ld l,d			;5130
	inc h			;5131
	add a,c			;5132
	ld c,b			;5133
	add a,b			;5134
	push bc			;5135
	dec hl			;5136
	or c			;5137
	and h			;5138
	add a,b			;5139
	ret nz			;513a
	ld c,d			;513b
	inc h			;513c
	and e			;513d
	scf			;513e
	inc hl			;513f
	ld b,(hl)		;5140
	inc a			;5141
	or d			;5142
	add hl,bc		;5143
	ld hl,(0a442h)		;5144
	or d			;5147
	inc de			;5148
	inc h			;5149
	ld b,e			;514a
	and h			;514b
	ld c,a			;514c
	sub d			;514d
	jp z,l7f33h		;514e
	jp pe,01dcah		;5151
	dec hl			;5154
	and d			;5155
	ld a,(0884fh)		;5156
	ld hl,04255h		;5159
	and a			;515c
	rst 30h			;515d
	rst 38h			;515e
	ld e,a			;515f
	ld h,h			;5160
	bit 1,h			;5161
	ld b,e			;5163
	ld a,a			;5164
	inc d			;5165
	ld d,l			;5166
	ld d,h			;5167
	jp 080feh		;5168
	and (hl)		;516b
	ld h,(hl)		;516c
	ld b,h			;516d
	ld h,0a6h		;516e
	ld d,h			;5170
	ld (l748ch),hl		;5171
	sbc a,d			;5174
	add a,c			;5175
	add a,b			;5176
	ld d,b			;5177
	ld hl,(08b35h)		;5178
	cp 07fh			;517b
	ld sp,0d304h		;517d
	dec de			;5180
	jr z,l51bdh		;5181
	adc a,a			;5183
	or e			;5184
	ret pe			;5185
	and b			;5186
	pop de			;5187
	call p,0327fh		;5188
	cp e			;518b
	ld a,a			;518c
	jp nc,07322h		;518d
	ld (020d9h),a		;5190
	ld (0a33ch),hl		;5193
	and e			;5196
	nop			;5197
	and d			;5198
	inc h			;5199
	ld (hl),h		;519a
	ld (hl),h		;519b
	call m,sub_43c2h	;519c
	and l			;519f
	add hl,sp		;51a0
	inc sp			;51a1
	inc h			;51a2
	ld c,a			;51a3
	dec b			;51a4
	ld b,d			;51a5
	and e			;51a6
	ld e,d			;51a7
	and h			;51a8
	inc l			;51a9
l51aah:
	add a,b			;51aa
	inc de			;51ab
sub_51ach:
	add a,c			;51ac
	sub c			;51ad
	or l			;51ae
	ld bc,022c3h		;51af
	ld (hl),d		;51b2
	ld b,h			;51b3
	inc hl			;51b4
	inc (hl)		;51b5
	cp 01fh			;51b6
	ld h,h			;51b8
	rst 38h			;51b9
	ld h,d			;51ba
	ld (hl),e		;51bb
	xor d			;51bc
l51bdh:
	ld (hl),h		;51bd
	ld d,a			;51be
	jp z,0fd8ch		;51bf
	ld c,c			;51c2
	ld h,(hl)		;51c3
	ld e,(iy+024h)		;51c4
	ld h,d			;51c7
	cp d			;51c8
	ld c,e			;51c9
	ld h,h			;51ca
	add a,b			;51cb
	jr l524dh		;51cc
	ld de,l7fd9h		;51ce
	ld (bc),a		;51d1
	dec e			;51d2
	ex (sp),hl		;51d3
	ld l,b			;51d4
	ld (hl),0b2h		;51d5
	adc a,(hl)		;51d7
	call z,sub_7ce5h	;51d8
	add a,e			;51db
	ld h,b			;51dc
	dec hl			;51dd
	or a			;51de
	ld c,h			;51df
	and d			;51e0
	or e			;51e1
	exx			;51e2
	ld l,b			;51e3
	push af			;51e4
	sub l			;51e5
	and h			;51e6
	sub h			;51e7
	ld hl,(0b2f3h)		;51e8
	sbc a,h			;51eb
	rst 18h			;51ec
	ret nz			;51ed
	pop hl			;51ee
	and e			;51ef
	ld b,d			;51f0
	sub e			;51f1
sub_51f2h:
	add a,a			;51f2
	ld a,a			;51f3
	pop bc			;51f4
l51f5h:
	ld l,d			;51f5
	adc a,h			;51f6
	inc hl			;51f7
	cpl			;51f8
	push bc			;51f9
l51fah:
	jp pe,01217h		;51fa
	ld bc,0323fh		;51fd
	daa			;5200
	ld c,d			;5201
	ld b,e			;5202
	daa			;5203
	call p,01380h		;5204
	rst 8			;5207
	ld a,a			;5208
	ret p			;5209
	add hl,bc		;520a
	scf			;520b
	jp z,0a22eh		;520c
	inc sp			;520f
l5210h:
	dec h			;5210
	cp h			;5211
	rst 18h			;5212
	ld c,e			;5213
	ld h,062h		;5214
	add a,e			;5216
	pop bc			;5217
	or a			;5218
	or d			;5219
	ld h,0ffh		;521a
	dec e			;521c
	inc hl			;521d
	ld de,09480h		;521e
	inc sp			;5221
	add a,d			;5222
	sub l			;5223
	dec de			;5224
	ld a,d			;5225
	xor (hl)		;5226
	ld (hl),0a5h		;5227
	jr l52aah		;5229
	ld b,h			;522b
	ret z			;522c
	add a,b			;522d
	ld a,d			;522e
	ld b,h			;522f
	add hl,hl		;5230
	ld c,d			;5231
	jp z,0228eh		;5232
	rst 38h			;5235
	inc d			;5236
	ld c,h			;5237
	jp m,l7533h		;5238
	add a,(hl)		;523b
	ld e,h			;523c
	ld c,a			;523d
	ret nc			;523e
	ret p			;523f
	xor d			;5240
	dec d			;5241
	inc l			;5242
	inc sp			;5243
	ccf			;5244
	jp 0a952h		;5245
	and (hl)		;5248
	xor h			;5249
	ret			;524a
	ld l,034h		;524b
l524dh:
	ld a,a			;524d
	cp 0fbh			;524e
	ld a,a			;5250
	ld a,0a2h		;5251
	sub c			;5253
	rst 28h			;5254
	ld a,(00c7bh)		;5255
	dec sp			;5258
	jp nz,030a6h		;5259
	djnz l5210h		;525c
	inc l			;525e
	ld b,d			;525f
	ld a,(hl)		;5260
	ld (0234bh),hl		;5261
	xor d			;5264
	scf			;5265
	add a,e			;5266
	ld d,l			;5267
	ld (hl),d		;5268
	add a,b			;5269
	rst 38h			;526a
	inc a			;526b
	ld c,e			;526c
	add a,h			;526d
	inc b			;526e
	dec e			;526f
	ld d,e			;5270
	ld a,a			;5271
	and (hl)		;5272
	sbc a,d			;5273
	sbc a,e			;5274
	defb 0edh ;next byte illegal after ed	;5275
	ld hl,(0814dh)		;5276
	ld c,c			;5279
	rst 38h			;527a
	inc (hl)		;527b
	nop			;527c
	jp nz,019a3h		;527d
	ccf			;5280
	ld (033c2h),hl		;5281
	xor e			;5284
	ld h,0b5h		;5285
	ld h,h			;5287
	ex af,af'		;5288
	daa			;5289
l528ah:
	xor 07fh		;528a
	ld b,c			;528c
	ld l,c			;528d
	inc l			;528e
	out (0f4h),a		;528f
	ld (hl),l		;5291
	ret m			;5292
	ld h,l			;5293
	ex af,af'		;5294
	defb 0fdh,092h,03ah ;illegal sequence	;5295
	ret nc			;5298
	call 0fa00h		;5299
	ld a,a			;529c
	pop de			;529d
	cp d			;529e
	ret m			;529f
	ld b,0a2h		;52a0
	ld l,d			;52a2
	scf			;52a3
	rst 0			;52a4
	ld a,(hl)		;52a5
	push bc			;52a6
	ld sp,07b47h		;52a7
l52aah:
	call m,0b449h		;52aa
	in a,(0a2h)		;52ad
	sbc a,0c4h		;52af
	ld b,a			;52b1
	ld h,e			;52b2
	add a,b			;52b3
	or c			;52b4
	add a,e			;52b5
	dec hl			;52b6
	add a,l			;52b7
	jr $-33			;52b8
	adc a,e			;52ba
	add a,b			;52bb
	sub e			;52bc
sub_52bdh:
	ld c,c			;52bd
	sbc a,e			;52be
	adc a,c			;52bf
	dec hl			;52c0
	ld c,a			;52c1
	ei			;52c2
	ld c,b			;52c3
	rst 38h			;52c4
	jp z,08181h		;52c5
	call p,04c2ah		;52c8
	inc h			;52cb
	jp nz,0847eh		;52cc
	ld (hl),h		;52cf
	call nz,sub_4b8fh	;52d0
	jp z,09de8h		;52d3
	ld b,h			;52d6
	ld a,a			;52d7
	add a,l			;52d8
	ld (hl),h		;52d9
	ld b,d			;52da
	inc l			;52db
	ccf			;52dc
	and (hl)		;52dd
	inc b			;52de
	ld a,a			;52df
	ld (hl),h		;52e0
	add a,c			;52e1
	ret po			;52e2
	cpl			;52e3
	ld b,d			;52e4
	rst 30h			;52e5
	jr c,l528ah		;52e6
	ld a,a			;52e8
	adc a,a			;52e9
	adc a,a			;52ea
	rst 38h			;52eb
l52ech:
	cp d			;52ec
	pop bc			;52ed
	and h			;52ee
	ld hl,(l4dbdh)		;52ef
	or a			;52f2
	ld a,a			;52f3
	adc a,c			;52f4
	jp m,l77b4h		;52f5
	inc (hl)		;52f8
	or a			;52f9
l52fah:
	ex (sp),hl		;52fa
	and c			;52fb
	adc a,c			;52fc
	ld (hl),h		;52fd
	jp nz,08079h		;52fe
	ld b,l			;5301
	sub a			;5302
	ld c,(hl)		;5303
	defb 0ddh,07fh,0e5h ;illegal sequence	;5304
	add a,d			;5307
	ld (l4ae9h),a		;5308
	ld h,(hl)		;530b
	xor 0cdh		;530c
	add a,c			;530e
	and d			;530f
	add a,h			;5310
	rst 8			;5311
	ld h,l			;5312
	ei			;5313
	rst 10h			;5314
	push af			;5315
	inc h			;5316
	ld c,a			;5317
l5318h:
	dec c			;5318
	ld b,a			;5319
	defb 0fdh,0d1h,001h ;illegal sequence	;531a
	call m,09bbah		;531d
	and e			;5320
	ld (hl),h		;5321
l5322h:
	rst 38h			;5322
	cp e			;5323
	ex af,af'		;5324
	ld b,h			;5325
	ld a,a			;5326
	rst 8			;5327
	xor e			;5328
	ld c,047h		;5329
	rst 30h			;532b
	sub d			;532c
	sub a			;532d
	ld b,c			;532e
	sbc a,d			;532f
	jp m,l48fch		;5330
	sub a			;5333
	ret z			;5334
	cp 0fah			;5335
	ret p			;5337
	cp 0b9h			;5338
	xor b			;533a
	or h			;533b
	defb 0edh ;next byte illegal after ed	;533c
	jr nz,l52fah		;533d
	call nz,0c8bbh		;533f
	nop			;5342
	call m,0c495h		;5343
	cp 026h			;5346
	ld d,l			;5348
	ret pe			;5349
	dec de			;534a
	ld h,064h		;534b
	ld c,h			;534d
	pop de			;534e
	ld h,a			;534f
	add a,d			;5350
	daa			;5351
	dec e			;5352
	ld d,c			;5353
	ld a,a			;5354
	ld d,d			;5355
	add a,d			;5356
sub_5357h:
	jr l538eh		;5357
	and d			;5359
	cp 0a8h			;535a
	inc h			;535c
	call 003ddh		;535d
	or d			;5360
	sub 0f3h		;5361
	daa			;5363
	ld c,h			;5364
	cp (hl)			;5365
	ld h,h			;5366
	ld a,(bc)		;5367
	bit 4,a			;5368
	xor e			;536a
	ld (hl),a		;536b
	ld h,h			;536c
	ld d,c			;536d
	sub h			;536e
	ld b,d			;536f
	inc bc			;5370
	ld a,d			;5371
	cp a			;5372
	rst 8			;5373
	and c			;5374
	ld b,h			;5375
	rst 30h			;5376
	add a,h			;5377
	sub c			;5378
	sbc a,h			;5379
	rrca			;537a
	rst 38h			;537b
	rst 30h			;537c
	rst 38h			;537d
	ld a,(hl)		;537e
	or (hl)			;537f
	nop			;5380
	ld b,h			;5381
	rst 0			;5382
	push hl			;5383
	cp e			;5384
	ld h,c			;5385
	ld b,a			;5386
	ld a,a			;5387
	or a			;5388
	ld (hl),a		;5389
	rst 30h			;538a
	cp d			;538b
	ld c,h			;538c
	ret po			;538d
l538eh:
	ld a,(hl)		;538e
	ld h,(hl)		;538f
	inc sp			;5390
	inc sp			;5391
	ld a,h			;5392
	call nz,0830ch		;5393
	inc sp			;5396
	add a,c			;5397
	add a,a			;5398
	ld sp,l787fh		;5399
	adc a,c			;539c
	ld hl,(01153h)		;539d
	add a,d			;53a0
	inc c			;53a1
	xor e			;53a2
	cp h			;53a3
	ld d,b			;53a4
	call c,0808ch		;53a5
	ld a,h			;53a8
	ld c,e			;53a9
	cp h			;53aa
	ld b,d			;53ab
	call m,0f44bh		;53ac
l53afh:
	ld (hl),d		;53af
	cp h			;53b0
	sbc a,b			;53b1
	dec hl			;53b2
	or e			;53b3
	sub a			;53b4
	ld (08af8h),hl		;53b5
	sub c			;53b8
	ld l,l			;53b9
	sbc a,e			;53ba
	adc a,h			;53bb
	ret nz			;53bc
	ld d,c			;53bd
	xor e			;53be
	and c			;53bf
	sbc a,b			;53c0
	ei			;53c1
	ld c,b			;53c2
	ld c,h			;53c3
	jp l5db4h		;53c4
	res 0,a			;53c7
	xor a			;53c9
	ld b,h			;53ca
	xor l			;53cb
	xor h			;53cc
	rst 38h			;53cd
	ld a,l			;53ce
	add a,d			;53cf
	ld a,(0a772h)		;53d0
	ld a,h			;53d3
	ld a,(de)		;53d4
	call nz,02277h		;53d5
	cp 001h			;53d8
	ld h,d			;53da
	ld h,02ch		;53db
	ld (hl),l		;53dd
	ld a,(08362h)		;53de
	sub h			;53e1
	rst 30h			;53e2
	ld e,d			;53e3
	in a,(04ah)		;53e4
	ex de,hl		;53e6
	xor b			;53e7
	res 0,e			;53e8
	ld de,03d3ah		;53ea
	ld de,0e280h		;53ed
	ld a,(l7ea6h)		;53f0
	add a,e			;53f3
	ld b,(hl)		;53f4
	or a			;53f5
	pop hl			;53f6
	inc hl			;53f7
	rst 8			;53f8
	add a,b			;53f9
	inc l			;53fa
	add a,c			;53fb
	ld a,(bc)		;53fc
	cp a			;53fd
	set 1,h			;53fe
	ld c,e			;5400
	inc b			;5401
	rst 38h			;5402
	jr nc,l53afh		;5403
	ld b,a			;5405
	ld b,d			;5406
l5407h:
	and h			;5407
	rrca			;5408
	or a			;5409
	ld (hl),h		;540a
	ld (hl),a		;540b
	call z,0bb25h		;540c
	rlca			;540f
	sub a			;5410
	ld h,c			;5411
	and e			;5412
	cp a			;5413
	ld d,(hl)		;5414
	ld (bc),a		;5415
	bit 1,h			;5416
	or h			;5418
	rst 8			;5419
	cp h			;541a
	add a,h			;541b
	jr z,$-102		;541c
	add a,0cfh		;541e
	add a,b			;5420
	dec a			;5421
	xor l			;5422
	ld c,e			;5423
	ret nz			;5424
	adc a,d			;5425
	dec hl			;5426
	ld (002adh),a		;5427
	call z,023b2h		;542a
	ld (hl),0fbh		;542d
	pop hl			;542f
	inc sp			;5430
	ld d,h			;5431
	jp nz,05e7eh		;5432
	ld sp,hl		;5435
	ld d,055h		;5436
	ld d,e			;5438
	add a,b			;5439
	adc a,a			;543a
	or d			;543b
	sbc a,d			;543c
	sub h			;543d
	rst 0			;543e
	sub e			;543f
	dec l			;5440
	ld h,l			;5441
	add a,b			;5442
	adc a,d			;5443
	add a,d			;5444
	ld l,b			;5445
	xor d			;5446
l5447h:
	ld h,094h		;5447
	dec e			;5449
	ld (hl),a		;544a
	ld d,e			;544b
	add a,b			;544c
	ld (hl),d		;544d
	call m,0b451h		;544e
	inc b			;5451
	add a,c			;5452
	ld c,c			;5453
	adc a,(hl)		;5454
	sub d			;5455
	pop hl			;5456
	xor e			;5457
	rst 8			;5458
	add a,c			;5459
	jr nz,l5407h		;545a
	bit 7,e			;545c
	inc b			;545e
	xor e			;545f
	ld c,e			;5460
	xor d			;5461
	cp h			;5462
	cp d			;5463
	defb 0fdh,043h,0cch ;illegal sequence	;5464
	cp d			;5467
	xor a			;5468
	add a,a			;5469
	ld (hl),d		;546a
	ld a,l			;546b
	sbc a,d			;546c
	jr nz,$+77		;546d
	or c			;546f
sub_5470h:
	sub l			;5470
	defb 0fdh,0f6h,0c6h ;illegal sequence	;5471
	xor b			;5474
	inc b			;5475
	xor d			;5476
	scf			;5477
	ld (hl),d		;5478
	and l			;5479
	and l			;547a
	and (hl)		;547b
	di			;547c
	call nc,sub_4cf9h	;547d
	adc a,d			;5480
	daa			;5481
	push af			;5482
	call po,0eed2h		;5483
	ex af,af'		;5486
	ld a,(bc)		;5487
	dec sp			;5488
	or d			;5489
	or h			;548a
	ld (hl),h		;548b
	ld e,(hl)		;548c
	push bc			;548d
	ld l,b			;548e
	add a,(hl)		;548f
	sub h			;5490
	dec (hl)		;5491
	add a,c			;5492
	defb 0ddh,083h,093h ;illegal sequence	;5493
	add a,c			;5496
	jr l54c4h		;5497
	dec hl			;5499
	sbc a,c			;549a
	ld h,a			;549b
	rst 38h			;549c
	add hl,de		;549d
	nop			;549e
	exx			;549f
	ld (de),a		;54a0
	ld a,e			;54a1
	out (c),c		;54a2
	xor 031h		;54a4
	ld b,h			;54a6
	cp h			;54a7
	add a,c			;54a8
	ld d,b			;54a9
	xor h			;54aa
	cp d			;54ab
	or a			;54ac
	ld a,(bc)		;54ad
	ld a,d			;54ae
	xor e			;54af
	ld c,d			;54b0
	xor e			;54b1
	adc a,d			;54b2
	add hl,bc		;54b3
	jp m,0fb3bh		;54b4
	inc hl			;54b7
	ret p			;54b8
	jr nc,l5532h		;54b9
	call p,0adb4h		;54bb
	ld hl,0effdh		;54be
	push bc			;54c1
	ld a,a			;54c2
	or e			;54c3
l54c4h:
	ld iy,l44b7h		;54c4
	call nz,0f835h		;54c8
	sbc a,h			;54cb
	adc a,c			;54cc
	ld d,b			;54cd
	adc a,b			;54ce
	call z,sub_7b32h	;54cf
	cp e			;54d2
	ei			;54d3
	ld e,b			;54d4
	cp d			;54d5
	sub d			;54d6
	inc hl			;54d7
	ld c,c			;54d8
	ld b,a			;54d9
	jp z,09b66h		;54da
	ret pe			;54dd
	rrca			;54de
	ld (hl),a		;54df
	ld b,a			;54e0
	inc sp			;54e1
	add a,a			;54e2
	ret po			;54e3
	push de			;54e4
	ld d,l			;54e5
	push de			;54e6
	nop			;54e7
	ld d,e			;54e8
	ld hl,019ffh		;54e9
	ld d,l			;54ec
	push bc			;54ed
	add a,l			;54ee
	ld hl,0ff4ch		;54ef
	dec b			;54f2
	cp c			;54f3
	push bc			;54f4
	and b			;54f5
	ld c,d			;54f6
	inc a			;54f7
	ld c,d			;54f8
	xor h			;54f9
	jp z,03b01h		;54fa
	jp 0ca3ch		;54fd
	and h			;5500
	jp 011a4h		;5501
	cp c			;5504
	ld d,005h		;5505
	daa			;5507
	call nz,0cf06h		;5508
	nop			;550b
	inc sp			;550c
	rst 38h			;550d
	push af			;550e
	ret nc			;550f
	and d			;5510
	ld b,h			;5511
	or d			;5512
l5513h:
	add a,b			;5513
	xor h			;5514
	adc a,h			;5515
	nop			;5516
	cp h			;5517
	push af			;5518
	xor d			;5519
	pop de			;551a
	inc bc			;551b
	exx			;551c
	ret nc			;551d
	ld (hl),h		;551e
	inc de			;551f
	adc a,d			;5520
	ld c,a			;5521
	ld a,d			;5522
	rst 20h			;5523
	sbc a,e			;5524
	or h			;5525
	sbc a,c			;5526
	call po,0c295h		;5527
	nop			;552a
	ld (08e22h),a		;552b
	inc l			;552e
	ld (0159bh),hl		;552f
l5532h:
	ld c,h			;5532
	ld a,a			;5533
	ld d,l			;5534
	ld b,l			;5535
	jp po,0d98ah		;5536
	ld b,093h		;5539
	push bc			;553b
	add a,c			;553c
	ccf			;553d
	jp z,0cb3ch		;553e
	ld a,l			;5541
	ld (081bch),hl		;5542
	jp pe,08ef4h		;5545
	ld (0d286h),a		;5548
	inc d			;554b
	ret			;554c
	ld (bc),a		;554d
	xor b			;554e
	ld h,c			;554f
	call nz,sub_5f81h	;5550
	ld e,h			;5553
	cp a			;5554
	sbc a,h			;5555
	nop			;5556
	cp b			;5557
	rst 8			;5558
	ld l,h			;5559
	sbc a,l			;555a
	xor a			;555b
	jp (hl)			;555c
	djnz $+1		;555d
	ld (hl),04ah		;555f
	jp c,00df4h		;5561
	bit 6,c			;5564
	cp e			;5566
	nop			;5567
	call p,00d47h		;5568
	ld de,l7f73h		;556b
	call nz,05e2dh		;556e
	defb 0edh ;next byte illegal after ed	;5571
	di			;5572
	ld (bc),a		;5573
	sub b			;5574
	jp pe,0014bh		;5575
	xor h			;5578
l5579h:
	res 7,a			;5579
	rst 30h			;557b
	cp h			;557c
	jp m,081b4h		;557d
	ld h,l			;5580
	sbc a,d			;5581
	rst 28h			;5582
	ld (bc),a		;5583
	ld d,e			;5584
	add a,(hl)		;5585
	sbc a,d			;5586
	adc a,e			;5587
	ld b,l			;5588
	adc a,e			;5589
	rst 38h			;558a
	rra			;558b
	ld e,a			;558c
	ld a,a			;558d
	ld a,c			;558e
	ld l,l			;558f
	ld bc,0059bh		;5590
	nop			;5593
	push hl			;5594
	cp c			;5595
	add hl,hl		;5596
	ld c,0e7h		;5597
	ret p			;5599
	ld a,e			;559a
	sbc a,e			;559b
	inc e			;559c
	add hl,hl		;559d
	call p,0d47eh		;559e
	ld d,(hl)		;55a1
	call m,035f3h		;55a2
	rst 0			;55a5
	sbc a,h			;55a6
	ld d,h			;55a7
	call p,09e4fh		;55a8
	ld bc,0ecfbh		;55ab
	rst 0			;55ae
	pop af			;55af
	or l			;55b0
	halt			;55b1
	cp d			;55b2
	xor (hl)		;55b3
	sub l			;55b4
	dec c			;55b5
	add a,b			;55b6
	cp l			;55b7
	sbc a,d			;55b8
	nop			;55b9
	ld sp,01d3eh		;55ba
	ld e,a			;55bd
	ld (024ffh),hl		;55be
	sbc a,d			;55c1
	sub (hl)		;55c2
	and l			;55c3
	rra			;55c4
	sbc a,d			;55c5
	ld h,(hl)		;55c6
	rlca			;55c7
	ld c,01fh		;55c8
	rst 38h			;55ca
	pop af			;55cb
	dec bc			;55cc
	ld l,007h		;55cd
	inc c			;55cf
l55d0h:
	ld sp,0f112h		;55d0
	ld a,(bc)		;55d3
	cp a			;55d4
	nop			;55d5
	adc a,b			;55d6
	push af			;55d7
	adc a,l			;55d8
	ld (hl),015h		;55d9
	rst 38h			;55db
	xor (hl)		;55dc
	or b			;55dd
	add hl,bc		;55de
	jp p,0f85dh		;55df
	inc (hl)		;55e2
	dec c			;55e3
	pop de			;55e4
	ld d,d			;55e5
	dec b			;55e6
	cp b			;55e7
	dec e			;55e8
	inc h			;55e9
	ret m			;55ea
	ld a,a			;55eb
	halt			;55ec
	ld (bc),a		;55ed
	ld l,c			;55ee
	and a			;55ef
	ld bc,01105h		;55f0
	ld c,03ah		;55f3
	ld a,b			;55f5
	ld de,l7ffch		;55f6
	call c,0c8e3h		;55f9
	in a,(0bch)		;55fc
	or 0d7h			;55fe
	ld a,a			;5600
	dec (hl)		;5601
	inc (hl)		;5602
	ret nz			;5603
	dec d			;5604
	ld l,c			;5605
	and d			;5606
	rla			;5607
	ld h,(hl)		;5608
	ld l,a			;5609
	inc h			;560a
	call nz,sub_7cffh	;560b
	ld e,b			;560e
	ld (bc),a		;560f
	ld de,0838eh		;5610
	ld a,b			;5613
	dec bc			;5614
	adc a,(hl)		;5615
	add a,h			;5616
	inc hl			;5617
	add a,c			;5618
	ld a,a			;5619
	ld a,a			;561a
	add hl,hl		;561b
	dec (hl)		;561c
	ld (hl),007h		;561d
	inc de			;561f
	cpl			;5620
	ld h,032h		;5621
	ld a,a			;5623
	rrca			;5624
	rst 18h			;5625
	inc e			;5626
	ld (hl),a		;5627
	push de			;5628
	rla			;5629
	ld (bc),a		;562a
	ld (hl),02fh		;562b
	inc hl			;562d
	rst 38h			;562e
	ld sp,0ffafh		;562f
	rra			;5632
	inc l			;5633
	add a,e			;5634
	ld (hl),c		;5635
	ld l,l			;5636
	sbc a,h			;5637
	halt			;5638
	jr c,$+1		;5639
	inc c			;563b
	call m,0947fh		;563c
	jp p,088dah		;563f
	dec h			;5642
	ld e,c			;5643
	ld (034f2h),a		;5644
	ld h,e			;5647
	ld d,e			;5648
	inc c			;5649
	ld h,l			;564a
	cpl			;564b
	rst 30h			;564c
	rra			;564d
	jr nc,$+39		;564e
	ld (0fa04h),hl		;5650
	ld d,e			;5653
	ld b,l			;5654
	ld h,09ah		;5655
	dec h			;5657
	ld (09c2fh),a		;5658
	sbc a,a			;565b
	rst 38h			;565c
	adc a,e			;565d
sub_565eh:
	ld (hl),a		;565e
	adc a,h			;565f
	inc bc			;5660
	adc a,(hl)		;5661
	rst 38h			;5662
	inc sp			;5663
	ld (hl),h		;5664
	inc c			;5665
	xor d			;5666
	adc a,a			;5667
	ld e,a			;5668
	ld a,a			;5669
	jp nz,02501h		;566a
	ld (hl),0ffh		;566d
	ld hl,03252h		;566f
l5672h:
	ld l,a			;5672
	call p,0dda4h		;5673
	jp (hl)			;5676
	ld h,061h		;5677
	ld a,a			;5679
	ld a,b			;567a
	rst 30h			;567b
	ld d,l			;567c
sub_567dh:
	ld b,a			;567d
	and d			;567e
	sbc a,c			;567f
	ld hl,035a5h		;5680
	and e			;5683
	cpl			;5684
	inc e			;5685
	inc d			;5686
	and d			;5687
	cpl			;5688
	and c			;5689
	sub c			;568a
	and b			;568b
	ld c,d			;568c
	and b			;568d
	ld de,02f51h		;568e
	add a,h			;5691
	ld b,a			;5692
	sbc a,a			;5693
	pop bc			;5694
	nop			;5695
	ei			;5696
	call nz,sub_51f2h	;5697
	exx			;569a
	ld h,b			;569b
	ld h,06fh		;569c
	jp p,0a31ah		;569e
	ld d,c			;56a1
	pop de			;56a2
	dec c			;56a3
	ld d,08fh		;56a4
	ld (hl),h		;56a6
	ld de,0e553h		;56a7
	jr c,l5711h		;56aa
	and d			;56ac
	sub c			;56ad
	inc d			;56ae
	sbc a,d			;56af
	defb 0fdh,012h,0c6h ;illegal sequence	;56b0
	ld a,(bc)		;56b3
	defb 0fdh,014h,044h ;illegal sequence	;56b4
	sbc a,b			;56b7
	dec h			;56b8
	sub d			;56b9
	and l			;56ba
	xor d			;56bb
	ld l,037h		;56bc
	or e			;56be
	ret c			;56bf
	xor b			;56c0
	call po,0efe2h		;56c1
	cp b			;56c4
	adc a,l			;56c5
	di			;56c6
	jp po,0f702h		;56c7
	ld d,a			;56ca
	rlca			;56cb
	jr c,$+27		;56cc
	ld l,a			;56ce
	call m,0e080h		;56cf
	ld c,h			;56d2
	sub 062h		;56d3
	ld (hl),025h		;56d5
	ld d,d			;56d7
	ld l,e			;56d8
	sbc a,046h		;56d9
	ld e,a			;56db
	dec c			;56dc
	add hl,bc		;56dd
	ld l,a			;56de
	inc hl			;56df
	ld d,c			;56e0
	jp pe,09427h		;56e1
	ld (hl),e		;56e4
	nop			;56e5
	ld b,032h		;56e6
	dec c			;56e8
	ret m			;56e9
	ld h,l			;56ea
	cpl			;56eb
	and c			;56ec
	ld h,b			;56ed
	dec d			;56ee
	and (hl)		;56ef
	ld h,(hl)		;56f0
	ld b,c			;56f1
	cpl			;56f2
	ld c,055h		;56f3
	ld hl,(01361h)		;56f5
	add a,b			;56f8
	inc l			;56f9
	call p,0b7eeh		;56fa
	ld a,(bc)		;56fd
	ld d,c			;56fe
sub_56ffh:
	and l			;56ff
	ld a,(de)		;5700
	ld a,h			;5701
	ret p			;5702
	jp po,0b9efh		;5703
	sbc a,(hl)		;5706
	call m,00237h		;5707
	ld a,a			;570a
	adc a,e			;570b
	adc a,d			;570c
	ld h,h			;570d
	ei			;570e
	ld h,c			;570f
	rlca			;5710
l5711h:
	ld d,(hl)		;5711
	dec d			;5712
	cp e			;5713
	ld a,e			;5714
	call z,0d87fh		;5715
	ld (de),a		;5718
	dec l			;5719
	ld h,(hl)		;571a
	ld h,e			;571b
	ld sp,hl		;571c
	add a,a			;571d
	inc hl			;571e
	rst 18h			;571f
	sub h			;5720
	inc b			;5721
	add a,a			;5722
	push bc			;5723
	xor d			;5724
	ld (0adedh),hl		;5725
	sub c			;5728
	ex af,af'		;5729
	ld d,(hl)		;572a
	jp m,091afh		;572b
	ld h,d			;572e
	adc a,b			;572f
	rla			;5730
	ccf			;5731
	ld hl,(0a032h)		;5732
	add a,a			;5735
	inc de			;5736
	ld hl,(0072ch)		;5737
	ld h,(hl)		;573a
	ld h,(hl)		;573b
	ld a,a			;573c
	ld a,(004fch)		;573d
	rst 30h			;5740
	ld h,(hl)		;5741
	ld l,d			;5742
	ld h,(hl)		;5743
	add a,b			;5744
	ld c,d			;5745
	ld l,a			;5746
	call p,080e2h		;5747
	sbc a,h			;574a
	dec l			;574b
	adc a,(hl)		;574c
	adc a,b			;574d
	rst 38h			;574e
	and 099h		;574f
	ld d,(hl)		;5751
	cp e			;5752
	ld h,a			;5753
	sub 0b1h		;5754
	ex (sp),hl		;5756
	ld a,a			;5757
	adc a,e			;5758
	sub (hl)		;5759
	rst 38h			;575a
	ld e,(hl)		;575b
	sub l			;575c
	ld (hl),053h		;575d
	ld c,a			;575f
	adc a,b			;5760
	inc h			;5761
	ld (hl),e		;5762
	ld d,c			;5763
	ld d,c			;5764
	ld e,c			;5765
	xor a			;5766
	and 001h		;5767
	ld l,c			;5769
	ld a,(hl)		;576a
	dec (hl)		;576b
	ld h,c			;576c
	or 018h			;576d
	ld d,c			;576f
	inc hl			;5770
	ld h,l			;5771
	ld (08580h),a		;5772
	jp p,0c198h		;5775
	and c			;5778
	ld d,c			;5779
	ld d,d			;577a
	xor a			;577b
	ld (08697h),hl		;577c
	adc a,e			;577f
	ld h,(hl)		;5780
	adc a,l			;5781
	ld e,b			;5782
sub_5783h:
	rst 10h			;5783
	add a,d			;5784
	ld h,l			;5785
	ld d,a			;5786
	ld a,a			;5787
	or 00bh			;5788
	dec hl			;578a
	ld l,d			;578b
	ld h,l			;578c
	call p,0ed99h		;578d
	ld e,e			;5790
	di			;5791
	and 0ffh		;5792
	inc a			;5794
	or h			;5795
	add hl,de		;5796
	ld d,(hl)		;5797
	ld h,(hl)		;5798
	add a,c			;5799
	nop			;579a
	ld l,h			;579b
	call p,05675h		;579c
	ld a,h			;579f
	ld a,a			;57a0
	push af			;57a1
	rra			;57a2
	ld h,e			;57a3
	ld d,(hl)		;57a4
	jp p,0fc01h		;57a5
	dec h			;57a8
	ld d,e			;57a9
	inc h			;57aa
	jp p,0ce31h		;57ab
	dec d			;57ae
	ld a,c			;57af
	ld a,h			;57b0
	sub d			;57b1
	ret m			;57b2
	sub a			;57b3
	xor 093h		;57b4
	sub d			;57b6
	adc a,c			;57b7
	ld h,(hl)		;57b8
	add a,(hl)		;57b9
	exx			;57ba
	push af			;57bb
	ld b,b			;57bc
	xor a			;57bd
	jp m,0a115h		;57be
	ld c,d			;57c1
	ld (03522h),a		;57c2
	ld (09d12h),hl		;57c5
	sbc a,h			;57c8
	call nz,0f093h		;57c9
	adc a,c			;57cc
	ld (hl),a		;57cd
	rst 38h			;57ce
	ld (hl),b		;57cf
	ld (hl),a		;57d0
	sub l			;57d1
	ld h,(hl)		;57d2
	ld e,a			;57d3
	xor a			;57d4
	call m,08374h		;57d5
	push bc			;57d8
	or 0b1h			;57d9
	rst 30h			;57db
	ld e,h			;57dc
	ld l,e			;57dd
	sub (hl)		;57de
	ld b,h			;57df
	ld hl,(0a77ch)		;57e0
	defb 0ddh,09bh,049h ;illegal sequence	;57e3
	inc l			;57e6
	ld d,c			;57e7
	add a,b			;57e8
	ld a,d			;57e9
	adc a,h			;57ea
	ld (06c66h),hl		;57eb
	ld b,l			;57ee
	ld b,d			;57ef
	ret po			;57f0
	ld l,a			;57f1
	inc b			;57f2
	and e			;57f3
	ld de,0f23fh		;57f4
	ld (hl),c		;57f7
	dec (hl)		;57f8
	sub d			;57f9
	ex de,hl		;57fa
	ld (hl),h		;57fb
	sub e			;57fc
	ld h,l			;57fd
	call m,sub_6f77h	;57fe
	push af			;5801
	xor e			;5802
	sbc a,b			;5803
	ret z			;5804
	rst 38h			;5805
	and d			;5806
	cp 092h			;5807
	ld sp,iy		;5809
	xor e			;580b
	ld hl,l6ac8h		;580c
	ld a,a			;580f
	xor c			;5810
	xor (hl)		;5811
	or h			;5812
	ld h,b			;5813
	ld a,e			;5814
	ld h,(hl)		;5815
	ld (hl),h		;5816
	ld h,a			;5817
	or c			;5818
	halt			;5819
	dec d			;581a
	ld l,e			;581b
	ld a,e			;581c
	cpl			;581d
	in a,(0f6h)		;581e
	adc a,b			;5820
	or a			;5821
	or (hl)			;5822
	ld l,e			;5823
	ld a,c			;5824
	or (hl)			;5825
	ld h,(hl)		;5826
	and e			;5827
	add a,c			;5828
	add a,c			;5829
	sbc a,(hl)		;582a
	cp d			;582b
	ld d,h			;582c
	jp c,02150h		;582d
	dec (hl)		;5830
	inc h			;5831
	ld c,a			;5832
	jp p,01362h		;5833
	inc c			;5836
	inc sp			;5837
	adc a,c			;5838
	pop hl			;5839
	ld sp,l59ebh		;583a
	sub c			;583d
	dec d			;583e
	ld l,l			;583f
	sbc a,d			;5840
	ld hl,03651h		;5841
	sub l			;5844
	add a,h			;5845
	add a,h			;5846
	jp nz,011f3h		;5847
	ld d,d			;584a
	add a,e			;584b
	ld hl,03145h		;584c
	cpl			;584f
	ld h,04bh		;5850
	sub a			;5852
	jr l5855h		;5853
l5855h:
	ld a,a			;5855
	adc a,b			;5856
	call m,0cfb7h		;5857
	ld bc,l51f5h		;585a
	ld de,l72abh		;585d
	dec h			;5860
	ld c,h			;5861
	ld d,a			;5862
	call p,0f704h		;5863
	ld d,d			;5866
	dec hl			;5867
	ld a,d			;5868
	cp a			;5869
	ld b,l			;586a
	ld e,h			;586b
	call m,00a2ah		;586c
	ld e,a			;586f
	add a,e			;5870
	jp c,06d42h		;5871
	ld h,l			;5874
	defb 0ddh,0fdh,08bh ;illegal sequence	;5875
	adc a,l			;5878
	inc e			;5879
	ld b,(hl)		;587a
	or (hl)			;587b
	add hl,sp		;587c
	ccf			;587d
	ld a,(bc)		;587e
	daa			;587f
	jp m,0ec35h		;5880
	ld hl,0ff79h		;5883
	ld d,c			;5886
	rra			;5887
	jp p,l4518h		;5888
	ld h,(hl)		;588b
	ld d,l			;588c
	adc a,c			;588d
	ld (hl),a		;588e
	ret c			;588f
	ld b,c			;5890
	jp p,l7f54h		;5891
	call m,sub_50d4h	;5894
	or a			;5897
	ld e,e			;5898
	cp e			;5899
	ex af,af'		;589a
	ld a,(de)		;589b
	ld a,e			;589c
	ld h,l			;589d
	rla			;589e
	jp c,000fah		;589f
	ld (hl),c		;58a2
	jp nc,0a1b7h		;58a3
	cp e			;58a6
	cp l			;58a7
	ld (0cf77h),hl		;58a8
sub_58abh:
	call m,081a2h		;58ab
	and a			;58ae
	ld e,(hl)		;58af
l58b0h:
	or c			;58b0
	call m,01f42h		;58b1
	ld l,b			;58b4
	inc c			;58b5
	jp p,0f152h		;58b6
	or c			;58b9
	jp (hl)			;58ba
	pop af			;58bb
	jp 00b3bh		;58bc
	jp nz,0f2f2h		;58bf
	call nz,0dbf1h		;58c2
	ret pe			;58c5
	pop de			;58c6
	ccf			;58c7
	ld de,0fc10h		;58c8
	ld b,h			;58cb
	jp nz,l5322h		;58cc
	ld e,a			;58cf
	ld (de),a		;58d0
	ld h,a			;58d1
	ld c,h			;58d2
	or d			;58d3
	ld (0275ah),hl		;58d4
	rst 38h			;58d7
	add a,b			;58d8
	ret nz			;58d9
	ld a,(de)		;58da
	cp h			;58db
	rst 30h			;58dc
	or c			;58dd
	rrca			;58de
	xor h			;58df
	ld l,e			;58e0
	pop de			;58e1
	rst 8			;58e2
	ld d,(hl)		;58e3
	sbc a,h			;58e4
	dec e			;58e5
	halt			;58e6
	inc b			;58e7
	jp z,0bf1bh		;58e8
	rst 0			;58eb
	ld h,c			;58ec
	xor d			;58ed
	ld b,c			;58ee
	rst 38h			;58ef
	ld (hl),d		;58f0
	ld h,l			;58f1
	ld d,d			;58f2
	ld a,a			;58f3
	push af			;58f4
	ret			;58f5
	call nz,sub_71e5h	;58f6
	call p,0c324h		;58f9
	ld c,c			;58fc
	add a,04bh		;58fd
	cp a			;58ff
	ld e,e			;5900
	pop bc			;5901
	ld e,e			;5902
	inc bc			;5903
	sub h			;5904
	ret m			;5905
	ld (hl),e		;5906
	inc c			;5907
	jp p,01160h		;5908
	call p,01166h		;590b
	rst 0			;590e
	ld h,h			;590f
	di			;5910
	dec h			;5911
	ld (0307ch),hl		;5912
	pop bc			;5915
	ld d,(hl)		;5916
	ld h,a			;5917
	jp nc,l4188h		;5918
	ld b,b			;591b
	xor h			;591c
	inc bc			;591d
	ld (hl),l		;591e
	xor h			;591f
	call z,0bf51h		;5920
	or l			;5923
	ld b,0e6h		;5924
	jp po,01281h		;5926
	rst 30h			;5929
	dec d			;592a
	call z,sub_5bcah	;592b
	ex af,af'		;592e
	jr $-52			;592f
	rla			;5931
	dec c			;5932
	halt			;5933
	ld d,e			;5934
	ld h,l			;5935
	add a,b			;5936
	call nc,01acch		;5937
	ld b,(hl)		;593a
	ld (0d61fh),hl		;593b
	add hl,de		;593e
	ld c,h			;593f
	pop af			;5940
	or d			;5941
	call z,sub_7383h	;5942
	dec bc			;5945
	xor d			;5946
	rra			;5947
	adc a,e			;5948
	or (hl)			;5949
	inc c			;594a
	inc bc			;594b
	dec d			;594c
	ld (de),a		;594d
	ld e,a			;594e
	ld de,000f9h		;594f
	call m,0257fh		;5952
	ld e,a			;5955
	sub 062h		;5956
	ld c,h			;5958
	jp nc,0f647h		;5959
	ld h,a			;595c
	inc bc			;595d
l595eh:
	and b			;595e
	or c			;595f
	ld a,e			;5960
	ld l,h			;5961
	ld c,c			;5962
	rst 38h			;5963
	rst 10h			;5964
	adc a,d			;5965
	jr z,$-82		;5966
	adc a,e			;5968
	xor d			;5969
	ld d,h			;596a
	jp po,01380h		;596b
	add a,0a5h		;596e
	ld e,d			;5970
	rst 38h			;5971
l5972h:
	ld d,a			;5972
	ld c,a			;5973
	sub e			;5974
	inc l			;5975
	or a			;5976
	sbc a,04ah		;5977
	ld c,046h		;5979
	or a			;597b
	ld h,(hl)		;597c
	rst 38h			;597d
	ld a,055h		;597e
	ld b,h			;5980
	add a,b			;5981
	jp nz,l4f64h		;5982
	rst 8			;5985
	rst 38h			;5986
	jr c,$-8		;5987
	push bc			;5989
	dec a			;598a
	jp 0ff88h		;598b
	sub 033h		;598e
	inc c			;5990
	rst 18h			;5991
	adc a,060h		;5992
	rst 8			;5994
	ld b,h			;5995
	ld (02726h),hl		;5996
	ld e,a			;5999
	call z,014fdh		;599a
	ld a,(bc)		;599d
	jp nc,0ccc2h		;599e
	dec h			;59a1
	cp h			;59a2
	exx			;59a3
	jp l7257h		;59a4
	ld d,a			;59a7
	ld a,c			;59a8
	jp p,08eafh		;59a9
	ld l,d			;59ac
	adc a,c			;59ad
	di			;59ae
	dec bc			;59af
	ld (hl),b		;59b0
	ld (bc),a		;59b1
	jp p,05c27h		;59b2
	ld (hl),l		;59b5
	and l			;59b6
	rst 0			;59b7
	ld hl,(0fc56h)		;59b8
	xor l			;59bb
	ld h,a			;59bc
	ld b,a			;59bd
	inc bc			;59be
	nop			;59bf
	jp nc,011c4h		;59c0
	ld (hl),d		;59c3
	ld a,h			;59c4
	rst 8			;59c5
	or c			;59c6
	sbc a,h			;59c7
	ld l,d			;59c8
	ld (hl),e		;59c9
	inc bc			;59ca
	cp (hl)			;59cb
	cp h			;59cc
	and e			;59cd
	di			;59ce
	rst 38h			;59cf
	sbc a,e			;59d0
	set 5,d			;59d1
	xor b			;59d3
	ld d,c			;59d4
	ld (hl),d		;59d5
	cp 01ch			;59d6
	ld b,h			;59d8
	or b			;59d9
	push af			;59da
	ld h,d			;59db
	dec hl			;59dc
	ld c,(hl)		;59dd
	ld h,08bh		;59de
	ld (0b766h),hl		;59e0
	add a,a			;59e3
	dec h			;59e4
	ld b,l			;59e5
	ld h,d			;59e6
	ld sp,hl		;59e7
	xor 031h		;59e8
	add a,h			;59ea
l59ebh:
	call nz,sub_72b2h	;59eb
	rra			;59ee
	ld (l5447h),hl		;59ef
	inc h			;59f2
	cp e			;59f3
sub_59f4h:
	ld h,d			;59f4
	and l			;59f5
	jp po,0fc6ah		;59f6
	or b			;59f9
	ld hl,l5fb2h		;59fa
	rst 8			;59fd
	add a,b			;59fe
	ld c,a			;59ff
	ld e,l			;5a00
	sbc a,(hl)		;5a01
	ret m			;5a02
	sub 0f9h		;5a03
	rst 10h			;5a05
	xor e			;5a06
	add a,(hl)		;5a07
	adc a,e			;5a08
	xor d			;5a09
	cpl			;5a0a
	xor c			;5a0b
	ld a,l			;5a0c
	ld d,04ch		;5a0d
	ret c			;5a0f
	push de			;5a10
	call m,sub_47c4h	;5a11
	call z,sub_7600h	;5a14
	ld e,b			;5a17
	ld a,a			;5a18
	rst 10h			;5a19
	ld a,h			;5a1a
	ld c,l			;5a1b
	jp p,l748ch		;5a1c
	call nz,sub_78feh	;5a1f
	ld b,(hl)		;5a22
	or c			;5a23
	ret pe			;5a24
	ld a,a			;5a25
	halt			;5a26
	cpl			;5a27
	rst 30h			;5a28
	ld c,h			;5a29
	rst 8			;5a2a
	jr nz,l5a54h		;5a2b
	daa			;5a2d
	ld h,b			;5a2e
	ld b,a			;5a2f
	add a,d			;5a30
	ld h,l			;5a31
	adc a,a			;5a32
	rst 38h			;5a33
	xor b			;5a34
	ld (0126fh),hl		;5a35
	call p,0afffh		;5a38
	ld b,0c2h		;5a3b
	sbc a,0adh		;5a3d
	ret m			;5a3f
	ld b,d			;5a40
	ld e,d			;5a41
	ld (03a93h),hl		;5a42
	inc hl			;5a45
	ld (0842ch),hl		;5a46
	xor e			;5a49
	add a,e			;5a4a
	dec h			;5a4b
	ld (bc),a		;5a4c
	rst 38h			;5a4d
	and b			;5a4e
	sub c			;5a4f
	and d			;5a50
	adc a,c			;5a51
	xor a			;5a52
	daa			;5a53
l5a54h:
	cpl			;5a54
	ld h,(hl)		;5a55
	and d			;5a56
	ei			;5a57
	ld d,(hl)		;5a58
	ld a,e			;5a59
	jp nc,0cca0h		;5a5a
	jp p,0b6cch		;5a5d
	or b			;5a60
	add a,e			;5a61
	rst 30h			;5a62
	ld (hl),a		;5a63
	ld de,01a76h		;5a64
	rst 8			;5a67
	rst 38h			;5a68
	or c			;5a69
	cp 0e3h			;5a6a
	cp (hl)			;5a6c
	ld c,e			;5a6d
	ld a,a			;5a6e
	and c			;5a6f
	ld hl,07ba7h		;5a70
	ld a,a			;5a73
	xor a			;5a74
	djnz l5ae2h		;5a75
	call z,0306fh		;5a77
	call m,0ad67h		;5a7a
	jp m,0b97fh		;5a7d
	call m,sub_708ch	;5a80
	adc a,(hl)		;5a83
l5a84h:
	call m,09265h		;5a84
	or l			;5a87
	ld b,(hl)		;5a88
	jp z,0e279h		;5a89
	nop			;5a8c
	push af			;5a8d
	adc a,b			;5a8e
	ld e,d			;5a8f
	and l			;5a90
l5a91h:
	ex de,hl		;5a91
	ret po			;5a92
	jp m,0f4bch		;5a93
	ld c,d			;5a96
	ld l,h			;5a97
	ld a,c			;5a98
	cp a			;5a99
	adc a,d			;5a9a
	pop de			;5a9b
	halt			;5a9c
	ld e,e			;5a9d
	ld e,d			;5a9e
	ld a,a			;5a9f
	or c			;5aa0
	cp 0e5h			;5aa1
	adc a,e			;5aa3
	ld c,l			;5aa4
	inc bc			;5aa5
	rra			;5aa6
	dec h			;5aa7
	ld (hl),l		;5aa8
	and a			;5aa9
	ld l,h			;5aaa
	inc l			;5aab
	ld h,c			;5aac
	daa			;5aad
	jp nz,0fb7fh		;5aae
	add a,h			;5ab1
	exx			;5ab2
	defb 0fdh,01fh,03dh ;illegal sequence	;5ab3
	call pe,0bfech		;5ab6
	ld l,h			;5ab9
	inc (hl)		;5aba
	ld e,a			;5abb
	sbc a,l			;5abc
	ex de,hl		;5abd
	and (hl)		;5abe
	add a,(hl)		;5abf
	inc l			;5ac0
	rst 28h			;5ac1
	ld (hl),a		;5ac2
	ld (hl),h		;5ac3
	ret c			;5ac4
	inc de			;5ac5
	or 0b5h			;5ac6
	ld (hl),c		;5ac8
	add a,l			;5ac9
	ld hl,(0d6f3h)		;5aca
	jr c,l5a91h		;5acd
	add hl,bc		;5acf
	rra			;5ad0
	cpl			;5ad1
	rst 38h			;5ad2
	ld hl,(040aeh)		;5ad3
	call p,01176h		;5ad6
	and a			;5ad9
	defb 0fdh,0d7h,00ah ;illegal sequence	;5ada
	daa			;5add
	ld d,l			;5ade
	ld d,(hl)		;5adf
	rst 8			;5ae0
	rst 38h			;5ae1
l5ae2h:
	ld sp,hl		;5ae2
	ld b,(hl)		;5ae3
	dec h			;5ae4
	push de			;5ae5
	halt			;5ae6
	ex af,af'		;5ae7
	call po,sub_7b27h	;5ae8
	call m,0cb7ch		;5aeb
	ld a,a			;5aee
	pop af			;5aef
	ld sp,hl		;5af0
	ld d,e			;5af1
	or e			;5af2
	dec (hl)		;5af3
	jp m,0e6b8h		;5af4
	ld h,e			;5af7
	add a,e			;5af8
	inc (hl)		;5af9
	call z,00ac7h		;5afa
	dec sp			;5afd
	ld c,c			;5afe
	ld h,(hl)		;5aff
	ld (hl),l		;5b00
	rla			;5b01
	sbc a,c			;5b02
	ld a,(de)		;5b03
	xor a			;5b04
	cp d			;5b05
	sub l			;5b06
	rst 38h			;5b07
	or b			;5b08
	ld (hl),d		;5b09
	ld d,d			;5b0a
	inc b			;5b0b
	push af			;5b0c
	ld a,e			;5b0d
	push de			;5b0e
	ld a,(de)		;5b0f
	ld (hl),a		;5b10
	inc e			;5b11
	ld c,h			;5b12
	inc h			;5b13
l5b14h:
	rst 30h			;5b14
	ld (hl),l		;5b15
	rst 38h			;5b16
	cp (hl)			;5b17
	rst 38h			;5b18
	cp c			;5b19
	ld h,d			;5b1a
	sbc a,d			;5b1b
	call p,05ab4h		;5b1c
	inc de			;5b1f
	and c			;5b20
	ld d,a			;5b21
	cp a			;5b22
	xor a			;5b23
	ld c,b			;5b24
	ld sp,hl		;5b25
	ld h,c			;5b26
	dec b			;5b27
	push de			;5b28
	or a			;5b29
	ld e,a			;5b2a
	dec h			;5b2b
	daa			;5b2c
	rst 38h			;5b2d
	ld a,l			;5b2e
	ex af,af'		;5b2f
	cpl			;5b30
	rst 38h			;5b31
	push de			;5b32
	rra			;5b33
	ret m			;5b34
	ld a,b			;5b35
	sbc a,0f7h		;5b36
	and 07fh		;5b38
	jp pe,0f1ceh		;5b3a
	ret nc			;5b3d
	and 09bh		;5b3e
	xor c			;5b40
	ld a,a			;5b41
	ld c,a			;5b42
	sub d			;5b43
	xor h			;5b44
	ld e,l			;5b45
	add a,b			;5b46
	ld e,0b3h		;5b47
	nop			;5b49
	cpl			;5b4a
	add a,a			;5b4b
	adc a,b			;5b4c
	in a,(080h)		;5b4d
	xor h			;5b4f
	ld (hl),l		;5b50
	inc e			;5b51
	or l			;5b52
	ld e,e			;5b53
	or a			;5b54
	sub d			;5b55
	add a,l			;5b56
	add a,d			;5b57
	dec h			;5b58
	ld a,d			;5b59
	ld a,a			;5b5a
	sbc a,d			;5b5b
	add hl,sp		;5b5c
	ld (hl),h		;5b5d
	add a,a			;5b5e
	push af			;5b5f
	ld (hl),l		;5b60
	ld d,b			;5b61
	dec b			;5b62
	ld d,a			;5b63
	ld e,a			;5b64
	xor b			;5b65
	ld l,(hl)		;5b66
	inc b			;5b67
	inc d			;5b68
	and c			;5b69
	xor e			;5b6a
	ld a,h			;5b6b
	ld (hl),l		;5b6c
	ld c,e			;5b6d
	add a,e			;5b6e
	ld h,0c1h		;5b6f
	ld d,a			;5b71
	add a,056h		;5b72
	jr nz,l5bd9h		;5b74
	rst 38h			;5b76
	push hl			;5b77
	dec a			;5b78
	ld (hl),0ffh		;5b79
	or d			;5b7b
	sbc a,h			;5b7c
	ret m			;5b7d
	xor 0ffh		;5b7e
	inc a			;5b80
	or (hl)			;5b81
	add hl,de		;5b82
	adc a,b			;5b83
	ld (hl),d		;5b84
	push bc			;5b85
	dec l			;5b86
	sub l			;5b87
	ret c			;5b88
	rst 30h			;5b89
	sub e			;5b8a
	ld c,a			;5b8b
	add a,c			;5b8c
	or e			;5b8d
	nop			;5b8e
	ld (l7480h),a		;5b8f
	ld l,a			;5b92
	ld b,l			;5b93
	inc l			;5b94
	call c,0fcc6h		;5b95
	sub e			;5b98
	rst 10h			;5b99
	defb 0ddh,065h ;ld ixh,ixl	;5b9a
	ld b,(hl)		;5b9c
	ld a,a			;5b9d
	and a			;5b9e
	sub l			;5b9f
	adc a,d			;5ba0
	ld b,c			;5ba1
	cpl			;5ba2
	call z,0b5c1h		;5ba3
	ld d,b			;5ba6
	ret nz			;5ba7
	ld d,h			;5ba8
	inc e			;5ba9
	rst 8			;5baa
	ld d,c			;5bab
	jp nz,0c1f4h		;5bac
	ret po			;5baf
	call m,0a761h		;5bb0
	res 4,d			;5bb3
	ld hl,0a632h		;5bb5
	rrca			;5bb8
	call 0f257h		;5bb9
	ld d,(hl)		;5bbc
	and d			;5bbd
	ld a,d			;5bbe
	ld e,c			;5bbf
	ld h,e			;5bc0
	call p,083e1h		;5bc1
	ld c,e			;5bc4
	jp po,0f12bh		;5bc5
	dec d			;5bc8
	rst 28h			;5bc9
sub_5bcah:
	rst 28h			;5bca
	adc a,(hl)		;5bcb
	dec (hl)		;5bcc
	rst 38h			;5bcd
	add hl,de		;5bce
	jr $-85			;5bcf
	ccf			;5bd1
	ld (bc),a		;5bd2
	ld a,(0b285h)		;5bd3
	rst 38h			;5bd6
	rst 38h			;5bd7
	ld (hl),l		;5bd8
l5bd9h:
	ld hl,(02c53h)		;5bd9
	ld c,a			;5bdc
	ld sp,hl		;5bdd
	adc a,c			;5bde
	jp nc,05ccbh		;5bdf
	ld (0d64ch),hl		;5be2
	ld de,0f24ch		;5be5
	and a			;5be8
	jp c,08691h		;5be9
	ld c,h			;5bec
	sub h			;5bed
	or c			;5bee
	ld (hl),b		;5bef
	bit 2,b			;5bf0
	ld c,h			;5bf2
	ld h,l			;5bf3
	dec de			;5bf4
	sub a			;5bf5
	rst 30h			;5bf6
	halt			;5bf7
	ex af,af'		;5bf8
	add hl,bc		;5bf9
	cp d			;5bfa
	ld l,a			;5bfb
	ei			;5bfc
	inc b			;5bfd
	call p,sub_71ffh	;5bfe
	ld a,h			;5c01
	and l			;5c02
	xor e			;5c03
	ld d,c			;5c04
	ld h,a			;5c05
	call p,sub_7fffh	;5c06
	ld b,d			;5c09
	inc hl			;5c0a
	add a,l			;5c0b
	in a,(05bh)		;5c0c
	defb 0fdh,083h,012h ;illegal sequence	;5c0e
sub_5c11h:
	cp h			;5c11
	or a			;5c12
	jp p,0c7e8h		;5c13
	adc a,0c9h		;5c16
	ld de,l7a5fh		;5c18
	dec d			;5c1b
	cpl			;5c1c
	rst 10h			;5c1d
	ld c,h			;5c1e
	jp z,0f706h		;5c1f
	rst 10h			;5c22
	add a,l			;5c23
	cp a			;5c24
	call m,0fe6bh		;5c25
	ld d,(hl)		;5c28
	jp m,0815ah		;5c29
	and a			;5c2c
	ld e,h			;5c2d
	call p,05543h		;5c2e
	ld b,a			;5c31
	rst 30h			;5c32
	ld h,c			;5c33
	ld sp,01aa0h		;5c34
	ld a,a			;5c37
	ld b,h			;5c38
	ld d,l			;5c39
	or l			;5c3a
	sbc a,d			;5c3b
	ld e,(hl)		;5c3c
	push bc			;5c3d
	ret nz			;5c3e
	sub a			;5c3f
	ld h,c			;5c40
	and h			;5c41
	and e			;5c42
	ld (de),a		;5c43
	halt			;5c44
	call z,0f67dh		;5c45
	rst 38h			;5c48
	sbc a,(hl)		;5c49
	add a,d			;5c4a
	ld h,d			;5c4b
	dec a			;5c4c
	xor e			;5c4d
	ld c,a			;5c4e
	add a,d			;5c4f
	ld b,h			;5c50
	ld d,c			;5c51
	ex de,hl		;5c52
	ld b,b			;5c53
	ld d,e			;5c54
	ld d,d			;5c55
	inc l			;5c56
	ld b,d			;5c57
	ld (02201h),hl		;5c58
	ld d,h			;5c5b
	ld (hl),a		;5c5c
	daa			;5c5d
	ld (hl),d		;5c5e
	ld (0de53h),hl		;5c5f
	jp (hl)			;5c62
	ld (bc),a		;5c63
	ld (bc),a		;5c64
	di			;5c65
	ld d,d			;5c66
	ld (l6747h),hl		;5c67
	cp l			;5c6a
	add a,c			;5c6b
	pop af			;5c6c
	ei			;5c6d
	ld c,h			;5c6e
	djnz $+40		;5c6f
	ld e,l			;5c71
	rra			;5c72
	ld d,d			;5c73
	defb 0fdh,025h ;dec iyh	;5c74
	rst 38h			;5c76
	push de			;5c77
	jr nc,$+1		;5c78
	ld h,c			;5c7a
	rst 38h			;5c7b
	ld c,a			;5c7c
	pop de			;5c7d
	ld d,h			;5c7e
	jp c,0cbc6h		;5c7f
	ld h,c			;5c82
	or (hl)			;5c83
	inc hl			;5c84
	pop bc			;5c85
	ld l,e			;5c86
	ld (hl),h		;5c87
	adc a,h			;5c88
	ld de,0c7bch		;5c89
	ld d,l			;5c8c
	jp po,l55d0h		;5c8d
	ld a,h			;5c90
	set 1,h			;5c91
	or a			;5c93
	adc a,h			;5c94
	jp m,0889ah		;5c95
	sbc a,h			;5c98
	cpl			;5c99
	and e			;5c9a
	add hl,de		;5c9b
	ld (hl),a		;5c9c
	and d			;5c9d
	ld b,l			;5c9e
	add a,d			;5c9f
	add a,l			;5ca0
	or d			;5ca1
	cp a			;5ca2
	cp 03eh			;5ca3
	ld (hl),b		;5ca5
	jp p,0a32ah		;5ca6
	ccf			;5ca9
	ret c			;5caa
	add a,c			;5cab
	ld h,d			;5cac
	ld e,l			;5cad
	ret nz			;5cae
	ld a,a			;5caf
	ld h,07ch		;5cb0
	ld h,d			;5cb2
	ld d,l			;5cb3
	add a,c			;5cb4
	nop			;5cb5
	ld (hl),l		;5cb6
	or a			;5cb7
	ld d,l			;5cb8
	dec h			;5cb9
	dec d			;5cba
	sub h			;5cbb
	ret			;5cbc
	ld l,l			;5cbd
	nop			;5cbe
	push af			;5cbf
	push de			;5cc0
	dec h			;5cc1
	ld d,a			;5cc2
	or l			;5cc3
	or l			;5cc4
	ld d,l			;5cc5
	adc a,c			;5cc6
	and e			;5cc7
	inc l			;5cc8
	and c			;5cc9
	jp po,01f31h		;5cca
	jr z,$+56		;5ccd
	ld h,h			;5ccf
	ld d,b			;5cd0
	ld (hl),b		;5cd1
	ld hl,(09bf3h)		;5cd2
	jp c,l624ch		;5cd5
	call nc,0b612h		;5cd8
	ld a,h			;5cdb
	push bc			;5cdc
	add a,b			;5cdd
	sub e			;5cde
	add a,(hl)		;5cdf
	sub d			;5ce0
	xor b			;5ce1
	res 4,l			;5ce2
	ex af,af'		;5ce4
	sub c			;5ce5
	call m,0cc5ah		;5ce6
	ex af,af'		;5ce9
	call nc,0e087h		;5cea
	ld h,c			;5ced
	call c,sub_7acbh	;5cee
	ld h,a			;5cf1
	rst 38h			;5cf2
	ld e,e			;5cf3
	sub l			;5cf4
	add a,a			;5cf5
	nop			;5cf6
	jp nz,00025h		;5cf7
	cpl			;5cfa
	jp p,02265h		;5cfb
	call m,065c4h		;5cfe
	pop de			;5d01
	ex af,af'		;5d02
	ld de,l5513h		;5d03
	ld h,006h		;5d06
	dec (hl)		;5d08
	ld d,a			;5d09
	ld b,h			;5d0a
	ld (hl),l		;5d0b
	add a,b			;5d0c
	ld d,e			;5d0d
	ld b,b			;5d0e
	ld d,e			;5d0f
	ld a,a			;5d10
	call p,sub_6462h	;5d11
	rst 38h			;5d14
	di			;5d15
	ld (de),a		;5d16
	dec d			;5d17
	ld d,e			;5d18
	ld d,l			;5d19
	ld c,077h		;5d1a
l5d1ch:
	inc b			;5d1c
	ex af,af'		;5d1d
	inc h			;5d1e
	add a,025h		;5d1f
	ld d,l			;5d21
	ld a,a			;5d22
	dec d			;5d23
	daa			;5d24
	ret z			;5d25
l5d26h:
	di			;5d26
	dec h			;5d27
	ld (031c9h),hl		;5d28
	and (hl)		;5d2b
	call po,026cfh		;5d2c
	ld c,056h		;5d2f
	ld a,h			;5d31
	pop de			;5d32
	cp h			;5d33
	ld l,d			;5d34
	ld (hl),l		;5d35
	inc b			;5d36
	or 0cfh			;5d37
	sbc a,(hl)		;5d39
	ld c,(hl)		;5d3a
	rst 8			;5d3b
	ld (0fb41h),hl		;5d3c
	dec e			;5d3f
	bit 4,l			;5d40
	ld h,(hl)		;5d42
	jp m,0fc5ch		;5d43
	ld a,a			;5d46
	ret pe			;5d47
	ld de,l6652h		;5d48
	ld d,025h		;5d4b
	call m,0fe74h		;5d4d
	ld (bc),a		;5d50
	ld d,l			;5d51
	ld (0c664h),a		;5d52
	ld l,d			;5d55
	adc a,c			;5d56
	ret p			;5d57
	ld d,a			;5d58
	add a,d			;5d59
	inc h			;5d5a
	adc a,d			;5d5b
	sub d			;5d5c
	jr l5d26h		;5d5d
	ld sp,0f511h		;5d5f
	ld e,l			;5d62
	dec d			;5d63
	adc a,a			;5d64
	ld b,c			;5d65
	ld a,a			;5d66
	ld d,l			;5d67
	dec (hl)		;5d68
	ld d,d			;5d69
	rst 0			;5d6a
	add a,b			;5d6b
	ld (hl),021h		;5d6c
	ld (hl),054h		;5d6e
	call pe,01216h		;5d70
	and l			;5d73
	ld (0bc98h),hl		;5d74
	add a,a			;5d77
	ret nz			;5d78
	ld h,(hl)		;5d79
	ld d,l			;5d7a
	xor e			;5d7b
	inc (hl)		;5d7c
	push bc			;5d7d
	ld d,a			;5d7e
	ld d,a			;5d7f
	rst 30h			;5d80
	ld l,a			;5d81
	ld a,e			;5d82
	ld c,a			;5d83
	ld d,l			;5d84
	inc de			;5d85
	call p,0eff2h		;5d86
	ret nz			;5d89
	or l			;5d8a
	ld e,h			;5d8b
	or (hl)			;5d8c
	jr c,l5de4h		;5d8d
	ld h,(hl)		;5d8f
	ld hl,0ffafh		;5d90
	and c			;5d93
	dec h			;5d94
	add a,b			;5d95
	ld h,b			;5d96
	ld d,c			;5d97
	ld (de),a		;5d98
	call m,0fc23h		;5d99
	ld (hl),l		;5d9c
	jp pe,02a08h		;5d9d
	ld c,h			;5da0
	cp 081h			;5da1
	ld d,e			;5da3
	dec h			;5da4
	ld d,d			;5da5
	ld d,l			;5da6
	ld d,e			;5da7
	halt			;5da8
	sub d			;5da9
	ld de,002ffh		;5daa
	ld b,l			;5dad
	di			;5dae
	adc a,b			;5daf
	ld a,e			;5db0
	sub e			;5db1
	adc a,l			;5db2
	ld c,b			;5db3
l5db4h:
	adc a,a			;5db4
	ld l,h			;5db5
	sbc a,d			;5db6
	add a,b			;5db7
	ld a,(de)		;5db8
	add hl,bc		;5db9
	dec d			;5dba
l5dbbh:
	ld a,h			;5dbb
	call m,0a4f2h		;5dbc
	call 0c889h		;5dbf
	defb 0ddh,0e4h,0c7h ;illegal sequence	;5dc2
	ld h,l			;5dc5
	sbc a,b			;5dc6
	defb 0ddh,0b1h,07ch ;illegal sequence	;5dc7
	and h			;5dca
	jp nz,01a1eh		;5dcb
	rst 0			;5dce
	ld a,a			;5dcf
	ld a,a			;5dd0
	jp po,l617ch		;5dd1
	inc l			;5dd4
	cp 031h			;5dd5
	dec de			;5dd7
	and c			;5dd8
	ld b,e			;5dd9
	ld e,d			;5dda
	jr nz,l5e1bh		;5ddb
	nop			;5ddd
	or e			;5dde
	inc hl			;5ddf
	cpl			;5de0
	di			;5de1
	adc a,d			;5de2
	xor b			;5de3
l5de4h:
	ld b,l			;5de4
	bit 4,(hl)		;5de5
	cp 010h			;5de7
	ld b,(hl)		;5de9
	ld d,e			;5dea
	ld de,000c4h		;5deb
	ld (de),a		;5dee
	ld (bc),a		;5def
	ld e,a			;5df0
	xor l			;5df1
	sub c			;5df2
	and l			;5df3
	defb 0edh ;next byte illegal after ed	;5df4
	ld l,h			;5df5
	ld sp,0f90dh		;5df6
	and d			;5df9
	ld d,d			;5dfa
	and b			;5dfb
	adc a,d			;5dfc
	sbc a,l			;5dfd
	and e			;5dfe
	ex de,hl		;5dff
	ld (bc),a		;5e00
	call z,03215h		;5e01
	ld l,a			;5e04
	ld sp,05fc2h		;5e05
	ld a,a			;5e08
	rst 8			;5e09
	push af			;5e0a
	ld d,b			;5e0b
	ld a,d			;5e0c
	ld d,c			;5e0d
	djnz l5dbbh		;5e0e
	jp p,00617h		;5e10
	ld d,c			;5e13
	xor h			;5e14
	or l			;5e15
	ld c,e			;5e16
	rst 0			;5e17
	sbc a,0b0h		;5e18
	ld a,h			;5e1a
l5e1bh:
	ld e,e			;5e1b
	jp z,01544h		;5e1c
	and h			;5e1f
	ld (hl),c		;5e20
l5e21h:
	ex af,af'		;5e21
	xor a			;5e22
	halt			;5e23
	dec e			;5e24
	ld l,e			;5e25
	cp 0e1h			;5e26
	ld c,h			;5e28
	rst 38h			;5e29
	ld a,a			;5e2a
	ld c,b			;5e2b
	ld (023f2h),a		;5e2c
	ld h,d			;5e2f
	ld d,d			;5e30
	and (hl)		;5e31
	ld (bc),a		;5e32
	ld h,d			;5e33
	ld (l4c66h),hl		;5e34
	ld (hl),d		;5e37
	ex (sp),hl		;5e38
	ld d,e			;5e39
	ld l,(hl)		;5e3a
	add a,d			;5e3b
	jp p,0befch		;5e3c
	out (014h),a		;5e3f
	ld c,0f2h		;5e41
	push af			;5e43
	djnz l5eb0h		;5e44
	jp m,l440eh		;5e46
	ld b,(hl)		;5e49
	ld h,026h		;5e4a
	call 0c644h		;5e4c
	cp 054h			;5e4f
	jr nc,l5e21h		;5e51
	ret m			;5e53
	dec de			;5e54
	rst 0			;5e55
	and (hl)		;5e56
	add a,d			;5e57
	ld d,b			;5e58
	call pe,08845h		;5e59
	push hl			;5e5c
	ld e,h			;5e5d
	ld l,e			;5e5e
	or 055h			;5e5f
	inc h			;5e61
	halt			;5e62
	push bc			;5e63
	sbc a,c			;5e64
	ld b,h			;5e65
	rst 10h			;5e66
	xor l			;5e67
	or a			;5e68
	inc d			;5e69
	ld h,c			;5e6a
	and (hl)		;5e6b
	ld a,h			;5e6c
	sbc a,a			;5e6d
	pop hl			;5e6e
	rst 38h			;5e6f
	rst 8			;5e70
	ld b,c			;5e71
	ld (01f36h),hl		;5e72
	sub l			;5e75
	ld e,a			;5e76
	defb 0ddh,007h,065h ;illegal sequence	;5e77
	ld sp,0316dh		;5e7a
	cp 01fh			;5e7d
	jp nz,0822ch		;5e7f
	add a,0d9h		;5e82
	sbc a,l			;5e84
	ld de,03509h		;5e85
	inc l			;5e88
	ld b,a			;5e89
	ld a,a			;5e8a
	ld c,a			;5e8b
	sub b			;5e8c
	add hl,de		;5e8d
	cp 011h			;5e8e
	jp p,0d06fh		;5e90
	ld a,(de)		;5e93
	cpl			;5e94
	and (hl)		;5e95
	rst 18h			;5e96
	ld l,d			;5e97
	di			;5e98
	ld c,h			;5e99
	call z,0cf92h		;5e9a
	ld e,075h		;5e9d
	cp a			;5e9f
	inc l			;5ea0
	ld d,h			;5ea1
	ret nz			;5ea2
	or 0f7h			;5ea3
	ld e,e			;5ea5
	call m,sub_5c11h	;5ea6
	ld l,a			;5ea9
	jp 0ae5ah		;5eaa
	sbc a,a			;5ead
	ld l,c			;5eae
	adc a,l			;5eaf
l5eb0h:
	sbc a,a			;5eb0
	nop			;5eb1
	sbc a,h			;5eb2
	ld h,032h		;5eb3
	ld (de),a		;5eb5
	cpl			;5eb6
	rst 8			;5eb7
	call p,sub_4c7eh	;5eb8
	ld h,071h		;5ebb
	ld d,l			;5ebd
l5ebeh:
	ld l,h			;5ebe
	jp (hl)			;5ebf
	jr nz,l5ebeh		;5ec0
	ld h,067h		;5ec2
	sbc a,l			;5ec4
	call nz,06624h		;5ec5
	inc l			;5ec8
	ld de,0ff51h		;5ec9
	or e			;5ecc
	ld a,d			;5ecd
	dec l			;5ece
	ld (hl),h		;5ecf
	sub b			;5ed0
	rlca			;5ed1
	ld c,a			;5ed2
	ld h,036h		;5ed3
	add a,(hl)		;5ed5
	call p,05bc7h		;5ed6
	call p,00ee5h		;5ed9
	jp nz,097ffh		;5edc
	rst 30h			;5edf
	adc a,b			;5ee0
	dec de			;5ee1
	or a			;5ee2
	ld l,a			;5ee3
	di			;5ee4
	cp (hl)			;5ee5
	nop			;5ee6
	ld h,(hl)		;5ee7
	push af			;5ee8
	jp p,0c7fah		;5ee9
	call z,0c37fh		;5eec
	pop de			;5eef
	sub a			;5ef0
	pop bc			;5ef1
	call z,0834fh		;5ef2
	ld c,a			;5ef5
	ld h,b			;5ef6
	jp p,l6166h		;5ef7
	inc b			;5efa
	ld (0c464h),hl		;5efb
	ld (hl),h		;5efe
	ld c,h			;5eff
	call nc,0e4a5h		;5f00
	inc d			;5f03
	call m,07148h		;5f04
	dec (hl)		;5f07
	adc a,(hl)		;5f08
	sbc a,b			;5f09
	ld b,h			;5f0a
	xor (hl)		;5f0b
	jp nz,0e574h		;5f0c
	ld h,d			;5f0f
	inc hl			;5f10
	ld d,c			;5f11
	djnz l5f64h		;5f12
	dec (hl)		;5f14
	rst 38h			;5f15
	ld l,a			;5f16
	ld h,d			;5f17
	rst 8			;5f18
	sub b			;5f19
	jr z,l5f90h		;5f1a
	add a,h			;5f1c
	inc e			;5f1d
	ld h,c			;5f1e
	ld h,(hl)		;5f1f
	ld (09d34h),hl		;5f20
	ld d,d			;5f23
	call p,sub_4568h	;5f24
	xor e			;5f27
	add a,a			;5f28
	sub d			;5f29
	push af			;5f2a
	cp 03dh			;5f2b
	push hl			;5f2d
	add a,b			;5f2e
	ld a,(bc)		;5f2f
	ld e,a			;5f30
	ld b,a			;5f31
	in a,(0c4h)		;5f32
	ld e,a			;5f34
	xor d			;5f35
	jp p,l6b4fh		;5f36
	dec h			;5f39
	defb 0fdh,0d1h,081h ;illegal sequence	;5f3a
	call z,0c85ch		;5f3d
	ld h,(hl)		;5f40
	ld (hl),c		;5f41
	call m,08021h		;5f42
	ld d,l			;5f45
	ld l,l			;5f46
	ret pe			;5f47
	ld h,h			;5f48
	defb 0fdh,0c6h,0f4h ;illegal sequence	;5f49
	ld h,l			;5f4c
	call m,0ff54h		;5f4d
	add hl,bc		;5f50
	call z,027f5h		;5f51
l5f54h:
	ret p			;5f54
	jr l5f54h		;5f55
	ld a,(hl)		;5f57
	ld d,l			;5f58
	ld e,e			;5f59
	ld d,d			;5f5a
	rst 18h			;5f5b
	ex af,af'		;5f5c
	call nz,087a9h		;5f5d
	ld d,d			;5f60
	ld h,e			;5f61
	ld h,(hl)		;5f62
	cp b			;5f63
l5f64h:
	cp b			;5f64
	ld (hl),c		;5f65
	ld sp,0c8d9h		;5f66
	ld b,a			;5f69
	rra			;5f6a
	halt			;5f6b
	pop af			;5f6c
	xor a			;5f6d
	ld d,h			;5f6e
	ex af,af'		;5f6f
	rra			;5f70
	daa			;5f71
	ld (hl),a		;5f72
	call nz,08ea9h		;5f73
	adc a,e			;5f76
	ld l,a			;5f77
	call m,0e4e8h		;5f78
	ld hl,(01635h)		;5f7b
	inc sp			;5f7e
	ld h,e			;5f7f
	ld h,d			;5f80
sub_5f81h:
	add hl,hl		;5f81
	jp p,0c650h		;5f82
	ld hl,00ec6h		;5f85
	ld (0ceadh),hl		;5f88
	ld b,l			;5f8b
	call sub_468dh		;5f8c
	ld h,l			;5f8f
l5f90h:
	adc a,l			;5f90
	inc h			;5f91
	adc a,a			;5f92
	ld d,c			;5f93
	ld a,a			;5f94
	ld (hl),e		;5f95
	ret p			;5f96
	add a,e			;5f97
	defb 0fdh,026h,0cfh ;ld iyh,0cfh	;5f98
	inc e			;5f9b
	daa			;5f9c
	xor b			;5f9d
	ld (0aba9h),hl		;5f9e
	rst 38h			;5fa1
	inc (hl)		;5fa2
	sub e			;5fa3
	ld (hl),d		;5fa4
	jp p,099a5h		;5fa5
	call po,sub_5fd9h	;5fa8
	or (hl)			;5fab
	ld (00a5fh),a		;5fac
	call m,00d50h		;5faf
l5fb2h:
	daa			;5fb2
	ld a,a			;5fb3
	ld c,d			;5fb4
	ld a,a			;5fb5
	sbc a,c			;5fb6
	ld h,h			;5fb7
	cpl			;5fb8
	daa			;5fb9
	ei			;5fba
	ld a,a			;5fbb
	ld hl,01669h		;5fbc
	ld d,06fh		;5fbf
	ld (0cf9eh),a		;5fc1
	ld d,b			;5fc4
	add a,l			;5fc5
	ld sp,01d11h		;5fc6
	ld d,d			;5fc9
	ld h,d			;5fca
	cp 010h			;5fcb
	ld hl,l7efch		;5fcd
	dec (hl)		;5fd0
	dec (hl)		;5fd1
	ld (l4c25h),hl		;5fd2
	pop af			;5fd5
	add a,b			;5fd6
	scf			;5fd7
	sbc a,c			;5fd8
sub_5fd9h:
	add hl,bc		;5fd9
	ld a,(0ef24h)		;5fda
	xor c			;5fdd
	ret z			;5fde
	ld (hl),d		;5fdf
	daa			;5fe0
	dec hl			;5fe1
	call po,sub_565eh	;5fe2
	rst 30h			;5fe5
	adc a,l			;5fe6
	or b			;5fe7
	cp l			;5fe8
	add a,h			;5fe9
	ld a,l			;5fea
	jp p,01158h		;5feb
	call nz,02375h		;5fee
	rst 38h			;5ff1
	ld (080cch),hl		;5ff2
	ld a,0c0h		;5ff5
	ld d,011h		;5ff7
	ld d,052h		;5ff9
	ld c,d			;5ffb
	cpl			;5ffc
	rst 18h			;5ffd
	ld a,d			;5ffe
	ret c			;5fff
	ld l,h			;6000
	ld e,e			;6001
	cp 04ah			;6002
	rra			;6004
	ei			;6005
	inc de			;6006
	ld b,a			;6007
	xor 025h		;6008
	ld (hl),h		;600a
	dec bc			;600b
	dec d			;600c
	push bc			;600d
	ld e,091h		;600e
	call z,0e99fh		;6010
	ld (02752h),hl		;6013
	scf			;6016
	ld d,0ech		;6017
	and (hl)		;6019
	ld h,a			;601a
	rrca			;601b
	dec de			;601c
	bit 7,h			;601d
	jp (hl)			;601f
	rst 18h			;6020
	ld d,h			;6021
	call nz,0eafch		;6022
	jr z,l604bh		;6025
	rst 8			;6027
	inc hl			;6028
	add a,c			;6029
	inc sp			;602a
	add a,d			;602b
	call pe,sub_567dh	;602c
	ret c			;602f
	and 025h		;6030
	pop de			;6032
	or l			;6033
	add a,b			;6034
	ret po			;6035
	daa			;6036
	call p,08f52h		;6037
	sbc a,d			;603a
	ld (de),a		;603b
	ld d,h			;603c
	call p,0a610h		;603d
	jp p,0a0b0h		;6040
	ret p			;6043
	call m,05a16h		;6044
	and 026h		;6047
	pop af			;6049
	rst 20h			;604a
l604bh:
	rst 8			;604b
	add a,c			;604c
	add a,e			;604d
	or (hl)			;604e
	cp e			;604f
	cp h			;6050
	ld h,a			;6051
	adc a,c			;6052
	cp b			;6053
	ld c,a			;6054
	ld d,h			;6055
	add a,(hl)		;6056
	inc de			;6057
	xor h			;6058
	or d			;6059
	or h			;605a
	and a			;605b
	inc h			;605c
	cp e			;605d
	ld l,e			;605e
	push de			;605f
	ld h,c			;6060
	call m,0808dh		;6061
	ld c,a			;6064
	ld l,e			;6065
	ld hl,08dfbh		;6066
	add a,a			;6069
	sbc a,d			;606a
	cpl			;606b
	ld h,e			;606c
	jp p,l510bh		;606d
	dec h			;6070
	cp a			;6071
	ld b,d			;6072
	call 0a072h		;6073
	ld sp,hl		;6076
	ld (hl),l		;6077
	ld hl,l5672h		;6078
	ld a,(de)		;607b
	push af			;607c
	or b			;607d
	sbc a,l			;607e
	ld de,04725h		;607f
	ld (hl),0dch		;6082
	ld b,(hl)		;6084
	call z,0b26fh		;6085
	jp nz,027cfh		;6088
	cp h			;608b
	sub a			;608c
	ld d,a			;608d
	rst 20h			;608e
	and l			;608f
	or c			;6090
	cp 0bbh			;6091
	jp c,l6497h		;6093
	sub h			;6096
	rst 8			;6097
	ret nc			;6098
	inc e			;6099
	ei			;609a
	or d			;609b
	call m,sub_5357h	;609c
	call z,sub_58abh	;609f
	add a,b			;60a2
	call p,080c4h		;60a3
	ld h,01bh		;60a6
	ld d,d			;60a8
	ld d,e			;60a9
	ld (0a98ch),hl		;60aa
	inc hl			;60ad
	add a,c			;60ae
	rst 0			;60af
	ld b,l			;60b0
	ld b,a			;60b1
	sbc a,l			;60b2
	jp nz,l4322h		;60b3
	dec d			;60b6
	ld e,d			;60b7
	cpl			;60b8
	and l			;60b9
	ld b,052h		;60ba
	ld d,d			;60bc
	and c			;60bd
	dec h			;60be
	cp 01ch			;60bf
	ld d,0a8h		;60c1
	ld a,a			;60c3
	jp p,0c70dh		;60c4
	ld e,a			;60c7
	push bc			;60c8
	dec hl			;60c9
	rst 20h			;60ca
	ld h,082h		;60cb
	xor b			;60cd
	add a,d			;60ce
	halt			;60cf
	ld l,a			;60d0
	adc a,a			;60d1
	call nc,sub_678dh	;60d2
	jp nz,0fc71h		;60d5
	set 6,(hl)		;60d8
	ret po			;60da
	ld (hl),d		;60db
	ld e,h			;60dc
	push af			;60dd
	ret po			;60de
	or (hl)			;60df
	ld l,a			;60e0
	call p,081b7h		;60e1
	or h			;60e4
	ld h,d			;60e5
	ld h,(hl)		;60e6
	ld c,c			;60e7
	dec (hl)		;60e8
	ld h,c			;60e9
	dec (hl)		;60ea
	ret pe			;60eb
	dec bc			;60ec
	ld (0005fh),a		;60ed
	ld e,0e1h		;60f0
	add a,b			;60f2
	inc de			;60f3
	ld d,d			;60f4
	ld (l6522h),a		;60f5
	ccf			;60f8
	rst 38h			;60f9
sub_60fah:
	sub (hl)		;60fa
	ld a,l			;60fb
	ld h,(hl)		;60fc
	defb 0fdh,0d1h,0f7h ;illegal sequence	;60fd
	push bc			;6100
	adc a,d			;6101
	cp b			;6102
	rst 38h			;6103
	ld b,055h		;6104
	ld a,a			;6106
	rst 30h			;6107
	ld a,h			;6108
	cp e			;6109
	ld e,b			;610a
	jr z,l6184h		;610b
	and (hl)		;610d
	ld a,e			;610e
	cpl			;610f
	ld d,c			;6110
	or d			;6111
	ld d,c			;6112
	dec d			;6113
	ld a,a			;6114
	ld h,07bh		;6115
	sla d			;6117
	ld d,l			;6119
	add a,h			;611a
	ld d,e			;611b
	inc hl			;611c
	ld e,h			;611d
	add a,b			;611e
	ld e,(hl)		;611f
	call z,0c482h		;6120
	ld l,a			;6123
	inc l			;6124
	jp m,01514h		;6125
	ld (hl),06fh		;6128
	jp po,l497bh		;612a
	jp z,0d2f9h		;612d
	inc d			;6130
	and c			;6131
	ld (de),a		;6132
	inc de			;6133
	call m,097a7h		;6134
	call m,sub_67e0h	;6137
	ld bc,0c777h		;613a
	rst 0			;613d
	add a,07bh		;613e
	ld a,a			;6140
	ld b,l			;6141
	add a,b			;6142
	rla			;6143
	ld a,015h		;6144
	call m,0ebf1h		;6146
	and l			;6149
	ld b,0bfh		;614a
	ld d,h			;614c
	sbc a,h			;614d
	adc a,c			;614e
	ld l,h			;614f
	and h			;6150
	ex af,af'		;6151
	ld (hl),a		;6152
	halt			;6153
	rst 38h			;6154
	ei			;6155
	daa			;6156
	jp nc,l4282h		;6157
	rst 8			;615a
	ret po			;615b
	adc a,c			;615c
	ld h,a			;615d
	ld d,e			;615e
	ld a,a			;615f
	pop af			;6160
	ld (hl),h		;6161
	sbc a,a			;6162
	ld l,a			;6163
	adc a,(hl)		;6164
	ld a,c			;6165
l6166h:
	ld l,a			;6166
	jp nz,0f2c3h		;6167
	sub b			;616a
	ret c			;616b
	call z,009fch		;616c
	ld a,a			;616f
	ld (hl),a		;6170
	ld e,e			;6171
	call p,068d7h		;6172
	ld h,0f1h		;6175
	ld a,e			;6177
	ld d,h			;6178
	ld (0c159h),a		;6179
l617ch:
	or h			;617c
	ld e,h			;617d
	ld e,e			;617e
	inc h			;617f
	ld sp,hl		;6180
	inc de			;6181
	ld (hl),l		;6182
	ld a,e			;6183
l6184h:
	add a,h			;6184
	ld d,c			;6185
	and d			;6186
	ld a,a			;6187
	ret m			;6188
	dec b			;6189
	call nz,0c964h		;618a
	jp nc,0f264h		;618d
l6190h:
	rst 38h			;6190
	ld e,(hl)		;6191
	ld b,h			;6192
	ld a,(066f9h)		;6193
	sub h			;6196
	rrca			;6197
	ld h,h			;6198
	ld b,e			;6199
	dec d			;619a
	call m,00380h		;619b
	cpl			;619e
	call p,0aebfh		;619f
	ld b,h			;61a2
	ld e,a			;61a3
	sub e			;61a4
	ld (hl),h		;61a5
	dec h			;61a6
	cp c			;61a7
	adc a,b			;61a8
	pop bc			;61a9
	jr nc,l6190h		;61aa
	rra			;61ac
	dec l			;61ad
	call z,0c2cch		;61ae
	and (hl)		;61b1
	rst 30h			;61b2
	jp nz,0ab9fh		;61b3
	adc a,h			;61b6
	jp p,01fach		;61b7
	call m,l787fh		;61ba
	ld b,(hl)		;61bd
	ld a,h			;61be
	call nz,0cf12h		;61bf
	ld h,02fh		;61c2
	ex de,hl		;61c4
	ld c,e			;61c5
	rst 38h			;61c6
	rst 0			;61c7
	sbc a,0a0h		;61c8
	ld h,06fh		;61ca
	call nz,0cc1eh		;61cc
	ld (hl),d		;61cf
	ld c,a			;61d0
	ld de,0cf09h		;61d1
	ld d,b			;61d4
	ld d,h			;61d5
	call po,06518h		;61d6
	jp pe,0eb84h		;61d9
	sbc a,d			;61dc
	ret z			;61dd
	jp 0afc5h		;61de
sub_61e1h:
	rst 18h			;61e1
	ei			;61e2
	djnz $+94		;61e3
	ld d,(hl)		;61e5
	ld l,a			;61e6
	ld b,(hl)		;61e7
	rst 20h			;61e8
	ld b,a			;61e9
	add a,e			;61ea
	and c			;61eb
	ld d,d			;61ec
	ld d,h			;61ed
	rst 8			;61ee
	jr z,$+33		;61ef
	rst 8			;61f1
	ld c,h			;61f2
	ld a,(hl)		;61f3
	ld a,h			;61f4
	xor d			;61f5
	jp l66fch		;61f6
	ld c,h			;61f9
	jp c,023d1h		;61fa
	rst 38h			;61fd
	cpl			;61fe
	ld a,(de)		;61ff
	cpl			;6200
	ld a,a			;6201
	pop de			;6202
	sub b			;6203
	inc l			;6204
	jp l595eh		;6205
	push de			;6208
	ld (bc),a		;6209
	rst 30h			;620a
	ld (hl),l		;620b
	ld a,a			;620c
	or 066h			;620d
	cp 03bh			;620f
	sub d			;6211
	and 0e5h		;6212
	ld l,l			;6214
	push hl			;6215
	ld c,d			;6216
	call z,0946eh		;6217
	ld l,0fch		;621a
	and h			;621c
	di			;621d
	sub (hl)		;621e
	add a,b			;621f
	out (026h),a		;6220
	and h			;6222
	dec de			;6223
	ld e,e			;6224
	ld a,a			;6225
	cp (hl)			;6226
	call nz,0fdffh		;6227
	cp l			;622a
	call c,0e04ah		;622b
	out (0cah),a		;622e
	rst 0			;6230
	inc de			;6231
	and e			;6232
	call nz,02466h		;6233
	ld b,d			;6236
	ret			;6237
	call m,0e3f8h		;6238
	ld l,e			;623b
	rst 30h			;623c
	ld h,a			;623d
	ld (hl),l		;623e
	rst 10h			;623f
	ld (0acf6h),a		;6240
	jp (hl)			;6243
	ld c,b			;6244
	dec h			;6245
	and h			;6246
	ld e,h			;6247
	dec a			;6248
	ld h,l			;6249
	ld e,a			;624a
	sub c			;624b
l624ch:
	and c			;624c
	push bc			;624d
	ld (0fecfh),hl		;624e
	jr z,l629eh		;6251
	ld c,e			;6253
	ld l,h			;6254
	xor d			;6255
	jr nz,l62afh		;6256
	ld h,a			;6258
	ld a,a			;6259
	ld (hl),d		;625a
	ld l,h			;625b
	call z,08f8ch		;625c
	add a,b			;625f
	ret nz			;6260
	rlca			;6261
	ld (hl),d		;6262
	ld h,d			;6263
	ld c,a			;6264
	jp p,l7f3fh		;6265
	set 6,h			;6268
	pop bc			;626a
	ld b,d			;626b
	ld h,d			;626c
	jp 0a2feh		;626d
	call z,04bbfh		;6270
	ret c			;6273
	ret z			;6274
	sub c			;6275
	call po,sub_7f2bh	;6276
	ld h,b			;6279
	push af			;627a
	dec a			;627b
	and l			;627c
	ld d,c			;627d
	push bc			;627e
	ret pe			;627f
	ld a,a			;6280
	ld e,h			;6281
	dec e			;6282
	ld h,e			;6283
	ld d,(hl)		;6284
	jr l62e6h		;6285
	sub (hl)		;6287
	ld c,056h		;6288
	ld b,d			;628a
	rst 8			;628b
l628ch:
	ld d,l			;628c
	ld (hl),a		;628d
	rst 30h			;628e
	defb 0fdh,03fh,002h ;illegal sequence	;628f
	add a,c			;6292
	ld a,b			;6293
	ld c,b			;6294
	daa			;6295
	and 06ch		;6296
	inc hl			;6298
	dec h			;6299
	inc (hl)		;629a
	sbc a,b			;629b
	pop hl			;629c
	inc d			;629d
l629eh:
	ld d,e			;629e
	inc l			;629f
	and (hl)		;62a0
	call nz,02723h		;62a1
	pop bc			;62a4
	defb 0ddh,0cch,082h ;illegal sequence	;62a5
	ld h,a			;62a8
	ld (de),a		;62a9
	inc h			;62aa
	ld d,a			;62ab
	rst 8			;62ac
	rst 38h			;62ad
	sbc a,b			;62ae
l62afh:
	ld c,05dh		;62af
	dec (hl)		;62b1
	call z,0b165h		;62b2
	sub e			;62b5
	call z,sub_6e55h	;62b6
	add hl,hl		;62b9
	sbc a,c			;62ba
	dec e			;62bb
	or l			;62bc
	ld a,a			;62bd
	ld c,e			;62be
	ei			;62bf
	ret po			;62c0
	call p,sub_4f67h	;62c1
	inc h			;62c4
	or d			;62c5
	ld h,0e7h		;62c6
	sub e			;62c8
	add a,h			;62c9
	rla			;62ca
	defb 0ddh,042h,07ah ;illegal sequence	;62cb
	rst 0			;62ce
l62cfh:
	ld b,h			;62cf
	ret nz			;62d0
	call m,0d5ffh		;62d1
	ld l,e			;62d4
	sbc a,l			;62d5
	ld (hl),e		;62d6
	call p,09710h		;62d7
	ei			;62da
	or a			;62db
	nop			;62dc
	rst 38h			;62dd
	cp 000h			;62de
	ld a,h			;62e0
	nop			;62e1
	nop			;62e2
	ld a,a			;62e3
	nop			;62e4
	nop			;62e5
l62e6h:
	ld h,d			;62e6
	ld l,c			;62e7
	jp l4500h		;62e8
	nop			;62eb
	nop			;62ec
	defb 0fdh,0deh,0fbh ;illegal sequence	;62ed
	inc hl			;62f0
	xor d			;62f1
	xor (hl)		;62f2
	nop			;62f3
	ld de,0ec69h		;62f4
	cp 0c8h			;62f7
	dec b			;62f9
	ret nz			;62fa
	nop			;62fb
	inc b			;62fc
	add hl,bc		;62fd
	dec c			;62fe
	add hl,bc		;62ff
	ld a,b			;6300
	add hl,bc		;6301
	ld de,l4500h		;6302
	or d			;6305
	xor (hl)		;6306
	out (0f7h),a		;6307
	rst 30h			;6309
	out (025h),a		;630a
	xor (hl)		;630c
	or d			;630d
	add a,b			;630e
	defb 0fdh,07ah,0f5h ;illegal sequence	;630f
	jr z,l6315h		;6312
	add hl,bc		;6314
l6315h:
	dec b			;6315
	ld (01111h),hl		;6316
	ei			;6319
	ld (01511h),hl		;631a
	nop			;631d
	ld de,0fe09h		;631e
	ld a,h			;6321
	nop			;6322
	or d			;6323
	rst 8			;6324
	ei			;6325
	ei			;6326
	rst 38h			;6327
	ei			;6328
	dec h			;6329
	di			;632a
	xor d			;632b
	add a,b			;632c
	defb 0fdh,05ch ;ld e,iyh	;632d
	dec b			;632f
	add hl,bc		;6330
	jp nz,00d00h		;6331
	dec c			;6334
	push af			;6335
	jr c,l637eh		;6336
	ld de,095f9h		;6338
	dec d			;633b
	add hl,de		;633c
	nop			;633d
	rlca			;633e
	add a,b			;633f
	dec l			;6340
	adc a,l			;6341
l6342h:
	or d			;6342
	di			;6343
	rst 38h			;6344
	nop			;6345
	add hl,bc		;6346
	rst 30h			;6347
	rst 8			;6348
	jp nc,0f569h		;6349
	rst 38h			;634c
	ld d,h			;634d
	sbc a,d			;634e
	xor 0f9h		;634f
	ld (hl),0f3h		;6351
	ld (hl),0f5h		;6353
	ld (hl),002h		;6355
	dec c			;6357
	dec c			;6358
	inc b			;6359
	ld de,00d19h		;635a
	inc hl			;635d
	ld de,0ff04h		;635e
	call nc,0aaefh		;6361
	ld c,a			;6364
	ld l,c			;6365
	ret m			;6366
l6367h:
	jp m,0f58ch		;6367
	call pe,sub_71f9h	;636a
	cp 01dh			;636d
	rlc e			;636f
	ld de,01214h		;6371
	sbc a,c			;6374
	adc a,b			;6375
	dec hl			;6376
	rst 38h			;6377
	sub d			;6378
	rst 8			;6379
	di			;637a
	cp 0aah			;637b
	rst 38h			;637d
l637eh:
	and e			;637e
	rst 38h			;637f
	ld iy,00004h		;6380
	call nz,0ecf8h		;6384
	call m,01148h		;6387
	jp (hl)			;638a
	push de			;638b
	inc e			;638c
	nop			;638d
	inc b			;638e
	xor b			;638f
	dec e			;6390
	cp 0e3h			;6391
	inc b			;6393
	jr nc,$-125		;6394
	and c			;6396
	add a,b			;6397
	dec e			;6398
	ld (de),a		;6399
	sub (hl)		;639a
	add a,c			;639b
	push de			;639c
	rst 38h			;639d
	ex (sp),hl		;639e
	di			;639f
	rst 38h			;63a0
l63a1h:
	jr z,l63a1h		;63a1
	add a,h			;63a3
	res 5,(hl)		;63a4
	dec h			;63a6
	call m,0a27fh		;63a7
	inc b			;63aa
	inc h			;63ab
	inc h			;63ac
	add hl,hl		;63ad
	add hl,hl		;63ae
	jp m,0fc71h		;63af
	inc e			;63b2
	ld b,(hl)		;63b3
	defb 0fdh,0f2h,000h ;illegal sequence	;63b4
	jr l6367h		;63b7
	push af			;63b9
	ld (08104h),a		;63ba
	ld d,d			;63bd
	sub e			;63be
	ld e,c			;63bf
	and (hl)		;63c0
	add a,b			;63c1
	call po,sub_6680h	;63c2
	rst 28h			;63c5
	nop			;63c6
	rst 38h			;63c7
	ld d,c			;63c8
	cp 0feh			;63c9
	add a,h			;63cb
	jr z,$-118		;63cc
	rst 38h			;63ce
	add hl,hl		;63cf
	ld c,l			;63d0
	ld e,a			;63d1
	ld sp,071eeh		;63d2
	rst 38h			;63d5
	jp (hl)			;63d6
	ret p			;63d7
	jr l63f7h		;63d8
	in a,(004h)		;63da
	add a,(hl)		;63dc
	ld h,e			;63dd
	rrca			;63de
	adc a,d			;63df
	add a,b			;63e0
	dec l			;63e1
	add a,c			;63e2
	cp c			;63e3
	add a,b			;63e4
	ld b,d			;63e5
	rst 30h			;63e6
	jp nc,0bffbh		;63e7
	pop de			;63ea
	ld h,0fbh		;63eb
	ld c,a			;63ed
	ld sp,03ef7h		;63ee
	nop			;63f1
	dec (hl)		;63f2
	jp m,01c86h		;63f3
	inc a			;63f6
l63f7h:
	nop			;63f7
	ld b,(hl)		;63f8
	ld d,(iy+004h)		;63f9
	add a,(hl)		;63fc
	sub h			;63fd
	add a,d			;63fe
	add a,(hl)		;63ff
	dec e			;6400
	inc a			;6401
	nop			;6402
	jp pe,0f28bh		;6403
	scf			;6406
	xor (hl)		;6407
	inc b			;6408
	xor a			;6409
	di			;640a
	out (0fbh),a		;640b
	or (hl)			;640d
	rst 38h			;640e
	ld a,a			;640f
	and b			;6410
	adc a,b			;6411
	dec h			;6412
	add hl,hl		;6413
	dec c			;6414
	defb 0fdh,0c3h,039h ;illegal sequence	;6415
	inc a			;6418
	nop			;6419
	sub c			;641a
	dec a			;641b
	dec a			;641c
	add hl,sp		;641d
	ld bc,0ed46h		;641e
	ld h,d			;6421
	inc bc			;6422
	dec a			;6423
	inc c			;6424
	cp d			;6425
	dec bc			;6426
	dec d			;6427
	ld e,l			;6428
	add hl,sp		;6429
	ld de,04e20h		;642a
	jr $+15			;642d
	scf			;642f
	ld b,b			;6430
	ld c,c			;6431
	or a			;6432
	rst 10h			;6433
	rst 10h			;6434
	in a,(0ffh)		;6435
	adc a,a			;6437
	call m,0fef3h		;6438
	jp pe,0fac9h		;643b
	ret z			;643e
	defb 0fdh,0eeh,0deh ;illegal sequence	;643f
	ld (hl),00ch		;6442
	adc a,l			;6444
	rst 38h			;6445
	sbc a,h			;6446
	pop af			;6447
	adc a,e			;6448
	call m,02303h		;6449
	ei			;644c
	dec l			;644d
	inc de			;644e
	nop			;644f
	ld c,d			;6450
	dec a			;6451
	adc a,(hl)		;6452
	ld (hl),e		;6453
	ld hl,0ad83h		;6454
	ld de,09200h		;6457
	rst 38h			;645a
	ex af,af'		;645b
	or d			;645c
	rst 38h			;645d
	jp c,0fffdh		;645e
	dec sp			;6461
sub_6462h:
	ex af,af'		;6462
	ld c,l			;6463
	add hl,hl		;6464
	ld c,h			;6465
	ld c,h			;6466
	jp po,000b6h		;6467
	exx			;646a
	add hl,sp		;646b
	rst 0			;646c
	nop			;646d
	add hl,de		;646e
	call m,08064h		;646f
	xor e			;6472
	dec d			;6473
	ld b,063h		;6474
	rst 30h			;6476
	adc a,h			;6477
	inc bc			;6478
	ld e,h			;6479
	dec d			;647a
	djnz l6489h		;647b
	cp b			;647d
	jr c,l6485h		;647e
	dec h			;6480
	dec d			;6481
	inc b			;6482
	cp d			;6483
	add a,l			;6484
l6485h:
	ld l,(hl)		;6485
	add a,b			;6486
	ld (bc),a		;6487
	or a			;6488
l6489h:
	rst 38h			;6489
	in a,(0feh)		;648a
	ccf			;648c
l648dh:
	adc a,091h		;648d
	dec l			;648f
	call m,01923h		;6490
	call nc,0f963h		;6493
	ld h,a			;6496
l6497h:
	ei			;6497
	sbc a,b			;6498
	pop ix			;6499
	ld de,09f04h		;649b
	ret p			;649e
	xor a			;649f
	add hl,sp		;64a0
	nop			;64a1
	sbc a,d			;64a2
	sbc a,d			;64a3
	adc a,h			;64a4
	add a,c			;64a5
	ld h,h			;64a6
	ld c,c			;64a7
	or e			;64a8
	or l			;64a9
	add a,b			;64aa
	and a			;64ab
	add a,b			;64ac
	di			;64ad
	sub h			;64ae
	add hl,bc		;64af
	pop hl			;64b0
	ld (hl),e		;64b1
	cp 01ch			;64b2
	ld b,a			;64b4
	rst 38h			;64b5
	inc sp			;64b6
	ret pe			;64b7
	sbc a,b			;64b8
	inc de			;64b9
	dec c			;64ba
	sbc a,b			;64bb
	jp m,01535h		;64bc
sub_64bfh:
	jp nc,0ff96h		;64bf
	ld a,01bh		;64c2
	ld d,01eh		;64c4
	ld (hl),b		;64c6
	inc bc			;64c7
	ld de,0b604h		;64c8
	add a,b			;64cb
	ld d,h			;64cc
	or e			;64cd
	add a,b			;64ce
	cp 076h			;64cf
	dec c			;64d1
	xor (hl)		;64d2
	rst 30h			;64d3
	ld h,e			;64d4
	ld sp,hl		;64d5
	xor l			;64d6
	ld b,08eh		;64d7
	ex (sp),hl		;64d9
	add hl,hl		;64da
	add a,b			;64db
	ld d,d			;64dc
	ld de,00002h		;64dd
	rst 38h			;64e0
	ld a,(hl)		;64e1
	ld h,009h		;64e2
	rla			;64e4
	ld l,d			;64e5
	xor e			;64e6
	ld h,a			;64e7
	ld hl,01a84h		;64e8
	ld b,c			;64eb
	ld l,(hl)		;64ec
	and h			;64ed
	add a,b			;64ee
	ld d,e			;64ef
	or a			;64f0
	add a,b			;64f1
	ld sp,hl		;64f2
	jp nz,0c731h		;64f3
	jr nz,l6551h		;64f6
	ld e,l			;64f8
	inc a			;64f9
	ld e,h			;64fa
	dec (hl)		;64fb
	ld e,l			;64fc
	add hl,sp		;64fd
	inc bc			;64fe
	add hl,sp		;64ff
	inc c			;6500
	add a,l			;6501
	inc a			;6502
	ld e,l			;6503
	ld (iy-080h),l		;6504
	add hl,hl		;6507
	add a,d			;6508
	add hl,hl		;6509
	xor 07ch		;650a
	scf			;650c
	dec (hl)		;650d
	ld c,002h		;650e
	adc a,b			;6510
	inc bc			;6511
	dec c			;6512
	dec b			;6513
	ld a,(00d05h)		;6514
	call m,083a3h		;6517
	nop			;651a
	ld c,e			;651b
	dec (hl)		;651c
	inc b			;651d
	add a,b			;651e
	ld e,d			;651f
	add a,b			;6520
	ld h,c			;6521
l6522h:
	rst 38h			;6522
	defb 0fdh,07fh,0e6h ;illegal sequence	;6523
	ret pe			;6526
	add hl,sp		;6527
	push af			;6528
	pop hl			;6529
	ld e,c			;652a
	ld (bc),a		;652b
	sub h			;652c
	inc bc			;652d
	push de			;652e
	ld h,(hl)		;652f
	ld b,0d7h		;6530
	rlca			;6532
	defb 0fdh,0cdh,082h ;illegal sequence	;6533
	and h			;6536
	jp p,011f2h		;6537
	or d			;653a
	add a,(hl)		;653b
	add a,d			;653c
	ld d,(hl)		;653d
	push af			;653e
	ld l,c			;653f
	ld (de),a		;6540
	add hl,bc		;6541
	jp p,00410h		;6542
	inc b			;6545
	dec b			;6546
	ld (hl),c		;6547
	inc b			;6548
l6549h:
	ld (0b618h),a		;6549
	add a,b			;654c
	cp (hl)			;654d
	add a,d			;654e
	adc a,d			;654f
	rst 10h			;6550
l6551h:
	add a,b			;6551
	ld a,a			;6552
	scf			;6553
	inc hl			;6554
	add hl,hl		;6555
	ld de,09dffh		;6556
	nop			;6559
	adc a,c			;655a
	adc a,035h		;655b
	inc b			;655d
	ld h,05dh		;655e
	ld b,015h		;6560
	rst 30h			;6562
	ld h,h			;6563
	jp (hl)			;6564
	defb 0edh ;next byte illegal after ed	;6565
	sbc a,e			;6566
	or c			;6567
	rra			;6568
	sub e			;6569
	ld c,004h		;656a
	and b			;656c
	ret z			;656d
	call m,003a8h		;656e
	rst 30h			;6571
	xor a			;6572
	jp p,00496h		;6573
	add hl,de		;6576
	ld l,h			;6577
	cpl			;6578
	sbc a,a			;6579
	adc a,e			;657a
	inc b			;657b
	add a,b			;657c
	ld l,c			;657d
	or e			;657e
	add a,b			;657f
	ld c,a			;6580
	rst 20h			;6581
	ld de,l45d8h		;6582
	exx			;6585
	call z,sub_5c11h	;6586
	ld e,h			;6589
	rst 38h			;658a
	inc a			;658b
	res 0,(hl)		;658c
	inc de			;658e
	ex de,hl		;658f
	ld e,l			;6590
	ex (sp),hl		;6591
	ld a,(bc)		;6592
	ld b,l			;6593
	defb 0edh ;next byte illegal after ed	;6594
	push hl			;6595
	add hl,de		;6596
	ld a,(bc)		;6597
	sub e			;6598
	jp p,0f3b3h		;6599
	sbc a,c			;659c
	nop			;659d
	inc sp			;659e
	ret po			;659f
	dec b			;65a0
	or h			;65a1
	sub a			;65a2
	sub (hl)		;65a3
	xor a			;65a4
	rrca			;65a5
	ld de,08205h		;65a6
	ld d,l			;65a9
	or e			;65aa
	add a,b			;65ab
	and l			;65ac
	add a,b			;65ad
	ccf			;65ae
	sbc a,h			;65af
	ld c,a			;65b0
	call 0ff11h		;65b1
	sub d			;65b4
	add a,b			;65b5
	or l			;65b6
	jp nc,003bbh		;65b7
	jp m,0f8b9h		;65ba
	ld (de),a		;65bd
	dec b			;65be
	rla			;65bf
	or h			;65c0
	add a,a			;65c1
	adc a,a			;65c2
	or 03fh			;65c3
	jr nc,l65cbh		;65c5
l65c7h:
	inc b			;65c7
	rst 38h			;65c8
	ld d,(hl)		;65c9
	xor d			;65ca
l65cbh:
	or h			;65cb
	xor b			;65cc
l65cdh:
	sbc a,d			;65cd
	add a,c			;65ce
	jp 081b2h		;65cf
	ld e,b			;65d2
	ld a,(hl)		;65d3
	rst 38h			;65d4
	ld l,l			;65d5
	inc sp			;65d6
	ex af,af'		;65d7
	inc bc			;65d8
	add hl,hl		;65d9
	add a,d			;65da
	call m,0cc3ah		;65db
	ld (hl),a		;65de
	cp 029h			;65df
	ld sp,hl		;65e1
	jp c,0d600h		;65e2
	ret m			;65e5
	ld c,c			;65e6
	dec (hl)		;65e7
	add hl,bc		;65e8
	add hl,bc		;65e9
	and 0cch		;65ea
	rst 20h			;65ec
	sbc a,a			;65ed
	inc b			;65ee
	cpl			;65ef
	inc h			;65f0
	cp 066h			;65f1
	sbc a,d			;65f3
	inc h			;65f4
	rst 38h			;65f5
	call pe,0b19fh		;65f6
	add a,b			;65f9
	ld h,d			;65fa
	or a			;65fb
	rst 38h			;65fc
	daa			;65fd
	in a,(083h)		;65fe
	cp (hl)			;6600
	djnz l660bh		;6601
l6603h:
	inc c			;6603
	djnz l65c7h		;6604
	nop			;6606
	inc l			;6607
	inc l			;6608
	ex af,af'		;6609
	rst 38h			;660a
l660bh:
	rra			;660b
	pop hl			;660c
	or c			;660d
	rst 20h			;660e
	ld e,(hl)		;660f
	rst 30h			;6610
	ld e,a			;6611
l6612h:
	adc a,018h		;6612
	adc a,d			;6614
	call nz,09783h		;6615
	xor 04eh		;6618
	ret m			;661a
	ld c,a			;661b
	pop bc			;661c
	jp nc,09409h		;661d
	sbc a,(hl)		;6620
	sbc a,(hl)		;6621
	rst 38h			;6622
	jr l662eh		;6623
	sbc a,c			;6625
	adc a,c			;6626
	dec c			;6627
	add hl,hl		;6628
	dec h			;6629
sub_662ah:
	add a,b			;662a
	ld c,a			;662b
	adc a,d			;662c
	inc b			;662d
l662eh:
	adc a,b			;662e
	jp m,l4d34h		;662f
	ld (00c72h),a		;6632
	add hl,bc		;6635
	add a,c			;6636
	ld c,d			;6637
	add a,c			;6638
	ld a,a			;6639
	dec c			;663a
	call z,08eeeh		;663b
	defb 0fdh,06dh ;ld iyl,iyl	;663e
	add a,e			;6640
	sbc a,h			;6641
	rst 28h			;6642
	call nc,0fe05h		;6643
	ld a,l			;6646
	sub d			;6647
	xor c			;6648
	call 022a7h		;6649
	add hl,bc		;664c
	xor c			;664d
	ld c,a			;664e
	add a,h			;664f
	ld b,h			;6650
	sub d			;6651
l6652h:
	rst 38h			;6652
	ld l,d			;6653
	ei			;6654
	add a,b			;6655
	sbc a,(hl)		;6656
	ret po			;6657
	ex af,af'		;6658
	inc d			;6659
	inc d			;665a
	ld (hl),c		;665b
	ex af,af'		;665c
	in a,(0dbh)		;665d
	sub (hl)		;665f
	inc h			;6660
	rst 38h			;6661
	sub 055h		;6662
	add a,h			;6664
	cp a			;6665
	add a,a			;6666
l6667h:
	or 0dfh			;6667
	ld l,d			;6669
	add a,l			;666a
	daa			;666b
	ld e,c			;666c
	call m,0d473h		;666d
	sbc a,a			;6670
	dec hl			;6671
	xor c			;6672
	dec (hl)		;6673
	and c			;6674
	ex de,hl		;6675
	or h			;6676
	call pe,0ffc5h		;6677
	cp d			;667a
	ld b,l			;667b
	xor c			;667c
	and e			;667d
	ld c,c			;667e
	add a,c			;667f
sub_6680h:
	ld d,e			;6680
	add a,d			;6681
	pop de			;6682
	rst 38h			;6683
	ld sp,hl		;6684
	ld e,a			;6685
	ld h,b			;6686
	inc d			;6687
	jr l669ah		;6688
	ld b,(hl)		;668a
	cp d			;668b
	ld (00cdbh),hl		;668c
	add a,c			;668f
	ld hl,01049h		;6690
	rst 10h			;6693
l6694h:
	rra			;6694
	out (02dh),a		;6695
	ex af,af'		;6697
	jp (hl)			;6698
	pop af			;6699
l669ah:
	and a			;669a
	rst 28h			;669b
	dec c			;669c
	dec h			;669d
l669eh:
	dec l			;669e
	jp nc,00de1h		;669f
	call c,02af9h		;66a2
	or 0c6h			;66a5
	cp 055h			;66a7
	ld (bc),a		;66a9
	cp 0b2h			;66aa
	xor l			;66ac
	or c			;66ad
	cp 08ch			;66ae
	ld sp,l5b14h		;66b0
	or e			;66b3
	add a,b			;66b4
	inc l			;66b5
	in a,(0ech)		;66b6
	ret m			;66b8
	ld d,a			;66b9
	ex af,af'		;66ba
	push af			;66bb
	ret c			;66bc
	ld e,c			;66bd
	jr c,$+22		;66be
	inc hl			;66c0
	jr nc,l669eh		;66c1
l66c3h:
	ld (02872h),hl		;66c3
	or b			;66c6
	sub c			;66c7
	ld c,c			;66c8
	rst 38h			;66c9
	ccf			;66ca
	out (080h),a		;66cb
	jr l66e3h		;66cd
	dec (hl)		;66cf
	ld d,l			;66d0
	inc (hl)		;66d1
	inc (hl)		;66d2
	jr nc,l6667h		;66d3
	ld a,l			;66d5
	inc c			;66d6
	adc a,b			;66d7
	ret m			;66d8
	ld (bc),a		;66d9
	inc h			;66da
	add hl,hl		;66db
	ld sp,l73d6h		;66dc
	call pe,0acaeh		;66df
	ld a,h			;66e2
l66e3h:
	rra			;66e3
	and (hl)		;66e4
	ld l,e			;66e5
	xor a			;66e6
	ld e,c			;66e7
	and l			;66e8
	ld (bc),a		;66e9
	xor (hl)		;66ea
	ld d,e			;66eb
	ld l,(hl)		;66ec
	rst 38h			;66ed
	or h			;66ee
	add a,b			;66ef
	defb 0edh ;next byte illegal after ed	;66f0
	or 01ah			;66f1
	inc (hl)		;66f3
	daa			;66f4
	inc d			;66f5
	inc c			;66f6
	ret m			;66f7
	jr nz,$+9		;66f8
	jr nc,l676ah		;66fa
l66fch:
	ld l,l			;66fc
	ld (hl),c		;66fd
	ld (de),a		;66fe
	ld e,l			;66ff
	djnz l6694h		;6700
	and c			;6702
	add a,h			;6703
	inc h			;6704
	inc b			;6705
	rst 38h			;6706
	ld a,a			;6707
	ld d,h			;6708
	inc c			;6709
	ld (bc),a		;670a
	jr l66c3h		;670b
	or (hl)			;670d
	sub d			;670e
	ld (hl),d		;670f
	ld (hl),d		;6710
	ld a,h			;6711
	inc d			;6712
	ld l,l			;6713
	sub d			;6714
l6715h:
	inc d			;6715
	dec c			;6716
l6717h:
	adc a,(hl)		;6717
	ld h,h			;6718
	adc a,d			;6719
	or c			;671a
	adc a,e			;671b
	ld (09104h),hl		;671c
	ei			;671f
	ld l,a			;6720
	djnz l6733h		;6721
	ld de,0a913h		;6723
	adc a,a			;6726
	ex af,af'		;6727
	ex (sp),hl		;6728
	call p,0fe9fh		;6729
	and (hl)		;672c
	pop af			;672d
	ld l,b			;672e
	rst 38h			;672f
	jp nc,l7c7ch		;6730
l6733h:
	cp 072h			;6733
	add a,l			;6735
	jp nc,l58b0h		;6736
	ld d,e			;6739
	ld c,c			;673a
	add a,b			;673b
	or h			;673c
	push af			;673d
	ld h,(hl)		;673e
	nop			;673f
	add a,0f4h		;6740
	ld b,b			;6742
	add hl,bc		;6743
	jr nc,l67b8h		;6744
	sub (hl)		;6746
l6747h:
	cp d			;6747
	or (hl)			;6748
	ld (de),a		;6749
	ld c,l			;674a
	ld c,c			;674b
	inc c			;674c
	ld a,(bc)		;674d
l674eh:
	jp c,l73feh		;674e
	dec l			;6751
	add a,l			;6752
	ld l,l			;6753
	rst 38h			;6754
	ld a,a			;6755
	ld c,l			;6756
	pop af			;6757
	add a,l			;6758
	pop af			;6759
	inc hl			;675a
	rst 38h			;675b
	call p,08012h		;675c
	ld c,b			;675f
	rst 38h			;6760
	add a,h			;6761
	inc b			;6762
	jr l67d2h		;6763
	adc a,h			;6765
	sub d			;6766
	adc a,l			;6767
	ld d,d			;6768
	ld a,(bc)		;6769
l676ah:
	nop			;676a
	inc e			;676b
	sbc a,l			;676c
	sbc a,e			;676d
	add a,010h		;676e
	sub d			;6770
	djnz l6717h		;6771
	ld a,c			;6773
	sbc a,c			;6774
	and d			;6775
	xor b			;6776
	call z,00569h		;6777
	djnz l6715h		;677a
	dec e			;677c
	call 000b2h		;677d
	xor h			;6780
	djnz l6793h		;6781
	sub h			;6783
	or l			;6784
	ret m			;6785
	nop			;6786
	ex af,af'		;6787
	ld d,l			;6788
	ld d,l			;6789
	rst 38h			;678a
	sub 039h		;678b
sub_678dh:
	or d			;678d
	dec bc			;678e
	inc c			;678f
	ld b,e			;6790
	rrca			;6791
	ld a,c			;6792
l6793h:
	add a,c			;6793
	sbc a,h			;6794
	ld l,h			;6795
	ld (hl),b		;6796
	ld e,c			;6797
	ccf			;6798
	ex af,af'		;6799
	ld b,(hl)		;679a
	inc e			;679b
	ei			;679c
	add hl,bc		;679d
	sub d			;679e
	or (hl)			;679f
	sub (hl)		;67a0
	ret m			;67a1
	inc d			;67a2
	ld a,l			;67a3
	add a,b			;67a4
	ld b,(hl)		;67a5
	add a,d			;67a6
	add a,c			;67a7
	ld c,(hl)		;67a8
	add hl,hl		;67a9
	ld c,(hl)		;67aa
	inc c			;67ab
	ld e,c			;67ac
	jr nc,l67b7h		;67ad
	sub d			;67af
	pop bc			;67b0
	or c			;67b1
	rst 38h			;67b2
	ld c,a			;67b3
	cp 0f4h			;67b4
	pop de			;67b6
l67b7h:
	pop af			;67b7
l67b8h:
	ld d,d			;67b8
	pop af			;67b9
	ld h,d			;67ba
	nop			;67bb
	dec h			;67bc
	ld a,l			;67bd
	adc a,b			;67be
sub_67bfh:
	rst 38h			;67bf
	ex af,af'		;67c0
	djnz l674eh		;67c1
	defb 0edh ;next byte illegal after ed	;67c3
	inc c			;67c4
	ld h,d			;67c5
	sub h			;67c6
	ld de,l4949h		;67c7
	ld a,c			;67ca
	jp po,01ecfh		;67cb
	ld b,h			;67ce
	sub d			;67cf
	ld c,(hl)		;67d0
	sub b			;67d1
l67d2h:
	jp nz,0db55h		;67d2
	rst 18h			;67d5
	and (hl)		;67d6
	ld c,d			;67d7
	xor h			;67d8
	ld a,(bc)		;67d9
	ld (hl),d		;67da
	ld c,l			;67db
	adc a,h			;67dc
	daa			;67dd
	ret nz			;67de
	sbc a,b			;67df
sub_67e0h:
	cp h			;67e0
	sub h			;67e1
	or (hl)			;67e2
	ld (bc),a		;67e3
	sbc a,e			;67e4
	sub l			;67e5
	or h			;67e6
	ld c,h			;67e7
	inc b			;67e8
	ld (hl),d		;67e9
	nop			;67ea
	ld l,e			;67eb
	sub d			;67ec
	nop			;67ed
	sub (hl)		;67ee
	inc de			;67ef
	jr c,l67f2h		;67f0
l67f2h:
	ld bc,l7296h		;67f2
	cp (hl)			;67f5
	djnz $+127		;67f6
	ld a,c			;67f8
	ld e,c			;67f9
	call m,0df99h		;67fa
	ld h,e			;67fd
	sub d			;67fe
	inc e			;67ff
	add a,c			;6800
	adc a,(hl)		;6801
	or d			;6802
	or a			;6803
	add a,b			;6804
	ld l,h			;6805
	dec c			;6806
	in a,(09eh)		;6807
	ex af,af'		;6809
	dec a			;680a
	ld (hl),b		;680b
	dec a			;680c
	ld e,c			;680d
	ld c,(hl)		;680e
	ld b,h			;680f
	ld c,(hl)		;6810
	ccf			;6811
	inc d			;6812
	ld (hl),d		;6813
	add a,c			;6814
	jp pe,0ff25h		;6815
	jr nc,l6852h		;6818
	sub d			;681a
	ret			;681b
	ld a,h			;681c
	sbc a,h			;681d
	ld e,b			;681e
	rst 38h			;681f
	cp 0a2h			;6820
	cp 079h			;6822
	inc hl			;6824
	rst 38h			;6825
	or (hl)			;6826
	rst 38h			;6827
	adc a,d			;6828
	sub c			;6829
	sbc a,h			;682a
	sub 00ch		;682b
	ld b,h			;682d
	ld c,(iy-072h)		;682e
	rst 38h			;6831
	ld h,(hl)		;6832
	and h			;6833
	jr c,l684ah		;6834
	rst 38h			;6836
	ld de,02926h		;6837
	ld c,c			;683a
	ld e,038h		;683b
	add hl,hl		;683d
	sub l			;683e
	cp e			;683f
	add hl,hl		;6840
	sbc a,d			;6841
	add a,h			;6842
	inc c			;6843
	inc b			;6844
	sbc a,e			;6845
	or c			;6846
	add hl,de		;6847
	xor e			;6848
	ld (hl),d		;6849
l684ah:
	xor b			;684a
	and d			;684b
	rst 38h			;684c
	ld d,c			;684d
	in a,(016h)		;684e
	rst 30h			;6850
	ld b,(hl)		;6851
l6852h:
	ld sp,hl		;6852
	ld c,0b7h		;6853
	cp e			;6855
	cp e			;6856
	ld c,l			;6857
	add hl,sp		;6858
	ld b,h			;6859
	ld b,h			;685a
	ld l,l			;685b
l685ch:
	rst 20h			;685c
	ld a,c			;685d
	ld (hl),b		;685e
	dec (hl)		;685f
	adc a,d			;6860
	inc c			;6861
	ld l,(hl)		;6862
	inc d			;6863
	jp nc,01869h		;6864
	ld c,c			;6867
	sub d			;6868
	add a,b			;6869
	ld c,l			;686a
	inc l			;686b
	or (hl)			;686c
	dec d			;686d
	dec a			;686e
	inc hl			;686f
	ld e,l			;6870
	or (hl)			;6871
	push af			;6872
	adc a,d			;6873
	ld h,0f4h		;6874
	cp b			;6876
	adc a,d			;6877
	or 0ffh			;6878
	dec (hl)		;687a
	inc (hl)		;687b
	add hl,bc		;687c
	adc a,c			;687d
	ld c,c			;687e
	sub l			;687f
	jp c,0fefeh		;6880
	sbc a,(hl)		;6883
	cp 068h			;6884
	or b			;6886
	and 0c6h		;6887
	ld (l4d25h),hl		;6889
	rst 38h			;688c
	ld (l68d2h),a		;688d
	call pe,08ae2h		;6890
	inc h			;6893
	ld c,l			;6894
	rst 38h			;6895
	ld c,d			;6896
	inc b			;6897
	push iy			;6898
	rst 38h			;689a
	ld de,0ffd4h		;689b
	ld (hl),h		;689e
	in a,(05eh)		;689f
	add hl,hl		;68a1
	sbc a,e			;68a2
	ld e,l			;68a3
	xor b			;68a4
	dec sp			;68a5
	xor h			;68a6
	inc (hl)		;68a7
	ld c,028h		;68a8
	cp d			;68aa
	dec h			;68ab
	dec c			;68ac
	rst 38h			;68ad
	ret c			;68ae
	cp a			;68af
	ret			;68b0
	add a,b			;68b1
	ld d,h			;68b2
	cp d			;68b3
	and 052h		;68b4
	add a,b			;68b6
	jp nc,l5096h		;68b7
	or b			;68ba
	jp z,03955h		;68bb
	pop hl			;68be
	or e			;68bf
	dec (hl)		;68c0
	pop bc			;68c1
	ld c,h			;68c2
	ld (bc),a		;68c3
	rst 18h			;68c4
	or (hl)			;68c5
	cp e			;68c6
	rst 18h			;68c7
	rst 38h			;68c8
	add a,d			;68c9
	add a,(hl)		;68ca
	rst 10h			;68cb
	add a,c			;68cc
	jr nc,$+1		;68cd
	ld h,h			;68cf
	cp (hl)			;68d0
	ccf			;68d1
l68d2h:
	rst 38h			;68d2
	ld a,b			;68d3
	sbc a,e			;68d4
	ld bc,0086dh		;68d5
	jr nc,l685ch		;68d8
	ld c,l			;68da
	inc c			;68db
	ld d,l			;68dc
	cp 0b9h			;68dd
	rst 8			;68df
	defb 0fdh,0eah,053h ;illegal sequence	;68e0
	inc d			;68e3
	sbc a,h			;68e4
	or c			;68e5
	ret po			;68e6
	add a,h			;68e7
	sub d			;68e8
	dec h			;68e9
	adc a,b			;68ea
	ld l,c			;68eb
	inc d			;68ec
	ld l,l			;68ed
	sub d			;68ee
	ld e,h			;68ef
	inc d			;68f0
	dec h			;68f1
	inc b			;68f2
	inc c			;68f3
	rst 38h			;68f4
	ld (hl),b		;68f5
	inc d			;68f6
	ld b,(hl)		;68f7
	inc e			;68f8
	ex (sp),hl		;68f9
	call nz,sub_4e9bh	;68fa
	sub d			;68fd
	and a			;68fe
	sbc a,(hl)		;68ff
	ld d,d			;6900
	rst 38h			;6901
	jr c,$+104		;6902
	cp d			;6904
	sbc a,l			;6905
	ld b,l			;6906
	exx			;6907
	xor b			;6908
	inc h			;6909
	rst 38h			;690a
	ld (hl),l		;690b
	add hl,de		;690c
	ld b,a			;690d
	rst 38h			;690e
	ld (hl),h		;690f
	pop bc			;6910
	ld (hl),b		;6911
	nop			;6912
	add hl,hl		;6913
	call nz,sub_4900h	;6914
	nop			;6917
	ld l,(hl)		;6918
	call nc,sub_6d43h	;6919
	rst 20h			;691c
	ld b,d			;691d
	dec c			;691e
	ld sp,0c114h		;691f
	sbc a,c			;6922
	and l			;6923
	add a,b			;6924
	ld d,d			;6925
	ld l,(hl)		;6926
	add a,b			;6927
	add hl,hl		;6928
	in a,(080h)		;6929
	ld e,b			;692b
	cp (hl)			;692c
	ld e,h			;692d
	djnz l6977h		;692e
	dec a			;6930
	rst 38h			;6931
	ld bc,02905h		;6932
	ld l,l			;6935
	nop			;6936
	ex af,af'		;6937
	and h			;6938
	ld l,(hl)		;6939
	sub (hl)		;693a
	add a,c			;693b
	ld h,h			;693c
	cp 0adh			;693d
	cp 06dh			;693f
	defb 0fdh,063h ;ld iyh,e	;6941
	inc b			;6943
	call m,0a6bfh		;6944
	ld b,a			;6947
	dec (hl)		;6948
	sbc a,l			;6949
	inc b			;694a
	ld c,l			;694b
	cp e			;694c
	rst 38h			;694d
	ld l,(hl)		;694e
	jp pe,089d1h		;694f
	or a			;6952
	xor e			;6953
	ld d,d			;6954
	sub (hl)		;6955
	ld b,h			;6956
	jp l5d1ch		;6957
	inc b			;695a
	and d			;695b
	defb 0fdh,053h,0dah ;illegal sequence	;695c
	dec e			;695f
	adc a,l			;6960
	ld de,l4947h		;6961
	rst 38h			;6964
	scf			;6965
	ret c			;6966
	ld d,e			;6967
	add a,b			;6968
	jr z,l696fh		;6969
	rst 38h			;696b
	push hl			;696c
	ld c,c			;696d
	inc c			;696e
l696fh:
	adc a,c			;696f
	ld a,l			;6970
	rst 38h			;6971
	and 0a3h		;6972
	ld d,e			;6974
	cp b			;6975
	xor c			;6976
l6977h:
	add a,d			;6977
	ld e,h			;6978
	inc b			;6979
	dec d			;697a
	ld l,(hl)		;697b
	ld l,(hl)		;697c
	ld c,l			;697d
	dec b			;697e
	call nz,09208h		;697f
	rst 20h			;6982
	cp b			;6983
	cp a			;6984
	ld (hl),b		;6985
	sub (hl)		;6986
	ld h,c			;6987
	in a,(08ah)		;6988
	rst 38h			;698a
	add a,b			;698b
	add a,e			;698c
	adc a,(hl)		;698d
	sub d			;698e
	add a,d			;698f
	exx			;6990
	ld h,b			;6991
	rst 38h			;6992
	sbc a,d			;6993
	inc b			;6994
	ld (hl),c		;6995
	inc d			;6996
	rst 30h			;6997
	adc a,02bh		;6998
	ld l,c			;699a
	ld b,h			;699b
	rst 38h			;699c
	rst 38h			;699d
	jp nc,0ba48h		;699e
	dec b			;69a1
	rst 38h			;69a2
	ld (0ae22h),a		;69a3
	cp 027h			;69a6
	cp 0fah			;69a8
	adc a,h			;69aa
	sbc a,097h		;69ab
	or (hl)			;69ad
	xor e			;69ae
	call sub_61e1h		;69af
	ld c,c			;69b2
	ld c,l			;69b3
	adc a,e			;69b4
	ld b,d			;69b5
	jp c,0b491h		;69b6
	sub (hl)		;69b9
	inc b			;69ba
	adc a,h			;69bb
	cp e			;69bc
	adc a,e			;69bd
	rst 38h			;69be
	sbc a,e			;69bf
	and 014h		;69c0
	call m,0b672h		;69c2
	call nc,00811h		;69c5
	rst 38h			;69c8
	ld (hl),h		;69c9
	sub d			;69ca
	jp z,08cc9h		;69cb
	ld d,(hl)		;69ce
	add a,b			;69cf
	sub h			;69d0
	inc (hl)		;69d1
	in a,(08fh)		;69d2
	rst 38h			;69d4
	inc (hl)		;69d5
	sub d			;69d6
	or (hl)			;69d7
	ld (019f9h),bc		;69d8
	cp l			;69dc
	adc a,b			;69dd
	sub (hl)		;69de
	jp p,l50cfh		;69df
	rst 0			;69e2
	ld b,h			;69e3
	sbc a,(hl)		;69e4
	sbc a,c			;69e5
	dec h			;69e6
l69e7h:
	adc a,a			;69e7
	or e			;69e8
	cp b			;69e9
	xor c			;69ea
	xor e			;69eb
	ld h,l			;69ec
	add a,b			;69ed
	ld a,(de)		;69ee
	add a,c			;69ef
	add a,h			;69f0
	or e			;69f1
sub_69f2h:
	ei			;69f2
	rst 38h			;69f3
	ld h,e			;69f4
	sbc a,l			;69f5
	pop af			;69f6
	jp p,0d8ebh		;69f7
	and h			;69fa
	and (hl)		;69fb
	ld l,d			;69fc
	sub (hl)		;69fd
	dec a			;69fe
	ld c,l			;69ff
l6a00h:
	cp a			;6a00
	sub l			;6a01
	inc c			;6a02
	sbc a,l			;6a03
	call pe,013ddh		;6a04
	call m,039fdh		;6a07
	jr l6a24h		;6a0a
	sbc a,a			;6a0c
	rst 30h			;6a0d
	and a			;6a0e
	ld e,l			;6a0f
	out (03bh),a		;6a10
	inc d			;6a12
	jp 03003h		;6a13
	inc (hl)		;6a16
	jr c,l6a92h		;6a17
	and 0b3h		;6a19
	defb 0edh ;next byte illegal after ed	;6a1b
	xor 0aah		;6a1c
	cp e			;6a1e
	xor a			;6a1f
	ld e,a			;6a20
	ld e,c			;6a21
	sbc a,a			;6a22
	add a,(hl)		;6a23
l6a24h:
	inc d			;6a24
	ld a,c			;6a25
	jp nc,011ech		;6a26
	ld l,l			;6a29
	call pe,09be5h		;6a2a
	ld d,018h		;6a2d
	rst 28h			;6a2f
	sbc a,(hl)		;6a30
	and l			;6a31
	adc a,(hl)		;6a32
	sub d			;6a33
	di			;6a34
	rst 8			;6a35
	xor d			;6a36
	rlc b			;6a37
	sbc a,c			;6a39
	push de			;6a3a
	jr nc,l6a74h		;6a3b
	ld d,(hl)		;6a3d
	rst 38h			;6a3e
	ld d,d			;6a3f
	ex af,af'		;6a40
	jr l6a90h		;6a41
	cp a			;6a43
	jr nc,l6a00h		;6a44
	in a,(08eh)		;6a46
	ex de,hl		;6a48
	ld a,b			;6a49
	and d			;6a4a
	sub h			;6a4b
	add a,h			;6a4c
	ld d,d			;6a4d
	dec h			;6a4e
	jp nc,l79b1h		;6a4f
	pop de			;6a52
	adc a,e			;6a53
	call nc,00063h		;6a54
	ld b,069h		;6a57
	sub d			;6a59
	or d			;6a5a
	add a,c			;6a5b
	or e			;6a5c
	add a,b			;6a5d
	ld (0ff38h),hl		;6a5e
	daa			;6a61
	jp c,0add8h		;6a62
	xor e			;6a65
	and (hl)		;6a66
	ld h,e			;6a67
	pop hl			;6a68
	ld a,b			;6a69
l6a6ah:
	jr nc,l6ab5h		;6a6a
	ld l,051h		;6a6c
	ei			;6a6e
	ld sp,hl		;6a6f
	ld d,000h		;6a70
	add hl,bc		;6a72
	add hl,hl		;6a73
l6a74h:
	inc (hl)		;6a74
	ex af,af'		;6a75
	cp 0feh			;6a76
	sbc a,d			;6a78
	cp 02fh			;6a79
	pop de			;6a7b
	ret z			;6a7c
	call c,0c7c8h		;6a7d
	pop bc			;6a80
	djnz l6ad8h		;6a81
	inc (hl)		;6a83
	ex (sp),hl		;6a84
	ld (hl),h		;6a85
	adc a,a			;6a86
	ld d,c			;6a87
	push af			;6a88
	ld l,l			;6a89
	dec bc			;6a8a
	inc c			;6a8b
	ei			;6a8c
	ld d,(hl)		;6a8d
	adc a,(hl)		;6a8e
	sub c			;6a8f
l6a90h:
	xor b			;6a90
	sbc a,c			;6a91
l6a92h:
	inc e			;6a92
	nop			;6a93
	sbc a,01eh		;6a94
	ret m			;6a96
	dec c			;6a97
	ld sp,hl		;6a98
	add a,h			;6a99
	call p,023f9h		;6a9a
	ld b,h			;6a9d
	nop			;6a9e
	inc (hl)		;6a9f
	ld a,l			;6aa0
	rst 38h			;6aa1
	ld d,e			;6aa2
	push af			;6aa3
	ld a,l			;6aa4
	add a,0c9h		;6aa5
	jr $-68			;6aa7
	sbc a,0fbh		;6aa9
	jp z,l726eh		;6aab
	add a,(hl)		;6aae
	ld d,h			;6aaf
	ld c,c			;6ab0
	jr nc,l6b0ch		;6ab1
	ld (hl),e		;6ab3
	ld l,l			;6ab4
l6ab5h:
	ld de,l498dh		;6ab5
	adc a,a			;6ab8
	ld hl,(0d78eh)		;6ab9
	add a,c			;6abc
	ld b,0beh		;6abd
	jp c,0009fh		;6abf
	ld c,h			;6ac2
	adc a,c			;6ac3
	ld d,e			;6ac4
	cp 0fdh			;6ac5
	inc sp			;6ac7
l6ac8h:
	inc d			;6ac8
	call m,sub_6d79h	;6ac9
	ld c,c			;6acc
	or l			;6acd
	rst 38h			;6ace
	ld e,c			;6acf
	adc a,b			;6ad0
	dec (hl)		;6ad1
	adc a,b			;6ad2
	ld l,b			;6ad3
	add hl,hl		;6ad4
	sub (hl)		;6ad5
	in a,(09eh)		;6ad6
l6ad8h:
	cp c			;6ad8
	dec c			;6ad9
	inc e			;6ada
	jr l6a6ah		;6adb
	ld h,a			;6add
	sub a			;6ade
	ret p			;6adf
	cp e			;6ae0
	cp d			;6ae1
	pop de			;6ae2
	ld de,l7955h		;6ae3
sub_6ae6h:
	rst 18h			;6ae6
	and 07ah		;6ae7
	add hl,hl		;6ae9
	cp c			;6aea
	dec hl			;6aeb
	xor h			;6aec
	inc h			;6aed
	inc l			;6aee
	ld bc,095a7h		;6aef
	rst 38h			;6af2
	cp c			;6af3
	ld a,(bc)		;6af4
	rst 38h			;6af5
	ld e,h			;6af6
	or b			;6af7
	ld l,(hl)		;6af8
	ld c,a			;6af9
	or (hl)			;6afa
	rst 18h			;6afb
	xor (hl)		;6afc
	ex de,hl		;6afd
	cp c			;6afe
	pop de			;6aff
	sbc a,d			;6b00
	rst 38h			;6b01
	sbc a,h			;6b02
	inc (hl)		;6b03
	ld a,(de)		;6b04
	ld l,d			;6b05
	and (hl)		;6b06
	ex de,hl		;6b07
	sbc a,l			;6b08
	ld a,(0b481h)		;6b09
l6b0ch:
	add a,b			;6b0c
	jp z,0b579h		;6b0d
	ld d,e			;6b10
	and (hl)		;6b11
	sbc a,c			;6b12
	ld l,e			;6b13
	sub (hl)		;6b14
	inc a			;6b15
	ld c,c			;6b16
	rst 10h			;6b17
	ld (de),a		;6b18
	ld l,0d6h		;6b19
	push bc			;6b1b
	and h			;6b1c
	ld a,h			;6b1d
l6b1eh:
	jr nc,l6b1eh		;6b1e
	ld a,a			;6b20
	ld c,b			;6b21
	inc c			;6b22
	cp (hl)			;6b23
	rst 18h			;6b24
	ld d,c			;6b25
	rst 38h			;6b26
	sub (hl)		;6b27
	ld b,l			;6b28
	out (077h),a		;6b29
	or c			;6b2b
	sub a			;6b2c
	or c			;6b2d
	add a,l			;6b2e
	inc (hl)		;6b2f
	or (hl)			;6b30
	adc a,e			;6b31
	call nz,08c80h		;6b32
	rst 38h			;6b35
	adc a,(hl)		;6b36
	and b			;6b37
	ld (08afch),a		;6b38
	add a,0f6h		;6b3b
	xor e			;6b3d
	dec hl			;6b3e
	and a			;6b3f
	ld l,b			;6b40
	rst 38h			;6b41
	xor a			;6b42
	and 088h		;6b43
	xor a			;6b45
	sub (hl)		;6b46
	cp e			;6b47
	jr nz,$-125		;6b48
	dec h			;6b4a
	or e			;6b4b
	inc hl			;6b4c
	in a,(02eh)		;6b4d
l6b4fh:
	cpl			;6b4f
	rst 38h			;6b50
	pop bc			;6b51
	ld c,l			;6b52
	jp po,l7212h		;6b53
	call nz,sub_482ah	;6b56
	nop			;6b59
	ld d,e			;6b5a
	cp d			;6b5b
	add a,(hl)		;6b5c
	inc e			;6b5d
	add a,a			;6b5e
	jp 06014h		;6b5f
	sub (hl)		;6b62
	in a,(0dbh)		;6b63
	ld e,h			;6b65
	nop			;6b66
	sub 0ebh		;6b67
	ld l,e			;6b69
	add a,c			;6b6a
	ld l,a			;6b6b
	cp (hl)			;6b6c
	jp c,0d963h		;6b6d
	inc de			;6b70
	inc a			;6b71
	ld h,h			;6b72
	ld h,e			;6b73
	sub d			;6b74
	add hl,bc		;6b75
	dec b			;6b76
	ld c,d			;6b77
	ld c,l			;6b78
	or l			;6b79
	ld c,h			;6b7a
	ld e,c			;6b7b
	inc h			;6b7c
	defb 0fdh,0feh,0a2h ;illegal sequence	;6b7d
	pop hl			;6b80
	ld h,(hl)		;6b81
	in a,(0dfh)		;6b82
	ld (hl),l		;6b84
	sbc a,l			;6b85
	or (hl)			;6b86
	cp e			;6b87
	in a,(07eh)		;6b88
	dec bc			;6b8a
	adc a,a			;6b8b
	ld c,c			;6b8c
	jp 00599h		;6b8d
	add a,c			;6b90
	or l			;6b91
	rst 38h			;6b92
	dec (hl)		;6b93
	ld l,(hl)		;6b94
	inc e			;6b95
	jp c,012b4h		;6b96
	ld c,(hl)		;6b99
	rst 8			;6b9a
	ld l,c			;6b9b
	djnz l6ba3h		;6b9c
	rst 38h			;6b9e
	dec a			;6b9f
	ld (0e592h),hl		;6ba0
l6ba3h:
	add a,004h		;6ba3
	inc b			;6ba5
	or (hl)			;6ba6
	and 090h		;6ba7
	ld de,0c2ffh		;6ba9
	inc b			;6bac
	rst 38h			;6bad
	dec sp			;6bae
	ld e,a			;6baf
	ld c,c			;6bb0
	defb 0fdh,05ch ;ld e,iyh	;6bb1
	nop			;6bb3
	pop de			;6bb4
	and a			;6bb5
	defb 0fdh,054h ;ld d,iyh	;6bb6
	cp 04ah			;6bb8
	jr nc,$-1		;6bba
	ex de,hl		;6bbc
	sub d			;6bbd
	sub b			;6bbe
	sub d			;6bbf
	jp c,09991h		;6bc0
	jp c,085bch		;6bc3
	add a,b			;6bc6
	jr nc,$-3		;6bc7
	jp nz,l5513h		;6bc9
	ld e,l			;6bcc
	rst 38h			;6bcd
	jr c,l6bf5h		;6bce
	dec b			;6bd0
	dec b			;6bd1
	add a,l			;6bd2
	add a,d			;6bd3
	ld c,(hl)		;6bd4
	cp d			;6bd5
	rst 38h			;6bd6
	ld sp,l4f72h		;6bd7
	push bc			;6bda
	jp pe,0fe2ch		;6bdb
	ld a,a			;6bde
	ld c,b			;6bdf
	ex af,af'		;6be0
	inc hl			;6be1
	jr l6c39h		;6be2
	sbc a,l			;6be4
	adc a,d			;6be5
	jp 0b695h		;6be6
	push hl			;6be9
	sbc a,l			;6bea
	cp e			;6beb
	cpl			;6bec
	or (hl)			;6bed
	and a			;6bee
	adc a,d			;6bef
	rst 18h			;6bf0
	ret z			;6bf1
	rst 38h			;6bf2
	and 0bah		;6bf3
l6bf5h:
	cp c			;6bf5
	xor h			;6bf6
	ret po			;6bf7
	sbc a,d			;6bf8
	jp 032ffh		;6bf9
	rst 38h			;6bfc
	or a			;6bfd
	rrca			;6bfe
	ld d,d			;6bff
	sub d			;6c00
	adc a,(hl)		;6c01
	ld l,d			;6c02
	dec d			;6c03
	dec b			;6c04
	or 024h			;6c05
	ld c,c			;6c07
	rst 38h			;6c08
	pop hl			;6c09
	rst 18h			;6c0a
	dec h			;6c0b
	rst 38h			;6c0c
	ld e,004h		;6c0d
	ld c,(hl)		;6c0f
	sub d			;6c10
	jp nz,000d3h		;6c11
	or (hl)			;6c14
	nop			;6c15
	add a,h			;6c16
	jp c,0e7c8h		;6c17
	adc a,c			;6c1a
	ld h,0bfh		;6c1b
	sbc a,c			;6c1d
	call m,09acfh		;6c1e
	sub h			;6c21
	ld b,h			;6c22
	call c,0e8adh		;6c23
	ld l,(hl)		;6c26
	add a,c			;6c27
	xor l			;6c28
	add a,b			;6c29
	ld (0da9dh),a		;6c2a
	ld c,a			;6c2d
	rst 38h			;6c2e
	adc a,04eh		;6c2f
	inc de			;6c31
	ld (hl),d		;6c32
	ld h,e			;6c33
	dec b			;6c34
	ld l,b			;6c35
	ld l,c			;6c36
	ld sp,hl		;6c37
	dec hl			;6c38
l6c39h:
	cp 037h			;6c39
	defb 0fdh,0fah,05ch ;illegal sequence	;6c3b
	rst 20h			;6c3e
	rla			;6c3f
	or (hl)			;6c40
	ret po			;6c41
	call nc,sub_64bfh	;6c42
	rst 38h			;6c45
	call po,0ecfeh		;6c46
	add a,h			;6c49
	ld c,c			;6c4a
	ld c,l			;6c4b
	push hl			;6c4c
	and d			;6c4d
	rst 38h			;6c4e
	ld c,d			;6c4f
	nop			;6c50
	ld b,038h		;6c51
	cp d			;6c53
	jp po,0329fh		;6c54
	sub a			;6c57
	ld d,b			;6c58
	cp e			;6c59
	nop			;6c5a
	call m,0ae9ch		;6c5b
	rst 38h			;6c5e
	ld d,a			;6c5f
l6c60h:
	ld (hl),d		;6c60
	dec l			;6c61
	inc sp			;6c62
	jr l6c75h		;6c63
	jr nc,l6c60h		;6c65
	pop de			;6c67
	in a,(0ffh)		;6c68
	dec e			;6c6a
	sub d			;6c6b
	jp c,0b949h		;6c6c
	ld d,a			;6c6f
	call po,02172h		;6c70
	add hl,hl		;6c73
	adc a,h			;6c74
l6c75h:
	ld b,a			;6c75
	ld c,(hl)		;6c76
	add a,h			;6c77
	sub e			;6c78
	cp 067h			;6c79
	call m,0195bh		;6c7b
	sbc a,e			;6c7e
	ld c,l			;6c7f
	ld (0ff49h),hl		;6c80
	ld d,e			;6c83
	or a			;6c84
	add a,b			;6c85
l6c86h:
	ld c,l			;6c86
	ld l,l			;6c87
	ld c,a			;6c88
	ld d,h			;6c89
	sub d			;6c8a
	ld b,(hl)		;6c8b
	ex (sp),hl		;6c8c
	sub h			;6c8d
	add a,h			;6c8e
	dec l			;6c8f
sub_6c90h:
	in a,(0a3h)		;6c90
	ld a,b			;6c92
	push bc			;6c93
	jp 0b5c4h		;6c94
	ld d,0feh		;6c97
	cp a			;6c99
	and (hl)		;6c9a
	daa			;6c9b
	inc e			;6c9c
	inc (hl)		;6c9d
	sub d			;6c9e
	sbc a,b			;6c9f
	add a,d			;6ca0
	ret c			;6ca1
	and e			;6ca2
	and a			;6ca3
	adc a,b			;6ca4
	sub (hl)		;6ca5
	inc h			;6ca6
	adc a,e			;6ca7
	inc b			;6ca8
	rst 18h			;6ca9
l6caah:
	rst 18h			;6caa
	call c,086d1h		;6cab
	ld l,l			;6cae
	in a,(0bah)		;6caf
	inc e			;6cb1
	or 0d5h			;6cb2
	cp 094h			;6cb4
	inc hl			;6cb6
	inc b			;6cb7
	rst 38h			;6cb8
	push bc			;6cb9
	dec h			;6cba
	defb 0edh ;next byte illegal after ed	;6cbb
	ld e,h			;6cbc
	ld d,l			;6cbd
	xor l			;6cbe
	ld de,0bb31h		;6cbf
	or (hl)			;6cc2
	inc h			;6cc3
	sbc a,c			;6cc4
	adc a,h			;6cc5
	rst 38h			;6cc6
	ld (l72dah),hl		;6cc7
	jp p,0179eh		;6cca
	dec b			;6ccd
	nop			;6cce
	ld (de),a		;6ccf
	add a,d			;6cd0
	or h			;6cd1
	nop			;6cd2
	cp 0c6h			;6cd3
	ld (hl),d		;6cd5
	jp c,0298fh		;6cd6
	ld c,c			;6cd9
	nop			;6cda
	ld a,(de)		;6cdb
	ld e,e			;6cdc
	rr e			;6cdd
	ld h,b			;6cdf
	add a,c			;6ce0
	xor h			;6ce1
	dec a			;6ce2
	rst 10h			;6ce3
	add a,d			;6ce4
	add a,d			;6ce5
	ld a,c			;6ce6
	ld d,l			;6ce7
	adc a,09ah		;6ce8
	ld c,b			;6cea
	ld l,(hl)		;6ceb
	ld e,l			;6cec
	rst 38h			;6ced
	rst 38h			;6cee
	and 0feh		;6cef
	xor b			;6cf1
	rst 38h			;6cf2
	cp 0a5h			;6cf3
	inc d			;6cf5
	rst 8			;6cf6
	call p,sub_74e2h	;6cf7
	ld (hl),d		;6cfa
	ex (sp),hl		;6cfb
	dec b			;6cfc
	ld d,(iy-002h)		;6cfd
	jr z,l6c86h		;6d00
	xor e			;6d02
	rst 38h			;6d03
	ld l,d			;6d04
	inc c			;6d05
	sbc a,e			;6d06
	ld h,(hl)		;6d07
	sbc a,e			;6d08
	ld c,c			;6d09
	nop			;6d0a
	nop			;6d0b
	sbc a,e			;6d0c
	add hl,sp		;6d0d
	sub h			;6d0e
	ld a,h			;6d0f
	ld b,a			;6d10
	rst 38h			;6d11
	ld b,l			;6d12
	dec b			;6d13
	sub (hl)		;6d14
	add a,b			;6d15
	inc sp			;6d16
	add a,d			;6d17
	add a,(hl)		;6d18
	adc a,b			;6d19
	sub c			;6d1a
	rst 38h			;6d1b
	sbc a,e			;6d1c
	rst 38h			;6d1d
	and (hl)		;6d1e
	or (hl)			;6d1f
	ld d,d			;6d20
	nop			;6d21
l6d22h:
	dec (hl)		;6d22
	ld (hl),d		;6d23
	nop			;6d24
	sub d			;6d25
	add a,d			;6d26
	ld l,h			;6d27
	jp (hl)			;6d28
	add a,d			;6d29
	inc bc			;6d2a
	dec e			;6d2b
	sub d			;6d2c
	ld a,c			;6d2d
	call m,sub_4d2fh	;6d2e
	nop			;6d31
	exx			;6d32
	call z,0b406h		;6d33
	sub c			;6d36
	or a			;6d37
	add a,b			;6d38
	ld c,d			;6d39
	add a,b			;6d3a
	ld b,d			;6d3b
	rst 18h			;6d3c
	ld e,c			;6d3d
	or a			;6d3e
	ld c,h			;6d3f
	ld c,(hl)		;6d40
	jr nc,l6db5h		;6d41
sub_6d43h:
	rst 18h			;6d43
	ei			;6d44
	sub d			;6d45
	jp 035ffh		;6d46
	ld c,c			;6d49
	cp a			;6d4a
	and (hl)		;6d4b
	ld (iy-002h),c		;6d4c
	ld e,a			;6d4f
	out (04fh),a		;6d50
	cp 044h			;6d52
	sub d			;6d54
	dec b			;6d55
	rst 38h			;6d56
	ld (hl),l		;6d57
	add a,h			;6d58
	ret			;6d59
	cp 039h			;6d5a
	inc c			;6d5c
	ld l,l			;6d5d
	cp a			;6d5e
	cp 039h			;6d5f
	cp d			;6d61
	dec (hl)		;6d62
	sbc a,d			;6d63
	or e			;6d64
	adc a,l			;6d65
	ld (0ff00h),a		;6d66
	ld (hl),096h		;6d69
	ld (hl),d		;6d6b
	rst 38h			;6d6c
	ld a,(l6e4bh)		;6d6d
	xor b			;6d70
	rla			;6d71
	xor 08eh		;6d72
	inc b			;6d74
l6d75h:
	sub c			;6d75
	scf			;6d76
	xor 02ch		;6d77
sub_6d79h:
	sbc a,l			;6d79
	xor 0ffh		;6d7a
	inc a			;6d7c
	sub d			;6d7d
	sub a			;6d7e
	nop			;6d7f
	sub (hl)		;6d80
	cp 0adh			;6d81
	cp e			;6d83
	add a,e			;6d84
	ld (hl),b		;6d85
	ld hl,(l49b6h)		;6d86
	ret po			;6d89
	ld (hl),b		;6d8a
	cp d			;6d8b
	inc d			;6d8c
	add hl,hl		;6d8d
	and h			;6d8e
	rst 8			;6d8f
	sbc a,(hl)		;6d90
	rst 38h			;6d91
	jp (hl)			;6d92
	add a,b			;6d93
	ld e,(hl)		;6d94
	or d			;6d95
	add a,d			;6d96
	and b			;6d97
	cp d			;6d98
	ld d,l			;6d99
	ld (hl),l		;6d9a
	ld (hl),c		;6d9b
	ld (hl),d		;6d9c
	and c			;6d9d
	jp pe,0f472h		;6d9e
	jr c,$-108		;6da1
	adc a,(hl)		;6da3
	rst 38h			;6da4
	ld (hl),l		;6da5
	rst 20h			;6da6
	ld hl,(l4efeh)		;6da7
	inc b			;6daa
	cp 0c7h			;6dab
	rst 38h			;6dad
	call p,01089h		;6dae
	cp 0f0h			;6db1
	daa			;6db3
	inc b			;6db4
l6db5h:
	ld (hl),d		;6db5
	adc a,h			;6db6
	daa			;6db7
	ret m			;6db8
	ld (09ca9h),hl		;6db9
	and 0ech		;6dbc
	call nz,006cah		;6dbe
	cp d			;6dc1
	or e			;6dc2
	call m,049b4h		;6dc3
	rst 38h			;6dc6
	ld a,d			;6dc7
	sub c			;6dc8
	rst 18h			;6dc9
	ld c,(hl)		;6dca
	and b			;6dcb
	ld hl,(0d50ch)		;6dcc
	add a,081h		;6dcf
	ld e,(hl)		;6dd1
	or (hl)			;6dd2
	xor d			;6dd3
	or e			;6dd4
	jr l6e34h		;6dd5
	rst 38h			;6dd7
	inc (hl)		;6dd8
	sub (hl)		;6dd9
	ld d,d			;6dda
	sub a			;6ddb
	add a,b			;6ddc
	ld d,h			;6ddd
	sub (hl)		;6dde
	ret z			;6ddf
	ld h,c			;6de0
	ld a,c			;6de1
	ld a,c			;6de2
	djnz l6e49h		;6de3
	dec d			;6de5
	ex (sp),hl		;6de6
	ld d,(hl)		;6de7
	xor h			;6de8
	sub h			;6de9
	add a,b			;6dea
	jp nc,0ffdfh		;6deb
	inc sp			;6dee
	add a,d			;6def
	push de			;6df0
	or a			;6df1
	rst 38h			;6df2
	or b			;6df3
	ld a,l			;6df4
	ld a,c			;6df5
	add hl,hl		;6df6
	jp nz,l4ebfh		;6df7
	or l			;6dfa
	rra			;6dfb
	jp po,0e38ch		;6dfc
	inc (hl)		;6dff
	add a,e			;6e00
	push bc			;6e01
	call sub_4eabh		;6e02
	cp 0fah			;6e05
	ld l,(hl)		;6e07
	call m,071eeh		;6e08
	daa			;6e0b
	ex af,af'		;6e0c
	cp d			;6e0d
	jp (hl)			;6e0e
	add a,h			;6e0f
	cp e			;6e10
	or c			;6e11
	call nc,084fch		;6e12
	ex af,af'		;6e15
	or (hl)			;6e16
	ret			;6e17
	out (00bh),a		;6e18
	inc d			;6e1a
	call m,08b3ah		;6e1b
	or a			;6e1e
	add hl,hl		;6e1f
	ld (0961dh),a		;6e20
	ld (hl),c		;6e23
	ld c,l			;6e24
	rst 38h			;6e25
	rla			;6e26
	ret po			;6e27
	ld d,e			;6e28
	nop			;6e29
	ld c,(hl)		;6e2a
	rst 30h			;6e2b
	ld sp,00659h		;6e2c
	ld c,h			;6e2f
	cp c			;6e30
	ld l,(hl)		;6e31
	ld b,l			;6e32
	dec b			;6e33
l6e34h:
	or b			;6e34
	rst 20h			;6e35
	ld d,d			;6e36
	dec b			;6e37
	rst 38h			;6e38
	dec sp			;6e39
	sbc a,c			;6e3a
	ret			;6e3b
	ld c,c			;6e3c
	nop			;6e3d
	call sub_69f2h		;6e3e
	ld l,(hl)		;6e41
	ld c,l			;6e42
	and (hl)		;6e43
	xor c			;6e44
	ld b,l			;6e45
	jr l6eb5h		;6e46
	ld e,c			;6e48
l6e49h:
	sbc a,b			;6e49
	ld l,a			;6e4a
l6e4bh:
	nop			;6e4b
	cp 05ah			;6e4c
	and l			;6e4e
	sub d			;6e4f
	sub a			;6e50
	call z,088f3h		;6e51
	ld c,c			;6e54
sub_6e55h:
	rst 38h			;6e55
	sub a			;6e56
	or a			;6e57
	rst 38h			;6e58
	ld bc,0fb92h		;6e59
	sbc a,d			;6e5c
	ld e,c			;6e5d
	ld e,c			;6e5e
	ld c,l			;6e5f
	or 0e2h			;6e60
	ld c,(hl)		;6e62
l6e63h:
	rla			;6e63
	inc h			;6e64
	sub (hl)		;6e65
	inc h			;6e66
	pop de			;6e67
	sub e			;6e68
	jp c,0cbe3h		;6e69
	rst 10h			;6e6c
	dec hl			;6e6d
	cp 0fah			;6e6e
	or c			;6e70
	inc c			;6e71
	jr $-108		;6e72
	adc a,a			;6e74
	ld e,h			;6e75
	defb 0ddh,0c6h,086h ;illegal sequence	;6e76
	ld (hl),h		;6e79
	ld a,l			;6e7a
	cp d			;6e7b
	and d			;6e7c
	ld (hl),a		;6e7d
	add a,c			;6e7e
	and (hl)		;6e7f
	ld a,l			;6e80
	or e			;6e81
	cp b			;6e82
l6e83h:
	bit 1,(hl)		;6e83
	ld l,l			;6e85
	sbc a,e			;6e86
	cp 0dah			;6e87
	rst 30h			;6e89
	adc a,h			;6e8a
	ret c			;6e8b
	cp l			;6e8c
	set 1,(hl)		;6e8d
	sbc a,e			;6e8f
	inc hl			;6e90
	rst 38h			;6e91
	ld l,d			;6e92
	xor 094h		;6e93
	nop			;6e95
	ld c,l			;6e96
	adc a,b			;6e97
	add a,h			;6e98
	inc (hl)		;6e99
	jp c,0e5e6h		;6e9a
	or l			;6e9d
	jp po,0ff4eh		;6e9e
	inc a			;6ea1
	or e			;6ea2
	push hl			;6ea3
	ld e,h			;6ea4
	dec h			;6ea5
	add a,d			;6ea6
	pop hl			;6ea7
	ei			;6ea8
	jp nc,03c4eh		;6ea9
	ld d,d			;6eac
	inc b			;6ead
	add a,b			;6eae
	res 0,b			;6eaf
	jr l6e83h		;6eb1
	ld c,a			;6eb3
	daa			;6eb4
l6eb5h:
	sub d			;6eb5
	sub l			;6eb6
	inc c			;6eb7
	jp c,04bbah		;6eb8
	and (hl)		;6ebb
	add a,b			;6ebc
	ld d,c			;6ebd
	or e			;6ebe
	ld (l75bah),a		;6ebf
	xor d			;6ec2
	adc a,b			;6ec3
	ld c,l			;6ec4
	xor e			;6ec5
	call p,sub_4ccah	;6ec6
	call pe,07914h		;6ec9
	ld d,b			;6ecc
	call pe,sub_7995h	;6ecd
	cp 071h			;6ed0
	add a,d			;6ed2
	inc d			;6ed3
	cp 0ffh			;6ed4
	ld c,e			;6ed6
	call m,0b3dch		;6ed7
	inc b			;6eda
	jp pe,0006ah		;6edb
	ld a,l			;6ede
	defb 0fdh,085h ;add a,iyl	;6edf
	ld c,l			;6ee1
	call m,0f92ch		;6ee2
	add a,029h		;6ee5
	sub d			;6ee7
	inc b			;6ee8
	ld h,a			;6ee9
	xor d			;6eea
	dec bc			;6eeb
	add hl,hl		;6eec
	and c			;6eed
	ld h,a			;6eee
	dec h			;6eef
	ld de,0ff29h		;6ef0
	jp z,000bbh		;6ef3
	xor d			;6ef6
l6ef7h:
	xor h			;6ef7
	ret nz			;6ef8
	ld h,h			;6ef9
	dec a			;6efa
	sbc a,(hl)		;6efb
	sub c			;6efc
	cp d			;6efd
	sub c			;6efe
sub_6effh:
	push de			;6eff
	ld d,d			;6f00
	rra			;6f01
	or (hl)			;6f02
	ld b,(hl)		;6f03
	or b			;6f04
	inc h			;6f05
	sbc a,h			;6f06
	ret nz			;6f07
	jp c,l5318h		;6f08
	defb 0fdh,03ah,09ah ;illegal sequence	;6f0b
	jp 025f1h		;6f0e
	ld l,(hl)		;6f11
	inc a			;6f12
	push bc			;6f13
	xor d			;6f14
	ld a,c			;6f15
	and (hl)		;6f16
	add a,b			;6f17
	ld e,c			;6f18
	ld c,l			;6f19
	dec de			;6f1a
	xor h			;6f1b
	ld b,(hl)		;6f1c
	nop			;6f1d
	ld c,d			;6f1e
	sub 0cbh		;6f1f
	ld h,e			;6f21
	ld l,(hl)		;6f22
	add a,b			;6f23
	ld d,l			;6f24
	rst 10h			;6f25
	jp l6d22h		;6f26
	ei			;6f29
	xor d			;6f2a
	ld d,0dah		;6f2b
	out (0ebh),a		;6f2d
l6f2fh:
	res 7,d			;6f2f
	ld c,(hl)		;6f31
	rst 20h			;6f32
	dec (hl)		;6f33
	call z,sub_662ah	;6f34
	cp 0feh			;6f37
	sub h			;6f39
	inc c			;6f3a
	inc e			;6f3b
	inc hl			;6f3c
	ld e,c			;6f3d
	or (hl)			;6f3e
	or 052h			;6f3f
	ld l,l			;6f41
	xor 081h		;6f42
	inc d			;6f44
	jp c,l726eh		;6f45
	cp l			;6f48
	ld d,(hl)		;6f49
	cp d			;6f4a
	push de			;6f4b
	cp l			;6f4c
	xor c			;6f4d
	inc b			;6f4e
	rst 38h			;6f4f
	add a,e			;6f50
	ld l,l			;6f51
	ld (hl),d		;6f52
	ld bc,01b55h		;6f53
	add a,(hl)		;6f56
	ld l,(hl)		;6f57
	jp z,000f1h		;6f58
	adc a,b			;6f5b
	jp c,0abebh		;6f5c
	rst 10h			;6f5f
	inc de			;6f60
	jr nc,l6f2fh		;6f61
	jr z,l6ef7h		;6f63
	nop			;6f65
	sbc a,a			;6f66
	xor d			;6f67
	and b			;6f68
	ld h,c			;6f69
	inc (hl)		;6f6a
	cp d			;6f6b
	rst 10h			;6f6c
	dec sp			;6f6d
	add hl,bc		;6f6e
	ld e,e			;6f6f
	ld c,033h		;6f70
	rst 38h			;6f72
	cp c			;6f73
	defb 0fdh,099h,0a8h ;illegal sequence	;6f74
sub_6f77h:
	xor b			;6f77
	dec h			;6f78
	or d			;6f79
	and b			;6f7a
	xor l			;6f7b
	ld e,b			;6f7c
	sbc a,d			;6f7d
	ret z			;6f7e
	rst 38h			;6f7f
	ld sp,l6549h		;6f80
	sub c			;6f83
	rst 38h			;6f84
	ld d,h			;6f85
	ld h,l			;6f86
	add a,b			;6f87
	rst 10h			;6f88
	xor h			;6f89
	sbc a,d			;6f8a
	add a,c			;6f8b
	call c,0a296h		;6f8c
	ld l,(hl)		;6f8f
	add a,b			;6f90
	sub c			;6f91
	or (hl)			;6f92
	ld h,07dh		;6f93
	ret m			;6f95
	ld b,d			;6f96
	adc a,d			;6f97
	ld (hl),d		;6f98
	add a,b			;6f99
	xor d			;6f9a
	ld c,a			;6f9b
	dec b			;6f9c
	add a,c			;6f9d
	ld (hl),0cch		;6f9e
	ld d,(hl)		;6fa0
	cp 0bfh			;6fa1
	and (hl)		;6fa3
	ld c,l			;6fa4
	jr $+1			;6fa5
	rst 30h			;6fa7
	rla			;6fa8
	nop			;6fa9
	inc bc			;6faa
	inc (hl)		;6fab
	inc a			;6fac
	djnz l6fafh		;6fad
l6fafh:
	inc e			;6faf
	inc d			;6fb0
	nop			;6fb1
	sbc a,l			;6fb2
	add hl,sp		;6fb3
	inc e			;6fb4
	add hl,bc		;6fb5
	call m,02e00h		;6fb6
	ld e,l			;6fb9
	ex af,af'		;6fba
	jp nc,02379h		;6fbb
	ld e,c			;6fbe
	or d			;6fbf
	cpl			;6fc0
	rla			;6fc1
	ld (bc),a		;6fc2
	inc (hl)		;6fc3
	ld e,l			;6fc4
	rst 38h			;6fc5
	add hl,hl		;6fc6
	sbc a,(hl)		;6fc7
	ld c,(hl)		;6fc8
	push hl			;6fc9
	rst 0			;6fca
	ld l,(hl)		;6fcb
	push hl			;6fcc
	halt			;6fcd
	sub d			;6fce
	defb 0edh ;next byte illegal after ed	;6fcf
	di			;6fd0
	ld d,d			;6fd1
l6fd2h:
	ld c,c			;6fd2
	ld bc,03905h		;6fd3
	rst 38h			;6fd6
	add hl,sp		;6fd7
	ld h,04eh		;6fd8
	dec b			;6fda
	pop hl			;6fdb
	sub (hl)		;6fdc
	sbc a,h			;6fdd
	ld (hl),l		;6fde
	rrc b			;6fdf
	sub d			;6fe1
	jr nz,$-9		;6fe2
	and h			;6fe4
	add a,b			;6fe5
	sub e			;6fe6
	cp e			;6fe7
	dec l			;6fe8
	dec c			;6fe9
	ei			;6fea
	inc (hl)		;6feb
	nop			;6fec
	jr z,l702bh		;6fed
	jr l6ff4h		;6fef
	adc a,(hl)		;6ff1
	and e			;6ff2
	add a,(hl)		;6ff3
l6ff4h:
	add a,b			;6ff4
	djnz l7027h		;6ff5
	djnz l7001h		;6ff7
	adc a,a			;6ff9
	cp 0e8h			;6ffa
	sbc a,l			;6ffc
	ex af,af'		;6ffd
	call m,0cb5eh		;6ffe
l7001h:
	ld e,h			;7001
	push af			;7002
	ld c,l			;7003
	call nz,08aeeh		;7004
	cp (hl)			;7007
	call z,08772h		;7008
	adc a,c			;700b
	jp z,0b0dch		;700c
	sub e			;700f
	inc e			;7010
	rst 38h			;7011
	add a,h			;7012
	inc (hl)		;7013
	sub d			;7014
	call p,01aedh		;7015
	nop			;7018
	jp po,l4649h		;7019
	add hl,hl		;701c
	ret po			;701d
	ld de,l5579h		;701e
	ret z			;7021
	sub e			;7022
	sub 054h		;7023
	and c			;7025
	sub d			;7026
l7027h:
	inc d			;7027
	jr nc,l702ah		;7028
l702ah:
	ld e,l			;702a
l702bh:
	and h			;702b
	ld h,(hl)		;702c
	rst 20h			;702d
	ld h,e			;702e
	jr nc,$+43		;702f
	add hl,de		;7031
	jr l6fd2h		;7032
	or e			;7034
	adc a,e			;7035
	ld c,(hl)		;7036
	sub a			;7037
	dec a			;7038
	or l			;7039
	scf			;703a
	ei			;703b
	xor h			;703c
	defb 0ddh,0adh ;xor ixl	;703d
	ret nc			;703f
l7040h:
	ld (hl),h		;7040
	scf			;7041
	jr nc,l705ch		;7042
	jp 098abh		;7044
	adc a,l			;7047
	scf			;7048
	jp pe,000e5h		;7049
	and d			;704c
	rst 8			;704d
	jp p,l7c32h		;704e
	ld (09c9ch),hl		;7051
	ld l,h			;7054
	or e			;7055
	or d			;7056
	dec hl			;7057
	ld h,e			;7058
	jp c,018b6h		;7059
l705ch:
	inc h			;705c
	dec a			;705d
	ld l,e			;705e
	inc d			;705f
	cp c			;7060
	add hl,de		;7061
	cpl			;7062
	add a,d			;7063
	dec de			;7064
	cp 03fh			;7065
	pop de			;7067
	cp e			;7068
	inc d			;7069
	call m,sub_49c1h	;706a
	jp p,0a339h		;706d
	dec (hl)		;7070
	or b			;7071
	ld h,(hl)		;7072
	or c			;7073
	ex (sp),hl		;7074
	ld l,l			;7075
	jp z,01825h		;7076
	set 0,a			;7079
	rst 38h			;707b
	ld (hl),c		;707c
	ld a,(de)		;707d
	inc l			;707e
	add hl,hl		;707f
	adc a,0ceh		;7080
	nop			;7082
	ld e,l			;7083
	add hl,hl		;7084
	call p,0b395h		;7085
	ld l,l			;7088
	xor a			;7089
	and h			;708a
	ld a,c			;708b
sub_708ch:
	and l			;708c
	ld d,(hl)		;708d
	push de			;708e
	pop de			;708f
	rst 38h			;7090
	sbc a,d			;7091
	and b			;7092
	sub l			;7093
	or d			;7094
	jp l406dh		;7095
	ex af,af'		;7098
	ld c,l			;7099
	sbc a,h			;709a
	rst 38h			;709b
	jp c,0dcefh		;709c
	pop bc			;709f
	and e			;70a0
	jp nc,0db86h		;70a1
	ld e,e			;70a4
	xor e			;70a5
	jp c,0cb32h		;70a6
	ret nz			;70a9
	inc (hl)		;70aa
	djnz l70e5h		;70ab
	sub 0b5h		;70ad
	xor d			;70af
	ld (hl),052h		;70b0
	add hl,hl		;70b2
	nop			;70b3
	ld hl,(04e00h)		;70b4
	sub (hl)		;70b7
	nop			;70b8
	ld a,h			;70b9
	call c,0bdbdh		;70ba
	or d			;70bd
	cp c			;70be
	call m,0a6fbh		;70bf
	dec hl			;70c2
	dec l			;70c3
	adc a,d			;70c4
	ld l,(hl)		;70c5
	ld b,b			;70c6
	call p,0ef4ch		;70c7
	inc h			;70ca
	cp a			;70cb
	call po,0bcb2h		;70cc
	defb 0fdh,057h,06dh ;illegal sequence	;70cf
	cp 0f4h			;70d2
	adc a,e			;70d4
	inc b			;70d5
	ld (hl),c		;70d6
	adc a,l			;70d7
	cp c			;70d8
	adc a,h			;70d9
	rst 10h			;70da
	adc a,h			;70db
	jp p,0b652h		;70dc
	ld a,l			;70df
	add a,d			;70e0
	ld b,(hl)		;70e1
	xor (hl)		;70e2
	dec hl			;70e3
	ld (hl),d		;70e4
l70e5h:
	adc a,c			;70e5
	ld l,00ch		;70e6
	and e			;70e8
	call z,0ca00h		;70e9
	or d			;70ec
	or b			;70ed
sub_70eeh:
	ld (l7afeh),a		;70ee
	inc hl			;70f1
	sub (hl)		;70f2
	ld c,(hl)		;70f3
	sbc a,c			;70f4
	inc hl			;70f5
	rst 38h			;70f6
	inc b			;70f7
	sub d			;70f8
	ld d,d			;70f9
	ld d,d			;70fa
	rst 20h			;70fb
	and 0bfh		;70fc
	ret			;70fe
	jr nc,$+67		;70ff
	ld e,c			;7101
	and d			;7102
	add a,a			;7103
	ret c			;7104
	ld l,d			;7105
	ld (hl),d		;7106
	rst 38h			;7107
	dec sp			;7108
	cp d			;7109
	ld b,b			;710a
	call po,0ace5h		;710b
	pop hl			;710e
	nop			;710f
	in a,(03fh)		;7110
	xor c			;7112
	add hl,hl		;7113
	call z,0cccah		;7114
	and l			;7117
	xor c			;7118
	ld l,b			;7119
	add a,b			;711a
	or l			;711b
	ld (hl),09ah		;711c
	sbc a,d			;711e
	ld d,c			;711f
	cp 021h			;7120
	cp h			;7122
	call c,0fedch		;7123
	dec d			;7126
	nop			;7127
	and h			;7128
	ld l,c			;7129
	ld h,08bh		;712a
	jp c,03994h		;712c
	cp a			;712f
	inc l			;7130
	set 0,h			;7131
	sub 0b1h		;7133
	ld (bc),a		;7135
	ld c,e			;7136
	ld (hl),d		;7137
	defb 0fdh,091h,008h ;illegal sequence	;7138
	ex af,af'		;713b
	cp 03fh			;713c
	pop de			;713e
	rst 30h			;713f
	call m,02544h		;7140
	ld c,l			;7143
	jp p,0856eh		;7144
	out (0f4h),a		;7147
	daa			;7149
	ld (hl),d		;714a
	sbc a,l			;714b
	inc hl			;714c
	adc a,c			;714d
	daa			;714e
	inc c			;714f
	inc (hl)		;7150
	ld a,(de)		;7151
	dec c			;7152
	jp c,0c9b1h		;7153
	or 0aah			;7156
	nop			;7158
	push hl			;7159
	call 02786h		;715a
	and h			;715d
	ld h,h			;715e
	sbc a,h			;715f
	adc a,d			;7160
	rst 38h			;7161
	and (hl)		;7162
	adc a,d			;7163
	ei			;7164
	xor d			;7165
	rst 38h			;7166
	adc a,(hl)		;7167
	rst 38h			;7168
	add hl,de		;7169
	inc c			;716a
	ret c			;716b
	ld d,d			;716c
	add a,b			;716d
	and l			;716e
	sub (hl)		;716f
	sbc a,b			;7170
	inc hl			;7171
	rst 38h			;7172
	ld e,l			;7173
	ld l,l			;7174
	ret c			;7175
	ld c,(hl)		;7176
	jr nz,$-35		;7177
	nop			;7179
	xor l			;717a
	add a,d			;717b
	adc a,h			;717c
	sub c			;717d
	ld e,c			;717e
	cp 092h			;717f
	ex af,af'		;7181
	xor c			;7182
	sbc a,d			;7183
sub_7184h:
	or (hl)			;7184
	ld c,c			;7185
	or (hl)			;7186
	ret			;7187
	dec l			;7188
	rst 0			;7189
	cp 00bh			;718a
	sub d			;718c
	adc a,e			;718d
	ld c,l			;718e
	cp 0b0h			;718f
	ld h,(hl)		;7191
	or (hl)			;7192
	ld c,h			;7193
	ld c,d			;7194
	ld (hl),b		;7195
	ex de,hl		;7196
	ld b,(hl)		;7197
	add a,c			;7198
	ld h,b			;7199
	jp nc,08d72h		;719a
	add a,c			;719d
	xor c			;719e
	add a,b			;719f
	ld l,(hl)		;71a0
	jp m,0fec5h		;71a1
	rst 38h			;71a4
	ld b,a			;71a5
	cp 034h			;71a6
	and h			;71a8
	ld (hl),d		;71a9
	dec h			;71aa
	adc a,d			;71ab
	rst 38h			;71ac
	call m,0f289h		;71ad
	rst 8			;71b0
	sub (hl)		;71b1
	call 0a2bfh		;71b2
	nop			;71b5
	djnz l7215h		;71b6
	inc c			;71b8
	ccf			;71b9
	inc d			;71ba
	inc c			;71bb
l71bch:
	jp m,0cd9ah		;71bc
	call z,0e090h		;71bf
	ld bc,02514h		;71c2
	ld d,l			;71c5
	rst 18h			;71c6
	sbc a,h			;71c7
	ld d,e			;71c8
	ld (hl),d		;71c9
	rst 38h			;71ca
	xor d			;71cb
	sub (hl)		;71cc
	rst 18h			;71cd
	and e			;71ce
	rst 38h			;71cf
	ld l,e			;71d0
	and d			;71d1
	ld (hl),h		;71d2
	add a,c			;71d3
	ld b,h			;71d4
	in a,(0feh)		;71d5
	cp e			;71d7
	xor h			;71d8
	inc bc			;71d9
	sub a			;71da
	adc a,h			;71db
	rst 38h			;71dc
	xor h			;71dd
	or 09bh			;71de
	rst 38h			;71e0
	adc a,d			;71e1
	rla			;71e2
	nop			;71e3
	inc h			;71e4
sub_71e5h:
	adc a,a			;71e5
	or d			;71e6
	adc a,e			;71e7
	jr l71bch		;71e8
	sub c			;71ea
	or a			;71eb
	ld c,c			;71ec
	cp 09ch			;71ed
	inc c			;71ef
	jp (hl)			;71f0
	xor a			;71f1
	inc (hl)		;71f2
	add a,e			;71f3
	daa			;71f4
	cp 015h			;71f5
	jr nz,sub_71f9h		;71f7
sub_71f9h:
	ret z			;71f9
	add a,h			;71fa
	ld d,b			;71fb
	sbc a,h			;71fc
	cp 064h			;71fd
sub_71ffh:
	rst 38h			;71ff
	ld c,(hl)		;7200
	or d			;7201
	sbc a,l			;7202
	add hl,bc		;7203
	or e			;7204
	or e			;7205
	add a,c			;7206
	inc bc			;7207
	ld (hl),c		;7208
	ld (hl),c		;7209
	sub c			;720a
	ld (hl),c		;720b
	sub b			;720c
	djnz sub_71e5h		;720d
	inc e			;720f
	sub c			;7210
	ld (hl),l		;7211
l7212h:
	ld a,c			;7212
	rlca			;7213
	rst 18h			;7214
l7215h:
	sub d			;7215
	ccf			;7216
	xor d			;7217
	inc d			;7218
	cp 0feh			;7219
	adc a,l			;721b
l721ch:
	djnz l721ch		;721c
	dec a			;721e
	daa			;721f
	ld c,l			;7220
	sub 027h		;7221
	jp p,0da52h		;7223
	ld a,e			;7226
	ld c,(hl)		;7227
	cp l			;7228
	inc h			;7229
	inc c			;722a
	ld d,05dh		;722b
	ld h,c			;722d
	ld a,l			;722e
	adc a,h			;722f
	ld a,(de)		;7230
	and (hl)		;7231
	cp d			;7232
	ld (hl),d		;7233
	call 0955fh		;7234
	sub h			;7237
	ld a,(de)		;7238
	nop			;7239
	inc a			;723a
sub_723bh:
	ld b,l			;723b
	ld a,l			;723c
	ret pe			;723d
l723eh:
	rst 38h			;723e
	inc (hl)		;723f
	call c,0ff6ch		;7240
	ld c,e			;7243
	jp c,0cddah		;7244
	adc a,d			;7247
	ld c,b			;7248
	rst 38h			;7249
	ret po			;724a
	ex af,af'		;724b
	ld e,c			;724c
	ld (096bah),hl		;724d
	and 08ch		;7250
	or h			;7252
	cp d			;7253
	rrca			;7254
	rst 38h			;7255
	xor d			;7256
l7257h:
	add a,0eeh		;7257
	xor a			;7259
	rst 28h			;725a
	sbc a,b			;725b
	inc b			;725c
	xor h			;725d
	push bc			;725e
	ret pe			;725f
	ld (hl),e		;7260
	ld h,04dh		;7261
	jp p,0e7d9h		;7263
	ld l,l			;7266
	dec bc			;7267
	inc (hl)		;7268
	xor d			;7269
	ld sp,034c8h		;726a
	add hl,bc		;726d
l726eh:
	ld d,b			;726e
	ld a,b			;726f
	adc a,h			;7270
	cp 022h			;7271
	defb 0fdh,0feh,0ffh ;illegal sequence	;7273
	ld b,h			;7276
	or d			;7277
	defb 0fdh,0b3h,006h ;illegal sequence	;7278
	rst 10h			;727b
	or a			;727c
	sub c			;727d
	sub (hl)		;727e
	or d			;727f
	xor (hl)		;7280
	or d			;7281
	ld l,l			;7282
	inc (hl)		;7283
l7284h:
	inc a			;7284
	ld a,c			;7285
	xor 066h		;7286
	ld c,(hl)		;7288
	rst 38h			;7289
	ld d,l			;728a
	inc a			;728b
	cp 077h			;728c
	call m,sub_73f4h	;728e
	cp 0ceh			;7291
	jp po,l6e63h		;7293
l7296h:
	dec iy			;7296
	nop			;7298
	cp (hl)			;7299
	or d			;729a
	call m,0c82eh		;729b
	push bc			;729e
	djnz $-42		;729f
	ld c,(hl)		;72a1
	sbc a,l			;72a2
	call po,09caah		;72a3
	sbc a,d			;72a6
	pop de			;72a7
	nop			;72a8
	ld d,l			;72a9
	ld l,l			;72aa
l72abh:
	cp h			;72ab
	adc a,b			;72ac
	call c,00491h		;72ad
	ld a,l			;72b0
	cp (hl)			;72b1
sub_72b2h:
	ld e,l			;72b2
	djnz l7284h		;72b3
	sub h			;72b5
	ld hl,(05ba4h)		;72b6
	call p,0df4eh		;72b9
	inc hl			;72bc
	ld c,(hl)		;72bd
	rst 38h			;72be
	add a,a			;72bf
	inc b			;72c0
	or d			;72c1
	ld e,b			;72c2
	add a,c			;72c3
sub_72c4h:
	sub (hl)		;72c4
l72c5h:
	dec hl			;72c5
	jr $+41			;72c6
	ld a,l			;72c8
	inc sp			;72c9
	ld l,l			;72ca
	ret p			;72cb
	ld l,a			;72cc
	nop			;72cd
	halt			;72ce
	add hl,bc		;72cf
	ld c,0ddh		;72d0
	dec b			;72d2
	ret			;72d3
	pop de			;72d4
	inc b			;72d5
	jr c,$+32		;72d6
	ld (hl),c		;72d8
	dec d			;72d9
l72dah:
	defb 0fdh,03ch,084h ;illegal sequence	;72da
	sbc a,0ffh		;72dd
	adc a,(hl)		;72df
	sub d			;72e0
	rst 38h			;72e1
	ld h,l			;72e2
	nop			;72e3
	add a,b			;72e4
	ld (0fab2h),hl		;72e5
	add hl,hl		;72e8
	jp nc,0af31h		;72e9
	rlca			;72ec
	jp c,l79dah		;72ed
	ld sp,l7418h		;72f0
	inc (hl)		;72f3
	sbc a,a			;72f4
	cp 0e8h			;72f5
	ret z			;72f7
	inc e			;72f8
	ld d,l			;72f9
	cp 0e1h			;72fa
	ld (hl),d		;72fc
	defb 0fdh,055h ;ld d,iyl	;72fd
	cp 065h			;72ff
	nop			;7301
	push bc			;7302
	call m,0ac47h		;7303
	ld (bc),a		;7306
	inc b			;7307
	ld e,l			;7308
	inc a			;7309
	adc a,e			;730a
	xor (hl)		;730b
	nop			;730c
	ex de,hl		;730d
	adc a,c			;730e
	xor a			;730f
	sbc a,0bah		;7310
	rrca			;7312
	ld a,a			;7313
	inc e			;7314
	jp p,00143h		;7315
	jr $+14			;7318
	add hl,hl		;731a
	dec d			;731b
	dec c			;731c
	dec hl			;731d
	ld (de),a		;731e
	rrca			;731f
	call sub_67bfh		;7320
	nop			;7323
	rst 0			;7324
	jp z,0075eh		;7325
	inc (hl)		;7328
	jr c,l733bh		;7329
	jr z,l72c5h		;732b
	cp 0e6h			;732d
	call 0ff88h		;732f
	call 01180h		;7332
	or d			;7335
	rst 38h			;7336
	ld a,d			;7337
	add a,c			;7338
	inc bc			;7339
	sub d			;733a
l733bh:
	ld l,c			;733b
	adc a,(hl)		;733c
	or d			;733d
	or (hl)			;733e
	or (hl)			;733f
	sub e			;7340
	ld (hl),h		;7341
	jp c,sub_7ffeh		;7342
	sbc a,(hl)		;7345
	ld b,a			;7346
	cp d			;7347
	rst 38h			;7348
	dec d			;7349
	ret			;734a
	sub d			;734b
	rst 28h			;734c
	inc hl			;734d
	inc d			;734e
	rst 10h			;734f
	daa			;7350
	xor b			;7351
	xor d			;7352
	push de			;7353
	rst 10h			;7354
	djnz l7357h		;7355
l7357h:
	adc a,a			;7357
	inc d			;7358
	ld (hl),d		;7359
	sbc a,e			;735a
	sbc a,(hl)		;735b
	nop			;735c
	ret c			;735d
	add hl,de		;735e
	add hl,bc		;735f
	inc l			;7360
	dec (hl)		;7361
	ld a,c			;7362
	xor a			;7363
	ei			;7364
	nop			;7365
	ld c,c			;7366
	inc c			;7367
	inc b			;7368
	ret p			;7369
	ld (hl),b		;736a
	and 000h		;736b
	cp 03ah			;736d
	ld h,b			;736f
	ld h,l			;7370
	or d			;7371
	adc a,(hl)		;7372
	call p,sub_4e80h	;7373
	ld l,(hl)		;7376
	defb 0fdh,004h,0b6h ;illegal sequence	;7377
	ld b,l			;737a
	ld b,l			;737b
	ld l,d			;737c
	rst 38h			;737d
	ld h,e			;737e
	in a,(08ah)		;737f
	or l			;7381
	ex af,af'		;7382
sub_7383h:
	nop			;7383
	call nz,sub_7ffeh	;7384
	ld b,h			;7387
	inc c			;7388
	dec sp			;7389
	inc e			;738a
	inc (hl)		;738b
	call m,02996h		;738c
	out (04ch),a		;738f
	ld d,l			;7391
	and c			;7392
	rst 18h			;7393
	cp a			;7394
	ld a,l			;7395
	jr nz,l739ch		;7396
	dec (hl)		;7398
	dec (hl)		;7399
	ld e,c			;739a
	inc b			;739b
l739ch:
	dec (hl)		;739c
	ld sp,0310dh		;739d
	ld a,c			;73a0
	nop			;73a1
	sbc a,h			;73a2
	jp nz,09900h		;73a3
	ld d,l			;73a6
	ex de,hl		;73a7
	inc a			;73a8
	ld a,000h		;73a9
	ld (hl),h		;73ab
	ld d,b			;73ac
	defb 0fdh,0f6h,0ffh ;illegal sequence	;73ad
	ld (hl),06ah		;73b0
	ld l,c			;73b2
	cp 0a0h			;73b3
	add a,c			;73b5
	adc a,(hl)		;73b6
	ld c,c			;73b7
	call po,004e4h		;73b8
	jr nz,$+71		;73bb
	ld b,c			;73bd
	ld b,l			;73be
	ld h,l			;73bf
	add a,c			;73c0
	and h			;73c1
	add a,b			;73c2
	or b			;73c3
	cp h			;73c4
	ccf			;73c5
	ld d,b			;73c6
	nop			;73c7
	nop			;73c8
	and h			;73c9
	and e			;73ca
	call po,0f8e0h		;73cb
	cpi			;73ce
	rra			;73d0
	ld c,c			;73d1
	ld bc,l4104h		;73d2
	and (hl)		;73d5
l73d6h:
	dec b			;73d6
	ld b,(hl)		;73d7
	dec c			;73d8
	defb 0fdh,008h,079h ;illegal sequence	;73d9
	ld e,c			;73dc
	ld de,0c7ffh		;73dd
	sbc a,h			;73e0
	nop			;73e1
	rlca			;73e2
	ld a,c			;73e3
	dec l			;73e4
	inc sp			;73e5
	ret po			;73e6
	inc hl			;73e7
	sbc a,h			;73e8
	cp 0b0h			;73e9
	adc a,d			;73eb
	adc a,(hl)		;73ec
	adc a,(hl)		;73ed
	ld l,(hl)		;73ee
	sbc a,d			;73ef
	jp p,l6603h		;73f0
	sub d			;73f3
sub_73f4h:
	rst 30h			;73f4
	add hl,de		;73f5
	ld hl,00041h		;73f6
	add a,c			;73f9
	ld hl,0d68ah		;73fa
	adc a,(hl)		;73fd
l73feh:
	sbc a,h			;73fe
	res 0,b			;73ff
	call p,0088eh		;7401
	call m,0fee2h		;7404
	adc a,(hl)		;7407
	xor (hl)		;7408
	jp c,0a793h		;7409
	call m,0ebf4h		;740c
	ei			;740f
	jr c,l7412h		;7410
l7412h:
	jp po,0fe90h		;7412
	ld a,d			;7415
	ld c,a			;7416
	ld a,c			;7417
l7418h:
	cp 0e1h			;7418
	ld bc,0dc9ch		;741a
	cp h			;741d
	defb 0ddh,0deh,0feh ;illegal sequence	;741e
	ld a,b			;7421
	daa			;7422
l7423h:
	ld l,l			;7423
	ei			;7424
	ld hl,(009f9h)		;7425
	sub d			;7428
	ld c,b			;7429
	inc h			;742a
	jp c,08efeh		;742b
	ld b,l			;742e
	ld h,(hl)		;742f
	nop			;7430
	ld b,h			;7431
	ld l,d			;7432
	or d			;7433
	ei			;7434
	add a,b			;7435
	or b			;7436
	sbc a,h			;7437
	sbc a,a			;7438
	cp 0e9h			;7439
	ld c,(hl)		;743b
	sub d			;743c
	in a,(0edh)		;743d
	ld (hl),0f1h		;743f
	call m,093dbh		;7441
	nop			;7444
	ex af,af'		;7445
	call m,sub_60fah	;7446
	ld d,l			;7449
	ld a,c			;744a
	ld a,h			;744b
	sbc a,h			;744c
	ld a,h			;744d
	ld b,a			;744e
	ld a,b			;744f
	cp 014h			;7450
	dec b			;7452
	add a,(hl)		;7453
	xor c			;7454
	dec (hl)		;7455
	add hl,bc		;7456
	inc sp			;7457
	rst 30h			;7458
	add hl,bc		;7459
	inc l			;745a
	ld c,b			;745b
	ld (hl),h		;745c
	rst 38h			;745d
	jp nz,0ffddh		;745e
	cp 032h			;7461
	rst 38h			;7463
	dec l			;7464
	cp 095h			;7465
	or a			;7467
	ld b,011h		;7468
	add a,h			;746a
	jr nc,l7423h		;746b
l746dh:
	ld h,(hl)		;746d
	add a,(hl)		;746e
	call po,08a00h		;746f
	adc a,d			;7472
	ld e,a			;7473
	in a,(091h)		;7474
	inc sp			;7476
	cp 0fdh			;7477
	ld hl,(0fa92h)		;7479
	dec (hl)		;747c
	jr l746dh		;747d
	exx			;747f
l7480h:
	call m,0a65fh		;7480
	add hl,bc		;7483
	ld b,(hl)		;7484
	ld de,0a5feh		;7485
	sbc a,h			;7488
	add a,b			;7489
	ld (hl),d		;748a
	nop			;748b
l748ch:
	inc b			;748c
	jr z,$+55		;748d
	dec c			;748f
	adc a,a			;7490
	ei			;7491
	ld b,a			;7492
	jp nz,l4c04h		;7493
	ld d,b			;7496
	ld (hl),b		;7497
	cp 0b1h			;7498
	defb 0ddh,0feh,03bh ;illegal sequence	;749a
	ei			;749d
	sub h			;749e
	nop			;749f
	rst 10h			;74a0
	ld b,b			;74a1
	rst 38h			;74a2
	djnz l7512h		;74a3
	in a,(0dbh)		;74a5
	or d			;74a7
	adc a,d			;74a8
	adc a,c			;74a9
	jp m,000abh		;74aa
	ld c,d			;74ad
	add a,b			;74ae
	ld c,0aeh		;74af
	ei			;74b1
	ei			;74b2
	sub b			;74b3
	ld (bc),a		;74b4
	ei			;74b5
	in a,(0fbh)		;74b6
	ld l,c			;74b8
	rst 38h			;74b9
	ccf			;74ba
	and c			;74bb
	halt			;74bc
l74bdh:
	inc d			;74bd
	xor h			;74be
	rst 0			;74bf
	ei			;74c0
	ex de,hl		;74c1
	ld b,(hl)		;74c2
	cp 0abh			;74c3
	ld sp,l4bf4h		;74c5
	ld a,h			;74c8
	ld a,h			;74c9
	add a,b			;74ca
	ld h,d			;74cb
	ld b,0a3h		;74cc
	rlca			;74ce
	call m,0d2efh		;74cf
	xor d			;74d2
	jp p,l7040h		;74d3
	sub h			;74d6
	sbc a,b			;74d7
	sbc a,b			;74d8
	xor d			;74d9
	defb 0fdh,0feh,028h ;illegal sequence	;74da
	rst 38h			;74dd
	exx			;74de
	add a,b			;74df
	jr nz,sub_74e2h		;74e0
sub_74e2h:
	rst 10h			;74e2
	jp c,09828h		;74e3
	jr nc,l7555h		;74e6
	rst 10h			;74e8
	add a,e			;74e9
	adc a,(hl)		;74ea
	cp 030h			;74eb
	nop			;74ed
	xor d			;74ee
	xor a			;74ef
sub_74f0h:
	ld (0aed7h),hl		;74f0
	nop			;74f3
	out (0b2h),a		;74f4
	sub d			;74f6
	ld c,d			;74f7
	cp 0feh			;74f8
	adc a,(hl)		;74fa
	ei			;74fb
	ccf			;74fc
	ld h,d			;74fd
	call z,0fe36h		;74fe
	inc h			;7501
l7502h:
	ld a,b			;7502
	ld sp,hl		;7503
	jp nc,07c02h		;7504
	rst 38h			;7507
	or (hl)			;7508
	cp 034h			;7509
	dec (hl)		;750b
	dec b			;750c
	rst 0			;750d
	xor h			;750e
	cp (hl)			;750f
	and b			;7510
	ld b,b			;7511
l7512h:
	ld d,h			;7512
	sbc a,b			;7513
	cp b			;7514
	cp b			;7515
	ld b,a			;7516
	ret c			;7517
	cp 024h			;7518
	or (hl)			;751a
	sub d			;751b
	rst 38h			;751c
	ld (hl),b		;751d
	sub d			;751e
	ld b,h			;751f
	ld c,h			;7520
	rst 38h			;7521
	or a			;7522
	inc hl			;7523
	or d			;7524
	ld l,d			;7525
	cp 0ach			;7526
	nop			;7528
	add hl,hl		;7529
	xor a			;752a
	xor d			;752b
	add a,h			;752c
	jr l74bdh		;752d
	add a,(hl)		;752f
	rra			;7530
	sub d			;7531
	nop			;7532
l7533h:
	nop			;7533
	ex (sp),hl		;7534
	ld a,e			;7535
	rst 30h			;7536
	sub e			;7537
	di			;7538
	cp h			;7539
	nop			;753a
	adc a,0feh		;753b
	ld c,b			;753d
	add a,e			;753e
	ld sp,00947h		;753f
	cp 0deh			;7542
	dec c			;7544
	inc b			;7545
	add hl,bc		;7546
	ld c,h			;7547
	ld a,b			;7548
	cp b			;7549
	cp h			;754a
	defb 0fdh,0f4h,0ffh ;illegal sequence	;754b
	jr l7502h		;754e
	sub d			;7550
	ld l,(hl)		;7551
	nop			;7552
	or a			;7553
	nop			;7554
l7555h:
	ld l,l			;7555
	ld c,h			;7556
	sub h			;7557
	sub d			;7558
	rst 10h			;7559
	or a			;755a
	ld l,d			;755b
	xor d			;755c
	adc a,c			;755d
	ret m			;755e
	rlc b			;755f
	adc a,d			;7561
	rst 0			;7562
	ld (bc),a		;7563
	add a,e			;7564
	ld d,a			;7565
	add a,l			;7566
	dec b			;7567
	xor (hl)		;7568
	sbc a,b			;7569
	sub d			;756a
	add a,b			;756b
	cp 037h			;756c
	jp m,l5972h		;756e
	cp 03ch			;7571
	ld l,d			;7573
	ld a,(bc)		;7574
	add a,c			;7575
	ld b,l			;7576
	dec l			;7577
	call m,0f47dh		;7578
	or c			;757b
	add a,h			;757c
	inc l			;757d
	ld (hl),c		;757e
	cp 0c8h			;757f
	cp l			;7581
	defb 0fdh,0e6h,0ffh ;illegal sequence	;7582
	dec sp			;7585
	dec b			;7586
	or (hl)			;7587
	ld c,b			;7588
	ld c,h			;7589
	ld (hl),b		;758a
	or (hl)			;758b
	ret p			;758c
	ret z			;758d
	ld l,d			;758e
	defb 0fdh,085h ;add a,iyl	;758f
	rst 8			;7591
	rst 8			;7592
	out (000h),a		;7593
	inc b			;7595
	ld c,b			;7596
	add a,d			;7597
	xor e			;7598
	sub (hl)		;7599
	add a,c			;759a
	inc l			;759b
	add a,c			;759c
	inc hl			;759d
	jp c,0fd6eh		;759e
	call m,0f463h		;75a1
	jp p,0a4f9h		;75a4
	ld a,b			;75a7
	call m,sub_59f4h	;75a8
	ld l,(hl)		;75ab
	add hl,sp		;75ac
	or 02fh			;75ad
	inc b			;75af
	ei			;75b0
	ret p			;75b1
	ld b,e			;75b2
	inc b			;75b3
	ex af,af'		;75b4
	ld (hl),l		;75b5
	ld a,b			;75b6
	ret m			;75b7
	or e			;75b8
	ret m			;75b9
l75bah:
	rst 30h			;75ba
	nop			;75bb
	ld a,d			;75bc
	call m,0fe8ch		;75bd
	ld (bc),a		;75c0
	adc a,(hl)		;75c1
	or (hl)			;75c2
	jr z,l7639h		;75c3
	ld c,h			;75c5
	or a			;75c6
	rst 38h			;75c7
	ld h,d			;75c8
	adc a,(hl)		;75c9
	adc a,d			;75ca
	defb 0fdh,026h,0f7h ;ld iyh,0f7h	;75cb
	nop			;75ce
	and h			;75cf
	out (080h),a		;75d0
	call nc,0a485h		;75d2
	adc a,l			;75d5
	add hl,bc		;75d6
	xor (hl)		;75d7
	or d			;75d8
	sub 092h		;75d9
	call m,018ffh		;75db
	adc a,l			;75de
	cp 089h			;75df
	call p,0fd59h		;75e1
	inc a			;75e4
	sub d			;75e5
	dec (hl)		;75e6
	ld sp,00401h		;75e7
	call m,0e83eh		;75ea
	cp 0c0h			;75ed
	inc l			;75ef
	inc c			;75f0
	ld d,c			;75f1
	sbc a,c			;75f2
	ld b,(hl)		;75f3
	defb 0ddh,0feh,04bh ;illegal sequence	;75f4
	add a,b			;75f7
	ld (hl),a		;75f8
	rst 38h			;75f9
	ld b,l			;75fa
	cp 0edh			;75fb
	ret p			;75fd
	ld l,(hl)		;75fe
	inc l			;75ff
sub_7600h:
	sbc a,b			;7600
	ld (0d748h),hl		;7601
	rst 38h			;7604
	ld (06692h),hl		;7605
	cp 068h			;7608
	ei			;760a
	nop			;760b
	rst 30h			;760c
	di			;760d
	rst 8			;760e
	ld a,e			;760f
	xor a			;7610
	adc a,b			;7611
	ld (0119ah),a		;7612
	or (hl)			;7615
	ld c,c			;7616
	cp 0feh			;7617
	ld hl,(08e35h)		;7619
	ld sp,hl		;761c
	dec e			;761d
	ld a,b			;761e
	dec b			;761f
	ld c,(hl)		;7620
	jp m,00523h		;7621
	cp 0e9h			;7624
	exx			;7626
	add hl,de		;7627
	ld e,00dh		;7628
	jp m,05570h		;762a
	dec l			;762d
	ld a,c			;762e
	ld c,(hl)		;762f
	defb 0ddh,0fdh,0c5h ;illegal sequence	;7630
	defb 0fdh,0ffh,01eh ;illegal sequence	;7633
	ld (hl),a		;7636
	cp 0a9h			;7637
l7639h:
	ld c,c			;7639
	rst 38h			;763a
	cp b			;763b
	add a,b			;763c
	inc hl			;763d
	ld b,l			;763e
	xor (hl)		;763f
	rst 38h			;7640
	sbc a,c			;7641
	add a,b			;7642
	ld d,h			;7643
	xor e			;7644
	add a,b			;7645
	or d			;7646
	or d			;7647
	sub d			;7648
	add a,b			;7649
	defb 0fdh,03fh,0c4h ;illegal sequence	;764a
	jp p,04ff9h		;764d
	add hl,sp		;7650
	ret m			;7651
	ld d,d			;7652
	ld b,058h		;7653
	defb 0fdh,02fh,0f4h ;illegal sequence	;7655
	xor e			;7658
	or 0efh			;7659
	ld d,d			;765b
	add hl,bc		;765c
	xor a			;765d
	ld (bc),a		;765e
	ld d,l			;765f
	dec (hl)		;7660
	sbc a,b			;7661
	sbc a,c			;7662
	cp l			;7663
	cp 031h			;7664
	rst 38h			;7666
	ld bc,0fe97h		;7667
	adc a,0ffh		;766a
	pop af			;766c
	rst 38h			;766d
	djnz l76b9h		;766e
	ld d,b			;7670
	sub l			;7671
	nop			;7672
	ld c,l			;7673
	sub d			;7674
	or a			;7675
	in a,(0d7h)		;7676
	adc a,(hl)		;7678
	ld l,c			;7679
	out (04bh),a		;767a
	ei			;767c
	add a,b			;767d
	ld d,(hl)		;767e
	add a,d			;767f
	add hl,hl		;7680
	xor e			;7681
	add a,b			;7682
	sub d			;7683
	or d			;7684
	jp c,0fff9h		;7685
	call nz,000e6h		;7688
	ld e,c			;768b
	ld sp,hl		;768c
	ld a,b			;768d
	cp e			;768e
	ld sp,02bd3h		;768f
	di			;7692
	ret pe			;7693
	xor 0f2h		;7694
	ld h,e			;7696
	cp 016h			;7697
	dec d			;7699
	xor (hl)		;769a
	ccf			;769b
	sbc a,h			;769c
	push af			;769d
	ex af,af'		;769e
	cp l			;769f
	sbc a,0fbh		;76a0
	or e			;76a2
	call m,000ach		;76a3
	ex af,af'		;76a6
	adc a,(hl)		;76a7
	ld c,c			;76a8
	ld l,l			;76a9
	ld l,c			;76aa
	rst 38h			;76ab
	ret nz			;76ac
	ld c,h			;76ad
	sub c			;76ae
	ld c,d			;76af
	sub d			;76b0
	add hl,de		;76b1
	or e			;76b2
	rst 10h			;76b3
	in a,(0edh)		;76b4
	ld de,0d76ah		;76b6
l76b9h:
	rst 38h			;76b9
	ret po			;76ba
	res 2,l			;76bb
	add a,b			;76bd
	jr $+104		;76be
	ld l,d			;76c0
	adc a,(hl)		;76c1
	add a,b			;76c2
	cp 020h			;76c3
	inc b			;76c5
	xor h			;76c6
	jp m,00091h		;76c7
	ld e,b			;76ca
	ld sp,hl		;76cb
	add a,(hl)		;76cc
	ld e,h			;76cd
	ld a,h			;76ce
	inc b			;76cf
	sbc a,(hl)		;76d0
	ld e,c			;76d1
	dec c			;76d2
	sbc a,a			;76d3
	call p,0f645h		;76d4
	jp m,00415h		;76d7
	add a,h			;76da
	inc h			;76db
	ld (bc),a		;76dc
	ld de,0fc9bh		;76dd
	xor l			;76e0
	ld bc,09898h		;76e1
	sbc a,h			;76e4
	call m,0fc7bh		;76e5
	ld e,l			;76e8
	ret po			;76e9
	nop			;76ea
	sub 049h		;76eb
	ld c,c			;76ed
	inc e			;76ee
	dec h			;76ef
l76f0h:
	ld b,l			;76f0
	ld l,(hl)		;76f1
	add a,l			;76f2
	adc a,b			;76f3
	adc a,(hl)		;76f4
	rst 38h			;76f5
	ret nc			;76f6
	or (hl)			;76f7
	rst 38h			;76f8
	ei			;76f9
	adc a,(hl)		;76fa
	and (hl)		;76fb
	add a,b			;76fc
l76fdh:
	sbc a,0cfh		;76fd
	add a,e			;76ff
	sub e			;7700
	cp 004h			;7701
	ld h,(hl)		;7703
	ld h,l			;7704
	ld l,(hl)		;7705
	ld c,c			;7706
	defb 0fdh,07fh,087h ;illegal sequence	;7707
	ld de,03931h		;770a
	ei			;770d
	ld hl,(0f35ch)		;770e
	adc a,l			;7711
	rst 38h			;7712
	adc a,h			;7713
	call m,000b7h		;7714
	or 0eah			;7717
	ld d,008h		;7719
	dec d			;771b
	dec c			;771c
	xor c			;771d
	ld e,c			;771e
	xor d			;771f
	inc b			;7720
	dec (hl)		;7721
	inc b			;7722
	xor h			;7723
	ld h,(hl)		;7724
	call m,0bd59h		;7725
	nop			;7728
	ld sp,hl		;7729
	pop hl			;772a
	rst 38h			;772b
	dec e			;772c
	ld (0ffb2h),hl		;772d
	inc h			;7730
	ld c,c			;7731
	ld b,l			;7732
	add a,d			;7733
	jr nc,l77a0h		;7734
	ld l,c			;7736
	add a,a			;7737
	sub h			;7738
	add a,a			;7739
	push af			;773a
	sub c			;773b
	ld h,e			;773c
	or d			;773d
	add a,b			;773e
	ld (hl),c		;773f
	rst 38h			;7740
	cp 028h			;7741
	add hl,bc		;7743
	adc a,l			;7744
	defb 0fdh,08ah,0feh ;illegal sequence	;7745
	rst 38h			;7748
	add hl,hl		;7749
	ei			;774a
	ret c			;774b
	call m,0fec8h		;774c
	jp m,0f427h		;774f
	dec l			;7752
	and a			;7753
	dec hl			;7754
	rst 30h			;7755
	jr c,l76f0h		;7756
	ld c,b			;7758
	dec d			;7759
	add a,c			;775a
	ld sp,l7979h		;775b
	xor b			;775e
	call m,0fc79h		;775f
	ld e,e			;7762
	defb 0fdh,03eh,051h ;illegal sequence	;7763
	cp 075h			;7766
	sbc a,0ffh		;7768
	add hl,sp		;776a
	rst 38h			;776b
	ld a,(de)		;776c
	or d			;776d
	call p,0a186h		;776e
	add a,c			;7771
	or (hl)			;7772
	inc de			;7773
	add a,d			;7774
	in a,(0aeh)		;7775
	rst 10h			;7777
	rst 38h			;7778
	ld sp,hl		;7779
	ld d,(hl)		;777a
	xor e			;777b
	cp 008h			;777c
	ld b,c			;777e
sub_777fh:
	ld l,c			;777f
	ld l,l			;7780
	rst 38h			;7781
	rst 38h			;7782
	inc c			;7783
	ld c,l			;7784
	ex af,af'		;7785
	rst 0			;7786
	ei			;7787
	inc d			;7788
	cp 064h			;7789
	rst 30h			;778b
	call po,0f2fbh		;778c
	inc (hl)		;778f
	dec hl			;7790
	inc l			;7791
	inc b			;7792
	or 0e5h			;7793
	ld de,0110dh		;7795
	ld de,027feh		;7798
	ld de,020f8h		;779b
	nop			;779e
	dec d			;779f
l77a0h:
	ld d,l			;77a0
	ld a,b			;77a1
	ld a,c			;77a2
	xor c			;77a3
	call m,00099h		;77a4
	halt			;77a7
	rst 30h			;77a8
	and a			;77a9
	cp 0fdh			;77aa
	out (0ddh),a		;77ac
	ld h,b			;77ae
	sub d			;77af
	ld l,c			;77b0
	ld b,l			;77b1
	ld c,c			;77b2
	dec e			;77b3
l77b4h:
	ld l,c			;77b4
	ld l,c			;77b5
	sub d			;77b6
	call m,0921ah		;77b7
	or d			;77ba
	add a,c			;77bb
	add hl,bc		;77bc
	sub d			;77bd
	in a,(0fbh)		;77be
	sub l			;77c0
	ld h,d			;77c1
	cp 075h			;77c2
	xor d			;77c4
	add iy,de		;77c5
	cp 014h			;77c7
	sub a			;77c9
	sub l			;77ca
	cp 0feh			;77cb
	inc e			;77cd
	ex af,af'		;77ce
	ld (de),a		;77cf
	inc l			;77d0
	dec (hl)		;77d1
	ld e,b			;77d2
	add a,d			;77d3
	or e			;77d4
	call m,0fcb1h		;77d5
	adc a,e			;77d8
	inc b			;77d9
	push af			;77da
	ret m			;77db
	and e			;77dc
	jp m,00028h		;77dd
	rst 30h			;77e0
	ret z			;77e1
	rst 38h			;77e2
	and e			;77e3
	cp 014h			;77e4
	add hl,sp		;77e6
	or b			;77e7
	inc hl			;77e8
	ld a,c			;77e9
	inc iy			;77ea
	rst 38h			;77ec
	ld a,(bc)		;77ed
	cp l			;77ee
	cp c			;77ef
	call m,005efh		;77f0
	sub e			;77f3
	in a,(0d6h)		;77f4
	jp p,0edaah		;77f6
	adc a,b			;77f9
	ld l,l			;77fa
	adc a,(hl)		;77fb
	defb 0fdh,0abh,0f9h ;illegal sequence	;77fc
	ld (bc),a		;77ff
	or a			;7800
	inc h			;7801
	jr z,l7851h		;7802
	ld a,(bc)		;7804
	sub c			;7805
	add a,h			;7806
	rst 10h			;7807
	add a,c			;7808
	ld hl,(02afbh)		;7809
	or d			;780c
	adc a,d			;780d
	ld sp,hl		;780e
	ld h,d			;780f
	ld b,c			;7810
	nop			;7811
	ld l,(hl)		;7812
	sub b			;7813
	add a,(hl)		;7814
	sub d			;7815
	defb 0fdh,07fh,087h ;illegal sequence	;7816
	sub c			;7819
	dec l			;781a
	add hl,sp		;781b
	defb 0fdh,089h,05ch ;illegal sequence	;781c
	call m,0dfe3h		;781f
	ld a,c			;7822
	xor (hl)		;7823
	xor 099h		;7824
	dec b			;7826
	jp (hl)			;7827
	sub a			;7828
	adc hl,de		;7829
	and c			;782b
	halt			;782c
	jp (hl)			;782d
	ld (hl),d		;782e
	nop			;782f
	ld sp,00d22h		;7830
	inc c			;7833
	cp 059h			;7834
	ld a,c			;7836
	xor d			;7837
	cp 019h			;7838
	ld (bc),a		;783a
	daa			;783b
	cp l			;783c
	cp 00ah			;783d
	cp l			;783f
	cp (hl)			;7840
	add a,c			;7841
	ld d,e			;7842
	rst 38h			;7843
	cp 001h			;7844
	ld a,(l52ech)		;7846
	in a,(002h)		;7849
	add a,l			;784b
	or h			;784c
	add a,d			;784d
	ld c,(hl)		;784e
	cp 022h			;784f
l7851h:
	ld c,c			;7851
	ret m			;7852
	inc b			;7853
	ld c,h			;7854
	ld d,b			;7855
	ld c,h			;7856
	inc l			;7857
	ld c,b			;7858
	add a,d			;7859
	adc a,e			;785a
	ld l,l			;785b
	add a,(hl)		;785c
	add hl,bc		;785d
	adc a,(hl)		;785e
	or a			;785f
	sbc a,c			;7860
	ld b,l			;7861
	adc a,(hl)		;7862
	sub l			;7863
	add a,c			;7864
	ld b,l			;7865
	ld b,c			;7866
	adc a,(hl)		;7867
	or (hl)			;7868
	and c			;7869
	jp (hl)			;786a
	rst 38h			;786b
	rra			;786c
	pop hl			;786d
	ret			;786e
	ex af,af'		;786f
	cp 0dch			;7870
	nop			;7872
	sbc a,(hl)		;7873
	call m,00919h		;7874
	in a,(091h)		;7877
	pop af			;7879
	cp c			;787a
	ex af,af'		;787b
	xor 059h		;787c
	rst 30h			;787e
l787fh:
	ld de,01115h		;787f
	ret m			;7882
	ld e,d			;7883
	dec d			;7884
	sbc a,h			;7885
	call p,0394eh		;7886
	cp 048h			;7889
	nop			;788b
	dec d			;788c
l788dh:
	call m,058c4h		;788d
	rst 38h			;7890
	ret pe			;7891
	sbc a,c			;7892
	sbc a,b			;7893
	sbc a,l			;7894
	dec sp			;7895
	ld a,c			;7896
	sbc a,c			;7897
	ei			;7898
	dec bc			;7899
	cp (hl)			;789a
	defb 0ddh,081h,049h ;illegal sequence	;789b
	ld bc,0fcfbh		;789e
	inc de			;78a1
	in a,(085h)		;78a2
	in a,(011h)		;78a4
	sub d			;78a6
	or (hl)			;78a7
	ld l,l			;78a8
	jp p,0804ah		;78a9
	inc b			;78ac
	ld l,l			;78ad
	ld (hl),b		;78ae
	ld (hl),b		;78af
	ld d,b			;78b0
	add a,e			;78b1
	sbc a,b			;78b2
	nop			;78b3
	ld c,c			;78b4
	jp nz,0868dh		;78b5
	adc a,d			;78b8
	add a,e			;78b9
	ld (de),a		;78ba
	or (hl)			;78bb
	nop			;78bc
	in a,(027h)		;78bd
l78bfh:
	jp nz,0ff9fh		;78bf
	ccf			;78c2
	jp 0fee6h		;78c3
	ld b,l			;78c6
	jr c,l78cah		;78c7
	ld e,h			;78c9
l78cah:
	inc (hl)		;78ca
	add hl,bc		;78cb
	adc a,b			;78cc
	call nz,sub_6ae6h	;78cd
	dec c			;78d0
	add a,l			;78d1
	ld c,e			;78d2
	pop hl			;78d3
	call nz,0f035h		;78d4
	ld l,(hl)		;78d7
l78d8h:
	ld c,0d1h		;78d8
	add a,e			;78da
	ei			;78db
	ld e,h			;78dc
	ld l,h			;78dd
	ld a,(bc)		;78de
	jr nz,l7936h		;78df
	sub l			;78e1
	xor e			;78e2
	adc a,d			;78e3
	defb 0fdh,0ffh,0b9h ;illegal sequence	;78e4
	xor c			;78e7
	cp 0b9h			;78e8
	add a,b			;78ea
	xor h			;78eb
	ld c,0bdh		;78ec
	sbc a,h			;78ee
	jp c,092e8h		;78ef
	defb 0ddh,085h ;add a,ixl	;78f2
	cp b			;78f4
	adc a,e			;78f5
	ret nc			;78f6
	or (hl)			;78f7
	jp c,0c46dh		;78f8
	add a,l			;78fb
	inc h			;78fc
	adc a,(hl)		;78fd
sub_78feh:
	or d			;78fe
	add a,c			;78ff
	ld c,b			;7900
	ld c,h			;7901
	add a,d			;7902
	jr z,l788dh		;7903
	rst 38h			;7905
	inc h			;7906
	ld b,l			;7907
	call po,0c28ch		;7908
	adc a,c			;790b
	call m,0892bh		;790c
	inc hl			;790f
	defb 0fdh,0fch,043h ;illegal sequence	;7910
	call m,0fef2h		;7913
	cp c			;7916
	ld h,b			;7917
	ex af,af'		;7918
	adc a,b			;7919
	jr c,l78bfh		;791a
	nop			;791c
	push hl			;791d
	rla			;791e
	dec d			;791f
	jp po,000beh		;7920
	dec de			;7923
	ret p			;7924
	or e			;7925
	or 099h			;7926
	ld (de),a		;7928
	inc bc			;7929
	add hl,bc		;792a
	jr z,l795eh		;792b
	ld e,c			;792d
	ei			;792e
	sub (hl)		;792f
	ld e,c			;7930
	add a,b			;7931
	ld e,a			;7932
	cp 040h			;7933
	ld a,c			;7935
l7936h:
	sbc a,b			;7936
	ld a,b			;7937
	sbc a,h			;7938
	sbc a,h			;7939
	inc h			;793a
	sbc a,b			;793b
	sbc a,b			;793c
	add a,d			;793d
	sbc a,d			;793e
	rst 10h			;793f
	add a,l			;7940
	ld c,d			;7941
	adc a,d			;7942
	ld c,c			;7943
	inc bc			;7944
	sbc a,082h		;7945
	ld c,l			;7947
	ld c,h			;7948
	jp pe,0a28eh		;7949
	inc de			;794c
	jp p,08bc2h		;794d
	add a,d			;7950
	ld d,b			;7951
	ld l,l			;7952
	ld c,l			;7953
	inc c			;7954
l7955h:
	inc h			;7955
	nop			;7956
	ld c,c			;7957
	ld c,c			;7958
	adc a,b			;7959
	ld b,c			;795a
	sub d			;795b
	sbc a,b			;795c
	sbc a,h			;795d
l795eh:
	inc (hl)		;795e
	ld b,a			;795f
	defb 0fdh,0f8h,07dh ;illegal sequence	;7960
	and 0e2h		;7963
	add hl,sp		;7965
	defb 0fdh,06dh ;ld iyl,iyl	;7966
	nop			;7968
	ld e,e			;7969
	dec (hl)		;796a
	rlca			;796b
	nop			;796c
	add a,b			;796d
	ld c,e			;796e
	add hl,bc		;796f
	rst 8			;7970
	ld c,02bh		;7971
	ld de,01689h		;7973
	dec d			;7976
	add a,c			;7977
	ld c,(hl)		;7978
l7979h:
	rst 38h			;7979
	jr z,l79b1h		;797a
	add a,l			;797c
	add hl,bc		;797d
	ld d,c			;797e
	ld a,b			;797f
	add hl,sp		;7980
	ld a,b			;7981
	add a,b			;7982
	ld c,l			;7983
	call m,0fabeh		;7984
	and l			;7987
	ld (bc),a		;7988
	add a,e			;7989
	add a,d			;798a
	ld a,b			;798b
	sbc a,b			;798c
	add a,b			;798d
	ld d,d			;798e
	add a,d			;798f
	ld d,b			;7990
	cp h			;7991
	cp l			;7992
	adc a,d			;7993
	rst 38h			;7994
sub_7995h:
	ld (bc),a		;7995
	sbc a,h			;7996
	nop			;7997
	cp 08dh			;7998
	ret c			;799a
	rst 10h			;799b
	ld l,l			;799c
	or d			;799d
	and d			;799e
	sub e			;799f
	add a,l			;79a0
	rst 0			;79a1
	adc a,(hl)		;79a2
	add a,e			;79a3
	ld (bc),a		;79a4
	adc a,(hl)		;79a5
	dec h			;79a6
	dec h			;79a7
	cp 023h			;79a8
	ld l,l			;79aa
	sub d			;79ab
	and d			;79ac
	ld b,b			;79ad
	call c,0bcdch		;79ae
l79b1h:
	sbc a,b			;79b1
	adc a,a			;79b2
	cp 0f1h			;79b3
	ld a,(bc)		;79b5
	defb 0fdh,091h,011h ;illegal sequence	;79b6
	cp 091h			;79b9
	rst 28h			;79bb
	push hl			;79bc
	nop			;79bd
	ld b,l			;79be
	rst 20h			;79bf
	rst 38h			;79c0
	ld e,053h		;79c1
	cp 0b8h			;79c3
	add a,d			;79c5
	ld e,d			;79c6
	add a,b			;79c7
	ld e,(hl)		;79c8
	cp 0a2h			;79c9
	ld d,l			;79cb
	rst 30h			;79cc
	sub h			;79cd
	and a			;79ce
	jp nc,08285h		;79cf
	ld c,c			;79d2
	add a,c			;79d3
	ld b,b			;79d4
	ld d,l			;79d5
	ld d,l			;79d6
	ld d,h			;79d7
	ld (hl),h		;79d8
	sub (hl)		;79d9
l79dah:
	add a,d			;79da
	add hl,bc		;79db
	sbc a,h			;79dc
	sbc a,c			;79dd
	rst 10h			;79de
	jp nz,0b8bch		;79df
	ld bc,08fb4h		;79e2
	sub h			;79e5
	add a,e			;79e6
	dec a			;79e7
	defb 0fdh,0feh,08ah ;illegal sequence	;79e8
	xor b			;79eb
	defb 0fdh,0c8h,000h ;illegal sequence	;79ec
	ld l,d			;79ef
	ld l,c			;79f0
	ld (hl),c		;79f1
	ld hl,0ff8bh		;79f2
	jr $-76			;79f5
	inc h			;79f7
	ei			;79f8
	call c,09c00h		;79f9
	cp 07fh			;79fc
	adc a,b			;79fe
	sbc a,0fdh		;79ff
	inc a			;7a01
	jr c,l7a04h		;7a02
l7a04h:
	ex (sp),hl		;7a04
	and 022h		;7a05
	ex de,hl		;7a07
	sbc a,a			;7a08
	cp 034h			;7a09
	nop			;7a0b
	cp 0ddh			;7a0c
	or (iy-076h)		;7a0e
	xor e			;7a11
	dec c			;7a12
	xor c			;7a13
	ld c,b			;7a14
	dec b			;7a15
	ld d,l			;7a16
	inc c			;7a17
	inc c			;7a18
	ld d,l			;7a19
	dec d			;7a1a
	ld e,c			;7a1b
	dec d			;7a1c
	adc a,b			;7a1d
	ex af,af'		;7a1e
	ld d,l			;7a1f
	jr nc,$+1		;7a20
	adc a,c			;7a22
	inc l			;7a23
	ld (hl),h		;7a24
	add a,d			;7a25
	inc b			;7a26
	ld d,c			;7a27
	ld a,c			;7a28
	ld e,c			;7a29
	inc b			;7a2a
	ld (hl),h		;7a2b
	xor c			;7a2c
	nop			;7a2d
	add a,(hl)		;7a2e
	ld (de),a		;7a2f
	cp b			;7a30
	ld (bc),a		;7a31
	cp h			;7a32
	add a,h			;7a33
	sub l			;7a34
	rst 38h			;7a35
	nop			;7a36
	ret pe			;7a37
	ld b,b			;7a38
	dec e			;7a39
l7a3ah:
	ld l,c			;7a3a
	ld l,l			;7a3b
	ld l,c			;7a3c
	or 027h			;7a3d
	sub 0feh		;7a3f
	inc hl			;7a41
	cp 0fch			;7a42
	ld c,d			;7a44
	jp (iy)			;7a45
	ret m			;7a47
	ret p			;7a48
	adc a,(hl)		;7a49
	cp 057h			;7a4a
	dec d			;7a4c
	cp 057h			;7a4d
	cp 09dh			;7a4f
	defb 0fdh,0f0h,011h ;illegal sequence	;7a51
	ex (sp),hl		;7a54
	add a,b			;7a55
	jr $+43			;7a56
	ld bc,l5a84h		;7a58
	ld a,(bc)		;7a5b
	adc a,l			;7a5c
	add a,031h		;7a5d
l7a5fh:
	inc de			;7a5f
	ld a,b			;7a60
	adc a,d			;7a61
	ld d,h			;7a62
	ld (bc),a		;7a63
	inc b			;7a64
	inc l			;7a65
	ld d,b			;7a66
	inc b			;7a67
	ld d,b			;7a68
	jr nc,l7a6dh		;7a69
	xor l			;7a6b
	nop			;7a6c
l7a6dh:
	ex af,af'		;7a6d
	rst 20h			;7a6e
	and l			;7a6f
	add a,c			;7a70
	ld (hl),d		;7a71
	inir			;7a72
	adc a,b			;7a74
	rst 20h			;7a75
	ld hl,(02581h)		;7a76
	add a,c			;7a79
	sub 0fdh		;7a7a
	ld h,(hl)		;7a7c
	ld c,c			;7a7d
	adc a,(hl)		;7a7e
	ld hl,0bcfbh		;7a7f
	cp 03fh			;7a82
	jp po,0dc57h		;7a84
	inc hl			;7a87
	add hl,sp		;7a88
	ei			;7a89
	cp l			;7a8a
	inc b			;7a8b
	cp h			;7a8c
	call m,0e08ch		;7a8d
	and a			;7a90
	adc a,(hl)		;7a91
	dec hl			;7a92
	call p,08eceh		;7a93
	daa			;7a96
	cp 025h			;7a97
	sub l			;7a99
	ld de,0fe0dh		;7a9a
	or h			;7a9d
	adc a,e			;7a9e
	xor e			;7a9f
	nop			;7aa0
	sub b			;7aa1
	ld b,a			;7aa2
l7aa3h:
	jr nc,l7a3ah		;7aa3
	sub a			;7aa5
	nop			;7aa6
	xor (hl)		;7aa7
	sub h			;7aa8
	cp l			;7aa9
	ld d,b			;7aaa
	ld b,c			;7aab
	ld b,h			;7aac
	ld c,h			;7aad
	nop			;7aae
	inc l			;7aaf
	ld c,d			;7ab0
	nop			;7ab1
	add a,e			;7ab2
	call m,sub_74f0h	;7ab3
l7ab6h:
	or h			;7ab6
	ld (bc),a		;7ab7
	sub c			;7ab8
l7ab9h:
	ld h,h			;7ab9
	call c,08000h		;7aba
	cp d			;7abd
	cp b			;7abe
	sub d			;7abf
	adc a,h			;7ac0
	add hl,de		;7ac1
	or a			;7ac2
	or a			;7ac3
	ld l,c			;7ac4
	ei			;7ac5
	cp 023h			;7ac6
	ret pe			;7ac8
	ld sp,hl		;7ac9
	defb 0edh ;next byte illegal after ed	;7aca
sub_7acbh:
	inc e			;7acb
	ld h,(hl)		;7acc
	jp m,0dbceh		;7acd
	or a			;7ad0
	jr c,l7ab9h		;7ad1
	daa			;7ad3
	cp 0d1h			;7ad4
	jr c,$-8		;7ad6
	add hl,de		;7ad8
	cp 03bh			;7ad9
	ei			;7adb
	inc d			;7adc
	di			;7add
	ld h,h			;7ade
	rst 38h			;7adf
	ld (hl),b		;7ae0
	add hl,bc		;7ae1
	ld h,e			;7ae2
	nop			;7ae3
	ld c,004h		;7ae4
	nop			;7ae6
	dec h			;7ae7
	ret nz			;7ae8
	cp e			;7ae9
	call nz,00865h		;7aea
	djnz l7b63h		;7aed
	rst 20h			;7aef
	ex af,af'		;7af0
	ld d,d			;7af1
	ld c,h			;7af2
	inc bc			;7af3
	add a,l			;7af4
	ld h,c			;7af5
	adc a,d			;7af6
	ret pe			;7af7
	ld d,h			;7af8
	add a,b			;7af9
	and h			;7afa
	add a,c			;7afb
	cp c			;7afc
	adc a,d			;7afd
l7afeh:
	sub 0d6h		;7afe
	or d			;7b00
	add a,b			;7b01
	ex af,af'		;7b02
	ld l,l			;7b03
	nop			;7b04
	rst 38h			;7b05
	rst 38h			;7b06
	inc d			;7b07
	adc a,(hl)		;7b08
	jp m,00369h		;7b09
	pop hl			;7b0c
	and e			;7b0d
	rst 18h			;7b0e
	ld l,002h		;7b0f
	call m,08dcch		;7b11
	ld (hl),e		;7b14
	adc a,c			;7b15
	ld sp,hl		;7b16
	add hl,bc		;7b17
	jr l7aa3h		;7b18
	add hl,bc		;7b1a
	add a,d			;7b1b
	ld e,e			;7b1c
	add a,e			;7b1d
	ld c,h			;7b1e
	dec e			;7b1f
	or l			;7b20
	adc a,l			;7b21
	adc a,(hl)		;7b22
	push af			;7b23
	defb 0fdh,000h,0d4h ;illegal sequence	;7b24
sub_7b27h:
	jr z,l7ab6h		;7b27
	ld hl,(0052ch)		;7b29
	add a,c			;7b2c
	ld b,h			;7b2d
	sbc a,h			;7b2e
	add a,b			;7b2f
	and (hl)		;7b30
	add a,l			;7b31
sub_7b32h:
	ld e,000h		;7b32
	ld (bc),a		;7b34
	defb 0fdh,0fdh,0fbh ;illegal sequence	;7b35
	cp 061h			;7b38
	in a,(08eh)		;7b3a
	ld c,c			;7b3c
	defb 0fdh,09fh,0e2h ;illegal sequence	;7b3d
	ld (hl),l		;7b40
	call pe,0fed4h		;7b41
	ld h,h			;7b44
	jp c,01948h		;7b45
	jp pe,0e5c8h		;7b48
	ret			;7b4b
	cp 0f5h			;7b4c
	ld b,(hl)		;7b4e
	ld de,0e4ffh		;7b4f
	ld b,087h		;7b52
	xor h			;7b54
	adc a,c			;7b55
	xor l			;7b56
	adc a,l			;7b57
	sub (hl)		;7b58
	set 6,h			;7b59
	ld (hl),e		;7b5b
	ld b,093h		;7b5c
	and l			;7b5e
	adc a,e			;7b5f
	adc a,c			;7b60
	sbc a,b			;7b61
	add a,b			;7b62
l7b63h:
	ld e,(hl)		;7b63
	nop			;7b64
	jp z,0ddfdh		;7b65
	sub b			;7b68
	ld de,0ffd7h		;7b69
	ld de,049dbh		;7b6c
	cp 0feh			;7b6f
	ld (l4618h),a		;7b71
	add hl,de		;7b74
	call c,0ffc7h		;7b75
	ld sp,0e5feh		;7b78
	djnz $-105		;7b7b
	ld sp,hl		;7b7d
	ld h,h			;7b7e
	inc bc			;7b7f
	push af			;7b80
	ld c,c			;7b81
	dec b			;7b82
	or 0a3h			;7b83
	cp 085h			;7b85
	inc b			;7b87
	rlca			;7b88
	ld d,a			;7b89
	ret m			;7b8a
	ld (hl),h		;7b8b
	add a,e			;7b8c
	ld c,d			;7b8d
	add a,b			;7b8e
	ld a,b			;7b8f
	nop			;7b90
	ld l,b			;7b91
	sub e			;7b92
	sbc a,h			;7b93
	rlca			;7b94
	ei			;7b95
	rst 10h			;7b96
	rst 10h			;7b97
	ei			;7b98
	ld c,c			;7b99
	ei			;7b9a
	rst 38h			;7b9b
l7b9ch:
	adc a,c			;7b9c
	inc hl			;7b9d
	jr l7b9ch		;7b9e
	ld h,h			;7ba0
	ld bc,0f718h		;7ba1
	ld h,h			;7ba4
	call pe,01163h		;7ba5
	ld b,06dh		;7ba8
	inc c			;7baa
	djnz l7c13h		;7bab
	add hl,de		;7bad
	rlca			;7bae
	ld de,0a0e2h		;7baf
	ld b,(hl)		;7bb2
	push af			;7bb3
	inc hl			;7bb4
	add hl,bc		;7bb5
	ret m			;7bb6
	ld sp,0041ch		;7bb7
	ld b,035h		;7bba
	dec d			;7bbc
	sub 0f1h		;7bbd
	ld b,(hl)		;7bbf
	ld d,b			;7bc0
	cp b			;7bc1
	cp h			;7bc2
	nop			;7bc3
	add a,0fbh		;7bc4
	ld d,(hl)		;7bc6
	ld bc,0908fh		;7bc7
	ld de,0d7b2h		;7bca
	in a,(063h)		;7bcd
	sub d			;7bcf
	add a,c			;7bd0
	ret m			;7bd1
	ld a,h			;7bd2
	out (04eh),a		;7bd3
	jr l7bd7h		;7bd5
l7bd7h:
	ex de,hl		;7bd7
	call c,0e48dh		;7bd8
	ex (sp),hl		;7bdb
	ld c,084h		;7bdc
	add hl,de		;7bde
	jp m,00255h		;7bdf
	adc a,(hl)		;7be2
	dec l			;7be3
	xor 066h		;7be4
	inc bc			;7be6
	ld l,l			;7be7
	dec hl			;7be8
	nop			;7be9
	add a,h			;7bea
	daa			;7beb
	ld e,e			;7bec
	push hl			;7bed
	rrca			;7bee
	sub h			;7bef
	sbc a,b			;7bf0
	ld a,b			;7bf1
	adc a,a			;7bf2
	ld c,h			;7bf3
sub_7bf4h:
	nop			;7bf4
	ld (hl),d		;7bf5
	ld l,h			;7bf6
	rrca			;7bf7
	ld l,(hl)		;7bf8
	ld c,c			;7bf9
	or a			;7bfa
	add a,b			;7bfb
	rst 38h			;7bfc
	rra			;7bfd
	pop hl			;7bfe
	ret pe			;7bff
	add hl,bc		;7c00
	call pe,0e9eah		;7c01
	ld a,b			;7c04
	adc a,(hl)		;7c05
	rst 38h			;7c06
	ld h,a			;7c07
	cp 08bh			;7c08
	adc a,l			;7c0a
	ld (hl),b		;7c0b
	call z,0ecfdh		;7c0c
	ei			;7c0f
	ld a,(hl)		;7c10
	add hl,bc		;7c11
	ld e,(hl)		;7c12
l7c13h:
	or e			;7c13
	inc l			;7c14
	sub c			;7c15
	ret nc			;7c16
	inc l			;7c17
	ld c,h			;7c18
	call pe,0b20dh		;7c19
	or e			;7c1c
	inc hl			;7c1d
	rst 10h			;7c1e
	rst 38h			;7c1f
	rst 38h			;7c20
	call m,00d39h		;7c21
	ld sp,hl		;7c24
	inc e			;7c25
	ld h,h			;7c26
	ld bc,0f7feh		;7c27
	push af			;7c2a
	ld a,(de)		;7c2b
	add hl,de		;7c2c
	sbc a,l			;7c2d
	call m,0f6aeh		;7c2e
	dec sp			;7c31
l7c32h:
	ld sp,hl		;7c32
	inc sp			;7c33
	ret m			;7c34
	cpl			;7c35
	inc bc			;7c36
	ld l,h			;7c37
	pop hl			;7c38
	ld c,h			;7c39
	ld c,c			;7c3a
	or e			;7c3b
	add a,c			;7c3c
	ld de,0ff92h		;7c3d
	cp 01bh			;7c40
	di			;7c42
	ld e,013h		;7c43
	ei			;7c45
	sub 002h		;7c46
	jp z,sub_6680h		;7c48
	rst 28h			;7c4b
	add hl,de		;7c4c
	add hl,bc		;7c4d
	dec b			;7c4e
	push af			;7c4f
	and l			;7c50
	dec b			;7c51
	dec b			;7c52
	ex af,af'		;7c53
	pop af			;7c54
	ld (hl),e		;7c55
	inc b			;7c56
	ld l,l			;7c57
	ret m			;7c58
	ld h,e			;7c59
	or d			;7c5a
	adc a,(hl)		;7c5b
	add a,d			;7c5c
	adc a,e			;7c5d
	cp 0ffh			;7c5e
	dec c			;7c60
	xor h			;7c61
	in a,(0cbh)		;7c62
	jp nc,l78d8h		;7c64
	ld a,(hl)		;7c67
	ld de,0f7d8h		;7c68
	ex de,hl		;7c6b
	ld sp,08bf8h		;7c6c
	dec b			;7c6f
	sbc a,d			;7c70
	ld c,b			;7c71
	jp m,0f8c8h		;7c72
	set 6,d			;7c75
	call m,000cfh		;7c77
	cp b			;7c7a
	ld l,l			;7c7b
l7c7ch:
	adc a,(hl)		;7c7c
	ld (de),a		;7c7d
	or d			;7c7e
	or d			;7c7f
	ld b,l			;7c80
	add a,b			;7c81
	cp 01bh			;7c82
	rst 20h			;7c84
	add hl,sp		;7c85
	sub 098h		;7c86
	dec c			;7c88
	call z,00a00h		;7c89
	adc a,c			;7c8c
	or 009h			;7c8d
	ex (sp),hl		;7c8f
	call c,sub_6effh	;7c90
	ld l,092h		;7c93
	ld d,e			;7c95
	or e			;7c96
	add a,b			;7c97
	ret m			;7c98
	ld a,l			;7c99
	jp c,0da73h		;7c9a
	cp c			;7c9d
	nop			;7c9e
	ld c,c			;7c9f
	adc a,b			;7ca0
	jp (hl)			;7ca1
	ld e,c			;7ca2
	call po,0eed9h		;7ca3
	ld a,a			;7ca6
	jp 000fch		;7ca7
	ld b,(hl)		;7caa
	ld l,c			;7cab
	sub d			;7cac
	add a,c			;7cad
	rlca			;7cae
	dec h			;7caf
	nop			;7cb0
	nop			;7cb1
	ret m			;7cb2
	defb 0ddh,08fh,02fh ;illegal sequence	;7cb3
	ld e,(hl)		;7cb6
	di			;7cb7
	ld c,a			;7cb8
	ld l,d			;7cb9
	add a,d			;7cba
	dec (hl)		;7cbb
	add a,c			;7cbc
	call m,0003bh		;7cbd
	jp m,049d4h		;7cc0
	rst 38h			;7cc3
	ld b,a			;7cc4
	ei			;7cc5
	nop			;7cc6
	nop			;7cc7
	ei			;7cc8
	jp c,0ff72h		;7cc9
	inc h			;7ccc
	ld l,l			;7ccd
	rst 38h			;7cce
	ld a,a			;7ccf
	cp l			;7cd0
	sbc a,d			;7cd1
	add hl,hl		;7cd2
	sub (hl)		;7cd3
	add a,c			;7cd4
	cp 01dh			;7cd5
	nop			;7cd7
	defb 0fdh,078h,031h ;illegal sequence	;7cd8
	sub (hl)		;7cdb
	rst 38h			;7cdc
	ld b,a			;7cdd
	ld c,c			;7cde
	rst 38h			;7cdf
	ei			;7ce0
	ret c			;7ce1
	jr nc,l7d14h		;7ce2
	ld a,c			;7ce4
sub_7ce5h:
	ld d,e			;7ce5
	ld (hl),c		;7ce6
	add a,b			;7ce7
	ei			;7ce8
	ret po			;7ce9
l7ceah:
	inc d			;7cea
	add hl,sp		;7ceb
	ld e,c			;7cec
	ld b,a			;7ced
	add hl,hl		;7cee
	rst 38h			;7cef
	ei			;7cf0
	ret c			;7cf1
	djnz l7d2ch		;7cf2
	ld e,l			;7cf4
	ld b,a			;7cf5
	ld (hl),l		;7cf6
	rst 38h			;7cf7
	ei			;7cf8
	ret c			;7cf9
	ld d,c			;7cfa
	add hl,sp		;7cfb
	ld e,l			;7cfc
	ld e,e			;7cfd
	ld a,c			;7cfe
sub_7cffh:
	add a,b			;7cff
	ei			;7d00
	ret po			;7d01
	ld e,c			;7d02
	ld e,l			;7d03
	ld a,l			;7d04
	ld d,e			;7d05
	ld c,l			;7d06
	add a,b			;7d07
	ei			;7d08
	call po,sub_56ffh	;7d09
	add a,b			;7d0c
	cp 0f8h			;7d0d
	add hl,hl		;7d0f
	ld (bc),a		;7d10
	ld d,l			;7d11
	ld a,l			;7d12
	ld a,d			;7d13
l7d14h:
	ld c,l			;7d14
	ld b,l			;7d15
	ld b,l			;7d16
	add a,b			;7d17
	ld e,a			;7d18
	sbc a,040h		;7d19
	dec l			;7d1b
	ld (hl),l		;7d1c
	ld l,l			;7d1d
	ld l,c			;7d1e
	ld h,l			;7d1f
	ld h,l			;7d20
	inc hl			;7d21
	ld l,c			;7d22
	dec h			;7d23
	rst 38h			;7d24
	defb 0fdh,0dch,025h ;illegal sequence	;7d25
	ld l,l			;7d28
	ld (0aa65h),hl		;7d29
l7d2ch:
	nop			;7d2c
	add a,(hl)		;7d2d
	ld h,l			;7d2e
	add a,d			;7d2f
	sbc a,a			;7d30
	defb 0ddh,0c3h,041h ;illegal sequence	;7d31
	ld l,c			;7d34
	xor d			;7d35
	di			;7d36
	nop			;7d37
	ex af,af'		;7d38
	add a,(hl)		;7d39
	ld l,c			;7d3a
	rst 38h			;7d3b
	rst 38h			;7d3c
	ld (hl),a		;7d3d
	djnz l7ceah		;7d3e
	rst 30h			;7d40
	ei			;7d41
	nop			;7d42
	rst 30h			;7d43
	xor (hl)		;7d44
	ld h,l			;7d45
	ld b,a			;7d46
	ld b,c			;7d47
	rst 38h			;7d48
	ei			;7d49
	xor b			;7d4a
sub_7d4bh:
	ld h,c			;7d4b
	xor (hl)		;7d4c
	ei			;7d4d
	ld b,(hl)		;7d4e
	rst 38h			;7d4f
	nop			;7d50
	ei			;7d51
	adc a,083h		;7d52
	ld de,0feffh		;7d54
	ex de,hl		;7d57
	ld (iy-001h),h		;7d58
	ld (hl),d		;7d5b
	ld h,c			;7d5c
	ld c,a			;7d5d
	ld h,l			;7d5e
	rst 38h			;7d5f
	ei			;7d60
	or c			;7d61
	adc a,d			;7d62
	out (080h),a		;7d63
	dec h			;7d65
	rst 38h			;7d66
	ld b,h			;7d67
	adc a,066h		;7d68
	rst 38h			;7d6a
	ld a,a			;7d6b
	cp e			;7d6c
	jr z,l7db4h		;7d6d
	add a,b			;7d6f
	call z,033feh		;7d70
	jp z,0ff66h		;7d73
	defb 0fdh,0deh,080h ;illegal sequence	;7d76
	adc a,0ffh		;7d79
	push hl			;7d7b
	dec h			;7d7c
	rst 38h			;7d7d
	rra			;7d7e
	xor 0e2h		;7d7f
	nop			;7d81
	ld l,c			;7d82
	ld l,c			;7d83
	add a,d			;7d84
	ld b,h			;7d85
	ld l,c			;7d86
	cp 07fh			;7d87
	cp h			;7d89
	pop de			;7d8a
	nop			;7d8b
	ei			;7d8c
	call m,000f7h		;7d8d
	rst 38h			;7d90
	call m,0ffffh		;7d91
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
l7db4h:
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
sub_7e9dh:
	rst 38h			;7e9d
	rst 38h			;7e9e
	rst 38h			;7e9f
	rst 38h			;7ea0
	rst 38h			;7ea1
	rst 38h			;7ea2
	rst 38h			;7ea3
	rst 38h			;7ea4
	rst 38h			;7ea5
l7ea6h:
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
l7efch:
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
sub_7f1ch:
	rst 38h			;7f1c
	rst 38h			;7f1d
l7f1eh:
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
sub_7f2bh:
	rst 38h			;7f2b
	rst 38h			;7f2c
	rst 38h			;7f2d
	rst 38h			;7f2e
	rst 38h			;7f2f
	rst 38h			;7f30
	rst 38h			;7f31
	rst 38h			;7f32
l7f33h:
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
l7f3fh:
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
sub_7f53h:
	rst 38h			;7f53
l7f54h:
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
sub_7f5fh:
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
l7f73h:
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
l7fd9h:
	rst 38h			;7fd9
	rst 38h			;7fda
	rst 38h			;7fdb
	rst 38h			;7fdc
	rst 38h			;7fdd
	rst 38h			;7fde
l7fdfh:
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
l7fe9h:
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
l7ffah:
	rst 38h			;7ffa
	rst 38h			;7ffb
l7ffch:
	rst 38h			;7ffc
	rst 38h			;7ffd
sub_7ffeh:
	rst 38h			;7ffe
sub_7fffh:
	rst 38h			;7fff
