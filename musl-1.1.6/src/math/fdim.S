.section fdim_text
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
	.file	"src/math/fdim.bc"
	.globl	fdim
	.align	2
	.type	fdim,%function
.section bb0_0
fdim:                                   @ @fdim
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	mov	r1, #267386880
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r2
	mov	r6, r0
	mov	r9, r3
	mov	r3, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, #0
	orr	r1, r1, #1879048192
	bic	r2, r4, #-2147483648
	mov	r5, r6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	cmp	r2, r1
	movhi	r3, #1
	cmp	r6, #0
	movne	r5, #1
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	cmp	r2, r1
	movne	r5, r3
	cmp	r5, #0
	bne	.LBB0_14
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cond.true18
	bic	r2, r9, #-2147483648
	mov	r3, r7
	cmp	r2, r1
	movhi	r0, #1
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %cond.true18
	cmp	r7, #0
	movne	r3, #1
	cmp	r2, r1
	movne	r3, r0
	cmp	r3, #0
	beq	.LBB0_10
	b	.LBB0_9
.section bb0_9
.LBB0_9:
	mov	r6, r7
	mov	r4, r9
	b	.LBB0_14
.section bb0_10
.LBB0_10:                               @ %if.end28
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	mov	r3, r9
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end28
	bl	__aeabi_dcmpgt
	mov	r8, r0
	mov	r0, r6
	mov	r1, r4
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end28
	mov	r2, r7
	mov	r3, r9
	bl	__aeabi_dsub
	mov	r6, r0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end28
	cmp	r8, #0
	mov	r4, r1
	moveq	r4, r8
	moveq	r6, r8
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %return
	mov	r0, r6
	mov	r1, r4
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fdim, .Ltmp0-fdim
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
