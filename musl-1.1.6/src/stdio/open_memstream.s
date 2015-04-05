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
	.file	"src/stdio/open_memstream.bc"
	.globl	open_memstream
	.align	2
	.type	open_memstream,%function
open_memstream:                         @ @open_memstream
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r6, r0
	mov	r0, #1184
	mov	r5, r1
	bl	malloc
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB0_15
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	mov	r0, r4
	mov	r1, #0
	mov	r2, #160
	mov	r7, #0
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	bl	memset
	add	r0, r4, #136
	add	r1, r4, #160
	str	r0, [r4, #84]
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r0, #4
	str	r6, [r4, #136]
	str	r5, [r4, #140]
	str	r7, [r4, #144]
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	str	r7, [r4, #148]
	str	r7, [r4, #152]
	str	r7, [r4, #156]
	ldr	r6, .LCPI0_7
	b	.LBB0_8
.LCPI0_7:
	.long	__libc
.LBB0_8:                                @ %if.end
	str	r0, [r4]
	mvn	r0, #0
	str	r0, [r4, #60]
	str	r1, [r4, #44]
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	mov	r1, #1024
	str	r1, [r4, #48]
	mov	r1, #255
	strb	r1, [r4, #75]
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	ldr	r1, .LCPI0_4
	add	r5, r6, #28
	str	r1, [r4, #36]
	ldr	r1, .LCPI0_5
	b	.LBB0_11
.LCPI0_4:
	.long	ms_write
.LCPI0_5:
	.long	ms_seek
.LBB0_11:                               @ %if.end
	str	r1, [r4, #40]
	ldr	r1, .LCPI0_6
	str	r1, [r4, #12]
	ldr	r1, [r6, #8]
	b	.LBB0_12
.LCPI0_6:
	.long	ms_close
.LBB0_12:                               @ %if.end
	cmp	r1, #0
	streq	r0, [r4, #76]
	mov	r0, r5
	bl	__lock
	b	.LBB0_13
.LBB0_13:                               @ %if.end
	ldr	r0, [r6, #24]
	cmp	r0, #0
	str	r0, [r4, #56]
	strne	r4, [r0, #52]
	b	.LBB0_14
.LBB0_14:                               @ %if.end
	mov	r0, r5
	str	r4, [r6, #24]
	bl	__unlock
	mov	r0, r4
	b	.LBB0_15
.LBB0_15:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	open_memstream, .Ltmp0-open_memstream
	.cantunwind
	.fnend

	.align	2
	.type	ms_write,%function
ms_write:                               @ @ms_write
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r4, r2
	mov	r5, r1
	ldr	r2, [r0, #20]
	ldr	r1, [r0, #28]
	ldr	r7, [r0, #84]
	cmp	r2, r1
	beq	.LBB1_5
	b	.LBB1_3
.LBB1_3:                                @ %if.then
	sub	r6, r2, r1
	str	r1, [r0, #20]
	mov	r2, r6
	bl	ms_write
	b	.LBB1_4
.LBB1_4:                                @ %if.then
	mov	r1, r0
	mov	r0, #0
	cmp	r1, r6
	blo	.LBB1_13
	b	.LBB1_5
.LBB1_5:                                @ %if.end5
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #20]
	add	r2, r0, r4
	cmp	r2, r1
	blo	.LBB1_10
	b	.LBB1_6
.LBB1_6:                                @ %if.then7
	add	r0, r2, #1
	orr	r0, r0, r1, lsl #1
	orr	r6, r0, #1
	ldr	r0, [r7, #12]
	b	.LBB1_7
.LBB1_7:                                @ %if.then7
	mov	r1, r6
	bl	realloc
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB1_13
	b	.LBB1_8
.LBB1_8:                                @ %if.end17
	str	r1, [r7, #12]
	ldr	r0, [r7]
	str	r1, [r0]
	ldr	r1, [r7, #20]
	b	.LBB1_9
.LBB1_9:                                @ %if.end17
	ldr	r0, [r7, #12]
	sub	r2, r6, r1
	add	r0, r0, r1
	mov	r1, #0
	bl	memset
	str	r6, [r7, #20]
	ldr	r0, [r7, #8]
	b	.LBB1_10
.LBB1_10:                               @ %if.end24
	ldr	r1, [r7, #12]
	mov	r2, r4
	add	r0, r1, r0
	mov	r1, r5
	b	.LBB1_11
.LBB1_11:                               @ %if.end24
	bl	memcpy
	ldr	r0, [r7, #8]
	add	r0, r0, r4
	str	r0, [r7, #8]
	b	.LBB1_12
.LBB1_12:                               @ %if.end24
	ldr	r1, [r7, #16]
	cmp	r0, r1
	strhs	r0, [r7, #16]
	ldr	r1, [r7, #4]
	str	r0, [r1]
	mov	r0, r4
	b	.LBB1_13
.LBB1_13:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	ms_write, .Ltmp1-ms_write
	.cantunwind
	.fnend

	.align	2
	.type	ms_seek,%function
ms_seek:                                @ @ms_seek
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	ldr	r12, [sp, #32]
	cmp	r12, #3
	bhs	.LBB2_10
	b	.LBB2_2
.LBB2_2:                                @ %if.end
	ldr	lr, [r0, #84]
	mov	r0, #0
	mov	r4, #0
	str	r0, [sp, #4]
	b	.LBB2_3
.LBB2_3:                                @ %if.end
	ldr	r1, [lr, #8]
	str	r1, [sp, #8]
	ldr	r1, [lr, #16]
	str	r1, [sp, #12]
	b	.LBB2_4
.LBB2_4:                                @ %if.end
	add	r1, sp, #4
	ldr	r12, [r1, r12, lsl #2]
	rsb	r1, r12, #0
	cmp	r1, r2
	b	.LBB2_5
.LBB2_5:                                @ %if.end
	asr	r5, r1, #31
	movhi	r4, #1
	cmp	r5, r3
	mov	r5, #0
	b	.LBB2_6
.LBB2_6:                                @ %if.end
	movgt	r5, #1
	cmp	r3, r1, asr #31
	moveq	r5, r4
	cmp	r5, #0
	bne	.LBB2_10
	b	.LBB2_7
.LBB2_7:                                @ %lor.lhs.false
	mvn	r1, #-2147483648
	mov	r4, #0
	sub	r1, r1, r12
	cmp	r1, r2
	b	.LBB2_8
.LBB2_8:                                @ %lor.lhs.false
	asr	r5, r1, #31
	movlo	r4, #1
	cmp	r5, r3
	movlt	r0, #1
	b	.LBB2_9
.LBB2_9:                                @ %lor.lhs.false
	cmp	r3, r1, asr #31
	moveq	r0, r4
	cmp	r0, #0
	beq	.LBB2_12
	b	.LBB2_10
.LBB2_10:                               @ %fail
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	mvn	r1, #0
	b	.LBB2_11
.LBB2_11:                               @ %return
	add	sp, sp, #16
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.LBB2_12:                               @ %if.end9
	add	r0, r12, r2
	mov	r1, #0
	str	r0, [lr, #8]
	b	.LBB2_11
.Ltmp2:
	.size	ms_seek, .Ltmp2-ms_seek
	.cantunwind
	.fnend

	.align	2
	.type	ms_close,%function
ms_close:                               @ @ms_close
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp3:
	.size	ms_close, .Ltmp3-ms_close
	.cantunwind
	.fnend

	.hidden	__libc
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
