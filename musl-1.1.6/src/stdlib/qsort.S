.section qsort_text
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
	.file	"src/stdlib/qsort.bc"
	.globl	qsort
	.align	2
	.type	qsort,%function
.section bb0_0
qsort:                                  @ @qsort
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
	.pad	#220
	sub	sp, sp, #220
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, r0
	mov	r0, #0
	mov	r9, r2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r11, r3
	str	r0, [sp, #20]
	mov	r0, #1
	str	r0, [sp, #16]
	mul	r0, r9, r1
	cmp	r0, #0
	beq	.LBB0_52
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	add	r5, sp, #28
	sub	r1, r0, r9
	mov	r3, r9
	mov	r7, r9
	str	r9, [sp, #32]
	str	r9, [sp, #28]
	add	r2, r5, #8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, r3
	add	r3, r7, r9
	add	r3, r3, r4
	mov	r7, r4
	str	r3, [r2], #4
	cmp	r3, r0
	blo	.LBB0_6
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %while.cond.preheader
	cmp	r1, #1
	blt	.LBB0_25
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %while.body.lr.ph
	add	r4, r6, r1
	mov	r0, #1
	mov	r7, #0
	mov	r10, #1
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r0, #3
	cmp	r0, #3
	bne	.LBB0_13
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then12
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, r6
	mov	r1, r9
	mov	r2, r11
	mov	r3, r10
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then12
                                        @   in Loop: Header=BB0_9 Depth=1
	str	r5, [sp]
	bl	sift
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #16]
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then12
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r10, r10, #2
	lsl	r2, r1, #30
	lsr	r1, r1, #2
	orr	r0, r2, r0, lsr #2
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	b	.LBB0_24
.section bb0_13
.LBB0_13:                               @ %if.else
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r8, r10, #1
	sub	r0, r4, r6
	ldr	r1, [r5, r8, lsl #2]
	cmp	r1, r0
	bhs	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.else21
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, r6
	mov	r1, r9
	mov	r2, r11
	mov	r3, r10
	str	r5, [sp]
	bl	sift
	b	.LBB0_17
.section bb0_15
.LBB0_15:                               @ %if.then18
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, r6
	mov	r1, r9
	mov	r2, r11
	add	r3, sp, #16
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then18
                                        @   in Loop: Header=BB0_9 Depth=1
	str	r10, [sp]
	str	r7, [sp, #4]
	str	r5, [sp, #8]
	bl	trinkle
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end23
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r10, #1
	bne	.LBB0_20
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then25
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	mov	r10, #0
	lsr	r2, r0, #31
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then25
                                        @   in Loop: Header=BB0_9 Depth=1
	lsl	r0, r0, #1
	orr	r1, r2, r1, lsl #1
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB0_24
.section bb0_20
.LBB0_20:                               @ %if.else27
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r8, #31
	bls	.LBB0_22
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then.i
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, [sp, #16]
	mov	r0, #0
	sub	r8, r10, #33
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB0_23
.section bb0_22
.LBB0_22:                               @ %entry.if.end_crit_edge.i
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %shl.exit
                                        @   in Loop: Header=BB0_9 Depth=1
	rsb	r2, r8, #32
	mov	r10, #1
	lsr	r2, r0, r2
	lsl	r0, r0, r8
	orr	r1, r2, r1, lsl r8
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end31
                                        @   in Loop: Header=BB0_9 Depth=1
	orr	r0, r0, #1
	add	r6, r6, r9
	str	r0, [sp, #16]
	cmp	r6, r4
	blo	.LBB0_9
	b	.LBB0_26
.section bb0_25
.LBB0_25:
	mov	r10, #1
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %while.end
	mov	r0, #0
	str	r10, [sp]
	add	r3, sp, #16
	mov	r1, r9
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %while.end
	mov	r2, r11
	rsb	r8, r9, #0
	mov	r4, r5
	stmib	sp, {r0, r5}
	mov	r0, r6
	mov	r5, r3
	bl	trinkle
	b	.LBB0_37
.section bb0_28
.LBB0_28:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	ldr	r2, [sp, #20]
	mvn	r1, #-2147483647
	sub	r7, r10, #2
	mov	r3, r5
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	and	r1, r1, r0, lsl #1
	lsr	r0, r0, #30
	orr	r1, r1, r0, lsl #31
	eor	r1, r1, #3
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	orr	r0, r0, r2, lsl #2
	str	r1, [sp, #16]
	sub	r1, r10, #1
	mov	r10, #1
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	mov	r2, r11
	lsr	r0, r0, #1
	str	r1, [sp]
	mov	r1, r9
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	str	r10, [sp, #4]
	str	r4, [sp, #8]
	str	r0, [sp, #20]
	ldr	r0, [r4, r7, lsl #2]
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	add	r0, r0, r9
	sub	r0, r6, r0
	bl	trinkle
	ldr	r0, [sp, #16]
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	ldr	r1, [sp, #20]
	add	r6, r6, r8
	mov	r3, r5
	lsr	r2, r0, #31
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	orr	r0, r10, r0, lsl #1
	orr	r1, r2, r1, lsl #1
	mov	r2, r11
	str	r1, [sp, #20]
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.else48
                                        @   in Loop: Header=BB0_37 Depth=1
	str	r0, [sp, #16]
	mov	r0, r6
	mov	r1, r9
	stm	sp, {r7, r10}
	str	r4, [sp, #8]
	bl	trinkle
	mov	r10, r7
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %while.cond36
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r10, #1
	ldr	r0, [sp, #16]
	ldreq	r1, [sp, #20]
	cmpeq	r0, #1
	bne	.LBB0_39
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %while.cond36
                                        @   in Loop: Header=BB0_37 Depth=1
	cmp	r1, #0
	beq	.LBB0_52
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %while.body42
                                        @   in Loop: Header=BB0_37 Depth=1
	cmp	r10, #1
	bgt	.LBB0_28
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.then44
                                        @   in Loop: Header=BB0_37 Depth=1
	ldr	r3, .LCPI0_2
	rsb	r1, r0, #1
	sub	r2, r0, #1
	and	r2, r2, r1
	b	.LBB0_41
.LCPI0_2:
	.long	124511785               @ 0x76be629
.section bb0_41
.LBB0_41:                               @ %if.then44
                                        @   in Loop: Header=BB0_37 Depth=1
	mul	r1, r2, r3
	mov	r2, #0
	cmp	r2, r1, lsr #27
	beq	.LBB0_43
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %return.i
                                        @   in Loop: Header=BB0_37 Depth=1
	ldr	r2, .LCPI0_4
	lsr	r1, r1, #27
	ldrb	r1, [r2, r1]
	b	.LBB0_46
.LCPI0_4:
	.long	a_ctz_l.debruijn32
.section bb0_43
.LBB0_43:                               @ %lor.lhs.false.i
                                        @   in Loop: Header=BB0_37 Depth=1
	ldr	r2, [sp, #20]
	ldr	r7, .LCPI0_3
	rsb	r1, r2, #0
	and	r1, r2, r1
	b	.LBB0_44
.LCPI0_3:
	.long	124511785               @ 0x76be629
.section bb0_44
.LBB0_44:                               @ %lor.lhs.false.i
                                        @   in Loop: Header=BB0_37 Depth=1
	mul	r3, r1, r7
	mov	r1, #0
	cmp	r1, r3, lsr #27
	beq	.LBB0_49
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @   in Loop: Header=BB0_37 Depth=1
	ldr	r1, .LCPI0_5
	ldrb	r1, [r1, r3, lsr #27]
	add	r1, r1, #32
	b	.LBB0_46
.LCPI0_5:
	.long	a_ctz_l.debruijn32
.section bb0_46
.LBB0_46:                               @ %pntz.exit
                                        @   in Loop: Header=BB0_37 Depth=1
	cmp	r1, #31
	bls	.LBB0_48
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.then.i165
                                        @   in Loop: Header=BB0_37 Depth=1
	ldr	r0, [sp, #20]
	mov	r2, #0
	sub	r3, r1, #32
	str	r0, [sp, #16]
	str	r2, [sp, #20]
	b	.LBB0_50
.section bb0_48
.LBB0_48:                               @ %pntz.exit.entry.if.end_crit_edge.i163_crit_edge
                                        @   in Loop: Header=BB0_37 Depth=1
	ldr	r2, [sp, #20]
	mov	r3, r1
	b	.LBB0_50
.section bb0_49
.LBB0_49:                               @   in Loop: Header=BB0_37 Depth=1
	mov	r3, #0
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %shr.exit
                                        @   in Loop: Header=BB0_37 Depth=1
	rsb	r7, r3, #32
	add	r6, r6, r8
	add	r10, r1, r10
	lsl	r7, r2, r7
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %shr.exit
                                        @   in Loop: Header=BB0_37 Depth=1
	orr	r0, r7, r0, lsr r3
	str	r0, [sp, #16]
	lsr	r0, r2, r3
	str	r0, [sp, #20]
	b	.LBB0_37
.section bb0_52
.LBB0_52:                               @ %cleanup
	add	sp, sp, #220
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	qsort, .Ltmp0-qsort
	.cantunwind
	.fnend

	.align	2
	.type	sift,%function
.section bb1_0
sift:                                   @ @sift
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#236
	sub	sp, sp, #236
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r10, r3
	mov	r8, r0
	mov	r6, r2
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r11, r1
	mov	r9, #1
	str	r8, [sp, #8]
	cmp	r10, #2
	blt	.LBB1_15
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %while.body.lr.ph
	rsb	r0, r11, #0
	mov	r9, #1
	mov	r4, r8
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB1_7
.section bb1_6
.LBB1_6:                                @ %while.cond.backedge.while.body_crit_edge
                                        @   in Loop: Header=BB1_7 Depth=1
	ldr	r8, [sp, #8]
	mov	r10, r7
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	sub	r7, r10, #2
	add	r5, r4, r0
	ldr	r0, [sp, #272]
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %while.body
                                        @   in Loop: Header=BB1_7 Depth=1
	ldr	r0, [r0, r7, lsl #2]
	add	r0, r0, r11
	sub	r4, r4, r0
	mov	r0, r8
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %while.body
                                        @   in Loop: Header=BB1_7 Depth=1
	mov	r1, r4
	mov	lr, pc
	mov	pc, r6
	cmp	r0, #0
	blt	.LBB1_11
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_7 Depth=1
	mov	r0, r8
	mov	r1, r5
	mov	lr, pc
	mov	pc, r6
	cmp	r0, #0
	bge	.LBB1_15
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.end
                                        @   in Loop: Header=BB1_7 Depth=1
	mov	r0, r4
	mov	r1, r5
	mov	lr, pc
	mov	pc, r6
	cmp	r0, #0
	blt	.LBB1_13
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then14
                                        @   in Loop: Header=BB1_7 Depth=1
	add	r0, sp, #8
	sub	r7, r10, #1
	str	r4, [r0, r9, lsl #2]
	b	.LBB1_14
.section bb1_13
.LBB1_13:                               @ %if.else
                                        @   in Loop: Header=BB1_7 Depth=1
	add	r0, sp, #8
	mov	r4, r5
	str	r5, [r0, r9, lsl #2]
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB1_7 Depth=1
	add	r9, r9, #1
	cmp	r7, #2
	bge	.LBB1_6
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %while.end
	add	r1, sp, #8
	mov	r0, r11
	mov	r2, r9
	bl	cycle
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	sift, .Ltmp1-sift
	.cantunwind
	.fnend

	.align	2
	.type	trinkle,%function
.section bb2_0
trinkle:                                @ @trinkle
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
	.pad	#252
	sub	sp, sp, #252
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	ldr	r9, [r3, #4]
	ldr	r11, [r3]
	ldr	r5, [sp, #292]
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	ldr	r6, [sp, #288]
	mov	r4, r0
	rsb	r0, r1, #0
	mov	r10, r2
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %entry
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, #1
	str	r4, [sp, #24]
	str	r0, [sp, #20]           @ 4-byte Spill
	cmp	r9, #0
	bne	.LBB2_7
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %entry
	mov	r7, r4
	cmp	r11, #1
	beq	.LBB2_28
	b	.LBB2_9
.section bb2_7
.LBB2_7:
	mov	r7, r4
	b	.LBB2_9
.section bb2_8
.LBB2_8:                                @ %shr.exit.while.body_crit_edge
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r4, [sp, #24]
	lsr	r9, r9, r1
	mov	r7, r8
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #296]
	mov	r1, r4
	mov	r4, r10
	ldr	r0, [r0, r6, lsl #2]
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %while.body
                                        @   in Loop: Header=BB2_9 Depth=1
	sub	r8, r7, r0
	mov	r0, r8
	mov	lr, pc
	mov	pc, r4
	mov	r10, r4
	cmp	r0, #1
	blt	.LBB2_27
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.end
                                        @   in Loop: Header=BB2_9 Depth=1
	cmp	r5, #0
	bne	.LBB2_17
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.end
                                        @   in Loop: Header=BB2_9 Depth=1
	cmp	r6, #2
	blt	.LBB2_17
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.then13
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [sp, #296]
	mov	r5, r7
	mov	r1, r8
	mov	r7, r10
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.then13
                                        @   in Loop: Header=BB2_9 Depth=1
	add	r0, r0, r6, lsl #2
	ldr	r4, [r0, #-8]
	ldr	r0, [sp, #12]           @ 4-byte Reload
	add	r0, r5, r0
	mov	lr, pc
	mov	pc, r7
	cmp	r0, #0
	bge	.LBB2_29
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	mov	r1, r8
	add	r0, r4, r0
	sub	r0, r5, r0
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB2_9 Depth=1
	mov	lr, pc
	mov	pc, r7
	mov	r10, r7
	cmp	r0, #0
	bge	.LBB2_30
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %if.end27
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r4, [sp, #20]           @ 4-byte Reload
	add	r0, sp, #24
	sub	r1, r11, #1
	str	r8, [r0, r4, lsl #2]
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %if.end27
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r2, .LCPI2_0
	rsb	r0, r11, #1
	and	r0, r1, r0
	mul	r1, r0, r2
	mov	r0, #0
	cmp	r0, r1, lsr #27
	beq	.LBB2_20
	b	.LBB2_19
.LCPI2_0:
	.long	124511785               @ 0x76be629
.section bb2_19
.LBB2_19:                               @ %return.i
                                        @   in Loop: Header=BB2_9 Depth=1
	lsr	r0, r1, #27
	ldr	r1, .LCPI2_2
	ldrb	r0, [r1, r0]
	b	.LBB2_22
.LCPI2_2:
	.long	a_ctz_l.debruijn32
.section bb2_20
.LBB2_20:                               @ %lor.lhs.false.i
                                        @   in Loop: Header=BB2_9 Depth=1
	ldr	r3, .LCPI2_3
	rsb	r1, r9, #0
	and	r2, r9, r1
	mul	r1, r2, r3
	cmp	r0, r1, lsr #27
	beq	.LBB2_25
	b	.LBB2_21
.LCPI2_1:
	.long	124511785               @ 0x76be629
.LCPI2_3:
	.long	a_ctz_l.debruijn32
.section bb2_21
.LBB2_21:                               @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, .LCPI2_4
	ldrb	r0, [r0, r1, lsr #27]
	add	r0, r0, #32
	b	.LBB2_22
.LCPI2_4:
	.long	a_ctz_l.debruijn32
.section bb2_22
.LBB2_22:                               @ %pntz.exit
                                        @   in Loop: Header=BB2_9 Depth=1
	cmp	r0, #31
	mov	r1, r0
	movhi	r11, r9
	movhi	r9, #0
	subhi	r1, r1, #32
	b	.LBB2_23
.section bb2_23
.LBB2_23:                               @ %shr.exit
                                        @   in Loop: Header=BB2_9 Depth=1
	rsb	r2, r1, #32
	mov	r5, #0
	add	r4, r4, #1
	add	r6, r0, r6
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %shr.exit
                                        @   in Loop: Header=BB2_9 Depth=1
	lsl	r2, r9, r2
	cmp	r5, r9, lsr r1
	str	r4, [sp, #20]           @ 4-byte Spill
	orr	r11, r2, r11, lsr r1
	cmpeq	r11, #1
	beq	.LBB2_26
	b	.LBB2_8
.section bb2_25
.LBB2_25:                               @   in Loop: Header=BB2_9 Depth=1
	mov	r1, #0
	b	.LBB2_23
.section bb2_26
.LBB2_26:
	mov	r4, r8
	b	.LBB2_31
.section bb2_27
.LBB2_27:
	mov	r4, r7
	b	.LBB2_28
.section bb2_28
.LBB2_28:                               @ %while.end
	cmp	r5, #0
	bne	.LBB2_34
	b	.LBB2_31
.section bb2_29
.LBB2_29:
	mov	r10, r7
	b	.LBB2_30
.section bb2_30
.LBB2_30:
	mov	r4, r5
	b	.LBB2_31
.section bb2_31
.LBB2_31:                               @ %if.then32
	ldr	r5, [sp, #16]           @ 4-byte Reload
	ldr	r2, [sp, #20]           @ 4-byte Reload
	add	r1, sp, #24
	mov	r0, r5
	b	.LBB2_32
.section bb2_32
.LBB2_32:                               @ %if.then32
	bl	cycle
	ldr	r0, [sp, #296]
	mov	r1, r5
	mov	r2, r10
	b	.LBB2_33
.section bb2_33
.LBB2_33:                               @ %if.then32
	mov	r3, r6
	str	r0, [sp]
	mov	r0, r4
	bl	sift
	b	.LBB2_34
.section bb2_34
.LBB2_34:                               @ %if.end34
	add	sp, sp, #252
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	trinkle, .Ltmp2-trinkle
	.cantunwind
	.fnend

	.align	2
	.type	cycle,%function
.section bb3_0
cycle:                                  @ @cycle
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	.pad	#264
	sub	sp, sp, #264
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %entry
	mov	r10, r2
	mov	r9, r1
	mov	r6, r0
	cmp	r10, #2
	blt	.LBB3_12
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %if.end
	add	r0, sp, #8
	cmp	r6, #0
	str	r0, [r9, r10, lsl #2]
	beq	.LBB3_12
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %while.body.lr.ph
	add	r8, r9, #4
	b	.LBB3_7
.section bb3_6
.LBB3_6:                                @ %for.end.while.body_crit_edge
                                        @   in Loop: Header=BB3_7 Depth=1
	ldr	r0, [r9, r10, lsl #2]
	sub	r6, r6, r7
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %while.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_9 Depth 2
	ldr	r1, [r9]
	cmp	r6, #256
	mov	r7, r6
	movhi	r7, #256
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %while.body
                                        @   in Loop: Header=BB3_7 Depth=1
	mov	r2, r7
	bl	memcpy
	mov	r5, r8
	mov	r4, r10
	b	.LBB3_9
.section bb3_9
.LBB3_9:                                @ %for.body
                                        @   Parent Loop BB3_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldmda	r5, {r0, r1}
	mov	r2, r7
	bl	memcpy
	ldr	r0, [r5, #-4]
	b	.LBB3_10
.section bb3_10
.LBB3_10:                               @ %for.body
                                        @   in Loop: Header=BB3_9 Depth=2
	subs	r4, r4, #1
	add	r0, r0, r7
	str	r0, [r5, #-4]
	add	r5, r5, #4
	bne	.LBB3_9
	b	.LBB3_11
.section bb3_11
.LBB3_11:                               @ %for.end
                                        @   in Loop: Header=BB3_7 Depth=1
	cmp	r6, r7
	bne	.LBB3_6
	b	.LBB3_12
.section bb3_12
.LBB3_12:                               @ %cleanup
	add	sp, sp, #264
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp3:
	.size	cycle, .Ltmp3-cycle
	.cantunwind
	.fnend

	.type	a_ctz_l.debruijn32,%object @ @a_ctz_l.debruijn32
	.section	.rodata,"a",%progbits
a_ctz_l.debruijn32:
	.ascii	"\000\001\027\002\035\030\023\003\036\033\031\013\024\b\004\r\037\026\034\022\032\n\007\f\025\021\t\006\020\005\017\016"
	.size	a_ctz_l.debruijn32, 32


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
