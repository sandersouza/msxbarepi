; z80dasm 1.2.0
; command line: z80dasm -a -g 0x4000 -l -o docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank12.asm /tmp/smanbow2_bank_12.bin

	org 04000h

	and d			;4000
	dec bc			;4001
	ld d,(hl)		;4002
l4003h:
	inc b			;4003
	and b			;4004
	add a,e			;4005
	call nc,sub_7e5ch	;4006
	ld h,d			;4009
	sbc a,e			;400a
	call pe,sub_45edh	;400b
	ld (0aeb2h),a		;400e
	sbc a,c			;4011
	jr z,l4049h		;4012
	ld l,a			;4014
	ei			;4015
	nop			;4016
	ld (bc),a		;4017
	ld l,a			;4018
	ld hl,06ea7h		;4019
	ld c,0a3h		;401c
	ld d,e			;401e
	rlca			;401f
	ld b,a			;4020
l4021h:
	xor a			;4021
	adc a,e			;4022
	add hl,bc		;4023
	nop			;4024
	ld (hl),c		;4025
	ld (bc),a		;4026
l4027h:
	inc e			;4027
	djnz l4021h		;4028
	ld b,l			;402a
	jr z,$+52		;402b
	rla			;402d
	sbc a,0ceh		;402e
	ld e,h			;4030
	ld hl,0cd27h		;4031
	rrca			;4034
	dec b			;4035
	cp (hl)			;4036
	ret p			;4037
	ld h,e			;4038
	add a,028h		;4039
	adc a,d			;403b
	cp h			;403c
	ret p			;403d
	inc h			;403e
	ld c,(hl)		;403f
	rlca			;4040
	ld e,09ah		;4041
	ld c,b			;4043
	ld l,(hl)		;4044
	ld c,(hl)		;4045
	ld b,09fh		;4046
	ld a,(de)		;4048
l4049h:
	cp 0e7h			;4049
	add a,a			;404b
sub_404ch:
	ld a,008h		;404c
	call p,0f5e6h		;404e
	ld h,b			;4051
	and 020h		;4052
	jp z,03c46h		;4054
	add a,d			;4057
	sbc a,b			;4058
	ld l,h			;4059
	ld e,l			;405a
	inc l			;405b
	sub 061h		;405c
	ld b,0e7h		;405e
	rlca			;4060
	ld e,h			;4061
	inc l			;4062
	defb 0edh ;next byte illegal after ed	;4063
	add a,b			;4064
	ld l,e			;4065
	ld e,l			;4066
	ld hl,l5d65h		;4067
l406ah:
	defb 0ddh,0abh,04eh ;illegal sequence	;406a
	ld a,(0c609h)		;406d
	add a,(hl)		;4070
	cp h			;4071
	ld c,025h		;4072
	add a,e			;4074
	ld e,b			;4075
	rst 38h			;4076
	ld bc,08c7ah		;4077
	push de			;407a
	ld l,d			;407b
	sbc a,c			;407c
	add a,014h		;407d
	sbc a,l			;407f
	ld (hl),l		;4080
	add a,h			;4081
	ld a,05ch		;4082
	or e			;4084
	ld (06358h),hl		;4085
	inc bc			;4088
	add a,e			;4089
	ld e,l			;408a
	add a,d			;408b
	add a,d			;408c
	ld h,b			;408d
	ld h,d			;408e
	ld de,04198h		;408f
	ld h,b			;4092
	ld de,04c9fh		;4093
sub_4096h:
	ld e,a			;4096
	inc bc			;4097
	call pe,02303h		;4098
	add hl,hl		;409b
	ld h,b			;409c
	inc bc			;409d
	ld h,(hl)		;409e
	ld h,b			;409f
	rst 10h			;40a0
	ld d,c			;40a1
	ld e,h			;40a2
	push hl			;40a3
	or b			;40a4
	call po,0ed5dh		;40a5
	add hl,bc		;40a8
	ld e,a			;40a9
	and 03fh		;40aa
	call z,0048dh		;40ac
	ld a,(l5bfeh)		;40af
	adc a,a			;40b2
	adc a,c			;40b3
	adc a,a			;40b4
	ld b,0ffh		;40b5
	ld b,084h		;40b7
	add hl,hl		;40b9
	ld e,a			;40ba
	rrca			;40bb
	ld a,l			;40bc
	sub h			;40bd
	cp 06eh			;40be
	ld d,a			;40c0
	call po,0da1ah		;40c1
	push de			;40c4
	ld hl,0900fh		;40c5
	add a,l			;40c8
	jp c,02864h		;40c9
	ld e,(hl)		;40cc
	cp 099h			;40cd
	ld a,(de)		;40cf
	ld a,b			;40d0
	ld e,(hl)		;40d1
	ret			;40d2
	ld c,0cah		;40d3
	xor 00ch		;40d5
	ld a,d			;40d7
	ld de,0e23ah		;40d8
	ld e,l			;40db
	ld c,(hl)		;40dc
	inc h			;40dd
	ld e,(hl)		;40de
	inc bc			;40df
	ld de,05df0h		;40e0
	ld d,d			;40e3
l40e4h:
	ex (sp),hl		;40e4
	ld e,l			;40e5
l40e6h:
	cp a			;40e6
	cp e			;40e7
	dec b			;40e8
	ld d,l			;40e9
	and 01fh		;40ea
	inc (hl)		;40ec
	inc bc			;40ed
	cp c			;40ee
	ld (bc),a		;40ef
	ld h,c			;40f0
	ld e,h			;40f1
	sub 00dh		;40f2
	ld (0adc8h),a		;40f4
	ld b,c			;40f7
l40f8h:
	ld h,d			;40f8
	ld e,h			;40f9
	add a,0a4h		;40fa
	ld hl,0c3c7h		;40fc
	call nc,0c918h		;40ff
	sbc a,b			;4102
	or (hl)			;4103
	ld a,060h		;4104
	nop			;4106
	ld (l630ah),a		;4107
	ld a,068h		;410a
	ld (l630bh),a		;410c
	ld d,(hl)		;410f
	xor a			;4110
	out (c),d		;4111
	inc sp			;4113
	sbc a,d			;4114
	ld b,e			;4115
	ld e,h			;4116
	ret nz			;4117
	ld a,0d2h		;4118
	inc d			;411a
	ld e,c			;411b
	sub h			;411c
	inc d			;411d
	cp h			;411e
	xor c			;411f
	ld d,c			;4120
	ld b,a			;4121
	sbc a,h			;4122
	ld de,0a93fh		;4123
	jp 0328eh		;4126
	ld c,(hl)		;4129
	sub e			;412a
	daa			;412b
	xor (hl)		;412c
	ld b,014h		;412d
	inc de			;412f
	ld c,(hl)		;4130
	ld b,a			;4131
	ld (hl),b		;4132
	ld a,(0b889h)		;4133
	ld h,l			;4136
	ret nc			;4137
	ld b,a			;4138
	and (hl)		;4139
	and l			;413a
	dec h			;413b
	ccf			;413c
	ld d,d			;413d
	ld l,c			;413e
	ret nz			;413f
l4140h:
	xor e			;4140
	cp 0b0h			;4141
	ld c,08ch		;4143
	ld e,(hl)		;4145
l4146h:
	cp d			;4146
	xor l			;4147
	sub b			;4148
	jp 05113h		;4149
	rst 38h			;414c
	inc de			;414d
	ld h,05fh		;414e
	and h			;4150
	ld l,(hl)		;4151
	ld d,d			;4152
	and (hl)		;4153
	xor d			;4154
	ld a,(0a625h)		;4155
	ld h,0aah		;4158
	inc bc			;415a
	jr nc,l40f8h		;415b
	ld c,h			;415d
	adc a,(hl)		;415e
	ld e,(hl)		;415f
l4160h:
	adc a,e			;4160
	xor d			;4161
	adc a,b			;4162
	ret			;4163
	dec b			;4164
	ret nz			;4165
	ld b,l			;4166
	ld d,c			;4167
	ccf			;4168
	call nc,0f691h		;4169
	add hl,de		;416c
	jp l7b5eh		;416d
	ld (01361h),hl		;4170
	ld a,0a8h		;4173
l4175h:
	sbc a,e			;4175
	ld d,d			;4176
	ld h,e			;4177
	and a			;4178
	jr nc,$+7		;4179
	ld h,e			;417b
	adc a,(hl)		;417c
	sbc a,(hl)		;417d
	adc a,h			;417e
	ld a,(02d8dh)		;417f
	jp c,0058fh		;4182
	call po,079edh		;4185
	pop hl			;4188
	ld e,046h		;4189
	and e			;418b
	dec hl			;418c
	ld bc,023cah		;418d
	sbc a,c			;4190
	nop			;4191
	add a,045h		;4192
	ld (08037h),a		;4194
	ld a,014h		;4197
	ld l,e			;4199
	ld (00438h),a		;419a
	rst 10h			;419d
	ret			;419e
	inc a			;419f
	inc b			;41a0
	call nc,0dc22h		;41a1
	ld e,(hl)		;41a4
	ld a,(0abb0h)		;41a5
	dec sp			;41a8
	add a,b			;41a9
	sub l			;41aa
	add a,e			;41ab
	ld bc,l4f0ch		;41ac
	ld e,0e0h		;41af
	call sub_560ch		;41b1
	jp p,0a73ch		;41b4
	inc bc			;41b7
	jp p,00e53h		;41b8
	jp p,09991h		;41bb
	jp nz,09726h		;41be
	ld (hl),c		;41c1
	ld b,l			;41c2
	inc bc			;41c3
	add a,h			;41c4
	dec (hl)		;41c5
	ld e,a			;41c6
	ld (hl),c		;41c7
	jr z,$+88		;41c8
	ld e,a			;41ca
	ld l,e			;41cb
	pop hl			;41cc
	ld c,e			;41cd
	dec b			;41ce
	ret nz			;41cf
	sbc a,l			;41d0
	ld b,h			;41d1
	rst 38h			;41d2
	sbc a,d			;41d3
	ld (hl),d		;41d4
	ld d,l			;41d5
	ld b,(hl)		;41d6
	ld e,a			;41d7
	sbc a,d			;41d8
	ld d,l			;41d9
	inc hl			;41da
	ld c,e			;41db
	dec d			;41dc
	rra			;41dd
	ld (de),a		;41de
	daa			;41df
	ld e,a			;41e0
	call po,027aah		;41e1
	rra			;41e4
	adc a,c			;41e5
	ld (hl),c		;41e6
	rlca			;41e7
	adc a,a			;41e8
	ld a,e			;41e9
	ld e,l			;41ea
	ld l,h			;41eb
	ld h,h			;41ec
	add a,h			;41ed
	ld l,d			;41ee
	jr z,l4175h		;41ef
	dec (hl)		;41f1
	ld h,e			;41f2
	add a,h			;41f3
	ld a,(de)		;41f4
	inc e			;41f5
	adc a,h			;41f6
	add a,h			;41f7
	sub 073h		;41f8
	inc d			;41fa
	ld (hl),e		;41fb
	ld b,a			;41fc
	and e			;41fd
	ld e,078h		;41fe
	xor l			;4200
	ld (de),a		;4201
	ld a,b			;4202
	or 0e2h			;4203
	jp z,082cdh		;4205
	and e			;4208
	dec c			;4209
	ret nc			;420a
	ld h,b			;420b
	ccf			;420c
	dec c			;420d
	ld d,032h		;420e
	djnz $+101		;4210
	dec (hl)		;4212
	ld (de),a		;4213
	inc (hl)		;4214
	ld (00712h),a		;4215
	ld (bc),a		;4218
l4219h:
	ld c,b			;4219
	ld c,c			;421a
	inc c			;421b
	dec b			;421c
	inc bc			;421d
	dec b			;421e
	ld c,005h		;421f
	ld d,(hl)		;4221
	sub (hl)		;4222
	jp nz,0ca3eh		;4223
	push de			;4226
	ld e,a			;4227
	sub e			;4228
	ld sp,00e13h		;4229
	ld b,c			;422c
	dec h			;422d
	cp 04ch			;422e
	jp c,0dfe6h		;4230
	dec h			;4233
	rra			;4234
	add a,c			;4235
	ld e,c			;4236
	sbc a,d			;4237
	add hl,de		;4238
	and h			;4239
	inc h			;423a
	sbc a,l			;423b
	ret pe			;423c
	add a,048h		;423d
	ld (01f69h),a		;423f
	ld a,032h		;4242
	ld hl,02405h		;4244
	inc b			;4247
	ld (hl),01bh		;4248
	dec b			;424a
	dec b			;424b
	sbc a,(hl)		;424c
	dec b			;424d
	dec e			;424e
	inc a			;424f
	ld b,012h		;4250
	ld h,b			;4252
	inc a			;4253
	ld h,022h		;4254
	ld c,01fh		;4256
	inc a			;4258
	cp b			;4259
	inc hl			;425a
	sbc a,d			;425b
	or l			;425c
	rra			;425d
	inc a			;425e
	inc bc			;425f
	inc a			;4260
	call c,sub_4ebbh	;4261
	ld l,03ch		;4264
	ld (de),a		;4266
	jr nc,$+7		;4267
	ld b,036h		;4269
	ld c,c			;426b
	ld hl,(00705h)		;426c
	dec b			;426f
	inc l			;4270
	inc a			;4271
	ret po			;4272
	ld c,a			;4273
	call nc,0313ch		;4274
	ld c,02eh		;4277
	push de			;4279
	inc a			;427a
	ld h,b			;427b
	inc a			;427c
	rra			;427d
	ld l,e			;427e
	inc a			;427f
	inc b			;4280
	inc a			;4281
	push bc			;4282
	dec a			;4283
	cp b			;4284
	inc e			;4285
	add hl,bc		;4286
	inc d			;4287
	ld (0073fh),a		;4288
	ex af,af'		;428b
	jr c,l42b2h		;428c
	add hl,sp		;428e
l428fh:
	dec b			;428f
	add hl,bc		;4290
	dec b			;4291
	dec sp			;4292
	sub e			;4293
	dec b			;4294
	ld h,c			;4295
	ld d,b			;4296
	ld c,h			;4297
	add hl,de		;4298
	adc a,e			;4299
	defb 0ddh,012h,04eh ;illegal sequence	;429a
	rlca			;429d
	ld a,(bc)		;429e
	inc de			;429f
	ld d,h			;42a0
	ld c,b			;42a1
	dec b			;42a2
	call po,0321eh		;42a3
	ld c,d			;42a6
	ld e,b			;42a7
	dec c			;42a8
	xor b			;42a9
	ld e,b			;42aa
	ld c,c			;42ab
	ld b,b			;42ac
	ld de,0114fh		;42ad
	dec a			;42b0
	ld e,e			;42b1
l42b2h:
	xor c			;42b2
	cp h			;42b3
	ld e,e			;42b4
	add hl,sp		;42b5
	ld e,e			;42b6
	or (hl)			;42b7
	call m,00d98h		;42b8
	jp z,00dadh		;42bb
	jr nc,l4329h		;42be
	ld (hl),b		;42c0
	ld bc,0f769h		;42c1
	ld c,h			;42c4
	ld e,e			;42c5
	and d			;42c6
	call c,0beb4h		;42c7
	jp pe,0e38bh		;42ca
	sub l			;42cd
	ret m			;42ce
	ex (sp),hl		;42cf
	ld b,c			;42d0
	ld sp,hl		;42d1
	ld e,e			;42d2
	call po,0805bh		;42d3
	inc h			;42d6
	inc b			;42d7
	cp 04dh			;42d8
	ld a,b			;42da
	xor a			;42db
	rlca			;42dc
	ld c,l			;42dd
	jr nz,l428fh		;42de
	ld d,02fh		;42e0
	call m,09660h		;42e2
	add a,l			;42e5
	ld a,(0bb07h)		;42e6
	ld sp,l6158h		;42e9
	call nc,sub_6062h	;42ec
	cp l			;42ef
	sub (hl)		;42f0
	dec b			;42f1
	sub 0cfh		;42f2
	nop			;42f4
	ld b,01fh		;42f5
	jp nc,l6121h		;42f7
	ld b,031h		;42fa
	ccf			;42fc
	jp z,l7f04h		;42fd
	pop bc			;4300
	scf			;4301
	ret po			;4302
	sbc a,b			;4303
	dec e			;4304
	sub 0d8h		;4305
	adc a,b			;4307
	ld b,d			;4308
	ld h,c			;4309
	dec bc			;430a
	ld a,028h		;430b
	jp z,00434h		;430d
	or 044h			;4310
	cp 090h			;4312
	ld c,l			;4314
	add a,d			;4315
	call 00426h		;4316
	ld bc,0d645h		;4319
	rst 28h			;431c
	add hl,de		;431d
	and 0feh		;431e
	dec c			;4320
	adc a,a			;4321
sub_4322h:
	ld h,(hl)		;4322
	rlca			;4323
	cp d			;4324
	cp 015h			;4325
	ex (sp),hl		;4327
	ld a,e			;4328
l4329h:
	rst 28h			;4329
	ld (de),a		;432a
	sub b			;432b
	sub 01bh		;432c
	djnz $-70		;432e
	jp z,l4a85h		;4330
	cp 0dah			;4333
	ld (hl),c		;4335
	sbc a,b			;4336
	inc b			;4337
	ld (bc),a		;4338
	ld de,01080h		;4339
	cp 04eh			;433c
	jp c,0fe0fh		;433e
	and b			;4341
	jp nc,004a3h		;4342
	sub l			;4345
	ld bc,08ec3h		;4346
	ld h,c			;4349
	ld c,001h		;434a
	and a			;434c
l434dh:
	ld c,b			;434d
	rra			;434e
	ld (de),a		;434f
	jp z,l61b2h		;4350
	add a,l			;4353
	sub l			;4354
	ld l,042h		;4355
	ld l,021h		;4357
	or d			;4359
	add hl,hl		;435a
	ld bc,0a0d2h		;435b
	inc b			;435e
	ld (011ffh),a		;435f
	ld l,010h		;4362
	ld (0b2dah),hl		;4364
	ld l,08ch		;4367
	jp nc,0a3b2h		;4369
	ld l,00dh		;436c
	ret			;436e
	ld a,c			;436f
	sub a			;4370
	halt			;4371
	ret nz			;4372
	add hl,sp		;4373
	jp (hl)			;4374
	rlca			;4375
	ld bc,0edcfh		;4376
	ld a,e			;4379
	out (016h),a		;437a
	ld bc,0f102h		;437c
	inc bc			;437f
	inc b			;4380
	ret			;4381
	ld bc,00302h		;4382
	jp z,00102h		;4385
	sbc a,002h		;4388
	inc b			;438a
	ld a,h			;438b
	ex af,af'		;438c
	daa			;438d
	nop			;438e
	inc bc			;438f
	inc bc			;4390
	dec hl			;4391
	inc bc			;4392
	ld bc,l7902h		;4393
	inc b			;4396
	ret p			;4397
	ex af,af'		;4398
	sbc a,h			;4399
	nop			;439a
	inc b			;439b
	inc bc			;439c
	xor l			;439d
	inc b			;439e
	ld bc,0e702h		;439f
	inc b			;43a2
	ex af,af'		;43a3
	jp nz,l7200h		;43a4
	dec b			;43a7
	inc bc			;43a8
	dec b			;43a9
	or a			;43aa
	ld bc,00402h		;43ab
	sbc a,a			;43ae
	ex af,af'		;43af
l43b0h:
	ld a,(bc)		;43b0
	nop			;43b1
	cp a			;43b2
	cpl			;43b3
	xor d			;43b4
	dec l			;43b5
	call m,0fd0eh		;43b6
	ld e,e			;43b9
	and l			;43ba
	ld (01603h),hl		;43bb
	nop			;43be
	adc a,(hl)		;43bf
	and b			;43c0
	call nz,01961h		;43c1
	ld a,(hl)		;43c4
	inc b			;43c5
	cp 0ffh			;43c6
	jp nz,l627eh		;43c8
	cp e			;43cb
	ld d,e			;43cc
	add hl,de		;43cd
	ret			;43ce
	cp a			;43cf
	jp nc,l48bfh		;43d0
	jp 0bbb0h		;43d3
	add hl,bc		;43d6
	and b			;43d7
	ld h,d			;43d8
	ld a,(0cc0ch)		;43d9
	add a,b			;43dc
	ld a,d			;43dd
	ld a,076h		;43de
	ld b,094h		;43e0
	jp z,09903h		;43e2
	ld h,d			;43e5
	ld a,07ah		;43e6
	ld b,0b4h		;43e8
	or c			;43ea
	ld h,e			;43eb
	ld h,e			;43ec
	ld a,b			;43ed
	or e			;43ee
	adc a,c			;43ef
	pop af			;43f0
	sbc a,b			;43f1
	ld sp,hl		;43f2
	dec e			;43f3
	jp z,01d89h		;43f4
	ld bc,09f63h		;43f7
	xor d			;43fa
	add a,a			;43fb
	sbc a,c			;43fc
	dec b			;43fd
	jp nz,0fc0bh		;43fe
l4401h:
	jr nc,l4401h		;4401
	adc a,b			;4403
	ld a,004h		;4404
	and 006h		;4406
	nop			;4408
	jp z,029c3h		;4409
	adc a,b			;440c
	inc l			;440d
	ld b,074h		;440e
	xor h			;4410
	call nz,00929h		;4411
	add hl,hl		;4414
	jp m,029c5h		;4415
	ret pe			;4418
	dec e			;4419
	adc a,h			;441a
	ld b,h			;441b
	add a,e			;441c
	ex (sp),hl		;441d
	jp nc,01047h		;441e
	pop hl			;4421
	dec e			;4422
	ld h,b			;4423
	ld b,068h		;4424
	call z,0a8b4h		;4426
	dec e			;4429
	adc a,092h		;442a
	ld h,(hl)		;442c
	dec de			;442d
	rla			;442e
	xor b			;442f
	di			;4430
	ret po			;4431
	ld b,060h		;4432
	jp z,095f9h		;4434
	rla			;4437
	xor b			;4438
	ld b,0fch		;4439
	ex (sp),hl		;443b
l443ch:
	ld a,b			;443c
	cp l			;443d
	rla			;443e
	sub h			;443f
	ld h,l			;4440
	or h			;4441
	rst 18h			;4442
	ex af,af'		;4443
	adc a,b			;4444
	ld bc,l6074h		;4445
	ld l,(hl)		;4448
	ld l,b			;4449
	and d			;444a
	jr nc,l4450h		;444b
	inc bc			;444d
	rst 38h			;444e
	ld e,b			;444f
l4450h:
	dec h			;4450
	nop			;4451
	jr nz,$-50		;4452
	dec e			;4454
	ret nc			;4455
	ld c,08fh		;4456
	inc l			;4458
	nop			;4459
	inc (hl)		;445a
	ld c,037h		;445b
	jr nz,l446dh		;445d
	xor b			;445f
	ld a,(de)		;4460
	nop			;4461
	ld (de),a		;4462
	di			;4463
	ld c,01ah		;4464
	jr z,l4468h		;4466
l4468h:
	ld l,00eh		;4468
	nop			;446a
	xor 0ach		;446b
l446dh:
	ld d,c			;446d
	ld d,a			;446e
	or l			;446f
	ld a,l			;4470
	cp b			;4471
	ld (hl),a		;4472
	ld hl,(08dd2h)		;4473
	inc sp			;4476
	dec b			;4477
	and a			;4478
	push bc			;4479
	ld a,(0a48ch)		;447a
	rst 38h			;447d
	jp c,0a1f9h		;447e
	sub l			;4481
	ld e,e			;4482
	adc a,a			;4483
	jr z,l4497h		;4484
	dec b			;4486
	sub b			;4487
	ld (hl),e		;4488
	ld hl,07b00h		;4489
	sub d			;448c
	inc bc			;448d
	call 00536h		;448e
	pop hl			;4491
	scf			;4492
	ret			;4493
	djnz $+32		;4494
	ret p			;4496
l4497h:
	ld sp,0f00eh		;4497
	add a,l			;449a
	rlca			;449b
	ld bc,0129ah		;449c
	cp c			;449f
	ld bc,0af5ch		;44a0
	jp 0addeh		;44a3
	ld b,d			;44a6
	or 08eh			;44a7
	and l			;44a9
	nop			;44aa
	add a,b			;44ab
	sbc a,l			;44ac
	call m,0aa9dh		;44ad
	cp b			;44b0
	inc b			;44b1
	ld de,l54abh		;44b2
	ld (de),a		;44b5
	xor c			;44b6
	ld b,(hl)		;44b7
	or 00ch			;44b8
	ld sp,hl		;44ba
	and b			;44bb
	ld c,l			;44bc
	sub l			;44bd
	push af			;44be
	sub l			;44bf
	out (099h),a		;44c0
	ld h,(hl)		;44c2
	and h			;44c3
	ld l,b			;44c4
	ld h,c			;44c5
	sub h			;44c6
	ld e,e			;44c7
	ld h,h			;44c8
	and e			;44c9
	add a,c			;44ca
	call sub_75f0h		;44cb
	ret			;44ce
	or (hl)			;44cf
	jp pe,0e203h		;44d0
	call z,0f17ch		;44d3
	sub d			;44d6
	jp m,00304h		;44d7
	dec b			;44da
	jp z,06403h		;44db
	ret			;44de
	ld c,h			;44df
	ld a,d			;44e0
	cp c			;44e1
	inc bc			;44e2
	inc c			;44e3
	ld h,h			;44e4
	cp 0e0h			;44e5
	jp z,00d1fh		;44e7
	sub c			;44ea
	or b			;44eb
	jp z,00832h		;44ec
	bit 1,b			;44ef
	jp c,0082ah		;44f1
	sbc a,h			;44f4
	jr nc,l44ffh		;44f5
	jp 00100h		;44f7
	jp m,02180h		;44fa
	ld b,a			;44fd
	pop bc			;44fe
l44ffh:
	ld d,00ah		;44ff
	ld a,d			;4501
l4502h:
	ld (hl),b		;4502
	and d			;4503
	ld h,072h		;4504
l4506h:
	ld (de),a		;4506
	inc bc			;4507
	ld (de),a		;4508
	sbc a,(hl)		;4509
	xor b			;450a
	add a,c			;450b
	ld (de),a		;450c
	ld l,l			;450d
	inc b			;450e
	ld (de),a		;450f
	inc a			;4510
	ld a,(de)		;4511
	add a,d			;4512
	ld (de),a		;4513
	jp c,01205h		;4514
	adc a,a			;4517
	di			;4518
	ld (de),a		;4519
	or h			;451a
	exx			;451b
	inc l			;451c
	ld h,d			;451d
	ld h,l			;451e
	exx			;451f
	ld a,064h		;4520
	ld h,l			;4522
	add a,c			;4523
	call pe,sub_51aeh	;4524
	ex de,hl		;4527
	ld b,08eh		;4528
	sub c			;452a
	adc a,c			;452b
	jr z,$+120		;452c
	ld a,e			;452e
l452fh:
	adc a,c			;452f
	sbc a,h			;4530
	and a			;4531
	ld (hl),d		;4532
	ld hl,(0ffb7h)		;4533
	jr nz,l4502h		;4536
	or c			;4538
	ld c,0a8h		;4539
	ret nz			;453b
	ld hl,0917eh		;453c
	adc a,b			;453f
	adc a,(hl)		;4540
	sbc a,(hl)		;4541
	ld e,c			;4542
	add a,c			;4543
	ret			;4544
	rst 30h			;4545
	djnz l4558h		;4546
	ld hl,l4697h		;4548
	ld h,h			;454b
	rst 30h			;454c
	sub l			;454d
	inc hl			;454e
	inc b			;454f
	cp e			;4550
	nop			;4551
	ld (de),a		;4552
	ld (bc),a		;4553
	ld (l7103h),hl		;4554
	dec b			;4557
l4558h:
	inc (hl)		;4558
	add a,a			;4559
	ld bc,l4506h		;455a
	ld b,030h		;455d
	inc c			;455f
	jr nc,$+50		;4560
	nop			;4562
	ret			;4563
	ld hl,00320h		;4564
	ld (l6458h),hl		;4567
	ld e,012h		;456a
	ret nz			;456c
	ld c,064h		;456d
	xor b			;456f
	sub (hl)		;4570
	or (hl)			;4571
	add a,(hl)		;4572
l4573h:
	ld bc,0a006h		;4573
	nop			;4576
	ret			;4577
	ld h,h			;4578
	ld b,00ah		;4579
	exx			;457b
	jr c,l459fh		;457c
	ld a,e			;457e
	ld b,a			;457f
	push hl			;4580
	ret			;4581
	ld c,e			;4582
	exx			;4583
	and e			;4584
	ld l,c			;4585
	ld a,b			;4586
	inc bc			;4587
	ld e,e			;4588
	and a			;4589
	add hl,hl		;458a
	add a,d			;458b
	inc d			;458c
	cp (hl)			;458d
	or c			;458e
	adc a,d			;458f
	rla			;4590
	call pe,0efcbh		;4591
	defb 0fdh,0c7h,0f1h ;illegal sequence	;4594
	jp 032e9h		;4597
	ret p			;459a
	inc d			;459b
	ld (hl),0ffh		;459c
	add a,c			;459e
l459fh:
	dec b			;459f
	ld l,h			;45a0
	ld a,050h		;45a1
	ld (0043eh),a		;45a3
	ld e,035h		;45a6
	jp p,0f323h		;45a8
	jr z,l4573h		;45ab
	ld (0f411h),hl		;45ad
	ld e,e			;45b0
	adc a,e			;45b1
	and h			;45b2
	dec h			;45b3
	ld h,l			;45b4
	out (091h),a		;45b5
	adc a,h			;45b7
	add a,b			;45b8
	ret			;45b9
	halt			;45ba
	ld bc,00656h		;45bb
	ex af,af'		;45be
	ld b,h			;45bf
	inc b			;45c0
	ld (08d02h),hl		;45c1
	add a,c			;45c4
	nop			;45c5
	rlca			;45c6
	rlca			;45c7
	dec b			;45c8
	ld d,b			;45c9
	xor d			;45ca
	inc d			;45cb
	ld h,(hl)		;45cc
	ld a,(0372eh)		;45cd
	ld h,l			;45d0
	xor c			;45d1
	jr c,$+55		;45d2
	ld h,l			;45d4
	or a			;45d5
	cp h			;45d6
	inc bc			;45d7
	and 029h		;45d8
	jp nz,0284dh		;45da
	ld c,e			;45dd
	scf			;45de
	add hl,bc		;45df
	ld h,b			;45e0
	add a,d			;45e1
	ld d,a			;45e2
	xor d			;45e3
	add hl,bc		;45e4
	ld b,c			;45e5
	add hl,bc		;45e6
	dec a			;45e7
	inc e			;45e8
	ld (bc),a		;45e9
	ld hl,03d35h		;45ea
sub_45edh:
	jp z,01489h		;45ed
	ld h,e			;45f0
	ld h,l			;45f1
	add a,(hl)		;45f2
	ld d,c			;45f3
sub_45f4h:
	inc bc			;45f4
	rst 38h			;45f5
l45f6h:
	add a,a			;45f6
	add a,c			;45f7
	ld h,l			;45f8
	rst 38h			;45f9
	add a,l			;45fa
	ld h,l			;45fb
	xor 020h		;45fc
	inc b			;45fe
	ld b,076h		;45ff
	ld hl,l65dch		;4601
	or h			;4604
	ld h,d			;4605
	halt			;4606
	jp 0a7f2h		;4607
	ld c,h			;460a
	inc e			;460b
	ld b,0cdh		;460c
	inc b			;460e
	ld l,h			;460f
	ld a,(0baf2h)		;4610
	ld b,b			;4613
	ld b,01ch		;4614
	jp z,l6596h		;4616
	ld de,0ee06h		;4619
	ld a,(00597h)		;461c
	add a,022h		;461f
	ld (01269h),a		;4621
	sbc a,d			;4624
	inc d			;4625
	ld h,c			;4626
	ld l,e			;4627
	jr $+110		;4628
	ld b,003h		;462a
	ld d,h			;462c
	dec b			;462d
	inc b			;462e
	ld l,a			;462f
	jp 07116h		;4630
	ld a,(l52cfh)		;4633
	ld b,(hl)		;4636
	ret z			;4637
	call nz,0c846h		;4638
	djnz $+115		;463b
	scf			;463d
	inc (hl)		;463e
	ret nz			;463f
	cp 0cah			;4640
	res 3,b			;4642
	inc (hl)		;4644
	ret nc			;4645
l4646h:
	inc (hl)		;4646
	sub 0d1h		;4647
	call c,012e0h		;4649
	ld l,b			;464c
	inc (hl)		;464d
	jp po,03765h		;464e
	adc a,0dfh		;4651
	jr $+1			;4653
	ld bc,00276h		;4655
	nop			;4658
	ld h,d			;4659
	nop			;465a
	sbc a,c			;465b
	ld bc,092c0h		;465c
	cp b			;465f
	sub h			;4660
	or c			;4661
	inc c			;4662
	ccf			;4663
	jp nz,l6608h		;4664
sub_4667h:
	xor h			;4667
	rst 10h			;4668
	ld (bc),a		;4669
	jp c,09554h		;466a
	ld (bc),a		;466d
	ld h,(hl)		;466e
	ld c,0aah		;466f
	ld e,030h		;4671
	ret			;4673
	ld d,b			;4674
	call 06d38h		;4675
	ld h,l			;4678
	ld e,e			;4679
	or c			;467a
	inc b			;467b
	ld a,(hl)		;467c
	ld h,a			;467d
	and a			;467e
	ld h,(hl)		;467f
	inc b			;4680
	inc sp			;4681
	dec b			;4682
	inc b			;4683
l4684h:
	ld e,h			;4684
	add hl,de		;4685
	cp 0ddh			;4686
	dec e			;4688
	adc a,a			;4689
	ld h,(hl)		;468a
	add a,l			;468b
	exx			;468c
	ld a,(00ff3h)		;468d
	sub (hl)		;4690
	rst 30h			;4691
	nop			;4692
	ld c,016h		;4693
	ld d,04eh		;4695
l4697h:
	ld e,02eh		;4697
	jp z,07135h		;4699
	ld h,(hl)		;469c
	xor c			;469d
	jr l46eeh		;469e
l46a0h:
	inc c			;46a0
	ld d,(hl)		;46a1
	call po,0030ch		;46a2
	ld b,078h		;46a5
	and h			;46a7
	inc c			;46a8
	and h			;46a9
	inc b			;46aa
	or b			;46ab
	dec bc			;46ac
	ld c,072h		;46ad
	ld d,05eh		;46af
	ld e,e			;46b1
	inc c			;46b2
	ld b,a			;46b3
	dec b			;46b4
	ld b,0a2h		;46b5
	inc c			;46b7
	add a,d			;46b8
	ld a,(l47dah)		;46b9
	add a,b			;46bc
	defb 0fdh,047h,06ch ;illegal sequence	;46bd
	ld a,c			;46c0
	adc a,(hl)		;46c1
	adc a,h			;46c2
	ld l,h			;46c3
	ld a,(bc)		;46c4
	dec c			;46c5
	neg			;46c6
	add a,d			;46c8
l46c9h:
	ld d,a			;46c9
	jp c,l6c95h		;46ca
	ex (sp),hl		;46cd
	add a,b			;46ce
	cp 06bh			;46cf
	ld a,e			;46d1
	ld (l6f42h),a		;46d2
	ld l,h			;46d5
	jp p,09a64h		;46d6
	ld h,(hl)		;46d9
	sub a			;46da
	add a,a			;46db
	ccf			;46dc
	ld l,h			;46dd
	adc a,a			;46de
	djnz l46e3h		;46df
	ld e,l			;46e1
	ld l,h			;46e2
l46e3h:
	xor a			;46e3
	inc hl			;46e4
	sub d			;46e5
	ld b,a			;46e6
	jp c,0b802h		;46e7
	jp nc,l6718h		;46ea
	sub (hl)		;46ed
l46eeh:
	ld d,h			;46ee
	ld a,(de)		;46ef
	ld (l5a44h),a		;46f0
	and 01ah		;46f3
	pop de			;46f5
	cp 04bh			;46f6
	sbc a,h			;46f8
	ld hl,(0a9d6h)		;46f9
	adc a,e			;46fc
	ld e,h			;46fd
	ld (de),a		;46fe
	ld (bc),a		;46ff
l4700h:
	inc b			;4700
	add a,00ah		;4701
	ld (l434dh),a		;4703
	ld bc,0d273h		;4706
	push de			;4709
	ld h,(hl)		;470a
	ld hl,l6c56h		;470b
	sbc a,b			;470e
	jp z,0d1f3h		;470f
	jp m,08204h		;4712
	ld de,0e1c2h		;4715
	defb 0ddh,015h,0c1h ;illegal sequence	;4718
	sub l			;471b
	ld d,h			;471c
	ld a,024h		;471d
	inc c			;471f
	add a,b			;4720
	add a,b			;4721
	add a,c			;4722
	ld hl,(01ee9h)		;4723
l4726h:
	ld c,a			;4726
	inc sp			;4727
l4728h:
	adc a,d			;4728
	ld (0ae04h),a		;4729
	xor (hl)		;472c
	dec c			;472d
	or d			;472e
	ld b,(hl)		;472f
	inc b			;4730
	sub l			;4731
	cp (hl)			;4732
	sbc a,l			;4733
	rlca			;4734
	ld c,e			;4735
	dec d			;4736
	and d			;4737
	call p,014eah		;4738
	ld c,d			;473b
	jp c,07240h		;473c
l473fh:
	add a,l			;473f
	ld h,c			;4740
	jr c,$+105		;4741
	xor l			;4743
	ld sp,l6731h		;4744
	xor l			;4747
l4748h:
	ld a,(025c3h)		;4748
	ld b,(hl)		;474b
	ld h,a			;474c
	call nc,01446h		;474d
	nop			;4750
	scf			;4751
	inc bc			;4752
	dec h			;4753
	ld (hl),b		;4754
	call nc,0214eh		;4755
	jr c,$+47		;4758
	ld (0298ah),hl		;475a
	add a,02eh		;475d
	rst 0			;475f
	dec c			;4760
	ld a,(0073ah)		;4761
	ld c,(hl)		;4764
	ld a,(0a9cah)		;4765
	inc a			;4768
	pop de			;4769
	inc h			;476a
	sub d			;476b
	ld d,e			;476c
	ret nz			;476d
	exx			;476e
	ld de,0aea9h		;476f
	ld e,h			;4772
	ld e,073h		;4773
	rlca			;4775
	ld e,012h		;4776
	push af			;4778
	rst 0			;4779
	sub d			;477a
	rst 18h			;477b
l477ch:
	sub (hl)		;477c
l477dh:
	add a,a			;477d
	sbc a,l			;477e
	xor l			;477f
	add a,h			;4780
	bit 5,b			;4781
	inc bc			;4783
	pop hl			;4784
	jp nz,0dc03h		;4785
	ld l,c			;4788
	inc bc			;4789
	ld (l6aa9h),hl		;478a
	inc bc			;478d
	ld (hl),d		;478e
	ld l,e			;478f
	inc bc			;4790
	ld h,b			;4791
	call z,09c0bh		;4792
	ld l,e			;4795
	sub 059h		;4796
	inc bc			;4798
	xor h			;4799
	jr l4726h		;479a
	ret pe			;479c
	jr z,l47cdh		;479d
	sbc a,0ddh		;479f
	rst 30h			;47a1
	out (077h),a		;47a2
	jp z,0e09dh		;47a4
	pop hl			;47a7
	nop			;47a8
	jr l477dh		;47a9
	rst 38h			;47ab
	jp pe,0ed76h		;47ac
	ld a,b			;47af
	ld c,e			;47b0
	rst 38h			;47b1
	nop			;47b2
	cp 001h			;47b3
	ld (bc),a		;47b5
	inc sp			;47b6
	ex af,af'		;47b7
	djnz l4748h		;47b8
	ld (bc),a		;47ba
	ld (bc),a		;47bb
	ld a,(l67a7h)		;47bc
	inc a			;47bf
	ld sp,hl		;47c0
	ld h,h			;47c1
	ld (02105h),a		;47c2
	scf			;47c5
	xor b			;47c6
	ld h,a			;47c7
	add a,a			;47c8
	ex af,af'		;47c9
	add hl,de		;47ca
	ld b,(hl)		;47cb
	ret po			;47cc
l47cdh:
	ret nc			;47cd
	ld (bc),a		;47ce
	jp c,l680eh		;47cf
	dec h			;47d2
	ld e,01dh		;47d3
	push de			;47d5
	ld d,(hl)		;47d6
	call m,08289h		;47d7
l47dah:
	jp l6815h		;47da
	cp d			;47dd
	sbc a,b			;47de
	sub c			;47df
	inc bc			;47e0
	ld a,e			;47e1
	cp b			;47e2
	ld c,b			;47e3
	cp b			;47e4
	ld d,013h		;47e5
	call m,0011eh		;47e7
	xor a			;47ea
	inc bc			;47eb
	ld l,b			;47ec
	cp 009h			;47ed
	ld c,005h		;47ef
	ld a,(bc)		;47f1
	or (hl)			;47f2
	inc d			;47f3
	dec d			;47f4
	dec c			;47f5
	inc b			;47f6
	ld e,0ffh		;47f7
	ld a,(bc)		;47f9
	ld (hl),l		;47fa
	dec e			;47fb
	or e			;47fc
	ld a,(bc)		;47fd
	ret c			;47fe
	inc h			;47ff
	ld c,003h		;4800
	adc a,020h		;4802
	ld a,(bc)		;4804
l4805h:
	ld (de),a		;4805
	inc l			;4806
	or 063h			;4807
l4809h:
	ld a,(bc)		;4809
	defb 0fdh,00ah,059h ;illegal sequence	;480a
	inc (hl)		;480d
	dec d			;480e
	jr nz,$+55		;480f
	inc bc			;4811
	ld a,(bc)		;4812
	inc a			;4813
	dec hl			;4814
	add a,041h		;4815
	add a,l			;4817
	jp l688bh		;4818
	ld a,c			;481b
	call po,sub_71a6h	;481c
	ld (l7082h),a		;481f
	add a,d			;4822
	jr c,l485ah		;4823
	jp nc,0758bh		;4825
	add a,e			;4828
	sbc a,l			;4829
	dec hl			;482a
	add a,a			;482b
l482ch:
	jr l482ch		;482c
	pop bc			;482e
	ld d,0feh		;482f
	jr $-46			;4831
l4833h:
	ld a,(bc)		;4833
	xor (hl)		;4834
	ld (bc),a		;4835
	ld hl,00772h		;4836
	inc b			;4839
l483ah:
	sub d			;483a
	xor b			;483b
	sbc a,h			;483c
	ld (hl),e		;483d
	djnz l48b0h		;483e
	or h			;4840
	ld e,(hl)		;4841
	ret nc			;4842
	di			;4843
	add a,b			;4844
	ld a,03ch		;4845
	jp z,l68bdh		;4847
	ld a,01dh		;484a
	adc a,h			;484c
	adc a,0beh		;484d
	or h			;484f
	ld d,a			;4850
	dec bc			;4851
	rst 20h			;4852
	sbc a,(hl)		;4853
	inc hl			;4854
sub_4855h:
	ld a,c			;4855
	ret			;4856
	sub d			;4857
l4858h:
	djnz l4809h		;4858
l485ah:
	adc a,e			;485a
	push bc			;485b
	ld l,b			;485c
	add a,e			;485d
	sub c			;485e
	dec b			;485f
	bit 5,c			;4860
	ld (0a397h),a		;4862
	ld (bc),a		;4865
	inc hl			;4866
	ld l,c			;4867
	ld a,(069c9h)		;4868
	ret c			;486b
	dec l			;486c
	rlca			;486d
	ld d,(hl)		;486e
	di			;486f
	ret pe			;4870
	xor d			;4871
	ld (de),a		;4872
	inc c			;4873
	ret pe			;4874
	xor c			;4875
	inc b			;4876
	cp d			;4877
	jp nc,l4728h		;4878
	adc a,a			;487b
	ret nc			;487c
	cp b			;487d
	ret c			;487e
	jr c,l48bfh		;487f
	ld b,046h		;4881
	ret p			;4883
	djnz l48fbh		;4884
	ret nc			;4886
	djnz l48bfh		;4887
	ld (hl),d		;4889
	ei			;488a
	call 0c005h		;488b
	jr c,$-110		;488e
	inc sp			;4890
	ld a,(00538h)		;4891
	jp nz,09948h		;4894
	jr c,l48e0h		;4897
	ld d,07dh		;4899
	ld c,d			;489b
	dec b			;489c
	jp z,l660bh		;489d
	ld e,h			;48a0
	ld a,(0fd6bh)		;48a1
	ld h,05dh		;48a4
	inc d			;48a6
	jp z,02355h		;48a7
	jp nz,03e07h		;48aa
	rlca			;48ad
	add hl,sp		;48ae
	adc a,d			;48af
l48b0h:
	dec c			;48b0
	ld (009ach),hl		;48b1
	dec b			;48b4
	and e			;48b5
	and l			;48b6
	sbc a,b			;48b7
	inc h			;48b8
	add a,b			;48b9
	ld l,0b6h		;48ba
	ld l,c			;48bc
	xor e			;48bd
	or c			;48be
l48bfh:
	push af			;48bf
	call m,0d309h		;48c0
	dec b			;48c3
	add hl,bc		;48c4
	jp nz,09c13h		;48c5
	dec e			;48c8
	rst 38h			;48c9
	add hl,bc		;48ca
	ld l,a			;48cb
	daa			;48cc
	add hl,bc		;48cd
	inc l			;48ce
	inc bc			;48cf
l48d0h:
	dec e			;48d0
	push hl			;48d1
	add hl,bc		;48d2
l48d3h:
	inc b			;48d3
	add hl,bc		;48d4
	adc a,(hl)		;48d5
l48d6h:
	defb 0fdh,013h,0a6h ;illegal sequence	;48d6
	dec e			;48d9
	inc bc			;48da
	add hl,bc		;48db
	ld b,(hl)		;48dc
	jp pe,081a5h		;48dd
l48e0h:
	sbc a,(hl)		;48e0
	ld d,d			;48e1
	ld a,0c7h		;48e2
	sub d			;48e4
	inc bc			;48e5
	ld a,b			;48e6
	add a,d			;48e7
	ld d,d			;48e8
	call pe,03af4h		;48e9
	set 0,h			;48ec
	ld l,(hl)		;48ee
	rrca			;48ef
	rst 28h			;48f0
	ld h,l			;48f1
	push af			;48f2
	dec c			;48f3
	inc bc			;48f4
	ld a,(hl)		;48f5
	rst 0			;48f6
	dec b			;48f7
	ld b,0a6h		;48f8
	ld (de),a		;48fa
l48fbh:
	jp nc,00832h		;48fb
	or 031h			;48fe
	and e			;4900
	jp 0070ch		;4901
	rlca			;4904
	ld de,0c3a2h		;4905
	jp l7a9bh		;4908
	adc a,(hl)		;490b
	ld (hl),b		;490c
	ex af,af'		;490d
	ld e,01ah		;490e
	ld bc,00326h		;4910
	ld l,021h		;4913
	jp z,06a44h		;4915
	rrca			;4918
	jr c,l492dh		;4919
	rrca			;491b
	rlca			;491c
	add hl,de		;491d
	ld h,006h		;491e
	ld l,026h		;4920
	rrca			;4922
	rrca			;4923
	rra			;4924
	rrca			;4925
	rlca			;4926
	inc e			;4927
	rrca			;4928
	inc de			;4929
	rst 10h			;492a
	jr c,l49a1h		;492b
l492dh:
	cpl			;492d
	inc e			;492e
	dec bc			;492f
	ld l,019h		;4930
	rrca			;4932
	ld a,(03f39h)		;4933
	sbc a,c			;4936
	rrca			;4937
	dec hl			;4938
sub_4939h:
	rrca			;4939
	ld a,a			;493a
	inc de			;493b
	sbc a,d			;493c
	ld l,d			;493d
	sub 009h		;493e
	sbc a,h			;4940
	ld l,d			;4941
	ld a,d			;4942
	ld e,(hl)		;4943
	ld l,d			;4944
	call nz,0a471h		;4945
	ld l,d			;4948
	sbc a,l			;4949
	jr l48d0h		;494a
	jr z,l4980h		;494c
	sbc a,(hl)		;494e
	ld b,099h		;494f
	add a,l			;4951
	add a,l			;4952
	ld (006a0h),a		;4953
	jp nc,0ca7ah		;4956
	daa			;4959
	ld l,h			;495a
	ld l,d			;495b
	xor c			;495c
	dec b			;495d
	and c			;495e
	ld l,d			;495f
	ld hl,0ae29h		;4960
	ld l,e			;4963
	inc e			;4964
	ld h,(hl)		;4965
	xor c			;4966
	ex af,af'		;4967
	ld h,a			;4968
	ld l,e			;4969
	ld a,(03210h)		;496a
	ld l,d			;496d
	ld (hl),d		;496e
	ld l,e			;496f
	ret nc			;4970
	ld b,l			;4971
	xor h			;4972
	jp c,0338ch		;4973
	ret z			;4976
	in a,(015h)		;4977
	ld a,(0ba31h)		;4979
	sub d			;497c
	inc bc			;497d
	ret			;497e
	cp d			;497f
l4980h:
	or h			;4980
	ld (bc),a		;4981
	rst 38h			;4982
	xor (hl)		;4983
	pop de			;4984
	ld h,e			;4985
	in a,(011h)		;4986
	sub b			;4988
	or a			;4989
	jp l7700h		;498a
	inc bc			;498d
	dec b			;498e
	ld e,017h		;498f
	ld h,0aeh		;4991
	inc b			;4993
	jp p,l6285h		;4994
	dec c			;4997
	sub l			;4998
	inc sp			;4999
	dec c			;499a
	ld e,h			;499b
	ld bc,03a0dh		;499c
	ld a,(de)		;499f
	dec de			;49a0
l49a1h:
	ld (hl),b		;49a1
	rst 38h			;49a2
	dec c			;49a3
	daa			;49a4
	jp po,0c10dh		;49a5
	daa			;49a8
	cp 00dh			;49a9
	dec d			;49ab
	adc a,h			;49ac
	jr c,$+119		;49ad
	dec c			;49af
	ld h,h			;49b0
	ld (bc),a		;49b1
	dec c			;49b2
	xor l			;49b3
	ld a,h			;49b4
	ld de,09d8ch		;49b5
	cp a			;49b8
	ld b,(hl)		;49b9
	xor (hl)		;49ba
	ld c,h			;49bb
	ld (hl),h		;49bc
	add a,h			;49bd
	ld a,b			;49be
	adc a,a			;49bf
	and c			;49c0
	ld bc,01afeh		;49c1
	ret nc			;49c4
	ret p			;49c5
	ld d,b			;49c6
	jp c,l6b3dh		;49c7
	adc a,092h		;49ca
	ld h,h			;49cc
	ld (hl),c		;49cd
	ld l,0a8h		;49ce
	ld d,c			;49d0
	pop bc			;49d1
	dec de			;49d2
	ld c,d			;49d3
	ld l,e			;49d4
	cp l			;49d5
	add a,b			;49d6
	ld b,(hl)		;49d7
	ld l,e			;49d8
	ld hl,l6b43h		;49d9
	adc a,024h		;49dc
	rst 30h			;49de
	exx			;49df
	and 040h		;49e0
	sub d			;49e2
	nop			;49e3
sub_49e4h:
	ld e,d			;49e4
	nop			;49e5
	push bc			;49e6
	inc bc			;49e7
	ld bc,00fb2h		;49e8
	ld b,(hl)		;49eb
	jp m,089d9h		;49ec
	ret nz			;49ef
	ld (hl),c		;49f0
	ld (bc),a		;49f1
	sub (hl)		;49f2
	nop			;49f3
	ld (00078h),hl		;49f4
	xor l			;49f7
	ld b,(hl)		;49f8
	inc d			;49f9
	cp b			;49fa
	rst 28h			;49fb
	add a,(hl)		;49fc
	add a,h			;49fd
	rrca			;49fe
	cp b			;49ff
	sbc a,086h		;4a00
	scf			;4a02
	ret c			;4a03
	inc hl			;4a04
	ld b,b			;4a05
	ld h,e			;4a06
	ld l,e			;4a07
	ld h,l			;4a08
	ld d,a			;4a09
	ld h,a			;4a0a
	jp po,0e251h		;4a0b
	inc b			;4a0e
	dec d			;4a0f
	cp 006h			;4a10
	push de			;4a12
	cp e			;4a13
	call po,0f350h		;4a14
	sub e			;4a17
	jp c,0ca64h		;4a18
	dec hl			;4a1b
	cp a			;4a1c
	add a,l			;4a1d
	ret			;4a1e
	in a,(071h)		;4a1f
	push de			;4a21
	ld e,(hl)		;4a22
	ld d,095h		;4a23
l4a25h:
	pop af			;4a25
	ld c,h			;4a26
	pop af			;4a27
l4a28h:
	cp l			;4a28
	jr l4a96h		;4a29
	or a			;4a2b
	ret z			;4a2c
	call sub_404ch		;4a2d
	call m,024a4h		;4a30
	ld d,e			;4a33
	rst 28h			;4a34
	ld d,e			;4a35
	inc bc			;4a36
	ld h,c			;4a37
	ld bc,0a2d2h		;4a38
	ld a,(de)		;4a3b
	or 0eeh			;4a3c
	dec c			;4a3e
	dec de			;4a3f
	call z,0b9eah		;4a40
	inc b			;4a43
	and 027h		;4a44
	ld hl,(0e3c3h)		;4a46
	ld c,000h		;4a49
	nop			;4a4b
	ret z			;4a4c
	ld bc,08b04h		;4a4d
	jp po,l6f29h		;4a50
	cp l			;4a53
	dec de			;4a54
	and b			;4a55
	sbc a,(hl)		;4a56
	sbc a,(hl)		;4a57
	sbc a,b			;4a58
	ld h,03ah		;4a59
	di			;4a5b
	sbc a,(hl)		;4a5c
	sbc a,l			;4a5d
	rst 10h			;4a5e
	sbc a,d			;4a5f
	call 0cfech		;4a60
	add a,b			;4a63
	ld d,e			;4a64
	ld h,06ch		;4a65
	add a,b			;4a67
	exx			;4a68
	ld bc,00020h		;4a69
	ld d,a			;4a6c
	ld b,007h		;4a6d
	inc b			;4a6f
	inc d			;4a70
	adc a,(hl)		;4a71
	ret m			;4a72
	ld b,h			;4a73
	inc (hl)		;4a74
	ld (bc),a		;4a75
	ld d,l			;4a76
	add a,(hl)		;4a77
	daa			;4a78
	ld b,040h		;4a79
	sbc a,l			;4a7b
	exx			;4a7c
	ret nc			;4a7d
	ex (sp),hl		;4a7e
	dec e			;4a7f
	call sub_4855h		;4a80
	ld d,a			;4a83
	defb 0edh ;next byte illegal after ed	;4a84
l4a85h:
	ld c,034h		;4a85
	djnz l4a25h		;4a87
l4a89h:
	ld c,038h		;4a89
	adc a,(hl)		;4a8b
	inc l			;4a8c
	ld h,a			;4a8d
	ld d,001h		;4a8e
	inc l			;4a90
	sub (hl)		;4a91
	djnz l4a89h		;4a92
	inc l			;4a94
	ret			;4a95
l4a96h:
	ld de,06c85h		;4a96
	call 0056bh		;4a99
	ld de,0a3c2h		;4a9c
	rst 18h			;4a9f
	ld (0e765h),hl		;4aa0
	ld b,016h		;4aa3
	cp 042h			;4aa5
	jp nz,07da0h		;4aa7
	ld de,l6532h		;4aaa
	ld c,002h		;4aad
	ld e,h			;4aaf
	jp c,0b361h		;4ab0
	ld l,h			;4ab3
	and l			;4ab4
	inc d			;4ab5
	rlca			;4ab6
	ld b,07ah		;4ab7
	ld c,083h		;4ab9
	or (hl)			;4abb
	ld l,e			;4abc
	sub d			;4abd
	ld l,00ah		;4abe
l4ac0h:
	jp 09585h		;4ac0
	dec b			;4ac3
	dec bc			;4ac4
	push de			;4ac5
	nop			;4ac6
	ld d,032h		;4ac7
	inc c			;4ac9
	jp 00d32h		;4aca
	jp 0cd04h		;4acd
	inc h			;4ad0
	dec b			;4ad1
	jp c,029ebh		;4ad2
	rst 8			;4ad5
	ld (0b7c3h),hl		;4ad6
	out (01bh),a		;4ad9
	ld c,b			;4adb
	ld (01dcfh),a		;4adc
	add a,(hl)		;4adf
	add a,h			;4ae0
	or d			;4ae1
	ld c,b			;4ae2
	jp nc,0fe2dh		;4ae3
	ld b,(hl)		;4ae6
	ld e,h			;4ae7
	jp c,03704h		;4ae8
	rst 10h			;4aeb
l4aech:
	adc a,b			;4aec
	rrca			;4aed
	push af			;4aee
	call pe,sub_6cd4h	;4aef
	dec sp			;4af2
	ld a,e			;4af3
	call c,006a4h		;4af4
	pop bc			;4af7
	or a			;4af8
	jp nz,l6d12h		;4af9
	ld hl,(0d61eh)		;4afc
	djnz l4aech		;4aff
	xor l			;4b01
	ld a,b			;4b02
	rlca			;4b03
	sub h			;4b04
	inc b			;4b05
	ld hl,09a71h		;4b06
	ret pe			;4b09
	ld a,h			;4b0a
	ld l,l			;4b0b
	dec a			;4b0c
	ld b,d			;4b0d
	ld (0c203h),a		;4b0e
	inc (hl)		;4b11
	ld l,l			;4b12
	call po,00772h		;4b13
	dec h			;4b16
	ld a,(0fa6dh)		;4b17
	ld h,082h		;4b1a
	ld c,b			;4b1c
	jp z,0320eh		;4b1d
	add hl,bc		;4b20
	ld a,(l4684h)		;4b21
	ld l,h			;4b24
	jr c,l4b7bh		;4b25
	ld l,l			;4b27
	ld h,e			;4b28
	adc a,d			;4b29
	ld d,0d2h		;4b2a
	ld a,e			;4b2c
	jr nz,l4b7eh		;4b2d
	and e			;4b2f
	djnz l4ac0h		;4b30
	ld l,b			;4b32
	dec sp			;4b33
	sbc a,d			;4b34
	call nc,0417ah		;4b35
	ld (hl),h		;4b38
	ret po			;4b39
l4b3ah:
	ld b,c			;4b3a
	add a,(hl)		;4b3b
	ld l,h			;4b3c
	xor d			;4b3d
	ret z			;4b3e
	inc bc			;4b3f
	ret			;4b40
	pop hl			;4b41
	jp nz,03222h		;4b42
	xor a			;4b45
	ex af,af'		;4b46
	ld d,c			;4b47
	xor d			;4b48
	ld b,d			;4b49
	add hl,hl		;4b4a
	inc b			;4b4b
	rst 10h			;4b4c
	adc a,(hl)		;4b4d
	djnz l4b52h		;4b4e
	add a,e			;4b50
	ld l,h			;4b51
l4b52h:
	ret			;4b52
	ld bc,l5f97h		;4b53
	inc c			;4b56
	sbc a,l			;4b57
	ld l,l			;4b58
	sub l			;4b59
	sub a			;4b5a
	adc a,b			;4b5b
	dec b			;4b5c
	jp nz,l70bbh		;4b5d
	ld a,l			;4b60
	ld l,l			;4b61
	sub (hl)		;4b62
	sub a			;4b63
	inc d			;4b64
	cp b			;4b65
	ld (hl),d		;4b66
	sub a			;4b67
	adc a,c			;4b68
	ld a,l			;4b69
	ld c,003h		;4b6a
	sub a			;4b6c
	jr z,l4b3ah		;4b6d
	call nz,0034ah		;4b6f
	sub a			;4b72
	xor d			;4b73
	sub a			;4b74
	rst 18h			;4b75
	ld (l6d83h),hl		;4b76
	sub a			;4b79
	ld d,h			;4b7a
l4b7bh:
	add a,c			;4b7b
	ld l,l			;4b7c
	sub a			;4b7d
l4b7eh:
	sub a			;4b7e
	ld h,d			;4b7f
	inc bc			;4b80
	ld l,(hl)		;4b81
	sub a			;4b82
	ld e,(hl)		;4b83
	inc d			;4b84
	sub a			;4b85
	sub a			;4b86
	xor l			;4b87
	inc b			;4b88
	scf			;4b89
	call z,0b097h		;4b8a
	dec c			;4b8d
	ld b,(hl)		;4b8e
	ld l,(hl)		;4b8f
	rst 0			;4b90
	jp z,0933bh		;4b91
	ld d,a			;4b94
	sub a			;4b95
	ld d,l			;4b96
	ld hl,(l5234h)		;4b97
	ld c,b			;4b9a
	adc a,a			;4b9b
	adc a,c			;4b9c
	add a,c			;4b9d
	ld c,090h		;4b9e
	rlca			;4ba0
	or d			;4ba1
	inc b			;4ba2
	ld hl,08d71h		;4ba3
	push de			;4ba6
	inc h			;4ba7
	sub h			;4ba8
	ld l,(hl)		;4ba9
	sub a			;4baa
	adc a,d			;4bab
	inc bc			;4bac
	jp nz,02e4ch		;4bad
	sub a			;4bb0
	ld c,d			;4bb1
	rlca			;4bb2
	or (hl)			;4bb3
	ld h,h			;4bb4
	ld l,l			;4bb5
	sub a			;4bb6
	or c			;4bb7
	ld c,04dh		;4bb8
	cp d			;4bba
	add hl,hl		;4bbb
	inc de			;4bbc
	sbc a,h			;4bbd
	ld l,l			;4bbe
	jr c,$+110		;4bbf
	jr c,l4c28h		;4bc1
	sub a			;4bc3
	dec de			;4bc4
	sub e			;4bc5
	ld c,a			;4bc6
	djnz l4c0fh		;4bc7
	adc a,(hl)		;4bc9
	pop de			;4bca
	dec sp			;4bcb
	sbc a,d			;4bcc
	xor c			;4bcd
	sub d			;4bce
	ld b,c			;4bcf
	adc a,h			;4bd0
l4bd1h:
	ld b,c			;4bd1
	pop bc			;4bd2
	sbc a,(hl)		;4bd3
	ld l,l			;4bd4
	sub a			;4bd5
	dec h			;4bd6
	inc bc			;4bd7
	sub a			;4bd8
	add hl,hl		;4bd9
	ld (0af32h),hl		;4bda
	ex af,af'		;4bdd
	ld d,c			;4bde
	xor d			;4bdf
	ld b,d			;4be0
	add hl,hl		;4be1
	inc b			;4be2
	sub a			;4be3
	ld d,e			;4be4
	djnz l4c30h		;4be5
	sbc a,e			;4be7
	ld l,l			;4be8
	sub a			;4be9
	ld e,h			;4bea
	nop			;4beb
	dec h			;4bec
	jp z,08903h		;4bed
	ld d,(hl)		;4bf0
	inc d			;4bf1
	call nz,098c2h		;4bf2
	or h			;4bf5
	cp c			;4bf6
	ld l,c			;4bf7
	rrca			;4bf8
	dec bc			;4bf9
	call pe,0040fh		;4bfa
	add a,a			;4bfd
	pop af			;4bfe
	call pe,0eb86h		;4bff
	pop af			;4c02
	inc b			;4c03
	inc c			;4c04
	ld e,01eh		;4c05
	inc b			;4c07
	jr nc,$-8		;4c08
	inc hl			;4c0a
	inc b			;4c0b
	jp po,0c319h		;4c0c
l4c0fh:
	inc b			;4c0f
	defb 0ddh,0fbh,009h ;illegal sequence	;4c10
	ld e,b			;4c13
	jp po,00504h		;4c14
	ld h,c			;4c17
	defb 0ddh,004h,023h ;illegal sequence	;4c18
	jp po,0ae22h		;4c1b
	dec b			;4c1e
	ld (000feh),hl		;4c1f
	inc (hl)		;4c22
	ld c,0e5h		;4c23
	xor c			;4c25
	inc b			;4c26
	ld l,a			;4c27
l4c28h:
	jp po,005bbh		;4c28
	add hl,bc		;4c2b
	jp nz,06f36h		;4c2c
	xor h			;4c2f
l4c30h:
	ld e,l			;4c30
	ld b,038h		;4c31
	ld h,d			;4c33
	ld h,l			;4c34
	ld b,036h		;4c35
	dec b			;4c37
	ld l,a			;4c38
	ld b,0cbh		;4c39
	inc sp			;4c3b
	jp z,0355ah		;4c3c
sub_4c3fh:
	ld a,008h		;4c3f
	rst 0			;4c41
	ld hl,(00392h)		;4c42
	ld l,a			;4c45
	dec a			;4c46
	ld b,a			;4c47
	add a,a			;4c48
	add a,a			;4c49
	add a,b			;4c4a
	ret			;4c4b
	ret nc			;4c4c
	ld hl,012aah		;4c4d
	ld l,(hl)		;4c50
	add hl,de		;4c51
	ld a,(hl)		;4c52
	out (01ah),a		;4c53
	jp nz,02351h		;4c55
	inc b			;4c58
	inc l			;4c59
	ld e,h			;4c5a
	ret			;4c5b
	pop af			;4c5c
	dec sp			;4c5d
	ld l,a			;4c5e
	ld b,a			;4c5f
	and d			;4c60
	ld c,(hl)		;4c61
	add a,b			;4c62
	cp 0f2h			;4c63
	ld (de),a		;4c65
	ld h,c			;4c66
	inc de			;4c67
	dec b			;4c68
	rst 8			;4c69
	ret nc			;4c6a
	ld hl,l58a7h		;4c6b
	ld l,(hl)		;4c6e
	jr z,$+52		;4c6f
l4c71h:
	ld b,a			;4c71
	nop			;4c72
l4c73h:
	call 06f74h		;4c73
	inc hl			;4c76
	djnz l4c73h		;4c77
	ret			;4c79
	ld a,(hl)		;4c7a
	sbc a,c			;4c7b
	or (hl)			;4c7c
	ret p			;4c7d
	ld e,b			;4c7e
	inc b			;4c7f
	sub l			;4c80
	ld l,(hl)		;4c81
	inc hl			;4c82
	add a,(hl)		;4c83
	and b			;4c84
	sub d			;4c85
	xor l			;4c86
	inc (hl)		;4c87
	sub (hl)		;4c88
	rlca			;4c89
	sbc a,(hl)		;4c8a
	ld l,(hl)		;4c8b
	sbc a,l			;4c8c
	cp d			;4c8d
	and a			;4c8e
	dec c			;4c8f
	cp d			;4c90
	ld d,e			;4c91
	inc d			;4c92
l4c93h:
	cp d			;4c93
	jp po,0a7a5h		;4c94
	ld b,b			;4c97
	or l			;4c98
	ld d,b			;4c99
	inc hl			;4c9a
l4c9bh:
	ld h,b			;4c9b
	ld a,b			;4c9c
	jp nz,041aeh		;4c9d
	ld l,a			;4ca0
	add hl,de		;4ca1
	cp 08ch			;4ca2
	jp nz,006b5h		;4ca4
	ld c,h			;4ca7
	call m,0b298h		;4ca8
	inc sp			;4cab
	sbc a,e			;4cac
	jr nz,l4c71h		;4cad
	jp nz,0364dh		;4caf
	ld bc,l7e2bh		;4cb2
l4cb5h:
	and h			;4cb5
	sbc a,a			;4cb6
	daa			;4cb7
	ld (hl),a		;4cb8
	ret nz			;4cb9
	call nz,0d294h		;4cba
	add a,h			;4cbd
	ld l,b			;4cbe
	sbc a,a			;4cbf
	ld l,(hl)		;4cc0
	exx			;4cc1
	ld d,d			;4cc2
	ld hl,0e920h		;4cc3
	adc a,b			;4cc6
	exx			;4cc7
	dec de			;4cc8
	add a,014h		;4cc9
	ld b,(hl)		;4ccb
	ld (hl),a		;4ccc
	sbc a,e			;4ccd
	rra			;4cce
	xor 06fh		;4ccf
	adc a,b			;4cd1
	nop			;4cd2
	sbc hl,de		;4cd3
	ld (hl),000h		;4cd5
	add hl,de		;4cd7
	inc hl			;4cd8
	ret			;4cd9
	add hl,de		;4cda
	ld e,004h		;4cdb
	add hl,de		;4cdd
	sub b			;4cde
	add a,b			;4cdf
	dec d			;4ce0
	ld h,h			;4ce1
	ld h,h			;4ce2
	jr c,l4d18h		;4ce3
	sub b			;4ce5
	adc a,022h		;4ce6
	rst 38h			;4ce8
	ld c,e			;4ce9
	inc c			;4cea
	add a,e			;4ceb
	dec a			;4cec
	rrca			;4ced
	dec sp			;4cee
	inc h			;4cef
	rrca			;4cf0
	adc a,d			;4cf1
	adc a,c			;4cf2
	or b			;4cf3
	sub b			;4cf4
	ld a,(l4497h)		;4cf5
	ld l,(hl)		;4cf8
	jp m,04d06h		;4cf9
	ld l,a			;4cfc
	cp e			;4cfd
	out (c),d		;4cfe
l4d00h:
	call nz,0be88h		;4d00
	ld d,h			;4d03
	sbc a,b			;4d04
	jp nc,0a006h		;4d05
	xor l			;4d08
	ld h,e			;4d09
	rst 30h			;4d0a
	pop bc			;4d0b
	add a,d			;4d0c
	ret nc			;4d0d
	ld b,c			;4d0e
	ld (hl),b		;4d0f
	ret nc			;4d10
	rlca			;4d11
l4d12h:
	dec b			;4d12
	jp z,l7053h		;4d13
	ld h,c			;4d16
	ret			;4d17
l4d18h:
	rst 28h			;4d18
	ex af,af'		;4d19
	nop			;4d1a
	djnz l4d23h		;4d1b
	sub h			;4d1d
	jp z,l7065h		;4d1e
	cp 007h			;4d21
l4d23h:
	ld d,b			;4d23
	ld b,050h		;4d24
	jp z,011aeh		;4d26
	inc hl			;4d29
	ld c,b			;4d2a
	ld b,082h		;4d2b
	ld de,08047h		;4d2d
	ld b,0b4h		;4d30
	ld de,l4219h		;4d32
	ld c,(hl)		;4d35
	ld c,c			;4d36
	ld d,0c6h		;4d37
	cp e			;4d39
	jr z,l4d40h		;4d3a
	and c			;4d3c
	rrc (hl)		;4d3d
	ret po			;4d3f
l4d40h:
	ld sp,0047ch		;4d40
	add hl,bc		;4d43
	ret z			;4d44
	ld (00487h),a		;4d45
	ret p			;4d48
	ei			;4d49
	ld l,c			;4d4a
	sub e			;4d4b
	or e			;4d4c
	ld l,e			;4d4d
	ld (de),a		;4d4e
	ld d,a			;4d4f
	ld l,l			;4d50
	call po,0848bh		;4d51
	cp (hl)			;4d54
	ld bc,0c280h		;4d55
	ld de,00010h		;4d58
	and h			;4d5b
	ld d,h			;4d5c
l4d5dh:
	and (hl)		;4d5d
	and b			;4d5e
	and h			;4d5f
	ld (hl),b		;4d60
	add hl,de		;4d61
	nop			;4d62
	djnz l4d5dh		;4d63
	ret			;4d65
	ex de,hl		;4d66
	ld hl,l6ff6h		;4d67
	ld bc,01184h		;4d6a
	ldir			;4d6d
	ret			;4d6f
	add a,h			;4d70
	ld l,a			;4d71
	ld c,b			;4d72
	sbc a,l			;4d73
	ld c,035h		;4d74
	sub h			;4d76
	cp d			;4d77
	ld h,d			;4d78
	ld c,b			;4d79
	sbc a,a			;4d7a
	inc b			;4d7b
	xor b			;4d7c
	ld c,b			;4d7d
	ex de,hl		;4d7e
	ld e,e			;4d7f
l4d80h:
	ld a,b			;4d80
	ld e,e			;4d81
	ld (de),a		;4d82
	adc a,e			;4d83
	ld d,l			;4d84
	ld c,b			;4d85
	ei			;4d86
	ld b,a			;4d87
	ld c,b			;4d88
	sub e			;4d89
	in c,(c)		;4d8a
	and e			;4d8c
	ld b,070h		;4d8d
	ld c,b			;4d8f
	sbc a,h			;4d90
	and b			;4d91
	pop af			;4d92
	ld e,d			;4d93
	jr l4d80h		;4d94
	in a,(096h)		;4d96
	inc l			;4d98
	ld c,0a9h		;4d99
	ld b,d			;4d9b
	ld a,0fah		;4d9c
	sub e			;4d9e
	ld sp,l46c9h		;4d9f
	ld c,l			;4da2
	xor l			;4da3
	pop de			;4da4
	ld a,e			;4da5
	and e			;4da6
	scf			;4da7
	and a			;4da8
	ld h,c			;4da9
	ei			;4daa
	ld (hl),b		;4dab
	sub 07bh		;4dac
	and (hl)		;4dae
	ld (hl),086h		;4daf
	ret po			;4db1
	ld (iy+021h),b		;4db2
	dec hl			;4db5
	rst 30h			;4db6
	ld (hl),b		;4db7
	jp 0fe4dh		;4db8
	ld (hl),b		;4dbb
	call po,0fe47h		;4dbc
	dec c			;4dbf
	ld d,a			;4dc0
	call z,03aa3h		;4dc1
	ld c,c			;4dc4
	pop bc			;4dc5
	sub c			;4dc6
	ld l,c			;4dc7
	inc sp			;4dc8
	pop af			;4dc9
	push bc			;4dca
	xor b			;4dcb
	ld l,a			;4dcc
	sbc a,h			;4dcd
	rst 28h			;4dce
	ld c,a			;4dcf
	ld c,0efh		;4dd0
	ld (bc),a		;4dd2
l4dd3h:
	xor a			;4dd3
l4dd4h:
	ld (hl),a		;4dd4
	inc hl			;4dd5
	nop			;4dd6
	ld b,h			;4dd7
	ld (hl),c		;4dd8
	ld (bc),a		;4dd9
	djnz l4dd3h		;4dda
	xor e			;4ddc
	ld h,(hl)		;4ddd
	ret po			;4dde
	and h			;4ddf
	rla			;4de0
	ld (09758h),a		;4de1
	sub (hl)		;4de4
	rst 38h			;4de5
	ld d,c			;4de6
	ld (0802bh),a		;4de7
	ret p			;4dea
	ld e,d			;4deb
	or e			;4dec
	ld b,(hl)		;4ded
	add a,b			;4dee
	and e			;4def
	sub a			;4df0
	add a,b			;4df1
	ld h,d			;4df2
	res 1,(hl)		;4df3
	add a,b			;4df5
	ld l,l			;4df6
	cp d			;4df7
	inc hl			;4df8
	add a,b			;4df9
	add a,l			;4dfa
	ld a,h			;4dfb
	jp c,080f1h		;4dfc
	inc e			;4dff
	ld (bc),a		;4e00
	ld a,(hl)		;4e01
l4e02h:
	ld (hl),c		;4e02
	ld hl,l7178h		;4e03
	add a,b			;4e06
	inc (hl)		;4e07
l4e08h:
	ld a,a			;4e08
	ld (hl),c		;4e09
	adc a,h			;4e0a
	add a,b			;4e0b
	ld (hl),l		;4e0c
	ld a,a			;4e0d
	dec c			;4e0e
	or l			;4e0f
	ld l,e			;4e10
	add a,b			;4e11
	ld e,088h		;4e12
	xor h			;4e14
	add a,b			;4e15
l4e16h:
	ld sp,hl		;4e16
	sub c			;4e17
	xor h			;4e18
	add a,b			;4e19
	jp po,00121h		;4e1a
	ld d,072h		;4e1d
	ld b,096h		;4e1f
	ld c,099h		;4e21
	ld de,0b0a0h		;4e23
	ld a,099h		;4e26
	sbc hl,sp		;4e28
	and e			;4e2a
	ld bc,l48d3h		;4e2b
	sbc a,b			;4e2e
	and l			;4e2f
	di			;4e30
	nop			;4e31
	ret			;4e32
	ei			;4e33
	ld d,013h		;4e34
	ld (0328eh),a		;4e36
	ld (0ef0eh),a		;4e39
	call m,01632h		;4e3c
	rlca			;4e3f
	ld e,h			;4e40
	inc sp			;4e41
	rlca			;4e42
	ld b,0aah		;4e43
	call m,01a2ah		;4e45
	rlca			;4e48
	add a,(hl)		;4e49
	cp c			;4e4a
	defb 0fdh,01eh,01dh ;illegal sequence	;4e4b
	rlca			;4e4e
	add a,(hl)		;4e4f
	xor c			;4e50
	ld l,(iy+021h)		;4e51
	rlca			;4e54
	add a,(hl)		;4e55
	jp (hl)			;4e56
	defb 0fdh,03eh,025h ;illegal sequence	;4e57
	rlca			;4e5a
	adc a,(hl)		;4e5b
	ex de,hl		;4e5c
	defb 0fdh,03fh,007h ;illegal sequence	;4e5d
	inc bc			;4e60
	jp m,l52feh		;4e61
	jr z,l4e85h		;4e64
	adc a,d			;4e66
	adc a,a			;4e67
	inc e			;4e68
	inc l			;4e69
	ccf			;4e6a
	ld c,0feh		;4e6b
	ld hl,(0372fh)		;4e6d
	inc l			;4e70
	cp l			;4e71
	ld (hl),b		;4e72
	inc sp			;4e73
l4e74h:
	rra			;4e74
	rst 38h			;4e75
	jr c,l4e82h		;4e76
	scf			;4e78
	rla			;4e79
	inc e			;4e7a
	rst 38h			;4e7b
	dec bc			;4e7c
	scf			;4e7d
	ld d,a			;4e7e
	ld c,0ffh		;4e7f
	dec h			;4e81
l4e82h:
	dec sp			;4e82
	rrca			;4e83
	ld c,l			;4e84
l4e85h:
	ld (0073eh),a		;4e85
	ld c,0bah		;4e88
	rst 38h			;4e8a
	ld c,e			;4e8b
	ld b,d			;4e8c
	ccf			;4e8d
	rlca			;4e8e
	rst 38h			;4e8f
	ld h,h			;4e90
	ld b,l			;4e91
	ld e,a			;4e92
	inc d			;4e93
	call z,sub_4939h	;4e94
	ccf			;4e97
	add hl,sp		;4e98
	jr z,l4ee8h		;4e99
	ld e,a			;4e9b
	jr c,l4f02h		;4e9c
	ld d,b			;4e9e
	daa			;4e9f
	inc e			;4ea0
	cp 00ah			;4ea1
	ld d,h			;4ea3
	ld (hl),a		;4ea4
	ld c,0feh		;4ea5
	dec bc			;4ea7
	ld d,h			;4ea8
	rla			;4ea9
	inc b			;4eaa
	ld b,(iy+058h)		;4eab
	adc a,a			;4eae
	ld (hl),d		;4eaf
	ld d,047h		;4eb0
	ld e,e			;4eb2
	and a			;4eb3
	daa			;4eb4
	ld d,d			;4eb5
	ld e,a			;4eb6
	ld b,a			;4eb7
	ld de,038c7h		;4eb8
sub_4ebbh:
	ld h,d			;4ebb
	rra			;4ebc
	ld de,l48fbh+1		;4ebd
	ld h,(hl)		;4ec0
	rst 8			;4ec1
	ret			;4ec2
	ld c,c			;4ec3
	ld h,(hl)		;4ec4
	ld (hl),a		;4ec5
	ret nz			;4ec6
	ei			;4ec7
	ld d,d			;4ec8
	ld l,e			;4ec9
	jp po,0ee27h		;4eca
	or d			;4ecd
	cp h			;4ece
	ret c			;4ecf
	dec c			;4ed0
	rrca			;4ed1
	ld (hl),e		;4ed2
	ld a,080h		;4ed3
	rl d			;4ed5
	ld (hl),e		;4ed7
	jp nz,0de94h		;4ed8
	dec bc			;4edb
	and 00fh		;4edc
l4edeh:
	rra			;4ede
	call z,sub_7384h	;4edf
	ld hl,0a313h		;4ee2
	adc a,c			;4ee5
	or h			;4ee6
	and e			;4ee7
l4ee8h:
	dec l			;4ee8
	adc a,l			;4ee9
	ld b,b			;4eea
l4eebh:
	jr nz,l4ef4h		;4eeb
	ld a,(l5c64h)		;4eed
	add a,(hl)		;4ef0
	sbc a,b			;4ef1
	sbc a,e			;4ef2
	ld (hl),e		;4ef3
l4ef4h:
	xor a			;4ef4
	cp d			;4ef5
	xor l			;4ef6
	ld a,b			;4ef7
	ld hl,03bd2h		;4ef8
	dec hl			;4efb
	ld l,a			;4efc
	ld (hl),a		;4efd
	ld a,(00121h)		;4efe
l4f01h:
	add a,(hl)		;4f01
l4f02h:
	ld e,a			;4f02
	inc hl			;4f03
	ld d,(hl)		;4f04
	inc hl			;4f05
	ld a,(00334h)		;4f06
	or d			;4f09
	ld d,a			;4f0a
	ld a,d			;4f0b
l4f0ch:
	rlca			;4f0c
	rlca			;4f0d
	pop bc			;4f0e
	nop			;4f0f
	ld (hl),a		;4f10
	di			;4f11
	out (099h),a		;4f12
	jr nz,l4f54h		;4f14
	adc a,(hl)		;4f16
	inc bc			;4f17
	out (c),e		;4f18
	ld a,d			;4f1a
	and 02dh		;4f1b
	ccf			;4f1d
	ld d,a			;4f1e
	rlca			;4f1f
	jp z,02850h		;4f20
	rlca			;4f23
	in a,(098h)		;4f24
	nop			;4f26
	cp 099h			;4f27
	jp z,l737ch		;4f29
	ei			;4f2c
	ld a,0fbh		;4f2d
	ld c,a			;4f2f
	add a,b			;4f30
	sub c			;4f31
	ld d,002h		;4f32
	inc b			;4f34
	ld (bc),a		;4f35
	djnz $-85		;4f36
	ret			;4f38
	set 6,d			;4f39
	call p,07355h		;4f3b
	ld (bc),a		;4f3e
	inc h			;4f3f
	ld (hl),d		;4f40
	ld (bc),a		;4f41
	dec c			;4f42
	ld (bc),a		;4f43
	ei			;4f44
	nop			;4f45
	inc c			;4f46
	djnz l4edeh		;4f47
	ret			;4f49
	ld b,01fh		;4f4a
	ccf			;4f4c
	ld a,h			;4f4d
	jr $+114		;4f4e
	ret p			;4f50
	ret po			;4f51
l4f52h:
	nop			;4f52
	ret p			;4f53
l4f54h:
	nop			;4f54
	jr nc,l4f93h		;4f55
	rra			;4f57
	rlca			;4f58
	nop			;4f59
	add a,b			;4f5a
	ret po			;4f5b
	ret m			;4f5c
	inc c			;4f5d
	inc a			;4f5e
	inc c			;4f5f
	ld c,006h		;4f60
	nop			;4f62
	nop			;4f63
	ld c,00ch		;4f64
	inc a			;4f66
	ret m			;4f67
	ret po			;4f68
	nop			;4f69
	rlca			;4f6a
	jr l4f6fh		;4f6b
	jr nz,l4fb2h		;4f6d
l4f6fh:
	ld c,h			;4f6f
	adc a,b			;4f70
	sub b			;4f71
	djnz l4f75h		;4f72
	nop			;4f74
l4f75h:
	ex af,af'		;4f75
	ld c,h			;4f76
	ld b,e			;4f77
	jr nz,$+26		;4f78
	rlca			;4f7a
	ret po			;4f7b
	jr l4f7eh		;4f7c
l4f7eh:
	inc b			;4f7e
	jp nz,01132h		;4f7f
	add hl,bc		;4f82
	add hl,bc		;4f83
	dec c			;4f84
	dec c			;4f85
	ld b,l			;4f86
	add hl,de		;4f87
	ld l,h			;4f88
	call nz,02018h		;4f89
	nop			;4f8c
	and (hl)		;4f8d
	ex af,af'		;4f8e
	rlca			;4f8f
	nop			;4f90
	ld a,003h		;4f91
l4f93h:
	or b			;4f93
	ld e,a			;4f94
	ex af,af'		;4f95
	call 01026h		;4f96
	jr nz,l4feah		;4f99
	adc a,h			;4f9b
	ret nz			;4f9c
	ld h,b			;4f9d
	djnz $-12		;4f9e
	call pe,0060bh		;4fa0
	rrca			;4fa3
	dec bc			;4fa4
	dec bc			;4fa5
	add hl,bc		;4fa6
l4fa7h:
	rlca			;4fa7
	rra			;4fa8
	jr l4fc7h		;4fa9
l4fabh:
	ret nc			;4fab
	sub b			;4fac
	ld e,l			;4fad
	ret nc			;4fae
	inc b			;4faf
	rra			;4fb0
	adc a,b			;4fb1
l4fb2h:
	ld b,002h		;4fb2
	inc bc			;4fb4
	inc e			;4fb5
	rrca			;4fb6
	dec sp			;4fb7
	rst 10h			;4fb8
	and e			;4fb9
	ld hl,0f8c0h		;4fba
	ret p			;4fbd
	ccf			;4fbe
	ld c,080h		;4fbf
	ret nz			;4fc1
	ld b,b			;4fc2
	rra			;4fc3
	xor b			;4fc4
	ld e,03fh		;4fc5
l4fc7h:
	rrca			;4fc7
	ccf			;4fc8
	ld a,b			;4fc9
	inc bc			;4fca
	ld e,081h		;4fcb
	jr nz,l4fa7h		;4fcd
	ret p			;4fcf
	ret nc			;4fd0
	and b			;4fd1
	ret nz			;4fd2
	rra			;4fd3
	call c,00300h		;4fd4
	dec h			;4fd7
	rra			;4fd8
	rrca			;4fd9
	ld a,a			;4fda
	ld bc,00c00h		;4fdb
	jp 03940h		;4fde
	ld sp,0f87fh		;4fe1
	ld c,(hl)		;4fe4
	jp po,00603h		;4fe5
	inc b			;4fe8
	dec de			;4fe9
l4feah:
	rrca			;4fea
	dec bc			;4feb
	dec b			;4fec
	jr nz,$+118		;4fed
	rra			;4fef
	ret nz			;4ff0
	rlca			;4ff1
	and b			;4ff2
	ret nc			;4ff3
	ret nc			;4ff4
	ret p			;4ff5
	cp b			;4ff6
	ret p			;4ff7
	ld (hl),b		;4ff8
	ld a,(l452fh)		;4ff9
	pop bc			;4ffc
	pop hl			;4ffd
	ld c,01bh		;4ffe
	ld (hl),l		;5000
	call po,00328h		;5001
	rlca			;5004
	inc e			;5005
	ld (hl),l		;5006
	ret nz			;5007
sub_5008h:
	ld b,021h		;5008
	dec e			;500a
	ld (hl),l		;500b
	ld de,l4d00h		;500c
	ld (hl),l		;500f
	ld b,030h		;5010
	call sub_74f0h		;5012
	inc hl			;5015
	inc b			;5016
	inc de			;5017
	djnz $-5		;5018
	ld hl,00e4dh		;501a
	ld a,l			;501d
	add a,(hl)		;501e
	ld c,010h		;501f
	ld a,(hl)		;5021
	add a,a			;5022
	nop			;5023
	ld c,b			;5024
	rst 0			;5025
	ld c,(hl)		;5026
	djnz $-125		;5027
	dec hl			;5029
	ld c,(hl)		;502a
	dec b			;502b
	ld (de),a		;502c
	inc de			;502d
	ld a,c			;502e
	ld b,h			;502f
	ld (de),a		;5030
	dec de			;5031
	call pe,01821h		;5032
	call 0e905h		;5035
	ld (bc),a		;5038
	ld a,(0c398h)		;5039
l503ch:
	ld a,003h		;503c
	ld (hl),h		;503e
	pop af			;503f
	ld a,(bc)		;5040
	jp z,0f805h		;5041
	bit 2,d			;5044
	sbc a,b			;5046
	inc l			;5047
	dec (hl)		;5048
	ld c,b			;5049
	xor a			;504a
	di			;504b
	defb 0fdh,001h,0c9h ;illegal sequence	;504c
	ld a,(de)		;504f
	cp (hl)			;5050
	ret z			;5051
	inc a			;5052
	ld (de),a		;5053
	ret			;5054
	ld h,b			;5055
	defb 0edh ;next byte illegal after ed	;5056
	dec de			;5057
	ld bc,03d7eh		;5058
	cp 0ffh			;505b
	jr nz,l5060h		;505d
	sbc a,h			;505f
l5060h:
	jr c,l5072h		;5060
	ld c,0f5h		;5062
	call 074b2h		;5064
	jr c,l5071h		;5067
	ret			;5069
	ld (bc),a		;506a
	and b			;506b
	cp c			;506c
	push bc			;506d
	inc de			;506e
	ld b,083h		;506f
l5071h:
	inc b			;5071
l5072h:
	inc b			;5072
	rlca			;5073
	ld bc,00303h		;5074
	dec b			;5077
	inc b			;5078
	ld bc,00204h		;5079
	inc b			;507c
l507dh:
	dec b			;507d
	ld bc,09a07h		;507e
	adc a,d			;5081
	or e			;5082
	call 08a00h		;5083
l5086h:
	cp (hl)			;5086
	and 058h		;5087
	ld e,c			;5089
	inc bc			;508a
	dec de			;508b
	inc d			;508c
	dec h			;508d
	ld e,a			;508e
	ld bc,0c800h		;508f
	ld (de),a		;5092
	ld a,(08cb0h)		;5093
	ld b,0c8h		;5096
	call 0056ch		;5098
	rlca			;509b
	ld a,c			;509c
	or d			;509d
	inc bc			;509e
	ld a,b			;509f
	or d			;50a0
	jp z,0c828h		;50a1
	ld (hl),l		;50a4
	call m,0b589h		;50a5
	or c			;50a8
	ld d,002h		;50a9
	ld hl,l5c65h		;50ab
	jp z,0b9c1h		;50ae
	jr nz,l503ch		;50b1
	ld e,h			;50b3
	ld bc,0069ah		;50b4
	ld (de),a		;50b7
	xor a			;50b8
	jp 002deh		;50b9
	ld b,00dh		;50bc
	ld hl,05c77h		;50be
	add hl,bc		;50c1
	nop			;50c2
	nop			;50c3
	ld hl,l7601h		;50c4
	ld de,053deh		;50c7
	ld bc,00c66h		;50ca
	rst 20h			;50cd
	halt			;50ce
	or c			;50cf
	rla			;50d0
	or a			;50d1
	ld d,l			;50d2
	jp pe,00d3ch		;50d3
	djnz l50f6h		;50d6
	ret			;50d8
	inc e			;50d9
	ld l,l			;50da
	ret			;50db
	inc e			;50dc
	pop bc			;50dd
	cp e			;50de
	ld h,b			;50df
	ret			;50e0
	and b			;50e1
	ld b,032h		;50e2
	jr c,l5086h		;50e4
	push bc			;50e6
	inc a			;50e7
	jp nz,0b9d4h		;50e8
	add a,c			;50eb
	inc c			;50ec
	jp l53eah		;50ed
	ld de,0aa06h		;50f0
	jp 0b25eh		;50f3
l50f6h:
	and b			;50f6
	push hl			;50f7
	ld hl,l7627h		;50f8
	xor d			;50fb
	rlca			;50fc
	ret po			;50fd
	nop			;50fe
	pop hl			;50ff
	push de			;5100
	ret			;5101
	adc a,d			;5102
	ld (hl),a		;5103
l5104h:
	xor l			;5104
	ld (hl),a		;5105
	defb 0ddh,000h,077h ;illegal sequence	;5106
	dec e			;5109
	ld a,b			;510a
	ld e,e			;510b
	ld a,b			;510c
	call nc,01a78h		;510d
	nop			;5110
	ld a,c			;5111
	jr z,l518dh		;5112
	sbc a,l			;5114
sub_5115h:
	ld a,c			;5115
	inc de			;5116
	ld a,d			;5117
	ld c,a			;5118
	nop			;5119
	ld a,d			;511a
	ld e,c			;511b
	ld a,e			;511c
	adc a,b			;511d
	ld a,e			;511e
	or d			;511f
	ld a,e			;5120
	or c			;5121
	nop			;5122
	ld a,h			;5123
	ex de,hl		;5124
	ld a,h			;5125
	ld e,a			;5126
	ld a,l			;5127
	ld c,b			;5128
	ld a,(hl)		;5129
	or b			;512a
	inc d			;512b
	ld a,(hl)		;512c
	ld de,03703h		;512d
	ret			;5130
	add a,b			;5131
	jp nz,07662h		;5132
	ld a,(l5948h)		;5135
	pop bc			;5138
l5139h:
	adc a,h			;5139
	ld c,l			;513a
	add hl,bc		;513b
	jp z,07661h		;513c
	jp nc,0f838h		;513f
	ld d,h			;5142
	ret			;5143
	push de			;5144
	rst 38h			;5145
	ld b,0c3h		;5146
	ld (hl),d		;5148
	halt			;5149
	ld b,07fh		;514a
l514ch:
	inc b			;514c
	sbc a,l			;514d
	ccf			;514e
	push hl			;514f
	sub h			;5150
	nop			;5151
	ld (bc),a		;5152
	and b			;5153
	ld (hl),a		;5154
	ld h,000h		;5155
	ld l,a			;5157
	add hl,de		;5158
	ld (hl),h		;5159
	ld b,(hl)		;515a
	rst 10h			;515b
	pop hl			;515c
	ld b,a			;515d
	dec hl			;515e
	nop			;515f
	add a,(hl)		;5160
	ld (hl),a		;5161
	and a			;5162
	ld b,d			;5163
	add a,b			;5164
	ld (hl),a		;5165
	ret			;5166
	cp b			;5167
	inc l			;5168
	ld bc,0ff38h		;5169
	ld bc,08e05h		;516c
	inc bc			;516f
	ld bc,00dffh		;5170
	dec sp			;5173
	dec b			;5174
	sub a			;5175
	inc bc			;5176
	cp 005h			;5177
	inc bc			;5179
	ld h,000h		;517a
	cp 007h			;517c
	cp c			;517e
	nop			;517f
	inc bc			;5180
	call 0c40dh		;5181
	jr c,l518bh		;5184
	pop hl			;5186
	ld bc,00dffh		;5187
	sbc a,h			;518a
l518bh:
	dec b			;518b
	ld e,h			;518c
l518dh:
	inc bc			;518d
	rlca			;518e
	ld (hl),a		;518f
	dec b			;5190
	inc bc			;5191
	rst 0			;5192
	ex af,af'		;5193
	ld e,c			;5194
	ld (0df05h),hl		;5195
	jr nc,l5139h		;5198
	ld bc,l543bh		;519a
	ld d,(hl)		;519d
	rst 0			;519e
	ld l,b			;519f
	ld a,005h		;51a0
	ld de,0c282h		;51a2
	rst 38h			;51a5
	sub b			;51a6
	dec sp			;51a7
	adc a,(hl)		;51a8
	and (hl)		;51a9
	jr c,l51afh		;51aa
	adc a,l			;51ac
l51adh:
	or h			;51ad
sub_51aeh:
	ex (sp),hl		;51ae
l51afh:
	inc de			;51af
	ld bc,00196h		;51b0
	dec c			;51b3
	ld (hl),c		;51b4
	dec b			;51b5
	inc bc			;51b6
	ld (hl),c		;51b7
	rlca			;51b8
	dec b			;51b9
	rst 18h			;51ba
	inc bc			;51bb
	dec e			;51bc
	ex af,af'		;51bd
	ld h,a			;51be
	ld (l7e03h+2),hl	;51bf
	jr nc,l5224h		;51c2
	nop			;51c4
	call sub_764dh		;51c5
	ld (hl),025h		;51c8
	ld (bc),a		;51ca
	xor a			;51cb
	jp m,0b024h		;51cc
	ld a,l			;51cf
	ld a,(hl)		;51d0
	pop de			;51d1
	jp m,l77d3h		;51d2
	xor d			;51d5
	di			;51d6
l51d7h:
	or d			;51d7
	call po,0beafh		;51d8
	and (hl)		;51db
	ex af,af'		;51dc
	or (hl)			;51dd
	ld a,(0ab08h)		;51de
	ld b,b			;51e1
	ld de,l768ah		;51e2
	call 06648h		;51e5
	sbc a,0f3h		;51e8
	jr l51adh		;51ea
	dec a			;51ec
	ret nz			;51ed
	in a,(092h)		;51ee
	ld h,0c8h		;51f0
	jp nz,03d47h		;51f2
	pop hl			;51f5
	jp nz,0d2aah		;51f6
sub_51f9h:
	jp nc,044e6h		;51f9
	ld e,a			;51fc
	pop af			;51fd
	add a,b			;51fe
	call z,sub_7f33h	;51ff
	dec hl			;5202
	ret			;5203
	xor d			;5204
	inc hl			;5205
	adc a,c			;5206
	sbc a,e			;5207
	cpl			;5208
	rst 38h			;5209
	cpl			;520a
	ld d,d			;520b
	sub d			;520c
	jp c,0e16eh		;520d
	ld e,(hl)		;5210
	ld a,(bc)		;5211
	add a,c			;5212
	nop			;5213
	dec b			;5214
	ld a,b			;5215
	dec a			;5216
	jp z,l77fah		;5217
	inc (hl)		;521a
	ld b,d			;521b
	inc (hl)		;521c
	daa			;521d
	or a			;521e
	call z,0262ah		;521f
	add hl,sp		;5222
	dec (hl)		;5223
l5224h:
	ret			;5224
	ld a,(bc)		;5225
	ld b,e			;5226
	inc a			;5227
	ld a,(bc)		;5228
	inc (hl)		;5229
	ret			;522a
	ld a,(hl)		;522b
	exx			;522c
	adc a,c			;522d
	add a,e			;522e
	add a,b			;522f
	cp 01fh			;5230
	ret nc			;5232
	ld a,(hl)		;5233
l5234h:
	inc e			;5234
	add hl,de		;5235
	sub c			;5236
	ld d,d			;5237
	ld b,07bh		;5238
	add hl,de		;523a
	ld a,b			;523b
	add a,d			;523c
	add a,e			;523d
	ld (hl),b		;523e
	ccf			;523f
	or (hl)			;5240
	inc a			;5241
	adc a,e			;5242
	add a,b			;5243
	ld (hl),a		;5244
	ld b,a			;5245
	dec hl			;5246
	jp nz,0703fh		;5247
	ld a,b			;524a
	ld c,b			;524b
	ld a,(00000h)		;524c
	jp nz,00ebeh		;524f
	rst 38h			;5252
	jp c,0783bh		;5253
	ld h,00eh		;5256
	ld bc,011eah		;5258
	add a,c			;525b
	ld (hl),a		;525c
	ld c,(hl)		;525d
	sub d			;525e
	nop			;525f
	ld a,b			;5260
	or a			;5261
	jp nz,l784bh		;5262
	ld a,(hl)		;5265
	xor 05ch		;5266
	ex af,af'		;5268
	ld b,c			;5269
	ld c,a			;526a
	sub b			;526b
	dec (hl)		;526c
	dec hl			;526d
	rla			;526e
	cp 0eah			;526f
	ret nc			;5271
	ld a,b			;5272
	ld (hl),a		;5273
	dec a			;5274
	adc a,b			;5275
	jp nz,l78a6h		;5276
	rst 10h			;5279
	sbc a,l			;527a
	dec b			;527b
	inc a			;527c
	ld (03c06h),hl		;527d
	ld a,b			;5280
	ld a,b			;5281
	ld h,e			;5282
	pop de			;5283
	or h			;5284
	ld bc,08148h		;5285
	ld bc,084d2h		;5288
	ld a,b			;528b
	ld c,l			;528c
	inc d			;528d
	dec e			;528e
	add hl,de		;528f
	add a,b			;5290
	or b			;5291
	inc bc			;5292
	cp 024h			;5293
	jp nz,09348h		;5295
	add hl,hl		;5298
	ld (hl),a		;5299
	ld d,l			;529a
	ld b,0feh		;529b
	inc hl			;529d
	jp p,0829eh		;529e
	nop			;52a1
	neg			;52a2
	cp 004h			;52a4
	jp c,02ea4h		;52a6
	ld a,b			;52a9
	ld (hl),b		;52aa
	sbc a,00ch		;52ab
	dec hl			;52ad
	ld d,(hl)		;52ae
	dec hl			;52af
	ld e,(hl)		;52b0
	ld e,(hl)		;52b1
	ld c,0e6h		;52b2
	rlca			;52b4
	jp nz,l6ab6h		;52b5
	ld c,b			;52b8
	ld a,(hl)		;52b9
l52bah:
	add a,e			;52ba
	ret p			;52bb
	ret nc			;52bc
	ccf			;52bd
	call z,sub_7f21h	;52be
	sub d			;52c1
	ld a,(bc)		;52c2
	add a,d			;52c3
	add a,b			;52c4
	ld bc,030e2h		;52c5
	ld b,03ah		;52c8
l52cah:
	ld d,d			;52ca
	pop bc			;52cb
	or d			;52cc
	ld (hl),b		;52cd
	dec b			;52ce
l52cfh:
	inc hl			;52cf
	ld (hl),038h		;52d0
	ld bc,0782bh		;52d2
	ld l,d			;52d5
	dec hl			;52d6
	ld a,d			;52d7
	rlca			;52d8
	jr z,l5314h		;52d9
	jp nz,030e7h		;52db
	sub l			;52de
	or d			;52df
	ld (de),a		;52e0
	jp nz,078f8h		;52e1
	or h			;52e4
	jp nz,007cah		;52e5
	adc a,e			;52e8
	and h			;52e9
	ld a,052h		;52ea
	ret nz			;52ec
	cp l			;52ed
	ld c,b			;52ee
	cp e			;52ef
	jp c,00725h		;52f0
	ld a,c			;52f3
	ld (081c6h),a		;52f4
	adc a,b			;52f7
	add hl,de		;52f8
	ld b,0e5h		;52f9
	ld e,054h		;52fb
	ld d,b			;52fd
l52feh:
	sbc a,h			;52fe
	ld a,(bc)		;52ff
	dec d			;5300
	ld c,a			;5301
	call 0f20ch		;5302
	ld a,h			;5305
	and b			;5306
	ld (hl),047h		;5307
	ld c,0b4h		;5309
	ld d,l			;530b
	jr $+64			;530c
	or c			;530e
	add a,d			;530f
l5310h:
	ld d,a			;5310
	cp 0c0h			;5311
	rlca			;5313
l5314h:
	jp c,l7934h		;5314
	sub h			;5317
	ld h,b			;5318
	rst 38h			;5319
	ld e,d			;531a
	adc a,l			;531b
	ld l,h			;531c
	exx			;531d
	ld (hl),b		;531e
	dec hl			;531f
	adc a,b			;5320
	ld e,a			;5321
	sub d			;5322
	ld a,c			;5323
	ret			;5324
	ret c			;5325
	push de			;5326
	pop bc			;5327
	ld c,(hl)		;5328
	ld a,c			;5329
	ld b,07bh		;532a
	ld c,e			;532c
	sbc a,(hl)		;532d
	ld de,011d5h		;532e
	ld e,d			;5331
	ld a,c			;5332
	push de			;5333
	ld e,023h		;5334
	push hl			;5336
	ei			;5337
	sub e			;5338
	sub l			;5339
	and d			;533a
	jp nz,l797bh		;533b
	sbc a,020h		;533e
	jp p,l7974h		;5340
	cp 002h			;5343
	cp 0c2h			;5345
	ld a,d			;5347
	ld a,c			;5348
	inc a			;5349
	jp 0bb03h		;534a
	rst 0			;534d
	ex af,af'		;534e
	ld h,0b6h		;534f
	add a,h			;5351
	ld a,h			;5352
	add a,c			;5353
	jp p,00c8ah		;5354
	defb 0fdh,031h,0c2h ;illegal sequence	;5357
	sub b			;535a
	dec d			;535b
	sub b			;535c
	ex af,af'		;535d
	ld d,h			;535e
	jr z,$+6		;535f
	dec d			;5361
	pop hl			;5362
	adc a,h			;5363
	jp c,0d38ch		;5364
	dec h			;5367
	cp 0f0h			;5368
	pop bc			;536a
	and h			;536b
	ld c,(hl)		;536c
	ret			;536d
	ld (hl),c		;536e
	exx			;536f
	call nz,0b869h		;5370
	cp d			;5373
	ld b,(hl)		;5374
	sbc a,b			;5375
	ld bc,0ebfeh		;5376
	jp nz,l79b7h		;5379
	ld a,0d3h		;537c
	call pe,0102ch		;537e
	jp z,011cfh		;5381
	cp 0b4h			;5384
	jp z,0e24dh		;5386
	ld a,(0048ch)		;5389
	inc b			;538c
	ld h,h			;538d
	jp z,l79deh		;538e
	dec (hl)		;5391
	ld (0090dh),hl		;5392
	ld (l7a12h),a		;5395
	dec hl			;5398
	sbc a,d			;5399
	adc a,095h		;539a
	inc c			;539c
	ld a,d			;539d
	ret			;539e
	adc a,a			;539f
	jr $+6			;53a0
	dec bc			;53a2
	inc hl			;53a3
	add hl,bc		;53a4
	cp 046h			;53a5
	jp nc,034efh		;53a7
	ld bc,0810ch		;53aa
	cp 0a0h			;53ad
	jp c,009f9h		;53af
	ld (009ffh),a		;53b2
	sbc a,c			;53b5
	dec (hl)		;53b6
	dec a			;53b7
	adc a,c			;53b8
	add hl,de		;53b9
	add hl,bc		;53ba
	daa			;53bb
	dec a			;53bc
	ret c			;53bd
	ld a,(bc)		;53be
	add hl,de		;53bf
	ld (hl),a		;53c0
	xor a			;53c1
	ld b,b			;53c2
	ld c,000h		;53c3
	jp l61d0h		;53c5
	ld a,c			;53c8
	push af			;53c9
	ld (hl),l		;53ca
	jp pe,l602ch		;53cb
	ld a,d			;53ce
	ld (hl),l		;53cf
	jp nc,l7a2bh		;53d0
	dec h			;53d3
sub_53d4h:
	ld a,0ebh		;53d4
	call nz,05923h		;53d6
	ld (hl),a		;53d9
	dec a			;53da
	ld e,(hl)		;53db
	dec b			;53dc
	ld (l7fe7h),a		;53dd
	dec bc			;53e0
	ld e,(hl)		;53e1
	ld e,b			;53e2
	ld h,e			;53e3
	ld b,h			;53e4
	ld a,a			;53e5
	ld c,b			;53e6
	ret nz			;53e7
	or l			;53e8
	sub b			;53e9
l53eah:
	sub d			;53ea
	ld (0b505h),hl		;53eb
	call z,0b2b2h		;53ee
	dec (hl)		;53f1
	sub d			;53f2
	sbc a,0bfh		;53f3
	ld c,l			;53f5
sub_53f6h:
	nop			;53f6
	or h			;53f7
	and e			;53f8
	rlc c			;53f9
	adc a,0feh		;53fb
	and e			;53fd
	djnz l5433h		;53fe
	jr nc,l5404h		;5400
	ld a,d			;5402
	nop			;5403
l5404h:
	call z,00154h		;5404
l5407h:
	cp a			;5407
	adc a,0eah		;5408
	dec sp			;540a
	pop af			;540b
	ld a,c			;540c
	or e			;540d
	dec sp			;540e
	sub 089h		;540f
	push bc			;5411
	ld d,h			;5412
	ld b,(hl)		;5413
	call nz,09c96h		;5414
	inc d			;5417
	ld (hl),c		;5418
	ld a,e			;5419
	add a,h			;541a
	call nz,02306h		;541b
	xor b			;541e
	adc a,b			;541f
	ld bc,0b477h		;5420
	xor (hl)		;5423
	nop			;5424
	ld de,07a59h		;5425
	jp z,07b7ch		;5428
	ld de,005d9h		;542b
	ld a,d			;542e
	call sub_766bh		;542f
l5432h:
	inc hl			;5432
l5433h:
	or e			;5433
	xor l			;5434
	call nz,0ac65h		;5435
	cp b			;5438
	pop bc			;5439
l543ah:
	dec b			;543a
l543bh:
	jp nz,l7b97h		;543b
	inc (hl)		;543e
	sub (hl)		;543f
	xor h			;5440
	ld d,a			;5441
	pop hl			;5442
	ld a,e			;5443
	ccf			;5444
	xor 075h		;5445
	exx			;5447
	jr nz,l547fh		;5448
	ret c			;544a
	inc (hl)		;544b
	cp c			;544c
	xor h			;544d
	inc hl			;544e
	cp (hl)			;544f
	jr nc,$-64		;5450
	jp z,001fdh		;5452
	ld a,e			;5455
	ld (hl),a		;5456
	exx			;5457
	xor a			;5458
	ld a,(0c13eh)		;5459
	and h			;545c
	or b			;545d
	ld e,a			;545e
	ld hl,(l4858h)		;545f
	ld h,h			;5462
	pop af			;5463
	ld (00488h),hl		;5464
	exx			;5467
	jp nc,0cd14h		;5468
	xor a			;546b
	ld (de),a		;546c
	ld h,l			;546d
	jp c,05adeh		;546e
	ld a,(bc)		;5471
	add a,e			;5472
	ld h,h			;5473
	ld d,e			;5474
	djnz l543ah		;5475
	cp e			;5477
	rrca			;5478
	call m,0060eh		;5479
	pop bc			;547c
	add a,h			;547d
	ld b,b			;547e
l547fh:
	ex af,af'		;547f
	pop bc			;5480
	ld (0f0a3h),a		;5481
	adc a,c			;5484
	ex af,af'		;5485
	ld (00746h),a		;5486
	rlca			;5489
	and d			;548a
	jp 033e3h		;548b
	xor b			;548e
	ld l,e			;548f
	defb 0edh ;next byte illegal after ed	;5490
	adc a,l			;5491
	inc bc			;5492
	cp 03ch			;5493
	jp nc,l7c0dh		;5495
	ei			;5498
	ld a,(bc)		;5499
	call po,03cc0h		;549a
	ld l,h			;549d
	cp 0beh			;549e
	sbc a,c			;54a0
	ex de,hl		;54a1
l54a2h:
	ld a,h			;54a2
	add a,e			;54a3
	ld h,h			;54a4
	ex de,hl		;54a5
	pop hl			;54a6
	jp p,09d5bh		;54a7
	ld b,b			;54aa
l54abh:
	ld b,0e5h		;54ab
	jp nz,02508h		;54ad
	ld a,h			;54b0
	ld b,013h		;54b1
	ld l,b			;54b3
	ld l,h			;54b4
	sub b			;54b5
	xor b			;54b6
	adc a,l			;54b7
	ld (hl),0cch		;54b8
	add hl,bc		;54ba
	dec hl			;54bb
	ld (hl),0e6h		;54bc
	ret			;54be
	sbc a,059h		;54bf
	defb 0fdh,05ch ;ld e,iyh	;54c1
	rlca			;54c3
	sub (hl)		;54c4
	ret p			;54c5
	rst 20h			;54c6
	sbc a,a			;54c7
	adc a,(hl)		;54c8
	add hl,bc		;54c9
	ld h,a			;54ca
	dec b			;54cb
	ld bc,l5d07h		;54cc
	rla			;54cf
	jp z,0738eh		;54d0
	daa			;54d3
	adc a,c			;54d4
	ld c,h			;54d5
	ld h,d			;54d6
	rlca			;54d7
	defb 0fdh,0feh,053h ;illegal sequence	;54d8
	ld bc,0f625h		;54db
	ld l,(hl)		;54de
	ld bc,029b0h		;54df
	ld bc,059d2h		;54e2
	bit 1,(hl)		;54e5
	ld b,019h		;54e7
	nop			;54e9
	djnz l5504h		;54ea
	pop bc			;54ec
	ld (bc),a		;54ed
	cp 026h			;54ee
	jp nz,02efdh		;54f0
	sbc a,(hl)		;54f3
	jp p,l4833h		;54f4
	ld b,08ah		;54f7
	ld c,09fh		;54f9
	ld b,e			;54fb
	ld c,a			;54fc
	add a,0adh		;54fd
l54ffh:
	cpl			;54ff
	add a,e			;5500
	add a,b			;5501
	and b			;5502
	cp b			;5503
l5504h:
	jp nz,l7cc1h		;5504
	ld a,(hl)		;5507
	adc a,b			;5508
	sub (hl)		;5509
	ex de,hl		;550a
	ld b,0e8h		;550b
	ret p			;550d
	ld sp,0707ch		;550e
	add hl,bc		;5511
	bit 1,(hl)		;5512
	inc sp			;5514
	ex de,hl		;5515
	xor a			;5516
	and c			;5517
	adc a,d			;5518
	jp m,0cecch		;5519
	ld d,b			;551c
	cp 0fah			;551d
	jp nc,000e6h		;551f
	ld a,h			;5522
	add hl,de		;5523
	ld de,l7c71h		;5524
	call 07670h		;5527
	sub d			;552a
l552bh:
	or e			;552b
	ld (ix-072h),071h	;552c
	ld c,(hl)		;5530
	ex (sp),hl		;5531
	dec l			;5532
	inc c			;5533
	jp nz,l7d3ch		;5534
	xor 044h		;5537
	adc a,h			;5539
	cp l			;553a
	add a,b			;553b
	jp c,l7d14h		;553c
	cp 0c8h			;553f
	ld e,l			;5541
	ld d,0b0h		;5542
	ld b,05eh		;5544
	push bc			;5546
	sbc a,c			;5547
	ld d,0ffh		;5548
	rrca			;554a
	dec c			;554b
	ld h,b			;554c
	ld a,(de)		;554d
	sub (hl)		;554e
	ld e,000h		;554f
	ld (02dd2h),hl		;5551
	ld a,(de)		;5554
	inc a			;5555
l5556h:
	jp c,09504h		;5556
	ret m			;5559
	ld d,d			;555a
	ld e,021h		;555b
	ex af,af'		;555d
	ld e,0d2h		;555e
	call pe,0bc00h		;5560
	sbc a,(hl)		;5563
	or b			;5564
	inc bc			;5565
	jp p,09fb4h		;5566
	ld c,(hl)		;5569
	dec hl			;556a
	push de			;556b
	rla			;556c
	ld c,h			;556d
	ld a,l			;556e
	sub e			;556f
	xor l			;5570
	add a,e			;5571
	add a,c			;5572
	rlca			;5573
	ld a,l			;5574
	ld a,06bh		;5575
	halt			;5577
	ld d,0f9h		;5578
	or a			;557a
	cp e			;557b
	jr c,l5556h		;557c
	ld (hl),b		;557e
	and h			;557f
l5580h:
	add a,l			;5580
	or c			;5581
	ld hl,(022afh)		;5582
	or a			;5585
	inc de			;5586
l5587h:
	jp z,l7db8h		;5587
	adc a,d			;558a
	jp z,08a04h		;558b
	ld (hl),b		;558e
	ld a,007h		;558f
	sbc a,h			;5591
	add a,a			;5592
	rst 8			;5593
	ld c,0d0h		;5594
	and a			;5596
	ret nz			;5597
	nop			;5598
	ld b,a			;5599
	ld a,(07d5ch)		;559a
	sub b			;559d
	ld (00388h),a		;559e
	jp nc,l68a4h		;55a1
	ld e,l			;55a4
	ld a,l			;55a5
	or d			;55a6
	call c,09c03h		;55a7
	dec l			;55aa
	jp nz,0002dh		;55ab
	ld h,e			;55ae
	ld e,h			;55af
	exx			;55b0
	call 00500h		;55b1
	exx			;55b4
	ld (hl),0c3h		;55b5
	cp b			;55b7
	jr l5580h		;55b8
	adc a,(hl)		;55ba
	ld b,02eh		;55bb
	ex (sp),hl		;55bd
	ld (hl),b		;55be
	jp nc,0b11bh		;55bf
	add a,b			;55c2
	ld a,(05bf7h)		;55c3
	dec a			;55c6
	call z,sub_7e13h	;55c7
	ret nz			;55ca
	dec bc			;55cb
	ld e,(hl)		;55cc
	ld a,l			;55cd
	ld (0fb01h),a		;55ce
	ret m			;55d1
	xor d			;55d2
	add hl,sp		;55d3
	ld d,d			;55d4
	ld (de),a		;55d5
	jp po,03222h		;55d6
	inc b			;55d9
	jp z,02ce6h		;55da
	add hl,bc		;55dd
	ld h,c			;55de
	ld e,h			;55df
	add a,028h		;55e0
	push bc			;55e2
	call nz,00662h		;55e3
	ld e,09bh		;55e6
	cp d			;55e8
	dec c			;55e9
l55eah:
	ret			;55ea
	ld (l48d6h),a		;55eb
	and a			;55ee
	and (hl)		;55ef
	call 0d811h		;55f0
	cp d			;55f3
	inc hl			;55f4
	inc c			;55f5
	sla a			;55f6
	call pe,0cd1ch		;55f8
	sub b			;55fb
	ld (hl),c		;55fc
	add a,d			;55fd
	di			;55fe
	add hl,sp		;55ff
	inc b			;5600
	ld d,c			;5601
	djnz $-73		;5602
	ld h,b			;5604
	inc l			;5605
l5606h:
	cp 0a7h			;5606
	ret c			;5608
	call nc,0a8cfh		;5609
sub_560ch:
	xor c			;560c
	ld (hl),b		;560d
	rla			;560e
	dec b			;560f
	jp nz,07e34h		;5610
	ld a,(0094fh)		;5613
	ld b,0aeh		;5616
	ld b,(hl)		;5618
	ld b,005h		;5619
	ld de,00bb8h		;561b
	call c,0af11h		;561e
	inc sp			;5621
	xor a			;5622
	ld (hl),a		;5623
	ld (hl),e		;5624
	add a,d			;5625
	ld (hl),0d2h		;5626
	sub l			;5628
	add a,d			;5629
	jp m,095f1h		;562a
	cp c			;562d
	dec h			;562e
	ld a,(hl)		;562f
	ld a,(hl)		;5630
	sub a			;5631
	ld (hl),e		;5632
	exx			;5633
	ld a,(bc)		;5634
	inc hl			;5635
	jp nz,0dc0ah		;5636
	sbc a,e			;5639
	ld (de),a		;563a
	jr z,$-36		;563b
	ld l,e			;563d
	rst 8			;563e
	add a,(hl)		;563f
	jp c,08675h		;5640
	ld e,c			;5643
	nop			;5644
	push af			;5645
	ld b,a			;5646
	sub a			;5647
	ld l,a			;5648
	sub 048h		;5649
	dec hl			;564b
	cp b			;564c
	jp nz,l5c02h		;564d
	add a,b			;5650
	cp d			;5651
l5652h:
	xor h			;5652
	rst 18h			;5653
	ld b,b			;5654
	ld bc,0ca07h		;5655
	adc a,a			;5658
	ld a,(hl)		;5659
	ld b,0f0h		;565a
	nop			;565c
	ld a,(l6c69h)		;565d
	sub 00fh		;5660
	sub b			;5662
	cp 0d2h			;5663
	ld (09cdah),hl		;5665
	jp c,0d256h		;5668
	add a,h			;566b
	cp b			;566c
	pop bc			;566d
	ld a,(de)		;566e
	ld l,c			;566f
l5670h:
	xor d			;5670
	ld a,(de)		;5671
	ld l,e			;5672
	ld l,h			;5673
	sbc a,027h		;5674
	ld h,a			;5676
	cpl			;5677
	and 067h		;5678
	rla			;567a
	and 067h		;567b
	sub e			;567d
	out (067h),a		;567e
l5680h:
	ld e,a			;5680
	defb 0ddh,067h ;ld ixh,a	;5681
	inc bc			;5683
	inc bc			;5684
	ld h,a			;5685
	exx			;5686
	rst 30h			;5687
	ld c,h			;5688
	and a			;5689
	add a,c			;568a
	ld l,l			;568b
	ld h,a			;568c
	daa			;568d
	inc b			;568e
	ld a,a			;568f
	ld h,a			;5690
	sbc a,c			;5691
	ld (de),a		;5692
	ld a,a			;5693
	ld a,(de)		;5694
	add a,(hl)		;5695
	add a,e			;5696
	ld l,l			;5697
	ld h,a			;5698
	ld l,(hl)		;5699
l569ah:
	rst 28h			;569a
	call z,sub_45f4h	;569b
	ld (hl),b		;569e
	ld a,a			;569f
	ex af,af'		;56a0
	ld (bc),a		;56a1
	defb 0edh ;next byte illegal after ed	;56a2
	ex af,af'		;56a3
sub_56a4h:
	inc bc			;56a4
	ex af,af'		;56a5
	in a,(004h)		;56a6
	ex af,af'		;56a8
	or (hl)			;56a9
	dec b			;56aa
	ex af,af'		;56ab
	add a,h			;56ac
	ld a,(hl)		;56ad
l56aeh:
	ld (0c3c8h),a		;56ae
	adc a,a			;56b1
	ld b,c			;56b2
	ld (0c3c7h),a		;56b3
	inc hl			;56b6
	ld l,(hl)		;56b7
	adc a,(hl)		;56b8
	ret			;56b9
	add a,(hl)		;56ba
	add a,c			;56bb
	dec d			;56bc
	nop			;56bd
	call c,02663h		;56be
l56c1h:
	cp 09ah			;56c1
	ld a,(bc)		;56c3
	xor e			;56c4
	ret nc			;56c5
	nop			;56c6
	ld (hl),b		;56c7
	rrca			;56c8
	ld l,e			;56c9
	jr z,l5652h		;56ca
	ld b,004h		;56cc
	ld a,(bc)		;56ce
	inc c			;56cf
	sbc a,d			;56d0
	ld sp,0a40fh		;56d1
	add a,e			;56d4
	jr l56ddh		;56d5
	ld b,078h		;56d7
	ld a,(bc)		;56d9
	rra			;56da
	sub c			;56db
	ld (hl),e		;56dc
l56ddh:
	inc h			;56dd
	dec l			;56de
	ex af,af'		;56df
	jr z,l569ah		;56e0
l56e2h:
	ld (hl),a		;56e2
	rrca			;56e3
	ld h,l			;56e4
	sub e			;56e5
	ld a,(de)		;56e6
	ld b,01eh		;56e7
	ld a,b			;56e9
	rrca			;56ea
	sub b			;56eb
	cp e			;56ec
	inc sp			;56ed
	ld a,(0a00ch)		;56ee
l56f1h:
	inc c			;56f1
	ret p			;56f2
	rrca			;56f3
	inc hl			;56f4
	out (02fh),a		;56f5
	ld b,010h		;56f7
	or h			;56f9
	ccf			;56fa
	ret nz			;56fb
	rst 10h			;56fc
	ex de,hl		;56fd
	ld bc,00031h		;56fe
	push af			;5701
l5702h:
	ld (de),a		;5702
	ld (0010ah),a		;5703
	rrca			;5706
	call po,0f20ch		;5707
	rrca			;570a
	inc de			;570b
	ld h,h			;570c
	or e			;570d
	inc e			;570e
	ld b,014h		;570f
	ld c,a			;5711
	ret z			;5712
	sra l			;5713
	sub h			;5715
	ld a,(00f16h)		;5716
	adc a,a			;5719
	ld a,b			;571a
	inc bc			;571b
	jp 0fb35h		;571c
	call m,00f18h		;571f
	ret z			;5722
	jr c,l575ah		;5723
	add a,a			;5725
	ld b,01ah		;5726
	rst 38h			;5728
	ld b,02fh		;5729
	add a,d			;572b
	and e			;572c
	adc a,a			;572d
	dec a			;572e
	ld de,0df75h		;572f
	inc hl			;5732
	ld e,0deh		;5733
	ld a,h			;5735
	ld c,a			;5736
	inc b			;5737
	cp (hl)			;5738
	jr c,l5774h		;5739
	ld b,020h		;573b
sub_573dh:
	call pe,01e2fh		;573d
	djnz $+101		;5740
	add hl,sp		;5742
	ld (bc),a		;5743
	ld d,b			;5744
	dec b			;5745
	ld e,b			;5746
sub_5747h:
	or h			;5747
	ld (bc),a		;5748
	jp m,005ddh		;5749
	ld de,00140h		;574c
	ld (bc),a		;574f
	ld a,(bc)		;5750
	ld h,b			;5751
	adc a,c			;5752
	ld bc,00e80h		;5753
	sub e			;5756
	ld b,h			;5757
	ld (hl),b		;5758
	ld a,a			;5759
l575ah:
	ld a,(de)		;575a
	ld d,b			;575b
	sub (hl)		;575c
	ld (bc),a		;575d
	jr c,$-78		;575e
	ld (02d16h),a		;5760
	or b			;5763
	ld h,h			;5764
	adc a,l			;5765
	rlca			;5766
	ld d,b			;5767
	jp m,l43b0h		;5768
	jr c,l56f1h		;576b
	ld c,03ch		;576d
	sbc a,c			;576f
	ld (bc),a		;5770
	ld e,d			;5771
	inc d			;5772
	ld (bc),a		;5773
l5774h:
	inc h			;5774
	jr z,l5779h		;5775
	ld b,(hl)		;5777
	ld (bc),a		;5778
l5779h:
	ld e,002h		;5779
	sub (hl)		;577b
	or b			;577c
	ld c,l			;577d
	inc a			;577e
	and b			;577f
	ld h,h			;5780
	ld (bc),a		;5781
	ld b,(hl)		;5782
	ld e,b			;5783
	ld (bc),a		;5784
	ld a,b			;5785
	ld h,h			;5786
	ex af,af'		;5787
	and h			;5788
	ld b,(hl)		;5789
	ld (bc),a		;578a
	adc a,d			;578b
	ld (bc),a		;578c
	and b			;578d
	ld d,d			;578e
	inc a			;578f
	ld bc,l4e02h		;5790
	ld (bc),a		;5793
	ld h,d			;5794
	ld d,b			;5795
	inc d			;5796
	ld h,l			;5797
	ld (bc),a		;5798
	add a,b			;5799
	add hl,hl		;579a
	adc a,h			;579b
	ld a,l			;579c
l579dh:
	or b			;579d
	and b			;579e
	ld bc,00940h		;579f
	ld b,h			;57a2
	ld bc,078b0h		;57a3
l57a6h:
	ex af,af'		;57a6
	adc a,c			;57a7
	ld (080c2h),a		;57a8
	ld (bc),a		;57ab
	ld c,c			;57ac
	add a,d			;57ad
	ld (bc),a		;57ae
	xor d			;57af
l57b0h:
	ld (bc),a		;57b0
	adc a,h			;57b1
	inc hl			;57b2
	inc sp			;57b3
l57b4h:
	sub (hl)		;57b4
sub_57b5h:
	dec b			;57b5
	dec (hl)		;57b6
	add a,d			;57b7
	ld c,(hl)		;57b8
	or h			;57b9
	ld (00156h),a		;57ba
	ld e,h			;57bd
	ld (bc),a		;57be
	dec b			;57bf
	ld l,l			;57c0
	sub e			;57c1
	ld (09847h),a		;57c2
	jr z,l57c8h		;57c5
	sbc a,b			;57c7
l57c8h:
	xor e			;57c8
l57c9h:
	ld c,0cfh		;57c9
	jr z,l5847h		;57cb
	ld (bc),a		;57cd
	add a,d			;57ce
	ld l,c			;57cf
	dec hl			;57d0
	or b			;57d1
	xor d			;57d2
	dec b			;57d3
	ld sp,hl		;57d4
	xor c			;57d5
	ld a,l			;57d6
	ld (bc),a		;57d7
	ld l,(hl)		;57d8
	ld c,d			;57d9
	inc a			;57da
	sub (hl)		;57db
	inc l			;57dc
	scf			;57dd
	ld e,a			;57de
	dec bc			;57df
	or h			;57e0
	sbc a,h			;57e1
	dec bc			;57e2
	ld (hl),e		;57e3
	ld d,000h		;57e4
	ld e,l			;57e6
	ld l,d			;57e7
	or e			;57e8
	ld b,a			;57e9
	sbc a,e			;57ea
	add a,d			;57eb
	ld (hl),e		;57ec
	ex af,af'		;57ed
	add a,d			;57ee
	ld de,l57f9h		;57ef
	nop			;57f2
	sub 00bh		;57f3
	inc c			;57f5
	ld e,d			;57f6
	push af			;57f7
	and b			;57f8
l57f9h:
	ld (0006eh),a		;57f9
	ld l,(hl)		;57fc
	and b			;57fd
	jr z,l5837h		;57fe
	ret nc			;5800
	ld b,h			;5801
	ld d,b			;5802
	ld b,b			;5803
	nop			;5804
	ld h,c			;5805
	inc hl			;5806
	jr nc,l5871h		;5807
	add hl,de		;5809
	jr nc,$-120		;580a
	rrca			;580c
	nop			;580d
	jr nc,l57b4h		;580e
	dec b			;5810
	jr nc,$+86		;5811
	ld b,c			;5813
	jr nc,l57b0h		;5814
	ld d,c			;5816
	ld d,l			;5817
	ex af,af'		;5818
	ld c,07ch		;5819
	ld bc,02559h		;581b
	dec l			;581e
sub_581fh:
	dec bc			;581f
	ld bc,00547h		;5820
l5823h:
	jp 00578h		;5823
	ld e,056h		;5826
	ld e,a			;5828
	ld d,d			;5829
	sbc a,h			;582a
	ld b,0a0h		;582b
	rst 38h			;582d
l582eh:
	jr nc,l582eh		;582e
	ld (bc),a		;5830
	dec h			;5831
	ld e,0c3h		;5832
	xor (hl)		;5834
	dec b			;5835
	sub d			;5836
l5837h:
	ld h,h			;5837
	in a,(0dah)		;5838
	ld c,e			;583a
	ld (bc),a		;583b
	ld (de),a		;583c
	scf			;583d
	jr nc,l57c9h		;583e
	ld (bc),a		;5840
	ld l,e			;5841
	ld (bc),a		;5842
	ld c,c			;5843
	ld d,a			;5844
	ld (bc),a		;5845
	ld a,a			;5846
l5847h:
	ld (bc),a		;5847
	cpl			;5848
	ld (bc),a		;5849
	daa			;584a
	ld c,l			;584b
	cpl			;584c
	add hl,sp		;584d
	inc d			;584e
	add a,075h		;584f
	sub d			;5851
	dec b			;5852
	cp e			;5853
	ld (bc),a		;5854
	sbc a,l			;5855
	ld (bc),a		;5856
	ld c,(hl)		;5857
	or c			;5858
	ld (bc),a		;5859
	sub e			;585a
	ex af,af'		;585b
	ld e,e			;585c
	rst 38h			;585d
	ex af,af'		;585e
	add hl,hl		;585f
	rst 20h			;5860
	ld de,005ceh		;5861
	add a,c			;5864
	ld e,d			;5865
	jr nz,l5823h		;5866
	sub (hl)		;5868
	jr nz,l58a4h		;5869
	dec b			;586b
	adc a,c			;586c
	ld b,(hl)		;586d
	dec b			;586e
	jr z,l5891h		;586f
l5871h:
	ld l,028h		;5871
	ld h,005h		;5873
	add hl,bc		;5875
	ld d,a			;5876
	ld a,(bc)		;5877
	ld e,h			;5878
	sub (hl)		;5879
	dec b			;587a
	inc h			;587b
	ld c,e			;587c
	ld c,d			;587d
	ld c,e			;587e
	inc hl			;587f
	inc hl			;5880
	add a,h			;5881
	add hl,hl		;5882
	jr z,l58a5h		;5883
	ld c,l			;5885
	dec b			;5886
	ld a,a			;5887
	adc a,d			;5888
	dec b			;5889
	ld l,e			;588a
	inc hl			;588b
	ld de,l4805h		;588c
	sbc a,l			;588f
	dec b			;5890
l5891h:
	ld d,a			;5891
	ld (bc),a		;5892
	ld b,e			;5893
	inc hl			;5894
	or e			;5895
	inc l			;5896
	ld a,(de)		;5897
	rla			;5898
	inc sp			;5899
	inc d			;589a
	ld (bc),a		;589b
	ex (sp),hl		;589c
	sbc a,023h		;589d
	ld (hl),a		;589f
	ld de,092b1h		;58a0
	adc a,l			;58a3
l58a4h:
	ld b,c			;58a4
l58a5h:
	ld c,l			;58a5
	inc h			;58a6
l58a7h:
	ld b,e			;58a7
	ld c,e			;58a8
	ld c,04bh		;58a9
	ld c,087h		;58ab
	sbc a,l			;58ad
	ld c,087h		;58ae
	ld h,0b8h		;58b0
	inc h			;58b2
	ld h,0e7h		;58b3
	ld de,0db26h		;58b5
l58b8h:
	ld b,a			;58b8
	jp c,l79bbh		;58b9
	ld c,l			;58bc
	ld h,h			;58bd
	cp e			;58be
	ld d,b			;58bf
	call z,0f9c1h		;58c0
	and h			;58c3
	and l			;58c4
	inc hl			;58c5
	pop hl			;58c6
	inc hl			;58c7
	rrca			;58c8
	cp b			;58c9
	inc d			;58ca
	ld (bc),a		;58cb
	ld c,(hl)		;58cc
	ld d,a			;58cd
	ld (bc),a		;58ce
	ld b,e			;58cf
	ex af,af'		;58d0
	out (061h),a		;58d1
	ld (bc),a		;58d3
	add hl,sp		;58d4
	rla			;58d5
	ret po			;58d6
	pop af			;58d7
	dec bc			;58d8
	ld c,c			;58d9
	ld bc,00108h		;58da
	ex af,af'		;58dd
	ld bc,0be08h		;58de
	dec bc			;58e1
	dec a			;58e2
	dec e			;58e3
	xor d			;58e4
sub_58e5h:
	ld l,e			;58e5
	ld (bc),a		;58e6
	and a			;58e7
	inc h			;58e8
	rst 8			;58e9
	sbc a,h			;58ea
	ld (bc),a		;58eb
	sub e			;58ec
	ld de,l4d00h+2		;58ed
	rlca			;58f0
	jr nc,l58b8h		;58f1
	dec b			;58f3
	dec bc			;58f4
	ld c,e			;58f5
	ld b,017h		;58f6
	inc hl			;58f8
	inc d			;58f9
	ld a,(de)		;58fa
	jr z,l590bh		;58fb
	sub d			;58fd
	cp b			;58fe
	add hl,hl		;58ff
l5900h:
	adc a,d			;5900
	inc d			;5901
	ld l,e			;5902
	ld (bc),a		;5903
	ld c,002h		;5904
	ld c,d			;5906
	and a			;5907
	rst 8			;5908
	ld (hl),e		;5909
	ld (bc),a		;590a
l590bh:
	nop			;590b
	rst 38h			;590c
l590dh:
	rst 38h			;590d
	nop			;590e
	ld h,e			;590f
	ld b,c			;5910
	nop			;5911
	nop			;5912
	nop			;5913
	jp l4c93h		;5914
l5917h:
	inc b			;5917
	ex af,af'		;5918
	ex af,af'		;5919
	inc b			;591a
	inc b			;591b
	ld bc,00303h		;591c
	rlca			;591f
	nop			;5920
	jp m,00001h		;5921
	nop			;5924
	inc c			;5925
	ex af,af'		;5926
	inc c			;5927
	nop			;5928
	nop			;5929
	ld (bc),a		;592a
	ret nz			;592b
	ret nz			;592c
	ret z			;592d
	jp nz,03cf8h		;592e
	rlca			;5931
	jr nc,$+98		;5932
	nop			;5934
	inc bc			;5935
	ld h,b			;5936
	jr l5959h		;5937
	inc e			;5939
	ld c,015h		;593a
	ld e,020h		;593c
	rra			;593e
	rla			;593f
	ld b,003h		;5940
	rrca			;5942
	ld c,01ch		;5943
	jr l5966h		;5945
	ret nz			;5947
l5948h:
	nop			;5948
	ret po			;5949
	ret p			;594a
	call p,00fdeh		;594b
	scf			;594e
	rst 38h			;594f
	ret m			;5950
	ld a,(bc)		;5951
	ld b,b			;5952
	sub b			;5953
	dec b			;5954
	nop			;5955
	defb 0fdh,001h,04eh ;illegal sequence	;5956
l5959h:
	rlca			;5959
	inc c			;595a
	djnz l597ch		;595b
	ld h,b			;595d
	ccf			;595e
	jp p,03ffch		;595f
	cp 01eh			;5962
	cp (hl)			;5964
	ret nz			;5965
l5966h:
	nop			;5966
	ld b,b			;5967
	ld (bc),a		;5968
	djnz l59aah		;5969
	rra			;596b
l596ch:
	ld e,h			;596c
	rlca			;596d
	ld bc,0381ch		;596e
	jr nc,l5973h		;5971
l5973h:
	nop			;5973
	ld (0f6d8h),hl		;5974
	ld (iy+078h),e		;5977
	inc b			;597a
	ccf			;597b
l597ch:
	ld b,c			;597c
	dec sp			;597d
	ld bc,000f2h		;597e
	ld (bc),a		;5981
	rrca			;5982
	halt			;5983
	ccf			;5984
	call pe,0e251h		;5985
	ld h,c			;5988
	add a,b			;5989
	ld (hl),d		;598a
	ccf			;598b
	ld (hl),b		;598c
	ret nc			;598d
	ccf			;598e
	jr $+65			;598f
	jr c,l59a7h		;5991
	ld e,00fh		;5993
l5995h:
	rlca			;5995
	inc c			;5996
	ccf			;5997
	ld bc,07c40h		;5998
	ld a,(hl)		;599b
	rra			;599c
	add a,b			;599d
	ld d,008h		;599e
	ld a,0ffh		;59a0
	nop			;59a2
l59a3h:
	call po,05a00h		;59a3
	rra			;59a6
l59a7h:
	nop			;59a7
	rst 38h			;59a8
	inc bc			;59a9
l59aah:
	add hl,bc		;59aa
	ld a,h			;59ab
	add hl,bc		;59ac
l59adh:
	inc bc			;59ad
	rst 38h			;59ae
	rra			;59af
	or b			;59b0
	ld h,h			;59b1
	jr nc,l5a04h		;59b2
	cp b			;59b4
	nop			;59b5
	call nc,0d8dah		;59b6
	djnz l59a3h		;59b9
l59bbh:
	djnz l5995h		;59bb
	jp c,0d41ch		;59bd
	cp b			;59c0
	ld d,b			;59c1
	ld c,e			;59c2
	daa			;59c3
	inc bc			;59c4
	jr nz,l5a03h		;59c5
	dec e			;59c7
	ld a,d			;59c8
	nop			;59c9
	ret nc			;59ca
	nop			;59cb
	ret pe			;59cc
	ld d,0e8h		;59cd
	jr l59bbh		;59cf
	call nc,0d0e8h		;59d1
	jp pe,0000fh		;59d4
	inc bc			;59d7
	rlca			;59d8
	ld a,a			;59d9
	rst 38h			;59da
	ld a,a			;59db
	rrca			;59dc
	inc bc			;59dd
	ld c,0c0h		;59de
	and b			;59e0
	xor b			;59e1
	daa			;59e2
	call nc,01ed6h		;59e3
	ret po			;59e6
	ld c,07ch		;59e7
	ld h,c			;59e9
	inc sp			;59ea
	inc a			;59eb
	ld b,b			;59ec
l59edh:
	rrca			;59ed
	and (hl)		;59ee
	ld d,b			;59ef
	ld e,033h		;59f0
	jr l5a37h		;59f2
	ld e,l			;59f4
	sbc a,(hl)		;59f5
	nop			;59f6
	add hl,de		;59f7
	inc a			;59f8
	nop			;59f9
	dec c			;59fa
	ex (sp),hl		;59fb
	rrca			;59fc
	ret pe			;59fd
	ld bc,000e3h		;59fe
	rlca			;5a01
	push bc			;5a02
l5a03h:
	add a,b			;5a03
l5a04h:
	nop			;5a04
	rst 0			;5a05
l5a06h:
	rlca			;5a06
	adc a,a			;5a07
	ccf			;5a08
	rst 18h			;5a09
	nop			;5a0a
	ret m			;5a0b
	jr nz,l5a3eh		;5a0c
	inc e			;5a0e
	dec b			;5a0f
	dec d			;5a10
	dec (hl)		;5a11
	ld (de),a		;5a12
	dec d			;5a13
	dec b			;5a14
	inc e			;5a15
	cp e			;5a16
	call c,0a0dfh		;5a17
	ret p			;5a1a
	call m,sub_7bf0h	;5a1b
	ret nz			;5a1e
	dec h			;5a1f
	nop			;5a20
	ld (bc),a		;5a21
	ld e,c			;5a22
	sub e			;5a23
	or (hl)			;5a24
	rst 8			;5a25
	ld h,c			;5a26
	ex af,af'		;5a27
	pop af			;5a28
	djnz l5a39h		;5a29
	ld b,b			;5a2b
	ld a,(0ec57h)		;5a2c
	ld a,a			;5a2f
	jp 0f060h		;5a30
	ret p			;5a33
	ld h,b			;5a34
	ld e,(hl)		;5a35
	rst 20h			;5a36
l5a37h:
	and d			;5a37
l5a38h:
	sub (hl)		;5a38
l5a39h:
	sub l			;5a39
	add a,(hl)		;5a3a
	jr nc,l5a3dh		;5a3b
l5a3dh:
	ld c,l			;5a3d
l5a3eh:
	and (hl)		;5a3e
	and d			;5a3f
	inc l			;5a40
	jp 0385ch		;5a41
l5a44h:
	jr l5a52h		;5a44
	nop			;5a46
	ld c,018h		;5a47
	jr c,l5aaeh		;5a49
	ld b,b			;5a4b
l5a4ch:
	inc bc			;5a4c
	inc c			;5a4d
	inc de			;5a4e
	rla			;5a4f
	ld l,02ch		;5a50
l5a52h:
	rlca			;5a52
	inc l			;5a53
	ld l,017h		;5a54
	inc de			;5a56
	inc c			;5a57
	rra			;5a58
	jr nz,$+50		;5a59
	ret z			;5a5b
	ret pe			;5a5c
	ld (hl),h		;5a5d
	inc (hl)		;5a5e
	ld b,034h		;5a5f
	ld (hl),h		;5a61
	ret pe			;5a62
	ret z			;5a63
	jr nc,$+33		;5a64
	ret			;5a66
	ld a,01eh		;5a67
	push de			;5a69
	sub h			;5a6a
	ld (hl),b		;5a6b
	and l			;5a6c
	ld b,070h		;5a6d
	jr nc,l5aa9h		;5a6f
	ld e,040h		;5a71
	ret nz			;5a73
	ld a,078h		;5a74
	inc e			;5a76
	inc c			;5a77
	ld c,006h		;5a78
	ld c,h			;5a7a
	ld b,0f3h		;5a7b
	inc e			;5a7d
	ld l,h			;5a7e
	ld a,b			;5a7f
	ld b,b			;5a80
	ld a,011h		;5a81
l5a83h:
	nop			;5a83
	ld h,028h		;5a84
	ld c,b			;5a86
	ld d,b			;5a87
	ld d,b			;5a88
	ld c,b			;5a89
	jr z,$+40		;5a8a
	ld l,h			;5a8c
l5a8dh:
	ld de,03e40h		;5a8d
	adc a,b			;5a90
	nop			;5a91
	ld h,h			;5a92
	inc d			;5a93
	ld (de),a		;5a94
	ld a,(bc)		;5a95
	ld a,(bc)		;5a96
	ld (de),a		;5a97
	inc d			;5a98
	ld h,h			;5a99
l5a9ah:
	ld h,l			;5a9a
	adc a,b			;5a9b
	ld b,b			;5a9c
	push bc			;5a9d
	dec d			;5a9e
	sbc a,h			;5a9f
	inc c			;5aa0
	jr nz,l5b03h		;5aa1
	ret nz			;5aa3
	nop			;5aa4
	nop			;5aa5
	ld h,b			;5aa6
	jr nz,l5aa9h		;5aa7
l5aa9h:
	inc c			;5aa9
	rlca			;5aaa
	inc bc			;5aab
	ret nz			;5aac
	ret po			;5aad
l5aaeh:
	ld d,b			;5aae
l5aafh:
	jr nc,l5a83h		;5aaf
	ld b,061h		;5ab1
	inc bc			;5ab3
	nop			;5ab4
	ld b,004h		;5ab5
	ld sp,hl		;5ab7
	djnz l5a9ah		;5ab8
	ret nz			;5aba
	inc bc			;5abb
	ld b,(hl)		;5abc
	inc b			;5abd
	jp z,0cacah		;5abe
	xor c			;5ac1
	ld b,b			;5ac2
	call pe,01f6ah		;5ac3
	dec h			;5ac6
	ex de,hl		;5ac7
	ld (l55eah),a		;5ac8
	ld (bc),a		;5acb
	ex af,af'		;5acc
l5acdh:
	adc a,c			;5acd
	jr nz,$-121		;5ace
	ld (hl),a		;5ad0
	defb 0fdh,000h,018h ;illegal sequence	;5ad1
	ld c,b			;5ad4
	dec c			;5ad5
	ld e,000h		;5ad6
	rla			;5ad8
	ld a,(bc)		;5ad9
	dec de			;5ada
	ld a,(de)		;5adb
	dec bc			;5adc
	ld d,01fh		;5add
	inc c			;5adf
	sbc a,l			;5ae0
	ret nz			;5ae1
	adc a,c			;5ae2
	ld l,b			;5ae3
	or b			;5ae4
	ld a,b			;5ae5
	jp m,0d880h		;5ae6
l5ae9h:
	ld e,b			;5ae9
	ret nc			;5aea
	ld l,b			;5aeb
	ret m			;5aec
	jr nc,l5a8dh		;5aed
	ret nz			;5aef
	jr c,l5b11h		;5af0
	add hl,sp		;5af2
	dec sp			;5af3
	ld a,(0ce1fh)		;5af4
	jr nc,$+33		;5af7
	ld c,0dch		;5af9
	ld e,h			;5afb
	rra			;5afc
	ld (hl),a		;5afd
	ld b,c			;5afe
sub_5affh:
	rra			;5aff
	ld c,(hl)		;5b00
	ld a,e			;5b01
	ld a,d			;5b02
l5b03h:
	rra			;5b03
	jr c,l5b57h		;5b04
l5b06h:
	out (01fh),a		;5b06
	sbc a,05eh		;5b08
	rra			;5b0a
	adc a,(hl)		;5b0b
	ld h,b			;5b0c
	ld a,03fh		;5b0d
	ret po			;5b0f
	ld (bc),a		;5b10
l5b11h:
	inc h			;5b11
	dec sp			;5b12
	add hl,sp		;5b13
	ld (01001h),hl		;5b14
	jp nc,l4027h		;5b17
	ld b,0b7h		;5b1a
	xor b			;5b1c
	ld d,090h		;5b1d
	add a,b			;5b1f
	ld b,l			;5b20
	ex af,af'		;5b21
	jp p,l5587h		;5b22
	call z,005b2h		;5b25
	dec bc			;5b28
	add hl,bc		;5b29
	ld (bc),a		;5b2a
	inc bc			;5b2b
	jr l5b06h		;5b2c
	add a,l			;5b2e
	ld (00138h),a		;5b2f
	cp l			;5b32
	ld (hl),h		;5b33
	add a,b			;5b34
	sub b			;5b35
	xor e			;5b36
	ld e,014h		;5b37
	ld c,030h		;5b39
	ld c,b			;5b3b
	jr c,$-94		;5b3c
	rra			;5b3e
	ld l,h			;5b3f
	or 001h			;5b40
	dec bc			;5b42
	add hl,bc		;5b43
	add hl,bc		;5b44
	jr c,l5b73h		;5b45
	ld (de),a		;5b47
	djnz l5ae9h		;5b48
	ld (hl),a		;5b4a
	ccf			;5b4b
	add a,b			;5b4c
	sub b			;5b4d
	ld a,(de)		;5b4e
	inc (hl)		;5b4f
	rla			;5b50
	ld c,b			;5b51
	ex af,af'		;5b52
	sub b			;5b53
	ld l,d			;5b54
	ccf			;5b55
	add a,b			;5b56
l5b57h:
	ld b,b			;5b57
	jp nz,03c01h		;5b58
	ex af,af'		;5b5b
	dec b			;5b5c
	ccf			;5b5d
	ld b,b			;5b5e
	jr l5b62h		;5b5f
	ld b,d			;5b61
l5b62h:
	add a,b			;5b62
	djnz l5b85h		;5b63
	halt			;5b65
	add a,b			;5b66
	ccf			;5b67
	ld (bc),a		;5b68
	dec b			;5b69
	ld d,c			;5b6a
l5b6bh:
	djnz l5b99h		;5b6b
	ld (0c908h),a		;5b6d
	defb 0ddh,03fh,082h ;illegal sequence	;5b70
l5b73h:
	ld b,b			;5b73
	adc a,b			;5b74
	ex af,af'		;5b75
	inc (hl)		;5b76
	ld c,c			;5b77
	defb 0ddh,0f8h,0e4h ;illegal sequence	;5b78
	ccf			;5b7b
	ret nz			;5b7c
	ld a,b			;5b7d
	ld b,h			;5b7e
	ex af,af'		;5b7f
sub_5b80h:
	sbc a,a			;5b80
	inc b			;5b81
	ld a,b			;5b82
	add hl,bc		;5b83
	ccf			;5b84
l5b85h:
	ld (bc),a		;5b85
	ex af,af'		;5b86
	jr l5b99h		;5b87
	ld b,b			;5b89
	add a,(hl)		;5b8a
	sbc a,h			;5b8b
	ld l,l			;5b8c
	ccf			;5b8d
	ld (bc),a		;5b8e
	rrca			;5b8f
	add hl,de		;5b90
	nop			;5b91
	xor c			;5b92
l5b93h:
	xor c			;5b93
	ld a,a			;5b94
	ld b,090h		;5b95
	add hl,bc		;5b97
	ld a,a			;5b98
l5b99h:
	rlca			;5b99
	nop			;5b9a
	add hl,de		;5b9b
	rrca			;5b9c
	nop			;5b9d
	ld b,b			;5b9e
	rst 38h			;5b9f
	cp 0feh			;5ba0
	and h			;5ba2
	rst 38h			;5ba3
	dec b			;5ba4
	ld h,l			;5ba5
	add hl,bc		;5ba6
	dec b			;5ba7
	dec b			;5ba8
	rst 38h			;5ba9
	and h			;5baa
	add hl,bc		;5bab
	rst 38h			;5bac
	or h			;5bad
	jr nc,$+8		;5bae
	ld d,056h		;5bb0
	ld e,h			;5bb2
	ld d,(hl)		;5bb3
	add a,b			;5bb4
	djnz l5b6bh		;5bb5
	defb 0ddh,091h,007h ;illegal sequence	;5bb7
	ld d,0e2h		;5bba
	inc de			;5bbc
	ccf			;5bbd
	ld a,a			;5bbe
	add hl,hl		;5bbf
	ld e,b			;5bc0
	rst 38h			;5bc1
	ld bc,0f090h		;5bc2
	ret po			;5bc5
	ld b,092h		;5bc6
	inc sp			;5bc8
	ccf			;5bc9
	cp a			;5bca
	ld a,a			;5bcb
	add a,b			;5bcc
	adc a,l			;5bcd
	and c			;5bce
	ld (bc),a		;5bcf
	ld a,07fh		;5bd0
	inc hl			;5bd2
	or 07fh			;5bd3
	ld a,0dfh		;5bd5
	ld a,(0ddcdh)		;5bd7
	inc c			;5bda
	ld a,a			;5bdb
	jr nc,l5c0ah		;5bdc
	ld (hl),a		;5bde
	ld h,c			;5bdf
	call pe,03a1fh		;5be0
	ld d,c			;5be3
	rrca			;5be4
	call c,05289h		;5be5
	ld a,(0101fh)		;5be8
	jr nc,l5c07h		;5beb
	ld c,a			;5bed
	ld e,b			;5bee
	ld d,016h		;5bef
	jr nc,l5b93h		;5bf1
	cp c			;5bf3
l5bf4h:
	ret c			;5bf4
	dec c			;5bf5
	ld a,045h		;5bf6
	ld b,022h		;5bf8
	pop af			;5bfa
	ld c,h			;5bfb
	rst 38h			;5bfc
	ld a,(hl)		;5bfd
l5bfeh:
	add a,c			;5bfe
	inc (hl)		;5bff
	djnz l5c18h		;5c00
l5c02h:
	or b			;5c02
	ld h,a			;5c03
	add a,b			;5c04
	or c			;5c05
	ld (bc),a		;5c06
l5c07h:
	and b			;5c07
	jr nz,l5c31h		;5c08
l5c0ah:
	or b			;5c0a
	or h			;5c0b
	and c			;5c0c
	sbc a,c			;5c0d
	nop			;5c0e
	inc bc			;5c0f
	ld a,(bc)		;5c10
	add a,h			;5c11
	add hl,bc		;5c12
	or b			;5c13
	adc a,h			;5c14
	jp l7271h		;5c15
l5c18h:
	ld e,01fh		;5c18
	and b			;5c1a
	ld h,0b4h		;5c1b
	ld b,(hl)		;5c1d
	jp l5606h		;5c1e
	ret nc			;5c21
	ld b,b			;5c22
	add a,e			;5c23
sub_5c24h:
	inc b			;5c24
	rra			;5c25
	call nc,03fffh		;5c26
	nop			;5c29
	ld a,b			;5c2a
	rst 0			;5c2b
	ex af,af'		;5c2c
	add a,l			;5c2d
	jr z,$-55		;5c2e
	ld a,b			;5c30
l5c31h:
	ccf			;5c31
	xor l			;5c32
	cp 015h			;5c33
	call nc,030b7h		;5c35
	jp po,07001h		;5c38
	add a,b			;5c3b
	sbc a,b			;5c3c
	add a,b			;5c3d
	ld (hl),b		;5c3e
	ret nz			;5c3f
	cp (hl)			;5c40
	ld d,c			;5c41
	or a			;5c42
	call nc,sub_5affh	;5c43
	inc sp			;5c46
	nop			;5c47
	ld c,b			;5c48
	add a,b			;5c49
	inc hl			;5c4a
	ld h,b			;5c4b
	inc bc			;5c4c
	add a,b			;5c4d
	ld c,b			;5c4e
	inc sp			;5c4f
	ld l,b			;5c50
	inc c			;5c51
	rra			;5c52
	inc hl			;5c53
	add a,b			;5c54
	ld h,b			;5c55
	ld e,h			;5c56
	ret po			;5c57
	adc a,e			;5c58
	ld h,0abh		;5c59
	ld h,b			;5c5b
	dec b			;5c5c
	ld d,01fh		;5c5d
	nop			;5c5f
	ld b,02dh		;5c60
	ccf			;5c62
	rst 38h			;5c63
l5c64h:
	ld c,h			;5c64
l5c65h:
	pop af			;5c65
	add hl,de		;5c66
	ld (03c45h),hl		;5c67
	and b			;5c6a
	call nc,0f77dh		;5c6b
	djnz l5ce0h		;5c6e
	ret po			;5c70
	ld (hl),b		;5c71
	rlca			;5c72
	daa			;5c73
	or h			;5c74
	or b			;5c75
	call po,0337dh		;5c76
	ld b,e			;5c79
	ld (bc),a		;5c7a
	sub a			;5c7b
	adc a,h			;5c7c
	or b			;5c7d
	add hl,bc		;5c7e
	add a,b			;5c7f
	ld (0d9fdh),a		;5c80
	ret nz			;5c83
	ld a,l			;5c84
	jp nc,0d010h		;5c85
	ld h,(hl)		;5c88
	adc a,(hl)		;5c89
	dec de			;5c8a
	ld d,e			;5c8b
	inc b			;5c8c
	rra			;5c8d
	ld h,b			;5c8e
	nop			;5c8f
	jr c,l5cc0h		;5c90
	inc de			;5c92
	rra			;5c93
	ld e,b			;5c94
	inc bc			;5c95
	sbc a,c			;5c96
	dec hl			;5c97
	ld (hl),052h		;5c98
	ld h,h			;5c9a
	sbc a,a			;5c9b
	ret nc			;5c9c
	rrca			;5c9d
	ld (hl),b		;5c9e
	call z,03814h		;5c9f
	sbc a,b			;5ca2
	and e			;5ca3
	add a,b			;5ca4
	jr nc,l5cbbh		;5ca5
	sub b			;5ca7
	call pe,0a158h		;5ca8
	ret nz			;5cab
	jr z,l5cc0h		;5cac
	dec l			;5cae
	ld d,h			;5caf
	ld (de),a		;5cb0
	inc a			;5cb1
	ret nz			;5cb2
	ld c,06dh		;5cb3
	ld e,d			;5cb5
	inc h			;5cb6
	rra			;5cb7
	ld bc,03440h		;5cb8
l5cbbh:
	call pe,sub_6048h	;5cbb
	ld a,a			;5cbe
	inc bc			;5cbf
l5cc0h:
	ld d,b			;5cc0
	ld l,b			;5cc1
	sub h			;5cc2
	ld h,h			;5cc3
	jr l5cf3h		;5cc4
	ld bc,0db28h		;5cc6
	and h			;5cc9
	ld e,(hl)		;5cca
	dec hl			;5ccb
	ccf			;5ccc
	and c			;5ccd
	ld e,(hl)		;5cce
	and h			;5ccf
	exx			;5cd0
	jr z,l5d4bh		;5cd1
	ld bc,09cfch		;5cd3
	ld h,(hl)		;5cd6
	adc a,d			;5cd7
	sbc a,d			;5cd8
	and h			;5cd9
	ccf			;5cda
	sub h			;5cdb
l5cdch:
	pop de			;5cdc
	inc b			;5cdd
	adc a,d			;5cde
	ld h,(hl)		;5cdf
l5ce0h:
	sbc a,h			;5ce0
	call m,sub_581fh	;5ce1
	dec c			;5ce4
	and a			;5ce5
	in a,(065h)		;5ce6
	ld (00c3fh),a		;5ce8
	ld h,l			;5ceb
	in a,(0a5h)		;5cec
	ld e,b			;5cee
	rra			;5cef
	ld b,0e2h		;5cf0
	sbc a,d			;5cf2
l5cf3h:
	halt			;5cf3
	ld h,0dch		;5cf4
	ccf			;5cf6
	ld bc,0ae5ch		;5cf7
	halt			;5cfa
	sbc a,d			;5cfb
	jp po,0f8fch		;5cfc
	ld b,b			;5cff
	ld d,(hl)		;5d00
	ld e,a			;5d01
	ld e,e			;5d02
	jr nc,l5d72h		;5d03
	ld (hl),03fh		;5d05
l5d07h:
	ld l,h			;5d07
	in a,(000h)		;5d08
	or a			;5d0a
	or a			;5d0b
	xor h			;5d0c
	ld e,b			;5d0d
	jr c,l5cdch		;5d0e
	cp (hl)			;5d10
	or (hl)			;5d11
	jr l5d8ah		;5d12
	ld l,(hl)		;5d14
	call c,sub_4c3fh	;5d15
	inc b			;5d18
	or (hl)			;5d19
	jp c,l6adah		;5d1a
	inc (hl)		;5d1d
	sbc a,l			;5d1e
	ld b,b			;5d1f
	inc a			;5d20
	inc l			;5d21
	scf			;5d22
	dec sp			;5d23
	add hl,de		;5d24
	add a,b			;5d25
	ld e,008h		;5d26
	inc sp			;5d28
	ld (hl),a		;5d29
	ld l,a			;5d2a
	ld e,b			;5d2b
	ld a,b			;5d2c
	ld b,b			;5d2d
	ld (hl),b		;5d2e
	rrca			;5d2f
	ld a,h			;5d30
	call m,0bcdch		;5d31
	ld a,b			;5d34
	ld e,h			;5d35
	ld b,b			;5d36
l5d37h:
	cp d			;5d37
	cp b			;5d38
l5d39h:
	dec b			;5d39
	ld e,h			;5d3a
	ld l,h			;5d3b
	inc (hl)		;5d3c
	inc a			;5d3d
	inc e			;5d3e
	jp nc,01ec0h		;5d3f
	scf			;5d42
	ld l,e			;5d43
l5d44h:
	ld l,h			;5d44
	ld l,(hl)		;5d45
	ret nz			;5d46
	ccf			;5d47
	ld l,b			;5d48
	in a,(0d7h)		;5d49
l5d4bh:
	ld l,a			;5d4b
	jr l5d86h		;5d4c
	djnz l5d50h		;5d4e
l5d50h:
	add a,b			;5d50
	ld b,0b0h		;5d51
	ld e,b			;5d53
	ret c			;5d54
	ret c			;5d55
	ccf			;5d56
	ld (bc),a		;5d57
	call pe,0ac6ch		;5d58
	ret c			;5d5b
	ld (hl),b		;5d5c
	defb 0edh ;next byte illegal after ed	;5d5d
	call p,03f1ch		;5d5e
l5d61h:
	sub b			;5d61
	ld b,b			;5d62
	ex af,af'		;5d63
	ccf			;5d64
l5d65h:
	scf			;5d65
	ld l,a			;5d66
	ld a,a			;5d67
	ret z			;5d68
	ld e,0beh		;5d69
	ret			;5d6b
	sbc a,08ch		;5d6c
	or b			;5d6e
	ld (hl),b		;5d6f
	ccf			;5d70
l5d71h:
	inc e			;5d71
l5d72h:
	ld a,b			;5d72
	cp b			;5d73
	ret m			;5d74
	ld e,062h		;5d75
	xor (hl)		;5d77
	ld (de),a		;5d78
	add hl,bc		;5d79
	rlca			;5d7a
	and (hl)		;5d7b
	ld d,l			;5d7c
	inc b			;5d7d
	or b			;5d7e
	call c,0f000h		;5d7f
	dec b			;5d82
	sbc a,b			;5d83
	ret nc			;5d84
	ret po			;5d85
l5d86h:
	and b			;5d86
	jr nc,l5d4bh		;5d87
	and h			;5d89
l5d8ah:
	rst 18h			;5d8a
	jp p,03109h		;5d8b
	ld b,001h		;5d8e
	dec b			;5d90
	rrca			;5d91
	sbc a,a			;5d92
	call 0bac4h		;5d93
	sub b			;5d96
	ld c,b			;5d97
	ld l,b			;5d98
	cp e			;5d99
	ret po			;5d9a
	jr $-46			;5d9b
	and b			;5d9d
	ld b,b			;5d9e
	add a,e			;5d9f
	pop hl			;5da0
	add a,l			;5da1
	ld (0fd0dh),a		;5da2
	jp c,0e296h		;5da5
	ld (0068fh),a		;5da8
	ld b,b			;5dab
	ld a,b			;5dac
	ld l,b			;5dad
	adc a,b			;5dae
	ret nz			;5daf
	cp (hl)			;5db0
	ret m			;5db1
	ld (hl),b		;5db2
	and c			;5db3
	add hl,bc		;5db4
	ld sp,0060bh		;5db5
	xor c			;5db8
	dec (hl)		;5db9
	exx			;5dba
	or h			;5dbb
	and b			;5dbc
	cp h			;5dbd
	ld b,h			;5dbe
	ld c,b			;5dbf
	ld e,b			;5dc0
	rst 20h			;5dc1
	in a,(03fh)		;5dc2
	defb 0fdh,0d4h,0c3h ;illegal sequence	;5dc4
	sbc a,c			;5dc7
	rst 28h			;5dc8
	ld h,(hl)		;5dc9
	xor h			;5dca
	ret m			;5dcb
	ld e,(hl)		;5dcc
	ld (hl),d		;5dcd
	inc hl			;5dce
	ret nz			;5dcf
	inc e			;5dd0
	or b			;5dd1
	scf			;5dd2
	inc d			;5dd3
	rra			;5dd4
	ld b,l			;5dd5
	or e			;5dd6
	sbc a,c			;5dd7
	ld (hl),l		;5dd8
	inc e			;5dd9
	add a,h			;5dda
	inc d			;5ddb
	add a,c			;5ddc
	ld e,(hl)		;5ddd
	dec e			;5dde
	jr z,l5d61h		;5ddf
	sbc a,e			;5de1
	out (023h),a		;5de2
	inc d			;5de4
	sbc a,h			;5de5
	cp c			;5de6
	ld l,c			;5de7
	ld (bc),a		;5de8
	ld sp,hl		;5de9
	ld e,l			;5dea
	ld a,e			;5deb
	ccf			;5dec
l5dedh:
	add a,(hl)		;5ded
	ld b,h			;5dee
	call z,sub_70a4h	;5def
	ret p			;5df2
	di			;5df3
	push de			;5df4
	ret pe			;5df5
	djnz $-6		;5df6
	ccf			;5df8
	push af			;5df9
	sbc a,(hl)		;5dfa
	dec (hl)		;5dfb
	add a,c			;5dfc
	ld b,b			;5dfd
	dec l			;5dfe
	dec hl			;5dff
	dec hl			;5e00
	dec l			;5e01
	dec l			;5e02
	inc l			;5e03
	ld e,d			;5e04
	cpl			;5e05
	inc bc			;5e06
l5e07h:
	ld b,020h		;5e07
	sub 000h		;5e09
	dec hl			;5e0b
	ld c,0e7h		;5e0c
	dec d			;5e0e
	dec c			;5e0f
	jr c,l5e12h		;5e10
l5e12h:
	cpl			;5e12
	in a,(01ah)		;5e13
	inc de			;5e15
l5e16h:
	ld c,0b6h		;5e16
	dec hl			;5e18
	inc c			;5e19
l5e1ah:
	dec bc			;5e1a
	dec l			;5e1b
	cpl			;5e1c
	inc l			;5e1d
	inc de			;5e1e
	dec c			;5e1f
	adc a,(hl)		;5e20
	ccf			;5e21
	ld e,(hl)		;5e22
	ld hl,(0af3fh)		;5e23
	ld hl,(l473fh)		;5e26
	ld hl,(00f3fh)		;5e29
	ld hl,(l473fh)		;5e2c
	ld hl,(l763fh)		;5e2f
	inc e			;5e32
	nop			;5e33
	ld h,a			;5e34
	inc b			;5e35
	rlca			;5e36
	inc sp			;5e37
	sub b			;5e38
	xor (hl)		;5e39
	dec hl			;5e3a
	xor l			;5e3b
	inc sp			;5e3c
	ld c,h			;5e3d
	or b			;5e3e
	add a,h			;5e3f
	dec hl			;5e40
	xor l			;5e41
	halt			;5e42
	ld l,06dh		;5e43
	ld l,00fh		;5e45
	ld d,0bfh		;5e47
	ld e,029h		;5e49
	rrca			;5e4b
	sub (hl)		;5e4c
	inc e			;5e4d
	rrca			;5e4e
	add hl,bc		;5e4f
	and 046h		;5e50
	nop			;5e52
	dec d			;5e53
	add hl,bc		;5e54
	dec hl			;5e55
	ld bc,0a16eh		;5e56
	dec d			;5e59
	inc (hl)		;5e5a
	dec (hl)		;5e5b
	ld b,c			;5e5c
	nop			;5e5d
	dec bc			;5e5e
	dec bc			;5e5f
	ld a,(bc)		;5e60
	ld c,d			;5e61
	ld bc,00c0ch		;5e62
	dec bc			;5e65
	dec l			;5e66
	dec bc			;5e67
	or h			;5e68
	ld (de),a		;5e69
	rra			;5e6a
	dec hl			;5e6b
	add hl,hl		;5e6c
	adc a,l			;5e6d
	and l			;5e6e
	out (01fh),a		;5e6f
	jr nz,l5ea1h		;5e71
	rra			;5e73
	ld (hl),a		;5e74
	jr nz,$-30		;5e75
	add a,a			;5e77
	inc l			;5e78
	rra			;5e79
	and d			;5e7a
	dec hl			;5e7b
	add hl,bc		;5e7c
	call p,02b1fh		;5e7d
	ld a,(bc)		;5e80
	inc c			;5e81
	ld de,l6f0bh		;5e82
	and e			;5e85
	ld c,00bh		;5e86
	ld l,a			;5e88
	xor a			;5e89
	nop			;5e8a
	inc sp			;5e8b
	dec bc			;5e8c
	ld c,005h		;5e8d
	rst 0			;5e8f
	nop			;5e90
	ex (sp),hl		;5e91
	rst 10h			;5e92
	add hl,de		;5e93
	ld l,000h		;5e94
	or e			;5e96
	ld l,e			;5e97
	nop			;5e98
	in a,(0bfh)		;5e99
	ccf			;5e9b
	add a,e			;5e9c
	defb 0fdh,000h,0b7h ;illegal sequence	;5e9d
	add hl,hl		;5ea0
l5ea1h:
	nop			;5ea1
	call c,0fb20h		;5ea2
	nop			;5ea5
	or h			;5ea6
	sbc a,h			;5ea7
	pop hl			;5ea8
	nop			;5ea9
	rrca			;5eaa
	nop			;5eab
	ld (hl),d		;5eac
	ex af,af'		;5ead
	nop			;5eae
	ld (hl),d		;5eaf
	ld b,(hl)		;5eb0
	nop			;5eb1
	ld c,(hl)		;5eb2
	ex de,hl		;5eb3
	rlca			;5eb4
	adc a,c			;5eb5
	rst 30h			;5eb6
	nop			;5eb7
	rla			;5eb8
	ld a,(bc)		;5eb9
	nop			;5eba
	ex af,af'		;5ebb
	cpl			;5ebc
	ld b,(hl)		;5ebd
	rra			;5ebe
	ld h,a			;5ebf
	ld b,000h		;5ec0
	or e			;5ec2
	ld b,l			;5ec3
	nop			;5ec4
	in a,(016h)		;5ec5
	and a			;5ec7
	rrca			;5ec8
	rra			;5ec9
	rst 8			;5eca
	push bc			;5ecb
	inc e			;5ecc
	xor b			;5ecd
	cpl			;5ece
	sbc a,h			;5ecf
	ld b,a			;5ed0
	cpl			;5ed1
	jp nc,0dd87h		;5ed2
	rst 28h			;5ed5
	sub d			;5ed6
	ld d,d			;5ed7
	ld (bc),a		;5ed8
	ld bc,0baf0h		;5ed9
	ld (de),a		;5edc
	ld c,a			;5edd
	ld b,d			;5ede
	ld c,(hl)		;5edf
	nop			;5ee0
	nop			;5ee1
	ld (bc),a		;5ee2
	dec sp			;5ee3
	ld b,d			;5ee4
	ld c,a			;5ee5
	jr nz,$-99		;5ee6
	sbc a,b			;5ee8
	ld hl,00e87h		;5ee9
	jr nz,$+111		;5eec
	ld c,(hl)		;5eee
	ld (l4f52h),hl		;5eef
	nop			;5ef2
	xor a			;5ef3
	ret m			;5ef4
	ld e,(hl)		;5ef5
	xor d			;5ef6
	ld hl,(0020ah)		;5ef7
	inc bc			;5efa
	and b			;5efb
	add a,(hl)		;5efc
	ex af,af'		;5efd
	ld b,0c0h		;5efe
	ld (bc),a		;5f00
	ld c,e			;5f01
	ld c,h			;5f02
	ld c,l			;5f03
	ld c,e			;5f04
	ld c,l			;5f05
	ld h,c			;5f06
	rst 38h			;5f07
	dec sp			;5f08
	ld c,a			;5f09
	rst 38h			;5f0a
	ex af,af'		;5f0b
	add a,h			;5f0c
	ld c,h			;5f0d
	ld c,e			;5f0e
	rst 8			;5f0f
	ld a,l			;5f10
	xor 000h		;5f11
	dec d			;5f13
	dec c			;5f14
	inc bc			;5f15
	dec bc			;5f16
	xor l			;5f17
	cp b			;5f18
	ex af,af'		;5f19
	or l			;5f1a
	ld d,b			;5f1b
	inc d			;5f1c
	ld b,e			;5f1d
	sbc a,h			;5f1e
	jr l5f6fh		;5f1f
	ld b,a			;5f21
	ld b,e			;5f22
	adc a,026h		;5f23
	rrca			;5f25
l5f26h:
	ld (bc),a		;5f26
	nop			;5f27
	ld c,d			;5f28
	adc a,063h		;5f29
	rlca			;5f2b
	inc bc			;5f2c
	ex af,af'		;5f2d
	dec a			;5f2e
	rrca			;5f2f
	call c,00001h		;5f30
	rst 20h			;5f33
	rrca			;5f34
	ex af,af'		;5f35
	ld l,042h		;5f36
	nop			;5f38
	sbc a,l			;5f39
	ld c,(hl)		;5f3a
	rlca			;5f3b
	add hl,sp		;5f3c
	ld (bc),a		;5f3d
	nop			;5f3e
	sub h			;5f3f
	rst 28h			;5f40
	push hl			;5f41
	ex af,af'		;5f42
	ld b,c			;5f43
	nop			;5f44
	out (04eh),a		;5f45
	rlca			;5f47
	and a			;5f48
sub_5f49h:
	dec b			;5f49
	nop			;5f4a
	add a,e			;5f4b
	ld bc,08305h		;5f4c
	ld c,h			;5f4f
	ld c,c			;5f50
	nop			;5f51
	or a			;5f52
	ld c,h			;5f53
	nop			;5f54
	add hl,de		;5f55
	rla			;5f56
	nop			;5f57
	ld a,b			;5f58
	inc h			;5f59
	sbc a,01fh		;5f5a
	nop			;5f5c
	ld l,c			;5f5d
	ld c,e			;5f5e
	nop			;5f5f
	inc c			;5f60
	dec a			;5f61
	pop hl			;5f62
	dec h			;5f63
	bit 1,l			;5f64
	dec a			;5f66
	jp nc,0f500h		;5f67
	dec a			;5f6a
	dec a			;5f6b
	dec b			;5f6c
l5f6dh:
	inc bc			;5f6d
	ccf			;5f6e
l5f6fh:
	sbc a,00eh		;5f6f
	nop			;5f71
	pop de			;5f72
	sbc a,a			;5f73
	rst 18h			;5f74
	nop			;5f75
	ld h,b			;5f76
	jp nc,l4c9bh		;5f77
	ld a,001h		;5f7a
	nop			;5f7c
l5f7dh:
	ld (0c308h),a		;5f7d
	ld a,(0ffe8h)		;5f80
	or 002h			;5f83
	djnz l5f6dh		;5f85
	ld a,a			;5f87
	ld (0f306h),a		;5f88
	out (099h),a		;5f8b
	djnz $+64		;5f8d
	adc a,c			;5f8f
	ei			;5f90
	inc b			;5f91
	ld a,(0ffe7h)		;5f92
	djnz l5f7dh		;5f95
l5f97h:
	rst 18h			;5f97
	ld (0af04h),a		;5f98
	ld (0000eh),a		;5f9b
	pop bc			;5f9e
l5f9fh:
	ld hl,(0057ch)		;5f9f
	ld (hl),01ah		;5fa2
	ld hl,(0847fh)		;5fa4
	inc b			;5fa7
	ret nc			;5fa8
	ld hl,(00482h)		;5fa9
	xor (hl)		;5fac
	dec (hl)		;5fad
	ld hl,(00485h)		;5fae
	adc a,b			;5fb1
	inc b			;5fb2
	ex af,af'		;5fb3
	djnz l5fe0h		;5fb4
	adc a,e			;5fb6
	inc b			;5fb7
	call nc,sub_6b2ah	;5fb8
	adc a,(hl)		;5fbb
	add hl,bc		;5fbc
	sub c			;5fbd
	add hl,bc		;5fbe
	ld e,d			;5fbf
	sub h			;5fc0
	add hl,bc		;5fc1
	sub a			;5fc2
sub_5fc3h:
	call nc,09a09h		;5fc3
	inc b			;5fc6
	ret z			;5fc7
	jr nz,l5ff4h		;5fc8
	sbc a,l			;5fca
	inc b			;5fcb
	jp nc,l77cdh		;5fcc
	ld c,(hl)		;5fcf
	jr nz,l5f9fh		;5fd0
	rla			;5fd2
	ld (bc),a		;5fd3
	ld h,e			;5fd4
	dec b			;5fd5
	call 01287h		;5fd6
sub_5fd9h:
	ld (hl),a		;5fd9
	call 0059fh		;5fda
	and d			;5fdd
	ld (bc),a		;5fde
	ld b,b			;5fdf
l5fe0h:
	and l			;5fe0
	ld (bc),a		;5fe1
	and h			;5fe2
	ld c,l			;5fe3
	call sub_76b7h		;5fe4
	inc b			;5fe7
	call 0581ch		;5fe8
	call 00baeh		;5feb
	add hl,sp		;5fee
	sub b			;5fef
	ld (bc),a		;5ff0
	xor b			;5ff1
	ld (bc),a		;5ff2
	dec (hl)		;5ff3
l5ff4h:
	ld e,(hl)		;5ff4
	call 0ab41h		;5ff5
	dec b			;5ff8
	ret m			;5ff9
l5ffah:
	ld e,c			;5ffa
	call 02c86h		;5ffb
	nop			;5ffe
	sbc a,(hl)		;5fff
l6000h:
	ld d,h			;6000
	ld a,(0c13dh)		;6001
	or a			;6004
	jp z,02815h		;6005
	ld c,l			;6008
	ld a,011h		;6009
	ret pe			;600b
	ld d,c			;600c
	and b			;600d
	add a,c			;600e
	ld b,0c1h		;600f
	ld a,0feh		;6011
l6013h:
	and l			;6013
	djnz $-61		;6014
	ld (004a3h),a		;6016
	jp 01c3eh		;6019
	ld (00707h),a		;601c
l601fh:
	and d			;601f
	ld de,0cdc3h		;6020
	inc bc			;6023
	ld a,(de)		;6024
	ld b,005h		;6025
	ld b,d			;6027
	ld d,c			;6028
	ld e,l			;6029
	and b			;602a
	ld b,d			;602b
l602ch:
	dec hl			;602c
	ld a,(0c395h)		;602d
	ld l,046h		;6030
	ld l,c			;6032
	ld d,e			;6033
	ld d,c			;6034
	ld c,(hl)		;6035
	add hl,bc		;6036
	and h			;6037
	ret			;6038
	ld (de),a		;6039
	ld d,023h		;603a
	ccf			;603c
	sub d			;603d
	ld (bc),a		;603e
	ld d,d			;603f
	ld (bc),a		;6040
	ld c,a			;6041
	ld (bc),a		;6042
	ld c,b			;6043
	ld b,e			;6044
	ld (bc),a		;6045
	ld b,b			;6046
	ccf			;6047
sub_6048h:
	ld (bc),a		;6048
	ld (04240h),a		;6049
	ld h,03eh		;604c
	pop bc			;604e
l604fh:
	cp 01eh			;604f
	jp c,08d04h		;6051
	ld c,l			;6054
	dec a			;6055
	ld (00b3eh),a		;6056
	pop de			;6059
	djnz l601fh		;605a
	inc a			;605c
	ld (03a03h),a		;605d
	inc de			;6060
	pop bc			;6061
sub_6062h:
	and b			;6062
	dec c			;6063
	inc bc			;6064
	inc a			;6065
	jp nz,04cfbh		;6066
	ret nz			;6069
l606ah:
	dec a			;606a
	xor a			;606b
	ret			;606c
	ld hl,002d8h		;606d
	ld c,l			;6070
	ld (l4dd4h),hl		;6071
l6074h:
	ld hl,005f8h		;6074
	djnz l604fh		;6077
	ld c,l			;6079
	ld hl,(l5e07h+1)	;607a
	inc hl			;607d
	ld d,(hl)		;607e
l607fh:
	inc bc			;607f
	inc hl			;6080
	ld a,d			;6081
	or e			;6082
	jp z,l4e16h		;6083
	inc d			;6086
	ld bc,l4eebh		;6087
	inc hl			;608a
	ld b,(hl)		;608b
	ld hl,(l6e15h)		;608c
	ld (de),a		;608f
l6090h:
	inc e			;6090
	nop			;6091
	ex de,hl		;6092
	ld (hl),c		;6093
	inc hl			;6094
	ld (hl),b		;6095
	jp 04db0h		;6096
	and 092h		;6099
	nop			;609b
	dec b			;609c
	ld d,005h		;609d
	rra			;609f
	dec b			;60a0
	ld (00500h),hl		;60a1
	ld l,005h		;60a4
	add hl,de		;60a6
	dec b			;60a7
	ld sp,05b05h		;60a8
	nop			;60ab
	dec b			;60ac
	ld e,(hl)		;60ad
	dec b			;60ae
	ld h,c			;60af
	dec b			;60b0
	ld h,a			;60b1
	dec b			;60b2
	ld l,d			;60b3
	ex af,af'		;60b4
	dec b			;60b5
	ld (hl),b		;60b6
	dec b			;60b7
	ld (hl),e		;60b8
	and c			;60b9
	sub b			;60ba
	dec b			;60bb
	rra			;60bc
	rst 20h			;60bd
	ld d,h			;60be
	cp a			;60bf
	nop			;60c0
	ld d,h			;60c1
	ld l,l			;60c2
	ld d,h			;60c3
	adc a,l			;60c4
	ld d,h			;60c5
	call nc,0c254h		;60c6
	nop			;60c9
	ld d,h			;60ca
	bit 2,h			;60cb
	ld l,d			;60cd
	ld e,d			;60ce
	ld h,h			;60cf
	ld d,h			;60d0
	ld h,a			;60d1
	nop			;60d2
	ld d,h			;60d3
	push bc			;60d4
	ld d,h			;60d5
	ret z			;60d6
	ld d,h			;60d7
	adc a,054h		;60d8
	pop de			;60da
	add a,e			;60db
	dec c			;60dc
	ld d,h			;60dd
	ret			;60de
	di			;60df
	ld hl,0e0e7h		;60e0
	ld de,l4e74h		;60e3
	ld bc,00302h		;60e6
	nop			;60e9
	ldir			;60ea
	ld hl,l6996h		;60ec
	ld (bc),a		;60ef
	add hl,sp		;60f0
	nop			;60f1
	ld a,0c3h		;60f2
	ld (00438h),a		;60f4
	add hl,bc		;60f7
	inc de			;60f8
	ld (0fff1h),a		;60f9
	adc a,h			;60fc
	call nz,08b93h		;60fd
	ret po			;6100
	rst 18h			;6101
	di			;6102
	or 02ch			;6103
	djnz l6139h		;6105
	inc b			;6107
	dec c			;6108
	ld h,e			;6109
	add a,b			;610a
	inc bc			;610b
	ld (bc),a		;610c
	inc bc			;610d
	inc de			;610e
	adc a,a			;610f
	and d			;6110
	sub c			;6111
	xor h			;6112
	ld c,c			;6113
	dec (hl)		;6114
	ld de,0f328h		;6115
	add hl,sp		;6118
	add a,023h		;6119
	ld e,0e6h		;611b
	rst 28h			;611d
	inc hl			;611e
	dec c			;611f
	xor a			;6120
l6121h:
	ld (00388h),hl		;6121
	ei			;6124
	ret			;6125
	sbc a,(hl)		;6126
	ret			;6127
	ld e,a			;6128
	sub l			;6129
	ld d,h			;612a
	ld a,(de)		;612b
	and e			;612c
	ld c,(hl)		;612d
	dec b			;612e
	or e			;612f
	ld d,c			;6130
	ld c,(hl)		;6131
	ld de,07b0eh		;6132
	ld d,e			;6135
	ld c,0a7h		;6136
	inc de			;6138
l6139h:
	ld d,h			;6139
	ld c,004h		;613a
	ret			;613c
	push af			;613d
	rst 18h			;613e
	sbc a,h			;613f
	inc l			;6140
	add a,l			;6141
	in a,(099h)		;6142
	rrca			;6144
l6145h:
	call c,0391ah		;6145
	call nc,0320ch		;6148
	dec bc			;614b
	and b			;614c
	pop bc			;614d
	rlca			;614e
	call c,06d24h		;614f
	sbc a,c			;6152
	inc bc			;6153
	pop af			;6154
	ld hl,(03400h)		;6155
l6158h:
	jr z,l6192h		;6158
	ld (hl),036h		;615a
	ld a,(l4a28h)		;615c
	ld b,b			;615f
	rlca			;6160
	ld b,h			;6161
	ld sp,hl		;6162
	sbc a,e			;6163
	ld b,(hl)		;6164
	rlca			;6165
	rrca			;6166
	ret c			;6167
	ld b,b			;6168
	ld (l7c22h),hl		;6169
	inc (hl)		;616c
	rla			;616d
l616eh:
	ld a,a			;616e
	daa			;616f
	cp (hl)			;6170
	ld b,b			;6171
	jr c,l61a4h		;6172
	ld (02d07h),a		;6174
	ld a,03ch		;6177
	ld bc,0b507h		;6179
	jp p,007dah		;617c
	ld h,000h		;617f
	jp nc,03207h		;6181
	jr nc,$+3		;6184
	jp po,01f27h		;6186
	ld a,h			;6189
	inc (hl)		;618a
	ld e,a			;618b
	ld a,l			;618c
	daa			;618d
	sub a			;618e
	ld (0012eh),hl		;618f
l6192h:
	ccf			;6192
	sbc a,a			;6193
	ld (hl),a		;6194
	cp a			;6195
	daa			;6196
	ld a,(hl)		;6197
	rra			;6198
	dec bc			;6199
	ld a,(l4f01h)		;619a
	add a,c			;619d
	inc (hl)		;619e
	ld b,h			;619f
l61a0h:
	ld b,(hl)		;61a0
	ld e,a			;61a1
	rst 8			;61a2
	cpl			;61a3
l61a4h:
	ld (hl),c		;61a4
	adc a,a			;61a5
	call z,0401dh		;61a6
	call po,sub_4667h	;61a9
	ld b,b			;61ac
	ex de,hl		;61ad
	rrca			;61ae
	daa			;61af
	and (hl)		;61b0
	inc (hl)		;61b1
l61b2h:
	scf			;61b2
	and e			;61b3
	jr z,l6145h		;61b4
	sbc a,h			;61b6
	nop			;61b7
	adc a,h			;61b8
	adc a,a			;61b9
	ld l,c			;61ba
	inc a			;61bb
	rlca			;61bc
	ld b,h			;61bd
	ld (04108h),a		;61be
	dec b			;61c1
	ld c,02ch		;61c2
	jr c,$+64		;61c4
	or b			;61c6
	rla			;61c7
	ld b,00ah		;61c8
	ld l,020h		;61ca
	rlca			;61cc
	call nc,02e0dh		;61cd
l61d0h:
	cp a			;61d0
	ld c,l			;61d1
	inc l			;61d2
	dec c			;61d3
	dec h			;61d4
	jr nc,l621dh		;61d5
	ld b,h			;61d7
	jr nc,l61ffh		;61d8
	ld b,037h		;61da
	ld e,03ch		;61dc
	ld b,013h		;61de
	ld c,007h		;61e0
	ld l,006h		;61e2
	ld (hl),d		;61e4
	rlca			;61e5
	ld b,e			;61e6
	or (hl)			;61e7
	ld d,h			;61e8
	ld c,h			;61e9
	adc a,h			;61ea
	ld d,a			;61eb
	rlca			;61ec
	ld c,a			;61ed
	inc (hl)		;61ee
	ld b,b			;61ef
	rlca			;61f0
	ret			;61f1
	ex (sp),hl		;61f2
	ld (bc),a		;61f3
	rlca			;61f4
	xor c			;61f5
	and h			;61f6
	ld l,(hl)		;61f7
	or e			;61f8
	ld c,b			;61f9
	xor h			;61fa
	pop hl			;61fb
	ld b,h			;61fc
	inc bc			;61fd
	ld d,c			;61fe
l61ffh:
	ld e,(hl)		;61ff
	inc bc			;6200
	ld c,020h		;6201
	ld l,0bfh		;6203
	inc bc			;6205
	ld a,a			;6206
	ld d,b			;6207
	ccf			;6208
	rlca			;6209
	inc l			;620a
	sbc a,e			;620b
	rst 20h			;620c
	nop			;620d
	inc bc			;620e
	jr nz,l6233h		;620f
	ld hl,(019e5h)		;6211
	call m,sub_6708h	;6214
	ld hl,(l4e08h)		;6217
	ld (0b108h),hl		;621a
l621dh:
	ld (de),a		;621d
	inc c			;621e
	nop			;621f
	ld (hl),d		;6220
	dec de			;6221
	inc c			;6222
	rst 28h			;6223
	inc h			;6224
	djnz l6285h		;6225
	inc c			;6227
	ccf			;6228
l6229h:
	xor 00ch		;6229
	ccf			;622b
	sbc a,(hl)		;622c
	inc c			;622d
	ccf			;622e
	dec de			;622f
	ld de,0498bh		;6230
l6233h:
	and a			;6233
	rra			;6234
	ld h,a			;6235
	rlca			;6236
	jp nz,08d2ah		;6237
	rst 38h			;623a
	sub d			;623b
	rst 38h			;623c
	rst 18h			;623d
	ld d,d			;623e
	call nz,0f476h		;623f
	sbc a,e			;6242
	and h			;6243
	sub h			;6244
	ld l,l			;6245
	ex af,af'		;6246
	ret nc			;6247
	sbc a,a			;6248
	jr nz,l629dh		;6249
	ld d,b			;624b
	ld d,d			;624c
	ld bc,01614h		;624d
	ld d,028h		;6250
	ld d,b			;6252
	ld b,004h		;6253
	ld bc,028a1h		;6255
	inc b			;6258
	ld (de),a		;6259
	djnz l625dh		;625a
	and c			;625c
l625dh:
	jr z,$+18		;625d
	ld c,(hl)		;625f
	ld c,h			;6260
	ld bc,028a7h		;6261
	ld c,h			;6264
	rst 8			;6265
	ld e,d			;6266
	ld bc,03828h		;6267
	nop			;626a
	ld a,(bc)		;626b
	nop			;626c
	xor l			;626d
	ld (0002bh),a		;626e
	xor c			;6271
	ld (0298eh),a		;6272
	cp a			;6275
	ld b,d			;6276
	jr c,l62bdh		;6277
	inc a			;6279
	ld b,(hl)		;627a
	sub (hl)		;627b
	add a,l			;627c
	ld b,(hl)		;627d
l627eh:
	ld b,a			;627e
	rrca			;627f
	ret po			;6280
	ld b,(hl)		;6281
	or 00fh			;6282
	rst 38h			;6284
l6285h:
	rra			;6285
	add a,l			;6286
	add a,d			;6287
	inc bc			;6288
	inc c			;6289
	inc bc			;628a
	add hl,bc		;628b
l628ch:
	ld bc,0837eh		;628c
	ld b,013h		;628f
	ld d,h			;6291
	ld b,097h		;6292
	ld d,a			;6294
	nop			;6295
	adc a,d			;6296
	rst 10h			;6297
	ld (bc),a		;6298
	ld (hl),d		;6299
	ld d,c			;629a
	ld b,05ah		;629b
l629dh:
	push hl			;629d
	ld b,05dh		;629e
	ld b,0a1h		;62a0
	rst 10h			;62a2
	push bc			;62a3
	push de			;62a4
	push hl			;62a5
	and b			;62a6
	xor (hl)		;62a7
	or b			;62a8
	ld l,(hl)		;62a9
	ld e,l			;62aa
	cp 002h			;62ab
	inc b			;62ad
	call z,sub_73e7h	;62ae
	ld a,(015e0h)		;62b1
	cp a			;62b4
	dec (hl)		;62b5
	ld (015e0h),a		;62b6
	add a,c			;62b9
	jp c,0e6adh		;62ba
l62bdh:
	defb 0fdh,080h,0e6h ;illegal sequence	;62bd
	jr nz,l628ch		;62c0
	xor d			;62c2
	ld d,e			;62c3
	ld a,(063f1h)		;62c4
	pop bc			;62c7
	rrca			;62c8
	sub d			;62c9
	dec l			;62ca
	ld b,054h		;62cb
	pop bc			;62cd
	ld b,a			;62ce
	add hl,bc		;62cf
	inc sp			;62d0
	sub a			;62d1
	add hl,bc		;62d2
	sub e			;62d3
	ld h,(hl)		;62d4
	add a,b			;62d5
	sub h			;62d6
	push af			;62d7
	and b			;62d8
	ret pe			;62d9
	defb 0fdh,0c6h,00ah ;illegal sequence	;62da
	adc a,b			;62dd
	ld a,(bc)		;62de
	dec (hl)		;62df
	pop hl			;62e0
	ccf			;62e1
	add a,d			;62e2
	ex af,af'		;62e3
	sub c			;62e4
	ld c,b			;62e5
	or 042h			;62e6
	ld c,l			;62e8
	ret po			;62e9
	exx			;62ea
	scf			;62eb
	ex af,af'		;62ec
	push af			;62ed
	ld (hl),a		;62ee
	ld l,c			;62ef
	nop			;62f0
	dec b			;62f1
	call z,l630bh		;62f2
	call 0685fh		;62f5
	ld e,d			;62f8
	ld a,(bc)		;62f9
	inc bc			;62fa
	call z,001f9h		;62fb
	ld h,c			;62fe
	pop hl			;62ff
	pop de			;6300
	pop bc			;6301
	pop af			;6302
	ex af,af'		;6303
	exx			;6304
	dec b			;6305
	adc a,h			;6306
	ret			;6307
	ld b,h			;6308
	di			;6309
l630ah:
	rst 30h			;630a
l630bh:
	ld b,h			;630b
	sub a			;630c
	xor a			;630d
	ld h,b			;630e
	add a,(hl)		;630f
	call p,sub_51f9h	;6310
l6313h:
	ld b,0b1h		;6313
	sbc a,e			;6315
	call p,sub_5fc3h	;6316
	ld h,c			;6319
	sbc a,b			;631a
	and c			;631b
	rst 28h			;631c
	ld e,b			;631d
	ld a,(0005eh)		;631e
	ccf			;6321
	ld e,l			;6322
	or a			;6323
	call nz,sub_6c7dh	;6324
	ld a,(0e89ch)		;6327
	rst 30h			;632a
	jp nz,01e6ch		;632b
	ld d,h			;632e
	call 0965dh		;632f
	inc h			;6332
	ld h,b			;6333
	ld (bc),a		;6334
	ld (hl),l		;6335
	ld (bc),a		;6336
	ld e,0f5h		;6337
	call z,sub_53d4h	;6339
	sub d			;633c
	call pe,0db76h		;633d
	adc a,b			;6340
	call pe,0fff6h		;6341
	ld a,(l5432h)		;6344
	ld sp,hl		;6347
	inc bc			;6348
	sbc a,a			;6349
	jp l40e6h		;634a
	call nz,0d721h		;634d
	call nc,0c156h		;6350
	adc a,a			;6353
	adc a,d			;6354
	ld (de),a		;6355
	xor a			;6356
	ld hl,00f0dh		;6357
	cp (hl)			;635a
	jp z,l54a2h		;635b
	and l			;635e
	adc a,l			;635f
	inc de			;6360
l6361h:
	inc bc			;6361
	ld c,l			;6362
	nop			;6363
	jr nz,l6395h		;6364
	call sub_5fd9h		;6366
	call sub_57b5h		;6369
	ret m			;636c
	sbc a,h			;636d
	ld d,l			;636e
	call 01602h		;636f
	ld d,l			;6372
	jr nz,l637eh		;6373
	call sub_5115h		;6375
	ld c,c			;6378
	jr l637dh		;6379
	ld h,(hl)		;637b
	ld (bc),a		;637c
l637dh:
	ld l,c			;637d
l637eh:
	ld (bc),a		;637e
	inc h			;637f
	jr nc,l6384h		;6380
	ld l,a			;6382
	ld (bc),a		;6383
l6384h:
	ld (hl),d		;6384
	sub e			;6385
	ld (bc),a		;6386
	dec l			;6387
	ld (bc),a		;6388
	ld a,c			;6389
	add a,l			;638a
	call po,02205h		;638b
	jp pe,l5407h		;638e
	ei			;6391
	call 0050ch		;6392
l6395h:
	sub (hl)		;6395
	di			;6396
	sub 010h		;6397
	jp (hl)			;6399
	ei			;639a
	and 000h		;639b
	djnz l6361h		;639d
	nop			;639f
	ld d,l			;63a0
	ld a,(l54ffh)		;63a1
	or a			;63a4
	ld h,h			;63a5
	ret nz			;63a6
	ld h,a			;63a7
	ld b,0c3h		;63a8
	ld a,b			;63aa
	ld d,c			;63ab
	adc a,b			;63ac
	xor a			;63ad
	ret			;63ae
	rlca			;63af
	ld a,(de)		;63b0
	jp pe,02b1ah		;63b1
	ld bc,0ac13h		;63b4
	sbc a,a			;63b7
	ld b,e			;63b8
	sub e			;63b9
	add hl,bc		;63ba
	ret po			;63bb
	ld (082a4h),a		;63bc
	ld b,h			;63bf
	rst 8			;63c0
	ld l,e			;63c1
	ret z			;63c2
	ld b,03ah		;63c3
	ret pe			;63c5
	ei			;63c6
	bit 6,a			;63c7
	add hl,bc		;63c9
	ld a,(bc)		;63ca
	jp nz,l552bh		;63cb
	dec h			;63ce
	ld b,003h		;63cf
	ret			;63d1
	ld (0c202h),a		;63d2
	add a,004h		;63d5
	or 0e1h			;63d7
	jp nz,0d03ah		;63d9
	sub 018h		;63dc
	ld b,h			;63de
	ld h,d			;63df
	ld d,l			;63e0
	ld b,d			;63e1
	add hl,bc		;63e2
	ld l,089h		;63e3
	ld e,d			;63e5
	rrca			;63e6
	dec b			;63e7
	dec e			;63e8
	ld b,0c0h		;63e9
	ld de,0c104h		;63eb
	ld sp,hl		;63ee
	ld hl,00432h		;63ef
	djnz $+3		;63f2
	ld b,032h		;63f4
	ex af,af'		;63f6
	jp nz,00c32h		;63f7
	inc h			;63fa
	and c			;63fb
	and 007h		;63fc
	jr nz,$+16		;63fe
	ld a,080h		;6400
	add a,008h		;6402
	cp 060h			;6404
	jr nz,$+26		;6406
	ld (bc),a		;6408
	ld a,048h		;6409
	ld b,d			;640b
	ld a,(00049h)		;640c
	ld a,(de)		;640f
	inc b			;6410
	ld a,(de)		;6411
	ld bc,00005h		;6412
	dec b			;6415
	jp nz,00d21h		;6416
	pop bc			;6419
	ld b,(hl)		;641a
	ld (hl),006h		;641b
	ld d,0afh		;641d
	call sub_5747h		;641f
	ld hl,(0f57dh)		;6422
	inc bc			;6425
	nop			;6426
	cp 0a4h			;6427
	ld b,030h		;6429
	call nc,sub_76dfh	;642b
	ld h,c			;642e
	ld a,(0d209h)		;642f
	ret nz			;6432
	ld d,a			;6433
	add a,061h		;6434
	ld (bc),a		;6436
	dec a			;6437
	pop bc			;6438
	call sub_76b7h		;6439
	rlca			;643c
	ld c,b			;643d
	and a			;643e
	adc a,c			;643f
	ld (l606ah),a		;6440
	ld e,e			;6443
	jr c,l6480h		;6444
	ld b,b			;6446
	inc a			;6447
	ld a,(0c280h)		;6448
	ld de,0c240h		;644b
	ld a,b			;644e
	ld a,0fdh		;644f
	ld e,a			;6451
	nop			;6452
	pop bc			;6453
	ld b,007h		;6454
	push de			;6456
	ld a,(hl)		;6457
l6458h:
	and 01fh		;6458
	cp 000h			;645a
	dec d			;645c
	jp z,l5670h		;645d
	inc hl			;6460
	or a			;6461
	jp z,03000h		;6462
	ld d,(hl)		;6465
	cp 092h			;6466
	nop			;6468
	ld b,l			;6469
	dec a			;646a
	call z,0576ah		;646b
	call nz,sub_56a4h	;646e
	ld c,0d1h		;6471
	push hl			;6473
	ldi			;6474
	ld bc,0e15ah		;6476
	inc b			;6479
	ld a,(hl)		;647a
	nop			;647b
	inc a			;647c
	ld (de),a		;647d
	inc de			;647e
	inc de			;647f
l6480h:
	ld bc,0000dh		;6480
	add hl,bc		;6483
	ld b,(hl)		;6484
	ld a,(0c635h)		;6485
	ld (bc),a		;6488
	ld a,(0fe00h)		;6489
	ld e,0c2h		;648c
	pop bc			;648e
	ld d,l			;648f
	ret			;6490
	pop de			;6491
	ld hl,00f01h		;6492
	ld (de),a		;6495
	ex de,hl		;6496
	ld c,008h		;6497
	inc bc			;6499
	ld a,d			;649a
	rla			;649b
	add a,b			;649c
	dec hl			;649d
	ld a,(hl)		;649e
	cp 024h			;649f
	jr z,l64e0h		;64a1
	inc hl			;64a3
	dec hl			;64a4
	push hl			;64a5
	inc hl			;64a6
	nop			;64a7
	add hl,bc		;64a8
	cp l			;64a9
	inc b			;64aa
	add hl,bc		;64ab
	xor d			;64ac
	ld b,b			;64ad
	pop hl			;64ae
	call sub_573dh		;64af
	jp 0da10h		;64b2
	ld d,l			;64b5
	inc hl			;64b6
	ld c,b			;64b7
	ld (hl),a		;64b8
	cp 00ch			;64b9
	inc c			;64bb
	jr z,l64d0h		;64bc
	and 003h		;64be
	call m,0e118h		;64c0
	rrca			;64c3
	dec hl			;64c4
	and d			;64c5
	add hl,hl		;64c6
	pop hl			;64c7
	ld (hl),b		;64c8
	ld (hl),a		;64c9
	add hl,bc		;64ca
	ld (hl),069h		;64cb
	ld (03623h),hl		;64cd
l64d0h:
	ld b,008h		;64d0
	jr l64d4h		;64d2
l64d4h:
	inc hl			;64d4
	rrca			;64d5
	ld (hl),068h		;64d6
	inc b			;64d8
	ld a,036h		;64d9
	ld c,e			;64db
	inc hl			;64dc
	sub a			;64dd
l64deh:
	rla			;64de
	inc hl			;64df
l64e0h:
	ld de,0423eh		;64e0
	ld (hl),001h		;64e3
	inc hl			;64e5
	pop af			;64e6
	ld (hl),b		;64e7
	ld b,a			;64e8
	ld a,(hl)		;64e9
	ld (hl),090h		;64ea
l64ech:
	ld (hl),a		;64ec
	rrca			;64ed
	or b			;64ee
	inc h			;64ef
	dec hl			;64f0
	nop			;64f1
	djnz l64f4h		;64f2
l64f4h:
	ld sp,03ae1h		;64f4
	dec (hl)		;64f7
	jp nz,0d8bah		;64f8
	cp e			;64fb
	nop			;64fc
	ret nc			;64fd
	ld a,(0c234h)		;64fe
	cp c			;6501
	ret c			;6502
	sub 010h		;6503
	dec b			;6505
	cp c			;6506
	ret nc			;6507
	ld a,0f0h		;6508
	ld (08311h),a		;650a
	ld (00f32h),hl		;650d
	nop			;6510
	jp l56e2h		;6511
	ret			;6514
	ld a,(hl)		;6515
	sub 008h		;6516
	ld c,a			;6518
	ld d,b			;6519
	push hl			;651a
	ld (hl),a		;651b
	jr $+89			;651c
	add a,01eh		;651e
	ex af,af'		;6520
	ld e,a			;6521
	ld hl,0c229h		;6522
	call p,sub_7e80h	;6525
	dec hl			;6528
	cp d			;6529
	jp c,l5680h		;652a
	inc hl			;652d
	cp e			;652e
	jp nc,l7e03h		;652f
l6532h:
	cp c			;6532
	ex af,af'		;6533
	inc sp			;6534
	ld (0040ah),a		;6535
	ld a,(0c151h)		;6538
	add a,d			;653b
	add a,d			;653c
	call c,sub_7856h	;653d
	add a,e			;6540
	ld b,h			;6541
l6542h:
	jp nc,0e105h		;6542
	ret z			;6545
	jr c,l658dh		;6546
	ld (hl),a		;6548
	inc hl			;6549
	ld c,e			;654a
	ld (hl),a		;654b
	ld e,e			;654c
	ld a,0a7h		;654d
	inc bc			;654f
	ld de,00007h		;6550
	add hl,de		;6553
	ld (hl),d		;6554
	inc b			;6555
	jp c,l5702h		;6556
	cp (hl)			;6559
	ld h,b			;655a
	ld (0c107h),a		;655b
	sub h			;655e
	exx			;655f
	sbc a,d			;6560
	or d			;6561
	xor b			;6562
	ld h,b			;6563
	pop bc			;6564
	dec hl			;6565
	sbc hl,de		;6566
	ld e,(hl)		;6568
	ret			;6569
	ld de,l5310h		;656a
	inc c			;656d
	dec hl			;656e
	inc de			;656f
	inc b			;6570
	ld (hl),024h		;6571
	inc hl			;6573
	cp 0dch			;6574
	ret nz			;6576
	add hl,bc		;6577
	add hl,de		;6578
	ld a,(l514ch)		;6579
	ret nz			;657c
	cpl			;657d
	ld d,c			;657e
	dec b			;657f
	or d			;6580
	add a,e			;6581
	add a,(hl)		;6582
	ld (01d4ah),a		;6583
	inc d			;6586
	sub 080h		;6587
	inc l			;6589
	ld c,e			;658a
	dec (hl)		;658b
	inc sp			;658c
l658dh:
	add hl,de		;658d
	sub 020h		;658e
	ld (hl),a		;6590
	ld b,000h		;6591
	inc hl			;6593
	ld b,(hl)		;6594
	ret nz			;6595
l6596h:
	dec h			;6596
	cp c			;6597
	ld bc,026e5h		;6598
	nop			;659b
	ld l,b			;659c
	add hl,hl		;659d
	nop			;659e
	add a,b			;659f
	ld de,04803h		;65a0
	add hl,de		;65a3
	push hl			;65a4
	ld e,h			;65a5
	ld l,a			;65a6
	inc c			;65a7
	dec bc			;65a8
	nop			;65a9
	nop			;65aa
	ld (hl),h		;65ab
	add hl,de		;65ac
	call 00145h		;65ad
	pop hl			;65b0
	nop			;65b1
	ld c,098h		;65b2
	call 005b4h		;65b4
	pop hl			;65b7
	ret			;65b8
	call 0c912h		;65b9
	ld (hl),a		;65bc
	ld b,(hl)		;65bd
	res 0,b			;65be
	inc bc			;65c0
	jp c,l57a6h		;65c1
	cp 020h			;65c4
	ex (sp),hl		;65c6
	jp nc,02b04h		;65c7
	cp 012h			;65ca
	ld c,013h		;65cc
	ld bc,00538h		;65ce
	call pe,00e04h		;65d1
	pop hl			;65d4
	ret c			;65d5
	ld a,(0c9dch)		;65d6
	inc a			;65d9
	add hl,de		;65da
	ret z			;65db
l65dch:
	ex (sp),hl		;65dc
	jr c,$+63		;65dd
	add hl,bc		;65df
	jp z,l579dh		;65e0
	ld a,c			;65e3
	or 089h			;65e4
	jp nz,0e778h		;65e6
	call nz,008c9h		;65e9
	add hl,sp		;65ec
	ret			;65ed
	ex af,af'		;65ee
	di			;65ef
	sbc a,b			;65f0
	ret			;65f1
	ld h,c			;65f2
	add a,a			;65f3
	xor c			;65f4
	nop			;65f5
	ld (hl),c		;65f6
	in a,(066h)		;65f7
	ld c,048h		;65f9
	ld c,c			;65fb
	daa			;65fc
	ld (0c003h),a		;65fd
	ld a,(l4700h)		;6600
	pop bc			;6603
	ld h,a			;6604
	ld a,(0c148h)		;6605
l6608h:
	ld l,a			;6608
	ld a,(hl)		;6609
	ret nz			;660a
l660bh:
	inc c			;660b
	inc hl			;660c
	ld e,(hl)		;660d
	inc hl			;660e
	ld c,(hl)		;660f
	ld de,07d23h		;6610
	ld (l7c0dh),a		;6613
	ld (00015h),a		;6616
	ld d,000h		;6619
	ld hl,l7e81h		;661b
	add hl,de		;661e
	ld (hl),c		;661f
	ld a,(bc)		;6620
	dec hl			;6621
	ex de,hl		;6622
l6623h:
	ld bc,00910h		;6623
	xor l			;6626
	add a,b			;6627
	ld a,(hl)		;6628
	or a			;6629
	jr z,l6649h		;662a
	ld h,e			;662c
	add hl,bc		;662d
	inc b			;662e
	jr $+6			;662f
	ld e,d			;6631
	inc de			;6632
	inc b			;6633
	ld c,0d6h		;6634
	inc b			;6636
	add hl,bc		;6637
	inc b			;6638
	or b			;6639
	inc b			;663a
	inc b			;663b
	ret nz			;663c
	ex de,hl		;663d
	rlca			;663e
	ldir			;663f
	ret			;6641
	push hl			;6642
	ld de,0122bh		;6643
	call c,01490h		;6646
l6649h:
	inc bc			;6649
	add hl,de		;664a
	djnz l6691h		;664b
	ld sp,hl		;664d
	or c			;664e
	ld hl,l5900h		;664f
	ld e,d			;6652
	ld (l5a4ch),hl		;6653
	ld a,014h		;6656
	ld (0fd8ah),a		;6658
	cp 084h			;665b
	ld sp,hl		;665d
	sbc a,(hl)		;665e
	adc a,c			;665f
	ret m			;6660
	ld (bc),a		;6661
	push af			;6662
	xor c			;6663
	ld hl,(080f3h)		;6664
	rlca			;6667
	call p,021c1h		;6668
	adc a,05ch		;666b
	call 08b08h		;666d
	inc b			;6670
	ld a,(09813h)		;6671
	add a,b			;6674
	ld b,a			;6675
	add a,a			;6676
	add a,b			;6677
	add a,012h		;6678
	ld (0dd0dh),a		;667a
	ld e,h			;667d
	ld hl,011ddh		;667e
	ld d,0cdh		;6681
	dec de			;6683
	dec b			;6684
	ret z			;6685
	add a,h			;6686
	dec e			;6687
	ld e,l			;6688
	ld sp,0101fh		;6689
	ld e,l			;668c
	ld (00219h),a		;668d
	dec de			;6690
l6691h:
	ld e,l			;6691
	ld hl,0aa00h		;6692
	ld e,b			;6695
	ld de,l7706h		;6696
	ld bc,00030h		;6699
	add a,d			;669c
	ld h,h			;669d
	ld b,0a0h		;669e
	ld a,(0bc08h)		;66a0
	ret			;66a3
	sbc a,b			;66a4
	ld bc,0ca00h		;66a5
	inc (hl)		;66a8
	ld e,c			;66a9
	dec a			;66aa
	ld l,a			;66ab
	inc c			;66ac
	ld (bc),a		;66ad
	jp z,00620h		;66ae
	ld (hl),d		;66b1
	ret po			;66b2
	ld b,0a0h		;66b3
	dec de			;66b5
	inc bc			;66b6
	jp z,00d0ah		;66b7
	ld b,0c1h		;66ba
	ld hl,033dah		;66bc
	ret po			;66bf
	ld de,09824h		;66c0
	inc b			;66c3
	ld (hl),0c3h		;66c4
	inc de			;66c6
	ld b,05dh		;66c7
	ld bc,000adh		;66c9
	ld b,005h		;66cc
	ld bc,00301h		;66ce
	ld b,00eh		;66d1
	ld bc,00702h		;66d3
	defb 0fdh,088h,007h ;illegal sequence	;66d6
	inc b			;66d9
	ld (de),a		;66da
	ld (bc),a		;66db
	ld bc,00b9ah		;66dc
	inc b			;66df
	djnz l66e3h		;66e0
	ld h,d			;66e2
l66e3h:
	rlca			;66e3
	nop			;66e4
	inc bc			;66e5
	nop			;66e6
	ld de,00404h		;66e7
	dec b			;66ea
	rlca			;66eb
	nop			;66ec
	rlca			;66ed
	ld de,02f64h		;66ee
	jr nz,l66f5h		;66f1
	ret p			;66f3
	cpl			;66f4
l66f5h:
	call z,01900h		;66f5
	rra			;66f8
	ld (bc),a		;66f9
	inc bc			;66fa
	rlca			;66fb
	cpl			;66fc
	inc a			;66fd
	ex (sp),hl		;66fe
	jp po,0e980h		;66ff
	jr nc,$+60		;6702
	jp p,006c9h		;6704
	inc bc			;6707
sub_6708h:
	di			;6708
	ld sp,hl		;6709
	sbc a,d			;670a
	ei			;670b
	jp nz,03204h		;670c
	ld (0ebaeh),a		;670f
	sub a			;6712
	ld c,e			;6713
	or b			;6714
	adc a,e			;6715
	sub 00ah		;6716
l6718h:
	rst 28h			;6718
	xor b			;6719
	inc b			;671a
	add hl,bc		;671b
	dec c			;671c
	jp nz,l7a05h		;671d
	ld (0c1f7h),a		;6720
l6723h:
	ld a,e			;6723
	ld hl,(02082h)		;6724
	ret nz			;6727
	ld c,h			;6728
	add hl,de		;6729
	ld h,l			;672a
	or a			;672b
	sbc a,l			;672c
	sbc a,c			;672d
	djnz l6736h		;672e
	push bc			;6730
l6731h:
	ld b,024h		;6731
	ex af,af'		;6733
	push bc			;6734
	di			;6735
l6736h:
	dec b			;6736
	ld e,(hl)		;6737
	push hl			;6738
	ld hl,05be1h		;6739
	rst 20h			;673c
	ld de,093f5h		;673d
	rst 20h			;6740
	nop			;6741
	bit 0,a			;6742
	jp z,l596ch		;6744
	and 0feh		;6747
	dec h			;6749
	add a,020h		;674a
	add a,b			;674c
	djnz $+64		;674d
	inc (hl)		;674f
	inc e			;6750
	ld e,l			;6751
	jp l7435h		;6752
	ld e,c			;6755
	ld a,(bc)		;6756
	inc bc			;6757
	ld a,(bc)		;6758
	adc a,d			;6759
	ld hl,0ba20h		;675a
	ld d,(hl)		;675d
	sbc a,a			;675e
	ld c,h			;675f
	dec e			;6760
	add a,(hl)		;6761
l6762h:
	inc b			;6762
	pop hl			;6763
	inc hl			;6764
	pop bc			;6765
	sub (hl)		;6766
	ld d,h			;6767
	pop hl			;6768
	ld (hl),01dh		;6769
	dec c			;676b
	inc b			;676c
	ld de,0b410h		;676d
	ld hl,(01158h)		;6770
	jr nc,l6723h		;6773
	ld d,d			;6775
	ld (00006h),hl		;6776
	call sub_5b80h		;6779
	jp l59adh		;677c
	ld hl,009c1h		;677f
	ld e,e			;6782
	ld de,05bd1h		;6783
	ret z			;6786
	ret			;6787
	adc a,d			;6788
	ld (bc),a		;6789
	ld a,007h		;678a
	ld (080f1h),a		;678c
	ld h,h			;678f
	rst 38h			;6790
	sbc a,(hl)		;6791
	ld c,e			;6792
	pop bc			;6793
	sbc a,e			;6794
	ld b,e			;6795
	nop			;6796
	jp 01081h		;6797
	jp 0cc5ch		;679a
	or b			;679d
	ld c,b			;679e
	ld c,0e5h		;679f
	or h			;67a1
	inc de			;67a2
	ld e,h			;67a3
l67a4h:
	ld (00afbh),a		;67a4
l67a7h:
	ret nc			;67a7
	call z,sub_5c24h	;67a8
	rst 30h			;67ab
	add a,l			;67ac
	xor 05ch		;67ad
	jr nz,l67b3h		;67af
	inc de			;67b1
	di			;67b2
l67b3h:
	ld e,h			;67b3
	or d			;67b4
	adc a,0b9h		;67b5
	add a,c			;67b7
	ld e,e			;67b8
	ld a,03fh		;67b9
	ld (0c78ch),a		;67bb
	adc a,l			;67be
	ld sp,018d0h		;67bf
	ld hl,0a14eh		;67c2
	and l			;67c5
	cp b			;67c6
	ret			;67c7
	call 01f36h		;67c8
l67cbh:
	jp c,0998bh		;67cb
	jp po,06c6fh		;67ce
	ld c,c			;67d1
	sbc a,a			;67d2
	di			;67d3
	ld a,(026c4h)		;67d4
	djnz l6833h		;67d7
	call p,0f82fh		;67d9
	ret			;67dc
	xor 00ah		;67dd
	dec a			;67df
	ld (hl),a		;67e0
	jp nc,0c08ah		;67e1
	ld (hl),a		;67e4
	call po,0ef35h		;67e5
	jr z,l67cbh		;67e8
	ld h,c			;67ea
	rst 30h			;67eb
	adc a,a			;67ec
	xor h			;67ed
	ld sp,l5a38h		;67ee
	rlca			;67f1
	xor h			;67f2
	ld bc,09c07h		;67f3
	inc (iy+00eh)		;67f6
	pop bc			;67f9
	or a			;67fa
	ld h,(hl)		;67fb
	ld e,d			;67fc
	adc a,a			;67fd
	ld d,c			;67fe
	rlca			;67ff
	xor c			;6800
	adc a,b			;6801
	inc hl			;6802
	and (hl)		;6803
	ret			;6804
	add hl,hl		;6805
	di			;6806
	adc a,(hl)		;6807
	ld e,c			;6808
	inc bc			;6809
	ld h,0c2h		;680a
	and e			;680c
	ld d,c			;680d
l680eh:
	jp 00cb1h		;680e
	push de			;6811
	add hl,sp		;6812
	and d			;6813
	ld b,(hl)		;6814
l6815h:
	ld b,028h		;6815
	ld a,(0cdb0h)		;6817
	ld b,h			;681a
	ld c,c			;681b
	ld (l5acdh),a		;681c
	jp nc,0934ah		;681f
	dec e			;6822
	jp p,0b2e8h		;6823
	xor a			;6826
	adc a,h			;6827
	ret nz			;6828
	call nc,01defh		;6829
	call 059ffh		;682c
	call z,00e92h		;682f
	rrca			;6832
l6833h:
	call nc,0fe30h		;6833
	ex af,af'		;6836
	and d			;6837
	dec h			;6838
	and e			;6839
	ld c,c			;683a
	xor 081h		;683b
	inc b			;683d
	ld d,c			;683e
	ld c,(hl)		;683f
	exx			;6840
	ld b,b			;6841
	dec e			;6842
	jp nz,l5aafh		;6843
	call 0142eh		;6846
	ld e,e			;6849
	ld hl,0e4bfh		;684a
	call nz,sub_58e5h	;684d
	inc (hl)		;6850
	or 08dh			;6851
	defb 0edh ;next byte illegal after ed	;6853
l6854h:
	rr e			;6854
	and a			;6856
	ld bc,0ccc2h		;6857
	ld e,d			;685a
	ld hl,018b0h		;685b
	call nz,sub_53f6h	;685e
	sbc a,d			;6861
	ld d,0feh		;6862
	ret p			;6864
	sbc a,a			;6865
	dec h			;6866
	ld e,d			;6867
	add a,l			;6868
	dec de			;6869
	or h			;686a
	inc e			;686b
	cp b			;686c
	ld h,d			;686d
	ld sp,hl		;686e
	dec de			;686f
	ld (hl),b		;6870
	ei			;6871
	dec de			;6872
	rst 38h			;6873
	pop de			;6874
	dec de			;6875
	ret po			;6876
	jp nz,01be5h		;6877
	ld c,d			;687a
	sub (hl)		;687b
	sbc a,h			;687c
	ld a,(02afbh)		;687d
	or (hl)			;6880
	call p,0aa2ah		;6881
	ld d,d			;6884
	rst 0			;6885
	ret pe			;6886
	inc l			;6887
	ld hl,0e2ech		;6888
l688bh:
	jr z,$-79		;688b
	ld c,h			;688d
	ret nz			;688e
	and l			;688f
	or h			;6890
	sbc a,b			;6891
	sbc a,l			;6892
	jp nz,01ffeh		;6893
	adc a,b			;6896
	add hl,hl		;6897
	cp d			;6898
	ld b,h			;6899
	rst 28h			;689a
	ld (bc),a		;689b
	cp 090h			;689c
	ld (bc),a		;689e
	add a,002h		;689f
	ld de,0ee5dh		;68a1
l68a4h:
	ld c,d			;68a4
	ld bc,0a4cbh		;68a5
l68a8h:
	ld (bc),a		;68a8
	ex (sp),hl		;68a9
	inc h			;68aa
	or a			;68ab
	ld e,h			;68ac
	xor (hl)		;68ad
	sbc a,d			;68ae
	adc a,b			;68af
	sbc a,063h		;68b0
	ld a,(bc)		;68b2
	ld e,l			;68b3
	add a,c			;68b4
	ld c,c			;68b5
	ret po			;68b6
	ret po			;68b7
	ld c,l			;68b8
	ld e,e			;68b9
	sbc a,(hl)		;68ba
l68bbh:
	ret po			;68bb
	inc de			;68bc
l68bdh:
	inc c			;68bd
	ret po			;68be
	xor c			;68bf
	dec c			;68c0
	ret po			;68c1
	adc a,l			;68c2
	ld d,l			;68c3
	ld e,e			;68c4
	ld a,(bc)		;68c5
	ld h,b			;68c6
	inc bc			;68c7
	ld a,(bc)		;68c8
	inc hl			;68c9
	ex de,hl		;68ca
	ld hl,024b3h		;68cb
	ld e,d			;68ce
	out (044h),a		;68cf
	djnz l68a8h		;68d1
	call pe,0c204h		;68d3
	ld d,d			;68d6
	ld sp,0051bh		;68d7
	ld a,(l68a8h)		;68da
	defb 0edh ;next byte illegal after ed	;68dd
	call nz,0b0f6h		;68de
	jp pe,l483ah		;68e1
	adc a,c			;68e4
	pop de			;68e5
	jp z,034dfh		;68e6
l68e9h:
	rst 0			;68e9
	and h			;68ea
	and d			;68eb
	ret po			;68ec
	sub h			;68ed
	ld e,e			;68ee
	ld a,(0f949h)		;68ef
	or l			;68f2
	xor a			;68f3
	call nz,0e1b1h		;68f4
	jp nz,01384h		;68f7
	ld d,d			;68fa
	rst 10h			;68fb
	ld (de),a		;68fc
	ld de,(l51d7h)		;68fd
	ret			;6901
	adc a,048h		;6902
	ld e,a			;6904
l6905h:
	and e			;6905
	sub 0d0h		;6906
	inc c			;6908
	halt			;6909
	ld c,d			;690a
	ld a,(l5f26h)		;690b
	add a,(hl)		;690e
l690fh:
	ret z			;690f
	dec b			;6910
	add hl,de		;6911
	ex de,hl		;6912
	ld d,l			;6913
	pop hl			;6914
	call z,0498bh		;6915
	call m,09f2dh		;6918
	jr nz,l691dh		;691b
l691dh:
	ld bc,l406ah		;691d
	ld bc,02020h		;6920
	ld b,b			;6923
	nop			;6924
	ld h,b			;6925
	ld b,b			;6926
	add a,b			;6927
	ld b,b			;6928
	dec e			;6929
	and b			;692a
	ld h,b			;692b
	nop			;692c
	adc a,c			;692d
	jr z,$+98		;692e
	ld a,(bc)		;6930
	nop			;6931
	add a,b			;6932
	ld h,b			;6933
	ld (bc),a		;6934
	and b			;6935
	add a,b			;6936
	nop			;6937
	add a,b			;6938
	jr nz,l68bbh		;6939
	inc d			;693b
	and b			;693c
l693dh:
	ld a,(bc)		;693d
	nop			;693e
	and b			;693f
	and b			;6940
	nop			;6941
	and b			;6942
	ld (0a020h),a		;6943
	ld e,014h		;6946
	add a,b			;6948
	ld a,(bc)		;6949
	ret nz			;694a
	nop			;694b
	ret nz			;694c
l694dh:
	jr nz,l690fh		;694d
	ld b,b			;694f
	nop			;6950
	ret nz			;6951
	ld h,b			;6952
	ret nz			;6953
	add a,b			;6954
	ret nz			;6955
	and b			;6956
	ret po			;6957
	nop			;6958
	nop			;6959
	ret po			;695a
	jr nz,l693dh		;695b
	ld b,b			;695d
	ret po			;695e
	ld h,b			;695f
	ret po			;6960
	add a,b			;6961
	ld d,l			;6962
	ret po			;6963
	jr nz,l69b1h		;6964
	nop			;6966
	ld c,d			;6967
	ld d,l			;6968
	ld b,b			;6969
	ld (hl),02eh		;696a
	nop			;696c
	ld l,l			;696d
	ld e,b			;696e
	ld c,(hl)		;696f
	ld b,h			;6970
	ld b,b			;6971
	ld (hl),001h		;6972
	ld b,b			;6974
	ld hl,l4140h		;6975
	nop			;6978
	ld b,b			;6979
	ld h,c			;697a
	ld b,b			;697b
	add a,c			;697c
	ld b,b			;697d
	and c			;697e
	ld h,b			;697f
	ld bc,l6000h		;6980
	ld hl,l4160h		;6983
	ld h,b			;6986
	ld h,c			;6987
	ld h,b			;6988
	add a,c			;6989
	ld b,060h		;698a
	and c			;698c
	add a,b			;698d
	ld bc,0cd80h		;698e
	nop			;6991
	ld b,c			;6992
	add a,b			;6993
	ld h,c			;6994
	add a,b			;6995
l6996h:
	add a,c			;6996
	nop			;6997
	add a,b			;6998
	and c			;6999
	and b			;699a
	ld bc,021a0h		;699b
	and b			;699e
	ld b,c			;699f
	ld bc,l61a0h		;69a0
	and b			;69a3
	add a,c			;69a4
	and b			;69a5
	and c			;69a6
	ret nz			;69a7
	ret m			;69a8
	inc (hl)		;69a9
	rst 18h			;69aa
	ld b,b			;69ab
	ld b,c			;69ac
	ret nz			;69ad
	ld h,c			;69ae
	ret nz			;69af
	add a,c			;69b0
l69b1h:
	nop			;69b1
	ret nz			;69b2
	and c			;69b3
	ret po			;69b4
	ld bc,021e0h		;69b5
	ret po			;69b8
	ld b,c			;69b9
	nop			;69ba
	ret po			;69bb
	ld h,c			;69bc
	ret po			;69bd
	add a,c			;69be
	ret po			;69bf
	and c			;69c0
	jr nz,l69c4h		;69c1
	nop			;69c3
l69c4h:
	jr nz,l69e7h		;69c4
	jr nz,l6a09h		;69c6
	jr nz,l6a2bh		;69c8
	jr nz,l694dh		;69ca
	ld l,020h		;69cc
	and c			;69ce
	sbc a,l			;69cf
l69d0h:
	ret z			;69d0
	adc a,c			;69d1
	nop			;69d2
	ld b,c			;69d3
	dec b			;69d4
	nop			;69d5
	ld h,c			;69d6
	nop			;69d7
	add a,c			;69d8
	nop			;69d9
	dec bc			;69da
	nop			;69db
	rlc c			;69dc
	ld bc,00083h		;69de
	ret nc			;69e1
	dec bc			;69e2
	ld e,b			;69e3
	ret po			;69e4
	inc bc			;69e5
	ld (bc),a		;69e6
l69e7h:
	push bc			;69e7
	ld (de),a		;69e8
	sbc a,c			;69e9
	ld c,d			;69ea
	dec e			;69eb
	sub 01ah		;69ec
	sub e			;69ee
	ld bc,l7109h		;69ef
	nop			;69f2
	rrca			;69f3
	push bc			;69f4
	ld (bc),a		;69f5
	dec e			;69f6
	ret nz			;69f7
	pop hl			;69f8
	inc bc			;69f9
	add hl,hl		;69fa
	xor b			;69fb
	defb 0ddh,002h,006h ;illegal sequence	;69fc
	ld h,d			;69ff
	nop			;6a00
	cp d			;6a01
	sbc a,b			;6a02
	sub b			;6a03
	jr nz,l6a0ah		;6a04
	djnz l69d0h		;6a06
	dec de			;6a08
l6a09h:
	rla			;6a09
l6a0ah:
	ex af,af'		;6a0a
	nop			;6a0b
	add a,04ah		;6a0c
	ret po			;6a0e
	inc b			;6a0f
	push af			;6a10
	ld c,d			;6a11
	add hl,bc		;6a12
	rlc e			;6a13
	ld (de),a		;6a15
	ld l,l			;6a16
	dec bc			;6a17
	daa			;6a18
	ld l,(hl)		;6a19
	sub b			;6a1a
	ld c,049h		;6a1b
	jp z,0f0c3h		;6a1d
	dec e			;6a20
	dec b			;6a21
	adc a,b			;6a22
	xor 0ffh		;6a23
	rst 38h			;6a25
	ld a,h			;6a26
	nop			;6a27
	nop			;6a28
	cp e			;6a29
	ld a,b			;6a2a
l6a2bh:
	ld l,l			;6a2b
	sub a			;6a2c
	and h			;6a2d
	sub c			;6a2e
	and d			;6a2f
	call nc,sub_73b1h	;6a30
	ld c,0c3h		;6a33
	ld b,b			;6a35
	inc b			;6a36
	ld h,003h		;6a37
	inc sp			;6a39
	inc hl			;6a3a
	ld a,(05710h)		;6a3b
	call m,09400h		;6a3e
	sub (hl)		;6a41
	scf			;6a42
	ld bc,003a8h		;6a43
	ld c,b			;6a46
	add a,d			;6a47
	sbc a,e			;6a48
	inc l			;6a49
	ld c,d			;6a4a
	ld c,0e2h		;6a4b
	ld (bc),a		;6a4d
	jp p,0a968h		;6a4e
	dec bc			;6a51
	sub b			;6a52
	dec h			;6a53
	adc a,e			;6a54
	sub a			;6a55
	inc bc			;6a56
	inc l			;6a57
	adc a,e			;6a58
	sbc a,b			;6a59
	ld c,0c5h		;6a5a
	ld (bc),a		;6a5c
	ld c,0d7h		;6a5d
	nop			;6a5f
	pop af			;6a60
	nop			;6a61
	call sub_5f49h		;6a62
	call 038bdh		;6a65
	dec b			;6a68
	ld hl,0dce7h		;6a69
	call 03d4ch		;6a6c
	jp l607fh		;6a6f
	ld d,09ah		;6a72
	ld l,e			;6a74
	ld b,a			;6a75
	ld e,(hl)		;6a76
	ex af,af'		;6a77
	scf			;6a78
	add a,b			;6a79
	ex af,af'		;6a7a
	ld c,(hl)		;6a7b
	ld a,h			;6a7c
	ex af,af'		;6a7d
	defb 0ddh,0b2h,008h ;illegal sequence	;6a7e
	and b			;6a81
	call c,sub_5008h	;6a82
	ld (hl),b		;6a85
	inc hl			;6a86
	ld (hl),c		;6a87
	pop de			;6a88
	cp c			;6a89
	ld c,c			;6a8a
	inc sp			;6a8b
	ld (bc),a		;6a8c
	rst 20h			;6a8d
	rst 38h			;6a8e
	and 0dfh		;6a8f
	ld (02e04h),a		;6a91
	ld a,013h		;6a94
	rst 30h			;6a96
	nop			;6a97
	rst 38h			;6a98
	ld hl,l5d44h		;6a99
	ld de,l5d71h		;6a9c
	ld bc,02d56h		;6a9f
	ret nc			;6aa2
	ld (de),a		;6aa3
	ld hl,00a9eh		;6aa4
	jp (hl)			;6aa7
	ld a,(bc)		;6aa8
l6aa9h:
	ld h,l			;6aa9
	ld c,e			;6aaa
	ld a,(bc)		;6aab
	sub h			;6aac
	adc a,e			;6aad
	jr z,$-16		;6aae
	ld (de),a		;6ab0
	cpl			;6ab1
	ld (bc),a		;6ab2
	jr nc,$+4		;6ab3
	ld c,c			;6ab5
l6ab6h:
	ld sp,03302h		;6ab6
	ld (bc),a		;6ab9
	inc (hl)		;6aba
	ld (bc),a		;6abb
	inc h			;6abc
	dec (hl)		;6abd
	ld (bc),a		;6abe
	add hl,hl		;6abf
	ld (bc),a		;6ac0
	or b			;6ac1
	djnz $+110		;6ac2
	ld (002b1h),a		;6ac4
	ld e,06dh		;6ac7
	ld (l7c41h),a		;6ac9
	dec b			;6acc
	ld a,(bc)		;6acd
	ld h,e			;6ace
	ld (008a1h),a		;6acf
	inc h			;6ad2
	ccf			;6ad3
	inc d			;6ad4
	ld (hl),002h		;6ad5
	ld a,092h		;6ad7
	ld (bc),a		;6ad9
l6adah:
	dec a			;6ada
	ld (bc),a		;6adb
	dec sp			;6adc
	ld (bc),a		;6add
	ld c,c			;6ade
	inc a			;6adf
	ld (bc),a		;6ae0
	add hl,sp		;6ae1
	ld (bc),a		;6ae2
	ld a,(02402h)		;6ae3
	scf			;6ae6
	ld (bc),a		;6ae7
	ld b,d			;6ae8
	ld (bc),a		;6ae9
	ld b,e			;6aea
	adc a,e			;6aeb
	ld (bc),a		;6aec
	inc h			;6aed
	ld (hl),b		;6aee
	sub 000h		;6aef
	ld e,a			;6af1
	ld (l5ffah),a		;6af2
	ld a,05ah		;6af5
	ld a,(de)		;6af7
	ld (05d41h),a		;6af8
	or a			;6afb
	add a,b			;6afc
	sbc a,d			;6afd
	ld (hl),e		;6afe
	ld a,0fbh		;6aff
	ld (0a23bh),a		;6b01
	ld l,l			;6b04
	and h			;6b05
	inc c			;6b06
	ret nz			;6b07
	ld l,(hl)		;6b08
	ld c,042h		;6b09
	ld hl,(l6013h)		;6b0b
	ld (0042bh),a		;6b0e
	pop de			;6b11
	push de			;6b12
	dec l			;6b13
	dec hl			;6b14
	dec h			;6b15
	ex af,af'		;6b16
	ld d,d			;6b17
	ld l,00ah		;6b18
	ret p			;6b1a
	ld (hl),d		;6b1b
	ld b,b			;6b1c
	jp nc,09bf5h		;6b1d
	jr z,$+56		;6b20
	inc d			;6b22
l6b23h:
	jp p,l6313h		;6b23
	ld a,00ah		;6b26
	ld a,(hl)		;6b28
	ld e,(hl)		;6b29
sub_6b2ah:
	inc de			;6b2a
	ld (de),a		;6b2b
	ld a,e			;6b2c
	ld (hl),c		;6b2d
	call pe,0064ah		;6b2e
	jp nc,0326fh		;6b31
	sbc a,a			;6b34
	ld (hl),b		;6b35
	inc e			;6b36
	ld (hl),032h		;6b37
	push bc			;6b39
	ld c,046h		;6b3a
	ld e,a			;6b3c
l6b3dh:
	ld de,0dd8eh		;6b3d
	ld e,a			;6b40
	cp e			;6b41
	ld b,e			;6b42
l6b43h:
	sub 004h		;6b43
	sbc a,0e7h		;6b45
	add a,0f7h		;6b47
	ld d,b			;6b49
	inc h			;6b4a
	call z,032c3h		;6b4b
	ld l,0cbh		;6b4e
	jp 0c9dch		;6b50
	and h			;6b53
	ld (bc),a		;6b54
	sub c			;6b55
	ret nz			;6b56
	jp c,05f68h		;6b57
l6b5ah:
	jr c,l6b5ah		;6b5a
	inc b			;6b5c
	sbc a,e			;6b5d
	pop bc			;6b5e
	ld b,0c3h		;6b5f
	ld l,h			;6b61
	ld e,a			;6b62
	add a,0f2h		;6b63
	ld d,a			;6b65
	ld sp,hl		;6b66
	jr z,l6b6bh		;6b67
	cp 005h			;6b69
l6b6bh:
	adc a,b			;6b6b
	ld l,b			;6b6c
	jp c,08b78h		;6b6d
	or h			;6b70
	add a,d			;6b71
	dec (hl)		;6b72
	ld e,b			;6b73
	ld a,e			;6b74
	ld c,002h		;6b75
	ld c,08bh		;6b77
	add a,a			;6b79
	ld c,0a0h		;6b7a
	ld h,e			;6b7c
	dec h			;6b7d
	ld a,c			;6b7e
	ld c,051h		;6b7f
	inc bc			;6b81
	ld e,c			;6b82
	jp c,00e96h		;6b83
	ld b,(hl)		;6b86
	ld b,a			;6b87
	inc b			;6b88
	ld h,(hl)		;6b89
	ld c,0a2h		;6b8a
	inc b			;6b8c
	ld a,e			;6b8d
	jp c,00ea5h		;6b8e
	adc a,b			;6b91
l6b92h:
	sbc a,d			;6b92
	xor b			;6b93
	ld a,(hl)		;6b94
	and 01dh		;6b95
	ld c,069h		;6b97
	or h			;6b99
	ld c,018h		;6b9a
	ld a,a			;6b9c
	dec sp			;6b9d
	call z,0c30eh		;6b9e
	sub d			;6ba1
l6ba2h:
	ld c,0b4h		;6ba2
	xor h			;6ba4
	ld (hl),c		;6ba5
	ld c,02ch		;6ba6
	xor l			;6ba8
	jp nc,0041dh		;6ba9
	jr c,$+129		;6bac
	ld (l7f48h),a		;6bae
	adc a,a			;6bb1
	ld c,c			;6bb2
	ei			;6bb3
	and e			;6bb4
	add a,h			;6bb5
	inc hl			;6bb6
	ld h,b			;6bb7
	ld a,(081c8h)		;6bb8
	or a			;6bbb
	jp nz,l6090h		;6bbc
	cp (hl)			;6bbf
	cp e			;6bc0
	rst 10h			;6bc1
	pop hl			;6bc2
	ld b,a			;6bc3
	ld h,b			;6bc4
	inc h			;6bc5
	djnz l6b92h		;6bc6
	ld d,b			;6bc8
	inc b			;6bc9
	dec b			;6bca
	jp z,03b67h		;6bcb
	ld h,b			;6bce
	ret			;6bcf
	ret p			;6bd0
	ld de,01b38h		;6bd1
	ret z			;6bd4
	xor a			;6bd5
	ld l,065h		;6bd6
	adc a,h			;6bd8
	sbc a,a			;6bd9
	ld (0143ch),hl		;6bda
	ld l,h			;6bdd
	ld b,0e7h		;6bde
	inc d			;6be0
	sub d			;6be1
	adc a,c			;6be2
	ld a,(bc)		;6be3
	jr nc,l6bech		;6be4
	cp 07fh			;6be6
	ld b,0c1h		;6be8
	ld c,c			;6bea
	ld a,b			;6beb
l6bech:
	adc a,h			;6bec
	push hl			;6bed
	ret nz			;6bee
	ld a,(de)		;6bef
	ld (0dc07h),a		;6bf0
	sbc a,020h		;6bf3
	sub (hl)		;6bf5
	jp 03a27h		;6bf6
	sub a			;6bf9
	jp l443ch		;6bfa
	ld (0ca03h),a		;6bfd
	ld a,03eh		;6c00
	or h			;6c02
	ld l,(hl)		;6c03
	ret c			;6c04
	cp h			;6c05
	ld bc,03006h		;6c06
	call sub_76dfh		;6c09
	ret			;6c0c
l6c0dh:
	add hl,hl		;6c0d
	adc a,l			;6c0e
	dec a			;6c0f
	and 089h		;6c10
	sub l			;6c12
	jp 0f623h		;6c13
	ld h,b			;6c16
	dec bc			;6c17
	ld e,b			;6c18
	jp z,l56aeh		;6c19
	ex af,af'		;6c1c
	ld h,h			;6c1d
	ld c,b			;6c1e
	add a,025h		;6c1f
	jr c,$+39		;6c21
	jp z,004e5h		;6c23
	ret p			;6c26
	ex de,hl		;6c27
	ret nz			;6c28
	ld (hl),b		;6c29
	ld h,b			;6c2a
	call 002e9h		;6c2b
	ret po			;6c2e
	ld d,020h		;6c2f
	jp z,01e00h		;6c31
	ld h,c			;6c34
	ret			;6c35
	ld h,l			;6c36
	ld bc,00472h		;6c37
	ld d,c			;6c3a
	call m,0f8d7h		;6c3b
	or a			;6c3e
	ld (01e02h),hl		;6c3f
	ld b,a			;6c42
	dec b			;6c43
	daa			;6c44
	cp 05ah			;6c45
	jp m,01700h		;6c47
	ld bc,00777h		;6c4a
	inc sp			;6c4d
	inc bc			;6c4e
	ld b,l			;6c4f
	inc b			;6c50
	inc b			;6c51
	ld (hl),b		;6c52
	rlca			;6c53
	ld (hl),b		;6c54
	nop			;6c55
l6c56h:
	or b			;6c56
	ld h,b			;6c57
	dec a			;6c58
l6c59h:
	jp z,04224h		;6c59
	ld h,c			;6c5c
	inc bc			;6c5d
	sbc a,h			;6c5e
	ld (hl),e		;6c5f
	dec a			;6c60
	inc b			;6c61
	jr nc,l6ca3h		;6c62
	ld h,d			;6c64
	inc b			;6c65
	ex de,hl		;6c66
	ld h,h			;6c67
	adc a,b			;6c68
l6c69h:
	inc bc			;6c69
	call nz,0036ch		;6c6a
	call nc,0d46fh		;6c6d
	ld l,a			;6c70
	jr z,l6c0dh		;6c71
	defb 0edh ;next byte illegal after ed	;6c73
	or 00ch			;6c74
	ld bc,0a9bah		;6c76
	rst 38h			;6c79
	jr z,l6c59h		;6c7a
	and h			;6c7c
sub_6c7dh:
	call nc,0230ch		;6c7d
	ld (hl),d		;6c80
	ret			;6c81
	di			;6c82
	inc de			;6c83
	adc a,018h		;6c84
	and c			;6c86
	jr z,$-45		;6c87
	ld l,(hl)		;6c89
	ei			;6c8a
	add a,c			;6c8b
	ld h,e			;6c8c
	ld e,082h		;6c8d
	ld e,0cfh		;6c8f
	ld (de),a		;6c91
	ld sp,0041dh		;6c92
l6c95h:
	rla			;6c95
l6c96h:
	xor a			;6c96
	or l			;6c97
	rla			;6c98
	jr z,l6c96h		;6c99
	sub c			;6c9b
	add a,l			;6c9c
	sub b			;6c9d
	ld h,(hl)		;6c9e
	ld d,01bh		;6c9f
l6ca1h:
	dec (hl)		;6ca1
	dec b			;6ca2
l6ca3h:
	dec de			;6ca3
	exx			;6ca4
	dec de			;6ca5
	push hl			;6ca6
	ld l,c			;6ca7
	sbc a,e			;6ca8
	inc e			;6ca9
	rla			;6caa
	ld d,c			;6cab
	inc e			;6cac
	cp h			;6cad
	ld d,c			;6cae
	and e			;6caf
l6cb0h:
	jp nc,003d4h		;6cb0
	ret nz			;6cb3
	adc a,h			;6cb4
	call nz,00600h		;6cb5
	ld a,(bc)		;6cb8
	cp 060h			;6cb9
l6cbbh:
	jp c,l616eh		;6cbb
	ld b,01ah		;6cbe
	add hl,bc		;6cc0
	cp 068h			;6cc1
	ld b,007h		;6cc3
	inc (hl)		;6cc5
	cp 070h			;6cc6
	ld b,005h		;6cc8
	cp 068h			;6cca
	ld a,b			;6ccc
	ld b,003h		;6ccd
	cp 080h			;6ccf
	push hl			;6cd1
	dec c			;6cd2
	adc a,b			;6cd3
sub_6cd4h:
	dec de			;6cd4
	res 2,b			;6cd5
	add hl,hl		;6cd7
	sub (hl)		;6cd8
	sbc a,b			;6cd9
	ld b,08ch		;6cda
	dec bc			;6cdc
	cp 0a0h			;6cdd
	ld b,061h		;6cdf
	ld a,b			;6ce1
	ld b,(hl)		;6ce2
	ld a,(0e12bh)		;6ce3
	jr $+81			;6ce6
	ld d,d			;6ce8
	ld (hl),h		;6ce9
	di			;6cea
	ld c,d			;6ceb
	ld c,a			;6cec
	rst 38h			;6ced
	ld d,a			;6cee
	inc bc			;6cef
	jr nc,l6cbbh		;6cf0
	cp 0d8h			;6cf2
	ld a,b			;6cf4
	ld bc,07c00h		;6cf5
	ld a,(bc)		;6cf8
	sbc a,a			;6cf9
	add hl,bc		;6cfa
	rla			;6cfb
	ex af,af'		;6cfc
	ret nz			;6cfd
	rst 38h			;6cfe
	di			;6cff
	ld b,0e3h		;6d00
	dec b			;6d02
	inc b			;6d03
	jp 0ae03h		;6d04
	ld (bc),a		;6d07
	push af			;6d08
	ld bc,0defeh		;6d09
	call m,0e3c5h		;6d0c
	push de			;6d0f
	dec (hl)		;6d10
	inc bc			;6d11
l6d12h:
	call po,021c8h		;6d12
	cp b			;6d15
	dec b			;6d16
	rst 28h			;6d17
	ld bc,0fffeh		;6d18
	jp z,l6229h		;6d1b
	cp 0feh			;6d1e
	ld d,0ach		;6d20
	dec a			;6d22
	ld d,08eh		;6d23
	rst 30h			;6d25
	push hl			;6d26
	call c,02a11h		;6d27
	xor h			;6d2a
	or l			;6d2b
	ld hl,(0c903h)		;6d2c
	ld c,d			;6d2f
	inc b			;6d30
	sub l			;6d31
	adc a,c			;6d32
	add hl,bc		;6d33
	cp 0b8h			;6d34
	jp z,0a001h		;6d36
	inc a			;6d39
	ld b,b			;6d3a
	add a,e			;6d3b
	ld sp,hl		;6d3c
	ld h,c			;6d3d
	sbc hl,de		;6d3e
	ld b,c			;6d40
	ld e,l			;6d41
	ld l,h			;6d42
	ld b,c			;6d43
	rra			;6d44
	sub 00bh		;6d45
	ld b,d			;6d47
	ld sp,0b2feh		;6d48
	cp 018h			;6d4b
	ret			;6d4d
	ld b,a			;6d4e
	ld (bc),a		;6d4f
	xor b			;6d50
	inc a			;6d51
	ld b,0f1h		;6d52
	dec b			;6d54
	inc b			;6d55
	cp a			;6d56
	inc bc			;6d57
	ld (hl),a		;6d58
	ld (bc),a		;6d59
	add a,a			;6d5a
	inc c			;6d5b
	sbc a,a			;6d5c
	inc b			;6d5d
	adc a,a			;6d5e
	ld (bc),a		;6d5f
	or e			;6d60
	inc bc			;6d61
	dec d			;6d62
	scf			;6d63
	dec b			;6d64
	ld (bc),a		;6d65
	jr c,l6d6ch		;6d66
	rst 18h			;6d68
	ld (bc),a		;6d69
	ld b,02eh		;6d6a
l6d6ch:
	inc bc			;6d6c
	ret c			;6d6d
	inc b			;6d6e
	ld b,005h		;6d6f
	call c,096d9h		;6d71
	sub c			;6d74
	inc bc			;6d75
	call 06478h		;6d76
	ld a,(00bd8h)		;6d79
	or e			;6d7c
	ld b,04ch		;6d7d
	ld h,e			;6d7f
	ld a,(0118ch)		;6d80
l6d83h:
	xor l			;6d83
	ld d,c			;6d84
	inc bc			;6d85
	jp c,l79a4h		;6d86
	ld h,d			;6d89
l6d8ah:
	sbc a,e			;6d8a
	xor b			;6d8b
	ld a,000h		;6d8c
	ld (0f514h),a		;6d8e
	pop bc			;6d91
	ret nz			;6d92
	sbc a,b			;6d93
	sub e			;6d94
	dec b			;6d95
	ld a,(00996h)		;6d96
	jp 04198h		;6d99
	xor h			;6d9c
	ld d,d			;6d9d
	ld b,081h		;6d9e
	dec c			;6da0
	pop af			;6da1
	pop bc			;6da2
l6da3h:
	or a			;6da3
	inc d			;6da4
	and h			;6da5
	inc (hl)		;6da6
l6da7h:
	ld a,(bc)		;6da7
	ld (l64ech),a		;6da8
	inc bc			;6dab
	jp nz,0d360h		;6dac
	or e			;6daf
	dec bc			;6db0
	add a,007h		;6db1
	ld a,(l56c1h)		;6db3
	sub 03eh		;6db6
	dec c			;6db8
	call po,026a6h		;6db9
	ex af,af'		;6dbc
	ld hl,l40e4h		;6dbd
	call 0048bh		;6dc0
	ld a,(02a73h)		;6dc3
	ld e,l			;6dc6
	add a,0a3h		;6dc7
	ld c,l			;6dc9
	ld (hl),e		;6dca
	add hl,de		;6dcb
	ld (hl),a		;6dcc
	rlca			;6dcd
	sub e			;6dce
	inc b			;6dcf
	jp 03a29h		;6dd0
	ex (sp),hl		;6dd3
	ld hl,(00365h)		;6dd4
	dec bc			;6dd7
	cp 011h			;6dd8
	jp nz,l52bah		;6dda
	ex af,af'		;6ddd
	inc c			;6dde
	ld a,(03431h)		;6ddf
	inc l			;6de2
	ld de,018cah		;6de3
	ld sp,hl		;6de6
	call z,sub_4096h	;6de7
	pop hl			;6dea
	di			;6deb
	ld hl,0e18fh		;6dec
	add hl,sp		;6def
	sub c			;6df0
	ld sp,091a9h		;6df1
	ld e,095h		;6df4
	rlca			;6df6
	xor l			;6df7
	sub l			;6df8
	add hl,sp		;6df9
	di			;6dfa
	defb 0ddh,018h,086h ;illegal sequence	;6dfb
	add a,d			;6dfe
	djnz l6da7h		;6dff
	add a,d			;6e01
	jr l6d8ah		;6e02
	rlca			;6e04
	in a,(004h)		;6e05
	ld d,d			;6e07
	ret z			;6e08
	sub h			;6e09
	ld c,c			;6e0a
	dec l			;6e0b
	adc a,d			;6e0c
	ld de,0c1f4h		;6e0d
	ld e,c			;6e10
	inc bc			;6e11
	ld h,d			;6e12
	ret nz			;6e13
	sub c			;6e14
l6e15h:
	add hl,de		;6e15
	di			;6e16
	pop bc			;6e17
	ex af,af'		;6e18
	or (hl)			;6e19
	jr $-53			;6e1a
	ld a,e			;6e1c
	ld bc,l4fabh		;6e1d
	nop			;6e20
	ex af,af'		;6e21
	ld c,a			;6e22
	inc bc			;6e23
	cpl			;6e24
	ld b,09fh		;6e25
	ld (bc),a		;6e27
	adc a,a			;6e28
	inc b			;6e29
	ld a,001h		;6e2a
	dec sp			;6e2c
	inc b			;6e2d
	pop af			;6e2e
	inc bc			;6e2f
	jp p,0eb04h		;6e30
	dec b			;6e33
	ld b,0bfh		;6e34
	rlca			;6e36
	add hl,bc		;6e37
	rst 28h			;6e38
	ret po			;6e39
	ld bc,0453ah		;6e3a
	inc sp			;6e3d
	di			;6e3e
	sbc a,d			;6e3f
	and d			;6e40
	or d			;6e41
	call pe,0da4dh		;6e42
	and d			;6e45
	and l			;6e46
	add a,(hl)		;6e47
	inc bc			;6e48
	and 00fh		;6e49
	jp nz,0560bh		;6e4b
	inc de			;6e4e
	dec bc			;6e4f
	rla			;6e50
	add hl,sp		;6e51
	dec bc			;6e52
	dec bc			;6e53
	ld h,(hl)		;6e54
	dec a			;6e55
	dec bc			;6e56
	xor b			;6e57
	and d			;6e58
	pop hl			;6e59
	call c,006e5h		;6e5a
	and d			;6e5d
	xor 00eh		;6e5e
	and l			;6e60
	xor a			;6e61
	and c			;6e62
	ld e,c			;6e63
	ld l,025h		;6e64
	inc bc			;6e66
	ld c,(hl)		;6e67
	sub a			;6e68
	sub e			;6e69
	xor 063h		;6e6a
	sub a			;6e6c
	inc (hl)		;6e6d
	ld b,a			;6e6e
	add a,a			;6e6f
	dec d			;6e70
	jp nz,l64deh		;6e71
	jr l6e87h		;6e74
	ld a,0e2h		;6e76
	sbc a,0efh		;6e78
	ld a,006h		;6e7a
	ld a,(bc)		;6e7c
	add a,b			;6e7d
	ld b,a			;6e7e
	or 045h			;6e7f
	add a,b			;6e81
	and 0aeh		;6e82
	ld (hl),d		;6e84
l6e85h:
	add a,h			;6e85
	dec (hl)		;6e86
l6e87h:
	jp z,l6542h		;6e87
	jp p,0e2ach		;6e8a
	and c			;6e8d
	ld (bc),a		;6e8e
	ld h,l			;6e8f
	ld c,h			;6e90
	adc a,c			;6e91
	call 00cf5h		;6e92
	ld a,(03635h)		;6e95
	ld b,(hl)		;6e98
	dec (hl)		;6e99
	add a,c			;6e9a
	sbc a,l			;6e9b
	dec (hl)		;6e9c
	ld h,l			;6e9d
l6e9eh:
	ld (hl),019h		;6e9e
	cp 036h			;6ea0
	dec bc			;6ea2
	defb 0fdh,02ch ;inc iyl	;6ea3
	nop			;6ea5
	ld de,07454h		;6ea6
	ld hl,l7bc0h		;6ea9
	ld b,01dh		;6eac
	ld (bc),a		;6eae
	call 0ee36h		;6eaf
	inc bc			;6eb2
	ld h,b			;6eb3
	ld a,a			;6eb4
	ld de,0c280h		;6eb5
	sbc a,l			;6eb8
	dec c			;6eb9
	rst 28h			;6eba
	call z,0f026h		;6ebb
	ld d,l			;6ebe
	ld c,d			;6ebf
l6ec0h:
	nop			;6ec0
	rst 18h			;6ec1
	ld (hl),l		;6ec2
	call nc,04880h		;6ec3
	ccf			;6ec6
	push hl			;6ec7
	jp 08800h		;6ec8
	jp nz,09832h		;6ecb
	jp nz,0e03ah		;6ece
	jp nz,0fe74h		;6ed1
	or 0a0h			;6ed4
	ld h,(hl)		;6ed6
	ld h,l			;6ed7
	pop af			;6ed8
	ld hl,l46a0h		;6ed9
	jp m,01132h		;6edc
	ld e,0a9h		;6edf
	ld b,004h		;6ee1
	cp 0d2h			;6ee3
	xor d			;6ee5
	ex af,af'		;6ee6
	call nc,009d2h		;6ee7
	ld a,024h		;6eea
	ld (02880h),a		;6eec
	sub b			;6eef
	ld (bc),a		;6ef0
	inc h			;6ef1
	and b			;6ef2
	ld (bc),a		;6ef3
	or b			;6ef4
	ld (bc),a		;6ef5
	ret nz			;6ef6
	sub b			;6ef7
	ld (bc),a		;6ef8
	ret nc			;6ef9
	inc (hl)		;6efa
	sub d			;6efb
	jp nz,017d6h		;6efc
	ld c,032h		;6eff
	sub d			;6f01
	rlca			;6f02
	call 0d151h		;6f03
	inc c			;6f06
	jp z,l6ca1h		;6f07
	rlca			;6f0a
l6f0bh:
	adc a,d			;6f0b
l6f0ch:
	sub (hl)		;6f0c
	inc bc			;6f0d
	inc c			;6f0e
	ld b,035h		;6f0f
	ld a,(0af40h)		;6f11
	ld b,d			;6f14
	ret z			;6f15
	ld h,l			;6f16
l6f17h:
	inc bc			;6f17
	ld h,c			;6f18
	ret pe			;6f19
	inc bc			;6f1a
	or d			;6f1b
	ld h,(hl)		;6f1c
	inc bc			;6f1d
	ld de,l6762h		;6f1e
	inc bc			;6f21
	inc (hl)		;6f22
	ld l,b			;6f23
	inc bc			;6f24
	jr nc,l6f0ch		;6f25
	inc bc			;6f27
	sub (hl)		;6f28
l6f29h:
	ld l,c			;6f29
	add a,b			;6f2a
	inc bc			;6f2b
	ld d,l			;6f2c
	ld l,d			;6f2d
	jp 06a83h		;6f2e
	ld a,(l4146h)		;6f31
	cp c			;6f34
	jr nz,$+67		;6f35
	ld a,(0c23ch)		;6f37
	call c,0e065h		;6f3a
	rst 38h			;6f3d
l6f3eh:
	jp nz,0eac6h		;6f3e
	cp c			;6f41
l6f42h:
	inc b			;6f42
	ld (006b7h),hl		;6f43
	rst 0			;6f46
	xor l			;6f47
	add hl,de		;6f48
	jp m,04124h		;6f49
	ret			;6f4c
	sbc a,e			;6f4d
	ld h,c			;6f4e
	ld (0bd66h),hl		;6f4f
	call nc,0a302h		;6f52
	nop			;6f55
	ld h,a			;6f56
	ld (l6854h),a		;6f57
	ld (l6905h),a		;6f5a
	ld (0c424h),a		;6f5d
	ld l,c			;6f60
	or h			;6f61
	ld c,c			;6f62
	ld b,e			;6f63
	and c			;6f64
	and h			;6f65
	jp po,020d6h		;6f66
	xor h			;6f69
	inc b			;6f6a
	ld h,a			;6f6b
	ld hl,(0ed01h)		;6f6c
	ld e,a			;6f6f
	and 007h		;6f70
	jp z,0661ch		;6f72
	sbc a,0b1h		;6f75
	add a,003h		;6f77
	inc sp			;6f79
	jp 00505h		;6f7a
	ld d,h			;6f7d
	rst 38h			;6f7e
	add a,l			;6f7f
	rst 20h			;6f80
	rst 28h			;6f81
	dec a			;6f82
	or 005h			;6f83
	ld (bc),a		;6f85
	ld h,a			;6f86
	ld (bc),a		;6f87
	ld (bc),a		;6f88
	inc b			;6f89
	ld hl,(00103h)		;6f8a
	nop			;6f8d
	ld (hl),a		;6f8e
	ld (bc),a		;6f8f
	dec c			;6f90
	add hl,de		;6f91
	rst 0			;6f92
	ld h,034h		;6f93
	call pe,0e3ceh		;6f95
	ld e,h			;6f98
	inc bc			;6f99
	pop af			;6f9a
	ld (bc),a		;6f9b
	ld bc,0029ah		;6f9c
	rst 38h			;6f9f
	rst 28h			;6fa0
	dec b			;6fa1
	or c			;6fa2
	inc c			;6fa3
	ld (bc),a		;6fa4
	push hl			;6fa5
	inc b			;6fa6
	defb 0fdh,001h,02eh ;illegal sequence	;6fa7
	defb 0fdh,003h,00dh ;illegal sequence	;6faa
	ret m			;6fad
	add hl,de		;6fae
	rst 20h			;6faf
	ld h,040h		;6fb0
	adc a,b			;6fb2
	nop			;6fb3
	add a,b			;6fb4
	ld a,(0c78ah)		;6fb5
	sbc a,b			;6fb8
	ld c,d			;6fb9
	inc bc			;6fba
	cp 060h			;6fbb
	ld e,a			;6fbd
	ld hl,l6623h		;6fbe
	cp h			;6fc1
	sub a			;6fc2
	sub b			;6fc3
	ret			;6fc4
	call z,08e66h		;6fc5
	ex (sp),hl		;6fc8
	ld b,h			;6fc9
	add a,035h		;6fca
	ld b,a			;6fcc
	adc a,c			;6fcd
	and l			;6fce
	cpl			;6fcf
	dec h			;6fd0
	adc a,(hl)		;6fd1
	cp 002h			;6fd2
	cp d			;6fd4
	inc b			;6fd5
	jp p,0d901h		;6fd6
	ld (bc),a		;6fd9
	nop			;6fda
	call m,0d703h		;6fdb
	dec c			;6fde
	dec sp			;6fdf
	inc b			;6fe0
	add hl,de		;6fe1
	rst 0			;6fe2
	scf			;6fe3
	ld e,h			;6fe4
	inc bc			;6fe5
	add hl,sp		;6fe6
	ld (bc),a		;6fe7
	inc bc			;6fe8
	ex (sp),hl		;6fe9
	ld (bc),a		;6fea
	inc b			;6feb
	xor a			;6fec
	ld bc,0022dh		;6fed
	sbc a,l			;6ff0
	nop			;6ff1
	inc b			;6ff2
	inc bc			;6ff3
	ld (hl),d		;6ff4
	dec c			;6ff5
l6ff6h:
	nop			;6ff6
	rst 20h			;6ff7
	inc bc			;6ff8
	cpl			;6ff9
	cp (hl)			;6ffa
	inc bc			;6ffb
	ld d,e			;6ffc
	add a,b			;6ffd
	pop bc			;6ffe
	adc a,b			;6fff
	jp nc,0cab1h		;7000
	inc bc			;7003
	or c			;7004
	dec (hl)		;7005
	out (0b1h),a		;7006
	inc e			;7008
	sub c			;7009
	ld a,(hl)		;700a
	ld h,a			;700b
	or c			;700c
	call z,0e080h		;700d
	or a			;7010
	jp m,00e94h		;7011
	ld h,a			;7014
	ld a,(l5e1ah)		;7015
	or e			;7018
	ld c,b			;7019
	cp d			;701a
	and a			;701b
	sub b			;701c
	ld h,a			;701d
	bit 6,b			;701e
	ld c,048h		;7020
	jp nc,00ef0h		;7022
	sbc a,a			;7025
	add a,b			;7026
	pop hl			;7027
	rst 38h			;7028
	nop			;7029
	add a,a			;702a
	sbc a,d			;702b
	add a,c			;702c
	jp 0cf88h		;702d
	xor b			;7030
	inc bc			;7031
	rst 8			;7032
	jp nc,l67a4h		;7033
	rst 8			;7036
	jr c,l7042h		;7037
	ld c,(hl)		;7039
	ld l,b			;703a
	ld a,007h		;703b
	add a,c			;703d
	jp p,0ea9fh		;703e
	pop hl			;7041
l7042h:
	and e			;7042
	or b			;7043
	ret m			;7044
	sbc a,d			;7045
	pop af			;7046
	and d			;7047
	or b			;7048
	and e			;7049
	inc bc			;704a
	or b			;704b
	ld c,b			;704c
	ld d,l			;704d
	ld l,b			;704e
	or b			;704f
	pop hl			;7050
	rst 38h			;7051
	or b			;7052
l7053h:
	ld (de),a		;7053
	ex af,af'		;7054
	or d			;7055
	sbc a,a			;7056
	sub c			;7057
	adc a,a			;7058
	or b			;7059
	jp po,0b329h		;705a
	ld l,0a1h		;705d
	adc a,d			;705f
	or d			;7060
	inc bc			;7061
	adc a,l			;7062
	or d			;7063
	inc hl			;7064
l7065h:
	ld b,069h		;7065
	or d			;7067
	add a,e			;7068
	or d			;7069
	ld l,c			;706a
	add a,a			;706b
	ld d,d			;706c
	or e			;706d
	sbc a,c			;706e
	and a			;706f
	and b			;7070
	ld a,d			;7071
	xor d			;7072
	cp 01ah			;7073
	cp (hl)			;7075
	ccf			;7076
	adc a,e			;7077
	jp nz,0beddh		;7078
	ld hl,(0be03h)		;707b
	dec (hl)		;707e
	push bc			;707f
	cp (hl)			;7080
l7081h:
	inc e			;7081
l7082h:
	or e			;7082
	ld (hl),c		;7083
	adc a,b			;7084
	xor b			;7085
	cp (hl)			;7086
	jp pe,0bceeh		;7087
	exx			;708a
	ld a,(l68e9h)		;708b
	defb 0fdh,032h,080h ;illegal sequence	;708e
	dec b			;7091
	jp nz,l6b23h+1		;7092
	ld a,(l5d39h)		;7095
	ld l,b			;7098
	xor 0abh		;7099
	add hl,sp		;709b
	add a,b			;709c
	ld a,(bc)		;709d
l709eh:
	and e			;709e
	ld l,d			;709f
	ld c,000h		;70a0
	ld d,0ech		;70a2
sub_70a4h:
	ex af,af'		;70a4
	ld e,00ah		;70a5
	jp 008aeh		;70a7
	jr nz,l70c2h		;70aa
	ld a,(de)		;70ac
	inc d			;70ad
	ld e,0f6h		;70ae
	jp nz,03880h		;70b0
	ld e,l			;70b3
	ld a,b			;70b4
	ld (08f3ch),a		;70b5
	dec a			;70b8
	ld a,05dh		;70b9
l70bbh:
	sbc a,(hl)		;70bb
	adc a,h			;70bc
	ld e,l			;70bd
	ld l,e			;70be
	rrca			;70bf
	add a,b			;70c0
	ex af,af'		;70c1
l70c2h:
	ld a,c			;70c2
	ld (l5e16h),a		;70c3
	ld (01825h),a		;70c6
	ld e,(hl)		;70c9
	ld a,b			;70ca
	add a,d			;70cb
	rla			;70cc
	ld a,d			;70cd
	nop			;70ce
	cp 014h			;70cf
	ld d,0f8h		;70d1
	ld a,07bh		;70d3
	ld (00583h),a		;70d5
	jp nz,0833eh		;70d8
	ld (00493h),a		;70db
	cp (hl)			;70de
	or d			;70df
	add a,h			;70e0
	inc b			;70e1
	inc de			;70e2
	ld b,c			;70e3
	ld (00494h),a		;70e4
	ld hl,l59edh		;70e7
	ld h,0c2h		;70ea
l70ech:
	inc c			;70ec
	inc (hl)		;70ed
	adc a,e			;70ee
	ld e,0b5h		;70ef
	sub e			;70f1
	ld e,043h		;70f2
	ld e,0afh		;70f4
	ld b,l			;70f6
	ld e,020h		;70f7
	ld d,008h		;70f9
	ld a,b			;70fb
	sub 036h		;70fc
	dec (hl)		;70fe
	add a,d			;70ff
	rst 10h			;7100
	ld (hl),081h		;7101
l7103h:
	jp nz,0bcd7h		;7103
	inc bc			;7106
	ret p			;7107
	ret z			;7108
l7109h:
	ld b,003h		;7109
	ld b,e			;710b
	jp 08418h		;710c
	ld l,e			;710f
	rst 28h			;7110
	rla			;7111
	ld c,a			;7112
	dec b			;7113
	ld a,(l6b23h)		;7114
	add a,c			;7117
l7118h:
	ld (08003h),a		;7118
	dec de			;711b
	dec c			;711c
	ld c,h			;711d
	inc h			;711e
	and c			;711f
	dec e			;7120
	ld c,h			;7121
	and c			;7122
	inc h			;7123
	or c			;7124
	ld b,08ch		;7125
	inc bc			;7127
	ld a,(006c1h)		;7128
	or l			;712b
	inc bc			;712c
	or 024h			;712d
	ld b,0d1h		;712f
	ld b,0e1h		;7131
	ret			;7133
	ld b,003h		;7134
	xor a			;7136
	sbc a,(hl)		;7137
	jr $+60			;7138
	adc a,d			;713a
	rst 18h			;713b
	ld hl,(0a262h)		;713c
	ld c,0a2h		;713f
	dec d			;7141
	ld h,d			;7142
	or d			;7143
	ld b,0b2h		;7144
	ld b,065h		;7146
	jp nz,00306h		;7148
	sub c			;714b
	add a,(hl)		;714c
	ld b,026h		;714d
	jp nc,0e206h		;714f
	ld b,052h		;7152
	inc bc			;7154
	ld d,h			;7155
	dec sp			;7156
	ld hl,(l7c0ah)		;7157
	ld l,h			;715a
	or a			;715b
	ret z			;715c
	inc sp			;715d
	dec b			;715e
	ld (hl),03ah		;715f
	rst 28h			;7161
	call nz,0d603h		;7162
	jp c,l6ba2h		;7165
	ld hl,0def8h		;7168
	push af			;716b
	jp 08d08h		;716c
	jp (hl)			;716f
	ex af,af'		;7170
	rra			;7171
	ld hl,l5e07h		;7172
	ldd			;7175
	inc e			;7177
l7178h:
	xor 0b0h		;7178
	rra			;717a
	ld h,h			;717b
	jp c,0c102h		;717c
	ld l,e			;717f
	sub 033h		;7180
	ld (0bdebh),a		;7182
	ld b,c			;7185
	add a,06bh		;7186
	add a,007h		;7188
	or d			;718a
	pop de			;718b
	add a,b			;718c
	ld (l5dedh),a		;718d
	ld (092e9h),a		;7190
	ld (bc),a		;7193
	call m,0f802h		;7194
	ld (bc),a		;7197
	ld d,c			;7198
	dec bc			;7199
	ld c,02fh		;719a
	ld a,(00520h)		;719c
	ld (080f3h),hl		;719f
	inc b			;71a2
	ld a,02ch		;71a3
	sub b			;71a5
sub_71a6h:
	ld (00c02h),a		;71a6
	inc a			;71a9
	adc a,h			;71aa
	adc a,d			;71ab
	xor c			;71ac
	dec a			;71ad
	ld l,(hl)		;71ae
	inc bc			;71af
	ld e,a			;71b0
	call po,0b728h		;71b1
	ld bc,00d16h		;71b4
	jp z,06bffh		;71b7
l71bah:
	ld d,0fdh		;71ba
	push bc			;71bc
	ret c			;71bd
	defb 0edh ;next byte illegal after ed	;71be
	inc b			;71bf
	ld b,h			;71c0
	add a,e			;71c1
	add a,d			;71c2
	sub 038h		;71c3
	jp p,0c661h		;71c5
	djnz l71bah		;71c8
	jr l7206h		;71ca
	ld h,l			;71cc
	dec sp			;71cd
	daa			;71ce
	ld c,l			;71cf
	daa			;71d0
	ld h,c			;71d1
	ld d,c			;71d2
	add hl,hl		;71d3
	ld e,(hl)		;71d4
	dec sp			;71d5
	inc l			;71d6
	ld (03644h),a		;71d7
	adc a,h			;71da
	sub c			;71db
	inc bc			;71dc
	ld d,c			;71dd
	ld l,h			;71de
	sub 0d4h		;71df
	ld (04e3dh),a		;71e1
	sbc a,h			;71e4
	inc de			;71e5
	ld b,a			;71e6
	dec a			;71e7
	ld h,h			;71e8
	cpl			;71e9
	ld e,(hl)		;71ea
	inc c			;71eb
	add hl,bc		;71ec
	daa			;71ed
	inc c			;71ee
	ld (hl),091h		;71ef
	jr c,l7251h		;71f1
	ld de,0216ch		;71f3
	dec h			;71f6
	and d			;71f7
	rst 0			;71f8
	inc c			;71f9
	ld c,(hl)		;71fa
	ld d,00ch		;71fb
	add hl,bc		;71fd
	dec e			;71fe
	ld e,(hl)		;71ff
l7200h:
	adc a,0c4h		;7200
	dec e			;7202
	ld c,d			;7203
	inc l			;7204
	sub d			;7205
l7206h:
	ld (bc),a		;7206
l7207h:
	ret p			;7207
	ld sp,002ech		;7208
	ld c,a			;720b
	rst 38h			;720c
	ld (bc),a		;720d
	ei			;720e
	xor b			;720f
	ld hl,07b13h		;7210
	ld l,h			;7213
	ret			;7214
	sub l			;7215
	sub b			;7216
	ld a,(0c39ch)		;7217
	inc d			;721a
	or a			;721b
	ret nz			;721c
	ld a,(0f90ah)		;721d
	ld l,h			;7220
	dec b			;7221
	ld a,(0eef0h)		;7222
	xor 020h		;7225
	call p,08cf3h		;7227
	sub e			;722a
	cp e			;722b
	sub (hl)		;722c
	jp c,025d3h		;722d
	ld d,07ch		;7230
	dec h			;7232
	ret c			;7233
	daa			;7234
	call m,0afcfh		;7235
	ld d,(ix+01fh)		;7238
	dec de			;723b
	jr z,l7207h		;723c
	defb 0ddh,004h,035h ;illegal sequence	;723e
	ld (hl),037h		;7241
	jr c,l727eh		;7243
	and (hl)		;7245
	ld b,b			;7246
	ld a,(bc)		;7247
	add hl,bc		;7248
	ex af,af'		;7249
	rlca			;724a
	ld b,032h		;724b
	dec b			;724d
	inc b			;724e
	ret p			;724f
	pop bc			;7250
l7251h:
	ld b,(hl)		;7251
	or c			;7252
	ld l,h			;7253
	ld e,a			;7254
	jp (hl)			;7255
	ld b,b			;7256
	ld hl,l6cb0h+2		;7257
	and b			;725a
	ret pe			;725b
	ld b,a			;725c
	or a			;725d
	rra			;725e
	jp z,l6da3h		;725f
	sbc a,d			;7262
	ret nc			;7263
	ld a,(l6cb0h)		;7264
	and d			;7267
	rst 10h			;7268
	inc (hl)		;7269
	and l			;726a
	dec b			;726b
	ld h,d			;726c
	or c			;726d
	add hl,bc		;726e
	and a			;726f
	inc (hl)		;7270
l7271h:
	ld c,e			;7271
	ld a,(01e33h)		;7272
	ld l,l			;7275
	jr z,$+7		;7276
	jr z,l7287h		;7278
	inc bc			;727a
	call 00ab7h		;727b
l727eh:
	ld (hl),b		;727e
	ld hl,06d1fh		;727f
	ld (0fc7ch),a		;7282
	xor h			;7285
	ld d,e			;7286
l7287h:
	ld d,034h		;7287
	ld de,0153dh		;7289
	ld sp,02a96h		;728c
	ld l,(hl)		;728f
	jr z,l72cfh		;7290
	cp a			;7292
	inc c			;7293
	call c,0b975h		;7294
	adc a,l			;7297
	rst 38h			;7298
	ld l,e			;7299
	ex af,af'		;729a
	rst 0			;729b
	inc bc			;729c
	rlc (hl)		;729d
	rst 20h			;729f
	sbc a,0ach		;72a0
	cp h			;72a2
	inc b			;72a3
	ld (hl),a		;72a4
	cp d			;72a5
	cp l			;72a6
	cp a			;72a7
	ex de,hl		;72a8
	inc bc			;72a9
	rst 8			;72aa
	inc b			;72ab
	rlc l			;72ac
	xor (hl)		;72ae
	ld b,0f7h		;72af
	rst 18h			;72b1
	ex af,af'		;72b2
	nop			;72b3
	ei			;72b4
	adc a,h			;72b5
	ret z			;72b6
	xor a			;72b7
	xor h			;72b8
	inc bc			;72b9
	ret po			;72ba
	ex af,af'		;72bb
	jp nz,09eb4h		;72bc
	sub h			;72bf
	ld bc,l45f6h		;72c0
	xor d			;72c3
	ld (bc),a		;72c4
	ld b,h			;72c5
	or h			;72c6
	ld a,(011c0h)		;72c7
	ld e,0d4h		;72ca
	defb 0edh ;next byte illegal after ed	;72cc
	ld l,h			;72cd
	and d			;72ce
l72cfh:
	rst 18h			;72cf
	call 00332h		;72d0
	adc a,h			;72d3
	jp 0e542h		;72d4
	inc b			;72d7
	ld (bc),a		;72d8
	jp z,004ech		;72d9
	djnz l72e1h		;72dc
	jp z,004f3h		;72de
l72e1h:
	inc b			;72e1
	jp z,00008h		;72e2
	ld l,(hl)		;72e5
	cp 005h			;72e6
	jp z,l6e85h		;72e8
	jp 0048ch		;72eb
	ld l,(hl)		;72ee
	ret			;72ef
	ld hl,l6e9eh		;72f0
	adc a,h			;72f3
	call po,0ad06h		;72f4
	ret po			;72f7
	ld b,006h		;72f8
	inc b			;72fa
	inc b			;72fb
	push bc			;72fc
	ld a,(l6ec0h)		;72fd
	add a,0eah		;7300
	sub c			;7302
	inc b			;7303
	ld hl,011bch		;7304
	and d			;7307
	pop bc			;7308
	djnz $-16		;7309
	dec de			;730b
	ld l,h			;730c
	rrc c			;730d
	jp nz,005d0h		;730f
	jp (hl)			;7312
	ld (bc),a		;7313
	ld a,(0e714h)		;7314
	rst 38h			;7317
	or 01dh			;7318
	inc b			;731a
	di			;731b
	inc b			;731c
	out (099h),a		;731d
	ld a,088h		;731f
	ei			;7321
	inc b			;7322
	ret			;7323
	nop			;7324
	ld d,h			;7325
	inc b			;7326
	ld (hl),c		;7327
	dec b			;7328
	ld d,c			;7329
	ld bc,00030h		;732a
	sub b			;732d
	ex de,hl		;732e
	ld h,(hl)		;732f
	dec b			;7330
	inc b			;7331
	ld b,a			;7332
	dec b			;7333
	daa			;7334
	inc bc			;7335
	inc b			;7336
	out (060h),a		;7337
	rla			;7339
	ld bc,00077h		;733a
	rlca			;733d
	inc sp			;733e
	inc bc			;733f
	ld b,l			;7340
	inc b			;7341
	ld (hl),b		;7342
	rlca			;7343
	ld (hl),b		;7344
	rra			;7345
	nop			;7346
	ld d,h			;7347
	dec b			;7348
	rra			;7349
	ld l,c			;734a
	ld d,l			;734b
	ld b,01fh		;734c
	ret po			;734e
	ld b,0f8h		;734f
	rra			;7351
	ret z			;7352
	ld hl,09fdah		;7353
	call po,05d80h		;7356
	and l			;7359
	or e			;735a
	dec hl			;735b
	add a,d			;735c
	ld e,l			;735d
	adc a,c			;735e
	ld (03204h),hl		;735f
	add a,(hl)		;7362
	add a,a			;7363
	ld h,b			;7364
	sub l			;7365
	nop			;7366
	jr nz,$+5		;7367
	ld c,d			;7369
	dec d			;736a
	out (02ch),a		;736b
	dec hl			;736d
	rlca			;736e
	dec b			;736f
	inc hl			;7370
	sub b			;7371
	add a,b			;7372
	inc bc			;7373
	inc bc			;7374
	ret nz			;7375
	ex af,af'		;7376
	inc e			;7377
	jr z,l7388h		;7378
	add a,002h		;737a
l737ch:
	inc l			;737c
	inc bc			;737d
	ex af,af'		;737e
	jp c,00503h		;737f
	ret nc			;7382
	add a,h			;7383
sub_7384h:
	ld (bc),a		;7384
	jr l7389h		;7385
	ld d,(hl)		;7387
l7388h:
	and h			;7388
l7389h:
	sub c			;7389
	adc a,l			;738a
	inc e			;738b
	nop			;738c
	ld a,00eh		;738d
	or d			;738f
	ld d,(hl)		;7390
	ld c,000h		;7391
	sbc a,h			;7393
	ld c,00ah		;7394
	ld c,000h		;7396
	ld a,(06ee9h)		;7398
	inc a			;739b
	cp 046h			;739c
	ret z			;739e
	or d			;739f
	and h			;73a0
	sub a			;73a1
	ld b,b			;73a2
	ld b,l			;73a3
	jp z,l6f17h		;73a4
	adc a,(hl)		;73a7
	jp pe,00db2h		;73a8
	or h			;73ab
	ld b,d			;73ac
	ld a,b			;73ad
	ld l,a			;73ae
l73afh:
	or h			;73af
	ld d,b			;73b0
sub_73b1h:
	ld l,e			;73b1
	ld l,a			;73b2
	ld b,d			;73b3
	and 004h		;73b4
	ld c,b			;73b6
	ld l,a			;73b7
	sub 00eh		;73b8
	ld (l6f3eh),hl		;73ba
	adc a,d			;73bd
	nop			;73be
	inc hl			;73bf
	ld l,a			;73c0
	ld de,l7736h		;73c1
	ld bc,0001bh		;73c4
	inc d			;73c7
	ldir			;73c8
	ret			;73ca
	call po,00404h		;73cb
	rlca			;73ce
	dec b			;73cf
	ld bc,00101h		;73d0
	ld c,(hl)		;73d3
	inc bc			;73d4
	defb 0ddh,0a8h,002h ;illegal sequence	;73d5
	call p,0c090h		;73d8
	dec b			;73db
	dec b			;73dc
	pop af			;73dd
	ex de,hl		;73de
	rlca			;73df
	dec bc			;73e0
	nop			;73e1
	inc b			;73e2
	ld a,r			;73e3
	and 03fh		;73e5
sub_73e7h:
	add a,050h		;73e7
	inc l			;73e9
	ld (030b3h),a		;73ea
	add hl,bc		;73ed
	ld d,h			;73ee
	ld bc,l6ff6h		;73ef
	sbc a,h			;73f2
	sbc a,a			;73f3
	ld (bc),a		;73f4
	ld b,0c1h		;73f5
	ld a,0feh		;73f7
	ld (00408h),a		;73f9
	ld e,h			;73fc
	ex af,af'		;73fd
	add a,d			;73fe
	pop bc			;73ff
	ld c,(hl)		;7400
	ld a,(04719h)		;7401
	inc hl			;7404
	inc b			;7405
	ld e,d			;7406
	jp 0718eh		;7407
	or h			;740a
	ld c,d			;740b
	ld l,a			;740c
	jp po,0c3b6h		;740d
	dec b			;7410
	add a,h			;7411
	ld h,b			;7412
	ld h,h			;7413
	ld a,064h		;7414
	call 01383h		;7416
	ld b,046h		;7419
	ld a,03ch		;741b
	ld b,05ch		;741d
	add a,d			;741f
	ld b,068h		;7420
	sbc a,h			;7422
	or d			;7423
	ld sp,l786fh		;7424
	ld c,l			;7427
	ld hl,09090h		;7428
	ld de,00010h		;742b
	dec d			;742e
	ld b,007h		;742f
l7431h:
	ld a,(hl)		;7431
	call 0a700h		;7432
l7435h:
	ld l,a			;7435
	add hl,de		;7436
	djnz l7431h		;7437
	pop af			;7439
	ret			;743a
	inc c			;743b
	ex de,hl		;743c
	ld hl,06fb1h		;743d
	ld a,a			;7440
	adc a,h			;7441
l7442h:
	adc a,l			;7442
	ex af,af'		;7443
	inc h			;7444
	ld h,h			;7445
	ld h,h			;7446
	ld (hl),h		;7447
	exx			;7448
	call nz,08b66h		;7449
	ld h,b			;744c
	inc (hl)		;744d
	nop			;744e
sub_744fh:
	inc b			;744f
	adc a,l			;7450
	exx			;7451
	sbc a,b			;7452
	ld c,018h		;7453
	ld c,0c2h		;7455
	ret z			;7457
	ld c,0f7h		;7458
	pop hl			;745a
	ld bc,00a06h		;745b
	rst 38h			;745e
	ld (l7a49h),a		;745f
	exx			;7462
	dec hl			;7463
	add a,a			;7464
	adc a,h			;7465
	jp pe,0e96eh		;7466
	dec b			;7469
	ld l,a			;746a
	or a			;746b
	call nz,05ce9h		;746c
	ld b,038h		;746f
	and b			;7471
	ld b,039h		;7472
	call z,006efh		;7474
	ld b,h			;7477
	dec h			;7478
	ld b,0d3h		;7479
	ld l,a			;747b
	ld h,b			;747c
	rra			;747d
	ld d,c			;747e
	ld (hl),b		;747f
	cp (hl)			;7480
	rlca			;7481
	dec b			;7482
	cp 006h			;7483
	jp z,08e15h		;7485
	adc a,c			;7488
	ld h,l			;7489
	sub d			;748a
	ld d,l			;748b
	jp 09b11h		;748c
	inc l			;748f
	or d			;7490
	xor a			;7491
	rla			;7492
	sub c			;7493
	inc h			;7494
	add hl,de		;7495
	cp l			;7496
	and b			;7497
	ld a,(07024h)		;7498
	sub c			;749b
	jr z,l7508h		;749c
	cpl			;749e
	jr nz,l7511h		;749f
	sub l			;74a1
	ld h,h			;74a2
	inc bc			;74a3
	ret nz			;74a4
	jp nc,0338bh		;74a5
	inc (hl)		;74a8
	cp 00ch			;74a9
	adc a,l			;74ab
	ld de,0ca70h		;74ac
	ld e,d			;74af
	inc de			;74b0
	ld (01270h),hl		;74b1
	add a,d			;74b4
	ld a,(l70ech)		;74b5
	rst 20h			;74b8
	pop af			;74b9
	call pe,00010h		;74ba
	adc a,h			;74bd
	ld (hl),b		;74be
	ld a,05ah		;74bf
	ld (l709eh),a		;74c1
	rla			;74c4
	call 0717eh		;74c5
	cp b			;74c8
	ld (0188ch),a		;74c9
	ld b,e			;74cc
	or c			;74cd
	dec h			;74ce
	rla			;74cf
	jp l5917h		;74d0
	out (03dh),a		;74d3
	in a,(021h)		;74d5
	ld sp,094e7h		;74d7
	xor c			;74da
	inc de			;74db
	rrca			;74dc
	jp nz,00f98h		;74dd
	ret z			;74e0
	rra			;74e1
	inc c			;74e2
	ld a,082h		;74e3
	inc d			;74e5
	inc bc			;74e6
	ret			;74e7
sub_74e8h:
	ld h,h			;74e8
	ld bc,09f3ah		;74e9
	ld (hl),b		;74ec
	sbc a,l			;74ed
	ld d,005h		;74ee
sub_74f0h:
	add hl,bc		;74f0
	ld hl,l7fd0h		;74f1
	ld de,00996h		;74f4
l74f7h:
	ld bc,08310h		;74f7
	ld e,d			;74fa
	add a,l			;74fb
	ld a,(bc)		;74fc
	ld a,(l4cb5h)		;74fd
	xor (hl)		;7500
	ld h,l			;7501
	ld (04e05h),a		;7502
	ld (009b6h),hl		;7505
l7508h:
	jp nz,02fcah		;7508
	xor c			;750b
	inc c			;750c
	ex af,af'		;750d
	push bc			;750e
	push bc			;750f
	push hl			;7510
l7511h:
	inc b			;7511
	ret nz			;7512
	ld (0cadeh),a		;7513
	ld a,(0c947h)		;7516
	ret z			;7519
	inc sp			;751a
	ld b,045h		;751b
	ld b,089h		;751d
	sbc a,l			;751f
	ld b,e			;7520
	ld a,(037edh)		;7521
	jr nc,l74f7h		;7524
	xor d			;7526
	dec b			;7527
	scf			;7528
	ld a,e			;7529
	out (020h),a		;752a
	dec h			;752c
	ld (hl),c		;752d
	ld a,(08deeh)		;752e
	add a,a			;7531
	add a,b			;7532
	inc b			;7533
	jp z,l7118h		;7534
	ld hl,l71bah+1		;7537
	sbc a,l			;753a
	sbc a,a			;753b
	ld l,h			;753c
	xor h			;753d
	dec b			;753e
	ld (0e19dh),a		;753f
	inc c			;7542
	adc a,(hl)		;7543
	inc c			;7544
	rst 0			;7545
	inc h			;7546
	add a,d			;7547
	dec a			;7548
	inc h			;7549
	ld (hl),b		;754a
	rst 30h			;754b
	rla			;754c
	ret pe			;754d
	push hl			;754e
	inc h			;754f
	exx			;7550
	inc c			;7551
	jp 00ccah		;7552
	adc a,c			;7555
	jp m,l52cah		;7556
	dec b			;7559
	ld l,a			;755a
	nop			;755b
	dec b			;755c
	or e			;755d
	call 01872h		;755e
	ld l,h			;7561
	dec d			;7562
	dec b			;7563
	inc c			;7564
	inc h			;7565
	pop hl			;7566
	inc c			;7567
	inc sp			;7568
	inc c			;7569
	call z,sub_7a98h	;756a
	add a,b			;756d
	ld b,a			;756e
	pop bc			;756f
	ld bc,08160h		;7570
	ld (hl),b		;7573
	inc hl			;7574
	ld bc,02371h		;7575
	ld (hl),001h		;7578
	call sub_57b5h		;757a
	and c			;757d
	jr l75e2h		;757e
	ld a,(bc)		;7580
	ld (bc),a		;7581
	ld l,d			;7582
	nop			;7583
	and 0d7h		;7584
	adc a,d			;7586
	nop			;7587
	ld a,(de)		;7588
	jp nz,l7ce5h		;7589
	ld c,095h		;758c
	and 094h		;758e
	adc a,e			;7590
	ld l,e			;7591
	ld c,02ch		;7592
	dec e			;7594
	push de			;7595
	inc l			;7596
	dec e			;7597
	jp pe,0f558h		;7598
	dec e			;759b
	ld a,d			;759c
	ld e,b			;759d
	dec e			;759e
	cp l			;759f
	add a,h			;75a0
	dec e			;75a1
	ld e,(hl)		;75a2
	add a,h			;75a3
	dec e			;75a4
	or (hl)			;75a5
	and e			;75a6
	add hl,hl		;75a7
	ld (hl),0c2h		;75a8
	add a,c			;75aa
	ex af,af'		;75ab
l75ach:
	nop			;75ac
	inc c			;75ad
	ld c,0ach		;75ae
	ld e,h			;75b0
	ld c,078h		;75b1
	sub d			;75b3
	ld c,0c8h		;75b4
	di			;75b6
	jr l75ach		;75b7
	dec e			;75b9
	ld h,a			;75ba
	inc a			;75bb
	ld c,01dh		;75bc
	sub d			;75be
	daa			;75bf
	ret z			;75c0
	call m,0adb2h		;75c1
	nop			;75c4
	ld (01102h),hl		;75c5
l75c8h:
	ld bc,00112h		;75c8
	jr nz,l75cfh		;75cb
	cp l			;75cd
	sub c			;75ce
l75cfh:
	ret m			;75cf
	nop			;75d0
	ei			;75d1
	rra			;75d2
	sbc a,c			;75d3
	add hl,bc		;75d4
	ld (l590dh),a		;75d5
	ld e,d			;75d8
	ld bc,00300h		;75d9
	xor h			;75dc
	in a,(0d5h)		;75dd
	cp e			;75df
	di			;75e0
	ccf			;75e1
l75e2h:
	rst 10h			;75e2
sub_75e3h:
	rra			;75e3
	jr nz,l7605h		;75e4
	or l			;75e6
	dec b			;75e7
	rra			;75e8
	sbc a,0cch		;75e9
	ld b,043h		;75eb
	ld bc,0361fh		;75ed
sub_75f0h:
	ld bc,0111fh		;75f0
	inc c			;75f3
	inc d			;75f4
	ld (bc),a		;75f5
	inc d			;75f6
	ld bc,0b452h		;75f7
	adc a,a			;75fa
	adc a,d			;75fb
	adc a,c			;75fc
	ld hl,02301h		;75fd
	ld (bc),a		;7600
l7601h:
	ld sp,l4003h		;7601
	nop			;7604
l7605h:
	ld h,l			;7605
	rra			;7606
	adc a,e			;7607
	ld b,c			;7608
	add hl,hl		;7609
	scf			;760a
	inc l			;760b
	ld de,l5bf4h		;760c
	cp l			;760f
	ret c			;7610
	call pe,0aba3h		;7611
	or a			;7614
	ld h,b			;7615
	rra			;7616
	add hl,de		;7617
	sub h			;7618
	bit 6,h			;7619
	sbc a,(hl)		;761b
	ld hl,l5104h		;761c
	ld (bc),a		;761f
	sub h			;7620
	sbc a,(hl)		;7621
	call pe,05076h		;7622
	sub d			;7625
	or e			;7626
l7627h:
	daa			;7627
	jr nz,l764eh		;7628
	ld (bc),a		;762a
	ld de,00658h		;762b
	jr c,l7634h		;762e
	ld (00325h),hl		;7630
	ld h,a			;7633
l7634h:
	scf			;7634
	inc bc			;7635
	rra			;7636
	add hl,de		;7637
	ld b,h			;7638
	inc b			;7639
	ld c,h			;763a
	xor 00dh		;763b
	rlca			;763d
	ld (hl),e		;763e
l763fh:
	inc bc			;763f
	rra			;7640
	dec hl			;7641
	ld (hl),l		;7642
	dec b			;7643
	rlca			;7644
	rla			;7645
	rra			;7646
	sub e			;7647
	ld (hl),003h		;7648
	ld h,a			;764a
	dec e			;764b
	inc b			;764c
sub_764dh:
	rra			;764d
l764eh:
	sbc a,e			;764e
	halt			;764f
	ld b,01fh		;7650
	dec b			;7652
	inc sp			;7653
l7654h:
	ld (hl),h		;7654
	rla			;7655
	rra			;7656
	sbc a,d			;7657
	dec de			;7658
	rlca			;7659
	dec sp			;765a
	ld d,a			;765b
	dec b			;765c
	rra			;765d
	cp (hl)			;765e
	rlca			;765f
	ld bc,0e2fch		;7660
	ld sp,017c2h		;7663
	or 0c7h			;7666
	dec d			;7668
	sbc a,e			;7669
	ld (hl),e		;766a
sub_766bh:
	pop de			;766b
	nop			;766c
	ret z			;766d
	or a			;766e
	ld b,0ffh		;766f
	jp z,l73afh		;7671
sub_7674h:
	ld e,b			;7674
	ld b,08eh		;7675
	sbc a,d			;7677
	ld c,073h		;7678
	add a,b			;767a
	cp 0ffh			;767b
	or c			;767d
	add a,c			;767e
	ld a,(bc)		;767f
	jp z,073d6h		;7680
	ld (00b0bh),a		;7683
	ld a,(l5d37h)		;7686
	sbc a,l			;7689
l768ah:
	inc de			;768a
	ld a,b			;768b
	djnz l764eh		;768c
	rla			;768e
	ld (hl),0f2h		;768f
	nop			;7691
	ret nz			;7692
	call sub_744fh		;7693
	ld a,013h		;7696
	ld (0eaf1h),a		;7698
	or a			;769b
	or b			;769c
	jp z,0b535h		;769d
	and b			;76a0
	ret nc			;76a1
	jp 0a4feh		;76a2
	ld bc,021d0h		;76a5
	ld b,d			;76a8
	ld (hl),d		;76a9
	jp l7654h		;76aa
	dec bc			;76ad
	ret z			;76ae
	ld a,(0c157h)		;76af
	or b			;76b2
	ld c,e			;76b3
	ld hl,(l7a21h)		;76b4
sub_76b7h:
	ld de,0da72h		;76b7
	cp 005h			;76ba
	ld e,d			;76bc
	ld (hl),d		;76bd
	add a,c			;76be
	ld h,l			;76bf
	add a,h			;76c0
	ld e,b			;76c1
	inc c			;76c2
	dec a			;76c3
	rlca			;76c4
	jp z,l7442h		;76c5
	ld hl,0069ah		;76c8
	ld l,0bah		;76cb
	ld b,05ch		;76cd
	jp c,0b906h		;76cf
	jp m,03806h		;76d2
	ld a,(de)		;76d5
	ld (hl),e		;76d6
	ld b,072h		;76d7
sub_76d9h:
	ld a,(l5a06h)		;76d9
	push hl			;76dc
	ld b,07ah		;76dd
sub_76dfh:
	ld b,0c5h		;76df
	ld l,e			;76e1
	and (hl)		;76e2
	jp z,08090h		;76e3
	inc bc			;76e6
	ld c,09ah		;76e7
	jp 005b4h		;76e9
	xor a			;76ec
	push af			;76ed
	cp l			;76ee
	inc b			;76ef
	ld d,03fh		;76f0
	ld h,c			;76f2
	ld h,c			;76f3
	ret nz			;76f4
	nop			;76f5
	ld h,c			;76f6
	add a,b			;76f7
	nop			;76f8
	ex af,af'		;76f9
	ld l,h			;76fa
	ld e,h			;76fb
	ld (de),a		;76fc
	xor 0a9h		;76fd
	sub b			;76ff
l7700h:
	add a,a			;7700
	add a,b			;7701
	add a,b			;7702
	call 0040fh		;7703
l7706h:
	nop			;7706
	ld h,b			;7707
	ld d,b			;7708
	ld c,b			;7709
	ld d,(hl)		;770a
	ld sp,hl		;770b
l770ch:
	inc e			;770c
l770dh:
	ld h,d			;770d
	out (020h),a		;770e
	jp 000a1h		;7710
	out (0d3h),a		;7713
	or e			;7715
	djnz $+6		;7716
	sbc a,b			;7718
	ret pe			;7719
	call pe,sub_7674h	;771a
	ld e,040h		;771d
	jr z,$+66		;771f
	and b			;7721
	nop			;7722
	inc b			;7723
	ld h,b			;7724
	and b			;7725
	nop			;7726
	add a,b			;7727
	ret po			;7728
	ret p			;7729
	ret m			;772a
	sbc a,(hl)		;772b
	ld c,l			;772c
	and l			;772d
	out (000h),a		;772e
	ld d,c			;7730
	add hl,hl		;7731
	jp pe,0a5cah		;7732
	ex de,hl		;7735
l7736h:
	push de			;7736
	cp d			;7737
	nop			;7738
	ld d,a			;7739
	ld l,b			;773a
	inc e			;773b
	inc e			;773c
	inc c			;773d
	rst 8			;773e
	add a,a			;773f
	add a,e			;7740
	ld bc,01426h		;7741
	ld c,h			;7744
	add a,0c3h		;7745
	add a,e			;7747
	add a,d			;7748
l7749h:
	ld sp,hl		;7749
	and d			;774a
	ex af,af'		;774b
	ret c			;774c
	ld h,b			;774d
	ld d,b			;774e
	or d			;774f
	jp m,080ffh		;7750
	nop			;7753
	dec (hl)		;7754
	dec (hl)		;7755
	ld e,d			;7756
	inc e			;7757
	ld l,047h		;7758
	ld c,(hl)		;775a
	jr nz,$+1		;775b
	add a,b			;775d
	sbc a,(hl)		;775e
	call 0f4e2h		;775f
	ret c			;7762
	adc a,b			;7763
	inc b			;7764
	ld c,c			;7765
	ld (bc),a		;7766
	ret p			;7767
	ld e,010h		;7768
	djnz l770ch		;776a
	ld c,d			;776c
	ld bc,00c07h		;776d
	ld bc,0180ch		;7770
	jr l770dh		;7773
	call z,sub_74e8h	;7775
	ret p			;7778
	ld d,b			;7779
	or l			;777a
	ld (hl),c		;777b
	ld l,005h		;777c
	sbc a,d			;777e
	nop			;777f
	ret po			;7780
	jr nc,$+50		;7781
	rrca			;7783
	inc de			;7784
	jr nz,l778fh		;7785
	ld bc,02e14h		;7787
	ld hl,002efh		;778a
	rst 38h			;778d
	ld (bc),a		;778e
l778fh:
	inc c			;778f
	ld a,(de)		;7790
	ld a,(de)		;7791
	inc (hl)		;7792
	nop			;7793
	nop			;7794
	ld a,(de)		;7795
	cp h			;7796
	sbc a,b			;7797
	ret m			;7798
	jr l77f9h		;7799
	sbc a,(hl)		;779b
	rst 10h			;779c
	ld b,077h		;779d
	add a,b			;779f
	ld d,b			;77a0
	ld l,b			;77a1
	ld l,b			;77a2
	ld c,028h		;77a3
	jr l77c5h		;77a5
	ccf			;77a7
	jr l77c8h		;77a8
	nop			;77aa
	ld e,(hl)		;77ab
	dec d			;77ac
	ld (l4d12h),hl		;77ad
	sbc a,l			;77b0
	defb 0ddh,026h,00dh ;ld ixh,00dh	;77b1
	call m,02e5eh		;77b4
	dec bc			;77b7
	jp pe,0039fh		;77b8
	adc a,e			;77bb
	add a,b			;77bc
	inc de			;77bd
	ld d,014h		;77be
	ld l,b			;77c0
	ret c			;77c1
	add a,c			;77c2
	nop			;77c3
	ld a,h			;77c4
l77c5h:
	xor h			;77c5
	ld h,d			;77c6
	add a,(hl)		;77c7
l77c8h:
	and 0f7h		;77c8
	ld d,c			;77ca
	add a,l			;77cb
	ld (bc),a		;77cc
l77cdh:
	ld a,l			;77cd
	add a,b			;77ce
	ld h,a			;77cf
	ld h,0dbh		;77d0
	add a,e			;77d2
l77d3h:
	ld h,c			;77d3
	ld d,(hl)		;77d4
	ld hl,01e72h		;77d5
	ld a,a			;77d8
	add a,b			;77d9
	call c,0b0f8h		;77da
	and b			;77dd
	jr nz,l7800h		;77de
	adc a,b			;77e0
	inc b			;77e1
	ret z			;77e2
	call nz,00464h		;77e3
	add a,h			;77e6
	or (hl)			;77e7
	jp z,0b805h		;77e8
	ret nc			;77eb
	ld (hl),b		;77ec
	ld (hl),c		;77ed
	ld a,a			;77ee
	daa			;77ef
	add a,c			;77f0
	inc a			;77f1
	inc bc			;77f2
	ld (bc),a		;77f3
	ld c,01fh		;77f4
	ld c,00dh		;77f6
	inc b			;77f8
l77f9h:
	ld (hl),b		;77f9
l77fah:
	ret m			;77fa
	ld (hl),b		;77fb
	ld b,b			;77fc
	ei			;77fd
	ld h,b			;77fe
	ld h,h			;77ff
l7800h:
	cp 08eh			;7800
	ld l,(hl)		;7802
	ld c,0b1h		;7803
	call nc,03192h		;7805
	ld (bc),a		;7808
	ld e,b			;7809
sub_780ah:
	adc a,b			;780a
	adc a,c			;780b
	add a,b			;780c
	call nc,03d66h		;780d
	ld (bc),a		;7810
	inc e			;7811
l7812h:
	ld sp,01120h		;7812
	rrca			;7815
	ret p			;7816
	cp e			;7817
	ld (0388ch),hl		;7818
	sbc a,h			;781b
	ld b,b			;781c
	ld h,(hl)		;781d
	ld l,e			;781e
	pop bc			;781f
	sub c			;7820
	dec e			;7821
	ld de,08c1ah		;7822
	call po,0ec55h		;7825
	ld d,(hl)		;7828
	add a,a			;7829
	ld bc,08463h		;782a
	rst 0			;782d
	ld h,e			;782e
	ld bc,0090bh		;782f
	add a,b			;7832
	cp e			;7833
	ld d,b			;7834
	add a,b			;7835
	add a,07fh		;7836
	ld l,a			;7838
	ld h,(hl)		;7839
	add a,006h		;783a
	dec bc			;783c
	ld d,l			;783d
	xor d			;783e
	ld a,b			;783f
	nop			;7840
	nop			;7841
	ld h,c			;7842
l7843h:
	sub b			;7843
	inc b			;7844
	ld b,093h		;7845
	ld h,c			;7847
	ld l,d			;7848
	nop			;7849
	dec bc			;784a
l784bh:
	ld b,b			;784b
	ld a,e			;784c
	sub b			;784d
	sub l			;784e
	add a,(hl)		;784f
	ret			;7850
	rlca			;7851
	ld h,b			;7852
	ld h,b			;7853
	ret			;7854
	add a,(hl)		;7855
sub_7856h:
	nop			;7856
	dec bc			;7857
	add hl,de		;7858
	ld (hl),h		;7859
	sbc a,c			;785a
	rla			;785b
	and b			;785c
	ld b,c			;785d
	ld h,07fh		;785e
	ld (hl),c		;7860
	ld (hl),b		;7861
	add a,a			;7862
	ld a,l			;7863
	ld bc,00e04h		;7864
	adc a,(hl)		;7867
	cp 064h			;7868
	ld h,b			;786a
	dec sp			;786b
	inc hl			;786c
	ld b,b			;786d
	adc a,d			;786e
l786fh:
	nop			;786f
	nop			;7870
	rrca			;7871
	ld de,03120h		;7872
	inc e			;7875
	add a,b			;7876
	ld e,d			;7877
	ld h,h			;7878
	sub 083h		;7879
	adc a,c			;787b
	adc a,b			;787c
	ld e,b			;787d
	daa			;787e
	ld sp,09e01h		;787f
l7882h:
	nop			;7882
	adc a,h			;7883
	ld a,(de)		;7884
	ld de,0c191h		;7885
	ld l,e			;7888
	ld b,b			;7889
	ld h,(hl)		;788a
	ld e,d			;788b
	jr c,$-114		;788c
	inc b			;788e
	adc a,b			;788f
	ret p			;7890
	call p,017c8h		;7891
	inc a			;7894
	jr c,l78aeh		;7895
	ccf			;7897
	add a,b			;7898
	ld b,c			;7899
	dec e			;789a
	inc a			;789b
	inc a			;789c
	jr l78ddh		;789d
	or b			;789f
	rrca			;78a0
	inc e			;78a1
	xor b			;78a2
	ret po			;78a3
	adc a,(hl)		;78a4
	ld e,a			;78a5
l78a6h:
	ret nz			;78a6
	ret m			;78a7
	rrca			;78a8
	ld b,b			;78a9
l78aah:
	inc e			;78aa
	ld h,042h		;78ab
	ld b,h			;78ad
l78aeh:
	ld l,c			;78ae
	jr nc,$-126		;78af
	ld a,a			;78b1
	inc sp			;78b2
	ld h,c			;78b3
	ld b,b			;78b4
	ld b,d			;78b5
	ld h,01ch		;78b6
	add a,b			;78b8
	rrca			;78b9
	jr c,l7920h		;78ba
	ld b,d			;78bc
	ld (0cc96h),hl		;78bd
	add a,b			;78c0
	rra			;78c1
	call z,00286h		;78c2
	ld b,d			;78c5
	ld h,h			;78c6
	jr c,l78aah		;78c7
	rst 38h			;78c9
	ld a,(bc)		;78ca
	sub d			;78cb
	ld c,(hl)		;78cc
	rlca			;78cd
	outi			;78ce
l78d0h:
	ld bc,0fbcah		;78d0
	xor b			;78d3
	sbc a,l			;78d4
	ld b,l			;78d5
	pop bc			;78d6
	ld d,l			;78d7
	or a			;78d8
	or (hl)			;78d9
	xor a			;78da
	ld h,a			;78db
	sub e			;78dc
l78ddh:
	dec d			;78dd
	inc bc			;78de
	rlca			;78df
	sub a			;78e0
	ld h,(hl)		;78e1
	ld b,068h		;78e2
	or l			;78e4
	ld (hl),a		;78e5
l78e6h:
	call p,000f4h		;78e6
	ld b,030h		;78e9
	call sub_76d9h		;78eb
	inc hl			;78ee
	inc de			;78ef
	djnz l7904h		;78f0
	ld sp,hl		;78f2
	ld hl,00e36h		;78f3
	ld h,(hl)		;78f6
	ld c,018h		;78f7
	djnz l7979h		;78f9
	add a,a			;78fb
	nop			;78fc
	inc hl			;78fd
	inc b			;78fe
	inc hl			;78ff
	ld c,(hl)		;7900
	add a,c			;7901
l7902h:
	dec hl			;7902
	ld c,(hl)		;7903
l7904h:
	dec b			;7904
	ld (de),a		;7905
l7906h:
	ld hl,07913h		;7906
l7909h:
	ld (bc),a		;7909
	djnz $-18		;790a
	ld hl,l7e18h		;790c
	cp l			;790f
	sub h			;7910
	sbc a,b			;7911
	jp 0033eh		;7912
	ret nz			;7915
	or e			;7916
	ld (hl),b		;7917
	dec b			;7918
	rst 38h			;7919
	ld d,d			;791a
	ld d,d			;791b
	jr nc,$+8		;791c
	ld d,b			;791e
	dec (hl)		;791f
l7920h:
	xor a			;7920
	inc hl			;7921
l7922h:
	nop			;7922
	djnz l7922h		;7923
	ret			;7925
	ld a,(de)		;7926
	cp (hl)			;7927
	ret z			;7928
	inc a			;7929
	ld (de),a		;792a
	ld a,e			;792b
	ret			;792c
	ld h,b			;792d
	ld b,l			;792e
l792fh:
	dec de			;792f
	ld a,(hl)		;7930
	dec a			;7931
	xor l			;7932
	sbc a,b			;7933
l7934h:
	or l			;7934
	djnz l78e6h		;7935
	ld (hl),a		;7937
	ld (0cdf5h),hl		;7938
	sbc a,e			;793b
	ld (hl),b		;793c
	halt			;793d
	jr c,l7909h		;793e
	sub d			;7940
	xor e			;7941
	ret c			;7942
	ret			;7943
	or h			;7944
	rst 18h			;7945
	jp po,08bf0h		;7946
	ld sp,hl		;7949
	pop af			;794a
	push hl			;794b
	inc b			;794c
	ld (de),a		;794d
	sbc a,c			;794e
	add a,a			;794f
	jp po,010e6h		;7950
	pop de			;7953
	ret nc			;7954
	nop			;7955
	adc a,c			;7956
	inc bc			;7957
	nop			;7958
	inc b			;7959
	ret m			;795a
	call p,00007h		;795b
	cp a			;795e
	ld bc,09100h		;795f
	ld (0b521h),hl		;7962
	ex de,hl		;7965
	ld c,0a8h		;7966
	ld d,l			;7968
	ld bc,0dd0ch		;7969
l796ch:
	ret nz			;796c
	ld a,0feh		;796d
	ld (l7081h),a		;796f
	ld d,a			;7972
	sbc a,c			;7973
l7974h:
	pop bc			;7974
	ret p			;7975
	djnz l79f1h		;7976
	ret			;7978
l7979h:
	inc e			;7979
	or (hl)			;797a
l797bh:
	ret			;797b
	inc e			;797c
	push hl			;797d
	ret nz			;797e
	ld h,b			;797f
	pop bc			;7980
l7981h:
	ld a,006h		;7981
	nop			;7983
	ld (0c238h),a		;7984
	ld (0c23ch),a		;7987
	ld a,002h		;798a
	rrc h			;798c
	ld sp,hl		;798e
l798fh:
	inc c			;798f
	ld d,l			;7990
	ld de,080dbh		;7991
	add hl,de		;7994
	ld e,(hl)		;7995
	ld d,000h		;7996
	push hl			;7998
	ld hl,0db20h		;7999
	ld (hl),a		;799c
	rlca			;799d
	inc hl			;799e
	ld d,(hl)		;799f
	pop hl			;79a0
	push de			;79a1
	nop			;79a2
	ret			;79a3
l79a4h:
	ld b,b			;79a4
	ld a,b			;79a5
	and e			;79a6
	ld a,b			;79a7
	dec de			;79a8
	ld a,d			;79a9
	jr z,l79ach		;79aa
l79ach:
	ld a,e			;79ac
	ld h,e			;79ad
	ld a,e			;79ae
	ret z			;79af
	ld a,e			;79b0
	and a			;79b1
	ld a,h			;79b2
	dec (hl)		;79b3
	nop			;79b4
	ld a,b			;79b5
	ld e,h			;79b6
l79b7h:
	ld a,h			;79b7
	rla			;79b8
	ld a,l			;79b9
	dec h			;79ba
l79bbh:
	ld a,l			;79bb
l79bch:
	or e			;79bc
	ld bc,l507dh		;79bd
	ld a,h			;79c0
	or 07dh			;79c1
	rla			;79c3
	ld a,(hl)		;79c4
	rst 0			;79c5
	jr nz,$-101		;79c6
	ld a,c			;79c8
	ld de,0034fh		;79c9
	inc sp			;79cc
	ld a,(hl)		;79cd
	cp l			;79ce
	ld bc,l7812h		;79cf
	ld a,(0c148h)		;79d2
	call sub_49e4h		;79d5
	jp z,01124h		;79d8
l79dbh:
	ld a,b			;79db
	sbc a,c			;79dc
	nop			;79dd
l79deh:
	sbc hl,de		;79de
	ret			;79e0
	ret			;79e1
	ld b,07fh		;79e2
	jp 0001dh		;79e4
	ld a,b			;79e7
	ld b,03fh		;79e8
l79eah:
	push hl			;79ea
	ld a,(hl)		;79eb
	add a,002h		;79ec
	and b			;79ee
	nop			;79ef
	ld (hl),a		;79f0
l79f1h:
	ld h,000h		;79f1
	ld l,a			;79f3
	add hl,de		;79f4
	ld b,(hl)		;79f5
	inc hl			;79f6
	ld a,(hl)		;79f7
	jr nz,l79dbh		;79f8
	dec hl			;79fa
	nop			;79fb
	add a,(hl)		;79fc
	ld (hl),a		;79fd
	dec hl			;79fe
	ld a,(hl)		;79ff
	jr $-126		;7a00
	ld (hl),a		;7a02
	ret			;7a03
	add hl,bc		;7a04
l7a05h:
	ld (hl),020h		;7a05
	nop			;7a07
	inc hl			;7a08
	nop			;7a09
	jp l7843h		;7a0a
	call 0fd60h		;7a0d
	ld (de),a		;7a10
	dec a			;7a11
l7a12h:
	ld (hl),a		;7a12
	jp nz,l4f01h		;7a13
	ld a,b			;7a16
	ld (hl),00ah		;7a17
	dec hl			;7a19
	inc (hl)		;7a1a
	inc hl			;7a1b
	and d			;7a1c
	ld sp,0462bh		;7a1d
	inc e			;7a20
l7a21h:
	ld a,(hl)		;7a21
	ret z			;7a22
	nop			;7a23
	ccf			;7a24
	call z,sub_7e5eh	;7a25
	ld a,(hl)		;7a28
	add a,c			;7a29
	ld (hl),a		;7a2a
l7a2bh:
	rlca			;7a2b
	cp 0d7h			;7a2c
	jp nc,07869h		;7a2e
	inc sp			;7a31
	jr l7a62h		;7a32
	ld a,(hl)		;7a34
	ld d,0b7h		;7a35
	jp p,06a9eh		;7a37
	add a,e			;7a3a
	ld l,b			;7a3b
	jp nc,0787ah		;7a3c
	nop			;7a3f
	inc a			;7a40
	add a,a			;7a41
	cp 006h			;7a42
	jp c,l7882h		;7a44
	ld a,014h		;7a47
l7a49h:
	dec b			;7a49
	neg			;7a4a
	ld (hl),d		;7a4c
	cpl			;7a4d
	ld a,a			;7a4e
	add hl,de		;7a4f
	add a,022h		;7a50
	dec hl			;7a52
	nop			;7a53
	jr nc,l7a88h		;7a54
	ld h,c			;7a56
	jp (hl)			;7a57
	ld h,0d2h		;7a58
	sbc a,c			;7a5a
	ld a,e			;7a5b
	ld bc,l792fh		;7a5c
	sub a			;7a5f
	ld (de),a		;7a60
	xor l			;7a61
l7a62h:
	ret			;7a62
	ld e,a			;7a63
	ld (0b5cah),hl		;7a64
	sbc a,c			;7a67
	ld c,l			;7a68
	ld de,09ba3h		;7a69
	djnz l7aech		;7a6c
	sub 004h		;7a6e
	jp 0364bh		;7a70
	ld e,00dh		;7a73
	sbc a,h			;7a75
	jr c,l7aa8h		;7a76
	rra			;7a78
	add a,085h		;7a79
	ret nz			;7a7b
	ld b,001h		;7a7c
	jp z,l78d0h		;7a7e
	inc bc			;7a81
	ld a,b			;7a82
	add a,066h		;7a83
	ld b,a			;7a85
	ld (hl),b		;7a86
	dec hl			;7a87
l7a88h:
	and 0f5h		;7a88
	rst 38h			;7a8a
	inc bc			;7a8b
	pop hl			;7a8c
	dec b			;7a8d
	call c,0fe01h		;7a8e
	ex de,hl		;7a91
	rlca			;7a92
	ld de,0015eh		;7a93
	inc bc			;7a96
	dec e			;7a97
sub_7a98h:
	dec b			;7a98
	adc a,001h		;7a99
l7a9bh:
	ld (bc),a		;7a9b
	rlca			;7a9c
	sub c			;7a9d
	ld bc,01172h		;7a9e
	out (0d7h),a		;7aa1
	ld (de),a		;7aa3
	dec de			;7aa4
	xor c			;7aa5
	inc hl			;7aa6
	inc h			;7aa7
l7aa8h:
	ld (hl),b		;7aa8
	sbc a,a			;7aa9
	ld b,e			;7aaa
	ld l,079h		;7aab
	ld e,h			;7aad
	ex af,af'		;7aae
	rst 38h			;7aaf
	jp nz,02306h		;7ab0
	call sub_4322h		;7ab3
	ld a,(hl)		;7ab6
	adc a,c			;7ab7
	sub b			;7ab8
	and l			;7ab9
	jp nz,l4646h		;7aba
	ld a,c			;7abd
	jp z,0ee91h		;7abe
	ld (bc),a		;7ac1
	rst 30h			;7ac2
	add a,l			;7ac3
	xor 008h		;7ac4
	inc b			;7ac6
	adc a,d			;7ac7
	jr z,l7aebh		;7ac8
	ld l,d			;7aca
	inc hl			;7acb
	ld hl,(08206h)		;7acc
	jr nz,l7b2ch		;7acf
	ld a,c			;7ad1
	ld a,(01588h)		;7ad2
	ld a,c			;7ad5
	inc a			;7ad6
	and 088h		;7ad7
	ld b,d			;7ad9
	dec b			;7ada
	add a,001h		;7adb
	ld b,a			;7add
	push af			;7ade
l7adfh:
	jr nc,l7adfh		;7adf
	sbc a,a			;7ae1
	ld bc,0fed8h		;7ae2
	and (hl)		;7ae5
	jp z,l796ch		;7ae6
	ret nc			;7ae9
	ld b,h			;7aea
l7aebh:
	add a,h			;7aeb
l7aech:
	inc bc			;7aec
	ret nz			;7aed
	dec (hl)		;7aee
	add a,004h		;7aef
	dec bc			;7af1
	ld (0798dh),a		;7af2
	ld (hl),061h		;7af5
	ld a,(0f600h)		;7af7
	rst 38h			;7afa
	add a,(hl)		;7afb
	add a,004h		;7afc
	ld (l798fh),a		;7afe
	sbc a,b			;7b01
	xor (hl)		;7b02
	adc a,c			;7b03
	ld a,c			;7b04
	ld e,h			;7b05
	call 0e1e1h		;7b06
	adc a,e			;7b09
	or h			;7b0a
	add a,d			;7b0b
	jp po,00258h		;7b0c
	adc a,c			;7b0f
	sub l			;7b10
	ld a,(bc)		;7b11
	ld bc,00090h		;7b12
	sbc a,b			;7b15
	nop			;7b16
	ld a,(01658h)		;7b17
	sbc a,a			;7b1a
	jr z,l7b65h		;7b1b
	rrca			;7b1d
	xor d			;7b1e
	jr z,$+26		;7b1f
	ld b,03ah		;7b21
	ld e,e			;7b23
	add hl,bc		;7b24
	dec b			;7b25
	xor h			;7b26
	sbc a,08ah		;7b27
	ld h,h			;7b29
	inc hl			;7b2a
	ld b,(hl)		;7b2b
l7b2ch:
	jp p,l7981h		;7b2c
	cp b			;7b2f
	jp z,l79bch		;7b30
	dec c			;7b33
	add a,c			;7b34
	out (06fh),a		;7b35
	ld a,b			;7b37
	ld (0000ch),a		;7b38
	ld a,(hl)		;7b3b
	cp 050h			;7b3c
	jp nc,l79deh		;7b3e
	dec hl			;7b41
l7b42h:
	sub h			;7b42
	and e			;7b43
	inc e			;7b44
	jp z,l79eah		;7b45
	sub (hl)		;7b48
	rlca			;7b49
	jp nz,079d9h		;7b4a
	push af			;7b4d
	add hl,hl		;7b4e
	ld a,(bc)		;7b4f
	pop af			;7b50
	pop hl			;7b51
	and h			;7b52
	and l			;7b53
	add hl,hl		;7b54
	rst 38h			;7b55
	xor a			;7b56
	sub l			;7b57
	inc h			;7b58
	and l			;7b59
	ld de,09e3ah		;7b5a
	ld (hl),b		;7b5d
l7b5eh:
	and a			;7b5e
	dec h			;7b5f
	ret			;7b60
	or c			;7b61
	sbc a,c			;7b62
	rst 28h			;7b63
	dec c			;7b64
l7b65h:
	call 04b0fh		;7b65
	ld d,c			;7b68
	ld b,0c0h		;7b69
	rst 20h			;7b6b
	ld b,d			;7b6c
	ex af,af'		;7b6d
	inc b			;7b6e
	pop hl			;7b6f
	jp po,00407h		;7b70
	ld b,b			;7b73
	ld c,096h		;7b74
	jp 0e932h		;7b76
	ld l,(hl)		;7b79
	inc bc			;7b7a
	ld a,024h		;7b7b
	ld hl,0c280h		;7b7d
	ld de,l4bd1h		;7b80
	rst 30h			;7b83
	xor b			;7b84
	jp nz,01025h		;7b85
	call m,022f7h		;7b88
	cp 012h			;7b8b
	adc a,c			;7b8d
	ld a,d			;7b8e
	ld b,(hl)		;7b8f
	ld b,03ch		;7b90
	cp e			;7b92
	add hl,hl		;7b93
	ret po			;7b94
	add a,h			;7b95
	inc sp			;7b96
l7b97h:
	ld a,d			;7b97
	dec hl			;7b98
	ret p			;7b99
	ld (hl),c		;7b9a
	ld d,(hl)		;7b9b
	ld b,(hl)		;7b9c
	cp l			;7b9d
	ld c,h			;7b9e
	jp nz,01090h		;7b9f
	jp nc,07a7fh		;7ba2
	ld a,e			;7ba5
	jr z,$-60		;7ba6
	ld c,e			;7ba8
	ld c,(hl)		;7ba9
	ld a,d			;7baa
	call pe,006e1h		;7bab
	ld (hl),0ceh		;7bae
	ld c,08ah		;7bb0
	jp z,08e14h		;7bb2
	ld b,b			;7bb5
	di			;7bb6
	inc hl			;7bb7
	inc a			;7bb8
	ld (hl),a		;7bb9
	ld (de),a		;7bba
	ld a,(0c1f2h)		;7bbb
	add a,(hl)		;7bbe
	inc h			;7bbf
l7bc0h:
	ld b,0b7h		;7bc0
	jp z,08d0fh		;7bc2
	ld h,b			;7bc5
	dec hl			;7bc6
	ret nz			;7bc7
	sbc a,d			;7bc8
	cp b			;7bc9
	add a,d			;7bca
	and 023h		;7bcb
	inc b			;7bcd
	adc a,c			;7bce
	call sub_7e55h		;7bcf
	add a,a			;7bd2
	dec hl			;7bd3
	ld b,04ch		;7bd4
	inc b			;7bd6
	add hl,hl		;7bd7
	ret			;7bd8
	dec h			;7bd9
	and l			;7bda
	add hl,hl		;7bdb
	sbc a,a			;7bdc
	adc a,c			;7bdd
	jp 09ce1h		;7bde
	ld b,(hl)		;7be1
	ld c,d			;7be2
	cp 04ah			;7be3
	jp nc,00261h		;7be5
	ex af,af'		;7be8
	ret			;7be9
	cp a			;7bea
	rla			;7beb
	dec bc			;7bec
	ex af,af'		;7bed
	exx			;7bee
	ld (bc),a		;7bef
sub_7bf0h:
	or (hl)			;7bf0
	ret			;7bf1
	daa			;7bf2
	ld bc,001ffh		;7bf3
	ld (bc),a		;7bf6
	inc bc			;7bf7
	inc e			;7bf8
	dec b			;7bf9
	ex de,hl		;7bfa
	rrca			;7bfb
	nop			;7bfc
	inc bc			;7bfd
	jp 09b01h		;7bfe
	nop			;7c01
	inc bc			;7c02
	cp d			;7c03
	nop			;7c04
	push hl			;7c05
	defb 0edh ;next byte illegal after ed	;7c06
	inc bc			;7c07
	rst 20h			;7c08
	dec b			;7c09
l7c0ah:
	nop			;7c0a
	cp a			;7c0b
	inc de			;7c0c
l7c0dh:
	ld a,a			;7c0d
	ld sp,0011eh		;7c0e
	ld a,h			;7c11
	ld d,c			;7c12
	ld a,(hl)		;7c13
	ld l,e			;7c14
	ld a,(de)		;7c15
	rst 20h			;7c16
	exx			;7c17
	cp 0c0h			;7c18
	rrca			;7c1a
	jp nz,l7b42h		;7c1b
	ret nz			;7c1e
	rlca			;7c1f
	sub 008h		;7c20
l7c22h:
	cp 09bh			;7c22
	inc bc			;7c24
	jp nz,07b3fh		;7c25
	ld a,0bbh		;7c28
	ld (hl),a		;7c2a
	sub a			;7c2b
	ld (0e19bh),a		;7c2c
	ld a,d			;7c2f
	call 0d716h		;7c30
	ld e,h			;7c33
	add a,h			;7c34
	ret c			;7c35
	ld a,c			;7c36
	and 002h		;7c37
	and 0cah		;7c39
	dec (hl)		;7c3b
	or d			;7c3c
	ld d,l			;7c3d
	call z,020aeh		;7c3e
l7c41h:
	ld a,(0c14fh)		;7c41
	pop bc			;7c44
	defb 0ddh,005h,03ah ;illegal sequence	;7c45
	and d			;7c48
	ld d,(hl)		;7c49
	dec hl			;7c4a
	ld e,(hl)		;7c4b
	rst 0			;7c4c
	ld e,c			;7c4d
	add hl,bc		;7c4e
	dec hl			;7c4f
	jp nz,07b7eh		;7c50
	ex af,af'		;7c53
	cp 0cfh			;7c54
	ld (03d7dh),hl		;7c56
	ld e,c			;7c59
	ld l,b			;7c5a
	dec c			;7c5b
	add hl,hl		;7c5c
	ex (sp),hl		;7c5d
	jr nc,l7c6dh		;7c5e
	jp c,06089h		;7c60
	ld a,e			;7c63
	inc sp			;7c64
	or a			;7c65
	call z,0a04ch		;7c66
	ld (0fe06h),a		;7c69
	ld b,b			;7c6c
l7c6dh:
	ret c			;7c6d
	ld a,(hl)		;7c6e
	ld d,b			;7c6f
	add a,e			;7c70
l7c71h:
	cp c			;7c71
	ld b,d			;7c72
	ld bc,0b7dah		;7c73
	ld a,e			;7c76
	cp 08ch			;7c77
	jp nc,004a8h		;7c79
	dec d			;7c7c
	add a,e			;7c7d
	jp nc,0f209h		;7c7e
	ld h,c			;7c81
	ld (bc),a		;7c82
	dec hl			;7c83
	and a			;7c84
	add hl,sp		;7c85
l7c86h:
	rst 28h			;7c86
	or 004h			;7c87
	ld a,(hl)		;7c89
	in a,(017h)		;7c8a
	ld de,0b904h		;7c8c
	sub (hl)		;7c8f
	cp c			;7c90
	sbc a,h			;7c91
	dec c			;7c92
	cpl			;7c93
	xor a			;7c94
	or d			;7c95
	ld (de),a		;7c96
	inc hl			;7c97
	xor h			;7c98
	add a,l			;7c99
	jp 02766h		;7c9a
	rst 0			;7c9d
	dec e			;7c9e
	ld d,l			;7c9f
	push bc			;7ca0
	or l			;7ca1
	inc e			;7ca2
	ld d,a			;7ca3
	rst 8			;7ca4
	inc e			;7ca5
	nop			;7ca6
	ld h,(hl)		;7ca7
	push bc			;7ca8
	rst 10h			;7ca9
	ret po			;7caa
	ld a,h			;7cab
	dec c			;7cac
	rst 20h			;7cad
	dec e			;7cae
	ld (de),a		;7caf
	ld (0cacbh),a		;7cb0
	nop			;7cb3
	rst 0			;7cb4
	ld e,l			;7cb5
	dec h			;7cb6
	call nz,09a99h		;7cb7
	ld h,a			;7cba
	ld c,b			;7cbb
	sbc a,h			;7cbc
	rlca			;7cbd
	rst 28h			;7cbe
	ccf			;7cbf
	dec c			;7cc0
l7cc1h:
	sbc a,h			;7cc1
	dec e			;7cc2
	ld (hl),l		;7cc3
	ld bc,0312eh		;7cc4
	sub 00ch		;7cc7
	out (0e5h),a		;7cc9
	inc sp			;7ccb
	push bc			;7ccc
	sub l			;7ccd
	ld (bc),a		;7cce
	ret nz			;7ccf
	inc h			;7cd0
	inc b			;7cd1
	or a			;7cd2
	pop af			;7cd3
	xor a			;7cd4
	ld a,h			;7cd5
	xor h			;7cd6
	add hl,de		;7cd7
	xor d			;7cd8
	ld a,h			;7cd9
	ld e,h			;7cda
	ex (sp),hl		;7cdb
l7cdch:
	ld (l7749h),a		;7cdc
	rla			;7cdf
	ret nz			;7ce0
	xor c			;7ce1
	ld h,c			;7ce2
	ret nc			;7ce3
	rst 28h			;7ce4
l7ce5h:
	ld a,(l75c8h)		;7ce5
	inc hl			;7ce8
	jr z,l7c86h		;7ce9
	ld hl,(09407h)		;7ceb
	sbc a,e			;7cee
	add hl,hl		;7cef
	sub h			;7cf0
	ld a,h			;7cf1
	jp po,01191h		;7cf2
l7cf5h:
	ret nc			;7cf5
	ld a,e			;7cf6
	jp nc,0f729h		;7cf7
	ld a,c			;7cfa
	pop de			;7cfb
	ld d,e			;7cfc
	ret nc			;7cfd
	inc hl			;7cfe
	ld d,d			;7cff
	ret			;7d00
	jp 0dab8h		;7d01
	ld (hl),d		;7d04
	ld d,023h		;7d05
	and b			;7d07
	ret pe			;7d08
	cp (hl)			;7d09
	jp c,0c965h		;7d0a
	ret nc			;7d0d
	pop af			;7d0e
	sbc a,e			;7d0f
	ld c,e			;7d10
	sbc a,h			;7d11
	sbc a,l			;7d12
l7d13h:
	cp c			;7d13
l7d14h:
	or h			;7d14
	sub d			;7d15
	cp b			;7d16
	add a,c			;7d17
	ld h,h			;7d18
	jp c,l7cf5h		;7d19
	and b			;7d1c
	ld h,b			;7d1d
	ld bc,0b8c2h		;7d1e
	inc bc			;7d21
	ld a,0ffh		;7d22
	jp c,l7cdch		;7d24
	ld a,0b7h		;7d27
	push bc			;7d29
	sub c			;7d2a
	inc (hl)		;7d2b
	rrca			;7d2c
	jr c,l7d2fh		;7d2d
l7d2fh:
	rrca			;7d2f
	ld l,d			;7d30
	call pe,0770fh		;7d31
	sub b			;7d34
	ld a,c			;7d35
	adc a,08bh		;7d36
	inc l			;7d38
	ld l,a			;7d39
	rst 30h			;7d3a
	sub l			;7d3b
l7d3ch:
	ld a,l			;7d3c
	jp nc,l7dd4h		;7d3d
	ld (hl),a		;7d40
	add a,l			;7d41
	inc a			;7d42
	jp nz,l7d13h		;7d43
	or d			;7d46
	and d			;7d47
	ld (bc),a		;7d48
	jp p,0ac96h		;7d49
	in a,(003h)		;7d4c
	ld a,(l5e1ah)		;7d4e
	add a,018h		;7d51
	ld (hl),a		;7d53
	dec c			;7d54
	sbc a,00bh		;7d55
	push hl			;7d57
	ld bc,00104h		;7d58
	ld (003ffh),hl		;7d5b
	inc bc			;7d5e
	rst 38h			;7d5f
	ld bc,00224h		;7d60
	cp 001h			;7d63
	ld bc,0fd01h		;7d65
	call nz,sub_75e3h	;7d68
l7d6bh:
	defb 0fdh,001h,0e1h ;illegal sequence	;7d6b
	ld b,d			;7d6e
	push iy			;7d6f
	adc a,l			;7d71
	nop			;7d72
	and c			;7d73
	ld b,001h		;7d74
	call m,0fc00h		;7d76
	inc bc			;7d79
	adc a,a			;7d7a
	ei			;7d7b
	ld bc,0156ch		;7d7c
	dec h			;7d7f
	ld bc,02afch		;7d80
	ld bc,03e01h		;7d83
	sub h			;7d86
	ex de,hl		;7d87
	cp e			;7d88
	adc a,l			;7d89
	ld l,002h		;7d8a
	ld c,(hl)		;7d8c
	ld bc,0029dh		;7d8d
	adc a,d			;7d90
	ld (hl),l		;7d91
	add a,a			;7d92
	nop			;7d93
	or l			;7d94
	ld b,001h		;7d95
	ld l,c			;7d97
	sbc a,c			;7d98
	inc bc			;7d99
	ld (hl),a		;7d9a
	jp c,0f323h		;7d9b
	call p,sub_7dc9h	;7d9e
	cp (hl)			;7da1
	di			;7da2
	jr z,l7d6bh		;7da3
	sub h			;7da5
	xor l			;7da6
	ld d,(hl)		;7da7
	jp z,0aa0ch		;7da8
	add a,09dh		;7dab
	ld l,e			;7dad
	pop hl			;7dae
	rla			;7daf
	ld d,l			;7db0
	add a,09eh		;7db1
	ld bc,0c2bbh		;7db3
	sbc a,07dh		;7db6
l7db8h:
	ld a,09bh		;7db8
	jp z,0332ah		;7dba
	ld d,(hl)		;7dbd
	ld a,l			;7dbe
l7dbfh:
	sbc a,l			;7dbf
	add a,l			;7dc0
	ld b,b			;7dc1
	ld e,l			;7dc2
	dec a			;7dc3
	ret z			;7dc4
	jp po,09c25h		;7dc5
	ld e,c			;7dc8
sub_7dc9h:
	add a,0aeh		;7dc9
	ret			;7dcb
	ld b,d			;7dcc
	ld d,009h		;7dcd
	ex af,af'		;7dcf
	ld b,d			;7dd0
	ld sp,hl		;7dd1
	rst 18h			;7dd2
	xor d			;7dd3
l7dd4h:
	adc a,l			;7dd4
	inc hl			;7dd5
	rlca			;7dd6
	ex (sp),hl		;7dd7
	inc hl			;7dd8
	jp pe,020adh		;7dd9
	ld c,0feh		;7ddc
	jp nc,l7e3bh		;7dde
	ret pe			;7de1
	nop			;7de2
	jp nc,0326fh		;7de3
	call pe,03e70h		;7de6
	add hl,bc		;7de9
	ld h,d			;7dea
	ld (0c111h),a		;7deb
	xor b			;7dee
	sbc a,b			;7def
	jr nz,l7dbfh		;7df0
	add a,0b2h		;7df2
	ld b,a			;7df4
	dec h			;7df5
	ld l,(hl)		;7df6
	ei			;7df7
	and d			;7df8
	pop hl			;7df9
	or l			;7dfa
	ld l,h			;7dfb
	defb 0ddh,065h ;ld ixh,ixl	;7dfc
	ret			;7dfe
	rst 8			;7dff
	ld a,(01c01h)		;7e00
l7e03h:
	jp nc,07e70h		;7e03
	ex af,af'		;7e06
	dec sp			;7e07
	ld (bc),a		;7e08
	ex af,af'		;7e09
	halt			;7e0a
	inc bc			;7e0b
	ex af,af'		;7e0c
	inc b			;7e0d
	defb 0edh ;next byte illegal after ed	;7e0e
	ex af,af'		;7e0f
	dec b			;7e10
	ex af,af'		;7e11
	and b			;7e12
sub_7e13h:
	ld a,(hl)		;7e13
	ld (0c3c8h),a		;7e14
	dec hl			;7e17
l7e18h:
	add a,l			;7e18
	inc b			;7e19
	rst 0			;7e1a
	jp 0ba23h		;7e1b
	ld h,d			;7e1e
	ret			;7e1f
	adc a,h			;7e20
	ld h,b			;7e21
	dec d			;7e22
	nop			;7e23
	call c,03393h		;7e24
	inc sp			;7e27
	defb 0fdh,0f4h,01bh ;illegal sequence	;7e28
l7e2bh:
	ld a,(bc)		;7e2b
	adc a,c			;7e2c
	or (hl)			;7e2d
	nop			;7e2e
	rrca			;7e2f
	ex af,af'		;7e30
	ld a,e			;7e31
	dec l			;7e32
	cp 0feh			;7e33
	adc a,(hl)		;7e35
	inc a			;7e36
	inc c			;7e37
	rrca			;7e38
	ret nz			;7e39
	ld (hl),b		;7e3a
l7e3bh:
	ex (sp),hl		;7e3b
	dec l			;7e3c
	nop			;7e3d
	ld hl,(09d02h)		;7e3e
	rra			;7e41
	nop			;7e42
	rra			;7e43
	sub h			;7e44
	ld l,b			;7e45
	add hl,sp		;7e46
	ret m			;7e47
	rrca			;7e48
	ld a,(bc)		;7e49
	rst 38h			;7e4a
	inc c			;7e4b
l7e4ch:
	cpl			;7e4c
	ld (bc),a		;7e4d
	or e			;7e4e
	ld hl,(l7906h)		;7e4f
	ld b,03fh		;7e52
	ld l,b			;7e54
sub_7e55h:
	rra			;7e55
	ex af,af'		;7e56
	rst 38h			;7e57
	ld a,(bc)		;7e58
	halt			;7e59
	ld (bc),a		;7e5a
	rrca			;7e5b
sub_7e5ch:
	di			;7e5c
	ld c,a			;7e5d
sub_7e5eh:
	dec (hl)		;7e5e
	ld b,004h		;7e5f
	rra			;7e61
	ld (024c3h),hl		;7e62
	ld b,03ch		;7e65
	inc c			;7e67
	ld e,00fh		;7e68
	ld c,l			;7e6a
	out (026h),a		;7e6b
	rrca			;7e6d
	inc a			;7e6e
	ld c,001h		;7e6f
	cpl			;7e71
	inc e			;7e72
	jr z,l7ea4h		;7e73
	halt			;7e75
	ccf			;7e76
	exx			;7e77
	adc a,b			;7e78
	sbc a,a			;7e79
	call m,sub_780ah	;7e7a
	ld c,00fh		;7e7d
	ret z			;7e7f
sub_7e80h:
	ccf			;7e80
l7e81h:
	dec sp			;7e81
	ld b,010h		;7e82
	ld e,0d3h		;7e84
	and (hl)		;7e86
	ccf			;7e87
	pop bc			;7e88
	dec a			;7e89
	rrca			;7e8a
	xor a			;7e8b
	ld a,(bc)		;7e8c
	rrca			;7e8d
	ld b,a			;7e8e
	jr l7ea0h		;7e8f
	add a,b			;7e91
	ld (hl),l		;7e92
	ld h,h			;7e93
	ld a,e			;7e94
	ld b,e			;7e95
	ccf			;7e96
	ld b,012h		;7e97
	rst 38h			;7e99
	ld b,00fh		;7e9a
	and b			;7e9c
	add a,l			;7e9d
	ld h,h			;7e9e
	add a,e			;7e9f
l7ea0h:
	ld b,c			;7ea0
	sbc a,(hl)		;7ea1
	ld b,014h		;7ea2
l7ea4h:
	rrca			;7ea4
	nop			;7ea5
	ld a,h			;7ea6
l7ea7h:
	adc a,b			;7ea7
	sbc a,e			;7ea8
	ld b,a			;7ea9
	ld b,b			;7eaa
	dec e			;7eab
	ld b,016h		;7eac
	rst 38h			;7eae
	cpl			;7eaf
	sub c			;7eb0
	ld d,b			;7eb1
	sbc a,h			;7eb2
	rrca			;7eb3
	ld h,b			;7eb4
	add hl,bc		;7eb5
	rrca			;7eb6
	jp po,l477ch		;7eb7
	or b			;7eba
	rrca			;7ebb
	nop			;7ebc
	dec bc			;7ebd
	rrca			;7ebe
	adc a,e			;7ebf
	sbc a,l			;7ec0
	rra			;7ec1
	rrca			;7ec2
	jr nz,l7ed3h		;7ec3
	rrca			;7ec5
	djnz l7e4ch		;7ec6
	adc a,h			;7ec8
	sbc a,e			;7ec9
	ld (0001eh),hl		;7eca
	rrca			;7ecd
	ld a,(de)		;7ece
	ld c,a			;7ecf
	nop			;7ed0
	and 058h		;7ed1
l7ed3h:
	jr c,l7ef5h		;7ed3
	nop			;7ed5
	inc a			;7ed6
	ld h,01ch		;7ed7
	rrca			;7ed9
	nop			;7eda
	ld (hl),b		;7edb
	ld (0805fh),a		;7edc
	and (hl)		;7edf
	ld d,c			;7ee0
	ld b,070h		;7ee1
	ld e,d			;7ee3
	inc de			;7ee4
	ld b,b			;7ee5
	adc a,h			;7ee6
	ld (bc),a		;7ee7
	jr z,l7f1bh		;7ee8
	ld (bc),a		;7eea
	dec bc			;7eeb
l7eech:
	xor d			;7eec
	ld a,c			;7eed
	inc b			;7eee
	ld (hl),b		;7eef
	inc a			;7ef0
	ld b,c			;7ef1
	add a,b			;7ef2
	ld a,b			;7ef3
	ld a,(de)		;7ef4
l7ef5h:
	sub (hl)		;7ef5
	push hl			;7ef6
	inc d			;7ef7
	ld a,(bc)		;7ef8
	ld (bc),a		;7ef9
	inc b			;7efa
	add hl,de		;7efb
	add a,b			;7efc
	xor d			;7efd
	ld c,e			;7efe
	inc hl			;7eff
	dec bc			;7f00
l7f01h:
	or d			;7f01
	inc l			;7f02
	ex af,af'		;7f03
l7f04h:
	dec b			;7f04
	jr l7ea7h		;7f05
	ld c,e			;7f07
l7f08h:
	nop			;7f08
	rla			;7f09
	ld d,b			;7f0a
	defb 0edh ;next byte illegal after ed	;7f0b
	ld (bc),a		;7f0c
	adc a,h			;7f0d
	ld (bc),a		;7f0e
	ret			;7f0f
	ld e,a			;7f10
	nop			;7f11
	ex af,af'		;7f12
	pop de			;7f13
	rst 0			;7f14
	ld b,b			;7f15
	dec e			;7f16
	jp nc,00263h		;7f17
	ld c,e			;7f1a
l7f1bh:
	dec l			;7f1b
	inc d			;7f1c
	scf			;7f1d
	ld (bc),a		;7f1e
	cpl			;7f1f
	add hl,sp		;7f20
sub_7f21h:
	ex af,af'		;7f21
	sbc a,b			;7f22
	inc d			;7f23
	ld b,(hl)		;7f24
	ld (bc),a		;7f25
	ld h,e			;7f26
	cp h			;7f27
	ld (bc),a		;7f28
	rla			;7f29
	ld h,00eh		;7f2a
	call pe,03702h		;7f2c
	ld h,e			;7f2f
	dec b			;7f30
	ld a,(de)		;7f31
	xor c			;7f32
sub_7f33h:
	dec b			;7f33
	add hl,de		;7f34
	ld (bc),a		;7f35
	adc a,l			;7f36
	rst 38h			;7f37
	ld (bc),a		;7f38
	ld h,b			;7f39
	adc a,h			;7f3a
	ld (bc),a		;7f3b
	ex de,hl		;7f3c
	jr nc,$+12		;7f3d
	ex af,af'		;7f3f
	rst 10h			;7f40
	ld d,b			;7f41
	ld (002c3h),a		;7f42
	xor a			;7f45
	jr nc,l7f6eh		;7f46
l7f48h:
	ld (005a5h),a		;7f48
	and l			;7f4b
	dec bc			;7f4c
	ld l,030h		;7f4d
	dec bc			;7f4f
	ex af,af'		;7f50
	inc d			;7f51
	rst 38h			;7f52
	ex af,af'		;7f53
	jr nz,l7eech		;7f54
	ret p			;7f56
	ld (bc),a		;7f57
	add hl,sp		;7f58
	scf			;7f59
	ld d,b			;7f5a
	ex af,af'		;7f5b
	jr c,l7f08h		;7f5c
	add a,d			;7f5e
	ld (bc),a		;7f5f
	add hl,hl		;7f60
	ld d,b			;7f61
	sub b			;7f62
	ld hl,03c02h		;7f63
	dec b			;7f66
	jp 0051eh		;7f67
	inc b			;7f6a
	ld h,b			;7f6b
	ld d,b			;7f6c
	ld c,d			;7f6d
l7f6eh:
	ld (bc),a		;7f6e
	jr z,l7f01h		;7f6f
	ld (bc),a		;7f71
	rst 38h			;7f72
	ld (bc),a		;7f73
	sbc a,e			;7f74
	ret nc			;7f75
	ret nz			;7f76
	ld (bc),a		;7f77
	sbc a,e			;7f78
	and b			;7f79
	rst 38h			;7f7a
	ld e,d			;7f7b
	and b			;7f7c
	jp m,00902h		;7f7d
	ld (0a014h),a		;7f80
	ld d,002h		;7f83
	ld (bc),a		;7f85
	ld (bc),a		;7f86
	jr nz,l7fa9h		;7f87
	ld (bc),a		;7f89
	inc (hl)		;7f8a
	ld a,(bc)		;7f8b
	and b			;7f8c
l7f8dh:
	ld hl,(0ad8fh)		;7f8d
	inc b			;7f90
	rst 38h			;7f91
	ld (bc),a		;7f92
	dec d			;7f93
	ccf			;7f94
	or b			;7f95
	ret nz			;7f96
	ld (bc),a		;7f97
	add a,b			;7f98
	ld (hl),b		;7f99
	rst 30h			;7f9a
	ld (bc),a		;7f9b
	ret nz			;7f9c
	ld h,e			;7f9d
	rst 38h			;7f9e
	ld (bc),a		;7f9f
	ret nc			;7fa0
	ld (bc),a		;7fa1
	ex (sp),hl		;7fa2
	ccf			;7fa3
	jr nz,l7f8dh		;7fa4
	nop			;7fa6
	rst 38h			;7fa7
	ret po			;7fa8
l7fa9h:
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
l7fd0h:
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
l7fe7h:
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
