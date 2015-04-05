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
	.file	"src/stdio/fputwc.bc"
	.globl	__fputwc_unlocked
	.align	2
	.type	__fputwc_unlocked,%function
__fputwc_unlocked:                      @ @__fputwc_unlocked
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r1
	mov	r4, r0
	ldrsb	r0, [r5, #74]
	add	r1, r0, #1
	b	.LBB0_3
.LBB0_3:                                @ %entry
	orr	r0, r1, r0
	strb	r0, [r5, #74]
	mov	r0, r4
	bl	isascii
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	ldrsb	r0, [r5, #75]
	cmp	r0, r4
	beq	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %land.lhs.true
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	cmp	r0, r1
	bhs	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %cond.true
	add	r1, r0, #1
	str	r1, [r5, #20]
	strb	r4, [r0]
	and	r0, r4, #255
	b	.LBB0_14
.LBB0_7:                                @ %cond.false
	mov	r0, r5
	mov	r1, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	b	__overflow
.LBB0_8:                                @ %if.else
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	add	r2, r0, #4
	cmp	r2, r1
	bhs	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @ %if.then16
	mov	r1, r4
	bl	wctomb
	mov	r1, r0
	mvn	r0, #0
	b	.LBB0_10
.LBB0_10:                               @ %if.then16
	cmp	r1, #0
	ldrge	r0, [r5, #20]
	addge	r0, r0, r1
	strge	r0, [r5, #20]
	movge	r0, r4
	b	.LBB0_14
.LBB0_11:                               @ %if.else25
	add	r0, sp, #4
	mov	r1, r4
	bl	wctomb
	mov	r6, r0
	cmp	r6, #0
	blt	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %lor.lhs.false
	add	r0, sp, #4
	mov	r1, r6
	mov	r2, r5
	bl	__fwritex
	cmp	r0, r6
	mov	r0, r4
	mvnlo	r0, #0
	b	.LBB0_14
.LBB0_13:                               @ %if.then33
	mvn	r0, #0
	b	.LBB0_14
.LBB0_14:                               @ %if.end36
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__fputwc_unlocked, .Ltmp0-__fputwc_unlocked
	.cantunwind
	.fnend

	.globl	fputwc
	.align	2
	.type	fputwc,%function
fputwc:                                 @ @fputwc
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB1_6
	b	.LBB1_2
.LBB1_2:                                @ %cond.end
	mov	r0, r4
	bl	__lockfile
	mov	r6, r0
	mov	r0, r5
	b	.LBB1_3
.LBB1_3:                                @ %cond.end
	mov	r1, r4
	bl	__fputwc_unlocked
	mov	r5, r0
	cmp	r6, #0
	beq	.LBB1_5
	b	.LBB1_4
.LBB1_4:                                @ %if.then
	mov	r0, r4
	bl	__unlockfile
	b	.LBB1_5
.LBB1_5:                                @ %if.end
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.LBB1_6:                                @ %cond.end.thread
	mov	r0, r5
	mov	r1, r4
	pop	{r4, r5, r6, lr}
	b	__fputwc_unlocked
.Ltmp1:
	.size	fputwc, .Ltmp1-fputwc
	.cantunwind
	.fnend

	.protected	__overflow
	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	fputwc_unlocked
fputwc_unlocked = __fputwc_unlocked
	.weak	putwc_unlocked
putwc_unlocked = __fputwc_unlocked
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
