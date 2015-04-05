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
	.file	"src/internal/intscan.bc"
	.globl	__intscan
	.align	2
	.type	__intscan,%function
__intscan:                              @ @__intscan
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r10, r2
	mov	r6, r0
	cmp	r4, #36
	bls	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_5
.LBB0_5:                                @ %return
	mov	r9, #0
	mov	r4, #0
	b	.LBB0_123
.LBB0_6:
	ldr	r9, [sp, #56]
	mov	r5, #31
	mov	r8, #1
	orr	r5, r5, #8388608
	b	.LBB0_7
.LBB0_7:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	cmp	r0, r1
	bhs	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %cond.true
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_10
.LBB0_9:                                @ %cond.false
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, r6
	bl	__shgetc
	mov	r7, r0
	b	.LBB0_10
.LBB0_10:                               @ %cond.end
                                        @   in Loop: Header=BB0_7 Depth=1
	sub	r0, r7, #9
	cmp	r0, #23
	bhi	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @ %cond.end
                                        @   in Loop: Header=BB0_7 Depth=1
	tst	r5, r8, lsl r0
	bne	.LBB0_7
	b	.LBB0_12
.LBB0_12:                               @ %while.end
	cmp	r7, #43
	movne	r5, #0
	cmpne	r7, #45
	bne	.LBB0_16
	b	.LBB0_13
.LBB0_13:                               @ %if.then9
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	mov	r5, #0
	cmp	r7, #45
	mvneq	r5, #0
	cmp	r0, r1
	bhs	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %cond.true16
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_16
.LBB0_15:                               @ %cond.false20
	mov	r0, r6
	bl	__shgetc
	mov	r7, r0
	b	.LBB0_16
.LBB0_16:                               @ %if.end24
	mvn	r0, #16
	tst	r4, r0
	cmpeq	r7, #48
	bne	.LBB0_31
	b	.LBB0_17
.LBB0_17:                               @ %if.then32
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	cmp	r0, r1
	bhs	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               @ %cond.true37
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_20
.LBB0_19:                               @ %cond.false41
	mov	r0, r6
	bl	__shgetc
	mov	r7, r0
	b	.LBB0_20
.LBB0_20:                               @ %cond.end43
	orr	r0, r7, #32
	str	r5, [sp, #4]            @ 4-byte Spill
	cmp	r0, #120
	bne	.LBB0_23
	b	.LBB0_21
.LBB0_21:                               @ %if.then47
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	cmp	r0, r1
	bhs	.LBB0_24
	b	.LBB0_22
.LBB0_22:                               @ %cond.true52
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_25
.LBB0_23:                               @ %if.else82
	mov	r8, #8
	cmp	r4, #0
	bne	.LBB0_33
	b	.LBB0_41
.LBB0_24:                               @ %cond.false56
	mov	r0, r6
	bl	__shgetc
	mov	r7, r0
	b	.LBB0_25
.LBB0_25:                               @ %cond.end58
	ldr	r0, .LCPI0_5
	mov	r8, #16
	add	r0, r7, r0
	ldrb	r0, [r0, #1]
	cmp	r0, #16
	blo	.LBB0_41
	b	.LBB0_26
.LCPI0_5:
	.long	table
.LBB0_26:                               @ %if.then63
	ldr	r0, [r6, #104]
	mov	r9, #0
	cmp	r0, #0
	ldrne	r1, [r6, #4]
	b	.LBB0_27
.LBB0_27:                               @ %if.then63
	subne	r1, r1, #1
	strne	r1, [r6, #4]
	cmp	r10, #0
	beq	.LBB0_30
	b	.LBB0_28
.LBB0_28:                               @ %if.then72
	mov	r4, #0
	cmp	r0, #0
	beq	.LBB0_123
	b	.LBB0_29
.LBB0_29:                               @ %cond.true75
	ldr	r0, [r6, #4]
	sub	r0, r0, #1
	str	r0, [r6, #4]
	b	.LBB0_5
.LBB0_30:                               @ %if.else
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	__shlim
	mov	r4, #0
	b	.LBB0_123
.LBB0_31:                               @ %if.else88
	ldr	r0, .LCPI0_6
	cmp	r4, #0
	str	r5, [sp, #4]            @ 4-byte Spill
	moveq	r4, #10
	b	.LBB0_32
.LCPI0_6:
	.long	table
.LBB0_32:                               @ %if.else88
	add	r0, r7, r0
	ldrb	r0, [r0, #1]
	cmp	r0, r4
	bhs	.LBB0_116
	b	.LBB0_33
.LBB0_33:                               @ %if.end107
	cmp	r4, #10
	bne	.LBB0_40
	b	.LBB0_34
.LBB0_34:                               @ %for.cond.preheader
	sub	r4, r7, #48
	mov	r5, #0
	mov	r11, #0
	cmp	r4, #9
	bhi	.LBB0_87
	b	.LBB0_35
.LBB0_35:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	add	r5, r11, r11, lsl #2
	cmp	r0, r1
	bhs	.LBB0_37
	b	.LBB0_36
.LBB0_36:                               @ %cond.true121
                                        @   in Loop: Header=BB0_35 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_38
.LBB0_37:                               @ %cond.false125
                                        @   in Loop: Header=BB0_35 Depth=1
	mov	r0, r6
	bl	__shgetc
	mov	r7, r0
	b	.LBB0_38
.LBB0_38:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB0_35 Depth=1
	add	r11, r4, r5, lsl #1
	sub	r4, r7, #48
	cmp	r4, #9
	ldrls	r0, .LCPI0_10
	cmpls	r11, r0
	blo	.LBB0_35
	b	.LBB0_39
.LCPI0_10:
	.long	429496729               @ 0x19999999
.LBB0_39:                               @ %for.cond.for.end_crit_edge
	ldr	r2, [sp, #4]            @ 4-byte Reload
	mov	r5, #0
	b	.LBB0_88
.LBB0_40:
	mov	r8, r4
	b	.LBB0_41
.LBB0_41:                               @ %if.else169
	sub	r0, r8, #1
	tst	r0, r8
	beq	.LBB0_49
	b	.LBB0_42
.LBB0_42:                               @ %for.cond236.preheader
	ldr	r9, .LCPI0_7
	mov	r5, #0
	add	r0, r7, r9
	ldrb	r10, [r0, #1]
	cmp	r10, r8
	bhs	.LBB0_72
	b	.LBB0_43
.LCPI0_7:
	.long	table
.LBB0_43:
	mov	r0, #0
	b	.LBB0_44
.LBB0_44:                               @ %for.body245
                                        @ =>This Inner Loop Header: Depth=1
	mla	r11, r0, r8, r10
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	cmp	r0, r1
	bhs	.LBB0_46
	b	.LBB0_45
.LBB0_45:                               @ %cond.true255
                                        @   in Loop: Header=BB0_44 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_47
.LBB0_46:                               @ %cond.false259
                                        @   in Loop: Header=BB0_44 Depth=1
	mov	r0, r6
	bl	__shgetc
	mov	r7, r0
	b	.LBB0_47
.LBB0_47:                               @ %for.cond236.backedge
                                        @   in Loop: Header=BB0_44 Depth=1
	add	r0, r7, r9
	ldrb	r10, [r0, #1]
	ldr	r0, .LCPI0_13
	cmp	r11, r0
	bhi	.LBB0_73
	b	.LBB0_48
.LCPI0_13:
	.long	119304646               @ 0x71c71c6
.LBB0_48:                               @ %for.cond236.backedge
                                        @   in Loop: Header=BB0_44 Depth=1
	mov	r0, r11
	cmp	r10, r8
	blo	.LBB0_44
	b	.LBB0_73
.LBB0_49:                               @ %if.then172
	mov	r0, #23
	ldr	lr, .LCPI0_8
	mov	r11, #0
	mul	r1, r8, r0
	b	.LBB0_50
.LCPI0_8:
	.long	table
.LBB0_50:                               @ %if.then172
	mov	r0, #7
	and	r0, r0, r1, lsr #5
	ldr	r1, .LCPI0_14
	ldrb	r3, [r1, r0]
	b	.LBB0_51
.LCPI0_14:
	.long	.L.str
.LBB0_51:                               @ %if.then172
	add	r0, r7, lr
	ldrb	r0, [r0, #1]
	cmp	r0, r8
	bhs	.LBB0_58
	b	.LBB0_52
.LBB0_52:
	mov	r5, #0
	b	.LBB0_53
.LBB0_53:                               @ %for.body186
                                        @ =>This Inner Loop Header: Depth=1
	orr	r11, r0, r11, lsl r3
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	cmp	r0, r1
	bhs	.LBB0_55
	b	.LBB0_54
.LBB0_54:                               @ %cond.true195
                                        @   in Loop: Header=BB0_53 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_56
.LBB0_55:                               @ %cond.false199
                                        @   in Loop: Header=BB0_53 Depth=1
	mov	r0, r6
	mov	r7, lr
	mov	r4, r3
	bl	__shgetc
	mov	lr, r7
	mov	r3, r4
	mov	r7, r0
	b	.LBB0_56
.LBB0_56:                               @ %for.cond177.backedge
                                        @   in Loop: Header=BB0_53 Depth=1
	add	r0, r7, lr
	cmp	r5, r11, lsr #27
	ldrb	r0, [r0, #1]
	bne	.LBB0_58
	b	.LBB0_57
.LBB0_57:                               @ %for.cond177.backedge
                                        @   in Loop: Header=BB0_53 Depth=1
	cmp	r0, r8
	blo	.LBB0_53
	b	.LBB0_58
.LBB0_58:                               @ %for.cond177.for.end203_crit_edge
	sub	r2, r3, #32
	mvn	r1, #0
	mov	r12, #0
	ror	r4, r1, r3
	b	.LBB0_59
.LBB0_59:                               @ %for.cond177.for.end203_crit_edge
	cmp	r2, #0
	str	r2, [sp, #12]           @ 4-byte Spill
	lsrge	r4, r1, r2
	cmp	r0, r8
	bhs	.LBB0_86
	b	.LBB0_60
.LBB0_60:                               @ %for.end203
	lsr	r9, r1, r3
	cmp	r11, r4
	mov	r2, #0
	mov	r1, #0
	b	.LBB0_61
.LBB0_61:                               @ %for.end203
	movhi	r2, #1
	cmp	r12, r9
	movhi	r1, #1
	moveq	r1, r2
	cmp	r1, #0
	bne	.LBB0_86
	b	.LBB0_62
.LBB0_62:
	rsb	r1, r3, #32
	mov	r5, r12
	str	r1, [sp, #8]            @ 4-byte Spill
	b	.LBB0_63
.LBB0_63:                               @ %for.body215
                                        @ =>This Inner Loop Header: Depth=1
	and	r10, r0, #255
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [r6, #104]
	lsr	r0, r11, r0
	b	.LBB0_64
.LBB0_64:                               @ %for.body215
                                        @   in Loop: Header=BB0_63 Depth=1
	orr	r5, r0, r5, lsl r3
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #0
	lslge	r5, r11, r0
	b	.LBB0_65
.LBB0_65:                               @ %for.body215
                                        @   in Loop: Header=BB0_63 Depth=1
	ldr	r0, [r6, #4]
	str	r5, [sp, #16]           @ 4-byte Spill
	cmp	r0, r1
	bhs	.LBB0_67
	b	.LBB0_66
.LBB0_66:                               @ %cond.true226
                                        @   in Loop: Header=BB0_63 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_69
.LBB0_67:                               @ %cond.false230
                                        @   in Loop: Header=BB0_63 Depth=1
	mov	r0, r6
	mov	r5, r9
	mov	r7, lr
	mov	r9, r3
	b	.LBB0_68
.LBB0_68:                               @ %cond.false230
                                        @   in Loop: Header=BB0_63 Depth=1
	bl	__shgetc
	mov	r3, r9
	mov	lr, r7
	mov	r9, r5
	mov	r7, r0
	b	.LBB0_69
.LBB0_69:                               @ %for.cond205.backedge
                                        @   in Loop: Header=BB0_63 Depth=1
	add	r0, r7, lr
	orr	r11, r10, r11, lsl r3
	ldrb	r0, [r0, #1]
	cmp	r0, r8
	bhs	.LBB0_100
	b	.LBB0_70
.LBB0_70:                               @ %for.cond205.backedge
                                        @   in Loop: Header=BB0_63 Depth=1
	ldr	r5, [sp, #16]           @ 4-byte Reload
	cmp	r11, r4
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_71
.LBB0_71:                               @ %for.cond205.backedge
                                        @   in Loop: Header=BB0_63 Depth=1
	movhi	r1, #1
	cmp	r5, r9
	movhi	r2, #1
	moveq	r2, r1
	cmp	r2, #0
	beq	.LBB0_63
	b	.LBB0_85
.LBB0_72:
	mov	r11, #0
	b	.LBB0_73
.LBB0_73:                               @ %for.end263
	cmp	r10, r8
	bhs	.LBB0_85
	b	.LBB0_74
.LBB0_74:                               @ %land.lhs.true270.lr.ph
	mvn	r0, #0
	mvn	r1, #0
	mov	r2, r8
	mov	r3, #0
	b	.LBB0_75
.LBB0_75:                               @ %land.lhs.true270.lr.ph
	bl	__aeabi_uldivmod
	mvn	r4, #255
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	b	.LBB0_76
.LBB0_76:                               @ %land.lhs.true270
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r11, r0
	mov	r0, #0
	b	.LBB0_77
.LBB0_77:                               @ %land.lhs.true270
                                        @   in Loop: Header=BB0_76 Depth=1
	movhi	r0, #1
	cmp	r5, r1
	mov	r1, #0
	movhi	r1, #1
	moveq	r1, r0
	cmp	r1, #0
	bne	.LBB0_85
	b	.LBB0_78
.LBB0_78:                               @ %land.rhs274
                                        @   in Loop: Header=BB0_76 Depth=1
	mvn	r1, r10
	umull	r0, r2, r11, r8
	mov	r3, #0
	orr	r1, r1, r4
	b	.LBB0_79
.LBB0_79:                               @ %land.rhs274
                                        @   in Loop: Header=BB0_76 Depth=1
	cmp	r0, r1
	mla	r1, r5, r8, r2
	mov	r2, #0
	movhi	r3, #1
	b	.LBB0_80
.LBB0_80:                               @ %land.rhs274
                                        @   in Loop: Header=BB0_76 Depth=1
	cmn	r1, #1
	movne	r3, r2
	cmp	r3, #0
	bne	.LBB0_85
	b	.LBB0_81
.LBB0_81:                               @ %for.body283
                                        @   in Loop: Header=BB0_76 Depth=1
	and	r2, r10, #255
	adds	r11, r2, r0
	ldr	r0, [r6, #4]
	adc	r5, r1, #0
	ldr	r1, [r6, #104]
	cmp	r0, r1
	bhs	.LBB0_83
	b	.LBB0_82
.LBB0_82:                               @ %cond.true294
                                        @   in Loop: Header=BB0_76 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_84
.LBB0_83:                               @ %cond.false298
                                        @   in Loop: Header=BB0_76 Depth=1
	mov	r0, r6
	bl	__shgetc
	mvn	r4, #255
	mov	r7, r0
	b	.LBB0_84
.LBB0_84:                               @ %for.cond265.backedge
                                        @   in Loop: Header=BB0_76 Depth=1
	add	r0, r7, r9
	ldrb	r10, [r0, #1]
	cmp	r10, r8
	blo	.LBB0_76
	b	.LBB0_85
.LBB0_85:
	ldr	r9, [sp, #56]
	b	.LBB0_103
.LBB0_86:
	ldr	r9, [sp, #56]
	mov	r5, r12
	b	.LBB0_103
.LBB0_87:
	ldr	r2, [sp, #4]            @ 4-byte Reload
	b	.LBB0_88
.LBB0_88:                               @ %for.end
	sub	r0, r7, #48
	cmp	r0, #9
	bhi	.LBB0_99
	b	.LBB0_89
.LBB0_89:
	mov	r8, #10
	str	r2, [sp, #4]            @ 4-byte Spill
	b	.LBB0_90
.LBB0_90:                               @ %land.rhs137
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, r5
	umull	r1, r2, r11, r8
	mvn	r3, r0
	add	r5, r4, r4, lsl #2
	b	.LBB0_91
.LBB0_91:                               @ %land.rhs137
                                        @   in Loop: Header=BB0_90 Depth=1
	cmp	r1, r3
	mov	r3, #0
	add	r2, r2, r5, lsl #1
	mvn	r5, r0, asr #31
	b	.LBB0_92
.LBB0_92:                               @ %land.rhs137
                                        @   in Loop: Header=BB0_90 Depth=1
	movhi	r3, #1
	cmp	r2, r5
	mov	r5, #0
	movhi	r5, #1
	moveq	r5, r3
	cmp	r5, #0
	bne	.LBB0_101
	b	.LBB0_93
.LBB0_93:                               @ %for.body145
                                        @   in Loop: Header=BB0_90 Depth=1
	adds	r11, r1, r0
	ldr	r1, [r6, #104]
	adc	r5, r2, r0, asr #31
	ldr	r0, [r6, #4]
	cmp	r0, r1
	bhs	.LBB0_95
	b	.LBB0_94
.LBB0_94:                               @ %cond.true155
                                        @   in Loop: Header=BB0_90 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r7, [r0]
	b	.LBB0_96
.LBB0_95:                               @ %cond.false159
                                        @   in Loop: Header=BB0_90 Depth=1
	mov	r0, r6
	bl	__shgetc
	mov	r7, r0
	b	.LBB0_96
.LBB0_96:                               @ %for.cond130.backedge
                                        @   in Loop: Header=BB0_90 Depth=1
	sub	r0, r7, #48
	cmp	r0, #9
	bhi	.LBB0_102
	b	.LBB0_97
.LBB0_97:                               @ %for.cond130.backedge
                                        @   in Loop: Header=BB0_90 Depth=1
	ldr	r1, .LCPI0_12
	ldr	r2, .LCPI0_11
	cmp	r11, r1
	mov	r1, #0
	b	.LBB0_98
.LCPI0_11:
	.long	429496729               @ 0x19999999
.LCPI0_12:
	.long	2576980378              @ 0x9999999a
.LBB0_98:                               @ %for.cond130.backedge
                                        @   in Loop: Header=BB0_90 Depth=1
	movlo	r1, #1
	cmp	r5, r2
	mov	r2, #0
	movlo	r2, #1
	moveq	r2, r1
	cmp	r2, #0
	bne	.LBB0_90
	b	.LBB0_102
.LBB0_99:
	ldr	r4, [sp, #60]
	b	.LBB0_111
.LBB0_100:
	ldr	r9, [sp, #56]
	ldr	r5, [sp, #16]           @ 4-byte Reload
	b	.LBB0_103
.LBB0_101:
	mov	r5, r4
	b	.LBB0_102
.LBB0_102:                              @ %for.end163
	mov	r8, #10
	cmp	r0, #9
	bhi	.LBB0_110
	b	.LBB0_103
.LBB0_103:                              @ %if.end304
	ldr	r4, .LCPI0_9
	add	r0, r7, r4
	ldrb	r0, [r0, #1]
	cmp	r0, r8
	bhs	.LBB0_110
	b	.LBB0_104
.LCPI0_9:
	.long	table
.LBB0_104:                              @ %for.inc316
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #104]
	cmp	r0, r1
	bhs	.LBB0_106
	b	.LBB0_105
.LBB0_105:                              @ %cond.true321
                                        @   in Loop: Header=BB0_104 Depth=1
	add	r1, r0, #1
	str	r1, [r6, #4]
	ldrb	r0, [r0]
	b	.LBB0_107
.LBB0_106:                              @ %cond.false325
                                        @   in Loop: Header=BB0_104 Depth=1
	mov	r0, r6
	bl	__shgetc
	b	.LBB0_107
.LBB0_107:                              @ %for.cond310.backedge
                                        @   in Loop: Header=BB0_104 Depth=1
	add	r0, r0, r4
	ldrb	r0, [r0, #1]
	cmp	r0, r8
	blo	.LBB0_104
	b	.LBB0_108
.LBB0_108:                              @ %for.end329
	bl	__errno_location
	ldr	r4, [sp, #60]
	ldr	r2, [sp, #4]            @ 4-byte Reload
	tst	r9, #1
	b	.LBB0_109
.LBB0_109:                              @ %for.end329
	mov	r1, #34
	mov	r11, r9
	str	r1, [r0]
	movne	r2, #0
	mov	r5, r4
	b	.LBB0_111
.LBB0_110:
	ldr	r4, [sp, #60]
	ldr	r2, [sp, #4]            @ 4-byte Reload
	b	.LBB0_111
.LBB0_111:                              @ %done
	ldr	r0, [r6, #104]
	mov	r1, #0
	cmp	r0, #0
	ldrne	r0, [r6, #4]
	b	.LBB0_112
.LBB0_112:                              @ %done
	subne	r0, r0, #1
	strne	r0, [r6, #4]
	cmp	r11, r9
	mov	r0, #0
	b	.LBB0_113
.LBB0_113:                              @ %done
	movlo	r1, #1
	cmp	r5, r4
	movlo	r0, #1
	moveq	r0, r1
	cmp	r0, #0
	bne	.LBB0_122
	b	.LBB0_114
.LBB0_114:                              @ %if.then345
	tst	r9, #1
	cmpeq	r2, #0
	bne	.LBB0_119
	b	.LBB0_115
.LBB0_115:                              @ %if.then350
	bl	__errno_location
	mov	r1, #34
	subs	r9, r9, #1
	str	r1, [r0]
	sbc	r4, r4, #0
	b	.LBB0_123
.LBB0_116:                              @ %if.then97
	ldr	r0, [r6, #104]
	mov	r2, #0
	mov	r3, #0
	mov	r9, #0
	b	.LBB0_117
.LBB0_117:                              @ %if.then97
	cmp	r0, #0
	ldrne	r0, [r6, #4]
	subne	r0, r0, #1
	strne	r0, [r6, #4]
	b	.LBB0_118
.LBB0_118:                              @ %if.then97
	mov	r0, r6
	bl	__shlim
	bl	__errno_location
	mov	r1, #22
	mov	r4, #0
	str	r1, [r0]
	b	.LBB0_123
.LBB0_119:                              @ %if.else353
	cmp	r11, r9
	mov	r1, #0
	mov	r0, #0
	movls	r1, #1
	b	.LBB0_120
.LBB0_120:                              @ %if.else353
	cmp	r5, r4
	movls	r0, #1
	moveq	r0, r1
	cmp	r0, #0
	bne	.LBB0_122
	b	.LBB0_121
.LBB0_121:                              @ %if.then356
	bl	__errno_location
	mov	r1, #34
	str	r1, [r0]
	b	.LBB0_123
.LBB0_122:                              @ %if.end360
	eor	r1, r11, r2
	eor	r0, r5, r2, asr #31
	subs	r9, r1, r2
	sbc	r4, r0, r2, asr #31
	b	.LBB0_123
.LBB0_123:                              @ %return
	mov	r0, r9
	mov	r1, r4
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__intscan, .Ltmp0-__intscan
	.cantunwind
	.fnend

	.type	table,%object           @ @table
	.section	.rodata,"a",%progbits
table:
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\001\002\003\004\005\006\007\b\t\377\377\377\377\377\377\377\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#\377\377\377\377\377\377\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.size	table, 257

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"\000\001\002\004\007\003\006\005"
	.size	.L.str, 9


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
