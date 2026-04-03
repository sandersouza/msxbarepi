; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank08.asm /tmp/smanbow2_bank_08.bin

	org 04000h

l4000h:
	adc a,h			;4000
	ld bc,0f610h		;4001
	adc a,b			;4004
	or c			;4005
	adc a,l			;4006
	ld a,07fh		;4007
	ret m			;4009
	defb 0fdh,0e6h,0f9h ;illegal sequence	;400a
	sbc a,c			;400d
	or l			;400e
	ret m			;400f
	or c			;4010
	rst 38h			;4011
	ld b,h			;4012
	sub b			;4013
	xor e			;4014
	rst 38h			;4015
	inc h			;4016
	ld (hl),d		;4017
	ld de,08c60h		;4018
	ld a,c			;401b
	dec c			;401c
	call c,02bcch		;401d
	pop bc			;4020
	rla			;4021
	rst 38h			;4022
	jp 0ac80h		;4023
	call m,0abb0h		;4026
	ld d,d			;4029
	rst 38h			;402a
	add a,b			;402b
	ex de,hl		;402c
	cp 011h			;402d
	rst 38h			;402f
	ret p			;4030
	ld d,e			;4031
	add a,h			;4032
	dec l			;4033
	ld d,b			;4034
	ld a,a			;4035
	sub h			;4036
	add a,b			;4037
	call nc,047ffh		;4038
	djnz $+1		;403b
	ret po			;403d
	ld (hl),h		;403e
	ld a,(hl)		;403f
	ld h,(hl)		;4040
	call nz,092f6h		;4041
	cp 0fdh			;4044
	ld (hl),0ffh		;4046
	ld e,c			;4048
	ret pe			;4049
	jp m,01971h		;404a
	pop bc			;404d
	ld a,07dh		;404e
	call z,0fecch		;4050
	ld hl,l7777h		;4053
	rst 38h			;4056
	ld a,c			;4057
	ld a,a			;4058
	ret nz			;4059
	inc bc			;405a
	ld b,h			;405b
	ld c,a			;405c
	cp e			;405d
	ld sp,hl		;405e
	add a,c			;405f
	ld b,033h		;4060
	or c			;4062
	xor a			;4063
	ld a,a			;4064
	ret nc			;4065
	ld bc,l7dc9h		;4066
	ld (hl),a		;4069
	ld d,l			;406a
	adc a,(hl)		;406b
	ld e,l			;406c
	ld b,a			;406d
	rst 38h			;406e
	defb 0ddh,0f7h,06ch ;illegal sequence	;406f
	and e			;4072
	ld b,h			;4073
	defb 0fdh,017h,0ffh ;illegal sequence	;4074
	ld sp,hl		;4077
	adc a,d			;4078
	ld b,h			;4079
	rst 38h			;407a
	ld h,d			;407b
	nop			;407c
	ld (hl),b		;407d
	inc (hl)		;407e
	sbc a,h			;407f
	call 0d713h		;4080
	ld de,085d1h		;4083
	ld b,l			;4086
	cp 087h			;4087
	inc de			;4089
	ld (hl),c		;408a
	ld a,a			;408b
	add a,(hl)		;408c
	inc e			;408d
	ld a,a			;408e
	add a,h			;408f
	ld bc,03f44h		;4090
	ld de,08a82h		;4093
	or h			;4096
	ld a,a			;4097
	xor a			;4098
	or d			;4099
	rst 38h			;409a
	sbc a,04bh		;409b
l409dh:
	add a,l			;409d
	ld (hl),b		;409e
	rst 28h			;409f
	add hl,bc		;40a0
	ld a,a			;40a1
	ret p			;40a2
	or d			;40a3
	nop			;40a4
	call m,0f857h		;40a5
	add hl,de		;40a8
	xor a			;40a9
	inc bc			;40aa
	rst 38h			;40ab
	sub (hl)		;40ac
	ld a,h			;40ad
	rst 30h			;40ae
	out (0fch),a		;40af
	ld de,0cd77h		;40b1
	cp 094h			;40b4
	ld b,e			;40b6
	add a,b			;40b7
	adc a,a			;40b8
	rla			;40b9
	ld a,a			;40ba
	ld (bc),a		;40bb
	inc d			;40bc
	ld b,e			;40bd
	ld a,a			;40be
	ld e,l			;40bf
	cp a			;40c0
	ld a,a			;40c1
	add a,b			;40c2
	cp a			;40c3
	ld a,a			;40c4
	ld b,d			;40c5
	nop			;40c6
	or 05eh			;40c7
	sbc a,a			;40c9
	ld a,a			;40ca
	add a,(hl)		;40cb
	add a,b			;40cc
	sub c			;40cd
	ld b,(hl)		;40ce
	ld a,d			;40cf
	ld c,(hl)		;40d0
	ei			;40d1
	ld e,(hl)		;40d2
	jp m,081f6h		;40d3
	ld c,(hl)		;40d6
	add a,e			;40d7
	ld b,(hl)		;40d8
	add a,(hl)		;40d9
	jr nz,$+9		;40da
	ld a,a			;40dc
	sbc a,c			;40dd
	sub a			;40de
	ld de,08dddh		;40df
	cp 09eh			;40e2
	ld a,l			;40e4
	ld (hl),c		;40e5
	ld a,a			;40e6
	ld hl,(l7f34h)		;40e7
	inc e			;40ea
	cp e			;40eb
	add a,c			;40ec
	defb 0fdh,0ebh,083h ;illegal sequence	;40ed
	rst 8			;40f0
	ld a,a			;40f1
	add a,c			;40f2
	ld b,0d6h		;40f3
	rst 10h			;40f5
	ld h,(hl)		;40f6
	cp e			;40f7
	ld (de),a		;40f8
	sbc a,a			;40f9
	cp h			;40fa
	dec a			;40fb
l40fch:
	jr l409dh		;40fc
	ld a,d			;40fe
	ei			;40ff
	ld d,e			;4100
	rst 38h			;4101
	ld d,d			;4102
	cp 079h			;4103
	or 0fbh			;4105
	add hl,de		;4107
	ld sp,hl		;4108
	ret pe			;4109
	cp 0a5h			;410a
	cp 0e6h			;410c
	adc a,d			;410e
	inc b			;410f
	ld h,h			;4110
	rlca			;4111
	call z,09d7fh		;4112
	sub d			;4115
	add a,b			;4116
	cp 036h			;4117
	defb 0fdh,04ch ;ld c,iyh	;4119
	ld a,(hl)		;411b
	ret p			;411c
	ld a,a			;411d
	ld a,(hl)		;411e
	inc sp			;411f
	add a,d			;4120
	and (hl)		;4121
	di			;4122
sub_4123h:
	cp 0b1h			;4123
	dec b			;4125
	add a,b			;4126
	adc a,a			;4127
	ld a,(hl)		;4128
	ld b,d			;4129
	ld h,(hl)		;412a
	ld l,e			;412b
	adc a,(hl)		;412c
	defb 0fdh,0c2h,001h ;illegal sequence	;412d
	ld hl,02002h		;4130
	sub d			;4133
	ld e,d			;4134
	rst 0			;4135
	adc a,e			;4136
	ld l,(hl)		;4137
	ld a,a			;4138
	and 0eah		;4139
	push de			;413b
	jp p,000c5h		;413c
	rst 28h			;413f
	add a,b			;4140
	ld e,c			;4141
	rlca			;4142
	adc a,l			;4143
	inc a			;4144
	ld b,(hl)		;4145
	add a,b			;4146
	ld c,007h		;4147
	call 0f6d9h		;4149
	xor b			;414c
	add a,c			;414d
	adc a,(hl)		;414e
	cp 022h			;414f
	rst 38h			;4151
	ld l,e			;4152
	ld de,0117fh		;4153
	ld a,a			;4156
	sub l			;4157
	di			;4158
	ld a,c			;4159
	add a,d			;415a
	push bc			;415b
	ld a,e			;415c
	adc a,b			;415d
	rst 0			;415e
	ld a,a			;415f
	cp e			;4160
	ld b,0f6h		;4161
	add a,(hl)		;4163
	or b			;4164
	adc a,l			;4165
	dec sp			;4166
	sbc a,(hl)		;4167
	ld (bc),a		;4168
	djnz l40fch		;4169
	ld c,e			;416b
	adc a,c			;416c
	cp a			;416d
	nop			;416e
	daa			;416f
	ld a,h			;4170
	call m,01a7fh		;4171
	pop af			;4174
	sbc a,h			;4175
	ld a,l			;4176
	inc d			;4177
	ld h,(hl)		;4178
	ld l,a			;4179
	cp 0aah			;417a
l417ch:
	ld h,(hl)		;417c
	rst 38h			;417d
	call nc,08164h		;417e
	ld l,h			;4181
	ld sp,hl		;4182
	sub 07fh		;4183
	cp 025h			;4185
	ld a,h			;4187
	cp 01ah			;4188
	ld de,007b6h		;418a
	ld a,a			;418d
	call nc,0fe76h		;418e
	ld d,b			;4191
	inc d			;4192
	call p,081bbh		;4193
	ld a,a			;4196
	inc de			;4197
	rst 38h			;4198
	add a,b			;4199
	rst 0			;419a
	sub 0b8h		;419b
	ld c,b			;419d
	ld (bc),a		;419e
	ld h,l			;419f
	cp 0f8h			;41a0
	inc b			;41a2
	ld hl,03110h		;41a3
	ret m			;41a6
	ld h,h			;41a7
	add a,b			;41a8
	or h			;41a9
	ld bc,0207ah		;41aa
	dec de			;41ad
	inc b			;41ae
	xor h			;41af
	call m,0cfaah		;41b0
	ld a,a			;41b3
	jp z,0f9a3h		;41b4
	rst 30h			;41b7
	sub 0fdh		;41b8
	pop af			;41ba
	rst 28h			;41bb
	ld a,l			;41bc
	add hl,hl		;41bd
	and 0fbh		;41be
	cpl			;41c0
	add a,b			;41c1
	cp d			;41c2
	cp 089h			;41c3
	ret c			;41c5
	ld sp,hl		;41c6
	defb 0fdh,0a9h,0fbh ;illegal sequence	;41c7
	adc a,b			;41ca
	cp 0a5h			;41cb
	cp 023h			;41cd
	rst 38h			;41cf
	xor d			;41d0
	ld a,a			;41d1
	ld a,(de)		;41d2
	jr l41e8h		;41d3
	rst 38h			;41d5
	ld b,h			;41d6
	add a,c			;41d7
	ld h,d			;41d8
	add a,l			;41d9
	ld a,c			;41da
	ld a,a			;41db
	or c			;41dc
	dec bc			;41dd
	ld b,l			;41de
	ld d,(hl)		;41df
	ld a,a			;41e0
	dec hl			;41e1
	dec b			;41e2
	add a,(hl)		;41e3
	jp c,02c81h		;41e4
	ld (hl),a		;41e7
l41e8h:
	ld a,h			;41e8
	ld (de),a		;41e9
	ld a,a			;41ea
	add a,a			;41eb
	xor l			;41ec
	defb 0fdh,07fh,028h ;illegal sequence	;41ed
	ld b,(hl)		;41f0
	xor 0e2h		;41f1
	ld a,(hl)		;41f3
	ld d,c			;41f4
	or 080h			;41f5
	cp 0bch			;41f7
	ld l,c			;41f9
	add a,b			;41fa
	ld a,a			;41fb
	set 3,l			;41fc
	rst 30h			;41fe
	jp nc,l52fdh		;41ff
	cp 039h			;4202
	and a			;4204
	rst 38h			;4205
	ld a,(bc)		;4206
	ld a,a			;4207
	halt			;4208
	xor h			;4209
sub_420ah:
	ld a,a			;420a
	add a,c			;420b
	xor h			;420c
	add a,b			;420d
	inc a			;420e
	rst 38h			;420f
	call p,08b7fh		;4210
	or (hl)			;4213
	ld h,l			;4214
	jp p,l7fb7h		;4215
	or 058h			;4218
	adc a,h			;421a
	adc a,(hl)		;421b
	sbc a,(hl)		;421c
	add a,b			;421d
	jp nc,0f810h		;421e
	ret p			;4221
l4222h:
	ret m			;4222
	ld a,a			;4223
	and a			;4224
	rst 18h			;4225
	ld a,a			;4226
	jp c,0b2fch		;4227
	ld h,(hl)		;422a
	or l			;422b
	ei			;422c
	ld l,d			;422d
	ld l,(hl)		;422e
	ld (iy-001h),d		;422f
	sub 0feh		;4232
	add a,a			;4234
	ld b,e			;4235
	ld a,h			;4236
	exx			;4237
	sbc a,b			;4238
	ei			;4239
	sbc a,b			;423a
	ei			;423b
	call z,067feh		;423c
	ld a,a			;423f
	adc a,d			;4240
	ld bc,033f6h		;4241
	ld a,a			;4244
	ld (l5281h),a		;4245
	inc de			;4248
	add a,h			;4249
	or 07fh			;424a
	ld b,0cch		;424c
	ld a,(hl)		;424e
	ld a,a			;424f
	sbc a,d			;4250
	rst 38h			;4251
	add a,d			;4252
	add a,a			;4253
	ld h,b			;4254
	rst 18h			;4255
	ld (hl),l		;4256
	nop			;4257
	jp l7f03h		;4258
	add a,09bh		;425b
	defb 0ddh,0ceh,0a9h ;illegal sequence	;425d
	ld sp,hl		;4260
	ld a,a			;4261
	dec e			;4262
	inc sp			;4263
	ld a,l			;4264
	ld h,(hl)		;4265
	ld (hl),h		;4266
	add a,d			;4267
	and h			;4268
	call m,0ff92h		;4269
	call sub_57e3h		;426c
	or (hl)			;426f
	di			;4270
	call nc,sub_767fh	;4271
	ld a,l			;4274
	ccf			;4275
	ld c,c			;4276
	di			;4277
	add a,l			;4278
	add a,h			;4279
	ld c,e			;427a
	ld a,a			;427b
	jp c,07db6h		;427c
	inc c			;427f
l4280h:
	rrca			;4280
	rst 38h			;4281
	push af			;4282
	ld d,(hl)		;4283
	ld (bc),a		;4284
	or b			;4285
	ld c,b			;4286
	ld a,(hl)		;4287
	or (hl)			;4288
	nop			;4289
	adc a,a			;428a
	rst 38h			;428b
	ld (03101h),hl		;428c
	sbc a,e			;428f
	sbc a,05eh		;4290
	nop			;4292
	ld (hl),a		;4293
	ld sp,hl		;4294
	sbc a,d			;4295
	rst 30h			;4296
	push hl			;4297
	xor 0fdh		;4298
	ld l,h			;429a
	ld l,a			;429b
	sub b			;429c
	add hl,de		;429d
	call c,0f747h		;429e
	cpl			;42a1
	ld (hl),b		;42a2
	ld a,a			;42a3
	add a,c			;42a4
	ei			;42a5
	halt			;42a6
	ld c,e			;42a7
	ld a,l			;42a8
	inc d			;42a9
	ld a,a			;42aa
	add a,b			;42ab
	xor d			;42ac
	add a,b			;42ad
	ld d,h			;42ae
	inc de			;42af
	cp 077h			;42b0
	ld a,(hl)		;42b2
	ld c,h			;42b3
	nop			;42b4
	ld e,a			;42b5
	inc bc			;42b6
	xor (hl)		;42b7
	rr (hl)			;42b8
	ld h,b			;42ba
	ld a,a			;42bb
	jr z,l42e0h		;42bc
	cp 0a5h			;42be
	add a,e			;42c0
	ld l,l			;42c1
	sbc a,e			;42c2
	and e			;42c3
	ld (bc),a		;42c4
	ld (01d86h),hl		;42c5
	ex (sp),hl		;42c8
	rst 38h			;42c9
	dec l			;42ca
	rst 38h			;42cb
	dec (hl)		;42cc
	call p,0059eh		;42cd
	ld l,(hl)		;42d0
	sub b			;42d1
	defb 0ddh,092h,000h ;illegal sequence	;42d2
	pop de			;42d5
	ld a,h			;42d6
	ld c,h			;42d7
	pop bc			;42d8
	inc e			;42d9
	inc e			;42da
	call z,08f77h		;42db
	add a,c			;42de
	ld (hl),e		;42df
l42e0h:
	ld bc,0fd4bh		;42e0
	xor d			;42e3
	jp m,0fcb6h		;42e4
	jp c,080fdh		;42e7
	ld a,c			;42ea
	jp po,l7e14h		;42eb
	sub 07ah		;42ee
	rra			;42f0
	inc bc			;42f1
	ld b,(hl)		;42f2
	add a,b			;42f3
	call sub_7b88h		;42f4
	jp z,0ff22h		;42f7
	ld d,a			;42fa
	add a,d			;42fb
	ret			;42fc
	or c			;42fd
	dec bc			;42fe
	cp e			;42ff
	rst 38h			;4300
	sbc a,e			;4301
	ld l,d			;4302
	adc a,a			;4303
	jp pe,08030h		;4304
	dec a			;4307
	xor h			;4308
	ld l,h			;4309
	rst 30h			;430a
	ex (sp),hl		;430b
	add a,(hl)		;430c
	ld e,b			;430d
	rst 20h			;430e
	nop			;430f
	adc a,a			;4310
	inc sp			;4311
	inc b			;4312
	ld bc,07d11h		;4313
	ld c,l			;4316
	pop de			;4317
	dec e			;4318
	call m,0cce8h		;4319
	adc a,a			;431c
	add a,b			;431d
	ld (hl),h		;431e
	rra			;431f
	ld a,a			;4320
	inc d			;4321
	xor c			;4322
	cp 044h			;4323
	cp 0a9h			;4325
	add a,c			;4327
	add a,a			;4328
	add a,d			;4329
l432ah:
	dec h			;432a
	ret m			;432b
	jp p,0c555h		;432c
	ld a,b			;432f
	ld de,08295h		;4330
	ld (012f4h),hl		;4333
	add a,d			;4336
	ld l,a			;4337
	jp m,0fce6h		;4338
	jp nc,0c4f8h		;433b
	ld (bc),a		;433e
	rst 38h			;433f
	and b			;4340
	ld de,0fb2fh		;4341
	or (hl)			;4344
l4345h:
	sbc a,e			;4345
	ld e,b			;4346
	push af			;4347
	ld a,(hl)		;4348
	djnz l432ah		;4349
	sbc a,d			;434b
	call nz,0bab6h		;434c
	dec c			;434f
	ld a,l			;4350
	ld l,l			;4351
	ld a,a			;4352
	ld hl,(0c7ddh)		;4353
	add a,d			;4356
	adc a,a			;4357
	add a,b			;4358
	ld e,b			;4359
	ld a,a			;435a
	call p,0aa14h		;435b
	cp 0a0h			;435e
	add hl,hl		;4360
	add a,b			;4361
l4362h:
	jp po,l4880h		;4362
	cp 0e7h			;4365
	ld a,a			;4367
	ld (bc),a		;4368
	pop af			;4369
	ld b,h			;436a
	ld b,d			;436b
	ld b,h			;436c
	sbc a,b			;436d
	ex (sp),hl		;436e
	ld b,c			;436f
	inc h			;4370
	ld a,a			;4371
	inc de			;4372
	or b			;4373
	jp m,010d1h		;4374
	ld hl,l4affh		;4377
	rra			;437a
	or (hl)			;437b
	sbc a,e			;437c
	and d			;437d
	jr l43dfh		;437e
	ld bc,0dc9bh		;4380
	cp 000h			;4383
	ret nc			;4385
	add a,c			;4386
	ld a,b			;4387
	ret m			;4388
	sub a			;4389
	ld (bc),a		;438a
	jr $+26			;438b
	adc a,c			;438d
	sbc a,c			;438e
	ret nz			;438f
	ld a,h			;4390
	add a,b			;4391
	dec a			;4392
	adc a,h			;4393
	inc b			;4394
	ei			;4395
	cp 024h			;4396
	ld sp,hl		;4398
	sub h			;4399
	xor l			;439a
	xor c			;439b
	ld a,e			;439c
	ld a,a			;439d
	add a,b			;439e
	add hl,hl		;439f
	call pe,0f024h		;43a0
	sub h			;43a3
	cp 00ch			;43a4
	pop af			;43a6
	rra			;43a7
	inc d			;43a8
	inc h			;43a9
	sbc a,e			;43aa
	ld a,(bc)		;43ab
	ld (01424h),hl		;43ac
	dec c			;43af
	ld c,a			;43b0
	ld h,b			;43b1
	xor b			;43b2
	ld de,0c582h		;43b3
	ei			;43b6
	ld (09bf6h),hl		;43b7
	exx			;43ba
	dec l			;43bb
	ld l,e			;43bc
	ld e,a			;43bd
	sbc a,e			;43be
	in a,(000h)		;43bf
	defb 0edh ;next byte illegal after ed	;43c1
	nop			;43c2
	sub c			;43c3
	ld a,b			;43c4
	ld l,b			;43c5
	add a,a			;43c6
	add hl,de		;43c7
	jr l4362h		;43c8
	adc a,h			;43ca
	defb 0fdh,081h,08fh ;illegal sequence	;43cb
	add a,b			;43ce
	ld c,d			;43cf
	add a,b			;43d0
	rst 0			;43d1
	ld b,h			;43d2
	add a,b			;43d3
	ld (08433h),hl		;43d4
	call nz,08611h		;43d7
	ld h,l			;43da
	rst 38h			;43db
	jr nz,l43e9h		;43dc
	cp e			;43de
l43dfh:
	ld h,(hl)		;43df
	pop bc			;43e0
	ld a,a			;43e1
	ld (de),a		;43e2
l43e3h:
	cpl			;43e3
	inc d			;43e4
	nop			;43e5
	dec c			;43e6
	ld b,c			;43e7
	rst 38h			;43e8
l43e9h:
	jp p,0859bh		;43e9
	ld d,l			;43ec
	ld e,e			;43ed
	ld h,b			;43ee
	ld (iy+000h),0c4h	;43ef
	rst 38h			;43f3
	dec h			;43f4
	rrca			;43f5
	or (hl)			;43f6
	sbc a,l			;43f7
	ld d,c			;43f8
	push af			;43f9
	rst 38h			;43fa
	sub (hl)		;43fb
	sbc a,e			;43fc
	sub 087h		;43fd
	ld a,e			;43ff
	ld a,h			;4400
	nop			;4401
	pop bc			;4402
	pop de			;4403
l4404h:
	ld a,c			;4404
	ld l,c			;4405
	sub a			;4406
	rst 38h			;4407
	jr nz,l43e3h		;4408
	ret nz			;440a
	ld h,(hl)		;440b
	inc d			;440c
	ld bc,0dc9dh		;440d
	add a,e			;4410
	ld a,d			;4411
	ld a,a			;4412
	add hl,bc		;4413
	ld c,a			;4414
	ld b,h			;4415
	call p,0cafah		;4416
	ld (bc),a		;4419
	add a,b			;441a
	sub d			;441b
	add a,h			;441c
	ld l,e			;441d
	exx			;441e
	ret po			;441f
	ld h,l			;4420
	ld e,a			;4421
	sub d			;4422
	defb 0fdh,07fh,0d8h ;illegal sequence	;4423
	sbc a,b			;4426
	rra			;4427
	ld de,01f23h		;4428
	inc h			;442b
	ld a,a			;442c
	or (hl)			;442d
	rst 38h			;442e
	cp 05bh			;442f
	xor h			;4431
	add a,b			;4432
	ld b,(hl)		;4433
	ld de,l52feh		;4434
	sbc a,h			;4437
	dec h			;4438
	push af			;4439
	ld a,e			;443a
	cp a			;443b
	sbc a,e			;443c
	or l			;443d
	ld a,a			;443e
	ret m			;443f
	call nc,027ffh		;4440
	rst 10h			;4443
	rst 38h			;4444
	ld (bc),a		;4445
	nop			;4446
	ld b,(hl)		;4447
	jr $-6			;4448
	add a,b			;444a
	add hl,hl		;444b
	add a,b			;444c
	ld (hl),e		;444d
	ld d,h			;444e
	ld bc,0f3fdh		;444f
	ld d,l			;4452
	ld b,h			;4453
	jp pe,03583h		;4454
	add a,h			;4457
	ld e,b			;4458
	ld a,a			;4459
	inc de			;445a
	and (hl)		;445b
	rst 38h			;445c
	ex af,af'		;445d
	ld l,e			;445e
	ld h,l			;445f
	rst 30h			;4460
l4461h:
	sub e			;4461
	pop af			;4462
	ei			;4463
	nop			;4464
	ld b,c			;4465
	pop af			;4466
	ld (0f221h),hl		;4467
sub_446ah:
	ld c,a			;446a
	ld e,e			;446b
	ld hl,(0f666h)		;446c
	ld (de),a		;446f
	call po,02061h		;4470
	ld sp,hl		;4473
	add a,d			;4474
	ld (bc),a		;4475
	sbc a,e			;4476
	in a,(09ch)		;4477
	add a,b			;4479
	or (hl)			;447a
	sbc a,e			;447b
	rst 18h			;447c
	ld (de),a		;447d
	ld a,a			;447e
	adc a,(hl)		;447f
l4480h:
	inc e			;4480
	inc hl			;4481
l4482h:
	dec e			;4482
	rst 10h			;4483
	ld b,a			;4484
	defb 0ddh,088h,087h ;illegal sequence	;4485
	ld b,d			;4488
	rst 10h			;4489
sub_448ah:
	rla			;448a
	add a,b			;448b
	cp h			;448c
	out (0f4h),a		;448d
	add a,b			;448f
	ld h,c			;4490
	ei			;4491
	rst 20h			;4492
	ld h,088h		;4493
	ld e,b			;4495
	ld a,a			;4496
	inc sp			;4497
	or e			;4498
	rrca			;4499
	ld e,a			;449a
	ld e,e			;449b
	ld hl,(l4afah)		;449c
	ld b,h			;449f
	ld (de),a		;44a0
	ld (de),a		;44a1
	add a,e			;44a2
	add a,b			;44a3
	rra			;44a4
	ld c,a			;44a5
	or (hl)			;44a6
	ld l,a			;44a7
	or 0f0h			;44a8
l44aah:
	adc a,(hl)		;44aa
	ex (sp),hl		;44ab
	jr z,l44aah		;44ac
	rlc (hl)		;44ae
	sbc a,e			;44b0
	ld l,(hl)		;44b1
	add a,b			;44b2
	ld d,c			;44b3
	or d			;44b4
	sbc a,e			;44b5
	ld l,l			;44b6
	ld a,(hl)		;44b7
	ld a,a			;44b8
	ld c,b			;44b9
	add hl,de		;44ba
	call c,05971h		;44bb
	rlca			;44be
	add a,d			;44bf
	add a,a			;44c0
	rst 30h			;44c1
	add a,l			;44c2
	inc de			;44c3
	djnz l450ah		;44c4
	add hl,de		;44c6
	cp h			;44c7
	ei			;44c8
	rla			;44c9
	ld c,a			;44ca
	xor h			;44cb
	ld d,c			;44cc
	jp m,01980h		;44cd
	add a,(hl)		;44d0
	ld b,a			;44d1
	ld a,a			;44d2
	ld (de),a		;44d3
	ld e,(hl)		;44d4
	or 0dch			;44d5
	ld b,l			;44d7
	rra			;44d8
	ei			;44d9
	ld h,07fh		;44da
	ld d,(hl)		;44dc
	dec b			;44dd
	defb 0edh ;next byte illegal after ed	;44de
	dec de			;44df
	ld e,a			;44e0
	ld d,(hl)		;44e1
	ld a,a			;44e2
	ld bc,0022dh		;44e3
	sbc a,e			;44e6
	pop de			;44e7
	ld d,l			;44e8
	and h			;44e9
	dec d			;44ea
	sbc a,e			;44eb
	or l			;44ec
	ld a,a			;44ed
	bit 2,l			;44ee
	nop			;44f0
	ccf			;44f1
	ld a,a			;44f2
	nop			;44f3
	sbc a,c			;44f4
	adc a,c			;44f5
	ld d,c			;44f6
	ld a,l			;44f7
	ld a,a			;44f8
	cp 05eh			;44f9
	and 00bh		;44fb
	rlca			;44fd
	halt			;44fe
	ld h,b			;44ff
	add a,b			;4500
	ld l,a			;4501
	defb 0fdh,04ch ;ld c,iyh	;4502
	ret m			;4504
	ld de,0ee4bh		;4505
	ld a,d			;4508
	add a,b			;4509
l450ah:
	ld b,a			;450a
	ld bc,00043h		;450b
	jp p,0f418h		;450e
	and c			;4511
	ld l,e			;4512
	call p,0ff42h		;4513
	add a,e			;4516
	jr c,l453dh		;4517
	adc a,d			;4519
	sub l			;451a
	defb 0edh ;next byte illegal after ed	;451b
	add a,0ffh		;451c
	ld a,a			;451e
	ld sp,l7f40h		;451f
	ld hl,l6e9bh		;4522
	or e			;4525
	add a,c			;4526
	dec l			;4527
	or c			;4528
	sbc a,e			;4529
	sbc a,(hl)		;452a
	ld a,a			;452b
	inc d			;452c
	ld d,(hl)		;452d
	adc a,e			;452e
	xor a			;452f
	ld h,l			;4530
	ld a,a			;4531
	or l			;4532
	rla			;4533
	rst 38h			;4534
	ld b,a			;4535
	add a,h			;4536
	and h			;4537
	nop			;4538
	ld (hl),c		;4539
	ld h,01dh		;453a
	pop bc			;453c
l453dh:
	or 039h			;453d
	rst 0			;453f
	ld h,(hl)		;4540
	out (0bbh),a		;4541
	rst 38h			;4543
	jr nz,l45c5h		;4544
	ccf			;4546
	cp a			;4547
	inc (hl)		;4548
	inc sp			;4549
	sbc a,d			;454a
	add a,b			;454b
sub_454ch:
	add a,l			;454c
	ld d,d			;454d
	ld a,a			;454e
	sbc a,l			;454f
	sbc a,094h		;4550
	add a,b			;4552
	ld d,d			;4553
	cpl			;4554
	ei			;4555
	adc a,c			;4556
	ld (de),a		;4557
	ld b,d			;4558
	ei			;4559
	ld (hl),c		;455a
	push af			;455b
	ld a,a			;455c
	ld (hl),014h		;455d
	ld h,l			;455f
	add a,e			;4560
	ld (hl),d		;4561
	add a,b			;4562
	ld (hl),09bh		;4563
	pop de			;4565
	ccf			;4566
	sbc a,e			;4567
	ld l,b			;4568
	ld b,h			;4569
	ld d,045h		;456a
	ld h,(hl)		;456c
	or l			;456d
	sbc a,e			;456e
	rl d			;456f
	ld a,(hl)		;4571
	sbc a,c			;4572
	sbc a,c			;4573
	ld b,054h		;4574
	ld b,h			;4576
	ld b,b			;4577
	ld d,b			;4578
	sbc a,a			;4579
	dec b			;457a
	ld d,h			;457b
	ld a,a			;457c
	ld e,0ffh		;457d
	sbc a,l			;457f
	ei			;4580
	ld d,b			;4581
	rst 38h			;4582
	sbc a,c			;4583
	inc hl			;4584
	adc a,b			;4585
	sbc a,l			;4586
	cp 000h			;4587
	ld sp,hl		;4589
	call c,01017h		;458a
	exx			;458d
	halt			;458e
	ld d,a			;458f
	ld b,b			;4590
	add a,b			;4591
	ld b,l			;4592
	call p,0fa13h		;4593
	dec b			;4596
	inc d			;4597
	cp a			;4598
	xor 015h		;4599
	adc a,b			;459b
	ld c,h			;459c
	rlca			;459d
	inc (hl)		;459e
	ld a,a			;459f
	ld d,d			;45a0
	pop af			;45a1
	ld a,c			;45a2
	add a,b			;45a3
	sub h			;45a4
	ei			;45a5
	adc a,e			;45a6
	call p,03184h		;45a7
	call pe,0ef65h		;45aa
	rra			;45ad
	ld b,c			;45ae
	xor 0b8h		;45af
	ld a,a			;45b1
	rst 38h			;45b2
	dec l			;45b3
	ei			;45b4
	or (hl)			;45b5
	sbc a,e			;45b6
	or e			;45b7
	ld b,d			;45b8
	ld b,l			;45b9
	add a,d			;45ba
	ld d,09bh		;45bb
	rst 10h			;45bd
	ld a,a			;45be
	and (hl)		;45bf
	ld d,l			;45c0
	call pe,0cfach		;45c1
	xor b			;45c4
l45c5h:
	ld d,(hl)		;45c5
	ld d,l			;45c6
	ld b,b			;45c7
	ld sp,hl		;45c8
	ld a,a			;45c9
	ld b,d			;45ca
	ld de,0cd1ch		;45cb
	defb 0ddh,080h,050h ;illegal sequence	;45ce
	ld (hl),c		;45d1
	add hl,de		;45d2
	inc bc			;45d3
	adc a,a			;45d4
	sbc a,l			;45d5
	pop bc			;45d6
	call 0c70dh		;45d7
	dec h			;45da
	or l			;45db
	ccf			;45dc
	ei			;45dd
	call po,05482h		;45de
	ei			;45e1
	ld l,c			;45e2
	add a,(hl)		;45e3
l45e4h:
	add a,a			;45e4
	add hl,de		;45e5
	ret po			;45e6
	dec (hl)		;45e7
	call c,sub_420ah	;45e8
	call m,0f604h		;45eb
	ld d,0bfh		;45ee
	ex (sp),hl		;45f0
	rst 10h			;45f1
	sub c			;45f2
	ld a,(bc)		;45f3
sub_45f4h:
	jp p,l56f4h		;45f4
	rst 28h			;45f7
sub_45f8h:
	sub 0f0h		;45f8
	ld a,a			;45fa
	ld e,c			;45fb
	add a,d			;45fc
	cp 0a2h			;45fd
	cpl			;45ff
	adc a,d			;4600
	add hl,hl		;4601
	adc a,a			;4602
	dec l			;4603
	sbc a,e			;4604
	and d			;4605
	inc h			;4606
	inc h			;4607
	ld (hl),e		;4608
	ld e,e			;4609
	cp a			;460a
	sbc a,e			;460b
	jr $+129		;460c
	dec b			;460e
	or e			;460f
	dec bc			;4610
	ld a,(hl)		;4611
	pop af			;4612
sub_4613h:
	ld (hl),c		;4613
	jr nz,l45e4h		;4614
	ld b,(hl)		;4616
	ld a,(bc)		;4617
	call m,sub_6f7fh	;4618
	inc a			;461b
	defb 0ddh,044h ;ld b,ixh	;461c
	ld de,0c281h		;461e
	adc a,b			;4621
	sub a			;4622
l4623h:
	ld de,04984h		;4623
	add a,b			;4626
	dec bc			;4627
	dec e			;4628
	ret nc			;4629
	add a,e			;462a
	ld (hl),b		;462b
	jp nz,080e6h		;462c
	sub e			;462f
	ei			;4630
	inc c			;4631
	add a,d			;4632
	ld (0987fh),a		;4633
	adc a,c			;4636
	ld a,a			;4637
	inc d			;4638
	ld h,(hl)		;4639
	ld de,01f21h		;463a
	ld e,e			;463d
	inc h			;463e
	ld hl,088feh		;463f
	call p,sub_454ch	;4642
	jp po,02f6bh		;4645
	cp e			;4648
	cp a			;4649
	ld sp,hl		;464a
	dec l			;464b
	cp 028h			;464c
	dec d			;464e
	adc a,e			;464f
	ret			;4650
	add a,c			;4651
	adc a,b			;4652
	pop af			;4653
	call p,0a9a0h		;4654
	sbc a,d			;4657
	ld h,h			;4658
	add a,b			;4659
	ld e,e			;465a
	cp e			;465b
	sbc a,e			;465c
	ld l,b			;465d
sub_465eh:
	dec b			;465e
	sub l			;465f
	sbc a,(hl)		;4660
	ld d,h			;4661
	call po,0e99ch		;4662
	ld (0fd40h),hl		;4665
	ret			;4668
	ld a,(bc)		;4669
	add a,a			;466a
	rst 20h			;466b
	ld a,a			;466c
	ret po			;466d
	ld d,l			;466e
	ld a,h			;466f
	cp 081h			;4670
	add hl,sp		;4672
	inc bc			;4673
	add hl,bc		;4674
	exx			;4675
	sbc a,h			;4676
	defb 0ddh,080h,01eh ;illegal sequence	;4677
	pop bc			;467a
	ld a,(de)		;467b
	ex af,af'		;467c
	inc de			;467d
	push af			;467e
	and d			;467f
	call m,0fc96h		;4680
	ld (hl),07fh		;4683
	ld a,b			;4685
	ld (0f112h),hl		;4686
	rst 30h			;4689
	inc e			;468a
	ld b,c			;468b
	or 0bfh			;468c
	adc a,a			;468e
	adc a,d			;468f
	cpl			;4690
	add a,d			;4691
	dec hl			;4692
	ex (sp),hl		;4693
	inc h			;4694
	jp c,0ff71h		;4695
	ld c,a			;4698
	rst 20h			;4699
	dec d			;469a
	rst 28h			;469b
	ld (de),a		;469c
	add a,b			;469d
	and h			;469e
	ld l,a			;469f
	ld b,h			;46a0
	and b			;46a1
	ld d,(hl)		;46a2
	sbc a,e			;46a3
	pop bc			;46a4
	ld d,(hl)		;46a5
	ld l,e			;46a6
	sbc a,e			;46a7
	ld l,l			;46a8
	ld d,d			;46a9
	ld a,a			;46aa
	and l			;46ab
	ld d,h			;46ac
	cp a			;46ad
	ld b,e			;46ae
	ld b,h			;46af
	inc (hl)		;46b0
	add a,b			;46b1
	ld b,d			;46b2
	ld sp,05524h		;46b3
	ld a,(bc)		;46b6
	inc sp			;46b7
	ld a,a			;46b8
	jp p,01c0bh		;46b9
	defb 0ddh,0fdh,082h ;illegal sequence	;46bc
	daa			;46bf
	defb 0fdh,001h,0ddh ;illegal sequence	;46c0
	call c,0997dh		;46c3
	exx			;46c6
	add a,c			;46c7
	ld b,(hl)		;46c8
	add a,c			;46c9
	ld a,b			;46ca
	pop hl			;46cb
	push af			;46cc
	jp m,0fd65h		;46cd
	ld (de),a		;46d0
	add a,c			;46d1
	ld e,e			;46d2
	ld b,083h		;46d3
	ld h,d			;46d5
	call m,0f126h		;46d6
	jp m,0fdb1h		;46d9
	ld d,0e3h		;46dc
	jr z,$+20		;46de
	dec hl			;46e0
	ld hl,09342h		;46e1
	ld (09ad0h),hl		;46e4
l46e7h:
	inc b			;46e7
	djnz l46e7h		;46e8
	or d			;46ea
	ld l,b			;46eb
l46ech:
	push af			;46ec
	sbc a,e			;46ed
	sub 080h		;46ee
	ld b,h			;46f0
	jp p,l64a0h		;46f1
	add a,b			;46f4
	and c			;46f5
	ld b,l			;46f6
	ld d,(hl)		;46f7
	sbc a,e			;46f8
	ld l,h			;46f9
	defb 0edh ;next byte illegal after ed	;46fa
	ld a,a			;46fb
	ei			;46fc
	daa			;46fd
	pop af			;46fe
	and (hl)		;46ff
	nop			;4700
	and h			;4701
	ld b,l			;4702
	sub a			;4703
	rst 0			;4704
	ex af,af'		;4705
	jr nz,l4787h		;4706
	ret z			;4708
	adc a,l			;4709
	sub d			;470a
	ld a,a			;470b
	call z,08182h		;470c
	rst 10h			;470f
	ld a,l			;4710
	ld sp,hl		;4711
	rst 10h			;4712
	add a,b			;4713
	inc hl			;4714
	djnz $+129		;4715
	pop bc			;4717
	inc (hl)		;4718
	ld sp,hl		;4719
	or a			;471a
	add iy,bc		;471b
	ld c,a			;471d
	ld l,c			;471e
	ld sp,03687h		;471f
	rst 38h			;4722
	ld c,c			;4723
	ld e,a			;4724
	add a,b			;4725
	ld c,l			;4726
	adc a,a			;4727
	inc d			;4728
	ld hl,0ac11h		;4729
	push bc			;472c
	inc hl			;472d
	ld de,0a084h		;472e
	cpl			;4731
	ld d,(hl)		;4732
	ld l,a			;4733
	set 5,l			;4734
	ld h,052h		;4736
	ld sp,02b80h		;4738
	push af			;473b
	sbc a,e			;473c
	jr nc,l47beh		;473d
	ld l,a			;473f
	ld (de),a		;4740
	adc a,h			;4741
	and b			;4742
	ld b,h			;4743
	ld c,a			;4744
	adc a,c			;4745
	cp e			;4746
	or (hl)			;4747
	sbc a,e			;4748
	add hl,hl		;4749
	cp 072h			;474a
	ld a,a			;474c
	defb 0fdh,037h,000h ;illegal sequence	;474d
	add a,e			;4750
	inc (hl)		;4751
	ld d,h			;4752
	inc b			;4753
	rra			;4754
	ld (0327fh),hl		;4755
	rla			;4758
	add a,h			;4759
	xor e			;475a
	rst 38h			;475b
	ld b,h			;475c
	ld a,l			;475d
	add a,d			;475e
	ld b,d			;475f
	ld sp,hl		;4760
	pop de			;4761
l4762h:
	ld de,07c80h		;4762
	ld c,b			;4765
	inc de			;4766
	ccf			;4767
	cp h			;4768
	and h			;4769
	call m,085aah		;476a
	pop af			;476d
	ld c,h			;476e
	rst 38h			;476f
	ld h,0e1h		;4770
	jp z,0e0fch		;4772
	ld b,h			;4775
	ld hl,0c1deh		;4776
	inc hl			;4779
	inc hl			;477a
	inc (hl)		;477b
	inc h			;477c
	add a,b			;477d
	scf			;477e
sub_477fh:
	ld a,a			;477f
	dec c			;4780
l4781h:
	cp e			;4781
	push iy			;4782
	ld bc,0047fh		;4784
l4787h:
	call p,02f22h		;4787
	ei			;478a
	adc a,a			;478b
	sub 098h		;478c
	adc a,e			;478e
	ld c,a			;478f
	and d			;4790
	xor e			;4791
	ld a,(hl)		;4792
	sbc a,e			;4793
	ld h,c			;4794
	jr nc,l4762h		;4795
	sbc a,b			;4797
	ld b,l			;4798
	ret z			;4799
	ld a,a			;479a
	cp 0e0h			;479b
	ld (l4623h),a		;479d
	inc sp			;47a0
	cp 0c9h			;47a1
	rlca			;47a3
	jr nz,$+1		;47a4
	ret m			;47a6
	add a,c			;47a7
	ld (hl),a		;47a8
	rst 0			;47a9
	ld (hl),c		;47aa
	rla			;47ab
	ld (hl),c		;47ac
	add a,e			;47ad
	ld l,c			;47ae
	ex af,af'		;47af
	dec bc			;47b0
	defb 0ddh,017h,08fh ;illegal sequence	;47b1
	inc b			;47b4
	dec de			;47b5
	ret nz			;47b6
	ld de,l6e31h		;47b7
	inc (hl)		;47ba
	ld sp,hl		;47bb
	ld c,c			;47bc
	ret nz			;47bd
l47beh:
	add a,c			;47be
	ld d,(hl)		;47bf
	add a,b			;47c0
	rla			;47c1
	cp 081h			;47c2
	or 0bbh			;47c4
	jp p,08314h		;47c6
	ld h,d			;47c9
	inc hl			;47ca
	ex (sp),hl		;47cb
	ld l,e			;47cc
	add a,c			;47cd
	inc h			;47ce
	call po,sub_7fa8h	;47cf
	ex (sp),hl		;47d2
	cp c			;47d3
	adc a,l			;47d4
	or b			;47d5
	call m,003eah		;47d6
	ld l,01fh		;47d9
	ld h,l			;47db
	jp m,092abh		;47dc
	ld a,a			;47df
	dec b			;47e0
	ld l,a			;47e1
	ld b,d			;47e2
	inc d			;47e3
	ld a,(hl)		;47e4
	rst 28h			;47e5
	adc a,e			;47e6
	adc a,e			;47e7
	jp z,0942fh		;47e8
	dec de			;47eb
	inc (hl)		;47ec
	ld a,a			;47ed
	cp 0e4h			;47ee
	push af			;47f0
	ld h,b			;47f1
	inc sp			;47f2
	ld hl,08d11h		;47f3
	cp 04bh			;47f6
	ld (0c380h),a		;47f8
	rst 38h			;47fb
	ld e,l			;47fc
	ld bc,01117h		;47fd
	call z,0ddcch		;4800
	ld bc,01885h		;4803
	add a,c			;4806
	ld (hl),a		;4807
	rla			;4808
	add a,h			;4809
	adc a,b			;480a
	ld de,03133h		;480b
	sbc a,l			;480e
	cp h			;480f
	call nz,09986h		;4810
	add a,h			;4813
l4814h:
	dec b			;4814
	defb 0fdh,09ah,0b5h ;illegal sequence	;4815
	add hl,bc		;4818
	ld d,c			;4819
	ld b,d			;481a
	ld b,d			;481b
	ccf			;481c
	jp m,02208h		;481d
	ld b,d			;4820
	ret pe			;4821
	or (hl)			;4822
	ld a,a			;4823
	ld l,e			;4824
	call c,099e6h		;4825
	ld a,a			;4828
	ld (bc),a		;4829
	ld a,a			;482a
	sub c			;482b
	jp (hl)			;482c
	djnz l4885h		;482d
	sub b			;482f
	inc hl			;4830
	rst 38h			;4831
	add a,h			;4832
	scf			;4833
	cp 06dh			;4834
	sbc a,e			;4836
	jr nc,$+129		;4837
	inc hl			;4839
	ld b,h			;483a
	ret po			;483b
	ld a,a			;483c
	ld (0c022h),a		;483d
	or e			;4840
	ld de,0a413h		;4841
	inc c			;4844
	ld c,h			;4845
	ld (0100ah),a		;4846
	ret m			;4849
	ld a,a			;484a
	djnz l4814h		;484b
	ld a,l			;484d
	ld (hl),a		;484e
	ld (hl),a		;484f
	rla			;4850
	adc a,b			;4851
	ld a,a			;4852
	call 08770h		;4853
	sub (hl)		;4856
	add hl,de		;4857
	adc a,h			;4858
	ld a,b			;4859
	ld a,a			;485a
	and (hl)		;485b
	ld bc,l5180h		;485c
	inc (hl)		;485f
	add a,b			;4860
	ld a,a			;4861
	ld c,l			;4862
	add a,b			;4863
	add a,h			;4864
	dec (hl)		;4865
	ld h,d			;4866
	add a,a			;4867
	inc sp			;4868
	push af			;4869
	ret c			;486a
	ex af,af'		;486b
	ei			;486c
	adc a,b			;486d
	pop af			;486e
	cp e			;486f
	ld c,d			;4870
	ld de,09112h		;4871
	add a,c			;4874
	cpl			;4875
	and 01bh		;4876
	defb 0fdh,0cch,02eh ;illegal sequence	;4878
	ld hl,09674h		;487b
	add hl,de		;487e
	inc de			;487f
l4880h:
	sub l			;4880
	ld b,a			;4881
	jp m,08211h		;4882
l4885h:
	sub a			;4885
	or c			;4886
	ld e,e			;4887
	sbc a,e			;4888
	ld (de),a		;4889
	jp (hl)			;488a
	sub h			;488b
	or b			;488c
	ld d,c			;488d
	cp 0f4h			;488e
	dec sp			;4890
	nop			;4891
	ld (hl),b		;4892
	ld a,(hl)		;4893
	ld b,h			;4894
	inc hl			;4895
	ld b,(hl)		;4896
	ld h,e			;4897
	adc a,b			;4898
	dec a			;4899
	ld a,a			;489a
	jp c,l7f1ch		;489b
	ld (hl),c		;489e
	ld (l7c71h),hl		;489f
	add a,b			;48a2
	ld b,b			;48a3
	rst 10h			;48a4
	ld (hl),c		;48a5
	pop de			;48a6
	rla			;48a7
	defb 0ddh,0cch,070h ;illegal sequence	;48a8
	and a			;48ab
	add a,b			;48ac
	dec de			;48ad
	ld a,h			;48ae
	ld a,a			;48af
	inc c			;48b0
	ld de,0863fh		;48b1
	sub l			;48b4
	ld c,a			;48b5
	call pe,sub_448ah	;48b6
l48b9h:
	call nc,l5180h		;48b9
	inc h			;48bc
	ld (0b1f2h),hl		;48bd
	ld (de),a		;48c0
	ld e,c			;48c1
	jp p,08c44h		;48c2
	ld c,d			;48c5
	xor 036h		;48c6
	ld e,a			;48c8
	inc hl			;48c9
	rst 38h			;48ca
	inc h			;48cb
	ld sp,0c999h		;48cc
	ld l,e			;48cf
	sub b			;48d0
	sbc a,l			;48d1
	ld b,c			;48d2
	ld a,a			;48d3
	ld e,c			;48d4
	add a,h			;48d5
	add a,e			;48d6
	ld d,l			;48d7
	sbc a,e			;48d8
	xor c			;48d9
	jp p,0c0f0h		;48da
	add hl,hl		;48dd
	cp (hl)			;48de
	inc d			;48df
	di			;48e0
	and h			;48e1
	cp 073h			;48e2
	add a,l			;48e4
	xor d			;48e5
	ld d,(hl)		;48e6
	daa			;48e7
l48e8h:
	ld d,d			;48e8
	ld (0100ah),a		;48e9
	ld a,a			;48ec
	ret nz			;48ed
	rla			;48ee
	and a			;48ef
	ld a,a			;48f0
	add a,c			;48f1
	dec h			;48f2
	add a,b			;48f3
	ld (bc),a		;48f4
	rst 0			;48f5
	ld a,l			;48f6
	ld de,08579h		;48f7
	rst 28h			;48fa
	ld a,a			;48fb
	jr z,l48b9h		;48fc
	sub d			;48fe
	inc d			;48ff
	cp (hl)			;4900
	jr nc,$+69		;4901
	add a,(hl)		;4903
	adc a,e			;4904
	add a,d			;4905
	ld a,a			;4906
	ld (de),a		;4907
	ld (l6480h),hl		;4908
	add a,e			;490b
	inc hl			;490c
	ld c,c			;490d
	di			;490e
	ld b,d			;490f
	jp p,02bedh		;4910
	xor 04eh		;4913
	ld h,l			;4915
	ret p			;4916
	ld a,a			;4917
	ld h,d			;4918
	rst 38h			;4919
	or h			;491a
	sbc a,e			;491b
	jp nz,0a7fbh		;491c
	rst 8			;491f
	push af			;4920
	jp z,l4482h		;4921
	pop af			;4924
	sbc a,d			;4925
	sub l			;4926
	sbc a,e			;4927
	cp d			;4928
	sbc a,h			;4929
	ld e,d			;492a
	sbc a,d			;492b
	ld d,023h		;492c
	ld b,e			;492e
	ld a,e			;492f
	ld a,(hl)		;4930
	ld h,e			;4931
	ld a,a			;4932
	inc (hl)		;4933
	ld a,(hl)		;4934
	ld bc,l6545h		;4935
	ld b,d			;4938
	inc de			;4939
	ld (00f7fh),a		;493a
	ld bc,01011h		;493d
	ld a,a			;4940
	ld (hl),h		;4941
	ld (hl),c		;4942
	add a,b			;4943
	jp nc,052f8h		;4944
	add a,c			;4947
	ld b,h			;4948
	cp 099h			;4949
	dec hl			;494b
	sbc a,l			;494c
	call c,0ca80h		;494d
	cp e			;4950
	jp nc,0ac80h		;4951
	ld a,(03128h)		;4954
	inc d			;4957
	ld h,c			;4958
	ld d,c			;4959
	inc h			;495a
	rst 38h			;495b
	ld c,c			;495c
	ld b,d			;495d
	pop de			;495e
	adc a,d			;495f
	ld h,a			;4960
	push hl			;4961
	dec bc			;4962
	ld (de),a		;4963
	ex (sp),hl		;4964
	ld e,d			;4965
	ld l,l			;4966
	and h			;4967
	ld a,c			;4968
	dec hl			;4969
	ld hl,l7ff1h		;496a
	sbc a,e			;496d
	ld a,(de)		;496e
	cp a			;496f
	sub l			;4970
	adc a,c			;4971
	ld h,l			;4972
	ld sp,hl		;4973
	and b			;4974
	ld a,a			;4975
	cpl			;4976
	ld (de),a		;4977
	ld c,a			;4978
	cpl			;4979
	or (hl)			;497a
	sbc a,e			;497b
	call nz,03123h		;497c
	ld (0aafbh),hl		;497f
	ld de,03bfeh		;4982
	jr z,l49dbh		;4985
	ld b,d			;4987
	ex af,af'		;4988
	add a,b			;4989
	and a			;498a
	dec bc			;498b
	ld b,c			;498c
	ld a,a			;498d
	cp l			;498e
	add a,b			;498f
	ld (08071h),hl		;4990
	ld d,h			;4993
	ld de,0c37dh		;4994
	ld a,a			;4997
	rst 0			;4998
	nop			;4999
	add a,c			;499a
	inc e			;499b
	ld d,(hl)		;499c
	ld sp,01b82h		;499d
	ld sp,l7f11h		;49a0
	cp 084h			;49a3
	jp p,0df9ah		;49a5
	xor l			;49a8
	inc h			;49a9
	sub b			;49aa
	ld (de),a		;49ab
	pop af			;49ac
	adc a,b			;49ad
	dec hl			;49ae
	ld d,(hl)		;49af
	call po,sub_505ch	;49b0
	inc h			;49b3
	sub (hl)		;49b4
	ld sp,0fef1h		;49b5
	ld c,(hl)		;49b8
	add a,c			;49b9
	adc a,d			;49ba
	ld de,l5ff6h		;49bb
	add a,h			;49be
	sub h			;49bf
	ld d,(hl)		;49c0
	ld a,a			;49c1
	dec l			;49c2
	ld c,a			;49c3
	or (hl)			;49c4
	sbc a,e			;49c5
	call po,095fbh		;49c6
	ld a,e			;49c9
	ld (de),a		;49ca
	sbc a,0bch		;49cb
	ld a,a			;49cd
	ld l,b			;49ce
	add a,c			;49cf
	ld b,h			;49d0
	adc a,h			;49d1
	adc a,e			;49d2
	adc a,b			;49d3
	add a,b			;49d4
	dec d			;49d5
	ld d,l			;49d6
	ld c,e			;49d7
	ld b,c			;49d8
	add a,b			;49d9
	adc a,c			;49da
l49dbh:
	pop de			;49db
	inc e			;49dc
	ld a,a			;49dd
	sub l			;49de
	dec d			;49df
	ld a,a			;49e0
	add a,b			;49e1
	ld hl,(099c1h)		;49e2
	defb 0fdh,099h,087h ;illegal sequence	;49e5
	rst 10h			;49e8
	ld a,a			;49e9
	sub h			;49ea
	defb 0fdh,09ah,0edh ;illegal sequence	;49eb
	ld d,d			;49ee
	ld a,a			;49ef
	add a,b			;49f0
	ld l,d			;49f1
	rst 38h			;49f2
	ex af,af'		;49f3
	ld d,(hl)		;49f4
	cp a			;49f5
	jp p,0f40bh		;49f6
	ld b,c			;49f9
	adc a,d			;49fa
	jp nc,02d51h		;49fb
	ld (0e3f5h),a		;49fe
	adc a,(hl)		;4a01
	ld a,a			;4a02
	sub l			;4a03
	ld hl,09b7fh		;4a04
	and l			;4a07
	ld e,083h		;4a08
	dec d			;4a0a
	sbc a,d			;4a0b
	ld h,b			;4a0c
	or 06fh			;4a0d
	ld de,0246dh		;4a0f
	add a,e			;4a12
	sbc a,e			;4a13
	ld l,l			;4a14
	push bc			;4a15
	cp c			;4a16
	dec l			;4a17
	ld (hl),e		;4a18
	nop			;4a19
	adc a,c			;4a1a
	ld l,c			;4a1b
	sub e			;4a1c
	ld d,h			;4a1d
	cp 04ch			;4a1e
	ld hl,0240ah		;4a20
	ld (03a24h),a		;4a23
	ld b,c			;4a26
	jp po,0f0b8h		;4a27
	ld a,a			;4a2a
	ld (hl),c		;4a2b
	sub (hl)		;4a2c
	add a,b			;4a2d
	ld (0c982h),hl		;4a2e
	add a,b			;4a31
	exx			;4a32
	ld a,a			;4a33
	sub h			;4a34
	add a,b			;4a35
	ex (sp),hl		;4a36
	ld (hl),b		;4a37
	jr c,$+51		;4a38
	add a,l			;4a3a
	ld h,l			;4a3b
	ld de,084bah		;4a3c
	ld (hl),0cah		;4a3f
	ld c,d			;4a41
	ld l,e			;4a42
	add a,c			;4a43
	nop			;4a44
	ld c,a			;4a45
	ld c,a			;4a46
	inc d			;4a47
	jp p,02234h		;4a48
	sub (hl)		;4a4b
	ld bc,0e11fh		;4a4c
	sub d			;4a4f
	nop			;4a50
	ret p			;4a51
	and h			;4a52
	sbc a,d			;4a53
	ld e,e			;4a54
	rra			;4a55
	sbc a,e			;4a56
	inc a			;4a57
	call p,09a54h		;4a58
	inc de			;4a5b
	call nz,01f7fh		;4a5c
	xor b			;4a5f
	sub (hl)		;4a60
	sbc a,e			;4a61
	in a,(013h)		;4a62
	ld a,a			;4a64
	or (hl)			;4a65
	ld (de),a		;4a66
	adc a,c			;4a67
	inc l			;4a68
sub_4a69h:
	nop			;4a69
	ld (l7fd1h),a		;4a6a
	ld (l6623h),hl		;4a6d
	push de			;4a70
	ld (0ff10h),a		;4a71
	dec a			;4a74
	add hl,hl		;4a75
	nop			;4a76
	add a,b			;4a77
	ld h,d			;4a78
	add a,e			;4a79
	or d			;4a7a
	ld a,a			;4a7b
	ld e,e			;4a7c
	ret m			;4a7d
	add a,b			;4a7e
l4a7fh:
	sbc a,h			;4a7f
	jp p,0c192h		;4a80
	ld c,c			;4a83
	add a,d			;4a84
	inc bc			;4a85
	ld e,a			;4a86
	ld b,a			;4a87
	jp z,0bb88h		;4a88
	add a,b			;4a8b
	sub c			;4a8c
	ld (de),a		;4a8d
	adc a,h			;4a8e
	djnz $+38		;4a8f
	ld (0ff04h),a		;4a91
	ld d,h			;4a94
	ld (0f2e2h),hl		;4a95
	cp 079h			;4a98
	xor h			;4a9a
	add a,b			;4a9b
	ld e,e			;4a9c
	rra			;4a9d
	sbc a,e			;4a9e
	dec (hl)		;4a9f
	ld (hl),e		;4aa0
	sbc a,d			;4aa1
	ld h,h			;4aa2
	or 053h			;4aa3
	add a,a			;4aa5
	ld h,l			;4aa6
	or (hl)			;4aa7
	sbc a,e			;4aa8
	ld l,b			;4aa9
	ld d,b			;4aaa
	adc a,(hl)		;4aab
	cp (hl)			;4aac
	ld hl,(08efeh)		;4aad
	rst 38h			;4ab0
	push af			;4ab1
	add a,h			;4ab2
	add a,h			;4ab3
	ld (0e989h),hl		;4ab4
	inc sp			;4ab7
	inc hl			;4ab8
	add a,(hl)		;4ab9
	dec d			;4aba
	sub b			;4abb
	ld d,h			;4abc
	rst 38h			;4abd
	defb 0edh ;next byte illegal after ed	;4abe
	add a,b			;4abf
	inc l			;4ac0
	ld c,(hl)		;4ac1
	add a,c			;4ac2
	ld a,0cdh		;4ac3
	add a,a			;4ac5
	ld e,e			;4ac6
	sbc a,l			;4ac7
	add a,b			;4ac8
	sub l			;4ac9
	add a,b			;4aca
	rla			;4acb
	ld a,l			;4acc
	add a,l			;4acd
	add hl,bc		;4ace
	inc de			;4acf
	ld bc,0cb43h		;4ad0
	jp pe,0c3bbh		;4ad3
	rst 38h			;4ad6
	ret po			;4ad7
	add a,l			;4ad8
	ld b,d			;4ad9
	xor 045h		;4ada
	ld (080f1h),hl		;4adc
	ld h,h			;4adf
	call p,023ddh		;4ae0
	xor l			;4ae3
	cpl			;4ae4
	sbc a,e			;4ae5
	sbc a,e			;4ae6
	adc a,a			;4ae7
	jp z,0ad9ah		;4ae8
	ret m			;4aeb
	ld a,(l5aach)		;4aec
	ld e,a			;4aef
	sbc a,e			;4af0
	ld c,e			;4af1
	cp (hl)			;4af2
	inc h			;4af3
	ld h,h			;4af4
	ld b,e			;4af5
	add a,b			;4af6
	or c			;4af7
	or e			;4af8
	add hl,sp		;4af9
l4afah:
	add a,d			;4afa
	call z,sub_7f6dh	;4afb
	ret nc			;4afe
l4affh:
	ld d,c			;4aff
	add a,(hl)		;4b00
	xor e			;4b01
	djnz $+1		;4b02
	halt			;4b04
	sub (hl)		;4b05
	add a,b			;4b06
	dec hl			;4b07
	add a,c			;4b08
	ld b,a			;4b09
	exx			;4b0a
	sbc a,b			;4b0b
	sbc a,c			;4b0c
	ld a,a			;4b0d
	sbc a,l			;4b0e
	jp m,083a5h		;4b0f
	inc h			;4b12
	add a,b			;4b13
	ld b,h			;4b14
	ld b,h			;4b15
	nop			;4b16
	add a,b			;4b17
	ld l,c			;4b18
	ld l,e			;4b19
	or l			;4b1a
	add a,b			;4b1b
	ld (hl),0fah		;4b1c
	call nc,039edh		;4b1e
	ld b,c			;4b21
	rst 38h			;4b22
	ld l,0e0h		;4b23
	ld (09b1fh),bc		;4b25
	ld l,e			;4b29
	add a,b			;4b2a
	dec hl			;4b2b
	rst 38h			;4b2c
	ld e,e			;4b2d
	nop			;4b2e
	xor e			;4b2f
	ld l,e			;4b30
	sbc a,e			;4b31
	ld l,h			;4b32
	ld b,h			;4b33
	ld h,(hl)		;4b34
	sbc a,h			;4b35
	add a,b			;4b36
	ld h,013h		;4b37
	ld b,l			;4b39
	jp 08096h		;4b3a
	ld h,l			;4b3d
	cp 084h			;4b3e
	ld d,h			;4b40
	add a,l			;4b41
	pop de			;4b42
	sub d			;4b43
	xor a			;4b44
	nop			;4b45
	nop			;4b46
	push bc			;4b47
	dec l			;4b48
	ld bc,02affh		;4b49
	ld a,a			;4b4c
	ld l,e			;4b4d
	inc d			;4b4e
	inc c			;4b4f
	ld d,l			;4b50
	ret c			;4b51
	call pe,08880h		;4b52
	inc d			;4b55
	dec d			;4b56
	rst 20h			;4b57
	xor d			;4b58
	add a,(hl)		;4b59
	sub d			;4b5a
	ret nz			;4b5b
	add a,(hl)		;4b5c
	rst 8			;4b5d
	call z,00fech		;4b5e
	or 0b4h			;4b61
	sbc a,e			;4b63
	push bc			;4b64
	sub b			;4b65
	cp l			;4b66
	rst 38h			;4b67
	and 000h		;4b68
l4b6ah:
	sbc a,e			;4b6a
	jp c,l4623h+2		;4b6b
	xor 080h		;4b6e
	jr c,l4b6ah		;4b70
	ld d,d			;4b72
	ld b,d			;4b73
	add a,c			;4b74
	and e			;4b75
	inc hl			;4b76
	cp 035h			;4b77
	ld a,a			;4b79
	ld b,l			;4b7a
	call z,00d59h		;4b7b
	ld l,a			;4b7e
	add a,(hl)		;4b7f
	cp a			;4b80
	ld a,a			;4b81
	pop de			;4b82
	ret nz			;4b83
	add hl,de		;4b84
	jp 0c139h		;4b85
	rla			;4b88
	dec c			;4b89
	inc e			;4b8a
	sub 071h		;4b8b
	rst 38h			;4b8d
	ei			;4b8e
	ld c,b			;4b8f
	ld e,a			;4b90
	jp nz,006e2h		;4b91
	and c			;4b94
	defb 0fdh,012h,043h ;illegal sequence	;4b95
	add a,0e6h		;4b98
	and l			;4b9a
	call m,sub_446ah	;4b9b
	di			;4b9e
	ld l,d			;4b9f
	pop hl			;4ba0
	call 0cb00h		;4ba1
	ld b,09bh		;4ba4
	ld l,l			;4ba6
	ld c,(hl)		;4ba7
	ld a,a			;4ba8
	adc a,d			;4ba9
	inc de			;4baa
	jp m,0f022h		;4bab
	sbc a,h			;4bae
	add a,l			;4baf
	cp b			;4bb0
	ld (hl),d		;4bb1
	ld a,a			;4bb2
	sbc a,c			;4bb3
	cp 054h			;4bb4
	cp h			;4bb6
	dec d			;4bb7
	add a,d			;4bb8
	ld d,a			;4bb9
	push de			;4bba
	ld c,e			;4bbb
	add a,b			;4bbc
	ex (sp),hl		;4bbd
	inc hl			;4bbe
	inc (hl)		;4bbf
	ld (iy+03fh),e		;4bc0
	dec c			;4bc3
	sbc a,h			;4bc4
	rst 38h			;4bc5
	sbc a,c			;4bc6
	ld hl,0ed7fh		;4bc7
	pop de			;4bca
	cpl			;4bcb
sub_4bcch:
	inc d			;4bcc
	ld a,e			;4bcd
	sbc a,h			;4bce
	ld a,a			;4bcf
	or d			;4bd0
	ld (de),a		;4bd1
	ld (bc),a		;4bd2
	call m,080a9h		;4bd3
	adc a,c			;4bd6
	or (hl)			;4bd7
	ld h,l			;4bd8
	ld h,056h		;4bd9
	ld a,(hl)		;4bdb
	and l			;4bdc
	ld b,d			;4bdd
	inc h			;4bde
	sbc a,l			;4bdf
	and l			;4be0
	sbc a,e			;4be1
	or d			;4be2
	ld h,(hl)		;4be3
	scf			;4be4
	and 064h		;4be5
	pop bc			;4be7
	inc hl			;4be8
	rst 38h			;4be9
	adc a,d			;4bea
	rst 30h			;4beb
	ret z			;4bec
	cp 0e1h			;4bed
	inc de			;4bef
	add a,(hl)		;4bf0
	ld e,e			;4bf1
	push de			;4bf2
	sbc a,b			;4bf3
	ld hl,l7ffch		;4bf4
	ld l,d			;4bf7
	cpl			;4bf8
	ld (0c39ch),a		;4bf9
	jp (hl)			;4bfc
	ld a,a			;4bfd
	ld bc,0b9f9h		;4bfe
	ld e,h			;4c01
	ld c,c			;4c02
	defb 0edh ;next byte illegal after ed	;4c03
	call m,sub_4123h	;4c04
	inc c			;4c07
	add hl,sp		;4c08
	ld (de),a		;4c09
	push bc			;4c0a
	ld d,a			;4c0b
	rrca			;4c0c
	sbc a,e			;4c0d
	sbc a,d			;4c0e
	adc a,a			;4c0f
	ld a,d			;4c10
	jp p,01533h		;4c11
	ld a,(hl)		;4c14
	rst 30h			;4c15
	rlc c			;4c16
	ld a,a			;4c18
	or e			;4c19
	ld l,(hl)		;4c1a
	ld h,h			;4c1b
	cp l			;4c1c
	ld d,(hl)		;4c1d
	sub c			;4c1e
	dec hl			;4c1f
	add a,h			;4c20
	ex de,hl		;4c21
	ld a,a			;4c22
	inc e			;4c23
	inc sp			;4c24
	ld a,a			;4c25
	ld l,h			;4c26
	sub e			;4c27
	ld hl,080a7h		;4c28
	ret z			;4c2b
	push hl			;4c2c
	ld a,a			;4c2d
	inc sp			;4c2e
	adc a,a			;4c2f
	adc a,l			;4c30
	ld d,c			;4c31
	ld (hl),0dch		;4c32
	adc a,d			;4c34
	ld e,a			;4c35
	ld a,(hl)		;4c36
	call m,0be3ah		;4c37
	and e			;4c3a
	dec hl			;4c3b
	call z,0f729h		;4c3c
	ld e,h			;4c3f
	ld e,a			;4c40
	ret m			;4c41
	rla			;4c42
	pop af			;4c43
	ld d,(hl)		;4c44
	dec b			;4c45
	rst 38h			;4c46
	ld de,l599dh		;4c47
	sbc a,e			;4c4a
	ld a,a			;4c4b
	jp z,0bc44h		;4c4c
	ld d,d			;4c4f
	cp 024h			;4c50
	ld d,h			;4c52
	rst 30h			;4c53
	ld l,a			;4c54
	nop			;4c55
	ld c,d			;4c56
	inc sp			;4c57
	add a,a			;4c58
	ld c,(hl)		;4c59
	sub b			;4c5a
	ld e,d			;4c5b
	add a,b			;4c5c
	call m,sub_5e89h	;4c5d
	ld sp,03abdh		;4c60
	inc (hl)		;4c63
	pop hl			;4c64
	dec bc			;4c65
	ld (de),a		;4c66
	cp b			;4c67
	xor d			;4c68
	rst 38h			;4c69
	and l			;4c6a
	ld a,l			;4c6b
	defb 0fdh,01eh,001h ;illegal sequence	;4c6c
	inc h			;4c6f
	adc a,b			;4c70
	cpl			;4c71
	sub l			;4c72
	xor d			;4c73
	call m,0a492h		;4c74
	ld a,a			;4c77
	add a,l			;4c78
	dec b			;4c79
	ld b,h			;4c7a
	inc de			;4c7b
	ld (0b89bh),hl		;4c7c
	ld e,d			;4c7f
	ld b,(iy+07eh)		;4c80
	ld d,e			;4c83
	inc sp			;4c84
	ld a,a			;4c85
	ld h,a			;4c86
	add a,a			;4c87
	ld c,c			;4c88
	inc de			;4c89
	call m,08962h		;4c8a
	ld a,b			;4c8d
	call m,0887fh		;4c8e
	or h			;4c91
	call z,09638h		;4c92
	adc a,h			;4c95
	ld h,a			;4c96
	pop af			;4c97
	sbc a,b			;4c98
	cp l			;4c99
	and l			;4c9a
	and h			;4c9b
	sbc a,08dh		;4c9c
	ret z			;4c9e
l4c9fh:
	add a,b			;4c9f
	sub d			;4ca0
	pop af			;4ca1
	rst 18h			;4ca2
	ld h,c			;4ca3
	ld a,a			;4ca4
	call p,08b1fh		;4ca5
	sub b			;4ca8
	ld hl,001f0h		;4ca9
	ld (hl),e		;4cac
	jr nz,l4d2eh		;4cad
	add hl,sp		;4caf
	dec h			;4cb0
	ld d,h			;4cb1
	rst 28h			;4cb2
	inc de			;4cb3
	ld (0bcf5h),a		;4cb4
	ld a,(hl)		;4cb7
	push de			;4cb8
	adc a,0fbh		;4cb9
	ld b,(hl)		;4cbb
	ld a,a			;4cbc
	ld sp,08131h		;4cbd
	cp (hl)			;4cc0
	sub (hl)		;4cc1
	rst 18h			;4cc2
	ld (hl),l		;4cc3
	adc a,(hl)		;4cc4
	dec d			;4cc5
	ld (hl),a		;4cc6
	ld b,b			;4cc7
	ld e,e			;4cc8
	defb 0fdh,089h,0afh ;illegal sequence	;4cc9
	ld a,(hl)		;4ccc
	ex (sp),hl		;4ccd
	ld b,0bbh		;4cce
	or b			;4cd0
	rrca			;4cd1
	out (082h),a		;4cd2
	ld b,h			;4cd4
	jp p,0a495h		;4cd5
	sub (hl)		;4cd8
	ld b,h			;4cd9
l4cdah:
	push af			;4cda
	ld d,(hl)		;4cdb
	add a,h			;4cdc
	jp c,l5999h		;4cdd
	sbc a,e			;4ce0
	sub l			;4ce1
	ld e,h			;4ce2
	ld l,c			;4ce3
	ld b,l			;4ce4
	ld b,(hl)		;4ce5
	ld b,c			;4ce6
	xor 0c4h		;4ce7
	add a,h			;4ce9
	adc a,023h		;4cea
	jp p,03691h		;4cec
	adc a,d			;4cef
	sbc a,b			;4cf0
	ld a,a			;4cf1
	inc (hl)		;4cf2
	pop de			;4cf3
	sub b			;4cf4
	ld sp,0887fh		;4cf5
	inc h			;4cf8
	adc a,(hl)		;4cf9
	jp nc,00400h		;4cfa
	ld h,e			;4cfd
	ld h,004h		;4cfe
l4d00h:
	ld b,l			;4d00
	or c			;4d01
	rst 8			;4d02
	ld l,c			;4d03
	sub c			;4d04
	or e			;4d05
	sub c			;4d06
	add a,0e3h		;4d07
	inc (hl)		;4d09
	ld (bc),a		;4d0a
	ld (0c2b1h),hl		;4d0b
	ld d,h			;4d0e
	add a,b			;4d0f
	dec e			;4d10
	res 7,e			;4d11
	ld a,07eh		;4d13
	sbc a,b			;4d15
	pop hl			;4d16
	ld b,a			;4d17
	xor l			;4d18
	xor d			;4d19
	ld (de),a		;4d1a
	ld a,h			;4d1b
	ld b,l			;4d1c
	jr nz,l4c9fh		;4d1d
	rst 38h			;4d1f
	djnz $+23		;4d20
	ld d,(hl)		;4d22
	ld d,l			;4d23
	sbc a,e			;4d24
	add a,l			;4d25
	add a,b			;4d26
	rst 28h			;4d27
	ld a,a			;4d28
	ld a,(bc)		;4d29
	sub l			;4d2a
	ld c,l			;4d2b
	xor a			;4d2c
	adc a,c			;4d2d
l4d2eh:
	ld b,(hl)		;4d2e
	ld b,h			;4d2f
	add a,b			;4d30
	ld a,0beh		;4d31
	xor d			;4d33
	adc a,c			;4d34
	ld a,c			;4d35
	call m,08bc8h		;4d36
	adc a,h			;4d39
	sub d			;4d3a
	jp p,0c6fdh		;4d3b
	ld h,(hl)		;4d3e
	dec c			;4d3f
	ld h,(hl)		;4d40
	ret c			;4d41
	ld d,(hl)		;4d42
	sbc a,e			;4d43
	ld d,d			;4d44
	jr l4cdah		;4d45
	ld b,l			;4d47
	and h			;4d48
	and e			;4d49
	ld b,l			;4d4a
	rla			;4d4b
	ld a,l			;4d4c
	ret z			;4d4d
	ld de,l5215h		;4d4e
	call z,01cf5h		;4d51
	inc sp			;4d54
	ld b,(hl)		;4d55
	ld h,(hl)		;4d56
	xor a			;4d57
	ld d,a			;4d58
	add a,c			;4d59
	adc a,a			;4d5a
	ld a,a			;4d5b
	xor d			;4d5c
	ld b,034h		;4d5d
	adc a,a			;4d5f
	cp 05eh			;4d60
	ld a,a			;4d62
	ld a,(bc)		;4d63
	rrca			;4d64
	pop af			;4d65
	ld d,c			;4d66
	rst 38h			;4d67
	dec h			;4d68
	ld h,l			;4d69
	sbc a,e			;4d6a
	xor (hl)		;4d6b
	ld c,d			;4d6c
	ld l,d			;4d6d
	ld a,a			;4d6e
	ld (bc),a		;4d6f
	push bc			;4d70
	ld d,d			;4d71
	ld e,(hl)		;4d72
	inc h			;4d73
	ld b,(hl)		;4d74
	ld h,h			;4d75
	ld h,l			;4d76
	ld (0a2f8h),a		;4d77
	ld b,h			;4d7a
	add a,c			;4d7b
	daa			;4d7c
	ld b,h			;4d7d
	add a,h			;4d7e
	ld c,e			;4d7f
	ld sp,02e90h		;4d80
	adc a,b			;4d83
	xor h			;4d84
	dec c			;4d85
	inc d			;4d86
	ld d,h			;4d87
	jp pe,010d6h		;4d88
	ld b,(hl)		;4d8b
	ld h,(hl)		;4d8c
	adc a,c			;4d8d
	ld (08722h),hl		;4d8e
	call nc,0259ch		;4d91
	inc (hl)		;4d94
	ld b,c			;4d95
	add a,d			;4d96
	ld a,(de)		;4d97
	ld (0b1a6h),hl		;4d98
	sbc a,b			;4d9b
	ld d,c			;4d9c
	and e			;4d9d
	and c			;4d9e
	rla			;4d9f
	xor l			;4da0
	sub c			;4da1
	add a,b			;4da2
	sbc a,0abh		;4da3
	ld e,07fh		;4da5
	ld c,c			;4da7
	cp e			;4da8
	ld (bc),a		;4da9
	ld h,l			;4daa
	cp 01eh			;4dab
	ld sp,hl		;4dad
	ld a,a			;4dae
	call m,00415h		;4daf
	sbc a,d			;4db2
	ld a,d			;4db3
	ld h,l			;4db4
	or h			;4db5
	sbc a,e			;4db6
	ld e,e			;4db7
	rst 38h			;4db8
	sbc a,e			;4db9
	inc h			;4dba
	ld (bc),a		;4dbb
	ld hl,0a4ffh		;4dbc
	add a,b			;4dbf
	ld h,e			;4dc0
	ld b,h			;4dc1
	ret m			;4dc2
	ld d,l			;4dc3
	inc d			;4dc4
	adc a,d			;4dc5
	and h			;4dc6
	ld d,c			;4dc7
	ld b,h			;4dc8
	adc a,c			;4dc9
	sbc a,(hl)		;4dca
	ld d,e			;4dcb
	ld sp,hl		;4dcc
	ld b,(hl)		;4dcd
	pop de			;4dce
	inc hl			;4dcf
	ld sp,07952h		;4dd0
	ld a,(hl)		;4dd3
	ld h,l			;4dd4
	ld h,h			;4dd5
	inc e			;4dd6
	sub d			;4dd7
	ld (hl),b		;4dd8
	inc hl			;4dd9
	add a,098h		;4dda
	dec l			;4ddc
	sbc a,e			;4ddd
	ld (0a40ch),a		;4dde
	jp nc,l4480h		;4de1
	ld h,(hl)		;4de4
	add a,c			;4de5
	or 013h			;4de6
	jp p,l4a7fh		;4de8
	dec bc			;4deb
	jp nc,l5627h		;4dec
	ld a,a			;4def
	dec b			;4df0
	ld a,a			;4df1
	xor d			;4df2
	inc bc			;4df3
	pop af			;4df4
	xor c			;4df5
	ld (hl),h		;4df6
	ld sp,09804h		;4df7
	nop			;4dfa
	jp p,01f48h		;4dfb
	or c			;4dfe
	inc hl			;4dff
	ld l,l			;4e00
	djnz l4e81h		;4e01
	inc b			;4e03
	ld (hl),h		;4e04
	sub d			;4e05
	jp p,0338fh		;4e06
	ret nz			;4e09
	ld e,d			;4e0a
	add hl,bc		;4e0b
	adc a,b			;4e0c
l4e0dh:
	inc l			;4e0d
	ld d,e			;4e0e
	ld d,d			;4e0f
	ld d,e			;4e10
	add a,h			;4e11
	ld c,c			;4e12
	jp pe,0ac51h		;4e13
	inc de			;4e16
	add hl,de		;4e17
	add a,07fh		;4e18
	inc (hl)		;4e1a
	ld a,a			;4e1b
	cpl			;4e1c
	ld (de),a		;4e1d
	sub b			;4e1e
	add a,a			;4e1f
	ld (073a0h),hl		;4e20
	dec bc			;4e23
	sub h			;4e24
	djnz l4ea6h		;4e25
	ld b,e			;4e27
	pop af			;4e28
	ld a,a			;4e29
	sbc a,(hl)		;4e2a
	add a,b			;4e2b
	ld a,(0ca69h)		;4e2c
	push hl			;4e2f
	ex (sp),hl		;4e30
	dec l			;4e31
	ld a,a			;4e32
	sub 0e0h		;4e33
	sub l			;4e35
	dec bc			;4e36
sub_4e37h:
	rst 38h			;4e37
	ret po			;4e38
	ld (de),a		;4e39
l4e3ah:
	push bc			;4e3a
	ld l,(hl)		;4e3b
	rrca			;4e3c
	ld a,l			;4e3d
	add a,012h		;4e3e
	ld de,0f3fah		;4e40
	ld b,h			;4e43
	add a,(hl)		;4e44
	djnz $+1		;4e45
	jr nc,$+56		;4e47
	adc a,e			;4e49
	add a,c			;4e4a
	dec a			;4e4b
	dec sp			;4e4c
	adc a,b			;4e4d
	inc h			;4e4e
	adc a,d			;4e4f
	ld h,c			;4e50
	inc (hl)		;4e51
	ld a,a			;4e52
	ld h,l			;4e53
	ld (0367ch),a		;4e54
	inc (hl)		;4e57
	ld a,a			;4e58
	adc a,d			;4e59
	or d			;4e5a
	call p,sub_4a69h	;4e5b
	ld h,e			;4e5e
	sub l			;4e5f
	call z,09966h		;4e60
	xor 0a0h		;4e63
	dec (hl)		;4e65
	ld d,l			;4e66
	and c			;4e67
	adc a,h			;4e68
	inc c			;4e69
	call c,092abh		;4e6a
	add a,b			;4e6d
	ld l,c			;4e6e
	sbc a,(hl)		;4e6f
	add a,b			;4e70
	ex de,hl		;4e71
	add a,c			;4e72
	ld h,a			;4e73
	jp m,07each		;4e74
	push hl			;4e77
	call po,0b050h		;4e78
	add a,d			;4e7b
	ld h,b			;4e7c
	jp c,0877eh		;4e7d
	ld l,(hl)		;4e80
l4e81h:
	jr nc,l4e0dh		;4e81
	defb 0fdh,0ffh,0c9h ;illegal sequence	;4e83
	call nz,0284bh		;4e86
	ld sp,hl		;4e89
	jr l4e3ah		;4e8a
	rst 8			;4e8c
	adc a,d			;4e8d
	ld h,l			;4e8e
	ld b,h			;4e8f
	ld l,d			;4e90
	ld (hl),h		;4e91
	and d			;4e92
	ld a,c			;4e93
	inc bc			;4e94
	ld h,e			;4e95
	inc (hl)		;4e96
	or 048h			;4e97
	add a,h			;4e99
	or (hl)			;4e9a
	ld a,a			;4e9b
	rst 38h			;4e9c
	ld l,e			;4e9d
	ld a,a			;4e9e
	out (033h),a		;4e9f
	adc a,(hl)		;4ea1
	or 08eh			;4ea2
	add a,e			;4ea4
	ld d,l			;4ea5
l4ea6h:
	ld d,e			;4ea6
	sub l			;4ea7
	cp c			;4ea8
	call po,08ca4h		;4ea9
	and (hl)		;4eac
	jp c,08802h		;4ead
	adc a,0abh		;4eb0
	ld h,b			;4eb2
	inc sp			;4eb3
	dec (hl)		;4eb4
	xor b			;4eb5
	inc e			;4eb6
	add a,c			;4eb7
	xor d			;4eb8
	sbc a,d			;4eb9
	add a,b			;4eba
	ld e,e			;4ebb
	adc a,(hl)		;4ebc
	cp 0b5h			;4ebd
	call m,0ff14h		;4ebf
	push hl			;4ec2
	ld h,l			;4ec3
	ld (bc),a		;4ec4
	ld c,d			;4ec5
	ld a,(hl)		;4ec6
	adc a,h			;4ec7
	or (hl)			;4ec8
	add a,b			;4ec9
	ld (hl),b		;4eca
	call m,09b8fh		;4ecb
	ret m			;4ece
	ld (hl),l		;4ecf
	inc de			;4ed0
	rst 38h			;4ed1
	sub a			;4ed2
	jp (hl)			;4ed3
	defb 0edh ;next byte illegal after ed	;4ed4
	add hl,hl		;4ed5
	ld l,l			;4ed6
	ld c,c			;4ed7
	rst 30h			;4ed8
	ld a,c			;4ed9
	ld d,d			;4eda
	call nc,sub_744dh	;4edb
	ld b,(hl)		;4ede
	ld a,a			;4edf
	dec de			;4ee0
	inc sp			;4ee1
	inc hl			;4ee2
	ld b,c			;4ee3
	ld a,a			;4ee4
	sub d			;4ee5
	dec (hl)		;4ee6
	add a,l			;4ee7
	call po,sub_62cbh	;4ee8
	ld b,e			;4eeb
	pop af			;4eec
	ld (hl),e		;4eed
	inc h			;4eee
	ld l,h			;4eef
	xor 09ch		;4ef0
	and a			;4ef2
	ld c,(hl)		;4ef3
	inc h			;4ef4
	xor h			;4ef5
	sub l			;4ef6
	inc (hl)		;4ef7
	ld b,d			;4ef8
	sbc a,a			;4ef9
	sub c			;4efa
	sub h			;4efb
	sub l			;4efc
	sub c			;4efd
	sbc a,e			;4efe
	rra			;4eff
	add a,e			;4f00
	sbc a,l			;4f01
	rst 0			;4f02
sub_4f03h:
	cp 073h			;4f03
	jp po,l5fach		;4f05
	inc bc			;4f08
	xor 0eah		;4f09
	ld a,(de)		;4f0b
	ld h,b			;4f0c
	add a,c			;4f0d
	ret pe			;4f0e
	cp e			;4f0f
	ld b,h			;4f10
	ld e,a			;4f11
	in a,(0f0h)		;4f12
	call p,08d7fh		;4f14
	jp c,l4345h		;4f17
	ex (sp),hl		;4f1a
	ex (sp),hl		;4f1b
	dec (hl)		;4f1c
	pop bc			;4f1d
	dec hl			;4f1e
	inc d			;4f1f
	sbc a,h			;4f20
	ret c			;4f21
	ld d,031h		;4f22
	ld hl,0fb16h		;4f24
	cp d			;4f27
	nop			;4f28
	dec d			;4f29
	ld l,h			;4f2a
	ld b,l			;4f2b
	ld a,a			;4f2c
	cp 070h			;4f2d
	ld b,(hl)		;4f2f
	xor h			;4f30
	ld a,(hl)		;4f31
	ld l,(hl)		;4f32
	sbc a,b			;4f33
l4f34h:
	ld c,l			;4f34
	ld a,a			;4f35
	adc a,c			;4f36
	sub b			;4f37
	ld h,l			;4f38
	sbc a,e			;4f39
	add hl,hl		;4f3a
	or d			;4f3b
	ld l,c			;4f3c
	rra			;4f3d
	call nz,sub_75deh	;4f3e
	ld a,a			;4f41
	call 07a7eh		;4f42
	cp h			;4f45
	nop			;4f46
	cp 0edh			;4f47
	rst 20h			;4f49
	add a,c			;4f4a
	sub c			;4f4b
	ld de,0830fh		;4f4c
	jp nz,0bab1h		;4f4f
	ld l,a			;4f52
	ld a,a			;4f53
	ld d,b			;4f54
	inc h			;4f55
	ld c,(hl)		;4f56
	ld b,h			;4f57
	ld (de),a		;4f58
	sbc a,h			;4f59
	xor a			;4f5a
	ld a,a			;4f5b
	ld d,c			;4f5c
	jp 0fe11h		;4f5d
	call nz,098efh		;4f60
	adc a,e			;4f63
	ld a,(l7f63h)		;4f64
	ld e,l			;4f67
	inc d			;4f68
	defb 0fdh,0edh,023h ;illegal sequence	;4f69
	ld (0537fh),a		;4f6c
	ld d,0a8h		;4f6f
	ld c,d			;4f71
	and d			;4f72
	ld h,a			;4f73
	ld (hl),h		;4f74
	sbc a,h			;4f75
	inc h			;4f76
	djnz l4f8fh		;4f77
	jp z,00b16h		;4f79
	add a,b			;4f7c
	ld c,(hl)		;4f7d
	rra			;4f7e
	scf			;4f7f
	add a,h			;4f80
	cp e			;4f81
	ret m			;4f82
	and 0feh		;4f83
	ld sp,0ea1fh		;4f85
	daa			;4f88
	pop hl			;4f89
	dec h			;4f8a
	inc b			;4f8b
	add a,a			;4f8c
	ret c			;4f8d
	ld d,b			;4f8e
l4f8fh:
	adc a,a			;4f8f
	ret pe			;4f90
	inc hl			;4f91
	djnz l4f96h		;4f92
	adc a,d			;4f94
	rst 10h			;4f95
l4f96h:
	sbc a,b			;4f96
	ld a,l			;4f97
	xor l			;4f98
	di			;4f99
	ld hl,(0aa4ch)		;4f9a
	dec sp			;4f9d
	defb 0edh ;next byte illegal after ed	;4f9e
	ld h,0cdh		;4f9f
	exx			;4fa1
	ld a,(hl)		;4fa2
	rst 28h			;4fa3
	jp 03221h		;4fa4
	call m,03431h		;4fa7
	adc a,e			;4faa
	ld d,h			;4fab
	jp c,09be7h		;4fac
	dec h			;4faf
	ld (hl),l		;4fb0
	add hl,sp		;4fb1
	inc l			;4fb2
	ld b,l			;4fb3
	add a,l			;4fb4
	xor c			;4fb5
	ld a,(hl)		;4fb6
	ld (de),a		;4fb7
	adc a,c			;4fb8
	exx			;4fb9
	dec c			;4fba
	inc hl			;4fbb
	add a,d			;4fbc
	inc de			;4fbd
	ld h,00dh		;4fbe
	ld l,e			;4fc0
	ret nz			;4fc1
	ld hl,(0dda4h)		;4fc2
	rra			;4fc5
	add a,h			;4fc6
	xor 0feh		;4fc7
	add hl,sp		;4fc9
	xor h			;4fca
	ld a,a			;4fcb
	ld a,e			;4fcc
	jr c,$+28		;4fcd
	inc d			;4fcf
	ld b,d			;4fd0
	rst 38h			;4fd1
	ld a,a			;4fd2
	or b			;4fd3
	ret p			;4fd4
	ld a,(hl)		;4fd5
	and h			;4fd6
l4fd7h:
	defb 0edh ;next byte illegal after ed	;4fd7
	defb 0ddh,0f2h,08bh ;illegal sequence	;4fd8
	rst 38h			;4fdb
	push bc			;4fdc
	ld a,l			;4fdd
	call nc,0f463h		;4fde
	adc a,e			;4fe1
	ld h,e			;4fe2
	ld d,(hl)		;4fe3
	ret po			;4fe4
	ld (032fch),a		;4fe5
	ld sp,08aa2h		;4fe8
	ld a,(bc)		;4feb
	dec hl			;4fec
	inc h			;4fed
	ld sp,08b5eh		;4fee
	jp z,l48e8h		;4ff1
	ret po			;4ff4
	or c			;4ff5
	inc bc			;4ff6
	ld d,(hl)		;4ff7
	jp (hl)			;4ff8
	adc a,e			;4ff9
	add a,(hl)		;4ffa
	dec h			;4ffb
	ret p			;4ffc
	sbc a,b			;4ffd
l4ffeh:
	add a,e			;4ffe
	sub a			;4fff
	rst 38h			;5000
	or e			;5001
	ld a,(hl)		;5002
	ld d,h			;5003
	and c			;5004
	ret c			;5005
	ld (hl),e		;5006
	inc (hl)		;5007
	rra			;5008
	add a,d			;5009
	ld l,l			;500a
	jp nc,l46ech		;500b
	cp (hl)			;500e
	ld l,l			;500f
	sbc a,0f8h		;5010
sub_5012h:
	inc d			;5012
	cp c			;5013
	ld h,a			;5014
	add a,a			;5015
	adc a,h			;5016
	inc h			;5017
	push hl			;5018
	add hl,hl		;5019
	dec c			;501a
	cp 0e9h			;501b
	ld (01cf6h),hl		;501d
	ld h,d			;5020
	ld a,a			;5021
	ld bc,l4fd7h		;5022
	ld a,a			;5025
	ld l,l			;5026
	pop hl			;5027
	ld c,d			;5028
	ei			;5029
	set 4,d			;502a
	jp z,l6762h		;502c
	ret z			;502f
	ld a,(hl)		;5030
	rst 8			;5031
	cp d			;5032
	adc a,e			;5033
	xor h			;5034
	call m,sub_640bh	;5035
	ld h,h			;5038
	ld b,l			;5039
	ld h,e			;503a
	inc de			;503b
	sub h			;503c
	ld d,d			;503d
l503eh:
	rra			;503e
	halt			;503f
	ld d,(hl)		;5040
	add a,c			;5041
	and 0a2h		;5042
	xor 073h		;5044
	add a,h			;5046
	ld l,h			;5047
	ld d,023h		;5048
	ex (sp),hl		;504a
	ld a,(hl)		;504b
	or l			;504c
	inc de			;504d
	rra			;504e
	ld l,e			;504f
	ret po			;5050
	cp d			;5051
	defb 0edh ;next byte illegal after ed	;5052
	push bc			;5053
	cp e			;5054
	ld b,c			;5055
	ld a,a			;5056
	ld h,b			;5057
	sbc a,014h		;5058
	ld e,b			;505a
	ld b,c			;505b
sub_505ch:
	and a			;505c
	jp p,l417ch		;505d
	call pe,07155h		;5060
	ld e,e			;5063
	ld a,a			;5064
	xor e			;5065
	call nz,0ed9ch		;5066
	defb 0edh ;next byte illegal after ed	;5069
	and (hl)		;506a
	add a,c			;506b
	xor (hl)		;506c
	sub a			;506d
	cp e			;506e
	inc (hl)		;506f
	inc de			;5070
	call p,0e4c4h		;5071
	push bc			;5074
l5075h:
	rst 10h			;5075
l5076h:
	jp (hl)			;5076
	add a,b			;5077
	ld d,(hl)		;5078
	ld a,l			;5079
	sbc a,h			;507a
	ld a,a			;507b
	ld c,(hl)		;507c
	xor 007h		;507d
	ld b,e			;507f
l5080h:
	ld b,d			;5080
	ld b,d			;5081
	ld (0f194h),a		;5082
	jp po,09157h		;5085
	inc h			;5088
	ret m			;5089
	call pe,08ef6h		;508a
	ld (0d200h),hl		;508d
	ld sp,0ba88h		;5090
	and h			;5093
	sbc a,h			;5094
	rra			;5095
	rst 30h			;5096
	push af			;5097
	and (hl)		;5098
	defb 0ddh,092h,0fdh ;illegal sequence	;5099
	ld b,h			;509c
	rst 38h			;509d
	ld b,c			;509e
	add a,h			;509f
	ld a,h			;50a0
	pop af			;50a1
	inc h			;50a2
	ld b,c			;50a3
	ld a,a			;50a4
	or (hl)			;50a5
	and l			;50a6
	call pe,0e6cbh		;50a7
	ld (hl),h		;50aa
	jp l4781h		;50ab
	djnz l512fh		;50ae
	or (hl)			;50b0
	jp p,l5fa7h		;50b1
	ld de,007d0h		;50b4
	inc hl			;50b7
	dec (hl)		;50b8
	ld h,l			;50b9
	ld h,h			;50ba
	ld a,a			;50bb
	add a,c			;50bc
	ld h,h			;50bd
	ld sp,0138eh		;50be
	ld b,h			;50c1
	call nc,023f5h		;50c2
	sub c			;50c5
	dec hl			;50c6
	call m,0f2abh		;50c7
	ld (hl),07fh		;50ca
	ld h,d			;50cc
	call m,083cah		;50cd
	sbc a,091h		;50d0
	ld sp,08534h		;50d2
	ld a,b			;50d5
	rra			;50d6
	jp p,0024dh		;50d7
	rrca			;50da
	or 06bh			;50db
	ld h,l			;50dd
	pop af			;50de
	ld b,h			;50df
	ld bc,0828ah		;50e0
	rst 20h			;50e3
	ld l,c			;50e4
	add a,h			;50e5
	inc bc			;50e6
	rst 38h			;50e7
	ld e,e			;50e8
	ld h,(hl)		;50e9
	or 0aeh			;50ea
	jp c,006d9h		;50ec
	and b			;50ef
	dec (hl)		;50f0
	add a,c			;50f1
	ld a,a			;50f2
	nop			;50f3
	sbc a,e			;50f4
	or h			;50f5
	ei			;50f6
	out (0f8h),a		;50f7
	call c,0f4e6h		;50f9
	ld a,a			;50fc
	jr z,l5123h		;50fd
	ld (bc),a		;50ff
	ld a,a			;5100
	or (hl)			;5101
	ld l,a			;5102
	sbc a,(hl)		;5103
	ld a,a			;5104
	ld (bc),a		;5105
	ld (hl),d		;5106
	jr z,$+4		;5107
	defb 0fdh,099h,001h ;illegal sequence	;5109
	or a			;510c
	ld a,a			;510d
	ld a,a			;510e
	scf			;510f
	ei			;5110
	ld h,b			;5111
	or 066h			;5112
	cp a			;5114
	sub d			;5115
	cp 07ch			;5116
	sub d			;5118
	defb 0fdh,083h,0d0h ;illegal sequence	;5119
	ei			;511c
	ld h,(hl)		;511d
	inc hl			;511e
	ld e,a			;511f
	ld d,(hl)		;5120
	defb 0fdh,0bch ;cp iyh	;5121
l5123h:
	and d			;5123
	ld h,c			;5124
	djnz l512bh		;5125
	cp a			;5127
	ld c,d			;5128
	adc a,d			;5129
	ld (hl),a		;512a
l512bh:
	ld a,(hl)		;512b
	ld (hl),b		;512c
	ld a,(hl)		;512d
	adc a,a			;512e
l512fh:
	jp p,0f418h		;512f
	and h			;5132
	ld l,e			;5133
	call p,sub_45f8h	;5134
	inc d			;5137
	ld c,a			;5138
	sbc a,b			;5139
	sub a			;513a
	add a,b			;513b
	ld a,0b6h		;513c
	jp pe,l7fc8h		;513e
	ret			;5141
	defb 0fdh,047h,077h ;illegal sequence	;5142
	ld a,a			;5145
	jp pe,0fa66h		;5146
	ret z			;5149
	add a,b			;514a
	or c			;514b
	jp nz,083ffh		;514c
	sub h			;514f
	ld c,a			;5150
	ei			;5151
	or e			;5152
	adc a,h			;5153
	add a,h			;5154
	adc a,(hl)		;5155
	rst 30h			;5156
	cp a			;5157
	ld a,l			;5158
	ld c,b			;5159
	ld (hl),b		;515a
	rlca			;515b
	defb 0fdh,07fh,084h ;illegal sequence	;515c
	rra			;515f
	add a,b			;5160
	and b			;5161
	pop af			;5162
	ld (08a1fh),a		;5163
	defb 0fdh,0fdh,0e7h ;illegal sequence	;5166
	or (hl)			;5169
	adc a,d			;516a
	inc l			;516b
	cp 0b0h			;516c
	rlca			;516e
	ld c,09dh		;516f
	call c,0c7cch		;5171
	ld d,c			;5174
	ld l,e			;5175
	ld a,(bc)		;5176
	add hl,bc		;5177
	ld e,d			;5178
	ret p			;5179
	inc sp			;517a
	ld a,(hl)		;517b
	ld a,a			;517c
	call p,065d9h		;517d
l5180h:
	jp m,0e154h		;5180
	call p,0f611h		;5183
	ld d,0b1h		;5186
	ei			;5188
	ld e,c			;5189
	ei			;518a
	nop			;518b
	jr l51e4h		;518c
	ld h,l			;518e
	adc a,h			;518f
	adc a,l			;5190
	ld b,c			;5191
	ld c,(hl)		;5192
	ld (bc),a		;5193
	sub a			;5194
	call z,0dccch		;5195
	call 0d5d9h		;5198
	inc l			;519b
	dec bc			;519c
	ld b,d			;519d
	sbc a,h			;519e
	ld a,(bc)		;519f
	call 090ddh		;51a0
	call m,0c43eh		;51a3
	ld (hl),a		;51a6
	jr nc,l5219h		;51a7
	defb 0fdh,07fh,076h ;illegal sequence	;51a9
	ld b,c			;51ac
	or 0e5h			;51ad
	add a,c			;51af
	ld b,h			;51b0
	ld b,h			;51b1
	inc d			;51b2
	add a,(hl)		;51b3
	add a,(hl)		;51b4
	cpl			;51b5
	ld b,c			;51b6
	cp 0a1h			;51b7
	ld l,e			;51b9
	cp e			;51ba
	add a,b			;51bb
	cp d			;51bc
	add hl,bc		;51bd
	adc a,e			;51be
	defb 0fdh,000h,006h ;illegal sequence	;51bf
	defb 0ddh,0ddh,097h ;illegal sequence	;51c2
	dec bc			;51c5
	ld l,l			;51c6
	add hl,bc		;51c7
	ld a,(bc)		;51c8
	ret m			;51c9
	ccf			;51ca
	ld h,h			;51cb
	and (hl)		;51cc
	ld d,h			;51cd
	ld bc,0a780h		;51ce
	ld a,a			;51d1
	ret pe			;51d2
	add a,078h		;51d3
	jp p,0f711h		;51d5
	ld h,b			;51d8
	or 0bfh			;51d9
	ld de,l4f34h		;51db
	pop af			;51de
	add a,l			;51df
	ld l,(hl)		;51e0
	ld b,h			;51e1
	rst 38h			;51e2
	ld h,b			;51e3
l51e4h:
	defb 0ddh,02fh,0c7h ;illegal sequence	;51e4
	rla			;51e7
	inc c			;51e8
	ld (hl),h		;51e9
	jr l5262h		;51ea
	ret nc			;51ec
	add hl,sp		;51ed
	nop			;51ee
	dec c			;51ef
	add hl,bc		;51f0
	sub h			;51f1
	add a,b			;51f2
	rst 8			;51f3
	inc c			;51f4
	ld a,(hl)		;51f5
l51f6h:
	sub e			;51f6
	nop			;51f7
	jp 0f47fh		;51f8
	ld c,c			;51fb
	ld b,06bh		;51fc
	halt			;51fe
	inc sp			;51ff
	jp m,0f632h		;5200
l5203h:
	ei			;5203
	add a,b			;5204
	ld hl,01423h		;5205
	ccf			;5208
	dec de			;5209
	rst 38h			;520a
	ld c,a			;520b
	rst 38h			;520c
	ret nc			;520d
	ld d,c			;520e
	adc a,a			;520f
	ld a,a			;5210
	push hl			;5211
	ld sp,hl		;5212
	scf			;5213
	ld a,(bc)		;5214
l5215h:
	ld h,h			;5215
	call 09207h		;5216
l5219h:
	and d			;5219
	rst 10h			;521a
	xor 07ch		;521b
	ld h,l			;521d
	call pe,0f7b9h		;521e
	rst 20h			;5221
	dec b			;5222
	inc de			;5223
	ld a,b			;5224
	add a,b			;5225
	jp m,l5f69h		;5226
	add a,b			;5229
	ld c,b			;522a
	push af			;522b
	adc a,l			;522c
	ld hl,0fc4fh		;522d
	sbc a,d			;5230
	ld (de),a		;5231
	cp (hl)			;5232
	ccf			;5233
	pop af			;5234
	add a,l			;5235
	add hl,bc		;5236
	ld d,(hl)		;5237
	ld l,a			;5238
	add a,a			;5239
	or c			;523a
	rla			;523b
	call c,0d97fh		;523c
	ret			;523f
	ld (hl),b		;5240
	adc a,d			;5241
	dec e			;5242
	and e			;5243
	rlca			;5244
	add a,h			;5245
	ld a,h			;5246
	ld (hl),l		;5247
	ld l,c			;5248
	rst 30h			;5249
	sub 004h		;524a
	rra			;524c
	adc a,b			;524d
	adc a,b			;524e
	add a,a			;524f
	ld a,a			;5250
	and (hl)		;5251
	rst 38h			;5252
	jp z,0f7fch		;5253
	ld h,021h		;5256
	or b			;5258
	jp pe,0ff43h		;5259
	or d			;525c
	add a,e			;525d
	xor b			;525e
	ld a,a			;525f
	rst 38h			;5260
	cp e			;5261
l5262h:
	ld c,e			;5262
	nop			;5263
	di			;5264
	ld (hl),c		;5265
	rst 30h			;5266
	jp 0087ch		;5267
	xor b			;526a
	add a,a			;526b
	jp po,l7981h		;526c
	or a			;526f
	ex de,hl		;5270
	inc d			;5271
	rlca			;5272
	ret m			;5273
	or l			;5274
	defb 0fdh,014h,07fh ;illegal sequence	;5275
	adc a,c			;5278
	ld c,a			;5279
	add a,a			;527a
	add a,b			;527b
	ex (sp),hl		;527c
	xor l			;527d
	rlca			;527e
	cp 0c8h			;527f
l5281h:
	or 0bbh			;5281
	inc e			;5283
	pop af			;5284
	inc d			;5285
	ld de,03698h		;5286
	pop af			;5289
	add a,c			;528a
	ld d,03fh		;528b
	inc de			;528d
	ld b,c			;528e
	ld a,a			;528f
	rst 38h			;5290
	sub a			;5291
	adc a,l			;5292
	dec h			;5293
	or b			;5294
	cp 0c7h			;5295
	ld (hl),a		;5297
	cp h			;5298
	ld a,c			;5299
	adc a,(hl)		;529a
	add a,a			;529b
	add hl,de		;529c
	ret nz			;529d
	jp (hl)			;529e
	defb 0ddh,0eeh,0b4h ;illegal sequence	;529f
	rlca			;52a2
	call 00a7ah		;52a3
	add a,c			;52a6
	ld a,(hl)		;52a7
	adc a,(hl)		;52a8
	ret pe			;52a9
	adc a,(hl)		;52aa
	add a,a			;52ab
	ld (hl),b		;52ac
	xor h			;52ad
	adc a,a			;52ae
	adc a,a			;52af
	ld a,a			;52b0
	pop hl			;52b1
	defb 0fdh,09ah,0b5h ;illegal sequence	;52b2
	ld (de),a		;52b5
	ld d,c			;52b6
	ld b,e			;52b7
	ld b,e			;52b8
	ld sp,hl		;52b9
	add a,l			;52ba
	inc (hl)		;52bb
	cpl			;52bc
	add a,e			;52bd
	xor 0ffh		;52be
	and 083h		;52c0
	ld c,b			;52c2
	ld d,b			;52c3
	rst 38h			;52c4
	jp p,0f796h		;52c5
	ld (09300h),a		;52c8
	ld e,c			;52cb
	and 07fh		;52cc
	call pe,0efcbh		;52ce
	ld d,(hl)		;52d1
	ld (hl),b		;52d2
	push af			;52d3
	ld hl,(0ff87h)		;52d4
	sbc a,c			;52d7
	adc a,c			;52d8
	ld a,a			;52d9
	jp (hl)			;52da
	sbc a,(hl)		;52db
	add a,b			;52dc
	cp a			;52dd
	ld a,a			;52de
	ld (bc),a		;52df
	and h			;52e0
	cp c			;52e1
	dec l			;52e2
	rlca			;52e3
	add a,b			;52e4
	cp 0c4h			;52e5
	rst 38h			;52e7
	ld b,h			;52e8
	inc c			;52e9
	push af			;52ea
	ld l,e			;52eb
	ld e,a			;52ec
	inc (hl)		;52ed
	ei			;52ee
	sbc a,(hl)		;52ef
	cp e			;52f0
	sbc a,c			;52f1
	adc a,b			;52f2
	ld hl,09585h		;52f3
	rst 38h			;52f6
	cp 061h			;52f7
	add a,d			;52f9
	rla			;52fa
	ld c,e			;52fb
	di			;52fc
l52fdh:
	ld a,h			;52fd
l52feh:
	ld a,b			;52fe
	ld (hl),l		;52ff
	ld b,087h		;5300
	inc l			;5302
	ld a,c			;5303
	ld a,a			;5304
	ld h,l			;5305
	inc b			;5306
	jp m,01979h		;5307
	adc a,(hl)		;530a
	sbc a,c			;530b
	ld a,a			;530c
	add a,c			;530d
	ld l,a			;530e
	ld a,h			;530f
	xor l			;5310
	pop af			;5311
	dec sp			;5312
	or d			;5313
	add a,(hl)		;5314
	in a,(066h)		;5315
	ld a,a			;5317
	ld h,0f2h		;5318
	nop			;531a
	ld d,c			;531b
	inc h			;531c
	ld sp,0b1f2h		;531d
	ld (de),a		;5320
	di			;5321
	ld de,l4461h		;5322
	adc a,d			;5325
	add a,b			;5326
	or c			;5327
	ld h,(hl)		;5328
	ld d,b			;5329
	jp p,0d78ch		;532a
	add a,b			;532d
	add a,a			;532e
	ld a,a			;532f
	ld a,(bc)		;5330
	defb 0ddh,07fh,080h ;illegal sequence	;5331
	ld hl,0999dh		;5334
	sbc a,h			;5337
	inc (hl)		;5338
	cp (hl)			;5339
	ld (hl),e		;533a
	ld a,(bc)		;533b
	adc a,b			;533c
	push af			;533d
	ld e,l			;533e
	nop			;533f
	adc a,h			;5340
	rst 38h			;5341
	sbc a,c			;5342
	ld a,a			;5343
	ret pe			;5344
	ld b,07fh		;5345
	rst 30h			;5347
	ld d,e			;5348
	xor h			;5349
	ld d,c			;534a
	cp (hl)			;534b
	cp h			;534c
	add hl,hl		;534d
	ret po			;534e
	ld a,a			;534f
	pop af			;5350
	ld de,0a8f5h		;5351
	add a,c			;5354
	ld (02ef3h),a		;5355
	ld (08822h),a		;5358
	sbc a,e			;535b
	add a,e			;535c
	add a,b			;535d
	ld l,b			;535e
	cp 0a3h			;535f
	xor b			;5361
	adc a,d			;5362
	cp 071h			;5363
	call 0870ch		;5365
	add hl,de		;5368
	sbc a,l			;5369
	add a,a			;536a
	or (hl)			;536b
	sub h			;536c
	adc a,e			;536d
	call 0f4eeh		;536e
	xor h			;5371
	jp p,l7ff0h		;5372
	inc hl			;5375
	adc a,b			;5376
	xor 0feh		;5377
	ld a,a			;5379
	ld a,a			;537a
	dec h			;537b
	ld a,b			;537c
	ld (l7031h),a		;537d
	cp 072h			;5380
	call m,0f451h		;5382
	ld sp,iy		;5385
	ret nc			;5387
	rst 38h			;5388
	inc sp			;5389
	ccf			;538a
	jp z,0fa7dh		;538b
	sub e			;538e
	ld h,(hl)		;538f
	call m,02971h		;5390
	add a,b			;5393
	ld a,012h		;5394
	ret p			;5396
	xor c			;5397
	ret			;5398
	rst 30h			;5399
	ld l,b			;539a
	inc c			;539b
	call c,043f0h		;539c
	ld h,e			;539f
	ld a,b			;53a0
	ld a,c			;53a1
	add a,b			;53a2
	ld a,h			;53a3
	sub (hl)		;53a4
	adc a,(hl)		;53a5
	ld a,a			;53a6
	add a,080h		;53a7
	and l			;53a9
	add a,a			;53aa
	sbc a,(ix-05fh)		;53ab
	jp m,000fah		;53ae
	sub d			;53b1
	ld a,h			;53b2
	add a,b			;53b3
	cp h			;53b4
	adc a,b			;53b5
	rlca			;53b6
	add a,a			;53b7
	or b			;53b8
	cp 080h			;53b9
	ld a,a			;53bb
	ld hl,02214h		;53bc
	ld b,h			;53bf
	inc (hl)		;53c0
	ccf			;53c1
	sbc a,b			;53c2
	rlca			;53c3
	ld sp,093fbh		;53c4
	defb 0fdh,092h,0feh ;illegal sequence	;53c7
	cp b			;53ca
	rst 38h			;53cb
	push hl			;53cc
	ld a,b			;53cd
	pop bc			;53ce
	call 0c5c7h		;53cf
	rra			;53d2
	dec bc			;53d3
	ld a,b			;53d4
	ld a,e			;53d5
	ld c,d			;53d6
	xor 0e8h		;53d7
	ld a,(hl)		;53d9
	rst 30h			;53da
	sub a			;53db
	ld c,027h		;53dc
	rrca			;53de
	ld (hl),a		;53df
	ld a,a			;53e0
	cp l			;53e1
	and b			;53e2
	or c			;53e3
	ld a,(bc)		;53e4
	jp po,0f377h		;53e5
	nop			;53e8
	cp l			;53e9
	jp nz,08794h		;53ea
	inc h			;53ed
	ld d,(hl)		;53ee
	cp a			;53ef
	push af			;53f0
	ld b,b			;53f1
	ld b,c			;53f2
	ld bc,03113h		;53f3
	ld de,03f23h		;53f6
	ld l,e			;53f9
	push af			;53fa
	ld a,(hl)		;53fb
	ld d,l			;53fc
	ld a,a			;53fd
	pop hl			;53fe
	jp (hl)			;53ff
	add a,a			;5400
	ld (hl),b		;5401
	call nz,0dc4eh		;5402
	ld a,e			;5405
	ld h,b			;5406
	ld a,l			;5407
	xor 099h		;5408
	sbc a,b			;540a
	or h			;540b
	rst 30h			;540c
	call 0137fh		;540d
	rst 18h			;5410
	add a,e			;5411
	add a,d			;5412
	ex (sp),hl		;5413
	ld a,b			;5414
	or 0c2h			;5415
	sbc a,d			;5417
	ld (hl),a		;5418
	or c			;5419
	or c			;541a
	add a,b			;541b
	ret pe			;541c
	add a,a			;541d
	ld l,d			;541e
	add a,a			;541f
	jp 00594h		;5420
	ld l,e			;5423
	add a,b			;5424
	add a,c			;5425
	ld de,0f314h		;5426
	inc (hl)		;5429
	cp 081h			;542a
	cpl			;542c
	rst 38h			;542d
	defb 0fdh,0c9h,000h ;illegal sequence	;542e
	ld a,(l7f00h)		;5431
	dec sp			;5434
	call 0f6cch		;5435
	ld c,b			;5438
	call 08ac0h		;5439
	ret c			;543c
	cp 0f7h			;543d
	call po,0e97dh		;543f
	ret			;5442
	call c,0f97ch		;5443
	rst 20h			;5446
	add a,l			;5447
	ld a,(003c8h)		;5448
	xor e			;544b
	pop af			;544c
	ret c			;544d
	ld e,a			;544e
	sbc a,b			;544f
	adc a,0a2h		;5450
	jp pe,036efh		;5452
	add a,b			;5455
	dec a			;5456
	ld (0bc12h),a		;5457
	jp (hl)			;545a
	add a,b			;545b
	add hl,bc		;545c
	cp e			;545d
	rst 38h			;545e
	add a,d			;545f
	call z,0ce80h		;5460
	rst 38h			;5463
	adc a,e			;5464
	pop af			;5465
	ld e,a			;5466
	ld a,(bc)		;5467
	ld a,a			;5468
	or a			;5469
	add hl,bc		;546a
	cp 0a7h			;546b
	defb 0fdh,042h,0ddh ;illegal sequence	;546d
	exx			;5470
	sub a			;5471
	ld b,d			;5472
	defb 0ddh,08ah,0c6h ;illegal sequence	;5473
	ld de,0aa0fh		;5476
	inc h			;5479
	rst 8			;547a
	or c			;547b
	cp 01dh			;547c
	xor h			;547e
	adc a,(hl)		;547f
	adc a,l			;5480
	ld h,09eh		;5481
	sbc a,c			;5483
	add a,b			;5484
	pop bc			;5485
	ld a,a			;5486
	xor 080h		;5487
	ex af,af'		;5489
	ld a,l			;548a
	jp nz,0d770h		;548b
	ld d,a			;548e
	ld a,a			;548f
	rst 8			;5490
	inc de			;5491
	cpl			;5492
	di			;5493
	cp e			;5494
	or 0dfh			;5495
	ld a,(hl)		;5497
	ld e,h			;5498
	dec hl			;5499
	ret nz			;549a
	ld a,a			;549b
	dec b			;549c
	ld h,(hl)		;549d
	cp e			;549e
	or l			;549f
	ld a,d			;54a0
	ld e,a			;54a1
	add a,c			;54a2
	dec h			;54a3
	cpl			;54a4
	add a,(hl)		;54a5
	dec d			;54a6
	pop af			;54a7
	add a,c			;54a8
	dec h			;54a9
	dec d			;54aa
	cp 09bh			;54ab
	add a,c			;54ad
	ld e,c			;54ae
	ld a,h			;54af
	sbc a,c			;54b0
	ld a,(hl)		;54b1
	ld d,a			;54b2
	adc a,d			;54b3
l54b4h:
	inc l			;54b4
	ret nz			;54b5
	ld a,(hl)		;54b6
	jr z,l54b4h		;54b7
	cp e			;54b9
	nop			;54ba
	add a,b			;54bb
	call 0a664h		;54bc
	rst 30h			;54bf
	add a,b			;54c0
	jp (hl)			;54c1
	jp (hl)			;54c2
	sbc a,c			;54c3
	call z,0e89eh		;54c4
	call z,01cf9h		;54c7
	sbc a,h			;54ca
	sub b			;54cb
	ld a,b			;54cc
	ld l,e			;54cd
	ld d,e			;54ce
	add a,b			;54cf
	cp h			;54d0
	push hl			;54d1
	call pe,sub_73f4h	;54d2
	dec b			;54d5
	sbc a,c			;54d6
	or d			;54d7
	push bc			;54d8
	add a,d			;54d9
	dec sp			;54da
l54dbh:
	jp pe,08d82h		;54db
	ld h,(hl)		;54de
	ld l,e			;54df
	or l			;54e0
	add a,c			;54e1
	add a,b			;54e2
	ld hl,l5fffh		;54e3
	pop af			;54e6
	ld b,c			;54e7
	ld (de),a		;54e8
	ld c,h			;54e9
	cpl			;54ea
	adc a,h			;54eb
	jr nz,l54dbh		;54ec
	inc a			;54ee
	call z,08b83h		;54ef
	call m,08b77h		;54f2
	ld sp,0967fh		;54f5
	sbc a,d			;54f8
	ld h,c			;54f9
	nop			;54fa
	cp a			;54fb
	ret p			;54fc
	ld c,l			;54fd
	or (hl)			;54fe
	call p,0f1d6h		;54ff
	inc h			;5502
	add a,b			;5503
	ld c,l			;5504
	sbc a,c			;5505
	push af			;5506
	ex af,af'		;5507
	sbc a,b			;5508
	sbc a,h			;5509
	ld h,0e8h		;550a
	add a,b			;550c
	and (hl)		;550d
	defb 0ddh,0ech,069h ;illegal sequence	;550e
	xor 076h		;5511
	and l			;5513
	and 0e2h		;5514
	ex af,af'		;5516
	cp d			;5517
	ld e,b			;5518
	or 000h			;5519
	pop de			;551b
	dec h			;551c
	ld d,l			;551d
	ld d,(hl)		;551e
	ld l,e			;551f
	add a,b			;5520
	sub d			;5521
	ld de,089fch		;5522
	add a,l			;5525
	add hl,bc		;5526
	ld (l7f1fh),a		;5527
	djnz $+63		;552a
	ex (sp),hl		;552c
	rst 30h			;552d
	ld b,l			;552e
	ret m			;552f
	ld (l64ddh),a		;5530
	sbc a,c			;5533
	inc b			;5534
	cp 06dh			;5535
	nop			;5537
	ld a,a			;5538
	jp pe,0b0c9h		;5539
	ld a,(hl)		;553c
	ld a,a			;553d
	ret pe			;553e
	call pe,0a08ah		;553f
	add a,(hl)		;5542
	add a,a			;5543
	ld (hl),b		;5544
	ld l,(hl)		;5545
	ld (hl),e		;5546
	add a,b			;5547
	rst 20h			;5548
	sub (hl)		;5549
	ld sp,(06473h)		;554a
	ld b,c			;554e
	rst 38h			;554f
	ld (hl),l		;5550
	xor e			;5551
	inc e			;5552
	and d			;5553
	ld d,l			;5554
	jp m,04228h		;5555
	rra			;5558
	ei			;5559
	inc de			;555a
	ld d,c			;555b
	rra			;555c
	ld b,h			;555d
	pop hl			;555e
	cpl			;555f
	ret p			;5560
	or e			;5561
	rst 10h			;5562
	ld c,0c1h		;5563
	rrca			;5565
	ld a,(hl)		;5566
	call nz,09c80h		;5567
	ld h,e			;556a
	ld d,a			;556b
	defb 0fdh,052h,0fdh ;illegal sequence	;556c
	sub (hl)		;556f
	ld a,a			;5570
	or 01bh			;5571
	ld sp,hl		;5573
	ld b,(hl)		;5574
	rst 38h			;5575
	ld a,e			;5576
	ei			;5577
	dec bc			;5578
	rlca			;5579
	add a,b			;557a
	halt			;557b
	and l			;557c
	pop hl			;557d
	and l			;557e
	sbc a,h			;557f
l5580h:
	ret p			;5580
	add hl,de		;5581
	pop af			;5582
	dec b			;5583
	ld d,a			;5584
	ld a,b			;5585
	sub c			;5586
	dec a			;5587
	jr z,$+38		;5588
	ld bc,0bffeh		;558a
	ld a,a			;558d
	defb 0fdh,07dh ;ld a,iyl	;558e
	ld a,(hl)		;5590
	adc a,a			;5591
	dec bc			;5592
	or b			;5593
	ld a,a			;5594
	and (hl)		;5595
	cp 0b2h			;5596
	ld a,e			;5598
	ld d,h			;5599
	sbc a,c			;559a
	ld b,00dh		;559b
	xor c			;559d
	call 0fac8h		;559e
	ld h,d			;55a1
	lddr			;55a2
	sbc a,a			;55a4
	rst 38h			;55a5
	dec hl			;55a6
	xor b			;55a7
l55a8h:
	and 09ch		;55a8
	sub e			;55aa
	ld a,a			;55ab
	defb 0ddh,087h,0a9h ;illegal sequence	;55ac
	sbc a,h			;55af
	rst 0			;55b0
	xor e			;55b1
	adc a,c			;55b2
	ld (de),a		;55b3
	rra			;55b4
	ret m			;55b5
	ld e,b			;55b6
	rst 38h			;55b7
	sbc a,a			;55b8
	call m,0002eh		;55b9
	sbc a,c			;55bc
	ex de,hl		;55bd
	ld a,b			;55be
	ex af,af'		;55bf
	jp 07f50h		;55c0
	bit 2,e			;55c3
	jr z,$-10		;55c5
	and d			;55c7
	ld a,l			;55c8
	jp m,0e92ch		;55c9
	ret pe			;55cc
	ld a,a			;55cd
	add a,d			;55ce
	dec e			;55cf
	ld a,b			;55d0
	ret m			;55d1
	inc e			;55d2
	sbc a,h			;55d3
	sbc a,b			;55d4
	ld d,a			;55d5
	ld c,e			;55d6
	add a,c			;55d7
	rla			;55d8
	xor b			;55d9
	ex de,hl		;55da
	sbc a,h			;55db
	inc (hl)		;55dc
	sbc a,h			;55dd
	sub e			;55de
	and d			;55df
	ld d,e			;55e0
	sbc a,e			;55e1
	add a,h			;55e2
	ld sp,hl		;55e3
	ld (hl),e		;55e4
	ld a,(hl)		;55e5
	ld e,c			;55e6
	nop			;55e7
	xor (hl)		;55e8
	ld c,a			;55e9
	add a,c			;55ea
	ld de,0d2feh		;55eb
	ld de,0a885h		;55ee
	ld a,a			;55f1
	ld d,c			;55f2
	rst 38h			;55f3
	adc a,a			;55f4
	jp m,0034ch		;55f5
	ld (de),a		;55f8
	adc a,d			;55f9
	sbc a,e			;55fa
	ret p			;55fb
	add a,d			;55fc
	rlc l			;55fd
	ld a,a			;55ff
	adc a,0f8h		;5600
	ld h,d			;5602
	xor 0ceh		;5603
	call m,08172h		;5605
	jr nc,l55a8h		;5608
l560ah:
	adc a,(hl)		;560a
	sbc a,l			;560b
	rst 38h			;560c
	ld d,e			;560d
	sbc a,c			;560e
	ld h,e			;560f
	ret nc			;5610
	rst 0			;5611
	ld a,e			;5612
	inc d			;5613
	defb 0fdh,0edh,09ch ;illegal sequence	;5614
	ld c,h			;5617
	out (0feh),a		;5618
	scf			;561a
	rst 38h			;561b
	in a,(078h)		;561c
	or l			;561e
	sub e			;561f
	jr nc,l5633h		;5620
	adc a,b			;5622
	adc a,a			;5623
	cp l			;5624
	ld a,a			;5625
	ld d,d			;5626
l5627h:
	call p,0fed9h		;5627
	jp m,08a1eh		;562a
	ld c,096h		;562d
	ld (bc),a		;562f
	ex af,af'		;5630
	xor (hl)		;5631
sub_5632h:
	cp (hl)			;5632
l5633h:
	sbc a,e			;5633
	ld a,l			;5634
l5635h:
	ld d,d			;5635
	cp (hl)			;5636
	and c			;5637
	set 7,a			;5638
	sub e			;563a
	ld a,b			;563b
	ld a,e			;563c
	dec l			;563d
	ld d,d			;563e
	push af			;563f
	ld b,h			;5640
	jp (hl)			;5641
	add a,c			;5642
	ld e,d			;5643
	ld b,0ech		;5644
	dec h			;5646
	adc a,0e8h		;5647
	sub d			;5649
	ld e,d			;564a
	add a,a			;564b
	ei			;564c
	call pe,09e77h		;564d
	xor c			;5650
	xor c			;5651
	sbc a,h			;5652
	ld h,l			;5653
	or 096h			;5654
	ld a,b			;5656
	ld a,a			;5657
	add a,0fah		;5658
	ld h,(hl)		;565a
	dec hl			;565b
	xor e			;565c
	push hl			;565d
	inc bc			;565e
	ld a,a			;565f
	ex (sp),hl		;5660
	nop			;5661
	rst 0			;5662
	ld a,(hl)		;5663
	xor b			;5664
	nop			;5665
	xor e			;5666
	push hl			;5667
	add hl,bc		;5668
	rst 38h			;5669
	ld e,(hl)		;566a
	ld l,e			;566b
	cp e			;566c
	rst 38h			;566d
	ld b,d			;566e
	cp c			;566f
	xor b			;5670
	ld a,(hl)		;5671
	ld b,a			;5672
	ld d,l			;5673
	rst 38h			;5674
	sub l			;5675
	ld d,c			;5676
	rst 28h			;5677
l5678h:
	ld d,07ch		;5678
	ld b,(hl)		;567a
	call m,083d2h		;567b
	ld c,b			;567e
sub_567fh:
	add hl,bc		;567f
	adc a,(hl)		;5680
	ld a,a			;5681
	ld a,b			;5682
	sbc a,b			;5683
	or 083h			;5684
l5686h:
	dec sp			;5686
	defb 0fdh,0d6h,0ebh ;illegal sequence	;5687
	ld a,(028a9h)		;568a
	sbc a,h			;568d
	adc a,a			;568e
	or e			;568f
	ld (hl),c		;5690
	rst 8			;5691
	ld a,h			;5692
	or (hl)			;5693
	ld h,c			;5694
	add a,a			;5695
	xor (hl)		;5696
l5697h:
	rst 28h			;5697
	ld l,e			;5698
	ld a,(bc)		;5699
	sub a			;569a
	inc c			;569b
	adc a,d			;569c
	add a,b			;569d
	xor 060h		;569e
	dec bc			;56a0
	cp c			;56a1
	ex de,hl		;56a2
	jp pe,08523h		;56a3
	ld d,l			;56a6
	add a,b			;56a7
	dec l			;56a8
	rst 38h			;56a9
	cp e			;56aa
	dec a			;56ab
	push af			;56ac
	jr nc,l5697h		;56ad
	ld a,(hl)		;56af
	xor h			;56b0
	ld a,c			;56b1
	ld (hl),e		;56b2
	rst 38h			;56b3
	ld c,h			;56b4
	rst 38h			;56b5
	jp nz,0e878h		;56b6
	adc a,a			;56b9
	sub e			;56ba
	add a,a			;56bb
	ld a,b			;56bc
	rst 10h			;56bd
	call m,0ec59h		;56be
	push hl			;56c1
	xor 0a5h		;56c2
	dec d			;56c4
	jr z,l5678h		;56c5
	ld l,l			;56c7
	ex de,hl		;56c8
	cp c			;56c9
	ld l,a			;56ca
	adc a,c			;56cb
	or d			;56cc
	ld hl,(08014h)		;56cd
	ld h,d			;56d0
	rst 38h			;56d1
	cp e			;56d2
	sub a			;56d3
	call m,0ff69h		;56d4
	ld h,(hl)		;56d7
	rst 38h			;56d8
	exx			;56d9
	dec de			;56da
	cp e			;56db
	or (hl)			;56dc
	push hl			;56dd
	sub h			;56de
	cp b			;56df
	rst 38h			;56e0
	jp c,0ee78h		;56e1
	or h			;56e4
	add a,a			;56e5
	ld a,(hl)		;56e6
	inc d			;56e7
	ret pe			;56e8
	adc a,c			;56e9
	sbc a,b			;56ea
	add a,(hl)		;56eb
	dec sp			;56ec
	ret			;56ed
	cp 039h			;56ee
	nop			;56f0
	sub h			;56f1
	add a,a			;56f2
sub_56f3h:
	xor (hl)		;56f3
l56f4h:
	out (0a3h),a		;56f4
	defb 0fdh,0c2h,0edh ;illegal sequence	;56f6
	ld a,b			;56f9
	and l			;56fa
	sbc a,h			;56fb
	cp h			;56fc
	sbc a,e			;56fd
	jp pe,l727fh		;56fe
	add a,0b7h		;5701
	ld (l67b1h),a		;5703
	sbc a,c			;5706
	ld bc,0d3c1h		;5707
	or b			;570a
	ret po			;570b
	rla			;570c
	ld de,0aa7ah		;570d
	and a			;5710
	add a,c			;5711
	ld h,e			;5712
	ld sp,hl		;5713
	adc a,l			;5714
	pop af			;5715
	cpl			;5716
	adc a,b			;5717
	ld (hl),00eh		;5718
	ld c,(hl)		;571a
	ld l,(hl)		;571b
	rst 38h			;571c
	or l			;571d
	ld d,b			;571e
	rst 38h			;571f
	pop bc			;5720
	ex af,af'		;5721
	ret nc			;5722
	dec sp			;5723
	ei			;5724
	xor b			;5725
	sbc a,c			;5726
	xor b			;5727
	push af			;5728
	adc a,09eh		;5729
	xor 07eh		;572b
	push hl			;572d
	ld d,d			;572e
	call po,04679h		;572f
	ld (hl),a		;5732
	ret m			;5733
	rst 30h			;5734
	rst 28h			;5735
	ld a,b			;5736
	nop			;5737
	call pe,0c945h		;5738
	sbc a,b			;573b
	sbc a,c			;573c
	dec hl			;573d
	xor (hl)		;573e
	ld a,c			;573f
	ld hl,(0b3dfh)		;5740
	ld h,l			;5743
	cp c			;5744
	ret z			;5745
	adc a,c			;5746
	adc a,h			;5747
	call z,sub_477fh	;5748
	add a,b			;574b
	add iy,iy		;574c
	ld a,d			;574e
	rst 0			;574f
	ld (bc),a		;5750
	sbc a,d			;5751
	ld (hl),a		;5752
	ld de,08271h		;5753
	ld (08818h),hl		;5756
	ei			;5759
	cp e			;575a
	ld a,l			;575b
	ld d,l			;575c
	adc a,c			;575d
	adc a,c			;575e
	call z,0ffdbh		;575f
	ld e,h			;5762
	rst 38h			;5763
	ret po			;5764
l5765h:
	ex af,af'		;5765
	xor l			;5766
	ret nc			;5767
	and l			;5768
	ld c,h			;5769
	jp m,0fe31h		;576a
	ld a,(0ad51h)		;576d
	sub d			;5770
	adc a,l			;5771
	push hl			;5772
	adc a,0fch		;5773
	inc hl			;5775
	call nc,sub_7794h	;5776
	add a,b			;5779
	jp p,l5989h		;577a
	adc a,02ah		;577d
	sbc a,d			;577f
	sbc a,h			;5780
	ret pe			;5781
	ld c,e			;5782
	ld a,a			;5783
	ret pe			;5784
	or a			;5785
	ld c,a			;5786
	or h			;5787
	call po,09ceeh		;5788
	add hl,hl		;578b
	sbc a,h			;578c
	sbc a,c			;578d
	or c			;578e
l578fh:
	dec hl			;578f
	or b			;5790
	ret nz			;5791
	rla			;5792
	xor c			;5793
	call nz,0a74ch		;5794
	add a,d			;5797
	adc a,h			;5798
	rra			;5799
	ld h,c			;579a
	adc a,(hl)		;579b
	add a,b			;579c
	inc e			;579d
	ret po			;579e
	sub h			;579f
	add a,d			;57a0
	rst 38h			;57a1
	or 065h			;57a2
	add a,h			;57a4
	halt			;57a5
	rst 8			;57a6
	sbc a,h			;57a7
	or 002h			;57a8
	nop			;57aa
	ld c,d			;57ab
	jp (hl)			;57ac
	ld a,a			;57ad
	sbc a,b			;57ae
	rst 38h			;57af
	ld e,c			;57b0
	jp m,088a8h		;57b1
	sbc a,a			;57b4
	sub 01bh		;57b5
	ld e,d			;57b7
	and 09ah		;57b8
	defb 0edh ;next byte illegal after ed	;57ba
	ret pe			;57bb
	cp (hl)			;57bc
	add a,a			;57bd
	scf			;57be
	defb 0edh ;next byte illegal after ed	;57bf
	adc a,d			;57c0
l57c1h:
	sbc a,h			;57c1
	ld e,l			;57c2
	ld d,04eh		;57c3
	ld a,b			;57c5
	and c			;57c6
	ld c,l			;57c7
	or d			;57c8
	and h			;57c9
	dec d			;57ca
	ld a,e			;57cb
	add hl,sp		;57cc
	cp h			;57cd
	or a			;57ce
	adc a,(hl)		;57cf
	adc a,c			;57d0
	ld (hl),039h		;57d1
	ld a,a			;57d3
	adc a,h			;57d4
	cp 083h			;57d5
	nop			;57d7
	ld a,c			;57d8
	sbc a,d			;57d9
	ld de,000ffh		;57da
	ld (hl),e		;57dd
	push af			;57de
	sub d			;57df
	ld d,l			;57e0
	ld l,a			;57e1
	ex de,hl		;57e2
sub_57e3h:
	ld l,c			;57e3
	add a,b			;57e4
	ld b,a			;57e5
	ld b,0c7h		;57e6
	add hl,sp		;57e8
	jp c,l6bc1h		;57e9
l57ech:
	ld c,e			;57ec
	nop			;57ed
	halt			;57ee
	ld l,b			;57ef
	rst 10h			;57f0
	jr nc,l578fh		;57f1
	ret			;57f3
	rst 38h			;57f4
	sub (hl)		;57f5
	out (0a2h),a		;57f6
	ret po			;57f8
	res 0,e			;57f9
	push hl			;57fb
	ld a,d			;57fc
	adc a,h			;57fd
	cp 08eh			;57fe
	call nc,0327bh		;5800
	and 0f3h		;5803
	sub 088h		;5805
	xor l			;5807
	sub l			;5808
	and h			;5809
	sbc a,c			;580a
	xor c			;580b
	ld (hl),c		;580c
	ld a,a			;580d
	adc a,h			;580e
	jr z,l588fh		;580f
	ld e,(hl)		;5811
	adc a,b			;5812
	adc a,d			;5813
	dec h			;5814
	add a,b			;5815
	cp 084h			;5816
	ld (hl),a		;5818
	rst 38h			;5819
	ld b,c			;581a
	xor c			;581b
	sbc a,d			;581c
	xor c			;581d
	and c			;581e
	ld a,(hl)		;581f
	rst 0			;5820
	add a,b			;5821
	jr z,l5832h		;5822
	ld h,b			;5824
	nop			;5825
	ld c,(hl)		;5826
	ld d,(hl)		;5827
	defb 0edh ;next byte illegal after ed	;5828
	ld (l7ff6h),hl		;5829
	cp e			;582c
	ret po			;582d
	ret z			;582e
	in a,(0e6h)		;582f
	ld b,h			;5831
l5832h:
	or h			;5832
	push de			;5833
	ld (hl),b		;5834
	ld b,(hl)		;5835
	ld h,l			;5836
	ld (hl),b		;5837
	ld sp,hl		;5838
	and h			;5839
l583ah:
	call nz,0c695h		;583a
	ld b,a			;583d
	rst 38h			;583e
	ld d,(hl)		;583f
	push de			;5840
	sub d			;5841
	cp 0e0h			;5842
	ld (hl),a		;5844
	and a			;5845
	rst 38h			;5846
	add hl,bc		;5847
	add a,l			;5848
	ret p			;5849
	adc a,h			;584a
	adc a,l			;584b
	sbc a,07ch		;584c
	or b			;584e
	dec a			;584f
	xor a			;5850
l5851h:
	ld d,a			;5851
	jp (hl)			;5852
	or h			;5853
	or a			;5854
	add a,d			;5855
	or c			;5856
	call 0fe4fh		;5857
	inc h			;585a
	xor c			;585b
	ld (hl),a		;585c
	add a,b			;585d
	sub d			;585e
	call m,07a1bh		;585f
	ld (hl),c		;5862
	ld a,l			;5863
	add a,c			;5864
	call nz,08180h		;5865
	dec bc			;5868
	xor d			;5869
	xor e			;586a
	ex de,hl		;586b
	ld a,a			;586c
	out (0e6h),a		;586d
	call m,sub_4613h	;586f
	ld a,c			;5872
	di			;5873
	jp nz,0a336h		;5874
	ld d,(hl)		;5877
	ret p			;5878
	adc a,c			;5879
	ret p			;587a
	ld b,l			;587b
	adc a,c			;587c
	cp 075h			;587d
	rst 18h			;587f
	sbc a,049h		;5880
	nop			;5882
	cp 0efh			;5883
	ld a,d			;5885
	ld l,c			;5886
	add a,l			;5887
	sbc a,c			;5888
	add a,l			;5889
	ld h,(hl)		;588a
	call p,0abe8h		;588b
	and l			;588e
l588fh:
	ld (hl),a		;588f
	sbc a,h			;5890
	or h			;5891
	ld h,e			;5892
	sbc a,(hl)		;5893
	or h			;5894
	jr c,l5851h		;5895
	or c			;5897
	rst 38h			;5898
	sub a			;5899
	ld hl,(00f44h)		;589a
	rla			;589d
	ld de,0aa7fh		;589e
	jr z,l583ah		;58a1
	rla			;58a3
	rst 38h			;58a4
	adc a,c			;58a5
	ld a,l			;58a6
	adc a,a			;58a7
	pop af			;58a8
	ld b,07fh		;58a9
	jp m,0ae88h		;58ab
	sub (hl)		;58ae
	rst 38h			;58af
	ld b,b			;58b0
	ld e,a			;58b1
	ld a,(bc)		;58b2
	xor d			;58b3
	cp (hl)			;58b4
	cp (hl)			;58b5
	ret p			;58b6
	sub (hl)		;58b7
	call z,0b9abh		;58b8
	adc a,d			;58bb
	call z,0e249h		;58bc
	jp z,0e2cch		;58bf
	call nz,0fe52h		;58c2
	ld e,d			;58c5
	rst 28h			;58c6
	rst 10h			;58c7
	ld c,h			;58c8
	add a,d			;58c9
	ld (hl),d		;58ca
	ex (sp),hl		;58cb
	ld a,d			;58cc
	ld l,018h		;58cd
	sub a			;58cf
	inc b			;58d0
	adc a,b			;58d1
	sbc a,d			;58d2
	ei			;58d3
	xor l			;58d4
	add hl,hl		;58d5
	ret m			;58d6
	sub 0cch		;58d7
	or a			;58d9
	ld h,l			;58da
	xor h			;58db
	and h			;58dc
	or a			;58dd
	ld (hl),e		;58de
	dec h			;58df
	cp h			;58e0
	push af			;58e1
	adc a,d			;58e2
	sbc a,c			;58e3
	ld a,a			;58e4
	ld a,l			;58e5
	sub h			;58e6
	nop			;58e7
	rra			;58e8
	call m,0812eh		;58e9
	adc a,c			;58ec
	jr nc,$-87		;58ed
	add a,b			;58ef
	jp m,0a053h		;58f0
	rst 38h			;58f3
	ld c,c			;58f4
	ld l,d			;58f5
	ld a,a			;58f6
	ld h,b			;58f7
	call m,0c64dh		;58f8
	or d			;58fb
	and e			;58fc
	adc a,(hl)		;58fd
	call pe,08894h		;58fe
	ret nz			;5901
	ld l,h			;5902
	ei			;5903
	ld (hl),e		;5904
	or 01ch			;5905
	jp nc,0ecf5h		;5907
	dec b			;590a
	ex de,hl		;590b
	xor l			;590c
	cp 0b0h			;590d
	nop			;590f
	and 08ah		;5910
	inc sp			;5912
	ld (hl),a		;5913
	add a,l			;5914
	add hl,sp		;5915
	inc hl			;5916
	ld (hl),b		;5917
	ex af,af'		;5918
	xor a			;5919
	add hl,de		;591a
	sbc a,h			;591b
	ld a,a			;591c
	inc b			;591d
	ld (07b9eh),a		;591e
	add a,(hl)		;5921
	or e			;5922
	ccf			;5923
	ld de,0ca08h		;5924
	ld (hl),d		;5927
	ld a,a			;5928
	ld de,0fcb0h		;5929
	xor d			;592c
l592dh:
	ld (hl),c		;592d
	ret			;592e
	ld a,a			;592f
	add a,b			;5930
	inc c			;5931
	jr $+19			;5932
	ld a,a			;5934
	ld d,a			;5935
	djnz l592dh		;5936
	ld d,0ffh		;5938
	pop bc			;593a
	ld a,(bc)		;593b
	cp d			;593c
	call m,0ccbbh		;593d
	sbc a,h			;5940
	ld d,(hl)		;5941
	pop bc			;5942
	push de			;5943
	ld (hl),0cdh		;5944
	push bc			;5946
	defb 0edh ;next byte illegal after ed	;5947
	and l			;5948
	set 7,b			;5949
	ld (hl),d		;594b
	ret			;594c
	ld a,a			;594d
	exx			;594e
	cp h			;594f
	push de			;5950
	or b			;5951
	ld (hl),a		;5952
	rst 18h			;5953
	add a,l			;5954
	ld l,c			;5955
	cp e			;5956
	ld d,l			;5957
	xor 07bh		;5958
	cp 015h			;595a
	defb 0fdh,0a2h,088h ;illegal sequence	;595c
	cp l			;595f
	pop de			;5960
	adc a,b			;5961
	ld c,c			;5962
	or d			;5963
	cp 0c0h			;5964
	rst 38h			;5966
	and a			;5967
	rla			;5968
	cp l			;5969
	defb 0fdh,045h ;ld b,iyl	;596a
	ld (hl),a		;596c
	add a,c			;596d
	adc a,b			;596e
	ld (08381h),a		;596f
	dec hl			;5972
	rlca			;5973
	add a,(hl)		;5974
	ld sp,0ffb0h		;5975
	adc a,l			;5978
	ld c,b			;5979
	rst 38h			;597a
	or b			;597b
	di			;597c
	ld a,a			;597d
	or l			;597e
	ld b,b			;597f
	jp 0c2cbh		;5980
	ld (hl),a		;5983
	sub 07ch		;5984
	and a			;5986
	add a,d			;5987
	pop de			;5988
l5989h:
	nop			;5989
	add a,l			;598a
	ld c,(hl)		;598b
	cpl			;598c
	rlca			;598d
	ld a,a			;598e
	ld c,076h		;598f
	ld h,07dh		;5991
	jp (hl)			;5993
	or l			;5994
	inc de			;5995
	cp d			;5996
	sub b			;5997
	ex af,af'		;5998
l5999h:
	add a,b			;5999
	add a,b			;599a
	ld (hl),b		;599b
	ret nc			;599c
l599dh:
	inc h			;599d
	rrca			;599e
	jp m,l7997h		;599f
	inc h			;59a2
	sub a			;59a3
	ld (hl),c		;59a4
	add a,b			;59a5
	sbc a,c			;59a6
	add a,c			;59a7
	ld (hl),a		;59a8
	ld a,e			;59a9
	ld b,h			;59aa
	rst 38h			;59ab
	adc a,a			;59ac
	inc e			;59ad
	rst 38h			;59ae
	ret m			;59af
	add a,b			;59b0
	add a,e			;59b1
	call po,08faah		;59b2
	add a,02dh		;59b5
	ld b,h			;59b7
	xor h			;59b8
	rst 20h			;59b9
	ret p			;59ba
	ld a,a			;59bb
	rst 8			;59bc
	rlca			;59bd
	ld a,a			;59be
	dec hl			;59bf
	rst 28h			;59c0
l59c1h:
	ld h,l			;59c1
	rlca			;59c2
	ld a,a			;59c3
	rst 28h			;59c4
	cp e			;59c5
	ld c,(hl)		;59c6
	jr c,l59c1h		;59c7
	or a			;59c9
	add a,d			;59ca
	sub c			;59cb
	ex de,hl		;59cc
	ld e,l			;59cd
	or a			;59ce
	add a,h			;59cf
	ld l,c			;59d0
	add a,l			;59d1
	add hl,hl		;59d2
	cp 02ch			;59d3
	adc a,c			;59d5
	ex af,af'		;59d6
	ld sp,hl		;59d7
	ld (hl),a		;59d8
	ld c,071h		;59d9
	cp 089h			;59db
	ret m			;59dd
	djnz l59f8h		;59de
	add a,c			;59e0
	ld (hl),a		;59e1
	ld e,a			;59e2
	rra			;59e3
	add a,b			;59e4
	ld a,000h		;59e5
	ld d,0feh		;59e7
	cp (hl)			;59e9
	ld a,a			;59ea
	ld e,h			;59eb
	ex de,hl		;59ec
	ld d,a			;59ed
	call pe,0eb9dh		;59ee
	ld h,h			;59f1
	rst 20h			;59f2
	xor l			;59f3
	ex (sp),hl		;59f4
l59f5h:
	ld (hl),l		;59f5
	nop			;59f6
	rst 20h			;59f7
l59f8h:
	jp m,087bbh		;59f8
	xor 07dh		;59fb
	jp p,l7ab3h		;59fd
	adc a,c			;5a00
	adc a,e			;5a01
	ld l,e			;5a02
	call m,0b435h		;5a03
	inc sp			;5a06
	cp d			;5a07
	ld d,a			;5a08
	sbc a,(hl)		;5a09
	ld c,e			;5a0a
	ld a,a			;5a0b
	ld c,e			;5a0c
	ld a,d			;5a0d
	jp m,0998dh		;5a0e
	ld (hl),a		;5a11
	ld a,a			;5a12
	ld h,l			;5a13
	ld de,08423h		;5a14
	ld h,a			;5a17
	ld a,(hl)		;5a18
	sbc a,h			;5a19
	nop			;5a1a
	ld h,b			;5a1b
	adc a,a			;5a1c
	call nz,sub_7806h	;5a1d
	ld b,e			;5a20
	ld l,a			;5a21
	srl h			;5a22
	ld h,b			;5a24
	dec hl			;5a25
	add a,a			;5a26
	rst 20h			;5a27
	ld a,c			;5a28
	xor 08eh		;5a29
	ld a,a			;5a2b
	ld a,c			;5a2c
	defb 0edh ;next byte illegal after ed	;5a2d
	adc a,(hl)		;5a2e
	dec b			;5a2f
	sbc a,h			;5a30
	ld (hl),a		;5a31
	dec d			;5a32
	ld c,e			;5a33
	add a,b			;5a34
	jp 0e5b2h		;5a35
	cp b			;5a38
	ld e,e			;5a39
	jp m,08246h		;5a3a
	ret z			;5a3d
	rlca			;5a3e
	ret pe			;5a3f
	rst 38h			;5a40
	ret pe			;5a41
	add a,a			;5a42
	sbc a,c			;5a43
	sub h			;5a44
	ei			;5a45
	ld e,(hl)		;5a46
	ld a,c			;5a47
	rst 38h			;5a48
	dec h			;5a49
	ld (hl),c		;5a4a
	ei			;5a4b
	daa			;5a4c
	ld (08781h),hl		;5a4d
	xor b			;5a50
	adc a,c			;5a51
	sub a			;5a52
	adc a,a			;5a53
	xor 03ch		;5a54
	defb 0fdh,0d9h,0e1h ;illegal sequence	;5a56
	ld d,(hl)		;5a59
	ld a,b			;5a5a
	or 06ch			;5a5b
	inc hl			;5a5d
	add a,a			;5a5e
	ret po			;5a5f
	cp b			;5a60
	jp c,0f0eah		;5a61
	or 00ch			;5a64
	xor h			;5a66
	and 056h		;5a67
	rlca			;5a69
	jp m,086cfh		;5a6a
	ld a,l			;5a6d
	rra			;5a6e
	ld c,e			;5a6f
	add a,b			;5a70
	ld d,(hl)		;5a71
	add a,e			;5a72
	sbc a,(hl)		;5a73
	and h			;5a74
	pop de			;5a75
	xor 098h		;5a76
	call m,0fe6bh		;5a78
sub_5a7bh:
	inc d			;5a7b
	ret			;5a7c
	ld l,l			;5a7d
	xor b			;5a7e
	or d			;5a7f
	adc a,d			;5a80
	ld d,d			;5a81
	sbc a,c			;5a82
	defb 0fdh,052h,001h ;illegal sequence	;5a83
	cp 099h			;5a86
	ld a,a			;5a88
	cp 0b9h			;5a89
	ld (hl),b		;5a8b
	xor c			;5a8c
	adc a,c			;5a8d
	add hl,bc		;5a8e
	ret p			;5a8f
	add a,e			;5a90
	adc hl,sp		;5a91
	add a,h			;5a93
	jp c,0dfd7h		;5a94
	push af			;5a97
	dec d			;5a98
	rst 30h			;5a99
	call nz,sub_78e2h	;5a9a
	set 3,l			;5a9d
	ld (hl),l		;5a9f
	sbc a,l			;5aa0
	or c			;5aa1
	adc a,d			;5aa2
	add a,0ebh		;5aa3
	or a			;5aa5
	ld (0ffb3h),hl		;5aa6
	pop hl			;5aa9
	ret nz			;5aaa
	sbc a,e			;5aab
l5aach:
	cp l			;5aac
	dec hl			;5aad
	cp (hl)			;5aae
	dec de			;5aaf
	add a,b			;5ab0
	adc a,c			;5ab1
	or l			;5ab2
	sbc a,b			;5ab3
	ret pe			;5ab4
	jp z,0fe46h		;5ab5
	sbc a,01ch		;5ab8
	dec b			;5aba
	ld a,(de)		;5abb
	xor c			;5abc
	xor c			;5abd
	call m,00250h		;5abe
	ld (hl),c		;5ac1
	rla			;5ac2
	ld a,b			;5ac3
	ld sp,08881h		;5ac4
	ld a,a			;5ac7
	ret m			;5ac8
	inc de			;5ac9
	xor (hl)		;5aca
	xor d			;5acb
	ld a,a			;5acc
	ld h,l			;5acd
	ld a,(hl)		;5ace
	ld h,(hl)		;5acf
	add a,h			;5ad0
	pop de			;5ad1
	add a,b			;5ad2
	sbc a,e			;5ad3
	ld c,a			;5ad4
	ld (bc),a		;5ad5
l5ad6h:
	sbc a,a			;5ad6
	or b			;5ad7
	ld d,d			;5ad8
	push af			;5ad9
	jp p,0f9b2h		;5ada
	ld a,(hl)		;5add
	ld (hl),007h		;5ade
	ld l,b			;5ae0
	rst 38h			;5ae1
	ld a,(hl)		;5ae2
	add hl,de		;5ae3
	jp 0aff4h		;5ae4
	cp l			;5ae7
	dec bc			;5ae8
	add a,e			;5ae9
l5aeah:
	jp z,012fdh		;5aea
	call z,sub_7ffdh	;5aed
	or (hl)			;5af0
	dec e			;5af1
	ld b,d			;5af2
	dec bc			;5af3
	rla			;5af4
	xor d			;5af5
	xor c			;5af6
	add a,b			;5af7
	or b			;5af8
	rst 38h			;5af9
	cp h			;5afa
	ld a,l			;5afb
	jp m,01829h		;5afc
	adc a,a			;5aff
	call m,0a7a1h		;5b00
	adc a,b			;5b03
	ret m			;5b04
	add a,b			;5b05
	dec sp			;5b06
	ld a,(hl)		;5b07
	ld c,h			;5b08
	rrca			;5b09
	or 085h			;5b0a
	dec (hl)		;5b0c
	pop bc			;5b0d
	xor d			;5b0e
	push bc			;5b0f
	ld c,h			;5b10
	ret p			;5b11
	ld h,a			;5b12
	jp po,l6177h		;5b13
	jp 08f45h		;5b16
	ld a,a			;5b19
	ld (hl),a		;5b1a
	rlca			;5b1b
	ld a,a			;5b1c
	or l			;5b1d
	add a,c			;5b1e
	jr c,l5aeah		;5b1f
l5b21h:
	ld a,(iy+025h)		;5b21
	ret			;5b24
	add a,h			;5b25
	add hl,sp		;5b26
	jp nz,l705dh		;5b27
	ld a,a			;5b2a
	ld b,l			;5b2b
	ei			;5b2c
	ret m			;5b2d
	ld (de),a		;5b2e
	jp m,0219eh		;5b2f
	adc a,a			;5b32
	ret m			;5b33
	adc a,b			;5b34
	ld a,a			;5b35
	sbc a,h			;5b36
	ld d,h			;5b37
	and d			;5b38
	jr l5b21h		;5b39
	jp 05606h		;5b3b
	rst 38h			;5b3e
	add a,h			;5b3f
	adc a,b			;5b40
	add a,b			;5b41
	xor (hl)		;5b42
	ld a,a			;5b43
	ld h,l			;5b44
	ld (hl),c		;5b45
	ld b,h			;5b46
	adc a,b			;5b47
	or e			;5b48
	ld c,e			;5b49
	ret po			;5b4a
	rra			;5b4b
	rla			;5b4c
	ld a,a			;5b4d
	cp (hl)			;5b4e
	add a,d			;5b4f
	ret m			;5b50
	rst 10h			;5b51
	cp l			;5b52
	and l			;5b53
	add a,e			;5b54
	ret p			;5b55
	sbc a,h			;5b56
	rst 8			;5b57
	ld a,a			;5b58
	add a,e			;5b59
	ld hl,(0d6ffh)		;5b5a
	call m,sub_7f72h	;5b5d
	dec de			;5b60
	adc a,d			;5b61
	rst 30h			;5b62
	push af			;5b63
	di			;5b64
	ld a,e			;5b65
	ld hl,(0fb7fh)		;5b66
	jp (hl)			;5b69
	ld a,c			;5b6a
	sub d			;5b6b
	add a,d			;5b6c
	jr l5b79h		;5b6d
	halt			;5b6f
	dec b			;5b70
	add a,e			;5b71
	push af			;5b72
	add a,h			;5b73
	add a,c			;5b74
	ld c,h			;5b75
	rst 30h			;5b76
	ld h,h			;5b77
	ret c			;5b78
l5b79h:
	ld e,e			;5b79
	rst 18h			;5b7a
	cpl			;5b7b
	dec b			;5b7c
	jp m,0e873h		;5b7d
	inc a			;5b80
	call p,sub_707fh	;5b81
	ret m			;5b84
	ld a,a			;5b85
	sub l			;5b86
	sbc a,h			;5b87
	add a,d			;5b88
	or h			;5b89
	xor 09ah		;5b8a
	push bc			;5b8c
	ld l,d			;5b8d
	adc a,e			;5b8e
	halt			;5b8f
	ld a,a			;5b90
	ld de,0f6c9h		;5b91
	jr $-124		;5b94
	ret			;5b96
	ei			;5b97
	in a,(0f4h)		;5b98
	inc l			;5b9a
	ld c,a			;5b9b
	sub e			;5b9c
	ld b,h			;5b9d
	sub c			;5b9e
l5b9fh:
	adc a,a			;5b9f
	ld a,a			;5ba0
	ld l,a			;5ba1
	out (07fh),a		;5ba2
	rst 38h			;5ba4
	ld h,l			;5ba5
	add a,05ch		;5ba6
	ld d,l			;5ba8
	ld (hl),a		;5ba9
	jp pe,0ddcch		;5baa
	ei			;5bad
	rst 0			;5bae
	sbc a,a			;5baf
	inc de			;5bb0
	add a,a			;5bb1
	add a,0ech		;5bb2
	pop af			;5bb4
	add a,l			;5bb5
	call m,0fecfh		;5bb6
	or h			;5bb9
	rst 38h			;5bba
	xor e			;5bbb
	sbc a,c			;5bbc
	add a,e			;5bbd
	jr c,l5b9fh		;5bbe
	nop			;5bc0
	adc a,d			;5bc1
	jp z,l69feh		;5bc2
	nop			;5bc5
	di			;5bc6
	ld a,b			;5bc7
	adc a,a			;5bc8
	call z,0f87fh		;5bc9
sub_5bcch:
	ld h,e			;5bcc
	ld sp,hl		;5bcd
	dec sp			;5bce
	ld a,b			;5bcf
	xor c			;5bd0
	adc a,l			;5bd1
	sbc a,c			;5bd2
	inc l			;5bd3
	and c			;5bd4
	ret p			;5bd5
	ld a,a			;5bd6
	ld a,(hl)		;5bd7
	call p,09785h		;5bd8
	pop hl			;5bdb
	dec sp			;5bdc
	ld a,a			;5bdd
	ld a,h			;5bde
	pop hl			;5bdf
	sbc a,a			;5be0
	add a,a			;5be1
	adc a,e			;5be2
	add a,l			;5be3
	call m,08277h		;5be4
	sbc a,e			;5be7
	sub b			;5be8
	ld e,c			;5be9
	add a,b			;5bea
	and 0fah		;5beb
	ld l,0c5h		;5bed
	push bc			;5bef
	adc a,(hl)		;5bf0
	adc a,b			;5bf1
	dec h			;5bf2
	pop bc			;5bf3
	ld (hl),a		;5bf4
	ld a,h			;5bf5
	ld sp,l7f81h		;5bf6
	rst 30h			;5bf9
	call m,0f8f9h		;5bfa
l5bfdh:
	adc a,(hl)		;5bfd
	inc h			;5bfe
	ld a,c			;5bff
	sbc a,d			;5c00
	sub h			;5c01
	sub h			;5c02
	sub e			;5c03
	ld a,h			;5c04
	ld a,a			;5c05
	ld a,c			;5c06
	sub 0e5h		;5c07
	nop			;5c09
	ret p			;5c0a
	ex (sp),hl		;5c0b
	add a,(iy-002h)		;5c0c
	ld a,d			;5c0f
	dec hl			;5c10
	rlca			;5c11
	cp l			;5c12
	adc a,0f8h		;5c13
	ld d,e			;5c15
	or l			;5c16
	jp m,0a08eh		;5c17
	ret m			;5c1a
	rst 38h			;5c1b
	ld l,d			;5c1c
	ret m			;5c1d
	ld a,a			;5c1e
	and c			;5c1f
	jp m,08e9ah		;5c20
	rst 38h			;5c23
	ld e,b			;5c24
	sbc a,c			;5c25
	adc a,l			;5c26
	add hl,bc		;5c27
	ld a,b			;5c28
	rra			;5c29
	add a,l			;5c2a
	rst 38h			;5c2b
	ld (hl),d		;5c2c
	xor l			;5c2d
	add a,e			;5c2e
	ld l,h			;5c2f
	nop			;5c30
	ld b,a			;5c31
	jp m,0127dh		;5c32
	cp 0e5h			;5c35
	adc a,c			;5c37
	call m,01978h		;5c38
	dec hl			;5c3b
	ld (hl),b		;5c3c
	cp l			;5c3d
	rst 0			;5c3e
	nop			;5c3f
	jp z,03ca0h		;5c40
	ld h,a			;5c43
	rst 30h			;5c44
	inc hl			;5c45
	ld (bc),a		;5c46
	ld a,d			;5c47
l5c48h:
	ld de,0cb7eh		;5c48
	or 086h			;5c4b
	sub c			;5c4d
	adc a,a			;5c4e
	ld b,d			;5c4f
	ld a,b			;5c50
	jr l5c48h		;5c51
	rst 38h			;5c53
	sbc a,h			;5c54
	ld (hl),a		;5c55
	and 087h		;5c56
	rlca			;5c58
	ld a,a			;5c59
	rst 10h			;5c5a
	and h			;5c5b
	ld c,(hl)		;5c5c
	ld (hl),d		;5c5d
	and l			;5c5e
l5c5fh:
	rst 28h			;5c5f
	cp l			;5c60
	ld e,h			;5c61
	push de			;5c62
	add a,c			;5c63
	ld (bc),a		;5c64
	ld b,(hl)		;5c65
	add a,e			;5c66
	jp p,0f98bh		;5c67
	ld hl,080cah		;5c6a
	cp l			;5c6d
	pop af			;5c6e
	ld a,(hl)		;5c6f
	ld h,000h		;5c70
	ld a,a			;5c72
	sub e			;5c73
	dec bc			;5c74
	xor b			;5c75
	adc a,h			;5c76
	dec l			;5c77
	rst 38h			;5c78
	xor (hl)		;5c79
	ld b,c			;5c7a
	ld (hl),c		;5c7b
	add a,l			;5c7c
	sbc a,a			;5c7d
	ld a,(hl)		;5c7e
	or l			;5c7f
	rlca			;5c80
	rst 38h			;5c81
	adc a,031h		;5c82
l5c84h:
	sbc a,b			;5c84
	jp p,08726h		;5c85
	add a,e			;5c88
	xor a			;5c89
	ld bc,04805h		;5c8a
	ld (hl),a		;5c8d
	rst 38h			;5c8e
	call p,sub_5a7bh	;5c8f
	add a,c			;5c92
	cp d			;5c93
	and c			;5c94
	adc a,b			;5c95
	add a,0ffh		;5c96
	rst 20h			;5c98
	call nz,0c8a8h		;5c99
	ex de,hl		;5c9c
	nop			;5c9d
	call pe,0809eh		;5c9e
	and l			;5ca1
	sbc a,b			;5ca2
	jp pe,08394h		;5ca3
	call m,02947h		;5ca6
	sub h			;5ca9
	inc d			;5caa
	ld a,a			;5cab
	adc a,a			;5cac
	sbc a,d			;5cad
	rst 38h			;5cae
	sbc a,0e7h		;5caf
	cp b			;5cb1
	ld c,e			;5cb2
	cp 0ddh			;5cb3
	ld l,b			;5cb5
	pop hl			;5cb6
	ld a,(hl)		;5cb7
	push af			;5cb8
	ld l,a			;5cb9
	sbc a,e			;5cba
	jp 0f200h		;5cbb
	xor b			;5cbe
	ld bc,0e794h		;5cbf
	rst 38h			;5cc2
	dec c			;5cc3
	ret pe			;5cc4
	ld (hl),c		;5cc5
	call m,00c00h		;5cc6
	adc a,c			;5cc9
	xor 098h		;5cca
	cp 04fh			;5ccc
	jr nc,l5c5fh		;5cce
	nop			;5cd0
	rst 38h			;5cd1
	cp 000h			;5cd2
	ld l,d			;5cd4
	nop			;5cd5
	nop			;5cd6
	ld a,b			;5cd7
	nop			;5cd8
	nop			;5cd9
	adc a,a			;5cda
	inc sp			;5cdb
	nop			;5cdc
	jr nc,l5cech		;5cdd
	ld l,011h		;5cdf
	inc bc			;5ce1
	inc sp			;5ce2
	dec (hl)		;5ce3
	ld h,(hl)		;5ce4
	ld h,l			;5ce5
	inc d			;5ce6
	rst 18h			;5ce7
	nop			;5ce8
	ret p			;5ce9
	add hl,bc		;5cea
	ld (hl),l		;5ceb
l5cech:
	ld d,l			;5cec
	nop			;5ced
	ld d,b			;5cee
l5cefh:
	inc c			;5cef
	ret c			;5cf0
	ld bc,02411h		;5cf1
	jr l5d38h		;5cf4
	ld (00011h),hl		;5cf6
	ld (de),a		;5cf9
	ld (hl),c		;5cfa
	ld (0080fh),hl		;5cfb
	sbc a,b			;5cfe
	ld a,(bc)		;5cff
	ld (02124h),hl		;5d00
	djnz l5d1eh		;5d03
	djnz l5d0fh		;5d05
	inc h			;5d07
	ld (hl),h		;5d08
	ld b,h			;5d09
	ld h,003h		;5d0a
	ld sp,03033h		;5d0c
l5d0fh:
	ld l,h			;5d0f
	inc sp			;5d10
	rlca			;5d11
	ld a,d			;5d12
	ld c,c			;5d13
	ld bc,l5635h		;5d14
	ld h,a			;5d17
	adc a,b			;5d18
	adc a,b			;5d19
	add a,e			;5d1a
	jr l5d9bh		;5d1b
	ld a,(hl)		;5d1d
l5d1eh:
	ld h,d			;5d1e
	ld d,a			;5d1f
	ld (08545h),a		;5d20
	add a,b			;5d23
	ld a,a			;5d24
	ret pe			;5d25
	ld hl,0808dh		;5d26
	jp m,0ad7fh		;5d29
	ld a,l			;5d2c
	nop			;5d2d
	adc a,h			;5d2e
	or (hl)			;5d2f
	rst 8			;5d30
	dec b			;5d31
	ld a,(hl)		;5d32
	inc (hl)		;5d33
	dec (hl)		;5d34
	ld c,d			;5d35
	halt			;5d36
	inc b			;5d37
l5d38h:
	ld (hl),a		;5d38
	add a,(hl)		;5d39
	ld h,(hl)		;5d3a
	ld d,e			;5d3b
	inc bc			;5d3c
	sub (hl)		;5d3d
	ld a,d			;5d3e
	ld a,005h		;5d3f
	ld a,l			;5d41
	or b			;5d42
	ex af,af'		;5d43
	adc a,b			;5d44
	add a,a			;5d45
	ld a,b			;5d46
	add hl,bc		;5d47
	adc a,b			;5d48
	ld d,l			;5d49
	ld e,a			;5d4a
	push af			;5d4b
	add a,c			;5d4c
	ld l,(hl)		;5d4d
	ld a,a			;5d4e
	xor (hl)		;5d4f
	ld h,h			;5d50
	ld l,(hl)		;5d51
	ld a,a			;5d52
	rra			;5d53
	jr nz,l5dd5h		;5d54
	ld b,a			;5d56
	ld a,e			;5d57
	dec c			;5d58
	ld d,l			;5d59
	ld a,a			;5d5a
	ld c,b			;5d5b
	ld d,e			;5d5c
	ld a,(bc)		;5d5d
	jr nc,l5cefh		;5d5e
	call nz,09530h		;5d60
	ld (hl),b		;5d63
	ld d,(hl)		;5d64
	and c			;5d65
	ld c,c			;5d66
	ld c,l			;5d67
	ld (hl),a		;5d68
	adc a,b			;5d69
	ld h,(hl)		;5d6a
	add a,e			;5d6b
	inc sp			;5d6c
	ld d,e			;5d6d
	ld h,d			;5d6e
	rst 8			;5d6f
	inc c			;5d70
	jp nc,03d98h		;5d71
	inc c			;5d74
	ld h,(hl)		;5d75
	ld h,a			;5d76
	jr nc,l5d99h		;5d77
	ld h,l			;5d79
	ld d,(hl)		;5d7a
	inc b			;5d7b
	ld d,l			;5d7c
	rst 38h			;5d7d
	rst 38h			;5d7e
	ld d,a			;5d7f
	ld (hl),e		;5d80
	ld (hl),b		;5d81
	inc d			;5d82
	ld (hl),b		;5d83
	sub d			;5d84
	add a,b			;5d85
	call z,01075h		;5d86
	adc a,l			;5d89
	add a,d			;5d8a
	adc a,h			;5d8b
	adc a,h			;5d8c
	xor d			;5d8d
	ld (bc),a		;5d8e
	ld a,(bc)		;5d8f
	ex af,af'		;5d90
	ld d,(hl)		;5d91
	adc a,c			;5d92
	add a,d			;5d93
	ld (de),a		;5d94
	ld a,a			;5d95
	rst 10h			;5d96
	ld a,l			;5d97
	dec l			;5d98
l5d99h:
	ld h,(hl)		;5d99
	inc b			;5d9a
l5d9bh:
	ld c,d			;5d9b
	ld d,e			;5d9c
	adc a,c			;5d9d
	rst 8			;5d9e
	di			;5d9f
	daa			;5da0
	ld e,b			;5da1
	adc a,b			;5da2
	nop			;5da3
	daa			;5da4
	ld (hl),a		;5da5
	add a,a			;5da6
	djnz l5e05h		;5da7
	ld h,l			;5da9
	rst 8			;5daa
	adc a,(hl)		;5dab
	call z,00405h		;5dac
	ld d,l			;5daf
	ld d,(hl)		;5db0
	ld (hl),a		;5db1
	ld a,b			;5db2
	add a,a			;5db3
	ld bc,l68f3h		;5db4
	inc sp			;5db7
	scf			;5db8
	ld e,a			;5db9
	rst 30h			;5dba
	add a,l			;5dbb
	ld (hl),a		;5dbc
	ld d,b			;5dbd
	ld a,a			;5dbe
	add a,b			;5dbf
	inc l			;5dc0
	xor a			;5dc1
	ld (de),a		;5dc2
	ld a,l			;5dc3
	ld a,a			;5dc4
	inc (hl)		;5dc5
	ld b,07fh		;5dc6
	ld h,b			;5dc8
	and 07fh		;5dc9
	defb 0fdh,052h,0e8h ;illegal sequence	;5dcb
	ld l,e			;5dce
	dec c			;5dcf
	nop			;5dd0
	ld d,c			;5dd1
	ld d,l			;5dd2
	adc a,b			;5dd3
	rst 10h			;5dd4
l5dd5h:
	ld a,(0030eh)		;5dd5
	ld a,(hl)		;5dd8
	or b			;5dd9
	nop			;5dda
	ld h,(hl)		;5ddb
	ld h,e			;5ddc
	pop af			;5ddd
	ld h,a			;5dde
	ld d,a			;5ddf
	ld d,l			;5de0
	sub b			;5de1
l5de2h:
	jp z,l5203h		;5de2
	dec (hl)		;5de5
	ld (hl),0abh		;5de6
	jr z,l5de2h		;5de8
	ld (bc),a		;5dea
	jp m,0b7a3h		;5deb
	xor d			;5dee
	add a,e			;5def
	ld l,d			;5df0
	ld sp,hl		;5df1
	ld d,c			;5df2
	ld b,d			;5df3
	add a,b			;5df4
	inc e			;5df5
	ld h,h			;5df6
	halt			;5df7
	add a,b			;5df8
	ld l,h			;5df9
	sub c			;5dfa
	ret c			;5dfb
	dec c			;5dfc
	nop			;5dfd
	ld c,b			;5dfe
	ld d,02ch		;5dff
	ld (hl),a		;5e01
	add a,b			;5e02
	rst 0			;5e03
	ld b,d			;5e04
l5e05h:
	ld a,a			;5e05
	scf			;5e06
	ld a,(l4d00h)		;5e07
	ld h,l			;5e0a
	ld a,(hl)		;5e0b
	ld d,a			;5e0c
	ld d,(hl)		;5e0d
	di			;5e0e
	cpl			;5e0f
	dec b			;5e10
	ld a,(hl)		;5e11
	dec b			;5e12
	add a,a			;5e13
	add a,(hl)		;5e14
	ld e,074h		;5e15
	rrca			;5e17
	dec b			;5e18
	ld a,a			;5e19
	sbc a,c			;5e1a
	inc sp			;5e1b
	xor h			;5e1c
	ld e,h			;5e1d
	jr nz,$+1		;5e1e
	ld (bc),a		;5e20
	add a,(hl)		;5e21
	inc sp			;5e22
	ret m			;5e23
	adc a,b			;5e24
	inc de			;5e25
	ld a,a			;5e26
	ld h,(hl)		;5e27
	ld l,b			;5e28
	rlca			;5e29
	ld h,l			;5e2a
	add hl,de		;5e2b
	xor c			;5e2c
	ld a,c			;5e2d
	inc h			;5e2e
	ld a,c			;5e2f
	sbc a,h			;5e30
	ld a,a			;5e31
	cp c			;5e32
	inc h			;5e33
	ld a,a			;5e34
	ld hl,(01000h)		;5e35
	ld a,(hl)		;5e38
	ld l,h			;5e39
	ld (bc),a		;5e3a
	jp po,0fd7fh		;5e3b
	ld d,b			;5e3e
	ld (hl),067h		;5e3f
	ld d,h			;5e41
	halt			;5e42
	jr nc,l5e76h		;5e43
	add a,c			;5e45
	or c			;5e46
	inc bc			;5e47
	ld h,056h		;5e48
	add a,h			;5e4a
	call c,sub_4e37h	;5e4b
	call pe,sub_7700h	;5e4e
	halt			;5e51
	ld d,a			;5e52
	ld d,e			;5e53
l5e54h:
	sub h			;5e54
	add a,e			;5e55
	ld d,e			;5e56
	ld a,a			;5e57
	call po,00360h		;5e58
	jr c,l5ed4h		;5e5b
	adc a,a			;5e5d
	ret m			;5e5e
	call nc,0332ch		;5e5f
	ld (bc),a		;5e62
	ld h,e			;5e63
	inc hl			;5e64
	rst 38h			;5e65
	ld d,(hl)		;5e66
	or l			;5e67
	dec hl			;5e68
	add a,d			;5e69
	jp nz,l5580h		;5e6a
	ld hl,0e87fh		;5e6d
	ld d,0a0h		;5e70
	ld (hl),b		;5e72
	ld h,a			;5e73
	ld h,a			;5e74
	ld h,(hl)		;5e75
l5e76h:
	ld h,c			;5e76
	ld b,d			;5e77
	ex de,hl		;5e78
	ld a,(0257dh)		;5e79
	rst 20h			;5e7c
	adc a,h			;5e7d
	ld a,h			;5e7e
	sub l			;5e7f
	add a,h			;5e80
	ld c,e			;5e81
	inc sp			;5e82
	cp 0aeh			;5e83
	nop			;5e85
	inc a			;5e86
	add a,e			;5e87
	ld a,a			;5e88
sub_5e89h:
	ld h,a			;5e89
	push iy			;5e8a
	inc de			;5e8c
	ld e,b			;5e8d
	add a,(hl)		;5e8e
	ld h,a			;5e8f
	ld a,l			;5e90
	ret m			;5e91
	ld a,l			;5e92
	adc a,e			;5e93
	or e			;5e94
	dec d			;5e95
	ld h,e			;5e96
	rst 38h			;5e97
	ld b,(hl)		;5e98
	cp l			;5e99
	dec h			;5e9a
	ld (hl),l		;5e9b
	add a,b			;5e9c
	cp d			;5e9d
	add a,c			;5e9e
	ld e,(hl)		;5e9f
	nop			;5ea0
l5ea1h:
	and e			;5ea1
	add a,b			;5ea2
	jr c,l5f24h		;5ea3
	sbc a,h			;5ea5
	defb 0fdh,044h ;ld b,iyh	;5ea6
	ld b,083h		;5ea8
	ld h,c			;5eaa
	ld b,a			;5eab
	ld (004ffh),hl		;5eac
	ld d,(hl)		;5eaf
	ld l,b			;5eb0
	ret pe			;5eb1
	ret m			;5eb2
	ld d,e			;5eb3
	add a,(hl)		;5eb4
	ld d,c			;5eb5
	add a,b			;5eb6
	add a,a			;5eb7
	ld b,088h		;5eb8
	nop			;5eba
	and d			;5ebb
	ld h,b			;5ebc
	cp 07bh			;5ebd
	and a			;5ebf
	cp 094h			;5ec0
	ld d,l			;5ec2
	ld e,b			;5ec3
	ld (de),a		;5ec4
	rst 38h			;5ec5
	ld a,b			;5ec6
	rst 38h			;5ec7
	rst 38h			;5ec8
	and d			;5ec9
	ld (hl),038h		;5eca
	jr c,l5e54h		;5ecc
	xor c			;5ece
	add a,e			;5ecf
	sub (hl)		;5ed0
	push af			;5ed1
	cp h			;5ed2
	add a,l			;5ed3
l5ed4h:
	add a,l			;5ed4
	nop			;5ed5
	add a,e			;5ed6
	ret m			;5ed7
	ld a,l			;5ed8
	ld a,a			;5ed9
	ld l,h			;5eda
	inc bc			;5edb
	call po,sub_65bch	;5edc
	inc d			;5edf
	add a,(hl)		;5ee0
	add a,l			;5ee1
	call nc,0a5e4h		;5ee2
	ret			;5ee5
	jp nc,0f280h		;5ee6
	ld c,e			;5ee9
	cp 0cbh			;5eea
	sub h			;5eec
	ld h,b			;5eed
	add a,e			;5eee
	rst 38h			;5eef
	ld l,b			;5ef0
	add a,l			;5ef1
	ld a,h			;5ef2
	adc a,a			;5ef3
	rst 38h			;5ef4
	jr c,l5ea1h		;5ef5
	ld d,c			;5ef7
	call nz,sub_7a54h	;5ef8
	jp nc,00461h		;5efb
	add a,a			;5efe
	ld (hl),b		;5eff
	add a,b			;5f00
	cpl			;5f01
	rrca			;5f02
	ld a,a			;5f03
	ld c,a			;5f04
	djnz l5f86h		;5f05
	add hl,sp		;5f07
	cp 03ch			;5f08
	ld h,(hl)		;5f0a
	ld d,d			;5f0b
	add a,(hl)		;5f0c
	add a,b			;5f0d
	push de			;5f0e
	ld h,(hl)		;5f0f
	rst 38h			;5f10
	inc e			;5f11
	inc a			;5f12
	ld a,b			;5f13
	add hl,de		;5f14
	ld (hl),a		;5f15
	and l			;5f16
	jp 0e200h		;5f17
	ld (0ff0fh),hl		;5f1a
	ld a,e			;5f1d
	ccf			;5f1e
	ld (hl),a		;5f1f
	inc hl			;5f20
l5f21h:
	inc d			;5f21
	ld h,l			;5f22
	inc sp			;5f23
l5f24h:
	ld (hl),0f7h		;5f24
	adc a,c			;5f26
	ld l,a			;5f27
	adc a,0c6h		;5f28
	inc sp			;5f2a
	ld sp,0f73ch		;5f2b
	ld a,a			;5f2e
	add hl,hl		;5f2f
	add a,c			;5f30
	adc a,(hl)		;5f31
	ld a,a			;5f32
	ld c,l			;5f33
	ld b,c			;5f34
	djnz l5fb6h		;5f35
	or d			;5f37
	ld a,e			;5f38
	ld h,l			;5f39
	rst 38h			;5f3a
	sbc a,d			;5f3b
	ld c,e			;5f3c
	nop			;5f3d
	cp 08ch			;5f3e
	add a,b			;5f40
	ld (hl),a		;5f41
	add a,b			;5f42
	add hl,hl		;5f43
	ld a,(iy+01eh)		;5f44
	ld a,a			;5f47
	in a,(0d9h)		;5f48
l5f4ah:
	pop hl			;5f4a
	call m,sub_612eh	;5f4b
	ccf			;5f4e
	ccf			;5f4f
	rst 38h			;5f50
	dec (hl)		;5f51
	xor e			;5f52
	add hl,de		;5f53
	and (hl)		;5f54
	ld d,c			;5f55
	ld d,(hl)		;5f56
	ld h,e			;5f57
	rst 38h			;5f58
	djnz l5fb0h		;5f59
	ld h,e			;5f5b
	rst 30h			;5f5c
	xor h			;5f5d
	ld e,d			;5f5e
	or d			;5f5f
	ld c,b			;5f60
	ld l,b			;5f61
	sub c			;5f62
	add a,a			;5f63
	ld e,e			;5f64
	nop			;5f65
	add a,d			;5f66
	and a			;5f67
	nop			;5f68
l5f69h:
	add hl,de		;5f69
	ld a,a			;5f6a
	push af			;5f6b
	sub b			;5f6c
	ld de,01601h		;5f6d
	ret z			;5f70
	ld a,(hl)		;5f71
	cp 095h			;5f72
	ld (de),a		;5f74
	rst 38h			;5f75
	rst 0			;5f76
	ld a,a			;5f77
	and l			;5f78
	add a,d			;5f79
	dec (hl)		;5f7a
	add a,d			;5f7b
	ld (hl),e		;5f7c
	jr c,l5ffdh		;5f7d
	push de			;5f7f
	add a,a			;5f80
	ld l,e			;5f81
	call c,0fc80h		;5f82
	nop			;5f85
l5f86h:
	ld b,03fh		;5f86
	or 073h			;5f88
	rst 38h			;5f8a
	add a,(hl)		;5f8b
	ld a,a			;5f8c
	ld l,b			;5f8d
	add a,a			;5f8e
	ret m			;5f8f
	defb 0fdh,00ah,086h ;illegal sequence	;5f90
	ex af,af'		;5f93
	cp 0e4h			;5f94
	ld h,e			;5f96
	adc a,e			;5f97
	ld c,h			;5f98
	dec (hl)		;5f99
	ld b,a			;5f9a
	ret			;5f9b
	ld a,a			;5f9c
	add a,b			;5f9d
	ld a,b			;5f9e
	or l			;5f9f
	ld a,a			;5fa0
	ld b,d			;5fa1
	ld a,a			;5fa2
	cpl			;5fa3
	ld de,058ffh		;5fa4
l5fa7h:
	ld de,0b3ffh		;5fa7
	cp 0e7h			;5faa
l5fach:
	ld l,b			;5fac
	ret nz			;5fad
	ld h,(hl)		;5fae
	add a,a			;5faf
l5fb0h:
	add a,a			;5fb0
	call nz,0301bh		;5fb1
	rst 38h			;5fb4
	ld b,a			;5fb5
l5fb6h:
	add a,a			;5fb6
	add a,(hl)		;5fb7
	ld d,092h		;5fb8
	ld d,b			;5fba
	rst 38h			;5fbb
	call m,sub_5012h	;5fbc
	jp m,l57ech		;5fbf
	pop hl			;5fc2
	ld a,a			;5fc3
	push af			;5fc4
	rst 28h			;5fc5
	dec de			;5fc6
	or 026h			;5fc7
	ld a,a			;5fc9
	ld hl,(0d038h)		;5fca
	ld d,h			;5fcd
	ld l,a			;5fce
	adc a,h			;5fcf
	inc sp			;5fd0
	inc h			;5fd1
	ld (hl),e		;5fd2
	ld a,b			;5fd3
	sub c			;5fd4
	xor 07fh		;5fd5
	add a,c			;5fd7
	sbc a,h			;5fd8
	sbc a,b			;5fd9
	ld b,c			;5fda
	ei			;5fdb
	add hl,de		;5fdc
	inc d			;5fdd
	ld b,h			;5fde
	rst 38h			;5fdf
	ld b,(hl)		;5fe0
	add a,b			;5fe1
	scf			;5fe2
	ld h,(hl)		;5fe3
	rst 38h			;5fe4
	sbc a,l			;5fe5
	and 09eh		;5fe6
	ld l,b			;5fe8
	ld a,a			;5fe9
	or a			;5fea
	xor 090h		;5feb
	ld a,(l5076h)		;5fed
	inc bc			;5ff0
	sbc a,a			;5ff1
	ei			;5ff2
	ld hl,(0f1feh)		;5ff3
l5ff6h:
	push bc			;5ff6
	ld a,a			;5ff7
	inc sp			;5ff8
	rst 30h			;5ff9
	jp m,0ff01h		;5ffa
l5ffdh:
	di			;5ffd
	ld e,b			;5ffe
l5fffh:
	add a,e			;5fff
	ld (hl),077h		;6000
	rst 38h			;6002
	ld (l7336h),hl		;6003
	or h			;6006
	add a,c			;6007
	and d			;6008
	rst 30h			;6009
	add hl,bc		;600a
	ld (de),a		;600b
	di			;600c
	add a,l			;600d
	ld d,e			;600e
	dec bc			;600f
	ld d,e			;6010
	and a			;6011
	defb 0edh ;next byte illegal after ed	;6012
	adc a,(hl)		;6013
	ld b,a			;6014
	ld (hl),a		;6015
	add a,(hl)		;6016
	cp b			;6017
	jp p,l7785h		;6018
	ld a,a			;601b
	push af			;601c
	inc de			;601d
	ld b,d			;601e
	rst 38h			;601f
	sub e			;6020
	adc a,b			;6021
	dec d			;6022
	ld b,h			;6023
	ld a,a			;6024
	sub c			;6025
	cp 0edh			;6026
	di			;6028
	ld c,e			;6029
	rst 30h			;602a
	res 7,l			;602b
	sub d			;602d
	ld l,b			;602e
	defb 0fdh,09ch ;sbc a,iyh	;602f
	xor a			;6031
	jp z,0adbdh		;6032
	ld h,d			;6035
	cp 03dh			;6036
	ld d,e			;6038
	di			;6039
	ccf			;603a
	ld d,a			;603b
	ld sp,hl		;603c
	ld a,(bc)		;603d
	ld a,a			;603e
	ld (bc),a		;603f
	ld e,(hl)		;6040
	ccf			;6041
	add a,c			;6042
	dec h			;6043
	ld d,e			;6044
	add a,c			;6045
	ld h,h			;6046
	adc a,(hl)		;6047
	scf			;6048
	ld e,a			;6049
	ld d,e			;604a
	rla			;604b
	ld a,a			;604c
	add a,080h		;604d
	ld e,h			;604f
l6050h:
	ld a,b			;6050
	ld a,a			;6051
	ld (hl),d		;6052
	ld b,h			;6053
	ld a,a			;6054
	inc h			;6055
	rst 10h			;6056
	ld a,a			;6057
	ld (hl),07fh		;6058
	cp h			;605a
	add a,l			;605b
	or d			;605c
	ld h,e			;605d
	xor a			;605e
	jr l609fh		;605f
	dec c			;6061
	add hl,bc		;6062
	ret z			;6063
	ld (hl),b		;6064
	or a			;6065
	add a,c			;6066
	ld h,h			;6067
	inc bc			;6068
	ret m			;6069
	pop hl			;606a
	ld h,(hl)		;606b
	ccf			;606c
	call m,08658h		;606d
	ret			;6070
	ld a,a			;6071
	or (hl)			;6072
	ld c,e			;6073
	add a,c			;6074
	ld c,h			;6075
	ld a,a			;6076
	ld d,b			;6077
	di			;6078
	jp nc,03d57h		;6079
	adc a,a			;607c
	di			;607d
	cp (hl)			;607e
	ld a,h			;607f
	ld a,a			;6080
	xor c			;6081
	add a,c			;6082
	and (hl)		;6083
	inc h			;6084
	ld a,a			;6085
	ld c,l			;6086
	ld (hl),a		;6087
	ld b,c			;6088
	ld a,a			;6089
	and h			;608a
	dec bc			;608b
	adc a,b			;608c
	sbc a,h			;608d
	cp 07ch			;608e
	ld l,b			;6090
	ld a,a			;6091
	adc a,c			;6092
	ld h,l			;6093
	jp (hl)			;6094
	rrca			;6095
	ld a,b			;6096
	halt			;6097
	ld a,a			;6098
	sub e			;6099
	push af			;609a
	ld a,l			;609b
	ld sp,l677fh		;609c
l609fh:
	xor 011h		;609f
	ret m			;60a1
	jr c,$-5		;60a2
	inc h			;60a4
	dec h			;60a5
	adc a,a			;60a6
	ld d,b			;60a7
	adc a,b			;60a8
	add a,c			;60a9
	halt			;60aa
	jr nz,l60e0h		;60ab
	di			;60ad
	ld (de),a		;60ae
	ret m			;60af
	ld (hl),053h		;60b0
	jr c,l60d5h		;60b2
	adc a,a			;60b4
	ld d,l			;60b5
	ld a,a			;60b6
	add a,e			;60b7
	ld a,b			;60b8
	add a,b			;60b9
	add a,b			;60ba
	ld a,029h		;60bb
	ld de,l6e80h		;60bd
	ret m			;60c0
	jr c,l6050h		;60c1
	adc a,h			;60c3
	adc a,d			;60c4
	defb 0fdh,005h,09fh ;illegal sequence	;60c5
	ld h,l			;60c8
	ld d,(hl)		;60c9
	ld a,a			;60ca
	ld a,080h		;60cb
	ld c,e			;60cd
	add a,a			;60ce
	sub e			;60cf
	defb 0edh ;next byte illegal after ed	;60d0
	ld (hl),a		;60d1
	cp 0aeh			;60d2
	dec de			;60d4
l60d5h:
	push af			;60d5
	defb 0edh ;next byte illegal after ed	;60d6
	ld a,a			;60d7
	add a,h			;60d8
	inc sp			;60d9
	ld h,a			;60da
	rst 38h			;60db
	ld c,c			;60dc
	rst 30h			;60dd
	ld a,c			;60de
	ret m			;60df
l60e0h:
	ld a,e			;60e0
	ld sp,l798fh		;60e1
	halt			;60e4
	ret m			;60e5
	add hl,hl		;60e6
	dec b			;60e7
	inc d			;60e8
	ld h,l			;60e9
	ld d,e			;60ea
	add a,a			;60eb
	ld l,d			;60ec
	add a,c			;60ed
	ld (hl),c		;60ee
	adc a,a			;60ef
	ld a,a			;60f0
	rst 20h			;60f1
	add a,b			;60f2
	dec l			;60f3
	ld b,l			;60f4
	jp m,038f8h		;60f5
	inc h			;60f8
	exx			;60f9
	dec bc			;60fa
	cp 049h			;60fb
	ld a,a			;60fd
	ld (hl),078h		;60fe
	xor 087h		;6100
	or (hl)			;6102
	add a,l			;6103
	sub a			;6104
	nop			;6105
	add a,b			;6106
	ex (sp),hl		;6107
	ret			;6108
	ld b,e			;6109
	add a,(hl)		;610a
	ld (hl),d		;610b
	pop bc			;610c
	cp e			;610d
	sbc a,h			;610e
	call c,sub_7ff8h+1	;610f
	ld (0ff58h),hl		;6112
	cp h			;6115
	xor 002h		;6116
	ret m			;6118
	ld d,e			;6119
	rst 30h			;611a
	ld e,b			;611b
	ld e,a			;611c
	rst 38h			;611d
	ld sp,hl		;611e
	jp (hl)			;611f
	ld a,a			;6120
	inc sp			;6121
	inc d			;6122
	ld b,l			;6123
	sub c			;6124
	nop			;6125
	sub e			;6126
	ld a,a			;6127
	ccf			;6128
	ld a,a			;6129
	add a,080h		;612a
	ld (hl),000h		;612c
sub_612eh:
	ld c,a			;612e
	ld (de),a		;612f
	add a,b			;6130
	ld (de),a		;6131
	ei			;6132
	halt			;6133
	adc a,e			;6134
	pop de			;6135
	ld a,h			;6136
	rst 38h			;6137
	or l			;6138
	defb 0fdh,07bh,07fh ;illegal sequence	;6139
	adc a,0c5h		;613c
	ret p			;613e
	ld a,a			;613f
	rlca			;6140
	adc a,h			;6141
	ret m			;6142
	or (hl)			;6143
	adc a,(hl)		;6144
	inc l			;6145
	xor c			;6146
	ld d,e			;6147
	halt			;6148
	rst 38h			;6149
	adc a,h			;614a
	add a,b			;614b
	ld b,a			;614c
	or l			;614d
	ld d,e			;614e
	push af			;614f
	ld a,c			;6150
	ld c,(hl)		;6151
	call pe,sub_5632h	;6152
	inc sp			;6155
	nop			;6156
	nop			;6157
	rst 38h			;6158
	add a,l			;6159
	ld a,a			;615a
	push af			;615b
	ld d,a			;615c
	rst 38h			;615d
	or 065h			;615e
	ld a,d			;6160
	di			;6161
	adc a,045h		;6162
	add a,e			;6164
	nop			;6165
	xor c			;6166
	halt			;6167
l6168h:
	rst 38h			;6168
	ld a,(l717fh)		;6169
	sub b			;616c
	ld (bc),a		;616d
	add a,h			;616e
	ld a,(de)		;616f
	ld (de),a		;6170
	jp c,0fb78h		;6171
	ld h,d			;6174
	add a,l			;6175
	scf			;6176
l6177h:
	dec c			;6177
	inc hl			;6178
	rst 38h			;6179
	pop hl			;617a
	dec a			;617b
	ld h,a			;617c
	ld a,b			;617d
	pop af			;617e
	sbc a,c			;617f
	inc h			;6180
	ld e,b			;6181
	add a,l			;6182
l6183h:
	add hl,de		;6183
	adc a,(hl)		;6184
	xor h			;6185
	ld h,e			;6186
	di			;6187
	xor b			;6188
	ld e,e			;6189
	or l			;618a
	inc sp			;618b
	rst 38h			;618c
	call p,sub_7f1dh	;618d
	add hl,bc		;6190
	ld l,b			;6191
	ld (hl),a		;6192
	inc sp			;6193
	ld d,a			;6194
	add a,e			;6195
	ld c,e			;6196
	add a,e			;6197
	ld c,b			;6198
	xor b			;6199
	and (hl)		;619a
	cp 03ch			;619b
	dec (hl)		;619d
	ld d,l			;619e
	jp nz,l5f4ah		;619f
	add a,c			;61a2
	xor l			;61a3
	di			;61a4
	ret z			;61a5
	ld a,l			;61a6
	ld a,a			;61a7
	ld l,c			;61a8
	di			;61a9
	ld sp,l4000h		;61aa
	ld a,a			;61ad
	call po,sub_4f03h	;61ae
	ld (hl),0feh		;61b1
l61b3h:
	or h			;61b3
	jp z,08064h		;61b4
	ld l,a			;61b7
	jp nz,02d98h		;61b8
	jr c,l6168h		;61bb
	adc a,08ah		;61bd
	sub e			;61bf
	adc a,h			;61c0
	ld h,(hl)		;61c1
	jr nc,$-16		;61c2
	cp e			;61c4
	dec sp			;61c5
	or l			;61c6
	djnz l61b3h		;61c7
	and 0efh		;61c9
	pop af			;61cb
	push af			;61cc
	ret p			;61cd
	sub h			;61ce
	add a,a			;61cf
	ld b,c			;61d0
	ld d,a			;61d1
	ld a,b			;61d2
	ld d,e			;61d3
	ccf			;61d4
	ld sp,hl		;61d5
	ld e,e			;61d6
	or 030h			;61d7
	dec (hl)		;61d9
	ld d,(hl)		;61da
	ld d,e			;61db
	daa			;61dc
	ld (hl),055h		;61dd
	add a,b			;61df
	add a,l			;61e0
	ld a,a			;61e1
	add a,b			;61e2
	or d			;61e3
	ld bc,09912h		;61e4
	sub c			;61e7
	djnz l6269h		;61e8
	add hl,bc		;61ea
	add a,a			;61eb
	jp c,0819eh		;61ec
	inc l			;61ef
	nop			;61f0
	ld d,04ah		;61f1
	djnz l6183h		;61f3
	rst 10h			;61f5
	cp 0c1h			;61f6
	ld a,(hl)		;61f8
	adc a,0ffh		;61f9
	ld a,(de)		;61fb
	ld h,d			;61fc
	dec b			;61fd
	xor l			;61fe
	add a,a			;61ff
	cpl			;6200
	ld d,a			;6201
	ld h,a			;6202
	push bc			;6203
	rst 0			;6204
	add a,d			;6205
	dec sp			;6206
	ld (hl),l		;6207
	or b			;6208
	add hl,bc		;6209
	ld l,l			;620a
	ld b,l			;620b
	sbc a,l			;620c
	ld l,d			;620d
	ld (07f56h),a		;620e
	xor d			;6211
	jp (hl)			;6212
	call p,0fd62h		;6213
	ld d,h			;6216
	ld h,e			;6217
	ccf			;6218
	cp d			;6219
	sub d			;621a
	add a,l			;621b
	push af			;621c
	rst 30h			;621d
	cp 035h			;621e
	add a,b			;6220
	jp p,068cch		;6221
	pop bc			;6224
	di			;6225
	add hl,de		;6226
	ld (hl),h		;6227
	sbc a,c			;6228
	ld (09e12h),a		;6229
	jp m,04052h		;622c
	add a,b			;622f
	cp c			;6230
	ld a,a			;6231
	cpl			;6232
	inc hl			;6233
	ld h,(hl)		;6234
	rst 38h			;6235
	ret po			;6236
	adc a,h			;6237
	add a,c			;6238
	adc a,(hl)		;6239
	cp 025h			;623a
	nop			;623c
	ld a,b			;623d
	sbc a,l			;623e
	inc sp			;623f
	defb 0edh ;next byte illegal after ed	;6240
	rst 28h			;6241
	ld (bc),a		;6242
	ld e,e			;6243
	cp 07ah			;6244
	sub l			;6246
	ld a,e			;6247
	ld h,l			;6248
	jp pe,07440h		;6249
	ld l,b			;624c
	scf			;624d
	ld (hl),078h		;624e
	add a,a			;6250
	or d			;6251
	halt			;6252
	ld a,l			;6253
	ld a,c			;6254
	ld d,056h		;6255
	ccf			;6257
	ld h,e			;6258
	rlca			;6259
	dec bc			;625a
	ld e,d			;625b
	adc a,e			;625c
	ld h,d			;625d
	sub a			;625e
	ld a,h			;625f
	ld a,a			;6260
	cpl			;6261
	ld de,l6b87h		;6262
	ld a,a			;6265
	xor h			;6266
	cp 0f8h			;6267
l6269h:
	add hl,hl		;6269
	bit 4,a			;626a
	nop			;626c
l626dh:
	ld h,l			;626d
	ld l,d			;626e
	halt			;626f
	sub c			;6270
	jp nz,08000h		;6271
	ld e,(hl)		;6274
	ld l,h			;6275
	defb 0fdh,045h ;ld b,iyl	;6276
	ld d,l			;6278
	ret p			;6279
	ld h,(hl)		;627a
	pop af			;627b
	rst 18h			;627c
	jp p,0a892h		;627d
	ld c,l			;6280
	adc a,d			;6281
	adc a,d			;6282
	ld b,a			;6283
	defb 0fdh,042h,058h ;illegal sequence	;6284
	ccf			;6287
	ld (hl),e		;6288
	sub l			;6289
	ld sp,l7ffeh+1		;628a
	xor b			;628d
	add a,e			;628e
	ret z			;628f
	jp z,0e0b1h		;6290
	cp h			;6293
	ret nz			;6294
	inc b			;6295
	call z,00cc0h		;6296
	nop			;6299
	ret nz			;629a
	add a,b			;629b
	cp b			;629c
	rst 0			;629d
	add a,d			;629e
	inc (hl)		;629f
	adc a,(hl)		;62a0
	or e			;62a1
	jp nz,l7f7ch		;62a2
	ld c,(hl)		;62a5
	ld h,(hl)		;62a6
	jp po,05871h		;62a7
	ld a,b			;62aa
	ei			;62ab
	jr nc,l626dh		;62ac
	pop af			;62ae
	ld c,d			;62af
	add a,c			;62b0
	ld h,l			;62b1
	ld d,b			;62b2
	ld a,a			;62b3
	ret c			;62b4
	ld (hl),067h		;62b5
	ld (hl),l		;62b7
	ld b,h			;62b8
	inc sp			;62b9
	rst 28h			;62ba
	add a,(hl)		;62bb
	ld h,033h		;62bc
	ld (hl),a		;62be
	or c			;62bf
	xor d			;62c0
	and l			;62c1
	adc a,l			;62c2
	ld h,h			;62c3
	ld l,b			;62c4
l62c5h:
	push af			;62c5
	add a,l			;62c6
	add a,a			;62c7
	ld d,a			;62c8
	djnz $+1		;62c9
sub_62cbh:
	inc a			;62cb
	jr c,l62c5h		;62cc
	sub l			;62ce
	call po,0cc7fh		;62cf
	ret			;62d2
	ld hl,(09990h)		;62d3
	nop			;62d6
	add a,d			;62d7
	pop hl			;62d8
	ld bc,0bcf6h		;62d9
	ld (hl),l		;62dc
	nop			;62dd
	add a,h			;62de
	ld (hl),00fh		;62df
	ex (sp),hl		;62e1
	rst 38h			;62e2
	cp h			;62e3
	add a,b			;62e4
	ld h,(hl)		;62e5
	call nz,0ea18h		;62e6
l62e9h:
	ret p			;62e9
	or l			;62ea
	jr nc,l62e9h		;62eb
	call 0fd05h		;62ed
	xor (hl)		;62f0
	dec b			;62f1
	or 067h			;62f2
	jp p,l6c5ah		;62f4
	scf			;62f7
	or h			;62f8
	xor e			;62f9
	adc a,b			;62fa
	adc a,d			;62fb
	ld d,l			;62fc
l62fdh:
	ld e,b			;62fd
	sub h			;62fe
	sub c			;62ff
	or c			;6300
	adc a,e			;6301
	dec (hl)		;6302
	rst 38h			;6303
	inc e			;6304
	ld l,(hl)		;6305
	sub l			;6306
	ld d,c			;6307
	add a,b			;6308
	ld a,a			;6309
	ret p			;630a
	res 0,c			;630b
	adc a,a			;630d
	ld a,a			;630e
	dec sp			;630f
	rst 38h			;6310
	rst 28h			;6311
	ld a,a			;6312
	xor h			;6313
	ld h,e			;6314
	jp pe,0c8f8h		;6315
	jr nc,l634ah		;6318
	add a,h			;631a
	cp c			;631b
	call m,0fdd6h		;631c
	jp nc,l4280h		;631f
	halt			;6322
	ld h,l			;6323
	call pe,07d98h		;6324
	add a,e			;6327
	defb 0fdh,0eeh,090h ;illegal sequence	;6328
	add a,l			;632b
	ld h,a			;632c
	add a,l			;632d
	adc a,d			;632e
	inc bc			;632f
	ld d,l			;6330
	ld (hl),l		;6331
	sub e			;6332
	ld c,c			;6333
	add a,b			;6334
	ex (sp),hl		;6335
	ld a,a			;6336
	sub l			;6337
	ld bc,l7a7bh		;6338
	ld d,(hl)		;633b
	rst 38h			;633c
	or e			;633d
	ld bc,09f84h		;633e
	call m,002c4h		;6341
	add a,c			;6344
	push af			;6345
	adc a,c			;6346
	ld a,c			;6347
	add a,b			;6348
	ld c,c			;6349
l634ah:
	rst 38h			;634a
	xor 0d8h		;634b
	ld a,a			;634d
	ld h,b			;634e
	ret m			;634f
	ld a,a			;6350
	call pe,07e00h		;6351
	ld e,a			;6354
	dec (hl)		;6355
	adc a,b			;6356
	and h			;6357
	ld sp,hl		;6358
	ld h,d			;6359
	push af			;635a
	xor l			;635b
	ld l,h			;635c
	ld b,00bh		;635d
	ccf			;635f
	or 083h			;6360
	di			;6362
	ld a,(06e82h)		;6363
	or c			;6366
	rst 8			;6367
	sbc a,a			;6368
	xor h			;6369
	sub e			;636a
	cp (hl)			;636b
	adc a,e			;636c
	add hl,hl		;636d
	add a,b			;636e
	ld sp,0caffh		;636f
	rst 38h			;6372
	exx			;6373
	adc a,(hl)		;6374
	add a,b			;6375
	ld h,d			;6376
	add a,c			;6377
	ld d,e			;6378
	ld (de),a		;6379
	add a,d			;637a
	add a,l			;637b
	ld a,a			;637c
	or h			;637d
	ld b,a			;637e
l637fh:
	ld a,(hl)		;637f
	and l			;6380
	add a,c			;6381
	xor h			;6382
	rst 38h			;6383
	ld a,e			;6384
	ld b,a			;6385
	ret m			;6386
	inc e			;6387
	nop			;6388
	jp m,0af7fh		;6389
	ld e,a			;638c
	ld iy,(0812dh)		;638d
	ld sp,0836eh		;6391
	add a,l			;6394
	ld e,b			;6395
	inc sp			;6396
	inc (hl)		;6397
	adc a,a			;6398
	ld l,b			;6399
	or d			;639a
	sub c			;639b
	adc a,(hl)		;639c
	inc sp			;639d
	ccf			;639e
	ld (hl),e		;639f
	ld a,a			;63a0
	ld c,h			;63a1
	ld a,h			;63a2
	ld a,a			;63a3
	call nc,0d984h		;63a4
	inc h			;63a7
	ld (bc),a		;63a8
	ret c			;63a9
	add hl,de		;63aa
	ld a,a			;63ab
	scf			;63ac
	ld l,b			;63ad
	rst 38h			;63ae
	out (07fh),a		;63af
	pop hl			;63b1
	ld l,a			;63b2
	inc bc			;63b3
	ld a,c			;63b4
	jp nc,0001ah		;63b5
	ld d,l			;63b8
	adc a,a			;63b9
	rst 38h			;63ba
	add a,c			;63bb
l63bch:
	inc sp			;63bc
	and c			;63bd
	ld d,h			;63be
	jp p,03349h		;63bf
	ld a,l			;63c2
	inc sp			;63c3
	xor h			;63c4
	cp b			;63c5
	ccf			;63c6
	ccf			;63c7
	ld l,b			;63c8
	ld l,a			;63c9
	add a,c			;63ca
	ld e,a			;63cb
	push af			;63cc
	sub d			;63cd
	ld e,(hl)		;63ce
	adc a,h			;63cf
	ld l,c			;63d0
	sub l			;63d1
	ld a,a			;63d2
	rst 18h			;63d3
	nop			;63d4
	ld (hl),e		;63d5
	add a,a			;63d6
	ld l,(hl)		;63d7
	ld (hl),a		;63d8
	defb 0fdh,033h,081h ;illegal sequence	;63d9
	inc l			;63dc
	and a			;63dd
	ld b,h			;63de
	add a,b			;63df
	ret po			;63e0
	or (hl)			;63e1
	cp 03dh			;63e2
	ld a,a			;63e4
	ld h,e			;63e5
	call m,0d68dh		;63e6
	scf			;63e9
	rst 10h			;63ea
	inc sp			;63eb
	inc b			;63ec
	jr l63bch		;63ed
	ld d,e			;63ef
	ld a,a			;63f0
	push bc			;63f1
	ret nz			;63f2
	ld de,091f2h		;63f3
	call pe,sub_7680h	;63f6
	ld h,a			;63f9
	add a,(hl)		;63fa
	ld h,e			;63fb
	adc a,b			;63fc
	and d			;63fd
	adc a,b			;63fe
	cp 0eah			;63ff
	nop			;6401
	rst 38h			;6402
	jr c,$-116		;6403
	sub c			;6405
	ld c,b			;6406
	push af			;6407
	ld a,a			;6408
	cp d			;6409
	add a,l			;640a
sub_640bh:
	cp 0f8h			;640b
	cpl			;640d
	ld hl,0fc11h		;640e
	ld de,08010h		;6411
	jp z,08000h		;6414
	ld e,l			;6417
	rst 28h			;6418
	rst 38h			;6419
	add a,h			;641a
	ld h,b			;641b
	cp 07ch			;641c
	dec de			;641e
	ld a,(hl)		;641f
	nop			;6420
	jp 0120ch		;6421
	add a,a			;6424
	inc c			;6425
	ld a,a			;6426
	add a,l			;6427
	ld de,0c9f4h		;6428
	rst 28h			;642b
	or l			;642c
	ld a,a			;642d
	rst 38h			;642e
	ld d,e			;642f
	ld d,a			;6430
	cp e			;6431
	add a,d			;6432
l6433h:
	adc a,b			;6433
	adc a,a			;6434
	inc c			;6435
	sub 086h		;6436
	ld (0fe19h),a		;6438
	ld l,b			;643b
	add a,b			;643c
	sbc a,a			;643d
	nop			;643e
	ld a,a			;643f
	inc e			;6440
	add a,c			;6441
	xor (hl)		;6442
	call m,07f31h		;6443
	call z,0ba80h		;6446
	rst 0			;6449
l644ah:
	rst 38h			;644a
	call nz,0f203h		;644b
	ld a,(hl)		;644e
	call p,0c67fh		;644f
	rla			;6452
	ld d,(hl)		;6453
	ld a,a			;6454
	jr c,l644ah		;6455
	ld (hl),d		;6457
	call pe,091feh		;6458
	inc a			;645b
	ld e,b			;645c
	add a,l			;645d
	ld d,(hl)		;645e
	ei			;645f
	jp p,l5c84h		;6460
	inc de			;6463
	adc a,e			;6464
	ld c,c			;6465
	adc a,h			;6466
	ld a,a			;6467
	ex de,hl		;6468
	adc a,b			;6469
	sbc a,c			;646a
	rst 30h			;646b
	inc a			;646c
	out (083h),a		;646d
	ld sp,0b780h		;646f
	call 0e1c7h		;6472
	ld d,c			;6475
	cp 0e8h			;6476
	ld h,a			;6478
	adc a,a			;6479
	rst 38h			;647a
	add a,e			;647b
	ld a,(hl)		;647c
	jp 0a68fh		;647d
l6480h:
	ret nz			;6480
	add a,d			;6481
	ld sp,0de7fh		;6482
	cp 0e1h			;6485
	push af			;6487
	ld e,a			;6488
	jp p,0eed5h		;6489
	or c			;648c
	ld b,013h		;648d
	ld e,b			;648f
	add a,e			;6490
	adc a,h			;6491
	ld c,d			;6492
	adc a,e			;6493
	inc h			;6494
	di			;6495
	sub h			;6496
	add hl,de		;6497
	ld (hl),06fh		;6498
	push af			;649a
	ld b,07fh		;649b
	rst 28h			;649d
	adc a,b			;649e
	adc a,c			;649f
l64a0h:
	di			;64a0
	in a,(080h)		;64a1
	dec e			;64a3
l64a4h:
	dec a			;64a4
	djnz l6433h		;64a5
	ld a,c			;64a7
	ld h,b			;64a8
	rst 8			;64a9
	add a,e			;64aa
	dec c			;64ab
sub_64ach:
	defb 0fdh,064h ;ld iyh,iyh	;64ac
	halt			;64ae
	ld d,b			;64af
	sbc a,a			;64b0
	ld a,(iy+07ah)		;64b1
	ld h,0e7h		;64b4
	call m,0378bh		;64b6
	ret nz			;64b9
	dec b			;64ba
	ld a,a			;64bb
	bit 3,c			;64bc
	adc a,h			;64be
	cp 0e4h			;64bf
	cp 071h			;64c1
	inc sp			;64c3
	ld a,(hl)		;64c4
	pop af			;64c5
	ld c,d			;64c6
	ld a,a			;64c7
	ld d,0f7h		;64c8
	inc sp			;64ca
	ld h,a			;64cb
	inc c			;64cc
	add a,l			;64cd
	sub d			;64ce
	ld l,086h		;64cf
	adc a,a			;64d1
	scf			;64d2
	sbc a,l			;64d3
	inc sp			;64d4
	ld a,a			;64d5
	rst 20h			;64d6
	and (hl)		;64d7
	add a,d			;64d8
	daa			;64d9
	adc a,h			;64da
	ld (hl),c		;64db
	ret z			;64dc
l64ddh:
	xor c			;64dd
	add a,c			;64de
	push hl			;64df
	ld (hl),a		;64e0
	ld a,(hl)		;64e1
	call 0d5d1h		;64e2
	ei			;64e5
	rst 28h			;64e6
	ld a,a			;64e7
	adc a,(hl)		;64e8
	ld h,(hl)		;64e9
	nop			;64ea
	add a,d			;64eb
	inc c			;64ec
	dec b			;64ed
	ld d,e			;64ee
	jr nc,l6539h		;64ef
	sub 08ch		;64f1
	add a,l			;64f3
	ld d,e			;64f4
	ld d,a			;64f5
	ld (hl),l		;64f6
	halt			;64f7
	sub (hl)		;64f8
	ld d,h			;64f9
	ld l,b			;64fa
	ld l,a			;64fb
	adc a,h			;64fc
	add a,b			;64fd
	add a,b			;64fe
	ld (hl),b		;64ff
	adc a,a			;6500
	rst 30h			;6501
	ld (hl),e		;6502
	ld (hl),e		;6503
	jr c,$+1		;6504
	ld h,h			;6506
	ld (hl),a		;6507
	rst 38h			;6508
	ld h,e			;6509
	cp d			;650a
	adc a,l			;650b
	nop			;650c
	call z,09796h		;650d
	rst 0			;6510
	inc de			;6511
	add hl,bc		;6512
	sub b			;6513
	adc a,b			;6514
	ld a,(0fdd6h)		;6515
	and e			;6518
	add a,b			;6519
	ld l,h			;651a
	djnz l64a4h		;651b
	cp d			;651d
	ld h,h			;651e
	ld l,e			;651f
	ld d,(hl)		;6520
	ld e,d			;6521
	ld h,a			;6522
	ld a,l			;6523
	sbc a,c			;6524
	cp 0f5h			;6525
	or (hl)			;6527
	ld sp,hl		;6528
	ld e,035h		;6529
	ld a,a			;652b
	inc l			;652c
	nop			;652d
	ld a,a			;652e
	ld e,e			;652f
	call z,083ffh		;6530
	dec (hl)		;6533
	xor d			;6534
	ld c,(hl)		;6535
	ld a,a			;6536
	inc d			;6537
	ld h,(hl)		;6538
l6539h:
	dec b			;6539
	add a,(hl)		;653a
	and b			;653b
	ret m			;653c
	di			;653d
	scf			;653e
	jr nz,l6579h		;653f
	add a,l			;6541
	ld a,d			;6542
	add a,a			;6543
	ld d,(hl)		;6544
l6545h:
	ld (hl),e		;6545
	adc a,b			;6546
	adc a,l			;6547
	or h			;6548
	di			;6549
	ld a,a			;654a
	inc hl			;654b
	sbc a,c			;654c
	sub c			;654d
	add a,d			;654e
	ld h,e			;654f
	add a,h			;6550
	dec h			;6551
	add a,b			;6552
	xor c			;6553
	add a,d			;6554
	sbc a,0ffh		;6555
	ld h,e			;6557
	ld a,a			;6558
	sbc a,(hl)		;6559
	ld e,(hl)		;655a
	and a			;655b
	ei			;655c
	ld h,l			;655d
	cp 01fh			;655e
	jr nc,$+129		;6560
	rrca			;6562
	ld a,(hl)		;6563
	ld l,h			;6564
l6565h:
	ld l,b			;6565
	dec hl			;6566
	cp a			;6567
	add a,e			;6568
	ld a,(bc)		;6569
	ld (hl),e		;656a
	ld l,e			;656b
	sbc a,b			;656c
	sub h			;656d
	ld d,(hl)		;656e
	ld h,e			;656f
	and (hl)		;6570
	ld (0b9f6h),hl		;6571
	sbc a,e			;6574
	ld e,a			;6575
	di			;6576
	jr $+117		;6577
l6579h:
	ld (l75ffh),hl		;6579
	adc a,l			;657c
	jp po,08df8h		;657d
	pop af			;6580
	jr c,l6586h		;6581
	ld c,a			;6583
	ld (de),a		;6584
	ld (hl),b		;6585
l6586h:
	ld a,a			;6586
	xor d			;6587
	add a,c			;6588
	ld c,a			;6589
	ld a,a			;658a
	dec e			;658b
	add a,h			;658c
	ld e,(hl)		;658d
	ld a,a			;658e
	dec de			;658f
	halt			;6590
	ld a,(hl)		;6591
	call m,013eeh		;6592
	ex (sp),hl		;6595
	call 0e2f7h		;6596
	inc sp			;6599
	ld e,053h		;659a
	ld h,a			;659c
	rla			;659d
	and h			;659e
	pop bc			;659f
	nop			;65a0
	ld a,(bc)		;65a1
	ld c,09dh		;65a2
	ld a,a			;65a4
sub_65a5h:
	jp z,l786bh		;65a5
	rst 28h			;65a8
	sbc a,c			;65a9
	or 022h			;65aa
	add a,e			;65ac
	jp (hl)			;65ad
	add a,a			;65ae
	ld h,h			;65af
	xor 0dah		;65b0
	add a,l			;65b2
	add hl,bc		;65b3
	ccf			;65b4
	ld h,a			;65b5
	ld d,e			;65b6
	ld a,b			;65b7
	ld h,e			;65b8
	ret m			;65b9
	or (hl)			;65ba
	adc a,b			;65bb
sub_65bch:
	call nc,03806h		;65bc
	ld h,b			;65bf
	sbc a,a			;65c0
	jp m,0c114h		;65c1
	ld a,c			;65c4
	add hl,de		;65c5
	halt			;65c6
	sbc a,c			;65c7
	ld a,a			;65c8
	ld b,h			;65c9
	ld b,a			;65ca
	ld b,h			;65cb
	add a,b			;65cc
	ld c,010h		;65cd
	adc a,d			;65cf
	cp e			;65d0
	ld h,l			;65d1
	xor l			;65d2
	call c,0819dh		;65d3
	ld c,d			;65d6
	ld h,a			;65d7
	jp po,0fbd7h		;65d8
	ret nz			;65db
	ld d,e			;65dc
	jp p,0647fh		;65dd
	jr nc,l6661h		;65e0
	and b			;65e2
	or l			;65e3
	rst 20h			;65e4
	ret z			;65e5
	ld d,(hl)		;65e6
	sbc a,c			;65e7
	add a,e			;65e8
	rst 30h			;65e9
	add a,b			;65ea
	call nz,093a2h		;65eb
	ld a,a			;65ee
	ld e,a			;65ef
	ld a,a			;65f0
	ld b,c			;65f1
	add a,a			;65f2
	scf			;65f3
	add a,a			;65f4
	dec (hl)		;65f5
	inc sp			;65f6
	add a,e			;65f7
	ld (09633h),a		;65f8
	dec hl			;65fb
	rst 38h			;65fc
	dec sp			;65fd
sub_65feh:
	adc a,c			;65fe
	dec l			;65ff
	jp m,0fdceh		;6600
	jp p,l78b7h		;6603
l6606h:
	ld l,d			;6606
	ld bc,l51f6h		;6607
	ld a,a			;660a
	add a,b			;660b
	or l			;660c
	add a,d			;660d
	or h			;660e
	push hl			;660f
	ex (sp),hl		;6610
	rst 10h			;6611
	ld (0fc56h),hl		;6612
	ld d,d			;6615
	scf			;6616
	rst 30h			;6617
	ei			;6618
	ld l,b			;6619
	sbc a,c			;661a
	pop hl			;661b
	ld d,(hl)		;661c
	ret m			;661d
	jr z,$+121		;661e
	ld d,a			;6620
	ld l,b			;6621
	and e			;6622
l6623h:
	ld (de),a		;6623
	xor e			;6624
	sbc a,e			;6625
	adc a,c			;6626
	sub c			;6627
	add a,b			;6628
	rst 8			;6629
	ld sp,hl		;662a
	dec h			;662b
	ld l,l			;662c
	ld a,c			;662d
	ld d,b			;662e
	add a,e			;662f
	ccf			;6630
	ld d,a			;6631
	di			;6632
	ld a,e			;6633
	add a,(hl)		;6634
	ld b,a			;6635
l6636h:
	ld a,(bc)		;6636
	halt			;6637
	rst 30h			;6638
l6639h:
	rst 38h			;6639
	inc hl			;663a
	ld (hl),e		;663b
	add a,e			;663c
	add a,a			;663d
	ld d,l			;663e
	jp nz,086a4h		;663f
	rst 0			;6642
	ld h,l			;6643
	ld d,b			;6644
	ld a,a			;6645
	call nc,09642h		;6646
	add a,b			;6649
	ld a,e			;664a
	ld a,a			;664b
	inc hl			;664c
	inc bc			;664d
	jr nc,l6639h		;664e
	daa			;6650
l6651h:
	add a,h			;6651
	ld h,a			;6652
	ei			;6653
	adc a,0fdh		;6654
	ret c			;6656
	sub (hl)		;6657
	sbc a,c			;6658
	ld (hl),e		;6659
	and d			;665a
	ret nz			;665b
	nop			;665c
	or b			;665d
	ld d,c			;665e
	and e			;665f
	rrca			;6660
l6661h:
	add a,b			;6661
	call nc,sub_64ach	;6662
	adc a,e			;6665
	ld d,(hl)		;6666
	ld h,a			;6667
	add a,(hl)		;6668
	xor a			;6669
	add a,b			;666a
	sbc a,c			;666b
	call p,0f39fh		;666c
	and (hl)		;666f
	adc a,b			;6670
	ld h,(hl)		;6671
	ld a,a			;6672
	ld c,e			;6673
	dec b			;6674
	halt			;6675
	sbc a,b			;6676
	and d			;6677
	adc a,c			;6678
	or a			;6679
	jp m,0824ah		;667a
	inc e			;667d
	sbc a,c			;667e
	ld a,(bc)		;667f
l6680h:
	di			;6680
	ld a,a			;6681
	add a,b			;6682
	inc l			;6683
	rst 30h			;6684
	and 0b6h		;6685
	ld e,c			;6687
	ld a,e			;6688
	or 0b9h			;6689
l668bh:
	jr nc,$+55		;668b
	cp 01bh			;668d
	ei			;668f
	inc d			;6690
	sbc a,e			;6691
	and e			;6692
	ld a,b			;6693
	ld a,a			;6694
	add a,c			;6695
	set 0,b			;6696
	ld d,l			;6698
	add a,b			;6699
	dec e			;669a
	add a,096h		;669b
	ld (hl),d		;669d
	defb 0edh ;next byte illegal after ed	;669e
	inc sp			;669f
	dec (hl)		;66a0
	pop af			;66a1
	ld l,d			;66a2
	add a,c			;66a3
	ld l,d			;66a4
	ccf			;66a5
	di			;66a6
	add a,080h		;66a7
	ld c,l			;66a9
	add a,d			;66aa
	adc a,b			;66ab
	ld sp,hl		;66ac
	adc a,l			;66ad
	or c			;66ae
	ld (hl),l		;66af
	scf			;66b0
	cp 02eh			;66b1
	ld l,h			;66b3
	ld de,0a47ch		;66b4
	rst 38h			;66b7
	add hl,sp		;66b8
	ld (bc),a		;66b9
	inc h			;66ba
	ld sp,hl		;66bb
	adc a,(hl)		;66bc
	ld a,a			;66bd
	dec h			;66be
	add a,b			;66bf
	dec e			;66c0
	jr nz,l6651h		;66c1
	ld a,a			;66c3
	and 0beh		;66c4
	ld d,a			;66c6
	and a			;66c7
	inc bc			;66c8
	adc a,a			;66c9
	ld d,e			;66ca
	jr nc,$+1		;66cb
	push hl			;66cd
	ld iy,(08e77h)		;66ce
	rst 38h			;66d2
	adc a,00ch		;66d3
	cp d			;66d5
	add a,(hl)		;66d6
	in a,(084h)		;66d7
	ld h,b			;66d9
	ld b,067h		;66da
	ld b,l			;66dc
	halt			;66dd
	add a,b			;66de
	ex de,hl		;66df
	sub a			;66e0
	pop af			;66e1
	ld hl,(08455h)		;66e2
	add a,0f5h		;66e5
	ld a,a			;66e7
	and e			;66e8
	ret m			;66e9
	ld a,e			;66ea
	scf			;66eb
	ld (hl),a		;66ec
	sub d			;66ed
	ld (hl),c		;66ee
	adc a,b			;66ef
	xor l			;66f0
	ld de,05086h		;66f1
	ld a,a			;66f4
	di			;66f5
	jp nc,04bffh		;66f6
	add a,b			;66f9
	rra			;66fa
	ld a,a			;66fb
	dec c			;66fc
	add a,a			;66fd
	inc h			;66fe
	add a,a			;66ff
	xor h			;6700
	adc a,h			;6701
	xor d			;6702
	inc bc			;6703
	rst 38h			;6704
	in a,(08dh)		;6705
	cp 078h			;6707
	ld h,a			;6709
	ld a,a			;670a
	sbc a,a			;670b
	nop			;670c
	jp z,0b289h		;670d
	xor b			;6710
	pop bc			;6711
	ex af,af'		;6712
	ld h,a			;6713
	ld h,l			;6714
	ld l,076h		;6715
	add hl,bc		;6717
	ld a,a			;6718
	inc de			;6719
	ld d,a			;671a
	ld a,a			;671b
	inc sp			;671c
	ld a,a			;671d
	ld b,c			;671e
	add a,(hl)		;671f
	ccf			;6720
	scf			;6721
	ld (hl),l		;6722
	inc sp			;6723
	adc a,d			;6724
	sbc a,b			;6725
	rst 38h			;6726
	ei			;6727
	adc a,b			;6728
	push bc			;6729
	ld a,h			;672a
	pop af			;672b
	rst 38h			;672c
	ld e,(hl)		;672d
	nop			;672e
	ld a,a			;672f
	xor a			;6730
	ld b,d			;6731
	ld a,a			;6732
	adc a,e			;6733
	call pe,0d638h		;6734
	di			;6737
	and e			;6738
	sub c			;6739
	cp b			;673a
	cp 0d3h			;673b
	add a,a			;673d
	add a,a			;673e
	and b			;673f
	sbc a,e			;6740
	defb 0edh ;next byte illegal after ed	;6741
	or 05ch			;6742
	dec (hl)		;6744
	ld bc,0221bh		;6745
	rlca			;6748
	jp (hl)			;6749
	inc (hl)		;674a
	jr c,$-119		;674b
	add a,c			;674d
	ld c,(hl)		;674e
	ld (hl),a		;674f
	jp m,l560ah		;6750
	ld d,a			;6753
	ld h,e			;6754
	sub a			;6755
	call sub_45f4h		;6756
	ld h,a			;6759
	adc a,a			;675a
	sbc a,h			;675b
	ld a,a			;675c
	set 7,(hl)		;675d
	sbc a,a			;675f
l6760h:
	nop			;6760
	add a,(hl)		;6761
l6762h:
	ret p			;6762
	ld h,l			;6763
	ld (hl),e		;6764
	add a,b			;6765
	ld c,l			;6766
	ld h,d			;6767
	ld a,a			;6768
	nop			;6769
	rst 38h			;676a
	ld a,02ch		;676b
	nop			;676d
	rst 20h			;676e
	dec b			;676f
	sbc a,d			;6770
	dec de			;6771
	sub (hl)		;6772
	cp 01eh			;6773
	adc a,b			;6775
	ld a,a			;6776
	inc a			;6777
	add a,b			;6778
	ld c,050h		;6779
	ld d,l			;677b
	ld d,b			;677c
	ld a,a			;677d
	ld (hl),b		;677e
l677fh:
	call pe,03316h		;677f
l6782h:
	ld l,b			;6782
	add a,l			;6783
	ld (hl),b		;6784
	ret p			;6785
sub_6786h:
	sub (hl)		;6786
	inc h			;6787
	di			;6788
	ld d,d			;6789
	inc bc			;678a
	ld e,a			;678b
	adc a,b			;678c
	ld sp,08437h		;678d
sub_6790h:
	pop bc			;6790
	ld d,a			;6791
	ld h,l			;6792
	inc a			;6793
	ld c,c			;6794
	rst 38h			;6795
	inc hl			;6796
	rst 10h			;6797
	ld a,a			;6798
	push bc			;6799
	add a,b			;679a
	ld c,l			;679b
	ld a,044h		;679c
	ld a,a			;679e
	ld c,b			;679f
	push bc			;67a0
	sbc a,e			;67a1
	ld d,l			;67a2
	ret p			;67a3
	push bc			;67a4
	ld c,l			;67a5
	ld de,l5ad6h		;67a6
	ld a,a			;67a9
	sbc a,a			;67aa
	sbc a,(hl)		;67ab
	ld a,a			;67ac
	ld a,a			;67ad
	add a,e			;67ae
	ld d,c			;67af
	rst 38h			;67b0
l67b1h:
	ret nz			;67b1
	ccf			;67b2
	ld (hl),088h		;67b3
	ld e,c			;67b5
	ccf			;67b6
	or 087h			;67b7
	ld h,c			;67b9
	ld h,(hl)		;67ba
	inc sp			;67bb
	ld a,d			;67bc
	ld sp,l7f33h		;67bd
	ld d,e			;67c0
	add a,(hl)		;67c1
	ret z			;67c2
	jr c,l6760h		;67c3
	sub e			;67c5
	add a,(hl)		;67c6
	ld a,(bc)		;67c7
	sub a			;67c8
	ld a,07eh		;67c9
	ld hl,(l668bh)		;67cb
	add a,b			;67ce
	dec sp			;67cf
	add hl,sp		;67d0
	ld (0ff10h),hl		;67d1
	cp b			;67d4
	rst 38h			;67d5
	di			;67d6
	xor (hl)		;67d7
	add ix,ix		;67d8
	ret po			;67da
	xor b			;67db
	rst 38h			;67dc
	jp (hl)			;67dd
	ld l,b			;67de
	ld a,a			;67df
	jp (hl)			;67e0
	defb 0fdh,0ddh,0e2h ;illegal sequence	;67e1
	nop			;67e4
	ld a,b			;67e5
	jp (hl)			;67e6
	ld hl,l68f3h		;67e7
	ld (hl),e		;67ea
	or 05bh			;67eb
	add a,b			;67ed
	rst 0			;67ee
	rst 28h			;67ef
	rst 28h			;67f0
	ei			;67f1
	ld h,(hl)		;67f2
	inc b			;67f3
	ld c,h			;67f4
	sub e			;67f5
	halt			;67f6
	jp z,0fec6h		;67f7
	ld a,024h		;67fa
	ld bc,l7880h		;67fc
	ld l,d			;67ff
	rst 38h			;6800
	rst 0			;6801
	ld a,a			;6802
	jr nz,l6807h		;6803
	ld a,a			;6805
	push bc			;6806
l6807h:
	in a,(05ch)		;6807
	ld d,a			;6809
	ret po			;680a
	ld (hl),l		;680b
	adc a,e			;680c
	xor b			;680d
	dec (hl)		;680e
	cp 0f4h			;680f
	rst 10h			;6811
	ld a,a			;6812
	cp h			;6813
	ld l,080h		;6814
	rlca			;6816
	add a,(hl)		;6817
	ld d,e			;6818
	jp nz,0eefah		;6819
	ld l,h			;681c
	ld (hl),e		;681d
	ld h,(hl)		;681e
	ld (hl),e		;681f
	defb 0fdh,032h,03fh ;illegal sequence	;6820
	inc bc			;6823
	add a,(hl)		;6824
	ret			;6825
	add a,b			;6826
	ld c,e			;6827
	cp 0c9h			;6828
	rlca			;682a
	nop			;682b
	ld a,a			;682c
	or 004h			;682d
	ld hl,02412h		;682f
	ld b,d			;6832
	adc a,l			;6833
	call po,07cffh		;6834
	cp b			;6837
	pop af			;6838
	call z,sub_7790h	;6839
	ld a,a			;683c
	ret p			;683d
	inc a			;683e
	nop			;683f
	ld a,a			;6840
	or (hl)			;6841
	cp 0b0h			;6842
	rst 28h			;6844
	ld (hl),l		;6845
	ld e,a			;6846
	ret po			;6847
	ld a,a			;6848
	ld h,(hl)		;6849
	ccf			;684a
	and d			;684b
	ld a,d			;684c
	ld a,a			;684d
	ld h,e			;684e
	ld a,a			;684f
	add a,b			;6850
	ld d,a			;6851
	add a,03dh		;6852
	call m,03600h		;6854
	ld (hl),b		;6857
	add a,c			;6858
	sub (hl)		;6859
	add a,e			;685a
	ld sp,l7f21h		;685b
	jp p,0353dh		;685e
	ld a,a			;6861
	rst 18h			;6862
	ld d,l			;6863
	ld a,a			;6864
	ld d,h			;6865
	add a,b			;6866
	in a,(082h)		;6867
	adc a,h			;6869
	or 07fh			;686a
	ld a,h			;686c
	di			;686d
	call p,sub_56f3h	;686e
	ld (hl),0feh		;6871
	push hl			;6873
	defb 0fdh,005h,0abh ;illegal sequence	;6874
	ld (hl),0fah		;6877
	ld (hl),e		;6879
	ret m			;687a
	ld a,a			;687b
	adc a,d			;687c
	ld de,08421h		;687d
	ld c,a			;6880
	ld a,a			;6881
	add a,(hl)		;6882
	jp p,0edeah		;6883
	dec a			;6886
	ld a,a			;6887
	ex (sp),hl		;6888
	cp 0d8h			;6889
	adc a,b			;688b
	ld d,b			;688c
	sub a			;688d
	add a,b			;688e
	ld e,l			;688f
	rst 20h			;6890
	ld c,c			;6891
	add a,b			;6892
	sbc a,l			;6893
	ld h,l			;6894
l6895h:
	sub d			;6895
	ld l,037h		;6896
	add a,h			;6898
	ld sp,hl		;6899
	add a,a			;689a
	ld l,a			;689b
	add a,a			;689c
	adc a,c			;689d
	ret nz			;689e
	inc h			;689f
	add a,(hl)		;68a0
	rst 20h			;68a1
	ld a,l			;68a2
	rst 8			;68a3
	ld a,a			;68a4
	or 035h			;68a5
	jr nc,l6895h		;68a7
	dec h			;68a9
	rst 38h			;68aa
	jp 0938ah		;68ab
	adc a,a			;68ae
	add hl,de		;68af
	rst 30h			;68b0
	ld a,a			;68b1
	and a			;68b2
	rst 10h			;68b3
	ld l,(hl)		;68b4
	or b			;68b5
	xor a			;68b6
	ld a,e			;68b7
	or a			;68b8
	ld e,a			;68b9
	add a,c			;68ba
	jp c,0da83h		;68bb
	cp h			;68be
	exx			;68bf
	jp m,0abf8h		;68c0
	call m,000cbh		;68c3
	adc a,a			;68c6
	ld a,a			;68c7
	sub a			;68c8
	cp 016h			;68c9
	cp 03ch			;68cb
	add hl,sp		;68cd
	ld a,a			;68ce
	rst 8			;68cf
	ld a,(bc)		;68d0
	ld a,(hl)		;68d1
	ld b,h			;68d2
	adc a,b			;68d3
	sbc a,a			;68d4
	adc a,c			;68d5
	inc bc			;68d6
	add a,b			;68d7
	ld (hl),h		;68d8
	sbc a,b			;68d9
	daa			;68da
	inc sp			;68db
	ld a,a			;68dc
	ld l,a			;68dd
	xor (hl)		;68de
	ret m			;68df
	ld sp,0f500h		;68e0
	sbc a,e			;68e3
	defb 0ddh,0fch,000h ;illegal sequence	;68e4
	xor (hl)		;68e7
	ld bc,09c7fh		;68e8
	ld (sub_767fh),hl	;68eb
	adc a,d			;68ee
	ld h,e			;68ef
	jp m,035bbh		;68f0
l68f3h:
	ld a,(hl)		;68f3
	jp 08f7fh		;68f4
	sub h			;68f7
	sbc a,(hl)		;68f8
	ld h,(hl)		;68f9
	ld a,a			;68fa
	rst 8			;68fb
	dec b			;68fc
	ld a,a			;68fd
	ld e,b			;68fe
	add a,b			;68ff
	push de			;6900
	ld (hl),002h		;6901
	ld a,h			;6903
	ld l,(hl)		;6904
	defb 0fdh,06ah ;ld iyl,d	;6905
	rst 38h			;6907
	rst 8			;6908
	rlca			;6909
	ld (hl),e		;690a
	ld a,a			;690b
	add a,0a4h		;690c
	rst 38h			;690e
	call 0f38eh		;690f
	ld a,a			;6912
	ret z			;6913
	ld a,h			;6914
	add a,b			;6915
	pop hl			;6916
	ld h,(hl)		;6917
	jp (hl)			;6918
	ld c,(hl)		;6919
	ex af,af'		;691a
	dec (hl)		;691b
	cp 0f7h			;691c
	ld e,088h		;691e
	inc bc			;6920
	dec b			;6921
	ld a,a			;6922
	or e			;6923
	add a,c			;6924
	ld (hl),l		;6925
	add a,e			;6926
	add a,e			;6927
	add hl,hl		;6928
	ret m			;6929
	jr l6981h		;692a
	or 080h			;692c
	ld h,l			;692e
	cp 0ech			;692f
	adc a,(hl)		;6931
	add a,h			;6932
	jp po,085fch		;6933
	ld (bc),a		;6936
	inc h			;6937
	ld b,c			;6938
	djnz $-5		;6939
	ld a,d			;693b
	ld b,a			;693c
	ld sp,hl		;693d
	dec c			;693e
	ld d,e			;693f
	xor 0dfh		;6940
	ld a,a			;6942
	ld a,(bc)		;6943
	call m,0d6f7h		;6944
	ld a,a			;6947
	dec (hl)		;6948
	ret c			;6949
	inc a			;694a
	ld (l6606h),hl		;694b
	ld h,e			;694e
	add a,l			;694f
	xor l			;6950
	dec sp			;6951
	adc a,l			;6952
	add a,b			;6953
	adc a,a			;6954
	defb 0fdh,0abh,07fh ;illegal sequence	;6955
	set 7,h			;6958
	ret p			;695a
	inc d			;695b
	ld b,h			;695c
	ld e,(hl)		;695d
	ld b,c			;695e
	ex af,af'		;695f
	ld a,a			;6960
	jr c,$-10		;6961
	sbc a,c			;6963
	ld a,c			;6964
	ld b,l			;6965
	dec l			;6966
	ld h,a			;6967
	jp (hl)			;6968
	ret			;6969
	dec b			;696a
	cp 02fh			;696b
	inc b			;696d
	ld a,a			;696e
	inc sp			;696f
	rst 10h			;6970
	ret c			;6971
	adc a,d			;6972
	ei			;6973
	xor b			;6974
	cp h			;6975
	jp pe,03381h		;6976
	ld a,a			;6979
	jp p,0121ah		;697a
	add a,c			;697d
	ld a,c			;697e
	ld a,a			;697f
	rst 38h			;6980
l6981h:
	rst 20h			;6981
	jr l6984h		;6982
l6984h:
	ld (hl),a		;6984
	jp p,0eb7fh		;6985
	sub 07fh		;6988
	ret po			;698a
	ld c,l			;698b
	dec b			;698c
	and c			;698d
	ld d,d			;698e
	pop af			;698f
	ld l,065h		;6990
	add a,d			;6992
	push de			;6993
	nop			;6994
	ld h,e			;6995
	call m,0f37ch		;6996
	push af			;6999
	rst 10h			;699a
	nop			;699b
	ld e,07fh		;699c
	ld d,d			;699e
	add a,b			;699f
	ld h,e			;69a0
	ld sp,hl		;69a1
	sbc a,a			;69a2
	ld a,(hl)		;69a3
	ld de,0e1feh		;69a4
	rst 38h			;69a7
	dec l			;69a8
	ld a,e			;69a9
	ld a,(hl)		;69aa
	ld h,a			;69ab
	ld a,a			;69ac
	ld h,c			;69ad
	ret z			;69ae
	rrca			;69af
	ld c,e			;69b0
	push af			;69b1
	add a,c			;69b2
	ld c,a			;69b3
	nop			;69b4
	ld a,a			;69b5
	pop bc			;69b6
	rst 18h			;69b7
	add a,l			;69b8
	ld c,083h		;69b9
	rst 8			;69bb
	ld sp,hl		;69bc
	jp p,0f3bdh		;69bd
	adc a,a			;69c0
	cp 027h			;69c1
	adc a,b			;69c3
	ei			;69c4
	di			;69c5
	ld a,a			;69c6
	xor 000h		;69c7
	or a			;69c9
	rst 18h			;69ca
	add a,e			;69cb
	add a,h			;69cc
	and a			;69cd
	ld h,(hl)		;69ce
	rrca			;69cf
	and b			;69d0
	ld (hl),078h		;69d1
	halt			;69d3
	add a,a			;69d4
	inc (hl)		;69d5
	add a,(hl)		;69d6
	ld d,a			;69d7
	ld h,(hl)		;69d8
	ld a,a			;69d9
	ret po			;69da
	cp h			;69db
	ld (0aa7fh),hl		;69dc
	jp pe,0f9a6h		;69df
	ld a,(de)		;69e2
	ld (hl),a		;69e3
	jp (hl)			;69e4
	jp (hl)			;69e5
	call m,0fa8eh		;69e6
	dec d			;69e9
	ld d,e			;69ea
	dec hl			;69eb
	ld d,e			;69ec
	jr nc,$+1		;69ed
	ret c			;69ef
	ld h,l			;69f0
	ld d,(hl)		;69f1
	rst 10h			;69f2
	xor 02ah		;69f3
	rst 0			;69f5
	jr nc,l6a1ch		;69f6
	ld (hl),a		;69f8
	ld a,b			;69f9
	add hl,bc		;69fa
	adc a,b			;69fb
	ld e,b			;69fc
	rst 30h			;69fd
l69feh:
	ld h,b			;69fe
	add a,l			;69ff
	ld a,c			;6a00
	cp h			;6a01
	ld c,057h		;6a02
	ld (de),a		;6a04
	rst 38h			;6a05
	jp (hl)			;6a06
	ret pe			;6a07
	ei			;6a08
	ld a,a			;6a09
	ex de,hl		;6a0a
	sub c			;6a0b
	ld e,e			;6a0c
	ld a,a			;6a0d
	ret p			;6a0e
	rla			;6a0f
	ld d,b			;6a10
	dec (hl)		;6a11
	rst 38h			;6a12
	jp pe,02577h		;6a13
	add a,(hl)		;6a16
	adc a,b			;6a17
	add a,b			;6a18
	ret z			;6a19
	ld b,033h		;6a1a
l6a1ch:
	ld (hl),h		;6a1c
	ld a,a			;6a1d
	cp 075h			;6a1e
	ld bc,057ffh		;6a20
	adc a,b			;6a23
	add a,l			;6a24
	adc a,a			;6a25
	ret p			;6a26
	ld h,b			;6a27
	call m,0297fh		;6a28
	nop			;6a2b
	inc b			;6a2c
	call m,044fah		;6a2d
	ld (hl),c		;6a30
	ld b,b			;6a31
	ld de,0befah		;6a32
	scf			;6a35
	ld sp,hl		;6a36
	xor c			;6a37
l6a38h:
	ld h,a			;6a38
	jp (hl)			;6a39
	ld (hl),l		;6a3a
	ld a,l			;6a3b
	ld d,l			;6a3c
	ret m			;6a3d
	jp m,071feh		;6a3e
	sub l			;6a41
	jp nc,0fe55h		;6a42
	dec a			;6a45
	ld h,d			;6a46
	or c			;6a47
	ld e,083h		;6a48
	adc a,a			;6a4a
	ld (hl),00eh		;6a4b
	nop			;6a4d
	add a,l			;6a4e
	rst 30h			;6a4f
	push af			;6a50
	adc a,b			;6a51
	ld (hl),008h		;6a52
	dec (hl)		;6a54
	ld d,e			;6a55
	or 087h			;6a56
	add a,b			;6a58
	adc a,a			;6a59
	ld h,(hl)		;6a5a
	add a,(hl)		;6a5b
	ld a,a			;6a5c
	jp z,0fdd2h		;6a5d
	add a,b			;6a60
	sub d			;6a61
	defb 0fdh,03ch,0f1h ;illegal sequence	;6a62
	ld l,c			;6a65
	inc bc			;6a66
	call m,0074fh		;6a67
	rst 38h			;6a6a
	ld a,h			;6a6b
	inc b			;6a6c
	nop			;6a6d
	ex af,af'		;6a6e
	ex de,hl		;6a6f
	add a,c			;6a70
	add a,e			;6a71
	rst 30h			;6a72
	jr c,l6aaah		;6a73
	cp 01eh			;6a75
	nop			;6a77
	dec (hl)		;6a78
	ret m			;6a79
	di			;6a7a
	adc a,a			;6a7b
	rst 38h			;6a7c
	ld (bc),a		;6a7d
	halt			;6a7e
	inc sp			;6a7f
	adc a,b			;6a80
	add a,a			;6a81
	ld (hl),l		;6a82
	ccf			;6a83
	dec hl			;6a84
	ld a,h			;6a85
	add a,(hl)		;6a86
	ld a,a			;6a87
	and l			;6a88
	ld bc,08712h		;6a89
	ld sp,09682h		;6a8c
	rst 38h			;6a8f
	add hl,sp		;6a90
	jp z,0bdffh		;6a91
	ld (hl),a		;6a94
	ld l,c			;6a95
	ld h,(hl)		;6a96
	defb 0fdh,08ch ;adc a,iyh	;6a97
	defb 0fdh,08fh,0ffh ;illegal sequence	;6a99
	add a,a			;6a9c
	or d			;6a9d
	defb 0ddh,051h,038h ;illegal sequence	;6a9e
	jp (hl)			;6aa1
	ld (0f0ffh),hl		;6aa2
	adc a,(hl)		;6aa5
	call nz,065c3h		;6aa6
	ld e,b			;6aa9
l6aaah:
	ld a,a			;6aaa
	dec (hl)		;6aab
	adc a,e			;6aac
	ld b,b			;6aad
	scf			;6aae
	ld h,a			;6aaf
	jr c,l6a38h		;6ab0
	ld b,h			;6ab2
	add a,l			;6ab3
	add a,e			;6ab4
	ld l,a			;6ab5
	ld e,e			;6ab6
	ret m			;6ab7
	adc a,h			;6ab8
	set 6,(hl)		;6ab9
	ret			;6abb
	ld a,a			;6abc
	ret p			;6abd
	sbc a,0b9h		;6abe
	dec a			;6ac0
	ld d,(hl)		;6ac1
	ld a,a			;6ac2
	ld (hl),a		;6ac3
	ei			;6ac4
	inc hl			;6ac5
	rst 38h			;6ac6
	ex (sp),hl		;6ac7
	ld c,a			;6ac8
l6ac9h:
	ld d,b			;6ac9
	add a,b			;6aca
	and h			;6acb
	ei			;6acc
l6acdh:
	add a,d			;6acd
	inc sp			;6ace
	jr c,l6ac9h		;6acf
	rst 30h			;6ad1
	ret pe			;6ad2
	adc a,h			;6ad3
	ret pe			;6ad4
	rst 38h			;6ad5
	or 0c2h			;6ad6
	add a,c			;6ad8
	ld b,h			;6ad9
	ld a,03fh		;6ada
	ld (hl),l		;6adc
	adc a,(hl)		;6add
	ld hl,(03866h)		;6ade
	sub l			;6ae1
	xor c			;6ae2
	sbc a,b			;6ae3
	add a,b			;6ae4
	ld a,a			;6ae5
	ld sp,hl		;6ae6
	ld a,(bc)		;6ae7
	inc bc			;6ae8
	cp 05bh			;6ae9
	jp (hl)			;6aeb
	ld (hl),a		;6aec
	sub a			;6aed
	rst 38h			;6aee
	sub c			;6aef
	jr nc,l6b71h		;6af0
	ret pe			;6af2
	jr c,l6acdh		;6af3
	rst 28h			;6af5
	ld (hl),083h		;6af6
	ld a,(l5075h)		;6af8
	ld b,h			;6afb
	ret c			;6afc
	add a,l			;6afd
	di			;6afe
	rst 38h			;6aff
	ld (0f87fh),hl		;6b00
	jp m,05309h		;6b03
	ld h,l			;6b06
	ld l,b			;6b07
	ld h,e			;6b08
	defb 0fdh,007h,067h ;illegal sequence	;6b09
	ld l,b			;6b0c
	add a,a			;6b0d
	ld a,a			;6b0e
	sub 022h		;6b0f
	or a			;6b11
	adc a,h			;6b12
	ld c,h			;6b13
	rst 38h			;6b14
	ld c,d			;6b15
	ld (iy-061h),h		;6b16
	rst 38h			;6b19
	and h			;6b1a
	dec b			;6b1b
	ld d,e			;6b1c
	di			;6b1d
	ld a,a			;6b1e
	dec b			;6b1f
	ret m			;6b20
	ld d,a			;6b21
	jr c,$+105		;6b22
	ld d,a			;6b24
	sub c			;6b25
	call p,0f553h		;6b26
	add a,c			;6b29
	sbc a,e			;6b2a
	ld a,a			;6b2b
	ld d,l			;6b2c
	add a,(hl)		;6b2d
	adc a,e			;6b2e
	ld d,a			;6b2f
	add a,h			;6b30
	ld bc,l5686h		;6b31
	ld h,e			;6b34
	ld l,b			;6b35
	ld (hl),b		;6b36
	push af			;6b37
	sbc a,09dh		;6b38
	nop			;6b3a
	ld c,a			;6b3b
	cp 038h			;6b3c
	adc a,h			;6b3e
	jp (hl)			;6b3f
	rst 38h			;6b40
l6b41h:
	inc a			;6b41
	ld h,e			;6b42
	jp (hl)			;6b43
	pop bc			;6b44
	defb 0fdh,07fh,00fh ;illegal sequence	;6b45
	ld a,a			;6b48
	ret nz			;6b49
	ld a,a			;6b4a
	ld c,h			;6b4b
	rst 38h			;6b4c
	or l			;6b4d
	ld d,l			;6b4e
	dec l			;6b4f
	rst 38h			;6b50
	ld d,b			;6b51
	ei			;6b52
	and b			;6b53
	ld h,e			;6b54
	rst 38h			;6b55
	ret m			;6b56
	ccf			;6b57
	sbc a,e			;6b58
	add a,b			;6b59
	adc a,c			;6b5a
	ret nc			;6b5b
	ld h,e			;6b5c
	jr c,l6b75h		;6b5d
	ld e,b			;6b5f
	ld d,l			;6b60
	ld a,b			;6b61
	add a,b			;6b62
	rra			;6b63
	ld h,a			;6b64
	ld h,b			;6b65
	ld a,a			;6b66
	sub c			;6b67
	ex de,hl		;6b68
l6b69h:
	sbc a,c			;6b69
	ld l,c			;6b6a
	call pe,0f903h		;6b6b
	ld a,a			;6b6e
	xor a			;6b6f
	ld e,l			;6b70
l6b71h:
	ld a,a			;6b71
	jr nc,l6b69h		;6b72
	ld h,a			;6b74
l6b75h:
	add a,a			;6b75
	ld e,a			;6b76
	ld b,a			;6b77
	ld l,a			;6b78
	rst 38h			;6b79
	jr nz,l6b81h		;6b7a
	ccf			;6b7c
	or 03fh			;6b7d
	ret m			;6b7f
	dec de			;6b80
l6b81h:
	adc a,b			;6b81
	inc sp			;6b82
	add a,(hl)		;6b83
	adc a,d			;6b84
	add a,d			;6b85
	ld h,(hl)		;6b86
l6b87h:
	di			;6b87
	add a,l			;6b88
	call sub_65a5h		;6b89
	add a,d			;6b8c
	ld c,(hl)		;6b8d
	ld (hl),b		;6b8e
	rst 38h			;6b8f
	ld a,c			;6b90
	ld a,07fh		;6b91
	ld e,b			;6b93
	rst 38h			;6b94
	ret m			;6b95
	ld (hl),a		;6b96
	inc iy			;6b97
	add a,b			;6b99
	ret po			;6b9a
	call p,0f393h		;6b9b
	ld a,a			;6b9e
	jr z,$+122		;6b9f
	push af			;6ba1
	rst 28h			;6ba2
	add hl,sp		;6ba3
	ld d,e			;6ba4
	push af			;6ba5
	dec bc			;6ba6
	dec b			;6ba7
	ld h,(hl)		;6ba8
	ld l,a			;6ba9
	rst 38h			;6baa
	ccf			;6bab
	ld (hl),e		;6bac
	sub b			;6bad
	inc b			;6bae
	add a,a			;6baf
	rst 38h			;6bb0
	sub e			;6bb1
	sub a			;6bb2
	add a,c			;6bb3
	nop			;6bb4
	add a,l			;6bb5
	ld (hl),l		;6bb6
	ld d,(hl)		;6bb7
	ld e,a			;6bb8
	push af			;6bb9
	jr c,l6b41h		;6bba
	and a			;6bbc
	add a,b			;6bbd
	sub d			;6bbe
	rst 38h			;6bbf
	ccf			;6bc0
l6bc1h:
	ld e,080h		;6bc1
	sbc a,038h		;6bc3
	cp 0bdh			;6bc5
	ld a,a			;6bc7
	ld hl,(0a5f1h)		;6bc8
	ld a,a			;6bcb
	cp 0a8h			;6bcc
	dec bc			;6bce
	ld l,a			;6bcf
	push af			;6bd0
	ld h,0ffh		;6bd1
	ld (hl),e		;6bd3
	add a,c			;6bd4
	nop			;6bd5
	ld (hl),e		;6bd6
	rst 30h			;6bd7
	rst 38h			;6bd8
	ld h,a			;6bd9
	add a,e			;6bda
	dec (hl)		;6bdb
	add a,a			;6bdc
	ld h,a			;6bdd
	inc c			;6bde
	ret m			;6bdf
	ld d,e			;6be0
	ccf			;6be1
	scf			;6be2
	add a,d			;6be3
	rst 30h			;6be4
	xor a			;6be5
	add a,b			;6be6
	ld e,a			;6be7
	ld a,a			;6be8
	dec sp			;6be9
	cp 04fh			;6bea
	ld l,c			;6bec
	ld a,l			;6bed
	sub b			;6bee
	ret c			;6bef
	rst 38h			;6bf0
	ret m			;6bf1
	ld e,l			;6bf2
	inc bc			;6bf3
	ex (sp),hl		;6bf4
	ret pe			;6bf5
	rrca			;6bf6
	inc a			;6bf7
	rst 30h			;6bf8
	adc a,b			;6bf9
	ld a,a			;6bfa
	ld b,b			;6bfb
	or 053h			;6bfc
	rst 38h			;6bfe
	ld (hl),a		;6bff
	ccf			;6c00
	ld e,b			;6c01
	xor h			;6c02
	add a,d			;6c03
	and c			;6c04
	add a,a			;6c05
	push af			;6c06
	rst 38h			;6c07
	ld de,0678fh		;6c08
	adc a,l			;6c0b
	dec (hl)		;6c0c
	add a,b			;6c0d
	cp h			;6c0e
	or d			;6c0f
	add a,b			;6c10
	ex (sp),hl		;6c11
	cp 0deh			;6c12
	ld (hl),l		;6c14
	cp 0edh			;6c15
	ret z			;6c17
	ld (hl),0feh		;6c18
	call m,sub_7f79h	;6c1a
	add a,b			;6c1d
	cp 089h			;6c1e
	ld b,035h		;6c20
	add a,e			;6c22
	defb 0fdh,08dh ;adc a,iyl	;6c23
	push bc			;6c25
	ld a,b			;6c26
	di			;6c27
	dec (hl)		;6c28
	adc a,l			;6c29
	add a,b			;6c2a
	ld a,b			;6c2b
	or 0ffh			;6c2c
	adc a,a			;6c2e
	ccf			;6c2f
	ret po			;6c30
	add a,b			;6c31
	push af			;6c32
	scf			;6c33
	inc d			;6c34
	ld l,b			;6c35
	add a,(hl)		;6c36
	ld e,a			;6c37
	adc a,l			;6c38
	ld h,a			;6c39
	add a,c			;6c3a
	exx			;6c3b
	defb 0fdh,02eh,04ch ;ld iyl,04ch	;6c3c
	ld d,(hl)		;6c3f
	xor (hl)		;6c40
	dec a			;6c41
	ld l,c			;6c42
	rst 18h			;6c43
	inc bc			;6c44
	ld a,a			;6c45
	dec hl			;6c46
	nop			;6c47
	rst 38h			;6c48
	defb 0ddh,013h,006h ;illegal sequence	;6c49
	or l			;6c4c
	dec e			;6c4d
	di			;6c4e
	ld d,e			;6c4f
	adc a,d			;6c50
	call c,08380h		;6c51
	scf			;6c54
	ld d,l			;6c55
	ld d,e			;6c56
	jp m,l5f21h		;6c57
l6c5ah:
	adc a,a			;6c5a
	dec (hl)		;6c5b
	adc a,d			;6c5c
	ld (hl),08ah		;6c5d
	inc de			;6c5f
	adc a,l			;6c60
	ld (08cf8h),hl		;6c61
	ld c,e			;6c64
	nop			;6c65
	add a,b			;6c66
	jp nc,0d720h		;6c67
	add a,031h		;6c6a
	ld d,(hl)		;6c6c
	ld d,e			;6c6d
	ld h,a			;6c6e
	jp (hl)			;6c6f
	rra			;6c70
	inc c			;6c71
	rst 38h			;6c72
	cp h			;6c73
	sbc a,(hl)		;6c74
	ld a,a			;6c75
	or h			;6c76
	adc a,(hl)		;6c77
	ld c,c			;6c78
	jp pe,0d80ah		;6c79
	dec b			;6c7c
	ld l,a			;6c7d
	or 026h			;6c7e
	ld d,(hl)		;6c80
	ld a,a			;6c81
	di			;6c82
	ld c,b			;6c83
	adc a,b			;6c84
	ld sp,hl		;6c85
	ld (hl),l		;6c86
	ld (0f75fh),hl		;6c87
	add a,d			;6c8a
	ld b,075h		;6c8b
	ld (hl),l		;6c8d
	rst 30h			;6c8e
	ld (hl),a		;6c8f
l6c90h:
	add a,a			;6c90
	ld sp,hl		;6c91
	jp m,0007ch		;6c92
	ld d,c			;6c95
	rst 38h			;6c96
	jp po,0f877h		;6c97
	ld l,c			;6c9a
	xor e			;6c9b
	add a,b			;6c9c
	jp po,0c051h		;6c9d
	dec d			;6ca0
	ret			;6ca1
	ret pe			;6ca2
	dec b			;6ca3
	inc a			;6ca4
	dec (hl)		;6ca5
	ld d,b			;6ca6
	dec bc			;6ca7
	ld (bc),a		;6ca8
	ld e,a			;6ca9
	di			;6caa
	ld d,l			;6cab
	ld (hl),07fh		;6cac
	ld d,b			;6cae
	rst 38h			;6caf
	add a,c			;6cb0
	rst 30h			;6cb1
	ld c,073h		;6cb2
	add a,l			;6cb4
	ld h,l			;6cb5
	ld d,e			;6cb6
	sbc a,c			;6cb7
	inc e			;6cb8
	ld h,l			;6cb9
	add a,c			;6cba
	di			;6cbb
	rst 0			;6cbc
	sub h			;6cbd
	adc a,a			;6cbe
	ld a,a			;6cbf
	add a,e			;6cc0
l6cc1h:
	halt			;6cc1
	ld a,a			;6cc2
	pop hl			;6cc3
	rst 0			;6cc4
	add a,b			;6cc5
	sub e			;6cc6
	xor d			;6cc7
	rst 30h			;6cc8
	nop			;6cc9
	ret nc			;6cca
	rrca			;6ccb
	ld (hl),a		;6ccc
	or e			;6ccd
	di			;6cce
	ld a,(bc)		;6ccf
	and c			;6cd0
	ld d,(hl)		;6cd1
	or 036h			;6cd2
	ld a,e			;6cd4
	sbc a,l			;6cd5
	ret m			;6cd6
	sub h			;6cd7
	adc a,c			;6cd8
	ld (hl),b		;6cd9
	sub a			;6cda
	add a,e			;6cdb
	xor d			;6cdc
	and a			;6cdd
	adc a,l			;6cde
	ld l,(hl)		;6cdf
	add hl,de		;6ce0
	cp 07fh			;6ce1
	jp (hl)			;6ce3
	ld a,(hl)		;6ce4
	ld (hl),a		;6ce5
	cp 02fh			;6ce6
	ld b,069h		;6ce8
	and e			;6cea
	dec (hl)		;6ceb
	add a,b			;6cec
	pop hl			;6ced
	rst 30h			;6cee
	ld a,a			;6cef
	ld d,b			;6cf0
	ld h,(hl)		;6cf1
	defb 0edh ;next byte illegal after ed	;6cf2
	ret m			;6cf3
	ld (hl),h		;6cf4
	add a,e			;6cf5
	ld h,(hl)		;6cf6
	rst 38h			;6cf7
	inc de			;6cf8
	ld h,(hl)		;6cf9
	inc sp			;6cfa
	ld h,l			;6cfb
	rst 30h			;6cfc
	ld h,078h		;6cfd
	djnz l6c90h		;6cff
	add a,b			;6d01
	ret nz			;6d02
	adc a,a			;6d03
	or 087h			;6d04
	or 0f7h			;6d06
	rra			;6d08
	add a,(hl)		;6d09
	or 000h			;6d0a
	nop			;6d0c
	ld e,a			;6d0d
	ld a,a			;6d0e
	add a,(hl)		;6d0f
	jp m,l77c7h		;6d10
	ld (hl),a		;6d13
	jp (hl)			;6d14
	call m,sub_7f7fh	;6d15
	inc h			;6d18
	cp 0bah			;6d19
	or a			;6d1b
	ld d,(hl)		;6d1c
	jp p,0e728h		;6d1d
	adc a,0e7h		;6d20
	ld a,a			;6d22
	ret m			;6d23
	jr z,$-6		;6d24
	ld (hl),0f3h		;6d26
	inc sp			;6d28
	sub e			;6d29
	ld (hl),l		;6d2a
	adc a,b			;6d2b
	add a,d			;6d2c
	dec d			;6d2d
	ld l,0f7h		;6d2e
	add a,l			;6d30
	ld a,086h		;6d31
	ld h,l			;6d33
	ld a,a			;6d34
	ret z			;6d35
	add a,c			;6d36
	adc a,006h		;6d37
	ld e,a			;6d39
	ld (hl),07eh		;6d3a
	ld d,069h		;6d3c
	xor l			;6d3e
	inc sp			;6d3f
	add a,c			;6d40
	pop hl			;6d41
	or 040h			;6d42
	inc b			;6d44
	ld d,l			;6d45
	ld d,a			;6d46
	halt			;6d47
	ld d,l			;6d48
	ret m			;6d49
	ld l,a			;6d4a
	ld (hl),a		;6d4b
	sbc a,(hl)		;6d4c
	adc a,d			;6d4d
	ld (hl),b		;6d4e
	add a,b			;6d4f
	or d			;6d50
	ld sp,hl		;6d51
	add a,b			;6d52
	ld (hl),d		;6d53
	sub c			;6d54
	ld sp,08c5fh		;6d55
	ld a,b			;6d58
	ld (hl),e		;6d59
	xor e			;6d5a
	sbc a,d			;6d5b
	xor d			;6d5c
	sbc a,h			;6d5d
	cp 07fh			;6d5e
	and a			;6d60
	ld h,(hl)		;6d61
	ld a,a			;6d62
	adc a,056h		;6d63
	ld sp,hl		;6d65
	ld a,a			;6d66
	sub h			;6d67
	ld d,b			;6d68
	jp p,088e0h		;6d69
	ld c,h			;6d6c
	add a,a			;6d6d
	cp d			;6d6e
	inc sp			;6d6f
	sbc a,c			;6d70
	ld a,070h		;6d71
	adc a,h			;6d73
	adc a,09ch		;6d74
	and b			;6d76
	rst 38h			;6d77
	scf			;6d78
	ld a,a			;6d79
	ld h,h			;6d7a
	rst 30h			;6d7b
	ld a,b			;6d7c
	ld a,a			;6d7d
	dec (hl)		;6d7e
	ld d,086h		;6d7f
	inc sp			;6d81
	ret m			;6d82
	xor d			;6d83
	defb 0ddh,0f5h,07ch ;illegal sequence	;6d84
	or (hl)			;6d87
	defb 0fdh,0e0h,066h ;illegal sequence	;6d88
	sbc a,a			;6d8b
	add a,(iy-001h)		;6d8c
	inc a			;6d8f
	inc hl			;6d90
	add a,b			;6d91
	jp c,l59f5h		;6d92
	ld c,e			;6d95
	jr nc,$+1		;6d96
	add a,d			;6d98
	inc sp			;6d99
	add a,b			;6d9a
	jr nz,l6e15h		;6d9b
	ld l,b			;6d9d
	add a,e			;6d9e
	add a,(hl)		;6d9f
	ld (hl),b		;6da0
	ld l,b			;6da1
	dec c			;6da2
	halt			;6da3
	ld d,c			;6da4
	ld h,l			;6da5
	ld a,c			;6da6
	rst 30h			;6da7
	ld (de),a		;6da8
	add a,a			;6da9
	halt			;6daa
	add a,e			;6dab
	nop			;6dac
	add a,l			;6dad
	dec (hl)		;6dae
	ld a,a			;6daf
	di			;6db0
	halt			;6db1
	add a,l			;6db2
	ld h,e			;6db3
	ld a,(hl)		;6db4
	nop			;6db5
	ld a,a			;6db6
	ld (0ff35h),hl		;6db7
	cpl			;6dba
	ld a,a			;6dbb
	sbc a,(hl)		;6dbc
	add a,b			;6dbd
	ld e,(hl)		;6dbe
	rrca			;6dbf
	ret pe			;6dc0
	rst 20h			;6dc1
	add a,d			;6dc2
	inc e			;6dc3
	ld h,d			;6dc4
	ret pe			;6dc5
	sub e			;6dc6
	inc hl			;6dc7
	adc a,a			;6dc8
	add a,b			;6dc9
	jr c,l6e32h		;6dca
	inc c			;6dcc
	inc h			;6dcd
	ld (hl),a		;6dce
	ld (hl),l		;6dcf
	rst 30h			;6dd0
	sub e			;6dd1
	defb 0fdh,0b8h,050h ;illegal sequence	;6dd2
	ld h,e			;6dd5
	add a,e			;6dd6
l6dd7h:
	pop af			;6dd7
	sub h			;6dd8
	ld (hl),e		;6dd9
	add a,b			;6dda
	sub e			;6ddb
	nop			;6ddc
	ld a,a			;6ddd
	pop af			;6dde
	rrca			;6ddf
	inc sp			;6de0
	ld h,(hl)		;6de1
	ld a,l			;6de2
	adc a,d			;6de3
	rst 38h			;6de4
	ld e,d			;6de5
	ld c,d			;6de6
	ld h,l			;6de7
	add a,b			;6de8
	rst 0			;6de9
	add a,c			;6dea
	sbc a,h			;6deb
	call p,05370h		;6dec
	adc a,a			;6def
	cp e			;6df0
	dec hl			;6df1
	ld (hl),b		;6df2
	di			;6df3
	ld b,c			;6df4
	rst 30h			;6df5
	jr c,l6e4dh		;6df6
	add a,c			;6df8
	xor h			;6df9
	and l			;6dfa
	ld (hl),a		;6dfb
	add a,b			;6dfc
	djnz l6e3eh		;6dfd
	ld de,l7335h		;6dff
	di			;6e02
	inc e			;6e03
	ld e,a			;6e04
	inc sp			;6e05
	rst 30h			;6e06
	xor b			;6e07
	push hl			;6e08
	ld a,a			;6e09
	pop af			;6e0a
	and l			;6e0b
	ld (bc),a		;6e0c
	defb 0fdh,0b7h,055h ;illegal sequence	;6e0d
	ld a,a			;6e10
	pop de			;6e11
	add a,d			;6e12
	cp c			;6e13
	add a,b			;6e14
l6e15h:
	ld l,0f4h		;6e15
	call p,033c2h		;6e17
	add a,c			;6e1a
	cp h			;6e1b
	rst 0			;6e1c
	or 0f5h			;6e1d
	ld (hl),l		;6e1f
	di			;6e20
	call 08256h		;6e21
	jp pe,l5080h		;6e24
	ld d,e			;6e27
	di			;6e28
	or h			;6e29
	sub d			;6e2a
	ld a,(de)		;6e2b
	inc sp			;6e2c
	push af			;6e2d
	ld (hl),0a7h		;6e2e
	rst 20h			;6e30
l6e31h:
	pop af			;6e31
l6e32h:
	xor 05bh		;6e32
	rst 30h			;6e34
	push bc			;6e35
	xor (hl)		;6e36
	inc hl			;6e37
	ld h,b			;6e38
	ei			;6e39
	ld e,h			;6e3a
	ld e,a			;6e3b
	ld l,b			;6e3c
	ld a,a			;6e3d
l6e3eh:
	inc a			;6e3e
	add a,b			;6e3f
	di			;6e40
	add a,b			;6e41
	ld e,09ah		;6e42
	ld (hl),c		;6e44
	ld d,l			;6e45
	rst 18h			;6e46
	add a,c			;6e47
	ld b,l			;6e48
	ld e,a			;6e49
	push af			;6e4a
	inc bc			;6e4b
	ld l,b			;6e4c
l6e4dh:
	push af			;6e4d
	ld h,(hl)		;6e4e
	adc a,a			;6e4f
	sbc a,h			;6e50
	jr nc,l6dd7h		;6e51
	ld h,b			;6e53
	ccf			;6e54
	add a,e			;6e55
	ccf			;6e56
	adc a,c			;6e57
	ei			;6e58
	ld h,e			;6e59
	ld a,a			;6e5a
	ret m			;6e5b
	ld sp,hl		;6e5c
	or (hl)			;6e5d
	ld a,l			;6e5e
	ld a,a			;6e5f
	cpl			;6e60
	inc bc			;6e61
	ld a,a			;6e62
	adc a,c			;6e63
	dec b			;6e64
	ex (sp),hl		;6e65
	rst 0			;6e66
	ld a,a			;6e67
	and a			;6e68
	sub b			;6e69
	jp 03356h		;6e6a
	ld (hl),04dh		;6e6d
	pop bc			;6e6f
	ld h,(hl)		;6e70
	call 07b25h		;6e71
	call m,0f758h		;6e74
	add a,092h		;6e77
	ld h,l			;6e79
	rst 38h			;6e7a
	and 08fh		;6e7b
	rst 38h			;6e7d
	ld d,a			;6e7e
	adc a,b			;6e7f
l6e80h:
	ld a,a			;6e80
	out (083h),a		;6e81
	ex de,hl		;6e83
	ld a,a			;6e84
	ld e,078h		;6e85
	ld a,b			;6e87
	dec d			;6e88
	ld d,(hl)		;6e89
	ex (sp),hl		;6e8a
	sub (hl)		;6e8b
	cp a			;6e8c
	rst 28h			;6e8d
	inc h			;6e8e
	ld a,c			;6e8f
	ld c,0b2h		;6e90
	ld h,l			;6e92
	defb 0fdh,0b1h,084h ;illegal sequence	;6e93
	nop			;6e96
	nop			;6e97
	ld sp,hl		;6e98
	ccf			;6e99
	ld a,a			;6e9a
l6e9bh:
	ld d,l			;6e9b
	add a,c			;6e9c
	cp h			;6e9d
	ld sp,0f0feh		;6e9e
	ld a,h			;6ea1
	nop			;6ea2
	sbc a,l			;6ea3
l6ea4h:
	and l			;6ea4
	ld a,a			;6ea5
	ld a,a			;6ea6
	rrca			;6ea7
	add a,b			;6ea8
	ld d,083h		;6ea9
	ld a,(090c9h)		;6eab
	sbc a,023h		;6eae
	inc c			;6eb0
	ld d,c			;6eb1
	rst 28h			;6eb2
	ld a,00ch		;6eb3
	cp h			;6eb5
	jr nz,l6ea4h		;6eb6
	cp a			;6eb8
	push bc			;6eb9
	ld (hl),b		;6eba
	cp 0b8h			;6ebb
	ld h,e			;6ebd
	call m,0e9c7h		;6ebe
	sbc a,(hl)		;6ec1
	rla			;6ec2
	call z,08153h		;6ec3
	xor (hl)		;6ec6
	ld a,(hl)		;6ec7
	ld b,a			;6ec8
	ret nc			;6ec9
	ret po			;6eca
	inc b			;6ecb
	add hl,bc		;6ecc
	cp e			;6ecd
	cp e			;6ece
	ret nc			;6ecf
	ld sp,hl		;6ed0
	ld a,(hl)		;6ed1
	inc hl			;6ed2
	rlca			;6ed3
	call m,sub_7d78h	;6ed4
	adc a,b			;6ed7
	ld a,a			;6ed8
	ld a,a			;6ed9
	add a,h			;6eda
	ld d,e			;6edb
	add a,c			;6edc
	dec a			;6edd
	dec d			;6ede
	sbc a,a			;6edf
	inc bc			;6ee0
	jr nc,l6f39h		;6ee1
	add a,d			;6ee3
	sbc a,e			;6ee4
	rra			;6ee5
	cp h			;6ee6
	ret			;6ee7
	defb 0ddh,07fh,090h ;illegal sequence	;6ee8
	inc bc			;6eeb
	ei			;6eec
	ld a,a			;6eed
	ld l,l			;6eee
	add a,d			;6eef
	sbc a,b			;6ef0
	rst 38h			;6ef1
	pop af			;6ef2
	call m,02055h		;6ef3
	sbc a,c			;6ef6
	cp h			;6ef7
	call z,sub_4bcch	;6ef8
	sbc a,c			;6efb
	add a,b			;6efc
	xor (hl)		;6efd
	rst 38h			;6efe
	ld a,l			;6eff
	ld d,l			;6f00
	cp 0f3h			;6f01
	ret m			;6f03
	ld l,c			;6f04
	ld (de),a		;6f05
	ld (hl),066h		;6f06
	add a,b			;6f08
	rst 20h			;6f09
	ld a,(hl)		;6f0a
	ret m			;6f0b
	ld (0fb09h),hl		;6f0c
	call z,03d00h		;6f0f
	call m,013beh		;6f12
	cpl			;6f15
	rst 38h			;6f16
	rst 18h			;6f17
	ld a,a			;6f18
	jp p,080e9h		;6f19
	sub 0ffh		;6f1c
	out (07fh),a		;6f1e
	xor 007h		;6f20
	sbc a,h			;6f22
	sbc a,a			;6f23
	cp e			;6f24
	call z,013cfh		;6f25
	or a			;6f28
	ld a,a			;6f29
	defb 0edh ;next byte illegal after ed	;6f2a
	sub (hl)		;6f2b
	inc sp			;6f2c
	ld d,e			;6f2d
	add a,d			;6f2e
	or c			;6f2f
	add a,b			;6f30
	sbc a,0fch		;6f31
	cp d			;6f33
	rst 0			;6f34
	cp 0c6h			;6f35
	rst 38h			;6f37
	rrca			;6f38
l6f39h:
	ret			;6f39
	call m,0f0cfh		;6f3a
	inc d			;6f3d
	ld h,a			;6f3e
	ld b,h			;6f3f
	nop			;6f40
	xor (hl)		;6f41
	and a			;6f42
	ld l,c			;6f43
	rlca			;6f44
	ld (hl),b		;6f45
	rst 38h			;6f46
	dec a			;6f47
	ld a,035h		;6f48
	ld a,a			;6f4a
	jp pe,l6782h		;6f4b
	ld a,a			;6f4e
	cp a			;6f4f
	ld a,(hl)		;6f50
	cp h			;6f51
	nop			;6f52
	dec bc			;6f53
	inc b			;6f54
	rst 8			;6f55
	cp h			;6f56
	sbc a,h			;6f57
	sbc a,c			;6f58
	sub b			;6f59
	rst 38h			;6f5a
	ld a,l			;6f5b
	or h			;6f5c
	add a,b			;6f5d
	rst 20h			;6f5e
	ret po			;6f5f
	ld d,l			;6f60
	rst 38h			;6f61
	defb 0fdh,076h,083h ;illegal sequence	;6f62
	rst 20h			;6f65
	dec d			;6f66
	add a,090h		;6f67
	rla			;6f69
	jp m,002f7h		;6f6a
	cp e			;6f6d
	cp h			;6f6e
	call m,0ccc9h		;6f6f
	rst 38h			;6f72
	dec a			;6f73
	rst 38h			;6f74
	ld a,a			;6f75
	halt			;6f76
	and e			;6f77
	ld d,d			;6f78
	add a,e			;6f79
	in a,(03eh)		;6f7a
	add a,(hl)		;6f7c
	nop			;6f7d
	ld a,a			;6f7e
sub_6f7fh:
	call po,sub_7fcbh	;6f7f
	ei			;6f82
	rra			;6f83
	ret			;6f84
	sbc a,c			;6f85
	nop			;6f86
	ld a,a			;6f87
	add a,b			;6f88
	call z,0ff95h		;6f89
	rst 20h			;6f8c
	ld a,a			;6f8d
	cp 0deh			;6f8e
	ld e,d			;6f90
	jp (hl)			;6f91
	call p,086e6h		;6f92
	jr c,l6f97h		;6f95
l6f97h:
	ld h,e			;6f97
	nop			;6f98
	add a,b			;6f99
	defb 0ddh,0fah,081h ;illegal sequence	;6f9a
	ret			;6f9d
	rst 8			;6f9e
	cp 02fh			;6f9f
	rlca			;6fa1
	ld a,a			;6fa2
	sub 035h		;6fa3
	ld a,h			;6fa5
	ld h,l			;6fa6
	ld a,a			;6fa7
	xor a			;6fa8
	ld (hl),a		;6fa9
	ccf			;6faa
	ccf			;6fab
	add a,a			;6fac
	rst 20h			;6fad
	ld a,a			;6fae
	adc a,d			;6faf
	defb 0fdh,07bh,092h ;illegal sequence	;6fb0
	sbc a,c			;6fb3
	nop			;6fb4
	sbc a,a			;6fb5
	defb 0fdh,05dh ;ld e,iyl	;6fb6
	cp 07fh			;6fb8
	or l			;6fba
	inc bc			;6fbb
	sbc a,0d4h		;6fbc
	rst 38h			;6fbe
	ret m			;6fbf
	dec de			;6fc0
	ld a,a			;6fc1
	add a,b			;6fc2
	dec l			;6fc3
	ex (sp),hl		;6fc4
	ei			;6fc5
	rst 18h			;6fc6
	nop			;6fc7
	sbc a,(hl)		;6fc8
	defb 0fdh,07ch ;ld a,iyh	;6fc9
	ld d,015h		;6fcb
	rst 38h			;6fcd
	ret p			;6fce
	ret m			;6fcf
	nop			;6fd0
	ld a,(hl)		;6fd1
	ld a,a			;6fd2
	dec h			;6fd3
	add a,c			;6fd4
	sub d			;6fd5
	add a,b			;6fd6
	in a,(055h)		;6fd7
	add a,b			;6fd9
	rst 8			;6fda
	ld a,a			;6fdb
	xor h			;6fdc
	rst 38h			;6fdd
	ld sp,hl		;6fde
	adc a,h			;6fdf
	add a,b			;6fe0
	and a			;6fe1
	cp 082h			;6fe2
	rst 38h			;6fe4
	cp 021h			;6fe5
	ld (hl),a		;6fe7
	ld b,060h		;6fe8
	defb 0fdh,0ddh,07eh ;illegal sequence	;6fea
	ld a,a			;6fed
	ld (08035h),hl		;6fee
	ld e,e			;6ff1
	ld e,a			;6ff2
	inc sp			;6ff3
	dec bc			;6ff4
	ld a,(hl)		;6ff5
	ld d,b			;6ff6
	rrca			;6ff7
	ld sp,hl		;6ff8
	rst 38h			;6ff9
	sbc a,a			;6ffa
	ld a,(hl)		;6ffb
	sbc a,h			;6ffc
	ld a,a			;6ffd
	sub h			;6ffe
	inc bc			;6fff
	jp l7ffeh		;7000
	ret p			;7003
	rst 20h			;7004
	add a,b			;7005
	ld h,l			;7006
	add a,b			;7007
	add a,l			;7008
	ld h,l			;7009
	defb 0fdh,0bdh ;cp iyl	;700a
	out (0fch),a		;700c
	rlca			;700e
	rst 38h			;700f
	call m,09fcch		;7010
	rla			;7013
	pop bc			;7014
	rst 38h			;7015
	cp a			;7016
	inc sp			;7017
	ld b,088h		;7018
	scf			;701a
	ld a,a			;701b
	pop af			;701c
	ld sp,hl		;701d
	nop			;701e
	ei			;701f
	ld a,a			;7020
	ld a,b			;7021
	rst 30h			;7022
	ld d,c			;7023
	rst 38h			;7024
	nop			;7025
	cp 0f0h			;7026
	defb 0fdh,000h,04fh ;illegal sequence	;7028
	inc sp			;702b
	ld a,a			;702c
	add a,08eh		;702d
	add a,b			;702f
	sbc a,e			;7030
l7031h:
	ld d,b			;7031
	rst 38h			;7032
	call p,0aa82h		;7033
	xor d			;7036
	xor a			;7037
	cp e			;7038
	rst 38h			;7039
	cp 0c4h			;703a
	cp a			;703c
	add a,b			;703d
	ld e,a			;703e
	ld a,a			;703f
	sub a			;7040
	rst 38h			;7041
	ld b,e			;7042
	ld l,b			;7043
	ld a,a			;7044
	ret p			;7045
	ret p			;7046
	and l			;7047
	pop hl			;7048
	add a,(hl)		;7049
	ld d,e			;704a
	ei			;704b
	and l			;704c
	add a,(hl)		;704d
	rra			;704e
	ld a,a			;704f
	ld b,b			;7050
	xor d			;7051
	xor e			;7052
	cp d			;7053
	ld c,d			;7054
	ccf			;7055
	ld a,h			;7056
	cp e			;7057
	nop			;7058
	add a,c			;7059
	ld d,e			;705a
	ld a,e			;705b
	pop af			;705c
l705dh:
	pop de			;705d
	inc b			;705e
	ld (bc),a		;705f
	jr nc,$+53		;7060
	ld a,a			;7062
	ret p			;7063
	ld e,077h		;7064
	ld (hl),a		;7066
	jp (hl)			;7067
	pop af			;7068
	ld (hl),033h		;7069
	nop			;706b
	inc l			;706c
	xor h			;706d
	cp 047h			;706e
	ld d,e			;7070
	defb 0fdh,0cch,0bbh ;illegal sequence	;7071
	ld a,(0bba3h)		;7074
	nop			;7077
	ld a,(hl)		;7078
	ret			;7079
	ld a,d			;707a
	ld (de),a		;707b
	ld d,l			;707c
	rst 38h			;707d
	push af			;707e
sub_707fh:
	inc b			;707f
	ld d,a			;7080
	cp (hl)			;7081
	in a,(0e3h)		;7082
	ld a,c			;7084
	ld a,l			;7085
	ld a,a			;7086
	ld c,003h		;7087
	ld a,a			;7089
	inc sp			;708a
	ld b,07fh		;708b
	and 086h		;708d
	ld a,(hl)		;708f
	xor e			;7090
	xor d			;7091
	ccf			;7092
	ld a,e			;7093
	jp z,l4ffeh		;7094
	add a,b			;7097
	jp po,07f77h		;7098
	exx			;709b
	ld h,a			;709c
	ld a,a			;709d
	jp po,0f55ah		;709e
	ld c,l			;70a1
	ld a,e			;70a2
	jr nc,l7124h		;70a3
	rst 30h			;70a5
	add a,b			;70a6
	sub e			;70a7
	ld a,(hl)		;70a8
	ld b,h			;70a9
	and e			;70aa
	sbc a,c			;70ab
	ei			;70ac
	call m,0ffa6h		;70ad
	out (000h),a		;70b0
	cp h			;70b2
	add a,b			;70b3
	sbc a,(hl)		;70b4
	ld a,(bc)		;70b5
	rst 38h			;70b6
	ld sp,hl		;70b7
	and l			;70b8
	rst 10h			;70b9
	ld l,c			;70ba
	ld a,a			;70bb
	cp 078h			;70bc
	ld a,07fh		;70be
	ld a,000h		;70c0
	rst 18h			;70c2
	dec b			;70c3
	ld a,a			;70c4
	ld a,(de)		;70c5
	ld a,(bc)		;70c6
	ld a,a			;70c7
	sub (hl)		;70c8
	nop			;70c9
	ccf			;70ca
	rst 30h			;70cb
	ld b,h			;70cc
	defb 0fdh,0cbh,06eh,0b9h ;res 7,(iy+06eh) & ld c,(iy+06eh)	;70cd
l70d1h:
	add a,b			;70d1
	jp z,04682h		;70d2
	adc a,e			;70d5
	ld h,d			;70d6
	nop			;70d7
	defb 0ddh,0ffh,0feh ;illegal sequence	;70d8
	add a,(hl)		;70db
	ld h,(hl)		;70dc
	rst 38h			;70dd
	or e			;70de
	ret c			;70df
	sbc a,c			;70e0
	ld a,a			;70e1
	xor 076h		;70e2
	call pe,0057fh		;70e4
	ld h,a			;70e7
	di			;70e8
	defb 0edh ;next byte illegal after ed	;70e9
	call pe,sub_6790h	;70ea
	add a,(hl)		;70ed
	rst 20h			;70ee
	pop af			;70ef
	scf			;70f0
	ld d,l			;70f1
	ld a,a			;70f2
	rst 0			;70f3
	ld a,h			;70f4
	jr nz,l70d1h		;70f5
	ld a,(hl)		;70f7
	cp h			;70f8
	rst 38h			;70f9
	ret			;70fa
	ei			;70fb
	cp c			;70fc
	ld a,a			;70fd
	ld (hl),a		;70fe
	ld a,(0ccbbh)		;70ff
	add a,h			;7102
	rst 10h			;7103
	nop			;7104
	xor 07fh		;7105
	ret po			;7107
	ld a,035h		;7108
	ld a,a			;710a
	dec bc			;710b
	sub b			;710c
	cp c			;710d
	ld a,a			;710e
	inc h			;710f
	inc bc			;7110
	ld l,b			;7111
	adc a,d			;7112
	add hl,bc		;7113
	add a,(hl)		;7114
	ld h,e			;7115
	nop			;7116
	ex af,af'		;7117
	add hl,bc		;7118
	ld (hl),e		;7119
	add a,a			;711a
	ld a,06eh		;711b
	ld d,e			;711d
	rst 38h			;711e
	ret m			;711f
	and e			;7120
	defb 0fdh,010h,033h ;illegal sequence	;7121
l7124h:
	ld a,b			;7124
	rst 8			;7125
	cp h			;7126
	sbc a,e			;7127
	dec (hl)		;7128
	cp a			;7129
	sbc a,h			;712a
	rst 38h			;712b
	ld (hl),l		;712c
	nop			;712d
	sub b			;712e
	rst 38h			;712f
	cp a			;7130
l7131h:
	ld (hl),a		;7131
	ld a,a			;7132
	ld l,a			;7133
	inc sp			;7134
	ld a,a			;7135
	jr c,l7131h		;7136
	rst 10h			;7138
	ld (hl),a		;7139
	ld a,a			;713a
	add a,a			;713b
	rst 28h			;713c
	ret p			;713d
	jr nc,$-89		;713e
	sbc a,l			;7140
	xor a			;7141
	adc a,b			;7142
	ld c,a			;7143
	ld a,a			;7144
	add a,a			;7145
	call p,0f6b6h		;7146
	ld (hl),h		;7149
	call m,014c9h		;714a
	set 7,a			;714d
	sbc a,a			;714f
	defb 0fdh,0f2h,047h ;illegal sequence	;7150
	rst 38h			;7153
	jp 0e14eh		;7154
	rst 38h			;7157
	ld c,(hl)		;7158
	ld (hl),c		;7159
	add a,b			;715a
	rst 10h			;715b
	ld a,a			;715c
	dec l			;715d
	rlca			;715e
	inc b			;715f
	ld (de),a		;7160
	add a,a			;7161
	ld h,e			;7162
	jr c,$+6		;7163
	add a,b			;7165
	adc a,b			;7166
	defb 0fdh,03eh,07fh ;illegal sequence	;7167
	rla			;716a
	sbc a,c			;716b
	ld a,a			;716c
	ld c,h			;716d
	ei			;716e
	ld a,a			;716f
	adc a,(hl)		;7170
	rst 38h			;7171
	rra			;7172
	sub b			;7173
	ld a,a			;7174
	sub c			;7175
	add a,c			;7176
	add hl,de		;7177
	ld a,a			;7178
	di			;7179
	call p,00616h		;717a
	sub l			;717d
	ld (bc),a		;717e
l717fh:
	ld (hl),b		;717f
	add a,0e1h		;7180
	ld a,a			;7182
	cp d			;7183
	push af			;7184
	pop af			;7185
	ld l,l			;7186
	nop			;7187
	ret m			;7188
	ld c,c			;7189
	cp h			;718a
	di			;718b
	or l			;718c
	rst 38h			;718d
	add a,h			;718e
	nop			;718f
	rst 38h			;7190
	ld a,(hl)		;7191
	ld d,h			;7192
	add a,b			;7193
	and d			;7194
	ld d,(hl)		;7195
	ret p			;7196
	ld e,e			;7197
	cp (hl)			;7198
	add a,b			;7199
	jp (hl)			;719a
	rst 38h			;719b
	xor b			;719c
	ret m			;719d
	ret			;719e
	add a,b			;719f
	ld e,c			;71a0
	xor c			;71a1
	or e			;71a2
	ret p			;71a3
	sub b			;71a4
	ld (bc),a		;71a5
	ld b,c			;71a6
	nop			;71a7
	ld bc,0223eh		;71a8
	djnz l722ch		;71ab
	sbc a,h			;71ad
	nop			;71ae
	jp nz,09c7fh		;71af
	sbc a,a			;71b2
	add a,b			;71b3
	ld d,c			;71b4
	nop			;71b5
	rst 38h			;71b6
	rst 8			;71b7
	add a,b			;71b8
	ld h,(hl)		;71b9
	inc a			;71ba
	ld h,b			;71bb
	ld (hl),a		;71bc
	dec de			;71bd
	rrca			;71be
	dec (hl)		;71bf
	ld d,(hl)		;71c0
	ld a,a			;71c1
	daa			;71c2
	ld (hl),a		;71c3
	ld a,a			;71c4
	adc a,c			;71c5
	ld b,087h		;71c6
	ld a,(hl)		;71c8
	xor (hl)		;71c9
	add a,l			;71ca
	ld h,0c0h		;71cb
	ld (bc),a		;71cd
	jr nz,l71d0h		;71ce
l71d0h:
	ld (de),a		;71d0
	ld b,h			;71d1
	ld hl,0007bh		;71d2
	cp 0c8h			;71d5
	sbc a,c			;71d7
	call pe,0f900h		;71d8
	ret			;71db
	rst 28h			;71dc
	ei			;71dd
	add a,a			;71de
	ld a,a			;71df
	rst 28h			;71e0
	push bc			;71e1
	add a,d			;71e2
	ld l,e			;71e3
	ld (hl),a		;71e4
	jp m,000afh		;71e5
	rrca			;71e8
	ex af,af'		;71e9
	ld a,a			;71ea
	ld c,b			;71eb
	ld sp,hl		;71ec
	rst 8			;71ed
	ld a,a			;71ee
	and (hl)		;71ef
	add a,b			;71f0
	dec sp			;71f1
	cp l			;71f2
	ret m			;71f3
	ld (hl),e		;71f4
	sub b			;71f5
	call m,0cfe5h		;71f6
	add a,d			;71f9
	ld e,a			;71fa
	ld a,a			;71fb
	ld (08107h),hl		;71fc
	adc a,b			;71ff
	add a,c			;7200
	and d			;7201
	xor b			;7202
	push hl			;7203
	inc hl			;7204
	ld bc,08979h		;7205
	djnz $+1		;7208
	ld h,e			;720a
	nop			;720b
	jp pe,00f63h		;720c
	ld a,(hl)		;720f
	ld sp,hl		;7210
	ld a,b			;7211
	jp p,0019ah		;7212
	adc a,c			;7215
	defb 0cbh,033h ;sli e	;7216
	add a,e			;7218
	inc e			;7219
	cp h			;721a
	ld a,a			;721b
	xor (hl)		;721c
	ld sp,hl		;721d
	ld c,085h		;721e
	ld h,l			;7220
	ld d,l			;7221
	ld e,b			;7222
	dec hl			;7223
	jp p,02c79h		;7224
	ld a,l			;7227
	ld de,0ca50h		;7228
	rst 38h			;722b
l722ch:
	cp 047h			;722c
	ret p			;722e
	ld a,a			;722f
	ret pe			;7230
	ld l,e			;7231
	add a,e			;7232
	sbc a,a			;7233
	ld a,a			;7234
	sbc a,c			;7235
	nop			;7236
	add a,(hl)		;7237
	rst 38h			;7238
	ld a,c			;7239
	ret			;723a
	cpl			;723b
	sbc a,c			;723c
	add a,c			;723d
	jr c,$-101		;723e
	ld a,(hl)		;7240
	sbc a,h			;7241
	dec l			;7242
	ld b,a			;7243
	adc a,c			;7244
	scf			;7245
	add a,e			;7246
	adc a,e			;7247
	add a,c			;7248
	ld l,(hl)		;7249
	cp e			;724a
	rst 38h			;724b
	exx			;724c
	add a,(hl)		;724d
	ld (hl),b		;724e
	ret			;724f
	ccf			;7250
	sbc a,d			;7251
	add hl,bc		;7252
	cp c			;7253
	ld a,a			;7254
	jp m,08ee0h		;7255
	ret pe			;7258
	cp (hl)			;7259
	nop			;725a
	ld h,h			;725b
	nop			;725c
	add a,b			;725d
	or e			;725e
	add a,b			;725f
	ld c,a			;7260
	ld e,0e9h		;7261
	inc a			;7263
	ld (hl),c		;7264
	add a,b			;7265
	ret m			;7266
	dec c			;7267
	sbc a,h			;7268
	add a,e			;7269
	rra			;726a
	ret nz			;726b
	ld a,a			;726c
	and h			;726d
	ld h,a			;726e
	xor 0f4h		;726f
	ex (sp),hl		;7271
	rst 38h			;7272
	jp z,0fb15h		;7273
	jp (hl)			;7276
	pop af			;7277
	out (0f0h),a		;7278
	sub d			;727a
	and b			;727b
	sub d			;727c
	inc b			;727d
	xor (hl)		;727e
l727fh:
	inc bc			;727f
	rlca			;7280
	xor (hl)		;7281
	ld d,e			;7282
	dec (hl)		;7283
	ld d,e			;7284
	add a,e			;7285
	jp p,09f00h		;7286
	add a,c			;7289
	sbc a,h			;728a
	set 7,h			;728b
	ld a,h			;728d
l728eh:
	cp h			;728e
	dec d			;728f
	inc l			;7290
	ld (bc),a		;7291
	ld (iy+057h),h		;7292
	ld de,0b7c5h		;7295
	add a,e			;7298
	inc hl			;7299
	ld d,(hl)		;729a
	ld a,a			;729b
	cp b			;729c
	rst 38h			;729d
	jp p,03606h		;729e
	ld (hl),a		;72a1
	ld (hl),l		;72a2
	ld d,l			;72a3
	ld h,l			;72a4
	ld a,d			;72a5
	or d			;72a6
	ld d,l			;72a7
	and b			;72a8
	xor e			;72a9
	adc a,b			;72aa
	and l			;72ab
	ld sp,08166h		;72ac
	ld de,l6636h		;72af
	ld b,0bah		;72b2
	ld (de),a		;72b4
	ld h,l			;72b5
	sub a			;72b6
	add a,b			;72b7
	sbc a,a			;72b8
	jp m,0ffa8h		;72b9
	ei			;72bc
	rst 20h			;72bd
	ld sp,hl		;72be
	dec (hl)		;72bf
	add a,l			;72c0
	sub 080h		;72c1
	sub 080h		;72c3
	ld a,(0ffa7h)		;72c5
	jr nz,l7331h		;72c8
	cp e			;72ca
	halt			;72cb
	ld h,(hl)		;72cc
	dec l			;72cd
	halt			;72ce
	ld d,a			;72cf
	inc bc			;72d0
	sbc a,(hl)		;72d1
	ld c,l			;72d2
	inc b			;72d3
	sub d			;72d4
	and d			;72d5
	inc bc			;72d6
	ld h,(hl)		;72d7
	ld d,(hl)		;72d8
	xor d			;72d9
	ld (hl),e		;72da
	inc c			;72db
	inc b			;72dc
	dec h			;72dd
	ld d,b			;72de
	add a,b			;72df
	rst 20h			;72e0
	ccf			;72e1
	call z,sub_7fb0h	;72e2
	ld a,080h		;72e5
	cpl			;72e7
	ld a,a			;72e8
	add hl,de		;72e9
	dec b			;72ea
	ld (hl),a		;72eb
	ld a,a			;72ec
	ret po			;72ed
	cp e			;72ee
	ld (hl),d		;72ef
	ld (hl),a		;72f0
	nop			;72f1
	ld a,b			;72f2
	res 0,(hl)		;72f3
	ld b,08dh		;72f5
	dec b			;72f7
	ld (hl),c		;72f8
	add a,a			;72f9
	dec bc			;72fa
	ld de,l763eh		;72fb
	ld a,a			;72fe
	ld h,b			;72ff
	nop			;7300
	sbc a,a			;7301
	call m,sub_5bcch	;7302
	sub b			;7305
	or 0dfh			;7306
	adc a,c			;7308
	dec a			;7309
	and a			;730a
	jr nz,l728eh		;730b
	cp e			;730d
	add a,b			;730e
	dec e			;730f
	ld h,(hl)		;7310
	ld a,a			;7311
	cp h			;7312
	ld (hl),a		;7313
	ld a,a			;7314
	jp nz,07876h		;7315
	cp b			;7318
	adc a,b			;7319
	ld l,h			;731a
	dec (hl)		;731b
	adc a,e			;731c
	cp e			;731d
	adc a,b			;731e
	dec hl			;731f
	ld d,005h		;7320
	inc c			;7322
	ld hl,0b805h		;7323
	cp b			;7326
	add a,a			;7327
	ld de,080b3h		;7328
	di			;732b
	ld h,h			;732c
	add a,h			;732d
	sbc a,e			;732e
	ex de,hl		;732f
	add a,h			;7330
l7331h:
	ld a,a			;7331
	defb 0edh ;next byte illegal after ed	;7332
	ld (hl),a		;7333
	ld (de),a		;7334
l7335h:
	adc a,c			;7335
l7336h:
	jp 039deh		;7336
	ld a,a			;7339
	pop af			;733a
	dec h			;733b
	or a			;733c
	dec bc			;733d
	adc a,e			;733e
	ld l,(hl)		;733f
	ld a,c			;7340
	ld a,d			;7341
	in a,(033h)		;7342
	adc a,e			;7344
	ld a,b			;7345
	nop			;7346
	ld (l6680h),hl		;7347
	ld a,e			;734a
	dec b			;734b
	ld de,0b796h		;734c
	ld (hl),l		;734f
	add a,d			;7350
	di			;7351
sub_7352h:
	and (hl)		;7352
	res 0,c			;7353
	ccf			;7355
	defb 0fdh,0e0h,07fh ;illegal sequence	;7356
	dec (hl)		;7359
	inc bc			;735a
	add a,e			;735b
	push de			;735c
	add a,d			;735d
	push af			;735e
	ld a,(hl)		;735f
	sub d			;7360
	adc a,d			;7361
	ld (hl),a		;7362
	ld a,a			;7363
	jp pe,0f739h		;7364
	ld (de),a		;7367
	add a,a			;7368
	add a,h			;7369
	scf			;736a
	dec b			;736b
	add a,h			;736c
	adc a,b			;736d
	ei			;736e
	xor h			;736f
	ld sp,hl		;7370
	sub c			;7371
	rst 38h			;7372
	sub h			;7373
	dec bc			;7374
	inc bc			;7375
	ld (hl),l		;7376
	ld sp,hl		;7377
	ld e,(hl)		;7378
	rst 18h			;7379
	res 0,a			;737a
	ld sp,0f6deh		;737c
	call pe,sub_7ff8h	;737f
	add hl,de		;7382
	inc bc			;7383
	add a,c			;7384
	sbc a,a			;7385
	ld a,a			;7386
	inc d			;7387
	ld a,(bc)		;7388
	ld h,l			;7389
	or l			;738a
	sub a			;738b
	and l			;738c
	sbc a,d			;738d
	or 000h			;738e
	rst 0			;7390
	ld a,(de)		;7391
	halt			;7392
	sbc a,b			;7393
	dec (hl)		;7394
	nop			;7395
	pop af			;7396
	rla			;7397
	cp e			;7398
	sbc a,c			;7399
	cp 0f6h			;739a
	rst 0			;739c
	rst 38h			;739d
	jp nz,0ae30h		;739e
	add a,c			;73a1
	ld h,e			;73a2
	add a,b			;73a3
	sub e			;73a4
	ld h,(hl)		;73a5
	ld l,b			;73a6
	ld a,a			;73a7
	sub h			;73a8
	ld b,088h		;73a9
	ld c,a			;73ab
	ld h,e			;73ac
	sbc a,e			;73ad
	adc a,000h		;73ae
	xor e			;73b0
	ld (hl),b		;73b1
	add a,b			;73b2
	ld e,a			;73b3
	nop			;73b4
	daa			;73b5
	ld d,b			;73b6
	ld a,a			;73b7
	ret nc			;73b8
	dec bc			;73b9
	ld a,(hl)		;73ba
	sub b			;73bb
	ld a,a			;73bc
	ld a,(hl)		;73bd
	add a,d			;73be
	or e			;73bf
	ld a,a			;73c0
	call pe,0ad03h		;73c1
	ld a,(hl)		;73c4
	sbc a,c			;73c5
	ld a,d			;73c6
	nop			;73c7
	ld d,d			;73c8
	ld d,(hl)		;73c9
	and d			;73ca
	cpl			;73cb
	ld h,l			;73cc
	ld sp,hl		;73cd
	sbc a,e			;73ce
	add hl,bc		;73cf
	ex af,af'		;73d0
	ld a,(hl)		;73d1
	ld (hl),a		;73d2
	djnz l73dah		;73d3
	ld d,(hl)		;73d5
	ld h,e			;73d6
	inc sp			;73d7
	rst 10h			;73d8
	and h			;73d9
l73dah:
	jp sub_7ff8h		;73da
	ret p			;73dd
	exx			;73de
	ld (hl),l		;73df
	ld h,a			;73e0
	ld a,a			;73e1
	jp c,0ff19h		;73e2
	xor (hl)		;73e5
	ld e,c			;73e6
	sbc a,e			;73e7
	adc a,h			;73e8
	ld d,e			;73e9
	pop af			;73ea
	jp 03335h		;73eb
	add a,(hl)		;73ee
	ld d,a			;73ef
	nop			;73f0
	dec (hl)		;73f1
	adc a,h			;73f2
	ld (hl),d		;73f3
sub_73f4h:
	ld c,013h		;73f4
	ret m			;73f6
	ld d,a			;73f7
	and e			;73f8
	and b			;73f9
	ld c,l			;73fa
	inc sp			;73fb
	inc bc			;73fc
l73fdh:
	or l			;73fd
	call m,08d1dh		;73fe
	ld (hl),e		;7401
	adc a,a			;7402
	rst 38h			;7403
	dec b			;7404
	ld (hl),0f8h		;7405
	ld (hl),h		;7407
	halt			;7408
	ret p			;7409
	ld a,a			;740a
	ld a,(hl)		;740b
	cp e			;740c
	nop			;740d
	rrca			;740e
	ld d,(hl)		;740f
	and (hl)		;7410
	ld (hl),022h		;7411
	add a,(hl)		;7413
	add a,c			;7414
	ld l,(hl)		;7415
	ld d,e			;7416
	and a			;7417
	ld a,(hl)		;7418
	ld a,a			;7419
	sub h			;741a
	cp 05eh			;741b
	add a,b			;741d
	pop hl			;741e
	rst 38h			;741f
	dec l			;7420
	cp a			;7421
	sbc a,c			;7422
	nop			;7423
	ld b,0fdh		;7424
	ld e,l			;7426
	add hl,bc		;7427
	ld l,b			;7428
	ld a,b			;7429
	cp h			;742a
	jp nc,l5765h		;742b
	add a,e			;742e
	inc sp			;742f
	xor 0feh		;7430
	adc a,h			;7432
	cp 0e0h			;7433
	inc b			;7435
	ld b,h			;7436
	pop af			;7437
	nop			;7438
	adc a,a			;7439
	cp h			;743a
	rlca			;743b
	ld (hl),a		;743c
	ld a,a			;743d
	ret nz			;743e
	call z,09167h		;743f
	sbc a,(hl)		;7442
	ld a,(de)		;7443
	inc b			;7444
	ld (bc),a		;7445
	rst 20h			;7446
	inc bc			;7447
	xor (hl)		;7448
	ld a,(0225fh)		;7449
	jp (hl)			;744c
sub_744dh:
	ld a,e			;744d
	jp (hl)			;744e
	and 006h		;744f
	ld l,(hl)		;7451
	ld h,a			;7452
	sub l			;7453
	ld b,l			;7454
	add a,c			;7455
	nop			;7456
	sbc a,d			;7457
	xor l			;7458
	adc a,a			;7459
	ld h,b			;745a
	ld a,a			;745b
	rst 8			;745c
l745dh:
	ld (hl),l		;745d
	inc bc			;745e
	ld (hl),e		;745f
	add a,b			;7460
	inc e			;7461
	or 07fh			;7462
	djnz l745dh		;7464
	ld a,a			;7466
	ld c,e			;7467
	dec bc			;7468
	cp (hl)			;7469
	rrca			;746a
	jr nz,l74ech		;746b
	adc a,d			;746d
	ld a,(hl)		;746e
	xor l			;746f
	sbc a,d			;7470
	sub l			;7471
	call nz,03317h		;7472
	jr c,l73fdh		;7475
	ld b,d			;7477
	ld a,a			;7478
	ret p			;7479
	adc a,a			;747a
	sub b			;747b
	ld a,a			;747c
	add a,c			;747d
	or b			;747e
	rrca			;747f
l7480h:
	or e			;7480
	or e			;7481
	pop hl			;7482
	ld a,a			;7483
	and 067h		;7484
	ld c,(hl)		;7486
	ld (hl),l		;7487
	ret m			;7488
	ld d,l			;7489
	add a,b			;748a
	ld a,a			;748b
	and c			;748c
	ld (hl),a		;748d
	ld l,b			;748e
	inc sp			;748f
	ld h,a			;7490
	ld a,a			;7491
	or 07ch			;7492
	nop			;7494
	ld c,a			;7495
	inc sp			;7496
	ld a,a			;7497
	daa			;7498
	adc a,b			;7499
	ld a,a			;749a
	add a,e			;749b
	ld de,0d97fh		;749c
	dec hl			;749f
	ld b,0b1h		;74a0
	cp 0e1h			;74a2
	ld a,a			;74a4
	and 035h		;74a5
	adc a,d			;74a7
	cp 095h			;74a8
	call nz,0f858h		;74aa
	adc a,l			;74ad
	ld h,(hl)		;74ae
	and a			;74af
	ld b,h			;74b0
	halt			;74b1
	ld a,a			;74b2
	ld h,l			;74b3
	sbc a,a			;74b4
	add a,b			;74b5
	sub a			;74b6
	ld a,a			;74b7
	ret pe			;74b8
	out (080h),a		;74b9
	ld a,a			;74bb
	ex (sp),hl		;74bc
	rrca			;74bd
	sbc a,e			;74be
	ld bc,0d000h		;74bf
	ld a,a			;74c2
	ld b,h			;74c3
	cp e			;74c4
	cp 07ah			;74c5
	ld a,c			;74c7
	ld a,a			;74c8
	ld b,h			;74c9
	ld sp,hl		;74ca
	ld h,a			;74cb
	ld c,c			;74cc
	ld e,a			;74cd
	rst 30h			;74ce
	inc sp			;74cf
	add a,(hl)		;74d0
	ld (hl),e		;74d1
	ld l,b			;74d2
	and b			;74d3
	ret po			;74d4
	ld h,(hl)		;74d5
	ccf			;74d6
	di			;74d7
	call m,0eb7fh		;74d8
	or l			;74db
	cp h			;74dc
	ld a,(hl)		;74dd
	and e			;74de
	add a,b			;74df
	cp l			;74e0
	ld a,a			;74e1
	sbc a,h			;74e2
	add a,c			;74e3
	pop af			;74e4
	ld a,a			;74e5
	inc hl			;74e6
	dec bc			;74e7
	or b			;74e8
	cp 0d3h			;74e9
	ld a,a			;74eb
l74ech:
	push bc			;74ec
	dec b			;74ed
	ld a,a			;74ee
	jr nc,l7480h		;74ef
	sub a			;74f1
	add a,b			;74f2
	ld sp,03383h		;74f3
	ld (hl),l		;74f6
	ld (hl),066h		;74f7
	add a,e			;74f9
	rra			;74fa
	rst 38h			;74fb
	halt			;74fc
	ld l,a			;74fd
	ld a,a			;74fe
	rlca			;74ff
	ld a,c			;7500
	ld (hl),0f2h		;7501
	sub 08eh		;7503
	cp c			;7505
	rst 0			;7506
	cp 032h			;7507
	cp a			;7509
	ld a,(hl)		;750a
	ld a,a			;750b
	ld e,00ah		;750c
	rst 0			;750e
	cp 06fh			;750f
	ld (bc),a		;7511
	ld a,a			;7512
	dec e			;7513
	and a			;7514
	and h			;7515
	ei			;7516
	ex af,af'		;7517
	ld e,b			;7518
	ld e,a			;7519
	rst 38h			;751a
	inc sp			;751b
	ret m			;751c
	and d			;751d
	rst 30h			;751e
	inc bc			;751f
	ld (hl),053h		;7520
	ld (hl),063h		;7522
	rst 38h			;7524
	ld (hl),a		;7525
	ld a,a			;7526
	pop hl			;7527
	and a			;7528
	add a,a			;7529
	ld a,l			;752a
	add a,d			;752b
	ld (hl),b		;752c
	sbc a,(hl)		;752d
	add a,b			;752e
	sbc a,066h		;752f
	ld a,a			;7531
	adc a,a			;7532
	ld h,(hl)		;7533
	ld a,a			;7534
	adc a,l			;7535
	or b			;7536
	ld a,(bc)		;7537
	or c			;7538
	cp 0d9h			;7539
	ld l,020h		;753b
	ld a,a			;753d
	jp po,0a265h		;753e
	ld a,a			;7541
	rst 38h			;7542
	ld de,0ffffh		;7543
	ld l,b			;7546
	ld sp,hl		;7547
	ld c,l			;7548
	nop			;7549
	ld d,e			;754a
	ret z			;754b
	ld bc,0f773h		;754c
	ld l,a			;754f
	ld d,e			;7550
	ld h,(hl)		;7551
	ld a,a			;7552
	rst 30h			;7553
	ld h,e			;7554
	rst 38h			;7555
	ret nz			;7556
	ld d,(hl)		;7557
	ret m			;7558
	ld a,a			;7559
	sbc a,(hl)		;755a
	sbc a,l			;755b
	ld a,a			;755c
	ld b,h			;755d
	dec bc			;755e
	cp e			;755f
	rst 38h			;7560
	ld l,l			;7561
	ld a,l			;7562
	jr nc,$-31		;7563
	ld a,a			;7565
	sub e			;7566
	ld h,(hl)		;7567
	sbc a,l			;7568
	sub a			;7569
	ld a,e			;756a
	inc c			;756b
	ld h,(hl)		;756c
	ld (hl),e		;756d
	ld a,a			;756e
	ld c,b			;756f
	di			;7570
	add a,e			;7571
	ld a,a			;7572
	ld l,b			;7573
	di			;7574
	add a,c			;7575
	ld d,(hl)		;7576
	rst 8			;7577
	add a,c			;7578
	xor (hl)		;7579
	dec b			;757a
	ld h,a			;757b
	ld (de),a		;757c
	rst 38h			;757d
	jp 03e80h		;757e
	sbc a,a			;7581
	add a,e			;7582
	rst 0			;7583
	ld a,a			;7584
	and e			;7585
	cp e			;7586
	ld a,a			;7587
	adc a,e			;7588
	ei			;7589
	pop af			;758a
	sub a			;758b
	rst 38h			;758c
	ld e,08ch		;758d
	ret nz			;758f
	ld e,a			;7590
	push af			;7591
	rst 30h			;7592
	adc a,b			;7593
	add a,a			;7594
	ld a,d			;7595
	or 065h			;7596
	rst 38h			;7598
	nop			;7599
	ld d,l			;759a
	ld a,a			;759b
	adc a,e			;759c
	jp c,0f682h		;759d
	ld l,l			;75a0
	ld a,c			;75a1
	call m,l42e0h+2		;75a2
	rst 38h			;75a5
	ld e,h			;75a6
	ld a,(hl)		;75a7
	ld a,a			;75a8
	ld h,a			;75a9
	nop			;75aa
	ld a,a			;75ab
	add a,e			;75ac
	or b			;75ad
	ld a,a			;75ae
	adc a,d			;75af
	call m,0edf1h		;75b0
	ld a,a			;75b3
	ld d,b			;75b4
	call p,0ffc8h		;75b5
	add a,e			;75b8
	ld l,(hl)		;75b9
	ld h,a			;75ba
	ccf			;75bb
	rst 38h			;75bc
	push af			;75bd
	ld a,a			;75be
	ret nz			;75bf
	inc sp			;75c0
	di			;75c1
	call m,0167fh		;75c2
	inc h			;75c5
	defb 0fdh,02ch ;inc iyl	;75c6
	rst 38h			;75c8
	ld a,b			;75c9
	sub l			;75ca
	dec b			;75cb
	ld h,a			;75cc
	add a,c			;75cd
	ex de,hl		;75ce
	nop			;75cf
	sbc a,(hl)		;75d0
	ld a,a			;75d1
	sub h			;75d2
	rst 38h			;75d3
	ret			;75d4
	ld (l7f20h),hl		;75d5
	ret p			;75d8
	add hl,sp		;75d9
	ld h,(hl)		;75da
	ld a,a			;75db
	ld c,d			;75dc
	ld d,(hl)		;75dd
sub_75deh:
	call m,05fb9h		;75de
	ld a,(hl)		;75e1
	cpl			;75e2
	di			;75e3
	ld h,(hl)		;75e4
	ld (bc),a		;75e5
	ld a,a			;75e6
	ld l,(hl)		;75e7
	xor c			;75e8
	ld c,(hl)		;75e9
	xor h			;75ea
	ld h,a			;75eb
	ld a,(hl)		;75ec
	add a,h			;75ed
	ld (de),a		;75ee
	cp 073h			;75ef
	add a,b			;75f1
	dec hl			;75f2
	add a,c			;75f3
	adc a,(hl)		;75f4
	rrca			;75f5
	ld d,(hl)		;75f6
	ld a,a			;75f7
	add a,l			;75f8
	sub c			;75f9
	ld a,a			;75fa
	pop hl			;75fb
	ld sp,hl		;75fc
	ld l,h			;75fd
	ld d,e			;75fe
l75ffh:
	call m,0208bh		;75ff
	ld a,a			;7602
	pop de			;7603
	adc a,a			;7604
	ld l,l			;7605
	sub h			;7606
	nop			;7607
	add a,b			;7608
	add a,a			;7609
	ld (hl),a		;760a
	rst 38h			;760b
	ld a,(hl)		;760c
	ld b,l			;760d
	jr c,$+53		;760e
	add a,h			;7610
	rra			;7611
	sbc a,a			;7612
	ret pe			;7613
	ld bc,01911h		;7614
	sbc a,c			;7617
	djnz l7699h		;7618
	add hl,bc		;761a
	sub b			;761b
	add a,b			;761c
	dec e			;761d
	ex (sp),hl		;761e
	ld a,a			;761f
	inc h			;7620
	ld a,a			;7621
	jp c,0e781h		;7622
	ld (hl),a		;7625
	ld a,a			;7626
	pop bc			;7627
	rst 38h			;7628
	sbc a,(hl)		;7629
	cp 0b7h			;762a
	ld c,a			;762c
	ei			;762d
	ld c,a			;762e
	jp po,0177fh		;762f
	ld b,0adh		;7632
	ld c,l			;7634
	rst 38h			;7635
	ld a,a			;7636
	ld (hl),h		;7637
	ld d,a			;7638
	rst 30h			;7639
	ld d,l			;763a
	dec h			;763b
	ld (hl),l		;763c
	ccf			;763d
l763eh:
	cp 0a6h			;763e
	ld h,e			;7640
	ld de,l503eh		;7641
	ld a,a			;7644
	xor b			;7645
	cp 0efh			;7646
	ld a,a			;7648
	adc a,081h		;7649
	cpdr			;764b
	add hl,hl		;764d
	add a,b			;764e
	out (07fh),a		;764f
	pop hl			;7651
	rst 28h			;7652
	inc l			;7653
	ld a,a			;7654
	call 0fc66h		;7655
	ld l,b			;7658
	ccf			;7659
	sbc a,h			;765a
	xor 038h		;765b
	adc a,b			;765d
	dec (hl)		;765e
	add a,b			;765f
	ld (hl),h		;7660
	ld d,l			;7661
	ld a,a			;7662
l7663h:
	ccf			;7663
	sbc a,(hl)		;7664
	djnz l76d6h		;7665
	ld a,a			;7667
	add a,c			;7668
	nop			;7669
	inc c			;766a
	call z,0f910h		;766b
	ld sp,09099h		;766e
	call m,02f7eh		;7671
	inc h			;7674
	ld a,a			;7675
l7676h:
	add a,c			;7676
	inc sp			;7677
	or e			;7678
	ld d,d			;7679
	ld h,(hl)		;767a
	add a,b			;767b
	inc a			;767c
	cp (hl)			;767d
	ld a,a			;767e
sub_767fh:
	inc d			;767f
sub_7680h:
	nop			;7680
	call m,0cbf8h		;7681
	rst 38h			;7684
	sub c			;7685
	ld h,(hl)		;7686
	ld d,(hl)		;7687
	rst 30h			;7688
	ld b,l			;7689
	di			;768a
	ret nc			;768b
	ld a,a			;768c
	ld a,b			;768d
	ld d,(hl)		;768e
	ld a,b			;768f
	dec d			;7690
	add a,l			;7691
	ld h,l			;7692
	inc sp			;7693
	add a,b			;7694
	ret c			;7695
	or 0ffh			;7696
	ld h,l			;7698
l7699h:
	rst 0			;7699
	add a,c			;769a
	ld c,e			;769b
	cp l			;769c
	sub c			;769d
	ret nz			;769e
	add a,d			;769f
	rrca			;76a0
	inc c			;76a1
	ret nz			;76a2
	call z,00e7fh		;76a3
	jp (iy)			;76a6
	ld (03effh),hl		;76a8
	dec (hl)		;76ab
	ld bc,0c9b4h		;76ac
	ld h,(hl)		;76af
	add a,b			;76b0
	ld (hl),h		;76b1
	ex de,hl		;76b2
	ld a,a			;76b3
	call p,07f77h		;76b4
	ld l,c			;76b7
	ei			;76b8
	rst 10h			;76b9
	ld a,a			;76ba
	pop bc			;76bb
	ld e,a			;76bc
	ld a,a			;76bd
	and b			;76be
	inc sp			;76bf
	ld d,l			;76c0
	ld (hl),e		;76c1
	ld e,b			;76c2
	add a,e			;76c3
	dec e			;76c4
	ld (hl),067h		;76c5
	ld a,a			;76c7
	ld a,a			;76c8
	adc a,a			;76c9
	ld (hl),0ffh		;76ca
	adc a,e			;76cc
	ld a,a			;76cd
	xor d			;76ce
	cp 03ch			;76cf
	cp h			;76d1
	ld a,a			;76d2
	jr l7705h		;76d3
	ld (bc),a		;76d5
l76d6h:
	jr nc,l7663h		;76d6
	ld b,c			;76d8
	halt			;76d9
	ld h,(hl)		;76da
	add a,a			;76db
	ld l,d			;76dc
	rst 10h			;76dd
	ld b,l			;76de
	ld h,l			;76df
	rst 38h			;76e0
	ld de,0e7ffh		;76e1
	ld a,(hl)		;76e4
	pop hl			;76e5
	rst 38h			;76e6
	cp (hl)			;76e7
	add a,(hl)		;76e8
	rrca			;76e9
	ld d,(hl)		;76ea
	ld a,a			;76eb
	ld (hl),055h		;76ec
	jp m,080a4h		;76ee
	jp z,0fff8h		;76f1
	ld h,l			;76f4
	rst 30h			;76f5
	add a,c			;76f6
	scf			;76f7
	sub h			;76f8
	ld b,a			;76f9
	add a,d			;76fa
	cp d			;76fb
	ld b,d			;76fc
	ld a,h			;76fd
	sub b			;76fe
	add hl,bc		;76ff
sub_7700h:
	sbc a,c			;7700
	rst 38h			;7701
	ld b,a			;7702
	sbc a,c			;7703
	ld a,a			;7704
l7705h:
	ld de,0e6feh		;7705
	ld (086efh),hl		;7708
	ld d,h			;770b
	dec (hl)		;770c
	call 087d5h		;770d
	call nc,0e7d7h		;7710
	ld a,a			;7713
	sub l			;7714
	jp m,02022h		;7715
	call m,0a37dh		;7718
	sub e			;771b
	jr c,l779dh		;771c
	adc a,b			;771e
l771fh:
	di			;771f
	rst 30h			;7720
	ld d,l			;7721
	call p,00ef0h		;7722
	ld d,l			;7725
	add a,a			;7726
	ld d,l			;7727
	ld (hl),a		;7728
	cp 002h			;7729
	ld (hl),e		;772b
	ccf			;772c
	or 06fh			;772d
	ld a,l			;772f
	ld b,h			;7730
	add a,a			;7731
	ld a,a			;7732
	ld e,b			;7733
	rst 38h			;7734
	sub c			;7735
	ld d,h			;7736
	rst 38h			;7737
	ret pe			;7738
	sub b			;7739
	and (hl)		;773a
	rst 38h			;773b
	jp pe,0fd0ch		;773c
	ld (hl),d		;773f
	or 07fh			;7740
	sbc a,h			;7742
	add a,(hl)		;7743
	and h			;7744
	add a,l			;7745
	sbc a,(hl)		;7746
	rst 38h			;7747
	and e			;7748
	rst 38h			;7749
	out (027h),a		;774a
	adc a,(hl)		;774c
	inc b			;774d
	inc a			;774e
	ld a,a			;774f
	dec l			;7750
	rla			;7751
	ld a,a			;7752
	nop			;7753
	push af			;7754
	ld e,a			;7755
	or 075h			;7756
	ld d,(hl)		;7758
	ld d,e			;7759
	rst 38h			;775a
	jr c,l771fh		;775b
	ld a,a			;775d
	adc a,b			;775e
	ld d,e			;775f
	cp e			;7760
	jr nz,l77a2h		;7761
	ld (hl),e		;7763
	ld (hl),03fh		;7764
	add hl,bc		;7766
	ret m			;7767
	rst 38h			;7768
	ld l,a			;7769
	inc sp			;776a
	sub l			;776b
	rlca			;776c
	ld (hl),l		;776d
	ld h,l			;776e
	ld d,b			;776f
	ld a,a			;7770
	pop de			;7771
	cp 02dh			;7772
	ld a,022h		;7774
	ld a,a			;7776
l7777h:
	add hl,hl		;7777
	add a,e			;7778
	add hl,sp		;7779
	ld a,a			;777a
	ld sp,l7676h		;777b
	ld a,a			;777e
	djnz l7800h		;777f
	rst 10h			;7781
	ld a,(hl)		;7782
	adc a,a			;7783
	add a,h			;7784
l7785h:
	or e			;7785
	dec c			;7786
	sub 07fh		;7787
	ld l,(hl)		;7789
	push af			;778a
	jr nc,$+121		;778b
	ei			;778d
	sub d			;778e
	push af			;778f
sub_7790h:
	defb 0fdh,032h,0b8h ;illegal sequence	;7790
	ld h,d			;7793
sub_7794h:
	ld d,l			;7794
	ld e,b			;7795
	add a,c			;7796
	dec l			;7797
	call m,084a6h		;7798
	adc a,b			;779b
	ei			;779c
l779dh:
	ld h,l			;779d
	add a,(hl)		;779e
	adc a,h			;779f
	ld b,l			;77a0
	add a,a			;77a1
l77a2h:
	ld d,b			;77a2
	rst 38h			;77a3
	halt			;77a4
	rst 30h			;77a5
	ld a,a			;77a6
	adc a,l			;77a7
	cp 07bh			;77a8
	ld hl,0517fh		;77aa
	add a,(hl)		;77ad
	add a,h			;77ae
	ld b,l			;77af
	add a,b			;77b0
	halt			;77b1
	call z,02fe7h		;77b2
	call p,0fd52h		;77b5
	inc a			;77b8
	ld a,c			;77b9
	or 077h			;77ba
	rst 38h			;77bc
	adc a,07fh		;77bd
	sub d			;77bf
	ld sp,hl		;77c0
	add a,b			;77c1
	di			;77c2
	jp p,l57c1h		;77c3
	halt			;77c6
l77c7h:
	ld l,b			;77c7
	ld a,a			;77c8
	rrca			;77c9
	add a,l			;77ca
	inc sp			;77cb
	ld d,e			;77cc
	jp m,0fb2eh		;77cd
	ex de,hl		;77d0
	cp 089h			;77d1
	rst 28h			;77d3
	adc a,h			;77d4
	dec de			;77d5
	ret m			;77d6
	add a,d			;77d7
	pop af			;77d8
	pop de			;77d9
	add a,l			;77da
	ld a,a			;77db
	ex (sp),hl		;77dc
	cp 01fh			;77dd
	rla			;77df
	adc a,071h		;77e0
	ld a,a			;77e2
	out (077h),a		;77e3
	ld a,a			;77e5
	xor d			;77e6
	ld sp,hl		;77e7
	ld l,e			;77e8
	ld hl,(l7f9eh)		;77e9
	push af			;77ec
	adc a,c			;77ed
	inc c			;77ee
	ld bc,07f10h		;77ef
	ld c,b			;77f2
	ld l,a			;77f3
	ld (iy+07ch),a		;77f4
	push af			;77f7
	di			;77f8
	add a,e			;77f9
	adc a,c			;77fa
	dec b			;77fb
	halt			;77fc
	ld a,b			;77fd
	ld (hl),e		;77fe
	ld (hl),l		;77ff
l7800h:
	cp l			;7800
	scf			;7801
	add a,a			;7802
	ld (08935h),hl		;7803
sub_7806h:
	xor a			;7806
	adc a,l			;7807
	daa			;7808
	dec c			;7809
	rst 30h			;780a
	ld a,a			;780b
	jp nc,08f22h		;780c
	cp 09fh			;780f
	adc a,c			;7811
	defb 0ddh,03bh,07fh ;illegal sequence	;7812
	pop af			;7815
	nop			;7816
	call pe,0f0ffh		;7817
	ld a,(hl)		;781a
	call po,sub_567fh	;781b
	ld h,a			;781e
	ld d,l			;781f
	ld d,a			;7820
	rst 38h			;7821
	in d,(c)		;7822
	ld (hl),057h		;7824
	ld h,a			;7826
	add hl,hl		;7827
	ld h,(hl)		;7828
	ld a,b			;7829
	ld (hl),e		;782a
	adc a,c			;782b
	sbc a,h			;782c
	ld h,a			;782d
	add a,(hl)		;782e
	ld e,(hl)		;782f
	adc a,h			;7830
	ld l,(hl)		;7831
	sub d			;7832
	ld hl,(09688h)		;7833
	ld b,a			;7836
	add a,l			;7837
	add a,b			;7838
	push bc			;7839
	adc a,b			;783a
	ld h,a			;783b
	ld a,a			;783c
	add a,h			;783d
	cp 06bh			;783e
	ld de,0f37fh		;7840
	dec hl			;7843
	jp m,020c5h		;7844
	rst 0			;7847
	ld a,(0c9e0h)		;7848
	ld a,a			;784b
	jp (hl)			;784c
	xor d			;784d
	jp (hl)			;784e
	sub b			;784f
	cp 083h			;7850
	di			;7852
	sub c			;7853
	xor l			;7854
	ld h,(hl)		;7855
	or c			;7856
	jr nz,$-121		;7857
	adc a,b			;7859
	ld h,a			;785a
	or d			;785b
	add a,e			;785c
	call m,08e6ch		;785d
	ld a,(bc)		;7860
	ld h,e			;7861
	ld d,a			;7862
	ld a,(hl)		;7863
	ccf			;7864
	ld a,087h		;7865
	ld h,l			;7867
	ld e,h			;7868
	inc e			;7869
	adc a,b			;786a
l786bh:
	ld c,l			;786b
	ld a,a			;786c
	ld (hl),d		;786d
	inc h			;786e
	ld a,(hl)		;786f
	ld hl,0e0a6h		;7870
	dec hl			;7873
	add a,d			;7874
	defb 0ddh,067h ;ld ixh,a	;7875
	ld a,a			;7877
	rst 30h			;7878
	set 7,h			;7879
	inc e			;787b
	ld a,a			;787c
	jp pe,041b5h		;787d
l7880h:
	ld l,(hl)		;7880
	di			;7881
	adc a,a			;7882
	rst 30h			;7883
	ld a,b			;7884
	ld l,l			;7885
	ld c,c			;7886
	jr nc,l7901h		;7887
	push af			;7889
	call 001fah		;788a
	adc a,b			;788d
	ld d,(hl)		;788e
	inc sp			;788f
	scf			;7890
	ld l,b			;7891
l7892h:
	ld a,a			;7892
	or (hl)			;7893
	add a,d			;7894
	ld a,l			;7895
	ld a,a			;7896
	add hl,bc		;7897
	ld (l62fdh),hl		;7898
	cp 02fh			;789b
	ld a,a			;789d
	adc a,a			;789e
	adc a,c			;789f
	xor (hl)		;78a0
	ld a,a			;78a1
	call nz,0bb9bh		;78a2
	cp e			;78a5
	rst 38h			;78a6
	cp e			;78a7
	rst 30h			;78a8
	ld b,07fh		;78a9
	call c,0d4ebh		;78ab
	ld (hl),b		;78ae
	ld bc,00866h		;78af
	scf			;78b2
	adc a,b			;78b3
	ld h,l			;78b4
	ld (hl),a		;78b5
	add a,c			;78b6
l78b7h:
	sub h			;78b7
	ld a,b			;78b8
	ld (hl),h		;78b9
	defb 0fdh,0c1h,0f8h ;illegal sequence	;78ba
	ld h,(hl)		;78bd
	add a,a			;78be
	ld h,e			;78bf
	ld c,009h		;78c0
	adc a,a			;78c2
	ret m			;78c3
	add a,l			;78c4
	dec bc			;78c5
	add a,(hl)		;78c6
	add a,e			;78c7
	adc a,099h		;78c8
	adc a,b			;78ca
	rst 18h			;78cb
	ld a,a			;78cc
	ex af,af'		;78cd
	ld (0eafeh),hl		;78ce
	add a,b			;78d1
	ld a,(hl)		;78d2
	scf			;78d3
	ld b,07fh		;78d4
	ld l,c			;78d6
	sub d			;78d7
l78d8h:
	ld a,a			;78d8
	cp e			;78d9
	or e			;78da
	inc e			;78db
	ld b,a			;78dc
	add a,a			;78dd
	and h			;78de
	call m,sub_7fb5h	;78df
sub_78e2h:
	adc a,0afh		;78e2
	add hl,de		;78e4
	xor 0c0h		;78e5
	adc a,b			;78e7
	add a,(hl)		;78e8
	ld e,a			;78e9
	ld e,(hl)		;78ea
	rst 30h			;78eb
	or e			;78ec
	ld b,l			;78ed
	cp 00bh			;78ee
	ld d,086h		;78f0
	ld (hl),085h		;78f2
	jr nc,l796eh		;78f4
	dec a			;78f6
	ld d,l			;78f7
	scf			;78f8
	jp p,08090h		;78f9
	sbc a,l			;78fc
	ld e,b			;78fd
	sub b			;78fe
	adc a,b			;78ff
	rst 8			;7900
l7901h:
	ld a,a			;7901
	adc a,l			;7902
	adc a,e			;7903
	rst 28h			;7904
	ld a,a			;7905
	call nz,09705h		;7906
	rst 38h			;7909
	inc b			;790a
	dec hl			;790b
	ld a,b			;790c
	or b			;790d
	ex (sp),hl		;790e
	ld a,(hl)		;790f
	rlca			;7910
	ld d,(hl)		;7911
	nop			;7912
	adc a,l			;7913
	rst 18h			;7914
	ld a,a			;7915
	sbc a,(hl)		;7916
	add a,b			;7917
	ld e,e			;7918
	ld a,a			;7919
	xor h			;791a
	sub d			;791b
	ld (hl),l		;791c
	rst 30h			;791d
	add hl,hl		;791e
	add a,c			;791f
	in a,(0ffh)		;7920
	cp b			;7922
	adc a,b			;7923
	jp l7fc0h		;7924
	add hl,bc		;7927
	add a,(hl)		;7928
	ld d,l			;7929
	sbc a,c			;792a
	sbc a,c			;792b
	ld (hl),a		;792c
	jp nz,l7f7dh		;792d
	sub l			;7930
	call m,0028fh		;7931
	ld a,a			;7934
	sub e			;7935
	add a,c			;7936
	ld a,c			;7937
	or h			;7938
	rst 38h			;7939
	ld l,02eh		;793a
	xor 000h		;793c
	rst 38h			;793e
	ld de,080bbh		;793f
	rst 20h			;7942
	jr nc,l78d8h		;7943
	ld a,a			;7945
	ld de,0d67fh		;7946
	or c			;7949
	xor b			;794a
	ld l,c			;794b
	rst 38h			;794c
	ld l,b			;794d
	sbc a,h			;794e
	ret p			;794f
	call po,sub_6786h	;7950
	ld h,l			;7953
	ld a,a			;7954
	add a,012h		;7955
	djnz $+85		;7957
	add a,h			;7959
	add a,e			;795a
	ccf			;795b
	ld (hl),a		;795c
	add a,e			;795d
	cp l			;795e
	add hl,de		;795f
	sbc a,c			;7960
	adc a,09ah		;7961
	add a,l			;7963
	adc a,a			;7964
	nop			;7965
	ld a,a			;7966
	ld b,010h		;7967
	ld a,(bc)		;7969
	rst 10h			;796a
	add a,b			;796b
	rst 0			;796c
	ld a,a			;796d
l796eh:
	ret po			;796e
	ld (bc),a		;796f
	call nc,0db7fh		;7970
	add a,b			;7973
	ld a,c			;7974
	ld b,a			;7975
	xor a			;7976
	inc de			;7977
	ld a,a			;7978
	ld e,07fh		;7979
	add a,a			;797b
	djnz l79fdh		;797c
	ld h,c			;797e
	ld l,b			;797f
	ld a,b			;7980
l7981h:
	add a,(hl)		;7981
	ld d,e			;7982
	ld a,(hl)		;7983
	daa			;7984
	ccf			;7985
	ld a,a			;7986
	add a,e			;7987
	pop bc			;7988
	sub l			;7989
	dec sp			;798a
	adc a,c			;798b
	defb 0ddh,0c3h,015h ;illegal sequence	;798c
l798fh:
	ld a,b			;798f
	ld h,l			;7990
	sub h			;7991
	ld l,c			;7992
	add a,(hl)		;7993
	sub h			;7994
	ld h,a			;7995
	ld d,(hl)		;7996
l7997h:
	sbc a,b			;7997
	call z,010c1h		;7998
	ld a,(01911h)		;799b
	add a,h			;799e
	jp po,0fdffh		;799f
	ld a,h			;79a2
	ld e,a			;79a3
	ld (bc),a		;79a4
	ld a,a			;79a5
	dec h			;79a6
	call nc,038d4h		;79a7
	call z,0ffe7h		;79aa
	inc e			;79ad
	ld a,a			;79ae
	add hl,sp		;79af
	ret po			;79b0
	ld a,a			;79b1
	add hl,hl		;79b2
	cp l			;79b3
	defb 0ddh,083h,018h ;illegal sequence	;79b4
	ld (0d680h),hl		;79b7
	ld a,a			;79ba
	ld a,(07f10h)		;79bb
	jp z,0f17eh		;79be
	xor h			;79c1
	add a,h			;79c2
	ld (hl),h		;79c3
	ccf			;79c4
	add a,e			;79c5
	rst 38h			;79c6
	adc a,e			;79c7
	or c			;79c8
	di			;79c9
	ex af,af'		;79ca
	ld a,c			;79cb
l79cch:
	ccf			;79cc
	ld a,b			;79cd
	ld e,d			;79ce
	add a,a			;79cf
	ret nz			;79d0
	ld sp,01655h		;79d1
	ld d,(hl)		;79d4
l79d5h:
	rlca			;79d5
	ld a,l			;79d6
	ld a,a			;79d7
	ld (hl),l		;79d8
	call m,0809ah		;79d9
	jp p,0d4d5h		;79dc
	push bc			;79df
	jr l7a59h		;79e0
	ld a,(03565h)		;79e2
	ld a,a			;79e5
	ld b,(hl)		;79e6
	defb 0ddh,080h,0a1h ;illegal sequence	;79e7
	defb 0ddh,000h,0bdh ;illegal sequence	;79ea
	or b			;79ed
	ld (l6cc1h),hl		;79ee
	and l			;79f1
	cp l			;79f2
	rst 38h			;79f3
	ld l,l			;79f4
	cp c			;79f5
	ld a,e			;79f6
	ld a,a			;79f7
	ld e,d			;79f8
	add a,e			;79f9
	add a,h			;79fa
	add hl,hl		;79fb
	ld h,a			;79fc
l79fdh:
	di			;79fd
	ld a,b			;79fe
	add a,(hl)		;79ff
	ld e,c			;7a00
	ld (hl),a		;7a01
	add a,e			;7a02
	dec c			;7a03
	ld d,h			;7a04
	add a,(hl)		;7a05
	jr c,l79d5h		;7a06
	ld a,a			;7a08
	add a,a			;7a09
	dec a			;7a0a
	ld a,a			;7a0b
	ld b,b			;7a0c
	cp e			;7a0d
	cp h			;7a0e
	ret nz			;7a0f
	call z,00cc0h		;7a10
	or 0ffh			;7a13
	ld (hl),c		;7a15
	jp m,01297h		;7a16
	ld a,a			;7a19
	call z,0cc03h		;7a1a
	pop bc			;7a1d
	sbc a,h			;7a1e
	ret nz			;7a1f
	cp h			;7a20
	rst 38h			;7a21
	and l			;7a22
	add a,b			;7a23
	dec (hl)		;7a24
	dec c			;7a25
	defb 0ddh,000h,000h ;illegal sequence	;7a26
	ld (bc),a		;7a29
	inc h			;7a2a
	in a,(019h)		;7a2b
	in a,(085h)		;7a2d
	ret			;7a2f
	cp l			;7a30
	rlca			;7a31
	defb 0ddh,0cch,0adh ;illegal sequence	;7a32
	set 7,a			;7a35
	jr z,$-11		;7a37
	ld a,(hl)		;7a39
	rst 38h			;7a3a
	scf			;7a3b
	xor (hl)		;7a3c
	or d			;7a3d
	ld l,(hl)		;7a3e
	add a,d			;7a3f
	xor b			;7a40
	ld bc,08df8h		;7a41
	ld (bc),a		;7a44
	jr c,l79cch		;7a45
	ld a,a			;7a47
	sbc a,d			;7a48
	sub e			;7a49
	rst 38h			;7a4a
	dec a			;7a4b
	ex af,af'		;7a4c
	ret			;7a4d
	sub b			;7a4e
	defb 0fdh,0aah,052h ;illegal sequence	;7a4f
	ld a,a			;7a52
	add a,b			;7a53
sub_7a54h:
	ld e,b			;7a54
	call nz,0d3c2h		;7a55
	rlca			;7a58
l7a59h:
	inc h			;7a59
	nop			;7a5a
	nop			;7a5b
	push hl			;7a5c
	rrca			;7a5d
	ld d,l			;7a5e
	ld d,b			;7a5f
	inc sp			;7a60
	inc bc			;7a61
	ld a,a			;7a62
	ld b,h			;7a63
	cp e			;7a64
	add a,e			;7a65
	ld l,d			;7a66
	dec c			;7a67
	adc a,c			;7a68
	ld d,e			;7a69
	ld c,007h		;7a6a
	or b			;7a6c
	in a,(0b0h)		;7a6d
	ld a,a			;7a6f
	add a,l			;7a70
	rst 38h			;7a71
	xor (hl)		;7a72
	add a,c			;7a73
	daa			;7a74
	ret m			;7a75
	jp nc,0837ch		;7a76
	halt			;7a79
	inc h			;7a7a
l7a7bh:
	add a,e			;7a7b
	add a,e			;7a7c
	cp 092h			;7a7d
	ld b,088h		;7a7f
	ex af,af'		;7a81
	adc a,b			;7a82
	sub l			;7a83
	ret m			;7a84
	ld a,h			;7a85
	add a,b			;7a86
	ld a,a			;7a87
	xor c			;7a88
	ld (de),a		;7a89
	call m,001e1h		;7a8a
	cp 01ah			;7a8d
	ld b,b			;7a8f
	ld sp,hl		;7a90
	ld a,(hl)		;7a91
	ld e,(hl)		;7a92
	inc bc			;7a93
	adc a,b			;7a94
	or a			;7a95
	rst 38h			;7a96
	ld a,c			;7a97
	ld a,a			;7a98
	ld h,b			;7a99
	nop			;7a9a
	ld bc,0d100h		;7a9b
	ld b,h			;7a9e
	dec e			;7a9f
	add a,a			;7aa0
	ret nc			;7aa1
	push bc			;7aa2
	add hl,bc		;7aa3
	dec c			;7aa4
	dec b			;7aa5
	ld a,a			;7aa6
	in a,(035h)		;7aa7
	ld h,a			;7aa9
	ld de,0ea33h		;7aaa
	ld l,(hl)		;7aad
	ret p			;7aae
	inc de			;7aaf
	add a,a			;7ab0
	add a,(hl)		;7ab1
	halt			;7ab2
l7ab3h:
	inc sp			;7ab3
	rst 30h			;7ab4
	ld a,(bc)		;7ab5
	adc a,b			;7ab6
	call nz,0bef8h		;7ab7
	pop de			;7aba
	add a,a			;7abb
	ld a,h			;7abc
	ld a,a			;7abd
	dec de			;7abe
	ld a,h			;7abf
	add a,d			;7ac0
	ld a,b			;7ac1
	ld de,000ddh		;7ac2
	rrca			;7ac5
	adc a,a			;7ac6
	cp 0aeh			;7ac7
	or b			;7ac9
	add hl,sp		;7aca
	adc a,(hl)		;7acb
	rst 38h			;7acc
	ld a,(de)		;7acd
	jp po,0007fh		;7ace
	call nz,0d103h		;7ad1
	dec (hl)		;7ad4
	ret nc			;7ad5
	xor b			;7ad6
	dec bc			;7ad7
	add a,l			;7ad8
	adc a,l			;7ad9
	adc a,c			;7ada
	sbc a,l			;7adb
	ld b,0bbh		;7adc
	ld a,a			;7ade
	ld l,h			;7adf
	defb 0edh ;next byte illegal after ed	;7ae0
	di			;7ae1
	cp h			;7ae2
	ret p			;7ae3
	ld a,(de)		;7ae4
	ld d,l			;7ae5
	ld a,a			;7ae6
	ret m			;7ae7
	defb 0fdh,065h ;ld iyh,iyl	;7ae8
	rst 30h			;7aea
	adc a,b			;7aeb
	ld (006f6h),a		;7aec
	ld b,(hl)		;7aef
	add a,e			;7af0
	ld a,a			;7af1
	add a,a			;7af2
	add a,e			;7af3
	adc a,(hl)		;7af4
	ld bc,0333fh		;7af5
	ret m			;7af8
	ld e,b			;7af9
	ld c,a			;7afa
	ex de,hl		;7afb
	adc a,0bch		;7afc
	di			;7afe
	ld a,l			;7aff
	add a,l			;7b00
	inc l			;7b01
	rst 0			;7b02
	cp 0cfh			;7b03
	ld a,a			;7b05
	jp nc,02692h		;7b06
	adc a,b			;7b09
	add a,b			;7b0a
	jp po,09c20h		;7b0b
	ld sp,hl		;7b0e
	sub h			;7b0f
	defb 0fdh,043h,0d0h ;illegal sequence	;7b10
	ld (hl),00dh		;7b13
	djnz $+32		;7b15
	ld a,(bc)		;7b17
	inc hl			;7b18
	adc a,a			;7b19
	inc d			;7b1a
	djnz l7b2ah		;7b1b
	add a,h			;7b1d
	defb 0ddh,07fh,09ch ;illegal sequence	;7b1e
	inc sp			;7b21
	ld d,(hl)		;7b22
	rst 28h			;7b23
	jr z,l7b7bh		;7b24
	jp pe,0f9a2h		;7b26
	add a,a			;7b29
l7b2ah:
	jr z,$-10		;7b2a
	sub h			;7b2c
	or 008h			;7b2d
	adc a,l			;7b2f
	sub d			;7b30
	ld a,a			;7b31
	adc a,a			;7b32
	inc bc			;7b33
	jp 08187h		;7b34
	ld l,a			;7b37
	ld a,a			;7b38
	or d			;7b39
	cp 03eh			;7b3a
	call m,0297fh		;7b3c
	jr nz,l7b42h		;7b3f
	xor c			;7b41
l7b42h:
	ld h,l			;7b42
	defb 0fdh,0a2h,010h ;illegal sequence	;7b43
	or d			;7b46
	ld a,a			;7b47
	ld c,b			;7b48
	djnz $+56		;7b49
	dec e			;7b4b
	call m,01184h		;7b4c
	ret nc			;7b4f
	dec e			;7b50
	ld bc,0e4dbh		;7b51
	ld a,a			;7b54
	dec b			;7b55
	ld d,l			;7b56
	ld a,l			;7b57
	dec (hl)		;7b58
	add a,c			;7b59
	di			;7b5a
	jp nc,0f566h		;7b5b
	and 083h		;7b5e
	ld a,a			;7b60
	sbc a,h			;7b61
	rst 30h			;7b62
	ld (hl),a		;7b63
	add a,d			;7b64
	cp b			;7b65
	add a,e			;7b66
	ld h,033h		;7b67
	adc a,l			;7b69
	rra			;7b6a
	ld e,b			;7b6b
	ld e,b			;7b6c
	inc sp			;7b6d
	ld d,l			;7b6e
	dec de			;7b6f
	ld bc,0a87fh		;7b70
	cp 0fch			;7b73
	rrca			;7b75
	ld a,a			;7b76
	ld e,b			;7b77
	cp 08dh			;7b78
	ld (bc),a		;7b7a
l7b7bh:
	cp e			;7b7b
	ld (hl),098h		;7b7c
	add a,(hl)		;7b7e
	ld bc,0c8deh		;7b7f
	inc c			;7b82
	add a,l			;7b83
	adc a,07fh		;7b84
	adc a,h			;7b86
	ld e,b			;7b87
sub_7b88h:
	ld (hl),l		;7b88
	ld a,(hl)		;7b89
	cp e			;7b8a
	defb 0fdh,0ebh,02eh ;illegal sequence	;7b8b
	jp m,089cah		;7b8e
	sbc a,a			;7b91
	add a,a			;7b92
	add a,b			;7b93
	ld h,d			;7b94
	ld a,a			;7b95
	add a,(hl)		;7b96
	ret nz			;7b97
	ex de,hl		;7b98
	adc a,(hl)		;7b99
	rst 10h			;7b9a
	add a,b			;7b9b
	ld e,e			;7b9c
	out (07eh),a		;7b9d
	jp 00724h		;7b9f
	daa			;7ba2
	rst 38h			;7ba3
	defb 0edh ;next byte illegal after ed	;7ba4
	pop af			;7ba5
	ld a,a			;7ba6
	adc a,b			;7ba7
l7ba8h:
	cp 02bh			;7ba8
	or b			;7baa
	add hl,hl		;7bab
	ld c,0eeh		;7bac
	ld (hl),l		;7bae
	ld sp,hl		;7baf
	adc a,h			;7bb0
	ld bc,00d1dh		;7bb1
	adc a,e			;7bb4
	ld a,a			;7bb5
	pop de			;7bb6
	ret nc			;7bb7
	rst 38h			;7bb8
	ld h,h			;7bb9
	add a,a			;7bba
	dec (hl)		;7bbb
	add hl,bc		;7bbc
	ld e,a			;7bbd
	rst 38h			;7bbe
	push af			;7bbf
	ld d,(hl)		;7bc0
	ret p			;7bc1
	ld a,(bc)		;7bc2
	ld h,l			;7bc3
	ld (hl),0f2h		;7bc4
	call nz,08038h		;7bc6
	sub (hl)		;7bc9
	sub b			;7bca
	adc a,d			;7bcb
	adc a,b			;7bcc
	ld a,a			;7bcd
	adc a,l			;7bce
	ret m			;7bcf
	ld a,l			;7bd0
	ld (hl),b		;7bd1
	ld a,a			;7bd2
	rst 8			;7bd3
	ld b,h			;7bd4
	ld a,a			;7bd5
	cp c			;7bd6
	sub d			;7bd7
	ld a,a			;7bd8
	push de			;7bd9
	or 024h			;7bda
	defb 0fdh,0e7h,07fh ;illegal sequence	;7bdc
	dec de			;7bdf
	ld a,e			;7be0
	ret nz			;7be1
	inc h			;7be2
	add a,e			;7be3
	sub h			;7be4
	add a,b			;7be5
	sbc a,h			;7be6
	ld a,a			;7be7
	add a,c			;7be8
	rlca			;7be9
	cp a			;7bea
	inc sp			;7beb
	ld e,a			;7bec
	push af			;7bed
	ld d,l			;7bee
	ld a,a			;7bef
	adc a,e			;7bf0
	ld (hl),l		;7bf1
	adc a,c			;7bf2
	call nc,08083h		;7bf3
	push hl			;7bf6
	adc a,c			;7bf7
	and e			;7bf8
	halt			;7bf9
	cp a			;7bfa
	ld sp,08788h		;7bfb
	rst 30h			;7bfe
	ld d,d			;7bff
	jp nz,0ef02h		;7c00
	ei			;7c03
	ex af,af'		;7c04
	cp 0e7h			;7c05
	rst 38h			;7c07
	cp h			;7c08
	sub d			;7c09
	dec bc			;7c0a
	rst 38h			;7c0b
	pop af			;7c0c
	rst 20h			;7c0d
	and d			;7c0e
	ld (bc),a		;7c0f
	dec c			;7c10
	in a,(0bdh)		;7c11
	push af			;7c13
	ld b,b			;7c14
	djnz $+4		;7c15
	or d			;7c17
	jr nz,l7ba8h		;7c18
	rst 38h			;7c1a
	inc hl			;7c1b
	ei			;7c1c
	ld hl,(0c784h)		;7c1d
	ld a,a			;7c20
	ld de,l4a7fh		;7c21
	ld a,a			;7c24
	rst 38h			;7c25
	add hl,hl		;7c26
	ld a,(hl)		;7c27
	ld l,(hl)		;7c28
	halt			;7c29
	add a,a			;7c2a
	ld d,e			;7c2b
	inc sp			;7c2c
	ld a,a			;7c2d
	sub l			;7c2e
	ld a,b			;7c2f
	add a,d			;7c30
	sbc a,c			;7c31
	adc a,b			;7c32
	add a,c			;7c33
	ld l,a			;7c34
	add a,(hl)		;7c35
	ld l,a			;7c36
	halt			;7c37
	ld a,a			;7c38
	ret p			;7c39
	sbc a,(hl)		;7c3a
	inc h			;7c3b
	ld b,h			;7c3c
	nop			;7c3d
	ld c,h			;7c3e
	ld b,b			;7c3f
	add a,d			;7c40
	ld e,(hl)		;7c41
	add hl,de		;7c42
	rst 0			;7c43
	add hl,bc		;7c44
	cp h			;7c45
	ld (hl),b		;7c46
	ld a,a			;7c47
	pop de			;7c48
	ld (hl),h		;7c49
	sub c			;7c4a
	cp 094h			;7c4b
	rlca			;7c4d
	cp l			;7c4e
	ld e,b			;7c4f
	ld a,a			;7c50
	pop de			;7c51
	adc a,(hl)		;7c52
	add a,e			;7c53
	ld sp,0107fh		;7c54
	ld a,a			;7c57
	ret nz			;7c58
	or 087h			;7c59
	ld h,(hl)		;7c5b
	ld l,b			;7c5c
	ld d,(hl)		;7c5d
	xor h			;7c5e
	adc a,a			;7c5f
	jp p,l7f80h		;7c60
	cp h			;7c63
	jp p,07ec4h		;7c64
	ld (hl),a		;7c67
	rst 30h			;7c68
	ld d,a			;7c69
	ld iy,(08588h)		;7c6a
	sub e			;7c6e
	sub c			;7c6f
	ld a,a			;7c70
l7c71h:
	di			;7c71
	rlca			;7c72
	sbc a,h			;7c73
	call z,sub_7f0bh	;7c74
	push de			;7c77
	cp 018h			;7c78
	ld (02b72h),hl		;7c7a
	ld a,a			;7c7d
	ret nc			;7c7e
	jp pe,0827fh		;7c7f
	call 0e6ffh		;7c82
	ld sp,hl		;7c85
	dec h			;7c86
	ld h,l			;7c87
	ld a,l			;7c88
	add a,c			;7c89
	ld e,c			;7c8a
	ret p			;7c8b
	sub 089h		;7c8c
	xor d			;7c8e
	ld a,b			;7c8f
	ld sp,hl		;7c90
	ld hl,(0cb89h)		;7c91
	inc d			;7c94
	add a,e			;7c95
	and c			;7c96
	ld a,a			;7c97
	di			;7c98
	add a,(hl)		;7c99
	ld sp,hl		;7c9a
	ld e,a			;7c9b
	ld bc,l4222h		;7c9c
	ei			;7c9f
	ld l,00ch		;7ca0
	ld b,b			;7ca2
	add a,c			;7ca3
	jp pe,l5bfdh		;7ca4
	dec h			;7ca7
	or b			;7ca8
	ret nz			;7ca9
	rst 38h			;7caa
	call po,00272h		;7cab
	ld a,a			;7cae
	ld bc,008c3h		;7caf
	or b			;7cb2
	ret nc			;7cb3
	defb 0fdh,0d1h,01eh ;illegal sequence	;7cb4
	ei			;7cb7
	ld (hl),h		;7cb8
	add a,e			;7cb9
	ld l,h			;7cba
	add a,d			;7cbb
	push de			;7cbc
	rst 38h			;7cbd
	defb 0ddh,0ffh,013h ;illegal sequence	;7cbe
	defb 0edh ;next byte illegal after ed	;7cc1
	ld e,0ffh		;7cc2
	ld h,(hl)		;7cc4
	add a,b			;7cc5
	inc e			;7cc6
	ld d,e			;7cc7
	ccf			;7cc8
	add a,a			;7cc9
	sbc a,a			;7cca
	ret m			;7ccb
	ld b,b			;7ccc
	ld a,a			;7ccd
	add a,(hl)		;7cce
	jr c,l7d47h		;7ccf
	ld (hl),e		;7cd1
	rst 38h			;7cd2
	inc h			;7cd3
	ld a,b			;7cd4
	halt			;7cd5
	add a,l			;7cd6
	add hl,hl		;7cd7
	ld l,b			;7cd8
	halt			;7cd9
	di			;7cda
	ret po			;7cdb
	ld c,a			;7cdc
	inc h			;7cdd
	ei			;7cde
	add a,l			;7cdf
	ld sp,hl		;7ce0
	or c			;7ce1
	ex af,af'		;7ce2
	cp l			;7ce3
	sbc a,h			;7ce4
	sbc a,09ch		;7ce5
	and a			;7ce7
	ld a,a			;7ce8
	jp nc,0f4d0h		;7ce9
	xor d			;7cec
	ld b,(hl)		;7ced
	dec l			;7cee
	ld sp,hl		;7cef
	ld de,00111h		;7cf0
	call nz,sub_465eh	;7cf3
	ld a,a			;7cf6
	add a,l			;7cf7
	rlca			;7cf8
	ld a,b			;7cf9
	ld a,l			;7cfa
	rst 30h			;7cfb
	sub h			;7cfc
	ei			;7cfd
	xor 0efh		;7cfe
	sbc a,b			;7d00
	add a,h			;7d01
	jr z,l7d7bh		;7d02
	ld a,(hl)		;7d04
	adc a,b			;7d05
	and d			;7d06
	ei			;7d07
	sbc a,b			;7d08
	add a,h			;7d09
	ld h,e			;7d0a
	ccf			;7d0b
	ld de,sub_6786h		;7d0c
	ld h,l			;7d0f
	cp 0eeh			;7d10
	ld (de),a		;7d12
	adc a,a			;7d13
	cp 017h			;7d14
	nop			;7d16
	ld a,a			;7d17
	xor c			;7d18
	add hl,bc		;7d19
	sbc a,c			;7d1a
	rst 38h			;7d1b
	ld e,a			;7d1c
	dec l			;7d1d
	add a,b			;7d1e
	xor d			;7d1f
	ld de,l637fh		;7d20
	ld bc,0dd7fh		;7d23
	add a,d			;7d26
	ld e,b			;7d27
	call nz,044bch		;7d28
	dec e			;7d2b
	ld a,h			;7d2c
	djnz $+31		;7d2d
	cp 0a3h			;7d2f
	or b			;7d31
	ld a,a			;7d32
	add a,d			;7d33
	nop			;7d34
	ld l,b			;7d35
	ld a,a			;7d36
	ld d,c			;7d37
	ld (hl),06dh		;7d38
	call m,sub_7f72h	;7d3a
	ld a,b			;7d3d
	jr nc,l7da5h		;7d3e
	inc sp			;7d40
	ld a,a			;7d41
	inc sp			;7d42
	rst 30h			;7d43
	call po,03d83h		;7d44
l7d47h:
	ld h,(hl)		;7d47
	ld d,l			;7d48
	ld a,a			;7d49
	and e			;7d4a
	cp 0cfh			;7d4b
	cp (hl)			;7d4d
	di			;7d4e
	rst 38h			;7d4f
	sbc a,b			;7d50
	ld (hl),e		;7d51
	ld (0829dh),hl		;7d52
	ret nz			;7d55
	rst 38h			;7d56
	cp 03ch			;7d57
	xor l			;7d59
	sub 011h		;7d5a
	or c			;7d5c
	ld (hl),b		;7d5d
	jr nz,$+113		;7d5e
	dec e			;7d60
	ld a,a			;7d61
	push af			;7d62
	ex de,hl		;7d63
	pop de			;7d64
	ld de,08177h		;7d65
	inc hl			;7d68
	rst 38h			;7d69
	sbc a,c			;7d6a
	add a,b			;7d6b
	ld bc,l6565h		;7d6c
	ld (hl),e		;7d6f
	push af			;7d70
	rst 38h			;7d71
	ei			;7d72
	ld a,(08467h)		;7d73
	inc bc			;7d76
	ld h,e			;7d77
sub_7d78h:
	add a,a			;7d78
	ld d,e			;7d79
	inc b			;7d7a
l7d7bh:
	add a,a			;7d7b
	ld d,l			;7d7c
	ld (hl),e		;7d7d
	add a,(hl)		;7d7e
	add a,(hl)		;7d7f
	ld c,c			;7d80
	jp nz,0fee4h		;7d81
	cp e			;7d84
	ld c,a			;7d85
	defb 0fdh,093h,010h ;illegal sequence	;7d86
	defb 0fdh,0d9h,0f0h ;illegal sequence	;7d89
	ld a,a			;7d8c
	rrca			;7d8d
	ret			;7d8e
	nop			;7d8f
	inc c			;7d90
	nop			;7d91
	ld a,a			;7d92
	xor d			;7d93
	ld l,014h		;7d94
	ld (bc),a		;7d96
	jr nz,l7db4h		;7d97
	ld (hl),a		;7d99
	jp p,084a7h		;7d9a
	dec h			;7d9d
	djnz $-124		;7d9e
	ld b,h			;7da0
	inc de			;7da1
	dec e			;7da2
	ld d,e			;7da3
	dec c			;7da4
l7da5h:
	rst 38h			;7da5
	ld hl,00600h		;7da6
	halt			;7da9
	ld d,l			;7daa
	ld l,a			;7dab
	ld l,c			;7dac
	nop			;7dad
	or 063h			;7dae
	add a,h			;7db0
	jr z,$-120		;7db1
	ld l,d			;7db3
l7db4h:
	ld e,a			;7db4
	ld (iy-003h),d		;7db5
	ld h,d			;7db8
	defb 0fdh,012h,077h ;illegal sequence	;7db9
	ld h,b			;7dbc
	cp 0edh			;7dbd
	cp 01eh			;7dbf
	ld c,(hl)		;7dc1
	ld bc,0e77fh		;7dc2
	adc a,b			;7dc5
	add a,c			;7dc6
	xor d			;7dc7
	dec bc			;7dc8
l7dc9h:
	dec bc			;7dc9
	adc a,0dbh		;7dca
	ld a,a			;7dcc
	call p,0f546h		;7dcd
	ld b,a			;7dd0
	ld a,a			;7dd1
	dec bc			;7dd2
	defb 0ddh,0fdh,09bh ;illegal sequence	;7dd3
	cp a			;7dd6
	out (010h),a		;7dd7
	ld bc,0ff71h		;7dd9
	xor b			;7ddc
	rst 38h			;7ddd
	sub a			;7dde
	ld h,a			;7ddf
	cp 053h			;7de0
	ld (hl),h		;7de2
	cp 0bch			;7de3
	pop af			;7de5
	ld b,(hl)		;7de6
	add a,h			;7de7
	ld l,(hl)		;7de8
	defb 0fdh,0b8h,073h ;illegal sequence	;7de9
	ld a,a			;7dec
	inc hl			;7ded
	add a,a			;7dee
	ld (hl),b		;7def
	cp 0e8h			;7df0
	sub (hl)		;7df2
	call m,sub_7ff8h+1	;7df3
	ld b,0abh		;7df6
	and b			;7df8
	cp e			;7df9
	cp e			;7dfa
	call z,0fc6ch		;7dfb
	ld a,a			;7dfe
	defb 0ddh,00eh,045h ;illegal sequence	;7dff
	rst 38h			;7e02
	ld a,a			;7e03
	call c,sub_65feh	;7e04
	sub h			;7e07
	inc h			;7e08
	rst 38h			;7e09
	or a			;7e0a
	rst 38h			;7e0b
	ld (de),a		;7e0c
	inc sp			;7e0d
	cp 058h			;7e0e
	jr l7e78h		;7e10
	ld (hl),e		;7e12
	ccf			;7e13
l7e14h:
	ld a,a			;7e14
	ld l,a			;7e15
	set 7,(hl)		;7e16
	ei			;7e18
	inc sp			;7e19
	adc a,h			;7e1a
	ret p			;7e1b
	ld h,(hl)		;7e1c
	ld e,b			;7e1d
	ld c,a			;7e1e
	ld (hl),b		;7e1f
	defb 0fdh,0d1h,0feh ;illegal sequence	;7e20
	xor h			;7e23
	ex de,hl		;7e24
	nop			;7e25
	ld b,h			;7e26
	ld a,(hl)		;7e27
	dec bc			;7e28
	xor d			;7e29
	add hl,bc		;7e2a
	defb 0fdh,02dh ;dec iyl	;7e2b
	add a,e			;7e2d
	adc a,e			;7e2e
	nop			;7e2f
	ld (l7fd1h+2),a		;7e30
	in a,(0f1h)		;7e33
	ld l,c			;7e35
	add a,a			;7e36
	ld c,h			;7e37
	adc a,b			;7e38
	ret z			;7e39
	call m,008dch		;7e3a
	ld (hl),h		;7e3d
	dec e			;7e3e
	ld a,a			;7e3f
	nop			;7e40
	ld a,(de)		;7e41
	ld (hl),l		;7e42
	ld (hl),l		;7e43
	ld (hl),07fh		;7e44
	ld (hl),030h		;7e46
	inc sp			;7e48
	jr c,l7ecah		;7e49
	dec (hl)		;7e4b
	ld l,b			;7e4c
	sbc a,a			;7e4d
	ld a,e			;7e4e
	add a,(hl)		;7e4f
	adc a,h			;7e50
	sub c			;7e51
	ld bc,0f85fh		;7e52
	call m,0d16eh		;7e55
	cp 0e7h			;7e58
	ld a,a			;7e5a
	call po,0040ah		;7e5b
	xor d			;7e5e
	nop			;7e5f
	cp h			;7e60
	sub b			;7e61
	cp h			;7e62
	ld a,d			;7e63
	cp h			;7e64
	ld hl,(099c0h)		;7e65
	nop			;7e68
	or d			;7e69
l7e6ah:
	ld (hl),h		;7e6a
	or 07fh			;7e6b
	jp c,0f800h		;7e6d
	and e			;7e70
	add a,b			;7e71
	add hl,de		;7e72
	ld bc,00616h		;7e73
	ld b,a			;7e76
	rst 38h			;7e77
l7e78h:
	ld a,(hl)		;7e78
	add a,c			;7e79
	inc e			;7e7a
	ld h,l			;7e7b
	ld l,a			;7e7c
	ld a,a			;7e7d
	ld c,c			;7e7e
	add a,c			;7e7f
	rst 30h			;7e80
	daa			;7e81
	adc a,e			;7e82
	jp nc,092f8h		;7e83
	adc a,c			;7e86
	ld b,h			;7e87
	ld a,(hl)		;7e88
	add a,a			;7e89
	ld h,l			;7e8a
	add a,a			;7e8b
	sub c			;7e8c
	cp 0f4h			;7e8d
	ex (sp),hl		;7e8f
	ld sp,hl		;7e90
	dec e			;7e91
	ld a,a			;7e92
	ld b,b			;7e93
	ld (hl),h		;7e94
	cp h			;7e95
	sbc a,e			;7e96
	call z,000b9h		;7e97
	sbc a,a			;7e9a
	rst 38h			;7e9b
	xor d			;7e9c
	ei			;7e9d
	ld l,a			;7e9e
	ld a,a			;7e9f
	rra			;7ea0
	cp l			;7ea1
	rst 20h			;7ea2
	inc d			;7ea3
	dec d			;7ea4
	dec e			;7ea5
	rst 38h			;7ea6
	call c,0a280h		;7ea7
	scf			;7eaa
	cp 055h			;7eab
	inc sp			;7ead
	call p,sub_7352h	;7eae
	ld a,(hl)		;7eb1
	call c,044fah		;7eb2
	ld l,a			;7eb5
	adc a,d			;7eb6
	ld a,b			;7eb7
	cp d			;7eb8
	adc a,c			;7eb9
	cp 026h			;7eba
	add a,a			;7ebc
	jp m,0f57ch		;7ebd
	ei			;7ec0
	pop hl			;7ec1
	ld a,a			;7ec2
	jp nz,000cch		;7ec3
	inc hl			;7ec6
	inc c			;7ec7
	ret			;7ec8
	ei			;7ec9
l7ecah:
	ld a,07fh		;7eca
	ld e,(hl)		;7ecc
	inc a			;7ecd
	ld e,010h		;7ece
	ld a,a			;7ed0
	inc a			;7ed1
	ld a,h			;7ed2
	ex de,hl		;7ed3
	ld a,a			;7ed4
	nop			;7ed5
	ld a,a			;7ed6
	ret nz			;7ed7
	rlca			;7ed8
	ld d,e			;7ed9
	in a,(07fh)		;7eda
	pop af			;7edc
	ld b,h			;7edd
	ld (hl),a		;7ede
	ld a,b			;7edf
	add a,a			;7ee0
	ld (hl),d		;7ee1
	jr c,l7e6ah		;7ee2
	sub h			;7ee4
	add a,(hl)		;7ee5
	rst 38h			;7ee6
	sub h			;7ee7
	ld a,a			;7ee8
	defb 0fdh,0a2h,011h ;illegal sequence	;7ee9
	call m,0fdbch		;7eec
	ld a,a			;7eef
	ld h,l			;7ef0
	add a,b			;7ef1
	ld a,07ch		;7ef2
	ccf			;7ef4
	ld a,a			;7ef5
	sub l			;7ef6
	pop hl			;7ef7
	defb 0fdh,069h ;ld iyl,c	;7ef8
	nop			;7efa
	set 2,b			;7efb
	ld a,a			;7efd
	push bc			;7efe
	nop			;7eff
l7f00h:
	jp pe,07274h		;7f00
l7f03h:
	ret m			;7f03
	adc a,(hl)		;7f04
	halt			;7f05
	scf			;7f06
	ld h,e			;7f07
	add a,l			;7f08
	inc d			;7f09
	ld d,e			;7f0a
sub_7f0bh:
	inc b			;7f0b
	adc a,e			;7f0c
	ld h,d			;7f0d
	ld l,b			;7f0e
	cp 0b6h			;7f0f
l7f11h:
	cp 03eh			;7f11
	add hl,bc		;7f13
	call p,0fde6h		;7f14
	ld (hl),d		;7f17
	call m,0c77bh		;7f18
	rst 38h			;7f1b
l7f1ch:
	ccf			;7f1c
sub_7f1dh:
	ld a,a			;7f1d
	sub l			;7f1e
l7f1fh:
	ret nc			;7f1f
l7f20h:
	sbc a,b			;7f20
l7f21h:
	ld (hl),c		;7f21
	cp e			;7f22
	or b			;7f23
	ld a,a			;7f24
	jp (hl)			;7f25
	add a,l			;7f26
	ld (hl),h		;7f27
	cp 076h			;7f28
	ld (bc),a		;7f2a
	ret p			;7f2b
	ld a,a			;7f2c
	dec l			;7f2d
	rlca			;7f2e
	ld d,(hl)		;7f2f
	defb 0fdh,02dh ;dec iyl	;7f30
	ld (hl),l		;7f32
l7f33h:
	di			;7f33
l7f34h:
	cp e			;7f34
	add a,l			;7f35
	jr z,l7f3fh		;7f36
	adc a,b			;7f38
	cp b			;7f39
	add a,a			;7f3a
	or a			;7f3b
sub_7f3ch:
	defb 0fdh,06dh ;ld iyl,iyl	;7f3c
	ld sp,hl		;7f3e
l7f3fh:
	ex (sp),hl		;7f3f
l7f40h:
	dec (hl)		;7f40
	dec hl			;7f41
	call m,022a7h		;7f42
	ld a,a			;7f45
	cp (hl)			;7f46
	cp 09ah			;7f47
	rst 38h			;7f49
	di			;7f4a
	ld a,01dh		;7f4b
	ld sp,hl		;7f4d
	ld sp,hl		;7f4e
	call pe,07f10h		;7f4f
	and 0d1h		;7f52
	call m,0cc8bh		;7f54
	nop			;7f57
	ld (de),a		;7f58
	ld a,b			;7f59
	jr nz,l7fdbh		;7f5a
	ld c,c			;7f5c
	add a,b			;7f5d
	add a,b			;7f5e
	adc a,e			;7f5f
	rst 30h			;7f60
	ld d,a			;7f61
	ld a,a			;7f62
l7f63h:
	scf			;7f63
	call m,0fec4h		;7f64
	ld a,d			;7f67
	ld d,a			;7f68
	call m,sub_7f3ch	;7f69
	xor c			;7f6c
sub_7f6dh:
	inc h			;7f6d
	call m,0ffcbh		;7f6e
	ld a,h			;7f71
sub_7f72h:
	rst 18h			;7f72
	ret nz			;7f73
	ld a,a			;7f74
	inc hl			;7f75
	ld de,01e7fh		;7f76
sub_7f79h:
	defb 0ddh,07fh,077h ;illegal sequence	;7f79
l7f7ch:
	add a,b			;7f7c
l7f7dh:
	sbc a,l			;7f7d
	ld a,(hl)		;7f7e
sub_7f7fh:
	ld a,c			;7f7f
l7f80h:
	ld a,a			;7f80
l7f81h:
	adc a,e			;7f81
	rlca			;7f82
	ld (hl),a		;7f83
	ld (hl),e		;7f84
	defb 0fdh,000h,083h ;illegal sequence	;7f85
	ccf			;7f88
	ld h,(hl)		;7f89
	ld h,(hl)		;7f8a
	ld h,l			;7f8b
	ld d,l			;7f8c
	sbc a,h			;7f8d
	cp 023h			;7f8e
	add a,(hl)		;7f90
	ld l,b			;7f91
	cp 0e3h			;7f92
	ld (hl),e		;7f94
	ld hl,0fd7fh		;7f95
	ld a,092h		;7f98
	rst 38h			;7f9a
	jp po,0f89bh		;7f9b
l7f9eh:
	ld a,a			;7f9e
	sbc a,090h		;7f9f
	ld a,a			;7fa1
	ld l,010h		;7fa2
	ld a,a			;7fa4
	jp (hl)			;7fa5
	cp 08dh			;7fa6
sub_7fa8h:
	ld a,(bc)		;7fa8
	sub e			;7fa9
	cp 07fh			;7faa
	push bc			;7fac
	nop			;7fad
	rst 30h			;7fae
	push bc			;7faf
sub_7fb0h:
	jp p,l7892h		;7fb0
	ld (hl),080h		;7fb3
sub_7fb5h:
	ld d,d			;7fb5
	add a,c			;7fb6
l7fb7h:
	ld d,e			;7fb7
	cp 049h			;7fb8
	ld a,a			;7fba
	ld (hl),b		;7fbb
	ld sp,hl		;7fbc
	xor (hl)		;7fbd
	xor (hl)		;7fbe
	ld b,d			;7fbf
l7fc0h:
	ld a,(hl)		;7fc0
	inc bc			;7fc1
	ld (de),a		;7fc2
	ld de,l4404h		;7fc3
	jr c,$+64		;7fc6
l7fc8h:
	ld a,a			;7fc8
	ld (hl),009h		;7fc9
sub_7fcbh:
	add a,e			;7fcb
	rra			;7fcc
	ld a,a			;7fcd
	ld (0ecd1h),hl		;7fce
l7fd1h:
	ld a,(00178h)		;7fd1
	ld a,a			;7fd4
	ld e,h			;7fd5
	ld c,l			;7fd6
	ld a,(bc)		;7fd7
	jp m,02a7fh		;7fd8
l7fdbh:
	rlca			;7fdb
	ei			;7fdc
	ld b,h			;7fdd
	add a,a			;7fde
	ld a,a			;7fdf
	halt			;7fe0
	halt			;7fe1
	add a,b			;7fe2
	and c			;7fe3
	ld e,b			;7fe4
	add a,e			;7fe5
	add a,a			;7fe6
	sub (hl)		;7fe7
	defb 0fdh,012h,0fdh ;illegal sequence	;7fe8
	jp (hl)			;7feb
	ld a,a			;7fec
	call po,0f900h		;7fed
l7ff0h:
	ld a,a			;7ff0
l7ff1h:
	or d			;7ff1
	add a,e			;7ff2
	ld a,0c7h		;7ff3
	or b			;7ff5
l7ff6h:
	ld a,a			;7ff6
	dec sp			;7ff7
sub_7ff8h:
	call p,07f6fh		;7ff8
	rst 0			;7ffb
l7ffch:
	nop			;7ffc
sub_7ffdh:
	or a			;7ffd
l7ffeh:
	jr nz,$+129		;7ffe
