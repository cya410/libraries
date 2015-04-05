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
	.file	"src/string/strlcpy.bc"
	.globl	strlcpy
	.align	2
	.type	strlcpy,%function
strlcpy:                                @ @strlcpy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	cmp	r2, #0
	beq	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                @ %if.end
	sub	r12, r2, #1
	eor	r3, r1, r0
	tst	r3, #3
	beq	.LBB0_7
	b	.LBB0_3
.LBB0_3:
	mov	r2, r1
	mov	r3, r0
	b	.LBB0_4
.LBB0_4:                                @ %for.cond30.preheader
	cmp	r12, #0
	beq	.LBB0_19
	b	.LBB0_5
.LBB0_5:                                @ %land.rhs32
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r2]
	cmp	r1, #0
	strb	r1, [r3]
	addne	r3, r3, #1
	addne	r2, r2, #1
	subsne	r12, r12, #1
	bne	.LBB0_5
	b	.LBB0_19
.LBB0_6:                                @ %entry.finish_crit_edge
	mov	r2, r1
	mov	r3, r0
	b	.LBB0_20
.LBB0_7:                                @ %for.cond.preheader
	cmp	r12, #0
	mov	lr, r12
	movne	lr, #1
	andsne	r3, r1, #3
	bne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	mov	r3, r0
	mov	r2, r1
	b	.LBB0_14
.LBB0_9:                                @ %land.rhs.preheader
	sub	r4, r2, #2
	mov	r5, #0
	b	.LBB0_10
.LBB0_10:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r1
	mov	r3, r0
	ldrb	r6, [r2, r5]!
	strb	r6, [r3, r5]!
	cmp	r6, #0
	beq	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %for.inc
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r6, r5, #1
	cmp	r4, r5
	mov	lr, #0
	sub	r12, r12, #1
	b	.LBB0_12
.LBB0_12:                               @ %for.inc
                                        @   in Loop: Header=BB0_10 Depth=1
	movne	lr, #1
	add	r2, r1, r6
	add	r3, r0, r6
	cmp	r4, r5
	beq	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               @ %for.inc
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r5, r1, r5
	add	r5, r5, #1
	ands	r5, r5, #3
	mov	r5, r6
	bne	.LBB0_10
	b	.LBB0_14
.LBB0_14:                               @ %for.end
	cmp	lr, #1
	bne	.LBB0_19
	b	.LBB0_15
.LBB0_15:                               @ %land.lhs.true10
	ldrb	r1, [r2]
	cmp	r1, #0
	beq	.LBB0_4
	b	.LBB0_16
.LBB0_16:                               @ %if.then13
	cmp	r12, #4
	blo	.LBB0_4
	b	.LBB0_17
.LBB0_17:                               @ %land.rhs17
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r2]
	ldr	r6, .LCPI0_2
	ldr	r5, .LCPI0_3
	add	r6, r1, r6
	bic	r6, r6, r1
	tst	r6, r5
	bne	.LBB0_4
	b	.LBB0_18
.LCPI0_2:
	.long	4278124287              @ 0xfefefeff
.LCPI0_3:
	.long	2155905152              @ 0x80808080
.LBB0_18:                               @ %for.body22
                                        @   in Loop: Header=BB0_17 Depth=1
	sub	r12, r12, #4
	str	r1, [r3], #4
	add	r2, r2, #4
	cmp	r12, #3
	bhi	.LBB0_17
	b	.LBB0_4
.LBB0_19:                               @ %for.end41
	mov	r1, #0
	strb	r1, [r3]
	b	.LBB0_20
.LBB0_20:                               @ %finish
	sub	r4, r3, r0
	mov	r0, r2
	bl	strlen
	add	r0, r4, r0
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	strlcpy, .Ltmp0-strlcpy
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
