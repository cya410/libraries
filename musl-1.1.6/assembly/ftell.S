.section ftell_text
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
	.file	"src/stdio/ftell.bc"
	.globl	__ftello_unlocked
	.align	2
	.type	__ftello_unlocked,%function
.section bb0_0
__ftello_unlocked:                      @ @__ftello_unlocked
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	mov	r0, #1
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r1, [r4, #40]
	ldrb	r2, [r4]
	tst	r2, #128
	beq	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.rhs
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #28]
	mov	r0, #1
	cmp	r2, r3
	movhi	r0, #2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.end
	str	r0, [sp]
	mov	r0, r4
	mov	r2, #0
	mov	r3, #0
	mov	lr, pc
	mov	pc, r1
	cmp	r1, #0
	blt	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #4]
	ldr	r12, [r4, #20]
	ldr	r4, [r4, #28]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	sub	r2, r2, r3
	subs	r0, r0, r2
	sbc	r1, r1, r2, asr #31
	sub	r2, r12, r4
	adds	r0, r0, r2
	adc	r1, r1, r2, asr #31
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__ftello_unlocked, .Ltmp0-__ftello_unlocked
	.cantunwind
	.fnend

	.globl	__ftello
	.align	2
	.type	__ftello,%function
.section bb1_0
__ftello:                               @ @__ftello
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB1_7
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %cond.end
	mov	r0, r4
	bl	__lockfile
	mov	r7, r0
	mov	r0, r4
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %cond.end
	bl	__ftello_unlocked
	mov	r5, r0
	mov	r6, r1
	cmp	r7, #0
	beq	.LBB1_6
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.then
	mov	r0, r4
	bl	__unlockfile
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.end
	mov	r0, r5
	mov	r1, r6
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb1_7
.LBB1_7:                                @ %cond.end.thread
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	b	__ftello_unlocked
.Ltmp1:
	.size	__ftello, .Ltmp1-__ftello
	.cantunwind
	.fnend

	.globl	ftell
	.align	2
	.type	ftell,%function
.section bb2_0
ftell:                                  @ @ftell
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	bl	__ftello
	cmp	r0, #0
	mov	r3, #0
	mov	r2, #0
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	movge	r3, #1
	cmp	r1, #0
	movlt	r2, #1
	moveq	r2, r3
	cmp	r2, #0
	bne	.LBB2_4
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %if.then
	bl	__errno_location
	mov	r1, #75
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	ftell, .Ltmp2-ftell
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	ftello
ftello = __ftello
	.weak	ftello64
ftello64 = __ftello
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
