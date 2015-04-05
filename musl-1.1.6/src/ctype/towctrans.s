	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"src/ctype/towctrans.bc"
	.globl	towupper
	.align	2
	.type	towupper,%function
towupper:                               @ @towupper
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, #0
	b	__towcase
.Ltmp0:
	.size	towupper, .Ltmp0-towupper
	.cantunwind
	.fnend

	.align	2
	.type	__towcase,%function
__towcase:                              @ @__towcase
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r4, r0
	mov	r7, r1
                                        @ kill: R0<def> R4<kill>
	bl	iswalpha
	b	.LBB1_3
.LBB1_3:                                @ %entry
	sub	r1, r4, #43008
	cmp	r1, #22272
	movhs	r2, #14400
	subhs	r1, r4, #11776
	orrhs	r2, r2, #16384
	cmphs	r1, r2
	blo	.LBB1_28
	b	.LBB1_4
.LBB1_4:                                @ %entry
	sub	r1, r4, #1536
	cmp	r1, #2560
	blo	.LBB1_28
	b	.LBB1_5
.LBB1_5:                                @ %entry
	cmp	r0, #0
	beq	.LBB1_28
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	ldr	r0, .LCPI1_5
	cmp	r7, #0
	beq	.LBB1_12
	b	.LBB1_7
.LCPI1_5:
	.long	4294963040              @ 0xffffef60
.LBB1_7:                                @ %if.end
	add	r0, r4, r0
	cmp	r0, #45
	bhi	.LBB1_12
	b	.LBB1_8
.LBB1_8:                                @ %if.then12
	mov	r0, #198
	orr	r0, r0, #4096
	cmp	r4, r0
	blo	.LBB1_11
	b	.LBB1_9
.LBB1_9:                                @ %switch.early.test
	mov	r0, #199
	orr	r0, r0, #4096
	cmp	r4, r0
	beq	.LBB1_11
	b	.LBB1_10
.LBB1_10:                               @ %switch.early.test
	mov	r0, #205
	orr	r0, r0, #4096
	cmp	r4, r0
	bne	.LBB1_28
	b	.LBB1_11
.LBB1_11:                               @ %if.else
	add	r0, r4, #3168
	add	r0, r0, #4096
	b	.LBB1_29
.LBB1_12:                               @ %if.end20
	mvn	r0, #0
	cmp	r7, #0
	mov	r1, #0
	mov	r2, #0
	b	.LBB1_13
.LBB1_13:                               @ %if.end20
	sub	r3, r4, #11520
	add	r12, r0, r7, lsl #1
	moveq	r1, #1
	sub	r0, r7, #1
	cmp	r3, #37
	bhi	.LBB1_19
	b	.LBB1_14
.LBB1_14:                               @ %if.end20
	cmp	r1, #1
	bne	.LBB1_19
	b	.LBB1_15
.LBB1_15:                               @ %if.then25
	mov	r0, #38
	orr	r0, r0, #11520
	cmp	r4, r0
	blo	.LBB1_18
	b	.LBB1_16
.LBB1_16:                               @ %switch.early.test145
	mov	r0, #39
	orr	r0, r0, #11520
	cmp	r4, r0
	beq	.LBB1_18
	b	.LBB1_17
.LBB1_17:                               @ %switch.early.test145
	mov	r0, #45
	orr	r0, r0, #11520
	cmp	r4, r0
	bne	.LBB1_28
	b	.LBB1_18
.LBB1_18:                               @ %if.else32
	ldr	r0, .LCPI1_9
	add	r0, r4, r0
	b	.LBB1_29
.LCPI1_9:
	.long	4294960032              @ 0xffffe3a0
.LBB1_19:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, .LCPI1_6
	ldrh	r1, [r5, -r2]!
	sub	r3, r4, r1
	ldrsb	r1, [r5, #2]
	b	.LBB1_20
.LCPI1_6:
	.long	casemaps
.LBB1_20:                               @ %for.body
                                        @   in Loop: Header=BB1_19 Depth=1
	ldrb	r5, [r5, #3]
	and	r6, r1, r0
	sub	r6, r3, r6
	cmp	r6, r5
	blo	.LBB1_30
	b	.LBB1_21
.LBB1_21:                               @ %for.cond
                                        @   in Loop: Header=BB1_19 Depth=1
	sub	r2, r2, #4
	cmn	r2, #244
	bne	.LBB1_19
	b	.LBB1_22
.LBB1_22:                               @ %for.cond69.preheader
	ldr	r0, .LCPI1_7
	rsb	r1, r7, #1
	add	r1, r0, r1, lsl #1
	ldrh	r3, [r1]
	cmp	r3, #0
	beq	.LBB1_26
	b	.LBB1_23
.LCPI1_7:
	.long	pairs
.LBB1_23:                               @ %for.body74.preheader
	mov	r2, #255
	add	r0, r0, r7, lsl #1
	add	r1, r1, #4
	orr	r2, r2, #65280
	b	.LBB1_24
.LBB1_24:                               @ %for.body74
                                        @ =>This Inner Loop Header: Depth=1
	and	r3, r3, r2
	cmp	r3, r4
	beq	.LBB1_33
	b	.LBB1_25
.LBB1_25:                               @ %for.inc86
                                        @   in Loop: Header=BB1_24 Depth=1
	ldrh	r3, [r1], #4
	add	r0, r0, #4
	cmp	r3, #0
	bne	.LBB1_24
	b	.LBB1_26
.LBB1_26:                               @ %for.end88
	ldr	r2, .LCPI1_8
	add	r0, r7, r7, lsl #2
	add	r1, r4, r0, lsl #3
	add	r1, r1, r2
	cmp	r1, #39
	bhi	.LBB1_28
	b	.LBB1_27
.LCPI1_8:
	.long	4294900696              @ 0xfffefbd8
.LBB1_27:                               @ %if.then94
	add	r0, r4, r0, lsl #4
	sub	r0, r0, #40
	b	.LBB1_29
.LBB1_28:
	mov	r0, r4
	b	.LBB1_29
.LBB1_29:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.LBB1_30:                               @ %if.then48
	and	r0, r1, #255
	cmp	r0, #1
	bne	.LBB1_32
	b	.LBB1_31
.LBB1_31:                               @ %if.then54
	add	r0, r7, r4
	and	r1, r3, #1
	sub	r0, r0, r1
	b	.LBB1_29
.LBB1_32:                               @ %if.end62
	mla	r0, r1, r12, r4
	b	.LBB1_29
.LBB1_33:                               @ %if.then81
	ldrh	r0, [r0]
	b	.LBB1_29
.Ltmp1:
	.size	__towcase, .Ltmp1-__towcase
	.cantunwind
	.fnend

	.globl	towlower
	.align	2
	.type	towlower,%function
towlower:                               @ @towlower
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r1, #1
	b	__towcase
.Ltmp2:
	.size	towlower, .Ltmp2-towlower
	.cantunwind
	.fnend

	.globl	__towupper_l
	.align	2
	.type	__towupper_l,%function
__towupper_l:                           @ @__towupper_l
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r1, #0
	b	__towcase
.Ltmp3:
	.size	__towupper_l, .Ltmp3-__towupper_l
	.cantunwind
	.fnend

	.globl	__towlower_l
	.align	2
	.type	__towlower_l,%function
__towlower_l:                           @ @__towlower_l
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	mov	r1, #1
	b	__towcase
.Ltmp4:
	.size	__towlower_l, .Ltmp4-__towlower_l
	.cantunwind
	.fnend

	.type	casemaps,%object        @ @casemaps
	.section	.rodata,"a",%progbits
	.align	1
casemaps:
	.short	65                      @ 0x41
	.byte	32                      @ 0x20
	.byte	26                      @ 0x1a
	.short	192                     @ 0xc0
	.byte	32                      @ 0x20
	.byte	31                      @ 0x1f
	.short	256                     @ 0x100
	.byte	1                       @ 0x1
	.byte	47                      @ 0x2f
	.short	306                     @ 0x132
	.byte	1                       @ 0x1
	.byte	5                       @ 0x5
	.short	313                     @ 0x139
	.byte	1                       @ 0x1
	.byte	15                      @ 0xf
	.short	330                     @ 0x14a
	.byte	1                       @ 0x1
	.byte	45                      @ 0x2d
	.short	377                     @ 0x179
	.byte	1                       @ 0x1
	.byte	5                       @ 0x5
	.short	880                     @ 0x370
	.byte	1                       @ 0x1
	.byte	3                       @ 0x3
	.short	913                     @ 0x391
	.byte	32                      @ 0x20
	.byte	17                      @ 0x11
	.short	931                     @ 0x3a3
	.byte	32                      @ 0x20
	.byte	9                       @ 0x9
	.short	1024                    @ 0x400
	.byte	80                      @ 0x50
	.byte	16                      @ 0x10
	.short	1040                    @ 0x410
	.byte	32                      @ 0x20
	.byte	32                      @ 0x20
	.short	1120                    @ 0x460
	.byte	1                       @ 0x1
	.byte	33                      @ 0x21
	.short	1162                    @ 0x48a
	.byte	1                       @ 0x1
	.byte	53                      @ 0x35
	.short	1217                    @ 0x4c1
	.byte	1                       @ 0x1
	.byte	13                      @ 0xd
	.short	1232                    @ 0x4d0
	.byte	1                       @ 0x1
	.byte	63                      @ 0x3f
	.short	1300                    @ 0x514
	.byte	1                       @ 0x1
	.byte	19                      @ 0x13
	.short	1329                    @ 0x531
	.byte	48                      @ 0x30
	.byte	38                      @ 0x26
	.short	416                     @ 0x1a0
	.byte	1                       @ 0x1
	.byte	5                       @ 0x5
	.short	435                     @ 0x1b3
	.byte	1                       @ 0x1
	.byte	3                       @ 0x3
	.short	461                     @ 0x1cd
	.byte	1                       @ 0x1
	.byte	15                      @ 0xf
	.short	478                     @ 0x1de
	.byte	1                       @ 0x1
	.byte	17                      @ 0x11
	.short	504                     @ 0x1f8
	.byte	1                       @ 0x1
	.byte	39                      @ 0x27
	.short	546                     @ 0x222
	.byte	1                       @ 0x1
	.byte	17                      @ 0x11
	.short	984                     @ 0x3d8
	.byte	1                       @ 0x1
	.byte	23                      @ 0x17
	.short	7680                    @ 0x1e00
	.byte	1                       @ 0x1
	.byte	149                     @ 0x95
	.short	7840                    @ 0x1ea0
	.byte	1                       @ 0x1
	.byte	95                      @ 0x5f
	.short	7944                    @ 0x1f08
	.byte	248                     @ 0xf8
	.byte	8                       @ 0x8
	.short	7960                    @ 0x1f18
	.byte	248                     @ 0xf8
	.byte	6                       @ 0x6
	.short	7976                    @ 0x1f28
	.byte	248                     @ 0xf8
	.byte	8                       @ 0x8
	.short	7992                    @ 0x1f38
	.byte	248                     @ 0xf8
	.byte	8                       @ 0x8
	.short	8008                    @ 0x1f48
	.byte	248                     @ 0xf8
	.byte	6                       @ 0x6
	.short	8040                    @ 0x1f68
	.byte	248                     @ 0xf8
	.byte	8                       @ 0x8
	.short	8072                    @ 0x1f88
	.byte	248                     @ 0xf8
	.byte	8                       @ 0x8
	.short	8088                    @ 0x1f98
	.byte	248                     @ 0xf8
	.byte	8                       @ 0x8
	.short	8104                    @ 0x1fa8
	.byte	248                     @ 0xf8
	.byte	8                       @ 0x8
	.short	8120                    @ 0x1fb8
	.byte	248                     @ 0xf8
	.byte	2                       @ 0x2
	.short	8122                    @ 0x1fba
	.byte	182                     @ 0xb6
	.byte	2                       @ 0x2
	.short	8136                    @ 0x1fc8
	.byte	170                     @ 0xaa
	.byte	4                       @ 0x4
	.short	8152                    @ 0x1fd8
	.byte	248                     @ 0xf8
	.byte	2                       @ 0x2
	.short	8154                    @ 0x1fda
	.byte	156                     @ 0x9c
	.byte	2                       @ 0x2
	.short	8168                    @ 0x1fe8
	.byte	248                     @ 0xf8
	.byte	2                       @ 0x2
	.short	8170                    @ 0x1fea
	.byte	144                     @ 0x90
	.byte	2                       @ 0x2
	.short	8184                    @ 0x1ff8
	.byte	128                     @ 0x80
	.byte	2                       @ 0x2
	.short	8186                    @ 0x1ffa
	.byte	130                     @ 0x82
	.byte	2                       @ 0x2
	.short	582                     @ 0x246
	.byte	1                       @ 0x1
	.byte	9                       @ 0x9
	.short	1296                    @ 0x510
	.byte	1                       @ 0x1
	.byte	3                       @ 0x3
	.short	8544                    @ 0x2160
	.byte	16                      @ 0x10
	.byte	16                      @ 0x10
	.short	11264                   @ 0x2c00
	.byte	48                      @ 0x30
	.byte	47                      @ 0x2f
	.short	11367                   @ 0x2c67
	.byte	1                       @ 0x1
	.byte	5                       @ 0x5
	.short	11392                   @ 0x2c80
	.byte	1                       @ 0x1
	.byte	99                      @ 0x63
	.short	11499                   @ 0x2ceb
	.byte	1                       @ 0x1
	.byte	3                       @ 0x3
	.short	42560                   @ 0xa640
	.byte	1                       @ 0x1
	.byte	45                      @ 0x2d
	.short	42624                   @ 0xa680
	.byte	1                       @ 0x1
	.byte	23                      @ 0x17
	.short	42786                   @ 0xa722
	.byte	1                       @ 0x1
	.byte	13                      @ 0xd
	.short	42802                   @ 0xa732
	.byte	1                       @ 0x1
	.byte	61                      @ 0x3d
	.short	42873                   @ 0xa779
	.byte	1                       @ 0x1
	.byte	3                       @ 0x3
	.short	42878                   @ 0xa77e
	.byte	1                       @ 0x1
	.byte	9                       @ 0x9
	.short	42896                   @ 0xa790
	.byte	1                       @ 0x1
	.byte	3                       @ 0x3
	.short	42912                   @ 0xa7a0
	.byte	1                       @ 0x1
	.byte	9                       @ 0x9
	.short	65313                   @ 0xff21
	.byte	32                      @ 0x20
	.byte	26                      @ 0x1a
	.zero	4
	.size	casemaps, 248

	.type	pairs,%object           @ @pairs
	.align	1
pairs:
	.short	73                      @ 0x49
	.short	305                     @ 0x131
	.short	83                      @ 0x53
	.short	383                     @ 0x17f
	.short	304                     @ 0x130
	.short	105                     @ 0x69
	.short	376                     @ 0x178
	.short	255                     @ 0xff
	.short	385                     @ 0x181
	.short	595                     @ 0x253
	.short	386                     @ 0x182
	.short	387                     @ 0x183
	.short	388                     @ 0x184
	.short	389                     @ 0x185
	.short	390                     @ 0x186
	.short	596                     @ 0x254
	.short	391                     @ 0x187
	.short	392                     @ 0x188
	.short	393                     @ 0x189
	.short	598                     @ 0x256
	.short	394                     @ 0x18a
	.short	599                     @ 0x257
	.short	395                     @ 0x18b
	.short	396                     @ 0x18c
	.short	398                     @ 0x18e
	.short	477                     @ 0x1dd
	.short	399                     @ 0x18f
	.short	601                     @ 0x259
	.short	400                     @ 0x190
	.short	603                     @ 0x25b
	.short	401                     @ 0x191
	.short	402                     @ 0x192
	.short	403                     @ 0x193
	.short	608                     @ 0x260
	.short	404                     @ 0x194
	.short	611                     @ 0x263
	.short	406                     @ 0x196
	.short	617                     @ 0x269
	.short	407                     @ 0x197
	.short	616                     @ 0x268
	.short	408                     @ 0x198
	.short	409                     @ 0x199
	.short	412                     @ 0x19c
	.short	623                     @ 0x26f
	.short	413                     @ 0x19d
	.short	626                     @ 0x272
	.short	415                     @ 0x19f
	.short	629                     @ 0x275
	.short	422                     @ 0x1a6
	.short	640                     @ 0x280
	.short	423                     @ 0x1a7
	.short	424                     @ 0x1a8
	.short	425                     @ 0x1a9
	.short	643                     @ 0x283
	.short	428                     @ 0x1ac
	.short	429                     @ 0x1ad
	.short	430                     @ 0x1ae
	.short	648                     @ 0x288
	.short	431                     @ 0x1af
	.short	432                     @ 0x1b0
	.short	433                     @ 0x1b1
	.short	650                     @ 0x28a
	.short	434                     @ 0x1b2
	.short	651                     @ 0x28b
	.short	439                     @ 0x1b7
	.short	658                     @ 0x292
	.short	440                     @ 0x1b8
	.short	441                     @ 0x1b9
	.short	444                     @ 0x1bc
	.short	445                     @ 0x1bd
	.short	452                     @ 0x1c4
	.short	454                     @ 0x1c6
	.short	452                     @ 0x1c4
	.short	453                     @ 0x1c5
	.short	453                     @ 0x1c5
	.short	454                     @ 0x1c6
	.short	455                     @ 0x1c7
	.short	457                     @ 0x1c9
	.short	455                     @ 0x1c7
	.short	456                     @ 0x1c8
	.short	456                     @ 0x1c8
	.short	457                     @ 0x1c9
	.short	458                     @ 0x1ca
	.short	460                     @ 0x1cc
	.short	458                     @ 0x1ca
	.short	459                     @ 0x1cb
	.short	459                     @ 0x1cb
	.short	460                     @ 0x1cc
	.short	497                     @ 0x1f1
	.short	499                     @ 0x1f3
	.short	497                     @ 0x1f1
	.short	498                     @ 0x1f2
	.short	498                     @ 0x1f2
	.short	499                     @ 0x1f3
	.short	500                     @ 0x1f4
	.short	501                     @ 0x1f5
	.short	502                     @ 0x1f6
	.short	405                     @ 0x195
	.short	503                     @ 0x1f7
	.short	447                     @ 0x1bf
	.short	544                     @ 0x220
	.short	414                     @ 0x19e
	.short	902                     @ 0x386
	.short	940                     @ 0x3ac
	.short	904                     @ 0x388
	.short	941                     @ 0x3ad
	.short	905                     @ 0x389
	.short	942                     @ 0x3ae
	.short	906                     @ 0x38a
	.short	943                     @ 0x3af
	.short	908                     @ 0x38c
	.short	972                     @ 0x3cc
	.short	910                     @ 0x38e
	.short	973                     @ 0x3cd
	.short	911                     @ 0x38f
	.short	974                     @ 0x3ce
	.short	921                     @ 0x399
	.short	837                     @ 0x345
	.short	921                     @ 0x399
	.short	8126                    @ 0x1fbe
	.short	931                     @ 0x3a3
	.short	962                     @ 0x3c2
	.short	1015                    @ 0x3f7
	.short	1016                    @ 0x3f8
	.short	1018                    @ 0x3fa
	.short	1019                    @ 0x3fb
	.short	7776                    @ 0x1e60
	.short	7835                    @ 0x1e9b
	.short	7838                    @ 0x1e9e
	.short	223                     @ 0xdf
	.short	8025                    @ 0x1f59
	.short	8017                    @ 0x1f51
	.short	8027                    @ 0x1f5b
	.short	8019                    @ 0x1f53
	.short	8029                    @ 0x1f5d
	.short	8021                    @ 0x1f55
	.short	8031                    @ 0x1f5f
	.short	8023                    @ 0x1f57
	.short	8124                    @ 0x1fbc
	.short	8115                    @ 0x1fb3
	.short	8140                    @ 0x1fcc
	.short	8131                    @ 0x1fc3
	.short	8172                    @ 0x1fec
	.short	8165                    @ 0x1fe5
	.short	8188                    @ 0x1ffc
	.short	8179                    @ 0x1ff3
	.short	570                     @ 0x23a
	.short	11365                   @ 0x2c65
	.short	571                     @ 0x23b
	.short	572                     @ 0x23c
	.short	573                     @ 0x23d
	.short	410                     @ 0x19a
	.short	574                     @ 0x23e
	.short	11366                   @ 0x2c66
	.short	577                     @ 0x241
	.short	578                     @ 0x242
	.short	579                     @ 0x243
	.short	384                     @ 0x180
	.short	580                     @ 0x244
	.short	649                     @ 0x289
	.short	581                     @ 0x245
	.short	652                     @ 0x28c
	.short	1012                    @ 0x3f4
	.short	952                     @ 0x3b8
	.short	1017                    @ 0x3f9
	.short	1010                    @ 0x3f2
	.short	1021                    @ 0x3fd
	.short	891                     @ 0x37b
	.short	1022                    @ 0x3fe
	.short	892                     @ 0x37c
	.short	1023                    @ 0x3ff
	.short	893                     @ 0x37d
	.short	1216                    @ 0x4c0
	.short	1231                    @ 0x4cf
	.short	8486                    @ 0x2126
	.short	969                     @ 0x3c9
	.short	8490                    @ 0x212a
	.short	107                     @ 0x6b
	.short	8491                    @ 0x212b
	.short	229                     @ 0xe5
	.short	8498                    @ 0x2132
	.short	8526                    @ 0x214e
	.short	8579                    @ 0x2183
	.short	8580                    @ 0x2184
	.short	11360                   @ 0x2c60
	.short	11361                   @ 0x2c61
	.short	11362                   @ 0x2c62
	.short	619                     @ 0x26b
	.short	11363                   @ 0x2c63
	.short	7549                    @ 0x1d7d
	.short	11364                   @ 0x2c64
	.short	637                     @ 0x27d
	.short	11373                   @ 0x2c6d
	.short	593                     @ 0x251
	.short	11374                   @ 0x2c6e
	.short	625                     @ 0x271
	.short	11375                   @ 0x2c6f
	.short	592                     @ 0x250
	.short	11376                   @ 0x2c70
	.short	594                     @ 0x252
	.short	11378                   @ 0x2c72
	.short	11379                   @ 0x2c73
	.short	11381                   @ 0x2c75
	.short	11382                   @ 0x2c76
	.short	11390                   @ 0x2c7e
	.short	575                     @ 0x23f
	.short	11391                   @ 0x2c7f
	.short	576                     @ 0x240
	.short	11506                   @ 0x2cf2
	.short	11507                   @ 0x2cf3
	.short	42877                   @ 0xa77d
	.short	7545                    @ 0x1d79
	.short	42891                   @ 0xa78b
	.short	42892                   @ 0xa78c
	.short	42893                   @ 0xa78d
	.short	613                     @ 0x265
	.short	42922                   @ 0xa7aa
	.short	614                     @ 0x266
	.short	4295                    @ 0x10c7
	.short	11559                   @ 0x2d27
	.short	4301                    @ 0x10cd
	.short	11565                   @ 0x2d2d
	.short	886                     @ 0x376
	.short	887                     @ 0x377
	.short	924                     @ 0x39c
	.short	181                     @ 0xb5
	.short	914                     @ 0x392
	.short	976                     @ 0x3d0
	.short	920                     @ 0x398
	.short	977                     @ 0x3d1
	.short	934                     @ 0x3a6
	.short	981                     @ 0x3d5
	.short	928                     @ 0x3a0
	.short	982                     @ 0x3d6
	.short	922                     @ 0x39a
	.short	1008                    @ 0x3f0
	.short	929                     @ 0x3a1
	.short	1009                    @ 0x3f1
	.short	917                     @ 0x395
	.short	1013                    @ 0x3f5
	.short	975                     @ 0x3cf
	.short	983                     @ 0x3d7
	.zero	4
	.size	pairs, 488


	.weak	towupper_l
towupper_l = __towupper_l
	.weak	towlower_l
towlower_l = __towlower_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
