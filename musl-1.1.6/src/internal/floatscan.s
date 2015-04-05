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
	.file	"src/internal/floatscan.bc"
	.globl	__floatscan
	.align	2
	.type	__floatscan,%function
__floatscan:                            @ @__floatscan
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#564
	sub	sp, sp, #564
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, r1
	mov	r10, r2
	mov	r5, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r4, #0
	mov	r1, #0
	cmp	r7, #2
	bhi	.LBB0_32
	b	.LBB0_5
.LBB0_5:                                @ %switch.lookup
	ldr	r0, .LCPI0_15
	mov	r6, #31
	mov	r4, #1
	orr	r6, r6, #8388608
	ldr	r8, [r0, r7, lsl #2]
	ldr	r0, .LCPI0_16
	ldr	r9, [r0, r7, lsl #2]
	b	.LBB0_6
.LCPI0_15:
	.long	.Lswitch.table2
.LCPI0_16:
	.long	.Lswitch.table
.LBB0_6:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %cond.true
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_9
.LBB0_8:                                @ %cond.false
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_9
.LBB0_9:                                @ %cond.end
                                        @   in Loop: Header=BB0_6 Depth=1
	sub	r1, r0, #9
	cmp	r1, #23
	bhi	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %cond.end
                                        @   in Loop: Header=BB0_6 Depth=1
	tst	r6, r4, lsl r1
	bne	.LBB0_6
	b	.LBB0_11
.LBB0_11:                               @ %while.end
	cmp	r0, #43
	movne	r11, #1
	cmpne	r0, #45
	bne	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               @ %if.then
	cmp	r0, #45
	mov	r1, #0
	mov	r0, #1
	moveq	r1, #1
	b	.LBB0_13
.LBB0_13:                               @ %if.then
	sub	r11, r0, r1, lsl #1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %cond.true18
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_16
.LBB0_15:                               @ %cond.false22
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_16
.LBB0_16:                               @ %if.end
	ldr	r6, .LCPI0_17
	mov	r4, #0
	b	.LBB0_17
.LCPI0_17:
	.long	.L.str
.LBB0_17:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r6, r4]
	orr	r2, r0, #32
	cmp	r2, r1
	bne	.LBB0_23
	b	.LBB0_18
.LBB0_18:                               @ %for.body
                                        @   in Loop: Header=BB0_17 Depth=1
	cmp	r4, #6
	bhi	.LBB0_22
	b	.LBB0_19
.LBB0_19:                               @ %if.then33
                                        @   in Loop: Header=BB0_17 Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %cond.true38
                                        @   in Loop: Header=BB0_17 Depth=1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_22
.LBB0_21:                               @ %cond.false42
                                        @   in Loop: Header=BB0_17 Depth=1
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_22
.LBB0_22:                               @ %for.inc
                                        @   in Loop: Header=BB0_17 Depth=1
	add	r4, r4, #1
	cmp	r4, #8
	blo	.LBB0_17
	b	.LBB0_23
.LBB0_23:                               @ %for.end
	cmp	r4, #3
	beq	.LBB0_28
	b	.LBB0_24
.LBB0_24:                               @ %for.end
	cmp	r4, #8
	beq	.LBB0_31
	b	.LBB0_25
.LBB0_25:                               @ %lor.lhs.false52
	cmp	r10, #0
	beq	.LBB0_33
	b	.LBB0_26
.LBB0_26:                               @ %lor.lhs.false52
	cmp	r4, #4
	blo	.LBB0_33
	b	.LBB0_27
.LBB0_27:                               @ %if.then56
	cmp	r4, #8
	beq	.LBB0_31
	b	.LBB0_28
.LBB0_28:                               @ %if.then59
	ldr	r0, [r5, #104]
	cmp	r0, #0
	ldrne	r1, [r5, #4]
	subne	r1, r1, #1
	strne	r1, [r5, #4]
	cmp	r4, #4
	blo	.LBB0_31
	b	.LBB0_29
.LBB0_29:                               @ %cond.end66
	cmp	r10, #0
	cmpne	r0, #0
	beq	.LBB0_31
	b	.LBB0_30
.LBB0_30:                               @ %for.inc80
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #4]
	sub	r4, r4, #1
	cmp	r4, #3
	sub	r0, r0, #1
	str	r0, [r5, #4]
	bhi	.LBB0_30
	b	.LBB0_31
.LBB0_31:                               @ %if.end83
	mov	r0, r11
	bl	__aeabi_i2f
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r4, r0
	b	.LBB0_32
.LBB0_32:                               @ %return
	mov	r0, r4
	add	sp, sp, #564
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_33:                               @ %if.end87
	cmp	r4, #0
	bne	.LBB0_52
	b	.LBB0_34
.LBB0_34:                               @ %for.cond90.preheader
	orr	r1, r0, #32
	cmp	r1, #110
	bne	.LBB0_37
	b	.LBB0_35
.LBB0_35:                               @ %if.then103
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_40
	b	.LBB0_36
.LBB0_36:                               @ %cond.true108
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_41
.LBB0_37:                               @ %if.end216
	cmp	r0, #48
	bne	.LBB0_56
	b	.LBB0_38
.LBB0_38:                               @ %if.then219
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_44
	b	.LBB0_39
.LBB0_39:                               @ %cond.true224
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_45
.LBB0_40:                               @ %cond.false112
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_41
.LBB0_41:                               @ %for.inc117
	orr	r0, r0, #32
	cmp	r0, #97
	bne	.LBB0_52
	b	.LBB0_42
.LBB0_42:                               @ %if.then103.1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_48
	b	.LBB0_43
.LBB0_43:                               @ %cond.true108.1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_49
.LBB0_44:                               @ %cond.false228
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_45
.LBB0_45:                               @ %cond.end230
	orr	r0, r0, #32
	cmp	r0, #120
	bne	.LBB0_55
	b	.LBB0_46
.LBB0_46:                               @ %if.then235
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_88
	b	.LBB0_47
.LBB0_47:                               @ %cond.true.i337
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_89
.LBB0_48:                               @ %cond.false112.1
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_49
.LBB0_49:                               @ %for.inc117.1
	orr	r0, r0, #32
	cmp	r0, #110
	bne	.LBB0_52
	b	.LBB0_50
.LBB0_50:                               @ %if.then123
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_97
	b	.LBB0_51
.LBB0_51:                               @ %cond.true128
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_98
.LBB0_52:                               @ %if.then207
	ldr	r0, [r5, #104]
	cmp	r0, #0
	ldrne	r0, [r5, #4]
	subne	r0, r0, #1
	strne	r0, [r5, #4]
	b	.LBB0_53
.LBB0_53:                               @ %if.then188
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_54
.LBB0_54:                               @ %if.else162.i
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	bl	__shlim
	mov	r1, #0
	b	.LBB0_32
.LBB0_55:                               @ %if.end237
	ldr	r1, [r5, #104]
	mov	r0, #48
	cmp	r1, #0
	ldrne	r1, [r5, #4]
	subne	r1, r1, #1
	strne	r1, [r5, #4]
	b	.LBB0_56
.LBB0_56:                               @ %if.end245
	add	r1, r8, r9
	str	r8, [sp, #16]           @ 4-byte Spill
	mov	r6, #0
	mov	r8, #0
	str	r1, [sp, #32]           @ 4-byte Spill
	rsb	r1, r1, #0
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB0_58
.LBB0_57:                               @ %cond.false.i
                                        @   in Loop: Header=BB0_58 Depth=1
	mov	r0, r5
	bl	__shgetc
	mov	r8, #1
	b	.LBB0_58
.LBB0_58:                               @ %for.cond.i
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #46
	beq	.LBB0_62
	b	.LBB0_59
.LBB0_59:                               @ %for.cond.i
                                        @   in Loop: Header=BB0_58 Depth=1
	cmp	r0, #48
	bne	.LBB0_64
	b	.LBB0_60
.LBB0_60:                               @ %for.body.i
                                        @   in Loop: Header=BB0_58 Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_57
	b	.LBB0_61
.LBB0_61:                               @ %cond.true.i
                                        @   in Loop: Header=BB0_58 Depth=1
	add	r1, r0, #1
	mov	r8, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_58
.LBB0_62:                               @ %if.then.i
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_65
	b	.LBB0_63
.LBB0_63:                               @ %cond.true10.i
	add	r1, r0, #1
	str	r11, [sp, #20]          @ 4-byte Spill
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_66
.LBB0_64:
	str	r11, [sp, #20]          @ 4-byte Spill
	mov	r4, #0
	mov	r11, #0
	b	.LBB0_72
.LBB0_65:                               @ %cond.false14.i
	mov	r0, r5
	str	r11, [sp, #20]          @ 4-byte Spill
	bl	__shgetc
	b	.LBB0_66
.LBB0_66:                               @ %for.cond18.preheader.i
	mov	r6, #0
	mov	r11, #1
	mov	r4, #0
	cmp	r0, #48
	bne	.LBB0_72
	b	.LBB0_67
.LBB0_67:
	mov	r8, #1
	mov	r11, #1
	b	.LBB0_68
.LBB0_68:                               @ %for.body21.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	subs	r6, r6, #1
	sbc	r4, r4, #0
	cmp	r0, r1
	bhs	.LBB0_70
	b	.LBB0_69
.LBB0_69:                               @ %cond.true27.i
                                        @   in Loop: Header=BB0_68 Depth=1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_71
.LBB0_70:                               @ %cond.false31.i
                                        @   in Loop: Header=BB0_68 Depth=1
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_71
.LBB0_71:                               @ %for.cond18.backedge.i
                                        @   in Loop: Header=BB0_68 Depth=1
	cmp	r0, #48
	beq	.LBB0_68
	b	.LBB0_72
.LBB0_72:                               @ %if.end.i
	mov	r1, #0
	cmp	r0, #46
	mov	r2, #0
	str	r6, [sp, #44]           @ 4-byte Spill
	b	.LBB0_73
.LBB0_73:                               @ %if.end.i
	str	r4, [sp, #48]           @ 4-byte Spill
	str	r9, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #52]
	mov	r1, #0
	b	.LBB0_74
.LBB0_74:                               @ %if.end.i
	moveq	r2, #1
	str	r1, [sp, #40]           @ 4-byte Spill
	sub	r1, r0, #48
	cmpne	r1, #9
	bls	.LBB0_232
	b	.LBB0_75
.LBB0_75:
	mov	r1, #0
	mov	r9, #0
	mov	r4, #0
	mov	r3, #0
	str	r1, [sp, #36]           @ 4-byte Spill
	b	.LBB0_76
.LBB0_76:                               @ %if.end97.i
	cmp	r11, #0
	ldr	r1, [sp, #44]           @ 4-byte Reload
	orr	r2, r0, #32
	moveq	r1, r4
	b	.LBB0_77
.LBB0_77:                               @ %if.end97.i
	str	r1, [sp, #44]           @ 4-byte Spill
	ldr	r1, [sp, #48]           @ 4-byte Reload
	moveq	r1, r3
	cmp	r8, #0
	b	.LBB0_78
.LBB0_78:                               @ %if.end97.i
	str	r1, [sp, #48]           @ 4-byte Spill
	mov	r1, r8
	movne	r1, #1
	cmp	r2, #101
	bne	.LBB0_85
	b	.LBB0_79
.LBB0_79:                               @ %if.end97.i
	cmp	r8, #0
	beq	.LBB0_85
	b	.LBB0_80
.LBB0_80:                               @ %if.then102.i
	mov	r0, r5
	mov	r1, r10
	mov	r11, r3
	bl	scanexp
	b	.LBB0_81
.LBB0_81:                               @ %if.then102.i
	ldr	r8, [sp, #20]           @ 4-byte Reload
	eor	r2, r1, #-2147483648
	orrs	r2, r0, r2
	bne	.LBB0_86
	b	.LBB0_82
.LBB0_82:                               @ %if.then106.i
	ldr	r12, [sp, #16]          @ 4-byte Reload
	mov	r3, r11
	cmp	r10, #0
	beq	.LBB0_54
	b	.LBB0_83
.LBB0_83:                               @ %if.then108.i
	ldr	r1, [r5, #104]
	mov	r0, #0
	cmp	r1, #0
	mov	r1, #0
	b	.LBB0_84
.LBB0_84:                               @ %if.then108.i
	ldrne	r0, [r5, #4]
	movne	r1, #0
	subne	r0, r0, #1
	strne	r0, [r5, #4]
	movne	r0, #0
	b	.LBB0_87
.LBB0_85:                               @ %if.else120.i
	ldr	r8, [sp, #20]           @ 4-byte Reload
	ldr	r12, [sp, #16]          @ 4-byte Reload
	cmp	r0, #0
	bge	.LBB0_248
	b	.LBB0_249
.LBB0_86:
	ldr	r12, [sp, #16]          @ 4-byte Reload
	mov	r3, r11
	b	.LBB0_87
.LBB0_87:                               @ %if.end118.i
	ldr	r2, [sp, #44]           @ 4-byte Reload
	adds	r2, r0, r2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	str	r2, [sp, #44]           @ 4-byte Spill
	adc	r0, r1, r0
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB0_250
.LBB0_88:                               @ %cond.false.i339
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_89
.LBB0_89:                               @ %for.cond.i341
	mov	r6, #0
	b	.LBB0_91
.LBB0_90:                               @ %cond.false12.i
                                        @   in Loop: Header=BB0_91 Depth=1
	mov	r0, r5
	bl	__shgetc
	mov	r6, #1
	b	.LBB0_91
.LBB0_91:                               @ %for.cond.i341
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, #267386880
	cmp	r0, #46
	orr	r4, r4, #805306368
	beq	.LBB0_95
	b	.LBB0_92
.LBB0_92:                               @ %for.cond.i341
                                        @   in Loop: Header=BB0_91 Depth=1
	cmp	r0, #48
	bne	.LBB0_113
	b	.LBB0_93
.LBB0_93:                               @ %for.body.i342
                                        @   in Loop: Header=BB0_91 Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_90
	b	.LBB0_94
.LBB0_94:                               @ %cond.true8.i
                                        @   in Loop: Header=BB0_91 Depth=1
	add	r1, r0, #1
	mov	r6, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_91
.LBB0_95:                               @ %if.then.i343
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_116
	b	.LBB0_96
.LBB0_96:                               @ %cond.true22.i
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_117
.LBB0_97:                               @ %cond.false132
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_98
.LBB0_98:                               @ %cond.end134
	cmp	r0, #40
	bne	.LBB0_111
	b	.LBB0_99
.LBB0_99:
	mov	r7, #1
	b	.LBB0_101
.LBB0_100:                              @ %for.inc203
                                        @   in Loop: Header=BB0_101 Depth=1
	add	r7, r7, #1
	b	.LBB0_101
.LBB0_101:                              @ %for.cond147
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_103
	b	.LBB0_102
.LBB0_102:                              @ %cond.true152
                                        @   in Loop: Header=BB0_101 Depth=1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_104
.LBB0_103:                              @ %cond.false156
                                        @   in Loop: Header=BB0_101 Depth=1
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_104
.LBB0_104:                              @ %cond.end158
                                        @   in Loop: Header=BB0_101 Depth=1
	sub	r2, r0, #48
	sub	r1, r0, #65
	cmp	r2, #10
	cmphs	r1, #26
	blo	.LBB0_100
	b	.LBB0_105
.LBB0_105:                              @ %lor.lhs.false167
                                        @   in Loop: Header=BB0_101 Depth=1
	sub	r1, r0, #97
	cmp	r0, #95
	beq	.LBB0_100
	b	.LBB0_106
.LBB0_106:                              @ %lor.lhs.false167
                                        @   in Loop: Header=BB0_101 Depth=1
	cmp	r1, #26
	blo	.LBB0_100
	b	.LBB0_107
.LBB0_107:                              @ %if.end175
	mov	r1, #66584576
	mov	r4, #0
	cmp	r0, #41
	orr	r1, r1, #2080374784
	beq	.LBB0_32
	b	.LBB0_108
.LBB0_108:                              @ %if.end179
	ldr	r0, [r5, #104]
	cmp	r0, #0
	ldrne	r2, [r5, #4]
	subne	r2, r2, #1
	strne	r2, [r5, #4]
	cmp	r10, #0
	beq	.LBB0_53
	b	.LBB0_109
.LBB0_109:                              @ %while.cond191.preheader
	cmp	r7, #0
	cmpne	r0, #0
	beq	.LBB0_32
	b	.LBB0_110
.LBB0_110:                              @ %while.cond191.backedge
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #4]
	subs	r7, r7, #1
	sub	r0, r0, #1
	str	r0, [r5, #4]
	bne	.LBB0_110
	b	.LBB0_32
.LBB0_111:                              @ %if.then138
	ldr	r0, [r5, #104]
	mov	r1, #66584576
	mov	r4, #0
	orr	r1, r1, #2080374784
	b	.LBB0_112
.LBB0_112:                              @ %if.then138
	cmp	r0, #0
	ldrne	r0, [r5, #4]
	subne	r0, r0, #1
	strne	r0, [r5, #4]
	b	.LBB0_32
.LBB0_113:
	mov	r1, #0
	str	r8, [sp, #16]           @ 4-byte Spill
	str	r11, [sp, #20]          @ 4-byte Spill
	str	r9, [sp, #12]           @ 4-byte Spill
	b	.LBB0_114
.LBB0_114:
	mov	r7, #0
	str	r1, [sp, #48]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #44]           @ 4-byte Spill
	b	.LBB0_115
.LBB0_115:
	mov	r1, #0
	str	r1, [sp, #36]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #32]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #40]           @ 4-byte Spill
	b	.LBB0_130
.LBB0_116:                              @ %cond.false26.i
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_117
.LBB0_117:                              @ %for.cond30.preheader.i
	mov	r7, #0
	str	r8, [sp, #16]           @ 4-byte Spill
	cmp	r0, #48
	bne	.LBB0_127
	b	.LBB0_118
.LBB0_118:
	mov	r6, #0
	mov	r7, #0
	str	r11, [sp, #20]          @ 4-byte Spill
	str	r9, [sp, #12]           @ 4-byte Spill
	b	.LBB0_119
.LBB0_119:                              @ %for.body33.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_121
	b	.LBB0_120
.LBB0_120:                              @ %cond.true39.i
                                        @   in Loop: Header=BB0_119 Depth=1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_122
.LBB0_121:                              @ %cond.false43.i
                                        @   in Loop: Header=BB0_119 Depth=1
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_122
.LBB0_122:                              @ %cond.end45.i
                                        @   in Loop: Header=BB0_119 Depth=1
	subs	r6, r6, #1
	sbc	r7, r7, #0
	cmp	r0, #48
	beq	.LBB0_119
	b	.LBB0_123
.LBB0_123:
	mov	r1, #1
	str	r7, [sp, #28]           @ 4-byte Spill
	str	r6, [sp, #24]           @ 4-byte Spill
	mov	r6, #1
	b	.LBB0_124
.LBB0_124:
	mov	r9, #0
	mov	r11, #0
	mov	r7, #0
	str	r1, [sp, #40]           @ 4-byte Spill
	b	.LBB0_125
.LBB0_125:
	mov	r1, #0
	str	r1, [sp, #48]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #44]           @ 4-byte Spill
	b	.LBB0_126
.LBB0_126:
	mov	r1, #0
	str	r1, [sp, #36]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #32]           @ 4-byte Spill
	b	.LBB0_132
.LBB0_127:
	mov	r1, #1
	str	r11, [sp, #20]          @ 4-byte Spill
	str	r9, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	b	.LBB0_128
.LBB0_128:
	mov	r1, #0
	str	r1, [sp, #48]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #44]           @ 4-byte Spill
	b	.LBB0_129
.LBB0_129:
	mov	r1, #0
	str	r1, [sp, #36]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #32]           @ 4-byte Spill
	b	.LBB0_130
.LBB0_130:                              @ %for.cond48.i
	mov	r1, #0
	mov	r9, #0
	mov	r11, #0
	str	r1, [sp, #24]           @ 4-byte Spill
	mov	r1, #0
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB0_132
.LBB0_131:                              @ %cond.false100.i
                                        @   in Loop: Header=BB0_132 Depth=1
	mov	r0, r5
	bl	__shgetc
	b	.LBB0_132
.LBB0_132:                              @ %for.cond48.i
                                        @ =>This Inner Loop Header: Depth=1
	sub	r8, r0, #48
	orr	r1, r0, #32
	cmp	r8, #10
	blo	.LBB0_137
	b	.LBB0_133
.LBB0_133:                              @ %lor.lhs.false.i
                                        @   in Loop: Header=BB0_132 Depth=1
	cmp	r0, #46
	subne	r2, r1, #97
	cmpne	r2, #5
	bhi	.LBB0_156
	b	.LBB0_134
.LBB0_134:                              @ %for.body56.i
                                        @   in Loop: Header=BB0_132 Depth=1
	cmp	r0, #46
	bne	.LBB0_137
	b	.LBB0_135
.LBB0_135:                              @ %if.then59.i
                                        @   in Loop: Header=BB0_132 Depth=1
	ldr	r1, [sp, #40]           @ 4-byte Reload
	mov	r0, #46
	cmp	r1, #0
	bne	.LBB0_157
	b	.LBB0_136
.LBB0_136:                              @   in Loop: Header=BB0_132 Depth=1
	mov	r0, #1
	str	r9, [sp, #24]           @ 4-byte Spill
	str	r11, [sp, #28]          @ 4-byte Spill
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_154
.LBB0_137:                              @ %if.else.i350
                                        @   in Loop: Header=BB0_132 Depth=1
	cmp	r0, #57
	mov	r2, #0
	mov	r0, #0
	subgt	r8, r1, #87
	b	.LBB0_138
.LBB0_138:                              @ %if.else.i350
                                        @   in Loop: Header=BB0_132 Depth=1
	cmp	r9, #7
	mov	r1, #0
	movhi	r1, #1
	cmp	r11, #0
	b	.LBB0_139
.LBB0_139:                              @ %if.else.i350
                                        @   in Loop: Header=BB0_132 Depth=1
	movgt	r2, #1
	moveq	r2, r1
	cmp	r2, #0
	bne	.LBB0_141
	b	.LBB0_140
.LBB0_140:                              @ %if.then72.i
                                        @   in Loop: Header=BB0_132 Depth=1
	add	r7, r8, r7, lsl #4
	b	.LBB0_153
.LBB0_141:                              @ %if.else74.i
                                        @   in Loop: Header=BB0_132 Depth=1
	cmp	r9, #13
	mov	r1, #0
	movhi	r1, #1
	cmp	r11, #0
	b	.LBB0_142
.LBB0_142:                              @ %if.else74.i
                                        @   in Loop: Header=BB0_132 Depth=1
	movgt	r0, #1
	moveq	r0, r1
	cmp	r0, #0
	bne	.LBB0_148
	b	.LBB0_143
.LBB0_143:                              @ %if.then77.i
                                        @   in Loop: Header=BB0_132 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	mov	r3, #263192576
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_144
.LBB0_144:                              @ %if.then77.i
                                        @   in Loop: Header=BB0_132 Depth=1
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r6, r0
	mov	r0, r8
	b	.LBB0_145
.LBB0_145:                              @ %if.then77.i
                                        @   in Loop: Header=BB0_132 Depth=1
	mov	r4, r1
	str	r6, [sp, #36]           @ 4-byte Spill
	bl	__aeabi_i2d
	mov	r2, r0
	b	.LBB0_146
.LBB0_146:                              @ %if.then77.i
                                        @   in Loop: Header=BB0_132 Depth=1
	mov	r3, r1
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_147
.LBB0_147:                              @ %if.then77.i
                                        @   in Loop: Header=BB0_132 Depth=1
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r1, [sp, #44]           @ 4-byte Reload
	bl	__aeabi_dadd
	str	r0, [sp, #48]           @ 4-byte Spill
	str	r1, [sp, #44]           @ 4-byte Spill
	b	.LBB0_153
.LBB0_148:                              @ %if.else81.i
                                        @   in Loop: Header=BB0_132 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB0_153
	b	.LBB0_149
.LBB0_149:                              @ %if.else81.i
                                        @   in Loop: Header=BB0_132 Depth=1
	cmp	r8, #0
	beq	.LBB0_153
	b	.LBB0_150
.LBB0_150:                              @ %if.then84.i
                                        @   in Loop: Header=BB0_132 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	mov	r3, #266338304
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_151
.LBB0_151:                              @ %if.then84.i
                                        @   in Loop: Header=BB0_132 Depth=1
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_152
.LBB0_152:                              @ %if.then84.i
                                        @   in Loop: Header=BB0_132 Depth=1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r1, [sp, #44]           @ 4-byte Reload
	bl	__aeabi_dadd
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, #1
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB0_153
.LBB0_153:                              @ %if.end89.i
                                        @   in Loop: Header=BB0_132 Depth=1
	adds	r9, r9, #1
	mov	r6, #1
	adc	r11, r11, #0
	b	.LBB0_154
.LBB0_154:                              @ %for.inc91.i
                                        @   in Loop: Header=BB0_132 Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_131
	b	.LBB0_155
.LBB0_155:                              @ %cond.true96.i
                                        @   in Loop: Header=BB0_132 Depth=1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_132
.LBB0_156:
	ldr	r1, [sp, #40]           @ 4-byte Reload
	b	.LBB0_157
.LBB0_157:                              @ %for.end104.i
	cmp	r6, #0
	beq	.LBB0_169
	b	.LBB0_158
.LBB0_158:                              @ %if.end137.i
	cmp	r1, #0
	ldr	r6, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	mov	r2, #0
	b	.LBB0_159
.LBB0_159:                              @ %if.end137.i
	moveq	r6, r9
	moveq	r1, r11
	cmp	r9, #7
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB0_160
.LBB0_160:                              @ %if.end137.i
	movhi	r2, #1
	mov	r1, #0
	cmp	r11, #0
	movgt	r1, #1
	moveq	r1, r2
	cmp	r1, #0
	bne	.LBB0_164
	b	.LBB0_161
.LBB0_161:                              @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	adds	r9, r9, #1
	mov	r1, #0
	mov	r2, #0
	lsl	r7, r7, #4
	b	.LBB0_162
.LBB0_162:                              @ %while.body.i
                                        @   in Loop: Header=BB0_161 Depth=1
	adc	r11, r11, #0
	cmp	r9, #8
	movlo	r1, #1
	cmp	r11, #0
	b	.LBB0_163
.LBB0_163:                              @ %while.body.i
                                        @   in Loop: Header=BB0_161 Depth=1
	movlt	r2, #1
	moveq	r2, r1
	cmp	r2, #0
	bne	.LBB0_161
	b	.LBB0_164
.LBB0_164:                              @ %while.end.i
	orr	r0, r0, #32
	cmp	r0, #112
	bne	.LBB0_173
	b	.LBB0_165
.LBB0_165:                              @ %if.then148.i
	mov	r0, r5
	mov	r1, r10
	bl	scanexp
	eor	r2, r1, #-2147483648
	b	.LBB0_166
.LBB0_166:                              @ %if.then148.i
	ldr	r8, [sp, #20]           @ 4-byte Reload
	orrs	r2, r0, r2
	ldr	r2, [sp, #28]           @ 4-byte Reload
	bne	.LBB0_175
	b	.LBB0_167
.LBB0_167:                              @ %if.then152.i
	cmp	r10, #0
	beq	.LBB0_54
	b	.LBB0_168
.LBB0_168:                              @ %if.then154.i361
	ldr	r1, [r5, #104]
	mov	r0, #0
	cmp	r1, #0
	mov	r1, #0
	bne	.LBB0_174
	b	.LBB0_175
.LBB0_169:                              @ %if.then106.i358
	ldr	r0, [r5, #104]
	mov	r2, r1
	ldr	r4, [sp, #20]           @ 4-byte Reload
	cmp	r0, #0
	b	.LBB0_170
.LBB0_170:                              @ %if.then106.i358
	ldrne	r1, [r5, #4]
	subne	r1, r1, #1
	strne	r1, [r5, #4]
	cmp	r10, #0
	beq	.LBB0_199
	b	.LBB0_171
.LBB0_171:                              @ %if.then115.i
	cmp	r0, #0
	beq	.LBB0_200
	b	.LBB0_172
.LBB0_172:                              @ %cond.end122.i
	ldr	r0, [r5, #4]
	cmp	r2, #0
	sub	r1, r0, #1
	subne	r0, r0, #2
	str	r1, [r5, #4]
	strne	r0, [r5, #4]
	b	.LBB0_200
.LBB0_173:                              @ %if.else165.i
	ldr	r1, [r5, #104]
	ldr	r8, [sp, #20]           @ 4-byte Reload
	ldr	r2, [sp, #28]           @ 4-byte Reload
	mov	r0, #0
	cmp	r1, #0
	mov	r1, #0
	beq	.LBB0_175
	b	.LBB0_174
.LBB0_174:                              @ %cond.true168.i
	ldr	r0, [r5, #4]
	mov	r1, #0
	sub	r0, r0, #1
	str	r0, [r5, #4]
	mov	r0, #0
	b	.LBB0_175
.LBB0_175:                              @ %if.end173.i
	lsl	r2, r2, #2
	adds	r0, r0, r6, lsl #2
	orr	r2, r2, r6, lsr #30
	adc	r1, r2, r1
	b	.LBB0_176
.LBB0_176:                              @ %if.end173.i
	subs	r5, r0, #32
	sbc	r4, r1, #0
	cmp	r7, #0
	beq	.LBB0_198
	b	.LBB0_177
.LBB0_177:                              @ %if.end181.i
	ldr	r3, [sp, #16]           @ 4-byte Reload
	mov	r2, #0
	mov	r0, #0
	rsb	r1, r3, #0
	b	.LBB0_178
.LBB0_178:                              @ %if.end181.i
	cmp	r5, r1
	movls	r2, #1
	cmp	r4, r1, asr #31
	mov	r1, #0
	b	.LBB0_179
.LBB0_179:                              @ %if.end181.i
	movle	r1, #1
	moveq	r1, r2
	cmp	r1, #0
	beq	.LBB0_259
	b	.LBB0_180
.LBB0_180:                              @ %if.end191.i
	sub	r1, r3, #106
	mov	r2, #0
	cmp	r5, r1
	movlo	r2, #1
	b	.LBB0_181
.LBB0_181:                              @ %if.end191.i
	cmp	r4, r1, asr #31
	movlt	r0, #1
	moveq	r0, r2
	cmp	r0, #0
	bne	.LBB0_267
	b	.LBB0_182
.LBB0_182:                              @ %while.cond202.preheader.i
	str	r8, [sp, #20]           @ 4-byte Spill
	cmp	r7, #0
	blt	.LBB0_201
	b	.LBB0_183
.LBB0_183:
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r11, [sp, #44]          @ 4-byte Reload
	mov	r8, #266338304
	orr	r8, r8, #805306368
	b	.LBB0_184
.LBB0_184:                              @ %while.body205.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r9, r0
	mov	r1, r11
	mov	r2, #0
	mov	r3, r8
	b	.LBB0_185
.LBB0_185:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	str	r4, [sp, #44]           @ 4-byte Spill
	str	r5, [sp, #48]           @ 4-byte Spill
                                        @ kill: R0<def> R9<kill>
	bl	__aeabi_dcmplt
	b	.LBB0_186
.LBB0_186:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	mov	r5, r0
	mov	r0, r9
	mov	r1, r11
	mov	r2, #0
	b	.LBB0_187
.LBB0_187:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	mov	r3, r8
	bl	__aeabi_dcmpun
	mov	r3, #267386880
	orr	r4, r0, r5
	b	.LBB0_188
.LBB0_188:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	mov	r0, r9
	mov	r1, r11
	mov	r2, #0
	orr	r3, r3, #-1342177280
	b	.LBB0_189
.LBB0_189:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	cmp	r4, #0
	b	.LBB0_190
.LBB0_190:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	mov	r0, r9
	mov	r1, r11
	movne	r2, r9
	movne	r3, r11
	b	.LBB0_191
.LBB0_191:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	bl	__aeabi_dadd
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r6, r1
	mov	r0, r9
	b	.LBB0_192
.LBB0_192:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	mov	r1, r11
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dcmplt
	b	.LBB0_193
.LBB0_193:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	mov	r10, r0
	mov	r0, r9
	mov	r1, r11
	mov	r2, #0
	b	.LBB0_194
.LBB0_194:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	mov	r3, r8
	bl	__aeabi_dcmpun
	ldr	r5, [sp, #48]           @ 4-byte Reload
	ldr	r4, [sp, #44]           @ 4-byte Reload
	b	.LBB0_195
.LBB0_195:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	ldr	r9, [sp, #40]           @ 4-byte Reload
	orrs	r0, r0, r10
	mov	r1, #1
	mov	r11, r6
	b	.LBB0_196
.LBB0_196:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	lsl	r0, r7, #1
	orrne	r0, r1, r7, lsl #1
	eor	r7, r0, #1
	subs	r5, r5, #1
	b	.LBB0_197
.LBB0_197:                              @ %while.body205.i
                                        @   in Loop: Header=BB0_184 Depth=1
	sbc	r4, r4, #0
	cmp	r0, #0
	mov	r0, r9
	bge	.LBB0_184
	b	.LBB0_202
.LBB0_198:                              @ %if.then178.i
	mov	r0, r8
	b	.LBB0_262
.LBB0_199:                              @ %if.else133.i
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__shlim
	b	.LBB0_200
.LBB0_200:                              @ %if.end134.i
	mov	r0, r4
	b	.LBB0_262
.LBB0_201:
	ldr	r9, [sp, #48]           @ 4-byte Reload
	ldr	r6, [sp, #44]           @ 4-byte Reload
	b	.LBB0_202
.LBB0_202:                              @ %while.end218.i
	ldr	r1, [sp, #16]           @ 4-byte Reload
	mov	r11, #0
	mov	r3, #0
	str	r6, [sp, #40]           @ 4-byte Spill
	b	.LBB0_203
.LBB0_203:                              @ %while.end218.i
	str	r5, [sp, #48]           @ 4-byte Spill
	rsbs	r0, r1, #32
	sbc	r1, r11, r1, asr #31
	adds	r0, r5, r0
	b	.LBB0_204
.LBB0_204:                              @ %while.end218.i
	adc	r1, r4, r1
	ldr	r4, [sp, #12]           @ 4-byte Reload
	asr	r2, r4, #31
	cmp	r2, r1
	b	.LBB0_205
.LBB0_205:                              @ %while.end218.i
	mov	r2, #0
	movle	r2, #1
	cmp	r4, r0
	movls	r3, #1
	b	.LBB0_206
.LBB0_206:                              @ %while.end218.i
	cmp	r1, r4, asr #31
	movne	r3, r2
	cmp	r3, #0
	bne	.LBB0_208
	b	.LBB0_207
.LBB0_207:                              @ %if.then225.i
	mov	r4, r0
	cmp	r0, #0
	blt	.LBB0_210
	b	.LBB0_208
.LBB0_208:                              @ %if.end234.i
	cmp	r4, #53
	bge	.LBB0_214
	b	.LBB0_209
.LBB0_209:
	mov	r11, r4
	b	.LBB0_210
.LBB0_210:                              @ %if.then237.i
	mov	r1, #267386880
	rsb	r2, r11, #84
	mov	r0, #0
	orr	r1, r1, #805306368
	b	.LBB0_211
.LBB0_211:                              @ %if.then237.i
	bl	scalbn
	mov	r4, r0
	ldr	r0, [sp, #20]           @ 4-byte Reload
	mov	r5, r1
	b	.LBB0_212
.LBB0_212:                              @ %if.then237.i
	bl	__aeabi_i2d
	mov	r6, r0
	mov	r8, r1
	mov	r0, r4
	b	.LBB0_213
.LBB0_213:                              @ %if.then237.i
	mov	r1, r5
	mov	r2, r6
	mov	r3, r8
	bl	copysignl
	mov	r10, r1
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_216
.LBB0_214:                              @ %if.end234.if.end243_crit_edge.i
	ldr	r0, [sp, #20]           @ 4-byte Reload
	bl	__aeabi_i2d
	mov	r6, r0
	mov	r0, #0
	b	.LBB0_215
.LBB0_215:                              @ %if.end234.if.end243_crit_edge.i
	mov	r8, r1
	mov	r11, r4
	mov	r10, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_216
.LBB0_216:                              @ %if.end243.i368
	ldr	r5, [sp, #40]           @ 4-byte Reload
	mov	r0, r9
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_217
.LBB0_217:                              @ %if.end243.i368
	mov	r1, r5
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	mov	r0, #0
	b	.LBB0_218
.LBB0_218:                              @ %if.end243.i368
	mov	r1, #0
	mov	r4, r8
	moveq	r0, #1
	cmp	r11, #32
	b	.LBB0_219
.LBB0_219:                              @ %if.end243.i368
	movlt	r1, #1
	tst	r7, #1
	and	r0, r0, r1
	mov	r1, #0
	b	.LBB0_220
.LBB0_220:                              @ %if.end243.i368
	moveq	r1, #1
	ands	r11, r1, r0
	mov	r0, r6
	mov	r1, r4
	b	.LBB0_221
.LBB0_221:                              @ %if.end243.i368
	movne	r9, #0
	movne	r5, #0
	mov	r2, r9
	mov	r3, r5
	b	.LBB0_222
.LBB0_222:                              @ %if.end243.i368
	bl	__aeabi_dmul
	cmp	r11, #0
	mov	r5, r0
	mov	r8, r1
	b	.LBB0_223
.LBB0_223:                              @ %if.end243.i368
	addne	r7, r7, #1
	mov	r0, r7
	bl	__aeabi_ui2d
	mov	r2, r0
	b	.LBB0_224
.LBB0_224:                              @ %if.end243.i368
	mov	r3, r1
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_225
.LBB0_225:                              @ %if.end243.i368
	ldr	r4, [sp, #44]           @ 4-byte Reload
	mov	r2, r0
	mov	r3, r1
	mov	r1, r10
	b	.LBB0_226
.LBB0_226:                              @ %if.end243.i368
	mov	r0, r4
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_227
.LBB0_227:                              @ %if.end243.i368
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_dadd
	mov	r2, r4
	b	.LBB0_228
.LBB0_228:                              @ %if.end243.i368
	mov	r3, r10
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_229
.LBB0_229:                              @ %if.end243.i368
	mov	r2, #0
	mov	r3, #0
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_231
	b	.LBB0_230
.LBB0_230:                              @ %if.then262.i
	bl	__errno_location
	mov	r1, #34
	str	r1, [r0]
	b	.LBB0_231
.LBB0_231:                              @ %if.end264.i
	ldr	r2, [sp, #48]           @ 4-byte Reload
	mov	r0, r5
	mov	r1, r6
	add	sp, sp, #564
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	scalbnl
.LBB0_232:                              @ %for.body42.lr.ph.i
	mov	r3, #0
	mov	r9, #0
	mov	r4, #0
	str	r3, [sp, #40]           @ 4-byte Spill
	mov	r3, #0
	str	r3, [sp, #36]           @ 4-byte Spill
	mov	r3, #0
	b	.LBB0_233
.LBB0_233:                              @ %for.body42.i
                                        @ =>This Inner Loop Header: Depth=1
	tst	r2, #1
	beq	.LBB0_236
	b	.LBB0_234
.LBB0_234:                              @ %if.then45.i
                                        @   in Loop: Header=BB0_233 Depth=1
	cmp	r11, #0
	bne	.LBB0_247
	b	.LBB0_235
.LBB0_235:                              @   in Loop: Header=BB0_233 Depth=1
	str	r4, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #48]           @ 4-byte Spill
	mov	r11, #1
	b	.LBB0_242
.LBB0_236:                              @ %if.else.i
                                        @   in Loop: Header=BB0_233 Depth=1
	adds	r4, r4, #1
	adc	r3, r3, #0
	cmp	r9, #124
	bgt	.LBB0_241
	b	.LBB0_237
.LBB0_237:                              @ %if.then50.i
                                        @   in Loop: Header=BB0_233 Depth=1
	ldr	r2, [sp, #36]           @ 4-byte Reload
	cmp	r0, #48
	add	r6, sp, #52
	mov	r8, #1
	b	.LBB0_238
.LBB0_238:                              @ %if.then50.i
                                        @   in Loop: Header=BB0_233 Depth=1
	movne	r2, r4
	str	r2, [sp, #36]           @ 4-byte Spill
	ldr	r2, [sp, #40]           @ 4-byte Reload
	cmp	r2, #0
	b	.LBB0_239
.LBB0_239:                              @ %if.then50.i
                                        @   in Loop: Header=BB0_233 Depth=1
	add	r2, r2, #1
	ldrne	r1, [r6, r9, lsl #2]
	addne	r1, r1, r1, lsl #2
	addne	r0, r0, r1, lsl #1
	b	.LBB0_240
.LBB0_240:                              @ %if.then50.i
                                        @   in Loop: Header=BB0_233 Depth=1
	subne	r1, r0, #48
	cmp	r2, #9
	moveq	r2, #0
	str	r1, [r6, r9, lsl #2]
	addeq	r9, r9, #1
	str	r2, [sp, #40]           @ 4-byte Spill
	b	.LBB0_242
.LBB0_241:                              @ %if.else72.i
                                        @   in Loop: Header=BB0_233 Depth=1
	cmp	r0, #48
	ldrne	r0, [sp, #548]
	orrne	r0, r0, #1
	strne	r0, [sp, #548]
	b	.LBB0_242
.LBB0_242:                              @ %for.inc81.i
                                        @   in Loop: Header=BB0_233 Depth=1
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #104]
	cmp	r0, r1
	bhs	.LBB0_244
	b	.LBB0_243
.LBB0_243:                              @ %cond.true86.i
                                        @   in Loop: Header=BB0_233 Depth=1
	add	r1, r0, #1
	str	r1, [r5, #4]
	ldrb	r0, [r0]
	b	.LBB0_245
.LBB0_244:                              @ %cond.false90.i
                                        @   in Loop: Header=BB0_233 Depth=1
	mov	r0, r5
	mov	r6, r3
	bl	__shgetc
	mov	r3, r6
	b	.LBB0_245
.LBB0_245:                              @ %for.cond36.backedge.i
                                        @   in Loop: Header=BB0_233 Depth=1
	cmp	r0, #46
	mov	r2, #0
	sub	r1, r0, #48
	moveq	r2, #1
	beq	.LBB0_233
	b	.LBB0_246
.LBB0_246:                              @ %for.cond36.backedge.i
                                        @   in Loop: Header=BB0_233 Depth=1
	cmp	r1, #10
	blo	.LBB0_233
	b	.LBB0_76
.LBB0_247:                              @ %if.else120.thread.i
	cmp	r8, #0
	ldr	r12, [sp, #16]          @ 4-byte Reload
	movne	r8, #1
	mov	r1, r8
	ldr	r8, [sp, #20]           @ 4-byte Reload
	b	.LBB0_248
.LBB0_248:                              @ %if.then123.i
	ldr	r0, [r5, #104]
	cmp	r0, #0
	ldrne	r0, [r5, #4]
	subne	r0, r0, #1
	strne	r0, [r5, #4]
	b	.LBB0_249
.LBB0_249:                              @ %if.end132.i
	cmp	r1, #0
	beq	.LBB0_53
	b	.LBB0_250
.LBB0_250:                              @ %if.end136.i
	ldr	r5, [sp, #52]
	cmp	r5, #0
	beq	.LBB0_261
	b	.LBB0_251
.LBB0_251:                              @ %if.end142.i
	cmp	r4, #9
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	b	.LBB0_252
.LBB0_252:                              @ %if.end142.i
	movhi	r1, #1
	cmp	r3, #0
	movgt	r2, #1
	moveq	r2, r1
	b	.LBB0_253
.LBB0_253:                              @ %if.end142.i
	cmp	r2, #0
	ldreq	r1, [sp, #44]           @ 4-byte Reload
	ldreq	r2, [sp, #48]           @ 4-byte Reload
	eoreq	r1, r1, r4
	eoreq	r2, r2, r3
	orrseq	r1, r1, r2
	bne	.LBB0_256
	b	.LBB0_254
.LBB0_254:                              @ %land.lhs.true148.i
	sub	r1, r7, #1
	cmp	r1, #2
	blo	.LBB0_263
	b	.LBB0_255
.LBB0_255:                              @ %land.lhs.true148.i
	ldr	r1, [sp, #12]           @ 4-byte Reload
	lsr	r1, r5, r1
	cmp	r1, #0
	beq	.LBB0_263
	b	.LBB0_256
.LBB0_256:                              @ %if.end159.i
	ldr	r10, [sp, #44]          @ 4-byte Reload
	ldr	r7, [sp, #48]           @ 4-byte Reload
	add	r1, r12, r12, lsr #31
	mov	r2, #0
	b	.LBB0_257
.LBB0_257:                              @ %if.end159.i
	sub	r1, r0, r1, asr #1
	cmp	r10, r1
	movls	r2, #1
	cmp	r7, r1, asr #31
	b	.LBB0_258
.LBB0_258:                              @ %if.end159.i
	movle	r0, #1
	moveq	r0, r2
	cmp	r0, #0
	bne	.LBB0_265
	b	.LBB0_259
.LBB0_259:                              @ %if.then186.i
	bl	__errno_location
	mov	r1, #34
	str	r1, [r0]
	mov	r0, r8
	b	.LBB0_260
.LBB0_260:                              @ %if.then186.i
	bl	__aeabi_i2d
	ldr	r4, .LCPI0_36
	mvn	r2, #0
	mov	r3, r4
	bl	__aeabi_dmul
	mvn	r2, #0
	mov	r3, r4
	b	.LBB0_269
.LCPI0_36:
	.long	2146435071              @ 0x7fefffff
.LBB0_261:                              @ %if.then139.i
	mov	r0, r8
	b	.LBB0_262
.LBB0_262:                              @ %return
	bl	__aeabi_i2d
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_269
.LBB0_263:                              @ %if.then154.i
	mov	r0, r8
	bl	__aeabi_i2d
	mov	r4, r0
	mov	r0, r5
	b	.LBB0_264
.LBB0_264:                              @ %if.then154.i
	mov	r6, r1
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_269
.LBB0_265:                              @ %if.end169.i
	sub	r0, r12, #106
	mov	r2, #0
	mov	r1, #0
	cmp	r10, r0
	b	.LBB0_266
.LBB0_266:                              @ %if.end169.i
	movhs	r2, #1
	cmp	r7, r0, asr #31
	movge	r1, #1
	moveq	r1, r2
	cmp	r1, #0
	bne	.LBB0_270
	b	.LBB0_267
.LBB0_267:                              @ %if.then196.i
	bl	__errno_location
	mov	r1, #34
	str	r1, [r0]
	mov	r0, r8
	b	.LBB0_268
.LBB0_268:                              @ %if.then196.i
	bl	__aeabi_i2d
	mov	r2, #0
	mov	r3, #1048576
	bl	__aeabi_dmul
	mov	r2, #0
	mov	r3, #1048576
	b	.LBB0_269
.LBB0_269:                              @ %return
	bl	__aeabi_dmul
	mov	r4, r0
	b	.LBB0_32
.LBB0_270:                              @ %if.end179.i
	ldr	r2, [sp, #40]           @ 4-byte Reload
	cmp	r2, #0
	beq	.LBB0_276
	b	.LBB0_271
.LBB0_271:                              @ %for.cond182.preheader.i
	cmp	r2, #8
	bgt	.LBB0_275
	b	.LBB0_272
.LBB0_272:                              @ %for.body185.lr.ph.i
	add	r0, sp, #52
	rsb	r2, r2, #9
	ldr	r1, [r0, r9, lsl #2]
	b	.LBB0_273
.LBB0_273:                              @ %for.body185.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r1, r1, lsl #2
	subs	r2, r2, #1
	lsl	r1, r1, #1
	bne	.LBB0_273
	b	.LBB0_274
.LBB0_274:                              @ %for.cond182.for.end190_crit_edge.i
	str	r1, [r0, r9, lsl #2]
	b	.LBB0_275
.LBB0_275:                              @ %for.end190.i
	add	r9, r9, #1
	b	.LBB0_276
.LBB0_276:                              @ %if.end192.i
	ldr	r0, [sp, #36]           @ 4-byte Reload
	cmp	r0, #8
	bgt	.LBB0_289
	b	.LBB0_277
.LBB0_277:                              @ %land.lhs.true196.i
	cmp	r0, r10
	cmple	r10, #17
	bgt	.LBB0_289
	b	.LBB0_278
.LBB0_278:                              @ %if.then202.i
	cmp	r10, #9
	bne	.LBB0_280
	b	.LBB0_279
.LBB0_279:                              @ %if.then205.i
	mov	r0, r8
	bl	__aeabi_i2d
	mov	r4, r0
	ldr	r0, [sp, #52]
	mov	r5, r1
	bl	__aeabi_ui2d
	b	.LBB0_343
.LBB0_280:                              @ %if.end210.i
	mov	r3, r12
	cmp	r10, #8
	bgt	.LBB0_286
	b	.LBB0_281
.LBB0_281:                              @ %if.then213.i
	mov	r0, r8
	bl	__aeabi_i2d
	mov	r4, r0
	ldr	r0, [sp, #52]
	b	.LBB0_282
.LBB0_282:                              @ %if.then213.i
	mov	r5, r1
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_283
.LBB0_283:                              @ %if.then213.i
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r5, r1
	b	.LBB0_284
.LBB0_284:                              @ %if.then213.i
	ldr	r1, .LCPI0_19
	mov	r4, r0
	rsb	r0, r10, #8
	ldr	r0, [r1, r0, lsl #2]
	b	.LBB0_285
.LCPI0_19:
	.long	decfloat.p10s
.LBB0_285:                              @ %if.then213.i
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r4, r0
	b	.LBB0_32
.LBB0_286:                              @ %if.end222.i
	ldr	r1, [sp, #12]           @ 4-byte Reload
	ldr	r4, [sp, #52]
	sub	r0, r10, r10, lsl #2
	mov	r12, r3
	b	.LBB0_287
.LBB0_287:                              @ %if.end222.i
	add	r0, r1, r0
	add	r0, r0, #27
	cmp	r0, #30
	bgt	.LBB0_339
	b	.LBB0_288
.LBB0_288:                              @ %if.end222.i
	lsr	r0, r4, r0
	cmp	r0, #0
	beq	.LBB0_339
	b	.LBB0_289
.LBB0_289:                              @ %if.end243.i
	ldr	r0, .LCPI0_18
	mov	r6, #0
	smull	r1, r2, r10, r0
	asr	r0, r2, #1
	b	.LBB0_290
.LCPI0_18:
	.long	954437177               @ 0x38e38e39
.LBB0_290:                              @ %if.end243.i
	add	r0, r0, r2, lsr #31
	add	r0, r0, r0, lsl #3
	subs	r0, r10, r0
	beq	.LBB0_302
	b	.LBB0_291
.LBB0_291:                              @ %if.then245.i
	cmp	r10, #0
	mov	r6, #0
	str	r12, [sp, #16]          @ 4-byte Spill
	str	r8, [sp, #20]           @ 4-byte Spill
	addlt	r0, r0, #9
	cmp	r9, #0
	beq	.LBB0_303
	b	.LBB0_292
.LBB0_292:                              @ %for.body260.lr.ph.i
	ldr	r1, .LCPI0_20
	str	r0, [sp, #44]           @ 4-byte Spill
	rsb	r0, r0, #8
	ldr	r4, [r1, r0, lsl #2]
	b	.LBB0_293
.LCPI0_20:
	.long	decfloat.p10s
.LBB0_293:                              @ %for.body260.lr.ph.i
	ldr	r0, .LCPI0_22
	mov	r1, r4
	bl	__aeabi_idiv
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB0_294
.LCPI0_22:
	.long	1000000000              @ 0x3b9aca00
.LBB0_294:                              @ %for.body260.lr.ph.i
	mov	r8, #0
	add	r0, sp, #52
	mov	r5, #0
	mov	r11, #0
	b	.LBB0_295
.LBB0_295:                              @ %for.body260.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0, r5, lsl #2]
	mov	r6, r0
	mov	r1, r4
	mov	r0, r7
	b	.LBB0_296
.LBB0_296:                              @ %for.body260.i
                                        @   in Loop: Header=BB0_295 Depth=1
	bl	__aeabi_uidiv
	add	r0, r0, r8
	cmp	r5, r11
	mov	r1, #0
	b	.LBB0_297
.LBB0_297:                              @ %for.body260.i
                                        @   in Loop: Header=BB0_295 Depth=1
	str	r0, [r6, r5, lsl #2]
	moveq	r1, #1
	cmp	r0, #0
	mov	r0, #0
	b	.LBB0_298
.LBB0_298:                              @ %for.body260.i
                                        @   in Loop: Header=BB0_295 Depth=1
	add	r5, r5, #1
	moveq	r0, #1
	ands	r0, r1, r0
	mov	r1, r4
	b	.LBB0_299
.LBB0_299:                              @ %for.body260.i
                                        @   in Loop: Header=BB0_295 Depth=1
	mov	r0, r7
	andne	r11, r5, #127
	subne	r10, r10, #9
	bl	__umodsi3
	b	.LBB0_300
.LBB0_300:                              @ %for.body260.i
                                        @   in Loop: Header=BB0_295 Depth=1
	ldr	r1, [sp, #48]           @ 4-byte Reload
	cmp	r9, r5
	mul	r8, r0, r1
	mov	r0, r6
	bne	.LBB0_295
	b	.LBB0_301
.LBB0_301:                              @ %for.end280.i
	cmp	r8, #0
	mov	r6, #0
	strne	r8, [r0, r9, lsl #2]
	ldr	r0, [sp, #44]           @ 4-byte Reload
	addne	r9, r9, #1
	b	.LBB0_304
.LBB0_302:
	str	r12, [sp, #16]          @ 4-byte Spill
	str	r8, [sp, #20]           @ 4-byte Spill
	mov	r11, #0
	b	.LBB0_306
.LBB0_303:
	mov	r11, #0
	mov	r9, #0
	b	.LBB0_304
.LBB0_304:                              @ %if.end285.i
	rsb	r0, r0, #9
	add	r10, r0, r10
	b	.LBB0_306
.LBB0_305:                              @ %if.end357.i
                                        @   in Loop: Header=BB0_306 Depth=1
	ldr	r10, [sp, #44]          @ 4-byte Reload
	add	r0, sp, #52
	str	r8, [r0, r11, lsl #2]
	add	r10, r10, #9
	b	.LBB0_306
.LBB0_306:                              @ %while.cond.outer.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_322 Depth 2
                                        @       Child Loop BB0_324 Depth 3
                                        @     Child Loop BB0_308 Depth 2
                                        @       Child Loop BB0_309 Depth 3
	cmp	r10, #18
	bge	.LBB0_320
	b	.LBB0_307
.LBB0_307:                              @   in Loop: Header=BB0_306 Depth=1
	str	r10, [sp, #44]          @ 4-byte Spill
	add	r10, sp, #52
	b	.LBB0_308
.LBB0_308:                              @ %while.body.us.i
                                        @   Parent Loop BB0_306 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_309 Depth 3
	add	r0, r9, #127
	mov	r8, #0
	str	r6, [sp, #48]           @ 4-byte Spill
	b	.LBB0_309
.LBB0_309:                              @ %for.cond303.us.i
                                        @   Parent Loop BB0_306 Depth=1
                                        @     Parent Loop BB0_308 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	and	r4, r0, #127
	ldr	r0, [r10, r4, lsl #2]
	adds	r6, r8, r0, lsl #29
	lsr	r1, r0, #3
	b	.LBB0_310
.LBB0_310:                              @ %for.cond303.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	ldr	r0, .LCPI0_34
	mov	r8, #0
	adc	r7, r1, #0
	cmp	r6, r0
	b	.LBB0_311
.LCPI0_34:
	.long	1000000001              @ 0x3b9aca01
.LBB0_311:                              @ %for.cond303.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	mov	r0, #0
	movlo	r0, #1
	cmp	r7, #0
	movne	r0, r8
	cmp	r0, #0
	bne	.LBB0_315
	b	.LBB0_312
.LBB0_312:                              @ %if.then312.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	ldr	r5, .LCPI0_23
	mov	r0, r6
	mov	r1, r7
	mov	r3, #0
	b	.LBB0_313
.LCPI0_23:
	.long	1000000000              @ 0x3b9aca00
.LBB0_313:                              @ %if.then312.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	mov	r2, r5
	bl	__aeabi_uldivmod
	mov	r8, r0
	mov	r0, r6
	b	.LBB0_314
.LBB0_314:                              @ %if.then312.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	mov	r1, r7
	mov	r2, r5
	mov	r3, #0
	bl	__umoddi3
	mov	r6, r0
	b	.LBB0_315
.LBB0_315:                              @ %if.end321.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	add	r1, r9, #127
	cmp	r4, r11
	mov	r0, #0
	str	r6, [r10, r4, lsl #2]
	b	.LBB0_316
.LBB0_316:                              @ %if.end321.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	and	r1, r1, #127
	moveq	r0, #1
	cmp	r4, r1
	mov	r1, #0
	b	.LBB0_317
.LBB0_317:                              @ %if.end321.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	movne	r1, #1
	cmp	r6, #0
	orr	r0, r1, r0
	mov	r1, r9
	b	.LBB0_318
.LBB0_318:                              @ %if.end321.us.i
                                        @   in Loop: Header=BB0_309 Depth=3
	moveq	r1, r4
	cmp	r0, #0
	sub	r0, r4, #1
	moveq	r9, r1
	cmp	r4, r11
	bne	.LBB0_309
	b	.LBB0_319
.LBB0_319:                              @ %for.end341.us.i
                                        @   in Loop: Header=BB0_308 Depth=2
	ldr	r6, [sp, #48]           @ 4-byte Reload
	cmp	r8, #0
	sub	r6, r6, #29
	beq	.LBB0_308
	b	.LBB0_335
.LBB0_320:                              @ %while.cond.outer.while.cond.outer.split_crit_edge.i
                                        @   in Loop: Header=BB0_306 Depth=1
	str	r10, [sp, #44]          @ 4-byte Spill
	bne	.LBB0_344
	b	.LBB0_321
.LBB0_321:                              @   in Loop: Header=BB0_306 Depth=1
	add	r10, sp, #52
	b	.LBB0_322
.LBB0_322:                              @ %land.rhs.us892.i
                                        @   Parent Loop BB0_306 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_324 Depth 3
	ldr	r0, [r10, r11, lsl #2]
	ldr	r1, .LCPI0_26
	cmp	r0, r1
	bhi	.LBB0_338
	b	.LBB0_323
.LCPI0_26:
	.long	9007198                 @ 0x89705e
.LBB0_323:                              @ %while.body.us894.i
                                        @   in Loop: Header=BB0_322 Depth=2
	add	r0, r9, #127
	mov	r2, #0
	mov	r8, #0
	str	r6, [sp, #48]           @ 4-byte Spill
	b	.LBB0_324
.LBB0_324:                              @ %for.cond303.us897.i
                                        @   Parent Loop BB0_306 Depth=1
                                        @     Parent Loop BB0_322 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	and	r4, r0, #127
	ldr	r0, [r10, r4, lsl #2]
	adds	r6, r8, r0, lsl #29
	lsr	r1, r0, #3
	b	.LBB0_325
.LBB0_325:                              @ %for.cond303.us897.i
                                        @   in Loop: Header=BB0_324 Depth=3
	ldr	r0, .LCPI0_35
	mov	r8, #0
	adc	r7, r1, #0
	cmp	r6, r0
	b	.LBB0_326
.LCPI0_35:
	.long	1000000001              @ 0x3b9aca01
.LBB0_326:                              @ %for.cond303.us897.i
                                        @   in Loop: Header=BB0_324 Depth=3
	mov	r0, #0
	movlo	r0, #1
	cmp	r7, #0
	movne	r0, r2
	cmp	r0, #0
	bne	.LBB0_330
	b	.LBB0_327
.LBB0_327:                              @ %if.then312.us909.i
                                        @   in Loop: Header=BB0_324 Depth=3
	ldr	r5, .LCPI0_24
	mov	r0, r6
	mov	r1, r7
	mov	r3, #0
	b	.LBB0_328
.LCPI0_24:
	.long	1000000000              @ 0x3b9aca00
.LBB0_328:                              @ %if.then312.us909.i
                                        @   in Loop: Header=BB0_324 Depth=3
	mov	r2, r5
	bl	__aeabi_uldivmod
	mov	r8, r0
	mov	r0, r6
	b	.LBB0_329
.LBB0_329:                              @ %if.then312.us909.i
                                        @   in Loop: Header=BB0_324 Depth=3
	mov	r1, r7
	mov	r2, r5
	mov	r3, #0
	bl	__umoddi3
	mov	r2, #0
	mov	r6, r0
	b	.LBB0_330
.LBB0_330:                              @ %if.end321.us914.i
                                        @   in Loop: Header=BB0_324 Depth=3
	add	r1, r9, #127
	cmp	r4, r11
	mov	r0, #0
	str	r6, [r10, r4, lsl #2]
	b	.LBB0_331
.LBB0_331:                              @ %if.end321.us914.i
                                        @   in Loop: Header=BB0_324 Depth=3
	and	r1, r1, #127
	moveq	r0, #1
	cmp	r4, r1
	mov	r1, #0
	b	.LBB0_332
.LBB0_332:                              @ %if.end321.us914.i
                                        @   in Loop: Header=BB0_324 Depth=3
	movne	r1, #1
	cmp	r6, #0
	orr	r0, r1, r0
	mov	r1, r9
	b	.LBB0_333
.LBB0_333:                              @ %if.end321.us914.i
                                        @   in Loop: Header=BB0_324 Depth=3
	moveq	r1, r4
	cmp	r0, #0
	sub	r0, r4, #1
	moveq	r9, r1
	cmp	r4, r11
	bne	.LBB0_324
	b	.LBB0_334
.LBB0_334:                              @ %for.end341.us926.i
                                        @   in Loop: Header=BB0_322 Depth=2
	ldr	r6, [sp, #48]           @ 4-byte Reload
	cmp	r8, #0
	sub	r6, r6, #29
	beq	.LBB0_322
	b	.LBB0_335
.LBB0_335:                              @ %if.then343.i
                                        @   in Loop: Header=BB0_306 Depth=1
	add	r0, r11, #127
	and	r11, r0, #127
	cmp	r11, r9
	bne	.LBB0_305
	b	.LBB0_336
.LBB0_336:                              @ %if.then349.i
                                        @   in Loop: Header=BB0_306 Depth=1
	add	r0, r9, #127
	add	r3, r9, #126
	add	r1, sp, #52
	and	r0, r0, #127
	b	.LBB0_337
.LBB0_337:                              @ %if.then349.i
                                        @   in Loop: Header=BB0_306 Depth=1
	and	r3, r3, #127
	ldr	r2, [r1, r0, lsl #2]
	ldr	r7, [r1, r3, lsl #2]
	mov	r9, r0
	orr	r2, r7, r2
	str	r2, [r1, r3, lsl #2]
	b	.LBB0_305
.LBB0_338:
	mov	r2, #18
	b	.LBB0_346
.LBB0_339:                              @ %if.then233.i
	mov	r0, r8
	bl	__aeabi_i2d
	mov	r5, r0
	mov	r0, r4
	b	.LBB0_340
.LBB0_340:                              @ %if.then233.i
	mov	r6, r1
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_341
.LBB0_341:                              @ %if.then233.i
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dmul
	mov	r4, r0
	b	.LBB0_342
.LBB0_342:                              @ %if.then233.i
	ldr	r0, .LCPI0_21
	mov	r5, r1
	add	r0, r0, r10, lsl #2
	ldr	r0, [r0, #-40]
	bl	__aeabi_i2d
	b	.LBB0_343
.LCPI0_21:
	.long	decfloat.p10s
.LBB0_343:                              @ %decfloat.exit
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_269
.LBB0_344:
	ldr	r2, [sp, #44]           @ 4-byte Reload
	b	.LBB0_346
.LBB0_345:                              @ %if.then439.i
                                        @   in Loop: Header=BB0_346 Depth=1
	str	r1, [r10, r9, lsl #2]
	mov	r9, lr
	b	.LBB0_346
.LBB0_346:                              @ %for.cond360.outer.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_364 Depth 2
                                        @       Child Loop BB0_348 Depth 3
                                        @       Child Loop BB0_359 Depth 3
	add	r0, r9, #127
	add	r10, sp, #52
	and	r8, r0, #127
	add	r0, r9, #1
	and	lr, r0, #127
	b	.LBB0_364
.LBB0_347:                              @ %if.else443.i
                                        @   in Loop: Header=BB0_364 Depth=2
	ldr	r0, [r10, r8, lsl #2]
	orr	r0, r0, #1
	str	r0, [r10, r8, lsl #2]
	b	.LBB0_364
.LBB0_348:                              @ %for.cond360.i
                                        @   Parent Loop BB0_346 Depth=1
                                        @     Parent Loop BB0_364 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r7, r11
	and	r5, r7, #127
	cmp	r5, r9
	beq	.LBB0_353
	b	.LBB0_349
.LBB0_349:                              @ %lor.lhs.false372.i
                                        @   in Loop: Header=BB0_348 Depth=3
	ldr	r1, [r10, r5, lsl #2]
	ldr	r4, .LCPI0_27
	cmp	r1, r4
	blo	.LBB0_353
	b	.LBB0_350
.LCPI0_27:
	.long	9007199                 @ 0x89705f
.LBB0_350:                              @ %if.end378.i
                                        @   in Loop: Header=BB0_348 Depth=3
	ldr	r4, .LCPI0_28
	cmp	r1, r4
	bhi	.LBB0_354
	b	.LBB0_351
.LCPI0_28:
	.long	9007199                 @ 0x89705f
.LBB0_351:                              @ %for.inc387.i
                                        @   in Loop: Header=BB0_348 Depth=3
	add	r1, r7, #1
	and	r1, r1, #127
	cmp	r1, r9
	beq	.LBB0_353
	b	.LBB0_352
.LBB0_352:                              @ %lor.lhs.false372.1.i
                                        @   in Loop: Header=BB0_348 Depth=3
	ldr	r1, [r10, r1, lsl #2]
	ldr	r0, .LCPI0_29
	cmp	r1, r0
	bhs	.LBB0_355
	b	.LBB0_353
.LCPI0_29:
	.long	254740991               @ 0xf2f09ff
.LBB0_353:                              @ %for.end389.i
                                        @   in Loop: Header=BB0_348 Depth=3
	cmp	r2, #18
	beq	.LBB0_366
	b	.LBB0_354
.LBB0_354:                              @ %if.end396.i
                                        @   in Loop: Header=BB0_348 Depth=3
	add	r6, r6, r3
	mov	r11, r9
	cmp	r7, r9
	beq	.LBB0_348
	b	.LBB0_357
.LBB0_355:                              @ %if.end378.1.i
                                        @   in Loop: Header=BB0_348 Depth=3
	cmp	r2, #18
	bne	.LBB0_354
	b	.LBB0_356
.LBB0_356:                              @ %if.end378.1.i
                                        @   in Loop: Header=BB0_348 Depth=3
	ldr	r0, .LCPI0_30
	cmp	r1, r0
	bhs	.LBB0_354
	b	.LBB0_368
.LCPI0_30:
	.long	254740992               @ 0xf2f0a00
.LBB0_357:                              @ %for.body405.lr.ph.i
                                        @   in Loop: Header=BB0_364 Depth=2
	mov	r0, #1
	mvn	r1, #0
	mov	r12, r6
	mov	r11, r7
	b	.LBB0_358
.LBB0_358:                              @ %for.body405.lr.ph.i
                                        @   in Loop: Header=BB0_364 Depth=2
	add	r5, r1, r0, lsl r3
	ldr	r1, .LCPI0_25
	lsr	r4, r1, r3
	mov	r1, #0
	b	.LBB0_359
.LCPI0_25:
	.long	1000000000              @ 0x3b9aca00
.LBB0_359:                              @ %for.body405.i
                                        @   Parent Loop BB0_346 Depth=1
                                        @     Parent Loop BB0_364 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r6, [r10, r7, lsl #2]
	cmp	r7, r11
	mov	r0, #0
	moveq	r0, #1
	b	.LBB0_360
.LBB0_360:                              @ %for.body405.i
                                        @   in Loop: Header=BB0_359 Depth=3
	add	r1, r1, r6, lsr r3
	str	r1, [r10, r7, lsl #2]
	cmp	r1, #0
	mov	r1, #0
	b	.LBB0_361
.LBB0_361:                              @ %for.body405.i
                                        @   in Loop: Header=BB0_359 Depth=3
	moveq	r1, #1
	ands	r0, r0, r1
	add	r0, r7, #1
	subne	r2, r2, #9
	b	.LBB0_362
.LBB0_362:                              @ %for.body405.i
                                        @   in Loop: Header=BB0_359 Depth=3
	and	r7, r0, #127
	and	r0, r6, r5
	movne	r11, r7
	mul	r1, r0, r4
	cmp	r7, r9
	bne	.LBB0_359
	b	.LBB0_363
.LBB0_363:                              @ %for.end432.i
                                        @   in Loop: Header=BB0_364 Depth=2
	mov	r6, r12
	cmp	r1, #0
	bne	.LBB0_365
	b	.LBB0_364
.LBB0_364:                              @ %for.cond360.i.outer
                                        @   Parent Loop BB0_346 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_348 Depth 3
                                        @       Child Loop BB0_359 Depth 3
	cmp	r2, #27
	mov	r3, #1
	movgt	r3, #9
	b	.LBB0_348
.LBB0_365:                              @ %if.then434.i
                                        @   in Loop: Header=BB0_364 Depth=2
	cmp	lr, r11
	beq	.LBB0_347
	b	.LBB0_345
.LBB0_366:                              @ %for.cond451.preheader.i
	cmp	r5, r9
	bne	.LBB0_368
	b	.LBB0_367
.LBB0_367:                              @ %if.then459.i
	mov	r4, lr
	mov	r5, r9
	mov	r1, #0
	str	r6, [sp, #48]           @ 4-byte Spill
	add	r0, r10, r4, lsl #2
	str	r1, [r0, #-4]
	b	.LBB0_369
.LBB0_368:
	str	r6, [sp, #48]           @ 4-byte Spill
	mov	r4, r9
	b	.LBB0_369
.LBB0_369:                              @ %if.end464.i
	ldr	r0, [r10, r5, lsl #2]
	ldr	r9, [sp, #20]           @ 4-byte Reload
	bl	__aeabi_ui2d
	add	r2, r7, #1
	and	r8, r2, #127
	cmp	r8, r4
	bne	.LBB0_371
	b	.LBB0_370
.LBB0_370:                              @ %if.then459.1.i
	add	r2, r7, #2
	mov	r3, #0
	and	r4, r2, #127
	add	r2, r10, r4, lsl #2
	str	r3, [r2, #-4]
	b	.LBB0_371
.LBB0_371:                              @ %if.end464.1.i
	mov	r2, #0
	str	r4, [sp, #40]           @ 4-byte Spill
	str	r2, [sp, #44]           @ 4-byte Spill
	ldr	r3, .LCPI0_31
	b	.LBB0_372
.LCPI0_31:
	.long	1104006501              @ 0x41cdcd65
.LBB0_372:                              @ %if.end464.1.i
	mov	r2, #0
	bl	__aeabi_dmul
	mov	r4, r0
	ldr	r0, [r10, r8, lsl #2]
	b	.LBB0_373
.LBB0_373:                              @ %if.end464.1.i
	mov	r5, r1
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_374
.LBB0_374:                              @ %if.end464.1.i
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r4, r0
	b	.LBB0_375
.LBB0_375:                              @ %if.end464.1.i
	mov	r0, r9
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r4
	b	.LBB0_376
.LBB0_376:                              @ %if.end464.1.i
	mov	r3, r5
	stmib	sp, {r0, r1}
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_377
.LBB0_377:                              @ %if.end464.1.i
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r8, r1
	add	r1, r0, #53
	ldr	r0, [sp, #16]           @ 4-byte Reload
	b	.LBB0_378
.LBB0_378:                              @ %if.end464.1.i
	str	r1, [sp, #36]           @ 4-byte Spill
	sub	r1, r1, r0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r1, #0
	b	.LBB0_379
.LBB0_379:                              @ %if.end464.1.i
	mov	r11, r1
	str	r1, [sp, #16]           @ 4-byte Spill
	movlt	r11, #0
	cmp	r1, r0
	b	.LBB0_380
.LBB0_380:                              @ %if.end464.1.i
	movge	r11, r0
	mov	r0, #0
	movlt	r0, #1
	cmp	r11, #53
	str	r0, [sp, #20]           @ 4-byte Spill
	bge	.LBB0_390
	b	.LBB0_381
.LBB0_381:                              @ %if.then490.i
	mov	r5, #267386880
	mov	r4, r2
	rsb	r2, r11, #105
	mov	r0, #0
	b	.LBB0_382
.LBB0_382:                              @ %if.then490.i
	orr	r5, r5, #805306368
	mov	r1, r5
	bl	scalbn
	mov	r2, r4
	b	.LBB0_383
.LBB0_383:                              @ %if.then490.i
	mov	r3, r8
	bl	copysignl
	mov	r9, r8
	mov	r8, r0
	b	.LBB0_384
.LBB0_384:                              @ %if.then490.i
	mov	r6, r1
	rsb	r2, r11, #53
	mov	r0, #0
	mov	r1, r5
	b	.LBB0_385
.LBB0_385:                              @ %if.then490.i
	str	r8, [sp, #24]           @ 4-byte Spill
	bl	scalbn
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_386
.LBB0_386:                              @ %if.then490.i
	mov	r0, r4
	mov	r1, r9
	bl	fmodl
	mov	r2, r0
	b	.LBB0_387
.LBB0_387:                              @ %if.then490.i
	mov	r3, r1
	mov	r0, r4
	mov	r1, r9
	str	r2, [sp, #44]           @ 4-byte Spill
	b	.LBB0_388
.LBB0_388:                              @ %if.then490.i
	mov	r4, r3
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_389
.LBB0_389:                              @ %if.then490.i
	mov	r0, r8
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r8, r1
	b	.LBB0_391
.LBB0_390:
	mov	r0, #0
	mov	r4, #0
	mov	r6, #0
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB0_391
.LBB0_391:                              @ %if.end500.i
	ldr	r1, [sp, #40]           @ 4-byte Reload
	add	r0, r7, #2
	and	r0, r0, #127
	cmp	r0, r1
	bne	.LBB0_393
	b	.LBB0_392
.LBB0_392:
	ldr	r5, [sp, #32]           @ 4-byte Reload
	ldr	r7, [sp, #44]           @ 4-byte Reload
	b	.LBB0_410
.LBB0_393:                              @ %if.then505.i
	ldr	r0, [r10, r0, lsl #2]
	ldr	r1, .LCPI0_32
	mov	r10, r2
	cmp	r0, r1
	bhi	.LBB0_397
	b	.LBB0_394
.LCPI0_32:
	.long	499999999               @ 0x1dcd64ff
.LBB0_394:                              @ %land.lhs.true512.i
	cmp	r0, #0
	bne	.LBB0_400
	b	.LBB0_395
.LBB0_395:                              @ %lor.lhs.false514.i
	ldr	r1, [sp, #40]           @ 4-byte Reload
	add	r0, r7, #3
	and	r0, r0, #127
	cmp	r0, r1
	bne	.LBB0_400
	b	.LBB0_396
.LBB0_396:
	ldr	r5, [sp, #32]           @ 4-byte Reload
	ldr	r7, [sp, #44]           @ 4-byte Reload
	b	.LBB0_404
.LBB0_397:                              @ %if.else524.i
	ldr	r1, .LCPI0_33
	cmp	r0, r1
	bhs	.LBB0_401
	b	.LBB0_398
.LCPI0_33:
	.long	500000001               @ 0x1dcd6501
.LBB0_398:                              @ %if.then534.i
	ldr	r1, [sp, #40]           @ 4-byte Reload
	add	r0, r7, #3
	and	r0, r0, #127
	cmp	r0, r1
	bne	.LBB0_401
	b	.LBB0_399
.LBB0_399:                              @ %if.then540.i
	mov	r3, #266338304
	orr	r3, r3, #805306368
	b	.LBB0_402
.LBB0_400:                              @ %if.then520.i
	mov	r3, #265289728
	orr	r3, r3, #805306368
	b	.LBB0_402
.LBB0_401:                              @ %if.else544.i
	mov	r3, #65536000
	orr	r3, r3, #1006632960
	b	.LBB0_402
.LBB0_402:                              @ %if.end551.i
	ldmib	sp, {r0, r1}
	mov	r2, #0
	bl	__aeabi_dmul
	ldr	r2, [sp, #44]           @ 4-byte Reload
	b	.LBB0_403
.LBB0_403:                              @ %if.end551.i
	mov	r3, r4
	bl	__aeabi_dadd
	ldr	r5, [sp, #32]           @ 4-byte Reload
	mov	r7, r0
	mov	r4, r1
	b	.LBB0_404
.LBB0_404:                              @ %if.end551.i
	rsb	r0, r11, #53
	cmp	r0, #2
	blt	.LBB0_409
	b	.LBB0_405
.LBB0_405:                              @ %land.lhs.true555.i
	mov	r3, #267386880
	mov	r0, r7
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_406
.LBB0_406:                              @ %land.lhs.true555.i
	orr	r3, r3, #805306368
	bl	fmodl
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_409
	b	.LBB0_407
.LBB0_407:                              @ %if.then558.i
	mov	r3, #267386880
	mov	r0, r7
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_408
.LBB0_408:                              @ %if.then558.i
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r7, r0
	mov	r4, r1
	b	.LBB0_409
.LBB0_409:                              @ %if.end561.i
	mov	r2, r10
	b	.LBB0_410
.LBB0_410:                              @ %if.end561.i
	mov	r0, r2
	mov	r1, r8
	mov	r2, r7
	mov	r3, r4
	b	.LBB0_411
.LBB0_411:                              @ %if.end561.i
	bl	__aeabi_dadd
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r3, r6
	bl	__aeabi_dsub
	b	.LBB0_412
.LBB0_412:                              @ %if.end561.i
	mov	r6, r1
	ldr	r1, [sp, #36]           @ 4-byte Reload
	mov	r10, r0
	mvn	r0, #1
	b	.LBB0_413
.LBB0_413:                              @ %if.end561.i
	sub	r0, r0, r5
	bic	r1, r1, #-2147483648
	cmp	r1, r0
	ble	.LBB0_429
	b	.LBB0_414
.LBB0_414:                              @ %if.then569.i
	mov	r0, r10
	mov	r1, r6
	str	r4, [sp, #40]           @ 4-byte Spill
	str	r7, [sp, #44]           @ 4-byte Spill
	b	.LBB0_415
.LBB0_415:                              @ %if.then569.i
	bl	fabs
	mov	r9, #54525952
	mov	r7, r0
	mov	r5, r1
	b	.LBB0_416
.LBB0_416:                              @ %if.then569.i
	mov	r2, #0
	orr	r9, r9, #1073741824
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_417
.LBB0_417:                              @ %if.then569.i
	mov	r3, r9
	bl	__aeabi_dcmplt
	mov	r4, r0
	mov	r0, r7
	b	.LBB0_418
.LBB0_418:                              @ %if.then569.i
	mov	r1, r5
	mov	r2, #0
	mov	r3, r9
	bl	__aeabi_dcmpun
	orrs	r0, r0, r4
	beq	.LBB0_420
	b	.LBB0_419
.LBB0_419:
	ldr	r1, [sp, #48]           @ 4-byte Reload
	ldr	r8, [sp, #20]           @ 4-byte Reload
	b	.LBB0_425
.LBB0_420:                              @ %if.then573.i
	ldr	r2, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	r0, #0
	ldr	r8, [sp, #20]           @ 4-byte Reload
	b	.LBB0_421
.LBB0_421:                              @ %if.then573.i
	mov	r3, #266338304
	orr	r3, r3, #805306368
	cmp	r11, r2
	moveq	r0, #1
	b	.LBB0_422
.LBB0_422:                              @ %if.then573.i
	cmp	r2, r1
	mov	r1, #0
	mov	r2, #0
	movlt	r1, #1
	b	.LBB0_423
.LBB0_423:                              @ %if.then573.i
	tst	r1, r0
	mov	r0, r10
	mov	r1, r6
	movne	r8, #0
	b	.LBB0_424
.LBB0_424:                              @ %if.then573.i
	bl	__aeabi_dmul
	mov	r6, r1
	ldr	r1, [sp, #48]           @ 4-byte Reload
	mov	r10, r0
	add	r1, r1, #1
	b	.LBB0_425
.LBB0_425:                              @ %if.end584.i
	ldr	r0, [sp, #44]           @ 4-byte Reload
	ldr	r3, [sp, #40]           @ 4-byte Reload
	str	r1, [sp, #48]           @ 4-byte Spill
	add	r2, r1, #50
	ldr	r1, [sp, #28]           @ 4-byte Reload
	cmp	r2, r1
	bgt	.LBB0_428
	b	.LBB0_426
.LBB0_426:                              @ %lor.lhs.false588.i
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_429
	b	.LBB0_427
.LBB0_427:                              @ %lor.lhs.false588.i
	cmp	r8, #0
	beq	.LBB0_429
	b	.LBB0_428
.LBB0_428:                              @ %if.then592.i
	bl	__errno_location
	mov	r1, #34
	str	r1, [r0]
	b	.LBB0_429
.LBB0_429:                              @ %if.end595.i
	ldr	r2, [sp, #48]           @ 4-byte Reload
	mov	r0, r10
	mov	r1, r6
	bl	scalbnl
	mov	r4, r0
	b	.LBB0_32
.Ltmp0:
	.size	__floatscan, .Ltmp0-__floatscan
	.cantunwind
	.fnend

	.align	2
	.type	scanexp,%function
scanexp:                                @ @scanexp
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB1_4
	b	.LBB1_3
.LBB1_3:                                @ %cond.true
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB1_5
.LBB1_4:                                @ %cond.false
	mov	r0, r4
	bl	__shgetc
	b	.LBB1_5
.LBB1_5:                                @ %cond.end
	cmp	r0, #43
	movne	r8, #0
	cmpne	r0, #45
	bne	.LBB1_12
	b	.LBB1_6
.LBB1_6:                                @ %if.then
	cmp	r0, #45
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	mov	r8, #0
	moveq	r8, #1
	cmp	r0, r1
	bhs	.LBB1_8
	b	.LBB1_7
.LBB1_7:                                @ %cond.true12
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB1_9
.LBB1_8:                                @ %cond.false16
	mov	r0, r4
	bl	__shgetc
	b	.LBB1_9
.LBB1_9:                                @ %cond.end18
	cmp	r5, #0
	beq	.LBB1_12
	b	.LBB1_10
.LBB1_10:                               @ %cond.end18
	sub	r1, r0, #48
	cmp	r1, #10
	blo	.LBB1_12
	b	.LBB1_11
.LBB1_11:                               @ %if.then22
	ldr	r1, [r4, #104]
	cmp	r1, #0
	ldrne	r1, [r4, #4]
	subne	r1, r1, #1
	strne	r1, [r4, #4]
	b	.LBB1_12
.LBB1_12:                               @ %if.end30
	sub	r1, r0, #48
	cmp	r1, #10
	blo	.LBB1_15
	b	.LBB1_13
.LBB1_13:                               @ %if.then34
	ldr	r2, [r4, #104]
	mov	r1, #-2147483648
	mov	r0, #0
	cmp	r2, #0
	b	.LBB1_14
.LBB1_14:                               @ %if.then34
	ldrne	r2, [r4, #4]
	subne	r2, r2, #1
	strne	r2, [r4, #4]
	popne	{r4, r5, r6, r7, r8, lr}
	movne	pc, lr
	b	.LBB1_37
.LBB1_15:
	mov	r5, #0
	b	.LBB1_16
.LBB1_16:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r5, r5, lsl #2
	add	r5, r0, r1, lsl #1
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB1_18
	b	.LBB1_17
.LBB1_17:                               @ %cond.true53
                                        @   in Loop: Header=BB1_16 Depth=1
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB1_19
.LBB1_18:                               @ %cond.false57
                                        @   in Loop: Header=BB1_16 Depth=1
	mov	r0, r4
	bl	__shgetc
	b	.LBB1_19
.LBB1_19:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB1_16 Depth=1
	sub	r1, r0, #48
	sub	r5, r5, #48
	cmp	r1, #9
	bhi	.LBB1_21
	b	.LBB1_20
.LBB1_20:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB1_16 Depth=1
	ldr	r2, .LCPI1_0
	cmp	r5, r2
	blt	.LBB1_16
	b	.LBB1_21
.LCPI1_0:
	.long	214748364               @ 0xccccccc
.LBB1_21:                               @ %for.end
	asr	r7, r5, #31
	cmp	r1, #10
	bhs	.LBB1_32
	b	.LBB1_22
.LBB1_22:
	mov	r6, #10
	b	.LBB1_23
.LBB1_23:                               @ %for.body70
                                        @ =>This Inner Loop Header: Depth=1
	umull	r1, r2, r5, r6
	add	r3, r7, r7, lsl #2
	add	r2, r2, r3, lsl #1
	asr	r3, r0, #31
	b	.LBB1_24
.LBB1_24:                               @ %for.body70
                                        @   in Loop: Header=BB1_23 Depth=1
	adds	r0, r0, r1
	adc	r1, r3, r2
	subs	r5, r0, #48
	ldr	r0, [r4, #4]
	b	.LBB1_25
.LBB1_25:                               @ %for.body70
                                        @   in Loop: Header=BB1_23 Depth=1
	sbc	r7, r1, #0
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB1_27
	b	.LBB1_26
.LBB1_26:                               @ %cond.true80
                                        @   in Loop: Header=BB1_23 Depth=1
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB1_28
.LBB1_27:                               @ %cond.false84
                                        @   in Loop: Header=BB1_23 Depth=1
	mov	r0, r4
	bl	__shgetc
	b	.LBB1_28
.LBB1_28:                               @ %for.cond62.backedge
                                        @   in Loop: Header=BB1_23 Depth=1
	sub	r1, r0, #48
	cmp	r1, #9
	bhi	.LBB1_32
	b	.LBB1_29
.LBB1_29:                               @ %for.cond62.backedge
                                        @   in Loop: Header=BB1_23 Depth=1
	ldr	r1, .LCPI1_3
	ldr	r2, .LCPI1_4
	cmp	r5, r1
	mov	r1, #0
	b	.LBB1_30
.LCPI1_3:
	.long	2061584302              @ 0x7ae147ae
.LCPI1_4:
	.long	21474836                @ 0x147ae14
.LBB1_30:                               @ %for.cond62.backedge
                                        @   in Loop: Header=BB1_23 Depth=1
	movlo	r1, #1
	cmp	r7, r2
	mov	r2, #0
	movlt	r2, #1
	moveq	r2, r1
	cmp	r2, #0
	bne	.LBB1_23
	b	.LBB1_32
.LBB1_31:                               @ %cond.false103
                                        @   in Loop: Header=BB1_32 Depth=1
	mov	r0, r4
	bl	__shgetc
	b	.LBB1_32
.LBB1_32:                               @ %for.cond89.preheader
                                        @ =>This Inner Loop Header: Depth=1
	sub	r0, r0, #48
	cmp	r0, #10
	bhs	.LBB1_35
	b	.LBB1_33
.LBB1_33:                               @ %for.inc94
                                        @   in Loop: Header=BB1_32 Depth=1
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB1_31
	b	.LBB1_34
.LBB1_34:                               @ %cond.true99
                                        @   in Loop: Header=BB1_32 Depth=1
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB1_32
.LBB1_35:                               @ %for.end107
	ldr	r0, [r4, #104]
	cmp	r0, #0
	ldrne	r0, [r4, #4]
	subne	r0, r0, #1
	b	.LBB1_36
.LBB1_36:                               @ %for.end107
	strne	r0, [r4, #4]
	rsbs	r0, r5, #0
	rsc	r1, r7, #0
	cmp	r8, #0
	moveq	r0, r5
	moveq	r1, r7
	b	.LBB1_37
.LBB1_37:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	scanexp, .Ltmp1-scanexp
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"infinity"
	.size	.L.str, 9

	.type	decfloat.p10s,%object   @ @decfloat.p10s
	.section	.rodata,"a",%progbits
	.align	2
decfloat.p10s:
	.long	10                      @ 0xa
	.long	100                     @ 0x64
	.long	1000                    @ 0x3e8
	.long	10000                   @ 0x2710
	.long	100000                  @ 0x186a0
	.long	1000000                 @ 0xf4240
	.long	10000000                @ 0x989680
	.long	100000000               @ 0x5f5e100
	.size	decfloat.p10s, 32

	.type	.Lswitch.table,%object  @ @switch.table
	.align	2
.Lswitch.table:
	.long	24                      @ 0x18
	.long	53                      @ 0x35
	.long	53                      @ 0x35
	.size	.Lswitch.table, 12

	.type	.Lswitch.table2,%object @ @switch.table2
	.align	2
.Lswitch.table2:
	.long	4294967147              @ 0xffffff6b
	.long	4294966222              @ 0xfffffbce
	.long	4294966222              @ 0xfffffbce
	.size	.Lswitch.table2, 12


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
