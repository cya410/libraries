.section crypt_blowfish_text
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
	.file	"src/crypt/crypt_blowfish.bc"
	.globl	__crypt_blowfish
	.align	2
	.type	__crypt_blowfish,%function
.section bb0_0
__crypt_blowfish:                       @ @__crypt_blowfish
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#384
	sub	sp, sp, #384
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, r1
	mov	r3, #16
                                        @ kill: R1<def> R6<kill>
	bl	BF_crypt
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r1, .LCPI0_7
	add	r5, sp, #288
	mov	r4, r0
	mov	r2, #30
	b	.LBB0_5
.LCPI0_7:
	.long	.L.str1
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, r5
	bl	memcpy
	cmp	r4, #0
	mov	r1, #85
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r2, #63
	ldrbne	r0, [r6, #2]
	add	r6, r5, #30
	strbne	r0, [sp, #290]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r0, r6
	bl	memset
	ldr	r0, .LCPI0_8
	mov	r8, #0
	b	.LBB0_8
.LCPI0_8:
	.long	.L.str
.section bb0_8
.LBB0_8:                                @ %entry
	mov	r1, r5
	mov	r2, r6
	mov	r3, #1
	strb	r8, [sp, #380]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %entry
	bl	BF_crypt
	mov	r7, #0
	cmp	r0, r6
	bne	.LBB0_14
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %land.lhs.true
	add	r5, sp, #288
	mov	r0, r6
	mov	r2, #29
	mov	r1, r5
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %land.lhs.true
	bl	memcmp
	mov	r7, #0
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %land.rhs
	ldrb	r0, [sp, #290]
	ldr	r1, .LCPI0_9
	mov	r2, #34
	and	r0, r0, #1
	b	.LBB0_13
.LCPI0_9:
	.long	__crypt_blowfish.test_hash
.section bb0_13
.LBB0_13:                               @ %land.rhs
	orr	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #1
	add	r0, r5, #59
	bl	memcmp
	mov	r7, #0
	cmp	r0, #0
	moveq	r7, #1
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %land.end
	ldr	r5, .LCPI0_10
	add	r1, sp, #216
	add	r2, sp, #144
	mov	r3, #2
	b	.LBB0_15
.LCPI0_10:
	.long	.L.str2
.section bb0_15
.LBB0_15:                               @ %land.end
	mov	r0, r5
	bl	BF_set_key
	add	r1, sp, #72
	mov	r2, sp
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %land.end
	mov	r0, r5
	mov	r3, #4
	bl	BF_set_key
	ldr	r0, [sp, #144]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %land.end
	cmp	r7, #1
	eor	r1, r0, #65536
	str	r1, [sp, #144]
	bne	.LBB0_21
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %land.end
	ldr	r1, .LCPI0_11
	cmp	r0, r1
	ldreq	r0, .LCPI0_12
	ldreq	r1, [sp, #140]
	cmpeq	r1, r0
	bne	.LBB0_21
	b	.LBB0_19
.LCPI0_11:
	.long	3684522428              @ 0xdb9d59bc
.LCPI0_12:
	.long	859059456               @ 0x33343500
.section bb0_19
.LBB0_19:                               @ %land.lhs.true40
	add	r0, sp, #216
	add	r1, sp, #72
	mov	r2, #72
	bl	memcmp
	cmp	r0, #0
	bne	.LBB0_21
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %land.rhs45
	add	r0, sp, #144
	mov	r1, sp
	mov	r2, #72
	bl	memcmp
	mov	r8, #0
	cmp	r0, #0
	moveq	r8, #1
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %land.end51
	ldr	r0, .LCPI0_13
	cmp	r4, #0
	mov	r1, r4
	movne	r1, #1
	b	.LBB0_22
.LCPI0_13:
	.long	.L.str3
.section bb0_22
.LBB0_22:                               @ %land.end51
	tst	r1, r8
	movne	r0, r4
	add	sp, sp, #384
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	__crypt_blowfish, .Ltmp0-__crypt_blowfish
	.cantunwind
	.fnend

	.align	2
	.type	BF_crypt,%function
.section bb1_0
BF_crypt:                               @ @BF_crypt
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#212
	sub	sp, sp, #212
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	.pad	#4096
	sub	sp, sp, #4096
	mov	r5, r1
	mov	r9, r2
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	ldrb	r1, [r5]
	cmp	r1, #36
	ldrbeq	r1, [r5, #1]
	cmpeq	r1, #50
	bne	.LBB1_71
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %lor.lhs.false6
	ldrb	r1, [r5, #2]
	sub	r1, r1, #97
	cmp	r1, #25
	bhi	.LBB1_71
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %lor.lhs.false11
	mov	r2, #1
	mov	r7, #1
	orr	r2, r2, #25165824
	tst	r7, r2, lsr r1
	beq	.LBB1_71
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %lor.lhs.false16
	ldrb	r1, [r5, #3]
	cmp	r1, #36
	bne	.LBB1_71
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %lor.lhs.false21
	ldrb	r1, [r5, #4]
	sub	r1, r1, #48
	cmp	r1, #1
	bhi	.LBB1_71
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %lor.lhs.false27
	ldrb	r2, [r5, #5]
	sub	r2, r2, #48
	cmp	r2, #9
	bhi	.LBB1_71
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %lor.lhs.false33
	ldrb	r7, [r5, #6]
	cmp	r7, #36
	bne	.LBB1_71
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.end
	add	r1, r1, r1, lsl #2
	add	r1, r2, r1, lsl #1
	mov	r2, #1
	lsl	r1, r2, r1
	cmp	r1, r3
	blo	.LBB1_71
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %lor.lhs.false46
	add	r11, sp, #44
	str	r1, [sp, #32]           @ 4-byte Spill
	ldr	r6, .LCPI1_0
	mov	lr, #7
	b	.LBB1_13
.LCPI1_0:
	.long	BF_atoi64
.section bb1_13
.LBB1_13:                               @ %lor.lhs.false46
	mov	r8, #3
	add	r1, r11, #160
	add	r10, r1, #4096
	mov	r1, #144
	orr	r1, r1, #4096
	add	r1, r11, r1
	str	r1, [sp, #20]           @ 4-byte Spill
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r5
	ldrb	r2, [r7, lr]!
	sub	r2, r2, #32
	cmp	r2, #95
	ldrbls	r2, [r6, r2]
	cmpls	r2, #63
	bhi	.LBB1_71
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %if.end10.i
                                        @   in Loop: Header=BB1_14 Depth=1
	ldrb	r4, [r7, #1]
	sub	r4, r4, #32
	cmp	r4, #95
	ldrbls	r4, [r6, r4]
	cmpls	r4, #63
	bhi	.LBB1_71
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.end23.i
                                        @   in Loop: Header=BB1_14 Depth=1
	and	r12, r8, r4, lsr #4
	orr	r2, r12, r2, lsl #2
	strb	r2, [r1], #1
	cmp	r1, r10
	bhs	.LBB1_21
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %if.end29.i
                                        @   in Loop: Header=BB1_14 Depth=1
	ldrb	r2, [r7, #2]
	sub	r2, r2, #32
	cmp	r2, #95
	ldrbls	r2, [r6, r2]
	cmpls	r2, #63
	bhi	.LBB1_71
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %if.end42.i
                                        @   in Loop: Header=BB1_14 Depth=1
	mov	r3, #15
	and	r3, r3, r2, lsr #2
	orr	r3, r3, r4, lsl #4
	strb	r3, [r1], #1
	cmp	r1, r10
	bhs	.LBB1_21
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %if.end53.i
                                        @   in Loop: Header=BB1_14 Depth=1
	ldrb	r3, [r7, #3]
	sub	r4, r3, #32
	cmp	r4, #95
	ldrbls	r4, [r6, r4]
	cmpls	r4, #63
	bhi	.LBB1_71
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %if.end66.i
                                        @   in Loop: Header=BB1_14 Depth=1
	orr	r2, r4, r2, lsl #6
	add	lr, lr, #4
	strb	r2, [r1], #1
	cmp	r1, r10
	blo	.LBB1_14
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %do.body.i319.preheader
	mov	r1, #144
	mov	r6, #255
	mov	r4, #65280
	orr	r1, r1, #4096
	b	.LBB1_22
.section bb1_22
.LBB1_22:                               @ %do.body.i319.preheader
	orr	r6, r6, #16711680
	orr	r4, r4, #-16777216
	add	r7, r11, r1
	mov	r1, #0
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %do.body.i319
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r7, r1, lsl #2]
	ror	r2, r2, #16
	and	r3, r6, r2, lsr #8
	and	r2, r4, r2, lsl #8
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %do.body.i319
                                        @   in Loop: Header=BB1_23 Depth=1
	orr	r2, r2, r3
	str	r2, [r7, r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, #4
	bne	.LBB1_23
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %if.end82.lr.ph
	add	r1, r11, #72
	ldr	r2, .LCPI1_5
	str	r7, [sp, #16]           @ 4-byte Spill
	add	r10, r1, #4096
	b	.LBB1_26
.LCPI1_5:
	.long	BF_crypt.flags_by_subtype
.section bb1_26
.LBB1_26:                               @ %if.end82.lr.ph
	ldrb	r1, [r5, #2]
	add	r1, r1, r2
	mov	r2, r11
	ldrb	r3, [r1, #-97]
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %if.end82.lr.ph
	mov	r1, r10
	bl	BF_set_key
	ldr	r1, .LCPI1_7
	add	r0, r11, #72
	b	.LBB1_28
.LCPI1_7:
	.long	BF_init_state
.section bb1_28
.LBB1_28:                               @ %if.end82.lr.ph
	mov	r2, #4096
	add	r1, r1, #72
	bl	memcpy
	ldr	r6, [sp, #20]           @ 4-byte Reload
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %if.end82.lr.ph
	mov	r4, #148
	mov	r0, r11
	mov	r3, r11
	str	r11, [sp]
	b	.LBB1_30
.section bb1_30
.LBB1_30:                               @ %if.end82.lr.ph
	orr	r4, r4, #4096
	ldr	r2, [r11, r4]
	ldr	r1, [r6]
	bl	BF_encrypt
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %if.end82.lr.ph
	add	r1, r11, #156
	add	r8, r11, #8
	add	r1, r1, #4096
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %if.end82.lr.ph
	add	r1, r11, #152
	add	r7, r1, #4096
	add	r1, r11, r4
	str	r7, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %if.end82
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #28]           @ 4-byte Reload
	ldr	r3, [r8, #-4]
	str	r8, [sp]
	ldr	r2, [r1]
	b	.LBB1_34
.section bb1_34
.LBB1_34:                               @ %if.end82
                                        @   in Loop: Header=BB1_33 Depth=1
	ldr	r1, [r7]
	eor	r1, r1, r0
	eor	r2, r2, r3
	mov	r0, r11
	b	.LBB1_35
.section bb1_35
.LBB1_35:                               @ %if.end82
                                        @   in Loop: Header=BB1_33 Depth=1
	mov	r3, r8
	bl	BF_encrypt
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	r4, r7
	b	.LBB1_36
.section bb1_36
.LBB1_36:                               @ %if.end82
                                        @   in Loop: Header=BB1_33 Depth=1
	ldr	r7, [r8, #4]
	add	r3, r8, #8
	str	r3, [sp]
	ldr	r2, [r1]
	b	.LBB1_37
.section bb1_37
.LBB1_37:                               @ %if.end82
                                        @   in Loop: Header=BB1_33 Depth=1
	ldr	r1, [r6]
	eor	r1, r1, r0
	eor	r2, r2, r7
	mov	r0, r11
	b	.LBB1_38
.section bb1_38
.LBB1_38:                               @ %if.end82
                                        @   in Loop: Header=BB1_33 Depth=1
	mov	r7, r4
	bl	BF_encrypt
	add	r8, r8, #16
	cmp	r8, r10
	blo	.LBB1_33
	b	.LBB1_39
.section bb1_39
.LBB1_39:                               @ %do.body95.preheader
	add	r0, r11, #76
	add	r8, r0, #4096
	b	.LBB1_40
.section bb1_40
.LBB1_40:                               @ %do.body95
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_41 Depth 2
                                        @     Child Loop BB1_47 Depth 2
	ldr	r6, [sp, #24]           @ 4-byte Reload
	mov	r0, #0
	b	.LBB1_41
.section bb1_41
.LBB1_41:                               @ %for.body
                                        @   Parent Loop BB1_40 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r10, r0, lsl #2]
	ldr	r2, [r11, r0, lsl #2]
	eor	r1, r2, r1
	add	r2, r11, r0, lsl #2
	b	.LBB1_42
.section bb1_42
.LBB1_42:                               @ %for.body
                                        @   in Loop: Header=BB1_41 Depth=2
	str	r1, [r11, r0, lsl #2]
	ldr	r1, [r8, r0, lsl #2]
	ldr	r3, [r2, #4]
	add	r0, r0, #2
	b	.LBB1_43
.section bb1_43
.LBB1_43:                               @ %for.body
                                        @   in Loop: Header=BB1_41 Depth=2
	cmp	r0, #18
	eor	r1, r3, r1
	str	r1, [r2, #4]
	blt	.LBB1_41
	b	.LBB1_44
.section bb1_44
.LBB1_44:                               @ %do.body115
                                        @   in Loop: Header=BB1_40 Depth=1
	mov	r0, r11
	mov	r1, #0
	mov	r2, #0
	mov	r3, r11
	b	.LBB1_45
.section bb1_45
.LBB1_45:                               @ %do.body115
                                        @   in Loop: Header=BB1_40 Depth=1
	str	r10, [sp]
	mov	r4, #0
	bl	BF_encrypt
	ldr	r2, [sp, #20]           @ 4-byte Reload
	b	.LBB1_46
.section bb1_46
.LBB1_46:                               @ %do.body115
                                        @   in Loop: Header=BB1_40 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r3, [r7]
	ldr	r1, [r0]
	ldr	r0, [r6]
	ldr	r2, [r2]
	b	.LBB1_47
.section bb1_47
.LBB1_47:                               @ %for.body142
                                        @   Parent Loop BB1_40 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r11, r4, lsl #2]
	eor	r7, r7, r2
	str	r7, [r11, r4, lsl #2]
	add	r7, r11, r4, lsl #2
	b	.LBB1_48
.section bb1_48
.LBB1_48:                               @ %for.body142
                                        @   in Loop: Header=BB1_47 Depth=2
	add	r4, r4, #4
	ldr	r6, [r7, #4]
	cmp	r4, #16
	eor	r6, r6, r0
	b	.LBB1_49
.section bb1_49
.LBB1_49:                               @ %for.body142
                                        @   in Loop: Header=BB1_47 Depth=2
	str	r6, [r7, #4]
	ldr	r6, [r7, #8]
	eor	r6, r6, r3
	str	r6, [r7, #8]
	b	.LBB1_50
.section bb1_50
.LBB1_50:                               @ %for.body142
                                        @   in Loop: Header=BB1_47 Depth=2
	ldr	r6, [r7, #12]
	eor	r6, r6, r1
	str	r6, [r7, #12]
	blt	.LBB1_47
	b	.LBB1_51
.section bb1_51
.LBB1_51:                               @ %for.end168
                                        @   in Loop: Header=BB1_40 Depth=1
	add	r6, sp, #40
	mov	r3, r11
	str	r10, [sp]
	ldr	r1, [r6, #68]
	b	.LBB1_52
.section bb1_52
.LBB1_52:                               @ %for.end168
                                        @   in Loop: Header=BB1_40 Depth=1
	eor	r1, r1, r2
	mov	r2, #0
	str	r1, [r6, #68]
	ldr	r1, [r6, #72]
	b	.LBB1_53
.section bb1_53
.LBB1_53:                               @ %for.end168
                                        @   in Loop: Header=BB1_40 Depth=1
	eor	r0, r1, r0
	mov	r1, #0
	str	r0, [r6, #72]
	mov	r0, r11
	b	.LBB1_54
.section bb1_54
.LBB1_54:                               @ %for.end168
                                        @   in Loop: Header=BB1_40 Depth=1
	bl	BF_encrypt
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r7, [sp, #12]           @ 4-byte Reload
	subs	r0, r0, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	bne	.LBB1_40
	b	.LBB1_55
.section bb1_55
.LBB1_55:                               @ %for.cond184.preheader
	mov	r8, #0
	add	r7, sp, #36
	b	.LBB1_56
.section bb1_56
.LBB1_56:                               @ %for.body187
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_58 Depth 2
	ldr	r0, .LCPI1_8
	orr	r10, r8, #1
	mvn	r4, #63
	ldr	r2, [r0, r10, lsl #2]
	ldr	r1, [r0, r8, lsl #2]
	str	r2, [r6]
	b	.LBB1_58
.LCPI1_8:
	.long	BF_magic_w
.section bb1_57
.LBB1_57:                               @ %do.body193.do.body193_crit_edge
                                        @   in Loop: Header=BB1_58 Depth=2
	ldr	r2, [r6]
	b	.LBB1_58
.section bb1_58
.LBB1_58:                               @ %do.body193
                                        @   Parent Loop BB1_56 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r11
	mov	r3, r7
	str	r7, [sp]
	bl	BF_encrypt
	mov	r1, r0
	adds	r4, r4, #1
	bne	.LBB1_57
	b	.LBB1_59
.section bb1_59
.LBB1_59:                               @ %do.end202
                                        @   in Loop: Header=BB1_56 Depth=1
	ldr	r2, [sp, #16]           @ 4-byte Reload
	ldr	r0, [r6]
	str	r1, [r2, r8, lsl #2]
	add	r8, r8, #2
	str	r0, [r2, r10, lsl #2]
	cmp	r8, #6
	blt	.LBB1_56
	b	.LBB1_60
.section bb1_60
.LBB1_60:                               @ %for.end213
	mov	r0, r9
	mov	r1, r5
	mov	r2, #28
	bl	memcpy
	b	.LBB1_61
.section bb1_61
.LBB1_61:                               @ %for.end213
	ldrb	r0, [r5, #28]
	ldr	r1, .LCPI1_6
	ldr	r7, [sp, #16]           @ 4-byte Reload
	mov	r6, #255
	b	.LBB1_62
.LCPI1_1:
	.long	BF_atoi64
.LCPI1_6:
	.long	BF_crypt.flags_by_subtype
.section bb1_62
.LBB1_62:                               @ %for.end213
	mov	r5, #65280
	orr	r6, r6, #16711680
	orr	r5, r5, #-16777216
	add	r0, r0, r1
	b	.LBB1_63
.section bb1_63
.LBB1_63:                               @ %for.end213
	ldrb	r0, [r0, #-32]
	and	r1, r0, #48
	ldr	r0, .LCPI1_9
	ldrb	r1, [r0, r1]
	strb	r1, [r9, #28]
	mov	r1, #0
	b	.LBB1_64
.LCPI1_9:
	.long	BF_itoa64
.section bb1_64
.LBB1_64:                               @ %do.body.i304
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r7, r1, lsl #2]
	ror	r2, r2, #16
	and	r3, r6, r2, lsr #8
	and	r2, r5, r2, lsl #8
	b	.LBB1_65
.section bb1_65
.LBB1_65:                               @ %do.body.i304
                                        @   in Loop: Header=BB1_64 Depth=1
	orr	r2, r2, r3
	str	r2, [r7, r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, #6
	bne	.LBB1_64
	b	.LBB1_66
.section bb1_66
.LBB1_66:                               @ %BF_swap.exit
	ldr	r4, [sp, #20]           @ 4-byte Reload
	add	r1, r9, #32
	mov	r3, #48
	mov	r7, #60
	add	r2, r4, #23
	b	.LBB1_67
.section bb1_67
.LBB1_67:                               @ %do.body.i293
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r6, [r4], #1
	ldrb	r5, [r0, r6, lsr #2]
	and	r6, r3, r6, lsl #4
	cmp	r4, r2
	strb	r5, [r1, #-3]
	bhs	.LBB1_73
	b	.LBB1_68
.section bb1_68
.LBB1_68:                               @ %if.end.i296
                                        @   in Loop: Header=BB1_67 Depth=1
	ldrb	r5, [r4], #1
	orr	r6, r6, r5, lsr #4
	cmp	r4, r2
	ldrb	r6, [r0, r6]
	strb	r6, [r1, #-2]
	and	r6, r7, r5, lsl #2
	bhs	.LBB1_74
	b	.LBB1_69
.section bb1_69
.LBB1_69:                               @ %if.end17.i298
                                        @   in Loop: Header=BB1_67 Depth=1
	ldrb	r5, [r4], #1
	orr	r6, r6, r5, lsr #6
	cmp	r4, r2
	ldrb	r6, [r0, r6]
	b	.LBB1_70
.section bb1_70
.LBB1_70:                               @ %if.end17.i298
                                        @   in Loop: Header=BB1_67 Depth=1
	strb	r6, [r1, #-1]
	and	r6, r5, #63
	ldrb	r6, [r0, r6]
	strb	r6, [r1]
	add	r1, r1, #4
	blo	.LBB1_67
	b	.LBB1_75
.section bb1_71
.LBB1_71:
	mov	r9, #0
	b	.LBB1_72
.section bb1_72
.LBB1_72:                               @ %cleanup
	mov	r0, r9
	add	sp, sp, #212
	add	sp, sp, #4096
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb1_73
.LBB1_73:                               @ %if.then.i
	ldrb	r0, [r0, r6]
	strb	r0, [r1, #-2]
	b	.LBB1_75
.section bb1_74
.LBB1_74:                               @ %if.then14.i
	ldrb	r0, [r0, r6]
	strb	r0, [r1, #-1]
	b	.LBB1_75
.section bb1_75
.LBB1_75:                               @ %BF_encode.exit
	mov	r0, #0
	strb	r0, [r9, #60]
	b	.LBB1_72
.Ltmp1:
	.size	BF_crypt, .Ltmp1-BF_crypt
	.cantunwind
	.fnend

	.align	2
	.type	BF_set_key,%function
.section bb2_0
BF_set_key:                             @ @BF_set_key
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	lsl	r7, r3, #15
	and	lr, r3, #1
	mov	r10, #0
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	mov	r11, #0
	mov	r5, r0
	mov	r9, #0
	str	r7, [sp]                @ 4-byte Spill
	mov	r7, #0
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_6 Depth 2
	mov	r12, #4
	mov	r4, #0
	mov	r3, #0
	str	r10, [sp, #8]
	str	r10, [sp, #4]
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %for.body8
                                        @   Parent Loop BB2_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	lsl	r8, r3, #8
	cmp	r12, #4
	str	r8, [sp, #4]
	ldrb	r6, [r5]
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %for.body8
                                        @   in Loop: Header=BB2_6 Depth=2
	orr	r3, r6, r3, lsl #8
	lsl	r6, r4, #8
	str	r3, [sp, #4]
	str	r6, [sp, #8]
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %for.body8
                                        @   in Loop: Header=BB2_6 Depth=2
	ldrsb	r6, [r5]
	orr	r4, r6, r4, lsl #8
	and	r6, r6, #128
	str	r4, [sp, #8]
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %for.body8
                                        @   in Loop: Header=BB2_6 Depth=2
	orrne	r7, r7, r6
	ldrb	r6, [r5], #1
	cmp	r6, #0
	moveq	r5, r0
	subs	r12, r12, #1
	bne	.LBB2_6
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %for.end
                                        @   in Loop: Header=BB2_5 Depth=1
	add	r6, sp, #4
	eor	r3, r4, r3
	ldr	r12, [r6, lr, lsl #2]
	ldr	r6, .LCPI2_0
	b	.LBB2_11
.LCPI2_0:
	.long	BF_init_state
.section bb2_11
.LBB2_11:                               @ %for.end
                                        @   in Loop: Header=BB2_5 Depth=1
	orr	r11, r3, r11
	ldr	r6, [r6, r9, lsl #2]
	str	r12, [r1, r9, lsl #2]
	eor	r6, r12, r6
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %for.end
                                        @   in Loop: Header=BB2_5 Depth=1
	str	r6, [r2, r9, lsl #2]
	add	r9, r9, #1
	cmp	r9, #18
	bne	.LBB2_5
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %for.end35
	ldr	r0, [sp]                @ 4-byte Reload
	mov	r1, #255
	mov	r3, #16711680
	orr	r1, r1, #65280
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %for.end35
	orr	r3, r3, #-16777216
	and	r1, r11, r1
	orr	r1, r1, r11, lsr #16
	and	r0, r0, r7, lsl #9
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %for.end35
	sub	r1, r3, r1
	and	r0, r0, r1
	ldr	r1, [r2]
	and	r0, r0, #65536
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %for.end35
	eor	r0, r1, r0
	str	r0, [r2]
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	BF_set_key, .Ltmp2-BF_set_key
	.cantunwind
	.fnend

	.align	2
	.type	BF_encrypt,%function
.section bb3_0
BF_encrypt:                             @ @BF_encrypt
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	add	r4, r0, #72
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %entry
	add	r5, r0, #72
	add	r6, r0, #72
	mov	lr, #1020
	add	r8, r4, #2048
	add	r9, r5, #1024
	add	r10, r6, #3072
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %do.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_5 Depth 2
	ldr	r7, [r0]
	eor	r7, r7, r1
	mov	r1, #0
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %for.body
                                        @   Parent Loop BB3_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r4, lr, r7, lsr #6
	and	r5, lr, r7, lsr #14
	and	r6, lr, r7, lsr #22
	ldr	r11, [r8, r4]
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %for.body
                                        @   in Loop: Header=BB3_5 Depth=2
	add	r4, r0, #72
	ldr	r5, [r9, r5]
	ldr	r6, [r4, r6]
	add	r5, r6, r5
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %for.body
                                        @   in Loop: Header=BB3_5 Depth=2
	and	r6, r7, #255
	ldr	r6, [r10, r6, lsl #2]
	eor	r5, r5, r11
	add	r11, r5, r6
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %for.body
                                        @   in Loop: Header=BB3_5 Depth=2
	add	r6, r0, r1, lsl #2
	add	r1, r1, #2
	ldmib	r6, {r5, r12}
	cmp	r1, #16
	b	.LBB3_9
.section bb3_9
.LBB3_9:                                @ %for.body
                                        @   in Loop: Header=BB3_5 Depth=2
	eor	r2, r5, r2
	eor	r7, r12, r7
	eor	r2, r2, r11
	and	r5, lr, r2, lsr #14
	b	.LBB3_10
.section bb3_10
.LBB3_10:                               @ %for.body
                                        @   in Loop: Header=BB3_5 Depth=2
	and	r6, lr, r2, lsr #22
	ldr	r5, [r9, r5]
	ldr	r4, [r4, r6]
	add	r4, r4, r5
	b	.LBB3_11
.section bb3_11
.LBB3_11:                               @ %for.body
                                        @   in Loop: Header=BB3_5 Depth=2
	and	r5, lr, r2, lsr #6
	ldr	r5, [r8, r5]
	eor	r4, r4, r5
	and	r5, r2, #255
	b	.LBB3_12
.section bb3_12
.LBB3_12:                               @ %for.body
                                        @   in Loop: Header=BB3_5 Depth=2
	ldr	r5, [r10, r5, lsl #2]
	add	r4, r4, r5
	eor	r7, r7, r4
	blt	.LBB3_5
	b	.LBB3_13
.section bb3_13
.LBB3_13:                               @ %for.end
                                        @   in Loop: Header=BB3_4 Depth=1
	ldr	r1, [r0, #68]
	eor	r1, r1, r2
	ldr	r2, [sp, #36]
	stm	r3!, {r1, r7}
	cmp	r3, r2
	mov	r2, r7
	blo	.LBB3_4
	b	.LBB3_14
.section bb3_14
.LBB3_14:                               @ %do.end
	mov	r0, r1
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	BF_encrypt, .Ltmp3-BF_encrypt
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"8b \320\301\322\317\314\330"
	.size	.L.str, 10

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"$2a$00$abcdefghijklmnopqrstuu"
	.size	.L.str1, 30

	.type	__crypt_blowfish.test_hash,%object @ @__crypt_blowfish.test_hash
	.section	.rodata,"a",%progbits
__crypt_blowfish.test_hash:
	.asciz	"VUrPmXD6q/nVSSp7pNDhCR9071IfIRe\000U"
	.asciz	"i1D709vfamulimlGcq0qq3UvuUasvEa\000U"
	.size	__crypt_blowfish.test_hash, 68

	.type	.L.str2,%object         @ @.str2
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str2:
	.asciz	"\377\24334\377\377\377\243345"
	.size	.L.str2, 12

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"*"
	.size	.L.str3, 2

	.type	BF_crypt.flags_by_subtype,%object @ @BF_crypt.flags_by_subtype
	.section	.rodata,"a",%progbits
BF_crypt.flags_by_subtype:
	.asciz	"\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\004"
	.size	BF_crypt.flags_by_subtype, 26

	.type	BF_init_state,%object   @ @BF_init_state
	.align	2
BF_init_state:
	.long	608135816               @ 0x243f6a88
	.long	2242054355              @ 0x85a308d3
	.long	320440878               @ 0x13198a2e
	.long	57701188                @ 0x3707344
	.long	2752067618              @ 0xa4093822
	.long	698298832               @ 0x299f31d0
	.long	137296536               @ 0x82efa98
	.long	3964562569              @ 0xec4e6c89
	.long	1160258022              @ 0x452821e6
	.long	953160567               @ 0x38d01377
	.long	3193202383              @ 0xbe5466cf
	.long	887688300               @ 0x34e90c6c
	.long	3232508343              @ 0xc0ac29b7
	.long	3380367581              @ 0xc97c50dd
	.long	1065670069              @ 0x3f84d5b5
	.long	3041331479              @ 0xb5470917
	.long	2450970073              @ 0x9216d5d9
	.long	2306472731              @ 0x8979fb1b
	.long	3509652390              @ 0xd1310ba6
	.long	2564797868              @ 0x98dfb5ac
	.long	805139163               @ 0x2ffd72db
	.long	3491422135              @ 0xd01adfb7
	.long	3101798381              @ 0xb8e1afed
	.long	1780907670              @ 0x6a267e96
	.long	3128725573              @ 0xba7c9045
	.long	4046225305              @ 0xf12c7f99
	.long	614570311               @ 0x24a19947
	.long	3012652279              @ 0xb3916cf7
	.long	134345442               @ 0x801f2e2
	.long	2240740374              @ 0x858efc16
	.long	1667834072              @ 0x636920d8
	.long	1901547113              @ 0x71574e69
	.long	2757295779              @ 0xa458fea3
	.long	4103290238              @ 0xf4933d7e
	.long	227898511               @ 0xd95748f
	.long	1921955416              @ 0x728eb658
	.long	1904987480              @ 0x718bcd58
	.long	2182433518              @ 0x82154aee
	.long	2069144605              @ 0x7b54a41d
	.long	3260701109              @ 0xc25a59b5
	.long	2620446009              @ 0x9c30d539
	.long	720527379               @ 0x2af26013
	.long	3318853667              @ 0xc5d1b023
	.long	677414384               @ 0x286085f0
	.long	3393288472              @ 0xca417918
	.long	3101374703              @ 0xb8db38ef
	.long	2390351024              @ 0x8e79dcb0
	.long	1614419982              @ 0x603a180e
	.long	1822297739              @ 0x6c9e0e8b
	.long	2954791486              @ 0xb01e8a3e
	.long	3608508353              @ 0xd71577c1
	.long	3174124327              @ 0xbd314b27
	.long	2024746970              @ 0x78af2fda
	.long	1432378464              @ 0x55605c60
	.long	3864339955              @ 0xe65525f3
	.long	2857741204              @ 0xaa55ab94
	.long	1464375394              @ 0x57489862
	.long	1676153920              @ 0x63e81440
	.long	1439316330              @ 0x55ca396a
	.long	715854006               @ 0x2aab10b6
	.long	3033291828              @ 0xb4cc5c34
	.long	289532110               @ 0x1141e8ce
	.long	2706671279              @ 0xa15486af
	.long	2087905683              @ 0x7c72e993
	.long	3018724369              @ 0xb3ee1411
	.long	1668267050              @ 0x636fbc2a
	.long	732546397               @ 0x2ba9c55d
	.long	1947742710              @ 0x741831f6
	.long	3462151702              @ 0xce5c3e16
	.long	2609353502              @ 0x9b87931e
	.long	2950085171              @ 0xafd6ba33
	.long	1814351708              @ 0x6c24cf5c
	.long	2050118529              @ 0x7a325381
	.long	680887927               @ 0x28958677
	.long	999245976               @ 0x3b8f4898
	.long	1800124847              @ 0x6b4bb9af
	.long	3300911131              @ 0xc4bfe81b
	.long	1713906067              @ 0x66282193
	.long	1641548236              @ 0x61d809cc
	.long	4213287313              @ 0xfb21a991
	.long	1216130144              @ 0x487cac60
	.long	1575780402              @ 0x5dec8032
	.long	4018429277              @ 0xef845d5d
	.long	3917837745              @ 0xe98575b1
	.long	3693486850              @ 0xdc262302
	.long	3949271944              @ 0xeb651b88
	.long	596196993               @ 0x23893e81
	.long	3549867205              @ 0xd396acc5
	.long	258830323               @ 0xf6d6ff3
	.long	2213823033              @ 0x83f44239
	.long	772490370               @ 0x2e0b4482
	.long	2760122372              @ 0xa4842004
	.long	1774776394              @ 0x69c8f04a
	.long	2652871518              @ 0x9e1f9b5e
	.long	566650946               @ 0x21c66842
	.long	4142492826              @ 0xf6e96c9a
	.long	1728879713              @ 0x670c9c61
	.long	2882767088              @ 0xabd388f0
	.long	1783734482              @ 0x6a51a0d2
	.long	3629395816              @ 0xd8542f68
	.long	2517608232              @ 0x960fa728
	.long	2874225571              @ 0xab5133a3
	.long	1861159788              @ 0x6eef0b6c
	.long	326777828               @ 0x137a3be4
	.long	3124490320              @ 0xba3bf050
	.long	2130389656              @ 0x7efb2a98
	.long	2716951837              @ 0xa1f1651d
	.long	967770486               @ 0x39af0176
	.long	1724537150              @ 0x66ca593e
	.long	2185432712              @ 0x82430e88
	.long	2364442137              @ 0x8cee8619
	.long	1164943284              @ 0x456f9fb4
	.long	2105845187              @ 0x7d84a5c3
	.long	998989502               @ 0x3b8b5ebe
	.long	3765401048              @ 0xe06f75d8
	.long	2244026483              @ 0x85c12073
	.long	1075463327              @ 0x401a449f
	.long	1455516326              @ 0x56c16aa6
	.long	1322494562              @ 0x4ed3aa62
	.long	910128902               @ 0x363f7706
	.long	469688178               @ 0x1bfedf72
	.long	1117454909              @ 0x429b023d
	.long	936433444               @ 0x37d0d724
	.long	3490320968              @ 0xd00a1248
	.long	3675253459              @ 0xdb0fead3
	.long	1240580251              @ 0x49f1c09b
	.long	122909385               @ 0x75372c9
	.long	2157517691              @ 0x80991b7b
	.long	634681816               @ 0x25d479d8
	.long	4142456567              @ 0xf6e8def7
	.long	3825094682              @ 0xe3fe501a
	.long	3061402683              @ 0xb6794c3b
	.long	2540495037              @ 0x976ce0bd
	.long	79693498                @ 0x4c006ba
	.long	3249098678              @ 0xc1a94fb6
	.long	1084186820              @ 0x409f60c4
	.long	1583128258              @ 0x5e5c9ec2
	.long	426386531               @ 0x196a2463
	.long	1761308591              @ 0x68fb6faf
	.long	1047286709              @ 0x3e6c53b5
	.long	322548459               @ 0x1339b2eb
	.long	995290223               @ 0x3b52ec6f
	.long	1845252383              @ 0x6dfc511f
	.long	2603652396              @ 0x9b30952c
	.long	3431023940              @ 0xcc814544
	.long	2942221577              @ 0xaf5ebd09
	.long	3202600964              @ 0xbee3d004
	.long	3727903485              @ 0xde334afd
	.long	1712269319              @ 0x660f2807
	.long	422464435               @ 0x192e4bb3
	.long	3234572375              @ 0xc0cba857
	.long	1170764815              @ 0x45c8740f
	.long	3523960633              @ 0xd20b5f39
	.long	3117677531              @ 0xb9d3fbdb
	.long	1434042557              @ 0x5579c0bd
	.long	442511882               @ 0x1a60320a
	.long	3600875718              @ 0xd6a100c6
	.long	1076654713              @ 0x402c7279
	.long	1738483198              @ 0x679f25fe
	.long	4213154764              @ 0xfb1fa3cc
	.long	2393238008              @ 0x8ea5e9f8
	.long	3677496056              @ 0xdb3222f8
	.long	1014306527              @ 0x3c7516df
	.long	4251020053              @ 0xfd616b15
	.long	793779912               @ 0x2f501ec8
	.long	2902807211              @ 0xad0552ab
	.long	842905082               @ 0x323db5fa
	.long	4246964064              @ 0xfd238760
	.long	1395751752              @ 0x53317b48
	.long	1040244610              @ 0x3e00df82
	.long	2656851899              @ 0x9e5c57bb
	.long	3396308128              @ 0xca6f8ca0
	.long	445077038               @ 0x1a87562e
	.long	3742853595              @ 0xdf1769db
	.long	3577915638              @ 0xd542a8f6
	.long	679411651               @ 0x287effc3
	.long	2892444358              @ 0xac6732c6
	.long	2354009459              @ 0x8c4f5573
	.long	1767581616              @ 0x695b27b0
	.long	3150600392              @ 0xbbca58c8
	.long	3791627101              @ 0xe1ffa35d
	.long	3102740896              @ 0xb8f011a0
	.long	284835224               @ 0x10fa3d98
	.long	4246832056              @ 0xfd2183b8
	.long	1258075500              @ 0x4afcb56c
	.long	768725851               @ 0x2dd1d35b
	.long	2589189241              @ 0x9a53e479
	.long	3069724005              @ 0xb6f84565
	.long	3532540348              @ 0xd28e49bc
	.long	1274779536              @ 0x4bfb9790
	.long	3789419226              @ 0xe1ddf2da
	.long	2764799539              @ 0xa4cb7e33
	.long	1660621633              @ 0x62fb1341
	.long	3471099624              @ 0xcee4c6e8
	.long	4011903706              @ 0xef20cada
	.long	913787905               @ 0x36774c01
	.long	3497959166              @ 0xd07e9efe
	.long	737222580               @ 0x2bf11fb4
	.long	2514213453              @ 0x95dbda4d
	.long	2928710040              @ 0xae909198
	.long	3937242737              @ 0xeaad8e71
	.long	1804850592              @ 0x6b93d5a0
	.long	3499020752              @ 0xd08ed1d0
	.long	2949064160              @ 0xafc725e0
	.long	2386320175              @ 0x8e3c5b2f
	.long	2390070455              @ 0x8e7594b7
	.long	2415321851              @ 0x8ff6e2fb
	.long	4061277028              @ 0xf2122b64
	.long	2290661394              @ 0x8888b812
	.long	2416832540              @ 0x900df01c
	.long	1336762016              @ 0x4fad5ea0
	.long	1754252060              @ 0x688fc31c
	.long	3520065937              @ 0xd1cff191
	.long	3014181293              @ 0xb3a8c1ad
	.long	791618072               @ 0x2f2f2218
	.long	3188594551              @ 0xbe0e1777
	.long	3933548030              @ 0xea752dfe
	.long	2332172193              @ 0x8b021fa1
	.long	3852520463              @ 0xe5a0cc0f
	.long	3043980520              @ 0xb56f74e8
	.long	413987798               @ 0x18acf3d6
	.long	3465142937              @ 0xce89e299
	.long	3030929376              @ 0xb4a84fe0
	.long	4245938359              @ 0xfd13e0b7
	.long	2093235073              @ 0x7cc43b81
	.long	3534596313              @ 0xd2ada8d9
	.long	375366246               @ 0x165fa266
	.long	2157278981              @ 0x80957705
	.long	2479649556              @ 0x93cc7314
	.long	555357303               @ 0x211a1477
	.long	3870105701              @ 0xe6ad2065
	.long	2008414854              @ 0x77b5fa86
	.long	3344188149              @ 0xc75442f5
	.long	4221384143              @ 0xfb9d35cf
	.long	3956125452              @ 0xebcdaf0c
	.long	2067696032              @ 0x7b3e89a0
	.long	3594591187              @ 0xd6411bd3
	.long	2921233993              @ 0xae1e7e49
	.long	2428461                 @ 0x250e2d
	.long	544322398               @ 0x2071b35e
	.long	577241275               @ 0x226800bb
	.long	1471733935              @ 0x57b8e0af
	.long	610547355               @ 0x2464369b
	.long	4027169054              @ 0xf009b91e
	.long	1432588573              @ 0x5563911d
	.long	1507829418              @ 0x59dfa6aa
	.long	2025931657              @ 0x78c14389
	.long	3646575487              @ 0xd95a537f
	.long	545086370               @ 0x207d5ba2
	.long	48609733                @ 0x2e5b9c5
	.long	2200306550              @ 0x83260376
	.long	1653985193              @ 0x6295cfa9
	.long	298326376               @ 0x11c81968
	.long	1316178497              @ 0x4e734a41
	.long	3007786442              @ 0xb3472dca
	.long	2064951626              @ 0x7b14a94a
	.long	458293330               @ 0x1b510052
	.long	2589141269              @ 0x9a532915
	.long	3591329599              @ 0xd60f573f
	.long	3164325604              @ 0xbc9bc6e4
	.long	727753846               @ 0x2b60a476
	.long	2179363840              @ 0x81e67400
	.long	146436021               @ 0x8ba6fb5
	.long	1461446943              @ 0x571be91f
	.long	4069977195              @ 0xf296ec6b
	.long	705550613               @ 0x2a0dd915
	.long	3059967265              @ 0xb6636521
	.long	3887724982              @ 0xe7b9f9b6
	.long	4281599278              @ 0xff34052e
	.long	3313849956              @ 0xc5855664
	.long	1404054877              @ 0x53b02d5d
	.long	2845806497              @ 0xa99f8fa1
	.long	146425753               @ 0x8ba4799
	.long	1854211946              @ 0x6e85076a
	.long	1266315497              @ 0x4b7a70e9
	.long	3048417604              @ 0xb5b32944
	.long	3681880366              @ 0xdb75092e
	.long	3289982499              @ 0xc4192623
	.long	2909710000              @ 0xad6ea6b0
	.long	1235738493              @ 0x49a7df7d
	.long	2632868024              @ 0x9cee60b8
	.long	2414719590              @ 0x8fedb266
	.long	3970600049              @ 0xecaa8c71
	.long	1771706367              @ 0x699a17ff
	.long	1449415276              @ 0x5664526c
	.long	3266420449              @ 0xc2b19ee1
	.long	422970021               @ 0x193602a5
	.long	1963543593              @ 0x75094c29
	.long	2690192192              @ 0xa0591340
	.long	3826793022              @ 0xe4183a3e
	.long	1062508698              @ 0x3f54989a
	.long	1531092325              @ 0x5b429d65
	.long	1804592342              @ 0x6b8fe4d6
	.long	2583117782              @ 0x99f73fd6
	.long	2714934279              @ 0xa1d29c07
	.long	4024971509              @ 0xefe830f5
	.long	1294809318              @ 0x4d2d38e6
	.long	4028980673              @ 0xf0255dc1
	.long	1289560198              @ 0x4cdd2086
	.long	2221992742              @ 0x8470eb26
	.long	1669523910              @ 0x6382e9c6
	.long	35572830                @ 0x21ecc5e
	.long	157838143               @ 0x9686b3f
	.long	1052438473              @ 0x3ebaefc9
	.long	1016535060              @ 0x3c971814
	.long	1802137761              @ 0x6b6a70a1
	.long	1753167236              @ 0x687f3584
	.long	1386275462              @ 0x52a0e286
	.long	3080475397              @ 0xb79c5305
	.long	2857371447              @ 0xaa500737
	.long	1040679964              @ 0x3e07841c
	.long	2145300060              @ 0x7fdeae5c
	.long	2390574316              @ 0x8e7d44ec
	.long	1461121720              @ 0x5716f2b8
	.long	2956646967              @ 0xb03ada37
	.long	4031777805              @ 0xf0500c0d
	.long	4028374788              @ 0xf01c1f04
	.long	33600511                @ 0x200b3ff
	.long	2920084762              @ 0xae0cf51a
	.long	1018524850              @ 0x3cb574b2
	.long	629373528               @ 0x25837a58
	.long	3691585981              @ 0xdc0921bd
	.long	3515945977              @ 0xd19113f9
	.long	2091462646              @ 0x7ca92ff6
	.long	2486323059              @ 0x94324773
	.long	586499841               @ 0x22f54701
	.long	988145025               @ 0x3ae5e581
	.long	935516892               @ 0x37c2dadc
	.long	3367335476              @ 0xc8b57634
	.long	2599673255              @ 0x9af3dda7
	.long	2839830854              @ 0xa9446146
	.long	265290510               @ 0xfd0030e
	.long	3972581182              @ 0xecc8c73e
	.long	2759138881              @ 0xa4751e41
	.long	3795373465              @ 0xe238cd99
	.long	1005194799              @ 0x3bea0e2f
	.long	847297441               @ 0x3280bba1
	.long	406762289               @ 0x183eb331
	.long	1314163512              @ 0x4e548b38
	.long	1332590856              @ 0x4f6db908
	.long	1866599683              @ 0x6f420d03
	.long	4127851711              @ 0xf60a04bf
	.long	750260880               @ 0x2cb81290
	.long	613907577               @ 0x24977c79
	.long	1450815602              @ 0x5679b072
	.long	3165620655              @ 0xbcaf89af
	.long	3734664991              @ 0xde9a771f
	.long	3650291728              @ 0xd9930810
	.long	3012275730              @ 0xb38bae12
	.long	3704569646              @ 0xdccf3f2e
	.long	1427272223              @ 0x5512721f
	.long	778793252               @ 0x2e6b7124
	.long	1343938022              @ 0x501adde6
	.long	2676280711              @ 0x9f84cd87
	.long	2052605720              @ 0x7a584718
	.long	1946737175              @ 0x7408da17
	.long	3164576444              @ 0xbc9f9abc
	.long	3914038668              @ 0xe94b7d8c
	.long	3967478842              @ 0xec7aec3a
	.long	3682934266              @ 0xdb851dfa
	.long	1661551462              @ 0x63094366
	.long	3294938066              @ 0xc464c3d2
	.long	4011595847              @ 0xef1c1847
	.long	840292616               @ 0x3215d908
	.long	3712170807              @ 0xdd433b37
	.long	616741398               @ 0x24c2ba16
	.long	312560963               @ 0x12a14d43
	.long	711312465               @ 0x2a65c451
	.long	1351876610              @ 0x50940002
	.long	322626781               @ 0x133ae4dd
	.long	1910503582              @ 0x71dff89e
	.long	271666773               @ 0x10314e55
	.long	2175563734              @ 0x81ac77d6
	.long	1594956187              @ 0x5f11199b
	.long	70604529                @ 0x43556f1
	.long	3617834859              @ 0xd7a3c76b
	.long	1007753275              @ 0x3c11183b
	.long	1495573769              @ 0x5924a509
	.long	4069517037              @ 0xf28fe6ed
	.long	2549218298              @ 0x97f1fbfa
	.long	2663038764              @ 0x9ebabf2c
	.long	504708206               @ 0x1e153c6e
	.long	2263041392              @ 0x86e34570
	.long	3941167025              @ 0xeae96fb1
	.long	2249088522              @ 0x860e5e0a
	.long	1514023603              @ 0x5a3e2ab3
	.long	1998579484              @ 0x771fe71c
	.long	1312622330              @ 0x4e3d06fa
	.long	694541497               @ 0x2965dcb9
	.long	2582060303              @ 0x99e71d0f
	.long	2151582166              @ 0x803e89d6
	.long	1382467621              @ 0x5266c825
	.long	776784248               @ 0x2e4cc978
	.long	2618340202              @ 0x9c10b36a
	.long	3323268794              @ 0xc6150eba
	.long	2497899128              @ 0x94e2ea78
	.long	2784771155              @ 0xa5fc3c53
	.long	503983604               @ 0x1e0a2df4
	.long	4076293799              @ 0xf2f74ea7
	.long	907881277               @ 0x361d2b3d
	.long	423175695               @ 0x1939260f
	.long	432175456               @ 0x19c27960
	.long	1378068232              @ 0x5223a708
	.long	4145222326              @ 0xf71312b6
	.long	3954048622              @ 0xebadfe6e
	.long	3938656102              @ 0xeac31f66
	.long	3820766613              @ 0xe3bc4595
	.long	2793130115              @ 0xa67bc883
	.long	2977904593              @ 0xb17f37d1
	.long	26017576                @ 0x18cff28
	.long	3274890735              @ 0xc332ddef
	.long	3194772133              @ 0xbe6c5aa5
	.long	1700274565              @ 0x65582185
	.long	1756076034              @ 0x68ab9802
	.long	4006520079              @ 0xeecea50f
	.long	3677328699              @ 0xdb2f953b
	.long	720338349               @ 0x2aef7dad
	.long	1533947780              @ 0x5b6e2f84
	.long	354530856               @ 0x1521b628
	.long	688349552               @ 0x29076170
	.long	3973924725              @ 0xecdd4775
	.long	1637815568              @ 0x619f1510
	.long	332179504               @ 0x13cca830
	.long	3949051286              @ 0xeb61bd96
	.long	53804574                @ 0x334fe1e
	.long	2852348879              @ 0xaa0363cf
	.long	3044236432              @ 0xb5735c90
	.long	1282449977              @ 0x4c70a239
	.long	3583942155              @ 0xd59e9e0b
	.long	3416972820              @ 0xcbaade14
	.long	4006381244              @ 0xeecc86bc
	.long	1617046695              @ 0x60622ca7
	.long	2628476075              @ 0x9cab5cab
	.long	3002303598              @ 0xb2f3846e
	.long	1686838959              @ 0x648b1eaf
	.long	431878346               @ 0x19bdf0ca
	.long	2686675385              @ 0xa02369b9
	.long	1700445008              @ 0x655abb50
	.long	1080580658              @ 0x40685a32
	.long	1009431731              @ 0x3c2ab4b3
	.long	832498133               @ 0x319ee9d5
	.long	3223435511              @ 0xc021b8f7
	.long	2605976345              @ 0x9b540b19
	.long	2271191193              @ 0x875fa099
	.long	2516031870              @ 0x95f7997e
	.long	1648197032              @ 0x623d7da8
	.long	4164389018              @ 0xf837889a
	.long	2548247927              @ 0x97e32d77
	.long	300782431               @ 0x11ed935f
	.long	375919233               @ 0x16681281
	.long	238389289               @ 0xe358829
	.long	3353747414              @ 0xc7e61fd6
	.long	2531188641              @ 0x96dedfa1
	.long	2019080857              @ 0x7858ba99
	.long	1475708069              @ 0x57f584a5
	.long	455242339               @ 0x1b227263
	.long	2609103871              @ 0x9b83c3ff
	.long	448939670               @ 0x1ac24696
	.long	3451063019              @ 0xcdb30aeb
	.long	1395535956              @ 0x532e3054
	.long	2413381860              @ 0x8fd948e4
	.long	1841049896              @ 0x6dbc3128
	.long	1491858159              @ 0x58ebf2ef
	.long	885456874               @ 0x34c6ffea
	.long	4264095073              @ 0xfe28ed61
	.long	4001119347              @ 0xee7c3c73
	.long	1565136089              @ 0x5d4a14d9
	.long	3898914787              @ 0xe864b7e3
	.long	1108368660              @ 0x42105d14
	.long	540939232               @ 0x203e13e0
	.long	1173283510              @ 0x45eee2b6
	.long	2745871338              @ 0xa3aaabea
	.long	3681308437              @ 0xdb6c4f15
	.long	4207628240              @ 0xfacb4fd0
	.long	3343053890              @ 0xc742f442
	.long	4016749493              @ 0xef6abbb5
	.long	1699691293              @ 0x654f3b1d
	.long	1103962373              @ 0x41cd2105
	.long	3625875870              @ 0xd81e799e
	.long	2256883143              @ 0x86854dc7
	.long	3830138730              @ 0xe44b476a
	.long	1031889488              @ 0x3d816250
	.long	3479347698              @ 0xcf62a1f2
	.long	1535977030              @ 0x5b8d2646
	.long	4236805024              @ 0xfc8883a0
	.long	3251091107              @ 0xc1c7b6a3
	.long	2132092099              @ 0x7f1524c3
	.long	1774941330              @ 0x69cb7492
	.long	1199868427              @ 0x47848a0b
	.long	1452454533              @ 0x5692b285
	.long	157007616               @ 0x95bbf00
	.long	2904115357              @ 0xad19489d
	.long	342012276               @ 0x1462b174
	.long	595725824               @ 0x23820e00
	.long	1480756522              @ 0x58428d2a
	.long	206960106               @ 0xc55f5ea
	.long	497939518               @ 0x1dadf43e
	.long	591360097               @ 0x233f7061
	.long	863170706               @ 0x3372f092
	.long	2375253569              @ 0x8d937e41
	.long	3596610801              @ 0xd65fecf1
	.long	1814182875              @ 0x6c223bdb
	.long	2094937945              @ 0x7cde3759
	.long	3421402208              @ 0xcbee7460
	.long	1082520231              @ 0x4085f2a7
	.long	3463918190              @ 0xce77326e
	.long	2785509508              @ 0xa6078084
	.long	435703966               @ 0x19f8509e
	.long	3908032597              @ 0xe8efd855
	.long	1641649973              @ 0x61d99735
	.long	2842273706              @ 0xa969a7aa
	.long	3305899714              @ 0xc50c06c2
	.long	1510255612              @ 0x5a04abfc
	.long	2148256476              @ 0x800bcadc
	.long	2655287854              @ 0x9e447a2e
	.long	3276092548              @ 0xc3453484
	.long	4258621189              @ 0xfdd56705
	.long	236887753               @ 0xe1e9ec9
	.long	3681803219              @ 0xdb73dbd3
	.long	274041037               @ 0x105588cd
	.long	1734335097              @ 0x675fda79
	.long	3815195456              @ 0xe3674340
	.long	3317970021              @ 0xc5c43465
	.long	1899903192              @ 0x713e38d8
	.long	1026095262              @ 0x3d28f89e
	.long	4050517792              @ 0xf16dff20
	.long	356393447               @ 0x153e21e7
	.long	2410691914              @ 0x8fb03d4a
	.long	3873677099              @ 0xe6e39f2b
	.long	3682840055              @ 0xdb83adf7
	.long	3913112168              @ 0xe93d5a68
	.long	2491498743              @ 0x948140f7
	.long	4132185628              @ 0xf64c261c
	.long	2489919796              @ 0x94692934
	.long	1091903735              @ 0x411520f7
	.long	1979897079              @ 0x7602d4f7
	.long	3170134830              @ 0xbcf46b2e
	.long	3567386728              @ 0xd4a20068
	.long	3557303409              @ 0xd4082471
	.long	857797738               @ 0x3320f46a
	.long	1136121015              @ 0x43b7d4b7
	.long	1342202287              @ 0x500061af
	.long	507115054               @ 0x1e39f62e
	.long	2535736646              @ 0x97244546
	.long	337727348               @ 0x14214f74
	.long	3213592640              @ 0xbf8b8840
	.long	1301675037              @ 0x4d95fc1d
	.long	2528481711              @ 0x96b591af
	.long	1895095763              @ 0x70f4ddd3
	.long	1721773893              @ 0x66a02f45
	.long	3216771564              @ 0xbfbc09ec
	.long	62756741                @ 0x3bd9785
	.long	2142006736              @ 0x7fac6dd0
	.long	835421444               @ 0x31cb8504
	.long	2531993523              @ 0x96eb27b3
	.long	1442658625              @ 0x55fd3941
	.long	3659876326              @ 0xda2547e6
	.long	2882144922              @ 0xabca0a9a
	.long	676362277               @ 0x28507825
	.long	1392781812              @ 0x530429f4
	.long	170690266               @ 0xa2c86da
	.long	3921047035              @ 0xe9b66dfb
	.long	1759253602              @ 0x68dc1462
	.long	3611846912              @ 0xd7486900
	.long	1745797284              @ 0x680ec0a4
	.long	664899054               @ 0x27a18dee
	.long	1329594018              @ 0x4f3ffea2
	.long	3901205900              @ 0xe887ad8c
	.long	3045908486              @ 0xb58ce006
	.long	2062866102              @ 0x7af4d6b6
	.long	2865634940              @ 0xaace1e7c
	.long	3543621612              @ 0xd3375fec
	.long	3464012697              @ 0xce78a399
	.long	1080764994              @ 0x406b2a42
	.long	553557557               @ 0x20fe9e35
	.long	3656615353              @ 0xd9f385b9
	.long	3996768171              @ 0xee39d7ab
	.long	991055499               @ 0x3b124e8b
	.long	499776247               @ 0x1dc9faf7
	.long	1265440854              @ 0x4b6d1856
	.long	648242737               @ 0x26a36631
	.long	3940784050              @ 0xeae397b2
	.long	980351604               @ 0x3a6efa74
	.long	3713745714              @ 0xdd5b4332
	.long	1749149687              @ 0x6841e7f7
	.long	3396870395              @ 0xca7820fb
	.long	4211799374              @ 0xfb0af54e
	.long	3640570775              @ 0xd8feb397
	.long	1161844396              @ 0x454056ac
	.long	3125318951              @ 0xba489527
	.long	1431517754              @ 0x55533a3a
	.long	545492359               @ 0x20838d87
	.long	4268468663              @ 0xfe6ba9b7
	.long	3499529547              @ 0xd096954b
	.long	1437099964              @ 0x55a867bc
	.long	2702547544              @ 0xa1159a58
	.long	3433638243              @ 0xcca92963
	.long	2581715763              @ 0x99e1db33
	.long	2787789398              @ 0xa62a4a56
	.long	1060185593              @ 0x3f3125f9
	.long	1593081372              @ 0x5ef47e1c
	.long	2418618748              @ 0x9029317c
	.long	4260947970              @ 0xfdf8e802
	.long	69676912                @ 0x4272f70
	.long	2159744348              @ 0x80bb155c
	.long	86519011                @ 0x5282ce3
	.long	2512459080              @ 0x95c11548
	.long	3838209314              @ 0xe4c66d22
	.long	1220612927              @ 0x48c1133f
	.long	3339683548              @ 0xc70f86dc
	.long	133810670               @ 0x7f9c9ee
	.long	1090789135              @ 0x41041f0f
	.long	1078426020              @ 0x404779a4
	.long	1569222167              @ 0x5d886e17
	.long	845107691               @ 0x325f51eb
	.long	3583754449              @ 0xd59bc0d1
	.long	4072456591              @ 0xf2bcc18f
	.long	1091646820              @ 0x41113564
	.long	628848692               @ 0x257b7834
	.long	1613405280              @ 0x602a9c60
	.long	3757631651              @ 0xdff8e8a3
	.long	526609435               @ 0x1f636c1b
	.long	236106946               @ 0xe12b4c2
	.long	48312990                @ 0x2e1329e
	.long	2942717905              @ 0xaf664fd1
	.long	3402727701              @ 0xcad18115
	.long	1797494240              @ 0x6b2395e0
	.long	859738849               @ 0x333e92e1
	.long	992217954               @ 0x3b240b62
	.long	4005476642              @ 0xeebeb922
	.long	2243076622              @ 0x85b2a20e
	.long	3870952857              @ 0xe6ba0d99
	.long	3732016268              @ 0xde720c8c
	.long	765654824               @ 0x2da2f728
	.long	3490871365              @ 0xd0127845
	.long	2511836413              @ 0x95b794fd
	.long	1685915746              @ 0x647d0862
	.long	3888969200              @ 0xe7ccf5f0
	.long	1414112111              @ 0x5449a36f
	.long	2273134842              @ 0x877d48fa
	.long	3281911079              @ 0xc39dfd27
	.long	4080962846              @ 0xf33e8d1e
	.long	172450625               @ 0xa476341
	.long	2569994100              @ 0x992eff74
	.long	980381355               @ 0x3a6f6eab
	.long	4109958455              @ 0xf4f8fd37
	.long	2819808352              @ 0xa812dc60
	.long	2716589560              @ 0xa1ebddf8
	.long	2568741196              @ 0x991be14c
	.long	3681446669              @ 0xdb6e6b0d
	.long	3329971472              @ 0xc67b5510
	.long	1835478071              @ 0x6d672c37
	.long	660984891               @ 0x2765d43b
	.long	3704678404              @ 0xdcd0e804
	.long	4045999559              @ 0xf1290dc7
	.long	3422617507              @ 0xcc00ffa3
	.long	3040415634              @ 0xb5390f92
	.long	1762651403              @ 0x690fed0b
	.long	1719377915              @ 0x667b9ffb
	.long	3470491036              @ 0xcedb7d9c
	.long	2693910283              @ 0xa091cf0b
	.long	3642056355              @ 0xd9155ea3
	.long	3138596744              @ 0xbb132f88
	.long	1364962596              @ 0x515bad24
	.long	2073328063              @ 0x7b9479bf
	.long	1983633131              @ 0x763bd6eb
	.long	926494387               @ 0x37392eb3
	.long	3423689081              @ 0xcc115979
	.long	2150032023              @ 0x8026e297
	.long	4096667949              @ 0xf42e312d
	.long	1749200295              @ 0x6842ada7
	.long	3328846651              @ 0xc66a2b3b
	.long	309677260               @ 0x12754ccc
	.long	2016342300              @ 0x782ef11c
	.long	1779581495              @ 0x6a124237
	.long	3079819751              @ 0xb79251e7
	.long	111262694               @ 0x6a1bbe6
	.long	1274766160              @ 0x4bfb6350
	.long	443224088               @ 0x1a6b1018
	.long	298511866               @ 0x11caedfa
	.long	1025883608              @ 0x3d25bdd8
	.long	3806446537              @ 0xe2e1c3c9
	.long	1145181785              @ 0x44421659
	.long	168956806               @ 0xa121386
	.long	3641502830              @ 0xd90cec6e
	.long	3584813610              @ 0xd5abea2a
	.long	1689216846              @ 0x64af674e
	.long	3666258015              @ 0xda86a85f
	.long	3200248200              @ 0xbebfe988
	.long	1692713982              @ 0x64e4c3fe
	.long	2646376535              @ 0x9dbc8057
	.long	4042768518              @ 0xf0f7c086
	.long	1618508792              @ 0x60787bf8
	.long	1610833997              @ 0x6003604d
	.long	3523052358              @ 0xd1fd8346
	.long	4130873264              @ 0xf6381fb0
	.long	2001055236              @ 0x7745ae04
	.long	3610705100              @ 0xd736fccc
	.long	2202168115              @ 0x83426b33
	.long	4028541809              @ 0xf01eab71
	.long	2961195399              @ 0xb0804187
	.long	1006657119              @ 0x3c005e5f
	.long	2006996926              @ 0x77a057be
	.long	3186142756              @ 0xbde8ae24
	.long	1430667929              @ 0x55464299
	.long	3210227297              @ 0xbf582e61
	.long	1314452623              @ 0x4e58f48f
	.long	4074634658              @ 0xf2ddfda2
	.long	4101304120              @ 0xf474ef38
	.long	2273951170              @ 0x8789bdc2
	.long	1399257539              @ 0x5366f9c3
	.long	3367210612              @ 0xc8b38e74
	.long	3027628629              @ 0xb475f255
	.long	1190975929              @ 0x46fcd9b9
	.long	2062231137              @ 0x7aeb2661
	.long	2333990788              @ 0x8b1ddf84
	.long	2221543033              @ 0x846a0e79
	.long	2438960610              @ 0x915f95e2
	.long	1181637006              @ 0x466e598e
	.long	548689776               @ 0x20b45770
	.long	2362791313              @ 0x8cd55591
	.long	3372408396              @ 0xc902de4c
	.long	3104550113              @ 0xb90bace1
	.long	3145860560              @ 0xbb8205d0
	.long	296247880               @ 0x11a86248
	.long	1970579870              @ 0x7574a99e
	.long	3078560182              @ 0xb77f19b6
	.long	3769228297              @ 0xe0a9dc09
	.long	1714227617              @ 0x662d09a1
	.long	3291629107              @ 0xc4324633
	.long	3898220290              @ 0xe85a1f02
	.long	166772364               @ 0x9f0be8c
	.long	1251581989              @ 0x4a99a025
	.long	493813264               @ 0x1d6efe10
	.long	448347421               @ 0x1ab93d1d
	.long	195405023               @ 0xba5a4df
	.long	2709975567              @ 0xa186f20f
	.long	677966185               @ 0x2868f169
	.long	3703036547              @ 0xdcb7da83
	.long	1463355134              @ 0x573906fe
	.long	2715995803              @ 0xa1e2ce9b
	.long	1338867538              @ 0x4fcd7f52
	.long	1343315457              @ 0x50115e01
	.long	2802222074              @ 0xa70683fa
	.long	2684532164              @ 0xa002b5c4
	.long	233230375               @ 0xde6d027
	.long	2599980071              @ 0x9af88c27
	.long	2000651841              @ 0x773f8641
	.long	3277868038              @ 0xc3604c06
	.long	1638401717              @ 0x61a806b5
	.long	4028070440              @ 0xf0177a28
	.long	3237316320              @ 0xc0f586e0
	.long	6314154                 @ 0x6058aa
	.long	819756386               @ 0x30dc7d62
	.long	300326615               @ 0x11e69ed7
	.long	590932579               @ 0x2338ea63
	.long	1405279636              @ 0x53c2dd94
	.long	3267499572              @ 0xc2c21634
	.long	3150704214              @ 0xbbcbee56
	.long	2428286686              @ 0x90bcb6de
	.long	3959192993              @ 0xebfc7da1
	.long	3461946742              @ 0xce591d76
	.long	1862657033              @ 0x6f05e409
	.long	1266418056              @ 0x4b7c0188
	.long	963775037               @ 0x39720a3d
	.long	2089974820              @ 0x7c927c24
	.long	2263052895              @ 0x86e3725f
	.long	1917689273              @ 0x724d9db9
	.long	448879540               @ 0x1ac15bb4
	.long	3550394620              @ 0xd39eb8fc
	.long	3981727096              @ 0xed545578
	.long	150775221               @ 0x8fca5b5
	.long	3627908307              @ 0xd83d7cd3
	.long	1303187396              @ 0x4dad0fc4
	.long	508620638               @ 0x1e50ef5e
	.long	2975983352              @ 0xb161e6f8
	.long	2726630617              @ 0xa28514d9
	.long	1817252668              @ 0x6c51133c
	.long	1876281319              @ 0x6fd5c7e7
	.long	1457606340              @ 0x56e14ec4
	.long	908771278               @ 0x362abfce
	.long	3720792119              @ 0xddc6c837
	.long	3617206836              @ 0xd79a3234
	.long	2455994898              @ 0x92638212
	.long	1729034894              @ 0x670efa8e
	.long	1080033504              @ 0x406000e0
	.long	976866871               @ 0x3a39ce37
	.long	3556439503              @ 0xd3faf5cf
	.long	2881648439              @ 0xabc27737
	.long	1522871579              @ 0x5ac52d1b
	.long	1555064734              @ 0x5cb0679e
	.long	1336096578              @ 0x4fa33742
	.long	3548522304              @ 0xd3822740
	.long	2579274686              @ 0x99bc9bbe
	.long	3574697629              @ 0xd5118e9d
	.long	3205460757              @ 0xbf0f7315
	.long	3593280638              @ 0xd62d1c7e
	.long	3338716283              @ 0xc700c47b
	.long	3079412587              @ 0xb78c1b6b
	.long	564236357               @ 0x21a19045
	.long	2993598910              @ 0xb26eb1be
	.long	1781952180              @ 0x6a366eb4
	.long	1464380207              @ 0x5748ab2f
	.long	3163844217              @ 0xbc946e79
	.long	3332601554              @ 0xc6a376d2
	.long	1699332808              @ 0x6549c2c8
	.long	1393555694              @ 0x530ff8ee
	.long	1183702653              @ 0x468dde7d
	.long	3581086237              @ 0xd5730a1d
	.long	1288719814              @ 0x4cd04dc6
	.long	691649499               @ 0x2939bbdb
	.long	2847557200              @ 0xa9ba4650
	.long	2895455976              @ 0xac9526e8
	.long	3193889540              @ 0xbe5ee304
	.long	2717570544              @ 0xa1fad5f0
	.long	1781354906              @ 0x6a2d519a
	.long	1676643554              @ 0x63ef8ce2
	.long	2592534050              @ 0x9a86ee22
	.long	3230253752              @ 0xc089c2b8
	.long	1126444790              @ 0x43242ef6
	.long	2770207658              @ 0xa51e03aa
	.long	2633158820              @ 0x9cf2d0a4
	.long	2210423226              @ 0x83c061ba
	.long	2615765581              @ 0x9be96a4d
	.long	2414155088              @ 0x8fe51550
	.long	3127139286              @ 0xba645bd6
	.long	673620729               @ 0x2826a2f9
	.long	2805611233              @ 0xa73a3ae1
	.long	1269405062              @ 0x4ba99586
	.long	4015350505              @ 0xef5562e9
	.long	3341807571              @ 0xc72fefd3
	.long	4149409754              @ 0xf752f7da
	.long	1057255273              @ 0x3f046f69
	.long	2012875353              @ 0x77fa0a59
	.long	2162469141              @ 0x80e4a915
	.long	2276492801              @ 0x87b08601
	.long	2601117357              @ 0x9b09e6ad
	.long	993977747               @ 0x3b3ee593
	.long	3918593370              @ 0xe990fd5a
	.long	2654263191              @ 0x9e34d797
	.long	753973209               @ 0x2cf0b7d9
	.long	36408145                @ 0x22b8b51
	.long	2530585658              @ 0x96d5ac3a
	.long	25011837                @ 0x17da67d
	.long	3520020182              @ 0xd1cf3ed6
	.long	2088578344              @ 0x7c7d2d28
	.long	530523599               @ 0x1f9f25cf
	.long	2918365339              @ 0xadf2b89b
	.long	1524020338              @ 0x5ad6b472
	.long	1518925132              @ 0x5a88f54c
	.long	3760827505              @ 0xe029ac71
	.long	3759777254              @ 0xe019a5e6
	.long	1202760957              @ 0x47b0acfd
	.long	3985898139              @ 0xed93fa9b
	.long	3906192525              @ 0xe8d3c48d
	.long	674977740               @ 0x283b57cc
	.long	4174734889              @ 0xf8d56629
	.long	2031300136              @ 0x79132e28
	.long	2019492241              @ 0x785f0191
	.long	3983892565              @ 0xed756055
	.long	4153806404              @ 0xf7960e44
	.long	3822280332              @ 0xe3d35e8c
	.long	352677332               @ 0x15056dd4
	.long	2297720250              @ 0x88f46dba
	.long	60907813                @ 0x3a16125
	.long	90501309                @ 0x564f0bd
	.long	3286998549              @ 0xc3eb9e15
	.long	1016092578              @ 0x3c9057a2
	.long	2535922412              @ 0x97271aec
	.long	2839152426              @ 0xa93a072a
	.long	457141659               @ 0x1b3f6d9b
	.long	509813237               @ 0x1e6321f5
	.long	4120667899              @ 0xf59c66fb
	.long	652014361               @ 0x26dcf319
	.long	1966332200              @ 0x7533d928
	.long	2975202805              @ 0xb155fdf5
	.long	55981186                @ 0x3563482
	.long	2327461051              @ 0x8aba3cbb
	.long	676427537               @ 0x28517711
	.long	3255491064              @ 0xc20ad9f8
	.long	2882294119              @ 0xabcc5167
	.long	3433927263              @ 0xccad925f
	.long	1307055953              @ 0x4de81751
	.long	942726286               @ 0x3830dc8e
	.long	933058658               @ 0x379d5862
	.long	2468411793              @ 0x9320f991
	.long	3933900994              @ 0xea7a90c2
	.long	4215176142              @ 0xfb3e7bce
	.long	1361170020              @ 0x5121ce64
	.long	2001714738              @ 0x774fbe32
	.long	2830558078              @ 0xa8b6e37e
	.long	3274259782              @ 0xc3293d46
	.long	1222529897              @ 0x48de5369
	.long	1679025792              @ 0x6413e680
	.long	2729314320              @ 0xa2ae0810
	.long	3714953764              @ 0xdd6db224
	.long	1770335741              @ 0x69852dfd
	.long	151462246               @ 0x9072166
	.long	3013232138              @ 0xb39a460a
	.long	1682292957              @ 0x6445c0dd
	.long	1483529935              @ 0x586cdecf
	.long	471910574               @ 0x1c20c8ae
	.long	1539241949              @ 0x5bbef7dd
	.long	458788160               @ 0x1b588d40
	.long	3436315007              @ 0xccd2017f
	.long	1807016891              @ 0x6bb4e3bb
	.long	3718408830              @ 0xdda26a7e
	.long	978976581               @ 0x3a59ff45
	.long	1043663428              @ 0x3e350a44
	.long	3165965781              @ 0xbcb4cdd5
	.long	1927990952              @ 0x72eacea8
	.long	4200891579              @ 0xfa6484bb
	.long	2372276910              @ 0x8d6612ae
	.long	3208408903              @ 0xbf3c6f47
	.long	3533431907              @ 0xd29be463
	.long	1412390302              @ 0x542f5d9e
	.long	2931980059              @ 0xaec2771b
	.long	4132332400              @ 0xf64e6370
	.long	1947078029              @ 0x740e0d8d
	.long	3881505623              @ 0xe75b1357
	.long	4168226417              @ 0xf8721671
	.long	2941484381              @ 0xaf537d5d
	.long	1077988104              @ 0x4040cb08
	.long	1320477388              @ 0x4eb4e2cc
	.long	886195818               @ 0x34d2466a
	.long	18198404                @ 0x115af84
	.long	3786409000              @ 0xe1b00428
	.long	2509781533              @ 0x95983a1d
	.long	112762804               @ 0x6b89fb4
	.long	3463356488              @ 0xce6ea048
	.long	1866414978              @ 0x6f3f3b82
	.long	891333506               @ 0x3520ab82
	.long	18488651                @ 0x11a1d4b
	.long	661792760               @ 0x277227f8
	.long	1628790961              @ 0x611560b1
	.long	3885187036              @ 0xe7933fdc
	.long	3141171499              @ 0xbb3a792b
	.long	876946877               @ 0x344525bd
	.long	2693282273              @ 0xa08839e1
	.long	1372485963              @ 0x51ce794b
	.long	791857591               @ 0x2f32c9b7
	.long	2686433993              @ 0xa01fbac9
	.long	3759982718              @ 0xe01cc87e
	.long	3167212022              @ 0xbcc7d1f6
	.long	3472953795              @ 0xcf0111c3
	.long	2716379847              @ 0xa1e8aac7
	.long	445679433               @ 0x1a908749
	.long	3561995674              @ 0xd44fbd9a
	.long	3504004811              @ 0xd0dadecb
	.long	3574258232              @ 0xd50ada38
	.long	54117162                @ 0x339c32a
	.long	3331405415              @ 0xc6913667
	.long	2381918588              @ 0x8df9317c
	.long	3769707343              @ 0xe0b12b4f
	.long	4154350007              @ 0xf79e59b7
	.long	1140177722              @ 0x43f5bb3a
	.long	4074052095              @ 0xf2d519ff
	.long	668550556               @ 0x27d9459c
	.long	3214352940              @ 0xbf97222c
	.long	367459370               @ 0x15e6fc2a
	.long	261225585               @ 0xf91fc71
	.long	2610173221              @ 0x9b941525
	.long	4209349473              @ 0xfae59361
	.long	3468074219              @ 0xceb69ceb
	.long	3265815641              @ 0xc2a86459
	.long	314222801               @ 0x12baa8d1
	.long	3066103646              @ 0xb6c1075e
	.long	3808782860              @ 0xe3056a0c
	.long	282218597               @ 0x10d25065
	.long	3406013506              @ 0xcb03a442
	.long	3773591054              @ 0xe0ec6e0e
	.long	379116347               @ 0x1698db3b
	.long	1285071038              @ 0x4c98a0be
	.long	846784868               @ 0x3278e964
	.long	2669647154              @ 0x9f1f9532
	.long	3771962079              @ 0xe0d392df
	.long	3550491691              @ 0xd3a0342b
	.long	2305946142              @ 0x8971f21e
	.long	453669953               @ 0x1b0a7441
	.long	1268987020              @ 0x4ba3348c
	.long	3317592352              @ 0xc5be7120
	.long	3279303384              @ 0xc37632d8
	.long	3744833421              @ 0xdf359f8d
	.long	2610507566              @ 0x9b992f2e
	.long	3859509063              @ 0xe60b6f47
	.long	266596637               @ 0xfe3f11d
	.long	3847019092              @ 0xe54cda54
	.long	517658769               @ 0x1edad891
	.long	3462560207              @ 0xce6279cf
	.long	3443424879              @ 0xcd3e7e6f
	.long	370717030               @ 0x1618b166
	.long	4247526661              @ 0xfd2c1d05
	.long	2224018117              @ 0x848fd2c5
	.long	4143653529              @ 0xf6fb2299
	.long	4112773975              @ 0xf523f357
	.long	2788324899              @ 0xa6327623
	.long	2477274417              @ 0x93a83531
	.long	1456262402              @ 0x56cccd02
	.long	2901442914              @ 0xacf08162
	.long	1517677493              @ 0x5a75ebb5
	.long	1846949527              @ 0x6e163697
	.long	2295493580              @ 0x88d273cc
	.long	3734397586              @ 0xde966292
	.long	2176403920              @ 0x81b949d0
	.long	1280348187              @ 0x4c50901b
	.long	1908823572              @ 0x71c65614
	.long	3871786941              @ 0xe6c6c7bd
	.long	846861322               @ 0x327a140a
	.long	1172426758              @ 0x45e1d006
	.long	3287448474              @ 0xc3f27b9a
	.long	3383383037              @ 0xc9aa53fd
	.long	1655181056              @ 0x62a80f00
	.long	3139813346              @ 0xbb25bfe2
	.long	901632758               @ 0x35bdd2f6
	.long	1897031941              @ 0x71126905
	.long	2986607138              @ 0xb2040222
	.long	3066810236              @ 0xb6cbcf7c
	.long	3447102507              @ 0xcd769c2b
	.long	1393639104              @ 0x53113ec0
	.long	373351379               @ 0x1640e3d3
	.long	950779232               @ 0x38abbd60
	.long	625454576               @ 0x2547adf0
	.long	3124240540              @ 0xba38209c
	.long	4148612726              @ 0xf746ce76
	.long	2007998917              @ 0x77afa1c5
	.long	544563296               @ 0x20756060
	.long	2244738638              @ 0x85cbfe4e
	.long	2330496472              @ 0x8ae88dd8
	.long	2058025392              @ 0x7aaaf9b0
	.long	1291430526              @ 0x4cf9aa7e
	.long	424198748               @ 0x1948c25c
	.long	50039436                @ 0x2fb8a8c
	.long	29584100                @ 0x1c36ae4
	.long	3605783033              @ 0xd6ebe1f9
	.long	2429876329              @ 0x90d4f869
	.long	2791104160              @ 0xa65cdea0
	.long	1057563949              @ 0x3f09252d
	.long	3255363231              @ 0xc208e69f
	.long	3075367218              @ 0xb74e6132
	.long	3463963227              @ 0xce77e25b
	.long	1469046755              @ 0x578fdfe3
	.long	985887462               @ 0x3ac372e6
	.size	BF_init_state, 4168

	.type	BF_magic_w,%object      @ @BF_magic_w
	.align	2
BF_magic_w:
	.long	1332899944              @ 0x4f727068
	.long	1700884034              @ 0x65616e42
	.long	1701343084              @ 0x65686f6c
	.long	1684370003              @ 0x64657253
	.long	1668446532              @ 0x63727944
	.long	1869963892              @ 0x6f756274
	.size	BF_magic_w, 24

	.type	BF_atoi64,%object       @ @BF_atoi64
BF_atoi64:
	.ascii	"@@@@@@@@@@@@@@\000\0016789:;<=>?@@@@@@@\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033@@@@@@\034\035\036\037 !\"#$%&'()*+,-./012345@@@@@"
	.size	BF_atoi64, 96

	.type	BF_itoa64,%object       @ @BF_itoa64
	.section	.rodata.str1.1,"aMS",%progbits,1
BF_itoa64:
	.asciz	"./ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	.size	BF_itoa64, 65


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
