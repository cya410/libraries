.section fwrite_text
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
	.file	"src/stdio/fwrite.bc"
	.globl	__fwritex
	.align	2
	.type	__fwritex,%function
.section bb0_0
__fwritex:                              @ @__fwritex
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
	mov	r4, r2
	mov	r5, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r9, r0
	ldr	r1, [r4, #16]
	cmp	r1, #0
	bne	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.lhs.true
	mov	r0, r4
	bl	__towrite
	mov	r7, #0
	cmp	r0, #0
	bne	.LBB0_16
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true.if.end_crit_edge
	ldr	r1, [r4, #16]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, [r4, #20]
	sub	r1, r1, r0
	cmp	r1, r5
	bhs	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then3
	ldr	r3, [r4, #36]
	mov	r0, r4
	mov	r1, r9
	mov	r2, r5
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	bx	r3
.section bb0_8
.LBB0_8:                                @ %if.end5
	ldrsb	r1, [r4, #75]
	mov	r7, #0
	cmp	r1, #0
	blt	.LBB0_15
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.cond.preheader
	add	r8, r9, r5
	mov	r7, #0
	mov	r6, #0
	sub	r1, r8, #1
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r5, r6
	beq	.LBB0_15
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %land.rhs
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r2, [r1, -r6]
	add	r6, r6, #1
	cmp	r2, #10
	bne	.LBB0_10
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then14
	ldr	r3, [r4, #36]
	sub	r0, r5, r6
	mov	r1, r9
	add	r7, r0, #1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then14
	mov	r0, r4
	mov	r2, r7
	mov	lr, pc
	mov	pc, r3
	cmp	r0, r7
	blo	.LBB0_16
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end20
	add	r0, r8, #1
	sub	r5, r6, #1
	sub	r9, r0, r6
	ldr	r0, [r4, #20]
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end23
	mov	r1, r9
	mov	r2, r5
	bl	memcpy
	ldr	r0, [r4, #20]
	add	r7, r7, r5
	add	r0, r0, r5
	str	r0, [r4, #20]
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %return
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__fwritex, .Ltmp0-__fwritex
	.cantunwind
	.fnend

	.globl	fwrite
	.align	2
	.type	fwrite,%function
.section bb1_0
fwrite:                                 @ @fwrite
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r7, r3
	mov	r5, r0
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r4, r2
	mov	r8, r1
	ldr	r0, [r7, #76]
	mul	r6, r4, r8
	cmp	r0, #0
	blt	.LBB1_7
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %cond.end
	mov	r0, r7
	bl	__lockfile
	mov	r9, r0
	mov	r0, r5
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %cond.end
	mov	r1, r6
	mov	r2, r7
	bl	__fwritex
	mov	r5, r0
	cmp	r9, #0
	beq	.LBB1_8
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.then
	mov	r0, r7
	bl	__unlockfile
	b	.LBB1_8
.section bb1_7
.LBB1_7:                                @ %cond.end.thread
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	__fwritex
	mov	r5, r0
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.end
	cmp	r5, r6
	beq	.LBB1_10
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %cond.false4
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_uidiv
	mov	r4, r0
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %cond.end5
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	fwrite, .Ltmp1-fwrite
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	fwrite_unlocked
fwrite_unlocked = fwrite
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
