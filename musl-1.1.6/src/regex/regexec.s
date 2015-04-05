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
	.file	"src/regex/regexec.bc"
	.globl	regexec
	.align	2
	.type	regexec,%function
regexec:                                @ @regexec
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#108
	sub	sp, sp, #108
	b	.LBB0_3
.LBB0_3:                                @ %entry
	str	r3, [sp, #24]           @ 4-byte Spill
	ldr	r3, [r0, #4]
	mov	r10, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r7, r1
	ldrb	r0, [r3, #56]
	tst	r0, #8
	ldr	r0, [r3, #40]
	movne	r2, r10
	cmp	r0, #1
	blt	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %entry
	cmp	r2, #0
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %if.then2
	lsl	r0, r0, #2
	mov	r4, r3
	bl	malloc
	mov	r3, r4
	b	.LBB0_7
.LBB0_7:                                @ %if.then2
	mov	r10, r0
	mov	r4, #12
	cmp	r10, #0
	bne	.LBB0_9
	b	.LBB0_494
.LBB0_8:
	str	r2, [sp, #20]           @ 4-byte Spill
	b	.LBB0_9
.LBB0_9:                                @ %if.end7
	ldr	r9, [sp, #144]
	ldr	r0, [r3, #60]
	str	r10, [sp, #56]          @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_10
.LBB0_10:                               @ %if.then9
	mov	r0, #0
	mov	r1, #0
	str	r3, [sp, #32]           @ 4-byte Spill
	str	r0, [sp, #100]
	b	.LBB0_11
.LBB0_11:                               @ %if.then9
	mov	r0, #0
	ldr	r8, [r3, #56]
	bl	__tre_mem_new_impl
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_248
	b	.LBB0_12
.LBB0_12:                               @ %if.end.i
	mov	r0, #32
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_13
.LBB0_13:                               @ %if.end.i
	mov	r6, #0
	str	r0, [sp]
	mov	r0, r5
	bl	__tre_mem_alloc_impl
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB0_247
	b	.LBB0_14
.LBB0_14:                               @ %if.end6.i
	ldr	r3, [sp, #32]           @ 4-byte Reload
	str	r6, [r4, #24]
	str	r6, [r4, #28]
	mov	r6, #0
	ldr	r0, [r3, #40]
	cmp	r0, #0
	beq	.LBB0_17
	b	.LBB0_15
.LBB0_15:                               @ %if.then8.i
	lsl	r0, r0, #2
	bl	malloc
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_250
	b	.LBB0_16
.LBB0_16:
	ldr	r3, [sp, #32]           @ 4-byte Reload
	b	.LBB0_17
.LBB0_17:                               @ %if.end14.i
	ldr	r1, [r3, #28]
	str	r7, [sp, #52]           @ 4-byte Spill
	mov	r7, r9
	mov	r11, #0
	b	.LBB0_18
.LBB0_18:                               @ %if.end14.i
	mov	r0, #0
	str	r6, [sp, #84]           @ 4-byte Spill
	str	r5, [sp, #48]           @ 4-byte Spill
	cmp	r1, #0
	beq	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               @ %if.then16.i
	lsl	r0, r1, #3
	mov	r9, r6
	str	r3, [sp, #32]           @ 4-byte Spill
	bl	malloc
	cmp	r0, #0
	beq	.LBB0_252
	b	.LBB0_20
.LBB0_20:
	ldr	r3, [sp, #32]           @ 4-byte Reload
	mov	r6, r9
	b	.LBB0_21
.LBB0_21:                               @ %if.end23.i
	str	r0, [sp, #36]           @ 4-byte Spill
	ldr	r0, [r3, #52]
	cmp	r0, #0
	beq	.LBB0_24
	b	.LBB0_22
.LBB0_22:                               @ %if.then25.i
	lsl	r0, r0, #2
	mov	r9, r6
	str	r3, [sp, #32]           @ 4-byte Spill
	bl	malloc
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB0_253
	b	.LBB0_23
.LBB0_23:
	ldr	r3, [sp, #32]           @ 4-byte Reload
	mov	r6, r9
	b	.LBB0_24
.LBB0_24:                               @ %retry.preheader.i
	and	r0, r7, #2
	mvn	r5, #0
	str	r4, [sp, #96]           @ 4-byte Spill
	str	r11, [sp, #44]          @ 4-byte Spill
	b	.LBB0_25
.LBB0_25:                               @ %retry.preheader.i
	str	r0, [sp, #68]           @ 4-byte Spill
	and	r0, r7, #1
	ldr	r7, [sp, #52]           @ 4-byte Reload
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_26
.LBB0_26:                               @ %retry.preheader.i
	and	r0, r8, #4
	mov	r8, #0
	str	r0, [sp, #80]           @ 4-byte Spill
	mov	r0, #1
	b	.LBB0_27
.LBB0_27:                               @ %retry.preheader.i
	str	r0, [sp, #92]           @ 4-byte Spill
	mvn	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	mvn	r0, #0
	str	r7, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB0_256
.LBB0_28:                               @ %if.else
	mov	r4, #0
	cmp	r10, #0
	mov	r0, #8
	str	r10, [sp, #56]          @ 4-byte Spill
	b	.LBB0_29
.LBB0_29:                               @ %if.else
	str	r7, [sp, #52]           @ 4-byte Spill
	mov	r8, r3
	str	r4, [sp, #104]
	ldrne	r4, [r3, #40]
	b	.LBB0_30
.LBB0_30:                               @ %if.else
	ldr	r1, [r3, #52]
	ldr	r6, [r3, #56]
	add	r10, r0, r1, lsl #3
	lsl	r7, r4, #2
	b	.LBB0_31
.LBB0_31:                               @ %if.else
	str	r1, [sp, #96]           @ 4-byte Spill
	str	r4, [sp, #40]           @ 4-byte Spill
	mla	r0, r7, r1, r10
	add	r1, r7, r1, lsl #3
	b	.LBB0_32
.LBB0_32:                               @ %if.else
	add	r0, r1, r0, lsl #1
	add	r9, r0, #12
	mov	r0, r9
	bl	malloc
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_249
	b	.LBB0_33
.LBB0_33:                               @ %if.end16.i
	mov	r0, #0
	mov	r1, #0
	mov	r2, r9
	str	r6, [sp, #92]           @ 4-byte Spill
	b	.LBB0_34
.LBB0_34:                               @ %if.end16.i
	str	r0, [sp, #88]           @ 4-byte Spill
	mov	r0, r5
	bl	memset
	add	r0, r5, r7
	b	.LBB0_35
.LBB0_35:                               @ %if.end16.i
	ldr	r11, [r8, #52]
	str	r5, [sp, #12]           @ 4-byte Spill
	ands	lr, r0, #3
	rsbne	lr, lr, #4
	b	.LBB0_36
.LBB0_36:                               @ %if.end16.i
	add	r6, lr, r7
	add	r0, r6, r10
	add	r1, r5, r0
	ands	r3, r1, #3
	b	.LBB0_37
.LBB0_37:                               @ %if.end16.i
	rsbne	r3, r3, #4
	add	r0, r3, r0
	add	r1, r0, r10
	str	r0, [sp, #84]           @ 4-byte Spill
	b	.LBB0_38
.LBB0_38:                               @ %if.end16.i
	add	r0, r5, r1
	ands	r0, r0, #3
	rsbne	r0, r0, #4
	cmp	r11, #1
	add	r7, r0, r1
	blt	.LBB0_53
	b	.LBB0_39
.LBB0_39:                               @ %for.body.lr.ph.i
	str	r6, [sp, #80]           @ 4-byte Spill
	ldr	r6, [sp, #96]           @ 4-byte Reload
	ldr	r2, [sp, #12]           @ 4-byte Reload
	str	r7, [sp, #76]           @ 4-byte Spill
	b	.LBB0_40
.LBB0_40:                               @ %for.body.lr.ph.i
	mov	r10, #0
	lsl	r1, r6, #3
	add	r1, r7, r1
	add	r1, r2, r1
	b	.LBB0_41
.LBB0_41:                               @ %for.body.lr.ph.i
	ands	r7, r1, #3
	add	r1, r3, r0
	rsb	r0, r7, #4
	str	r1, [sp, #88]           @ 4-byte Spill
	b	.LBB0_42
.LBB0_42:                               @ %for.body.lr.ph.i
	addne	r1, r1, r0
	add	r0, r6, r6, lsl #1
	add	r0, r1, r0, lsl #3
	add	r1, r0, r4, lsl #2
	b	.LBB0_43
.LBB0_43:                               @ %for.body.lr.ph.i
	add	r0, r0, r4, lsl #3
	add	r0, r0, lr
	add	r1, r1, lr
	add	r0, r0, r2
	b	.LBB0_44
.LBB0_44:                               @ %for.body.lr.ph.i
	add	r1, r1, r2
	add	r2, r2, lr
	add	r7, r0, #16
	mov	r0, #4
	b	.LBB0_45
.LBB0_45:                               @ %for.body.lr.ph.i
	add	r12, r1, #16
	lsl	r1, r4, #3
	add	r5, r0, r4, lsl #2
	add	r0, r3, r6, lsl #3
	b	.LBB0_46
.LBB0_46:                               @ %for.body.lr.ph.i
	mov	r6, r4
	add	r0, r0, r4, lsl #2
	add	r3, r0, #12
	mov	r0, r11
	b	.LBB0_47
.LBB0_47:                               @ %for.body.i47
                                        @ =>This Inner Loop Header: Depth=1
	add	r9, r12, r10
	add	r4, r7, r10
	add	r10, r10, r1
	subs	r0, r0, #1
	b	.LBB0_48
.LBB0_48:                               @ %for.body.i47
                                        @   in Loop: Header=BB0_47 Depth=1
	str	r9, [r2, r3]
	str	r4, [r2, r5]
	add	r3, r3, #8
	add	r5, r5, #8
	bne	.LBB0_47
	b	.LBB0_49
.LBB0_49:                               @ %for.body60.i.preheader
	ldr	r0, [sp, #88]           @ 4-byte Reload
	ldr	r1, [sp, #96]           @ 4-byte Reload
	mov	r4, r6
	ldr	r6, [sp, #80]           @ 4-byte Reload
	b	.LBB0_50
.LBB0_50:                               @ %for.body60.i.preheader
	add	r0, r0, lr
	add	r0, r0, r1, lsl #4
	ldr	r1, [sp, #12]           @ 4-byte Reload
	add	r0, r0, r4, lsl #2
	add	r0, r0, r1
	mvn	r1, #0
	add	r0, r0, #16
	b	.LBB0_51
.LBB0_51:                               @ %for.body60.i
                                        @ =>This Inner Loop Header: Depth=1
	str	r1, [r0], #8
	subs	r11, r11, #1
	bne	.LBB0_51
	b	.LBB0_52
.LBB0_52:                               @ %for.cond57.do.body_crit_edge.i
	ldr	r0, [sp, #104]
	ldr	r7, [sp, #76]           @ 4-byte Reload
	str	r0, [sp, #88]           @ 4-byte Spill
	b	.LBB0_53
.LBB0_53:                               @ %do.body.i
	ldr	r5, [sp, #52]           @ 4-byte Reload
	add	r0, sp, #104
	mov	r2, #4
	mov	r1, r5
	b	.LBB0_54
.LBB0_54:                               @ %do.body.i
	bl	mbtowc
	ldr	r10, [sp, #56]          @ 4-byte Reload
	cmp	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	bgt	.LBB0_56
	b	.LBB0_55
.LBB0_55:                               @ %if.then69.i
	mov	r0, #1
	str	r0, [sp, #44]           @ 4-byte Spill
                                        @ implicit-def: R0
	str	r0, [sp, #60]           @ 4-byte Spill
	blt	.LBB0_246
	b	.LBB0_56
.LBB0_56:                               @ %if.end75.i
	ldr	r0, [sp, #144]
	ldr	r11, [sp, #12]          @ 4-byte Reload
	cmp	r4, #1
	mov	lr, #0
	b	.LBB0_57
.LBB0_57:                               @ %if.end75.i
	mov	r12, r8
	str	r4, [sp, #40]           @ 4-byte Spill
	mov	r1, r0
	add	r3, r11, r6
	b	.LBB0_58
.LBB0_58:                               @ %if.end75.i
	ldr	r6, [sp, #88]           @ 4-byte Reload
	add	r9, r11, r7
	and	r0, r1, #2
	str	r9, [sp, #72]           @ 4-byte Spill
	b	.LBB0_59
.LBB0_59:                               @ %if.end75.i
	str	r3, [sp, #80]           @ 4-byte Spill
	str	r0, [sp, #64]           @ 4-byte Spill
	and	r0, r1, #1
	ldr	r1, [sp, #44]           @ 4-byte Reload
	b	.LBB0_60
.LBB0_60:                               @ %if.end75.i
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r0, [sp, #92]           @ 4-byte Reload
	str	r3, [sp, #92]           @ 4-byte Spill
	mov	r2, r1
	b	.LBB0_61
.LBB0_61:                               @ %if.end75.i
	and	r0, r0, #4
	str	r0, [sp, #68]           @ 4-byte Spill
	ldr	r0, [sp, #84]           @ 4-byte Reload
	add	r0, r11, r0
	b	.LBB0_62
.LBB0_62:                               @ %if.end75.i
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, #0
	movlt	r0, #1
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB0_63
.LBB0_63:                               @ %if.end75.i
	add	r0, r5, r1
	str	r0, [sp, #52]           @ 4-byte Spill
	mvn	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #84]           @ 4-byte Spill
	b	.LBB0_66
.LBB0_64:                               @ %for.end550.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [sp, #44]           @ 4-byte Reload
	ldr	r1, [sp, #52]           @ 4-byte Reload
	ldr	r2, [sp, #80]           @ 4-byte Reload
	ldr	r10, [sp, #56]          @ 4-byte Reload
	b	.LBB0_65
.LBB0_65:                               @ %for.end550.i
                                        @   in Loop: Header=BB0_66 Depth=1
	add	r1, r1, r0
	str	r1, [sp, #52]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [r2]
	ldr	r1, [sp, #36]           @ 4-byte Reload
	mov	r2, r0
	str	r1, [sp, #92]           @ 4-byte Spill
	b	.LBB0_66
.LBB0_66:                               @ %while.body.i58
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_75 Depth 2
                                        @       Child Loop BB0_76 Depth 3
                                        @       Child Loop BB0_118 Depth 3
                                        @       Child Loop BB0_122 Depth 3
                                        @       Child Loop BB0_127 Depth 3
                                        @     Child Loop BB0_140 Depth 2
                                        @       Child Loop BB0_141 Depth 3
                                        @     Child Loop BB0_157 Depth 2
                                        @       Child Loop BB0_188 Depth 3
                                        @         Child Loop BB0_160 Depth 4
                                        @         Child Loop BB0_164 Depth 4
                                        @         Child Loop BB0_177 Depth 4
                                        @         Child Loop BB0_183 Depth 4
	ldr	r0, [sp, #60]           @ 4-byte Reload
	cmp	r0, #0
	blt	.LBB0_70
	b	.LBB0_67
.LBB0_67:                               @ %if.else228.i
                                        @   in Loop: Header=BB0_66 Depth=1
	mov	r8, r12
	cmp	r4, #0
	beq	.LBB0_245
	b	.LBB0_68
.LBB0_68:                               @ %lor.lhs.false230.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [sp, #80]           @ 4-byte Reload
	ldr	r1, [sp, #92]           @ 4-byte Reload
	cmp	r0, r1
	movne	r5, r4
	b	.LBB0_69
.LBB0_69:                               @ %lor.lhs.false230.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldrne	r4, [sp, #104]
	strne	r2, [sp, #36]           @ 4-byte Spill
	cmpne	r4, #0
	bne	.LBB0_134
	b	.LBB0_245
.LBB0_70:                               @ %if.then78.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r10, [r12, #8]
	str	r2, [sp, #36]           @ 4-byte Spill
	mov	r5, r10
	ldr	r0, [r5, #8]!
	cmp	r0, #0
	beq	.LBB0_132
	b	.LBB0_71
.LBB0_71:                               @ %while.body81.lr.ph.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r1, [sp, #28]           @ 4-byte Reload
	cmp	lr, #1
	mov	r0, #0
	movlt	r0, #1
	b	.LBB0_72
.LBB0_72:                               @ %while.body81.lr.ph.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	cmp	r1, #0
	mov	r1, #0
	moveq	r1, #1
	cmp	r6, #10
	b	.LBB0_73
.LBB0_73:                               @ %while.body81.lr.ph.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	and	r0, r1, r0
	ldr	r1, [sp, #68]           @ 4-byte Reload
	str	r0, [sp, #88]           @ 4-byte Spill
	mov	r0, #0
	b	.LBB0_74
.LBB0_74:                               @ %while.body81.lr.ph.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	moveq	r0, #1
	cmp	r1, #0
	movne	r1, #1
	and	r0, r1, r0
	str	r0, [sp, #96]           @ 4-byte Spill
	b	.LBB0_75
.LBB0_75:                               @ %while.body81.lr.ph.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_76 Depth 3
                                        @       Child Loop BB0_118 Depth 3
                                        @       Child Loop BB0_122 Depth 3
                                        @       Child Loop BB0_127 Depth 3
	ldr	r4, [sp, #88]           @ 4-byte Reload
	add	r0, r10, #20
	mov	r8, r5
	b	.LBB0_76
.LBB0_76:                               @ %while.body81.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_75 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r5, r0
	ldr	r0, [r5, #-8]
	ldr	r0, [r9, r0, lsl #3]
	cmp	r0, lr
	bge	.LBB0_125
	b	.LBB0_77
.LBB0_77:                               @ %if.then85.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_115
	b	.LBB0_78
.LBB0_78:                               @ %land.lhs.true.i66
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r2, [sp, #96]           @ 4-byte Reload
	tst	r0, #1
	mov	r1, #0
	moveq	r1, #1
	orr	r1, r1, r4
	orrs	r1, r2, r1
	beq	.LBB0_114
	b	.LBB0_79
.LBB0_79:                               @ %lor.lhs.false97.i
                                        @   in Loop: Header=BB0_76 Depth=3
	tst	r0, #2
	beq	.LBB0_83
	b	.LBB0_80
.LBB0_80:                               @ %land.lhs.true101.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r3, [sp, #104]
	ldr	r2, [sp, #68]           @ 4-byte Reload
	ldr	r7, [sp, #64]           @ 4-byte Reload
	mov	r1, #0
	b	.LBB0_81
.LBB0_81:                               @ %land.lhs.true101.i
                                        @   in Loop: Header=BB0_76 Depth=3
	cmp	r3, #10
	moveq	r1, #1
	cmp	r2, #0
	movne	r2, #1
	b	.LBB0_82
.LBB0_82:                               @ %land.lhs.true101.i
                                        @   in Loop: Header=BB0_76 Depth=3
	orrs	r3, r3, r7
	andne	r1, r2, r1
	cmpne	r1, #1
	bne	.LBB0_114
	b	.LBB0_83
.LBB0_83:                               @ %lor.lhs.false109.i69
                                        @   in Loop: Header=BB0_76 Depth=3
	tst	r0, #16
	beq	.LBB0_90
	b	.LBB0_84
.LBB0_84:                               @ %land.lhs.true113.i
                                        @   in Loop: Header=BB0_76 Depth=3
	cmp	r6, #95
	beq	.LBB0_114
	b	.LBB0_85
.LBB0_85:                               @ %lor.lhs.false115.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r0, r6
	mov	r7, r12
	mov	r4, lr
	bl	iswalnum
	b	.LBB0_86
.LBB0_86:                               @ %lor.lhs.false115.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	lr, r4
	ldr	r4, [sp, #88]           @ 4-byte Reload
	mov	r12, r7
	cmp	r0, #0
	bne	.LBB0_114
	b	.LBB0_87
.LBB0_87:                               @ %lor.lhs.false118.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r0, [sp, #104]
	cmp	r0, #95
	beq	.LBB0_90
	b	.LBB0_88
.LBB0_88:                               @ %lor.lhs.false120.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r7, r12
	mov	r4, lr
	bl	iswalnum
	mov	lr, r4
	b	.LBB0_89
.LBB0_89:                               @ %lor.lhs.false120.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r4, [sp, #88]           @ 4-byte Reload
	mov	r12, r7
	cmp	r0, #0
	beq	.LBB0_114
	b	.LBB0_90
.LBB0_90:                               @ %lor.lhs.false123.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r1, [r5]
	tst	r1, #32
	beq	.LBB0_98
	b	.LBB0_91
.LBB0_91:                               @ %land.lhs.true127.i
                                        @   in Loop: Header=BB0_76 Depth=3
	cmp	r6, #95
	beq	.LBB0_94
	b	.LBB0_92
.LBB0_92:                               @ %lor.lhs.false129.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r0, r6
	mov	r7, r12
	str	lr, [sp, #76]           @ 4-byte Spill
	bl	iswalnum
	b	.LBB0_93
.LBB0_93:                               @ %lor.lhs.false129.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r12, r7
	cmp	r0, #0
	beq	.LBB0_114
	b	.LBB0_94
.LBB0_94:                               @ %lor.lhs.false132.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r0, [sp, #104]
	cmp	r0, #95
	beq	.LBB0_114
	b	.LBB0_95
.LBB0_95:                               @ %lor.lhs.false134.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r7, r12
	mov	r4, lr
	bl	iswalnum
	mov	lr, r4
	b	.LBB0_96
.LBB0_96:                               @ %lor.lhs.false134.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r4, [sp, #88]           @ 4-byte Reload
	mov	r12, r7
	cmp	r0, #0
	bne	.LBB0_114
	b	.LBB0_97
.LBB0_97:                               @ %lor.lhs.false134.lor.lhs.false137_crit_edge.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r1, [r5]
	b	.LBB0_98
.LBB0_98:                               @ %lor.lhs.false137.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r0, [sp, #104]
	cmp	r0, #0
	beq	.LBB0_106
	b	.LBB0_99
.LBB0_99:                               @ %lor.lhs.false137.i
                                        @   in Loop: Header=BB0_76 Depth=3
	cmp	lr, #0
	andsne	r1, r1, #64
	beq	.LBB0_106
	b	.LBB0_100
.LBB0_100:                              @ %land.lhs.true145.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r7, r9
	mov	r4, lr
	mov	r9, r12
	mov	r1, #1
	cmp	r6, #95
	beq	.LBB0_102
	b	.LBB0_101
.LBB0_101:                              @ %lor.rhs.i74
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r0, r6
	bl	iswalnum
	mov	r1, r0
	ldr	r0, [sp, #104]
	cmp	r1, #0
	movne	r1, #1
	b	.LBB0_102
.LBB0_102:                              @ %lor.end.i76
                                        @   in Loop: Header=BB0_76 Depth=3
	cmp	r0, #95
	bne	.LBB0_104
	b	.LBB0_103
.LBB0_103:                              @ %lor.end.lor.end153_crit_edge.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	lr, r4
	ldr	r4, [sp, #88]           @ 4-byte Reload
	mov	r12, r9
	mov	r9, r7
	cmp	r1, #0
	beq	.LBB0_106
	b	.LBB0_114
.LBB0_104:                              @ %lor.end153.i
                                        @   in Loop: Header=BB0_76 Depth=3
	str	r1, [sp, #44]           @ 4-byte Spill
	bl	iswalnum
	mov	lr, r4
	ldr	r1, [sp, #44]           @ 4-byte Reload
	b	.LBB0_105
.LBB0_105:                              @ %lor.end153.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r4, [sp, #88]           @ 4-byte Reload
	cmp	r0, #0
	mov	r12, r9
	mov	r9, r7
	movne	r0, #1
	teq	r1, r0
	beq	.LBB0_114
	b	.LBB0_106
.LBB0_106:                              @ %lor.lhs.false156.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldrb	r0, [r5]
	tst	r0, #128
	beq	.LBB0_115
	b	.LBB0_107
.LBB0_107:                              @ %land.lhs.true160.i
                                        @   in Loop: Header=BB0_76 Depth=3
	cmp	lr, #0
	ldrne	r0, [sp, #104]
	cmpne	r0, #0
	beq	.LBB0_114
	b	.LBB0_108
.LBB0_108:                              @ %lor.lhs.false164.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r7, r9
	mov	r4, lr
	mov	r9, r12
	mov	r1, #1
	cmp	r6, #95
	beq	.LBB0_110
	b	.LBB0_109
.LBB0_109:                              @ %lor.rhs166.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	r0, r6
	bl	iswalnum
	mov	r1, r0
	ldr	r0, [sp, #104]
	cmp	r1, #0
	movne	r1, #1
	b	.LBB0_110
.LBB0_110:                              @ %lor.end169.i
                                        @   in Loop: Header=BB0_76 Depth=3
	cmp	r0, #95
	bne	.LBB0_112
	b	.LBB0_111
.LBB0_111:                              @ %lor.end169.lor.end175_crit_edge.i
                                        @   in Loop: Header=BB0_76 Depth=3
	mov	lr, r4
	ldr	r4, [sp, #88]           @ 4-byte Reload
	mov	r12, r9
	mov	r9, r7
	cmp	r1, #0
	beq	.LBB0_114
	b	.LBB0_115
.LBB0_112:                              @ %lor.end175.i
                                        @   in Loop: Header=BB0_76 Depth=3
	str	r1, [sp, #44]           @ 4-byte Spill
	bl	iswalnum
	mov	lr, r4
	ldr	r1, [sp, #44]           @ 4-byte Reload
	b	.LBB0_113
.LBB0_113:                              @ %lor.end175.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r4, [sp, #88]           @ 4-byte Reload
	cmp	r0, #0
	mov	r12, r9
	mov	r9, r7
	movne	r0, #1
	teq	r1, r0
	beq	.LBB0_115
	b	.LBB0_114
.LBB0_114:                              @ %if.then178.i
                                        @   in Loop: Header=BB0_76 Depth=3
	ldr	r1, [r5, #20]
	add	r8, r10, #40
	add	r0, r5, #32
	add	r10, r10, #32
	cmp	r1, #0
	bne	.LBB0_76
	b	.LBB0_131
.LBB0_115:                              @ %if.end179.i
                                        @   in Loop: Header=BB0_75 Depth=2
	str	r4, [sp, #88]           @ 4-byte Spill
	ldr	r4, [sp, #40]           @ 4-byte Reload
	ldr	r0, [r8]
	ldr	r10, [sp, #80]          @ 4-byte Reload
	b	.LBB0_116
.LBB0_116:                              @ %if.end179.i
                                        @   in Loop: Header=BB0_75 Depth=2
	mvn	r3, #0
	str	r0, [r10]
	cmp	r4, #1
	blt	.LBB0_119
	b	.LBB0_117
.LBB0_117:                              @ %for.body184.lr.ph.i
                                        @   in Loop: Header=BB0_75 Depth=2
	ldr	r1, [r10, #4]
	mov	r2, r4
	b	.LBB0_118
.LBB0_118:                              @ %for.body184.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_75 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	str	r3, [r1], #4
	subs	r2, r2, #1
	bne	.LBB0_118
	b	.LBB0_119
.LBB0_119:                              @ %for.end189.i
                                        @   in Loop: Header=BB0_75 Depth=2
	ldr	r2, [r5, #-4]
	ldr	r7, [sp, #56]           @ 4-byte Reload
	ldr	r8, [sp, #84]           @ 4-byte Reload
	cmp	r2, #0
	beq	.LBB0_123
	b	.LBB0_120
.LBB0_120:                              @ %while.cond193.preheader.i
                                        @   in Loop: Header=BB0_75 Depth=2
	ldr	r1, [r2]
	cmp	r1, #0
	blt	.LBB0_123
	b	.LBB0_121
.LBB0_121:                              @ %while.body195.lr.ph.i
                                        @   in Loop: Header=BB0_75 Depth=2
	add	r2, r2, #4
	b	.LBB0_122
.LBB0_122:                              @ %while.body195.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_75 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r1, r4
	ldrlt	r3, [r10, #4]
	strlt	lr, [r3, r1, lsl #2]
	ldr	r1, [r2], #4
	cmp	r1, #0
	bge	.LBB0_122
	b	.LBB0_123
.LBB0_123:                              @ %if.end202.i
                                        @   in Loop: Header=BB0_75 Depth=2
	ldr	r1, [r12, #12]
	ldr	r3, [sp, #16]           @ 4-byte Reload
	mov	r2, #0
	cmp	r0, r1
	movne	r2, #1
	orrs	r2, r2, r3
	beq	.LBB0_126
	b	.LBB0_124
.LBB0_124:                              @ %if.end202.i.if.end215.i_crit_edge
                                        @   in Loop: Header=BB0_75 Depth=2
	cmp	r0, r1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	moveq	r0, lr
	moveq	r8, #1
	str	r0, [sp, #60]           @ 4-byte Spill
	str	r8, [sp, #84]           @ 4-byte Spill
	add	r0, r10, #4
	b	.LBB0_129
.LBB0_125:                              @   in Loop: Header=BB0_75 Depth=2
	str	r4, [sp, #88]           @ 4-byte Spill
	ldr	r4, [sp, #40]           @ 4-byte Reload
	b	.LBB0_130
.LBB0_126:                              @ %for.body208.lr.ph.i
                                        @   in Loop: Header=BB0_75 Depth=2
	mov	r0, r10
	mov	r2, r7
	mov	r3, r4
	ldr	r1, [r0, #4]!
	b	.LBB0_127
.LBB0_127:                              @ %for.body208.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_75 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r7, [r1], #4
	subs	r3, r3, #1
	str	r7, [r2], #4
	bne	.LBB0_127
	b	.LBB0_128
.LBB0_128:                              @   in Loop: Header=BB0_75 Depth=2
	mov	r1, #1
	str	lr, [sp, #60]           @ 4-byte Spill
	str	r1, [sp, #84]           @ 4-byte Spill
	b	.LBB0_129
.LBB0_129:                              @ %if.end215.i
                                        @   in Loop: Header=BB0_75 Depth=2
	ldr	r1, [r5, #-8]
	mov	r2, r9
	add	r10, r10, #8
	str	lr, [r2, r1, lsl #3]!
	str	r10, [sp, #80]          @ 4-byte Spill
	str	r0, [r2, #4]
	b	.LBB0_130
.LBB0_130:                              @ %if.end224.i
                                        @   in Loop: Header=BB0_75 Depth=2
	ldr	r0, [r5, #20]!
	sub	r10, r5, #8
	cmp	r0, #0
	bne	.LBB0_75
	b	.LBB0_132
.LBB0_131:                              @   in Loop: Header=BB0_66 Depth=1
	ldr	r4, [sp, #40]           @ 4-byte Reload
	b	.LBB0_132
.LBB0_132:                              @ %while.end226.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r1, [sp, #80]           @ 4-byte Reload
	mov	r0, #0
	mov	r5, r4
	ldr	r10, [sp, #56]          @ 4-byte Reload
	b	.LBB0_133
.LBB0_133:                              @ %while.end226.i
                                        @   in Loop: Header=BB0_66 Depth=1
	mov	r8, r12
	str	r0, [r1]
	ldr	r4, [sp, #104]
	cmp	r4, #0
	beq	.LBB0_245
	b	.LBB0_134
.LBB0_134:                              @ %do.body238.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r1, [sp, #52]           @ 4-byte Reload
	add	r0, sp, #104
	mov	r2, #4
	str	lr, [sp, #76]           @ 4-byte Spill
	b	.LBB0_135
.LBB0_135:                              @ %do.body238.i
                                        @   in Loop: Header=BB0_66 Depth=1
	bl	mbtowc
	cmp	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	movle	r0, #1
	strle	r0, [sp, #44]           @ 4-byte Spill
	blt	.LBB0_246
	b	.LBB0_136
.LBB0_136:                              @ %if.end248.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [sp, #84]           @ 4-byte Reload
	mov	r6, r4
	cmp	r0, #0
	beq	.LBB0_149
	b	.LBB0_137
.LBB0_137:                              @ %if.end248.i
                                        @   in Loop: Header=BB0_66 Depth=1
	mov	r12, r8
	mov	r4, r5
	ldr	r0, [r12, #44]
	cmp	r0, #0
	beq	.LBB0_150
	b	.LBB0_138
.LBB0_138:                              @ %for.cond255.preheader.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [sp, #92]           @ 4-byte Reload
	ldr	r8, [sp, #48]           @ 4-byte Reload
	mov	r9, r12
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB0_148
	b	.LBB0_139
.LBB0_139:                              @ %for.cond259.preheader.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r12, [r9, #36]
	ldr	lr, [r12], #4
	ldr	r8, [sp, #48]           @ 4-byte Reload
	ldr	r3, [sp, #92]           @ 4-byte Reload
	b	.LBB0_140
.LBB0_140:                              @ %for.cond259.preheader.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_141 Depth 3
	mov	r5, r12
	mov	r2, lr
	cmp	lr, #0
	blt	.LBB0_145
	b	.LBB0_141
.LBB0_141:                              @ %for.body262.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_140 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r2, r4
	bge	.LBB0_147
	b	.LBB0_142
.LBB0_142:                              @ %if.else270.i
                                        @   in Loop: Header=BB0_141 Depth=3
	ldr	r1, [r5]
	ldr	r7, [r3, #4]
	ldr	r0, [r10, r1, lsl #2]
	ldr	r1, [r7, r1, lsl #2]
	cmp	r1, r0
	bne	.LBB0_144
	b	.LBB0_143
.LBB0_143:                              @ %land.lhs.true275.i
                                        @   in Loop: Header=BB0_141 Depth=3
	ldr	r0, [r10, r2, lsl #2]
	ldr	r1, [r7, r2, lsl #2]
	cmp	r1, r0
	blt	.LBB0_147
	b	.LBB0_144
.LBB0_144:                              @ %for.inc283.i
                                        @   in Loop: Header=BB0_141 Depth=3
	ldr	r2, [r5, #4]
	add	r0, r5, #8
	mov	r5, r0
	cmp	r2, #0
	bge	.LBB0_141
	b	.LBB0_146
.LBB0_145:                              @ %for.cond259.preheader.if.then287.critedge_crit_edge.i
                                        @   in Loop: Header=BB0_140 Depth=2
	ldr	r7, [r3, #4]
	b	.LBB0_146
.LBB0_146:                              @ %if.then287.critedge.i
                                        @   in Loop: Header=BB0_140 Depth=2
	ldr	r0, [r3]
	str	r0, [r8]
	ldr	r0, [r8, #4]
	str	r7, [r8, #4]
	add	r8, r8, #8
	str	r0, [r3, #4]
	b	.LBB0_147
.LBB0_147:                              @ %for.inc296.i
                                        @   in Loop: Header=BB0_140 Depth=2
	ldr	r0, [r3, #8]!
	cmp	r0, #0
	bne	.LBB0_140
	b	.LBB0_148
.LBB0_148:                              @ %for.end298.i
                                        @   in Loop: Header=BB0_66 Depth=1
	mov	r12, r9
	ldr	r7, [sp, #92]           @ 4-byte Reload
	ldr	r9, [sp, #72]           @ 4-byte Reload
	ldr	r3, [sp, #48]           @ 4-byte Reload
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r1, #0
	str	r1, [r8]
	b	.LBB0_151
.LBB0_149:                              @   in Loop: Header=BB0_66 Depth=1
	ldr	r7, [sp, #48]           @ 4-byte Reload
	ldr	r3, [sp, #92]           @ 4-byte Reload
	ldr	lr, [sp, #76]           @ 4-byte Reload
	ldr	r1, [sp, #84]           @ 4-byte Reload
	mov	r12, r8
	mov	r4, r5
	b	.LBB0_151
.LBB0_150:                              @   in Loop: Header=BB0_66 Depth=1
	ldr	r7, [sp, #48]           @ 4-byte Reload
	ldr	r3, [sp, #92]           @ 4-byte Reload
	ldr	lr, [sp, #76]           @ 4-byte Reload
	ldr	r1, [sp, #84]           @ 4-byte Reload
	b	.LBB0_151
.LBB0_151:                              @ %if.end300.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	add	lr, lr, r0
	ldr	r0, [r3]
	str	lr, [sp, #76]           @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB0_244
	b	.LBB0_152
.LBB0_152:                              @ %for.cond306.preheader.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	ldr	r2, [sp, #28]           @ 4-byte Reload
	str	r1, [sp, #84]           @ 4-byte Spill
	cmp	lr, #1
	mov	r1, #0
	b	.LBB0_153
.LBB0_153:                              @ %for.cond306.preheader.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	str	r7, [sp, #80]           @ 4-byte Spill
	str	r7, [sp, #36]           @ 4-byte Spill
	str	r3, [sp, #96]           @ 4-byte Spill
	str	r3, [sp, #48]           @ 4-byte Spill
	b	.LBB0_154
.LBB0_154:                              @ %for.cond306.preheader.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	movlt	r1, #1
	cmp	r2, #0
	mov	r2, #0
	moveq	r2, #1
	b	.LBB0_155
.LBB0_155:                              @ %for.cond306.preheader.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	cmp	r6, #10
	and	r1, r2, r1
	ldr	r2, [sp, #68]           @ 4-byte Reload
	str	r1, [sp, #92]           @ 4-byte Spill
	b	.LBB0_156
.LBB0_156:                              @ %for.cond306.preheader.lr.ph.i
                                        @   in Loop: Header=BB0_66 Depth=1
	mov	r1, #0
	moveq	r1, #1
	cmp	r2, #0
	movne	r2, #1
	and	r1, r2, r1
	str	r1, [sp, #88]           @ 4-byte Spill
	b	.LBB0_157
.LBB0_157:                              @ %for.cond306.preheader.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_188 Depth 3
                                        @         Child Loop BB0_160 Depth 4
                                        @         Child Loop BB0_164 Depth 4
                                        @         Child Loop BB0_177 Depth 4
                                        @         Child Loop BB0_183 Depth 4
	mov	r10, r0
	ldr	r1, [r10, #8]!
	cmp	r1, #0
	bne	.LBB0_188
	b	.LBB0_243
.LBB0_158:                              @ %for.cond454.preheader.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	r4, #1
	blt	.LBB0_161
	b	.LBB0_159
.LBB0_159:                              @ %for.body456.lr.ph.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [sp, #96]           @ 4-byte Reload
	mov	r1, r8
	mov	r2, r4
	ldr	r0, [r0, #4]
	b	.LBB0_160
.LBB0_160:                              @ %for.body456.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_157 Depth=2
                                        @       Parent Loop BB0_188 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r3, [r0], #4
	subs	r2, r2, #1
	str	r3, [r1], #4
	bne	.LBB0_160
	b	.LBB0_161
.LBB0_161:                              @ %for.end462.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r1, [r5, #16]
	cmp	r1, #0
	beq	.LBB0_165
	b	.LBB0_162
.LBB0_162:                              @ %while.cond466.preheader.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [r1]
	cmp	r0, #0
	blt	.LBB0_165
	b	.LBB0_163
.LBB0_163:                              @ %while.body468.i.preheader
                                        @   in Loop: Header=BB0_188 Depth=3
	add	r1, r1, #4
	b	.LBB0_164
.LBB0_164:                              @ %while.body468.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_157 Depth=2
                                        @       Parent Loop BB0_188 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	cmp	r0, r4
	strlt	lr, [r8, r0, lsl #2]
	ldr	r0, [r1], #4
	cmp	r0, #0
	bge	.LBB0_164
	b	.LBB0_165
.LBB0_165:                              @ %if.end475.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [r5, #12]
	ldr	r1, [r9, r0, lsl #3]
	cmp	r1, lr
	bge	.LBB0_173
	b	.LBB0_166
.LBB0_166:                              @ %if.then480.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r7, [sp, #80]           @ 4-byte Reload
	ldr	r1, [r10]
	mov	r3, r9
	str	r1, [r7]
	b	.LBB0_167
.LBB0_167:                              @ %if.then480.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r2, r7
	ldr	r11, [r2, #4]!
	str	r8, [r2]
	str	lr, [r3, r0, lsl #3]!
	b	.LBB0_168
.LBB0_168:                              @ %if.then480.i
                                        @   in Loop: Header=BB0_188 Depth=3
	str	r2, [r3, #4]
	ldr	r0, [r12, #12]
	cmp	r1, r0
	bne	.LBB0_180
	b	.LBB0_169
.LBB0_169:                              @ %land.lhs.true495.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [sp, #60]           @ 4-byte Reload
	cmn	r0, #1
	beq	.LBB0_182
	b	.LBB0_170
.LBB0_170:                              @ %lor.lhs.false497.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	r4, #1
	blt	.LBB0_180
	b	.LBB0_171
.LBB0_171:                              @ %land.lhs.true499.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r2, [sp, #56]           @ 4-byte Reload
	ldr	r1, [r8]
	ldr	r0, [r2]
	cmp	r1, r0
	b	.LBB0_172
.LBB0_172:                              @ %land.lhs.true499.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r0, r2
	ldr	r2, [sp, #84]           @ 4-byte Reload
	mov	r1, r4
	ble	.LBB0_183
	b	.LBB0_185
.LBB0_173:                              @ %if.else516.i
                                        @   in Loop: Header=BB0_188 Depth=3
	add	r0, r9, r0, lsl #3
	ldr	r1, [r12, #32]
	mov	r2, r8
	mov	r7, r12
	b	.LBB0_174
.LBB0_174:                              @ %if.else516.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r9, [r0, #4]
	mov	r0, r4
	ldr	r11, [r9]
	mov	r3, r11
	bl	tre_tag_order
	cmp	r0, #0
	beq	.LBB0_181
	b	.LBB0_175
.LBB0_175:                              @ %if.then522.i99
                                        @   in Loop: Header=BB0_188 Depth=3
	str	r8, [r9]
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r12, r7
	ldr	r0, [r7, #12]
	ldr	r1, [r10]
	cmp	r1, r0
	bne	.LBB0_179
	b	.LBB0_176
.LBB0_176:                              @ %for.cond533.preheader.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [sp, #56]           @ 4-byte Reload
	mov	r1, r4
	cmp	r4, #1
	blt	.LBB0_178
	b	.LBB0_177
.LBB0_177:                              @ %for.body535.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_157 Depth=2
                                        @       Parent Loop BB0_188 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r2, [r8], #4
	subs	r1, r1, #1
	str	r2, [r0], #4
	bne	.LBB0_177
	b	.LBB0_178
.LBB0_178:                              @   in Loop: Header=BB0_188 Depth=3
	mov	r0, #1
	str	lr, [sp, #60]           @ 4-byte Spill
	str	r0, [sp, #84]           @ 4-byte Spill
	b	.LBB0_179
.LBB0_179:                              @ %for.inc545.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r9, [sp, #72]           @ 4-byte Reload
	b	.LBB0_242
.LBB0_180:                              @   in Loop: Header=BB0_188 Depth=3
	ldr	r2, [sp, #84]           @ 4-byte Reload
	b	.LBB0_185
.LBB0_181:                              @   in Loop: Header=BB0_188 Depth=3
	ldr	r9, [sp, #72]           @ 4-byte Reload
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r11, r8
	mov	r12, r7
	b	.LBB0_242
.LBB0_182:                              @ %for.cond505.preheader.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [sp, #56]           @ 4-byte Reload
	mov	r2, #1
	mov	r1, r4
	cmp	r4, #1
	str	lr, [sp, #60]           @ 4-byte Spill
	blt	.LBB0_185
	b	.LBB0_183
.LBB0_183:                              @ %for.body507.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_157 Depth=2
                                        @       Parent Loop BB0_188 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r2, [r8], #4
	subs	r1, r1, #1
	str	r2, [r0], #4
	mov	r2, #1
	bne	.LBB0_183
	b	.LBB0_184
.LBB0_184:                              @   in Loop: Header=BB0_188 Depth=3
	str	lr, [sp, #60]           @ 4-byte Spill
	b	.LBB0_185
.LBB0_185:                              @ %if.end514.i
                                        @   in Loop: Header=BB0_188 Depth=3
	add	r7, r7, #8
	str	r2, [sp, #84]           @ 4-byte Spill
	str	r7, [sp, #80]           @ 4-byte Spill
	b	.LBB0_242
.LBB0_186:                              @   in Loop: Header=BB0_188 Depth=3
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r11, r8
	b	.LBB0_242
.LBB0_187:                              @   in Loop: Header=BB0_188 Depth=3
	ldr	r4, [sp, #40]           @ 4-byte Reload
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r12, r9
	mov	r11, r8
	mov	r9, r7
	b	.LBB0_242
.LBB0_188:                              @ %for.body309.i
                                        @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_157 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_160 Depth 4
                                        @         Child Loop BB0_164 Depth 4
                                        @         Child Loop BB0_177 Depth 4
                                        @         Child Loop BB0_183 Depth 4
	mov	r5, r0
	mov	r8, r11
	ldr	r0, [r5]
	cmp	r0, r6
	bhi	.LBB0_241
	b	.LBB0_189
.LBB0_189:                              @ %land.lhs.true311.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [r5, #4]
	cmp	r0, r6
	blo	.LBB0_241
	b	.LBB0_190
.LBB0_190:                              @ %if.then313.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [r5, #20]
	cmp	r0, #0
	beq	.LBB0_158
	b	.LBB0_191
.LBB0_191:                              @ %land.lhs.true316.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r2, [sp, #92]           @ 4-byte Reload
	tst	r0, #1
	mov	r1, #0
	moveq	r1, #1
	b	.LBB0_192
.LBB0_192:                              @ %land.lhs.true316.i
                                        @   in Loop: Header=BB0_188 Depth=3
	orr	r1, r1, r2
	ldr	r2, [sp, #88]           @ 4-byte Reload
	orrs	r1, r2, r1
	beq	.LBB0_241
	b	.LBB0_193
.LBB0_193:                              @ %lor.lhs.false328.i
                                        @   in Loop: Header=BB0_188 Depth=3
	tst	r0, #2
	beq	.LBB0_197
	b	.LBB0_194
.LBB0_194:                              @ %land.lhs.true332.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r3, [sp, #104]
	ldr	r2, [sp, #68]           @ 4-byte Reload
	ldr	r7, [sp, #64]           @ 4-byte Reload
	mov	r1, #0
	b	.LBB0_195
.LBB0_195:                              @ %land.lhs.true332.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	r3, #10
	moveq	r1, #1
	cmp	r2, #0
	movne	r2, #1
	b	.LBB0_196
.LBB0_196:                              @ %land.lhs.true332.i
                                        @   in Loop: Header=BB0_188 Depth=3
	orrs	r3, r3, r7
	andne	r1, r2, r1
	cmpne	r1, #1
	bne	.LBB0_241
	b	.LBB0_197
.LBB0_197:                              @ %lor.lhs.false340.i
                                        @   in Loop: Header=BB0_188 Depth=3
	tst	r0, #16
	beq	.LBB0_204
	b	.LBB0_198
.LBB0_198:                              @ %land.lhs.true344.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	r6, #95
	beq	.LBB0_241
	b	.LBB0_199
.LBB0_199:                              @ %lor.lhs.false346.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r0, r6
	mov	r9, r4
	mov	r4, lr
	mov	r7, r12
	bl	iswalnum
	cmp	r0, #0
	beq	.LBB0_201
	b	.LBB0_200
.LBB0_200:                              @   in Loop: Header=BB0_188 Depth=3
	mov	lr, r4
	mov	r11, r8
	mov	r12, r7
	mov	r4, r9
	b	.LBB0_179
.LBB0_201:                              @ %lor.lhs.false349.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [sp, #104]
	mov	lr, r4
	mov	r4, r9
	ldr	r9, [sp, #72]           @ 4-byte Reload
	mov	r12, r7
	cmp	r0, #95
	beq	.LBB0_204
	b	.LBB0_202
.LBB0_202:                              @ %lor.lhs.false351.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r11, r9
	mov	r9, r4
	mov	r7, r12
	mov	r4, lr
	b	.LBB0_203
.LBB0_203:                              @ %lor.lhs.false351.i
                                        @   in Loop: Header=BB0_188 Depth=3
	bl	iswalnum
	mov	lr, r4
	mov	r4, r9
	mov	r9, r11
	mov	r12, r7
	cmp	r0, #0
	beq	.LBB0_241
	b	.LBB0_204
.LBB0_204:                              @ %lor.lhs.false354.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r1, [r5, #20]
	tst	r1, #32
	beq	.LBB0_211
	b	.LBB0_205
.LBB0_205:                              @ %land.lhs.true358.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r7, r9
	mov	r9, r12
	cmp	r6, #95
	beq	.LBB0_207
	b	.LBB0_206
.LBB0_206:                              @ %lor.lhs.false360.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r0, r6
	bl	iswalnum
	cmp	r0, #0
	beq	.LBB0_209
	b	.LBB0_207
.LBB0_207:                              @ %lor.lhs.false363.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [sp, #104]
	cmp	r0, #95
	beq	.LBB0_209
	b	.LBB0_208
.LBB0_208:                              @ %lor.lhs.false365.i
                                        @   in Loop: Header=BB0_188 Depth=3
	bl	iswalnum
	cmp	r0, #0
	beq	.LBB0_210
	b	.LBB0_209
.LBB0_209:                              @   in Loop: Header=BB0_188 Depth=3
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r12, r9
	mov	r11, r8
	mov	r9, r7
	b	.LBB0_242
.LBB0_210:                              @ %lor.lhs.false365.lor.lhs.false368_crit_edge.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r1, [r5, #20]
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r12, r9
	mov	r9, r7
	b	.LBB0_211
.LBB0_211:                              @ %lor.lhs.false368.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [sp, #104]
	cmp	r0, #0
	beq	.LBB0_219
	b	.LBB0_212
.LBB0_212:                              @ %lor.lhs.false368.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	lr, #0
	andsne	r1, r1, #64
	beq	.LBB0_219
	b	.LBB0_213
.LBB0_213:                              @ %land.lhs.true376.i87
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r7, r9
	mov	r9, r12
	mov	r11, #1
	cmp	r6, #95
	beq	.LBB0_215
	b	.LBB0_214
.LBB0_214:                              @ %lor.rhs378.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r0, r6
	bl	iswalnum
	mov	r11, r0
	ldr	r0, [sp, #104]
	cmp	r11, #0
	movne	r11, #1
	b	.LBB0_215
.LBB0_215:                              @ %lor.end381.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	r0, #95
	bne	.LBB0_217
	b	.LBB0_216
.LBB0_216:                              @ %lor.end381.lor.end387_crit_edge.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	lr, [sp, #76]           @ 4-byte Reload
	mov	r12, r9
	mov	r9, r7
	cmp	r11, #0
	bne	.LBB0_241
	b	.LBB0_219
.LBB0_217:                              @ %lor.end387.i
                                        @   in Loop: Header=BB0_188 Depth=3
	bl	iswalnum
	ldr	lr, [sp, #76]           @ 4-byte Reload
	cmp	r0, #0
	mov	r12, r9
	b	.LBB0_218
.LBB0_218:                              @ %lor.end387.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r9, r7
	movne	r0, #1
	teq	r11, r0
	beq	.LBB0_241
	b	.LBB0_219
.LBB0_219:                              @ %lor.lhs.false390.i88
                                        @   in Loop: Header=BB0_188 Depth=3
	ldrb	r0, [r5, #20]
	tst	r0, #128
	beq	.LBB0_228
	b	.LBB0_220
.LBB0_220:                              @ %land.lhs.true394.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	lr, #0
	ldrne	r0, [sp, #104]
	cmpne	r0, #0
	beq	.LBB0_241
	b	.LBB0_221
.LBB0_221:                              @ %lor.lhs.false398.i89
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r11, #1
	cmp	r6, #95
	beq	.LBB0_224
	b	.LBB0_222
.LBB0_222:                              @ %lor.rhs400.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r0, r6
	mov	r7, r12
	mov	r4, lr
	bl	iswalnum
	b	.LBB0_223
.LBB0_223:                              @ %lor.rhs400.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r11, r0
	ldr	r0, [sp, #104]
	mov	lr, r4
	mov	r12, r7
	cmp	r11, #0
	movne	r11, #1
	b	.LBB0_224
.LBB0_224:                              @ %lor.end403.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r4, lr
	cmp	r0, #95
	bne	.LBB0_226
	b	.LBB0_225
.LBB0_225:                              @ %lor.end403.lor.end409_crit_edge.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	lr, r4
	ldr	r4, [sp, #40]           @ 4-byte Reload
	cmp	r11, #0
	beq	.LBB0_241
	b	.LBB0_228
.LBB0_226:                              @ %lor.end409.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r7, r12
	bl	iswalnum
	mov	lr, r4
	ldr	r4, [sp, #40]           @ 4-byte Reload
	b	.LBB0_227
.LBB0_227:                              @ %lor.end409.i
                                        @   in Loop: Header=BB0_188 Depth=3
	cmp	r0, #0
	mov	r12, r7
	movne	r0, #1
	teq	r11, r0
	bne	.LBB0_241
	b	.LBB0_228
.LBB0_228:                              @ %lor.lhs.false412.i92
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [r5, #20]
	tst	r0, #4
	beq	.LBB0_232
	b	.LBB0_229
.LBB0_229:                              @ %land.lhs.true416.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldrb	r1, [r12, #56]
	tst	r1, #2
	bne	.LBB0_232
	b	.LBB0_230
.LBB0_230:                              @ %land.lhs.true420.i94
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r1, [r5, #24]
	mov	r0, r6
	mov	r7, r9
	mov	r9, r12
	bl	iswctype
	cmp	r0, #0
	beq	.LBB0_187
	b	.LBB0_231
.LBB0_231:                              @ %land.lhs.true420.lor.lhs.false423_crit_edge.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r0, [r5, #20]
	ldr	r4, [sp, #40]           @ 4-byte Reload
	mov	r12, r9
	mov	r9, r7
	b	.LBB0_232
.LBB0_232:                              @ %lor.lhs.false423.i
                                        @   in Loop: Header=BB0_188 Depth=3
	tst	r0, #4
	ldrbne	r0, [r12, #56]
	tstne	r0, #2
	beq	.LBB0_237
	b	.LBB0_233
.LBB0_233:                              @ %land.lhs.true431.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r0, r6
	mov	r7, r12
	bl	towlower
	ldr	r1, [r5, #24]
	b	.LBB0_234
.LBB0_234:                              @ %land.lhs.true431.i
                                        @   in Loop: Header=BB0_188 Depth=3
	bl	iswctype
	mov	r12, r7
	cmp	r0, #0
	bne	.LBB0_237
	b	.LBB0_235
.LBB0_235:                              @ %land.lhs.true437.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r0, r6
	mov	r7, r12
	bl	towupper
	ldr	r1, [r5, #24]
	b	.LBB0_236
.LBB0_236:                              @ %land.lhs.true437.i
                                        @   in Loop: Header=BB0_188 Depth=3
	bl	iswctype
	mov	r12, r7
	cmp	r0, #0
	beq	.LBB0_186
	b	.LBB0_237
.LBB0_237:                              @ %lor.lhs.false443.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldrb	r0, [r5, #20]
	ldr	lr, [sp, #76]           @ 4-byte Reload
	tst	r0, #8
	beq	.LBB0_158
	b	.LBB0_238
.LBB0_238:                              @ %land.lhs.true447.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r1, [r12, #56]
	ldr	r0, [r5, #28]
	mov	r11, r9
	mov	r9, r4
	b	.LBB0_239
.LBB0_239:                              @ %land.lhs.true447.i
                                        @   in Loop: Header=BB0_188 Depth=3
	mov	r7, r12
	mov	r4, lr
	and	r2, r1, #2
	mov	r1, r6
	b	.LBB0_240
.LBB0_240:                              @ %land.lhs.true447.i
                                        @   in Loop: Header=BB0_188 Depth=3
	bl	tre_neg_char_classes_match
	mov	lr, r4
	mov	r4, r9
	mov	r9, r11
	mov	r12, r7
	cmp	r0, #0
	beq	.LBB0_158
	b	.LBB0_241
.LBB0_241:                              @   in Loop: Header=BB0_188 Depth=3
	mov	r11, r8
	b	.LBB0_242
.LBB0_242:                              @ %for.inc545.i
                                        @   in Loop: Header=BB0_188 Depth=3
	ldr	r1, [r5, #40]!
	sub	r0, r5, #8
	mov	r10, r5
	cmp	r1, #0
	bne	.LBB0_188
	b	.LBB0_243
.LBB0_243:                              @ %for.inc548.i
                                        @   in Loop: Header=BB0_157 Depth=2
	ldr	r1, [sp, #96]           @ 4-byte Reload
	ldr	r0, [r1, #8]!
	str	r1, [sp, #96]           @ 4-byte Spill
	cmp	r0, #0
	bne	.LBB0_157
	b	.LBB0_64
.LBB0_244:                              @   in Loop: Header=BB0_66 Depth=1
	str	r1, [sp, #84]           @ 4-byte Spill
	str	r3, [sp, #48]           @ 4-byte Spill
	str	r7, [sp, #80]           @ 4-byte Spill
	str	r7, [sp, #36]           @ 4-byte Spill
	b	.LBB0_64
.LBB0_245:                              @ %while.end552.i
	ldr	r0, [sp, #60]           @ 4-byte Reload
	lsr	r0, r0, #31
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_246
.LBB0_246:                              @ %error_exit.i102
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	free
	ldr	r4, [sp, #44]           @ 4-byte Reload
	mov	r3, r8
	b	.LBB0_490
.LBB0_247:                              @ %if.end657.thread.i
	mov	r0, r5
	bl	__tre_mem_destroy
	b	.LBB0_248
.LBB0_248:
                                        @ implicit-def: R0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r4, #12
	b	.LBB0_489
.LBB0_249:
	ldr	r10, [sp, #56]          @ 4-byte Reload
                                        @ implicit-def: R0
	mov	r4, #12
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r3, r8
	b	.LBB0_490
.LBB0_250:
                                        @ implicit-def: R0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r9, r6
	str	r5, [sp, #48]           @ 4-byte Spill
	b	.LBB0_251
.LBB0_251:
	mov	r4, #12
	mov	r11, #0
	mov	r0, #0
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_483
.LBB0_252:
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r4, #12
	mov	r11, #0
	b	.LBB0_254
.LBB0_253:
	mov	r4, #12
	b	.LBB0_254
.LBB0_254:                              @ %error_exit.i
                                        @ implicit-def: R0
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_483
.LBB0_255:                              @ %if.end646.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r7, [sp, #96]           @ 4-byte Spill
	ldr	r10, [sp, #56]          @ 4-byte Reload
	ldr	r7, [sp, #52]           @ 4-byte Reload
	str	r0, [sp, #100]
	ldr	r0, [sp, #72]           @ 4-byte Reload
	str	r0, [sp, #92]           @ 4-byte Spill
	b	.LBB0_256
.LBB0_256:                              @ %retry.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_257 Depth 2
                                        @     Child Loop BB0_259 Depth 2
                                        @     Child Loop BB0_271 Depth 2
                                        @       Child Loop BB0_325 Depth 3
                                        @       Child Loop BB0_329 Depth 3
                                        @     Child Loop BB0_336 Depth 2
                                        @     Child Loop BB0_347 Depth 2
                                        @     Child Loop BB0_350 Depth 2
                                        @       Child Loop BB0_369 Depth 3
                                        @         Child Loop BB0_434 Depth 4
                                        @         Child Loop BB0_438 Depth 4
                                        @       Child Loop BB0_447 Depth 3
                                        @     Child Loop BB0_461 Depth 2
	ldr	r0, [r3, #40]
	cmp	r0, #0
	mov	r0, #0
	ble	.LBB0_258
	b	.LBB0_257
.LBB0_257:                              @ %for.body.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r10, #0
	str	r5, [r6, r0, lsl #2]
	strne	r5, [r10, r0, lsl #2]
	add	r0, r0, #1
	ldr	r1, [r3, #40]
	cmp	r0, r1
	blt	.LBB0_257
	b	.LBB0_258
.LBB0_258:                              @ %for.cond38.preheader.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r1, [r3, #52]
	mov	r9, r6
	mov	r0, #0
	cmp	r1, #0
	ble	.LBB0_260
	b	.LBB0_259
.LBB0_259:                              @ %for.body41.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r8, [r11, r0, lsl #2]
	add	r0, r0, #1
	ldr	r1, [r3, #52]
	cmp	r0, r1
	blt	.LBB0_259
	b	.LBB0_260
.LBB0_260:                              @ %for.end45.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r8, [sp, #16]           @ 4-byte Reload
	ldr	r6, [sp, #100]
	add	r0, sp, #100
	mov	r2, #4
	b	.LBB0_261
.LBB0_261:                              @ %for.end45.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r1, r8
	bl	mbtowc
	cmp	r0, #0
	movle	r0, #1
	blt	.LBB0_470
	b	.LBB0_262
.LBB0_262:                              @ %if.end53.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r3, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #72]           @ 4-byte Spill
	add	r8, r8, r0
	ldr	r4, [sp, #12]           @ 4-byte Reload
	b	.LBB0_263
.LBB0_263:                              @ %if.end53.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r1, [sp, #92]           @ 4-byte Reload
	ldr	r0, [r3, #8]
	add	r4, r1, r4
	mov	r9, r0
	b	.LBB0_264
.LBB0_264:                              @ %if.end53.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r1, [r9, #8]!
	ldr	r2, [sp, #100]
	str	r2, [sp, #8]            @ 4-byte Spill
	cmp	r1, #0
	beq	.LBB0_339
	b	.LBB0_265
.LBB0_265:                              @ %for.body57.lr.ph.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r2, [sp, #40]           @ 4-byte Reload
	mov	r1, #0
	cmp	r4, #1
	mov	r10, r6
	b	.LBB0_266
.LBB0_266:                              @ %for.body57.lr.ph.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r12, #0
	mov	r11, r4
	str	r7, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #88]           @ 4-byte Spill
	b	.LBB0_267
.LBB0_267:                              @ %for.body57.lr.ph.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r1, #0
	str	r10, [sp, #76]          @ 4-byte Spill
	movlt	r1, #1
	cmp	r2, #0
	b	.LBB0_268
.LBB0_268:                              @ %for.body57.lr.ph.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r2, #0
	moveq	r2, #1
	cmp	r10, #10
	and	lr, r2, r1
	b	.LBB0_269
.LBB0_269:                              @ %for.body57.lr.ph.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r2, [sp, #80]           @ 4-byte Reload
	mov	r1, #0
	moveq	r1, #1
	str	lr, [sp, #64]           @ 4-byte Spill
	b	.LBB0_270
.LBB0_270:                              @ %for.body57.lr.ph.i
                                        @   in Loop: Header=BB0_256 Depth=1
	cmp	r2, #0
	movne	r2, #1
	and	r1, r2, r1
	str	r1, [sp, #92]           @ 4-byte Spill
	b	.LBB0_271
.LBB0_271:                              @ %for.body57.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_325 Depth 3
                                        @       Child Loop BB0_329 Depth 3
	mov	r7, r0
	ldr	r0, [r7, #20]
	cmp	r0, #0
	beq	.LBB0_311
	b	.LBB0_272
.LBB0_272:                              @ %land.lhs.true.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r2, [sp, #92]           @ 4-byte Reload
	tst	r0, #1
	mov	r1, #0
	moveq	r1, #1
	orr	r1, r1, lr
	orrs	r1, r2, r1
	beq	.LBB0_332
	b	.LBB0_273
.LBB0_273:                              @ %lor.lhs.false69.i
                                        @   in Loop: Header=BB0_271 Depth=2
	tst	r0, #2
	beq	.LBB0_277
	b	.LBB0_274
.LBB0_274:                              @ %land.lhs.true73.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r6, [sp, #100]
	ldr	r2, [sp, #80]           @ 4-byte Reload
	ldr	r4, [sp, #68]           @ 4-byte Reload
	mov	r1, #0
	b	.LBB0_275
.LBB0_275:                              @ %land.lhs.true73.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r5, r11
                                        @ kill: R11<def> R5<kill>
	cmp	r6, #10
	moveq	r1, #1
	b	.LBB0_276
.LBB0_276:                              @ %land.lhs.true73.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r2, #0
	movne	r2, #1
	orrs	r6, r6, r4
	andne	r1, r2, r1
	cmpne	r1, #1
	bne	.LBB0_332
	b	.LBB0_277
.LBB0_277:                              @ %lor.lhs.false81.i
                                        @   in Loop: Header=BB0_271 Depth=2
	tst	r0, #16
	beq	.LBB0_283
	b	.LBB0_278
.LBB0_278:                              @ %land.lhs.true85.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r10, #95
	beq	.LBB0_332
	b	.LBB0_279
.LBB0_279:                              @ %lor.lhs.false87.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r0, r10
	mov	r6, lr
	mov	r5, r12
	mov	r4, r3
	bl	iswalnum
	cmp	r0, #0
	bne	.LBB0_288
	b	.LBB0_280
.LBB0_280:                              @ %lor.lhs.false90.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [sp, #100]
	mov	r3, r4
	mov	r12, r5
	mov	lr, r6
	cmp	r0, #95
	beq	.LBB0_283
	b	.LBB0_281
.LBB0_281:                              @ %lor.lhs.false92.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r4, r3
	mov	r5, r12
	mov	r6, lr
	bl	iswalnum
	b	.LBB0_282
.LBB0_282:                              @ %lor.lhs.false92.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	lr, r6
	mov	r12, r5
	mov	r3, r4
	cmp	r0, #0
	beq	.LBB0_332
	b	.LBB0_283
.LBB0_283:                              @ %lor.lhs.false95.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r1, [r7, #20]
	tst	r1, #32
	beq	.LBB0_290
	b	.LBB0_284
.LBB0_284:                              @ %land.lhs.true99.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r6, lr
	mov	r5, r12
	mov	r4, r3
	cmp	r10, #95
	beq	.LBB0_286
	b	.LBB0_285
.LBB0_285:                              @ %lor.lhs.false101.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r0, r10
	bl	iswalnum
	cmp	r0, #0
	beq	.LBB0_288
	b	.LBB0_286
.LBB0_286:                              @ %lor.lhs.false104.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [sp, #100]
	cmp	r0, #95
	beq	.LBB0_288
	b	.LBB0_287
.LBB0_287:                              @ %lor.lhs.false106.i
                                        @   in Loop: Header=BB0_271 Depth=2
	bl	iswalnum
	cmp	r0, #0
	beq	.LBB0_289
	b	.LBB0_288
.LBB0_288:                              @   in Loop: Header=BB0_271 Depth=2
	mov	r3, r4
	mov	r12, r5
	mov	lr, r6
	b	.LBB0_332
.LBB0_289:                              @ %lor.lhs.false106.lor.lhs.false109_crit_edge.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r1, [r7, #20]
	mov	r3, r4
	mov	r12, r5
	mov	lr, r6
	b	.LBB0_290
.LBB0_290:                              @ %lor.lhs.false109.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [sp, #100]
	cmp	r0, #0
	beq	.LBB0_300
	b	.LBB0_291
.LBB0_291:                              @ %lor.lhs.false109.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r11, #0
	andsne	r1, r1, #64
	beq	.LBB0_300
	b	.LBB0_292
.LBB0_292:                              @ %land.lhs.true117.i
                                        @   in Loop: Header=BB0_271 Depth=2
	str	r8, [sp, #16]           @ 4-byte Spill
	mov	r8, r11
	mov	r4, #1
	cmp	r10, #95
	beq	.LBB0_296
	b	.LBB0_293
.LBB0_293:                              @ %lor.rhs.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r0, r10
	mov	r4, r3
	mov	r5, r12
	mov	r6, lr
	b	.LBB0_294
.LBB0_294:                              @ %lor.rhs.i
                                        @   in Loop: Header=BB0_271 Depth=2
	bl	iswalnum
	mov	r3, r4
	mov	r4, r0
	ldr	r0, [sp, #100]
	b	.LBB0_295
.LBB0_295:                              @ %lor.rhs.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	lr, r6
	mov	r12, r5
	cmp	r4, #0
	movne	r4, #1
	b	.LBB0_296
.LBB0_296:                              @ %lor.end.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r5, r12
	mov	r6, r3
	cmp	r0, #95
	bne	.LBB0_298
	b	.LBB0_297
.LBB0_297:                              @ %lor.end.lor.end125_crit_edge.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r11, r8
	ldr	r8, [sp, #16]           @ 4-byte Reload
	mov	r3, r6
	mov	r12, r5
	cmp	r4, #0
	beq	.LBB0_300
	b	.LBB0_332
.LBB0_298:                              @ %lor.end125.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r11, lr
	bl	iswalnum
	mov	lr, r11
	mov	r11, r8
	b	.LBB0_299
.LBB0_299:                              @ %lor.end125.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r8, [sp, #16]           @ 4-byte Reload
	cmp	r0, #0
	mov	r3, r6
	mov	r12, r5
	movne	r0, #1
	teq	r4, r0
	beq	.LBB0_332
	b	.LBB0_300
.LBB0_300:                              @ %lor.lhs.false128.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldrb	r0, [r7, #20]
	tst	r0, #128
	beq	.LBB0_311
	b	.LBB0_301
.LBB0_301:                              @ %land.lhs.true132.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r11, #0
	ldrne	r0, [sp, #100]
	cmpne	r0, #0
	beq	.LBB0_332
	b	.LBB0_302
.LBB0_302:                              @ %lor.lhs.false136.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r4, #1
	cmp	r10, #95
	beq	.LBB0_306
	b	.LBB0_303
.LBB0_303:                              @ %lor.rhs138.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r0, r10
	mov	r4, r3
	mov	r5, r12
	mov	r6, lr
	b	.LBB0_304
.LBB0_304:                              @ %lor.rhs138.i
                                        @   in Loop: Header=BB0_271 Depth=2
	bl	iswalnum
	mov	r3, r4
	mov	r4, r0
	ldr	r0, [sp, #100]
	b	.LBB0_305
.LBB0_305:                              @ %lor.rhs138.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	lr, r6
	mov	r12, r5
	cmp	r4, #0
	movne	r4, #1
	b	.LBB0_306
.LBB0_306:                              @ %lor.end141.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r0, #95
	bne	.LBB0_308
	b	.LBB0_307
.LBB0_307:                              @ %lor.end141.lor.end147_crit_edge.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r4, #0
	bne	.LBB0_311
	b	.LBB0_332
.LBB0_308:                              @ %lor.end147.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r10, r11
	mov	r11, r3
	mov	r5, r12
	mov	r6, lr
	b	.LBB0_309
.LBB0_309:                              @ %lor.end147.i
                                        @   in Loop: Header=BB0_271 Depth=2
	bl	iswalnum
	mov	r3, r11
	mov	r11, r10
	ldr	r10, [sp, #76]          @ 4-byte Reload
	b	.LBB0_310
.LBB0_310:                              @ %lor.end147.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r0, #0
	mov	lr, r6
	mov	r12, r5
	movne	r0, #1
	teq	r4, r0
	bne	.LBB0_332
	b	.LBB0_311
.LBB0_311:                              @ %if.end151.i
                                        @   in Loop: Header=BB0_271 Depth=2
	cmp	r12, #0
	beq	.LBB0_331
	b	.LBB0_312
.LBB0_312:                              @ %do.body157.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [sp, #96]           @ 4-byte Reload
	ldr	r4, [r0, #28]
	cmp	r4, #0
	bne	.LBB0_321
	b	.LBB0_313
.LBB0_313:                              @ %if.then161.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r6, [sp, #48]           @ 4-byte Reload
	mov	r5, r0
	mov	r0, #32
	mov	r1, #0
	b	.LBB0_314
.LBB0_314:                              @ %if.then161.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r2, #0
	mov	r3, #0
	mov	r10, r8
	str	r12, [sp, #28]          @ 4-byte Spill
	b	.LBB0_315
.LBB0_315:                              @ %if.then161.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r8, r11
	str	r0, [sp]
	mov	r0, r6
	bl	__tre_mem_alloc_impl
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB0_471
	b	.LBB0_316
.LBB0_316:                              @ %if.end174.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r11, r5
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_317
.LBB0_317:                              @ %if.end174.i
                                        @   in Loop: Header=BB0_271 Depth=2
	mov	r3, #0
	str	r11, [r4, #24]
	str	r0, [r4, #28]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	b	.LBB0_318
.LBB0_318:                              @ %if.end174.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [r0, #40]
	lsl	r0, r0, #2
	str	r0, [sp]
	mov	r0, r6
	b	.LBB0_319
.LBB0_319:                              @ %if.end174.i
                                        @   in Loop: Header=BB0_271 Depth=2
	bl	__tre_mem_alloc_impl
	str	r0, [r4, #20]
	cmp	r0, #0
	beq	.LBB0_472
	b	.LBB0_320
.LBB0_320:                              @ %if.end194.i
                                        @   in Loop: Header=BB0_271 Depth=2
	str	r4, [r11, #28]
	mov	r11, r8
	mov	r8, r10
	ldr	r3, [sp, #32]           @ 4-byte Reload
	ldr	r12, [sp, #28]          @ 4-byte Reload
	ldr	r10, [sp, #76]          @ 4-byte Reload
	ldr	lr, [sp, #64]           @ 4-byte Reload
	b	.LBB0_321
.LBB0_321:                              @ %if.end198.i
                                        @   in Loop: Header=BB0_271 Depth=2
	str	r11, [r4]
	str	r8, [r4, #4]
	ldr	r5, [sp, #84]           @ 4-byte Reload
	ldr	r0, [r9]
	b	.LBB0_322
.LBB0_322:                              @ %if.end198.i
                                        @   in Loop: Header=BB0_271 Depth=2
	str	r0, [r4, #8]
	ldr	r0, [r7, #12]
	str	r0, [r4, #12]
	ldr	r0, [sp, #100]
	b	.LBB0_323
.LBB0_323:                              @ %if.end198.i
                                        @   in Loop: Header=BB0_271 Depth=2
	str	r0, [r4, #16]
	ldr	r0, [r3, #40]
	cmp	r0, #1
	blt	.LBB0_326
	b	.LBB0_324
.LBB0_324:                              @ %for.body213.lr.ph.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [r4, #20]
	mov	r1, #0
	b	.LBB0_325
.LBB0_325:                              @ %for.body213.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @     Parent Loop BB0_271 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r5, r1, lsl #2]
	str	r2, [r0, r1, lsl #2]
	add	r1, r1, #1
	ldr	r2, [r3, #40]
	cmp	r1, r2
	blt	.LBB0_325
	b	.LBB0_326
.LBB0_326:                              @ %do.end221.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r1, [r7, #16]
	cmp	r1, #0
	beq	.LBB0_330
	b	.LBB0_327
.LBB0_327:                              @ %while.cond.preheader.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [r1]
	cmp	r0, #0
	blt	.LBB0_330
	b	.LBB0_328
.LBB0_328:                              @ %while.body.lr.ph.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r2, [r4, #20]
	add	r1, r1, #4
	b	.LBB0_329
.LBB0_329:                              @ %while.body.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @     Parent Loop BB0_271 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	str	r11, [r2, r0, lsl #2]
	ldr	r0, [r1], #4
	cmp	r0, #0
	bge	.LBB0_329
	b	.LBB0_330
.LBB0_330:                              @   in Loop: Header=BB0_271 Depth=2
	str	r4, [sp, #96]           @ 4-byte Spill
	b	.LBB0_332
.LBB0_331:                              @ %if.then153.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r0, [r7, #16]
	ldr	r12, [r9]
	str	r0, [sp, #88]           @ 4-byte Spill
	b	.LBB0_332
.LBB0_332:                              @ %for.inc231.i
                                        @   in Loop: Header=BB0_271 Depth=2
	ldr	r1, [r7, #40]!
	sub	r0, r7, #8
	mov	r9, r7
	cmp	r1, #0
	bne	.LBB0_271
	b	.LBB0_333
.LBB0_333:                              @ %for.end233.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r2, [sp, #88]           @ 4-byte Reload
	ldr	r6, [sp, #84]           @ 4-byte Reload
	ldr	r7, [sp, #96]           @ 4-byte Reload
	mov	r4, #0
	b	.LBB0_334
.LBB0_334:                              @ %for.end233.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r1, r11
	mvn	r5, #0
	cmp	r2, #0
	beq	.LBB0_337
	b	.LBB0_335
.LBB0_335:                              @ %for.cond236.preheader.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [r2]
	mov	r4, r2
	cmp	r0, #0
	blt	.LBB0_337
	b	.LBB0_336
.LBB0_336:                              @ %for.body238.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r1, [r6, r0, lsl #2]
	ldr	r0, [r4, #4]!
	cmp	r0, #0
	bge	.LBB0_336
	b	.LBB0_337
.LBB0_337:                              @ %if.end243.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r11, [sp, #44]          @ 4-byte Reload
	mov	r10, r1
	str	r8, [sp, #88]           @ 4-byte Spill
	str	r8, [sp, #16]           @ 4-byte Spill
	b	.LBB0_338
.LBB0_338:                              @ %if.end243.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r8, #0
	cmp	r12, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	bne	.LBB0_349
	b	.LBB0_342
.LBB0_339:                              @   in Loop: Header=BB0_256 Depth=1
	ldr	r6, [sp, #84]           @ 4-byte Reload
	str	r4, [sp, #12]           @ 4-byte Spill
	mov	r4, #0
	str	r8, [sp, #16]           @ 4-byte Spill
	str	r7, [sp, #52]           @ 4-byte Spill
	b	.LBB0_340
.LBB0_340:                              @ %backtrack.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r8, #0
	b	.LBB0_341
.LBB0_341:                              @ %backtrack.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r7, [sp, #96]           @ 4-byte Reload
	b	.LBB0_342
.LBB0_342:                              @ %backtrack.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [r7, #24]
	cmp	r0, #0
	beq	.LBB0_452
	b	.LBB0_343
.LBB0_343:                              @ %if.then606.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r12, [r7, #8]
	ldrb	r1, [r12, #21]
	tst	r1, #1
	ldrne	r1, [r7, #12]
	b	.LBB0_344
.LBB0_344:                              @ %if.then606.i
                                        @   in Loop: Header=BB0_256 Depth=1
	strne	r8, [r11, r1, lsl #2]
	ldr	r1, [r7, #4]
	ldr	r10, [r7]
	str	r1, [sp, #88]           @ 4-byte Spill
	b	.LBB0_345
.LBB0_345:                              @ %if.then606.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r1, [r7, #16]
	str	r1, [sp, #100]
	ldr	r1, [r3, #40]
	cmp	r1, #1
	blt	.LBB0_348
	b	.LBB0_346
.LBB0_346:                              @ %for.body631.lr.ph.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r1, [r7, #20]
	mov	r2, #0
	b	.LBB0_347
.LBB0_347:                              @ %for.body631.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r1, r2, lsl #2]
	str	r7, [r6, r2, lsl #2]
	add	r2, r2, #1
	ldr	r7, [r3, #40]
	cmp	r2, r7
	blt	.LBB0_347
	b	.LBB0_348
.LBB0_348:                              @   in Loop: Header=BB0_256 Depth=1
	mov	r7, r0
	b	.LBB0_349
.LBB0_349:                              @ %while.body248.preheader.i
                                        @   in Loop: Header=BB0_256 Depth=1
	str	r7, [sp, #96]           @ 4-byte Spill
	b	.LBB0_350
.LBB0_350:                              @ %while.body248.preheader.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_369 Depth 3
                                        @         Child Loop BB0_434 Depth 4
                                        @         Child Loop BB0_438 Depth 4
                                        @       Child Loop BB0_447 Depth 3
	ldr	r0, [r3, #12]
	cmp	r12, r0
	beq	.LBB0_454
	b	.LBB0_351
.LBB0_351:                              @ %if.end278.i
                                        @   in Loop: Header=BB0_350 Depth=2
	mov	r9, r12
	ldr	r6, [sp, #72]           @ 4-byte Reload
	mov	r7, r9
	ldr	r0, [r7, #8]!
	b	.LBB0_352
.LBB0_352:                              @ %if.end278.i
                                        @   in Loop: Header=BB0_350 Depth=2
	cmp	r0, #0
	ldrbne	r0, [r9, #21]
	tstne	r0, #1
	beq	.LBB0_448
	b	.LBB0_353
.LBB0_353:                              @ %if.then285.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r0, [sp, #84]           @ 4-byte Reload
	ldr	r1, [r3, #56]
	str	r6, [sp, #92]           @ 4-byte Spill
	ldr	r5, [r9, #24]
	b	.LBB0_354
.LBB0_354:                              @ %if.then285.i
                                        @   in Loop: Header=BB0_350 Depth=2
	stm	sp, {r0, r10}
	add	r0, r5, #1
	bic	r2, r1, #8
	ldr	r6, [sp, #36]           @ 4-byte Reload
	b	.LBB0_355
.LBB0_355:                              @ %if.then285.i
                                        @   in Loop: Header=BB0_350 Depth=2
	mov	r1, r6
	bl	tre_fill_pmatch
	mov	r0, r6
	ldr	r6, [r0, r5, lsl #3]!
	b	.LBB0_356
.LBB0_356:                              @ %if.then285.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r1, [sp, #88]           @ 4-byte Reload
	ldr	r5, [r0, #4]
	ldr	r0, [sp, #52]           @ 4-byte Reload
	sub	r1, r1, #1
	b	.LBB0_357
.LBB0_357:                              @ %if.then285.i
                                        @   in Loop: Header=BB0_350 Depth=2
	sub	r8, r5, r6
	add	r0, r0, r6
	mov	r2, r8
	bl	strncmp
	cmp	r0, #0
	bne	.LBB0_463
	b	.LBB0_358
.LBB0_358:                              @ %if.then300.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r1, [r9, #12]
	cmp	r5, r6
	mov	r0, #0
	moveq	r0, #1
	bne	.LBB0_360
	b	.LBB0_359
.LBB0_359:                              @ %land.lhs.true305.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r2, [r11, r1, lsl #2]
	cmp	r2, #0
	bne	.LBB0_463
	b	.LBB0_360
.LBB0_360:                              @ %if.end310.i
                                        @   in Loop: Header=BB0_350 Depth=2
	str	r0, [r11, r1, lsl #2]
	ldr	r0, [sp, #88]           @ 4-byte Reload
	sub	r8, r8, #1
	mov	r2, #4
	b	.LBB0_361
.LBB0_361:                              @ %if.end310.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r11, [sp, #100]
	add	r1, r0, r8
	add	r0, sp, #100
	bl	mbtowc
	cmp	r0, #0
	movle	r0, #1
	blt	.LBB0_482
	b	.LBB0_362
.LBB0_362:                              @ %if.end327.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r3, [sp, #32]           @ 4-byte Reload
	ldr	r6, [sp, #92]           @ 4-byte Reload
	str	r0, [sp, #72]           @ 4-byte Spill
	add	r10, r8, r10
	add	r0, r0, r8
	mov	r8, #0
	b	.LBB0_363
.LBB0_363:                              @ %if.end349.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r1, [r7]
	cmp	r1, #0
	beq	.LBB0_469
	b	.LBB0_364
.LBB0_364:                              @ %for.body353.lr.ph.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r1, [sp, #88]           @ 4-byte Reload
	add	r10, r10, r6
	ldr	r6, [sp, #84]           @ 4-byte Reload
	mov	r12, #0
	b	.LBB0_365
.LBB0_365:                              @ %for.body353.lr.ph.i
                                        @   in Loop: Header=BB0_350 Depth=2
	str	r4, [sp, #76]           @ 4-byte Spill
	cmp	r10, #1
	add	r1, r1, r0
	mov	r0, #0
	b	.LBB0_366
.LBB0_366:                              @ %for.body353.lr.ph.i
                                        @   in Loop: Header=BB0_350 Depth=2
	str	r1, [sp, #88]           @ 4-byte Spill
	ldr	r1, [sp, #40]           @ 4-byte Reload
	movlt	r0, #1
	cmp	r1, #0
	b	.LBB0_367
.LBB0_367:                              @ %for.body353.lr.ph.i
                                        @   in Loop: Header=BB0_350 Depth=2
	mov	r1, #0
	moveq	r1, #1
	cmp	r11, #10
	and	lr, r1, r0
	b	.LBB0_368
.LBB0_368:                              @ %for.body353.lr.ph.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r1, [sp, #80]           @ 4-byte Reload
	mov	r0, #0
	moveq	r0, #1
	cmp	r1, #0
	movne	r1, #1
	and	r0, r1, r0
	str	r0, [sp, #92]           @ 4-byte Spill
	b	.LBB0_369
.LBB0_369:                              @ %for.body353.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @     Parent Loop BB0_350 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_434 Depth 4
                                        @         Child Loop BB0_438 Depth 4
	mov	r8, r9
	ldr	r0, [r8]
	cmp	r0, r11
	bhi	.LBB0_443
	b	.LBB0_370
.LBB0_370:                              @ %land.lhs.true355.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r8, #4]
	cmp	r0, r11
	blo	.LBB0_443
	b	.LBB0_371
.LBB0_371:                              @ %if.then357.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r8, #20]
	cmp	r0, #0
	beq	.LBB0_421
	b	.LBB0_372
.LBB0_372:                              @ %land.lhs.true360.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r2, [sp, #92]           @ 4-byte Reload
	tst	r0, #1
	mov	r1, #0
	moveq	r1, #1
	orr	r1, r1, lr
	orrs	r1, r2, r1
	beq	.LBB0_443
	b	.LBB0_373
.LBB0_373:                              @ %lor.lhs.false372.i
                                        @   in Loop: Header=BB0_369 Depth=3
	tst	r0, #2
	beq	.LBB0_377
	b	.LBB0_374
.LBB0_374:                              @ %land.lhs.true376.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r5, [sp, #100]
	ldr	r2, [sp, #80]           @ 4-byte Reload
	mov	r4, r6
	ldr	r6, [sp, #68]           @ 4-byte Reload
	b	.LBB0_375
.LBB0_375:                              @ %land.lhs.true376.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r1, #0
	cmp	r5, #10
	moveq	r1, #1
	cmp	r2, #0
	b	.LBB0_376
.LBB0_376:                              @ %land.lhs.true376.i
                                        @   in Loop: Header=BB0_369 Depth=3
	movne	r2, #1
	orrs	r5, r5, r6
	mov	r6, r4
	andne	r1, r2, r1
	cmpne	r1, #1
	bne	.LBB0_443
	b	.LBB0_377
.LBB0_377:                              @ %lor.lhs.false384.i
                                        @   in Loop: Header=BB0_369 Depth=3
	tst	r0, #16
	beq	.LBB0_383
	b	.LBB0_378
.LBB0_378:                              @ %land.lhs.true388.i
                                        @   in Loop: Header=BB0_369 Depth=3
	cmp	r11, #95
	beq	.LBB0_443
	b	.LBB0_379
.LBB0_379:                              @ %lor.lhs.false390.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, r11
	mov	r9, lr
	mov	r5, r12
	mov	r4, r3
	bl	iswalnum
	cmp	r0, #0
	bne	.LBB0_441
	b	.LBB0_380
.LBB0_380:                              @ %lor.lhs.false393.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [sp, #100]
	mov	r3, r4
	mov	r12, r5
	mov	lr, r9
	cmp	r0, #95
	beq	.LBB0_383
	b	.LBB0_381
.LBB0_381:                              @ %lor.lhs.false395.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r9, r3
	mov	r5, r12
	mov	r4, lr
	bl	iswalnum
	b	.LBB0_382
.LBB0_382:                              @ %lor.lhs.false395.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	lr, r4
	mov	r12, r5
	mov	r3, r9
	cmp	r0, #0
	beq	.LBB0_443
	b	.LBB0_383
.LBB0_383:                              @ %lor.lhs.false398.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r1, [r8, #20]
	tst	r1, #32
	beq	.LBB0_389
	b	.LBB0_384
.LBB0_384:                              @ %land.lhs.true402.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r9, lr
	mov	r5, r12
	mov	r4, r3
	cmp	r11, #95
	beq	.LBB0_386
	b	.LBB0_385
.LBB0_385:                              @ %lor.lhs.false404.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, r11
	bl	iswalnum
	cmp	r0, #0
	beq	.LBB0_441
	b	.LBB0_386
.LBB0_386:                              @ %lor.lhs.false407.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [sp, #100]
	cmp	r0, #95
	beq	.LBB0_441
	b	.LBB0_387
.LBB0_387:                              @ %lor.lhs.false409.i
                                        @   in Loop: Header=BB0_369 Depth=3
	bl	iswalnum
	cmp	r0, #0
	bne	.LBB0_441
	b	.LBB0_388
.LBB0_388:                              @ %lor.lhs.false409.lor.lhs.false412_crit_edge.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r1, [r8, #20]
	mov	r3, r4
	mov	r12, r5
	mov	lr, r9
	b	.LBB0_389
.LBB0_389:                              @ %lor.lhs.false412.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [sp, #100]
	cmp	r0, #0
	beq	.LBB0_400
	b	.LBB0_390
.LBB0_390:                              @ %lor.lhs.false412.i
                                        @   in Loop: Header=BB0_369 Depth=3
	cmp	r10, #0
	andsne	r1, r1, #64
	beq	.LBB0_400
	b	.LBB0_391
.LBB0_391:                              @ %land.lhs.true420.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r4, #1
	cmp	r11, #95
	beq	.LBB0_395
	b	.LBB0_392
.LBB0_392:                              @ %lor.rhs422.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, r11
	mov	r9, r3
	mov	r5, r12
	mov	r4, lr
	b	.LBB0_393
.LBB0_393:                              @ %lor.rhs422.i
                                        @   in Loop: Header=BB0_369 Depth=3
	bl	iswalnum
	mov	lr, r4
	mov	r4, r0
	ldr	r0, [sp, #100]
	b	.LBB0_394
.LBB0_394:                              @ %lor.rhs422.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r12, r5
	mov	r3, r9
	cmp	r4, #0
	movne	r4, #1
	b	.LBB0_395
.LBB0_395:                              @ %lor.end425.i
                                        @   in Loop: Header=BB0_369 Depth=3
	cmp	r0, #95
	bne	.LBB0_397
	b	.LBB0_396
.LBB0_396:                              @ %lor.end425.lor.end431_crit_edge.i
                                        @   in Loop: Header=BB0_369 Depth=3
	cmp	r4, #0
	beq	.LBB0_400
	b	.LBB0_443
.LBB0_397:                              @ %lor.end431.i
                                        @   in Loop: Header=BB0_369 Depth=3
	str	r6, [sp, #84]           @ 4-byte Spill
	mov	r5, r3
	mov	r6, r12
	mov	r9, lr
	b	.LBB0_398
.LBB0_398:                              @ %lor.end431.i
                                        @   in Loop: Header=BB0_369 Depth=3
	bl	iswalnum
	mov	r12, r6
	ldr	r6, [sp, #84]           @ 4-byte Reload
	cmp	r0, #0
	b	.LBB0_399
.LBB0_399:                              @ %lor.end431.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	lr, r9
	mov	r3, r5
	movne	r0, #1
	teq	r4, r0
	beq	.LBB0_443
	b	.LBB0_400
.LBB0_400:                              @ %lor.lhs.false434.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldrb	r0, [r8, #20]
	tst	r0, #128
	beq	.LBB0_408
	b	.LBB0_401
.LBB0_401:                              @ %land.lhs.true438.i
                                        @   in Loop: Header=BB0_369 Depth=3
	cmp	r10, #0
	ldrne	r0, [sp, #100]
	cmpne	r0, #0
	beq	.LBB0_443
	b	.LBB0_402
.LBB0_402:                              @ %lor.lhs.false442.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r9, r6
	mov	r5, r3
	mov	r4, #1
	str	lr, [sp, #64]           @ 4-byte Spill
	str	r12, [sp, #28]          @ 4-byte Spill
	cmp	r11, #95
	beq	.LBB0_404
	b	.LBB0_403
.LBB0_403:                              @ %lor.rhs444.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, r11
	bl	iswalnum
	mov	r4, r0
	ldr	r0, [sp, #100]
	cmp	r4, #0
	movne	r4, #1
	b	.LBB0_404
.LBB0_404:                              @ %lor.end447.i
                                        @   in Loop: Header=BB0_369 Depth=3
	cmp	r0, #95
	bne	.LBB0_406
	b	.LBB0_405
.LBB0_405:                              @ %lor.end447.lor.end453_crit_edge.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r12, [sp, #28]          @ 4-byte Reload
	ldr	lr, [sp, #64]           @ 4-byte Reload
	mov	r3, r5
	mov	r6, r9
	cmp	r4, #0
	bne	.LBB0_408
	b	.LBB0_443
.LBB0_406:                              @ %lor.end453.i
                                        @   in Loop: Header=BB0_369 Depth=3
	bl	iswalnum
	ldr	r12, [sp, #28]          @ 4-byte Reload
	ldr	lr, [sp, #64]           @ 4-byte Reload
	cmp	r0, #0
	b	.LBB0_407
.LBB0_407:                              @ %lor.end453.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r3, r5
	mov	r6, r9
	movne	r0, #1
	teq	r4, r0
	bne	.LBB0_443
	b	.LBB0_408
.LBB0_408:                              @ %lor.lhs.false456.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r8, #20]
	mov	r9, lr
	mov	r5, r12
	tst	r0, #4
	beq	.LBB0_412
	b	.LBB0_409
.LBB0_409:                              @ %land.lhs.true460.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldrb	r1, [r3, #56]
	tst	r1, #2
	bne	.LBB0_412
	b	.LBB0_410
.LBB0_410:                              @ %land.lhs.true464.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r1, [r8, #24]
	mov	r0, r11
	mov	r4, r3
	bl	iswctype
	cmp	r0, #0
	beq	.LBB0_441
	b	.LBB0_411
.LBB0_411:                              @ %land.lhs.true464.lor.lhs.false468_crit_edge.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r8, #20]
	mov	r3, r4
	b	.LBB0_412
.LBB0_412:                              @ %lor.lhs.false468.i
                                        @   in Loop: Header=BB0_369 Depth=3
	tst	r0, #4
	ldrbne	r0, [r3, #56]
	tstne	r0, #2
	beq	.LBB0_417
	b	.LBB0_413
.LBB0_413:                              @ %land.lhs.true476.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, r11
	mov	r4, r3
	bl	towlower
	ldr	r1, [r8, #24]
	b	.LBB0_414
.LBB0_414:                              @ %land.lhs.true476.i
                                        @   in Loop: Header=BB0_369 Depth=3
	bl	iswctype
	mov	r3, r4
	cmp	r0, #0
	bne	.LBB0_417
	b	.LBB0_415
.LBB0_415:                              @ %land.lhs.true482.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, r11
	mov	r4, r3
	bl	towupper
	ldr	r1, [r8, #24]
	b	.LBB0_416
.LBB0_416:                              @ %land.lhs.true482.i
                                        @   in Loop: Header=BB0_369 Depth=3
	bl	iswctype
	mov	r3, r4
	cmp	r0, #0
	beq	.LBB0_442
	b	.LBB0_417
.LBB0_417:                              @ %lor.lhs.false488.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldrb	r0, [r8, #20]
	mov	r12, r5
	mov	lr, r9
	tst	r0, #8
	beq	.LBB0_421
	b	.LBB0_418
.LBB0_418:                              @ %land.lhs.true492.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r1, [r3, #56]
	ldr	r0, [r8, #28]
	mov	r9, r3
	mov	r5, r12
	b	.LBB0_419
.LBB0_419:                              @ %land.lhs.true492.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r4, lr
	and	r2, r1, #2
	mov	r1, r11
	bl	tre_neg_char_classes_match
	b	.LBB0_420
.LBB0_420:                              @ %land.lhs.true492.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	lr, r4
	mov	r12, r5
	mov	r3, r9
	cmp	r0, #0
	bne	.LBB0_443
	b	.LBB0_421
.LBB0_421:                              @ %if.end498.i
                                        @   in Loop: Header=BB0_369 Depth=3
	cmp	r12, #0
	beq	.LBB0_440
	b	.LBB0_422
.LBB0_422:                              @ %do.body504.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r5, [sp, #96]           @ 4-byte Reload
	ldr	r4, [r5, #28]
	cmp	r4, #0
	bne	.LBB0_430
	b	.LBB0_423
.LBB0_423:                              @ %if.then509.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r6, [sp, #48]           @ 4-byte Reload
	mov	r0, #32
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_424
.LBB0_424:                              @ %if.then509.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r3, #0
	str	lr, [sp, #64]           @ 4-byte Spill
	mov	r9, r12
	str	r0, [sp]
	b	.LBB0_425
.LBB0_425:                              @ %if.then509.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, r6
	bl	__tre_mem_alloc_impl
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB0_471
	b	.LBB0_426
.LBB0_426:                              @ %if.end524.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r0, #0
	str	r5, [r4, #24]
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_427
.LBB0_427:                              @ %if.end524.i
                                        @   in Loop: Header=BB0_369 Depth=3
	mov	r3, #0
	str	r0, [r4, #28]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r0, [r0, #40]
	b	.LBB0_428
.LBB0_428:                              @ %if.end524.i
                                        @   in Loop: Header=BB0_369 Depth=3
	lsl	r0, r0, #2
	str	r0, [sp]
	mov	r0, r6
	bl	__tre_mem_alloc_impl
	str	r0, [r4, #20]
	cmp	r0, #0
	beq	.LBB0_472
	b	.LBB0_429
.LBB0_429:                              @ %if.end545.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r3, [sp, #32]           @ 4-byte Reload
	ldr	r6, [sp, #84]           @ 4-byte Reload
	ldr	lr, [sp, #64]           @ 4-byte Reload
	mov	r12, r9
	str	r4, [r5, #28]
	b	.LBB0_430
.LBB0_430:                              @ %if.end549.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [sp, #88]           @ 4-byte Reload
	str	r10, [r4]
	str	r0, [r4, #4]
	ldr	r0, [r7]
	b	.LBB0_431
.LBB0_431:                              @ %if.end549.i
                                        @   in Loop: Header=BB0_369 Depth=3
	str	r0, [r4, #8]
	ldr	r0, [r8, #12]
	str	r0, [r4, #12]
	ldr	r0, [sp, #100]
	b	.LBB0_432
.LBB0_432:                              @ %if.end549.i
                                        @   in Loop: Header=BB0_369 Depth=3
	str	r0, [r4, #16]
	ldr	r0, [r3, #40]
	cmp	r0, #1
	blt	.LBB0_435
	b	.LBB0_433
.LBB0_433:                              @ %for.body565.lr.ph.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r4, #20]
	mov	r1, #0
	b	.LBB0_434
.LBB0_434:                              @ %for.body565.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @     Parent Loop BB0_350 Depth=2
                                        @       Parent Loop BB0_369 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r2, [r6, r1, lsl #2]
	str	r2, [r0, r1, lsl #2]
	add	r1, r1, #1
	ldr	r2, [r3, #40]
	cmp	r1, r2
	blt	.LBB0_434
	b	.LBB0_435
.LBB0_435:                              @ %do.end573.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r1, [r8, #16]
	cmp	r1, #0
	beq	.LBB0_439
	b	.LBB0_436
.LBB0_436:                              @ %land.rhs.lr.ph.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r1]
	cmp	r0, #0
	blt	.LBB0_439
	b	.LBB0_437
.LBB0_437:                              @ %for.body580.i.lr.ph
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r2, [r4, #20]
	add	r1, r1, #4
	b	.LBB0_438
.LBB0_438:                              @ %for.body580.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @     Parent Loop BB0_350 Depth=2
                                        @       Parent Loop BB0_369 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	str	r10, [r2, r0, lsl #2]
	ldr	r0, [r1], #4
	cmp	r0, #0
	bge	.LBB0_438
	b	.LBB0_439
.LBB0_439:                              @   in Loop: Header=BB0_369 Depth=3
	str	r4, [sp, #96]           @ 4-byte Spill
	b	.LBB0_443
.LBB0_440:                              @ %if.then500.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r8, #16]
	ldr	r12, [r7]
	str	r0, [sp, #76]           @ 4-byte Spill
	b	.LBB0_443
.LBB0_441:                              @   in Loop: Header=BB0_369 Depth=3
	mov	r3, r4
	b	.LBB0_442
.LBB0_442:                              @   in Loop: Header=BB0_369 Depth=3
	mov	r12, r5
	mov	lr, r9
	b	.LBB0_443
.LBB0_443:                              @ %for.inc589.i
                                        @   in Loop: Header=BB0_369 Depth=3
	ldr	r0, [r8, #40]!
	sub	r9, r8, #8
	mov	r7, r8
	cmp	r0, #0
	bne	.LBB0_369
	b	.LBB0_444
.LBB0_444:                              @ %for.end591.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r7, [sp, #96]           @ 4-byte Reload
	cmp	r12, #0
	beq	.LBB0_467
	b	.LBB0_445
.LBB0_445:                              @ %if.then593.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r1, [sp, #76]           @ 4-byte Reload
	ldr	r11, [sp, #44]          @ 4-byte Reload
	mov	r4, #0
	mov	r8, #0
	cmp	r1, #0
	beq	.LBB0_350
	b	.LBB0_446
.LBB0_446:                              @ %while.cond596.preheader.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r0, [r1]
	mov	r4, r1
	cmp	r0, #0
	blt	.LBB0_350
	b	.LBB0_447
.LBB0_447:                              @ %while.body598.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @     Parent Loop BB0_350 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	str	r10, [r6, r0, lsl #2]
	ldr	r0, [r4, #4]!
	cmp	r0, #0
	bge	.LBB0_447
	b	.LBB0_350
.LBB0_448:                              @ %if.else332.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r11, [sp, #100]
	cmp	r11, #0
	beq	.LBB0_468
	b	.LBB0_449
.LBB0_449:                              @ %do.body336.i
                                        @   in Loop: Header=BB0_350 Depth=2
	ldr	r1, [sp, #88]           @ 4-byte Reload
	add	r0, sp, #100
	mov	r2, #4
	mov	r5, r3
	bl	mbtowc
	cmp	r0, #0
	ble	.LBB0_451
	b	.LBB0_450
.LBB0_450:                              @   in Loop: Header=BB0_350 Depth=2
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r3, r5
	b	.LBB0_363
.LBB0_451:                              @ %if.then340.i
                                        @   in Loop: Header=BB0_350 Depth=2
	mov	r0, #1
	mov	r3, r5
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r0, #1
	bge	.LBB0_363
	b	.LBB0_481
.LBB0_452:                              @ %if.else641.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	cmp	r0, #0
	bge	.LBB0_480
	b	.LBB0_453
.LBB0_453:                              @ %if.else641.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #100]
	cmp	r0, #0
	bne	.LBB0_255
	b	.LBB0_480
.LBB0_454:                              @ %if.then252.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r7, [sp, #96]           @ 4-byte Reload
	mov	r9, r6
	mov	r6, r3
	mvn	r5, #0
	cmp	r0, r10
	blt	.LBB0_459
	b	.LBB0_455
.LBB0_455:                              @ %lor.lhs.false254.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_465
	b	.LBB0_456
.LBB0_456:                              @ %lor.lhs.false254.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	mov	r3, r6
	cmp	r0, r10
	bne	.LBB0_466
	b	.LBB0_457
.LBB0_457:                              @ %land.lhs.true258.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r1, [r3, #32]
	ldr	r0, [r3, #40]
	mov	r6, r3
	ldr	r3, [sp, #56]           @ 4-byte Reload
	b	.LBB0_458
.LBB0_458:                              @ %land.lhs.true258.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r2, r9
	bl	tre_tag_order
	cmp	r0, #0
	beq	.LBB0_465
	b	.LBB0_459
.LBB0_459:                              @ %if.then262.i
                                        @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_464
	b	.LBB0_460
.LBB0_460:                              @ %for.cond267.preheader.i
                                        @   in Loop: Header=BB0_256 Depth=1
	mov	r3, r6
	ldr	r2, [sp, #56]           @ 4-byte Reload
	mov	r0, #0
	mov	r6, r9
	ldr	r1, [r3, #40]
	cmp	r1, #1
	blt	.LBB0_462
	b	.LBB0_461
.LBB0_461:                              @ %for.body270.i
                                        @   Parent Loop BB0_256 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r6, r0, lsl #2]
	str	r1, [r2, r0, lsl #2]
	add	r0, r0, #1
	ldr	r1, [r3, #40]
	cmp	r0, r1
	blt	.LBB0_461
	b	.LBB0_462
.LBB0_462:                              @   in Loop: Header=BB0_256 Depth=1
	str	r10, [sp, #60]          @ 4-byte Spill
	b	.LBB0_342
.LBB0_463:                              @   in Loop: Header=BB0_256 Depth=1
	ldr	r0, [sp, #92]           @ 4-byte Reload
	ldr	r3, [sp, #32]           @ 4-byte Reload
	ldr	r6, [sp, #84]           @ 4-byte Reload
	mvn	r5, #0
	str	r0, [sp, #72]           @ 4-byte Spill
	b	.LBB0_340
.LBB0_464:                              @   in Loop: Header=BB0_256 Depth=1
	str	r10, [sp, #60]          @ 4-byte Spill
	b	.LBB0_465
.LBB0_465:                              @   in Loop: Header=BB0_256 Depth=1
	mov	r3, r6
	b	.LBB0_466
.LBB0_466:                              @   in Loop: Header=BB0_256 Depth=1
	mov	r6, r9
	b	.LBB0_342
.LBB0_467:                              @   in Loop: Header=BB0_256 Depth=1
	ldr	r4, [sp, #76]           @ 4-byte Reload
	ldr	r11, [sp, #44]          @ 4-byte Reload
	mvn	r5, #0
	mov	r8, #0
	b	.LBB0_342
.LBB0_468:                              @   in Loop: Header=BB0_256 Depth=1
	str	r6, [sp, #72]           @ 4-byte Spill
	b	.LBB0_469
.LBB0_469:                              @   in Loop: Header=BB0_256 Depth=1
	ldr	r11, [sp, #44]          @ 4-byte Reload
	ldr	r6, [sp, #84]           @ 4-byte Reload
	mvn	r5, #0
	b	.LBB0_341
.LBB0_470:
                                        @ implicit-def: R0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r4, #1
	b	.LBB0_483
.LBB0_471:                              @ %if.then164.i
	mov	r0, r6
	b	.LBB0_473
.LBB0_472:                              @ %if.then184.i
	ldr	r0, [sp, #48]           @ 4-byte Reload
	b	.LBB0_473
.LBB0_473:                              @ %if.then164.i
	bl	__tre_mem_destroy
	ldr	r0, [sp, #84]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_475
	b	.LBB0_474
.LBB0_474:                              @ %if.then166.i
	bl	free
	b	.LBB0_475
.LBB0_475:                              @ %if.end167.i
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r10, [sp, #56]          @ 4-byte Reload
	ldr	r5, [sp, #44]           @ 4-byte Reload
	mov	r4, #12
	cmp	r0, #0
	beq	.LBB0_477
	b	.LBB0_476
.LBB0_476:                              @ %if.then169.i
	bl	free
	b	.LBB0_477
.LBB0_477:                              @ %if.end170.i
	cmp	r5, #0
	beq	.LBB0_479
	b	.LBB0_478
.LBB0_478:                              @ %if.then172.i
	mov	r0, r5
	bl	free
	b	.LBB0_479
.LBB0_479:
                                        @ implicit-def: R0
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_489
.LBB0_480:                              @ %while.end650.i
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r10, [sp, #56]          @ 4-byte Reload
	mov	r9, r6
	str	r3, [sp, #32]           @ 4-byte Spill
	lsr	r4, r0, #31
	b	.LBB0_483
.LBB0_481:
	str	r3, [sp, #32]           @ 4-byte Spill
	b	.LBB0_482
.LBB0_482:
	ldr	r10, [sp, #56]          @ 4-byte Reload
	ldr	r11, [sp, #44]          @ 4-byte Reload
	ldr	r9, [sp, #84]           @ 4-byte Reload
                                        @ implicit-def: R0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r4, #1
	b	.LBB0_483
.LBB0_483:                              @ %error_exit.i
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	__tre_mem_destroy
	cmp	r9, #0
	beq	.LBB0_485
	b	.LBB0_484
.LBB0_484:                              @ %if.then653.i
	mov	r0, r9
	bl	free
	b	.LBB0_485
.LBB0_485:                              @ %if.end654.i
	ldr	r0, [sp, #36]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_487
	b	.LBB0_486
.LBB0_486:                              @ %if.then656.i
	bl	free
	b	.LBB0_487
.LBB0_487:                              @ %if.end657.i
	cmp	r11, #0
	beq	.LBB0_489
	b	.LBB0_488
.LBB0_488:                              @ %if.then659.i
	mov	r0, r11
	bl	free
	b	.LBB0_489
.LBB0_489:                              @ %tre_tnfa_run_backtrack.exit
	ldr	r3, [sp, #32]           @ 4-byte Reload
	b	.LBB0_490
.LBB0_490:                              @ %if.end12
	cmp	r4, #0
	bne	.LBB0_492
	b	.LBB0_491
.LBB0_491:                              @ %if.then14
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r2, [r3, #56]
	str	r10, [sp]
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #4]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	bl	tre_fill_pmatch
	b	.LBB0_492
.LBB0_492:                              @ %if.end16
	cmp	r10, #0
	beq	.LBB0_494
	b	.LBB0_493
.LBB0_493:                              @ %if.then18
	mov	r0, r10
	bl	free
	b	.LBB0_494
.LBB0_494:                              @ %return
	mov	r0, r4
	add	sp, sp, #108
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	regexec, .Ltmp0-regexec
	.cantunwind
	.fnend

	.align	2
	.type	tre_fill_pmatch,%function
tre_fill_pmatch:                        @ @tre_fill_pmatch
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r12, #0
	tst	r2, #8
	bne	.LBB1_23
	b	.LBB1_3
.LBB1_3:                                @ %entry
	ldr	r9, [sp, #36]
	cmp	r9, #0
	blt	.LBB1_23
	b	.LBB1_4
.LBB1_4:                                @ %if.then
	ldr	lr, [r3, #16]
	ldr	r2, [r3, #28]
	cmp	r0, #0
	cmpne	r2, #0
	beq	.LBB1_13
	b	.LBB1_5
.LBB1_5:                                @ %while.body.lr.ph
	ldr	r12, [sp, #32]
	add	r5, lr, #4
	mov	r6, #0
	mvn	r8, #0
	b	.LBB1_6
.LBB1_6:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r5, #-4]
	ldr	r2, [r3, #48]
	cmp	r4, r2
	mov	r2, r9
	b	.LBB1_7
.LBB1_7:                                @ %while.body
                                        @   in Loop: Header=BB1_6 Depth=1
	ldrne	r2, [r12, r4, lsl #2]
	str	r2, [r1, r6, lsl #3]
	ldr	r7, [r5]
	ldr	r4, [r3, #48]
	b	.LBB1_8
.LBB1_8:                                @ %while.body
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r7, r4
	mov	r4, r9
	ldrne	r4, [r12, r7, lsl #2]
	add	r7, r1, r6, lsl #3
	b	.LBB1_9
.LBB1_9:                                @ %while.body
                                        @   in Loop: Header=BB1_6 Depth=1
	cmn	r2, #1
	str	r4, [r7, #4]
	cmnne	r4, #1
	bne	.LBB1_11
	b	.LBB1_10
.LBB1_10:                               @ %if.then30
                                        @   in Loop: Header=BB1_6 Depth=1
	lsl	r2, r6, #1
	str	r8, [r7, #4]
	str	r8, [r1, r2, lsl #2]
	b	.LBB1_11
.LBB1_11:                               @ %if.end35
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r2, [r3, #28]
	add	r6, r6, #1
	cmp	r6, r0
	bhs	.LBB1_13
	b	.LBB1_12
.LBB1_12:                               @ %if.end35
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r5, r5, #12
	cmp	r6, r2
	blo	.LBB1_6
	b	.LBB1_13
.LBB1_13:                               @ %while.cond36.preheader
	cmp	r0, #0
	mov	r12, #0
	cmpne	r2, #0
	beq	.LBB1_23
	b	.LBB1_14
.LBB1_14:                               @ %while.body42
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_17 Depth 2
	add	r3, r12, r12, lsl #1
	add	r3, lr, r3, lsl #2
	ldr	r4, [r3, #8]
	cmp	r4, #0
	beq	.LBB1_21
	b	.LBB1_15
.LBB1_15:                               @ %for.cond.preheader
                                        @   in Loop: Header=BB1_14 Depth=1
	ldr	r6, [r4]
	cmp	r6, #0
	blt	.LBB1_21
	b	.LBB1_16
.LBB1_16:                               @ %for.body.lr.ph
                                        @   in Loop: Header=BB1_14 Depth=1
	ldr	r5, [r1, r12, lsl #3]
	add	r3, r1, r12, lsl #3
	add	r4, r4, #4
	add	r3, r3, #4
	b	.LBB1_17
.LBB1_17:                               @ %for.body
                                        @   Parent Loop BB1_14 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r1, r6, lsl #3]
	cmp	r5, r7
	blt	.LBB1_19
	b	.LBB1_18
.LBB1_18:                               @ %lor.lhs.false60
                                        @   in Loop: Header=BB1_17 Depth=2
	add	r6, r1, r6, lsl #3
	ldr	r7, [r3]
	ldr	r6, [r6, #4]
	cmp	r7, r6
	ble	.LBB1_20
	b	.LBB1_19
.LBB1_19:                               @ %if.then67
                                        @   in Loop: Header=BB1_17 Depth=2
	mvn	r5, #0
	str	r5, [r3]
	str	r5, [r1, r12, lsl #3]
	b	.LBB1_20
.LBB1_20:                               @ %for.inc
                                        @   in Loop: Header=BB1_17 Depth=2
	ldr	r6, [r4], #4
	cmp	r6, #0
	bge	.LBB1_17
	b	.LBB1_21
.LBB1_21:                               @ %if.end74
                                        @   in Loop: Header=BB1_14 Depth=1
	add	r12, r12, #1
	cmp	r12, r0
	bhs	.LBB1_23
	b	.LBB1_22
.LBB1_22:                               @ %if.end74
                                        @   in Loop: Header=BB1_14 Depth=1
	cmp	r12, r2
	blo	.LBB1_14
	b	.LBB1_23
.LBB1_23:                               @ %while.cond78.preheader
	cmp	r12, r0
	bhs	.LBB1_26
	b	.LBB1_24
.LBB1_24:                               @ %while.body80.preheader
	add	r1, r1, r12, lsl #3
	sub	r0, r0, r12
	mvn	r2, #0
	add	r1, r1, #4
	b	.LBB1_25
.LBB1_25:                               @ %while.body80
                                        @ =>This Inner Loop Header: Depth=1
	str	r2, [r1, #-4]
	str	r2, [r1]
	add	r1, r1, #8
	subs	r0, r0, #1
	bne	.LBB1_25
	b	.LBB1_26
.LBB1_26:                               @ %while.end86
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	tre_fill_pmatch, .Ltmp1-tre_fill_pmatch
	.cantunwind
	.fnend

	.align	2
	.type	tre_tag_order,%function
tre_tag_order:                          @ @tre_tag_order
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	cmp	r0, #1
	blt	.LBB2_9
	b	.LBB2_2
.LBB2_2:
	mov	lr, #0
	b	.LBB2_3
.LBB2_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r1, lr, lsl #2]
	ldr	r6, [r3, lr, lsl #2]
	ldr	r5, [r2, lr, lsl #2]
	mov	r12, #1
	cmp	r4, #0
	beq	.LBB2_6
	b	.LBB2_4
.LBB2_4:                                @ %if.else
                                        @   in Loop: Header=BB2_3 Depth=1
	cmp	r5, r6
	bgt	.LBB2_10
	b	.LBB2_5
.LBB2_5:                                @ %if.end15
                                        @   in Loop: Header=BB2_3 Depth=1
	bge	.LBB2_8
	b	.LBB2_9
.LBB2_6:                                @ %if.then
                                        @   in Loop: Header=BB2_3 Depth=1
	cmp	r5, r6
	blt	.LBB2_10
	b	.LBB2_7
.LBB2_7:                                @ %if.end
                                        @   in Loop: Header=BB2_3 Depth=1
	bgt	.LBB2_9
	b	.LBB2_8
.LBB2_8:                                @ %for.inc
                                        @   in Loop: Header=BB2_3 Depth=1
	add	lr, lr, #1
	cmp	lr, r0
	blt	.LBB2_3
	b	.LBB2_9
.LBB2_9:
	mov	r12, #0
	b	.LBB2_10
.LBB2_10:                               @ %return
	mov	r0, r12
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp2:
	.size	tre_tag_order, .Ltmp2-tre_tag_order
	.cantunwind
	.fnend

	.align	2
	.type	tre_neg_char_classes_match,%function
tre_neg_char_classes_match:             @ @tre_neg_char_classes_match
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.LBB3_2:                                @ %entry
	mov	r5, r1
	ldr	r1, [r0]
	mov	r4, r2
	cmp	r1, #0
	beq	.LBB3_10
	b	.LBB3_3
.LBB3_3:                                @ %while.body.lr.ph
	add	r7, r0, #4
	b	.LBB3_4
.LBB3_4:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	cmp	r4, #0
	beq	.LBB3_7
	b	.LBB3_5
.LBB3_5:                                @ %land.lhs.true3
                                        @   in Loop: Header=BB3_4 Depth=1
	bl	towupper
	ldr	r1, [r7, #-4]
	bl	iswctype
	mov	r6, #1
	cmp	r0, #0
	bne	.LBB3_11
	b	.LBB3_6
.LBB3_6:                                @ %lor.lhs.false7
                                        @   in Loop: Header=BB3_4 Depth=1
	mov	r0, r5
	bl	towlower
	ldr	r1, [r7, #-4]
	bl	iswctype
	b	.LBB3_8
.LBB3_7:                                @ %land.lhs.true
                                        @   in Loop: Header=BB3_4 Depth=1
	bl	iswctype
	mov	r6, #1
	b	.LBB3_8
.LBB3_8:                                @ %lor.lhs.false7
                                        @   in Loop: Header=BB3_4 Depth=1
	cmp	r0, #0
	bne	.LBB3_11
	b	.LBB3_9
.LBB3_9:                                @ %if.else
                                        @   in Loop: Header=BB3_4 Depth=1
	ldr	r1, [r7], #4
	cmp	r1, #0
	bne	.LBB3_4
	b	.LBB3_10
.LBB3_10:
	mov	r6, #0
	b	.LBB3_11
.LBB3_11:                               @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	tre_neg_char_classes_match, .Ltmp3-tre_neg_char_classes_match
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
