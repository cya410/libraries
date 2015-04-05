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
	.file	"src/math/fmax.bc"
	.globl	fmax
	.align	2
	.type	fmax,%function
fmax:                                   @ @fmax
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r7, r1
	mov	r1, #267386880
	mov	r8, r2
	mov	r6, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r3
	mov	r3, #0
	mov	r0, #0
	orr	r1, r1, #1879048192
	b	.LBB0_4
.LBB0_4:                                @ %entry
	bic	r2, r7, #-2147483648
	mov	r5, r6
	cmp	r2, r1
	movhi	r3, #1
	b	.LBB0_5
.LBB0_5:                                @ %entry
	cmp	r6, #0
	movne	r5, #1
	cmp	r2, r1
	movne	r5, r3
	cmp	r5, #0
	beq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	r6, r8
	b	.LBB0_14
.LBB0_7:                                @ %cond.true18
	bic	r2, r4, #-2147483648
	mov	r3, r8
	cmp	r2, r1
	movhi	r0, #1
	b	.LBB0_8
.LBB0_8:                                @ %cond.true18
	cmp	r8, #0
	movne	r3, #1
	cmp	r2, r1
	movne	r3, r0
	cmp	r3, #0
	beq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	mov	r4, r7
	b	.LBB0_14
.LBB0_10:                               @ %if.end28
	lsr	r0, r7, #31
	cmp	r0, r4, lsr #31
	bne	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               @ %if.end52
	mov	r0, r6
	mov	r1, r7
	mov	r2, r8
	mov	r3, r4
	b	.LBB0_12
.LBB0_12:                               @ %if.end52
	bl	__aeabi_dcmplt
	cmp	r0, #0
	moveq	r4, r7
	movne	r6, r8
	b	.LBB0_14
.LBB0_13:                               @ %cond.true42
	cmp	r7, #0
	movge	r4, r7
	movlt	r6, r8
	b	.LBB0_14
.LBB0_14:                               @ %return
	mov	r0, r6
	mov	r1, r4
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	fmax, .Ltmp0-fmax
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
