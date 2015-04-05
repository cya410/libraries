.section nextafter_text
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
	.file	"src/math/nextafter.bc"
	.globl	nextafter
	.align	2
	.type	nextafter,%function
.section bb0_0
nextafter:                              @ @nextafter
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
	.pad	#16
	sub	sp, sp, #16
	mov	r6, #267386880
	mov	r8, r2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bic	r2, r1, #-2147483648
	mov	r5, r3
	mov	r3, #0
	mov	r4, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r7, #0
	orr	r6, r6, #1879048192
	cmp	r2, r6
	movhi	r3, #1
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	cmp	r0, #0
	movne	r4, #1
	cmp	r2, r6
	movne	r4, r3
	cmp	r4, #0
	bne	.LBB0_8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.true19
	bic	r3, r5, #-2147483648
	mov	r4, #0
	cmp	r3, r6
	movlo	r4, #1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cond.true19
	cmp	r8, #0
	moveq	r7, #1
	cmp	r3, r6
	movne	r7, r4
	cmp	r7, #0
	bne	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then
	mov	r2, r8
	mov	r3, r5
	bl	__aeabi_dadd
	mov	r8, r0
	mov	r5, r1
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	mov	r0, r8
	mov	r1, r5
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_10
.LBB0_10:                               @ %if.end
	eor	r7, r1, r5
	eor	r6, r0, r8
	orrs	r6, r6, r7
	beq	.LBB0_9
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end32
	orrs	r6, r0, r2
	beq	.LBB0_16
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.else
	cmp	r0, r8
	mov	r5, #0
	mov	r6, #0
	movhi	r5, #1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.else
	cmp	r2, r3
	movhi	r6, #1
	moveq	r6, r5
	cmp	r6, #0
	bne	.LBB0_18
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.else
	cmp	r7, #0
	blt	.LBB0_18
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.else55
	adds	r8, r0, #1
	adc	r5, r1, #0
	b	.LBB0_19
.section bb0_16
.LBB0_16:                               @ %if.then39
	orrs	r2, r8, r3
	beq	.LBB0_9
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end43
	and	r5, r5, #-2147483648
	mov	r8, #1
	b	.LBB0_19
.section bb0_18
.LBB0_18:                               @ %if.then53
	subs	r8, r0, #1
	sbc	r5, r1, #0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end58
	mov	r2, #255
	orr	r2, r2, #1792
	and	r3, r2, r5, lsr #20
	cmp	r3, #0
	bne	.LBB0_24
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %do.body70
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r6, r0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %do.body70
	mov	r7, r1
	mov	r0, r8
	mov	r1, r5
	mov	r2, r8
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %do.body70
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %do.body70
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	str	r1, [sp, #4]
	str	r0, [sp]
	b	.LBB0_9
.section bb0_24
.LBB0_24:                               @ %if.end58
	cmp	r3, r2
	bne	.LBB0_9
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %do.body
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB0_9
.Ltmp0:
	.size	nextafter, .Ltmp0-nextafter
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
