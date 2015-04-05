.section ungetwc_text
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
	.file	"src/stdio/ungetwc.bc"
	.globl	ungetwc
	.align	2
	.type	ungetwc,%function
.section bb0_0
ungetwc:                                @ @ungetwc
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
	.pad	#8
	sub	sp, sp, #8
	mov	r5, r0
	mov	r4, r1
	mvn	r6, #0
	cmn	r5, #1
	beq	.LBB0_18
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r0, r5
	bl	isascii
	mov	r7, #1
	cmp	r0, #0
	bne	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.lhs.true
	add	r0, sp, #4
	mov	r1, r5
	bl	wctomb
	mov	r7, r0
	cmp	r7, #0
	blt	.LBB0_18
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end4
	ldr	r0, [r4, #76]
	mov	r8, #0
	cmp	r0, #0
	blt	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	mov	r8, r0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cond.end
	ldrsb	r0, [r4, #74]
	add	r1, r0, #1
	orr	r0, r1, r0
	strb	r0, [r4, #74]
	ldr	r0, [r4, #8]
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %land.lhs.true11
	mov	r0, r4
	bl	__toread
	cmp	r0, #0
	bne	.LBB0_10
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %lor.lhs.false
	ldr	r1, [r4, #44]
	ldr	r0, [r4, #4]
	add	r1, r7, r1
	sub	r1, r1, #8
	cmp	r0, r1
	bhs	.LBB0_12
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then17
	cmp	r8, #0
	beq	.LBB0_18
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then19
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_18
.section bb0_12
.LBB0_12:                               @ %if.end21
	mov	r0, r5
	bl	isascii
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then24
	ldr	r0, [r4, #4]
	sub	r1, r0, #1
	str	r1, [r4, #4]
	strb	r5, [r0, #-1]
	b	.LBB0_15
.section bb0_14
.LBB0_14:                               @ %if.else27
	ldr	r0, [r4, #4]
	add	r1, sp, #4
	mov	r2, r7
	sub	r0, r0, r7
	str	r0, [r4, #4]
	bl	memcpy
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end32
	ldr	r0, [r4]
	cmp	r8, #0
	bic	r0, r0, #16
	str	r0, [r4]
	beq	.LBB0_17
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then34
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	mov	r6, r5
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	ungetwc, .Ltmp0-ungetwc
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
