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
	.file	"src/stdio/fseek.bc"
	.globl	__fseeko_unlocked
	.align	2
	.type	__fseeko_unlocked,%function
__fseeko_unlocked:                      @ @__fseeko_unlocked
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	r8, [sp, #32]
	mov	r5, r3
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r2
	mov	r4, r0
	cmp	r8, #1
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	ldmib	r4, {r0, r1}
	sub	r0, r1, r0
	subs	r6, r6, r0
	sbc	r5, r5, r0, asr #31
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #28]
	cmp	r0, r1
	bls	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %if.then3
	ldr	r3, [r4, #36]
	mov	r0, r4
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_7
.LBB0_7:                                @ %if.then3
	mov	lr, pc
	mov	pc, r3
	ldr	r1, [r4, #20]
	mvn	r0, #0
	cmp	r1, #0
	beq	.LBB0_12
	b	.LBB0_8
.LBB0_8:                                @ %if.end7
	mov	r7, #0
	mov	r0, r4
	mov	r2, r6
	mov	r3, r5
	b	.LBB0_9
.LBB0_9:                                @ %if.end7
	str	r7, [r4, #28]
	str	r7, [r4, #16]
	str	r7, [r4, #20]
	ldr	r1, [r4, #40]
	b	.LBB0_10
.LBB0_10:                               @ %if.end7
	str	r8, [sp]
	mov	lr, pc
	mov	pc, r1
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @ %if.end14
	str	r7, [r4, #8]
	str	r7, [r4, #4]
	ldr	r0, [r4]
	bic	r0, r0, #16
	str	r0, [r4]
	mov	r0, #0
	b	.LBB0_12
.LBB0_12:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__fseeko_unlocked, .Ltmp0-__fseeko_unlocked
	.cantunwind
	.fnend

	.globl	__fseeko
	.align	2
	.type	__fseeko,%function
__fseeko:                               @ @__fseeko
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	mov	r5, r3
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r6, r2
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB1_9
	b	.LBB1_4
.LBB1_4:                                @ %cond.end
	ldr	r8, [sp, #32]
	mov	r0, r4
	bl	__lockfile
	mov	r7, r0
	b	.LBB1_5
.LBB1_5:                                @ %cond.end
	mov	r0, r4
	mov	r2, r6
	mov	r3, r5
	str	r8, [sp]
	b	.LBB1_6
.LBB1_6:                                @ %cond.end
	bl	__fseeko_unlocked
	mov	r5, r0
	cmp	r7, #0
	beq	.LBB1_8
	b	.LBB1_7
.LBB1_7:                                @ %if.then
	mov	r0, r4
	bl	__unlockfile
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	mov	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.LBB1_9:                                @ %cond.end.thread
	mov	r0, r4
	mov	r2, r6
	mov	r3, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	b	__fseeko_unlocked
.Ltmp1:
	.size	__fseeko, .Ltmp1-__fseeko
	.cantunwind
	.fnend

	.globl	fseek
	.align	2
	.type	fseek,%function
fseek:                                  @ @fseek
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	str	r2, [sp]
	asr	r3, r1, #31
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r2, r1
	bl	__fseeko
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	fseek, .Ltmp2-fseek
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	fseeko
fseeko = __fseeko
	.weak	fseeko64
fseeko64 = __fseeko
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
