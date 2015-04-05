.section memmove_text
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
	.file	"src/string/memmove.bc"
	.globl	memmove
	.align	2
	.type	memmove,%function
.section bb0_0
memmove:                                @ @memmove
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	cmp	r0, r1
	beq	.LBB0_34
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end
	add	r3, r1, r2
	cmp	r3, r0
	addhi	r3, r0, r2
	cmphi	r3, r1
	bls	.LBB0_35
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end5
	eor	r6, r1, r0
	cmp	r0, r1
	and	r6, r6, #3
	bhs	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then7
	cmp	r6, #0
	beq	.LBB0_11
	b	.LBB0_5
.section bb0_5
.LBB0_5:
	mov	r3, r0
	b	.LBB0_32
.section bb0_6
.LBB0_6:                                @ %if.else
	cmp	r6, #0
	bne	.LBB0_28
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %while.cond32.preheader
	tst	r3, #3
	beq	.LBB0_17
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %while.body36.preheader
	sub	r5, r1, #1
	sub	r7, r0, #1
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %while.body36
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r2, #0
	beq	.LBB0_34
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end40
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrb	r3, [r5, r2]
	mov	r6, r7
	sub	r4, r2, #1
	strb	r3, [r6, r2]!
	mov	r2, r4
	tst	r6, #3
	bne	.LBB0_9
	b	.LBB0_18
.section bb0_11
.LBB0_11:                               @ %while.cond.preheader
	tst	r0, #3
	beq	.LBB0_22
	b	.LBB0_12
.section bb0_12
.LBB0_12:
	mov	r3, #0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r2, #0
	beq	.LBB0_34
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end14
                                        @   in Loop: Header=BB0_13 Depth=1
	ldrb	r5, [r1, r3]
	mov	r4, r0
	add	r6, r3, #1
	sub	r2, r2, #1
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end14
                                        @   in Loop: Header=BB0_13 Depth=1
	strb	r5, [r4, r3]!
	add	r3, r4, #1
	tst	r3, #3
	mov	r3, r6
	bne	.LBB0_13
	b	.LBB0_16
.section bb0_16
.LBB0_16:
	add	r12, r0, r6
	add	r1, r1, r6
	b	.LBB0_23
.section bb0_17
.LBB0_17:
	mov	r4, r2
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %while.cond43.preheader
	cmp	r4, #4
	blo	.LBB0_27
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %while.body45.preheader
	sub	r2, r1, #4
	sub	r6, r0, #4
	mov	r3, r4
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %while.body45
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r2, r3]
	str	r7, [r6, r3]
	sub	r3, r3, #4
	cmp	r3, #3
	bhi	.LBB0_20
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %while.cond43.while.cond51.preheader.loopexit_crit_edge
	and	r2, r4, #3
	b	.LBB0_28
.section bb0_22
.LBB0_22:
	mov	r12, r0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %for.cond.preheader
	cmp	r2, #4
	blo	.LBB0_31
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %for.body.lr.ph
	sub	lr, r2, #4
	mov	r6, r1
	bic	r4, lr, #3
	add	r5, r4, #4
	add	r3, r12, r5
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r6], #4
	sub	r2, r2, #4
	cmp	r2, #3
	str	r7, [r12], #4
	bhi	.LBB0_25
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.cond.for.cond20.preheader.loopexit_crit_edge
	sub	r2, lr, r4
	add	r1, r1, r5
	b	.LBB0_32
.section bb0_27
.LBB0_27:
	mov	r2, r4
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %while.cond51.preheader
	cmp	r2, #0
	beq	.LBB0_34
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %while.body53.preheader
	rsb	r2, r2, #1
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %while.body53
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r1, -r2]
	strb	r3, [r0, -r2]
	add	r2, r2, #1
	cmp	r2, #1
	bne	.LBB0_30
	b	.LBB0_34
.section bb0_31
.LBB0_31:
	mov	r3, r12
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %for.cond20.preheader
	cmp	r2, #0
	beq	.LBB0_34
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %for.body22
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r1], #1
	subs	r2, r2, #1
	strb	r7, [r3], #1
	bne	.LBB0_33
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb0_35
.LBB0_35:                               @ %if.then4
	pop	{r4, r5, r6, r7, r11, lr}
	b	memcpy
.Ltmp0:
	.size	memmove, .Ltmp0-memmove
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
