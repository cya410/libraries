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
	.file	"src/multibyte/wcsrtombs.bc"
	.globl	wcsrtombs
	.align	2
	.type	wcsrtombs,%function
wcsrtombs:                              @ @wcsrtombs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r0
	mov	r9, r2
	mov	r10, r1
	cmp	r6, #0
	beq	.LBB0_12
	b	.LBB0_4
.LBB0_4:                                @ %while.cond.preheader
	cmp	r9, #4
	blo	.LBB0_17
	b	.LBB0_5
.LBB0_5:                                @ %while.body.lr.ph
	ldr	r5, [r10]
	mov	r4, r9
	b	.LBB0_6
.LBB0_6:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r5]
	sub	r0, r1, #1
	cmp	r0, #127
	blo	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                @ %if.then10
                                        @   in Loop: Header=BB0_6 Depth=1
	cmp	r1, #0
	beq	.LBB0_28
	b	.LBB0_8
.LBB0_8:                                @ %if.end14
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, r6
	mov	r2, #0
	bl	wcrtomb
	mov	r1, r0
	mvn	r0, #0
	cmn	r1, #1
	beq	.LBB0_30
	b	.LBB0_9
.LBB0_9:                                @ %if.end19
                                        @   in Loop: Header=BB0_6 Depth=1
	sub	r4, r4, r1
	add	r6, r6, r1
	b	.LBB0_11
.LBB0_10:                               @ %if.else21
                                        @   in Loop: Header=BB0_6 Depth=1
	ldr	r5, [r10]
	strb	r1, [r6], #1
	sub	r4, r4, #1
	b	.LBB0_11
.LBB0_11:                               @ %if.end23
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r5, r5, #4
	cmp	r4, #3
	str	r5, [r10]
	bhi	.LBB0_6
	b	.LBB0_18
.LBB0_12:                               @ %if.then
	ldr	r2, [r10]
	mov	r0, #0
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.LBB0_30
	b	.LBB0_13
.LBB0_13:                               @ %for.body.preheader
	add	r5, r2, #4
	mov	r6, #0
	add	r4, sp, #4
	b	.LBB0_14
.LBB0_14:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, #1
	cmp	r1, #128
	blo	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.then2
                                        @   in Loop: Header=BB0_14 Depth=1
	mov	r0, r4
	mov	r2, #0
	bl	wcrtomb
	mov	r2, r0
	mvn	r0, #0
	cmn	r2, #1
	beq	.LBB0_30
	b	.LBB0_16
.LBB0_16:                               @ %for.inc
                                        @   in Loop: Header=BB0_14 Depth=1
	ldr	r1, [r5], #4
	add	r6, r2, r6
	mov	r0, r6
	cmp	r1, #0
	bne	.LBB0_14
	b	.LBB0_30
.LBB0_17:
	mov	r4, r9
	b	.LBB0_18
.LBB0_18:                               @ %while.cond25.preheader
	cmp	r4, #0
	beq	.LBB0_27
	b	.LBB0_19
.LBB0_19:                               @ %while.body27.lr.ph
	ldr	r5, [r10]
	add	r8, sp, #4
	b	.LBB0_20
.LBB0_20:                               @ %while.body27
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r5]
	sub	r0, r1, #1
	cmp	r0, #127
	blo	.LBB0_25
	b	.LBB0_21
.LBB0_21:                               @ %if.then31
                                        @   in Loop: Header=BB0_20 Depth=1
	cmp	r1, #0
	beq	.LBB0_28
	b	.LBB0_22
.LBB0_22:                               @ %if.end35
                                        @   in Loop: Header=BB0_20 Depth=1
	mov	r0, r8
	mov	r2, #0
	bl	wcrtomb
	mov	r7, r0
	mvn	r0, #0
	cmn	r7, #1
	beq	.LBB0_30
	b	.LBB0_23
.LBB0_23:                               @ %if.end41
                                        @   in Loop: Header=BB0_20 Depth=1
	cmp	r4, r7
	blo	.LBB0_29
	b	.LBB0_24
.LBB0_24:                               @ %if.end46
                                        @   in Loop: Header=BB0_20 Depth=1
	ldr	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	bl	wcrtomb
	sub	r4, r4, r7
	add	r6, r6, r7
	b	.LBB0_26
.LBB0_25:                               @ %if.else50
                                        @   in Loop: Header=BB0_20 Depth=1
	ldr	r5, [r10]
	strb	r1, [r6], #1
	sub	r4, r4, #1
	b	.LBB0_26
.LBB0_26:                               @ %if.end54
                                        @   in Loop: Header=BB0_20 Depth=1
	add	r5, r5, #4
	cmp	r4, #0
	str	r5, [r10]
	bne	.LBB0_20
	b	.LBB0_27
.LBB0_27:
	mov	r0, r9
	b	.LBB0_30
.LBB0_28:                               @ %if.then12
	mov	r0, #0
	strb	r0, [r6]
	str	r0, [r10]
	b	.LBB0_29
.LBB0_29:                               @ %if.then44
	sub	r0, r9, r4
	b	.LBB0_30
.LBB0_30:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcsrtombs, .Ltmp0-wcsrtombs
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
