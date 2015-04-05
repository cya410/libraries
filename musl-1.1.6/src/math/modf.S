.section modf_text
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
	.file	"src/math/modf.bc"
	.globl	modf
	.align	2
	.type	modf,%function
.section bb0_0
modf:                                   @ @modf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r4, .LCPI0_2
	mov	r3, #255
	b	.LBB0_2
.LCPI0_2:
	.long	4294966273              @ 0xfffffc01
.section bb0_2
.LBB0_2:                                @ %entry
	orr	r3, r3, #1792
	and	r3, r3, r1, lsr #20
	add	r5, r3, r4
	cmp	r5, #52
	blt	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	stm	r2, {r0, r1}
	ldr	r2, .LCPI0_3
	and	r2, r1, r2
	orrs	r2, r0, r2
	beq	.LBB0_12
	b	.LBB0_4
.LCPI0_3:
	.long	1048575                 @ 0xfffff
.section bb0_4
.LBB0_4:                                @ %if.then
	cmp	r5, #1024
	beq	.LBB0_13
	b	.LBB0_12
.section bb0_5
.LBB0_5:                                @ %if.end11
	mov	r4, #254
	orr	r4, r4, #768
	cmp	r3, r4
	bhi	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then14
	mov	r3, #0
	and	r5, r1, #-2147483648
	stm	r2, {r3, r5}
	b	.LBB0_13
.section bb0_7
.LBB0_7:                                @ %if.end18
	ldr	r12, .LCPI0_4
	mvn	r4, #0
	rsb	r3, r5, #32
	lsr	r4, r4, r5
	b	.LBB0_8
.LCPI0_4:
	.long	1048575                 @ 0xfffff
.section bb0_8
.LBB0_8:                                @ %if.end18
	orr	lr, r4, r12, lsl r3
	sub	r3, r5, #32
	and	r6, r1, r12, lsr r5
	cmp	r3, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end18
	lsrge	lr, r12, r3
	and	r3, lr, r0
	orrs	r3, r3, r6
	beq	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end28
	lsr	r3, r12, r5
	bic	r12, r0, lr
	bic	r3, r1, r3
	str	r12, [r2]
	str	r3, [r2, #4]
	mov	r2, r12
	bl	__aeabi_dsub
	b	.LBB0_13
.section bb0_11
.LBB0_11:                               @ %if.then24
	stm	r2, {r0, r1}
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end
	and	r1, r1, #-2147483648
	mov	r0, #0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	modf, .Ltmp0-modf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
