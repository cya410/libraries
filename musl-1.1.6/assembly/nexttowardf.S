.section nexttowardf_text
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
	.file	"src/math/nexttowardf.bc"
	.globl	nexttowardf
	.align	2
	.type	nexttowardf,%function
.section bb0_0
nexttowardf:                            @ @nexttowardf
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
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r10, #1065353216
	mov	r5, r3
	mov	r6, r2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	orr	r10, r10, #1073741824
	bic	r0, r4, #-2147483648
	cmp	r0, r10
	bhi	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.true18
	mov	r1, #267386880
	bic	r0, r5, #-2147483648
	mov	r3, #0
	mov	r2, #0
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.true18
	orr	r1, r1, #1879048192
	cmp	r0, r1
	movlo	r3, #1
	cmp	r6, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cond.true18
	moveq	r2, #1
	cmp	r0, r1
	movne	r2, r3
	cmp	r2, #0
	bne	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then
	mov	r0, r4
	bl	__aeabi_f2d
	mov	r2, r6
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_12
.section bb0_9
.LBB0_9:                                @ %if.end
	mov	r0, r4
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end
	mov	r2, r6
	mov	r3, r5
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then32
	mov	r0, r6
	mov	r1, r5
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %return
	bl	__aeabi_d2f
	mov	r6, r0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.section bb0_14
.LBB0_14:                               @ %if.end34
	mov	r0, r4
	mov	r1, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.LBB0_16
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then37
	mov	r6, #1
	cmp	r5, #0
	movlt	r6, #-2147483647
	b	.LBB0_23
.section bb0_16
.LBB0_16:                               @ %if.else
	mov	r0, r7
	mov	r1, r8
	mov	r2, r6
	mov	r3, r5
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.else
	bl	__aeabi_dcmpge
	mov	r9, r0
	mov	r0, r7
	mov	r1, r8
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.else
	mov	r2, r6
	mov	r3, r5
	bl	__aeabi_dcmpun
	orrs	r0, r0, r9
	bne	.LBB0_20
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %cond.true57
	cmp	r4, #0
	bge	.LBB0_22
	b	.LBB0_21
.section bb0_20
.LBB0_20:                               @ %cond.true78
	cmp	r4, #0
	blt	.LBB0_22
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.else96
	sub	r6, r4, #1
	b	.LBB0_23
.section bb0_22
.LBB0_22:                               @ %if.else74
	add	r6, r4, #1
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end101
	ands	r0, r6, r10
	bne	.LBB0_26
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %do.body112
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r4, r0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %do.body112
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	str	r0, [sp]
	b	.LBB0_13
.section bb0_26
.LBB0_26:                               @ %if.end101
	cmp	r0, r10
	bne	.LBB0_13
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %do.body
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fadd
	str	r0, [sp, #4]
	b	.LBB0_13
.Ltmp0:
	.size	nexttowardf, .Ltmp0-nexttowardf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
