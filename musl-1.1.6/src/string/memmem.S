.section memmem_text
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
	.file	"src/string/memmem.bc"
	.globl	memmem
	.align	2
	.type	memmem,%function
.section bb0_0
memmem:                                 @ @memmem
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
	.pad	#52
	sub	sp, sp, #52
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r6, r3
	mov	r9, r2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r5, r1
	mov	r7, r0
	cmp	r6, #0
	beq	.LBB0_117
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	cmp	r5, r6
	bhs	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:
	mov	r7, #0
	b	.LBB0_117
.section bb0_7
.LBB0_7:                                @ %if.end2
	ldrb	r1, [r9]
	mov	r0, r7
	mov	r2, r5
	bl	memchr
	mov	r11, r0
	cmp	r6, #1
	beq	.LBB0_19
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end2
	cmp	r11, #0
	beq	.LBB0_20
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end7
	sub	r0, r7, r11
	cmp	r6, #4
	add	lr, r0, r5
	beq	.LBB0_21
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end7
	cmp	r6, #3
	bne	.LBB0_30
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then15
	cmp	lr, #2
	beq	.LBB0_56
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.body.lr.ph.i66
	ldrb	r1, [r9, #1]
	ldrb	r0, [r9]
	ldrb	r2, [r9, #2]
	lsl	r1, r1, #16
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.body.lr.ph.i66
	orr	r0, r1, r0, lsl #24
	mov	r1, r11
	orr	r0, r0, r2, lsl #8
	ldrb	r2, [r1, #2]!
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.body.lr.ph.i66
	ldrb	r3, [r11]
	sub	r1, r1, r7
	ldrb	r7, [r11, #1]
	lsl	r3, r3, #24
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.body.lr.ph.i66
	sub	r1, r1, r5
	orr	r3, r3, r7, lsl #16
	orr	r3, r3, r2, lsl #8
	add	r2, r11, #3
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %for.body.i69
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r3, r0
	beq	.LBB0_58
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %for.inc.i72
                                        @   in Loop: Header=BB0_16 Depth=1
	ldrb	r7, [r2], #1
	adds	r1, r1, #1
	orr	r3, r7, r3
	lsl	r3, r3, #8
	bne	.LBB0_16
	b	.LBB0_18
.section bb0_18
.LBB0_18:
	mov	r7, #0
	b	.LBB0_117
.section bb0_19
.LBB0_19:
	mov	r7, r11
	b	.LBB0_117
.section bb0_20
.LBB0_20:
	mov	r7, r11
	b	.LBB0_117
.section bb0_21
.LBB0_21:                               @ %if.then20
	cmp	lr, #3
	beq	.LBB0_57
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %for.body.lr.ph.i87
	ldrb	r1, [r9, #1]
	ldrb	r0, [r9]
	ldrb	r2, [r9, #2]
	ldrb	r3, [r9, #3]
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %for.body.lr.ph.i87
	lsl	r1, r1, #16
	orr	r0, r1, r0, lsl #24
	mov	r1, r11
	orr	r0, r0, r2, lsl #8
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %for.body.lr.ph.i87
	ldrb	r2, [r1, #3]!
	ldrb	r6, [r11, #2]
	orr	r0, r0, r3
	ldrb	r3, [r11]
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %for.body.lr.ph.i87
	sub	r1, r1, r7
	ldrb	r7, [r11, #1]
	lsl	r3, r3, #24
	sub	r1, r1, r5
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.body.lr.ph.i87
	orr	r3, r3, r7, lsl #16
	orr	r3, r3, r6, lsl #8
	orr	r3, r3, r2
	add	r2, r11, #4
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.body.i89
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r3, r0
	beq	.LBB0_59
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %for.inc.i94
                                        @   in Loop: Header=BB0_27 Depth=1
	ldrb	r7, [r2], #1
	adds	r1, r1, #1
	orr	r3, r7, r3, lsl #8
	bne	.LBB0_27
	b	.LBB0_29
.section bb0_29
.LBB0_29:
	mov	r7, #0
	b	.LBB0_117
.section bb0_30
.LBB0_30:                               @ %if.end7
	cmp	r6, #2
	bne	.LBB0_38
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.then10
	cmp	lr, #1
	beq	.LBB0_79
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %for.body.lr.ph.i
	ldrb	r0, [r9]
	ldrb	r1, [r9, #1]
	mov	r2, r11
	add	r6, r11, #1
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %for.body.lr.ph.i
	orr	r0, r1, r0, lsl #8
	ldrb	r1, [r11]
	ldrb	r3, [r2, #1]!
	orr	r3, r3, r1, lsl #8
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %for.body.lr.ph.i
	sub	r1, r2, r7
	mov	r2, #255
	sub	r1, r1, r5
	orr	r2, r2, #65280
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r3, r3, r2
	mov	r4, r6
	cmp	r3, r0
	beq	.LBB0_99
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %for.inc.i
                                        @   in Loop: Header=BB0_35 Depth=1
	ldrb	r7, [r11, #2]!
	adds	r1, r1, #1
	mov	r6, r11
	orr	r3, r7, r3, lsl #8
	mov	r11, r4
	bne	.LBB0_35
	b	.LBB0_37
.section bb0_37
.LBB0_37:
	mov	r7, #0
	b	.LBB0_117
.section bb0_38
.LBB0_38:                               @ %for.body.i54.preheader
	add	r1, r11, lr
	add	r3, sp, #1024
	mov	r0, #0
	mov	r2, #1
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %for.body.i54.preheader
	add	r12, sp, #20
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, #28
	add	r8, r3, #20
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %for.body.i54.preheader
	str	r0, [sp, #1072]
	str	r0, [sp, #1068]
	str	r0, [sp, #1064]
	str	r0, [sp, #1060]
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %for.body.i54.preheader
	str	r0, [sp, #1056]
	str	r0, [sp, #1052]
	str	r0, [sp, #1048]
	str	r0, [sp, #1044]
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %for.body.i54
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r9, r0]
	add	r0, r0, #1
	cmp	r6, r0
	and	r7, r1, r3, lsr #3
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %for.body.i54
                                        @   in Loop: Header=BB0_42 Depth=1
	and	r4, r3, #31
	str	r0, [r12, r3, lsl #2]
	ldr	r5, [r8, r7]
	orr	r5, r5, r2, lsl r4
	str	r5, [r8, r7]
	bne	.LBB0_42
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %while.cond.preheader.i
	mvn	r10, #0
	mov	r5, #1
	cmp	r6, #1
	bls	.LBB0_60
	b	.LBB0_45
.section bb0_45
.LBB0_45:
	str	lr, [sp, #8]            @ 4-byte Spill
	mov	r1, #0
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %while.body.lr.ph.lr.ph.lr.ph.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_47 Depth 2
                                        @       Child Loop BB0_50 Depth 3
	mov	r2, r10
	mov	r12, #1
	add	r3, r9, r2
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %while.body.lr.ph.lr.ph.i
                                        @   Parent Loop BB0_46 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_50 Depth 3
	mov	r10, r1
	mov	r1, r5
	mov	r7, #1
	b	.LBB0_50
.section bb0_48
.LBB0_48:                               @ %while.body.lr.ph.i
                                        @   in Loop: Header=BB0_50 Depth=3
	mov	r7, #1
	b	.LBB0_50
.section bb0_49
.LBB0_49:                               @ %while.cond.i
                                        @   in Loop: Header=BB0_50 Depth=3
	add	r7, r7, #1
	add	r1, r7, r10
	cmp	r1, r6
	bhs	.LBB0_61
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %while.body.i
                                        @   Parent Loop BB0_46 Depth=1
                                        @     Parent Loop BB0_47 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r5, [r9, r1]
	ldrb	r4, [r3, r7]
	cmp	r4, r5
	bne	.LBB0_53
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.then.i55
                                        @   in Loop: Header=BB0_50 Depth=3
	cmp	r12, r7
	bne	.LBB0_49
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.then19.i
                                        @   in Loop: Header=BB0_50 Depth=3
	add	r10, r10, r12
	add	r1, r10, #1
	cmp	r1, r6
	blo	.LBB0_48
	b	.LBB0_61
.section bb0_53
.LBB0_53:                               @ %if.else22.i
                                        @   in Loop: Header=BB0_47 Depth=2
	bls	.LBB0_55
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %while.cond.outer300.outer.i
                                        @   in Loop: Header=BB0_47 Depth=2
	add	r5, r1, #1
	sub	r12, r1, r2
	cmp	r5, r6
	blo	.LBB0_47
	b	.LBB0_61
.section bb0_55
.LBB0_55:                               @ %if.else33.i
                                        @   in Loop: Header=BB0_46 Depth=1
	add	r5, r10, #2
	add	r1, r10, #1
	mov	r12, #1
	cmp	r5, r6
	blo	.LBB0_46
	b	.LBB0_62
.section bb0_56
.LBB0_56:
	mov	r7, #0
	b	.LBB0_117
.section bb0_57
.LBB0_57:
	mov	r7, #0
	b	.LBB0_117
.section bb0_58
.LBB0_58:                               @ %if.then.i70
	sub	r0, r2, #1
	sub	r7, r0, #2
	b	.LBB0_117
.section bb0_59
.LBB0_59:                               @ %if.then.i90
	sub	r0, r2, #1
	sub	r7, r0, #3
	b	.LBB0_117
.section bb0_60
.LBB0_60:
	str	lr, [sp, #8]            @ 4-byte Spill
	mvn	r2, #0
	mov	r1, #1
	b	.LBB0_75
.section bb0_61
.LBB0_61:
	mov	r10, r2
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %while.body41.lr.ph.lr.ph.lr.ph.i.preheader
	mvn	r2, #0
	mov	r7, #0
	mov	lr, #1
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %while.body41.lr.ph.lr.ph.lr.ph.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_64 Depth 2
                                        @       Child Loop BB0_67 Depth 3
	add	r3, r9, r2
	mov	r1, #1
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %while.body41.lr.ph.lr.ph.i
                                        @   Parent Loop BB0_63 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_67 Depth 3
	mov	r2, r7
	mov	r7, lr
	mov	r5, #1
	b	.LBB0_67
.section bb0_65
.LBB0_65:                               @ %while.body41.lr.ph.i
                                        @   in Loop: Header=BB0_67 Depth=3
	mov	r5, #1
	b	.LBB0_67
.section bb0_66
.LBB0_66:                               @ %while.cond37.i
                                        @   in Loop: Header=BB0_67 Depth=3
	add	r5, r5, #1
	add	r7, r5, r2
	cmp	r7, r6
	bhs	.LBB0_74
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %while.body41.i
                                        @   Parent Loop BB0_63 Depth=1
                                        @     Parent Loop BB0_64 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r4, [r9, r7]
	ldrb	r0, [r3, r5]
	cmp	r0, r4
	bne	.LBB0_70
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.then50.i
                                        @   in Loop: Header=BB0_67 Depth=3
	cmp	r1, r5
	bne	.LBB0_66
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.then53.i
                                        @   in Loop: Header=BB0_67 Depth=3
	add	r2, r2, r1
	add	r7, r2, #1
	cmp	r7, r6
	blo	.LBB0_65
	b	.LBB0_74
.section bb0_70
.LBB0_70:                               @ %if.else58.i
                                        @   in Loop: Header=BB0_64 Depth=2
	bhs	.LBB0_72
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %while.cond37.outer298.outer.i
                                        @   in Loop: Header=BB0_64 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	add	lr, r7, #1
	cmp	lr, r6
	sub	r1, r7, r0
	blo	.LBB0_64
	b	.LBB0_74
.section bb0_72
.LBB0_72:                               @ %if.else70.i
                                        @   in Loop: Header=BB0_63 Depth=1
	add	lr, r2, #2
	add	r7, r2, #1
	mov	r1, #1
	cmp	lr, r6
	blo	.LBB0_63
	b	.LBB0_73
.section bb0_73
.LBB0_73:
	mov	r5, r12
	b	.LBB0_75
.section bb0_74
.LBB0_74:
	ldr	r2, [sp, #12]           @ 4-byte Reload
	mov	r5, r12
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %while.end74.i
	add	r7, r10, #1
	add	r4, r2, #1
	mov	r0, r9
	cmp	r4, r7
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %while.end74.i
	movhi	r5, r1
	movhi	r10, r2
	add	r2, r10, #1
	add	r1, r9, r5
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %while.end74.i
	str	r2, [sp, #12]           @ 4-byte Spill
	bl	memcmp
	mov	r2, r7
	cmp	r0, #0
	beq	.LBB0_80
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %if.then83.i
	sub	r0, r6, r10
	mov	r1, #0
	sub	r0, r0, #1
	cmp	r10, r0
	movhi	r0, r10
	add	r12, r0, #1
	b	.LBB0_81
.section bb0_79
.LBB0_79:
	mov	r7, #0
	b	.LBB0_117
.section bb0_80
.LBB0_80:                               @ %if.else91.i
	sub	r1, r6, r5
	mov	r12, r5
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %if.end93.i
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	r7, #0
	cmp	r0, r6
	blo	.LBB0_117
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %if.end98.lr.ph.i
	sub	r0, r6, #1
	cmp	r1, #0
	beq	.LBB0_101
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %if.end98.us.i.preheader
	cmp	r2, r4
	mov	r3, #0
	mov	lr, #28
	movhi	r4, r2
	sub	r2, r4, #1
	str	r2, [sp, #8]            @ 4-byte Spill
	mov	r2, #1
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.end98.us.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_87 Depth 2
                                        @     Child Loop BB0_90 Depth 2
	ldrb	r4, [r11, r0]
	and	r5, lr, r4, lsr #3
	and	r7, r4, #31
	ldr	r5, [r8, r5]
	tst	r5, r2, lsl r7
	beq	.LBB0_93
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %if.then110.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	add	r5, sp, #20
	ldr	r4, [r5, r4, lsl #2]
	cmp	r4, r6
	bne	.LBB0_94
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %if.end130.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	ldr	r4, [sp, #12]           @ 4-byte Reload
	mov	r5, r3
	cmp	r4, r3
	movhi	r5, r4
	ldr	r4, [sp, #8]            @ 4-byte Reload
	cmp	r5, r6
	bhs	.LBB0_90
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %land.rhs.us.i
                                        @   Parent Loop BB0_84 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r4, [r11, r5]
	ldrb	r7, [r9, r5]
	cmp	r7, r4
	bne	.LBB0_96
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %for.inc149.us.i
                                        @   in Loop: Header=BB0_87 Depth=2
	add	r5, r5, #1
	cmp	r5, r6
	blo	.LBB0_87
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @   in Loop: Header=BB0_84 Depth=1
	ldr	r4, [sp, #8]            @ 4-byte Reload
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %for.cond159.us.i
                                        @   Parent Loop BB0_84 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r5, r4, #1
	cmp	r5, r3
	bls	.LBB0_100
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %land.rhs162.us.i
                                        @   in Loop: Header=BB0_90 Depth=2
	ldrb	r5, [r11, r4]
	ldrb	r7, [r9, r4]
	sub	r4, r4, #1
	cmp	r7, r5
	beq	.LBB0_90
	b	.LBB0_92
.section bb0_92
.LBB0_92:                               @ %if.end178.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	add	r11, r11, r12
	mov	r3, r1
	b	.LBB0_98
.section bb0_93
.LBB0_93:                               @ %if.else128.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	add	r11, r11, r6
	b	.LBB0_97
.section bb0_94
.LBB0_94:                               @ %if.then117.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	sub	r4, r6, r4
	mov	r5, #0
	cmp	r4, r12
	movlo	r5, #1
	b	.LBB0_95
.section bb0_95
.LBB0_95:                               @ %if.then117.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	cmp	r3, #0
	movne	r3, #1
	tst	r3, r5
	subne	r4, r6, r12
	add	r11, r11, r4
	b	.LBB0_97
.section bb0_96
.LBB0_96:                               @ %if.then154.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	sub	r3, r5, r10
	add	r11, r11, r3
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %for.cond94.backedge.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	mov	r3, #0
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %for.cond94.backedge.us.i
                                        @   in Loop: Header=BB0_84 Depth=1
	ldr	r4, [sp, #16]           @ 4-byte Reload
	mov	r7, #0
	sub	r4, r4, r11
	cmp	r4, r6
	bhs	.LBB0_84
	b	.LBB0_117
.section bb0_99
.LBB0_99:                               @ %if.then.i
	sub	r7, r4, #1
	b	.LBB0_117
.section bb0_100
.LBB0_100:
	mov	r7, r11
	b	.LBB0_117
.section bb0_101
.LBB0_101:                              @ %if.end98.i.preheader
	cmp	r2, r4
	mov	lr, #28
	mov	r3, #1
	movhi	r4, r2
	add	r2, sp, #20
	rsb	r1, r4, #1
	str	r1, [sp, #8]            @ 4-byte Spill
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %if.end98.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_105 Depth 2
                                        @     Child Loop BB0_108 Depth 2
	ldrb	r1, [r11, r0]
	and	r5, lr, r1, lsr #3
	and	r4, r1, #31
	ldr	r5, [r8, r5]
	tst	r5, r3, lsl r4
	beq	.LBB0_111
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %if.then110.i
                                        @   in Loop: Header=BB0_102 Depth=1
	ldr	r1, [r2, r1, lsl #2]
	cmp	r1, r6
	bne	.LBB0_112
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %if.end130.i
                                        @   in Loop: Header=BB0_102 Depth=1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r1, r6
	mov	r5, r1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bhs	.LBB0_108
	b	.LBB0_105
.section bb0_105
.LBB0_105:                              @ %land.rhs.i
                                        @   Parent Loop BB0_102 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r1, [r11, r5]
	ldrb	r4, [r9, r5]
	cmp	r4, r1
	bne	.LBB0_113
	b	.LBB0_106
.section bb0_106
.LBB0_106:                              @ %for.inc149.i
                                        @   in Loop: Header=BB0_105 Depth=2
	add	r5, r5, #1
	cmp	r5, r6
	blo	.LBB0_105
	b	.LBB0_107
.section bb0_107
.LBB0_107:                              @   in Loop: Header=BB0_102 Depth=1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %for.cond159.i
                                        @   Parent Loop BB0_102 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r1, #1
	beq	.LBB0_116
	b	.LBB0_109
.section bb0_109
.LBB0_109:                              @ %land.rhs162.i
                                        @   in Loop: Header=BB0_108 Depth=2
	ldrb	r5, [r11, -r1]
	ldrb	r4, [r9, -r1]
	add	r1, r1, #1
	cmp	r4, r5
	beq	.LBB0_108
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %if.end178.i
                                        @   in Loop: Header=BB0_102 Depth=1
	add	r11, r11, r12
	b	.LBB0_115
.section bb0_111
.LBB0_111:                              @ %if.else128.i
                                        @   in Loop: Header=BB0_102 Depth=1
	add	r11, r11, r6
	b	.LBB0_115
.section bb0_112
.LBB0_112:                              @ %if.then117.i
                                        @   in Loop: Header=BB0_102 Depth=1
	sub	r1, r6, r1
	b	.LBB0_114
.section bb0_113
.LBB0_113:                              @ %if.then154.i
                                        @   in Loop: Header=BB0_102 Depth=1
	sub	r1, r5, r10
	b	.LBB0_114
.section bb0_114
.LBB0_114:                              @ %for.cond94.backedge.i
                                        @   in Loop: Header=BB0_102 Depth=1
	add	r11, r11, r1
	b	.LBB0_115
.section bb0_115
.LBB0_115:                              @ %for.cond94.backedge.i
                                        @   in Loop: Header=BB0_102 Depth=1
	ldr	r1, [sp, #16]           @ 4-byte Reload
	sub	r1, r1, r11
	cmp	r1, r6
	bhs	.LBB0_102
	b	.LBB0_117
.section bb0_116
.LBB0_116:
	mov	r7, r11
	b	.LBB0_117
.section bb0_117
.LBB0_117:                              @ %return
	mov	r0, r7
	add	sp, sp, #52
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	memmem, .Ltmp0-memmem
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
