.section fnmatch_text
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
	.file	"src/regex/fnmatch.bc"
	.globl	fnmatch
	.align	2
	.type	fnmatch,%function
.section bb0_0
fnmatch:                                @ @fnmatch
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
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r9, r2
	mov	r6, r1
	mov	r11, r0
	and	r10, r9, #8
	tst	r9, #1
	beq	.LBB0_20
	b	.LBB0_4
.section bb0_4
.LBB0_4:
	add	r8, sp, #8
	b	.LBB0_6
.section bb0_5
.LBB0_5:                                @ %if.end31
                                        @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [sp, #8]
	add	r6, r5, #1
	add	r11, r7, r0
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_8 Depth 2
                                        @     Child Loop BB0_11 Depth 2
	mov	r5, r6
	b	.LBB0_8
.section bb0_7
.LBB0_7:                                @ %for.inc
                                        @   in Loop: Header=BB0_8 Depth=2
	add	r5, r5, #1
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.cond1
                                        @   Parent Loop BB0_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r5]
	cmp	r0, #0
	cmpne	r0, #47
	bne	.LBB0_7
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @   in Loop: Header=BB0_6 Depth=1
	mov	r7, r11
	b	.LBB0_11
.section bb0_10
.LBB0_10:                               @ %for.inc13
                                        @   in Loop: Header=BB0_11 Depth=2
	ldr	r0, [sp, #8]
	add	r7, r7, r0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.cond5
                                        @   Parent Loop BB0_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r7
	mvn	r1, #0
	mov	r2, r8
	mov	r3, r9
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.cond5
                                        @   in Loop: Header=BB0_11 Depth=2
	bl	pat_next
	mov	r4, r0
	cmp	r4, #0
	cmpne	r4, #47
	bne	.LBB0_10
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.end14
                                        @   in Loop: Header=BB0_6 Depth=1
	ldrb	r2, [r5]
	cmp	r10, #0
	mov	r0, #0
	mov	r1, #0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.end14
                                        @   in Loop: Header=BB0_6 Depth=1
	moveq	r0, #1
	cmp	r2, #0
	moveq	r1, #1
	cmp	r4, r2
	beq	.LBB0_16
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.end14
                                        @   in Loop: Header=BB0_6 Depth=1
	orrs	r0, r0, r1
	mov	r0, #1
	bne	.LBB0_28
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end
                                        @   in Loop: Header=BB0_6 Depth=1
	sub	r1, r7, r11
	sub	r3, r5, r6
	mov	r0, r11
	mov	r2, r6
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end
                                        @   in Loop: Header=BB0_6 Depth=1
	str	r9, [sp]
	bl	fnmatch_internal
	mov	r1, r0
	cmp	r1, #0
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end
                                        @   in Loop: Header=BB0_6 Depth=1
                                        @ kill: R0<def> R1<kill>
	movne	r0, #1
	cmp	r4, #0
	beq	.LBB0_28
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end
                                        @   in Loop: Header=BB0_6 Depth=1
	cmp	r1, #0
	beq	.LBB0_5
	b	.LBB0_28
.section bb0_20
.LBB0_20:                               @ %if.else
	cmp	r10, #0
	beq	.LBB0_27
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.cond37.preheader
	mov	r4, r6
	b	.LBB0_23
.section bb0_22
.LBB0_22:                               @ %for.inc52
                                        @   in Loop: Header=BB0_23 Depth=1
	add	r4, r4, #1
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %for.cond37
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_27
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %for.cond37
                                        @   in Loop: Header=BB0_23 Depth=1
	cmp	r0, #47
	bne	.LBB0_22
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end44
                                        @   in Loop: Header=BB0_23 Depth=1
	sub	r3, r4, r6
	mov	r0, r11
	mvn	r1, #0
	mov	r2, r6
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end44
                                        @   in Loop: Header=BB0_23 Depth=1
	str	r9, [sp]
	bl	fnmatch_internal
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	bne	.LBB0_22
	b	.LBB0_28
.section bb0_27
.LBB0_27:                               @ %if.end56
	mov	r0, r11
	mvn	r1, #0
	mov	r2, r6
	mvn	r3, #0
	str	r9, [sp]
	bl	fnmatch_internal
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %return
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fnmatch, .Ltmp0-fnmatch
	.cantunwind
	.fnend

	.align	2
	.type	pat_next,%function
.section bb1_0
pat_next:                               @ @pat_next
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r4, r2
	mov	r2, r1
	mov	r1, r0
	cmp	r2, #0
	ldrbne	r0, [r1]
	cmpne	r0, #0
	bne	.LBB1_5
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %if.then
	mov	r0, #0
	str	r0, [r4]
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.section bb1_5
.LBB1_5:                                @ %if.end
	mov	r0, #1
	mov	r6, #0
	str	r0, [r4]
	ldrsb	r0, [r1]
	and	r5, r0, #255
	cmp	r0, #90
	bgt	.LBB1_9
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.end
	mvn	r0, #4
	cmp	r5, #42
	beq	.LBB1_4
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %if.end
	mov	r0, r5
	cmp	r5, #63
	bne	.LBB1_41
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.then140
	mvn	r0, #3
	b	.LBB1_4
.section bb1_9
.LBB1_9:                                @ %if.end
	cmp	r5, #91
	bne	.LBB1_36
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.then14
	mov	r0, #1
	cmp	r2, #2
	blo	.LBB1_13
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.then17
	ldrb	r3, [r1, #1]
	cmp	r3, #33
	cmpne	r3, #94
	bne	.LBB1_13
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then27
	mov	r0, #2
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %if.end29
	cmp	r0, r2
	bhs	.LBB1_15
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.then32
	ldrb	r3, [r1, r0]
	cmp	r3, #93
	addeq	r0, r0, #1
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %for.cond.preheader
	cmp	r0, r2
	bhs	.LBB1_34
	b	.LBB1_16
.section bb1_16
.LBB1_16:
	mov	lr, #1
	mov	r12, #1
	orr	lr, lr, #36864
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %land.lhs.true43
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_27 Depth 2
	ldrb	r6, [r1, r0]
	cmp	r6, #0
	cmpne	r6, #93
	beq	.LBB1_34
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %for.body
                                        @   in Loop: Header=BB1_17 Depth=1
	add	r5, r0, #1
	cmp	r5, r2
	bhs	.LBB1_33
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %land.lhs.true53
                                        @   in Loop: Header=BB1_17 Depth=1
	cmp	r6, #91
	bne	.LBB1_33
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %land.lhs.true53
                                        @   in Loop: Header=BB1_17 Depth=1
	ldrb	r5, [r1, r5]
	cmp	r5, #0
	beq	.LBB1_33
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %land.lhs.true63
                                        @   in Loop: Header=BB1_17 Depth=1
	sub	r6, r5, #46
	and	r6, r6, #255
	cmp	r6, #15
	bhi	.LBB1_33
	b	.LBB1_22
.section bb1_22
.LBB1_22:                               @ %land.lhs.true63
                                        @   in Loop: Header=BB1_17 Depth=1
	tst	lr, r12, lsl r6
	beq	.LBB1_33
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %if.then81
                                        @   in Loop: Header=BB1_17 Depth=1
	add	r6, r0, #2
	cmp	r6, r2
	bhs	.LBB1_25
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %land.lhs.true88
                                        @   in Loop: Header=BB1_17 Depth=1
	ldrb	r3, [r1, r6]
	cmp	r3, #0
	addne	r6, r0, #3
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %while.cond.preheader
                                        @   in Loop: Header=BB1_17 Depth=1
	mov	r0, r6
	b	.LBB1_27
.section bb1_26
.LBB1_26:                               @ %while.body
                                        @   in Loop: Header=BB1_27 Depth=2
	add	r0, r0, #1
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %while.cond.preheader
                                        @   Parent Loop BB1_17 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r0, r2
	bhs	.LBB1_31
	b	.LBB1_28
.section bb1_28
.LBB1_28:                               @ %land.lhs.true97
                                        @   in Loop: Header=BB1_27 Depth=2
	ldrb	r6, [r1, r0]
	cmp	r6, #0
	beq	.LBB1_31
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %land.rhs101
                                        @   in Loop: Header=BB1_27 Depth=2
	cmp	r6, #93
	bne	.LBB1_26
	b	.LBB1_30
.section bb1_30
.LBB1_30:                               @ %land.rhs101
                                        @   in Loop: Header=BB1_27 Depth=2
	add	r3, r1, r0
	ldrb	r3, [r3, #-1]
	cmp	r3, r5
	bne	.LBB1_26
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %while.end
                                        @   in Loop: Header=BB1_17 Depth=1
	cmp	r0, r2
	beq	.LBB1_35
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %lor.lhs.false114
                                        @   in Loop: Header=BB1_17 Depth=1
	ldrb	r3, [r1, r0]
	cmp	r3, #0
	beq	.LBB1_34
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %for.inc
                                        @   in Loop: Header=BB1_17 Depth=1
	add	r0, r0, #1
	cmp	r0, r2
	blo	.LBB1_17
	b	.LBB1_34
.section bb1_34
.LBB1_34:                               @ %for.end
	cmp	r0, r2
	ldrbne	r1, [r1, r0]
	cmpne	r1, #0
	bne	.LBB1_44
	b	.LBB1_35
.section bb1_35
.LBB1_35:                               @ %if.then126
	mov	r0, #1
	str	r0, [r4]
	mov	r0, #91
	b	.LBB1_4
.section bb1_36
.LBB1_36:                               @ %if.end
	cmp	r5, #92
	bne	.LBB1_40
	b	.LBB1_37
.section bb1_37
.LBB1_37:                               @ %land.lhs.true
	ldrb	r6, [r1, #1]!
	mov	r0, #92
	tst	r3, #2
	bne	.LBB1_4
	b	.LBB1_38
.section bb1_38
.LBB1_38:                               @ %land.lhs.true
	cmp	r6, #0
	beq	.LBB1_4
	b	.LBB1_39
.section bb1_39
.LBB1_39:                               @ %if.then8
	mov	r0, #2
	mov	r6, #1
	str	r0, [r4]
	ldrb	r0, [r1]
	b	.LBB1_41
.section bb1_40
.LBB1_40:
	mov	r0, r5
	b	.LBB1_41
.section bb1_41
.LBB1_41:                               @ %escaped
	lsl	r3, r0, #24
	asr	r3, r3, #24
	cmp	r3, #0
	bge	.LBB1_4
	b	.LBB1_42
.section bb1_42
.LBB1_42:                               @ %if.then146
	add	r0, sp, #4
	bl	mbtowc
	cmp	r0, #0
	blt	.LBB1_45
	b	.LBB1_43
.section bb1_43
.LBB1_43:                               @ %if.end151
	add	r0, r0, r6
	str	r0, [r4]
	ldr	r0, [sp, #4]
	b	.LBB1_4
.section bb1_44
.LBB1_44:                               @ %if.end127
	add	r0, r0, #1
	str	r0, [r4]
	mvn	r0, #2
	b	.LBB1_4
.section bb1_45
.LBB1_45:                               @ %if.then150
	mov	r0, #0
	str	r0, [r4]
	mvn	r0, #1
	b	.LBB1_4
.Ltmp1:
	.size	pat_next, .Ltmp1-pat_next
	.cantunwind
	.fnend

	.align	2
	.type	fnmatch_internal,%function
.section bb2_0
fnmatch_internal:                       @ @fnmatch_internal
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
	.pad	#44
	sub	sp, sp, #44
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	str	r3, [sp, #32]           @ 4-byte Spill
	ldr	r3, [sp, #80]
	mov	r4, r1
	mov	r6, r0
	tst	r3, #4
	beq	.LBB2_6
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.then
	ldrb	r0, [r2]
	cmp	r0, #46
	bne	.LBB2_6
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %land.lhs.true
	ldrb	r0, [r6]
	mov	r1, #1
	str	r1, [sp, #24]           @ 4-byte Spill
	cmp	r0, #46
	bne	.LBB2_21
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %for.cond.preheader
	and	r0, r3, #16
	add	r7, sp, #40
	add	r5, sp, #36
	str	r2, [sp, #28]           @ 4-byte Spill
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB2_9
.section bb2_7
.LBB2_7:                                @ %if.end36
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	add	r8, r8, r10
	str	r8, [sp, #28]           @ 4-byte Spill
	sub	r0, r0, r10
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %if.end36
                                        @   in Loop: Header=BB2_9 Depth=1
	str	r0, [sp, #32]           @ 4-byte Spill
	ldr	r0, [sp, #40]
	sub	r4, r4, r0
	add	r6, r6, r0
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	mov	r8, r3
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %for.cond
                                        @   in Loop: Header=BB2_9 Depth=1
	bl	pat_next
	mov	r11, r0
	mov	r0, #1
	str	r0, [sp, #24]           @ 4-byte Spill
	cmn	r11, #2
	beq	.LBB2_21
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %for.cond
                                        @   in Loop: Header=BB2_9 Depth=1
	cmn	r11, #5
	beq	.LBB2_22
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %sw.default
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	mov	r2, r5
	bl	str_next
	mov	r9, r0
	cmp	r9, #0
	ble	.LBB2_20
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.end14
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r10, [sp, #36]
	mov	r2, r9
	cmp	r0, #0
	beq	.LBB2_15
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %cond.true
                                        @   in Loop: Header=BB2_9 Depth=1
	mov	r0, r9
	bl	casefold
	mov	r2, r0
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %cond.end
                                        @   in Loop: Header=BB2_9 Depth=1
	mov	r3, r8
	ldr	r8, [sp, #28]           @ 4-byte Reload
	cmn	r11, #4
	beq	.LBB2_7
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %cond.end
                                        @   in Loop: Header=BB2_9 Depth=1
	cmn	r11, #3
	bne	.LBB2_19
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %if.then21
                                        @   in Loop: Header=BB2_9 Depth=1
	mov	r1, r9
	mov	r0, r6
	mov	r9, r6
	mov	r6, r3
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %if.then21
                                        @   in Loop: Header=BB2_9 Depth=1
	bl	match_bracket
	mov	r3, r6
	mov	r6, r9
	mov	r1, #1
	cmp	r0, #0
	str	r1, [sp, #24]           @ 4-byte Spill
	bne	.LBB2_7
	b	.LBB2_21
.section bb2_19
.LBB2_19:                               @ %land.lhs.true28
                                        @   in Loop: Header=BB2_9 Depth=1
	cmp	r9, r11
	cmpne	r2, r11
	beq	.LBB2_7
	b	.LBB2_21
.section bb2_20
.LBB2_20:                               @ %if.then11
	cmp	r11, #0
	movne	r11, #1
	str	r11, [sp, #24]          @ 4-byte Spill
	b	.LBB2_21
.section bb2_21
.LBB2_21:                               @ %return
	ldr	r0, [sp, #24]           @ 4-byte Reload
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb2_22
.LBB2_22:                               @ %sw.bb7
	add	r10, r6, #1
	sub	r1, r4, #1
	mov	r0, r10
	str	r10, [sp, #12]          @ 4-byte Spill
	b	.LBB2_23
.section bb2_23
.LBB2_23:                               @ %sw.bb7
	bl	strnlen
	add	r0, r0, #1
	mov	r9, #0
	mov	r3, r8
	add	r11, r6, r0
	cmp	r0, #2
	blt	.LBB2_30
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %for.body.lr.ph
	ldr	r0, [sp, #12]           @ 4-byte Reload
	mov	r9, #0
	add	r8, sp, #40
	mov	r10, r0
	mov	r6, r0
	b	.LBB2_25
.section bb2_25
.LBB2_25:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	sub	r1, r11, r6
	mov	r0, r6
	mov	r2, r8
	mov	r4, r3
	bl	pat_next
	cmn	r0, #2
	beq	.LBB2_21
	b	.LBB2_26
.section bb2_26
.LBB2_26:                               @ %for.body
                                        @   in Loop: Header=BB2_25 Depth=1
	cmn	r0, #5
	bne	.LBB2_28
	b	.LBB2_27
.section bb2_27
.LBB2_27:                               @ %sw.bb46
                                        @   in Loop: Header=BB2_25 Depth=1
	add	r10, r6, #1
	mov	r9, #0
	b	.LBB2_29
.section bb2_28
.LBB2_28:                               @ %sw.default48
                                        @   in Loop: Header=BB2_25 Depth=1
	add	r9, r9, #1
	b	.LBB2_29
.section bb2_29
.LBB2_29:                               @ %for.inc
                                        @   in Loop: Header=BB2_25 Depth=1
	ldr	r0, [sp, #40]
	mov	r3, r4
	add	r6, r6, r0
	cmp	r6, r11
	blo	.LBB2_25
	b	.LBB2_30
.section bb2_30
.LBB2_30:                               @ %for.end51
	ldr	r5, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	str	r11, [sp, #16]          @ 4-byte Spill
	mov	r4, r3
	b	.LBB2_31
.section bb2_31
.LBB2_31:                               @ %for.end51
	mov	r0, r5
	bl	strnlen
	cmp	r0, r9
	blo	.LBB2_21
	b	.LBB2_32
.section bb2_32
.LBB2_32:                               @ %for.cond58.preheader
	cmp	r9, #0
	mov	r1, r9
	add	r6, r5, r0
	mov	r3, r4
	movne	r1, #1
	cmp	r0, #1
	blt	.LBB2_42
	b	.LBB2_33
.section bb2_33
.LBB2_33:                               @ %for.cond58.preheader
	mov	r7, r6
	cmp	r9, #0
	beq	.LBB2_43
	b	.LBB2_34
.section bb2_34
.LBB2_34:
	mov	r2, r6
	b	.LBB2_35
.section bb2_35
.LBB2_35:                               @ %for.body62
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_38 Depth 2
	mov	r7, r2
	ldrsb	r0, [r7, #-1]!
	cmp	r0, #0
	bge	.LBB2_40
	b	.LBB2_36
.section bb2_36
.LBB2_36:                               @ %while.cond.preheader
                                        @   in Loop: Header=BB2_35 Depth=1
	sub	r7, r2, #1
	b	.LBB2_38
.section bb2_37
.LBB2_37:                               @ %while.cond.while.cond_crit_edge
                                        @   in Loop: Header=BB2_38 Depth=2
	ldrb	r0, [r7, #-1]!
	b	.LBB2_38
.section bb2_38
.LBB2_38:                               @ %while.cond
                                        @   Parent Loop BB2_35 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r7, r5
	bls	.LBB2_40
	b	.LBB2_39
.section bb2_39
.LBB2_39:                               @ %while.cond
                                        @   in Loop: Header=BB2_38 Depth=2
	and	r0, r0, #192
	cmp	r0, #128
	beq	.LBB2_37
	b	.LBB2_40
.section bb2_40
.LBB2_40:                               @ %for.inc79
                                        @   in Loop: Header=BB2_35 Depth=1
	subs	r9, r9, #1
	mov	r1, r9
	movne	r1, #1
	cmp	r7, r5
	bls	.LBB2_43
	b	.LBB2_41
.section bb2_41
.LBB2_41:                               @ %for.inc79
                                        @   in Loop: Header=BB2_35 Depth=1
	mov	r2, r7
	cmp	r9, #0
	bne	.LBB2_35
	b	.LBB2_43
.section bb2_42
.LBB2_42:
	mov	r7, r6
	b	.LBB2_43
.section bb2_43
.LBB2_43:                               @ %for.end81
	cmp	r1, #0
	bne	.LBB2_21
	b	.LBB2_44
.section bb2_44
.LBB2_44:                               @ %for.cond85.preheader
	ldr	r0, [sp, #16]           @ 4-byte Reload
	add	r2, sp, #40
	sub	r1, r0, r10
	mov	r0, r10
	b	.LBB2_45
.section bb2_45
.LBB2_45:                               @ %for.cond85.preheader
	bl	pat_next
	ldr	r4, [sp, #40]
	mov	r11, r0
	sub	r1, r6, r7
	b	.LBB2_46
.section bb2_46
.LBB2_46:                               @ %for.cond85.preheader
	add	r2, sp, #36
	mov	r0, r7
	bl	str_next
	mov	r9, r0
	cmp	r9, #1
	blt	.LBB2_58
	b	.LBB2_47
.section bb2_47
.LBB2_47:                               @ %if.end102.lr.ph
	mov	r5, r6
	add	r4, r10, r4
	mov	r6, r7
	mov	r8, r10
	str	r10, [sp, #8]           @ 4-byte Spill
	b	.LBB2_48
.section bb2_48
.LBB2_48:                               @ %if.end102
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r10, [sp, #36]
	str	r8, [sp, #32]           @ 4-byte Spill
	mov	r8, r4
	mov	r2, r9
	cmp	r0, #0
	beq	.LBB2_50
	b	.LBB2_49
.section bb2_49
.LBB2_49:                               @ %cond.true106
                                        @   in Loop: Header=BB2_48 Depth=1
	mov	r0, r9
	bl	casefold
	mov	r2, r0
	b	.LBB2_50
.section bb2_50
.LBB2_50:                               @ %cond.end109
                                        @   in Loop: Header=BB2_48 Depth=1
	ldr	r3, [sp, #80]
	cmn	r11, #4
	beq	.LBB2_54
	b	.LBB2_51
.section bb2_51
.LBB2_51:                               @ %cond.end109
                                        @   in Loop: Header=BB2_48 Depth=1
	cmn	r11, #3
	bne	.LBB2_53
	b	.LBB2_52
.section bb2_52
.LBB2_52:                               @ %if.then113
                                        @   in Loop: Header=BB2_48 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	mov	r1, r9
	mov	r4, r3
	bl	match_bracket
	mov	r3, r4
	cmp	r0, #0
	bne	.LBB2_54
	b	.LBB2_21
.section bb2_53
.LBB2_53:                               @ %land.lhs.true122
                                        @   in Loop: Header=BB2_48 Depth=1
	cmp	r9, r11
	cmpne	r2, r11
	bne	.LBB2_21
	b	.LBB2_54
.section bb2_54
.LBB2_54:                               @ %for.cond85.backedge
                                        @   in Loop: Header=BB2_48 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	add	r2, sp, #40
	add	r6, r6, r10
	sub	r1, r0, r8
	b	.LBB2_55
.section bb2_55
.LBB2_55:                               @ %for.cond85.backedge
                                        @   in Loop: Header=BB2_48 Depth=1
	mov	r0, r8
	bl	pat_next
	mov	r11, r0
	ldr	r0, [sp, #40]
	b	.LBB2_56
.section bb2_56
.LBB2_56:                               @ %for.cond85.backedge
                                        @   in Loop: Header=BB2_48 Depth=1
	sub	r1, r5, r6
	add	r2, sp, #36
	add	r4, r8, r0
	mov	r0, r6
	b	.LBB2_57
.section bb2_57
.LBB2_57:                               @ %for.cond85.backedge
                                        @   in Loop: Header=BB2_48 Depth=1
	bl	str_next
	mov	r9, r0
	cmp	r9, #1
	bge	.LBB2_48
	b	.LBB2_59
.section bb2_58
.LBB2_58:
	str	r10, [sp, #8]           @ 4-byte Spill
	b	.LBB2_59
.section bb2_59
.LBB2_59:                               @ %if.then97
	cmp	r11, #0
	bne	.LBB2_21
	b	.LBB2_60
.section bb2_60
.LBB2_60:                               @ %while.cond132.preheader
	ldr	r1, [sp, #8]            @ 4-byte Reload
	ldr	r4, [sp, #12]           @ 4-byte Reload
	cmp	r4, r1
	bhs	.LBB2_83
	b	.LBB2_61
.section bb2_61
.LBB2_61:
	add	r10, sp, #36
	b	.LBB2_62
.section bb2_62
.LBB2_62:                               @ %for.cond136.preheader.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_64 Depth 2
                                        @       Child Loop BB2_67 Depth 3
                                        @       Child Loop BB2_80 Depth 3
	ldr	r8, [sp, #28]           @ 4-byte Reload
	sub	r5, r1, r4
	str	r4, [sp, #32]           @ 4-byte Spill
	str	r5, [sp, #16]           @ 4-byte Spill
	b	.LBB2_64
.section bb2_63
.LBB2_63:                               @ %if.then193
                                        @   in Loop: Header=BB2_64 Depth=2
	ldr	r0, [sp, #36]
	ldr	r4, [sp, #32]           @ 4-byte Reload
	ldr	r5, [sp, #16]           @ 4-byte Reload
	add	r8, r8, r0
	b	.LBB2_64
.section bb2_64
.LBB2_64:                               @ %for.cond136.preheader
                                        @   Parent Loop BB2_62 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB2_67 Depth 3
                                        @       Child Loop BB2_80 Depth 3
	ldr	r3, [sp, #80]
	mov	r0, r4
	mov	r1, r5
	add	r2, sp, #40
	b	.LBB2_65
.section bb2_65
.LBB2_65:                               @ %for.cond136.preheader
                                        @   in Loop: Header=BB2_64 Depth=2
	bl	pat_next
	mov	r11, r0
	ldr	r0, [sp, #40]
	cmn	r11, #5
	add	r0, r4, r0
	beq	.LBB2_81
	b	.LBB2_66
.section bb2_66
.LBB2_66:                               @   in Loop: Header=BB2_64 Depth=2
	mov	r5, r8
	b	.LBB2_67
.section bb2_67
.LBB2_67:                               @ %if.end145
                                        @   Parent Loop BB2_62 Depth=1
                                        @     Parent Loop BB2_64 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r9, r4
	mov	r4, r0
	sub	r1, r7, r5
	mov	r0, r5
	b	.LBB2_68
.section bb2_68
.LBB2_68:                               @ %if.end145
                                        @   in Loop: Header=BB2_67 Depth=3
	mov	r2, r10
	bl	str_next
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB2_21
	b	.LBB2_69
.section bb2_69
.LBB2_69:                               @ %if.end152
                                        @   in Loop: Header=BB2_67 Depth=3
	ldr	r0, [sp, #20]           @ 4-byte Reload
	mov	r2, r6
	cmp	r0, #0
	beq	.LBB2_71
	b	.LBB2_70
.section bb2_70
.LBB2_70:                               @ %cond.true155
                                        @   in Loop: Header=BB2_67 Depth=3
	mov	r0, r6
	bl	casefold
	mov	r2, r0
	b	.LBB2_71
.section bb2_71
.LBB2_71:                               @ %cond.end158
                                        @   in Loop: Header=BB2_67 Depth=3
	cmn	r11, #4
	beq	.LBB2_75
	b	.LBB2_72
.section bb2_72
.LBB2_72:                               @ %cond.end158
                                        @   in Loop: Header=BB2_67 Depth=3
	cmn	r11, #3
	bne	.LBB2_74
	b	.LBB2_73
.section bb2_73
.LBB2_73:                               @ %if.then162
                                        @   in Loop: Header=BB2_67 Depth=3
	mov	r0, r9
	mov	r1, r6
	bl	match_bracket
	cmp	r0, #0
	bne	.LBB2_75
	b	.LBB2_78
.section bb2_74
.LBB2_74:                               @ %land.lhs.true172
                                        @   in Loop: Header=BB2_67 Depth=3
	cmp	r6, r11
	cmpne	r2, r11
	bne	.LBB2_78
	b	.LBB2_75
.section bb2_75
.LBB2_75:                               @ %if.end180
                                        @   in Loop: Header=BB2_67 Depth=3
	ldr	r0, [sp, #36]
	ldr	r3, [sp, #80]
	add	r2, sp, #40
	add	r5, r5, r0
	b	.LBB2_76
.section bb2_76
.LBB2_76:                               @ %if.end180
                                        @   in Loop: Header=BB2_67 Depth=3
	ldr	r0, [sp, #8]            @ 4-byte Reload
	sub	r1, r0, r4
	mov	r0, r4
	bl	pat_next
	b	.LBB2_77
.section bb2_77
.LBB2_77:                               @ %if.end180
                                        @   in Loop: Header=BB2_67 Depth=3
	mov	r11, r0
	ldr	r0, [sp, #40]
	cmn	r11, #5
	add	r0, r4, r0
	bne	.LBB2_67
	b	.LBB2_82
.section bb2_78
.LBB2_78:                               @ %if.end186
                                        @   in Loop: Header=BB2_64 Depth=2
	sub	r1, r7, r8
	mov	r0, r8
	mov	r2, r10
	bl	str_next
	cmp	r0, #1
	bge	.LBB2_63
	b	.LBB2_79
.section bb2_79
.LBB2_79:                               @   in Loop: Header=BB2_64 Depth=2
	ldr	r4, [sp, #32]           @ 4-byte Reload
	ldr	r5, [sp, #16]           @ 4-byte Reload
	b	.LBB2_80
.section bb2_80
.LBB2_80:                               @ %for.cond197
                                        @   Parent Loop BB2_62 Depth=1
                                        @     Parent Loop BB2_64 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	add	r8, r8, #1
	mov	r2, r10
	sub	r1, r7, r8
	mov	r0, r8
	bl	str_next
	cmp	r0, #0
	blt	.LBB2_80
	b	.LBB2_64
.section bb2_81
.LBB2_81:                               @   in Loop: Header=BB2_62 Depth=1
	mov	r5, r8
	b	.LBB2_82
.section bb2_82
.LBB2_82:                               @ %while.cond132.loopexit320
                                        @   in Loop: Header=BB2_62 Depth=1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	mov	r4, r0
	str	r5, [sp, #28]           @ 4-byte Spill
	cmp	r0, r1
	blo	.LBB2_62
	b	.LBB2_83
.section bb2_83
.LBB2_83:
	mov	r0, #0
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB2_21
.Ltmp2:
	.size	fnmatch_internal, .Ltmp2-fnmatch_internal
	.cantunwind
	.fnend

	.align	2
	.type	str_next,%function
.section bb3_0
str_next:                               @ @str_next
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r2
	mov	r2, r1
	mov	r1, r0
	cmp	r2, #0
	beq	.LBB3_4
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %if.end
	ldrsb	r0, [r1]
	cmp	r0, #0
	blt	.LBB3_5
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %if.end7
	mov	r0, #1
	str	r0, [r4]
	ldrb	r0, [r1]
	b	.LBB3_8
.section bb3_4
.LBB3_4:                                @ %if.then
	mov	r0, #0
	str	r0, [r4]
	b	.LBB3_8
.section bb3_5
.LBB3_5:                                @ %if.then2
	add	r0, sp, #4
	bl	mbtowc
	cmp	r0, #0
	blt	.LBB3_7
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %if.end6
	str	r0, [r4]
	ldr	r0, [sp, #4]
	b	.LBB3_8
.section bb3_7
.LBB3_7:                                @ %if.then5
	mov	r0, #1
	str	r0, [r4]
	mvn	r0, #0
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %return
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp3:
	.size	str_next, .Ltmp3-str_next
	.cantunwind
	.fnend

	.align	2
	.type	casefold,%function
.section bb4_0
casefold:                               @ @casefold
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	towupper
	cmp	r0, r4
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	popne	{r4, lr}
	movne	pc, lr
	mov	r0, r4
	pop	{r4, lr}
	b	towlower
.Ltmp4:
	.size	casefold, .Ltmp4-casefold
	.cantunwind
	.fnend

	.align	2
	.type	match_bracket,%function
.section bb5_0
match_bracket:                          @ @match_bracket
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %entry
	.pad	#36
	sub	sp, sp, #36
	b	.LBB5_3
.section bb5_3
.LBB5_3:                                @ %entry
	mov	r9, r0
	mov	r8, r2
	mov	r5, r1
	b	.LBB5_4
.section bb5_4
.LBB5_4:                                @ %entry
	mov	r2, r9
	ldrb	r0, [r2, #1]!
	cmp	r0, #33
	movne	r3, #0
	cmpne	r0, #94
	beq	.LBB5_44
	b	.LBB5_5
.section bb5_5
.LBB5_5:
	mov	r1, r9
	mov	r9, r2
	b	.LBB5_6
.section bb5_6
.LBB5_6:                                @ %if.end
	cmp	r0, #45
	bne	.LBB5_8
	b	.LBB5_7
.section bb5_7
.LBB5_7:                                @ %if.then18
	cmp	r5, #45
	beq	.LBB5_10
	b	.LBB5_11
.section bb5_8
.LBB5_8:                                @ %if.end
	cmp	r0, #93
	bne	.LBB5_12
	b	.LBB5_9
.section bb5_9
.LBB5_9:                                @ %if.then9
	cmp	r5, #93
	bne	.LBB5_11
	b	.LBB5_10
.section bb5_10
.LBB5_10:                               @ %if.then12
	eor	r0, r3, #1
	b	.LBB5_43
.section bb5_11
.LBB5_11:                               @ %if.end25
	add	r9, r1, #2
	b	.LBB5_12
.section bb5_12
.LBB5_12:                               @ %if.end28
	ldrb	r0, [r9, #-1]
	mov	r6, #1
	mov	r4, #1
	add	r11, sp, #28
	str	r3, [sp, #8]            @ 4-byte Spill
	orr	r6, r6, #36864
	str	r0, [sp, #32]
	b	.LBB5_14
.section bb5_13
.LBB5_13:                               @ %for.inc
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r9, r7, #1
	b	.LBB5_14
.section bb5_14
.LBB5_14:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_20 Depth 2
	ldrb	r0, [r9]
	cmp	r0, #93
	beq	.LBB5_41
	b	.LBB5_15
.section bb5_15
.LBB5_15:                               @ %for.cond
                                        @   in Loop: Header=BB5_14 Depth=1
	lsl	r1, r0, #24
	asr	r1, r1, #24
	and	r2, r1, #255
	cmp	r2, #91
	bne	.LBB5_27
	b	.LBB5_16
.section bb5_16
.LBB5_16:                               @ %land.lhs.true70
                                        @   in Loop: Header=BB5_14 Depth=1
	ldrb	r1, [r9, #1]
	sub	r2, r1, #46
	and	r2, r2, #255
	cmp	r2, #15
	bhi	.LBB5_34
	b	.LBB5_17
.section bb5_17
.LBB5_17:                               @ %land.lhs.true70
                                        @   in Loop: Header=BB5_14 Depth=1
	tst	r6, r4, lsl r2
	beq	.LBB5_34
	b	.LBB5_18
.section bb5_18
.LBB5_18:                               @ %if.then85
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r0, r9, #2
	b	.LBB5_20
.section bb5_19
.LBB5_19:                               @ %while.body
                                        @   in Loop: Header=BB5_20 Depth=2
	add	r0, r0, #1
	b	.LBB5_20
.section bb5_20
.LBB5_20:                               @ %while.cond
                                        @   Parent Loop BB5_14 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r2, [r0]
	cmp	r2, r1
	ldrbeq	r2, [r0, #1]
	cmpeq	r2, #93
	bne	.LBB5_19
	b	.LBB5_21
.section bb5_21
.LBB5_21:                               @ %while.end
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r7, r0, #1
	cmp	r1, #58
	bne	.LBB5_13
	b	.LBB5_22
.section bb5_22
.LBB5_22:                               @ %land.lhs.true101
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r1, r9, #2
	mov	r10, r6
	sub	r6, r0, r1
	cmp	r6, #15
	bgt	.LBB5_40
	b	.LBB5_23
.section bb5_23
.LBB5_23:                               @ %if.then105
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r4, sp, #12
	mov	r2, r6
	mov	r0, r4
	bl	memcpy
	b	.LBB5_24
.section bb5_24
.LBB5_24:                               @ %if.then105
                                        @   in Loop: Header=BB5_14 Depth=1
	mov	r0, #0
	strb	r0, [r4, r6]
	mov	r0, r4
	bl	wctype
	b	.LBB5_25
.section bb5_25
.LBB5_25:                               @ %if.then105
                                        @   in Loop: Header=BB5_14 Depth=1
	mov	r1, r0
	mov	r0, r5
	bl	iswctype
	mov	r4, #1
	mov	r6, r10
	cmp	r0, #0
	bne	.LBB5_42
	b	.LBB5_26
.section bb5_26
.LBB5_26:                               @ %lor.lhs.false120
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r0, sp, #12
	bl	wctype
	mov	r1, r0
	mov	r0, r8
	bl	iswctype
	cmp	r0, #0
	beq	.LBB5_13
	b	.LBB5_42
.section bb5_27
.LBB5_27:                               @ %for.cond
                                        @   in Loop: Header=BB5_14 Depth=1
	cmp	r2, #45
	bne	.LBB5_33
	b	.LBB5_28
.section bb5_28
.LBB5_28:                               @ %land.lhs.true
                                        @   in Loop: Header=BB5_14 Depth=1
	mov	r1, r9
	ldrb	r2, [r1, #1]!
	cmp	r2, #93
	beq	.LBB5_34
	b	.LBB5_29
.section bb5_29
.LBB5_29:                               @ %if.then41
                                        @   in Loop: Header=BB5_14 Depth=1
	mov	r0, r11
	mov	r2, #4
	bl	mbtowc
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	blt	.LBB5_43
	b	.LBB5_30
.section bb5_30
.LBB5_30:                               @ %if.end45
                                        @   in Loop: Header=BB5_14 Depth=1
	ldr	r2, [sp, #28]
	ldr	r0, [sp, #32]
	cmp	r2, r0
	blo	.LBB5_32
	b	.LBB5_31
.section bb5_31
.LBB5_31:                               @ %if.then48
                                        @   in Loop: Header=BB5_14 Depth=1
	sub	r2, r2, r0
	sub	r3, r5, r0
	cmp	r3, r2
	subhi	r0, r8, r0
	cmphi	r0, r2
	bls	.LBB5_42
	b	.LBB5_32
.section bb5_32
.LBB5_32:                               @ %if.end62
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r0, r1, r9
	sub	r7, r0, #1
	b	.LBB5_13
.section bb5_33
.LBB5_33:                               @ %if.end131
                                        @   in Loop: Header=BB5_14 Depth=1
	cmp	r1, #0
	blt	.LBB5_37
	b	.LBB5_34
.section bb5_34
.LBB5_34:                               @ %if.then135
                                        @   in Loop: Header=BB5_14 Depth=1
	str	r0, [sp, #32]
	b	.LBB5_35
.section bb5_35
.LBB5_35:                               @ %if.end146
                                        @   in Loop: Header=BB5_14 Depth=1
	cmp	r0, r5
	beq	.LBB5_42
	b	.LBB5_36
.section bb5_36
.LBB5_36:                               @ %if.end146
                                        @   in Loop: Header=BB5_14 Depth=1
	mov	r7, r9
	cmp	r0, r8
	bne	.LBB5_13
	b	.LBB5_42
.section bb5_37
.LBB5_37:                               @ %if.else137
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r0, sp, #32
	mov	r1, r9
	mov	r2, #4
	bl	mbtowc
	b	.LBB5_38
.section bb5_38
.LBB5_38:                               @ %if.else137
                                        @   in Loop: Header=BB5_14 Depth=1
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	blt	.LBB5_43
	b	.LBB5_39
.section bb5_39
.LBB5_39:                               @ %if.end143
                                        @   in Loop: Header=BB5_14 Depth=1
	add	r0, r1, r9
	sub	r9, r0, #1
	ldr	r0, [sp, #32]
	b	.LBB5_35
.section bb5_40
.LBB5_40:                               @   in Loop: Header=BB5_14 Depth=1
	mov	r4, #1
	mov	r6, r10
	b	.LBB5_13
.section bb5_41
.LBB5_41:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	b	.LBB5_43
.section bb5_42
.LBB5_42:                               @ %if.then57
	ldr	r0, [sp, #8]            @ 4-byte Reload
	eor	r0, r0, #1
	b	.LBB5_43
.section bb5_43
.LBB5_43:                               @ %return
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb5_44
.LBB5_44:                               @ %if.then
	ldrb	r0, [r9, #2]!
	mov	r3, #1
	mov	r1, r2
	b	.LBB5_6
.Ltmp5:
	.size	match_bracket, .Ltmp5-match_bracket
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
