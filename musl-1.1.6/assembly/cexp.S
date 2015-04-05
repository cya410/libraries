.section cexp_text
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
	.file	"src/complex/cexp.bc"
	.globl	cexp
	.align	2
	.type	cexp,%function
.section bb0_0
cexp:                                   @ @cexp
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
	.pad	#32
	sub	sp, sp, #32
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r6, [sp, #68]
	ldr	r5, [sp, #64]
	mov	r4, r0
	mov	r7, r3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r2
	bic	r0, r6, #-2147483648
	orrs	r1, r0, r5
	beq	.LBB0_11
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %do.body11
	bic	r1, r7, #-2147483648
	orrs	r2, r1, r8
	beq	.LBB0_12
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end34
	mov	r2, #267386880
	orr	r2, r2, #1879048192
	cmp	r0, r2
	blo	.LBB0_14
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then37
	cmp	r8, #0
	cmpeq	r1, r2
	beq	.LBB0_18
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then43
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then43
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r6, r1
	mov	r0, r4
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then43
	stm	r4, {r5, r6}
	str	r6, [r4, #12]
	str	r5, [r0, #8]!
	mov	r8, r5
	mov	r7, r6
	b	.LBB0_28
.section bb0_11
.LBB0_11:                               @ %if.then
	mov	r0, r8
	mov	r1, r7
	bl	exp
	mov	r8, r0
	mov	r7, r1
	b	.LBB0_17
.section bb0_12
.LBB0_12:                               @ %if.then24
	mov	r0, r5
	mov	r1, r6
	bl	cos
	mov	r8, r0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then24
	mov	r7, r1
	mov	r0, r5
	mov	r1, r6
	bl	sin
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_17
.section bb0_14
.LBB0_14:                               @ %if.end70
	ldr	r0, .LCPI0_2
	ldr	r1, .LCPI0_3
	add	r0, r7, r0
	cmp	r0, r1
	bhi	.LBB0_20
	b	.LBB0_15
.LCPI0_2:
	.long	3212431806              @ 0xbf79d1be
.LCPI0_3:
	.long	1084066                 @ 0x108aa2
.section bb0_15
.LBB0_15:                               @ %if.then75
	mov	r0, #0
	stm	sp, {r5, r6}
	mov	r2, r8
	mov	r3, r7
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then75
	str	r0, [sp, #8]
	add	r0, sp, #16
	bl	__ldexp_cexp
	ldr	r8, [sp, #16]
	ldr	r7, [sp, #20]
	ldr	r5, [sp, #24]
	ldr	r6, [sp, #28]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	str	r7, [r4, #4]
	str	r8, [r4]
	b	.LBB0_27
.section bb0_18
.LBB0_18:                               @ %if.else
	cmp	r7, #0
	blt	.LBB0_29
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.else61
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	str	r8, [r4]
	str	r7, [r4, #4]
	bl	__aeabi_dsub
	b	.LBB0_26
.section bb0_20
.LBB0_20:                               @ %if.else84
	mov	r0, r8
	mov	r1, r7
	bl	exp
	mov	r9, r0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.else84
	mov	r10, r1
	mov	r0, r5
	mov	r1, r6
	bl	cos
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.else84
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r10
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.else84
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r7, r1
	mov	r0, r5
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.else84
	mov	r1, r6
	bl	sin
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.else84
	mov	r0, r9
	mov	r1, r10
	str	r8, [r4]
	str	r7, [r4, #4]
	bl	__aeabi_dmul
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %return
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %return
	mov	r0, r4
	str	r6, [r4, #12]
	str	r5, [r0, #8]!
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %return
	str	r8, [r4]
	str	r7, [r4, #4]
	stm	r0, {r5, r6}
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.section bb0_29
.LBB0_29:                               @ %if.then53
	mov	r5, #0
	mov	r0, r4
	mov	r6, #0
	mov	r8, #0
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.then53
	mov	r7, #0
	str	r5, [r4, #4]
	str	r5, [r4]
	str	r5, [r4, #12]
	str	r5, [r0, #8]!
	b	.LBB0_28
.Ltmp0:
	.size	cexp, .Ltmp0-cexp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
