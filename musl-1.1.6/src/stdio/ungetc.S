.section ungetc_text
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
	.file	"src/stdio/ungetc.bc"
	.globl	ungetc
	.align	2
	.type	ungetc,%function
.section bb0_0
ungetc:                                 @ @ungetc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r6, r0
	mov	r5, r1
	mvn	r4, #0
	cmn	r6, #1
	beq	.LBB0_14
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldr	r0, [r5, #76]
	mov	r7, #0
	cmp	r0, #0
	blt	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %cond.true
	mov	r0, r5
	bl	__lockfile
	mov	r7, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.end
	ldr	r0, [r5, #8]
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.lhs.true
	mov	r0, r5
	bl	__toread
	cmp	r0, #0
	bne	.LBB0_12
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %lor.lhs.false
	ldr	r1, [r5, #44]
	ldr	r0, [r5, #4]
	sub	r1, r1, #8
	cmp	r0, r1
	bls	.LBB0_12
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end9
	sub	r1, r0, #1
	cmp	r7, #0
	str	r1, [r5, #4]
	strb	r6, [r0, #-1]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end9
	ldr	r0, [r5]
	bic	r0, r0, #16
	str	r0, [r5]
	beq	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then12
	mov	r0, r5
	bl	__unlockfile
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	mov	r4, r6
	b	.LBB0_14
.section bb0_12
.LBB0_12:                               @ %if.then5
	cmp	r7, #0
	beq	.LBB0_14
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then7
	mov	r0, r5
	bl	__unlockfile
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	ungetc, .Ltmp0-ungetc
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
