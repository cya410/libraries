.section mbsrtowcs_text
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
	.file	"src/multibyte/mbsrtowcs.bc"
	.globl	mbsrtowcs
	.align	2
	.type	mbsrtowcs,%function
.section bb0_0
mbsrtowcs:                              @ @mbsrtowcs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r8, r1
	cmp	r3, #0
	mov	r5, r0
	ldrne	r1, [r3]
	ldr	r6, [r8]
	cmpne	r1, #0
	beq	.LBB0_27
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	cmp	r5, #0
	beq	.LBB0_24
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then3
	mov	r0, #0
	str	r0, [r3]
	mov	r0, r2
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %resume
	ldrb	r3, [r6]
	mvn	r4, #15
	lsr	r7, r3, #3
	add	r4, r4, r3, lsr #3
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %resume
	add	r7, r7, r1, asr #26
	orr	r7, r4, r7
	cmp	r7, #8
	bhs	.LBB0_47
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end137
	sub	r3, r3, #128
	orr	r1, r3, r1, lsl #6
	add	r3, r6, #1
	cmp	r1, #0
	bge	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then144
	ldrb	r3, [r3]
	and	r7, r3, #192
	cmp	r7, #128
	bne	.LBB0_30
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end151
	sub	r3, r3, #128
	orr	r1, r3, r1, lsl #6
	add	r3, r6, #2
	cmp	r1, #0
	blt	.LBB0_28
	b	.LBB0_10
.section bb0_10
.LBB0_10:
	mov	r6, r3
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end173
	str	r1, [r5], #4
	sub	r0, r0, #1
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.cond68.preheader
	cmp	r0, #0
	beq	.LBB0_23
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end71
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_16 Depth 2
	ldrb	r1, [r6]
	sub	r3, r1, #1
	cmp	r3, #126
	bhi	.LBB0_21
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %land.lhs.true76
                                        @   in Loop: Header=BB0_13 Depth=1
	cmp	r0, #5
	blo	.LBB0_21
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %land.lhs.true76
                                        @   in Loop: Header=BB0_13 Depth=1
	ands	r3, r6, #3
	bne	.LBB0_21
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %land.rhs
                                        @   Parent Loop BB0_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r6]
	ldr	r3, .LCPI0_3
	ldr	r4, .LCPI0_6
	add	r3, r1, r3
	orr	r3, r3, r1
	tst	r3, r4
	bne	.LBB0_21
	b	.LBB0_17
.LCPI0_3:
	.long	4278124287              @ 0xfefefeff
.LCPI0_6:
	.long	2155905152              @ 0x80808080
.section bb0_17
.LBB0_17:                               @ %while.body89
                                        @   in Loop: Header=BB0_16 Depth=2
	and	r1, r1, #255
	sub	r0, r0, #4
	str	r1, [r5]
	cmp	r0, #4
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %while.body89
                                        @   in Loop: Header=BB0_16 Depth=2
	ldrb	r1, [r6, #1]
	str	r1, [r5, #4]
	ldrb	r1, [r6, #2]
	str	r1, [r5, #8]
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %while.body89
                                        @   in Loop: Header=BB0_16 Depth=2
	ldrb	r1, [r6, #3]
	add	r6, r6, #4
	str	r1, [r5, #12]
	add	r5, r5, #16
	bhi	.LBB0_16
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %while.body89.if.end104.loopexit_crit_edge
                                        @   in Loop: Header=BB0_13 Depth=1
	ldrb	r1, [r6]
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end104
                                        @   in Loop: Header=BB0_13 Depth=1
	and	r1, r1, #255
	sub	r3, r1, #1
	cmp	r3, #126
	bhi	.LBB0_25
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then109
                                        @   in Loop: Header=BB0_13 Depth=1
	str	r1, [r5], #4
	subs	r0, r0, #1
	add	r6, r6, #1
	bne	.LBB0_13
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then188
	str	r6, [r8]
	b	.LBB0_51
.section bb0_24
.LBB0_24:
	mov	r0, r2
	b	.LBB0_40
.section bb0_25
.LBB0_25:                               @ %if.end114
	sub	r1, r1, #194
	cmp	r1, #50
	bhi	.LBB0_48
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end120
	ldr	r3, .LCPI0_8
	add	r6, r6, #1
	ldr	r1, [r3, r1, lsl #2]
	b	.LBB0_5
.LCPI0_8:
	.long	__fsmu8
.section bb0_27
.LBB0_27:                               @ %if.end
	mov	r0, r2
	cmp	r5, #0
	bne	.LBB0_12
	b	.LBB0_32
.section bb0_28
.LBB0_28:                               @ %if.then159
	ldrb	r3, [r3]
	and	r7, r3, #192
	cmp	r7, #128
	bne	.LBB0_30
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end166
	sub	r3, r3, #128
	add	r6, r6, #3
	orr	r1, r3, r1, lsl #6
	b	.LBB0_11
.section bb0_30
.LBB0_30:                               @ %if.then149
	sub	r6, r6, #1
	b	.LBB0_49
.section bb0_31
.LBB0_31:                               @ %if.then19
                                        @   in Loop: Header=BB0_32 Depth=1
	sub	r0, r0, #1
	add	r6, r6, #1
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_36 Depth 2
	ldrb	r1, [r6]
	sub	r3, r1, #1
	cmp	r3, #126
	bhi	.LBB0_37
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %land.lhs.true7
                                        @   in Loop: Header=BB0_32 Depth=1
	tst	r6, #3
	bne	.LBB0_37
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %while.cond.preheader
                                        @   in Loop: Header=BB0_32 Depth=1
	ldr	r1, [r6]
	ldr	r3, .LCPI0_4
	add	r3, r1, r3
	orr	r3, r3, r1
	b	.LBB0_36
.LCPI0_4:
	.long	4278124287              @ 0xfefefeff
.section bb0_35
.LBB0_35:                               @ %while.body
                                        @   in Loop: Header=BB0_36 Depth=2
	ldr	r1, [r6, #4]!
	ldr	r3, .LCPI0_5
	sub	r0, r0, #4
	add	r3, r1, r3
	orr	r3, r3, r1
	b	.LBB0_36
.LCPI0_5:
	.long	4278124287              @ 0xfefefeff
.section bb0_36
.LBB0_36:                               @ %while.cond.preheader
                                        @   Parent Loop BB0_32 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, .LCPI0_7
	tst	r3, r4
	beq	.LBB0_35
	b	.LBB0_37
.LCPI0_7:
	.long	2155905152              @ 0x80808080
.section bb0_37
.LBB0_37:                               @ %if.end14
                                        @   in Loop: Header=BB0_32 Depth=1
	and	r1, r1, #255
	sub	r3, r1, #1
	cmp	r3, #126
	bls	.LBB0_31
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end20
	sub	r1, r1, #194
	cmp	r1, #50
	bhi	.LBB0_48
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end26
	ldr	r3, .LCPI0_9
	add	r6, r6, #1
	ldr	r1, [r3, r1, lsl #2]
	b	.LBB0_40
.LCPI0_9:
	.long	__fsmu8
.section bb0_40
.LBB0_40:                               @ %resume0
	ldrb	r3, [r6]
	mvn	r4, #15
	add	r4, r4, r3, lsr #3
	lsr	r3, r3, #3
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %resume0
	add	r3, r3, r1, asr #26
	orr	r3, r4, r3
	cmp	r3, #8
	bhs	.LBB0_47
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end40
	add	r3, r6, #1
	tst	r1, #33554432
	beq	.LBB0_52
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.then44
	ldrb	r3, [r3]
	and	r3, r3, #192
	cmp	r3, #128
	bne	.LBB0_47
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end51
	add	r3, r6, #2
	tst	r1, #524288
	beq	.LBB0_52
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.then55
	ldrb	r3, [r3]
	and	r3, r3, #192
	cmp	r3, #128
	bne	.LBB0_47
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end62
	add	r6, r6, #3
	b	.LBB0_53
.section bb0_47
.LBB0_47:                               @ %if.then38
	sub	r6, r6, #1
	cmp	r1, #0
	bne	.LBB0_49
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %land.lhs.true179
	ldrb	r1, [r6]
	cmp	r1, #0
	beq	.LBB0_50
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.end186
	bl	__errno_location
	mov	r1, #84
	mvn	r2, #0
	cmp	r5, #0
	str	r1, [r0]
	strne	r6, [r8]
	b	.LBB0_51
.section bb0_50
.LBB0_50:                               @ %if.then181
	cmp	r5, #0
	sub	r2, r2, r0
	movne	r1, #0
	strne	r1, [r5]
	strne	r1, [r8]
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %return
	mov	r0, r2
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_52
.LBB0_52:
	mov	r6, r3
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %if.end65
	sub	r0, r0, #1
	b	.LBB0_32
.Ltmp0:
	.size	mbsrtowcs, .Ltmp0-mbsrtowcs
	.cantunwind
	.fnend

	.hidden	__fsmu8

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
