.section strstr_text
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
	.file	"src/string/strstr.bc"
	.globl	strstr
	.align	2
	.type	strstr,%function
.section bb0_0
strstr:                                 @ @strstr
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
	.pad	#60
	sub	sp, sp, #60
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r11, r1
	ldrb	r1, [r11]
	cmp	r1, #0
	beq	.LBB0_121
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	bl	strchr
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.LBB0_121
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %lor.lhs.false
	ldrb	r2, [r11, #1]
	cmp	r2, #0
	beq	.LBB0_33
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end5
	mov	r3, r5
	ldrb	r4, [r3, #1]!
	cmp	r4, #0
	beq	.LBB0_121
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end9
	ldrb	r7, [r11, #2]
	cmp	r7, #0
	beq	.LBB0_34
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end14
	mov	r3, r5
	ldrb	r6, [r3, #2]!
	cmp	r6, #0
	beq	.LBB0_121
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end18
	ldrb	r12, [r11, #3]
	cmp	r12, #0
	beq	.LBB0_39
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end23
	mov	r3, r5
	ldrb	lr, [r3, #3]!
	cmp	lr, #0
	beq	.LBB0_121
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end27
	ldrb	r0, [r11, #4]
	cmp	r0, #0
	beq	.LBB0_45
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end32
	mov	r10, #0
	str	r10, [sp, #1080]
	str	r10, [sp, #1076]
	str	r10, [sp, #1072]
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end32
	str	r10, [sp, #1068]
	str	r10, [sp, #1064]
	str	r10, [sp, #1060]
	str	r10, [sp, #1056]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end32
	str	r10, [sp, #1052]
	ldrb	r2, [r11]
	cmp	r2, #0
	beq	.LBB0_52
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %land.end.i.preheader
	add	r1, sp, #1024
	add	r9, r11, #1
	mov	r0, #0
	mov	r12, #28
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %land.end.i.preheader
	mov	lr, #1
	add	r8, sp, #28
	mov	r6, #0
	add	r7, r1, #28
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %land.end.i
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r4, [r5, r6]
	cmp	r4, #0
	beq	.LBB0_121
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.body.i
                                        @   in Loop: Header=BB0_17 Depth=1
	and	r4, r2, #255
	and	r2, r2, #31
	add	r10, r6, #1
	and	r3, r12, r4, lsr #3
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.body.i
                                        @   in Loop: Header=BB0_17 Depth=1
	str	r10, [r8, r4, lsl #2]
	ldr	r1, [r7, r3]
	orr	r1, r1, lr, lsl r2
	str	r1, [r7, r3]
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.body.i
                                        @   in Loop: Header=BB0_17 Depth=1
	ldrb	r2, [r9, r6]
	mov	r6, r10
	cmp	r2, #0
	bne	.LBB0_17
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %while.cond.preheader.i
	mvn	r4, #0
	mov	r6, #1
	cmp	r10, #2
	blo	.LBB0_53
	b	.LBB0_22
.section bb0_22
.LBB0_22:
	mov	r2, #0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %while.body.lr.ph.lr.ph.lr.ph.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_24 Depth 2
                                        @       Child Loop BB0_25 Depth 3
                                        @         Child Loop BB0_26 Depth 4
	add	r3, r11, r4
	mov	lr, #1
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %while.body.lr.ph.lr.ph.i
                                        @   Parent Loop BB0_23 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_25 Depth 3
                                        @         Child Loop BB0_26 Depth 4
	mov	r9, r2
	mov	r2, r6
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %while.body.lr.ph.i
                                        @   Parent Loop BB0_23 Depth=1
                                        @     Parent Loop BB0_24 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_26 Depth 4
	mov	r0, #1
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %while.body.i
                                        @   Parent Loop BB0_23 Depth=1
                                        @     Parent Loop BB0_24 Depth=2
                                        @       Parent Loop BB0_25 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldrb	r1, [r11, r2]
	ldrb	r7, [r3, r0]
	cmp	r7, r1
	bne	.LBB0_30
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.then23.i
                                        @   in Loop: Header=BB0_26 Depth=4
	cmp	lr, r0
	beq	.LBB0_29
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %while.cond.i
                                        @   in Loop: Header=BB0_26 Depth=4
	add	r0, r0, #1
	add	r2, r0, r9
	cmp	r2, r10
	blo	.LBB0_26
	b	.LBB0_54
.section bb0_29
.LBB0_29:                               @ %if.then26.i
                                        @   in Loop: Header=BB0_25 Depth=3
	add	r9, r9, lr
	add	r2, r9, #1
	cmp	r2, r10
	blo	.LBB0_25
	b	.LBB0_54
.section bb0_30
.LBB0_30:                               @ %if.else30.i
                                        @   in Loop: Header=BB0_24 Depth=2
	bls	.LBB0_32
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %while.cond.outer339.outer.i
                                        @   in Loop: Header=BB0_24 Depth=2
	add	r6, r2, #1
	sub	lr, r2, r4
	cmp	r6, r10
	blo	.LBB0_24
	b	.LBB0_54
.section bb0_32
.LBB0_32:                               @ %if.else41.i
                                        @   in Loop: Header=BB0_23 Depth=1
	add	r6, r9, #2
	add	r2, r9, #1
	mov	lr, #1
	mov	r4, r9
	cmp	r6, r10
	blo	.LBB0_23
	b	.LBB0_55
.section bb0_33
.LBB0_33:
	mov	r0, r5
	b	.LBB0_121
.section bb0_34
.LBB0_34:                               @ %land.rhs.lr.ph.i
	ldrb	r0, [r5]
	orr	r6, r4, r0, lsl #8
	ldrb	r0, [r11]
	orr	r0, r2, r0, lsl #8
	mov	r2, #255
	orr	r2, r2, #65280
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %land.rhs.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r1, r6, r2
	mov	r7, r3
	cmp	r1, r0
	beq	.LBB0_37
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %for.inc.i
                                        @   in Loop: Header=BB0_35 Depth=1
	ldrb	r4, [r5, #2]!
	orr	r6, r4, r1, lsl #8
	mov	r3, r5
	mov	r1, #0
	mov	r5, r7
	cmp	r4, #0
	bne	.LBB0_35
	b	.LBB0_38
.section bb0_37
.LBB0_37:
	mov	r1, r4
	mov	r7, r5
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %twobyte_strstr.exit
	ands	r0, r1, #255
	movne	r0, r7
	b	.LBB0_121
.section bb0_39
.LBB0_39:                               @ %if.then21
	ldrb	r1, [r5]
	lsl	r0, r6, #8
	lsl	r2, r2, #16
	orr	r0, r0, r4, lsl #16
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.then21
	orr	r1, r0, r1, lsl #24
	ldrb	r0, [r11]
	orr	r0, r2, r0, lsl #24
	orr	r2, r0, r7, lsl #8
	mov	r0, r6
	cmp	r1, r2
	beq	.LBB0_44
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %for.inc.i65.preheader
	add	r6, r5, #3
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %for.inc.i65
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r6
	mov	r3, r6
	ldrb	r0, [r7], #1
	cmp	r0, #0
	beq	.LBB0_44
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %for.inc.i65
                                        @   in Loop: Header=BB0_42 Depth=1
	orr	r1, r0, r1
	mov	r6, r7
	lsl	r1, r1, #8
	cmp	r1, r2
	bne	.LBB0_42
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %threebyte_strstr.exit
	cmp	r0, #0
	subne	r0, r3, #2
	b	.LBB0_121
.section bb0_45
.LBB0_45:                               @ %if.then30
	ldrb	r1, [r5]
	lsl	r0, r6, #8
	orr	r0, r0, r4, lsl #16
	orr	r0, r0, lr
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.then30
	orr	r1, r0, r1, lsl #24
	lsl	r0, r7, #8
	orr	r0, r0, r2, lsl #16
	ldrb	r2, [r11]
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.then30
	orr	r0, r0, r12
	orr	r2, r0, r2, lsl #24
	mov	r0, lr
	cmp	r1, r2
	beq	.LBB0_51
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %for.inc.i86.preheader
	add	r6, r5, #4
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %for.inc.i86
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r6
	mov	r3, r6
	ldrb	r0, [r7], #1
	cmp	r0, #0
	beq	.LBB0_51
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %for.inc.i86
                                        @   in Loop: Header=BB0_49 Depth=1
	orr	r1, r0, r1, lsl #8
	mov	r6, r7
	cmp	r1, r2
	bne	.LBB0_49
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %fourbyte_strstr.exit
	cmp	r0, #0
	subne	r0, r3, #3
	b	.LBB0_121
.section bb0_52
.LBB0_52:
	mvn	r4, #0
	mov	r6, #1
	b	.LBB0_53
.section bb0_53
.LBB0_53:
	mvn	r3, #0
	mov	r2, #1
	b	.LBB0_68
.section bb0_54
.LBB0_54:
	mov	r9, r4
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %while.body49.lr.ph.lr.ph.lr.ph.i.preheader
	mvn	r3, #0
	mov	r7, #0
	mov	r8, #1
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %while.body49.lr.ph.lr.ph.lr.ph.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_57 Depth 2
                                        @       Child Loop BB0_60 Depth 3
	mov	r12, r3
	mov	r2, #1
	add	r0, r11, r12
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %while.body49.lr.ph.lr.ph.i
                                        @   Parent Loop BB0_56 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_60 Depth 3
	mov	r3, r7
	mov	r7, r8
	mov	r1, #1
	b	.LBB0_60
.section bb0_58
.LBB0_58:                               @ %while.body49.lr.ph.i
                                        @   in Loop: Header=BB0_60 Depth=3
	mov	r1, #1
	b	.LBB0_60
.section bb0_59
.LBB0_59:                               @ %while.cond45.i
                                        @   in Loop: Header=BB0_60 Depth=3
	add	r1, r1, #1
	add	r7, r1, r3
	cmp	r7, r10
	bhs	.LBB0_67
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %while.body49.i
                                        @   Parent Loop BB0_56 Depth=1
                                        @     Parent Loop BB0_57 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r4, [r11, r7]
	ldrb	r6, [r0, r1]
	cmp	r6, r4
	bne	.LBB0_63
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.then58.i
                                        @   in Loop: Header=BB0_60 Depth=3
	cmp	r2, r1
	bne	.LBB0_59
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then61.i
                                        @   in Loop: Header=BB0_60 Depth=3
	add	r3, r3, r2
	add	r7, r3, #1
	cmp	r7, r10
	blo	.LBB0_58
	b	.LBB0_67
.section bb0_63
.LBB0_63:                               @ %if.else66.i
                                        @   in Loop: Header=BB0_57 Depth=2
	bhs	.LBB0_65
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %while.cond45.outer337.outer.i
                                        @   in Loop: Header=BB0_57 Depth=2
	add	r8, r7, #1
	sub	r2, r7, r12
	cmp	r8, r10
	blo	.LBB0_57
	b	.LBB0_67
.section bb0_65
.LBB0_65:                               @ %if.else78.i
                                        @   in Loop: Header=BB0_56 Depth=1
	add	r8, r3, #2
	add	r7, r3, #1
	mov	r2, #1
	cmp	r8, r10
	blo	.LBB0_56
	b	.LBB0_66
.section bb0_66
.LBB0_66:
	mov	r6, lr
	mov	r4, r9
	b	.LBB0_68
.section bb0_67
.LBB0_67:
	mov	r6, lr
	mov	r4, r9
	mov	r3, r12
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %while.end82.i
	add	r8, r4, #1
	add	r7, r3, #1
	mov	r0, r11
	cmp	r7, r8
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %while.end82.i
	movhi	r6, r2
	movhi	r4, r3
	add	r2, r4, #1
	add	r1, r11, r6
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %while.end82.i
	str	r2, [sp, #20]           @ 4-byte Spill
	bl	memcmp
	cmp	r0, #0
	beq	.LBB0_73
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.end102.thread.i
	sub	r0, r10, r4
	str	r4, [sp, #12]           @ 4-byte Spill
	orr	r6, r10, #63
	sub	r0, r0, #1
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %if.end102.thread.i
	cmp	r4, r0
	movhi	r0, r4
	add	r0, r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	sub	r0, r10, #1
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB0_75
.section bb0_73
.LBB0_73:                               @ %if.end102.i
	sub	r0, r10, #1
	str	r4, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r6
	orr	r6, r10, #63
	cmp	r10, r0
	bne	.LBB0_96
	b	.LBB0_74
.section bb0_74
.LBB0_74:
	str	r10, [sp, #8]           @ 4-byte Spill
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %if.end102.if.end102.split_crit_edge.i
	cmp	r8, r7
	add	lr, sp, #1024
	mov	r9, #1
	movhi	r7, r8
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %if.end102.if.end102.split_crit_edge.i
	add	r4, lr, #28
	mov	r8, r5
	rsb	r0, r7, #1
	mov	r7, #28
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB0_78
.section bb0_77
.LBB0_77:                               @ %for.cond103.i
                                        @   in Loop: Header=BB0_78 Depth=1
	add	r8, r8, r0
	mov	r5, r1
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %for.cond103.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_86 Depth 2
                                        @     Child Loop BB0_89 Depth 2
	sub	r0, r5, r8
	cmp	r0, r10
	bhs	.LBB0_81
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.then106.i
                                        @   in Loop: Header=BB0_78 Depth=1
	mov	r0, r5
	mov	r1, #0
	mov	r2, r6
	bl	memchr
	mov	r1, r0
	cmp	r1, #0
	beq	.LBB0_82
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.then110.i
                                        @   in Loop: Header=BB0_78 Depth=1
	sub	r2, r1, r8
	mov	r0, #0
	mov	r7, #28
	cmp	r2, r10
	bhs	.LBB0_83
	b	.LBB0_121
.section bb0_81
.LBB0_81:                               @   in Loop: Header=BB0_78 Depth=1
	mov	r1, r5
	b	.LBB0_83
.section bb0_82
.LBB0_82:                               @ %if.else118.i
                                        @   in Loop: Header=BB0_78 Depth=1
	add	r1, r5, r6
	mov	r7, #28
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %if.end121.i
                                        @   in Loop: Header=BB0_78 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldrb	r0, [r8, r0]
	and	r2, r7, r0, lsr #3
	and	r3, r0, #31
	ldr	r2, [r4, r2]
	tst	r2, r9, lsl r3
	beq	.LBB0_92
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.then133.i
                                        @   in Loop: Header=BB0_78 Depth=1
	add	r2, sp, #28
	ldr	r0, [r2, r0, lsl #2]
	cmp	r10, r0
	bne	.LBB0_93
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %if.end153.i
                                        @   in Loop: Header=BB0_78 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r3, [sp, #16]           @ 4-byte Reload
	ldrb	r2, [r11, r0]
	cmp	r2, #0
	beq	.LBB0_89
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %land.rhs166.i
                                        @   Parent Loop BB0_78 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r3, [r8, r0]
	and	r2, r2, #255
	cmp	r2, r3
	bne	.LBB0_94
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %for.inc175.i
                                        @   in Loop: Header=BB0_86 Depth=2
	add	r2, r11, r0
	add	r0, r0, #1
	ldrb	r2, [r2, #1]
	cmp	r2, #0
	bne	.LBB0_86
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @   in Loop: Header=BB0_78 Depth=1
	ldr	r3, [sp, #16]           @ 4-byte Reload
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %for.cond185.i
                                        @   Parent Loop BB0_78 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r3, #1
	beq	.LBB0_95
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %land.rhs188.i
                                        @   in Loop: Header=BB0_89 Depth=2
	ldrb	r0, [r8, -r3]
	ldrb	r2, [r11, -r3]
	add	r3, r3, #1
	cmp	r2, r0
	beq	.LBB0_89
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %if.end204.i
                                        @   in Loop: Header=BB0_78 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	b	.LBB0_77
.section bb0_92
.LBB0_92:                               @ %if.else151.i
                                        @   in Loop: Header=BB0_78 Depth=1
	add	r8, r8, r10
	mov	r5, r1
	b	.LBB0_78
.section bb0_93
.LBB0_93:                               @ %if.then140.i
                                        @   in Loop: Header=BB0_78 Depth=1
	sub	r0, r10, r0
	b	.LBB0_77
.section bb0_94
.LBB0_94:                               @ %if.then180.i
                                        @   in Loop: Header=BB0_78 Depth=1
	ldr	r2, [sp, #12]           @ 4-byte Reload
	sub	r0, r0, r2
	b	.LBB0_77
.section bb0_95
.LBB0_95:
	mov	r0, r8
	b	.LBB0_121
.section bb0_96
.LBB0_96:                               @ %for.cond103.us.i.preheader
	cmp	r8, r7
	sub	r1, r10, r0
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r12, #28
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %for.cond103.us.i.preheader
	mov	lr, #1
	mov	r9, r5
	movhi	r7, r8
	mov	r8, #0
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %for.cond103.us.i.preheader
	str	r1, [sp, #8]            @ 4-byte Spill
	sub	r0, r7, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	add	r0, sp, #1024
	add	r7, r0, #28
	b	.LBB0_100
.section bb0_99
.LBB0_99:                               @ %for.cond103.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	mov	r5, r1
	mov	r8, #0
	b	.LBB0_100
.section bb0_100
.LBB0_100:                              @ %for.cond103.us.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_109 Depth 2
                                        @     Child Loop BB0_112 Depth 2
	sub	r0, r5, r9
	cmp	r0, r10
	bhs	.LBB0_103
	b	.LBB0_101
.section bb0_101
.LBB0_101:                              @ %if.then106.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	mov	r0, r5
	mov	r1, #0
	mov	r2, r6
	bl	memchr
	mov	r1, r0
	cmp	r1, #0
	beq	.LBB0_104
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %if.then110.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	sub	r2, r1, r9
	mov	r0, #0
	mov	r12, #28
	mov	lr, #1
	cmp	r2, r10
	bhs	.LBB0_105
	b	.LBB0_121
.section bb0_103
.LBB0_103:                              @   in Loop: Header=BB0_100 Depth=1
	mov	r1, r5
	b	.LBB0_105
.section bb0_104
.LBB0_104:                              @ %if.else118.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	add	r1, r5, r6
	mov	r12, #28
	mov	lr, #1
	b	.LBB0_105
.section bb0_105
.LBB0_105:                              @ %if.end121.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldrb	r0, [r9, r0]
	and	r2, r12, r0, lsr #3
	and	r3, r0, #31
	ldr	r2, [r7, r2]
	tst	r2, lr, lsl r3
	beq	.LBB0_115
	b	.LBB0_106
.section bb0_106
.LBB0_106:                              @ %if.then133.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	add	r2, sp, #28
	ldr	r0, [r2, r0, lsl #2]
	cmp	r10, r0
	bne	.LBB0_116
	b	.LBB0_107
.section bb0_107
.LBB0_107:                              @ %if.end153.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	ldr	r2, [sp, #20]           @ 4-byte Reload
	mov	r0, r8
	ldr	r3, [sp, #4]            @ 4-byte Reload
	cmp	r2, r8
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %if.end153.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	movhi	r0, r2
	ldrb	r2, [r11, r0]
	cmp	r2, #0
	beq	.LBB0_112
	b	.LBB0_109
.section bb0_109
.LBB0_109:                              @ %land.rhs166.us.i
                                        @   Parent Loop BB0_100 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r3, [r9, r0]
	and	r2, r2, #255
	cmp	r2, r3
	bne	.LBB0_118
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %for.inc175.us.i
                                        @   in Loop: Header=BB0_109 Depth=2
	add	r2, r11, r0
	add	r0, r0, #1
	ldrb	r2, [r2, #1]
	cmp	r2, #0
	bne	.LBB0_109
	b	.LBB0_111
.section bb0_111
.LBB0_111:                              @   in Loop: Header=BB0_100 Depth=1
	ldr	r3, [sp, #4]            @ 4-byte Reload
	b	.LBB0_112
.section bb0_112
.LBB0_112:                              @ %for.cond185.us.i
                                        @   Parent Loop BB0_100 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r0, r3, #1
	cmp	r0, r8
	bls	.LBB0_120
	b	.LBB0_113
.section bb0_113
.LBB0_113:                              @ %land.rhs188.us.i
                                        @   in Loop: Header=BB0_112 Depth=2
	ldrb	r0, [r9, r3]
	ldrb	r2, [r11, r3]
	sub	r3, r3, #1
	cmp	r2, r0
	beq	.LBB0_112
	b	.LBB0_114
.section bb0_114
.LBB0_114:                              @ %if.end204.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r8, [sp, #8]            @ 4-byte Reload
	mov	r5, r1
	add	r9, r9, r0
	b	.LBB0_100
.section bb0_115
.LBB0_115:                              @ %if.else151.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	add	r9, r9, r10
	b	.LBB0_99
.section bb0_116
.LBB0_116:                              @ %if.then140.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	ldr	r2, [sp, #16]           @ 4-byte Reload
	sub	r0, r10, r0
	cmp	r0, r2
	mov	r2, #0
	b	.LBB0_117
.section bb0_117
.LBB0_117:                              @ %if.then140.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	movlo	r2, #1
	cmp	r8, #0
	movne	r8, #1
	tst	r8, r2
	ldr	r2, [sp, #8]            @ 4-byte Reload
	movne	r0, r2
	b	.LBB0_119
.section bb0_118
.LBB0_118:                              @ %if.then180.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	ldr	r2, [sp, #12]           @ 4-byte Reload
	sub	r0, r0, r2
	b	.LBB0_119
.section bb0_119
.LBB0_119:                              @ %for.cond103.us.i
                                        @   in Loop: Header=BB0_100 Depth=1
	add	r9, r9, r0
	b	.LBB0_99
.section bb0_120
.LBB0_120:
	mov	r0, r9
	b	.LBB0_121
.section bb0_121
.LBB0_121:                              @ %return
	add	sp, sp, #60
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strstr, .Ltmp0-strstr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
