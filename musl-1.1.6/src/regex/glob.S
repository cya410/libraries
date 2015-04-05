.section glob_text
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
	.file	"src/regex/glob.bc"
	.globl	glob
	.align	2
	.type	glob,%function
.section bb0_0
glob:                                   @ @glob
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
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r10, r1
	mov	r7, r0
	mov	r4, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r9, r3
	add	r8, sp, #16
	mov	r6, r2
	tst	r10, #8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	str	r4, [sp, #20]
	str	r4, [sp, #16]
	ldrb	r0, [r7]
	str	r8, [sp, #12]
	ldrne	r4, [r9, #8]
	cmp	r0, #47
	bne	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:
	ldr	r11, .LCPI0_5
	mov	r0, #47
	mov	r5, r7
	b	.LBB0_8
.LCPI0_5:
	.long	.L.str
.section bb0_7
.LBB0_7:                                @ %for.cond.for.cond_crit_edge
                                        @   in Loop: Header=BB0_8 Depth=1
	ldrb	r0, [r5, #1]
	add	r1, r5, #1
	mov	r5, r1
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r0, #255
	cmp	r0, #47
	beq	.LBB0_7
	b	.LBB0_10
.section bb0_9
.LBB0_9:
	ldr	r11, .LCPI0_4
	mov	r5, r7
	b	.LBB0_10
.LCPI0_4:
	.long	.L.str1
.section bb0_10
.LBB0_10:                               @ %if.end
	mov	r0, r5
	bl	strlen
	cmp	r0, #4096
	bhi	.LBB0_46
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end8
	ldr	r3, .LCPI0_6
	cmp	r6, #0
	movne	r3, r6
	ands	r0, r10, #32
	b	.LBB0_12
.LCPI0_6:
	.long	ignore_err
.section bb0_12
.LBB0_12:                               @ %if.end8
	mov	r6, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	moveq	r0, #0
	streq	r0, [r9]
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end8
	stmibeq	r9, {r0, r4}
	ldrb	r0, [r5]
	cmp	r0, #0
	mov	r0, #0
	beq	.LBB0_18
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end20
	add	r0, sp, #12
	mov	r1, r5
	mov	r2, r10
	str	r0, [sp]
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end20
	mov	r0, r11
	bl	match_in_dir
	cmp	r0, #1
	bne	.LBB0_18
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then23
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB0_46
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0]
	bl	free
	mov	r0, r4
	cmp	r4, #0
	bne	.LBB0_17
	b	.LBB0_46
.section bb0_18
.LBB0_18:                               @ %if.end24
	mov	r11, r0
	ldr	r0, [sp, #16]
	str	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB0_21
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.inc28
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r0]
	add	r6, r6, #1
	str	r0, [sp, #12]
	cmp	r0, #0
	bne	.LBB0_19
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.end30
	cmp	r6, #0
	bne	.LBB0_24
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then32
	mov	r6, #3
	tst	r10, #16
	beq	.LBB0_47
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then35
	mov	r0, r7
	str	r8, [sp, #12]
	bl	strlen
	mov	r2, r0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then35
	add	r0, sp, #12
	mov	r1, r7
	mov	r3, #0
	bl	append
	mov	r6, #1
	cmp	r0, #0
	bne	.LBB0_47
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end44
	ldr	r0, [sp, #8]            @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.then47
	ldr	r5, [r9]
	ldr	r0, [r9, #4]
	add	r1, r6, r4
	mov	r2, #4
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.then47
	add	r1, r1, r5
	add	r1, r2, r1, lsl #2
	bl	realloc
	cmp	r0, #0
	beq	.LBB0_42
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end55
	add	r1, r5, r4
	str	r0, [r9, #4]
	b	.LBB0_34
.section bb0_28
.LBB0_28:                               @ %if.else59
	add	r0, r6, r4
	mov	r1, #4
	add	r0, r1, r0, lsl #2
	bl	malloc
	str	r0, [r9, #4]
	cmp	r0, #0
	beq	.LBB0_44
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %for.cond69.preheader
	mov	r1, #0
	cmp	r4, #0
	beq	.LBB0_34
	b	.LBB0_30
.section bb0_30
.LBB0_30:
	mov	r2, #0
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %for.body72
                                        @ =>This Inner Loop Header: Depth=1
	str	r2, [r0, r1, lsl #2]
	add	r1, r1, #1
	cmp	r4, r1
	bne	.LBB0_31
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end77
	ldr	r2, [sp, #16]
	cmp	r6, #0
	str	r2, [sp, #12]
	beq	.LBB0_48
	b	.LBB0_33
.section bb0_33
.LBB0_33:
	mov	r1, r4
	b	.LBB0_35
.section bb0_34
.LBB0_34:                               @ %if.end77.thread
	ldr	r2, [sp, #16]
	str	r2, [sp, #12]
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %for.body82.lr.ph
	ldr	r0, [r9, #4]
	mov	r7, #0
	add	r3, r0, r1, lsl #2
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %for.body82
                                        @ =>This Inner Loop Header: Depth=1
	add	r5, r2, #4
	str	r5, [r3, r7, lsl #2]
	add	r7, r7, #1
	ldr	r2, [r2]
	cmp	r6, r7
	str	r2, [sp, #12]
	bne	.LBB0_36
	b	.LBB0_37
.section bb0_37
.LBB0_37:
	mov	r4, r1
	mov	r1, r6
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %for.end89
	add	r1, r1, r4
	mov	r2, #0
	tst	r10, #4
	str	r2, [r0, r1, lsl #2]
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %for.end89
	ldr	r1, [r9]
	add	r1, r1, r6
	str	r1, [r9]
	bne	.LBB0_41
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.then97
	ldr	r3, .LCPI0_7
	add	r0, r0, r4, lsl #2
	mov	r1, r6
	mov	r2, #4
	bl	qsort
	b	.LBB0_41
.LCPI0_7:
	.long	sort
.section bb0_41
.LBB0_41:                               @ %return
	mov	r6, r11
	b	.LBB0_47
.section bb0_42
.LBB0_42:                               @ %if.then54
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB0_46
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %for.body.i155
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0]
	bl	free
	mov	r0, r4
	cmp	r4, #0
	bne	.LBB0_43
	b	.LBB0_46
.section bb0_44
.LBB0_44:                               @ %if.then67
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB0_46
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %for.body.i162
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0]
	bl	free
	mov	r0, r4
	cmp	r4, #0
	bne	.LBB0_45
	b	.LBB0_46
.section bb0_46
.LBB0_46:
	mov	r6, #1
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %return
	mov	r0, r6
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_48
.LBB0_48:                               @ %if.end77.for.end89_crit_edge
	ldr	r0, [r9, #4]
	mov	r1, #0
	b	.LBB0_38
.Ltmp0:
	.size	glob, .Ltmp0-glob
	.cantunwind
	.fnend

	.align	2
	.type	ignore_err,%function
.section bb1_0
ignore_err:                             @ @ignore_err
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp1:
	.size	ignore_err, .Ltmp1-ignore_err
	.cantunwind
	.fnend

	.align	2
	.type	match_in_dir,%function
.section bb2_0
match_in_dir:                           @ @match_in_dir
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	.setfp	r11, sp, #28
	add	r11, sp, #28
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	.pad	#436
	sub	sp, sp, #436
	mov	r5, r1
	mov	r4, r0
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	str	r3, [r11, #-440]        @ 4-byte Spill
	mov	r10, r2
	mov	r0, r5
	bl	strlen
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %entry
	add	r0, r0, #8
	bic	r0, r0, #7
	sub	r6, sp, r0
	mov	sp, r6
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %entry
	mov	r0, r4
	mov	r8, r4
	bl	strlen
	mov	r9, r0
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %entry
	mov	r0, r5
	mov	r1, #47
	bl	strchr
	mov	r7, r0
	mov	r4, #0
	cmp	r7, #0
	beq	.LBB2_11
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %if.then
	mov	r0, r6
	mov	r1, r5
	bl	strcpy
	sub	r4, r7, #1
	sub	r0, r7, r5
	mov	r1, #0
	strb	r1, [r6, r0]
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r4, #1]!
	cmp	r0, #47
	beq	.LBB2_9
	b	.LBB2_10
.section bb2_10
.LBB2_10:
	mov	r7, r6
	mov	r6, r8
	b	.LBB2_12
.section bb2_11
.LBB2_11:
	mov	r6, r8
	mov	r7, r5
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.end
	ldrb	r2, [r7]
	and	r8, r10, #64
	str	r10, [r11, #-436]       @ 4-byte Spill
	mov	r10, r9
	cmp	r2, #0
	beq	.LBB2_25
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %for.body.lr.ph.i
	add	r0, r7, #1
	mov	r1, #0
	mov	r9, #0
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r2, r2, #255
	cmp	r2, #62
	bgt	.LBB2_16
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %for.body.i
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r2, #42
	bne	.LBB2_24
	b	.LBB2_26
.section bb2_16
.LBB2_16:                               @ %for.body.i
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r2, #91
	bgt	.LBB2_19
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %for.body.i
                                        @   in Loop: Header=BB2_14 Depth=1
	bne	.LBB2_23
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %sw.bb3.i
                                        @   in Loop: Header=BB2_14 Depth=1
	mov	r1, #1
	b	.LBB2_24
.section bb2_19
.LBB2_19:                               @ %for.body.i
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r2, #93
	bne	.LBB2_21
	b	.LBB2_20
.section bb2_20
.LBB2_20:                               @ %sw.bb4.i
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r1, #0
	mov	r1, #0
	beq	.LBB2_24
	b	.LBB2_27
.section bb2_21
.LBB2_21:                               @ %for.body.i
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r2, #92
	bne	.LBB2_24
	b	.LBB2_22
.section bb2_22
.LBB2_22:                               @ %sw.bb.i
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r8, #0
	bne	.LBB2_24
	b	.LBB2_26
.section bb2_23
.LBB2_23:                               @ %for.body.i
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r2, #63
	beq	.LBB2_26
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %for.inc.i
                                        @   in Loop: Header=BB2_14 Depth=1
	ldrb	r2, [r0], #1
	cmp	r2, #0
	bne	.LBB2_14
	b	.LBB2_25
.section bb2_25
.LBB2_25:
	mov	r9, #1
	b	.LBB2_27
.section bb2_26
.LBB2_26:
	mov	r9, #0
	b	.LBB2_27
.section bb2_27
.LBB2_27:                               @ %is_literal.exit
	ldrb	r1, [r6]
	cmp	r1, #47
	bne	.LBB2_29
	b	.LBB2_28
.section bb2_28
.LBB2_28:                               @ %land.lhs.true
	ldrb	r0, [r6, #1]
	cmp	r0, #0
	moveq	r10, r0
	b	.LBB2_29
.section bb2_29
.LBB2_29:                               @ %if.end18
	ldr	r0, .LCPI2_0
	cmp	r1, #0
	movne	r0, r6
	bl	opendir
	b	.LBB2_30
.LCPI2_0:
	.long	.L.str2
.section bb2_30
.LBB2_30:                               @ %if.end18
	mov	r5, r0
	str	r5, [r11, #-428]        @ 4-byte Spill
	bl	__errno_location
	cmp	r5, #0
	beq	.LBB2_70
	b	.LBB2_31
.section bb2_31
.LBB2_31:                               @ %if.end54
	ldrb	r0, [r7]
	cmp	r0, #0
	beq	.LBB2_75
	b	.LBB2_32
.section bb2_32
.LBB2_32:                               @ %while.cond.preheader
	ldr	r0, [r11, #-428]        @ 4-byte Reload
	sub	r1, r11, #312
	sub	r2, r11, #316
	mov	r5, r7
	b	.LBB2_33
.section bb2_33
.LBB2_33:                               @ %while.cond.preheader
	str	r6, [r11, #-444]        @ 4-byte Spill
	bl	readdir_r
	mov	r7, r0
	ldr	r0, [r11, #-316]
	b	.LBB2_34
.section bb2_34
.LBB2_34:                               @ %while.cond.preheader
	mov	r1, #0
	cmp	r7, #0
	mov	r6, r7
	moveq	r1, #1
	movne	r6, #1
	cmp	r0, #0
	beq	.LBB2_67
	b	.LBB2_35
.section bb2_35
.LBB2_35:                               @ %while.cond.preheader
	cmp	r1, #1
	bne	.LBB2_67
	b	.LBB2_36
.section bb2_36
.LBB2_36:                               @ %while.body.lr.ph
	ldr	r2, [r11, #-436]        @ 4-byte Reload
	mov	r1, #4
	str	r10, [r11, #-456]       @ 4-byte Spill
	and	r1, r1, r2, lsr #5
	b	.LBB2_37
.section bb2_37
.LBB2_37:                               @ %while.body.lr.ph
	orr	r1, r1, r8, lsr #5
	eor	r1, r1, #4
	str	r1, [r11, #-448]        @ 4-byte Spill
	add	r1, r10, #1
	b	.LBB2_38
.section bb2_38
.LBB2_38:                               @ %while.body.lr.ph
	str	r1, [r11, #-452]        @ 4-byte Spill
	and	r1, r2, #2
	str	r1, [r11, #-460]        @ 4-byte Spill
	add	r1, r10, #2
	str	r1, [r11, #-432]        @ 4-byte Spill
	b	.LBB2_39
.section bb2_39
.LBB2_39:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrh	r0, [r0, #16]
	ldr	r1, [r11, #-432]        @ 4-byte Reload
	mov	r8, sp
	add	r0, r1, r0
	b	.LBB2_40
.section bb2_40
.LBB2_40:                               @ %while.body
                                        @   in Loop: Header=BB2_39 Depth=1
	add	r0, r0, #7
	bic	r0, r0, #7
	sub	r10, sp, r0
	mov	sp, r10
	b	.LBB2_41
.section bb2_41
.LBB2_41:                               @ %while.body
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r0, [r11, #-316]
	mov	r7, r5
	cmp	r9, #0
	add	r1, r0, #19
	mov	r0, r7
	beq	.LBB2_43
	b	.LBB2_42
.section bb2_42
.LBB2_42:                               @ %land.lhs.true77
                                        @   in Loop: Header=BB2_39 Depth=1
	bl	strcmp
	b	.LBB2_44
.section bb2_43
.LBB2_43:                               @ %land.lhs.true71
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r2, [r11, #-448]        @ 4-byte Reload
	bl	fnmatch
	b	.LBB2_44
.section bb2_44
.LBB2_44:                               @ %land.lhs.true77
                                        @   in Loop: Header=BB2_39 Depth=1
	cmp	r0, #0
	bne	.LBB2_63
	b	.LBB2_45
.section bb2_45
.LBB2_45:                               @ %if.end83
                                        @   in Loop: Header=BB2_39 Depth=1
	cmp	r4, #0
	beq	.LBB2_48
	b	.LBB2_46
.section bb2_46
.LBB2_46:                               @ %land.lhs.true85
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r0, [r11, #-316]
	ldrb	r0, [r0, #18]
	cmp	r0, #0
	beq	.LBB2_48
	b	.LBB2_47
.section bb2_47
.LBB2_47:                               @ %land.lhs.true88
                                        @   in Loop: Header=BB2_39 Depth=1
	mov	r1, #61440
	and	r0, r1, r0, lsl #12
	cmp	r0, #16384
	cmpne	r0, #40960
	bne	.LBB2_63
	b	.LBB2_48
.section bb2_48
.LBB2_48:                               @ %if.end102
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r1, [r11, #-444]        @ 4-byte Reload
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.LBB2_51
	b	.LBB2_49
.section bb2_49
.LBB2_49:                               @ %if.then104
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r5, [r11, #-456]        @ 4-byte Reload
	mov	r0, r10
	mov	r2, r5
	bl	memcpy
	b	.LBB2_50
.section bb2_50
.LBB2_50:                               @ %if.then104
                                        @   in Loop: Header=BB2_39 Depth=1
	mov	r0, #47
	ldr	r1, [r11, #-316]
	strb	r0, [r10, r5]
	ldr	r0, [r11, #-452]        @ 4-byte Reload
	add	r1, r1, #19
	add	r0, r10, r0
	bl	strcpy
	b	.LBB2_52
.section bb2_51
.LBB2_51:                               @ %if.else
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r0, [r11, #-316]
	add	r10, r0, #19
	b	.LBB2_52
.section bb2_52
.LBB2_52:                               @ %if.end114
                                        @   in Loop: Header=BB2_39 Depth=1
	cmp	r4, #0
	beq	.LBB2_56
	b	.LBB2_53
.section bb2_53
.LBB2_53:                               @ %if.then116
                                        @   in Loop: Header=BB2_39 Depth=1
	sub	sp, sp, #8
	ldr	r0, [r11, #8]
	ldr	r2, [r11, #-436]        @ 4-byte Reload
	ldr	r3, [r11, #-440]        @ 4-byte Reload
	b	.LBB2_54
.section bb2_54
.LBB2_54:                               @ %if.then116
                                        @   in Loop: Header=BB2_39 Depth=1
	mov	r1, r4
	str	r0, [sp]
	mov	r0, r10
	bl	match_in_dir
	b	.LBB2_55
.section bb2_55
.LBB2_55:                               @ %if.then116
                                        @   in Loop: Header=BB2_39 Depth=1
	add	sp, sp, #8
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB2_63
	b	.LBB2_81
.section bb2_56
.LBB2_56:                               @ %if.else122
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r0, [r11, #-460]        @ 4-byte Reload
	mov	r3, #0
	cmp	r0, #0
	beq	.LBB2_61
	b	.LBB2_57
.section bb2_57
.LBB2_57:                               @ %if.then125
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r0, [r11, #-316]
	ldrb	r0, [r0, #18]
	cmp	r0, #0
	beq	.LBB2_59
	b	.LBB2_58
.section bb2_58
.LBB2_58:                               @ %land.lhs.true129
                                        @   in Loop: Header=BB2_39 Depth=1
	mov	r1, #61440
	and	r0, r1, r0, lsl #12
	cmp	r0, #40960
	bne	.LBB2_60
	b	.LBB2_59
.section bb2_59
.LBB2_59:                               @ %if.else143
                                        @   in Loop: Header=BB2_39 Depth=1
	mov	r0, r10
	sub	r1, r11, #424
	bl	stat
	ldr	r0, [r11, #-408]
	and	r0, r0, #61440
	b	.LBB2_60
.section bb2_60
.LBB2_60:                               @ %if.end151
                                        @   in Loop: Header=BB2_39 Depth=1
	cmp	r0, #16384
	mov	r3, #0
	moveq	r3, #1
	b	.LBB2_61
.section bb2_61
.LBB2_61:                               @ %if.end151
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r0, [r11, #-316]
	ldr	r1, [r11, #-452]        @ 4-byte Reload
	ldrh	r0, [r0, #16]
	add	r2, r1, r0
	b	.LBB2_62
.section bb2_62
.LBB2_62:                               @ %if.end151
                                        @   in Loop: Header=BB2_39 Depth=1
	ldr	r0, [r11, #8]
	mov	r1, r10
	bl	append
	cmp	r0, #0
	bne	.LBB2_82
	b	.LBB2_63
.section bb2_63
.LBB2_63:                               @ %cleanup162.thread
                                        @   in Loop: Header=BB2_39 Depth=1
	mov	r5, r7
	mov	sp, r8
	ldr	r0, [r11, #-428]        @ 4-byte Reload
	sub	r1, r11, #312
	b	.LBB2_64
.section bb2_64
.LBB2_64:                               @ %cleanup162.thread
                                        @   in Loop: Header=BB2_39 Depth=1
	sub	r2, r11, #316
	bl	readdir_r
	mov	r7, r0
	ldr	r0, [r11, #-316]
	b	.LBB2_65
.section bb2_65
.LBB2_65:                               @ %cleanup162.thread
                                        @   in Loop: Header=BB2_39 Depth=1
	mov	r1, #0
	cmp	r7, #0
	mov	r6, r7
	movne	r6, #1
	b	.LBB2_66
.section bb2_66
.LBB2_66:                               @ %cleanup162.thread
                                        @   in Loop: Header=BB2_39 Depth=1
	moveq	r1, #1
	cmp	r0, #0
	cmpne	r1, #0
	bne	.LBB2_39
	b	.LBB2_67
.section bb2_67
.LBB2_67:                               @ %while.end
	ldr	r0, [r11, #-428]        @ 4-byte Reload
	bl	closedir
	ldr	r4, [r11, #-436]        @ 4-byte Reload
	cmp	r6, #1
	bne	.LBB2_78
	b	.LBB2_68
.section bb2_68
.LBB2_68:                               @ %land.lhs.true167
	ldr	r0, [r11, #-444]        @ 4-byte Reload
	ldr	r2, [r11, #-440]        @ 4-byte Reload
	mov	r1, r7
	mov	lr, pc
	mov	pc, r2
	b	.LBB2_69
.section bb2_69
.LBB2_69:                               @ %land.lhs.true167
	and	r1, r4, #1
	mov	r6, #2
	orrs	r0, r0, r1
	moveq	r6, #0
	b	.LBB2_84
.section bb2_70
.LBB2_70:                               @ %if.then25
	ldr	r4, [r0]
	mov	r1, r6
	mov	r6, #0
	cmp	r4, #20
	beq	.LBB2_84
	b	.LBB2_71
.section bb2_71
.LBB2_71:                               @ %if.then25
	cmp	r4, #13
	mov	r6, r1
	ldrbeq	r0, [r7]
	cmpeq	r0, #0
	bne	.LBB2_79
	b	.LBB2_72
.section bb2_72
.LBB2_72:                               @ %if.then34
	sub	r1, r11, #424
	mov	r0, r6
	bl	stat
	cmp	r0, #0
	bne	.LBB2_79
	b	.LBB2_73
.section bb2_73
.LBB2_73:                               @ %land.lhs.true37
	ldr	r0, [r11, #-408]
	and	r0, r0, #61440
	cmp	r0, #16384
	bne	.LBB2_79
	b	.LBB2_74
.section bb2_74
.LBB2_74:                               @ %cleanup
	ldr	r0, [r11, #8]
	mov	r1, r6
	mov	r2, r10
	mov	r3, r10
	bl	append
	mov	r6, r0
	b	.LBB2_77
.section bb2_75
.LBB2_75:                               @ %if.then56
	ldr	r0, [r11, #8]
	mov	r1, r6
	mov	r2, r10
	mov	r3, r10
	b	.LBB2_76
.section bb2_76
.LBB2_76:                               @ %if.then56
	bl	append
	mov	r6, r0
	ldr	r0, [r11, #-428]        @ 4-byte Reload
	bl	closedir
	b	.LBB2_77
.section bb2_77
.LBB2_77:                               @ %cleanup175
	cmp	r6, #0
	movne	r6, #1
	b	.LBB2_84
.section bb2_78
.LBB2_78:                               @ %if.end174
	mov	r6, #0
	b	.LBB2_84
.section bb2_79
.LBB2_79:                               @ %if.end47
	ldr	r2, [r11, #-440]        @ 4-byte Reload
	mov	r0, r6
	mov	r1, r4
	mov	lr, pc
	mov	pc, r2
	b	.LBB2_80
.section bb2_80
.LBB2_80:                               @ %if.end47
	ldr	r1, [r11, #-436]        @ 4-byte Reload
	and	r1, r1, #1
	orrs	r6, r0, r1
	movne	r6, #2
	b	.LBB2_84
.section bb2_81
.LBB2_81:                               @ %if.then119
	ldr	r0, [r11, #-428]        @ 4-byte Reload
	bl	closedir
	b	.LBB2_83
.section bb2_82
.LBB2_82:                               @ %if.then158
	ldr	r0, [r11, #-428]        @ 4-byte Reload
	bl	closedir
	mov	r6, #1
	b	.LBB2_83
.section bb2_83
.LBB2_83:                               @ %cleanup162
	mov	sp, r8
	b	.LBB2_84
.section bb2_84
.LBB2_84:                               @ %cleanup175
	mov	r0, r6
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	match_in_dir, .Ltmp2-match_in_dir
	.cantunwind
	.fnend

	.align	2
	.type	append,%function
.section bb3_0
append:                                 @ @append
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	mov	r4, r0
	add	r0, r2, #9
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %entry
	mov	r8, r3
	mov	r9, r1
	bl	malloc
	mov	r5, r0
	mvn	r6, #0
	cmp	r5, #0
	beq	.LBB3_8
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %if.end
	ldr	r0, [r4]
	mov	r6, #0
	mov	r7, r5
	mov	r1, r9
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %if.end
	str	r5, [r0]
	str	r6, [r7], #4
	mov	r0, r7
	bl	strcpy
	cmp	r8, #0
	beq	.LBB3_7
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %if.then6
	ldr	r1, .LCPI3_0
	mov	r0, r7
	bl	strcat
	b	.LBB3_7
.LCPI3_0:
	.long	.L.str
.section bb3_7
.LBB3_7:                                @ %if.end10
	str	r5, [r4]
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	append, .Ltmp3-append
	.cantunwind
	.fnend

	.align	2
	.type	sort,%function
.section bb4_0
sort:                                   @ @sort
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	ldr	r1, [r1]
	ldr	r0, [r0]
	b	strcmp
.Ltmp4:
	.size	sort, .Ltmp4-sort
	.cantunwind
	.fnend

	.globl	globfree
	.align	2
	.type	globfree,%function
.section bb5_0
globfree:                               @ @globfree
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4]
	add	r5, r4, #4
	cmp	r0, #0
	beq	.LBB5_5
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %for.body.lr.ph
	mov	r6, #0
	b	.LBB5_3
.section bb5_3
.LBB5_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldmib	r4, {r0, r1}
	add	r1, r6, r1
	ldr	r0, [r0, r1, lsl #2]
	sub	r0, r0, #4
	b	.LBB5_4
.section bb5_4
.LBB5_4:                                @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
	bl	free
	ldr	r0, [r4]
	add	r6, r6, #1
	cmp	r6, r0
	blo	.LBB5_3
	b	.LBB5_5
.section bb5_5
.LBB5_5:                                @ %for.end
	ldr	r0, [r5]
	bl	free
	mov	r0, #0
	str	r0, [r4]
	str	r0, [r4, #4]
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp5:
	.size	globfree, .Ltmp5-globfree
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.zero	1
	.size	.L.str1, 1

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"."
	.size	.L.str2, 2


	.weak	glob64
glob64 = glob
	.weak	globfree64
globfree64 = globfree
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
