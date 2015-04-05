.section fmemopen_text
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
	.file	"src/stdio/fmemopen.bc"
	.globl	fmemopen
	.align	2
	.type	fmemopen,%function
.section bb0_0
fmemopen:                               @ @fmemopen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r7, r2
	mov	r5, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, r0
	mov	r1, #43
	mov	r0, r7
	bl	strchr
	mov	r8, r0
	cmp	r5, #0
	beq	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %lor.lhs.false
	ldrb	r1, [r7]
	ldr	r0, .LCPI0_6
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_5
.LCPI0_6:
	.long	.L.str
.section bb0_5
.LBB0_5:                                @ %if.end
	cmp	r6, #0
	bne	.LBB0_11
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	cmn	r5, #1168
	blo	.LBB0_11
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then8
	bl	__errno_location
	mov	r1, #12
	b	.LBB0_9
.section bb0_8
.LBB0_8:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.section bb0_11
.LBB0_11:                               @ %if.end10
	mov	r9, #164
	cmp	r6, #0
	mov	r1, #1
	orr	r9, r9, #1024
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end10
	mov	r0, r9
	addeq	r0, r5, r0
	bl	calloc
	mov	r4, r0
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB0_10
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end15
	add	r0, r4, #136
	cmp	r6, #0
	str	r0, [r4, #84]
	mvn	r0, #0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end15
	addeq	r6, r4, r9
	cmp	r8, #0
	str	r0, [r4, #60]
	mov	r0, #255
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end15
	strb	r0, [r4, #75]
	add	r0, r4, #164
	str	r0, [r4, #44]
	mov	r0, #1024
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end15
	str	r0, [r4, #48]
	str	r6, [r4, #148]
	str	r5, [r4, #144]
	ldrb	r0, [r7]
	str	r0, [r4, #152]
	bne	.LBB0_18
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then29
	ldrb	r0, [r7]
	mov	r1, #4
	cmp	r0, #114
	moveq	r1, #8
	str	r1, [r4]
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end34
	ldrb	r0, [r7]
	cmp	r0, #97
	bne	.LBB0_20
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then42
	mov	r0, r6
	mov	r1, r5
	bl	strnlen
	str	r0, [r4, #136]
	str	r0, [r4, #140]
	b	.LBB0_21
.section bb0_20
.LBB0_20:                               @ %if.end34
	cmp	r0, #114
	streq	r5, [r4, #140]
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end46
	ldr	r0, .LCPI0_7
	ldr	r6, .LCPI0_11
	str	r0, [r4, #32]
	ldr	r0, .LCPI0_8
	b	.LBB0_22
.LCPI0_7:
	.long	mread
.LCPI0_8:
	.long	mwrite
.LCPI0_11:
	.long	__libc
.section bb0_22
.LBB0_22:                               @ %if.end46
	add	r5, r6, #28
	str	r0, [r4, #36]
	ldr	r0, .LCPI0_9
	str	r0, [r4, #40]
	b	.LBB0_23
.LCPI0_9:
	.long	mseek
.section bb0_23
.LBB0_23:                               @ %if.end46
	ldr	r0, .LCPI0_10
	str	r0, [r4, #12]
	ldr	r0, [r6, #8]
	cmp	r0, #0
	b	.LBB0_24
.LCPI0_10:
	.long	mclose
.section bb0_24
.LBB0_24:                               @ %if.end46
	mvneq	r0, #0
	streq	r0, [r4, #76]
	mov	r0, r5
	bl	__lock
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end46
	ldr	r0, [r6, #24]
	cmp	r0, #0
	str	r0, [r4, #56]
	strne	r4, [r0, #52]
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end46
	mov	r0, r5
	str	r4, [r6, #24]
	bl	__unlock
	mov	r0, r4
	b	.LBB0_10
.Ltmp0:
	.size	fmemopen, .Ltmp0-fmemopen
	.cantunwind
	.fnend

	.align	2
	.type	mread,%function
.section bb1_0
mread:                                  @ @mread
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
	mov	r5, r0
	mov	r4, r2
	ldr	r7, [r5, #84]
	ldm	r7, {r0, r2}
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	subs	r6, r2, r0
	movlo	r6, #0
	cmp	r6, r4
	ldrlo	r2, [r5]
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	movlo	r4, r6
	orrlo	r2, r2, #16
	strlo	r2, [r5]
	ldr	r2, [r7, #12]
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	add	r2, r2, r0
	mov	r0, r1
	mov	r1, r2
	mov	r2, r4
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	bl	memcpy
	ldr	r0, [r7]
	sub	r6, r6, r4
	add	r1, r0, r4
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %entry
	str	r1, [r7]
	ldr	r2, [r5, #48]
	ldr	r0, [r5, #44]
	cmp	r6, r2
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %entry
	movhi	r6, r2
	add	r2, r0, r6
	stmib	r5, {r0, r2}
	ldr	r2, [r7, #12]
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %entry
	add	r1, r2, r1
	mov	r2, r6
	bl	memcpy
	ldr	r0, [r7]
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %entry
	add	r0, r0, r6
	str	r0, [r7]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	mread, .Ltmp1-mread
	.cantunwind
	.fnend

	.align	2
	.type	mwrite,%function
.section bb2_0
mwrite:                                 @ @mwrite
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r5, r0
	mov	r8, r1
	mov	r4, r2
	ldr	r0, [r5, #20]
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	ldr	r1, [r5, #28]
	ldr	r6, [r5, #84]
	cmp	r0, r1
	beq	.LBB2_6
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.then
	sub	r7, r0, r1
	mov	r0, r5
	str	r1, [r5, #20]
	mov	r2, r7
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %if.then
	bl	mwrite
	mov	r1, r0
	mov	r0, #0
	cmp	r1, r7
	blo	.LBB2_16
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %if.end5
	ldr	r0, [r6, #16]
	cmp	r0, #97
	ldreq	r1, [r6, #4]
	streq	r1, [r6]
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %if.end5
	ldrne	r1, [r6]
	ldr	r0, [r6, #12]
	ldr	r2, [r6, #8]
	add	r0, r0, r1
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %if.end5
	sub	r1, r2, r1
	cmp	r1, r4
	movlo	r4, r1
	mov	r1, r8
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %if.end5
	mov	r2, r4
	bl	memcpy
	ldr	r0, [r6]
	add	r0, r0, r4
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.end5
	str	r0, [r6]
	ldr	r1, [r6, #4]
	cmp	r0, r1
	bls	.LBB2_15
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.then21
	str	r0, [r6, #4]
	ldr	r1, [r6, #8]
	cmp	r0, r1
	bhs	.LBB2_13
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.then27
	ldr	r1, [r6, #12]
	mov	r2, #0
	strb	r2, [r1, r0]
	b	.LBB2_15
.section bb2_13
.LBB2_13:                               @ %if.else
	cmp	r1, #0
	beq	.LBB2_15
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.else
	ldr	r0, [r5]
	ands	r0, r0, #4
	ldrne	r0, [r6, #12]
	addne	r0, r1, r0
	movne	r1, #0
	strbne	r1, [r0, #-1]
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %return
	mov	r0, r4
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp2:
	.size	mwrite, .Ltmp2-mwrite
	.cantunwind
	.fnend

	.align	2
	.type	mseek,%function
.section bb3_0
mseek:                                  @ @mseek
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	ldr	r12, [sp, #32]
	cmp	r12, #3
	bhs	.LBB3_10
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %if.end
	ldr	lr, [r0, #84]
	mov	r0, #0
	mov	r4, #0
	str	r0, [sp, #4]
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %if.end
	ldr	r1, [lr]
	str	r1, [sp, #8]
	ldr	r1, [lr, #4]
	str	r1, [sp, #12]
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %if.end
	add	r1, sp, #4
	ldr	r12, [r1, r12, lsl #2]
	rsb	r1, r12, #0
	cmp	r1, r2
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %if.end
	asr	r5, r1, #31
	movhi	r4, #1
	cmp	r5, r3
	mov	r5, #0
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %if.end
	movgt	r5, #1
	cmp	r3, r1, asr #31
	moveq	r5, r4
	cmp	r5, #0
	bne	.LBB3_10
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %lor.lhs.false
	ldr	r1, [lr, #8]
	mov	r4, #0
	sub	r1, r1, r12
	cmp	r1, r2
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %lor.lhs.false
	asr	r5, r1, #31
	movlo	r4, #1
	cmp	r5, r3
	movlt	r0, #1
	b	.LBB3_9
.section bb3_9
.LBB3_9:                                @ %lor.lhs.false
	cmp	r3, r1, asr #31
	moveq	r0, r4
	cmp	r0, #0
	beq	.LBB3_12
	b	.LBB3_10
.section bb3_10
.LBB3_10:                               @ %fail
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	mvn	r1, #0
	b	.LBB3_11
.section bb3_11
.LBB3_11:                               @ %return
	add	sp, sp, #16
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.section bb3_12
.LBB3_12:                               @ %if.end9
	add	r0, r12, r2
	mov	r1, #0
	str	r0, [lr]
	b	.LBB3_11
.Ltmp3:
	.size	mseek, .Ltmp3-mseek
	.cantunwind
	.fnend

	.align	2
	.type	mclose,%function
.section bb4_0
mclose:                                 @ @mclose
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp4:
	.size	mclose, .Ltmp4-mclose
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"rwa"
	.size	.L.str, 4

	.hidden	__libc
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
