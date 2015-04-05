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
	.file	"src/stdio/vfscanf.bc"
	.globl	vfscanf
	.align	2
	.type	vfscanf,%function
vfscanf:                                @ @vfscanf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#356
	sub	sp, sp, #356
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r10, r1
	mov	r11, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	str	r2, [sp, #48]           @ 4-byte Spill
	ldr	r0, [r4, #76]
	cmp	r0, #0
	mov	r0, #0
	blt	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	b	.LBB0_6
.LBB0_6:                                @ %cond.end
	str	r0, [sp, #52]           @ 4-byte Spill
	ldrb	r0, [r10]
	cmp	r0, #0
	beq	.LBB0_201
	b	.LBB0_7
.LBB0_7:                                @ %for.body.lr.ph
	mov	r6, #31
	mov	r1, #0
	add	r9, r4, #120
	mov	r7, #1
	b	.LBB0_8
.LBB0_8:                                @ %for.body.lr.ph
	mov	r8, #0
	mov	r11, #0
	orr	r6, r6, #8388608
	str	r1, [sp, #68]           @ 4-byte Spill
	b	.LBB0_9
.LBB0_9:                                @ %for.body.lr.ph
                                        @ implicit-def: R1
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r9, [sp, #56]           @ 4-byte Spill
                                        @ implicit-def: R1
	str	r1, [sp, #44]           @ 4-byte Spill
	b	.LBB0_10
.LBB0_10:                               @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_40 Depth 2
                                        @     Child Loop BB0_56 Depth 2
                                        @     Child Loop BB0_122 Depth 2
                                        @       Child Loop BB0_127 Depth 3
                                        @     Child Loop BB0_157 Depth 2
                                        @     Child Loop BB0_151 Depth 2
                                        @     Child Loop BB0_137 Depth 2
                                        @       Child Loop BB0_138 Depth 3
                                        @     Child Loop BB0_166 Depth 2
                                        @     Child Loop BB0_12 Depth 2
                                        @     Child Loop BB0_15 Depth 2
	and	r5, r0, #255
	cmp	r5, #32
	subne	r0, r5, #9
	cmpne	r0, #4
	bhi	.LBB0_23
	b	.LBB0_11
.LBB0_11:                               @ %while.cond.preheader
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r5, r10, #1
	b	.LBB0_12
.LBB0_12:                               @ %while.cond
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r1, [r5], #1
	sub	r0, r1, #9
	cmp	r1, #32
	beq	.LBB0_12
	b	.LBB0_13
.LBB0_13:                               @ %while.cond
                                        @   in Loop: Header=BB0_12 Depth=2
	cmp	r0, #5
	blo	.LBB0_12
	b	.LBB0_14
.LBB0_14:                               @ %while.end
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	mov	r2, #0
	mov	r3, #0
	bl	__shlim
	sub	r10, r5, #2
	b	.LBB0_15
.LBB0_15:                               @ %while.cond6
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               @ %cond.true9
                                        @   in Loop: Header=BB0_15 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_18
.LBB0_17:                               @ %cond.false13
                                        @   in Loop: Header=BB0_15 Depth=2
	mov	r0, r4
	bl	__shgetc
	b	.LBB0_18
.LBB0_18:                               @ %cond.end15
                                        @   in Loop: Header=BB0_15 Depth=2
	sub	r0, r0, #9
	cmp	r0, #23
	bhi	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               @ %cond.end15
                                        @   in Loop: Header=BB0_15 Depth=2
	tst	r6, r7, lsl r0
	bne	.LBB0_15
	b	.LBB0_20
.LBB0_20:                               @ %while.end20
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r4, #104]
	ldr	r0, [r4, #4]
	cmp	r1, #0
	subne	r0, r0, #1
	b	.LBB0_21
.LBB0_21:                               @ %while.end20
                                        @   in Loop: Header=BB0_10 Depth=1
	strne	r0, [r4, #4]
	ldm	r9, {r1, r2}
	ldr	r3, [sp, #68]           @ 4-byte Reload
	adds	r1, r1, r8
	b	.LBB0_22
.LBB0_22:                               @ %while.end20
                                        @   in Loop: Header=BB0_10 Depth=1
	adc	r2, r2, r3
	ldr	r3, [r4, #8]
	sub	r0, r0, r3
	adds	r8, r1, r0
	adc	r0, r2, r0, asr #31
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB0_193
.LBB0_23:                               @ %if.end
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r5, #37
	bne	.LBB0_27
	b	.LBB0_24
.LBB0_24:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r10
	ldrb	r1, [r0, #1]!
	cmp	r1, #42
	bne	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               @ %if.then75
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r0, r10, #2
	mov	r3, #0
	b	.LBB0_39
.LBB0_26:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r1, #37
	bne	.LBB0_33
	b	.LBB0_27
.LBB0_27:                               @ %if.then38
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	mov	r2, #0
	mov	r3, #0
	bl	__shlim
	b	.LBB0_28
.LBB0_28:                               @ %if.then38
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r5, #37
	addeq	r10, r10, #1
	cmp	r0, r1
	bhs	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               @ %cond.true46
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_31
.LBB0_30:                               @ %cond.false50
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	bl	__shgetc
	b	.LBB0_31
.LBB0_31:                               @ %cond.end52
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r1, [r10]
	cmp	r0, r1
	bne	.LBB0_194
	b	.LBB0_32
.LBB0_32:                               @ %if.end69
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #68]           @ 4-byte Reload
	adds	r8, r8, #1
	adc	r0, r0, #0
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB0_193
.LBB0_33:                               @ %if.else
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r1, r1, #48
	cmp	r1, #9
	bhi	.LBB0_38
	b	.LBB0_34
.LBB0_34:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r2, [r10, #2]
	cmp	r2, #36
	bne	.LBB0_38
	b	.LBB0_35
.LBB0_35:                               @ %if.then84
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r2, [sp, #48]           @ 4-byte Reload
	cmp	r1, #0
	mvn	r0, #-1073741823
	mvneq	r0, r1
	b	.LBB0_36
.LBB0_36:                               @ %if.then84
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r0, r0, r1
	add	r0, r2, r0, lsl #2
	str	r2, [sp, #352]
	str	r2, [sp, #348]
	b	.LBB0_37
.LBB0_37:                               @ %if.then84
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r1, r0, #8
	str	r1, [sp, #348]
	ldr	r3, [r0, #4]
	add	r0, r10, #3
	b	.LBB0_39
.LBB0_38:                               @ %if.else90
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [sp, #48]           @ 4-byte Reload
	ldr	r3, [r1], #4
	str	r1, [sp, #48]           @ 4-byte Spill
	b	.LBB0_39
.LBB0_39:                               @ %if.end93
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r1, [r0]
	mov	r7, #0
	mov	r9, #0
	sub	r2, r1, #48
	cmp	r2, #9
	bhi	.LBB0_41
	b	.LBB0_40
.LBB0_40:                               @ %for.body99
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r2, r9, r9, lsl #2
	add	r1, r1, r2, lsl #1
	sub	r9, r1, #48
	ldrb	r1, [r0, #1]!
	sub	r2, r1, #48
	cmp	r2, #10
	blo	.LBB0_40
	b	.LBB0_41
.LBB0_41:                               @ %for.end
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r1, #109
	bne	.LBB0_44
	b	.LBB0_42
.LBB0_42:                               @ %if.then107
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r1, [r0, #1]!
	mov	r2, #0
	cmp	r3, #0
	mov	r7, r3
	b	.LBB0_43
.LBB0_43:                               @ %if.then107
                                        @   in Loop: Header=BB0_10 Depth=1
	movne	r7, #1
	str	r2, [sp, #44]           @ 4-byte Spill
	mov	r2, #0
	str	r2, [sp, #40]           @ 4-byte Spill
	b	.LBB0_44
.LBB0_44:                               @ %if.end112
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r1, r1, #65
	str	r11, [sp, #64]          @ 4-byte Spill
	cmp	r1, #57
	bhi	.LBB0_198
	b	.LBB0_45
.LBB0_45:                               @ %if.end112
                                        @   in Loop: Header=BB0_10 Depth=1
	str	r3, [sp, #60]           @ 4-byte Spill
	lsl	r1, r1, #2
	adr	r2, .LJTI0_0_0
	add	r10, r0, #1
	mov	r6, #3
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_87
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_88
	.long	.LBB0_46
	.long	.LBB0_47
	.long	.LBB0_198
	.long	.LBB0_89
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_86
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_198
	.long	.LBB0_46
	.long	.LBB0_198
	.long	.LBB0_86
.LBB0_46:                               @ %sw.bb133
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r6, #0
	mov	r10, r0
	b	.LBB0_47
.LBB0_47:                               @ %sw.epilog
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r5, [r10]
	and	r0, r5, #47
	cmp	r0, #3
	orreq	r5, r5, #32
	moveq	r6, #1
	cmp	r5, #91
	beq	.LBB0_52
	b	.LBB0_48
.LBB0_48:                               @ %sw.epilog
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r5, #110
	bne	.LBB0_53
	b	.LBB0_49
.LBB0_49:                               @ %sw.bb145
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r2, [sp, #60]           @ 4-byte Reload
	cmp	r2, #0
	beq	.LBB0_83
	b	.LBB0_50
.LBB0_50:                               @ %if.end.i783
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r0, r6, #2
	mov	r6, #31
	mov	r7, #1
	orr	r6, r6, #8388608
	cmp	r0, #5
	bls	.LBB0_84
	b	.LBB0_51
.LBB0_51:                               @   in Loop: Header=BB0_10 Depth=1
	ldr	r11, [sp, #64]          @ 4-byte Reload
	ldr	r9, [sp, #56]           @ 4-byte Reload
	b	.LBB0_193
.LBB0_52:                               @   in Loop: Header=BB0_10 Depth=1
	str	r7, [sp, #36]           @ 4-byte Spill
	b	.LBB0_64
.LBB0_53:                               @ %sw.epilog
                                        @   in Loop: Header=BB0_10 Depth=1
	str	r7, [sp, #36]           @ 4-byte Spill
	cmp	r5, #99
	bne	.LBB0_55
	b	.LBB0_54
.LBB0_54:                               @ %sw.bb140
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r9, #1
	movlt	r9, #1
	b	.LBB0_64
.LBB0_55:                               @ %sw.default146
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	mov	r2, #0
	mov	r3, #0
	bl	__shlim
	b	.LBB0_56
.LBB0_56:                               @ %while.cond147
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB0_58
	b	.LBB0_57
.LBB0_57:                               @ %cond.true152
                                        @   in Loop: Header=BB0_56 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_59
.LBB0_58:                               @ %cond.false156
                                        @   in Loop: Header=BB0_56 Depth=2
	mov	r0, r4
	bl	__shgetc
	b	.LBB0_59
.LBB0_59:                               @ %cond.end158
                                        @   in Loop: Header=BB0_56 Depth=2
	sub	r0, r0, #9
	cmp	r0, #23
	bhi	.LBB0_61
	b	.LBB0_60
.LBB0_60:                               @ %cond.end158
                                        @   in Loop: Header=BB0_56 Depth=2
	mov	r2, #31
	mov	r1, #1
	orr	r2, r2, #8388608
	tst	r2, r1, lsl r0
	bne	.LBB0_56
	b	.LBB0_61
.LBB0_61:                               @ %while.end163
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r4, #104]
	ldr	r0, [r4, #4]
	ldr	r2, [sp, #56]           @ 4-byte Reload
	cmp	r1, #0
	b	.LBB0_62
.LBB0_62:                               @ %while.end163
                                        @   in Loop: Header=BB0_10 Depth=1
	subne	r0, r0, #1
	strne	r0, [r4, #4]
	ldm	r2, {r1, r2}
	ldr	r3, [sp, #68]           @ 4-byte Reload
	b	.LBB0_63
.LBB0_63:                               @ %while.end163
                                        @   in Loop: Header=BB0_10 Depth=1
	adds	r1, r1, r8
	adc	r2, r2, r3
	ldr	r3, [r4, #8]
	sub	r0, r0, r3
	adds	r8, r1, r0
	adc	r0, r2, r0, asr #31
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB0_64
.LBB0_64:                               @ %sw.epilog180
                                        @   in Loop: Header=BB0_10 Depth=1
	asr	r3, r9, #31
	mov	r0, r4
	mov	r2, r9
	bl	__shlim
	b	.LBB0_65
.LBB0_65:                               @ %sw.epilog180
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #104]
	cmp	r1, r0
	bhs	.LBB0_67
	b	.LBB0_66
.LBB0_66:                               @ %cond.end192.thread
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r1, r1, #1
	str	r1, [r4, #4]
	b	.LBB0_69
.LBB0_67:                               @ %cond.end192
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	bl	__shgetc
	cmp	r0, #0
	blt	.LBB0_197
	b	.LBB0_68
.LBB0_68:                               @ %cond.end192.if.end197_crit_edge
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r4, #104]
	b	.LBB0_69
.LBB0_69:                               @ %if.end197
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r0, #0
	ldrne	r0, [r4, #4]
	subne	r0, r0, #1
	strne	r0, [r4, #4]
	cmp	r5, #87
	bgt	.LBB0_72
	b	.LBB0_70
.LBB0_70:                               @ %cond.end204
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r0, r5, #65
	cmp	r0, #6
	bhi	.LBB0_189
	b	.LBB0_71
.LBB0_71:                               @ %cond.end204
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r1, #1
	mov	r2, #113
	tst	r2, r1, lsl r0
	bne	.LBB0_74
	b	.LBB0_189
.LBB0_72:                               @ %cond.end204
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r0, r5, #88
	cmp	r0, #32
	bhi	.LBB0_189
	b	.LBB0_73
.LBB0_73:                               @ %cond.end204
                                        @   in Loop: Header=BB0_10 Depth=1
	lsl	r0, r0, #2
	adr	r2, .LJTI0_2_2
	mov	r1, #16
	ldr	pc, [r0, r2]
.LJTI0_2_2:
	.long	.LBB0_106
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_90
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_74
	.long	.LBB0_189
	.long	.LBB0_90
	.long	.LBB0_94
	.long	.LBB0_74
	.long	.LBB0_74
	.long	.LBB0_74
	.long	.LBB0_189
	.long	.LBB0_104
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_105
	.long	.LBB0_106
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_90
	.long	.LBB0_189
	.long	.LBB0_94
	.long	.LBB0_189
	.long	.LBB0_189
	.long	.LBB0_106
.LBB0_74:                               @ %sw.bb530
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	mov	r1, r6
	mov	r2, #0
	bl	__floatscan
	b	.LBB0_75
.LBB0_75:                               @ %sw.bb530
                                        @   in Loop: Header=BB0_10 Depth=1
	ldmib	r4, {r2, r3}
	ldr	r5, [sp, #56]           @ 4-byte Reload
	mov	r7, #0
	sub	r2, r2, r3
	b	.LBB0_76
.LBB0_76:                               @ %sw.bb530
                                        @   in Loop: Header=BB0_10 Depth=1
	rsbs	r3, r2, #0
	sbc	r2, r7, r2, asr #31
	ldr	r7, [r5]
	ldr	r5, [r5, #4]
	b	.LBB0_77
.LBB0_77:                               @ %sw.bb530
                                        @   in Loop: Header=BB0_10 Depth=1
	eor	r2, r5, r2
	eor	r3, r7, r3
	orrs	r2, r3, r2
	beq	.LBB0_204
	b	.LBB0_78
.LBB0_78:                               @ %if.end542
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r2, [sp, #60]           @ 4-byte Reload
	cmp	r2, #0
	beq	.LBB0_189
	b	.LBB0_79
.LBB0_79:                               @ %if.then544
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r6, #2
	cmpne	r6, #1
	beq	.LBB0_164
	b	.LBB0_80
.LBB0_80:                               @ %if.then544
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r6, #0
	bne	.LBB0_189
	b	.LBB0_81
.LBB0_81:                               @ %sw.bb545
                                        @   in Loop: Header=BB0_10 Depth=1
	bl	__aeabi_d2f
	b	.LBB0_82
.LBB0_82:                               @ %sw.bb3.i
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [sp, #60]           @ 4-byte Reload
	str	r0, [r1]
	b	.LBB0_189
.LBB0_83:                               @   in Loop: Header=BB0_10 Depth=1
	ldr	r11, [sp, #64]          @ 4-byte Reload
	ldr	r9, [sp, #56]           @ 4-byte Reload
	b	.LBB0_192
.LBB0_84:                               @ %if.end.i783
                                        @   in Loop: Header=BB0_10 Depth=1
	adr	r1, .LJTI0_1_1
	ldr	r11, [sp, #64]          @ 4-byte Reload
	ldr	r9, [sp, #56]           @ 4-byte Reload
	lsl	r0, r0, #2
	ldr	pc, [r0, r1]
.LJTI0_1_1:
	.long	.LBB0_95
	.long	.LBB0_96
	.long	.LBB0_85
	.long	.LBB0_85
	.long	.LBB0_193
	.long	.LBB0_97
.LBB0_85:                               @ %sw.bb5.i791
                                        @   in Loop: Header=BB0_10 Depth=1
	str	r8, [r2]
	b	.LBB0_193
.LBB0_86:                               @ %sw.bb131
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r6, #1
	b	.LBB0_47
.LBB0_87:                               @ %sw.bb132
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r6, #2
	b	.LBB0_47
.LBB0_88:                               @ %sw.bb
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r1, [r0, #1]
	mvn	r6, #0
	cmp	r1, #104
	addeq	r10, r0, #2
	mvneq	r6, #1
	b	.LBB0_47
.LBB0_89:                               @ %sw.bb122
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r1, [r0, #1]
	mov	r6, #1
	cmp	r1, #108
	addeq	r10, r0, #2
	moveq	r6, #3
	b	.LBB0_47
.LBB0_90:                               @ %sw.bb205
                                        @   in Loop: Header=BB0_10 Depth=1
	and	r0, r5, #239
	cmp	r0, #99
	bne	.LBB0_98
	b	.LBB0_91
.LBB0_91:                               @ %if.then211
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r2, #1
	add	r7, sp, #83
	mvn	r1, #0
	mov	r0, r7
	b	.LBB0_92
.LBB0_92:                               @ %if.then211
                                        @   in Loop: Header=BB0_10 Depth=1
	orr	r2, r2, #256
	bl	memset
	mov	r1, #0
	cmp	r5, #115
	strb	r1, [sp, #83]
	bne	.LBB0_131
	b	.LBB0_93
.LBB0_93:                               @ %if.then216
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r0, r7, #10
	strb	r1, [r0], #2
	strb	r1, [r0, #1]
	strb	r1, [r0]
	strb	r1, [sp, #94]
	strb	r1, [sp, #97]
	strb	r1, [sp, #116]
	b	.LBB0_131
.LBB0_94:                               @ %sw.bb508
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r1, #10
	b	.LBB0_106
.LBB0_95:                               @ %sw.bb.i785
                                        @   in Loop: Header=BB0_10 Depth=1
	strb	r8, [r2]
	b	.LBB0_193
.LBB0_96:                               @ %sw.bb1.i787
                                        @   in Loop: Header=BB0_10 Depth=1
	strh	r8, [r2]
	b	.LBB0_193
.LBB0_97:                               @ %sw.bb7.i792
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #68]           @ 4-byte Reload
	str	r8, [r2]
	str	r0, [r2, #4]
	b	.LBB0_193
.LBB0_98:                               @ %if.else224
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r7, r10
	mov	r11, #0
	mov	r2, #1
	ldrb	r0, [r7, #1]!
	b	.LBB0_99
.LBB0_99:                               @ %if.else224
                                        @   in Loop: Header=BB0_10 Depth=1
	orr	r2, r2, #256
	cmp	r0, #94
	str	r0, [sp, #32]           @ 4-byte Spill
	add	r0, sp, #83
	b	.LBB0_100
.LBB0_100:                              @ %if.else224
                                        @   in Loop: Header=BB0_10 Depth=1
	moveq	r11, #1
	mov	r1, r11
	bl	memset
	mov	r0, #0
	b	.LBB0_101
.LBB0_101:                              @ %if.else224
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r1, r10
	eor	r12, r11, #1
	strb	r0, [sp, #83]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	b	.LBB0_102
.LBB0_102:                              @ %if.else224
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r0, #94
	moveq	r1, r7
	addeq	r7, r10, #2
	ldrb	r0, [r7]
	cmp	r0, #45
	bne	.LBB0_117
	b	.LBB0_103
.LBB0_103:                              @ %if.then239
                                        @   in Loop: Header=BB0_10 Depth=1
	strb	r12, [sp, #129]
	b	.LBB0_119
.LBB0_104:                              @ %sw.bb509
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r1, #0
	b	.LBB0_106
.LBB0_105:                              @ %sw.bb507
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r1, #8
	b	.LBB0_106
.LBB0_106:                              @ %int_common
                                        @   in Loop: Header=BB0_10 Depth=1
	mvn	r0, #0
	mov	r2, #0
	str	r0, [sp]
	str	r0, [sp, #4]
	b	.LBB0_107
.LBB0_107:                              @ %int_common
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	bl	__intscan
	ldmib	r4, {r2, r3}
	sub	r2, r2, r3
	b	.LBB0_108
.LBB0_108:                              @ %int_common
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r3, #0
	rsbs	r12, r2, #0
	sbc	r2, r3, r2, asr #31
	ldr	r3, [sp, #56]           @ 4-byte Reload
	b	.LBB0_109
.LBB0_109:                              @ %int_common
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r7, [r3]
	ldr	r3, [r3, #4]
	eor	r2, r3, r2
	eor	r3, r7, r12
	orrs	r2, r3, r2
	beq	.LBB0_204
	b	.LBB0_110
.LBB0_110:                              @ %if.end521
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r2, [sp, #60]           @ 4-byte Reload
	cmp	r2, #0
	beq	.LBB0_113
	b	.LBB0_111
.LBB0_111:                              @ %if.end521
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r5, #112
	bne	.LBB0_113
	b	.LBB0_112
.LBB0_112:                              @ %if.then526
                                        @   in Loop: Header=BB0_10 Depth=1
	str	r0, [r2]
	b	.LBB0_189
.LBB0_113:                              @ %if.else528
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r2, #0
	beq	.LBB0_189
	b	.LBB0_114
.LBB0_114:                              @ %if.end.i
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r2, r6, #2
	cmp	r2, #5
	bhi	.LBB0_189
	b	.LBB0_115
.LBB0_115:                              @ %if.end.i
                                        @   in Loop: Header=BB0_10 Depth=1
	lsl	r2, r2, #2
	adr	r3, .LJTI0_3_3
	ldr	pc, [r2, r3]
.LJTI0_3_3:
	.long	.LBB0_116
	.long	.LBB0_162
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_189
	.long	.LBB0_163
.LBB0_116:                              @ %sw.bb.i
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [sp, #60]           @ 4-byte Reload
	strb	r0, [r1]
	b	.LBB0_189
.LBB0_117:                              @ %if.else224
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r0, #93
	bne	.LBB0_120
	b	.LBB0_118
.LBB0_118:                              @ %if.then248
                                        @   in Loop: Header=BB0_10 Depth=1
	strb	r12, [sp, #177]
	b	.LBB0_119
.LBB0_119:                              @ %for.cond255.preheader
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r7, r1, #2
	b	.LBB0_120
.LBB0_120:                              @ %for.cond255.preheader
                                        @   in Loop: Header=BB0_10 Depth=1
	add	lr, sp, #83
	b	.LBB0_122
.LBB0_121:                              @ %if.end291
                                        @   in Loop: Header=BB0_122 Depth=2
	add	r0, r1, lr
	add	r7, r7, #1
	strb	r12, [r0, #1]
	b	.LBB0_122
.LBB0_122:                              @ %for.cond255
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_127 Depth 3
	ldrb	r1, [r7]
	cmp	r1, #93
	beq	.LBB0_130
	b	.LBB0_123
.LBB0_123:                              @ %for.cond255
                                        @   in Loop: Header=BB0_122 Depth=2
	cmp	r1, #0
	beq	.LBB0_197
	b	.LBB0_124
.LBB0_124:                              @ %for.cond255
                                        @   in Loop: Header=BB0_122 Depth=2
	cmp	r1, #45
	bne	.LBB0_121
	b	.LBB0_125
.LBB0_125:                              @ %land.lhs.true266
                                        @   in Loop: Header=BB0_122 Depth=2
	mov	r2, r7
	mov	r1, #45
	ldrb	r0, [r2, #1]!
	cmp	r0, #0
	cmpne	r0, #93
	beq	.LBB0_121
	b	.LBB0_126
.LBB0_126:                              @ %if.then275
                                        @   in Loop: Header=BB0_122 Depth=2
	ldrb	r3, [r7, #-1]
	cmp	r3, r0
	bhs	.LBB0_128
	b	.LBB0_127
.LBB0_127:                              @ %for.body283
                                        @   Parent Loop BB0_10 Depth=1
                                        @     Parent Loop BB0_122 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r1, [r2]
	add	r0, lr, r3
	add	r3, r3, #1
	strb	r12, [r0, #1]
	cmp	r3, r1
	blt	.LBB0_127
	b	.LBB0_129
.LBB0_128:                              @   in Loop: Header=BB0_122 Depth=2
	mov	r1, r0
	b	.LBB0_129
.LBB0_129:                              @   in Loop: Header=BB0_122 Depth=2
	mov	r7, r2
	b	.LBB0_121
.LBB0_130:                              @   in Loop: Header=BB0_10 Depth=1
	mov	r10, r7
	b	.LBB0_131
.LBB0_131:                              @   in Loop: Header=BB0_10 Depth=1
	ldr	r7, [sp, #36]           @ 4-byte Reload
	cmp	r5, #99
	mov	r0, #31
	addeq	r0, r9, #1
	cmp	r6, #1
	str	r0, [sp, #36]           @ 4-byte Spill
	bne	.LBB0_135
	b	.LBB0_132
.LBB0_132:                              @ %if.then310
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r7, #0
	beq	.LBB0_148
	b	.LBB0_133
.LBB0_133:                              @ %if.then312
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	lsl	r0, r0, #2
	bl	malloc
	mov	r1, #0
	b	.LBB0_134
.LBB0_134:                              @ %if.then312
                                        @   in Loop: Header=BB0_10 Depth=1
	str	r0, [sp, #40]           @ 4-byte Spill
	cmp	r0, #0
	str	r1, [sp, #44]           @ 4-byte Spill
	bne	.LBB0_149
	b	.LBB0_198
.LBB0_135:                              @ %if.else366
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r7, #0
	beq	.LBB0_150
	b	.LBB0_136
.LBB0_136:                              @ %if.then368
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	bl	malloc
	mov	r11, #0
	cmp	r0, #0
	beq	.LBB0_207
	b	.LBB0_137
.LBB0_137:                              @ %while.cond373.outer
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_138 Depth 3
	mov	r2, r0
	b	.LBB0_138
.LBB0_138:                              @ %while.cond373
                                        @   Parent Loop BB0_10 Depth=1
                                        @     Parent Loop BB0_137 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB0_140
	b	.LBB0_139
.LBB0_139:                              @ %cond.true378
                                        @   in Loop: Header=BB0_138 Depth=3
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_142
.LBB0_140:                              @ %cond.false382
                                        @   in Loop: Header=BB0_138 Depth=3
	mov	r0, r4
	str	r6, [sp, #44]           @ 4-byte Spill
	mov	r6, r11
	mov	r11, r2
	b	.LBB0_141
.LBB0_141:                              @ %cond.false382
                                        @   in Loop: Header=BB0_138 Depth=3
	bl	__shgetc
	mov	r2, r11
	mov	r11, r6
	ldr	r6, [sp, #44]           @ 4-byte Reload
	b	.LBB0_142
.LBB0_142:                              @ %cond.end384
                                        @   in Loop: Header=BB0_138 Depth=3
	add	r1, sp, #83
	add	r1, r0, r1
	ldrb	r1, [r1, #1]
	cmp	r1, #0
	beq	.LBB0_147
	b	.LBB0_143
.LBB0_143:                              @ %while.body389
                                        @   in Loop: Header=BB0_138 Depth=3
	strb	r0, [r2, r11]
	ldr	r0, [sp, #36]           @ 4-byte Reload
	add	r11, r11, #1
	cmp	r0, r11
	bne	.LBB0_138
	b	.LBB0_144
.LBB0_144:                              @ %if.then395
                                        @   in Loop: Header=BB0_137 Depth=2
	ldr	r11, [sp, #36]          @ 4-byte Reload
	mov	r0, #1
	str	r2, [sp, #44]           @ 4-byte Spill
	orr	r1, r0, r11, lsl #1
	b	.LBB0_145
.LBB0_145:                              @ %if.then395
                                        @   in Loop: Header=BB0_137 Depth=2
	mov	r0, r2
	str	r1, [sp, #32]           @ 4-byte Spill
	bl	realloc
	mov	r1, #0
	b	.LBB0_146
.LBB0_146:                              @ %if.then395
                                        @   in Loop: Header=BB0_137 Depth=2
	cmp	r0, #0
	str	r1, [sp, #40]           @ 4-byte Spill
	ldr	r1, [sp, #32]           @ 4-byte Reload
	str	r1, [sp, #36]           @ 4-byte Spill
	bne	.LBB0_137
	b	.LBB0_198
.LBB0_147:                              @   in Loop: Header=BB0_10 Depth=1
	mov	r0, #0
	str	r2, [sp, #44]           @ 4-byte Spill
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_178
.LBB0_148:                              @ %if.else318
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_149
.LBB0_149:                              @ %if.end319
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r11, #0
	str	r11, [sp, #340]
	str	r11, [sp, #344]
	b	.LBB0_166
.LBB0_150:                              @ %if.else406
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r2, [sp, #60]           @ 4-byte Reload
	mov	r11, #0
	cmp	r2, #0
	bne	.LBB0_157
	b	.LBB0_151
.LBB0_151:                              @ %while.cond431
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB0_153
	b	.LBB0_152
.LBB0_152:                              @ %cond.true436
                                        @   in Loop: Header=BB0_151 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_154
.LBB0_153:                              @ %cond.false440
                                        @   in Loop: Header=BB0_151 Depth=2
	mov	r0, r4
	mov	r11, r2
	bl	__shgetc
	mov	r2, r11
	b	.LBB0_154
.LBB0_154:                              @ %cond.end442
                                        @   in Loop: Header=BB0_151 Depth=2
	add	r1, sp, #83
	add	r0, r0, r1
	ldrb	r0, [r0, #1]
	cmp	r0, #0
	bne	.LBB0_151
	b	.LBB0_155
.LBB0_155:                              @   in Loop: Header=BB0_10 Depth=1
	mov	r0, #0
	mov	r11, #0
	str	r2, [sp, #60]           @ 4-byte Spill
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_178
.LBB0_156:                              @ %while.body425
                                        @   in Loop: Header=BB0_157 Depth=2
	strb	r0, [r2, r11]
	add	r11, r11, #1
	b	.LBB0_157
.LBB0_157:                              @ %while.cond409
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB0_159
	b	.LBB0_158
.LBB0_158:                              @ %cond.true414
                                        @   in Loop: Header=BB0_157 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_160
.LBB0_159:                              @ %cond.false418
                                        @   in Loop: Header=BB0_157 Depth=2
	mov	r0, r4
	bl	__shgetc
	ldr	r2, [sp, #60]           @ 4-byte Reload
	b	.LBB0_160
.LBB0_160:                              @ %cond.end420
                                        @   in Loop: Header=BB0_157 Depth=2
	add	r1, sp, #83
	add	r1, r0, r1
	ldrb	r1, [r1, #1]
	cmp	r1, #0
	bne	.LBB0_156
	b	.LBB0_161
.LBB0_161:                              @   in Loop: Header=BB0_10 Depth=1
	mov	r0, #0
	str	r2, [sp, #44]           @ 4-byte Spill
	str	r2, [sp, #60]           @ 4-byte Spill
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_178
.LBB0_162:                              @ %sw.bb1.i
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [sp, #60]           @ 4-byte Reload
	strh	r0, [r1]
	b	.LBB0_189
.LBB0_163:                              @ %sw.bb7.i
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r2, [sp, #60]           @ 4-byte Reload
	b	.LBB0_164
.LBB0_164:                              @ %sw.bb548
                                        @   in Loop: Header=BB0_10 Depth=1
	stm	r2, {r0, r1}
	b	.LBB0_189
.LBB0_165:                              @ %if.end359
                                        @   in Loop: Header=BB0_166 Depth=2
	str	r0, [sp, #40]           @ 4-byte Spill
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r11, [sp, #36]          @ 4-byte Reload
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_166
.LBB0_166:                              @ %while.cond320
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #104]
	cmp	r0, r1
	bhs	.LBB0_168
	b	.LBB0_167
.LBB0_167:                              @ %cond.true325
                                        @   in Loop: Header=BB0_166 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_169
.LBB0_168:                              @ %cond.false329
                                        @   in Loop: Header=BB0_166 Depth=2
	mov	r0, r4
	bl	__shgetc
	b	.LBB0_169
.LBB0_169:                              @ %cond.end331
                                        @   in Loop: Header=BB0_166 Depth=2
	add	r1, sp, #83
	add	r1, r0, r1
	ldrb	r1, [r1, #1]
	cmp	r1, #0
	beq	.LBB0_177
	b	.LBB0_170
.LBB0_170:                              @ %while.body336
                                        @   in Loop: Header=BB0_166 Depth=2
	strb	r0, [sp, #75]
	add	r0, sp, #76
	add	r1, sp, #75
	mov	r2, #1
	b	.LBB0_171
.LBB0_171:                              @ %while.body336
                                        @   in Loop: Header=BB0_166 Depth=2
	add	r3, sp, #340
	bl	mbrtowc
	cmn	r0, #2
	beq	.LBB0_166
	b	.LBB0_172
.LBB0_172:                              @ %while.body336
                                        @   in Loop: Header=BB0_166 Depth=2
	cmn	r0, #1
	beq	.LBB0_205
	b	.LBB0_173
.LBB0_173:                              @ %sw.epilog342
                                        @   in Loop: Header=BB0_166 Depth=2
	ldr	r1, [sp, #40]           @ 4-byte Reload
	cmp	r1, #0
	ldrne	r0, [sp, #76]
	strne	r0, [r1, r11, lsl #2]
	addne	r11, r11, #1
	cmp	r7, #0
	beq	.LBB0_166
	b	.LBB0_174
.LBB0_174:                              @ %if.end347
                                        @   in Loop: Header=BB0_166 Depth=2
	ldr	r0, [sp, #36]           @ 4-byte Reload
	cmp	r11, r0
	bne	.LBB0_166
	b	.LBB0_175
.LBB0_175:                              @ %if.then352
                                        @   in Loop: Header=BB0_166 Depth=2
	ldr	r1, [sp, #36]           @ 4-byte Reload
	mov	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, #1
	b	.LBB0_176
.LBB0_176:                              @ %if.then352
                                        @   in Loop: Header=BB0_166 Depth=2
	orr	r0, r0, r1, lsl #1
	str	r0, [sp, #32]           @ 4-byte Spill
	lsl	r1, r0, #2
	ldr	r0, [sp, #40]           @ 4-byte Reload
	bl	realloc
	cmp	r0, #0
	bne	.LBB0_165
	b	.LBB0_198
.LBB0_177:                              @ %while.end361
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r0, sp, #340
	bl	mbsinit
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #44]           @ 4-byte Spill
	beq	.LBB0_198
	b	.LBB0_178
.LBB0_178:                              @ %if.end451
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r4, #104]
	ldr	r0, [r4, #4]
	ldr	r3, [sp, #56]           @ 4-byte Reload
	cmp	r1, #0
	b	.LBB0_179
.LBB0_179:                              @ %if.end451
                                        @   in Loop: Header=BB0_10 Depth=1
	subne	r0, r0, #1
	strne	r0, [r4, #4]
	ldr	r1, [r4, #8]
	ldm	r3, {r2, r3}
	b	.LBB0_180
.LBB0_180:                              @ %if.end451
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r0, r0, r1
	asr	r1, r0, #31
	adds	r0, r0, r2
	adc	r1, r1, r3
	orrs	r2, r0, r1
	ldr	r2, [sp, #44]           @ 4-byte Reload
	beq	.LBB0_206
	b	.LBB0_181
.LBB0_181:                              @ %if.end469
                                        @   in Loop: Header=BB0_10 Depth=1
	eor	r0, r0, r9
	eor	r1, r1, r9, asr #31
	cmp	r5, #99
	orr	r1, r0, r1
	b	.LBB0_182
.LBB0_182:                              @ %if.end469
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, #0
	movne	r0, #1
	cmp	r1, #0
	cmpne	r0, #1
	bne	.LBB0_206
	b	.LBB0_183
.LBB0_183:                              @ %if.end485
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [sp, #40]           @ 4-byte Reload
	ldr	r0, [sp, #60]           @ 4-byte Reload
	cmp	r7, #0
	beq	.LBB0_185
	b	.LBB0_184
.LBB0_184:                              @ %if.then487
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r6, #1
	strne	r2, [r0]
	streq	r1, [r0]
	b	.LBB0_185
.LBB0_185:                              @ %if.end493
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r5, #99
	beq	.LBB0_189
	b	.LBB0_186
.LBB0_186:                              @ %if.then496
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, #0
	cmp	r1, #0
	strne	r0, [r1, r11, lsl #2]
	cmp	r2, #0
	beq	.LBB0_188
	b	.LBB0_187
.LBB0_187:                              @ %if.then502
                                        @   in Loop: Header=BB0_10 Depth=1
	strb	r0, [r2, r11]
	b	.LBB0_189
.LBB0_188:                              @   in Loop: Header=BB0_10 Depth=1
	mov	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_189
.LBB0_189:                              @ %sw.epilog551
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r9, [sp, #56]           @ 4-byte Reload
	ldr	r11, [sp, #64]          @ 4-byte Reload
	cmp	r0, #0
	b	.LBB0_190
.LBB0_190:                              @ %sw.epilog551
                                        @   in Loop: Header=BB0_10 Depth=1
	ldm	r9, {r0, r1}
	ldr	r2, [sp, #68]           @ 4-byte Reload
	addne	r11, r11, #1
	adds	r0, r0, r8
	b	.LBB0_191
.LBB0_191:                              @ %sw.epilog551
                                        @   in Loop: Header=BB0_10 Depth=1
	adc	r1, r1, r2
	ldmib	r4, {r2, r3}
	sub	r2, r2, r3
	adds	r8, r0, r2
	adc	r0, r1, r2, asr #31
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB0_192
.LBB0_192:                              @ %for.inc565
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r6, #31
	mov	r7, #1
	orr	r6, r6, #8388608
	b	.LBB0_193
.LBB0_193:                              @ %for.inc565
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r0, [r10, #1]!
	cmp	r0, #0
	bne	.LBB0_10
	b	.LBB0_201
.LBB0_194:                              @ %if.then57
	ldr	r1, [r4, #104]
	cmp	r1, #0
	ldrne	r1, [r4, #4]
	subne	r1, r1, #1
	strne	r1, [r4, #4]
	cmp	r11, #0
	bne	.LBB0_201
	b	.LBB0_195
.LBB0_195:                              @ %cond.end64
	mov	r7, #0
	cmp	r0, #0
	bge	.LBB0_201
	b	.LBB0_196
.LBB0_196:                              @ %if.then570
	mvn	r11, #0
	b	.LBB0_199
.LBB0_197:
	ldr	r7, [sp, #36]           @ 4-byte Reload
	b	.LBB0_198
.LBB0_198:                              @ %input_fail
	ldr	r11, [sp, #64]          @ 4-byte Reload
	cmp	r11, #0
	mvneq	r11, #0
	b	.LBB0_199
.LBB0_199:                              @ %match_fail
	cmp	r7, #0
	beq	.LBB0_201
	b	.LBB0_200
.LBB0_200:                              @ %if.then573
	ldr	r0, [sp, #44]           @ 4-byte Reload
	bl	free
	ldr	r0, [sp, #40]           @ 4-byte Reload
	bl	free
	b	.LBB0_201
.LBB0_201:                              @ %if.end575
	ldr	r0, [sp, #52]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_203
	b	.LBB0_202
.LBB0_202:                              @ %if.then577
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_203
.LBB0_203:                              @ %if.end579
	mov	r0, r11
	add	sp, sp, #356
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_204:
	ldr	r11, [sp, #64]          @ 4-byte Reload
	ldr	r7, [sp, #36]           @ 4-byte Reload
	b	.LBB0_199
.LBB0_205:
	mov	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_198
.LBB0_206:
	ldr	r11, [sp, #64]          @ 4-byte Reload
	b	.LBB0_199
.LBB0_207:
	mov	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_198
.Ltmp0:
	.size	vfscanf, .Ltmp0-vfscanf
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	__isoc99_vfscanf
__isoc99_vfscanf = vfscanf
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
