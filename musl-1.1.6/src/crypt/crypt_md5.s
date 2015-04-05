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
	.file	"src/crypt/crypt_md5.bc"
	.globl	__crypt_md5
	.align	2
	.type	__crypt_md5,%function
__crypt_md5:                            @ @__crypt_md5
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#64
	sub	sp, sp, #64
	b	.LBB0_2
.LBB0_2:                                @ %entry
	bl	md5crypt
	mov	r4, r0
	ldr	r0, .LCPI0_4
	ldr	r1, .LCPI0_5
	b	.LBB0_3
.LCPI0_4:
	.long	__crypt_md5.testkey
.LCPI0_5:
	.long	__crypt_md5.testsetting
.LBB0_3:                                @ %entry
	mov	r5, sp
	mov	r2, r5
	bl	md5crypt
	mov	r1, r0
	ldr	r0, .LCPI0_6
	cmp	r4, #0
	beq	.LBB0_7
	b	.LBB0_4
.LCPI0_6:
	.long	.L.str
.LBB0_4:                                @ %entry
	cmp	r1, r5
	bne	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %lor.lhs.false3
	ldr	r1, .LCPI0_8
	mov	r0, sp
	mov	r2, #35
	bl	memcmp
	b	.LBB0_6
.LCPI0_8:
	.long	__crypt_md5.testhash
.LBB0_6:                                @ %lor.lhs.false3
	mov	r1, r0
	ldr	r0, .LCPI0_7
	cmp	r1, #0
	moveq	r0, r4
	b	.LBB0_7
.LCPI0_7:
	.long	.L.str
.LBB0_7:                                @ %cleanup
	add	sp, sp, #64
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__crypt_md5, .Ltmp0-__crypt_md5
	.cantunwind
	.fnend

	.align	2
	.type	md5crypt,%function
md5crypt:                               @ @md5crypt
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#132
	sub	sp, sp, #132
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r7, r1
	mov	r1, #49
	mov	r6, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r5, r2
	orr	r1, r1, #29952
                                        @ kill: R0<def> R6<kill>
	bl	strnlen
	b	.LBB1_5
.LBB1_5:                                @ %entry
	mov	r8, r0
	mov	r0, #1328
	mov	r4, #0
	orr	r0, r0, #28672
	cmp	r8, r0
	bhi	.LBB1_57
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	ldr	r1, .LCPI1_0
	mov	r0, r7
	mov	r2, #3
	bl	strncmp
	cmp	r0, #0
	bne	.LBB1_57
	b	.LBB1_7
.LCPI1_0:
	.long	.L.str1
.LBB1_7:                                @ %if.end4
	add	r0, r7, #3
	mov	r9, #0
	str	r5, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB1_8
.LBB1_8:                                @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r7, r9
	ldrb	r0, [r0, #3]
	cmp	r0, #0
	cmpne	r0, #36
	beq	.LBB1_10
	b	.LBB1_9
.LBB1_9:                                @ %for.inc
                                        @   in Loop: Header=BB1_8 Depth=1
	add	r9, r9, #1
	cmp	r9, #8
	blo	.LBB1_8
	b	.LBB1_10
.LBB1_10:                               @ %for.end
	mov	r10, #0
	str	r9, [sp, #20]           @ 4-byte Spill
	add	r5, sp, #40
	mov	r1, r6
	b	.LBB1_11
.LBB1_11:                               @ %for.end
	mov	r2, r8
	str	r10, [sp, #44]
	str	r10, [sp, #40]
	ldr	r0, .LCPI1_9
	b	.LBB1_12
.LCPI1_9:
	.long	1732584193              @ 0x67452301
.LBB1_12:                               @ %for.end
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r0, [sp, #48]
	ldr	r11, .LCPI1_11
	mov	r0, r5
	b	.LBB1_13
.LCPI1_11:
	.long	4023233417              @ 0xefcdab89
.LBB1_13:                               @ %for.end
	str	r11, [sp, #52]
	ldr	r4, .LCPI1_13
	str	r7, [sp, #8]            @ 4-byte Spill
	str	r4, [sp, #56]
	b	.LBB1_14
.LCPI1_13:
	.long	2562383102              @ 0x98badcfe
.LBB1_14:                               @ %for.end
	ldr	r7, .LCPI1_15
	str	r7, [sp, #60]
	bl	md5_update
	ldr	r1, [sp, #16]           @ 4-byte Reload
	b	.LBB1_15
.LCPI1_15:
	.long	271733878               @ 0x10325476
.LBB1_15:                               @ %for.end
	mov	r0, r5
	mov	r2, r9
	bl	md5_update
	mov	r0, r5
	b	.LBB1_16
.LBB1_16:                               @ %for.end
	mov	r1, r6
	mov	r2, r8
	bl	md5_update
	add	r1, sp, #24
	b	.LBB1_17
.LBB1_17:                               @ %for.end
	mov	r0, r5
	bl	md5_sum
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r10, [sp, #44]
	b	.LBB1_18
.LBB1_18:                               @ %for.end
	str	r10, [sp, #40]
	mov	r1, r6
	mov	r2, r8
	str	r0, [sp, #48]
	b	.LBB1_19
.LBB1_19:                               @ %for.end
	str	r11, [sp, #52]
	str	r4, [sp, #56]
	str	r7, [sp, #60]
	ldr	r7, [sp, #8]            @ 4-byte Reload
	b	.LBB1_20
.LBB1_20:                               @ %for.end
	mov	r0, r5
	bl	md5_update
	add	r2, r9, #3
	mov	r0, r5
	b	.LBB1_21
.LBB1_21:                               @ %for.end
	mov	r1, r7
	str	r2, [sp, #4]            @ 4-byte Spill
	bl	md5_update
	mov	r2, r8
	cmp	r8, #17
	blo	.LBB1_25
	b	.LBB1_22
.LBB1_22:                               @ %for.body13.lr.ph
	sub	r0, r8, #17
	mov	r9, r7
	add	r4, sp, #40
	add	r5, sp, #24
	mov	r7, r8
	bic	r10, r0, #15
	b	.LBB1_23
.LBB1_23:                               @ %for.body13
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r5
	mov	r2, #16
	bl	md5_update
	sub	r7, r7, #16
	cmp	r7, #16
	bhi	.LBB1_23
	b	.LBB1_24
.LBB1_24:                               @ %for.cond10.for.end16_crit_edge
	sub	r0, r8, #16
	mov	r7, r9
	sub	r2, r0, r10
	mov	r10, #0
	b	.LBB1_25
.LBB1_25:                               @ %for.end16
	add	r0, sp, #40
	add	r1, sp, #24
	bl	md5_update
	strb	r10, [sp, #24]
	cmp	r8, #0
	beq	.LBB1_29
	b	.LBB1_26
.LBB1_26:
	add	r10, sp, #40
	mov	r4, #0
	add	r9, sp, #24
	mov	r5, r8
	b	.LBB1_27
.LBB1_27:                               @ %for.body21
                                        @ =>This Inner Loop Header: Depth=1
	tst	r5, #1
	mov	r0, r10
	mov	r2, #1
	moveq	r1, r6
	b	.LBB1_28
.LBB1_28:                               @ %for.body21
                                        @   in Loop: Header=BB1_27 Depth=1
	movne	r1, r9
	bl	md5_update
	lsr	r0, r5, #1
	cmp	r4, r5, lsr #1
	mov	r5, r0
	bne	.LBB1_27
	b	.LBB1_29
.LBB1_29:                               @ %for.end27
	add	r10, sp, #40
	add	r5, sp, #24
	mov	r0, r10
	mov	r1, r5
	bl	md5_sum
	mov	r4, #0
	mov	r9, #0
	b	.LBB1_30
.LBB1_30:                               @ %for.body32
                                        @ =>This Inner Loop Header: Depth=1
	str	r4, [sp, #44]
	str	r4, [sp, #40]
	ldr	r0, .LCPI1_10
	ands	r11, r9, #1
	b	.LBB1_31
.LCPI1_10:
	.long	1732584193              @ 0x67452301
.LBB1_31:                               @ %for.body32
                                        @   in Loop: Header=BB1_30 Depth=1
	str	r0, [sp, #48]
	ldr	r0, .LCPI1_12
	str	r0, [sp, #52]
	ldr	r0, .LCPI1_14
	b	.LBB1_32
.LCPI1_12:
	.long	4023233417              @ 0xefcdab89
.LCPI1_14:
	.long	2562383102              @ 0x98badcfe
.LBB1_32:                               @ %for.body32
                                        @   in Loop: Header=BB1_30 Depth=1
	str	r0, [sp, #56]
	ldr	r0, .LCPI1_16
	str	r0, [sp, #60]
	mov	r0, r10
	beq	.LBB1_34
	b	.LBB1_33
.LCPI1_16:
	.long	271733878               @ 0x10325476
.LBB1_33:                               @ %if.then34
                                        @   in Loop: Header=BB1_30 Depth=1
	mov	r1, r6
	mov	r2, r8
	b	.LBB1_35
.LBB1_34:                               @ %if.else35
                                        @   in Loop: Header=BB1_30 Depth=1
	mov	r1, r5
	mov	r2, #16
	b	.LBB1_35
.LBB1_35:                               @ %if.end37
                                        @   in Loop: Header=BB1_30 Depth=1
	bl	md5_update
	ldr	r0, .LCPI1_17
	umull	r1, r2, r9, r0
	lsr	r0, r2, #1
	add	r0, r0, r0, lsl #1
	subs	r0, r9, r0
	beq	.LBB1_37
	b	.LBB1_36
.LCPI1_17:
	.long	2863311531              @ 0xaaaaaaab
.LBB1_36:                               @ %if.then40
                                        @   in Loop: Header=BB1_30 Depth=1
	ldr	r1, [sp, #16]           @ 4-byte Reload
	ldr	r2, [sp, #20]           @ 4-byte Reload
	mov	r0, r10
	bl	md5_update
	b	.LBB1_37
.LBB1_37:                               @ %if.end41
                                        @   in Loop: Header=BB1_30 Depth=1
	ldr	r0, .LCPI1_18
	umull	r1, r2, r9, r0
	sub	r0, r9, r2
	add	r0, r2, r0, lsr #1
	b	.LBB1_38
.LCPI1_18:
	.long	613566757               @ 0x24924925
.LBB1_38:                               @ %if.end41
                                        @   in Loop: Header=BB1_30 Depth=1
	lsr	r1, r0, #2
	lsl	r1, r1, #3
	sub	r0, r1, r0, lsr #2
	subs	r0, r9, r0
	beq	.LBB1_40
	b	.LBB1_39
.LBB1_39:                               @ %if.then44
                                        @   in Loop: Header=BB1_30 Depth=1
	mov	r0, r10
	mov	r1, r6
	mov	r2, r8
	bl	md5_update
	b	.LBB1_40
.LBB1_40:                               @ %if.end45
                                        @   in Loop: Header=BB1_30 Depth=1
	mov	r0, r10
	cmp	r11, #0
	beq	.LBB1_42
	b	.LBB1_41
.LBB1_41:                               @ %if.then48
                                        @   in Loop: Header=BB1_30 Depth=1
	mov	r1, r5
	mov	r2, #16
	b	.LBB1_43
.LBB1_42:                               @ %if.else50
                                        @   in Loop: Header=BB1_30 Depth=1
	mov	r1, r6
	mov	r2, r8
	b	.LBB1_43
.LBB1_43:                               @ %if.end51
                                        @   in Loop: Header=BB1_30 Depth=1
	bl	md5_update
	mov	r0, r10
	mov	r1, r5
	bl	md5_sum
	add	r9, r9, #1
	cmp	r9, #1000
	bne	.LBB1_30
	b	.LBB1_44
.LBB1_44:                               @ %for.end55
	ldr	r8, [sp, #12]           @ 4-byte Reload
	ldr	r4, [sp, #4]            @ 4-byte Reload
	mov	r1, r7
	mov	r0, r8
	b	.LBB1_45
.LBB1_45:                               @ %for.end55
	mov	r2, r4
	bl	memcpy
	mov	r0, #36
	ldr	r1, .LCPI1_20
	b	.LBB1_46
.LCPI1_20:
	.long	b64
.LBB1_46:                               @ %for.end55
	mov	r3, #0
	strb	r0, [r8, r4]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	add	r12, r0, r8
	ldr	r0, .LCPI1_19
	add	r2, r12, #4
	b	.LBB1_47
.LCPI1_19:
	.long	md5crypt.perm
.LBB1_47:                               @ %for.body63
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_50 Depth 2
	add	r6, r3, r3, lsl #1
	mov	r7, r0
	ldrb	r6, [r7, r6]!
	ldrb	r4, [r7, #1]
	b	.LBB1_48
.LBB1_48:                               @ %for.body63
                                        @   in Loop: Header=BB1_47 Depth=1
	ldrb	r7, [r7, #2]
	ldrb	r6, [r5, r6]
	ldrb	r4, [r5, r4]
	ldrb	r7, [r5, r7]
	b	.LBB1_49
.LBB1_49:                               @ %for.body63
                                        @   in Loop: Header=BB1_47 Depth=1
	lsl	r4, r4, #8
	orr	r6, r4, r6, lsl #16
	mov	r4, #0
	orr	r6, r6, r7
	b	.LBB1_50
.LBB1_50:                               @ %while.body.i148
                                        @   Parent Loop BB1_47 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r7, r6, #63
	lsr	r6, r6, #6
	ldrb	r7, [r1, r7]
	strb	r7, [r2, -r4]
	b	.LBB1_51
.LBB1_51:                               @ %while.body.i148
                                        @   in Loop: Header=BB1_50 Depth=2
	sub	r7, r4, #1
	add	r4, r4, #4
	cmp	r4, #1
	mov	r4, r7
	bgt	.LBB1_50
	b	.LBB1_52
.LBB1_52:                               @ %to64.exit150
                                        @   in Loop: Header=BB1_47 Depth=1
	add	r3, r3, #1
	add	r2, r2, #4
	cmp	r3, #5
	bne	.LBB1_47
	b	.LBB1_53
.LBB1_53:                               @ %for.end83
	ldrb	r3, [sp, #35]
	add	r2, r12, #24
	mov	r7, #0
	b	.LBB1_54
.LBB1_54:                               @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r3, #63
	lsr	r3, r3, #6
	ldrb	r0, [r1, r0]
	strb	r0, [r2, -r7]
	b	.LBB1_55
.LBB1_55:                               @ %while.body.i
                                        @   in Loop: Header=BB1_54 Depth=1
	sub	r0, r7, #1
	add	r7, r7, #2
	cmp	r7, #1
	mov	r7, r0
	bgt	.LBB1_54
	b	.LBB1_56
.LBB1_56:                               @ %to64.exit
	mov	r0, #0
	mov	r4, r8
	strb	r0, [r12, #26]
	b	.LBB1_57
.LBB1_57:                               @ %cleanup
	mov	r0, r4
	add	sp, sp, #132
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	md5crypt, .Ltmp1-md5crypt
	.cantunwind
	.fnend

	.align	2
	.type	md5_update,%function
md5_update:                             @ @md5_update
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r5, r0
	mov	r6, r1
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r4, r2
	ldm	r5, {r0, r1}
	adds	r2, r0, r4
	adc	r1, r1, #0
	b	.LBB2_4
.LBB2_4:                                @ %entry
	str	r2, [r5]
	str	r1, [r5, #4]
	ands	r1, r0, #63
	beq	.LBB2_9
	b	.LBB2_5
.LBB2_5:                                @ %if.then
	add	r0, r5, r1
	rsb	r7, r1, #64
	add	r0, r0, #24
	cmp	r7, r4
	bls	.LBB2_7
	b	.LBB2_6
.LBB2_6:                                @ %if.then5
	mov	r1, r6
	b	.LBB2_15
.LBB2_7:                                @ %if.end
	mov	r1, r6
	mov	r2, r7
	bl	memcpy
	add	r1, r5, #24
	b	.LBB2_8
.LBB2_8:                                @ %if.end
	mov	r0, r5
	bl	processblock
	add	r6, r6, r7
	sub	r4, r4, r7
	b	.LBB2_9
.LBB2_9:                                @ %for.cond.preheader
	cmp	r4, #64
	blo	.LBB2_13
	b	.LBB2_10
.LBB2_10:                               @ %for.body.lr.ph
	sub	r8, r4, #64
	bic	r9, r8, #63
	add	r0, r9, r6
	add	r7, r0, #64
	b	.LBB2_11
.LBB2_11:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	bl	processblock
	sub	r4, r4, #64
	add	r6, r6, #64
	cmp	r4, #63
	bhi	.LBB2_11
	b	.LBB2_12
.LBB2_12:                               @ %for.cond.for.end_crit_edge
	sub	r4, r8, r9
	b	.LBB2_14
.LBB2_13:
	mov	r7, r6
	b	.LBB2_14
.LBB2_14:                               @ %for.end
	add	r0, r5, #24
	mov	r1, r7
	b	.LBB2_15
.LBB2_15:                               @ %if.then5
	mov	r2, r4
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	memcpy
.Ltmp2:
	.size	md5_update, .Ltmp2-md5_update
	.cantunwind
	.fnend

	.align	2
	.type	md5_sum,%function
md5_sum:                                @ @md5_sum
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.LBB3_2:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	mov	r6, r5
	ldr	r0, [r6], #24
	b	.LBB3_3
.LBB3_3:                                @ %entry
	and	r1, r0, #63
	mov	r0, #128
	add	r7, r1, #1
	strb	r0, [r6, r1]
	cmp	r7, #57
	blo	.LBB3_6
	b	.LBB3_4
.LBB3_4:                                @ %if.then.i
	add	r0, r5, r7
	eor	r2, r1, #63
	mov	r1, #0
	mov	r7, #0
	b	.LBB3_5
.LBB3_5:                                @ %if.then.i
	add	r0, r0, #24
	bl	memset
	mov	r0, r5
	mov	r1, r6
	bl	processblock
	b	.LBB3_6
.LBB3_6:                                @ %pad.exit
	add	r0, r5, r7
	rsb	r2, r7, #56
	mov	r1, #0
	mov	r7, #0
	b	.LBB3_7
.LBB3_7:                                @ %pad.exit
	add	r0, r0, #24
	bl	memset
	ldm	r5, {r0, r1}
	lsl	r3, r1, #3
	b	.LBB3_8
.LBB3_8:                                @ %pad.exit
	lsl	r2, r0, #3
	orr	r3, r3, r0, lsr #29
	stm	r5, {r2, r3}
	strb	r2, [r5, #80]
	b	.LBB3_9
.LBB3_9:                                @ %pad.exit
	lsr	r2, r0, #5
	strb	r2, [r5, #81]
	lsr	r2, r0, #13
	lsr	r0, r0, #21
	b	.LBB3_10
.LBB3_10:                               @ %pad.exit
	strb	r2, [r5, #82]
	strb	r0, [r5, #83]
	lsr	r0, r1, #5
	strb	r3, [r5, #84]
	b	.LBB3_11
.LBB3_11:                               @ %pad.exit
	strb	r0, [r5, #85]
	lsr	r0, r1, #13
	strb	r0, [r5, #86]
	lsr	r0, r1, #21
	b	.LBB3_12
.LBB3_12:                               @ %pad.exit
	mov	r1, r6
	strb	r0, [r5, #87]
	mov	r0, r5
	bl	processblock
	add	r0, r5, #8
	b	.LBB3_13
.LBB3_13:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r0
	mov	r3, r4
	ldr	r2, [r1, r7]!
	strb	r2, [r3, r7]!
	b	.LBB3_14
.LBB3_14:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	add	r7, r7, #4
	ldr	r2, [r1]
	cmp	r7, #16
	lsr	r2, r2, #8
	b	.LBB3_15
.LBB3_15:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	strb	r2, [r3, #1]
	ldrh	r2, [r1, #2]
	strb	r2, [r3, #2]
	ldrb	r1, [r1, #3]
	strb	r1, [r3, #3]
	bne	.LBB3_13
	b	.LBB3_16
.LBB3_16:                               @ %for.end
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	md5_sum, .Ltmp3-md5_sum
	.cantunwind
	.fnend

	.align	2
	.type	processblock,%function
processblock:                           @ @processblock
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.LBB4_2:                                @ %entry
	.pad	#96
	sub	sp, sp, #96
	mov	r2, #0
	add	r11, sp, #32
	b	.LBB4_3
.LBB4_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r3, r1
	ldrb	r7, [r3, r2]!
	ldrb	r6, [r3, #1]
	ldrb	r5, [r3, #2]
	b	.LBB4_4
.LBB4_4:                                @ %for.body
                                        @   in Loop: Header=BB4_3 Depth=1
	ldrb	r3, [r3, #3]
	orr	r7, r7, r6, lsl #8
	orr	r7, r7, r5, lsl #16
	orr	r3, r7, r3, lsl #24
	b	.LBB4_5
.LBB4_5:                                @ %for.body
                                        @   in Loop: Header=BB4_3 Depth=1
	str	r3, [r11, r2]
	add	r2, r2, #4
	cmp	r2, #64
	bne	.LBB4_3
	b	.LBB4_6
.LBB4_6:                                @ %for.end
	ldr	r7, [r0, #8]
	ldr	r6, [r0, #12]
	ldr	r5, [r0, #16]
	ldr	r1, [r0, #20]
	b	.LBB4_7
.LBB4_7:                                @ %for.end
	ldr	r9, .LCPI4_0
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB4_8
.LCPI4_0:
	.long	tab
.LBB4_8:                                @ %for.end
	str	r7, [sp, #12]           @ 4-byte Spill
	str	r6, [sp, #8]            @ 4-byte Spill
	str	r5, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	b	.LBB4_9
.LBB4_9:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r4, r11, r2
	mov	lr, r9
	add	r3, r3, #4
	ldr	r0, [r4, #8]
	b	.LBB4_10
.LBB4_10:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	mov	r10, lr
	ldr	r12, [r4, #4]
	cmp	r3, #16
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB4_11
.LBB4_11:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	ldr	r0, [r4, #12]
	add	r12, r12, r1
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r9, [r10, r2]!
	b	.LBB4_12
.LBB4_12:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	ldr	r8, [r10, #4]
	ldr	r0, [r10, #8]
	ldr	r10, [r10, #12]
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB4_13
.LBB4_13:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	add	r12, r12, r8
	ldr	r8, [r11, r2]
	mov	r0, r11
	eor	r11, r1, r5
	b	.LBB4_14
.LBB4_14:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	add	r2, r2, #16
	and	r4, r11, r6
	mov	r11, r0
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB4_15
.LBB4_15:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	eor	r1, r4, r1
	add	r1, r1, r7
	add	r1, r1, r8
	add	r1, r1, r9
	b	.LBB4_16
.LBB4_16:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	mov	r9, lr
	add	r7, r6, r1, ror #25
	eor	r1, r5, r6
	and	r1, r7, r1
	b	.LBB4_17
.LBB4_17:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	eor	r4, r7, r6
	eor	r1, r1, r5
	add	r5, r0, r5
	ldr	r0, [sp, #20]           @ 4-byte Reload
	b	.LBB4_18
.LBB4_18:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	add	r1, r12, r1
	add	r1, r7, r1, ror #20
	and	r4, r1, r4
	eor	r4, r4, r6
	b	.LBB4_19
.LBB4_19:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	add	r0, r5, r0
	add	r0, r0, r4
	ldr	r4, [sp, #28]           @ 4-byte Reload
	add	r5, r1, r0, ror #15
	b	.LBB4_20
.LBB4_20:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	eor	r0, r1, r7
	and	r0, r5, r0
	eor	r0, r0, r7
	add	r6, r4, r6
	b	.LBB4_21
.LBB4_21:                               @ %while.body
                                        @   in Loop: Header=BB4_9 Depth=1
	add	r6, r6, r10
	add	r0, r6, r0
	add	r6, r5, r0, ror #10
	blo	.LBB4_9
	b	.LBB4_22
.LBB4_22:                               @ %while.body73.preheader
	add	r3, r11, #4
	mov	r8, #0
	mov	r4, #90
	b	.LBB4_23
.LBB4_23:                               @ %while.body73
                                        @ =>This Inner Loop Header: Depth=1
	sub	r0, r4, #4
	and	r0, r0, #15
	ldr	r0, [r11, r0, lsl #2]
	add	r12, r0, r1
	b	.LBB4_24
.LBB4_24:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	add	r0, r9, r8, lsl #2
	add	r10, r0, #68
	ldr	lr, [r0, #64]
	eor	r0, r5, r6
	b	.LBB4_25
.LBB4_25:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	ldm	r10, {r2, r9, r10}
	and	r0, r1, r0
	ldr	r1, [r3]
	eor	r0, r0, r5
	b	.LBB4_26
.LBB4_26:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	add	r0, r0, r7
	add	r0, r0, r1
	add	r2, r12, r2
	ldr	r12, [r3, #-4]
	b	.LBB4_27
.LBB4_27:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	add	r3, r3, #16
	add	r0, r0, lr
	add	r7, r6, r0, ror #27
	eor	r0, r7, r6
	b	.LBB4_28
.LBB4_28:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	and	r0, r0, r5
	eor	r0, r0, r6
	add	r0, r2, r0
	and	r2, r4, #14
	b	.LBB4_29
.LBB4_29:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	add	r4, r4, #20
	orr	r2, r2, #1
	add	r1, r7, r0, ror #23
	ldr	r2, [r11, r2, lsl #2]
	b	.LBB4_30
.LBB4_30:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	eor	r0, r1, r7
	and	r0, r0, r6
	eor	r0, r0, r7
	add	r2, r2, r5
	b	.LBB4_31
.LBB4_31:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	add	r2, r2, r9
	add	r0, r2, r0
	add	r2, r12, r6
	add	r5, r1, r0, ror #18
	b	.LBB4_32
.LBB4_32:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	add	r2, r2, r10
	ldr	r10, .LCPI4_1
	eor	r0, r5, r1
	and	r0, r0, r7
	b	.LBB4_33
.LCPI4_1:
	.long	tab
.LBB4_33:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	eor	r0, r0, r1
	add	r0, r2, r0
	add	r2, r8, #20
	mov	r9, r10
	b	.LBB4_34
.LBB4_34:                               @ %while.body73
                                        @   in Loop: Header=BB4_23 Depth=1
	add	r6, r5, r0, ror #12
	add	r0, r8, #4
	cmp	r2, #32
	mov	r8, r0
	blo	.LBB4_23
	b	.LBB4_35
.LBB4_35:                               @ %while.body133.preheader
	add	r12, r11, #56
	mov	r4, #0
	mov	r2, #107
	b	.LBB4_36
.LBB4_36:                               @ %while.body133
                                        @ =>This Inner Loop Header: Depth=1
	sub	r0, r2, #3
	add	r3, r9, r4, lsl #2
	and	r0, r0, #15
	add	r10, r3, #132
	b	.LBB4_37
.LBB4_37:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	ldr	lr, [r3, #128]
	sub	r3, r2, #6
	ldr	r0, [r11, r0, lsl #2]
	and	r3, r3, #13
	b	.LBB4_38
.LBB4_38:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	add	r8, r0, r1
	ldm	r10, {r0, r9, r10}
	ldr	r3, [r11, r3, lsl #2]
	add	r8, r8, r0
	b	.LBB4_39
.LBB4_39:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	eor	r0, r5, r6
	eor	r1, r0, r1
	add	r1, r1, r7
	add	r1, r1, r3
	b	.LBB4_40
.LBB4_40:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	and	r3, r2, #15
	add	r2, r2, #12
	ldr	r3, [r11, r3, lsl #2]
	add	r1, r1, lr
	b	.LBB4_41
.LBB4_41:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	add	r7, r6, r1, ror #28
	eor	r0, r0, r7
	add	r0, r8, r0
	add	r3, r3, r5
	b	.LBB4_42
.LBB4_42:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	add	r1, r7, r0, ror #21
	eor	r0, r7, r6
	add	r3, r3, r9
	eor	r0, r0, r1
	b	.LBB4_43
.LBB4_43:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	ldr	r9, .LCPI4_2
	add	r0, r3, r0
	ldr	r3, [r12, -r4, lsl #2]
	add	r5, r1, r0, ror #16
	b	.LBB4_44
.LCPI4_2:
	.long	tab
.LBB4_44:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	eor	r0, r1, r7
	eor	r0, r0, r5
	add	r3, r3, r6
	add	r3, r3, r10
	b	.LBB4_45
.LBB4_45:                               @ %while.body133
                                        @   in Loop: Header=BB4_36 Depth=1
	add	r0, r3, r0
	add	r3, r4, #36
	add	r6, r5, r0, ror #9
	add	r0, r4, #4
	cmp	r3, #48
	mov	r4, r0
	blo	.LBB4_36
	b	.LBB4_46
.LBB4_46:                               @ %while.body190.preheader
	mov	r2, #101
	mov	r4, #0
	orr	r2, r2, #256
	b	.LBB4_47
.LBB4_47:                               @ %while.body190
                                        @ =>This Inner Loop Header: Depth=1
	sub	r0, r2, #14
	add	r3, r9, r4, lsl #2
	and	r0, r0, #15
	ldr	lr, [r3, #192]
	b	.LBB4_48
.LBB4_48:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	add	r10, r3, #196
	sub	r3, r2, #21
	ldr	r0, [r11, r0, lsl #2]
	and	r3, r3, #12
	b	.LBB4_49
.LBB4_49:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	add	r8, r0, r1
	ldm	r10, {r0, r9, r10}
	mvn	r1, r1
	ldr	r3, [r11, r3, lsl #2]
	b	.LBB4_50
.LBB4_50:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	orr	r1, r6, r1
	eor	r1, r1, r5
	add	r1, r1, r7
	add	r1, r1, r3
	b	.LBB4_51
.LBB4_51:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	ldr	r3, [r12, -r4, lsl #2]
	add	r0, r8, r0
	add	r1, r1, lr
	add	r7, r6, r1, ror #26
	b	.LBB4_52
.LBB4_52:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	mvn	r1, r5
	orr	r1, r7, r1
	eor	r1, r1, r6
	add	r3, r3, r5
	b	.LBB4_53
.LBB4_53:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	add	r0, r0, r1
	add	r3, r3, r9
	ldr	r9, .LCPI4_3
	add	r1, r7, r0, ror #22
	b	.LBB4_54
.LCPI4_3:
	.long	tab
.LBB4_54:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	mvn	r0, r6
	orr	r0, r1, r0
	eor	r0, r0, r7
	add	r0, r3, r0
	b	.LBB4_55
.LBB4_55:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	and	r3, r2, #15
	add	r2, r2, #28
	ldr	r3, [r11, r3, lsl #2]
	add	r5, r1, r0, ror #17
	b	.LBB4_56
.LBB4_56:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	mvn	r0, r7
	orr	r0, r5, r0
	eor	r0, r0, r1
	add	r3, r3, r6
	b	.LBB4_57
.LBB4_57:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	add	r3, r3, r10
	add	r0, r3, r0
	add	r3, r4, #52
	add	r6, r5, r0, ror #11
	b	.LBB4_58
.LBB4_58:                               @ %while.body190
                                        @   in Loop: Header=BB4_47 Depth=1
	add	r0, r4, #4
	cmp	r3, #64
	mov	r4, r0
	blo	.LBB4_47
	b	.LBB4_59
.LBB4_59:                               @ %while.end242
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r3, [sp, #4]            @ 4-byte Reload
	add	r0, r0, r7
	b	.LBB4_60
.LBB4_60:                               @ %while.end242
	ldr	r7, [sp]                @ 4-byte Reload
	add	r2, r2, r6
	add	r3, r3, r5
	add	r1, r7, r1
	b	.LBB4_61
.LBB4_61:                               @ %while.end242
	ldr	r7, [sp, #16]           @ 4-byte Reload
	add	r4, r7, #8
	stm	r4, {r0, r2, r3}
	str	r1, [r7, #20]
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	processblock, .Ltmp4-processblock
	.cantunwind
	.fnend

	.type	__crypt_md5.testkey,%object @ @__crypt_md5.testkey
	.section	.rodata,"a",%progbits
__crypt_md5.testkey:
	.asciz	"Xy01@#\001\002\200\177\377\r\n\201\t !"
	.size	__crypt_md5.testkey, 18

	.type	__crypt_md5.testsetting,%object @ @__crypt_md5.testsetting
__crypt_md5.testsetting:
	.asciz	"$1$abcd0123$"
	.size	__crypt_md5.testsetting, 13

	.type	__crypt_md5.testhash,%object @ @__crypt_md5.testhash
__crypt_md5.testhash:
	.asciz	"$1$abcd0123$9Qcg8DyviekV3tDGMZynJ1"
	.size	__crypt_md5.testhash, 35

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"$1$"
	.size	.L.str1, 4

	.type	md5crypt.perm,%object   @ @md5crypt.perm
	.section	.rodata,"a",%progbits
md5crypt.perm:
	.ascii	"\000\006\f"
	.ascii	"\001\007\r"
	.ascii	"\002\b\016"
	.ascii	"\003\t\017"
	.ascii	"\004\n\005"
	.size	md5crypt.perm, 15

	.type	tab,%object             @ @tab
	.align	2
tab:
	.long	3614090360              @ 0xd76aa478
	.long	3905402710              @ 0xe8c7b756
	.long	606105819               @ 0x242070db
	.long	3250441966              @ 0xc1bdceee
	.long	4118548399              @ 0xf57c0faf
	.long	1200080426              @ 0x4787c62a
	.long	2821735955              @ 0xa8304613
	.long	4249261313              @ 0xfd469501
	.long	1770035416              @ 0x698098d8
	.long	2336552879              @ 0x8b44f7af
	.long	4294925233              @ 0xffff5bb1
	.long	2304563134              @ 0x895cd7be
	.long	1804603682              @ 0x6b901122
	.long	4254626195              @ 0xfd987193
	.long	2792965006              @ 0xa679438e
	.long	1236535329              @ 0x49b40821
	.long	4129170786              @ 0xf61e2562
	.long	3225465664              @ 0xc040b340
	.long	643717713               @ 0x265e5a51
	.long	3921069994              @ 0xe9b6c7aa
	.long	3593408605              @ 0xd62f105d
	.long	38016083                @ 0x2441453
	.long	3634488961              @ 0xd8a1e681
	.long	3889429448              @ 0xe7d3fbc8
	.long	568446438               @ 0x21e1cde6
	.long	3275163606              @ 0xc33707d6
	.long	4107603335              @ 0xf4d50d87
	.long	1163531501              @ 0x455a14ed
	.long	2850285829              @ 0xa9e3e905
	.long	4243563512              @ 0xfcefa3f8
	.long	1735328473              @ 0x676f02d9
	.long	2368359562              @ 0x8d2a4c8a
	.long	4294588738              @ 0xfffa3942
	.long	2272392833              @ 0x8771f681
	.long	1839030562              @ 0x6d9d6122
	.long	4259657740              @ 0xfde5380c
	.long	2763975236              @ 0xa4beea44
	.long	1272893353              @ 0x4bdecfa9
	.long	4139469664              @ 0xf6bb4b60
	.long	3200236656              @ 0xbebfbc70
	.long	681279174               @ 0x289b7ec6
	.long	3936430074              @ 0xeaa127fa
	.long	3572445317              @ 0xd4ef3085
	.long	76029189                @ 0x4881d05
	.long	3654602809              @ 0xd9d4d039
	.long	3873151461              @ 0xe6db99e5
	.long	530742520               @ 0x1fa27cf8
	.long	3299628645              @ 0xc4ac5665
	.long	4096336452              @ 0xf4292244
	.long	1126891415              @ 0x432aff97
	.long	2878612391              @ 0xab9423a7
	.long	4237533241              @ 0xfc93a039
	.long	1700485571              @ 0x655b59c3
	.long	2399980690              @ 0x8f0ccc92
	.long	4293915773              @ 0xffeff47d
	.long	2240044497              @ 0x85845dd1
	.long	1873313359              @ 0x6fa87e4f
	.long	4264355552              @ 0xfe2ce6e0
	.long	2734768916              @ 0xa3014314
	.long	1309151649              @ 0x4e0811a1
	.long	4149444226              @ 0xf7537e82
	.long	3174756917              @ 0xbd3af235
	.long	718787259               @ 0x2ad7d2bb
	.long	3951481745              @ 0xeb86d391
	.size	tab, 256

	.type	b64,%object             @ @b64
	.section	.rodata.str1.1,"aMS",%progbits,1
b64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	b64, 65


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
