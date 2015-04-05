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
	.file	"src/stdio/open_wmemstream.bc"
	.globl	open_wmemstream
	.align	2
	.type	open_wmemstream,%function
open_wmemstream:                        @ @open_wmemstream
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
	mov	r0, #168
	mov	r5, r1
	bl	malloc
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB0_14
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	mov	r0, r4
	mov	r1, #0
	mov	r2, #168
	mov	r7, #0
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	bl	memset
	add	r0, r4, #136
	add	r1, r4, #168
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
	mov	r1, #255
	str	r7, [r4, #48]
	strb	r1, [r4, #75]
	ldr	r1, .LCPI0_4
	b	.LBB0_10
.LCPI0_4:
	.long	wms_write
.LBB0_10:                               @ %if.end
	add	r5, r6, #28
	str	r1, [r4, #36]
	ldr	r1, .LCPI0_5
	str	r1, [r4, #40]
	b	.LBB0_11
.LCPI0_5:
	.long	wms_seek
.LBB0_11:                               @ %if.end
	ldr	r1, .LCPI0_6
	str	r1, [r4, #12]
	ldr	r1, [r6, #8]
	cmp	r1, #0
	b	.LBB0_12
.LCPI0_6:
	.long	wms_close
.LBB0_12:                               @ %if.end
	streq	r0, [r4, #76]
	mov	r0, r5
	bl	__lock
	ldr	r0, [r6, #24]
	b	.LBB0_13
.LBB0_13:                               @ %if.end
	cmp	r0, #0
	str	r0, [r4, #56]
	strne	r4, [r0, #52]
	mov	r0, r5
	str	r4, [r6, #24]
	bl	__unlock
	mov	r0, r4
	b	.LBB0_14
.LBB0_14:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	open_wmemstream, .Ltmp0-open_wmemstream
	.cantunwind
	.fnend

	.align	2
	.type	wms_write,%function
wms_write:                              @ @wms_write
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	str	r1, [sp, #4]
	mov	r4, r2
	b	.LBB1_3
.LBB1_3:                                @ %entry
	ldr	r6, [r0, #84]
	ldr	r0, [r6, #8]
	ldr	r7, [r6, #20]
	add	r1, r0, r4
	cmp	r1, r7
	blo	.LBB1_9
	b	.LBB1_4
.LBB1_4:                                @ %if.then
	add	r0, r1, #1
	mov	r5, #0
	orr	r0, r0, r7, lsl #1
	orr	r7, r0, #1
	cmp	r5, r7, lsr #29
	bne	.LBB1_13
	b	.LBB1_5
.LBB1_5:                                @ %if.end
	ldr	r0, [r6, #12]
	lsl	r1, r7, #2
	bl	realloc
	cmp	r0, #0
	beq	.LBB1_13
	b	.LBB1_6
.LBB1_6:                                @ %if.end11
	str	r0, [r6, #12]
	ldr	r1, [r6]
	str	r0, [r1]
	ldr	r1, [r6, #20]
	b	.LBB1_7
.LBB1_7:                                @ %if.end11
	ldr	r0, [r6, #12]
	sub	r2, r7, r1
	add	r0, r0, r1, lsl #2
	mov	r1, #0
	b	.LBB1_8
.LBB1_8:                                @ %if.end11
	lsl	r2, r2, #2
	bl	memset
	str	r7, [r6, #20]
	ldr	r0, [r6, #8]
	b	.LBB1_9
.LBB1_9:                                @ %if.end19
	ldr	r1, [r6, #12]
	add	r2, r6, #24
	sub	r3, r7, r0
	str	r2, [sp]
	b	.LBB1_10
.LBB1_10:                               @ %if.end19
	mov	r2, r4
	add	r0, r1, r0, lsl #2
	add	r1, sp, #4
	bl	mbsnrtowcs
	mov	r5, #0
	cmn	r0, #1
	beq	.LBB1_13
	b	.LBB1_11
.LBB1_11:                               @ %if.end29
	ldr	r1, [r6, #8]
	mov	r5, r4
	add	r0, r1, r0
	str	r0, [r6, #8]
	b	.LBB1_12
.LBB1_12:                               @ %if.end29
	ldr	r1, [r6, #16]
	cmp	r0, r1
	strhs	r0, [r6, #16]
	ldr	r1, [r6, #4]
	str	r0, [r1]
	b	.LBB1_13
.LBB1_13:                               @ %return
	mov	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	wms_write, .Ltmp1-wms_write
	.cantunwind
	.fnend

	.align	2
	.type	wms_seek,%function
wms_seek:                               @ @wms_seek
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	ldr	r1, [sp, #40]
	mov	r4, r2
	cmp	r1, #3
	bhs	.LBB2_11
	b	.LBB2_3
.LBB2_3:                                @ %if.end
	ldr	r6, [r0, #84]
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r2, [r6, #8]
	b	.LBB2_4
.LBB2_4:                                @ %if.end
	str	r2, [sp, #8]
	ldr	r2, [r6, #16]
	str	r2, [sp, #12]
	add	r2, sp, #4
	b	.LBB2_5
.LBB2_5:                                @ %if.end
	ldr	r7, [r2, r1, lsl #2]
	mov	r2, #0
	rsb	r1, r7, #0
	cmp	r1, r4
	b	.LBB2_6
.LBB2_6:                                @ %if.end
	asr	r5, r1, #31
	movhi	r2, #1
	cmp	r5, r3
	mov	r5, #0
	b	.LBB2_7
.LBB2_7:                                @ %if.end
	movgt	r5, #1
	cmp	r3, r1, asr #31
	moveq	r5, r2
	cmp	r5, #0
	bne	.LBB2_11
	b	.LBB2_8
.LBB2_8:                                @ %lor.lhs.false
	mvn	r1, #-536870912
	mov	r2, #0
	sub	r1, r1, r7
	cmp	r1, r4
	b	.LBB2_9
.LBB2_9:                                @ %lor.lhs.false
	asr	r5, r1, #31
	movlo	r2, #1
	cmp	r5, r3
	movlt	r0, #1
	b	.LBB2_10
.LBB2_10:                               @ %lor.lhs.false
	cmp	r3, r1, asr #31
	moveq	r0, r2
	cmp	r0, #0
	beq	.LBB2_13
	b	.LBB2_11
.LBB2_11:                               @ %fail
	bl	__errno_location
	mov	r1, #22
	mvn	r5, #0
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB2_12
.LBB2_12:                               @ %return
	mov	r1, r5
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.LBB2_13:                               @ %if.end9
	add	r0, r6, #24
	mov	r1, #0
	mov	r2, #8
	mov	r5, #0
	bl	memset
	add	r0, r7, r4
	str	r0, [r6, #8]
	b	.LBB2_12
.Ltmp2:
	.size	wms_seek, .Ltmp2-wms_seek
	.cantunwind
	.fnend

	.align	2
	.type	wms_close,%function
wms_close:                              @ @wms_close
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp3:
	.size	wms_close, .Ltmp3-wms_close
	.cantunwind
	.fnend

	.hidden	__libc
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
