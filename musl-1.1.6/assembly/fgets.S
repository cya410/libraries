.section fgets_text
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
	.file	"src/stdio/fgets.bc"
	.globl	fgets
	.align	2
	.type	fgets,%function
.section bb0_0
fgets:                                  @ @fgets
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r10, r2
	mov	r4, r1
	mov	r9, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, #0
	ldr	r1, [r10, #76]
	cmp	r1, #0
	blt	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.true
	mov	r0, r10
	bl	__lockfile
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.end
	subs	r11, r4, #1
	bgt	.LBB0_11
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then
	ldrsb	r2, [r10, #74]
	cmp	r0, #0
	add	r1, r2, #255
	orr	r1, r1, r2
	strb	r1, [r10, #74]
	beq	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then5
	mov	r0, r10
	bl	__unlockfile
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end
	mov	r6, #0
	cmp	r11, #0
	bne	.LBB0_31
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end8
	mov	r0, #0
	mov	r6, r9
	strb	r0, [r9]
	b	.LBB0_31
.section bb0_11
.LBB0_11:                               @ %while.cond
	mov	r7, r9
	str	r0, [sp]                @ 4-byte Spill
	cmp	r11, #0
	beq	.LBB0_28
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %while.body.preheader
	mov	r7, r9
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldmib	r10, {r0, r1}
	sub	r2, r1, r0
	mov	r1, #10
	bl	memchr
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %while.body
                                        @   in Loop: Header=BB0_13 Depth=1
	mov	r4, r0
	ldr	r1, [r10, #4]
	mov	r6, r11
	cmp	r4, #0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %while.body
                                        @   in Loop: Header=BB0_13 Depth=1
	ldreq	r0, [r10, #8]
	addne	r0, r4, #1
	sub	r8, r0, r1
	mov	r0, r7
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %while.body
                                        @   in Loop: Header=BB0_13 Depth=1
	cmp	r8, r11
	movlo	r6, r8
	mov	r2, r6
	bl	memcpy
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %while.body
                                        @   in Loop: Header=BB0_13 Depth=1
	ldr	r0, [r10, #4]
	add	r5, r7, r6
	cmp	r4, #0
	add	r1, r0, r6
	str	r1, [r10, #4]
	bne	.LBB0_25
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %cond.end25
                                        @   in Loop: Header=BB0_13 Depth=1
	cmp	r8, r11
	bhs	.LBB0_25
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end41
                                        @   in Loop: Header=BB0_13 Depth=1
	ldr	r2, [r10, #8]
	cmp	r1, r2
	bhs	.LBB0_21
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %cond.end51.thread
                                        @   in Loop: Header=BB0_13 Depth=1
	add	r1, r6, #1
	add	r2, r0, r1
	str	r2, [r10, #4]
	ldrb	r0, [r0, r6]
	b	.LBB0_23
.section bb0_21
.LBB0_21:                               @ %cond.end51
                                        @   in Loop: Header=BB0_13 Depth=1
	mov	r0, r10
	bl	__uflow
	cmp	r0, #0
	blt	.LBB0_26
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %cond.end51.if.end62_crit_edge
                                        @   in Loop: Header=BB0_13 Depth=1
	add	r1, r6, #1
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end62
                                        @   in Loop: Header=BB0_13 Depth=1
	sub	r2, r11, r6
	add	r7, r7, r1
	strb	r0, [r5]
	subs	r11, r2, #1
	beq	.LBB0_28
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end62
                                        @   in Loop: Header=BB0_13 Depth=1
	and	r0, r0, #255
	cmp	r0, #10
	bne	.LBB0_13
	b	.LBB0_28
.section bb0_25
.LBB0_25:
	mov	r7, r5
	b	.LBB0_28
.section bb0_26
.LBB0_26:                               @ %if.then55
	mov	r6, #0
	cmp	r5, r9
	beq	.LBB0_29
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %lor.lhs.false58
	ldrb	r0, [r10]
	mov	r7, r5
	tst	r0, #16
	beq	.LBB0_29
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %while.end
	cmp	r9, #0
	mov	r6, #0
	movne	r0, #0
	movne	r6, r9
	strbne	r0, [r7]
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end73
	ldr	r0, [sp]                @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_31
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.then75
	mov	r0, r10
	bl	__unlockfile
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %return
	mov	r0, r6
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fgets, .Ltmp0-fgets
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile
	.protected	__uflow

	.weak	fgets_unlocked
fgets_unlocked = fgets
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
