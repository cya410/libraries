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
	.file	"src/regex/regcomp.bc"
	.globl	regcomp
	.align	2
	.type	regcomp,%function
regcomp:                                @ @regcomp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#124
	sub	sp, sp, #124
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r2
	mov	r4, r0
	mov	r0, #20
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r9, r1
	str	r6, [sp, #64]           @ 4-byte Spill
	bl	malloc
	mov	r5, r0
	mov	r11, #12
	cmp	r5, #0
	beq	.LBB0_115
	b	.LBB0_5
.LBB0_5:                                @ %if.then.i
	mov	r0, #2048
	bl	malloc
	str	r0, [r5, #16]
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_6
.LBB0_6:                                @ %tre_stack_new.exit.thread
	mov	r0, #512
	mov	r1, #10240
	mov	r2, #128
	mov	r3, #0
	b	.LBB0_7
.LBB0_7:                                @ %tre_stack_new.exit.thread
	stm	r5, {r0, r1, r2, r3}
	mov	r0, #0
	mov	r1, #0
	bl	__tre_mem_new_impl
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                @ %if.end4
	add	r0, sp, #68
	mov	r1, #0
	mov	r2, #36
	str	r4, [sp, #52]           @ 4-byte Spill
	b	.LBB0_9
.LBB0_9:                                @ %if.end4
	bl	memset
	mvn	r0, #0
	str	r7, [sp, #68]
	str	r5, [sp, #72]
	b	.LBB0_10
.LBB0_10:                               @ %if.end4
	str	r9, [sp, #84]
	str	r6, [sp, #100]
	mov	r1, #0
	str	r7, [sp, #48]           @ 4-byte Spill
	b	.LBB0_11
.LBB0_11:                               @ %if.end4
	str	r0, [sp, #96]
	mov	r0, r5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_107
	b	.LBB0_12
.LBB0_12:                               @ %for.cond.preheader.i
	and	r7, r6, #1
	mov	r8, #0
	mov	r1, #1
	add	r4, sp, #120
	add	r6, sp, #116
	add	r0, sp, #68
	mov	r2, #0
	b	.LBB0_17
.LBB0_13:                               @ %if.then3
	ldr	r0, [r5, #16]
	bl	free
	b	.LBB0_14
.LBB0_14:                               @ %tre_stack_new.exit.thread467
	mov	r0, r5
	bl	free
	b	.LBB0_115
.LBB0_15:                               @ %do.end35.i
                                        @   in Loop: Header=BB0_17 Depth=1
	ldr	r2, [sp, #56]           @ 4-byte Reload
	add	r0, r9, #2
	cmp	r7, #0
	add	r8, r8, #1
	b	.LBB0_16
.LBB0_16:                               @ %do.end35.i
                                        @   in Loop: Header=BB0_17 Depth=1
	addne	r0, r9, #1
	mov	r1, r8
	mov	r8, #0
	mov	r9, r0
	add	r0, sp, #68
	add	r2, r2, #1
	b	.LBB0_17
.LBB0_17:                               @ %for.cond.outer.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_19 Depth 2
                                        @       Child Loop BB0_31 Depth 3
	str	r1, [sp, #44]           @ 4-byte Spill
	mov	r1, #0
	mov	r10, #0
	str	r1, [sp, #60]           @ 4-byte Spill
	b	.LBB0_19
.LBB0_18:                               @   in Loop: Header=BB0_19 Depth=2
	ldr	r2, [sp, #56]           @ 4-byte Reload
	add	r4, sp, #120
	mov	r8, #0
	add	r0, sp, #68
	b	.LBB0_19
.LBB0_19:                               @ %for.cond.i
                                        @   Parent Loop BB0_17 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_31 Depth 3
	ldrb	r1, [r9]
	cmp	r7, #0
	beq	.LBB0_23
	b	.LBB0_20
.LBB0_20:                               @ %land.lhs.true9.i
                                        @   in Loop: Header=BB0_19 Depth=2
	cmp	r1, #40
	beq	.LBB0_88
	b	.LBB0_21
.LBB0_21:                               @ %land.lhs.true54.i
                                        @   in Loop: Header=BB0_19 Depth=2
	cmp	r2, #0
	beq	.LBB0_28
	b	.LBB0_22
.LBB0_22:                               @ %land.lhs.true54.i
                                        @   in Loop: Header=BB0_19 Depth=2
	cmp	r1, #41
	beq	.LBB0_25
	b	.LBB0_28
.LBB0_23:                               @ %land.lhs.true.i
                                        @   in Loop: Header=BB0_19 Depth=2
	cmp	r1, #92
	bne	.LBB0_28
	b	.LBB0_24
.LBB0_24:                               @ %land.lhs.true4.i
                                        @   in Loop: Header=BB0_19 Depth=2
	ldrb	r1, [r9, #1]
	cmp	r1, #41
	bne	.LBB0_27
	b	.LBB0_25
.LBB0_25:                               @ %if.then60.i
                                        @   in Loop: Header=BB0_19 Depth=2
	ldr	r0, [sp, #68]
	str	r2, [sp, #56]           @ 4-byte Spill
	mvn	r1, #0
	mvn	r2, #0
	b	.LBB0_26
.LBB0_26:                               @ %if.then60.i
                                        @   in Loop: Header=BB0_19 Depth=2
	mvn	r3, #0
	bl	tre_ast_new_literal
	str	r0, [sp, #76]
	cmp	r0, #0
	bne	.LBB0_31
	b	.LBB0_103
.LBB0_27:                               @ %land.lhs.true4.i
                                        @   in Loop: Header=BB0_19 Depth=2
	cmp	r1, #40
	beq	.LBB0_88
	b	.LBB0_28
.LBB0_28:                               @ %if.else.i
                                        @   in Loop: Header=BB0_19 Depth=2
	mov	r1, r9
	str	r2, [sp, #56]           @ 4-byte Spill
	bl	parse_atom
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_107
	b	.LBB0_29
.LBB0_29:                               @ %if.end70.i
                                        @   in Loop: Header=BB0_19 Depth=2
	ldr	r9, [sp, #80]
	b	.LBB0_31
.LBB0_30:                               @ %if.end115.i
                                        @   in Loop: Header=BB0_31 Depth=3
	str	r9, [sp, #80]
	b	.LBB0_31
.LBB0_31:                               @ %parse_iter.i
                                        @   Parent Loop BB0_17 Depth=1
                                        @     Parent Loop BB0_19 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r3, [r9]
	cmp	r3, #122
	bgt	.LBB0_35
	b	.LBB0_32
.LBB0_32:                               @ %parse_iter.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, #62
	bgt	.LBB0_38
	b	.LBB0_33
.LBB0_33:                               @ %parse_iter.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, #42
	beq	.LBB0_40
	b	.LBB0_34
.LBB0_34:                               @ %parse_iter.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, #43
	beq	.LBB0_39
	b	.LBB0_59
.LBB0_35:                               @ %parse_iter.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, #123
	bne	.LBB0_59
	b	.LBB0_36
.LBB0_36:                               @ %sw.bb107.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r7, #0
	beq	.LBB0_59
	b	.LBB0_37
.LBB0_37:                               @   in Loop: Header=BB0_31 Depth=3
	mov	r0, r9
	b	.LBB0_45
.LBB0_38:                               @ %parse_iter.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, #63
	bne	.LBB0_43
	b	.LBB0_39
.LBB0_39:                               @ %sw.bb.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r7, #0
	beq	.LBB0_59
	b	.LBB0_40
.LBB0_40:                               @ %sw.bb77.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mov	r2, #0
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #76]
	cmp	r3, #43
	b	.LBB0_41
.LBB0_41:                               @ %sw.bb77.i
                                        @   in Loop: Header=BB0_31 Depth=3
	str	r2, [sp]
	mov	r2, #0
	moveq	r2, #1
	cmp	r3, #63
	b	.LBB0_42
.LBB0_42:                               @ %sw.bb77.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mvn	r3, #0
	moveq	r3, #1
	bl	tre_ast_new_iter
	add	r9, r9, #1
	str	r0, [sp, #76]
	cmp	r0, #0
	bne	.LBB0_31
	b	.LBB0_91
.LBB0_43:                               @ %parse_iter.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, #92
	cmpeq	r7, #0
	bne	.LBB0_59
	b	.LBB0_44
.LBB0_44:                               @ %lor.lhs.false99.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mov	r0, r9
	ldrb	r1, [r0, #1]!
	cmp	r1, #123
	bne	.LBB0_59
	b	.LBB0_45
.LBB0_45:                               @ %parse_brace.i
                                        @   in Loop: Header=BB0_31 Depth=3
	add	r0, r0, #1
	mov	r1, r4
	bl	parse_dup_count
	mov	r9, r0
	ldrb	r0, [r9]
	cmp	r0, #44
	bne	.LBB0_47
	b	.LBB0_46
.LBB0_46:                               @ %if.then.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	add	r0, r9, #1
	mov	r1, r6
	bl	parse_dup_count
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #116]
	mov	r9, r0
	b	.LBB0_48
.LBB0_47:                               @ %if.else.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r2, [sp, #120]
	mov	r3, r2
	str	r2, [sp, #116]
	b	.LBB0_48
.LBB0_48:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, r2
	mov	r0, #0
	mov	r1, #0
	mov	r11, #10
	b	.LBB0_49
.LBB0_49:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	movlt	r0, #1
	cmp	r3, #0
	movge	r1, #1
	cmp	r2, #255
	bhi	.LBB0_107
	b	.LBB0_50
.LBB0_50:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r3, #255
	bgt	.LBB0_107
	b	.LBB0_51
.LBB0_51:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ands	r0, r1, r0
	bne	.LBB0_107
	b	.LBB0_52
.LBB0_52:                               @ %lor.lhs.false15.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldrb	r0, [sp, #100]
	tst	r0, #1
	bne	.LBB0_54
	b	.LBB0_53
.LBB0_53:                               @ %land.lhs.true16.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldrb	r0, [r9], #1
	cmp	r0, #92
	bne	.LBB0_107
	b	.LBB0_54
.LBB0_54:                               @ %lor.lhs.false20.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldrb	r0, [r9], #1
	cmp	r0, #125
	bne	.LBB0_107
	b	.LBB0_55
.LBB0_55:                               @ %if.end26.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	orrs	r0, r3, r2
	ldr	r0, [sp, #68]
	beq	.LBB0_57
	b	.LBB0_56
.LBB0_56:                               @ %if.else34.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r1, [sp, #76]
	str	r8, [sp]
	bl	tre_ast_new_iter
	b	.LBB0_58
.LBB0_57:                               @ %if.then32.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mvn	r1, #0
	mvn	r2, #0
	mvn	r3, #0
	bl	tre_ast_new_literal
	b	.LBB0_58
.LBB0_58:                               @ %if.end39.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mov	r11, #12
	str	r0, [sp, #76]
	cmp	r0, #0
	bne	.LBB0_30
	b	.LBB0_107
.LBB0_59:                               @ %sw.epilog.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [sp, #68]
	ldr	r2, [sp, #76]
	mov	r1, r10
	bl	tre_ast_new_catenation
	b	.LBB0_60
.LBB0_60:                               @ %sw.epilog.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldrb	r8, [r9]
	mov	r10, r0
	cmp	r7, #0
	beq	.LBB0_65
	b	.LBB0_61
.LBB0_61:                               @ %land.lhs.true121.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r8, #124
	beq	.LBB0_87
	b	.LBB0_62
.LBB0_62:                               @ %land.lhs.true127.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_70
	b	.LBB0_63
.LBB0_63:                               @ %land.lhs.true127.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r8, #41
	bne	.LBB0_70
	b	.LBB0_64
.LBB0_64:                               @ %if.then163.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #60]           @ 4-byte Reload
	mov	r2, r10
	bl	tre_ast_new_union
	mov	r6, r0
	add	r9, r9, #1
	b	.LBB0_72
.LBB0_65:                               @ %land.lhs.true135.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r8, #0
	beq	.LBB0_71
	b	.LBB0_66
.LBB0_66:                               @ %land.lhs.true135.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r8, #92
	ldrbeq	r0, [r9, #1]
	cmpeq	r0, #41
	bne	.LBB0_18
	b	.LBB0_67
.LBB0_67:                               @ %if.then155.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #60]           @ 4-byte Reload
	mov	r2, r10
	bl	tre_ast_new_union
	b	.LBB0_68
.LBB0_68:                               @ %if.then155.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mov	r6, r0
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_106
	b	.LBB0_69
.LBB0_69:                               @ %if.end158.i
                                        @   in Loop: Header=BB0_31 Depth=3
	add	r9, r9, #2
	b	.LBB0_72
.LBB0_70:                               @ %lor.lhs.false144.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r8, #0
	bne	.LBB0_18
	b	.LBB0_71
.LBB0_71:                               @ %if.then146.thread429.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #60]           @ 4-byte Reload
	mov	r2, r10
	bl	tre_ast_new_union
	mov	r6, r0
	b	.LBB0_72
.LBB0_72:                               @ %if.end166.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [r5, #12]
	sub	r0, r0, #1
	str	r0, [r5, #12]
	ldr	r1, [r5, #16]
	b	.LBB0_73
.LBB0_73:                               @ %if.end166.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r4, [r1, r0, lsl #2]
	ldr	r0, [r6, #12]
	cmp	r0, #0
	blt	.LBB0_79
	b	.LBB0_74
.LBB0_74:                               @ %if.then.i288.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [sp, #68]
	mvn	r1, #0
	mvn	r2, #0
	mvn	r3, #0
	b	.LBB0_75
.LBB0_75:                               @ %if.then.i288.i
                                        @   in Loop: Header=BB0_31 Depth=3
	bl	tre_ast_new_literal
	mov	r1, r0
	mov	r11, #12
	cmp	r1, #0
	beq	.LBB0_107
	b	.LBB0_76
.LBB0_76:                               @ %if.end.i289.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [sp, #68]
	mov	r2, r6
	bl	tre_ast_new_catenation
	ldr	r2, [sp, #56]           @ 4-byte Reload
	b	.LBB0_77
.LBB0_77:                               @ %if.end.i289.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mov	r1, #0
	mov	r10, #0
	mov	r3, #0
	cmp	r0, #0
	str	r1, [sp, #60]           @ 4-byte Spill
	beq	.LBB0_109
	b	.LBB0_78
.LBB0_78:                               @ %if.end6.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r1, [r6, #16]
	mov	r6, r0
	str	r1, [r0, #16]
	b	.LBB0_80
.LBB0_79:                               @ %entry.if.end8_crit_edge.i.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r1, [r6, #16]
	ldr	r2, [sp, #56]           @ 4-byte Reload
	b	.LBB0_80
.LBB0_80:                               @ %if.end172.i
                                        @   in Loop: Header=BB0_31 Depth=3
	add	r0, r1, #1
	str	r4, [r6, #12]
	cmp	r2, #0
	str	r0, [r6, #16]
	str	r6, [sp, #76]
	bgt	.LBB0_82
	b	.LBB0_81
.LBB0_81:                               @ %if.end172.i
                                        @   in Loop: Header=BB0_31 Depth=3
	cmp	r8, #0
	beq	.LBB0_92
	b	.LBB0_82
.LBB0_82:                               @ %if.end178.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mov	r11, #8
	mov	r0, #0
	cmp	r2, #1
	str	r0, [sp, #60]           @ 4-byte Spill
	blt	.LBB0_108
	b	.LBB0_83
.LBB0_83:                               @ %if.end178.i
                                        @   in Loop: Header=BB0_31 Depth=3
	mov	r10, #0
	mov	r3, #0
	cmp	r8, #0
	beq	.LBB0_109
	b	.LBB0_84
.LBB0_84:                               @ %if.end184.i
                                        @   in Loop: Header=BB0_31 Depth=3
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #16]
	sub	r2, r2, #1
	add	r4, sp, #120
	b	.LBB0_85
.LBB0_85:                               @ %if.end184.i
                                        @   in Loop: Header=BB0_31 Depth=3
	add	r6, sp, #116
	mov	r8, #0
	str	r2, [sp, #56]           @ 4-byte Spill
	add	r2, r1, r0, lsl #2
	b	.LBB0_86
.LBB0_86:                               @ %if.end184.i
                                        @   in Loop: Header=BB0_31 Depth=3
	sub	r0, r0, #2
	ldr	r10, [r2, #-4]
	str	r0, [r5, #12]
	ldr	r0, [r1, r0, lsl #2]
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_31
.LBB0_87:                               @ %if.then146.thread.i
                                        @   in Loop: Header=BB0_19 Depth=2
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #60]           @ 4-byte Reload
	mov	r2, r10
	bl	tre_ast_new_union
	str	r0, [sp, #60]           @ 4-byte Spill
	add	r9, r9, #1
	mov	r10, #0
	b	.LBB0_18
.LBB0_88:                               @ %do.body14.i
                                        @   in Loop: Header=BB0_17 Depth=1
	ldr	r1, [sp, #60]           @ 4-byte Reload
	mov	r0, r5
	str	r2, [sp, #56]           @ 4-byte Spill
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_107
	b	.LBB0_89
.LBB0_89:                               @ %do.body21.i
                                        @   in Loop: Header=BB0_17 Depth=1
	mov	r0, r5
	mov	r1, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_107
	b	.LBB0_90
.LBB0_90:                               @ %do.body28.i
                                        @   in Loop: Header=BB0_17 Depth=1
	ldr	r8, [sp, #44]           @ 4-byte Reload
	mov	r0, r5
	mov	r1, r8
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB0_15
	b	.LBB0_107
.LBB0_91:
	mov	r0, #0
	mov	r11, #12
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_108
.LBB0_92:                               @ %if.end11
	ldr	r0, [sp, #44]           @ 4-byte Reload
	ldr	r1, [sp, #52]           @ 4-byte Reload
	str	r0, [sp, #88]
	sub	r0, r0, #1
	b	.LBB0_93
.LBB0_93:                               @ %if.end11
	str	r0, [r1]
	ldr	r1, [sp, #96]
	cmp	r1, r0
	ble	.LBB0_95
	b	.LBB0_94
.LBB0_94:
	mov	r11, #6
	b	.LBB0_107
.LBB0_95:                               @ %if.end19
	mov	r0, #1
	mov	r1, #68
	mov	r4, #1
	bl	calloc
	mov	r3, r0
	cmp	r3, #0
	beq	.LBB0_104
	b	.LBB0_96
.LBB0_96:                               @ %if.end26
	ldr	r0, [sp, #96]
	eor	r1, r4, r0, lsr #31
	mov	r4, #0
	str	r1, [r3, #60]
	b	.LBB0_97
.LBB0_97:                               @ %if.end26
	str	r4, [r3, #64]
	ldr	r1, [sp, #88]
	str	r1, [r3, #28]
	ldr	r1, [sp, #64]           @ 4-byte Reload
	tst	r1, #8
	beq	.LBB0_99
	b	.LBB0_98
.LBB0_98:                               @ %if.end26
	lsr	r0, r0, #31
	cmp	r0, #1
	beq	.LBB0_126
	b	.LBB0_99
.LBB0_99:                               @ %if.then33
	mov	r0, #0
	mov	r1, r5
	mov	r2, r6
	mov	r7, r3
	b	.LBB0_100
.LBB0_100:                              @ %if.then33
	bl	tre_add_tags
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB0_116
	b	.LBB0_101
.LBB0_101:
	mov	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_102
.LBB0_102:
	mov	r10, #0
	mov	r3, r7
	b	.LBB0_109
.LBB0_103:
	mov	r11, #12
	b	.LBB0_107
.LBB0_104:
	mov	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_105
.LBB0_105:
	mov	r10, #0
	mov	r11, #12
	b	.LBB0_109
.LBB0_106:
	mov	r11, #8
	b	.LBB0_107
.LBB0_107:
	mov	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_108
.LBB0_108:
	mov	r10, #0
	mov	r3, #0
	b	.LBB0_109
.LBB0_109:                              @ %error_exit
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r7, r3
	bl	__tre_mem_destroy
	ldr	r0, [r5, #16]
	b	.LBB0_110
.LBB0_110:                              @ %error_exit
	bl	free
	mov	r0, r5
	bl	free
	cmp	r10, #0
	beq	.LBB0_112
	b	.LBB0_111
.LBB0_111:                              @ %if.then260
	mov	r0, r10
	bl	free
	b	.LBB0_112
.LBB0_112:                              @ %if.end261
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r4, [sp, #52]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_114
	b	.LBB0_113
.LBB0_113:                              @ %if.then264
	bl	free
	b	.LBB0_114
.LBB0_114:                              @ %if.end265
	mov	r0, r4
	str	r7, [r4, #4]
	bl	regfree
	b	.LBB0_115
.LBB0_115:                              @ %cleanup
	mov	r0, r11
	add	sp, sp, #124
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_116:                              @ %if.end41
	ldr	r0, [r7, #40]
	mov	r1, #0
	cmp	r0, #1
	blt	.LBB0_119
	b	.LBB0_117
.LBB0_117:                              @ %if.then44
	mov	r8, #4
	str	r1, [sp, #60]           @ 4-byte Spill
	add	r0, r8, r0, lsl #2
	bl	malloc
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB0_203
	b	.LBB0_118
.LBB0_118:                              @ %if.end54
	str	r4, [r7, #32]
	mvn	r1, #0
	ldr	r0, [r7, #40]
	add	r2, r8, r0, lsl #2
	mov	r0, r4
	bl	memset
	ldr	r0, [r7, #40]
	b	.LBB0_120
.LBB0_119:
	str	r1, [sp, #60]           @ 4-byte Spill
	mov	r4, #0
	b	.LBB0_120
.LBB0_120:                              @ %if.end60
	mov	r1, #1
	orr	r0, r1, r0, lsl #1
	mov	r1, #4
	bl	calloc
	b	.LBB0_121
.LBB0_121:                              @ %if.end60
	mov	r3, r7
	cmp	r0, #0
	str	r0, [r3, #36]
	beq	.LBB0_105
	b	.LBB0_122
.LBB0_122:                              @ %if.end72
	ldr	r0, [sp, #88]
	mov	r1, #12
	mov	r7, r3
	mov	r11, #12
	bl	calloc
	cmp	r0, #0
	beq	.LBB0_102
	b	.LBB0_123
.LBB0_123:                              @ %if.end81
	str	r0, [r7, #16]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r1, r5
	mov	r2, r6
	b	.LBB0_124
.LBB0_124:                              @ %if.end81
	mov	r3, r7
	bl	tre_add_tags
	mov	r11, r0
	mov	r3, r7
	cmp	r11, #0
	beq	.LBB0_126
	b	.LBB0_125
.LBB0_125:
	mov	r10, #0
	b	.LBB0_109
.LBB0_126:                              @ %if.end91
	ldr	r0, [r5, #12]
	mov	r1, r6
	str	r4, [sp, #56]           @ 4-byte Spill
	mov	r4, r3
	b	.LBB0_127
.LBB0_127:                              @ %if.end91
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #120]
	str	r0, [sp, #116]
	b	.LBB0_128
.LBB0_128:                              @ %if.end91
	mov	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, r5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_206
	b	.LBB0_129
.LBB0_129:                              @ %if.end.i409
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r5
	b	.LBB0_130
.LBB0_130:                              @ %if.end.i409
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_206
	b	.LBB0_131
.LBB0_131:                              @ %while.cond.preheader.i
	ldr	r0, [r5, #12]
	ldr	r1, [sp, #44]           @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB0_204
	b	.LBB0_132
.LBB0_132:
	mov	r1, #0
	str	r1, [sp, #32]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #40]           @ 4-byte Spill
	b	.LBB0_133
.LBB0_133:                              @ %if.end12.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_149 Depth 2
                                        @     Child Loop BB0_174 Depth 2
	sub	r2, r0, #1
	sub	r3, r0, #2
	str	r2, [r5, #12]
	ldr	r1, [r5, #16]
	b	.LBB0_134
.LBB0_134:                              @ %if.end12.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r2, [r1, r2, lsl #2]
	str	r3, [r5, #12]
	ldr	r3, [r1, r3, lsl #2]
	cmp	r2, #0
	bne	.LBB0_141
	b	.LBB0_135
.LBB0_135:                              @ %sw.bb.i415
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r3]
	cmp	r0, #3
	bhi	.LBB0_202
	b	.LBB0_136
.LBB0_136:                              @ %sw.bb.i415
                                        @   in Loop: Header=BB0_133 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI0_0_0
	ldr	pc, [r0, r1]
.LJTI0_0_0:
	.long	.LBB0_158
	.long	.LBB0_137
	.long	.LBB0_161
	.long	.LBB0_137
.LBB0_137:                              @ %sw.bb27.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r7, [r3, #4]
	mov	r0, r5
	ldr	r1, [r7, #4]
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_138
.LBB0_138:                              @ %if.end32.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, r5
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_139
.LBB0_139:                              @ %if.end36.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r1, [r7]
	mov	r0, r5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_140
.LBB0_140:                              @ %if.end40.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, r5
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB0_202
	b	.LBB0_205
.LBB0_141:                              @ %if.end12.i
                                        @   in Loop: Header=BB0_133 Depth=1
	cmp	r2, #1
	bne	.LBB0_202
	b	.LBB0_142
.LBB0_142:                              @ %sw.bb92.i
                                        @   in Loop: Header=BB0_133 Depth=1
	sub	r0, r0, #3
	ldr	r8, [r3, #4]
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r0, [r5, #12]
	b	.LBB0_143
.LBB0_143:                              @ %sw.bb92.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r1, r0, lsl #2]
	str	r0, [sp, #120]
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r10, [r8, #4]
	cmp	r10, #2
	blt	.LBB0_145
	b	.LBB0_144
.LBB0_144:                              @ %if.then101.i.thread
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, #0
	str	r0, [sp, #112]
	b	.LBB0_147
.LBB0_145:                              @ %lor.lhs.false98.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r8, #8]
	cmp	r0, #2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #40]           @ 4-byte Spill
	blt	.LBB0_199
	b	.LBB0_146
.LBB0_146:                              @ %if.then101.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r9, #0
	cmp	r10, #1
	str	r9, [sp, #112]
	blt	.LBB0_170
	b	.LBB0_147
.LBB0_147:                              @ %for.body.i.lr.ph
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	mov	r7, #0
	mov	r9, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_149
.LBB0_148:                              @ %if.end115.for.cond_crit_edge.i.for.body.i_crit_edge
                                        @   in Loop: Header=BB0_149 Depth=2
	ldr	r0, [sp, #120]
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_149
.LBB0_149:                              @ %for.body.i
                                        @   Parent Loop BB0_133 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r0, sp, #120
	ldr	r2, [r8]
	add	r7, r7, #1
	mov	r3, #2
	b	.LBB0_150
.LBB0_150:                              @ %for.body.i
                                        @   in Loop: Header=BB0_149 Depth=2
	mov	r1, r5
	str	r0, [sp]
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r7, r10
	b	.LBB0_151
.LBB0_151:                              @ %for.body.i
                                        @   in Loop: Header=BB0_149 Depth=2
	movlt	r3, #1
	str	r0, [sp, #4]
	add	r0, sp, #108
	str	r0, [sp, #8]
	b	.LBB0_152
.LBB0_152:                              @ %for.body.i
                                        @   in Loop: Header=BB0_149 Depth=2
	add	r0, sp, #116
	str	r0, [sp, #12]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_copy_ast
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_206
	b	.LBB0_153
.LBB0_153:                              @ %if.end111.i
                                        @   in Loop: Header=BB0_149 Depth=2
	ldr	r2, [sp, #108]
	cmp	r9, #0
	beq	.LBB0_155
	b	.LBB0_154
.LBB0_154:                              @ %if.then113.i
                                        @   in Loop: Header=BB0_149 Depth=2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r1, r9
	bl	tre_ast_new_catenation
	mov	r9, r0
	b	.LBB0_156
.LBB0_155:                              @   in Loop: Header=BB0_149 Depth=2
	mov	r9, r2
	b	.LBB0_156
.LBB0_156:                              @ %if.end115.i420
                                        @   in Loop: Header=BB0_149 Depth=2
	mov	r11, #12
	cmp	r9, #0
	beq	.LBB0_206
	b	.LBB0_157
.LBB0_157:                              @ %if.end115.for.cond_crit_edge.i
                                        @   in Loop: Header=BB0_149 Depth=2
	ldr	r10, [r8, #4]
	cmp	r7, r10
	blt	.LBB0_148
	b	.LBB0_171
.LBB0_158:                              @ %sw.bb15.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r3, #4]
	ldr	r1, [r0]
	cmp	r1, #0
	bge	.LBB0_160
	b	.LBB0_159
.LBB0_159:                              @ %sw.bb15.i
                                        @   in Loop: Header=BB0_133 Depth=1
	cmn	r1, #4
	bne	.LBB0_202
	b	.LBB0_160
.LBB0_160:                              @ %if.then19.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r1, [r0, #8]
	ldr	r2, [sp, #40]           @ 4-byte Reload
	add	r1, r1, r2
	str	r1, [r0, #8]
	ldr	r0, [sp, #116]
	cmp	r1, r0
	strgt	r1, [sp, #116]
	b	.LBB0_202
.LBB0_161:                              @ %sw.bb65.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r1, [sp, #40]           @ 4-byte Reload
	ldr	r8, [r3, #4]
	mov	r0, r5
	mov	r7, r3
	b	.LBB0_162
.LBB0_162:                              @ %sw.bb65.i
                                        @   in Loop: Header=BB0_133 Depth=1
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_163
.LBB0_163:                              @ %if.end70.i417
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, r5
	mov	r1, r7
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_164
.LBB0_164:                              @ %if.end74.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, r5
	mov	r1, #1
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_165
.LBB0_165:                              @ %if.end78.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r1, [r8]
	mov	r0, r5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_166
.LBB0_166:                              @ %if.end82.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, r5
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_205
	b	.LBB0_167
.LBB0_167:                              @ %if.end86.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r8, #4]
	cmp	r0, #1
	ldrle	r0, [r8, #8]
	cmple	r0, #2
	blt	.LBB0_169
	b	.LBB0_168
.LBB0_168:                              @ %if.then90.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, #0
	str	r0, [sp, #120]
	mov	r0, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_169
.LBB0_169:                              @ %if.end91.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_202
.LBB0_170:                              @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_171
.LBB0_171:                              @ %for.end.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r8, #8]
	cmn	r0, #1
	beq	.LBB0_186
	b	.LBB0_172
.LBB0_172:                              @ %for.cond134.preheader.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r7, #0
	b	.LBB0_174
.LBB0_173:                              @ %for.cond134.i
                                        @   in Loop: Header=BB0_174 Depth=2
	ldr	r0, [r8, #8]
	add	r10, r10, #1
	b	.LBB0_174
.LBB0_174:                              @ %for.cond134.i
                                        @   Parent Loop BB0_133 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r10, r0
	bge	.LBB0_193
	b	.LBB0_175
.LBB0_175:                              @ %for.body137.i
                                        @   in Loop: Header=BB0_174 Depth=2
	ldr	r0, [sp, #120]
	ldr	r2, [r8]
	mov	r1, r5
	mov	r3, #0
	b	.LBB0_176
.LBB0_176:                              @ %for.body137.i
                                        @   in Loop: Header=BB0_174 Depth=2
	str	r0, [sp, #40]           @ 4-byte Spill
	add	r0, sp, #120
	str	r0, [sp]
	mov	r0, #0
	b	.LBB0_177
.LBB0_177:                              @ %for.body137.i
                                        @   in Loop: Header=BB0_174 Depth=2
	str	r0, [sp, #4]
	add	r0, sp, #104
	str	r0, [sp, #8]
	add	r0, sp, #116
	b	.LBB0_178
.LBB0_178:                              @ %for.body137.i
                                        @   in Loop: Header=BB0_174 Depth=2
	str	r0, [sp, #12]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_copy_ast
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_206
	b	.LBB0_179
.LBB0_179:                              @ %if.end144.i
                                        @   in Loop: Header=BB0_174 Depth=2
	cmp	r7, #0
	beq	.LBB0_181
	b	.LBB0_180
.LBB0_180:                              @ %if.then146.i423
                                        @   in Loop: Header=BB0_174 Depth=2
	ldr	r1, [sp, #104]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r2, r7
	bl	tre_ast_new_catenation
	mov	r7, r0
	b	.LBB0_182
.LBB0_181:                              @ %if.else148.i
                                        @   in Loop: Header=BB0_174 Depth=2
	ldr	r7, [sp, #104]
	b	.LBB0_182
.LBB0_182:                              @ %if.end149.i
                                        @   in Loop: Header=BB0_174 Depth=2
	mov	r11, #12
	str	r7, [sp, #112]
	cmp	r7, #0
	beq	.LBB0_206
	b	.LBB0_183
.LBB0_183:                              @ %if.end152.i
                                        @   in Loop: Header=BB0_174 Depth=2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mvn	r1, #0
	mvn	r2, #0
	mvn	r3, #0
	b	.LBB0_184
.LBB0_184:                              @ %if.end152.i
                                        @   in Loop: Header=BB0_174 Depth=2
	bl	tre_ast_new_literal
	mov	r1, r0
	cmp	r1, #0
	beq	.LBB0_206
	b	.LBB0_185
.LBB0_185:                              @ %if.end156.i
                                        @   in Loop: Header=BB0_174 Depth=2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r2, r7
	bl	tre_ast_new_union
	mov	r7, r0
	str	r7, [sp, #112]
	cmp	r7, #0
	bne	.LBB0_173
	b	.LBB0_206
.LBB0_186:                              @ %if.then122.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #120]
	ldr	r2, [r8]
	mov	r1, r5
	mov	r3, #0
	b	.LBB0_187
.LBB0_187:                              @ %if.then122.i
                                        @   in Loop: Header=BB0_133 Depth=1
	str	r0, [sp, #40]           @ 4-byte Spill
	add	r0, sp, #120
	str	r0, [sp]
	mov	r0, #0
	b	.LBB0_188
.LBB0_188:                              @ %if.then122.i
                                        @   in Loop: Header=BB0_133 Depth=1
	str	r0, [sp, #4]
	add	r0, sp, #112
	str	r0, [sp, #8]
	add	r0, sp, #116
	b	.LBB0_189
.LBB0_189:                              @ %if.then122.i
                                        @   in Loop: Header=BB0_133 Depth=1
	str	r0, [sp, #12]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_copy_ast
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_206
	b	.LBB0_190
.LBB0_190:                              @ %if.end127.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r0, #0
	ldr	r1, [sp, #112]
	mov	r2, #0
	mvn	r3, #0
	b	.LBB0_191
.LBB0_191:                              @ %if.end127.i
                                        @   in Loop: Header=BB0_133 Depth=1
	str	r0, [sp]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_ast_new_iter
	mov	r7, r0
	b	.LBB0_192
.LBB0_192:                              @ %if.end127.i
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r11, #12
	str	r7, [sp, #112]
	cmp	r7, #0
	beq	.LBB0_206
	b	.LBB0_193
.LBB0_193:                              @ %if.end164.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	cmp	r9, #0
	str	r0, [sp, #120]
	beq	.LBB0_196
	b	.LBB0_194
.LBB0_194:                              @ %if.else167.i
                                        @   in Loop: Header=BB0_133 Depth=1
	cmp	r7, #0
	beq	.LBB0_197
	b	.LBB0_195
.LBB0_195:                              @ %if.then169.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r1, r9
	mov	r2, r7
	bl	tre_ast_new_catenation
	mov	r7, r0
	b	.LBB0_196
.LBB0_196:                              @ %if.end172.i424
                                        @   in Loop: Header=BB0_133 Depth=1
	mov	r11, #12
	cmp	r7, #0
	bne	.LBB0_198
	b	.LBB0_206
.LBB0_197:                              @   in Loop: Header=BB0_133 Depth=1
	mov	r7, r9
	b	.LBB0_198
.LBB0_198:                              @ %if.end175.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r7, #4]
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, [r7]
	str	r0, [r1]
	b	.LBB0_199
.LBB0_199:                              @ %if.end180.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	sub	r0, r0, r1
	ldr	r1, [sp, #32]           @ 4-byte Reload
	b	.LBB0_200
.LBB0_200:                              @ %if.end180.i
                                        @   in Loop: Header=BB0_133 Depth=1
	add	r1, r0, r1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r1, [sp, #32]           @ 4-byte Spill
	subs	r0, r0, #1
	str	r0, [sp, #36]           @ 4-byte Spill
	bne	.LBB0_202
	b	.LBB0_201
.LBB0_201:                              @ %if.then183.i
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	mov	r1, #0
	str	r1, [sp, #36]           @ 4-byte Spill
	str	r0, [sp, #120]
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_202
.LBB0_202:                              @ %land.rhs.i.backedge
                                        @   in Loop: Header=BB0_133 Depth=1
	ldr	r0, [r5, #12]
	ldr	r1, [sp, #44]           @ 4-byte Reload
	mov	r11, #0
	cmp	r0, r1
	bgt	.LBB0_133
	b	.LBB0_205
.LBB0_203:
	mov	r10, #0
	mov	r11, #12
	mov	r3, r7
	b	.LBB0_109
.LBB0_204:
	mov	r0, #0
	mov	r11, #0
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB0_205
.LBB0_205:                              @ %while.end.i
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #32]           @ 4-byte Reload
	add	r0, r0, r1
	ldr	r1, [sp, #116]
	cmp	r1, r0
	movgt	r0, r1
	str	r0, [sp, #92]
	b	.LBB0_206
.LBB0_206:                              @ %tre_expand_ast.exit
	mov	r10, #0
	mov	r3, r4
	cmp	r11, #0
	bne	.LBB0_109
	b	.LBB0_207
.LBB0_207:                              @ %if.end99
	mov	r8, r3
	ldr	r3, [sp, #92]
	ldr	r4, [sp, #48]           @ 4-byte Reload
	mov	r1, #0
	b	.LBB0_208
.LBB0_208:                              @ %if.end99
	mov	r2, #0
	add	r0, r3, #1
	str	r0, [sp, #92]
	mov	r0, r4
	b	.LBB0_209
.LBB0_209:                              @ %if.end99
	bl	tre_ast_new_literal
	mov	r2, r0
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB0_212
	b	.LBB0_210
.LBB0_210:                              @ %if.end108
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, r4
	mov	r1, r6
	bl	tre_ast_new_catenation
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_213
	b	.LBB0_211
.LBB0_211:                              @ %if.end116
	ldr	r4, [r5, #12]
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_216
.LBB0_212:
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_213
.LBB0_213:
	mov	r10, #0
	b	.LBB0_214
.LBB0_214:
	mov	r11, #12
	b	.LBB0_329
.LBB0_215:                              @ %if.end83.i
                                        @   in Loop: Header=BB0_216 Depth=1
	ldr	r0, [r9, #4]
	ldr	r1, [r0]
	mov	r0, r5
	b	.LBB0_216
.LBB0_216:                              @ %if.end116
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_219 Depth 2
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_217
.LBB0_217:                              @ %if.end.i432
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_219
.LBB0_218:                              @ %while.cond.backedge.i439
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r0, [r9, #28]
	mov	r4, r7
	b	.LBB0_219
.LBB0_219:                              @ %while.cond.preheader.i433
                                        @   Parent Loop BB0_216 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r5, #12]
	cmp	r0, r4
	ble	.LBB0_292
	b	.LBB0_220
.LBB0_220:                              @ %while.body.i
                                        @   in Loop: Header=BB0_219 Depth=2
	sub	r1, r0, #1
	sub	r0, r0, #2
	str	r1, [r5, #12]
	ldr	r2, [r5, #16]
	b	.LBB0_221
.LBB0_221:                              @ %while.body.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [r2, r1, lsl #2]
	str	r0, [r5, #12]
	cmp	r1, #3
	bhi	.LBB0_219
	b	.LBB0_222
.LBB0_222:                              @ %while.body.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r9, [r2, r0, lsl #2]
	lsl	r0, r1, #2
	adr	r1, .LJTI0_1_1
	mov	r7, r4
	ldr	pc, [r0, r1]
.LJTI0_1_1:
	.long	.LBB0_223
	.long	.LBB0_231
	.long	.LBB0_239
	.long	.LBB0_253
.LBB0_223:                              @ %sw.bb.i441
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [r9]
	mov	r4, r7
	cmp	r0, #3
	bhi	.LBB0_219
	b	.LBB0_224
.LBB0_224:                              @ %sw.bb.i441
                                        @   in Loop: Header=BB0_219 Depth=2
	lsl	r0, r0, #2
	adr	r1, .LJTI0_2_2
	mov	r7, r4
	ldr	pc, [r0, r1]
.LJTI0_2_2:
	.long	.LBB0_225
	.long	.LBB0_282
	.long	.LBB0_284
	.long	.LBB0_286
.LBB0_225:                              @ %sw.bb11.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r4, [r9, #4]
	ldr	r2, [r4]
	cmn	r2, #4
	bne	.LBB0_272
	b	.LBB0_226
.LBB0_226:                              @ %if.then13.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, #0
	mov	r2, #0
	str	r0, [r9, #8]
	ldr	r1, [r4, #8]
	b	.LBB0_227
.LBB0_227:                              @ %if.then13.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r0, [sp]
	str	r0, [sp, #4]
	mvn	r0, #0
	str	r0, [sp, #8]
	b	.LBB0_228
.LBB0_228:                              @ %if.then13.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r3, .LCPI0_0
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_set_one
	mov	r11, #12
	str	r0, [r9, #24]
	cmp	r0, #0
	beq	.LBB0_328
	b	.LBB0_229
.LCPI0_0:
	.long	1114111                 @ 0x10ffff
.LBB0_229:                              @ %if.end17.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldmib	r4, {r0, r1}
	mov	r2, #0
	str	r2, [sp]
	str	r2, [sp, #4]
	b	.LBB0_230
.LBB0_230:                              @ %if.end17.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r2, #0
	str	r0, [sp, #8]
	ldr	r3, .LCPI0_1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	b	.LBB0_278
.LCPI0_1:
	.long	1114111                 @ 0x10ffff
.LBB0_231:                              @ %sw.bb152.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r4, [r9, #4]
	mov	r2, #1
	ldm	r4, {r0, r1}
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bne	.LBB0_233
	b	.LBB0_232
.LBB0_232:                              @ %lor.rhs.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r2, [r1, #8]
	cmp	r2, #0
	movne	r2, #1
	b	.LBB0_233
.LBB0_233:                              @ %lor.end.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r2, [r9, #8]
	mov	r3, #0
	ldr	r2, [r1, #24]
	ldr	r1, [r0, #24]
	b	.LBB0_234
.LBB0_234:                              @ %lor.end.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_set_union
	b	.LBB0_235
.LBB0_235:                              @ %lor.end.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r11, #12
	str	r0, [r9, #24]
	cmp	r0, #0
	beq	.LBB0_328
	b	.LBB0_236
.LBB0_236:                              @ %if.end170.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldm	r4, {r0, r1}
	mov	r3, #0
	ldr	r2, [r1, #28]
	ldr	r1, [r0, #28]
	b	.LBB0_237
.LBB0_237:                              @ %if.end170.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_set_union
	b	.LBB0_238
.LBB0_238:                              @ %if.end17.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r4, r7
	str	r0, [r9, #28]
	cmp	r0, #0
	bne	.LBB0_219
	b	.LBB0_328
.LBB0_239:                              @ %sw.bb198.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [r9, #4]
	ldr	r1, [r0]
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, #0
	ldr	r2, [r1, #8]
	cmp	r2, #0
	beq	.LBB0_241
	b	.LBB0_240
.LBB0_240:                              @ %land.rhs.i453
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [sp, #56]           @ 4-byte Reload
	ldr	r0, [r0, #4]
	ldr	r0, [r0, #8]
	cmp	r0, #0
	movne	r0, #1
	b	.LBB0_241
.LBB0_241:                              @ %land.end.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r0, [r9, #8]
	ldr	r0, [r1, #8]
	cmp	r0, #0
	beq	.LBB0_256
	b	.LBB0_242
.LBB0_242:                              @ %if.then210.i
                                        @   in Loop: Header=BB0_219 Depth=2
	add	r0, sp, #120
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp]
	b	.LBB0_243
.LBB0_243:                              @ %if.then210.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, r5
	bl	tre_match_empty
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_244
.LBB0_244:                              @ %if.end215.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [sp, #120]
	mov	r1, #4
	str	r7, [sp, #44]           @ 4-byte Spill
	add	r0, r1, r0, lsl #2
	b	.LBB0_245
.LBB0_245:                              @ %if.end215.i
                                        @   in Loop: Header=BB0_219 Depth=2
	bl	malloc
	mov	r7, r0
	mov	r11, #12
	cmp	r7, #0
	beq	.LBB0_328
	b	.LBB0_246
.LBB0_246:                              @ %if.end219.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [sp, #56]           @ 4-byte Reload
	mvn	r0, #0
	mov	r2, r7
	add	r3, sp, #116
	b	.LBB0_247
.LBB0_247:                              @ %if.end219.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r0, [r7]
	mov	r0, #0
	str	r0, [sp, #116]
	ldr	r1, [r1]
	b	.LBB0_248
.LBB0_248:                              @ %if.end219.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r0, [sp]
	mov	r0, r5
	bl	tre_match_empty
	mov	r10, r0
	cmp	r10, #0
	bne	.LBB0_327
	b	.LBB0_249
.LBB0_249:                              @ %if.end224.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [sp, #56]           @ 4-byte Reload
	mov	r3, r7
	ldr	r0, [r1]
	mov	r4, r1
	b	.LBB0_250
.LBB0_250:                              @ %if.end224.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r2, [r0, #24]
	ldr	r0, [r4, #4]!
	ldr	r1, [r0, #24]
	ldr	r0, [sp, #116]
	b	.LBB0_251
.LBB0_251:                              @ %if.end224.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r0, [sp]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_set_union
	str	r0, [r9, #24]
	b	.LBB0_252
.LBB0_252:                              @ %if.end224.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, r7
	bl	free
	ldr	r0, [r9, #24]
	cmp	r0, #0
	ldr	r0, [sp, #44]           @ 4-byte Reload
	bne	.LBB0_257
	b	.LBB0_328
.LBB0_253:                              @ %sw.bb181.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [r9, #4]
	ldm	r1, {r0, r1}
	cmp	r1, #0
	beq	.LBB0_255
	b	.LBB0_254
.LBB0_254:                              @ %lor.lhs.false.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [r0, #8]
	cmp	r1, #0
	beq	.LBB0_270
	b	.LBB0_255
.LBB0_255:                              @ %if.then187.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r1, #1
	b	.LBB0_271
.LBB0_256:                              @ %if.else235.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [r1, #24]
	str	r0, [r9, #24]
	ldr	r0, [sp, #56]           @ 4-byte Reload
	add	r4, r0, #4
	mov	r0, r7
	b	.LBB0_257
.LBB0_257:                              @ %if.end239.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [r4]
	mov	r7, r0
	ldr	r0, [r1, #8]
	cmp	r0, #0
	beq	.LBB0_269
	b	.LBB0_258
.LBB0_258:                              @ %if.then243.i
                                        @   in Loop: Header=BB0_219 Depth=2
	add	r0, sp, #120
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp]
	b	.LBB0_259
.LBB0_259:                              @ %if.then243.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, r5
	bl	tre_match_empty
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_260
.LBB0_260:                              @ %if.end248.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [sp, #120]
	mov	r1, #4
	str	r7, [sp, #44]           @ 4-byte Spill
	add	r0, r1, r0, lsl #2
	b	.LBB0_261
.LBB0_261:                              @ %if.end248.i
                                        @   in Loop: Header=BB0_219 Depth=2
	bl	malloc
	mov	r7, r0
	mov	r11, #12
	cmp	r7, #0
	beq	.LBB0_328
	b	.LBB0_262
.LBB0_262:                              @ %if.end254.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mvn	r0, #0
	mov	r2, r7
	add	r3, sp, #116
	str	r0, [r7]
	b	.LBB0_263
.LBB0_263:                              @ %if.end254.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, #0
	str	r0, [sp, #116]
	ldr	r1, [r4]
	str	r0, [sp]
	b	.LBB0_264
.LBB0_264:                              @ %if.end254.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, r5
	bl	tre_match_empty
	mov	r10, r0
	cmp	r10, #0
	bne	.LBB0_327
	b	.LBB0_265
.LBB0_265:                              @ %if.end260.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [sp, #56]           @ 4-byte Reload
	mov	r3, r7
	ldm	r1, {r0, r1}
	ldr	r2, [r1, #28]
	b	.LBB0_266
.LBB0_266:                              @ %if.end260.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r1, [r0, #28]
	ldr	r0, [sp, #116]
	str	r0, [sp]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	b	.LBB0_267
.LBB0_267:                              @ %if.end260.i
                                        @   in Loop: Header=BB0_219 Depth=2
	bl	tre_set_union
	str	r0, [r9, #28]
	mov	r0, r7
	bl	free
	b	.LBB0_268
.LBB0_268:                              @ %if.end260.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [r9, #28]
	ldr	r4, [sp, #44]           @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB0_219
	b	.LBB0_328
.LBB0_269:                              @ %if.else271.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [r1, #28]
	b	.LBB0_218
.LBB0_270:                              @ %if.else189.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r1, #0
	b	.LBB0_271
.LBB0_271:                              @ %if.end191.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r1, [r9, #8]
	ldr	r1, [r0, #24]
	str	r1, [r9, #24]
	ldr	r0, [r0, #28]
	b	.LBB0_218
.LBB0_272:                              @ %if.else.i445
                                        @   in Loop: Header=BB0_219 Depth=2
	cmp	r2, #0
	blt	.LBB0_279
	b	.LBB0_273
.LBB0_273:                              @ %if.else40.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, #0
	str	r0, [r9, #8]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #8]
	b	.LBB0_274
.LBB0_274:                              @ %if.else40.i
                                        @   in Loop: Header=BB0_219 Depth=2
	str	r0, [sp]
	str	r0, [sp, #4]
	mvn	r0, #0
	str	r0, [sp, #8]
	b	.LBB0_275
.LBB0_275:                              @ %if.else40.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_set_one
	mov	r11, #12
	str	r0, [r9, #24]
	cmp	r0, #0
	beq	.LBB0_328
	b	.LBB0_276
.LBB0_276:                              @ %if.end50.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldm	r4, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r4, [r4, #16]
	b	.LBB0_277
.LBB0_277:                              @ %if.end50.i
                                        @   in Loop: Header=BB0_219 Depth=2
	stm	sp, {r0, r4}
	mvn	r0, #0
	str	r0, [sp, #8]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	b	.LBB0_278
.LBB0_278:                              @ %if.end17.i
                                        @   in Loop: Header=BB0_219 Depth=2
	bl	tre_set_one
	b	.LBB0_238
.LBB0_279:                              @ %if.then26.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r0, #1
	str	r0, [r9, #8]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_set_empty
	b	.LBB0_280
.LBB0_280:                              @ %if.then26.i
                                        @   in Loop: Header=BB0_219 Depth=2
	mov	r11, #12
	str	r0, [r9, #24]
	cmp	r0, #0
	beq	.LBB0_328
	b	.LBB0_281
.LBB0_281:                              @ %if.end33.i
                                        @   in Loop: Header=BB0_219 Depth=2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	tre_set_empty
	b	.LBB0_238
.LBB0_282:                              @ %sw.bb95.i
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, r9
	bl	tre_stack_push
	mov	r11, r0
	mov	r4, r7
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_283
.LBB0_283:                              @ %if.end100.i
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, #2
	b	.LBB0_288
.LBB0_284:                              @ %sw.bb130.i
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, r9
	bl	tre_stack_push
	mov	r11, r0
	mov	r4, r7
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_285
.LBB0_285:                              @ %if.end135.i
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, #3
	b	.LBB0_291
.LBB0_286:                              @ %sw.bb62.i
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, r9
	bl	tre_stack_push
	mov	r11, r0
	mov	r4, r7
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_287
.LBB0_287:                              @ %if.end67.i
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, #1
	b	.LBB0_288
.LBB0_288:                              @ %if.end67.i
                                        @   in Loop: Header=BB0_216 Depth=1
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_289
.LBB0_289:                              @ %if.end72.i
                                        @   in Loop: Header=BB0_216 Depth=1
	ldr	r0, [r9, #4]
	ldr	r1, [r0, #4]
	mov	r0, r5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_328
	b	.LBB0_290
.LBB0_290:                              @ %if.end78.i448
                                        @   in Loop: Header=BB0_216 Depth=1
	mov	r0, r5
	mov	r1, #0
	b	.LBB0_291
.LBB0_291:                              @ %if.end78.i448
                                        @   in Loop: Header=BB0_216 Depth=1
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB0_215
	b	.LBB0_328
.LBB0_292:                              @ %if.end124
	ldr	r0, [sp, #92]
	lsl	r0, r0, #2
	bl	malloc
	mov	r10, r0
	cmp	r10, #0
	beq	.LBB0_302
	b	.LBB0_293
.LBB0_293:                              @ %if.end134
	ldr	r0, [sp, #92]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [sp, #60]           @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB0_214
	b	.LBB0_294
.LBB0_294:                              @ %for.cond.preheader
	ldr	r0, [sp, #92]
	cmp	r0, #1
	blt	.LBB0_297
	b	.LBB0_295
.LBB0_295:
	mov	r0, #0
	mov	r1, #0
	b	.LBB0_296
.LBB0_296:                              @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	str	r1, [r10, r0, lsl #2]
	add	r0, r0, #1
	ldr	r2, [sp, #92]
	cmp	r0, r2
	blt	.LBB0_296
	b	.LBB0_297
.LBB0_297:                              @ %for.end
	mov	r0, r6
	mov	r1, #0
	mov	r2, r10
	mov	r3, #0
	b	.LBB0_298
.LBB0_298:                              @ %for.end
	mov	r4, #0
	bl	tre_ast_to_tnfa
	ldr	r0, [sp, #92]
	cmp	r0, #1
	blt	.LBB0_303
	b	.LBB0_299
.LBB0_299:
	ldr	r3, [sp, #60]           @ 4-byte Reload
	mov	r0, #0
	mov	r1, #0
	b	.LBB0_300
.LBB0_300:                              @ %for.body154
                                        @ =>This Inner Loop Header: Depth=1
	str	r4, [r3, r1, lsl #2]
	ldr	r2, [r10, r1, lsl #2]
	str	r0, [r10, r1, lsl #2]
	add	r1, r1, #1
	b	.LBB0_301
.LBB0_301:                              @ %for.body154
                                        @   in Loop: Header=BB0_300 Depth=1
	add	r2, r4, r2
	add	r4, r2, #1
	ldr	r2, [sp, #92]
	cmp	r1, r2
	blt	.LBB0_300
	b	.LBB0_304
.LBB0_302:
	mov	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_214
.LBB0_303:
	ldr	r3, [sp, #60]           @ 4-byte Reload
	b	.LBB0_304
.LBB0_304:                              @ %for.end162
	add	r0, r4, #1
	mov	r1, #32
	str	r3, [sp, #60]           @ 4-byte Spill
	bl	calloc
	cmp	r0, #0
	beq	.LBB0_214
	b	.LBB0_305
.LBB0_305:                              @ %if.end171
	mov	r1, r0
	str	r8, [sp, #20]           @ 4-byte Spill
	mov	r0, r6
	mov	r2, r10
	b	.LBB0_306
.LBB0_306:                              @ %if.end171
	str	r1, [sp, #40]           @ 4-byte Spill
	stm	r8, {r1, r4}
	ldr	r3, [sp, #60]           @ 4-byte Reload
	bl	tre_ast_to_tnfa
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB0_331
	b	.LBB0_307
.LBB0_307:                              @ %if.end180
	ldr	r1, [sp, #20]           @ 4-byte Reload
	mov	r0, #0
	str	r0, [r1, #20]
	ldr	r1, [r6, #24]
	b	.LBB0_308
.LBB0_308:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1, r0, lsl #5]
	add	r0, r0, #1
	cmp	r2, #0
	bge	.LBB0_308
	b	.LBB0_309
.LBB0_309:                              @ %while.end
	mov	r1, #32
	bl	calloc
	str	r0, [sp, #36]           @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB0_330
	b	.LBB0_310
.LBB0_310:                              @ %if.end193
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #36]           @ 4-byte Reload
	mov	r11, #0
	mov	r8, #0
	b	.LBB0_311
.LBB0_311:                              @ %if.end193
	str	r1, [r0, #8]
	ldr	r7, [r6, #24]
	ldr	r0, [r7]
	cmp	r0, #0
	blt	.LBB0_320
	b	.LBB0_312
.LBB0_312:
	mov	r8, #0
	b	.LBB0_313
.LBB0_313:                              @ %for.body200
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_316 Depth 2
	ldr	r1, [sp, #36]           @ 4-byte Reload
	ldr	r2, [sp, #40]           @ 4-byte Reload
	mov	r9, #0
	add	r3, r1, r8, lsl #5
	b	.LBB0_314
.LBB0_314:                              @ %for.body200
                                        @   in Loop: Header=BB0_313 Depth=1
	ldr	r1, [sp, #60]           @ 4-byte Reload
	str	r3, [sp, #56]           @ 4-byte Spill
	ldr	r1, [r1, r0, lsl #2]
	add	r1, r2, r1, lsl #5
	b	.LBB0_315
.LBB0_315:                              @ %for.body200
                                        @   in Loop: Header=BB0_313 Depth=1
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	str	r9, [r3, #16]!
	ldr	r0, [r7, #12]
	str	r3, [sp, #44]           @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB0_319
	b	.LBB0_316
.LBB0_316:                              @ %for.cond210
                                        @   Parent Loop BB0_313 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, r9]
	add	r9, r9, #4
	cmp	r1, #0
	bge	.LBB0_316
	b	.LBB0_317
.LBB0_317:                              @ %for.end218
                                        @   in Loop: Header=BB0_313 Depth=1
	mov	r0, r9
	bl	malloc
	ldr	r1, [sp, #44]           @ 4-byte Reload
	cmp	r0, #0
	str	r0, [r1]
	beq	.LBB0_330
	b	.LBB0_318
.LBB0_318:                              @ %if.end231
                                        @   in Loop: Header=BB0_313 Depth=1
	ldr	r1, [r7, #12]
	mov	r2, r9
	bl	memcpy
	b	.LBB0_319
.LBB0_319:                              @ %if.end238
                                        @   in Loop: Header=BB0_313 Depth=1
	ldr	r0, [r7, #16]
	ldr	r1, [sp, #56]           @ 4-byte Reload
	add	r8, r8, #1
	str	r0, [r1, #20]
	ldr	r0, [r7, #32]!
	cmp	r0, #0
	bge	.LBB0_313
	b	.LBB0_320
.LBB0_320:                              @ %for.end244
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r7, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #40]           @ 4-byte Reload
	add	r0, r0, r8, lsl #5
	b	.LBB0_321
.LBB0_321:                              @ %for.end244
	str	r11, [r0, #8]
	str	r4, [r7, #4]
	ldr	r4, [sp, #60]           @ 4-byte Reload
	ldr	r0, [r6, #28]
	b	.LBB0_322
.LBB0_322:                              @ %for.end244
	ldr	r0, [r0]
	ldr	r0, [r4, r0, lsl #2]
	add	r0, r1, r0, lsl #5
	str	r0, [r7, #12]
	b	.LBB0_323
.LBB0_323:                              @ %for.end244
	ldr	r0, [sp, #92]
	str	r0, [r7, #52]
	ldr	r0, [sp, #64]           @ 4-byte Reload
	str	r0, [r7, #56]
	b	.LBB0_324
.LBB0_324:                              @ %for.end244
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	__tre_mem_destroy
	ldr	r0, [r5, #16]
	bl	free
	b	.LBB0_325
.LBB0_325:                              @ %for.end244
	mov	r0, r5
	bl	free
	mov	r0, r10
	bl	free
	b	.LBB0_326
.LBB0_326:                              @ %for.end244
	mov	r0, r4
	bl	free
	ldr	r0, [sp, #52]           @ 4-byte Reload
	str	r7, [r0, #4]
	b	.LBB0_115
.LBB0_327:                              @ %if.then223.i
	mov	r0, r7
	bl	free
	mov	r11, r10
	b	.LBB0_328
.LBB0_328:                              @ %tre_compute_nfl.exit.thread
	mov	r10, #0
	b	.LBB0_329
.LBB0_329:                              @ %error_exit
	mov	r3, r8
	b	.LBB0_109
.LBB0_330:
	mov	r11, #12
	b	.LBB0_331
.LBB0_331:
	ldr	r3, [sp, #20]           @ 4-byte Reload
	b	.LBB0_109
.Ltmp0:
	.size	regcomp, .Ltmp0-regcomp
	.cantunwind
	.fnend

	.align	2
	.type	tre_add_tags,%function
tre_add_tags:                           @ @tre_add_tags
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#76
	sub	sp, sp, #76
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r7, r3
	mov	r10, r1
	mov	r4, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r1, #0
	mov	r8, r2
	mov	r2, #0
	mov	r0, #0
	b	.LBB1_5
.LBB1_5:                                @ %entry
	cmp	r7, #0
	ldr	r6, [r10, #12]
	str	r7, [sp, #72]           @ 4-byte Spill
	moveq	r1, #1
	b	.LBB1_6
.LBB1_6:                                @ %entry
	cmp	r4, #0
	moveq	r2, #1
	orrs	r1, r2, r1
	streq	r0, [r7, #48]
	b	.LBB1_7
.LBB1_7:                                @ %entry
	str	r1, [sp, #64]           @ 4-byte Spill
	mvneq	r1, #0
	str	r6, [sp, #68]           @ 4-byte Spill
	ldreq	r0, [r7, #36]
	b	.LBB1_8
.LBB1_8:                                @ %entry
	streq	r1, [r0]
	mov	r1, #8
	ldr	r0, [r7, #28]
	add	r0, r1, r0, lsl #3
	b	.LBB1_9
.LBB1_9:                                @ %entry
	bl	malloc
	mov	r9, r0
	mov	r11, #12
	str	r9, [sp, #60]           @ 4-byte Spill
	cmp	r9, #0
	beq	.LBB1_195
	b	.LBB1_10
.LBB1_10:                               @ %if.end6
	str	r4, [sp, #40]           @ 4-byte Spill
	mvn	r4, #0
	mov	r1, #4
	str	r4, [r9]
	b	.LBB1_11
.LBB1_11:                               @ %if.end6
	ldr	r0, [r7, #28]
	add	r0, r1, r0, lsl #2
	bl	malloc
	mov	r2, r0
	str	r2, [sp, #56]           @ 4-byte Spill
	cmp	r2, #0
	beq	.LBB1_25
	b	.LBB1_12
.LBB1_12:                               @ %if.end14
	str	r4, [r2]
	mov	r1, #8
	str	r6, [sp, #68]           @ 4-byte Spill
	mov	r4, r2
	b	.LBB1_13
.LBB1_13:                               @ %if.end14
	ldr	r0, [r7, #28]
	add	r0, r1, r0, lsl #3
	bl	malloc
	cmp	r0, #0
	beq	.LBB1_26
	b	.LBB1_14
.LBB1_14:                               @ %for.cond.preheader
	ldr	r3, [r7, #28]
	mov	r1, #0
	mvn	r2, #0
	str	r7, [sp, #72]           @ 4-byte Spill
	b	.LBB1_15
.LBB1_15:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	str	r2, [r0, r1, lsl #3]
	add	r1, r1, #1
	cmp	r1, r3
	bls	.LBB1_15
	b	.LBB1_16
.LBB1_16:                               @ %do.body
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r10
	mov	r1, r8
	bl	tre_stack_push
	b	.LBB1_17
.LBB1_17:                               @ %do.body
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r10
	b	.LBB1_18
.LBB1_18:                               @ %do.body
	bl	tre_stack_push
	mov	r11, r0
	mvn	r12, #0
	cmp	r11, #0
	bne	.LBB1_183
	b	.LBB1_19
.LBB1_19:                               @ %do.body
	ldr	r0, [r10, #12]
	ldr	r8, [sp, #68]           @ 4-byte Reload
	ldr	lr, [sp, #64]           @ 4-byte Reload
	mov	r5, r9
	b	.LBB1_20
.LBB1_20:                               @ %do.body
	mov	r1, #0
	mov	r6, r5
	str	r1, [sp, #32]           @ 4-byte Spill
	mov	r1, #0
	b	.LBB1_21
.LBB1_21:                               @ %do.body
	str	r5, [sp, #60]           @ 4-byte Spill
	str	r1, [sp, #52]           @ 4-byte Spill
	cmp	r0, r8
	ble	.LBB1_184
	b	.LBB1_22
.LBB1_22:                               @ %if.end35.lr.ph
	add	r1, r4, #4
	mov	r6, r5
	mov	r7, #1
	mvn	r12, #0
	b	.LBB1_23
.LBB1_23:                               @ %if.end35.lr.ph
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #48]           @ 4-byte Spill
	mov	r1, #0
	b	.LBB1_24
.LBB1_24:                               @ %if.end35.lr.ph
	str	r1, [sp, #32]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #52]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB1_140
.LBB1_25:                               @ %if.then13
	mov	r0, r9
	b	.LBB1_194
.LBB1_26:                               @ %if.then21
	mov	r0, r9
	bl	free
	mov	r0, r4
	b	.LBB1_194
.LBB1_27:                               @ %if.end461
                                        @   in Loop: Header=BB1_140 Depth=1
	sub	r1, r0, #3
	sub	r0, r0, #4
	mov	r11, #0
	str	r1, [r10, #12]
	b	.LBB1_28
.LBB1_28:                               @ %if.end461
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [r2, r1, lsl #2]
	str	r0, [r10, #12]
	ldr	r0, [r2, r0, lsl #2]
	cmp	r1, #0
	b	.LBB1_29
.LBB1_29:                               @ %if.end461
                                        @   in Loop: Header=BB1_140 Depth=1
	movne	r12, r0
	mov	r0, #0
	moveq	r0, #1
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB1_181
.LBB1_30:                               @ %sw.bb494.if.end516_crit_edge
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [r6, #16]
	str	r12, [sp, #44]          @ 4-byte Spill
	mov	r9, lr
	b	.LBB1_31
.LBB1_31:                               @ %if.end516
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r6, [r3, #-24]
	sub	r3, r0, #7
	ldr	r7, [sp, #72]           @ 4-byte Reload
	sub	r0, r0, #8
	b	.LBB1_32
.LBB1_32:                               @ %if.end516
                                        @   in Loop: Header=BB1_140 Depth=1
	cmp	r4, #1
	str	r3, [r10, #12]
	ldr	r8, [r2, r3, lsl #2]
	mov	r3, #1
	str	r0, [r10, #12]
	str	r3, [sp, #28]           @ 4-byte Spill
	blt	.LBB1_46
	b	.LBB1_33
.LBB1_33:                               @ %if.then523
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r7, [sp, #72]           @ 4-byte Spill
	mov	r11, #0
	mov	r7, r1
	cmp	r9, #0
	bne	.LBB1_39
	b	.LBB1_34
.LBB1_34:                               @ %if.then525
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r7, [sp, #36]           @ 4-byte Spill
	ldr	r7, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	str	r5, [sp, #60]           @ 4-byte Spill
	b	.LBB1_35
.LBB1_35:                               @ %if.then525
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r5, [r2, r0, lsl #2]
	mov	r2, r8
	mov	r0, r7
	bl	tre_add_tag_right
	b	.LBB1_36
.LBB1_36:                               @ %if.then525
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [sp, #72]           @ 4-byte Reload
	mov	r1, #1
	mov	r2, r5
	ldr	r0, [r4, #32]
	b	.LBB1_37
.LBB1_37:                               @ %if.then525
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r1, [r0, r8, lsl #2]
	ldr	r1, [sp, #20]           @ 4-byte Reload
	mov	r0, r7
	mov	r8, #1
	b	.LBB1_38
.LBB1_38:                               @ %if.then525
                                        @   in Loop: Header=BB1_140 Depth=1
	bl	tre_add_tag_right
	mov	r11, r0
	ldr	r0, [r4, #32]
	ldr	r7, [sp, #36]           @ 4-byte Reload
	str	r8, [r0, r5, lsl #2]
	ldr	r5, [sp, #60]           @ 4-byte Reload
	b	.LBB1_39
.LBB1_39:                               @ %if.end532
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r4, [sp, #56]           @ 4-byte Reload
	ldr	r8, [sp, #68]           @ 4-byte Reload
	ldr	r12, [sp, #44]          @ 4-byte Reload
	mov	lr, r9
	add	r0, r0, #2
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB1_181
.LBB1_40:                               @ %if.end120
                                        @   in Loop: Header=BB1_140 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI1_1_1
	ldr	pc, [r0, r1]
.LJTI1_1_1:
	.long	.LBB1_41
	.long	.LBB1_47
	.long	.LBB1_53
	.long	.LBB1_55
.LBB1_41:                               @ %sw.bb121
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r7, #4]
	ldr	r9, [sp, #36]           @ 4-byte Reload
	ldr	r0, [r0]
	cmp	r0, #0
	bge	.LBB1_43
	b	.LBB1_42
.LBB1_42:                               @ %sw.bb121
                                        @   in Loop: Header=BB1_140 Depth=1
	cmn	r0, #4
	bne	.LBB1_74
	b	.LBB1_43
.LBB1_43:                               @ %if.then125
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r6]
	cmp	r0, #0
	blt	.LBB1_74
	b	.LBB1_44
.LBB1_44:                               @ %if.then129
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB1_86
	b	.LBB1_45
.LBB1_45:                               @ %if.else154
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, #1
	mov	r11, #0
	str	r0, [r7, #20]
	b	.LBB1_95
.LBB1_46:                               @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [sp, #56]           @ 4-byte Reload
	ldr	r8, [sp, #68]           @ 4-byte Reload
	ldr	r12, [sp, #44]          @ 4-byte Reload
	str	r7, [sp, #72]           @ 4-byte Spill
	mov	r11, #0
	mov	lr, r9
	mov	r7, r1
	b	.LBB1_181
.LBB1_47:                               @ %sw.bb163
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r7, #4]
	mov	r1, r7
	mov	r9, r12
	ldm	r0, {r4, r5}
	b	.LBB1_48
.LBB1_48:                               @ %sw.bb163
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	str	r7, [sp, #20]           @ 4-byte Spill
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_52
	b	.LBB1_49
.LBB1_49:                               @ %if.end170
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_52
	b	.LBB1_50
.LBB1_50:                               @ %if.end174
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, r5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_52
	b	.LBB1_51
.LBB1_51:                               @ %if.end178
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #0
	mov	r7, r5
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB1_96
	b	.LBB1_52
.LBB1_52:                               @   in Loop: Header=BB1_140 Depth=1
	mov	r12, r9
	b	.LBB1_118
.LBB1_53:                               @ %sw.bb212
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	ldr	r4, [r7, #4]
	mov	r5, r12
	cmp	r0, #1
	bne	.LBB1_75
	b	.LBB1_54
.LBB1_54:                               @ %if.then215
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r6]
	mov	r1, #1
	str	r7, [sp, #20]           @ 4-byte Spill
	cmp	r0, #0
	bge	.LBB1_77
	b	.LBB1_76
.LBB1_55:                               @ %sw.bb306
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r7, #4]
	ldr	r9, [sp, #36]           @ 4-byte Reload
	ldr	r4, [r6]
	str	r7, [sp, #20]           @ 4-byte Spill
	b	.LBB1_56
.LBB1_56:                               @ %sw.bb306
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r12, [sp, #44]          @ 4-byte Spill
	ldr	r2, [r0]
	ldr	r7, [r0, #4]
	add	r5, r9, #1
	b	.LBB1_57
.LBB1_57:                               @ %sw.bb306
                                        @   in Loop: Header=BB1_140 Depth=1
	cmp	r4, #0
	mov	r1, r9
	mov	r0, r10
	movge	r1, r5
	b	.LBB1_58
.LBB1_58:                               @ %sw.bb306
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r2, [sp, #16]           @ 4-byte Spill
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_59
.LBB1_59:                               @ %if.end321
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r7, [sp, #8]            @ 4-byte Spill
	ldr	r7, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #52]           @ 4-byte Reload
	cmp	r4, #0
	b	.LBB1_60
.LBB1_60:                               @ %if.end321
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	movge	r1, r9
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_61
.LBB1_61:                               @ %if.end325
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, r6
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_62
.LBB1_62:                               @ %if.end329
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r6]
	mov	r1, #1
	eor	r1, r1, r0, lsr #31
	mov	r0, r10
	b	.LBB1_63
.LBB1_63:                               @ %if.end329
                                        @   in Loop: Header=BB1_140 Depth=1
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_64
.LBB1_64:                               @ %if.end336
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_65
.LBB1_65:                               @ %if.end341
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [sp, #8]            @ 4-byte Reload
	mov	r0, r10
	mov	r1, r4
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_66
.LBB1_66:                               @ %if.end346
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, r7
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_67
.LBB1_67:                               @ %if.end351
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #3
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_68
.LBB1_68:                               @ %if.end356
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, r4
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_69
.LBB1_69:                               @ %if.end361
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_70
.LBB1_70:                               @ %if.end366
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #2
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_71
.LBB1_71:                               @ %if.end371
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, r7
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_73
	b	.LBB1_72
.LBB1_72:                               @ %if.end376
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB1_124
	b	.LBB1_73
.LBB1_73:                               @   in Loop: Header=BB1_140 Depth=1
	ldr	r12, [sp, #44]          @ 4-byte Reload
	mov	r4, r9
	b	.LBB1_119
.LBB1_74:                               @   in Loop: Header=BB1_140 Depth=1
	mov	r4, r9
	b	.LBB1_120
.LBB1_75:                               @ %if.else226
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #52]           @ 4-byte Reload
	mov	r0, r10
	str	r7, [sp, #20]           @ 4-byte Spill
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_117
	b	.LBB1_76
.LBB1_76:                               @ %lor.rhs218
                                        @   in Loop: Header=BB1_140 Depth=1
	ldrb	r0, [r4, #12]
	and	r1, r0, #1
	b	.LBB1_77
.LBB1_77:                               @ %lor.end220
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_117
	b	.LBB1_78
.LBB1_78:                               @ %if.end239
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_117
	b	.LBB1_79
.LBB1_79:                               @ %if.end243
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #1
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_117
	b	.LBB1_80
.LBB1_80:                               @ %if.end247
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [r4]
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_117
	b	.LBB1_81
.LBB1_81:                               @ %if.end251
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_117
	b	.LBB1_82
.LBB1_82:                               @ %if.end255
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r6]
	cmp	r0, #0
	bge	.LBB1_84
	b	.LBB1_83
.LBB1_83:                               @ %lor.lhs.false258
                                        @   in Loop: Header=BB1_140 Depth=1
	ldrb	r0, [r4, #12]
	mov	r11, #0
	tst	r0, #1
	beq	.LBB1_116
	b	.LBB1_84
.LBB1_84:                               @ %if.then264
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	mov	r11, #0
	cmp	r0, #0
	beq	.LBB1_105
	b	.LBB1_85
.LBB1_85:                               @   in Loop: Header=BB1_140 Depth=1
	mov	r12, r5
	ldr	r5, [sp, #60]           @ 4-byte Reload
	b	.LBB1_114
.LBB1_86:                               @ %if.then131
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [sp, #52]           @ 4-byte Reload
	ldr	r0, [sp, #40]           @ 4-byte Reload
	mov	r1, r7
	mov	r11, r12
	b	.LBB1_87
.LBB1_87:                               @ %if.then131
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r2, r4
	bl	tre_add_tag_left
	ldr	r1, [sp, #72]           @ 4-byte Reload
	mov	r3, r11
	b	.LBB1_88
.LBB1_88:                               @ %if.then131
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r11, r0
	ldr	r2, [sp, #28]           @ 4-byte Reload
	cmp	r3, #0
	ldr	r0, [r1, #32]
	str	r2, [r0, r4, lsl #2]
	blt	.LBB1_93
	b	.LBB1_89
.LBB1_89:                               @ %for.cond136.preheader
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r1, #36]
	add	r0, r0, #4
	b	.LBB1_90
.LBB1_90:                               @ %for.cond136
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]
	add	r0, r0, #4
	cmp	r1, #0
	bge	.LBB1_90
	b	.LBB1_91
.LBB1_91:                               @ %for.end143
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r2, r4
	mvn	r1, #0
	stmdb	r0, {r2, r3}
	str	r1, [r0]
	b	.LBB1_92
.LBB1_92:                               @ %for.end143
                                        @   in Loop: Header=BB1_140 Depth=1
	mvn	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	ldr	r0, [sp, #32]           @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB1_94
.LBB1_93:                               @   in Loop: Header=BB1_140 Depth=1
	str	r3, [sp, #44]           @ 4-byte Spill
	mov	r2, r4
	b	.LBB1_94
.LBB1_94:                               @ %if.end153
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #72]           @ 4-byte Reload
	mov	r0, r6
	bl	tre_purge_regset
	ldr	r12, [sp, #44]          @ 4-byte Reload
	b	.LBB1_95
.LBB1_95:                               @ %if.end156
                                        @   in Loop: Header=BB1_140 Depth=1
	mvn	r0, #0
	add	r4, r9, #1
	str	r9, [sp, #52]           @ 4-byte Spill
	str	r0, [r6]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB1_120
.LBB1_96:                               @ %if.end182
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r4, #20]
	mov	r5, r4
	ldr	r4, [sp, #36]           @ 4-byte Reload
	add	r1, r0, r4
	b	.LBB1_97
.LBB1_97:                               @ %if.end182
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_104
	b	.LBB1_98
.LBB1_98:                               @ %if.end188
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r5, #20]
	mvn	r1, #0
	str	r5, [sp, #44]           @ 4-byte Spill
	cmp	r0, #1
	blt	.LBB1_100
	b	.LBB1_99
.LBB1_99:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r7, #20]
	mov	r1, r4
                                        @ kill: R4<def> R1<kill>
	cmp	r0, #0
	mvn	r0, #0
	addgt	r4, r4, #1
	movle	r1, r0
	b	.LBB1_100
.LBB1_100:                              @ %if.end195
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_104
	b	.LBB1_101
.LBB1_101:                              @ %if.end199
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #4
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_104
	b	.LBB1_102
.LBB1_102:                              @ %if.end203
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #44]           @ 4-byte Reload
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_104
	b	.LBB1_103
.LBB1_103:                              @ %if.end207
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #0
	bl	tre_stack_push
	mov	r11, r0
	b	.LBB1_104
.LBB1_104:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r12, r9
	b	.LBB1_119
.LBB1_105:                              @ %if.then266
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r7, [sp, #52]           @ 4-byte Reload
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	ldr	r8, [sp, #60]           @ 4-byte Reload
	b	.LBB1_106
.LBB1_106:                              @ %if.then266
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r2, r7
	bl	tre_add_tag_left
	mov	r11, r0
	ldrb	r0, [r4, #12]
	b	.LBB1_107
.LBB1_107:                              @ %if.then266
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #72]           @ 4-byte Reload
	ldr	r3, [sp, #28]           @ 4-byte Reload
	tst	r0, #1
	mov	r0, #1
	b	.LBB1_108
.LBB1_108:                              @ %if.then266
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r2, r1
	movne	r3, r0
	ldr	r0, [r1, #32]
	cmp	r5, #0
	str	r3, [r0, r7, lsl #2]
	mov	r3, r7
	blt	.LBB1_112
	b	.LBB1_109
.LBB1_109:                              @ %for.cond283.preheader
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r2, #36]
	add	r0, r0, #4
	b	.LBB1_110
.LBB1_110:                              @ %for.cond283
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]
	add	r0, r0, #4
	cmp	r1, #0
	bge	.LBB1_110
	b	.LBB1_111
.LBB1_111:                              @ %for.end290
                                        @   in Loop: Header=BB1_140 Depth=1
	mvn	r1, #0
	stmdb	r0, {r3, r5}
	mvn	r4, #0
	str	r1, [r0]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB1_113
.LBB1_112:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r4, r5
	b	.LBB1_113
.LBB1_113:                              @ %if.end300
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r1, r2
	mov	r0, r6
	mov	r2, r3
	bl	tre_purge_regset
	mov	r5, r8
	ldr	r8, [sp, #68]           @ 4-byte Reload
	mov	r12, r4
	b	.LBB1_114
.LBB1_114:                              @ %if.end301
                                        @   in Loop: Header=BB1_140 Depth=1
	mvn	r0, #0
	ldr	r9, [sp, #36]           @ 4-byte Reload
	ldr	r7, [sp, #20]           @ 4-byte Reload
	str	r0, [r6]
	b	.LBB1_115
.LBB1_115:                              @ %if.end301
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	add	r4, r9, #1
	str	r9, [sp, #52]           @ 4-byte Spill
	add	r0, r0, #1
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB1_120
.LBB1_116:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r0, #0
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB1_117
.LBB1_117:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r12, r5
	b	.LBB1_118
.LBB1_118:                              @ %sw.epilog
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [sp, #36]           @ 4-byte Reload
	b	.LBB1_119
.LBB1_119:                              @ %sw.epilog
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r5, [sp, #60]           @ 4-byte Reload
	ldr	r7, [sp, #20]           @ 4-byte Reload
	b	.LBB1_120
.LBB1_120:                              @ %sw.epilog
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r7, #12]
	ldr	r1, [sp, #56]           @ 4-byte Reload
	cmp	r0, #0
	blt	.LBB1_123
	b	.LBB1_121
.LBB1_121:                              @ %for.cond431
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r1], #4
	cmp	r2, #0
	bge	.LBB1_121
	b	.LBB1_122
.LBB1_122:                              @ %for.end438
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r0, [r1, #-4]
	mvn	r0, #0
	str	r0, [r1]
	b	.LBB1_123
.LBB1_123:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r7, r4
	ldr	r4, [sp, #56]           @ 4-byte Reload
	ldr	lr, [sp, #64]           @ 4-byte Reload
	b	.LBB1_181
.LBB1_124:                              @ %if.end381
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r6]
	mov	r11, #0
	cmp	r0, #0
	blt	.LBB1_135
	b	.LBB1_125
.LBB1_125:                              @ %if.then385
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	mov	r11, #0
	cmp	r0, #0
	bne	.LBB1_134
	b	.LBB1_126
.LBB1_126:                              @ %if.then387
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r7, [sp, #52]           @ 4-byte Reload
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	mov	r2, r7
	b	.LBB1_127
.LBB1_127:                              @ %if.then387
                                        @   in Loop: Header=BB1_140 Depth=1
	bl	tre_add_tag_left
	mov	r11, r0
	ldr	r0, [sp, #72]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	b	.LBB1_128
.LBB1_128:                              @ %if.then387
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r2, r7
	ldr	r0, [r0, #32]
	str	r1, [r0, r7, lsl #2]
	ldr	r0, [sp, #44]           @ 4-byte Reload
	cmp	r0, #0
	blt	.LBB1_133
	b	.LBB1_129
.LBB1_129:                              @ %for.cond395.preheader
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #72]           @ 4-byte Reload
	ldr	r0, [r0, #36]
	add	r0, r0, #4
	b	.LBB1_130
.LBB1_130:                              @ %for.cond395
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]
	add	r0, r0, #4
	cmp	r1, #0
	bge	.LBB1_130
	b	.LBB1_131
.LBB1_131:                              @ %for.end403
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r3, [sp, #44]           @ 4-byte Reload
	mvn	r1, #0
	str	r2, [r0, #-8]
	str	r3, [r0, #-4]
	b	.LBB1_132
.LBB1_132:                              @ %for.end403
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r1, [r0]
	mvn	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	ldr	r0, [sp, #32]           @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB1_133
.LBB1_133:                              @ %if.end413
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #72]           @ 4-byte Reload
	mov	r0, r6
	bl	tre_purge_regset
	b	.LBB1_134
.LBB1_134:                              @ %if.end414
                                        @   in Loop: Header=BB1_140 Depth=1
	mvn	r0, #0
	str	r0, [r6]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB1_136
.LBB1_135:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r5, r9
	ldr	r9, [sp, #52]           @ 4-byte Reload
	b	.LBB1_136
.LBB1_136:                              @ %if.end418
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r0, [r0, #16]
	cmp	r0, #1
	blt	.LBB1_138
	b	.LBB1_137
.LBB1_137:                              @ %if.then422
                                        @   in Loop: Header=BB1_140 Depth=1
	add	r4, r5, #2
	add	r0, r5, #1
	str	r0, [sp, #52]           @ 4-byte Spill
	b	.LBB1_139
.LBB1_138:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r4, r5
	str	r9, [sp, #52]           @ 4-byte Spill
	b	.LBB1_139
.LBB1_139:                              @ %sw.epilog
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r5, [sp, #60]           @ 4-byte Reload
	ldr	r7, [sp, #20]           @ 4-byte Reload
	ldr	r12, [sp, #44]          @ 4-byte Reload
	b	.LBB1_120
.LBB1_140:                              @ %if.end35
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_176 Depth 2
                                        @     Child Loop BB1_178 Depth 2
                                        @     Child Loop BB1_164 Depth 2
                                        @     Child Loop BB1_144 Depth 2
                                        @     Child Loop BB1_147 Depth 2
                                        @     Child Loop BB1_153 Depth 2
                                        @     Child Loop BB1_130 Depth 2
                                        @     Child Loop BB1_110 Depth 2
                                        @     Child Loop BB1_90 Depth 2
                                        @     Child Loop BB1_121 Depth 2
	sub	r1, r0, #1
	str	r1, [r10, #12]
	ldr	r2, [r10, #16]
	ldr	r1, [r2, r1, lsl #2]
	cmp	r1, #6
	bhi	.LBB1_180
	b	.LBB1_141
.LBB1_141:                              @ %if.end35
                                        @   in Loop: Header=BB1_140 Depth=1
	lsl	r1, r1, #2
	adr	r3, .LJTI1_0_0
	ldr	pc, [r1, r3]
.LJTI1_0_0:
	.long	.LBB1_142
	.long	.LBB1_160
	.long	.LBB1_163
	.long	.LBB1_165
	.long	.LBB1_170
	.long	.LBB1_172
	.long	.LBB1_175
.LBB1_142:                              @ %sw.bb59
                                        @   in Loop: Header=BB1_140 Depth=1
	sub	r0, r0, #2
	str	r7, [sp, #36]           @ 4-byte Spill
	str	r0, [r10, #12]
	ldr	r7, [r2, r0, lsl #2]
	b	.LBB1_143
.LBB1_143:                              @ %sw.bb59
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r6
	ldr	r1, [r7, #12]
	cmp	r1, #0
	blt	.LBB1_158
	b	.LBB1_144
.LBB1_144:                              @ %for.cond66
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0], #4
	cmp	r2, #0
	bge	.LBB1_144
	b	.LBB1_145
.LBB1_145:                              @ %for.end72
                                        @   in Loop: Header=BB1_140 Depth=1
	lsl	r3, r1, #1
	mvn	r2, #0
	str	r12, [sp, #44]          @ 4-byte Spill
	cmp	lr, #0
	b	.LBB1_146
.LBB1_146:                              @ %for.end72
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r3, [r0, #-4]
	str	r2, [r0]
	mov	r0, #0
	bne	.LBB1_155
	b	.LBB1_147
.LBB1_147:                              @ %for.cond79
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r4, r0]
	add	r2, r2, #1
	add	r0, r0, #4
	cmp	r3, #0
	bge	.LBB1_147
	b	.LBB1_148
.LBB1_148:                              @ %for.end85
                                        @   in Loop: Header=BB1_140 Depth=1
	add	r9, r1, r1, lsl #1
	ldr	r1, [sp, #72]           @ 4-byte Reload
	mov	r3, #0
	cmp	r2, #1
	b	.LBB1_149
.LBB1_149:                              @ %for.end85
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [r1, #16]
	add	r1, r1, r9, lsl #2
	str	r3, [r1, #8]
	blt	.LBB1_155
	b	.LBB1_150
.LBB1_150:                              @ %if.then89
                                        @   in Loop: Header=BB1_140 Depth=1
	bl	malloc
	mov	r11, #12
	cmp	r0, #0
	beq	.LBB1_196
	b	.LBB1_151
.LBB1_151:                              @ %if.end95
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [sp, #72]           @ 4-byte Reload
	ldr	r2, [sp, #12]           @ 4-byte Reload
	ldr	r1, [r1, #16]
	add	r1, r1, r9, lsl #2
	b	.LBB1_152
.LBB1_152:                              @ %if.end95
                                        @   in Loop: Header=BB1_140 Depth=1
	str	r0, [r1, #8]
	ldr	r1, [r4]
	cmp	r1, #0
	blt	.LBB1_154
	b	.LBB1_153
.LBB1_153:                              @ %for.body102
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r1, [r0], #4
	ldr	r1, [r2], #4
	cmp	r1, #0
	bge	.LBB1_153
	b	.LBB1_154
.LBB1_154:                              @ %for.end107
                                        @   in Loop: Header=BB1_140 Depth=1
	mvn	r1, #0
	str	r1, [r0]
	b	.LBB1_155
.LBB1_155:                              @ %if.end110
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [r7, #12]
	mov	r0, r10
	bl	tre_stack_push
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_196
	b	.LBB1_156
.LBB1_156:                              @ %if.end115
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r0, r10
	mov	r1, #6
	bl	tre_stack_push
	ldr	r12, [sp, #44]          @ 4-byte Reload
	b	.LBB1_157
.LBB1_157:                              @ %if.end115
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	lr, [sp, #64]           @ 4-byte Reload
	mov	r11, r0
	cmp	r11, #0
	bne	.LBB1_184
	b	.LBB1_158
.LBB1_158:                              @ %if.end120
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r7]
	mov	r11, #0
	cmp	r0, #3
	bls	.LBB1_40
	b	.LBB1_159
.LBB1_159:                              @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [sp, #36]           @ 4-byte Reload
	b	.LBB1_120
.LBB1_160:                              @ %sw.bb444
                                        @   in Loop: Header=BB1_140 Depth=1
	sub	r1, r0, #2
	cmp	lr, #1
	str	r1, [r10, #12]
	bne	.LBB1_27
	b	.LBB1_161
.LBB1_161:                              @ %if.end461.thread
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [r2, r1, lsl #2]
	sub	r0, r0, #3
	mvn	r12, #0
	ldr	r3, [r1, #4]
	b	.LBB1_162
.LBB1_162:                              @ %if.end461.thread
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r0, [r10, #12]
	ldr	r0, [r2, r0, lsl #2]
	add	r0, r0, r3
	str	r0, [r1, #20]
	b	.LBB1_180
.LBB1_163:                              @ %while.cond490.preheader
                                        @   in Loop: Header=BB1_140 Depth=1
	sub	r6, r6, #4
	b	.LBB1_164
.LBB1_164:                              @ %while.cond490
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6, #4]!
	cmp	r0, #0
	bge	.LBB1_164
	b	.LBB1_180
.LBB1_165:                              @ %sw.bb494
                                        @   in Loop: Header=BB1_140 Depth=1
	add	r3, r2, r0, lsl #2
	mov	r1, r7
	cmp	lr, #0
	ldr	r4, [r3, #-12]
	b	.LBB1_166
.LBB1_166:                              @ %sw.bb494
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r6, [r3, #-16]
	str	r4, [sp, #20]           @ 4-byte Spill
	ldr	r4, [r3, #-8]
	str	r4, [sp, #16]           @ 4-byte Spill
	sub	r4, r0, #5
	str	r4, [r10, #12]
	beq	.LBB1_30
	b	.LBB1_167
.LBB1_167:                              @ %if.then502
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r7, [r6, #4]
	mov	r9, lr
	str	r12, [sp, #44]          @ 4-byte Spill
	ldr	r12, [r2, r4, lsl #2]
	b	.LBB1_168
.LBB1_168:                              @ %if.then502
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r4, [r6, #16]
	ldr	lr, [r7]
	ldr	r8, [r7, #4]
	cmp	r4, #0
	b	.LBB1_169
.LBB1_169:                              @ %if.then502
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r7, [lr, #20]
	add	r12, r7, r12
	ldr	r7, [r8, #20]
	add	r7, r12, r7
	addgt	r7, r7, #2
	str	r7, [r6, #20]
	b	.LBB1_31
.LBB1_170:                              @ %sw.bb469
                                        @   in Loop: Header=BB1_140 Depth=1
	sub	r1, r0, #2
	sub	r0, r0, #3
	ldr	r3, [sp, #52]           @ 4-byte Reload
	str	r1, [r10, #12]
	b	.LBB1_171
.LBB1_171:                              @ %sw.bb469
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r1, [r2, r1, lsl #2]
	str	r0, [r10, #12]
	ldr	r7, [r2, r0, lsl #2]
	cmp	r1, #0
	movge	r3, r1
	str	r3, [sp, #52]           @ 4-byte Spill
	b	.LBB1_180
.LBB1_172:                              @ %sw.bb476
                                        @   in Loop: Header=BB1_140 Depth=1
	sub	r0, r0, #2
	cmp	lr, #1
	str	r0, [r10, #12]
	bne	.LBB1_180
	b	.LBB1_173
.LBB1_173:                              @ %if.then479
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r2, r0, lsl #2]
	ldr	r1, [r0, #4]
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	b	.LBB1_174
.LBB1_174:                              @ %if.then479
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r2, [r2, #20]
	ldr	r1, [r1, #20]
	add	r1, r1, r2
	str	r1, [r0, #20]
	b	.LBB1_180
.LBB1_175:                              @ %sw.bb
                                        @   in Loop: Header=BB1_140 Depth=1
	sub	r0, r0, #2
	str	r0, [r10, #12]
	ldr	r1, [r2, r0, lsl #2]
	mov	r0, r6
	b	.LBB1_176
.LBB1_176:                              @ %for.cond39
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0], #4
	cmp	r2, #0
	bge	.LBB1_176
	b	.LBB1_177
.LBB1_177:                              @ %for.end45
                                        @   in Loop: Header=BB1_140 Depth=1
	mov	r2, #1
	orr	r1, r2, r1, lsl #1
	str	r1, [r0, #-4]
	mvn	r1, #0
	str	r1, [r0]
	mov	r0, r4
	b	.LBB1_178
.LBB1_178:                              @ %for.cond51
                                        @   Parent Loop BB1_140 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0], #4
	cmp	r1, #0
	bge	.LBB1_178
	b	.LBB1_179
.LBB1_179:                              @ %for.end57
                                        @   in Loop: Header=BB1_140 Depth=1
	mvn	r1, #0
	str	r1, [r0, #-8]
	b	.LBB1_180
.LBB1_180:                              @   in Loop: Header=BB1_140 Depth=1
	mov	r11, #0
	b	.LBB1_181
.LBB1_181:                              @ %while.cond.backedge
                                        @   in Loop: Header=BB1_140 Depth=1
	cmp	r11, #0
	bne	.LBB1_184
	b	.LBB1_182
.LBB1_182:                              @ %while.cond.backedge
                                        @   in Loop: Header=BB1_140 Depth=1
	ldr	r0, [r10, #12]
	cmp	r0, r8
	bgt	.LBB1_140
	b	.LBB1_184
.LBB1_183:
	ldr	lr, [sp, #64]           @ 4-byte Reload
	mov	r0, #0
	mov	r5, r9
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, #0
	mov	r6, r5
	str	r0, [sp, #52]           @ 4-byte Spill
	b	.LBB1_184
.LBB1_184:                              @ %while.end536
	mov	r7, r12
	mov	r9, r4
	cmp	lr, #0
	beq	.LBB1_186
	b	.LBB1_185
.LBB1_185:
	ldr	r2, [sp, #48]           @ 4-byte Reload
	ldr	r0, [sp, #32]           @ 4-byte Reload
	b	.LBB1_192
.LBB1_186:                              @ %if.end539
	mov	r8, r5
	ldr	r5, [sp, #72]           @ 4-byte Reload
	ldr	r4, [sp, #52]           @ 4-byte Reload
	mov	r0, r6
	b	.LBB1_187
.LBB1_187:                              @ %if.end539
	mov	r1, r5
	mov	r2, r4
	bl	tre_purge_regset
	mov	r3, r7
	cmp	r3, #0
	blt	.LBB1_191
	b	.LBB1_188
.LBB1_188:                              @ %for.cond546.preheader
	ldr	r0, [r5, #36]
	ldr	r2, [sp, #48]           @ 4-byte Reload
	mov	r5, r8
	add	r0, r0, #4
	b	.LBB1_189
.LBB1_189:                              @ %for.cond546
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0, #-4]
	add	r0, r0, #4
	cmp	r1, #0
	bge	.LBB1_189
	b	.LBB1_190
.LBB1_190:                              @ %for.end554
	mvn	r1, #0
	str	r4, [r0, #-8]
	str	r3, [r0, #-4]
	str	r1, [r0]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	add	r0, r0, #1
	b	.LBB1_192
.LBB1_191:
	ldr	r2, [sp, #48]           @ 4-byte Reload
	ldr	r0, [sp, #32]           @ 4-byte Reload
	mov	r5, r8
	b	.LBB1_192
.LBB1_192:                              @ %if.end564
	ldr	r1, [sp, #72]           @ 4-byte Reload
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	mov	r0, r5
	b	.LBB1_193
.LBB1_193:                              @ %if.end564
	str	r2, [r1, #48]
	bl	free
	mov	r0, r9
	bl	free
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB1_194
.LBB1_194:                              @ %return
	bl	free
	b	.LBB1_195
.LBB1_195:                              @ %return
	mov	r0, r11
	add	sp, sp, #76
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB1_196:
	ldr	r12, [sp, #44]          @ 4-byte Reload
	ldr	lr, [sp, #64]           @ 4-byte Reload
	b	.LBB1_184
.Ltmp1:
	.size	tre_add_tags, .Ltmp1-tre_add_tags
	.cantunwind
	.fnend

	.align	2
	.type	tre_ast_new_literal,%function
tre_ast_new_literal:                    @ @tre_ast_new_literal
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r5, r0
	mov	r0, #20
	mov	r8, r3
	mov	r9, r2
	b	.LBB2_4
.LBB2_4:                                @ %entry
	mov	r6, r1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	b	.LBB2_5
.LBB2_5:                                @ %entry
	mov	r7, #0
	str	r0, [sp]
	mov	r0, r5
	bl	__tre_mem_alloc_impl
	b	.LBB2_6
.LBB2_6:                                @ %entry
	mov	r4, r0
	mov	r0, r5
	mov	r1, #0
	mov	r2, r4
	b	.LBB2_7
.LBB2_7:                                @ %entry
	bl	tre_ast_new_node
	cmp	r0, #0
	movne	r7, r0
	stmne	r4, {r6, r9}
	b	.LBB2_8
.LBB2_8:                                @ %entry
	strne	r8, [r4, #8]
	mov	r0, r7
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	tre_ast_new_literal, .Ltmp2-tre_ast_new_literal
	.cantunwind
	.fnend

	.align	2
	.type	tre_ast_new_catenation,%function
tre_ast_new_catenation:                 @ @tre_ast_new_catenation
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.LBB3_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r5, r1
	mov	r8, r2
	mov	r7, r0
	cmp	r5, #0
	beq	.LBB3_7
	b	.LBB3_3
.LBB3_3:                                @ %if.end
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	b	.LBB3_4
.LBB3_4:                                @ %if.end
	mov	r6, #0
	str	r0, [sp]
	mov	r0, r7
	bl	__tre_mem_alloc_impl
	b	.LBB3_5
.LBB3_5:                                @ %if.end
	mov	r4, r0
	mov	r0, r7
	mov	r1, #1
	mov	r2, r4
	bl	tre_ast_new_node
	cmp	r0, #0
	beq	.LBB3_8
	b	.LBB3_6
.LBB3_6:                                @ %if.end4
	stm	r4, {r5, r8}
	mov	r6, r0
	ldr	r1, [r5, #16]
	ldr	r2, [r8, #16]
	add	r1, r2, r1
	str	r1, [r0, #16]
	b	.LBB3_8
.LBB3_7:
	mov	r6, r8
	b	.LBB3_8
.LBB3_8:                                @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp3:
	.size	tre_ast_new_catenation, .Ltmp3-tre_ast_new_catenation
	.cantunwind
	.fnend

	.align	2
	.type	tre_ast_to_tnfa,%function
tre_ast_to_tnfa:                        @ @tre_ast_to_tnfa
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.LBB4_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r6, r1
	mov	r8, r3
	mov	r5, r2
	mov	r1, r0
	b	.LBB4_4
.LBB4_3:                                @ %tailrecurse.backedge
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r1, [r7]
	b	.LBB4_4
.LBB4_4:                                @ %tailrecurse
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1]
	cmp	r2, #1
	beq	.LBB4_8
	b	.LBB4_5
.LBB4_5:                                @ %tailrecurse
                                        @   in Loop: Header=BB4_4 Depth=1
	cmp	r2, #2
	bne	.LBB4_13
	b	.LBB4_6
.LBB4_6:                                @ %sw.bb17
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r7, [r1, #4]
	ldr	r0, [r7, #8]
	cmn	r0, #1
	bne	.LBB4_3
	b	.LBB4_7
.LBB4_7:                                @ %if.then20
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r0, [r7]
	mov	r2, r6
	mov	r3, r5
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	str	r8, [sp]
	bl	tre_make_trans
	b	.LBB4_12
.LBB4_8:                                @ %sw.bb2
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r4, [r1, #4]
	mov	r2, r6
	mov	r3, r5
	mov	r7, r4
	b	.LBB4_9
.LBB4_9:                                @ %sw.bb2
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r0, [r7, #4]!
	ldr	r1, [r0, #24]
	ldr	r0, [r4]
	ldr	r0, [r0, #28]
	b	.LBB4_10
.LBB4_10:                               @ %sw.bb2
                                        @   in Loop: Header=BB4_4 Depth=1
	str	r8, [sp]
	bl	tre_make_trans
	cmp	r0, #0
	bne	.LBB4_17
	b	.LBB4_11
.LBB4_11:                               @ %if.end9
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r0, [r4]
	mov	r1, r6
	mov	r2, r5
	mov	r3, r8
	bl	tre_ast_to_tnfa
	b	.LBB4_12
.LBB4_12:                               @ %if.then20
                                        @   in Loop: Header=BB4_4 Depth=1
	cmp	r0, #0
	beq	.LBB4_3
	b	.LBB4_17
.LBB4_13:                               @ %tailrecurse
                                        @   in Loop: Header=BB4_4 Depth=1
	mov	r0, #0
	cmp	r2, #3
	bne	.LBB4_17
	b	.LBB4_14
.LBB4_14:                               @ %sw.bb
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r4, [r1, #4]
	mov	r1, r6
	mov	r2, r5
	mov	r3, r8
	b	.LBB4_15
.LBB4_15:                               @ %sw.bb
                                        @   in Loop: Header=BB4_4 Depth=1
	ldr	r0, [r4]
	bl	tre_ast_to_tnfa
	cmp	r0, #0
	bne	.LBB4_17
	b	.LBB4_16
.LBB4_16:                               @ %if.end
                                        @   in Loop: Header=BB4_4 Depth=1
	add	r7, r4, #4
	b	.LBB4_3
.LBB4_17:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp4:
	.size	tre_ast_to_tnfa, .Ltmp4-tre_ast_to_tnfa
	.cantunwind
	.fnend

	.globl	regfree
	.align	2
	.type	regfree,%function
regfree:                                @ @regfree
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	ldr	r4, [r0, #4]
	cmp	r4, #0
	b	.LBB5_2
.LBB5_2:                                @ %entry
	popeq	{r4, r5, r6, lr}
	moveq	pc, lr
	ldm	r4, {r0, r1}
	cmp	r1, #0
	beq	.LBB5_10
	b	.LBB5_3
.LBB5_3:
	mov	r5, #0
	b	.LBB5_4
.LBB5_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r0, r5, lsl #5
	ldr	r2, [r1, #8]
	cmp	r2, #0
	beq	.LBB5_9
	b	.LBB5_5
.LBB5_5:                                @ %if.then2
                                        @   in Loop: Header=BB5_4 Depth=1
	ldr	r1, [r1, #16]
	cmp	r1, #0
	beq	.LBB5_7
	b	.LBB5_6
.LBB5_6:                                @ %if.then6
                                        @   in Loop: Header=BB5_4 Depth=1
	mov	r0, r1
	bl	free
	ldr	r0, [r4]
	b	.LBB5_7
.LBB5_7:                                @ %if.end10
                                        @   in Loop: Header=BB5_4 Depth=1
	add	r1, r0, r5, lsl #5
	ldr	r1, [r1, #28]
	cmp	r1, #0
	beq	.LBB5_9
	b	.LBB5_8
.LBB5_8:                                @ %if.then14
                                        @   in Loop: Header=BB5_4 Depth=1
	mov	r0, r1
	bl	free
	ldr	r0, [r4]
	b	.LBB5_9
.LBB5_9:                                @ %for.inc
                                        @   in Loop: Header=BB5_4 Depth=1
	ldr	r1, [r4, #4]
	add	r5, r5, #1
	cmp	r5, r1
	blo	.LBB5_4
	b	.LBB5_10
.LBB5_10:                               @ %for.end
	cmp	r0, #0
	beq	.LBB5_12
	b	.LBB5_11
.LBB5_11:                               @ %if.then22
	bl	free
	b	.LBB5_12
.LBB5_12:                               @ %if.end24
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.LBB5_20
	b	.LBB5_13
.LBB5_13:                               @ %for.cond28.preheader
	ldr	r1, [r0, #8]
	cmp	r1, #0
	beq	.LBB5_19
	b	.LBB5_14
.LBB5_14:                               @ %for.body31.preheader
	add	r5, r0, #40
	b	.LBB5_15
.LBB5_15:                               @ %for.body31
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #-24]
	cmp	r0, #0
	beq	.LBB5_17
	b	.LBB5_16
.LBB5_16:                               @ %if.then34
                                        @   in Loop: Header=BB5_15 Depth=1
	bl	free
	b	.LBB5_17
.LBB5_17:                               @ %for.inc37
                                        @   in Loop: Header=BB5_15 Depth=1
	ldr	r0, [r5], #32
	cmp	r0, #0
	bne	.LBB5_15
	b	.LBB5_18
.LBB5_18:                               @ %for.cond28.for.end38_crit_edge
	ldr	r0, [r4, #8]
	b	.LBB5_19
.LBB5_19:                               @ %for.end38
	bl	free
	b	.LBB5_20
.LBB5_20:                               @ %if.end40
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.LBB5_29
	b	.LBB5_21
.LBB5_21:                               @ %for.cond43.preheader
	ldr	r1, [r4, #28]
	cmp	r1, #0
	beq	.LBB5_28
	b	.LBB5_22
.LBB5_22:
	mov	r5, #0
	mov	r6, #8
	b	.LBB5_24
.LBB5_23:                               @ %for.inc54.for.body45_crit_edge
                                        @   in Loop: Header=BB5_24 Depth=1
	ldr	r0, [r4, #16]
	add	r6, r6, #12
	b	.LBB5_24
.LBB5_24:                               @ %for.body45
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r0, r6]
	cmp	r0, #0
	beq	.LBB5_26
	b	.LBB5_25
.LBB5_25:                               @ %if.then49
                                        @   in Loop: Header=BB5_24 Depth=1
	bl	free
	ldr	r1, [r4, #28]
	b	.LBB5_26
.LBB5_26:                               @ %for.inc54
                                        @   in Loop: Header=BB5_24 Depth=1
	add	r5, r5, #1
	cmp	r5, r1
	blo	.LBB5_23
	b	.LBB5_27
.LBB5_27:                               @ %for.cond43.for.end56_crit_edge
	ldr	r0, [r4, #16]
	b	.LBB5_28
.LBB5_28:                               @ %for.end56
	bl	free
	b	.LBB5_29
.LBB5_29:                               @ %if.end58
	ldr	r0, [r4, #32]
	cmp	r0, #0
	beq	.LBB5_31
	b	.LBB5_30
.LBB5_30:                               @ %if.then60
	bl	free
	b	.LBB5_31
.LBB5_31:                               @ %if.end62
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.LBB5_33
	b	.LBB5_32
.LBB5_32:                               @ %if.then64
	bl	free
	b	.LBB5_33
.LBB5_33:                               @ %if.end66
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.LBB5_35
	b	.LBB5_34
.LBB5_34:                               @ %if.then68
	bl	free
	b	.LBB5_35
.LBB5_35:                               @ %if.end70
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	free
.Ltmp5:
	.size	regfree, .Ltmp5-regfree
	.cantunwind
	.fnend

	.align	2
	.type	parse_atom,%function
parse_atom:                             @ @parse_atom
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB6_1
.LBB6_1:                                @ %entry
	b	.LBB6_2
.LBB6_2:                                @ %entry
	.pad	#332
	sub	sp, sp, #332
	b	.LBB6_3
.LBB6_3:                                @ %entry
	mov	r8, r0
	mov	r10, r1
	ldr	r2, [r8, #32]
	b	.LBB6_4
.LBB6_4:                                @ %entry
	ldrb	r1, [r10]
	and	r0, r2, #1
	cmp	r1, #90
	bgt	.LBB6_7
	b	.LBB6_5
.LBB6_5:                                @ %entry
	cmp	r1, #35
	bgt	.LBB6_16
	b	.LBB6_6
.LBB6_6:                                @ %entry
	cmp	r1, #0
	bne	.LBB6_93
	b	.LBB6_79
.LBB6_7:                                @ %entry
	cmp	r1, #92
	bge	.LBB6_22
	b	.LBB6_8
.LBB6_8:                                @ %sw.bb
	ldr	r0, [r8]
	mov	r4, #0
	str	r0, [sp, #296]
	mov	r0, #32
	b	.LBB6_9
.LBB6_9:                                @ %sw.bb
	str	r4, [sp, #304]
	str	r0, [sp, #308]
	mov	r0, #128
	bl	malloc
	b	.LBB6_10
.LBB6_10:                               @ %sw.bb
	mov	r7, #12
	str	r0, [sp, #300]
	cmp	r0, #0
	beq	.LBB6_114
	b	.LBB6_11
.LBB6_11:                               @ %if.end.i
	str	r4, [sp, #36]
	add	r5, r10, #1
	mvn	r2, #0
	ldrb	r0, [r10, #1]
	b	.LBB6_12
.LBB6_12:                               @ %if.end.i
	cmp	r0, #94
	add	r0, sp, #328
	addeq	r5, r10, #2
	moveq	r4, #1
	b	.LBB6_13
.LBB6_13:                               @ %if.end.i
	mov	r1, r5
	str	r4, [sp, #32]
	str	r5, [sp, #20]           @ 4-byte Spill
	bl	mbtowc
	b	.LBB6_14
.LBB6_14:                               @ %if.end.i
	mov	r3, r5
	cmp	r0, #0
	ldrb	r1, [r3]
	ble	.LBB6_84
	b	.LBB6_15
.LBB6_15:
	mov	r5, r3
	b	.LBB6_72
.LBB6_16:                               @ %entry
	cmp	r1, #62
	bgt	.LBB6_77
	b	.LBB6_17
.LBB6_17:                               @ %entry
	sub	r3, r1, #42
	cmp	r3, #2
	blo	.LBB6_78
	b	.LBB6_18
.LBB6_18:                               @ %entry
	cmp	r1, #36
	bne	.LBB6_86
	b	.LBB6_19
.LBB6_19:                               @ %sw.bb112
	add	r4, r10, #1
	cmp	r0, #0
	bne	.LBB6_21
	b	.LBB6_20
.LBB6_20:                               @ %land.lhs.true114
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.LBB6_93
	b	.LBB6_21
.LBB6_21:                               @ %if.end119
	ldr	r0, [r8]
	mvn	r1, #1
	mov	r2, #2
	mvn	r3, #0
	bl	tre_ast_new_literal
	mov	r6, r0
	b	.LBB6_110
.LBB6_22:                               @ %entry
	sub	r2, r1, #123
	cmp	r2, #2
	blo	.LBB6_78
	b	.LBB6_23
.LBB6_23:                               @ %entry
	cmp	r1, #92
	bne	.LBB6_80
	b	.LBB6_24
.LBB6_24:                               @ %sw.bb1
	ldrb	r1, [r10, #1]
	ldr	r2, .LCPI6_6
	mov	r0, #0
	b	.LBB6_25
.LCPI6_6:
	.long	tre_macros
.LBB6_25:                               @ %land.rhs.i
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r2, r0, lsl #3]
	cmp	r3, r1
	beq	.LBB6_85
	b	.LBB6_26
.LBB6_26:                               @ %for.inc.i273
                                        @   in Loop: Header=BB6_25 Depth=1
	add	r0, r0, #1
	cmp	r0, #12
	bne	.LBB6_25
	b	.LBB6_27
.LBB6_27:                               @ %if.end
	cmp	r1, #59
	bgt	.LBB6_116
	b	.LBB6_28
.LBB6_28:                               @ %if.end
	mov	r7, #5
	cmp	r1, #0
	beq	.LBB6_114
	b	.LBB6_164
.LBB6_29:                               @ %lor.lhs.false.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	ldrb	r2, [r5, #2]
	cmp	r2, #93
	beq	.LBB6_112
	b	.LBB6_30
.LBB6_30:                               @ %if.end29.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	cmp	r1, #91
	bne	.LBB6_37
	b	.LBB6_31
.LBB6_31:                               @ %land.lhs.true33.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	ldrb	r1, [r5, #1]
	mov	r7, #3
	cmp	r1, #61
	cmpne	r1, #46
	beq	.LBB6_112
	b	.LBB6_32
.LBB6_32:                               @ %land.lhs.true33.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	cmp	r1, #58
	bne	.LBB6_37
	b	.LBB6_33
.LBB6_33:                               @ %if.then53.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r1, r5, #2
	mov	r4, #0
	b	.LBB6_34
.LBB6_34:                               @ %land.rhs.i.i
                                        @   Parent Loop BB6_72 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r6, r5, r4
	mov	r7, #4
	ldrb	r0, [r6, #2]
	cmp	r0, #0
	beq	.LBB6_112
	b	.LBB6_35
.LBB6_35:                               @ %land.rhs.i.i
                                        @   in Loop: Header=BB6_34 Depth=2
	cmp	r0, #58
	beq	.LBB6_64
	b	.LBB6_36
.LBB6_36:                               @ %for.inc.i.i
                                        @   in Loop: Header=BB6_34 Depth=2
	add	r4, r4, #1
	cmp	r4, #14
	blt	.LBB6_34
	b	.LBB6_112
.LBB6_37:                               @ %if.else.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	mov	r2, r5
	mov	r4, #0
	ldrb	r1, [r2, r0]!
	ldr	r8, [sp, #328]
	cmp	r1, #45
	bne	.LBB6_39
	b	.LBB6_38
.LBB6_38:                               @ %land.lhs.true85.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r9, r0, #1
	mov	r1, r5
	mov	r4, #0
	ldrb	r0, [r1, r9]!
	cmp	r0, #93
	bne	.LBB6_40
	b	.LBB6_39
.LBB6_39:                               @   in Loop: Header=BB6_72 Depth=1
	mov	r10, r8
	mov	r9, #0
	str	r2, [sp, #16]           @ 4-byte Spill
	b	.LBB6_43
.LBB6_40:                               @ %if.then90.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r0, sp, #328
	mvn	r2, #0
	bl	mbtowc
	mov	r7, #11
	cmp	r0, #1
	blt	.LBB6_112
	b	.LBB6_41
.LBB6_41:                               @ %if.then90.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	ldr	r10, [sp, #328]
	cmp	r8, r10
	bgt	.LBB6_112
	b	.LBB6_42
.LBB6_42:                               @ %if.end98.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r0, r0, r9
	mov	r4, #0
	mov	r9, #0
	add	r5, r5, r0
	str	r5, [sp, #16]           @ 4-byte Spill
	b	.LBB6_43
.LBB6_43:                               @ %if.else114.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r0, sp, #296
	bl	tre_new_lit
	mov	r7, #12
	cmp	r0, #0
	beq	.LBB6_112
	b	.LBB6_44
.LBB6_44:                               @ %if.end119.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	stm	r0, {r8, r10}
	mvn	r1, #0
	str	r1, [r0, #8]
	str	r9, [r0, #12]
	b	.LBB6_45
.LBB6_45:                               @ %if.end119.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldrb	r0, [r0, #32]
	tst	r0, #2
	mov	r0, #0
	moveq	r0, #1
	cmp	r8, r10
	bgt	.LBB6_61
	b	.LBB6_46
.LBB6_46:                               @ %if.end119.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	orr	r0, r4, r0
	cmp	r0, #1
	bne	.LBB6_48
	b	.LBB6_61
.LBB6_47:                               @ %if.else28.i.i.i
                                        @   in Loop: Header=BB6_48 Depth=2
	add	r8, r8, #1
	b	.LBB6_60
.LBB6_48:                               @ %for.body.i.i.i
                                        @   Parent Loop BB6_72 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB6_50 Depth 3
                                        @       Child Loop BB6_55 Depth 3
	mov	r0, r8
	bl	iswlower
	cmp	r0, #0
	beq	.LBB6_53
	b	.LBB6_49
.LBB6_49:                               @ %if.then.i.i.i
                                        @   in Loop: Header=BB6_48 Depth=2
	mov	r0, r8
	bl	towupper
	mov	r4, r0
	mov	r5, #0
	b	.LBB6_50
.LBB6_50:                               @ %for.cond3.i.i.i
                                        @   Parent Loop BB6_72 Depth=1
                                        @     Parent Loop BB6_48 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r11, r5
	add	r0, r8, r11
	add	r9, r0, #1
	cmp	r0, r10
	bge	.LBB6_52
	b	.LBB6_51
.LBB6_51:                               @ %for.body5.i.i.i
                                        @   in Loop: Header=BB6_50 Depth=3
	add	r5, r11, #1
	mov	r0, r9
	add	r7, r4, r5
	bl	towupper
	cmp	r7, r0
	beq	.LBB6_50
	b	.LBB6_52
.LBB6_52:                               @ %if.end31.i.i.i.loopexit1
                                        @   in Loop: Header=BB6_48 Depth=2
	add	r0, r4, r11
	b	.LBB6_58
.LBB6_53:                               @ %if.else.i.i.i
                                        @   in Loop: Header=BB6_48 Depth=2
	mov	r0, r8
	bl	iswupper
	cmp	r0, #0
	beq	.LBB6_47
	b	.LBB6_54
.LBB6_54:                               @ %if.then13.i.i.i
                                        @   in Loop: Header=BB6_48 Depth=2
	mov	r0, r8
	bl	towlower
	mov	r4, r0
	mov	r5, #0
	b	.LBB6_55
.LBB6_55:                               @ %for.cond17.i.i.i
                                        @   Parent Loop BB6_72 Depth=1
                                        @     Parent Loop BB6_48 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r7, r5
	add	r0, r8, r7
	add	r9, r0, #1
	cmp	r0, r10
	bge	.LBB6_57
	b	.LBB6_56
.LBB6_56:                               @ %for.body19.i.i.i
                                        @   in Loop: Header=BB6_55 Depth=3
	add	r5, r7, #1
	mov	r0, r9
	add	r6, r4, r5
	bl	towlower
	cmp	r6, r0
	beq	.LBB6_55
	b	.LBB6_57
.LBB6_57:                               @ %if.end31.i.i.i.loopexit
                                        @   in Loop: Header=BB6_48 Depth=2
	add	r0, r4, r7
	b	.LBB6_58
.LBB6_58:                               @ %if.end31.i.i.i
                                        @   in Loop: Header=BB6_48 Depth=2
	add	r6, r0, #1
	add	r0, sp, #296
	bl	tre_new_lit
	cmp	r0, #0
	beq	.LBB6_111
	b	.LBB6_59
.LBB6_59:                               @ %if.end35.i.i.i
                                        @   in Loop: Header=BB6_48 Depth=2
	sub	r1, r6, #1
	str	r4, [r0]
	mov	r8, r9
	str	r1, [r0, #4]
	mvn	r1, #0
	str	r1, [r0, #8]
	b	.LBB6_60
.LBB6_60:                               @ %for.cond.backedge.i.i.i
                                        @   in Loop: Header=BB6_48 Depth=2
	cmp	r8, r10
	ble	.LBB6_48
	b	.LBB6_61
.LBB6_61:                               @   in Loop: Header=BB6_72 Depth=1
	ldr	r3, [sp, #16]           @ 4-byte Reload
	b	.LBB6_62
.LBB6_62:                               @ %for.cond.backedge.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r0, sp, #328
	mov	r1, r3
	mvn	r2, #0
	mov	r4, r3
	b	.LBB6_63
.LBB6_63:                               @ %for.cond.backedge.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	bl	mbtowc
	mov	r5, r4
	ldr	r8, [sp, #24]           @ 4-byte Reload
	ldr	r3, [sp, #20]           @ 4-byte Reload
	cmp	r0, #1
	ldrb	r1, [r5]
	bge	.LBB6_72
	b	.LBB6_84
.LBB6_64:                               @ %for.end.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r8, sp, #256
	mov	r2, r4
	mov	r5, r3
	add	r7, r8, #57
	b	.LBB6_65
.LBB6_65:                               @ %for.end.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	mov	r0, r7
	bl	memcpy
	mov	r0, #0
	strb	r0, [r7, r4]
	b	.LBB6_66
.LBB6_66:                               @ %for.end.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	mov	r0, r7
	bl	wctype
	mov	r9, r0
	cmp	r9, #0
	beq	.LBB6_170
	b	.LBB6_67
.LBB6_67:                               @ %lor.lhs.false72.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	ldrb	r0, [r6, #3]
	mov	r7, #4
	cmp	r0, #93
	bne	.LBB6_112
	b	.LBB6_68
.LBB6_68:                               @ %land.lhs.true103.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	ldr	r10, .LCPI6_3
	ldr	r0, [sp, #32]
	add	r3, r6, #4
	cmp	r0, #0
	beq	.LBB6_71
	b	.LBB6_69
.LCPI6_3:
	.long	1114111                 @ 0x10ffff
.LBB6_69:                               @ %if.then105.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	ldr	r0, [sp, #36]
	mov	r7, #12
	cmp	r0, #63
	bgt	.LBB6_112
	b	.LBB6_70
.LBB6_70:                               @ %if.end110.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	add	r1, r0, #1
	str	r5, [sp, #20]           @ 4-byte Spill
	str	r1, [sp, #36]
	add	r1, sp, #32
	add	r0, r1, r0, lsl #2
	str	r9, [r0, #8]
	b	.LBB6_62
.LBB6_71:                               @   in Loop: Header=BB6_72 Depth=1
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r5, [sp, #20]           @ 4-byte Spill
	mov	r8, #0
	mov	r4, #1
	b	.LBB6_43
.LBB6_72:                               @ %if.end.i.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_34 Depth 2
                                        @     Child Loop BB6_48 Depth 2
                                        @       Child Loop BB6_50 Depth 3
                                        @       Child Loop BB6_55 Depth 3
	and	r1, r1, #255
	cmp	r1, #93
	bne	.LBB6_74
	b	.LBB6_73
.LBB6_73:                               @ %if.end.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	cmp	r5, r3
	bne	.LBB6_133
	b	.LBB6_74
.LBB6_74:                               @ %if.end8.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	str	r8, [sp, #24]           @ 4-byte Spill
	cmp	r1, #45
	bne	.LBB6_30
	b	.LBB6_75
.LBB6_75:                               @ %if.end8.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	cmp	r5, r3
	ldrbne	r2, [r5, #1]
	cmpne	r2, #93
	beq	.LBB6_30
	b	.LBB6_76
.LBB6_76:                               @ %land.lhs.true15.i.i
                                        @   in Loop: Header=BB6_72 Depth=1
	mov	r7, #11
	cmp	r2, #45
	beq	.LBB6_29
	b	.LBB6_112
.LBB6_77:                               @ %entry
	cmp	r1, #63
	bne	.LBB6_93
	b	.LBB6_78
.LBB6_78:                               @ %sw.bb123
	cmp	r0, #0
	beq	.LBB6_93
	b	.LBB6_79
.LBB6_79:                               @ %sw.bb127
	ldr	r0, [r8]
	mvn	r1, #0
	mvn	r2, #0
	mvn	r3, #0
	bl	tre_ast_new_literal
	mov	r6, r0
	mov	r4, r10
	b	.LBB6_110
.LBB6_80:                               @ %entry
	cmp	r1, #94
	bne	.LBB6_93
	b	.LBB6_81
.LBB6_81:                               @ %sw.bb102
	cmp	r0, #0
	bne	.LBB6_83
	b	.LBB6_82
.LBB6_82:                               @ %land.lhs.true104
	ldr	r0, [r8, #16]
	cmp	r0, r10
	bne	.LBB6_93
	b	.LBB6_83
.LBB6_83:                               @ %if.end108
	ldr	r0, [r8]
	mvn	r1, #1
	mov	r2, #1
	mvn	r3, #0
	b	.LBB6_154
.LBB6_84:                               @ %if.then.i.i
	mov	r7, #7
	cmp	r1, #0
	str	r8, [sp, #24]           @ 4-byte Spill
	movne	r7, #2
	b	.LBB6_112
.LBB6_85:                               @ %if.then
	add	r0, r2, r0, lsl #3
	ldr	r1, [r0, #4]
	mov	r0, r8
	bl	parse_atom
	add	r1, r10, #2
	str	r1, [r8, #12]
	b	.LBB6_115
.LBB6_86:                               @ %entry
	cmp	r1, #46
	bne	.LBB6_93
	b	.LBB6_87
.LBB6_87:                               @ %sw.bb75
	ldr	r3, [r8, #24]
	ldr	r0, [r8]
	tst	r2, #4
	add	r1, r3, #1
	str	r1, [r8, #24]
	beq	.LBB6_153
	b	.LBB6_88
.LBB6_88:                               @ %if.then79
	mov	r1, #0
	mov	r2, #9
	mov	r6, #0
	bl	tre_ast_new_literal
	b	.LBB6_89
.LBB6_89:                               @ %if.then79
	ldr	r3, [r8, #24]
	mov	r4, r0
	ldr	r0, [r8]
	add	r1, r3, #1
	b	.LBB6_90
.LBB6_90:                               @ %if.then79
	str	r1, [r8, #24]
	mov	r1, #11
	ldr	r2, .LCPI6_4
	bl	tre_ast_new_literal
	b	.LBB6_91
.LCPI6_4:
	.long	1114111                 @ 0x10ffff
.LBB6_91:                               @ %if.then79
	mov	r2, r0
	cmp	r4, #0
	cmpne	r2, #0
	beq	.LBB6_156
	b	.LBB6_92
.LBB6_92:                               @ %if.then90
	ldr	r0, [r8]
	mov	r1, r4
	bl	tre_ast_new_union
	b	.LBB6_155
.LBB6_93:                               @ %parse_literal
	add	r0, sp, #28
	mov	r1, r10
	mvn	r2, #0
	bl	mbtowc
	b	.LBB6_94
.LBB6_94:                               @ %parse_literal
	mov	r4, r0
	mov	r7, #2
	cmp	r4, #0
	blt	.LBB6_114
	b	.LBB6_95
.LBB6_95:                               @ %if.end135
	ldrb	r0, [r8, #32]
	tst	r0, #2
	beq	.LBB6_106
	b	.LBB6_96
.LBB6_96:                               @ %land.lhs.true139
	ldr	r0, [sp, #28]
	bl	iswupper
	cmp	r0, #0
	bne	.LBB6_98
	b	.LBB6_97
.LBB6_97:                               @ %lor.lhs.false
	ldr	r0, [sp, #28]
	bl	iswlower
	cmp	r0, #0
	beq	.LBB6_106
	b	.LBB6_98
.LBB6_98:                               @ %if.then144
	ldr	r0, [sp, #28]
	ldr	r6, [r8]
	bl	towupper
	mov	r7, r0
	b	.LBB6_99
.LBB6_99:                               @ %if.then144
	ldr	r0, [sp, #28]
	bl	towupper
	mov	r5, r8
	mov	r2, r0
	b	.LBB6_100
.LBB6_100:                              @ %if.then144
	mov	r0, r6
	mov	r1, r7
	ldr	r3, [r5, #24]!
	bl	tre_ast_new_literal
	b	.LBB6_101
.LBB6_101:                              @ %if.then144
	mov	r9, r0
	ldr	r0, [sp, #28]
	ldr	r6, [r8]
	bl	towlower
	b	.LBB6_102
.LBB6_102:                              @ %if.then144
	mov	r7, r0
	ldr	r0, [sp, #28]
	bl	towlower
	ldr	r3, [r5]
	b	.LBB6_103
.LBB6_103:                              @ %if.then144
	mov	r2, r0
	mov	r0, r6
	mov	r1, r7
	bl	tre_ast_new_literal
	b	.LBB6_104
.LBB6_104:                              @ %if.then144
	mov	r2, r0
	cmp	r9, #0
	mov	r6, #0
	cmpne	r2, #0
	beq	.LBB6_108
	b	.LBB6_105
.LBB6_105:                              @ %if.then160
	ldr	r0, [r8]
	mov	r1, r9
	bl	tre_ast_new_union
	b	.LBB6_107
.LBB6_106:                              @ %if.else165
	mov	r5, r8
	ldr	r3, [r5, #24]!
	ldr	r1, [sp, #28]
	ldr	r0, [r8]
	mov	r2, r1
	bl	tre_ast_new_literal
	b	.LBB6_107
.LBB6_107:                              @ %if.end169
	mov	r6, r0
	b	.LBB6_108
.LBB6_108:                              @ %if.end169
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
	b	.LBB6_109
.LBB6_109:                              @ %sw.epilog173
	add	r4, r10, r4
	b	.LBB6_110
.LBB6_110:                              @ %sw.epilog173
	cmp	r6, #0
	mov	r7, #12
	movne	r7, #0
	strne	r6, [r8, #8]
	strne	r4, [r8, #12]
	b	.LBB6_114
.LBB6_111:
	mov	r7, #12
	b	.LBB6_112
.LBB6_112:                              @ %parse_bracket_terms.exit.thread.i
	ldr	r8, [sp, #24]           @ 4-byte Reload
	mov	r5, #0
	b	.LBB6_113
.LBB6_113:                              @ %parse_bracket_done.i
	ldr	r0, [sp, #300]
	bl	free
	ldr	r0, [r8, #24]
	add	r0, r0, #1
	str	r0, [r8, #24]
	str	r5, [r8, #8]
	b	.LBB6_114
.LBB6_114:                              @ %return
	mov	r0, r7
	b	.LBB6_115
.LBB6_115:                              @ %return
	add	sp, sp, #332
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB6_116:                              @ %if.end
	cmp	r1, #119
	bgt	.LBB6_120
	b	.LBB6_117
.LBB6_117:                              @ %if.end
	cmp	r1, #65
	bgt	.LBB6_157
	b	.LBB6_118
.LBB6_118:                              @ %if.end
	cmp	r1, #60
	bne	.LBB6_159
	b	.LBB6_119
.LBB6_119:                              @ %sw.bb14
	ldr	r0, [r8]
	mvn	r1, #1
	mov	r2, #16
	b	.LBB6_163
.LBB6_120:                              @ %if.end
	cmp	r1, #120
	bne	.LBB6_164
	b	.LBB6_121
.LBB6_121:                              @ %sw.bb20
	ldrb	r3, [r10, #2]
	mov	r0, #2
	mov	r7, #2
	mov	r2, #0
	b	.LBB6_122
.LBB6_122:                              @ %sw.bb20
	mov	r1, #0
	cmp	r3, #123
	moveq	r0, #3
	moveq	r7, #8
	add	r6, r10, r0
	b	.LBB6_123
.LBB6_123:                              @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r4, [r6, r2]
	sub	r5, r4, #48
	cmp	r5, #10
	blo	.LBB6_127
	b	.LBB6_124
.LBB6_124:                              @ %if.end.i277
                                        @   in Loop: Header=BB6_123 Depth=1
	orr	r5, r4, #32
	cmp	r5, #87
	blo	.LBB6_128
	b	.LBB6_125
.LBB6_125:                              @ %if.end.i277
                                        @   in Loop: Header=BB6_123 Depth=1
	sub	r4, r5, #97
	cmp	r4, #5
	bhi	.LBB6_128
	b	.LBB6_126
.LBB6_126:                              @   in Loop: Header=BB6_123 Depth=1
	sub	r5, r5, #87
	b	.LBB6_127
.LBB6_127:                              @ %if.end36
                                        @   in Loop: Header=BB6_123 Depth=1
	add	r1, r5, r1, lsl #4
	add	r2, r2, #1
	cmp	r1, #1114112
	cmplt	r2, r7
	blt	.LBB6_123
	b	.LBB6_128
.LBB6_128:                              @ %for.end
	add	r4, r2, r0
	cmp	r3, #123
	bne	.LBB6_131
	b	.LBB6_129
.LBB6_129:                              @ %if.then40
	ldrb	r3, [r10, r4]
	mov	r7, #9
	cmp	r3, #125
	bne	.LBB6_114
	b	.LBB6_130
.LBB6_130:                              @ %if.end45
	add	r0, r2, r0
	add	r4, r0, #1
	b	.LBB6_131
.LBB6_131:                              @ %if.end47
	ldr	r0, [r8]
	ldr	r3, [r8, #24]
	mov	r2, r1
	bl	tre_ast_new_literal
	b	.LBB6_132
.LBB6_132:                              @ %if.end47
	mov	r6, r0
	ldr	r0, [r8, #24]
	add	r0, r0, #1
	str	r0, [r8, #24]
	b	.LBB6_109
.LBB6_133:                              @ %if.end14.i
	add	r0, r5, #1
	mov	r10, #0
	str	r0, [r8, #12]
	ldr	r0, [sp, #32]
	cmp	r0, #0
	beq	.LBB6_143
	b	.LBB6_134
.LBB6_134:                              @ %if.then17.i
	ldr	r0, [sp, #300]
	ldr	r1, [sp, #304]
	ldr	r3, .LCPI6_7
	mov	r2, #4
	b	.LBB6_135
.LCPI6_7:
	.long	tre_compare_lit
.LBB6_135:                              @ %if.then17.i
	bl	qsort
	add	r0, sp, #296
	bl	tre_new_lit
	mov	r7, #12
	mov	r5, #0
	cmp	r0, #0
	beq	.LBB6_113
	b	.LBB6_136
.LBB6_136:                              @ %if.end23.i
	mov	r1, #1114112
	mvn	r2, #0
	mov	r10, #0
	str	r1, [r0]
	b	.LBB6_137
.LBB6_137:                              @ %if.end23.i
	stmib	r0, {r1, r2}
	ldr	r4, [sp, #36]
	cmp	r4, #0
	beq	.LBB6_143
	b	.LBB6_138
.LBB6_138:                              @ %if.then26.i
	mov	r0, #4
	mov	r2, #0
	mov	r3, #0
	mov	r5, #0
	b	.LBB6_139
.LBB6_139:                              @ %if.then26.i
	add	r1, r0, r4, lsl #2
	ldr	r0, [r8]
	str	r1, [sp]
	mov	r1, #0
	b	.LBB6_140
.LBB6_140:                              @ %if.then26.i
	bl	__tre_mem_alloc_impl
	mov	r10, r0
	mov	r7, #12
	cmp	r10, #0
	beq	.LBB6_113
	b	.LBB6_141
.LBB6_141:                              @ %if.end33.i
	add	r0, sp, #32
	lsl	r2, r4, #2
	add	r1, r0, #8
	mov	r0, r10
	b	.LBB6_142
.LBB6_142:                              @ %if.end33.i
	bl	memcpy
	ldr	r1, [sp, #36]
	mov	r0, #0
	str	r0, [r10, r1, lsl #2]
	b	.LBB6_143
.LBB6_143:                              @ %if.end40.i
	ldr	r11, [sp, #304]
	mov	r5, #0
	mov	r7, #0
	cmp	r11, #1
	blt	.LBB6_113
	b	.LBB6_144
.LBB6_144:                              @ %for.body.lr.ph.i
	ldr	r0, [sp, #300]
	mov	r9, #0
	mov	r6, #0
	mov	r4, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB6_145
.LBB6_145:                              @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r2, [r0, r4, lsl #2]
	ldr	r0, [sp, #32]
	cmp	r0, #0
	beq	.LBB6_148
	b	.LBB6_146
.LBB6_146:                              @ %if.then50.i
                                        @   in Loop: Header=BB6_145 Depth=1
	ldr	r1, [r2]
	ldr	r0, [r2, #4]
	cmp	r1, r6
	ble	.LBB6_151
	b	.LBB6_147
.LBB6_147:                              @ %if.end58.i
                                        @   in Loop: Header=BB6_145 Depth=1
	str	r6, [r2]
	sub	r1, r1, #1
	add	r6, r0, #1
	str	r1, [r2, #4]
	b	.LBB6_148
.LBB6_148:                              @ %if.end62.i
                                        @   in Loop: Header=BB6_145 Depth=1
	ldr	r0, [r8, #24]
	mov	r1, #0
	mov	r5, #0
	str	r0, [r2, #8]
	b	.LBB6_149
.LBB6_149:                              @ %if.end62.i
                                        @   in Loop: Header=BB6_145 Depth=1
	str	r10, [r2, #16]
	ldr	r0, [r8]
	bl	tre_ast_new_node
	mov	r2, r0
	b	.LBB6_150
.LBB6_150:                              @ %if.end62.i
                                        @   in Loop: Header=BB6_145 Depth=1
	ldr	r0, [r8]
	mov	r1, r9
	bl	tre_ast_new_union
	mov	r9, r0
	mov	r7, #12
	cmp	r9, #0
	bne	.LBB6_152
	b	.LBB6_113
.LBB6_151:                              @ %if.then53.i
                                        @   in Loop: Header=BB6_145 Depth=1
	add	r0, r0, #1
	cmp	r0, r6
	movge	r6, r0
	b	.LBB6_152
.LBB6_152:                              @ %for.inc.i
                                        @   in Loop: Header=BB6_145 Depth=1
	add	r4, r4, #1
	mov	r7, #0
	mov	r5, r9
	cmp	r4, r11
	blt	.LBB6_145
	b	.LBB6_113
.LBB6_153:                              @ %if.else95
	ldr	r2, .LCPI6_5
	mov	r1, #0
	b	.LBB6_154
.LCPI6_5:
	.long	1114111                 @ 0x10ffff
.LBB6_154:                              @ %if.end100
	bl	tre_ast_new_literal
	b	.LBB6_155
.LBB6_155:                              @ %if.end100
	mov	r6, r0
	b	.LBB6_156
.LBB6_156:                              @ %if.end100
	add	r4, r10, #1
	b	.LBB6_110
.LBB6_157:                              @ %if.end
	cmp	r1, #66
	bne	.LBB6_161
	b	.LBB6_158
.LBB6_158:                              @ %sw.bb11
	ldr	r0, [r8]
	mvn	r1, #1
	mov	r2, #128
	b	.LBB6_163
.LBB6_159:                              @ %if.end
	cmp	r1, #62
	bne	.LBB6_164
	b	.LBB6_160
.LBB6_160:                              @ %sw.bb17
	ldr	r0, [r8]
	mvn	r1, #1
	mov	r2, #32
	b	.LBB6_163
.LBB6_161:                              @ %if.end
	cmp	r1, #98
	bne	.LBB6_164
	b	.LBB6_162
.LBB6_162:                              @ %sw.bb9
	ldr	r0, [r8]
	mvn	r1, #1
	mov	r2, #64
	b	.LBB6_163
.LBB6_163:                              @ %sw.epilog
	mvn	r3, #0
	bl	tre_ast_new_literal
	mov	r6, r0
	b	.LBB6_169
.LBB6_164:                              @ %sw.default
	ldr	r0, [r8]
	ldr	r3, [r8, #24]
	sub	r4, r1, #48
	cmp	r4, #9
	bhi	.LBB6_167
	b	.LBB6_165
.LBB6_165:                              @ %if.then56
	mvn	r1, #3
	mov	r2, r4
	bl	tre_ast_new_literal
	mov	r6, r0
	b	.LBB6_166
.LBB6_166:                              @ %if.then56
	ldr	r0, [r8, #28]
	cmp	r4, r0
	movlt	r4, r0
	str	r4, [r8, #28]
	b	.LBB6_168
.LBB6_167:                              @ %if.else
	mov	r2, r1
	bl	tre_ast_new_literal
	mov	r6, r0
	b	.LBB6_168
.LBB6_168:                              @ %if.end71
	ldr	r0, [r8, #24]
	add	r0, r0, #1
	str	r0, [r8, #24]
	b	.LBB6_169
.LBB6_169:                              @ %sw.epilog
	mov	r4, #2
	b	.LBB6_109
.LBB6_170:
	mov	r7, #4
	b	.LBB6_112
.Ltmp6:
	.size	parse_atom, .Ltmp6-parse_atom
	.cantunwind
	.fnend

	.align	2
	.type	tre_ast_new_iter,%function
tre_ast_new_iter:                       @ @tre_ast_new_iter
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB7_1
.LBB7_1:                                @ %entry
	b	.LBB7_2
.LBB7_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB7_3
.LBB7_3:                                @ %entry
	mov	r6, r0
	mov	r0, #16
	mov	r8, r3
	mov	r9, r2
	b	.LBB7_4
.LBB7_4:                                @ %entry
	mov	r4, r1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	b	.LBB7_5
.LBB7_5:                                @ %entry
	mov	r5, #0
	str	r0, [sp]
	mov	r0, r6
	bl	__tre_mem_alloc_impl
	b	.LBB7_6
.LBB7_6:                                @ %entry
	mov	r7, r0
	mov	r0, r6
	mov	r1, #2
	mov	r2, r7
	bl	tre_ast_new_node
	cmp	r0, #0
	beq	.LBB7_9
	b	.LBB7_7
.LBB7_7:                                @ %if.end
	stm	r7, {r4, r9}
	str	r8, [r7, #8]
	ldr	r1, [sp, #40]
	mov	r5, r0
	b	.LBB7_8
.LBB7_8:                                @ %if.end
	ldrb	r2, [r7, #12]
	and	r1, r1, #1
	and	r2, r2, #254
	orr	r1, r2, r1
	strb	r1, [r7, #12]
	ldr	r1, [r4, #16]
	str	r1, [r0, #16]
	b	.LBB7_9
.LBB7_9:                                @ %return
	mov	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp7:
	.size	tre_ast_new_iter, .Ltmp7-tre_ast_new_iter
	.cantunwind
	.fnend

	.align	2
	.type	tre_ast_new_union,%function
tre_ast_new_union:                      @ @tre_ast_new_union
	.fnstart
.Leh_func_begin8:
.LBB8_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB8_1
.LBB8_1:                                @ %entry
	b	.LBB8_2
.LBB8_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r5, r1
	mov	r8, r2
	mov	r4, r0
	cmp	r5, #0
	beq	.LBB8_7
	b	.LBB8_3
.LBB8_3:                                @ %if.end
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	b	.LBB8_4
.LBB8_4:                                @ %if.end
	mov	r6, #0
	str	r0, [sp]
	mov	r0, r4
	bl	__tre_mem_alloc_impl
	b	.LBB8_5
.LBB8_5:                                @ %if.end
	mov	r7, r0
	mov	r0, r4
	mov	r1, #3
	mov	r2, r7
	bl	tre_ast_new_node
	cmp	r8, #0
	beq	.LBB8_8
	b	.LBB8_6
.LBB8_6:                                @ %if.end
	cmp	r0, #0
	stmne	r7, {r5, r8}
	movne	r6, r0
	ldrne	r1, [r5, #16]
	ldrne	r2, [r8, #16]
	addne	r1, r2, r1
	strne	r1, [r0, #16]
	b	.LBB8_8
.LBB8_7:
	mov	r6, r8
	b	.LBB8_8
.LBB8_8:                                @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp8:
	.size	tre_ast_new_union, .Ltmp8-tre_ast_new_union
	.cantunwind
	.fnend

	.align	2
	.type	tre_stack_push,%function
tre_stack_push:                         @ @tre_stack_push
	.fnstart
.Leh_func_begin9:
.LBB9_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB9_1
.LBB9_1:                                @ %entry
	b	.LBB9_2
.LBB9_2:                                @ %entry
	mov	r4, r0
	mov	r5, r1
	ldr	r1, [r4]
	ldr	r0, [r4, #12]
	cmp	r0, r1
	bge	.LBB9_4
	b	.LBB9_3
.LBB9_3:                                @ %if.then
	ldr	r1, [r4, #16]
	mov	r6, #0
	str	r5, [r1, r0, lsl #2]
	ldr	r0, [r4, #12]
	add	r0, r0, #1
	str	r0, [r4, #12]
	b	.LBB9_8
.LBB9_4:                                @ %if.else
	ldr	r2, [r4, #4]
	mov	r6, #12
	cmp	r1, r2
	bge	.LBB9_8
	b	.LBB9_5
.LBB9_5:                                @ %if.else6
	ldr	r3, [r4, #8]
	ldr	r0, [r4, #16]
	add	r7, r3, r1
	cmp	r7, r2
	b	.LBB9_6
.LBB9_6:                                @ %if.else6
	movgt	r7, r2
	lsl	r1, r7, #2
	bl	realloc
	cmp	r0, #0
	beq	.LBB9_8
	b	.LBB9_7
.LBB9_7:                                @ %if.end15
	str	r7, [r4]
	str	r0, [r4, #16]
	mov	r0, r4
	mov	r1, r5
	bl	tre_stack_push
	mov	r0, #0
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.LBB9_8:                                @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp9:
	.size	tre_stack_push, .Ltmp9-tre_stack_push
	.cantunwind
	.fnend

	.align	2
	.type	tre_compare_lit,%function
tre_compare_lit:                        @ @tre_compare_lit
	.fnstart
.Leh_func_begin10:
.LBB10_0:                               @ %entry
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r0, r0, r1
	mov	pc, lr
.Ltmp10:
	.size	tre_compare_lit, .Ltmp10-tre_compare_lit
	.cantunwind
	.fnend

	.align	2
	.type	tre_new_lit,%function
tre_new_lit:                            @ @tre_new_lit
	.fnstart
.Leh_func_begin11:
.LBB11_0:                               @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB11_1
.LBB11_1:                               @ %entry
	b	.LBB11_2
.LBB11_2:                               @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	ldr	r7, [r4, #8]
	ldr	r1, [r4, #12]
	cmp	r7, r1
	bge	.LBB11_4
	b	.LBB11_3
.LBB11_3:                               @ %entry.if.end11_crit_edge
	ldr	r5, [r4, #4]
	b	.LBB11_8
.LBB11_4:                               @ %if.then
	mov	r6, #0
	cmp	r1, #32768
	bge	.LBB11_10
	b	.LBB11_5
.LBB11_5:                               @ %if.end
	lsl	r0, r1, #1
	lsl	r1, r1, #3
	str	r0, [r4, #12]
	ldr	r0, [r4, #4]
	b	.LBB11_6
.LBB11_6:                               @ %if.end
	bl	realloc
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB11_10
	b	.LBB11_7
.LBB11_7:                               @ %if.end9
	str	r5, [r4, #4]
	ldr	r7, [r4, #8]
	b	.LBB11_8
.LBB11_8:                               @ %if.end11
	add	r0, r7, #1
	mov	r1, #20
	mov	r2, #0
	mov	r3, #1
	b	.LBB11_9
.LBB11_9:                               @ %if.end11
	str	r0, [r4, #8]
	ldr	r0, [r4]
	str	r1, [sp]
	mov	r1, #0
	bl	__tre_mem_alloc_impl
	mov	r6, r0
	str	r6, [r5, r7, lsl #2]
	b	.LBB11_10
.LBB11_10:                              @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp11:
	.size	tre_new_lit, .Ltmp11-tre_new_lit
	.cantunwind
	.fnend

	.align	2
	.type	tre_ast_new_node,%function
tre_ast_new_node:                       @ @tre_ast_new_node
	.fnstart
.Leh_func_begin12:
.LBB12_0:                               @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB12_1
.LBB12_1:                               @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB12_2
.LBB12_2:                               @ %entry
	mov	r5, r1
	mov	r1, #32
	mov	r4, r2
	mov	r2, #0
	b	.LBB12_3
.LBB12_3:                               @ %entry
	mov	r3, #1
	mov	r6, #0
	str	r1, [sp]
	mov	r1, #0
	bl	__tre_mem_alloc_impl
	cmp	r4, #0
	beq	.LBB12_5
	b	.LBB12_4
.LBB12_4:                               @ %entry
	cmp	r0, #0
	movne	r6, r0
	mvnne	r1, #0
	strne	r5, [r0]
	strne	r4, [r0, #4]
	strne	r1, [r0, #8]
	strne	r1, [r0, #12]
	b	.LBB12_5
.LBB12_5:                               @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp12:
	.size	tre_ast_new_node, .Ltmp12-tre_ast_new_node
	.cantunwind
	.fnend

	.align	2
	.type	parse_dup_count,%function
parse_dup_count:                        @ @parse_dup_count
	.fnstart
.Leh_func_begin13:
.LBB13_0:                               @ %entry
	mvn	r2, #0
	str	r2, [r1]
	ldrb	r2, [r0]
	sub	r2, r2, #48
	cmp	r2, #9
	bhi	.LBB13_4
	b	.LBB13_1
.LBB13_1:                               @ %if.end
	mov	r2, #0
	str	r2, [r1]
	ldrb	r12, [r0]
	b	.LBB13_2
.LBB13_2:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	add	r2, r2, r2, lsl #2
	and	r3, r12, #255
	add	r2, r3, r2, lsl #1
	sub	r2, r2, #48
	b	.LBB13_3
.LBB13_3:                               @ %for.cond
                                        @   in Loop: Header=BB13_2 Depth=1
	str	r2, [r1]
	ldrb	r12, [r0, #1]!
	sub	r3, r12, #48
	cmp	r3, #9
	movhi	pc, lr
	cmp	r2, #256
	blt	.LBB13_2
	b	.LBB13_4
.LBB13_4:                               @ %return
	mov	pc, lr
.Ltmp13:
	.size	parse_dup_count, .Ltmp13-parse_dup_count
	.cantunwind
	.fnend

	.align	2
	.type	tre_add_tag_left,%function
tre_add_tag_left:                       @ @tre_add_tag_left
	.fnstart
.Leh_func_begin14:
.LBB14_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB14_1
.LBB14_1:                               @ %entry
	b	.LBB14_2
.LBB14_2:                               @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r7, r0
	mov	r0, #8
	b	.LBB14_3
.LBB14_3:                               @ %entry
	mov	r4, r2
	mov	r8, r1
	mov	r1, #0
	mov	r2, #0
	b	.LBB14_4
.LBB14_4:                               @ %entry
	mov	r3, #0
	str	r0, [sp]
	mov	r0, r7
	bl	__tre_mem_alloc_impl
	b	.LBB14_5
.LBB14_5:                               @ %entry
	mov	r5, r0
	mov	r6, #12
	cmp	r5, #0
	beq	.LBB14_13
	b	.LBB14_6
.LBB14_6:                               @ %if.end
	mov	r0, r7
	mvn	r1, #2
	mov	r2, r4
	mvn	r3, #0
	b	.LBB14_7
.LBB14_7:                               @ %if.end
	bl	tre_ast_new_literal
	str	r0, [r5]
	cmp	r0, #0
	beq	.LBB14_13
	b	.LBB14_8
.LBB14_8:                               @ %if.end5
	mov	r0, #32
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	b	.LBB14_9
.LBB14_9:                               @ %if.end5
	mov	r4, #0
	str	r0, [sp]
	mov	r0, r7
	bl	__tre_mem_alloc_impl
	str	r0, [r5, #4]
	cmp	r0, #0
	beq	.LBB14_13
	b	.LBB14_10
.LBB14_10:                              @ %if.end10
	ldr	r1, [r8, #4]
	mov	r6, #0
	str	r1, [r0, #4]
	ldr	r1, [r8]
	b	.LBB14_11
.LBB14_11:                              @ %if.end10
	str	r1, [r0]
	mvn	r1, #0
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	b	.LBB14_12
.LBB14_12:                              @ %if.end10
	str	r4, [r0, #20]
	str	r4, [r0, #24]
	str	r4, [r0, #28]
	mov	r0, #1
	stm	r8, {r0, r5}
	b	.LBB14_13
.LBB14_13:                              @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp14:
	.size	tre_add_tag_left, .Ltmp14-tre_add_tag_left
	.cantunwind
	.fnend

	.align	2
	.type	tre_purge_regset,%function
tre_purge_regset:                       @ @tre_purge_regset
	.fnstart
.Leh_func_begin15:
.LBB15_0:                               @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	ldr	r3, [r0]
	cmp	r3, #0
	blt	.LBB15_6
	b	.LBB15_1
.LBB15_1:                               @ %for.body.lr.ph
	ldr	lr, [r1, #16]
	add	r12, r0, #4
	b	.LBB15_2
.LBB15_2:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r3, r3, lsr #31
	tst	r3, #1
	asr	r1, r1, #1
	add	r1, r1, r1, lsl #1
	beq	.LBB15_4
	b	.LBB15_3
.LBB15_3:                               @ %if.else
                                        @   in Loop: Header=BB15_2 Depth=1
	add	r1, lr, r1, lsl #2
	str	r2, [r1, #4]
	b	.LBB15_5
.LBB15_4:                               @ %if.then
                                        @   in Loop: Header=BB15_2 Depth=1
	str	r2, [lr, r1, lsl #2]
	b	.LBB15_5
.LBB15_5:                               @ %for.inc
                                        @   in Loop: Header=BB15_2 Depth=1
	ldr	r3, [r12], #4
	cmp	r3, #0
	bge	.LBB15_2
	b	.LBB15_6
.LBB15_6:                               @ %for.end
	mvn	r1, #0
	str	r1, [r0]
	pop	{r11, lr}
	mov	pc, lr
.Ltmp15:
	.size	tre_purge_regset, .Ltmp15-tre_purge_regset
	.cantunwind
	.fnend

	.align	2
	.type	tre_add_tag_right,%function
tre_add_tag_right:                      @ @tre_add_tag_right
	.fnstart
.Leh_func_begin16:
.LBB16_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB16_1
.LBB16_1:                               @ %entry
	b	.LBB16_2
.LBB16_2:                               @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r7, r0
	mov	r0, #8
	b	.LBB16_3
.LBB16_3:                               @ %entry
	mov	r4, r2
	mov	r8, r1
	mov	r1, #0
	mov	r2, #0
	b	.LBB16_4
.LBB16_4:                               @ %entry
	mov	r3, #0
	str	r0, [sp]
	mov	r0, r7
	bl	__tre_mem_alloc_impl
	b	.LBB16_5
.LBB16_5:                               @ %entry
	mov	r5, r0
	mov	r6, #12
	cmp	r5, #0
	beq	.LBB16_13
	b	.LBB16_6
.LBB16_6:                               @ %if.end
	mov	r0, r7
	mvn	r1, #2
	mov	r2, r4
	mvn	r3, #0
	b	.LBB16_7
.LBB16_7:                               @ %if.end
	bl	tre_ast_new_literal
	str	r0, [r5, #4]
	cmp	r0, #0
	beq	.LBB16_13
	b	.LBB16_8
.LBB16_8:                               @ %if.end5
	mov	r0, #32
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	b	.LBB16_9
.LBB16_9:                               @ %if.end5
	mov	r4, #0
	str	r0, [sp]
	mov	r0, r7
	bl	__tre_mem_alloc_impl
	str	r0, [r5]
	cmp	r0, #0
	beq	.LBB16_13
	b	.LBB16_10
.LBB16_10:                              @ %if.end10
	ldr	r1, [r8, #4]
	mov	r6, #0
	str	r1, [r0, #4]
	ldr	r1, [r8]
	b	.LBB16_11
.LBB16_11:                              @ %if.end10
	str	r1, [r0]
	mvn	r1, #0
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	b	.LBB16_12
.LBB16_12:                              @ %if.end10
	str	r4, [r0, #20]
	str	r4, [r0, #24]
	str	r4, [r0, #28]
	mov	r0, #1
	stm	r8, {r0, r5}
	b	.LBB16_13
.LBB16_13:                              @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp16:
	.size	tre_add_tag_right, .Ltmp16-tre_add_tag_right
	.cantunwind
	.fnend

	.align	2
	.type	tre_copy_ast,%function
tre_copy_ast:                           @ @tre_copy_ast
	.fnstart
.Leh_func_begin17:
.LBB17_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB17_1
.LBB17_1:                               @ %entry
	b	.LBB17_2
.LBB17_2:                               @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB17_3
.LBB17_3:                               @ %entry
	mov	r4, r1
	mov	r8, r0
	mov	r1, r2
	b	.LBB17_4
.LBB17_4:                               @ %entry
	mov	r6, r3
	ldr	r5, [r4, #12]
	mov	r0, r4
	bl	tre_stack_push
	b	.LBB17_5
.LBB17_5:                               @ %entry
	mov	r0, r4
	mov	r1, #0
	mov	r9, #0
	bl	tre_stack_push
	ldr	r7, [sp, #56]
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_6
.LBB17_6:                               @ %land.rhs.lr.ph
	ldr	r10, [sp, #68]
	ldr	r11, [sp, #64]
	and	r0, r6, #2
	mov	r9, #0
	b	.LBB17_7
.LBB17_7:                               @ %land.rhs.lr.ph
	str	r0, [sp, #4]            @ 4-byte Spill
	and	r0, r6, #1
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB17_9
.LBB17_8:                               @ %if.end134
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r11, [r1, #4]
	b	.LBB17_9
.LBB17_9:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r4, #12]
	mov	r0, #0
	cmp	r1, r5
	ble	.LBB17_50
	b	.LBB17_10
.LBB17_10:                              @ %if.end
                                        @   in Loop: Header=BB17_9 Depth=1
	sub	r2, r1, #1
	str	r2, [r4, #12]
	ldr	r0, [r4, #16]
	ldr	r2, [r0, r2, lsl #2]
	cmp	r2, #0
	bne	.LBB17_18
	b	.LBB17_11
.LBB17_11:                              @ %sw.bb10
                                        @   in Loop: Header=BB17_9 Depth=1
	sub	r1, r1, #2
	str	r1, [r4, #12]
	ldr	r3, [r0, r1, lsl #2]
	ldr	r1, [r3]
	cmp	r1, #3
	bhi	.LBB17_9
	b	.LBB17_12
.LBB17_12:                              @ %sw.bb10
                                        @   in Loop: Header=BB17_9 Depth=1
	lsl	r1, r1, #2
	adr	r2, .LJTI17_0_0
	ldr	pc, [r1, r2]
.LJTI17_0_0:
	.long	.LBB17_13
	.long	.LBB17_20
	.long	.LBB17_30
	.long	.LBB17_34
.LBB17_13:                              @ %sw.bb12
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r0, [r3, #4]
	ldm	r0, {r1, r2, r6}
	cmp	r1, #0
	bge	.LBB17_42
	b	.LBB17_14
.LBB17_14:                              @ %sw.bb12
                                        @   in Loop: Header=BB17_9 Depth=1
	cmn	r1, #4
	beq	.LBB17_42
	b	.LBB17_15
.LBB17_15:                              @ %if.else
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB17_43
	b	.LBB17_16
.LBB17_16:                              @ %if.else
                                        @   in Loop: Header=BB17_9 Depth=1
	cmn	r1, #3
	bne	.LBB17_43
	b	.LBB17_17
.LBB17_17:                              @   in Loop: Header=BB17_9 Depth=1
	mvn	r6, #0
	mvn	r1, #0
	mvn	r2, #0
	b	.LBB17_46
.LBB17_18:                              @ %if.end
                                        @   in Loop: Header=BB17_9 Depth=1
	cmp	r2, #1
	bne	.LBB17_9
	b	.LBB17_19
.LBB17_19:                              @ %sw.bb
                                        @   in Loop: Header=BB17_9 Depth=1
	sub	r1, r1, #2
	str	r1, [r4, #12]
	ldr	r11, [r0, r1, lsl #2]
	b	.LBB17_9
.LBB17_20:                              @ %sw.bb75
                                        @   in Loop: Header=BB17_9 Depth=1
	str	r9, [sp, #12]           @ 4-byte Spill
	mov	r9, r8
	mov	r8, r10
	ldr	r10, [r3, #4]
	b	.LBB17_21
.LBB17_21:                              @ %sw.bb75
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r9
	ldm	r10, {r1, r2}
	bl	tre_ast_new_catenation
	mov	r1, r0
	b	.LBB17_22
.LBB17_22:                              @ %sw.bb75
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, #12
	str	r1, [r11]
	cmp	r1, #0
	beq	.LBB17_49
	b	.LBB17_23
.LBB17_23:                              @ %if.end85
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r11, [r1, #4]
	mov	r0, #0
	mov	r6, r11
	str	r0, [r11]
	b	.LBB17_24
.LBB17_24:                              @ %if.end85
                                        @   in Loop: Header=BB17_9 Depth=1
	str	r0, [r6, #4]!
	mov	r0, r4
	ldr	r1, [r10, #4]
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_49
	b	.LBB17_25
.LBB17_25:                              @ %if.end94
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, #0
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_49
	b	.LBB17_26
.LBB17_26:                              @ %if.end98
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, r6
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_49
	b	.LBB17_27
.LBB17_27:                              @ %if.end103
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, #1
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_49
	b	.LBB17_28
.LBB17_28:                              @ %if.end107
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r1, [r10]
	mov	r0, r4
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_49
	b	.LBB17_29
.LBB17_29:                              @ %if.end112
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, #0
	bl	tre_stack_push
	mov	r10, r8
	mov	r8, r9
	ldr	r9, [sp, #12]           @ 4-byte Reload
	b	.LBB17_48
.LBB17_30:                              @ %sw.bb117
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r6, [r3, #4]
	mov	r0, r4
	ldr	r1, [r6]
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_31
.LBB17_31:                              @ %if.end123
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, #0
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_32
.LBB17_32:                              @ %if.end127
                                        @   in Loop: Header=BB17_9 Depth=1
	ldm	r6, {r1, r2, r3}
	ldrb	r0, [r6, #12]
	and	r0, r0, #1
	str	r0, [sp]
	b	.LBB17_33
.LBB17_33:                              @ %if.end127
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r8
	bl	tre_ast_new_iter
	mov	r1, r0
	mov	r0, #12
	str	r1, [r11]
	cmp	r1, #0
	bne	.LBB17_8
	b	.LBB17_50
.LBB17_34:                              @ %sw.bb40
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r6, [r3, #4]
	mov	r0, r8
	ldm	r6, {r1, r2}
	bl	tre_ast_new_union
	b	.LBB17_35
.LBB17_35:                              @ %sw.bb40
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r1, r0
	mov	r0, #12
	str	r1, [r11]
	cmp	r1, #0
	beq	.LBB17_50
	b	.LBB17_36
.LBB17_36:                              @ %if.end45
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r11, [r1, #4]
	ldr	r1, [r6, #4]
	mov	r0, r4
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_37
.LBB17_37:                              @ %if.end52
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, #0
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_38
.LBB17_38:                              @ %if.end56
                                        @   in Loop: Header=BB17_9 Depth=1
	add	r1, r11, #4
	mov	r0, r4
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_39
.LBB17_39:                              @ %if.end61
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, #1
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_40
.LBB17_40:                              @ %if.end65
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r1, [r6]
	mov	r0, r4
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB17_50
	b	.LBB17_41
.LBB17_41:                              @ %if.end70
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r4
	mov	r1, #0
	bl	tre_stack_push
	b	.LBB17_48
.LBB17_42:                              @ %if.then17
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r0, [r7]
	add	r9, r9, #1
	add	r6, r0, r6
	b	.LBB17_46
.LBB17_43:                              @ %if.else21
                                        @   in Loop: Header=BB17_9 Depth=1
	cmn	r1, #3
	bne	.LBB17_46
	b	.LBB17_44
.LBB17_44:                              @ %land.lhs.true24
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	mvn	r1, #2
	cmp	r0, #0
	beq	.LBB17_46
	b	.LBB17_45
.LBB17_45:                              @ %land.lhs.true24
                                        @   in Loop: Header=BB17_9 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	cmp	r0, #0
	ldrne	r0, [sp, #60]
	movne	r3, #1
	strne	r3, [r0, r2, lsl #2]
	movne	r0, #0
	strne	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB17_46
.LBB17_46:                              @ %if.end32
                                        @   in Loop: Header=BB17_9 Depth=1
	mov	r0, r8
	mov	r3, r6
	bl	tre_ast_new_literal
	str	r0, [r11]
	b	.LBB17_47
.LBB17_47:                              @ %if.end32
                                        @   in Loop: Header=BB17_9 Depth=1
	cmp	r0, #0
	mov	r0, #0
	ldr	r1, [r10]
	moveq	r0, #12
	cmp	r6, r1
	strgt	r6, [r10]
	b	.LBB17_48
.LBB17_48:                              @ %while.cond.backedge
                                        @   in Loop: Header=BB17_9 Depth=1
	cmp	r0, #0
	beq	.LBB17_9
	b	.LBB17_50
.LBB17_49:
	ldr	r9, [sp, #12]           @ 4-byte Reload
	b	.LBB17_50
.LBB17_50:                              @ %while.end
	ldr	r1, [r7]
	add	r1, r1, r9
	str	r1, [r7]
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp17:
	.size	tre_copy_ast, .Ltmp17-tre_copy_ast
	.cantunwind
	.fnend

	.align	2
	.type	tre_set_one,%function
tre_set_one:                            @ @tre_set_one
	.fnstart
.Leh_func_begin18:
.LBB18_0:                               @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB18_1
.LBB18_1:                               @ %entry
	b	.LBB18_2
.LBB18_2:                               @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r6, r1
	mov	r1, #64
	b	.LBB18_3
.LBB18_3:                               @ %entry
	mov	r4, r3
	mov	r5, r2
	mov	r2, #0
	mov	r3, #1
	b	.LBB18_4
.LBB18_4:                               @ %entry
	mov	r7, #0
	str	r1, [sp]
	mov	r1, #0
	bl	__tre_mem_alloc_impl
	cmp	r0, #0
	beq	.LBB18_8
	b	.LBB18_5
.LBB18_5:                               @ %if.end
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #32]
	mvn	r7, #0
	b	.LBB18_6
.LBB18_6:                               @ %if.end
	str	r6, [r0]
	str	r5, [r0, #4]
	str	r4, [r0, #8]
	str	r3, [r0, #20]
	b	.LBB18_7
.LBB18_7:                               @ %if.end
	str	r2, [r0, #24]
	str	r1, [r0, #28]
	str	r7, [r0, #32]
	str	r7, [r0, #36]
	str	r7, [r0, #40]
	mov	r7, r0
	b	.LBB18_8
.LBB18_8:                               @ %return
	mov	r0, r7
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp18:
	.size	tre_set_one, .Ltmp18-tre_set_one
	.cantunwind
	.fnend

	.align	2
	.type	tre_set_empty,%function
tre_set_empty:                          @ @tre_set_empty
	.fnstart
.Leh_func_begin19:
.LBB19_0:                               @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB19_1
.LBB19_1:                               @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r1, #32
	mov	r2, #0
	b	.LBB19_2
.LBB19_2:                               @ %entry
	mov	r3, #1
	mov	r4, #0
	str	r1, [sp]
	mov	r1, #0
	b	.LBB19_3
.LBB19_3:                               @ %entry
	bl	__tre_mem_alloc_impl
	cmp	r0, #0
	mvnne	r1, #0
	movne	r4, r0
	b	.LBB19_4
.LBB19_4:                               @ %entry
	strne	r1, [r0]
	strne	r1, [r0, #4]
	strne	r1, [r0, #8]
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp19:
	.size	tre_set_empty, .Ltmp19-tre_set_empty
	.cantunwind
	.fnend

	.align	2
	.type	tre_set_union,%function
tre_set_union:                          @ @tre_set_union
	.fnstart
.Leh_func_begin20:
.LBB20_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB20_1
.LBB20_1:                               @ %entry
	b	.LBB20_2
.LBB20_2:                               @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB20_3
.LBB20_3:                               @ %entry
	mov	r7, r3
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r5, r1
	b	.LBB20_4
.LBB20_4:                               @ %entry
	mov	r0, #0
	mov	r8, #0
	str	r2, [sp, #4]            @ 4-byte Spill
	cmp	r7, #0
	beq	.LBB20_8
	b	.LBB20_5
.LBB20_5:
	mov	r8, #0
	b	.LBB20_7
.LBB20_6:                               @ %for.inc
                                        @   in Loop: Header=BB20_7 Depth=1
	add	r8, r8, #1
	b	.LBB20_7
.LBB20_7:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r7, r8, lsl #2]
	cmp	r1, #0
	bge	.LBB20_6
	b	.LBB20_8
.LBB20_8:                               @ %for.cond2.preheader
	ldr	r6, [sp, #56]
	b	.LBB20_9
.LBB20_9:                               @ %for.cond2
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r5, r0]
	add	r0, r0, #32
	cmp	r1, #0
	bge	.LBB20_9
	b	.LBB20_10
.LBB20_10:                              @ %for.cond9.preheader
	ldr	r1, [sp, #4]            @ 4-byte Reload
	sub	r0, r0, #32
	b	.LBB20_11
.LBB20_11:                              @ %for.cond9
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1], #32
	add	r0, r0, #32
	cmp	r2, #0
	bge	.LBB20_11
	b	.LBB20_12
.LBB20_12:                              @ %for.end16
	str	r0, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	b	.LBB20_13
.LBB20_13:                              @ %for.end16
	mov	r3, #1
	str	r0, [sp, #16]           @ 4-byte Spill
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	__tre_mem_alloc_impl
	mov	r1, r0
	cmp	r0, #0
	beq	.LBB20_55
	b	.LBB20_14
.LBB20_14:                              @ %for.cond18.preheader
	ldr	r0, [r5]
	mov	r12, r1
	mov	r11, #0
	str	r12, [sp, #8]           @ 4-byte Spill
	cmp	r0, #0
	blt	.LBB20_37
	b	.LBB20_15
.LBB20_15:                              @ %for.body22.lr.ph
	mov	r11, #0
	b	.LBB20_16
.LBB20_16:                              @ %for.body22
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB20_23 Depth 2
                                        @     Child Loop BB20_29 Depth 2
                                        @     Child Loop BB20_33 Depth 2
	mov	r1, r12
	add	r9, r5, r11, lsl #5
	str	r0, [r1, r11, lsl #5]!
	ldr	r0, [r9, #4]
	b	.LBB20_17
.LBB20_17:                              @ %for.body22
                                        @   in Loop: Header=BB20_16 Depth=1
	str	r0, [r1, #4]
	ldr	r0, [r9, #8]
	str	r0, [r1, #8]
	ldr	r0, [r9, #16]
	b	.LBB20_18
.LBB20_18:                              @ %for.body22
                                        @   in Loop: Header=BB20_16 Depth=1
	orr	r0, r0, r6
	str	r0, [r1, #16]
	ldr	r0, [r9, #20]
	str	r0, [r1, #20]
	b	.LBB20_19
.LBB20_19:                              @ %for.body22
                                        @   in Loop: Header=BB20_16 Depth=1
	ldr	r0, [r9, #24]
	str	r0, [r1, #24]
	ldr	r0, [r9, #28]
	str	r0, [r1, #28]
	ldr	r0, [r9, #12]!
	orrs	r1, r7, r0
	bne	.LBB20_21
	b	.LBB20_20
.LBB20_20:                              @ %if.then50
                                        @   in Loop: Header=BB20_16 Depth=1
	add	r0, r12, r11, lsl #5
	mov	r1, #0
	str	r1, [r0, #12]
	b	.LBB20_36
.LBB20_21:                              @ %for.cond53.preheader
                                        @   in Loop: Header=BB20_16 Depth=1
	mov	r1, #0
	mov	r10, #0
	cmp	r0, #0
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, #0
	bne	.LBB20_23
	b	.LBB20_25
.LBB20_22:                              @ %for.inc64
                                        @   in Loop: Header=BB20_23 Depth=2
	add	r1, r1, #1
	b	.LBB20_23
.LBB20_23:                              @ %land.rhs57
                                        @   Parent Loop BB20_16 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, r1, lsl #2]
	cmp	r2, #0
	bge	.LBB20_22
	b	.LBB20_24
.LBB20_24:                              @   in Loop: Header=BB20_16 Depth=1
	mov	r10, r1
	b	.LBB20_25
.LBB20_25:                              @ %for.end66
                                        @   in Loop: Header=BB20_16 Depth=1
	add	r0, r10, r8
	mov	r1, #4
	mov	r2, #0
	mov	r3, #0
	b	.LBB20_26
.LBB20_26:                              @ %for.end66
                                        @   in Loop: Header=BB20_16 Depth=1
	add	r0, r1, r0, lsl #2
	mov	r1, #0
	str	r0, [sp]
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	__tre_mem_alloc_impl
	cmp	r0, #0
	beq	.LBB20_55
	b	.LBB20_27
.LBB20_27:                              @ %for.cond74.preheader
                                        @   in Loop: Header=BB20_16 Depth=1
	mov	r1, #0
	mov	r2, #0
	cmp	r10, #1
	blt	.LBB20_31
	b	.LBB20_28
.LBB20_28:                              @ %for.body76.lr.ph
                                        @   in Loop: Header=BB20_16 Depth=1
	ldr	r2, [r9]
	mov	r3, #0
	b	.LBB20_29
.LBB20_29:                              @ %for.body76
                                        @   Parent Loop BB20_16 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r2, r3, lsl #2]
	str	r4, [r0, r3, lsl #2]
	add	r3, r3, #1
	cmp	r10, r3
	bne	.LBB20_29
	b	.LBB20_30
.LBB20_30:                              @   in Loop: Header=BB20_16 Depth=1
	mov	r2, r10
	b	.LBB20_31
.LBB20_31:                              @ %for.cond84.preheader
                                        @   in Loop: Header=BB20_16 Depth=1
	ldr	r12, [sp, #8]           @ 4-byte Reload
	cmp	r8, #1
	blt	.LBB20_35
	b	.LBB20_32
.LBB20_32:                              @ %for.body86.preheader
                                        @   in Loop: Header=BB20_16 Depth=1
	add	r1, r0, r2, lsl #2
	mov	r3, #0
	b	.LBB20_33
.LBB20_33:                              @ %for.body86
                                        @   Parent Loop BB20_16 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r7, r3, lsl #2]
	str	r4, [r1, r3, lsl #2]
	add	r3, r3, #1
	cmp	r8, r3
	bne	.LBB20_33
	b	.LBB20_34
.LBB20_34:                              @   in Loop: Header=BB20_16 Depth=1
	mov	r1, r8
	b	.LBB20_35
.LBB20_35:                              @ %for.end92
                                        @   in Loop: Header=BB20_16 Depth=1
	add	r1, r1, r2
	mvn	r2, #0
	str	r2, [r0, r1, lsl #2]
	add	r1, r12, r11, lsl #5
	str	r0, [r1, #12]
	b	.LBB20_36
.LBB20_36:                              @ %for.inc98
                                        @   in Loop: Header=BB20_16 Depth=1
	add	r11, r11, #1
	ldr	r0, [r5, r11, lsl #5]
	cmp	r0, #0
	bge	.LBB20_16
	b	.LBB20_37
.LBB20_37:                              @ %for.cond101.preheader
	ldr	r3, [sp, #4]            @ 4-byte Reload
	add	r0, r12, r11, lsl #5
	ldr	r1, [r3]
	cmp	r1, #0
	blt	.LBB20_54
	b	.LBB20_38
.LBB20_38:
	mov	r2, r11
	mov	r6, #0
	b	.LBB20_39
.LBB20_39:                              @ %for.body105
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB20_44 Depth 2
                                        @     Child Loop BB20_49 Depth 2
	str	r1, [r0]
	add	r7, r3, r6, lsl #5
	add	r5, r12, r2, lsl #5
	mov	r10, r3
	b	.LBB20_40
.LBB20_40:                              @ %for.body105
                                        @   in Loop: Header=BB20_39 Depth=1
	mvn	r4, #1
	mov	r2, #0
	mov	r1, #0
	ldr	r0, [r7, #4]
	b	.LBB20_41
.LBB20_41:                              @ %for.body105
                                        @   in Loop: Header=BB20_39 Depth=1
	str	r0, [r5, #4]
	ldr	r0, [r7, #8]
	str	r0, [r5, #8]
	ldr	r0, [r7, #16]
	b	.LBB20_42
.LBB20_42:                              @ %for.body105
                                        @   in Loop: Header=BB20_39 Depth=1
	str	r0, [r5, #16]
	ldr	r0, [r7, #20]
	str	r0, [r5, #20]
	ldr	r0, [r7, #24]
	b	.LBB20_43
.LBB20_43:                              @ %for.body105
                                        @   in Loop: Header=BB20_39 Depth=1
	str	r0, [r5, #24]
	ldr	r0, [r7, #28]
	str	r0, [r5, #28]
	ldr	r0, [r7, #12]!
	cmp	r0, #0
	beq	.LBB20_52
	b	.LBB20_44
.LBB20_44:                              @ %for.cond149
                                        @   Parent Loop BB20_39 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r0, r1]
	mov	r8, r2
	add	r1, r1, #4
	add	r4, r4, #1
	add	r2, r8, #1
	cmp	r3, #0
	bge	.LBB20_44
	b	.LBB20_45
.LBB20_45:                              @ %for.end157
                                        @   in Loop: Header=BB20_39 Depth=1
	mov	r0, #0
	str	r1, [sp]
	mov	r1, #0
	mov	r2, #0
	b	.LBB20_46
.LBB20_46:                              @ %for.end157
                                        @   in Loop: Header=BB20_39 Depth=1
	mov	r3, #0
	mov	r9, r12
	str	r0, [sp, #16]           @ 4-byte Spill
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	__tre_mem_alloc_impl
	cmp	r0, #0
	beq	.LBB20_55
	b	.LBB20_47
.LBB20_47:                              @ %for.cond164.preheader
                                        @   in Loop: Header=BB20_39 Depth=1
	add	r1, r4, #1
	mov	r2, #0
	cmp	r1, #1
	blt	.LBB20_51
	b	.LBB20_48
.LBB20_48:                              @ %for.body166.lr.ph
                                        @   in Loop: Header=BB20_39 Depth=1
	ldr	r2, [r7]
	mov	r3, r0
	b	.LBB20_49
.LBB20_49:                              @ %for.body166
                                        @   Parent Loop BB20_39 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r2], #4
	subs	r8, r8, #1
	str	r7, [r3], #4
	bne	.LBB20_49
	b	.LBB20_50
.LBB20_50:                              @   in Loop: Header=BB20_39 Depth=1
	mov	r2, r1
	b	.LBB20_51
.LBB20_51:                              @ %for.end173
                                        @   in Loop: Header=BB20_39 Depth=1
	mvn	r1, #0
	mov	r3, r10
	mov	r12, r9
	str	r1, [r0, r2, lsl #2]
	str	r0, [r5, #12]
	b	.LBB20_53
.LBB20_52:                              @ %if.then144
                                        @   in Loop: Header=BB20_39 Depth=1
	mov	r0, #0
	mov	r3, r10
	str	r0, [r5, #12]
	b	.LBB20_53
.LBB20_53:                              @ %for.inc179
                                        @   in Loop: Header=BB20_39 Depth=1
	add	r6, r6, #1
	ldr	r1, [r3, r6, lsl #5]
	add	r2, r6, r11
	add	r0, r12, r2, lsl #5
	cmp	r1, #0
	bge	.LBB20_39
	b	.LBB20_54
.LBB20_54:                              @ %for.end181
	mvn	r1, #0
	str	r12, [sp, #16]          @ 4-byte Spill
	str	r1, [r0]
	b	.LBB20_55
.LBB20_55:                              @ %return
	ldr	r0, [sp, #16]           @ 4-byte Reload
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp20:
	.size	tre_set_union, .Ltmp20-tre_set_union
	.cantunwind
	.fnend

	.align	2
	.type	tre_match_empty,%function
tre_match_empty:                        @ @tre_match_empty
	.fnstart
.Leh_func_begin21:
.LBB21_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB21_1
.LBB21_1:                               @ %entry
	b	.LBB21_2
.LBB21_2:                               @ %entry
	ldr	r5, [sp, #32]
	mov	r6, r0
	b	.LBB21_3
.LBB21_3:                               @ %entry
	mov	r10, r3
	mov	r8, r2
	ldr	r7, [r6, #12]
	cmp	r5, #0
	b	.LBB21_4
.LBB21_4:                               @ %entry
	movne	r0, #0
	strne	r0, [r5]
	mov	r0, r6
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB21_28
	b	.LBB21_5
.LBB21_5:                               @ %land.rhs.lr.ph
	mvn	r9, #0
	b	.LBB21_7
.LBB21_6:                               @ %if.then31
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r0, [r0, #4]
	ldr	r1, [r10]
	orr	r0, r1, r0
	str	r0, [r10]
	b	.LBB21_7
.LBB21_7:                               @ %land.rhs
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB21_23 Depth 2
	ldr	r1, [r6, #12]
	mov	r0, #0
	cmp	r1, r7
	ble	.LBB21_28
	b	.LBB21_8
.LBB21_8:                               @ %while.body
                                        @   in Loop: Header=BB21_7 Depth=1
	sub	r0, r1, #1
	str	r0, [r6, #12]
	ldr	r1, [r6, #16]
	ldr	r0, [r1, r0, lsl #2]
	ldr	r1, [r0]
	cmp	r1, #3
	bhi	.LBB21_7
	b	.LBB21_9
.LBB21_9:                               @ %while.body
                                        @   in Loop: Header=BB21_7 Depth=1
	lsl	r1, r1, #2
	adr	r2, .LJTI21_0_0
	ldr	pc, [r1, r2]
.LJTI21_0_0:
	.long	.LBB21_10
	.long	.LBB21_12
	.long	.LBB21_14
	.long	.LBB21_15
.LBB21_10:                              @ %sw.bb
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r0, [r0, #4]
	ldr	r1, [r0]
	cmn	r1, #2
	bne	.LBB21_19
	b	.LBB21_11
.LBB21_11:                              @ %sw.bb29
                                        @   in Loop: Header=BB21_7 Depth=1
	cmp	r10, #0
	beq	.LBB21_7
	b	.LBB21_6
.LBB21_12:                              @ %sw.bb54
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r4, [r0, #4]
	mov	r0, r6
	ldr	r1, [r4]
	bl	tre_stack_push
	cmp	r0, #0
	bne	.LBB21_28
	b	.LBB21_13
.LBB21_13:                              @ %if.end60
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r1, [r4, #4]
	b	.LBB21_18
.LBB21_14:                              @ %sw.bb66
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r0, [r0, #4]
	ldr	r1, [r0]
	b	.LBB21_17
.LBB21_15:                              @ %sw.bb34
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r0, [r0, #4]
	ldr	r1, [r0]
	ldr	r2, [r1, #8]
	cmp	r2, #0
	bne	.LBB21_18
	b	.LBB21_16
.LBB21_16:                              @ %if.else
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r1, [r0, #4]
	b	.LBB21_17
.LBB21_17:                              @ %if.else
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r0, [r1, #8]
	cmp	r0, #0
	beq	.LBB21_7
	b	.LBB21_18
.LBB21_18:                              @ %if.then37
                                        @   in Loop: Header=BB21_7 Depth=1
	mov	r0, r6
	bl	tre_stack_push
	cmp	r0, #0
	beq	.LBB21_7
	b	.LBB21_28
.LBB21_19:                              @ %sw.bb
                                        @   in Loop: Header=BB21_7 Depth=1
	cmn	r1, #3
	bne	.LBB21_7
	b	.LBB21_20
.LBB21_20:                              @ %sw.bb5
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r0, [r0, #4]
	cmp	r0, #0
	blt	.LBB21_7
	b	.LBB21_21
.LBB21_21:                              @ %if.then7
                                        @   in Loop: Header=BB21_7 Depth=1
	cmp	r8, #0
	beq	.LBB21_27
	b	.LBB21_22
.LBB21_22:                              @ %for.cond.preheader
                                        @   in Loop: Header=BB21_7 Depth=1
	ldr	r3, [r8]
	mov	r1, #0
	mov	r2, r8
	cmp	r3, #0
	blt	.LBB21_26
	b	.LBB21_23
.LBB21_23:                              @ %for.body
                                        @   Parent Loop BB21_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r3, r0
	beq	.LBB21_25
	b	.LBB21_24
.LBB21_24:                              @ %for.inc
                                        @   in Loop: Header=BB21_23 Depth=2
	ldr	r3, [r2, #4]!
	add	r1, r1, #1
	cmp	r3, #0
	bge	.LBB21_23
	b	.LBB21_26
.LBB21_25:                              @ %for.end
                                        @   in Loop: Header=BB21_7 Depth=1
	cmp	r0, #0
	bge	.LBB21_27
	b	.LBB21_26
.LBB21_26:                              @ %if.then18
                                        @   in Loop: Header=BB21_7 Depth=1
	str	r0, [r2]
	add	r0, r8, r1, lsl #2
	str	r9, [r0, #4]
	b	.LBB21_27
.LBB21_27:                              @ %if.end23
                                        @   in Loop: Header=BB21_7 Depth=1
	cmp	r5, #0
	ldrne	r0, [r5]
	addne	r0, r0, #1
	strne	r0, [r5]
	b	.LBB21_7
.LBB21_28:                              @ %while.end
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp21:
	.size	tre_match_empty, .Ltmp21-tre_match_empty
	.cantunwind
	.fnend

	.align	2
	.type	tre_make_trans,%function
tre_make_trans:                         @ @tre_make_trans
	.fnstart
.Leh_func_begin22:
.LBB22_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB22_1
.LBB22_1:                               @ %entry
	b	.LBB22_2
.LBB22_2:                               @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB22_3
.LBB22_3:                               @ %entry
	mov	r11, r0
	mov	r7, r2
	mov	r9, r1
	b	.LBB22_4
.LBB22_4:                               @ %entry
	mov	r1, #0
	ldr	r0, [r11]
	cmp	r7, #0
	beq	.LBB22_54
	b	.LBB22_5
.LBB22_5:                               @ %while.cond.preheader
	cmp	r0, #0
	blt	.LBB22_60
	b	.LBB22_6
.LBB22_6:                               @ %while.cond2.preheader.lr.ph
	sub	r0, r7, #12
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB22_7
.LBB22_7:                               @ %while.cond2.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB22_9 Depth 2
                                        @       Child Loop BB22_10 Depth 3
                                        @       Child Loop BB22_13 Depth 3
                                        @       Child Loop BB22_21 Depth 3
                                        @       Child Loop BB22_25 Depth 3
                                        @       Child Loop BB22_29 Depth 3
                                        @       Child Loop BB22_32 Depth 3
                                        @       Child Loop BB22_41 Depth 3
                                        @       Child Loop BB22_45 Depth 3
                                        @         Child Loop BB22_46 Depth 4
	ldr	r0, [r9]
	cmp	r0, #0
	blt	.LBB22_53
	b	.LBB22_8
.LBB22_8:                               @ %while.body5.lr.ph.lr.ph
                                        @   in Loop: Header=BB22_7 Depth=1
	mvn	r10, #0
	mov	r4, r9
	b	.LBB22_9
.LBB22_9:                               @ %while.body5.lr.ph
                                        @   Parent Loop BB22_7 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB22_10 Depth 3
                                        @       Child Loop BB22_13 Depth 3
                                        @       Child Loop BB22_21 Depth 3
                                        @       Child Loop BB22_25 Depth 3
                                        @       Child Loop BB22_29 Depth 3
                                        @       Child Loop BB22_32 Depth 3
                                        @       Child Loop BB22_41 Depth 3
                                        @       Child Loop BB22_45 Depth 3
                                        @         Child Loop BB22_46 Depth 4
	mov	r1, r10
	add	r4, r4, #32
	mov	r10, r0
	b	.LBB22_10
.LBB22_10:                              @ %while.body5
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r10, r1
	bne	.LBB22_12
	b	.LBB22_11
.LBB22_11:                              @ %if.then8
                                        @   in Loop: Header=BB22_10 Depth=3
	ldr	r10, [r4], #32
	cmp	r10, #0
	bge	.LBB22_10
	b	.LBB22_53
.LBB22_12:                              @ %if.end
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r0, [r11]
	ldr	r1, [sp, #40]
	ldr	r0, [r1, r0, lsl #2]
	ldr	r1, [sp]                @ 4-byte Reload
	add	r8, r1, r0, lsl #5
	b	.LBB22_13
.LBB22_13:                              @ %while.cond11
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [r8, #20]
	add	r8, r8, #32
	cmp	r0, #0
	bne	.LBB22_13
	b	.LBB22_14
.LBB22_14:                              @ %if.then17
                                        @   in Loop: Header=BB22_9 Depth=2
	mov	r0, #0
	str	r0, [r8, #20]
	ldr	r0, [r11, #4]
	str	r0, [r8, #-20]
	b	.LBB22_15
.LBB22_15:                              @ %if.then17
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r0, [r11, #8]
	str	r0, [r8, #-16]
	ldr	r0, [sp, #40]
	ldr	r0, [r0, r10, lsl #2]
	b	.LBB22_16
.LBB22_16:                              @ %if.then17
                                        @   in Loop: Header=BB22_9 Depth=2
	add	r0, r7, r0, lsl #5
	str	r0, [r8, #-12]
	str	r10, [r8, #-8]
	ldr	r0, [r11, #20]
	b	.LBB22_17
.LBB22_17:                              @ %if.then17
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r1, [r11, #16]
	ldr	r3, [r4, #-16]
	ldr	r2, [r11, #24]
	orr	r1, r3, r1
	b	.LBB22_18
.LBB22_18:                              @ %if.then17
                                        @   in Loop: Header=BB22_9 Depth=2
	cmp	r0, #0
	orrne	r1, r1, #4
	cmp	r2, #0
	orrne	r1, r1, #8
	b	.LBB22_19
.LBB22_19:                              @ %if.then17
                                        @   in Loop: Header=BB22_9 Depth=2
	str	r1, [r8]
	ldr	r2, [r11, #28]
	cmp	r2, #0
	orrge	r0, r1, #256
	b	.LBB22_20
.LBB22_20:                              @ %if.then17
                                        @   in Loop: Header=BB22_9 Depth=2
	strge	r0, [r8]
	movge	r0, r2
	str	r0, [r8, #4]
	mov	r0, #0
	ldr	r1, [r11, #24]
	cmp	r1, #0
	beq	.LBB22_27
	b	.LBB22_21
.LBB22_21:                              @ %for.cond
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r1, r0]
	add	r0, r0, #4
	cmp	r2, #0
	bne	.LBB22_21
	b	.LBB22_22
.LBB22_22:                              @ %for.end
                                        @   in Loop: Header=BB22_9 Depth=2
	bl	malloc
	mov	r1, #12
	str	r0, [r8, #8]
	cmp	r0, #0
	beq	.LBB22_60
	b	.LBB22_23
.LBB22_23:                              @ %for.cond55.preheader
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r2, [r11, #24]
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.LBB22_26
	b	.LBB22_24
.LBB22_24:                              @ %for.body59.preheader
                                        @   in Loop: Header=BB22_9 Depth=2
	add	r2, r2, #4
	b	.LBB22_25
.LBB22_25:                              @ %for.body59
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	str	r1, [r0], #4
	ldr	r1, [r2], #4
	cmp	r1, #0
	bne	.LBB22_25
	b	.LBB22_26
.LBB22_26:                              @ %for.end66
                                        @   in Loop: Header=BB22_9 Depth=2
	mov	r1, #0
	mov	r5, r9
	str	r1, [r0]
	b	.LBB22_28
.LBB22_27:                              @ %if.else69
                                        @   in Loop: Header=BB22_9 Depth=2
	mov	r5, r9
	mov	r0, #0
	str	r0, [r8, #8]
	b	.LBB22_28
.LBB22_28:                              @ %if.end71
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r0, [r11, #12]
	mov	r9, #0
	mov	r1, #0
	mov	r6, #0
	cmp	r0, #0
	beq	.LBB22_31
	b	.LBB22_29
.LBB22_29:                              @ %while.cond74
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, r1, lsl #2]
	add	r1, r1, #1
	cmp	r2, #0
	bge	.LBB22_29
	b	.LBB22_30
.LBB22_30:                              @ %if.end81.loopexit
                                        @   in Loop: Header=BB22_9 Depth=2
	sub	r6, r1, #1
	b	.LBB22_31
.LBB22_31:                              @ %if.end81
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r0, [r4, #-20]
	cmp	r0, #0
	beq	.LBB22_34
	b	.LBB22_32
.LBB22_32:                              @ %while.cond85
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r1, [r0, r9, lsl #2]
	add	r9, r9, #1
	cmp	r1, #0
	bge	.LBB22_32
	b	.LBB22_33
.LBB22_33:                              @ %if.end92.loopexit
                                        @   in Loop: Header=BB22_9 Depth=2
	sub	r9, r9, #1
	b	.LBB22_34
.LBB22_34:                              @ %if.end92
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r0, [r8, #-4]
	cmp	r0, #0
	beq	.LBB22_36
	b	.LBB22_35
.LBB22_35:                              @ %if.then95
                                        @   in Loop: Header=BB22_9 Depth=2
	bl	free
	b	.LBB22_36
.LBB22_36:                              @ %if.end97
                                        @   in Loop: Header=BB22_9 Depth=2
	mov	r0, #0
	str	r0, [r8, #-4]
	add	r0, r9, r6
	mov	r9, r5
	cmp	r0, #1
	blt	.LBB22_52
	b	.LBB22_37
.LBB22_37:                              @ %if.then101
                                        @   in Loop: Header=BB22_9 Depth=2
	mov	r1, #4
	add	r0, r1, r0, lsl #2
	bl	malloc
	mov	r1, #12
	str	r0, [r8, #-4]
	cmp	r0, #0
	beq	.LBB22_60
	b	.LBB22_38
.LBB22_38:                              @ %if.end110
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r3, [r11, #12]
	mov	r1, #0
	cmp	r3, #0
	beq	.LBB22_42
	b	.LBB22_39
.LBB22_39:                              @ %while.cond114.preheader
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r2, [r3]
	cmp	r2, #0
	blt	.LBB22_42
	b	.LBB22_40
.LBB22_40:                              @ %while.body118.preheader
                                        @   in Loop: Header=BB22_9 Depth=2
	add	r3, r3, #4
	mov	r1, #0
	b	.LBB22_41
.LBB22_41:                              @ %while.body118
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	str	r2, [r0, r1, lsl #2]
	ldr	r2, [r3, r1, lsl #2]
	add	r1, r1, #1
	cmp	r2, #0
	bge	.LBB22_41
	b	.LBB22_42
.LBB22_42:                              @ %if.end125
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r12, [r4, #-20]
	mov	lr, r7
	cmp	r12, #0
	beq	.LBB22_50
	b	.LBB22_43
.LBB22_43:                              @ %while.cond129.preheader
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r7, [r12]
	cmp	r7, #0
	blt	.LBB22_50
	b	.LBB22_44
.LBB22_44:                              @ %for.cond134.preheader.lr.ph
                                        @   in Loop: Header=BB22_9 Depth=2
	mov	r6, #0
	mov	r3, r1
	b	.LBB22_45
.LBB22_45:                              @ %for.cond134.preheader
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB22_46 Depth 4
	mov	r2, #0
	cmp	r1, #0
	ble	.LBB22_48
	b	.LBB22_46
.LBB22_46:                              @ %for.body136
                                        @   Parent Loop BB22_7 Depth=1
                                        @     Parent Loop BB22_9 Depth=2
                                        @       Parent Loop BB22_45 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r5, [r0, r2, lsl #2]
	cmp	r5, r7
	beq	.LBB22_49
	b	.LBB22_47
.LBB22_47:                              @ %for.cond134
                                        @   in Loop: Header=BB22_46 Depth=4
	add	r2, r2, #1
	cmp	r2, r1
	blt	.LBB22_46
	b	.LBB22_48
.LBB22_48:                              @ %if.then148.critedge
                                        @   in Loop: Header=BB22_45 Depth=3
	str	r7, [r0, r3, lsl #2]
	add	r3, r3, #1
	b	.LBB22_49
.LBB22_49:                              @ %if.end154
                                        @   in Loop: Header=BB22_45 Depth=3
	add	r6, r6, #1
	ldr	r7, [r12, r6, lsl #2]
	cmp	r7, #0
	bge	.LBB22_45
	b	.LBB22_51
.LBB22_50:                              @   in Loop: Header=BB22_9 Depth=2
	mov	r3, r1
	b	.LBB22_51
.LBB22_51:                              @ %if.end157
                                        @   in Loop: Header=BB22_9 Depth=2
	mvn	r1, #0
	mov	r7, lr
	str	r1, [r0, r3, lsl #2]
	b	.LBB22_52
.LBB22_52:                              @ %if.end160
                                        @   in Loop: Header=BB22_9 Depth=2
	ldr	r0, [r4]
	cmp	r0, #0
	bge	.LBB22_9
	b	.LBB22_53
.LBB22_53:                              @ %while.end162
                                        @   in Loop: Header=BB22_7 Depth=1
	ldr	r0, [r11, #32]!
	mov	r1, #0
	cmp	r0, #0
	bge	.LBB22_7
	b	.LBB22_60
.LBB22_54:                              @ %while.cond166.preheader
	cmp	r0, #0
	blt	.LBB22_60
	b	.LBB22_55
.LBB22_55:                              @ %while.cond170.preheader.lr.ph
	add	r7, r9, #32
	b	.LBB22_56
.LBB22_56:                              @ %while.cond170.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB22_58 Depth 2
	ldr	r2, [r9]
	cmp	r2, #0
	mov	r2, r7
	bge	.LBB22_58
	b	.LBB22_59
.LBB22_57:                              @ %while.body173.while.body173_crit_edge
                                        @   in Loop: Header=BB22_58 Depth=2
	ldr	r0, [r11]
	add	r2, r2, #32
	b	.LBB22_58
.LBB22_58:                              @ %while.body173
                                        @   Parent Loop BB22_56 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r6, [r3, r0, lsl #2]
	add	r6, r6, #1
	str	r6, [r3, r0, lsl #2]
	ldr	r0, [r2]
	cmp	r0, #0
	bge	.LBB22_57
	b	.LBB22_59
.LBB22_59:                              @ %while.end178
                                        @   in Loop: Header=BB22_56 Depth=1
	ldr	r0, [r11, #32]!
	cmp	r0, #0
	bge	.LBB22_56
	b	.LBB22_60
.LBB22_60:                              @ %return
	mov	r0, r1
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp22:
	.size	tre_make_trans, .Ltmp22-tre_make_trans
	.cantunwind
	.fnend

	.type	tre_macros,%object      @ @tre_macros
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
tre_macros:
	.byte	116                     @ 0x74
	.zero	3
	.long	.L.str
	.byte	110                     @ 0x6e
	.zero	3
	.long	.L.str1
	.byte	114                     @ 0x72
	.zero	3
	.long	.L.str2
	.byte	102                     @ 0x66
	.zero	3
	.long	.L.str3
	.byte	97                      @ 0x61
	.zero	3
	.long	.L.str4
	.byte	101                     @ 0x65
	.zero	3
	.long	.L.str5
	.byte	119                     @ 0x77
	.zero	3
	.long	.L.str6
	.byte	87                      @ 0x57
	.zero	3
	.long	.L.str7
	.byte	115                     @ 0x73
	.zero	3
	.long	.L.str8
	.byte	83                      @ 0x53
	.zero	3
	.long	.L.str9
	.byte	100                     @ 0x64
	.zero	3
	.long	.L.str10
	.byte	68                      @ 0x44
	.zero	3
	.long	.L.str11
	.zero	8
	.size	tre_macros, 104

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"\t"
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"\n"
	.size	.L.str1, 2

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"\r"
	.size	.L.str2, 2

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"\f"
	.size	.L.str3, 2

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"\007"
	.size	.L.str4, 2

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"\033"
	.size	.L.str5, 2

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"[[:alnum:]_]"
	.size	.L.str6, 13

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	"[^[:alnum:]_]"
	.size	.L.str7, 14

	.type	.L.str8,%object         @ @.str8
.L.str8:
	.asciz	"[[:space:]]"
	.size	.L.str8, 12

	.type	.L.str9,%object         @ @.str9
.L.str9:
	.asciz	"[^[:space:]]"
	.size	.L.str9, 13

	.type	.L.str10,%object        @ @.str10
.L.str10:
	.asciz	"[[:digit:]]"
	.size	.L.str10, 12

	.type	.L.str11,%object        @ @.str11
.L.str11:
	.asciz	"[^[:digit:]]"
	.size	.L.str11, 13


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
