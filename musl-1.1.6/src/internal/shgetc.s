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
	.file	"src/internal/shgetc.bc"
	.globl	__shlim
	.align	2
	.type	__shlim,%function
__shlim:                                @ @__shlim
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	str	r3, [r0, #116]
	str	r2, [r0, #112]
	b	.LBB0_2
.LBB0_2:                                @ %entry
	orrs	r5, r2, r3
	ldmib	r0, {r12, lr}
	sub	r4, lr, r12
	asr	r1, r4, #31
	str	r4, [r0, #120]
	str	r1, [r0, #124]
	beq	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                @ %entry
	cmp	r4, r2
	mov	r4, #0
	mov	r5, #0
	movls	r4, #1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	cmp	r1, r3
	movle	r5, #1
	moveq	r5, r4
	cmp	r5, #0
	b	.LBB0_5
.LBB0_5:                                @ %entry
	addeq	r1, r12, r2
	streq	r1, [r0, #104]
	popeq	{r4, r5, r11, lr}
	moveq	pc, lr
	b	.LBB0_6
.LBB0_6:                                @ %if.else
	str	lr, [r0, #104]
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__shlim, .Ltmp0-__shlim
	.cantunwind
	.fnend

	.globl	__shgetc
	.align	2
	.type	__shgetc,%function
__shgetc:                               @ @__shgetc
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r4, r0
	mov	r5, r4
	b	.LBB1_2
.LBB1_2:                                @ %entry
	ldr	r1, [r5, #112]!
	ldr	r0, [r5, #4]
	orrs	r2, r1, r0
	beq	.LBB1_5
	b	.LBB1_3
.LBB1_3:                                @ %land.lhs.true
	ldr	r2, [r4, #120]
	ldr	r12, [r4, #124]
	mov	r3, #0
	cmp	r2, r1
	b	.LBB1_4
.LBB1_4:                                @ %land.lhs.true
	mov	r1, #0
	movhs	r1, #1
	cmp	r12, r0
	movge	r3, #1
	moveq	r3, r1
	cmp	r3, #0
	bne	.LBB1_13
	b	.LBB1_5
.LBB1_5:                                @ %lor.lhs.false
	mov	r0, r4
	bl	__uflow
	cmp	r0, #0
	blt	.LBB1_13
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	ldm	r5, {r3, r5}
	orrs	r1, r3, r5
	beq	.LBB1_14
	b	.LBB1_7
.LBB1_7:                                @ %land.lhs.true5
	ldr	r2, [r4, #120]
	ldr	lr, [r4, #124]
	ldr	r1, [r4, #8]
	ldr	r12, [r4, #4]
	b	.LBB1_8
.LBB1_8:                                @ %land.lhs.true5
	mov	r6, #0
	subs	r2, r3, r2
	sbc	r5, r5, lr
	subs	lr, r2, #1
	b	.LBB1_9
.LBB1_9:                                @ %land.lhs.true5
	sbc	r2, r5, #0
	sub	r5, r1, r12
	asr	r3, r5, #31
	cmp	r3, r2
	b	.LBB1_10
.LBB1_10:                               @ %land.lhs.true5
	mov	r3, #0
	movle	r3, #1
	cmp	r5, lr
	movls	r6, #1
	b	.LBB1_11
.LBB1_11:                               @ %land.lhs.true5
	cmp	r2, r5, asr #31
	movne	r6, r3
	cmp	r6, #0
	bne	.LBB1_15
	b	.LBB1_12
.LBB1_12:                               @ %if.then11
	add	r2, r12, lr
	str	r2, [r4, #104]
	b	.LBB1_16
.LBB1_13:                               @ %if.then
	mov	r0, #0
	str	r0, [r4, #104]
	mvn	r0, #0
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.LBB1_14:                               @ %if.end.if.else_crit_edge
	ldr	r1, [r4, #8]
	b	.LBB1_15
.LBB1_15:                               @ %if.else
	str	r1, [r4, #104]
	b	.LBB1_16
.LBB1_16:                               @ %if.end20
	ldr	r2, [r4, #4]
	cmp	r1, #0
	beq	.LBB1_19
	b	.LBB1_17
.LBB1_17:                               @ %if.then23
	ldr	r3, [r4, #120]
	ldr	r6, [r4, #124]
	add	r1, r1, #1
	sub	r1, r1, r2
	b	.LBB1_18
.LBB1_18:                               @ %if.then23
	adds	r3, r1, r3
	asr	r1, r1, #31
	adc	r1, r1, r6
	str	r3, [r4, #120]
	str	r1, [r4, #124]
	b	.LBB1_19
.LBB1_19:                               @ %if.end32
	ldrb	r1, [r2, #-1]
	cmp	r1, r0
	strbne	r0, [r2, #-1]
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp1:
	.size	__shgetc, .Ltmp1-__shgetc
	.cantunwind
	.fnend

	.protected	__uflow

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
