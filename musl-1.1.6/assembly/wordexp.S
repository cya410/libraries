.section wordexp_text
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
	.file	"src/misc/wordexp.bc"
	.globl	wordexp
	.align	2
	.type	wordexp,%function
.section bb0_0
wordexp:                                @ @wordexp
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
	.pad	#180
	sub	sp, sp, #180
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	add	r1, sp, #32
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, #1
	mov	r6, r2
	bl	pthread_setcancelstate
	ldr	r0, .LCPI0_7
	b	.LBB0_5
.LCPI0_7:
	.long	.L.str
.section bb0_5
.LBB0_5:                                @ %entry
	ldr	r9, .LCPI0_8
	tst	r6, #16
	movne	r9, r0
	tst	r6, #8
	b	.LBB0_6
.LCPI0_8:
	.long	.L.str1
.section bb0_6
.LBB0_6:                                @ %entry
	movne	r0, r4
	blne	wordfree
	tst	r6, #4
	mov	r12, r4
	ldrbne	r7, [r5]
	cmpne	r7, #0
	beq	.LBB0_32
	b	.LBB0_7
.section bb0_7
.LBB0_7:
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	mov	r3, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r7, r7, #255
	cmp	r7, #58
	bgt	.LBB0_11
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r7, #33
	bgt	.LBB0_14
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r7, #10
	beq	.LBB0_30
	b	.LBB0_31
.section bb0_11
.LBB0_11:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r7, #91
	bgt	.LBB0_17
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	sub	r7, r7, #59
	cmp	r7, #3
	bhi	.LBB0_31
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r7, #2
	bne	.LBB0_30
	b	.LBB0_31
.section bb0_14
.LBB0_14:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	sub	r7, r7, #34
	cmp	r7, #7
	bhi	.LBB0_31
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	lsl	r7, r7, #2
	adr	r4, .LJTI0_0_0
	ldr	pc, [r7, r4]
.LJTI0_0_0:
	.long	.LBB0_16
	.long	.LBB0_31
	.long	.LBB0_21
	.long	.LBB0_31
	.long	.LBB0_30
	.long	.LBB0_25
	.long	.LBB0_26
	.long	.LBB0_28
.section bb0_16
.LBB0_16:                               @ %sw.bb23.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r0, #0
	eoreq	r1, r1, #1
	b	.LBB0_31
.section bb0_17
.LBB0_17:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	sub	r4, r7, #123
	cmp	r4, #3
	blo	.LBB0_30
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r7, #96
	beq	.LBB0_24
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r7, #92
	bne	.LBB0_31
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %sw.bb.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r0, #0
	addeq	r2, r2, #1
	b	.LBB0_31
.section bb0_21
.LBB0_21:                               @ %sw.bb42.i
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r7, r2, r5
	ldrb	r7, [r7, #1]
	cmp	r7, #40
	bne	.LBB0_31
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %land.lhs.true.i
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r7, r2, #2
	ldrb	r4, [r5, r7]
	cmp	r4, #40
	bne	.LBB0_24
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then51.i
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r3, r3, #2
	mov	r2, r7
	b	.LBB0_31
.section bb0_24
.LBB0_24:                               @ %sw.bb62.i
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r4, #4
	cmp	r0, #0
	bne	.LBB0_31
	b	.LBB0_53
.section bb0_25
.LBB0_25:                               @ %sw.bb19.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r1, #0
	eoreq	r0, r0, #1
	b	.LBB0_31
.section bb0_26
.LBB0_26:                               @ %sw.bb28.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r3, #0
	beq	.LBB0_30
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.then30.i
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r3, r3, #1
	b	.LBB0_31
.section bb0_28
.LBB0_28:                               @ %sw.bb33.i
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r3, #0
	beq	.LBB0_30
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.then35.i
                                        @   in Loop: Header=BB0_8 Depth=1
	sub	r3, r3, #1
	b	.LBB0_31
.section bb0_30
.LBB0_30:                               @ %sw.bb37.i
                                        @   in Loop: Header=BB0_8 Depth=1
	orr	r7, r1, r0
	mov	r4, #2
	orrs	r7, r7, r3
	beq	.LBB0_53
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %for.inc.i
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r2, r2, #1
	ldrb	r7, [r5, r2]
	cmp	r7, #0
	bne	.LBB0_8
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end67.i
	ands	r10, r6, #2
	mov	r11, #0
	mov	r7, r12
	mov	r8, #0
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end67.i
	ldrne	r11, [r7]
	ldrne	r8, [r7, #4]
	ands	r4, r6, #1
	beq	.LBB0_36
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.then74.i
	ldr	r6, [r7, #8]
	mov	r0, #0
	cmp	r0, r6, lsr #28
	bne	.LBB0_51
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end78.i
	add	r11, r6, r11
	b	.LBB0_37
.section bb0_36
.LBB0_36:                               @ %if.else81.i
	mov	r6, #0
	str	r6, [r7, #8]
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end83.i
	add	r0, sp, #164
	mov	r1, #524288
	bl	pipe2
	cmp	r0, #0
	blt	.LBB0_51
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end87.i
	str	r4, [sp, #24]           @ 4-byte Spill
	add	r4, sp, #36
	str	r9, [sp, #20]           @ 4-byte Spill
	mov	r9, r6
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end87.i
	mov	r0, r4
	bl	__block_all_sigs
	bl	fork
	mov	r6, r0
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.end87.i
	mov	r0, r4
	str	r6, [sp, #28]           @ 4-byte Spill
	bl	__restore_sigs
	cmp	r6, #0
	blt	.LBB0_48
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end96.i
	ldr	r0, [sp, #168]
	mov	r6, r9
	beq	.LBB0_79
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end109.i
	bl	close
	ldr	r0, [sp, #164]
	ldr	r1, .LCPI0_9
	bl	fdopen
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_49
	b	.LBB0_43
.LCPI0_9:
	.long	.L.str6
.section bb0_43
.LBB0_43:                               @ %if.end119.i
	mov	r4, #0
	add	r0, sp, #176
	add	r1, sp, #172
	mov	r2, #0
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end119.i
	mov	r3, r5
	str	r4, [sp, #176]
	str	r4, [sp, #172]
	bl	getdelim
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.end119.i
	ldr	r1, [sp, #176]
	cmp	r0, #0
	movlt	r1, #0
	mov	r0, r1
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end119.i
	bl	free
	mov	r0, r5
	bl	feof
	cmp	r0, #0
	beq	.LBB0_54
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.then126.i
	mov	r0, r5
	bl	fclose
	ldr	r0, [sp, #28]           @ 4-byte Reload
	bl	reap
	mov	r4, #5
	b	.LBB0_53
.section bb0_48
.LBB0_48:                               @ %if.then91.i
	ldr	r0, [sp, #164]
	bl	close
	ldr	r0, [sp, #168]
	bl	close
	b	.LBB0_51
.section bb0_49
.LBB0_49:                               @ %if.then115.i
	ldr	r0, [sp, #164]
	bl	close
	ldr	r4, [sp, #28]           @ 4-byte Reload
	mov	r1, #9
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.then115.i
	mov	r0, r4
	bl	kill
	mov	r0, r4
	bl	reap
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %nospace.i
	mov	r4, #1
	cmp	r10, #0
	bne	.LBB0_53
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.then178.i
	mov	r0, #0
	str	r0, [r7]
	str	r0, [r7, #4]
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %do_wordexp.exit
	ldr	r0, [sp, #32]
	mov	r1, #0
	bl	pthread_setcancelstate
	mov	r0, r4
	add	sp, sp, #180
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_54
.LBB0_54:                               @ %while.cond.preheader.i
	add	r0, sp, #176
	add	r1, sp, #172
	mov	r2, #0
	mov	r3, r5
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %while.cond.preheader.i
	str	r4, [sp, #176]
	str	r4, [sp, #172]
	bl	getdelim
	cmp	r0, #0
	blt	.LBB0_65
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %while.cond.preheader.i
	ldr	r10, [sp, #176]
	str	r7, [sp, #20]           @ 4-byte Spill
	cmp	r10, #0
	beq	.LBB0_66
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %while.body.i.preheader
	cmp	r8, #0
	mov	r7, r8
	mov	r4, #0
	addne	r7, r11, #1
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r9, r11, #1
	cmp	r9, r7
	blo	.LBB0_61
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %if.then134.i
                                        @   in Loop: Header=BB0_58 Depth=1
	add	r0, r7, r7, lsr #1
	add	r7, r0, #10
	mov	r0, r8
	lsl	r1, r7, #2
	bl	realloc
	cmp	r0, #0
	beq	.LBB0_66
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.end140.i
                                        @   in Loop: Header=BB0_58 Depth=1
	mov	r8, r0
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.end141.i
                                        @   in Loop: Header=BB0_58 Depth=1
	mov	r0, r8
	add	r1, sp, #172
	mov	r2, #0
	mov	r3, r5
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.end141.i
                                        @   in Loop: Header=BB0_58 Depth=1
	str	r10, [r0, r11, lsl #2]!
	str	r4, [r0, #4]
	add	r0, sp, #176
	str	r4, [sp, #176]
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.end141.i
                                        @   in Loop: Header=BB0_58 Depth=1
	str	r4, [sp, #172]
	bl	getdelim
	cmp	r0, #0
	blt	.LBB0_67
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.end141.i
                                        @   in Loop: Header=BB0_58 Depth=1
	ldr	r10, [sp, #176]
	mov	r11, r9
	cmp	r10, #0
	bne	.LBB0_58
	b	.LBB0_67
.section bb0_65
.LBB0_65:
	str	r7, [sp, #20]           @ 4-byte Spill
	b	.LBB0_66
.section bb0_66
.LBB0_66:
	mov	r9, r11
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %while.end.i
	mov	r0, r5
	bl	feof
	mov	r11, r0
	mov	r0, r5
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %while.end.i
	bl	fclose
	ldr	r0, [sp, #28]           @ 4-byte Reload
	bl	reap
	mov	r4, #0
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %while.end.i
	cmp	r11, #0
	moveq	r4, #1
	cmp	r8, #0
	bne	.LBB0_71
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.then151.i
	add	r0, r9, #1
	mov	r1, #4
	bl	calloc
	mov	r8, r0
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.end154.i
	ldr	r3, [sp, #20]           @ 4-byte Reload
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r9, [r3]
	str	r8, [r3, #4]
	cmp	r0, #0
	beq	.LBB0_53
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %if.then159.i
	cmp	r8, #0
	beq	.LBB0_77
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.then161.i
	mov	r0, #0
	cmp	r6, #0
	beq	.LBB0_78
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %for.body165.i.preheader
	mov	r0, #0
	subs	r1, r6, #1
	str	r0, [r8, r1, lsl #2]
	beq	.LBB0_77
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %for.body165.for.body165_crit_edge.i.lr.ph
	ldr	r2, [r3, #4]
	rsb	r1, r6, #2
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %for.body165.for.body165_crit_edge.i
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [r2, -r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, #1
	bne	.LBB0_76
	b	.LBB0_77
.section bb0_77
.LBB0_77:
	mov	r0, r6
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %if.end171.i
	sub	r0, r9, r0
	str	r0, [r3]
	b	.LBB0_53
.section bb0_79
.LBB0_79:                               @ %if.then98.i
	cmp	r0, #1
	bne	.LBB0_81
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.then102.i
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	fcntl
	b	.LBB0_82
.section bb0_81
.LBB0_81:                               @ %if.else104.i
	mov	r1, #1
	bl	dup2
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %if.end107.i
	mov	r0, #0
	ldr	r1, .LCPI0_10
	ldr	r2, .LCPI0_12
	ldr	r3, .LCPI0_13
	b	.LBB0_83
.LCPI0_10:
	.long	.L.str3
.LCPI0_12:
	.long	.L.str4
.LCPI0_13:
	.long	.L.str5
.section bb0_83
.LBB0_83:                               @ %if.end107.i
	str	r0, [sp, #12]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #8]
	ldr	r0, .LCPI0_11
	b	.LBB0_84
.LCPI0_11:
	.long	.L.str2
.section bb0_84
.LBB0_84:                               @ %if.end107.i
	str	r5, [sp, #4]
	str	r1, [sp]
	bl	execl
	mov	r0, #1
	bl	_exit
.Ltmp0:
	.size	wordexp, .Ltmp0-wordexp
	.cantunwind
	.fnend

	.globl	wordfree
	.align	2
	.type	wordfree,%function
.section bb1_0
wordfree:                               @ @wordfree
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.LBB1_9
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %for.cond.preheader
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.LBB1_8
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %for.body.lr.ph
	mov	r5, #1
	b	.LBB1_5
.section bb1_4
.LBB1_4:                                @ %for.body.for.body_crit_edge
                                        @   in Loop: Header=BB1_5 Depth=1
	ldr	r0, [r4, #4]
	add	r5, r5, #1
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r4, #8]
	add	r1, r5, r1
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0, #-4]
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %for.body
                                        @   in Loop: Header=BB1_5 Depth=1
	bl	free
	ldr	r0, [r4]
	cmp	r5, r0
	blo	.LBB1_4
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %for.cond.for.end_crit_edge
	ldr	r0, [r4, #4]
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %for.end
	bl	free
	mov	r0, #0
	str	r0, [r4]
	str	r0, [r4, #4]
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %return
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	wordfree, .Ltmp1-wordfree
	.cantunwind
	.fnend

	.align	2
	.type	reap,%function
.section bb2_0
reap:                                   @ @reap
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	add	r5, sp, #4
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	bl	waitpid
	cmp	r0, #0
	blt	.LBB2_4
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %if.else
                                        @   in Loop: Header=BB2_2 Depth=1
	ldrb	r0, [sp, #4]
	tst	r0, #127
	bne	.LBB2_2
	b	.LBB2_5
.section bb2_4
.LBB2_4:                                @ %if.then
                                        @   in Loop: Header=BB2_2 Depth=1
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #4
	beq	.LBB2_2
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %return
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	reap, .Ltmp2-reap
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"2>/dev/null"
	.size	.L.str1, 12

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"/bin/sh"
	.size	.L.str2, 8

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"sh"
	.size	.L.str3, 3

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"-c"
	.size	.L.str4, 3

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"eval \"printf %s\\\\\\\\0 x $1 $2\""
	.size	.L.str5, 30

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"r"
	.size	.L.str6, 2


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
