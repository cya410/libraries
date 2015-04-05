.section vfwscanf_text
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
	.file	"src/stdio/vfwscanf.bc"
	.globl	vfwscanf
	.align	2
	.type	vfwscanf,%function
.section bb0_0
vfwscanf:                               @ @vfwscanf
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
	.pad	#212
	sub	sp, sp, #212
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r6, r1
	mov	r8, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	str	r2, [sp, #60]           @ 4-byte Spill
	ldr	r0, [r4, #76]
	cmp	r0, #0
	mov	r0, #0
	str	r0, [sp, #76]           @ 4-byte Spill
	blt	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	str	r0, [sp, #76]           @ 4-byte Spill
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.end
	ldrsb	r0, [r4, #74]
	add	r1, r0, #1
	orr	r0, r1, r0
	strb	r0, [r4, #74]
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.LBB0_193
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.body.lr.ph
                                        @ implicit-def: R1
	str	r1, [sp, #40]           @ 4-byte Spill
	mov	r10, #0
	mov	r9, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.body.lr.ph
	mov	r8, #0
                                        @ implicit-def: R1
	str	r1, [sp, #64]           @ 4-byte Spill
                                        @ implicit-def: R1
	str	r1, [sp, #68]           @ 4-byte Spill
	b	.LBB0_106
.section bb0_9
.LBB0_9:                                @ %if.end.i680
                                        @   in Loop: Header=BB0_106 Depth=1
	adr	r1, .LJTI0_2_2
	ldr	r8, [sp, #72]           @ 4-byte Reload
	lsl	r0, r0, #2
	ldr	pc, [r0, r1]
.LJTI0_2_2:
	.long	.LBB0_41
	.long	.LBB0_42
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_181
	.long	.LBB0_43
.section bb0_10
.LBB0_10:                               @ %sw.bb5.i
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r10, [r11]
	b	.LBB0_181
.section bb0_11
.LBB0_11:                               @ %sw.bb143
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r5, #1
	b	.LBB0_143
.section bb0_12
.LBB0_12:                               @ %sw.bb223
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r3, #99
	bne	.LBB0_17
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then226
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #1
	cmp	r8, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	ldr	r0, .LCPI0_7
	movlt	r8, #1
	b	.LBB0_32
.LCPI0_7:
	.long	.L.str
.section bb0_14
.LBB0_14:                               @ %sw.bb144
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r5, #2
	b	.LBB0_143
.section bb0_15
.LBB0_15:                               @ %sw.bb
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, [r0, #4]
	mvn	r5, #0
	cmp	r1, #104
	addeq	r6, r0, #8
	mvneq	r5, #1
	b	.LBB0_143
.section bb0_16
.LBB0_16:                               @ %sw.bb135
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, [r0, #4]
	mov	r5, #1
	cmp	r1, #108
	addeq	r6, r0, #8
	moveq	r5, #3
	b	.LBB0_143
.section bb0_17
.LBB0_17:                               @ %if.else231
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r3, #115
	bne	.LBB0_38
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #32
	str	r0, [sp, #80]
	mov	r0, #9
	str	r0, [sp, #84]
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #10
	str	r0, [sp, #88]
	mov	r0, #13
	str	r0, [sp, #92]
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #11
	str	r0, [sp, #96]
	mov	r0, #12
	str	r0, [sp, #100]
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #133
	str	r0, [sp, #104]
	mov	r0, #8192
	str	r0, [sp, #108]
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #1
	orr	r0, r0, #8192
	str	r0, [sp, #112]
	mov	r0, #2
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	orr	r0, r0, #8192
	str	r0, [sp, #116]
	mov	r0, #3
	orr	r0, r0, #8192
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r0, [sp, #120]
	mov	r0, #4
	orr	r0, r0, #8192
	str	r0, [sp, #124]
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #5
	orr	r0, r0, #8192
	str	r0, [sp, #128]
	mov	r0, #6
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	orr	r0, r0, #8192
	str	r0, [sp, #132]
	mov	r0, #8
	orr	r0, r0, #8192
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r0, [sp, #136]
	mov	r0, #9
	orr	r0, r0, #8192
	str	r0, [sp, #140]
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #10
	orr	r0, r0, #8192
	str	r0, [sp, #144]
	mov	r0, #40
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	orr	r0, r0, #8192
	str	r0, [sp, #148]
	mov	r0, #41
	orr	r0, r0, #8192
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r0, [sp, #152]
	mov	r0, #95
	orr	r0, r0, #8192
	str	r0, [sp, #156]
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.then234
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #12288
	str	r0, [sp, #160]
	mov	r0, #0
	str	r0, [sp, #164]
	mov	r0, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	add	r0, sp, #80
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end278
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end278
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r5, #1
	mov	r0, #0
	ldr	r1, [sp, #56]           @ 4-byte Reload
	mov	r2, #0
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end278
                                        @   in Loop: Header=BB0_106 Depth=1
	moveq	r0, r11
	cmp	r5, #0
	moveq	r2, r11
	cmp	r8, #1
	mvnlt	r8, #0
	cmp	r1, #0
	beq	.LBB0_37
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.then297
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r3, #99
	mov	r1, #31
	mov	r7, r2
	addeq	r1, r8, #1
	cmp	r5, #1
	bne	.LBB0_47
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.then307
                                        @   in Loop: Header=BB0_106 Depth=1
	lsl	r0, r1, #2
	str	r1, [sp, #40]           @ 4-byte Spill
	bl	malloc
	mov	r2, r7
	str	r0, [sp, #64]           @ 4-byte Spill
	cmp	r0, #0
	str	r2, [sp, #68]           @ 4-byte Spill
	b	.LBB0_49
.section bb0_37
.LBB0_37:                               @   in Loop: Header=BB0_106 Depth=1
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB0_50
.section bb0_38
.LBB0_38:                               @ %if.else255
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r6
	ldr	r1, [r0, #4]!
	cmp	r1, #94
	mov	r7, r0
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.else255
                                        @   in Loop: Header=BB0_106 Depth=1
	addeq	r7, r6, #8
	movne	r0, r6
	ldr	r2, [r7]
	mov	r6, r7
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.else255
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r7, [sp, #36]           @ 4-byte Spill
	cmp	r2, #93
	addeq	r6, r0, #8
	cmp	r1, #94
	mov	r0, #0
	moveq	r0, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB0_45
.section bb0_41
.LBB0_41:                               @ %sw.bb.i
                                        @   in Loop: Header=BB0_106 Depth=1
	strb	r10, [r11]
	b	.LBB0_181
.section bb0_42
.LBB0_42:                               @ %sw.bb1.i
                                        @   in Loop: Header=BB0_106 Depth=1
	strh	r10, [r11]
	b	.LBB0_181
.section bb0_43
.LBB0_43:                               @ %sw.bb7.i
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r10, [r11]
	str	r9, [r11, #4]
	b	.LBB0_181
.section bb0_44
.LBB0_44:                               @ %if.end274
                                        @   in Loop: Header=BB0_45 Depth=2
	add	r6, r6, #4
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %while.cond268
                                        @   Parent Loop BB0_106 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.LBB0_190
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %while.cond268
                                        @   in Loop: Header=BB0_45 Depth=2
	cmp	r0, #93
	bne	.LBB0_44
	b	.LBB0_33
.section bb0_47
.LBB0_47:                               @ %if.else313
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r0, r1
	str	r1, [sp, #40]           @ 4-byte Spill
	bl	malloc
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %if.else313
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r2, r0
	mov	r0, #0
	cmp	r2, #0
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.else313
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r3, [sp, #52]           @ 4-byte Reload
	beq	.LBB0_190
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %while.cond320.preheader
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r8, #0
	beq	.LBB0_91
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %while.body322.lr.ph
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	mov	r7, #0
	add	r0, r0, #4
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %while.body322
                                        @   Parent Loop BB0_106 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_61 Depth 3
                                        @         Child Loop BB0_66 Depth 4
	str	r3, [sp, #52]           @ 4-byte Spill
	str	r2, [sp, #68]           @ 4-byte Spill
	ldmib	r4, {r0, r1}
	cmp	r0, r1
	bhs	.LBB0_55
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %land.lhs.true327
                                        @   in Loop: Header=BB0_52 Depth=2
	ldrsb	r1, [r0]
	cmp	r1, #0
	blt	.LBB0_55
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %cond.end338.thread
                                        @   in Loop: Header=BB0_52 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r1, [r0]
	b	.LBB0_56
.section bb0_55
.LBB0_55:                               @ %cond.end338
                                        @   in Loop: Header=BB0_52 Depth=2
	mov	r0, r4
	bl	getwc
	mov	r1, r0
	cmp	r1, #0
	blt	.LBB0_96
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %if.end343
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r2, [sp, #36]           @ 4-byte Reload
	mov	lr, r7
	mov	r12, r6
	ldr	r0, [r2]
	cmp	r0, #93
	bne	.LBB0_58
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %if.then4.i
                                        @   in Loop: Header=BB0_52 Depth=2
	mov	r3, #1
	cmp	r1, #93
	b	.LBB0_60
.section bb0_58
.LBB0_58:                               @ %if.end343
                                        @   in Loop: Header=BB0_52 Depth=2
	cmp	r0, #45
	mov	r0, r2
	bne	.LBB0_61
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %if.then.i
                                        @   in Loop: Header=BB0_52 Depth=2
	mov	r3, #1
	cmp	r1, #45
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.then4.i
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	beq	.LBB0_70
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %for.cond.i
                                        @   Parent Loop BB0_106 Depth=1
                                        @     Parent Loop BB0_52 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_66 Depth 4
	ldr	r2, [r0]
	mov	r3, #0
	cmp	r2, #93
	cmpne	r2, #0
	beq	.LBB0_70
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %for.cond.i
                                        @   in Loop: Header=BB0_61 Depth=3
	cmp	r2, #45
	bne	.LBB0_69
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %land.lhs.true.i
                                        @   in Loop: Header=BB0_61 Depth=3
	mov	r7, r0
	mov	r2, #45
	ldr	r6, [r7, #4]!
	cmp	r6, #0
	cmpne	r6, #93
	beq	.LBB0_69
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.then17.i
                                        @   in Loop: Header=BB0_61 Depth=3
	ldr	r0, [r0, #-4]
	b	.LBB0_66
.section bb0_65
.LBB0_65:                               @ %for.cond20.i
                                        @   in Loop: Header=BB0_66 Depth=4
	add	r0, r0, #1
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.then17.i
                                        @   Parent Loop BB0_106 Depth=1
                                        @     Parent Loop BB0_52 Depth=2
                                        @       Parent Loop BB0_61 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	cmp	r0, r6
	bhs	.LBB0_68
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %for.body22.i
                                        @   in Loop: Header=BB0_66 Depth=4
	mov	r3, #1
	cmp	r1, r0
	bne	.LBB0_65
	b	.LBB0_70
.section bb0_68
.LBB0_68:                               @   in Loop: Header=BB0_61 Depth=3
	mov	r2, r6
	mov	r0, r7
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.end26.i
                                        @   in Loop: Header=BB0_61 Depth=3
	add	r0, r0, #4
	mov	r3, #1
	cmp	r2, r1
	bne	.LBB0_61
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %in_set.exit
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r0, [sp, #32]           @ 4-byte Reload
	cmp	r3, r0
	beq	.LBB0_92
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.end348
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r2, [sp, #64]           @ 4-byte Reload
	mov	r6, r12
	cmp	r2, #0
	beq	.LBB0_78
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %if.then350
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r3, [sp, #44]           @ 4-byte Reload
	ldr	r0, [sp, #56]           @ 4-byte Reload
	str	r1, [r2, r3, lsl #2]
	add	r3, r3, #1
	cmp	r0, #0
	beq	.LBB0_85
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.then350
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r1, [sp, #40]           @ 4-byte Reload
	cmp	r3, r1
	bne	.LBB0_85
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %if.then357
                                        @   in Loop: Header=BB0_52 Depth=2
	mov	r0, #1
	str	r5, [sp, #48]           @ 4-byte Spill
	mov	r5, r6
	mov	r7, r11
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %if.then357
                                        @   in Loop: Header=BB0_52 Depth=2
	mov	r11, r1
	orr	r6, r0, r1, lsl #1
	mov	r0, r2
	lsl	r1, r6, #2
	bl	realloc
	cmp	r0, #0
	beq	.LBB0_190
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %if.end366
                                        @   in Loop: Header=BB0_52 Depth=2
	str	r6, [sp, #40]           @ 4-byte Spill
	mov	r6, r5
	ldr	r2, [sp, #68]           @ 4-byte Reload
	ldr	r5, [sp, #48]           @ 4-byte Reload
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %if.end366
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r3, [sp, #52]           @ 4-byte Reload
	str	r11, [sp, #44]          @ 4-byte Spill
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r11, r7
	b	.LBB0_89
.section bb0_78
.LBB0_78:                               @ %if.else368
                                        @   in Loop: Header=BB0_52 Depth=2
	cmp	r5, #1
	beq	.LBB0_87
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.then371
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r2, [sp, #68]           @ 4-byte Reload
	ldr	r7, [sp, #44]           @ 4-byte Reload
	add	r0, sp, #170
	cmp	r2, #0
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.then371
                                        @   in Loop: Header=BB0_52 Depth=2
	addne	r0, r2, r7
	bl	wctomb
	cmp	r0, #0
	blt	.LBB0_189
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %if.end384
                                        @   in Loop: Header=BB0_52 Depth=2
	add	r7, r0, r7
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_86
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %if.end384
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r1, [sp, #40]           @ 4-byte Reload
	str	r7, [sp, #44]           @ 4-byte Spill
	sub	r0, r1, #4
	cmp	r7, r0
	bls	.LBB0_87
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %if.then391
                                        @   in Loop: Header=BB0_52 Depth=2
	mov	r0, #1
	orr	r1, r0, r1, lsl #1
	ldr	r0, [sp, #68]           @ 4-byte Reload
	str	r1, [sp, #40]           @ 4-byte Spill
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.then391
                                        @   in Loop: Header=BB0_52 Depth=2
	bl	realloc
	ldr	r3, [sp, #52]           @ 4-byte Reload
	mov	r2, r0
	mov	r0, #0
	str	r0, [sp, #64]           @ 4-byte Spill
	cmp	r2, #0
	bne	.LBB0_89
	b	.LBB0_190
.section bb0_85
.LBB0_85:                               @   in Loop: Header=BB0_52 Depth=2
	str	r3, [sp, #44]           @ 4-byte Spill
	b	.LBB0_88
.section bb0_86
.LBB0_86:                               @   in Loop: Header=BB0_52 Depth=2
	str	r7, [sp, #44]           @ 4-byte Spill
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @   in Loop: Header=BB0_52 Depth=2
	mov	r0, #0
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %if.end402
                                        @   in Loop: Header=BB0_52 Depth=2
	ldr	r2, [sp, #68]           @ 4-byte Reload
	ldr	r3, [sp, #52]           @ 4-byte Reload
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %if.end402
                                        @   in Loop: Header=BB0_52 Depth=2
	adds	r10, r10, #1
	mov	r0, #0
	mov	r7, #1
	adc	r9, r9, #0
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %if.end402
                                        @   in Loop: Header=BB0_52 Depth=2
	cmp	r8, #0
	movgt	r0, #1
	subs	r8, r8, r0
	bne	.LBB0_52
	b	.LBB0_99
.section bb0_91
.LBB0_91:                               @   in Loop: Header=BB0_106 Depth=1
	mov	r0, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_99
.section bb0_92
.LBB0_92:                               @ %if.then409
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r6, r12
	cmp	r1, #127
	bhi	.LBB0_95
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %if.then409
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r4, #8]
	mov	r7, lr
	cmp	r0, #0
	beq	.LBB0_96
	b	.LBB0_94
.section bb0_94
.LBB0_94:                               @ %cond.true415
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r4, #4]
	sub	r0, r0, #1
	str	r0, [r4, #4]
	b	.LBB0_97
.section bb0_95
.LBB0_95:                               @   in Loop: Header=BB0_106 Depth=1
	mov	r7, lr
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %cond.false419
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r1
	mov	r1, r4
	bl	ungetwc
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %cond.end421
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r3, [sp, #52]           @ 4-byte Reload
	ldr	r0, [sp, #68]           @ 4-byte Reload
	cmp	r3, #99
	beq	.LBB0_196
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %cond.end421
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r2, r0
	cmp	r7, #0
	beq	.LBB0_196
	b	.LBB0_99
.section bb0_99
.LBB0_99:                               @ %if.end429
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	ldr	r1, [sp, #64]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_101
	b	.LBB0_100
.section bb0_100
.LBB0_100:                              @ %if.then431
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r5, #1
	strne	r2, [r11]
	streq	r1, [r11]
	b	.LBB0_101
.section bb0_101
.LBB0_101:                              @ %if.end437
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r8, [sp, #72]           @ 4-byte Reload
	cmp	r3, #99
	beq	.LBB0_104
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %if.then440
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r3, [sp, #44]           @ 4-byte Reload
	cmp	r1, #0
	movne	r0, #0
	strne	r0, [r1, r3, lsl #2]
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB0_105
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %if.then446
                                        @   in Loop: Header=BB0_106 Depth=1
	strb	r0, [r2, r3]
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @   in Loop: Header=BB0_106 Depth=1
	str	r2, [sp, #68]           @ 4-byte Spill
	b	.LBB0_177
.section bb0_105
.LBB0_105:                              @   in Loop: Header=BB0_106 Depth=1
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB0_177
.section bb0_106
.LBB0_106:                              @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_108 Depth 2
                                        @     Child Loop BB0_110 Depth 2
                                        @     Child Loop BB0_136 Depth 2
                                        @     Child Loop BB0_152 Depth 2
                                        @     Child Loop BB0_45 Depth 2
                                        @     Child Loop BB0_52 Depth 2
                                        @       Child Loop BB0_61 Depth 3
                                        @         Child Loop BB0_66 Depth 4
	bl	iswspace
	cmp	r0, #0
	beq	.LBB0_118
	b	.LBB0_107
.section bb0_107
.LBB0_107:                              @ %while.cond.preheader
                                        @   in Loop: Header=BB0_106 Depth=1
	add	r5, r6, #4
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %while.cond
                                        @   Parent Loop BB0_106 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r5], #4
	bl	iswspace
	cmp	r0, #0
	bne	.LBB0_108
	b	.LBB0_109
.section bb0_109
.LBB0_109:                              @ %while.cond12.preheader
                                        @   in Loop: Header=BB0_106 Depth=1
	sub	r11, r5, #8
	mov	r5, r10
	mov	r6, r9
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %while.cond12
                                        @   Parent Loop BB0_106 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldmib	r4, {r0, r1}
	mov	r9, r6
	mov	r10, r5
	cmp	r0, r1
	bhs	.LBB0_113
	b	.LBB0_111
.section bb0_111
.LBB0_111:                              @ %land.lhs.true
                                        @   in Loop: Header=BB0_110 Depth=2
	ldrsb	r1, [r0]
	cmp	r1, #0
	blt	.LBB0_113
	b	.LBB0_112
.section bb0_112
.LBB0_112:                              @ %cond.true19
                                        @   in Loop: Header=BB0_110 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r7, [r0]
	b	.LBB0_114
.section bb0_113
.LBB0_113:                              @ %cond.false23
                                        @   in Loop: Header=BB0_110 Depth=2
	mov	r0, r4
	bl	getwc
	mov	r7, r0
	b	.LBB0_114
.section bb0_114
.LBB0_114:                              @ %cond.end25
                                        @   in Loop: Header=BB0_110 Depth=2
	adds	r5, r10, #1
	mov	r0, r7
	adc	r6, r9, #0
	bl	iswspace
	cmp	r0, #0
	bne	.LBB0_110
	b	.LBB0_115
.section bb0_115
.LBB0_115:                              @ %while.end30
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r7, #127
	bhi	.LBB0_121
	b	.LBB0_116
.section bb0_116
.LBB0_116:                              @ %while.end30
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.LBB0_121
	b	.LBB0_117
.section bb0_117
.LBB0_117:                              @ %cond.true36
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r4, #4]
	mov	r6, r11
	sub	r0, r0, #1
	str	r0, [r4, #4]
	b	.LBB0_181
.section bb0_118
.LBB0_118:                              @ %if.end
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, [r6]
	cmp	r1, #37
	bne	.LBB0_123
	b	.LBB0_119
.section bb0_119
.LBB0_119:                              @ %lor.lhs.false
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r6
	ldr	r2, [r0, #4]!
	cmp	r2, #42
	bne	.LBB0_122
	b	.LBB0_120
.section bb0_120
.LBB0_120:                              @ %if.then95
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r8, [sp, #72]           @ 4-byte Spill
	add	r0, r6, #8
	mov	r11, #0
	b	.LBB0_135
.section bb0_121
.LBB0_121:                              @ %cond.false40
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r7
	mov	r1, r4
	bl	ungetwc
	mov	r6, r11
	b	.LBB0_181
.section bb0_122
.LBB0_122:                              @ %lor.lhs.false
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r2, #37
	bne	.LBB0_129
	b	.LBB0_123
.section bb0_123
.LBB0_123:                              @ %if.then49
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r1, #37
	mov	r0, #0
	moveq	r0, #1
	add	r6, r6, r0, lsl #2
	ldmib	r4, {r0, r1}
	cmp	r0, r1
	bhs	.LBB0_126
	b	.LBB0_124
.section bb0_124
.LBB0_124:                              @ %land.lhs.true56
                                        @   in Loop: Header=BB0_106 Depth=1
	ldrsb	r1, [r0]
	cmp	r1, #0
	blt	.LBB0_126
	b	.LBB0_125
.section bb0_125
.LBB0_125:                              @ %cond.true61
                                        @   in Loop: Header=BB0_106 Depth=1
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r7, [r0]
	b	.LBB0_127
.section bb0_126
.LBB0_126:                              @ %cond.false65
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r4
	bl	getwc
	mov	r7, r0
	b	.LBB0_127
.section bb0_127
.LBB0_127:                              @ %cond.end67
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r6]
	cmp	r7, r0
	bne	.LBB0_182
	b	.LBB0_128
.section bb0_128
.LBB0_128:                              @ %if.end89
                                        @   in Loop: Header=BB0_106 Depth=1
	adds	r10, r10, #1
	adc	r9, r9, #0
	b	.LBB0_181
.section bb0_129
.LBB0_129:                              @ %if.else
                                        @   in Loop: Header=BB0_106 Depth=1
	sub	r1, r2, #48
	cmp	r1, #9
	bhi	.LBB0_134
	b	.LBB0_130
.section bb0_130
.LBB0_130:                              @ %land.lhs.true99
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r2, [r6, #8]
	cmp	r2, #36
	bne	.LBB0_134
	b	.LBB0_131
.section bb0_131
.LBB0_131:                              @ %if.then103
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r2, [sp, #60]           @ 4-byte Reload
	cmp	r1, #0
	mvn	r0, #-1073741823
	str	r8, [sp, #72]           @ 4-byte Spill
	b	.LBB0_132
.section bb0_132
.LBB0_132:                              @ %if.then103
                                        @   in Loop: Header=BB0_106 Depth=1
	mvneq	r0, r1
	add	r0, r0, r1
	add	r0, r2, r0, lsl #2
	str	r2, [sp, #208]
	b	.LBB0_133
.section bb0_133
.LBB0_133:                              @ %if.then103
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r2, [sp, #204]
	add	r1, r0, #8
	str	r1, [sp, #204]
	ldr	r11, [r0, #4]
	add	r0, r6, #12
	b	.LBB0_135
.section bb0_134
.LBB0_134:                              @ %if.else108
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, [sp, #60]           @ 4-byte Reload
	str	r8, [sp, #72]           @ 4-byte Spill
	ldr	r11, [r1], #4
	str	r1, [sp, #60]           @ 4-byte Spill
	b	.LBB0_135
.section bb0_135
.LBB0_135:                              @ %if.end111
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, [r0]
	mov	r3, #0
	mov	r8, #0
	sub	r2, r1, #48
	cmp	r2, #9
	bhi	.LBB0_137
	b	.LBB0_136
.section bb0_136
.LBB0_136:                              @ %for.body116
                                        @   Parent Loop BB0_106 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r2, r8, r8, lsl #2
	add	r1, r1, r2, lsl #1
	sub	r8, r1, #48
	ldr	r1, [r0, #4]!
	sub	r2, r1, #48
	cmp	r2, #10
	blo	.LBB0_136
	b	.LBB0_137
.section bb0_137
.LBB0_137:                              @ %for.end
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r1, #109
	bne	.LBB0_140
	b	.LBB0_138
.section bb0_138
.LBB0_138:                              @ %if.then122
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, [r0, #4]!
	mov	r2, #0
	cmp	r11, #0
	mov	r3, r11
	b	.LBB0_139
.section bb0_139
.LBB0_139:                              @ %if.then122
                                        @   in Loop: Header=BB0_106 Depth=1
	movne	r3, #1
	str	r2, [sp, #68]           @ 4-byte Spill
	mov	r2, #0
	str	r2, [sp, #64]           @ 4-byte Spill
	b	.LBB0_140
.section bb0_140
.LBB0_140:                              @ %if.end127
                                        @   in Loop: Header=BB0_106 Depth=1
	sub	r1, r1, #65
	str	r3, [sp, #56]           @ 4-byte Spill
	cmp	r1, #57
	bhi	.LBB0_190
	b	.LBB0_141
.section bb0_141
.LBB0_141:                              @ %if.end127
                                        @   in Loop: Header=BB0_106 Depth=1
	lsl	r1, r1, #2
	adr	r2, .LJTI0_0_0
	add	r6, r0, #4
	mov	r5, #3
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_14
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_15
	.long	.LBB0_142
	.long	.LBB0_143
	.long	.LBB0_190
	.long	.LBB0_16
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_11
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_142
	.long	.LBB0_190
	.long	.LBB0_11
.section bb0_142
.LBB0_142:                              @ %sw.bb145
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r5, #0
	mov	r6, r0
	b	.LBB0_143
.section bb0_143
.LBB0_143:                              @ %sw.epilog
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r2, [r6]
	and	r1, r2, #47
	orr	r0, r2, #32
	cmp	r1, #3
	b	.LBB0_144
.section bb0_144
.LBB0_144:                              @ %sw.epilog
                                        @   in Loop: Header=BB0_106 Depth=1
	moveq	r2, r0
	moveq	r5, #1
	cmp	r2, #91
	beq	.LBB0_147
	b	.LBB0_145
.section bb0_145
.LBB0_145:                              @ %sw.epilog
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r2, #110
	beq	.LBB0_178
	b	.LBB0_146
.section bb0_146
.LBB0_146:                              @ %land.lhs.true157
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r0, #99
	bne	.LBB0_151
	b	.LBB0_147
.section bb0_147
.LBB0_147:                              @ %if.else185
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	str	r2, [sp, #52]           @ 4-byte Spill
	cmp	r1, r0
	bhs	.LBB0_150
	b	.LBB0_148
.section bb0_148
.LBB0_148:                              @ %land.lhs.true190
                                        @   in Loop: Header=BB0_106 Depth=1
	ldrsb	r2, [r1]
	cmp	r2, #0
	blt	.LBB0_150
	b	.LBB0_149
.section bb0_149
.LBB0_149:                              @ %if.end203.thread
                                        @   in Loop: Header=BB0_106 Depth=1
	add	r2, r1, #1
	str	r2, [r4, #4]
	ldrb	r7, [r1]
	b	.LBB0_159
.section bb0_150
.LBB0_150:                              @ %cond.false199
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r4
	str	r5, [sp, #48]           @ 4-byte Spill
	mov	r5, r11
	str	r6, [sp, #44]           @ 4-byte Spill
	bl	getwc
	mov	r7, r0
	b	.LBB0_157
.section bb0_151
.LBB0_151:                              @   in Loop: Header=BB0_106 Depth=1
	str	r5, [sp, #48]           @ 4-byte Spill
	mov	r5, r11
	str	r6, [sp, #44]           @ 4-byte Spill
	mov	r6, r10
	mov	r11, r9
	str	r2, [sp, #52]           @ 4-byte Spill
	b	.LBB0_152
.section bb0_152
.LBB0_152:                              @ %while.cond162
                                        @   Parent Loop BB0_106 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldmib	r4, {r0, r1}
	mov	r9, r11
	mov	r10, r6
	cmp	r0, r1
	bhs	.LBB0_155
	b	.LBB0_153
.section bb0_153
.LBB0_153:                              @ %land.lhs.true167
                                        @   in Loop: Header=BB0_152 Depth=2
	ldrsb	r1, [r0]
	cmp	r1, #0
	blt	.LBB0_155
	b	.LBB0_154
.section bb0_154
.LBB0_154:                              @ %cond.true172
                                        @   in Loop: Header=BB0_152 Depth=2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r7, [r0]
	b	.LBB0_156
.section bb0_155
.LBB0_155:                              @ %cond.false176
                                        @   in Loop: Header=BB0_152 Depth=2
	mov	r0, r4
	bl	getwc
	mov	r7, r0
	b	.LBB0_156
.section bb0_156
.LBB0_156:                              @ %cond.end178
                                        @   in Loop: Header=BB0_152 Depth=2
	adds	r6, r10, #1
	mov	r0, r7
	adc	r11, r9, #0
	bl	iswspace
	cmp	r0, #0
	bne	.LBB0_152
	b	.LBB0_157
.section bb0_157
.LBB0_157:                              @ %if.end203
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r6, [sp, #44]           @ 4-byte Reload
	mov	r11, r5
	cmp	r7, #0
	blt	.LBB0_190
	b	.LBB0_158
.section bb0_158
.LBB0_158:                              @ %if.end203.if.end207_crit_edge
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r4, #8]
	ldr	r5, [sp, #48]           @ 4-byte Reload
	b	.LBB0_159
.section bb0_159
.LBB0_159:                              @ %if.end207
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r7, #127
	bhi	.LBB0_162
	b	.LBB0_160
.section bb0_160
.LBB0_160:                              @ %if.end207
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r0, #0
	beq	.LBB0_162
	b	.LBB0_161
.section bb0_161
.LBB0_161:                              @ %cond.true213
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r4, #4]
	sub	r0, r0, #1
	str	r0, [r4, #4]
	b	.LBB0_163
.section bb0_162
.LBB0_162:                              @ %cond.false217
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r7
	mov	r1, r4
	bl	ungetwc
	b	.LBB0_163
.section bb0_163
.LBB0_163:                              @ %if.end221
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r3, [sp, #52]           @ 4-byte Reload
	cmp	r3, #87
	bgt	.LBB0_166
	b	.LBB0_164
.section bb0_164
.LBB0_164:                              @ %if.end221
                                        @   in Loop: Header=BB0_106 Depth=1
	sub	r0, r3, #65
	cmp	r0, #6
	bhi	.LBB0_190
	b	.LBB0_165
.section bb0_165
.LBB0_165:                              @ %if.end221
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r1, #1
	mov	r2, #113
	tst	r2, r1, lsl r0
	bne	.LBB0_168
	b	.LBB0_190
.section bb0_166
.LBB0_166:                              @ %if.end221
                                        @   in Loop: Header=BB0_106 Depth=1
	sub	r0, r3, #88
	cmp	r0, #32
	bhi	.LBB0_190
	b	.LBB0_167
.section bb0_167
.LBB0_167:                              @ %if.end221
                                        @   in Loop: Header=BB0_106 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI0_1_1
	ldr	pc, [r0, r1]
.LJTI0_1_1:
	.long	.LBB0_168
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_12
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_168
	.long	.LBB0_190
	.long	.LBB0_12
	.long	.LBB0_168
	.long	.LBB0_168
	.long	.LBB0_168
	.long	.LBB0_168
	.long	.LBB0_190
	.long	.LBB0_168
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_178
	.long	.LBB0_168
	.long	.LBB0_168
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_12
	.long	.LBB0_190
	.long	.LBB0_168
	.long	.LBB0_190
	.long	.LBB0_190
	.long	.LBB0_168
.section bb0_168
.LBB0_168:                              @ %sw.bb450
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r1, .LCPI0_5
	add	r0, r5, r5, lsl #1
	mov	r7, r6
	cmp	r8, #0
	b	.LBB0_169
.LCPI0_5:
	.long	vfwscanf.size_pfx
.section bb0_169
.LBB0_169:                              @ %sw.bb450
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r6, #0
	ldr	r2, .LCPI0_6
	add	r5, sp, #170
	movle	r8, r6
	b	.LBB0_170
.LCPI0_6:
	.long	.L.str1
.section bb0_170
.LBB0_170:                              @ %sw.bb450
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r11, #0
	add	r0, r0, r1
	ldr	r1, .LCPI0_4
	add	r0, r0, #6
	b	.LBB0_171
.LCPI0_4:
	.long	.L.str2
.section bb0_171
.LBB0_171:                              @ %sw.bb450
                                        @   in Loop: Header=BB0_106 Depth=1
	stm	sp, {r1, r8}
	str	r0, [sp, #8]
	str	r3, [sp, #12]
	mov	r3, #2
	b	.LBB0_172
.section bb0_172
.LBB0_172:                              @ %sw.bb450
                                        @   in Loop: Header=BB0_106 Depth=1
	mov	r0, r5
	mov	r1, #22
	movne	r3, #1
	bl	snprintf
	b	.LBB0_173
.section bb0_173
.LBB0_173:                              @ %sw.bb450
                                        @   in Loop: Header=BB0_106 Depth=1
	add	r3, sp, #192
	cmp	r11, #0
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_174
.section bb0_174
.LBB0_174:                              @ %sw.bb450
                                        @   in Loop: Header=BB0_106 Depth=1
	str	r6, [sp, #196]
	str	r6, [sp, #192]
	mov	r2, r3
	movne	r2, r11
	bl	fscanf
	cmn	r0, #1
	beq	.LBB0_190
	b	.LBB0_175
.section bb0_175
.LBB0_175:                              @ %if.else474
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [sp, #192]
	ldr	r1, [sp, #196]
	mov	r6, r7
	orrs	r2, r0, r1
	beq	.LBB0_197
	b	.LBB0_176
.section bb0_176
.LBB0_176:                              @ %if.end478
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r8, [sp, #72]           @ 4-byte Reload
	adds	r10, r0, r10
	adc	r9, r1, r9
	b	.LBB0_177
.section bb0_177
.LBB0_177:                              @ %sw.epilog481
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r11, #0
	addne	r8, r8, #1
	b	.LBB0_181
.section bb0_178
.LBB0_178:                              @ %sw.bb222
                                        @   in Loop: Header=BB0_106 Depth=1
	cmp	r11, #0
	beq	.LBB0_180
	b	.LBB0_179
.section bb0_179
.LBB0_179:                              @ %if.end.i680
                                        @   in Loop: Header=BB0_106 Depth=1
	add	r0, r5, #2
	cmp	r0, #5
	bls	.LBB0_9
	b	.LBB0_180
.section bb0_180
.LBB0_180:                              @   in Loop: Header=BB0_106 Depth=1
	ldr	r8, [sp, #72]           @ 4-byte Reload
	b	.LBB0_181
.section bb0_181
.LBB0_181:                              @ %for.inc486
                                        @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [r6, #4]!
	cmp	r0, #0
	bne	.LBB0_106
	b	.LBB0_193
.section bb0_182
.LBB0_182:                              @ %if.then71
	cmp	r7, #127
	bhi	.LBB0_185
	b	.LBB0_183
.section bb0_183
.LBB0_183:                              @ %if.then71
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.LBB0_185
	b	.LBB0_184
.section bb0_184
.LBB0_184:                              @ %cond.true77
	ldr	r0, [r4, #4]
	sub	r0, r0, #1
	str	r0, [r4, #4]
	b	.LBB0_186
.section bb0_185
.LBB0_185:                              @ %cond.false81
	mov	r0, r7
	mov	r1, r4
	bl	ungetwc
	b	.LBB0_186
.section bb0_186
.LBB0_186:                              @ %cond.end83
	cmp	r8, #0
	bne	.LBB0_193
	b	.LBB0_187
.section bb0_187
.LBB0_187:                              @ %cond.end83
	mov	r0, #0
	cmp	r7, #0
	bge	.LBB0_193
	b	.LBB0_188
.section bb0_188
.LBB0_188:                              @ %if.then491
	mvn	r8, #0
	b	.LBB0_191
.section bb0_189
.LBB0_189:
	mov	r0, #0
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB0_190
.section bb0_190
.LBB0_190:                              @ %input_fail
	ldr	r8, [sp, #72]           @ 4-byte Reload
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r8, #0
	mvneq	r8, #0
	b	.LBB0_191
.section bb0_191
.LBB0_191:                              @ %match_fail
	cmp	r0, #0
	beq	.LBB0_193
	b	.LBB0_192
.section bb0_192
.LBB0_192:                              @ %if.then494
	ldr	r0, [sp, #68]           @ 4-byte Reload
	bl	free
	ldr	r0, [sp, #64]           @ 4-byte Reload
	bl	free
	b	.LBB0_193
.section bb0_193
.LBB0_193:                              @ %if.end496
	ldr	r0, [sp, #76]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_195
	b	.LBB0_194
.section bb0_194
.LBB0_194:                              @ %if.then498
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_195
.section bb0_195
.LBB0_195:                              @ %if.end500
	mov	r0, r8
	add	sp, sp, #212
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_196
.LBB0_196:
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB0_197
.section bb0_197
.LBB0_197:
	ldr	r8, [sp, #72]           @ 4-byte Reload
	ldr	r0, [sp, #56]           @ 4-byte Reload
	b	.LBB0_191
.Ltmp0:
	.size	vfwscanf, .Ltmp0-vfwscanf
	.cantunwind
	.fnend

	.type	vfwscanf.size_pfx,%object @ @vfwscanf.size_pfx
	.section	.rodata,"a",%progbits
vfwscanf.size_pfx:
	.asciz	"hh"
	.asciz	"h\000"
	.zero	3
	.asciz	"l\000"
	.asciz	"L\000"
	.asciz	"ll"
	.size	vfwscanf.size_pfx, 18

	.type	.L.str,%object          @ @.str
	.section	.rodata.str4.4,"aMS",%progbits,4
	.align	2
.L.str:
	.zero	4
	.size	.L.str, 4

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.asciz	"%.*s%.0d%s%c%%lln"
	.size	.L.str1, 18

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"%*"
	.size	.L.str2, 3

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	__isoc99_vfwscanf
__isoc99_vfwscanf = vfwscanf
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
