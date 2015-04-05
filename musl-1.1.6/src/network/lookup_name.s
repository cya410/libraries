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
	.file	"src/network/lookup_name.bc"
	.globl	__lookup_name
	.align	2
	.type	__lookup_name,%function
__lookup_name:                          @ @__lookup_name
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#868
	sub	sp, sp, #868
	b	.LBB0_3
.LBB0_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r10, r0
	mov	r6, r2
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r9, r3
	mov	r4, r1
	mov	r0, #0
	str	r10, [sp, #44]          @ 4-byte Spill
	strb	r0, [r4]
	cmp	r6, #0
	beq	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	mov	r0, r6
	mov	r1, #255
	bl	strnlen
	sub	r1, r0, #1
	mvn	r11, #1
	cmp	r1, #253
	bhi	.LBB0_153
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	add	r2, r0, #1
	mov	r0, r4
	mov	r1, r6
	bl	memcpy
	b	.LBB0_7
.LBB0_7:                                @ %if.end3
	ldr	r8, [sp, #1928]
	tst	r8, #8
	beq	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %if.then5
	cmp	r9, #10
	str	r4, [sp, #48]           @ 4-byte Spill
	subne	r8, r8, #8
	moveq	r9, #0
	b	.LBB0_10
.LBB0_9:
	str	r4, [sp, #48]           @ 4-byte Spill
	b	.LBB0_10
.LBB0_10:                               @ %if.end10
	mov	r4, #0
	cmp	r6, #0
	bne	.LBB0_32
	b	.LBB0_11
.LBB0_11:                               @ %if.end.i
	tst	r8, #1
	beq	.LBB0_19
	b	.LBB0_12
.LBB0_12:                               @ %if.then2.i
	mov	r4, #0
	cmp	r9, #10
	beq	.LBB0_16
	b	.LBB0_13
.LBB0_13:                               @ %if.end5.i
	add	r0, sp, #1328
	mov	r1, #24
	mov	r2, #0
	bl	__aeabi_memset
	b	.LBB0_14
.LBB0_14:                               @ %if.end5.i
	mov	r0, #2
	add	r7, sp, #1328
	mov	r4, #1
	cmp	r9, #2
	b	.LBB0_15
.LBB0_15:                               @ %if.end5.i
	str	r0, [r10]
	ldm	r7, {r0, r1, r2, r3, r7}
	ldr	r5, [sp, #1348]
	str	r5, [r10, #24]
	stmib	r10, {r0, r1, r2, r3, r7}
	beq	.LBB0_32
	b	.LBB0_16
.LBB0_16:                               @ %if.then7.i
	add	r0, sp, #136
	mov	r1, #24
	mov	r2, #0
	bl	__aeabi_memset
	b	.LBB0_17
.LBB0_17:                               @ %if.then7.i
	rsb	r0, r4, r4, lsl #3
	mov	r1, #10
	mov	r2, r10
	add	r7, sp, #136
	b	.LBB0_18
.LBB0_18:                               @ %if.then7.i
	str	r1, [r2, r0, lsl #2]!
	ldm	r7, {r0, r1, r3, r7}
	ldr	r5, [sp, #152]
	ldr	r12, [sp, #156]
	stmib	r2, {r0, r1, r3, r7}
	str	r5, [r2, #20]
	str	r12, [r2, #24]
	b	.LBB0_31
.LBB0_19:                               @ %if.else.i
	mov	r5, #0
	mov	r4, #0
	cmp	r9, #10
	beq	.LBB0_27
	b	.LBB0_20
.LBB0_20:                               @ %if.then14.i
	mov	r0, #2
	mov	r1, #127
	mov	r2, #0
	str	r0, [sp, #272]
	b	.LBB0_21
.LBB0_21:                               @ %if.then14.i
	mov	r0, #0
	str	r0, [sp, #276]
	strb	r1, [sp, #280]
	mov	r1, #1
	b	.LBB0_22
.LBB0_22:                               @ %if.then14.i
	strb	r0, [sp, #281]
	strb	r0, [sp, #282]
	strb	r1, [sp, #283]
	add	r1, sp, #272
	add	r1, r1, #12
	b	.LBB0_23
.LBB0_23:                               @ %arrayinit.body.i
                                        @ =>This Inner Loop Header: Depth=1
	strb	r0, [r1, -r2]
	sub	r2, r2, #1
	cmn	r2, #12
	bne	.LBB0_23
	b	.LBB0_24
.LBB0_24:                               @ %if.end22.i
	mov	r0, #0
	add	r7, sp, #272
	cmp	r9, #2
	str	r0, [sp, #296]
	b	.LBB0_25
.LBB0_25:                               @ %if.end22.i
	ldm	r7, {r0, r1, r2, r3, r7}
	ldr	r4, [sp, #292]
	str	r4, [r10, #20]
	stm	r10, {r0, r1, r2, r3, r7}
	b	.LBB0_26
.LBB0_26:                               @ %if.end22.i
	mov	r4, #1
	ldr	r0, [sp, #296]
	str	r0, [r10, #24]
	beq	.LBB0_32
	b	.LBB0_27
.LBB0_27:                               @ %if.then24.i
	add	r0, sp, #116
	mov	r1, #19
	mov	r2, #0
	bl	__aeabi_memset
	b	.LBB0_28
.LBB0_28:                               @ %if.then24.i
	rsb	r0, r4, r4, lsl #3
	mov	r1, #10
	mov	r2, r10
	add	r7, sp, #116
	b	.LBB0_29
.LBB0_29:                               @ %if.then24.i
	str	r1, [r2, r0, lsl #2]!
	ldm	r7, {r0, r1, r3, r7}
	stmib	r2, {r0, r1, r3, r7}
	add	r0, sp, #56
	b	.LBB0_30
.LBB0_30:                               @ %if.then24.i
	ldrh	r0, [r0, #76]
	ldrb	r1, [sp, #134]
	strb	r1, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #1
	strb	r0, [r2, #23]
	str	r5, [r2, #24]
	b	.LBB0_31
.LBB0_31:                               @ %name_from_null.exit
	add	r4, r4, #1
	b	.LBB0_32
.LBB0_32:                               @ %name_from_null.exit
	cmp	r4, #0
	bne	.LBB0_95
	b	.LBB0_33
.LBB0_33:                               @ %if.end15
	mov	r0, r10
	mov	r1, r6
	mov	r2, r9
	bl	__lookup_ipliteral
	and	r1, r8, #4
	orrs	r1, r0, r1
	bne	.LBB0_93
	b	.LBB0_34
.LBB0_34:                               @ %if.then19
	mov	r0, r6
	str	r9, [sp, #40]           @ 4-byte Spill
	bl	strlen
	mov	r9, r0
	b	.LBB0_35
.LBB0_35:                               @ %if.then19
	ldr	r0, .LCPI0_4
	mov	r3, #8
	add	r11, sp, #272
	add	r1, sp, #136
	b	.LBB0_36
.LCPI0_4:
	.long	.L.str1
.LBB0_36:                               @ %if.then19
	orr	r3, r3, #1024
	mov	r2, r11
	bl	__fopen_rb_ca
	mov	r4, r0
	b	.LBB0_37
.LBB0_37:                               @ %if.then19
	mov	r0, #0
	str	r4, [sp, #36]           @ 4-byte Spill
	cmp	r4, #0
	beq	.LBB0_70
	b	.LBB0_38
.LBB0_38:                               @ %while.cond.preheader.i
	add	r10, sp, #1328
	mov	r1, #512
	mov	r2, r4
	mov	r0, r10
	b	.LBB0_39
.LBB0_39:                               @ %while.cond.preheader.i
	bl	fgets
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #28]           @ 4-byte Spill
	beq	.LBB0_69
	b	.LBB0_40
.LBB0_40:                               @ %while.body.lr.ph.lr.ph.i
	add	r5, r10, #1
	mov	r0, #0
	mov	r7, #0
	str	r5, [sp, #32]           @ 4-byte Spill
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB0_41
.LBB0_41:                               @ %while.body.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_44 Depth 2
                                        @     Child Loop BB0_48 Depth 2
                                        @     Child Loop BB0_55 Depth 2
                                        @     Child Loop BB0_59 Depth 2
	mov	r0, r10
	mov	r1, #35
	bl	strchr
	cmp	r0, #0
	b	.LBB0_42
.LBB0_42:                               @ %while.body.i
                                        @   in Loop: Header=BB0_41 Depth=1
	movne	r1, #10
	strbne	r7, [r0, #1]
	strbne	r1, [r0]
	mov	r0, r5
	b	.LBB0_44
.LBB0_43:                               @ %for.inc.i277
                                        @   in Loop: Header=BB0_44 Depth=2
	add	r0, r0, #1
	b	.LBB0_44
.LBB0_44:                               @ %if.end9.i
                                        @   Parent Loop BB0_41 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r1, r6
	bl	strstr
	cmp	r0, #0
	beq	.LBB0_68
	b	.LBB0_45
.LBB0_45:                               @ %land.rhs13.i
                                        @   in Loop: Header=BB0_44 Depth=2
	ldrb	r1, [r0, #-1]
	cmp	r1, #32
	subne	r1, r1, #9
	cmpne	r1, #4
	bhi	.LBB0_43
	b	.LBB0_46
.LBB0_46:                               @ %lor.rhs.i
                                        @   in Loop: Header=BB0_44 Depth=2
	ldrb	r1, [r0, r9]
	cmp	r1, #32
	subne	r1, r1, #9
	cmpne	r1, #4
	bhi	.LBB0_43
	b	.LBB0_47
.LBB0_47:                               @ %for.cond26.preheader.i
                                        @   in Loop: Header=BB0_41 Depth=1
	ldrb	r0, [sp, #1328]
	mov	r1, #0
	mov	r7, r10
	cmp	r0, #0
	beq	.LBB0_51
	b	.LBB0_48
.LBB0_48:                               @ %land.rhs29.i
                                        @   Parent Loop BB0_41 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r0, #255
	cmp	r0, #32
	beq	.LBB0_51
	b	.LBB0_49
.LBB0_49:                               @ %land.rhs29.i
                                        @   in Loop: Header=BB0_48 Depth=2
	sub	r0, r0, #9
	cmp	r0, #5
	blo	.LBB0_51
	b	.LBB0_50
.LBB0_50:                               @ %for.inc36.i
                                        @   in Loop: Header=BB0_48 Depth=2
	ldrb	r0, [r7, #1]!
	cmp	r0, #0
	bne	.LBB0_48
	b	.LBB0_51
.LBB0_51:                               @ %for.end38.i
                                        @   in Loop: Header=BB0_41 Depth=1
	ldr	r4, [sp, #28]           @ 4-byte Reload
	strb	r1, [r7]
	ldr	r1, [sp, #44]           @ 4-byte Reload
	ldr	r2, [sp, #40]           @ 4-byte Reload
	b	.LBB0_52
.LBB0_52:                               @ %for.end38.i
                                        @   in Loop: Header=BB0_41 Depth=1
	rsb	r0, r4, r4, lsl #3
	add	r0, r1, r0, lsl #2
	mov	r1, r10
	bl	__lookup_ipliteral
	b	.LBB0_53
.LBB0_53:                               @ %for.end38.i
                                        @   in Loop: Header=BB0_41 Depth=1
	cmp	r0, #0
	addne	r4, r4, #1
	str	r4, [sp, #28]           @ 4-byte Spill
	mov	r4, r7
	ldrb	r0, [r4, #1]!
	b	.LBB0_55
.LBB0_54:                               @ %for.cond46.i
                                        @   in Loop: Header=BB0_55 Depth=2
	add	r4, r1, #2
	ldrb	r0, [r4]
	b	.LBB0_55
.LBB0_55:                               @ %for.cond46.i
                                        @   Parent Loop BB0_41 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r5, r4
	cmp	r0, #0
	beq	.LBB0_63
	b	.LBB0_56
.LBB0_56:                               @ %land.rhs49.i
                                        @   in Loop: Header=BB0_55 Depth=2
	mov	r1, r7
	and	r2, r0, #255
	mov	r7, r4
	cmp	r2, #32
	beq	.LBB0_54
	b	.LBB0_57
.LBB0_57:                               @ %land.rhs49.i
                                        @   in Loop: Header=BB0_55 Depth=2
	sub	r2, r2, #9
	cmp	r2, #5
	blo	.LBB0_54
	b	.LBB0_58
.LBB0_58:                               @   in Loop: Header=BB0_41 Depth=1
	mov	r5, r7
	b	.LBB0_59
.LBB0_59:                               @ %land.rhs61.i
                                        @   Parent Loop BB0_41 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r0, #255
	cmp	r0, #32
	beq	.LBB0_62
	b	.LBB0_60
.LBB0_60:                               @ %land.rhs61.i
                                        @   in Loop: Header=BB0_59 Depth=2
	sub	r0, r0, #9
	cmp	r0, #5
	blo	.LBB0_62
	b	.LBB0_61
.LBB0_61:                               @ %for.inc68.i
                                        @   in Loop: Header=BB0_59 Depth=2
	ldrb	r0, [r5, #1]!
	cmp	r0, #0
	bne	.LBB0_59
	b	.LBB0_62
.LBB0_62:                               @   in Loop: Header=BB0_41 Depth=1
	mov	r4, r7
	b	.LBB0_63
.LBB0_63:                               @ %for.end70.i
                                        @   in Loop: Header=BB0_41 Depth=1
	mov	r7, #0
	mov	r0, r4
	strb	r7, [r5]
	bl	is_valid_hostname
	cmp	r0, #0
	beq	.LBB0_65
	b	.LBB0_64
.LBB0_64:                               @ %if.then73.i
                                        @   in Loop: Header=BB0_41 Depth=1
	rsb	r0, r4, #1
	mov	r1, r4
	add	r2, r0, r5
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	memcpy
	b	.LBB0_65
.LBB0_65:                               @ %while.cond.outer.backedge.i
                                        @   in Loop: Header=BB0_41 Depth=1
	ldr	r4, [sp, #36]           @ 4-byte Reload
	mov	r0, r10
	mov	r1, #512
	mov	r2, r4
	b	.LBB0_66
.LBB0_66:                               @ %while.cond.outer.backedge.i
                                        @   in Loop: Header=BB0_41 Depth=1
	bl	fgets
	ldr	r1, [sp, #28]           @ 4-byte Reload
	cmp	r1, #47
	bgt	.LBB0_69
	b	.LBB0_67
.LBB0_67:                               @ %while.cond.outer.backedge.i
                                        @   in Loop: Header=BB0_41 Depth=1
	ldr	r5, [sp, #32]           @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB0_41
	b	.LBB0_69
.LBB0_68:                               @ %while.cond.loopexit.i
                                        @   in Loop: Header=BB0_41 Depth=1
	mov	r0, r10
	mov	r1, #512
	mov	r2, r4
	bl	fgets
	cmp	r0, #0
	bne	.LBB0_41
	b	.LBB0_69
.LBB0_69:                               @ %while.end.i
	mov	r0, r4
	bl	__fclose_ca
	ldr	r10, [sp, #44]          @ 4-byte Reload
	ldr	r0, [sp, #28]           @ 4-byte Reload
	b	.LBB0_70
.LBB0_70:                               @ %name_from_hosts.exit
	ldr	r9, [sp, #40]           @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB0_93
	b	.LBB0_71
.LBB0_71:                               @ %if.then22
	add	r4, sp, #1328
	str	r11, [sp, #1320]
	mov	r5, #0
	mov	r7, r9
	b	.LBB0_72
.LBB0_72:                               @ %if.then22
	str	r10, [sp, #136]
	cmp	r9, #10
	add	r0, r4, #280
	str	r4, [sp, #116]
	b	.LBB0_73
.LBB0_73:                               @ %if.then22
	str	r0, [sp, #120]
	add	r0, r11, #512
	str	r0, [sp, #1324]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	str	r0, [sp, #140]
	str	r5, [sp, #144]
	bne	.LBB0_75
	b	.LBB0_74
.LBB0_74:                               @ %if.then22.if.then14.i286_crit_edge
	str	r10, [sp, #44]          @ 4-byte Spill
	add	r9, sp, #1312
	b	.LBB0_79
.LBB0_75:                               @ %if.end.i285
	mov	r0, #280
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	b	.LBB0_76
.LBB0_76:                               @ %if.end.i285
	str	r4, [sp, #12]
	mov	r1, r6
	mov	r2, #1
	mov	r3, #1
	b	.LBB0_77
.LBB0_77:                               @ %if.end.i285
	str	r10, [sp, #44]          @ 4-byte Spill
	mov	r5, #1
	str	r0, [sp, #16]
	mov	r0, #0
	b	.LBB0_78
.LBB0_78:                               @ %if.end.i285
	bl	__res_mkquery
	add	r9, sp, #1312
	str	r0, [sp, #1312]
	cmp	r7, #2
	beq	.LBB0_83
	b	.LBB0_79
.LBB0_79:                               @ %if.then14.i286
	mov	r0, #280
	mov	r2, #0
	mov	r3, #28
	mla	r1, r5, r0, r4
	b	.LBB0_80
.LBB0_80:                               @ %if.then14.i286
	str	r2, [sp]
	str	r2, [sp, #4]
	str	r2, [sp, #8]
	mov	r2, #1
	b	.LBB0_81
.LBB0_81:                               @ %if.then14.i286
	str	r1, [sp, #12]
	str	r0, [sp, #16]
	mov	r0, #0
	mov	r1, r6
	b	.LBB0_82
.LBB0_82:                               @ %if.then14.i286
	bl	__res_mkquery
	add	r1, sp, #1312
	str	r0, [r1, r5, lsl #2]
	add	r5, r5, #1
	b	.LBB0_83
.LBB0_83:                               @ %if.end20.i
	add	r4, sp, #1024
	mov	r0, #512
	add	r1, sp, #116
	mov	r2, r9
	b	.LBB0_84
.LBB0_84:                               @ %if.end20.i
	add	r10, r4, #280
	add	r4, sp, #1024
	str	r10, [sp]
	str	r0, [sp, #4]
	b	.LBB0_85
.LBB0_85:                               @ %if.end20.i
	add	r3, r4, #296
	mov	r0, r5
	bl	__res_msend
	mvn	r1, #10
	cmp	r0, #0
	blt	.LBB0_92
	b	.LBB0_86
.LBB0_86:
	ldr	r4, .LCPI0_5
	mov	r7, #0
	add	r6, sp, #136
	b	.LBB0_87
.LCPI0_5:
	.long	dns_parse_callback
.LBB0_87:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r10, r7, lsl #2]
	mov	r0, r11
	mov	r2, r4
	mov	r3, r6
	b	.LBB0_88
.LBB0_88:                               @ %for.body.i
                                        @   in Loop: Header=BB0_87 Depth=1
	bl	__dns_parse
	add	r7, r7, #1
	add	r11, r11, #512
	cmp	r7, r5
	blt	.LBB0_87
	b	.LBB0_89
.LBB0_89:                               @ %for.end.i
	ldr	r1, [sp, #144]
	cmp	r1, #0
	bne	.LBB0_92
	b	.LBB0_90
.LBB0_90:                               @ %if.end38.i
	ldr	r0, [sp, #1304]
	mvn	r1, #2
	cmp	r0, #4
	blt	.LBB0_92
	b	.LBB0_91
.LBB0_91:                               @ %lor.lhs.false.i
	ldrb	r0, [sp, #275]
	mvn	r1, #3
	and	r0, r0, #15
	cmp	r0, #3
	mvneq	r1, #1
	cmp	r0, #2
	mvneq	r1, #2
	b	.LBB0_92
.LBB0_92:                               @ %name_from_dns.exit
	ldr	r10, [sp, #44]          @ 4-byte Reload
	ldr	r9, [sp, #40]           @ 4-byte Reload
	mov	r0, r1
	b	.LBB0_93
.LBB0_93:                               @ %if.end25
	cmp	r0, #0
	mov	r11, r0
	ble	.LBB0_103
	b	.LBB0_94
.LBB0_94:
	mov	r4, r11
	b	.LBB0_95
.LBB0_95:                               @ %if.end29
	tst	r8, #8
	beq	.LBB0_98
	b	.LBB0_96
.LBB0_96:                               @ %if.then32
	tst	r8, #16
	beq	.LBB0_99
	b	.LBB0_97
.LBB0_97:
	mov	r11, r4
	b	.LBB0_112
.LBB0_98:
	mov	r11, r4
	b	.LBB0_117
.LBB0_99:
	mov	r0, #0
	mov	r1, r10
	b	.LBB0_100
.LBB0_100:                              @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r2, r0, r0, lsl #3
	ldr	r2, [r10, r2, lsl #2]
	cmp	r2, #10
	beq	.LBB0_104
	b	.LBB0_101
.LBB0_101:                              @ %for.inc
                                        @   in Loop: Header=BB0_100 Depth=1
	add	r0, r0, #1
	add	r1, r1, #28
	cmp	r0, r4
	blt	.LBB0_100
	b	.LBB0_102
.LBB0_102:
	mov	r11, r4
	b	.LBB0_111
.LBB0_103:                              @ %if.then27
	mvneq	r11, #1
	b	.LBB0_153
.LBB0_104:                              @ %for.cond41.preheader
	mov	r11, #0
	cmp	r0, r4
	bge	.LBB0_153
	b	.LBB0_105
.LBB0_105:                              @ %for.body43
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1]
	cmp	r2, #10
	bne	.LBB0_110
	b	.LBB0_106
.LBB0_106:                              @ %if.then47
                                        @   in Loop: Header=BB0_105 Depth=1
	ldr	r12, [r1, #16]
	ldr	r8, [r1, #20]
	ldm	r1, {r7, lr}
	ldr	r5, [r1, #8]
	b	.LBB0_107
.LBB0_107:                              @ %if.then47
                                        @   in Loop: Header=BB0_105 Depth=1
	ldr	r2, [r1, #12]
	rsb	r6, r11, r11, lsl #3
	mov	r3, r10
	add	r11, r11, #1
	b	.LBB0_108
.LBB0_108:                              @ %if.then47
                                        @   in Loop: Header=BB0_105 Depth=1
	str	r7, [r3, r6, lsl #2]!
	str	r8, [r3, #20]
	str	r12, [r3, #16]
	str	r2, [r3, #12]
	b	.LBB0_109
.LBB0_109:                              @ %if.then47
                                        @   in Loop: Header=BB0_105 Depth=1
	str	r5, [r3, #8]
	str	lr, [r3, #4]
	ldr	r2, [r1, #24]
	str	r2, [r3, #24]
	b	.LBB0_110
.LBB0_110:                              @ %for.inc52
                                        @   in Loop: Header=BB0_105 Depth=1
	sub	r4, r4, #1
	add	r1, r1, #28
	cmp	r0, r4
	bne	.LBB0_105
	b	.LBB0_111
.LBB0_111:                              @ %if.end56
	cmp	r11, #1
	blt	.LBB0_153
	b	.LBB0_112
.LBB0_112:                              @ %for.body59.lr.ph
	ldr	r8, .LCPI0_6
	add	r4, r10, #20
	mov	r7, #10
	mov	r5, r11
	b	.LBB0_113
.LCPI0_6:
	.long	.L.str
.LBB0_113:                              @ %for.body59
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, #-20]
	cmp	r0, #2
	bne	.LBB0_116
	b	.LBB0_114
.LBB0_114:                              @ %if.end64
                                        @   in Loop: Header=BB0_113 Depth=1
	sub	r6, r4, #12
	mov	r0, r4
	mov	r2, #4
	mov	r1, r6
	b	.LBB0_115
.LBB0_115:                              @ %if.end64
                                        @   in Loop: Header=BB0_113 Depth=1
	bl	memcpy
	mov	r0, r6
	mov	r1, r8
	mov	r2, #12
	bl	memcpy
	str	r7, [r4, #-20]
	b	.LBB0_116
.LBB0_116:                              @ %for.inc76
                                        @   in Loop: Header=BB0_113 Depth=1
	add	r4, r4, #28
	subs	r5, r5, #1
	bne	.LBB0_113
	b	.LBB0_117
.LBB0_117:                              @ %if.end79
	cmp	r9, #2
	beq	.LBB0_153
	b	.LBB0_118
.LBB0_118:                              @ %if.end79
	cmp	r11, #2
	blt	.LBB0_153
	b	.LBB0_119
.LBB0_119:                              @ %for.cond84.preheader
	ldr	r0, [r10]
	cmp	r0, #2
	bne	.LBB0_123
	b	.LBB0_120
.LBB0_120:                              @ %for.body88.preheader
	add	r1, r10, #28
	mvn	r0, #0
	b	.LBB0_121
.LBB0_121:                              @ %for.body88
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r0, #1
	cmp	r11, r0
	beq	.LBB0_153
	b	.LBB0_122
.LBB0_122:                              @ %for.cond84
                                        @   in Loop: Header=BB0_121 Depth=1
	add	r2, r1, #28
	ldr	r1, [r1]
	cmp	r1, #2
	mov	r1, r2
	beq	.LBB0_121
	b	.LBB0_123
.LBB0_123:                              @ %for.end94
	add	r1, sp, #112
	mov	r0, #1
	bl	pthread_setcancelstate
	cmp	r11, #1
	str	r11, [sp, #28]          @ 4-byte Spill
	blt	.LBB0_151
	b	.LBB0_124
.LBB0_124:                              @ %for.body98.lr.ph
	ldr	r0, [sp, #28]           @ 4-byte Reload
	mov	r7, #0
	sub	r0, r0, #1
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_125
.LBB0_125:                              @ %for.body98.lr.ph
	add	r0, sp, #56
	add	r1, r0, #20
	add	r5, r0, #8
	str	r1, [sp, #32]           @ 4-byte Spill
	add	r1, sp, #84
	add	r1, r1, #8
	str	r1, [sp, #48]           @ 4-byte Spill
	b	.LBB0_126
.LBB0_126:                              @ %for.body98
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_144 Depth 2
	add	r0, sp, #56
	mov	r1, #10
	strh	r1, [r0]
	mov	r1, #255
	b	.LBB0_127
.LBB0_127:                              @ %for.body98
                                        @   in Loop: Header=BB0_126 Depth=1
	orr	r1, r1, #65280
	strh	r1, [r0, #2]
	mov	r0, #0
	str	r0, [sp, #60]
	b	.LBB0_128
.LBB0_128:                              @ %for.body98
                                        @   in Loop: Header=BB0_126 Depth=1
	str	r0, [r5]
	str	r0, [r5, #4]
	str	r0, [r5, #8]
	str	r0, [r5, #12]
	b	.LBB0_129
.LBB0_129:                              @ %for.body98
                                        @   in Loop: Header=BB0_126 Depth=1
	rsb	r0, r7, r7, lsl #3
	add	r11, r10, r0, lsl #2
	ldr	r1, [r11, #4]
	str	r1, [sp, #80]
	ldr	r0, [r10, r0, lsl #2]
	cmp	r0, #10
	bne	.LBB0_131
	b	.LBB0_130
.LBB0_130:                              @ %if.then103
                                        @   in Loop: Header=BB0_126 Depth=1
	add	r1, r11, #8
	mov	r0, r5
	mov	r2, #16
	b	.LBB0_132
.LBB0_131:                              @ %if.else110
                                        @   in Loop: Header=BB0_126 Depth=1
	ldr	r1, .LCPI0_7
	mov	r0, r5
	mov	r2, #12
	bl	memcpy
	ldr	r0, [sp, #32]           @ 4-byte Reload
	add	r1, r11, #8
	mov	r2, #4
	b	.LBB0_132
.LCPI0_7:
	.long	.L.str
.LBB0_132:                              @ %if.end125
                                        @   in Loop: Header=BB0_126 Depth=1
	bl	memcpy
	mov	r0, r5
	bl	policyof
	mov	r4, r0
	b	.LBB0_133
.LBB0_133:                              @ %if.end125
                                        @   in Loop: Header=BB0_126 Depth=1
	mov	r0, r5
	bl	scopeof
	mov	r8, r0
	ldrb	r0, [r4, #19]
	b	.LBB0_134
.LBB0_134:                              @ %if.end125
                                        @   in Loop: Header=BB0_126 Depth=1
	ldrb	r6, [r4, #18]
	mov	r1, #2
	mov	r2, #17
	orr	r1, r1, #524288
	b	.LBB0_135
.LBB0_135:                              @ %if.end125
                                        @   in Loop: Header=BB0_126 Depth=1
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, #10
	bl	socket
	mov	r10, r0
	b	.LBB0_136
.LBB0_136:                              @ %if.end125
                                        @   in Loop: Header=BB0_126 Depth=1
	mov	r9, #0
	mov	r4, #0
	cmp	r10, #0
	blt	.LBB0_148
	b	.LBB0_137
.LBB0_137:                              @ %if.then134
                                        @   in Loop: Header=BB0_126 Depth=1
	mov	r0, r10
	add	r1, sp, #56
	mov	r2, #28
	bl	connect
	mov	r4, #0
	cmp	r0, #0
	beq	.LBB0_139
	b	.LBB0_138
.LBB0_138:                              @   in Loop: Header=BB0_126 Depth=1
	mov	r9, #0
	b	.LBB0_147
.LBB0_139:                              @ %if.then137
                                        @   in Loop: Header=BB0_126 Depth=1
	mov	r0, #28
	add	r1, sp, #84
	add	r2, sp, #52
	str	r0, [sp, #52]
	b	.LBB0_140
.LBB0_140:                              @ %if.then137
                                        @   in Loop: Header=BB0_126 Depth=1
	mov	r0, r10
	bl	getsockname
	mov	r9, #1073741824
	cmp	r0, #0
	bne	.LBB0_147
	b	.LBB0_141
.LBB0_141:                              @ %if.then140
                                        @   in Loop: Header=BB0_126 Depth=1
	ldr	r4, [sp, #48]           @ 4-byte Reload
	mov	r0, r4
	bl	scopeof
	cmp	r8, r0
	b	.LBB0_142
.LBB0_142:                              @ %if.then140
                                        @   in Loop: Header=BB0_126 Depth=1
	mov	r9, #1073741824
	mov	r0, r4
	moveq	r9, #1610612736
	bl	policyof
	b	.LBB0_143
.LBB0_143:                              @ %if.then140
                                        @   in Loop: Header=BB0_126 Depth=1
	ldrb	r0, [r0, #19]
	ldr	r1, [sp, #40]           @ 4-byte Reload
	mov	r4, #0
	mov	r2, #128
	cmp	r1, r0
	orreq	r9, r9, #268435456
	b	.LBB0_144
.LBB0_144:                              @ %land.rhs.i
                                        @   Parent Loop BB0_126 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldrb	r1, [r5, r4, lsr #3]
	ldrb	r0, [r0, r4, lsr #3]
	eor	r0, r1, r0
	b	.LBB0_145
.LBB0_145:                              @ %land.rhs.i
                                        @   in Loop: Header=BB0_144 Depth=2
	and	r1, r4, #7
	and	r0, r0, r2, lsr r1
	tst	r0, #255
	bne	.LBB0_147
	b	.LBB0_146
.LBB0_146:                              @ %for.inc.i
                                        @   in Loop: Header=BB0_144 Depth=2
	add	r4, r4, #1
	cmp	r4, #128
	blo	.LBB0_144
	b	.LBB0_147
.LBB0_147:                              @ %if.end159
                                        @   in Loop: Header=BB0_126 Depth=1
	mov	r0, r10
	bl	close
	b	.LBB0_148
.LBB0_148:                              @ %if.end161
                                        @   in Loop: Header=BB0_126 Depth=1
	rsb	r0, r8, #15
	rsb	r1, r7, #48
	ldr	r10, [sp, #44]          @ 4-byte Reload
	orr	r0, r1, r0, lsl #16
	b	.LBB0_149
.LBB0_149:                              @ %if.end161
                                        @   in Loop: Header=BB0_126 Depth=1
	ldr	r1, [sp, #36]           @ 4-byte Reload
	orr	r0, r0, r6, lsl #20
	orr	r0, r0, r9
	orr	r0, r0, r4, lsl #8
	b	.LBB0_150
.LBB0_150:                              @ %if.end161
                                        @   in Loop: Header=BB0_126 Depth=1
	str	r0, [r11, #24]
	add	r0, r7, #1
	cmp	r7, r1
	mov	r7, r0
	bne	.LBB0_126
	b	.LBB0_151
.LBB0_151:                              @ %for.end174
	ldr	r11, [sp, #28]          @ 4-byte Reload
	ldr	r3, .LCPI0_8
	mov	r0, r10
	mov	r2, #28
	b	.LBB0_152
.LCPI0_8:
	.long	addrcmp
.LBB0_152:                              @ %for.end174
	mov	r1, r11
	bl	qsort
	ldr	r0, [sp, #112]
	mov	r1, #0
	bl	pthread_setcancelstate
	b	.LBB0_153
.LBB0_153:                              @ %return
	mov	r0, r11
	add	sp, sp, #868
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lookup_name, .Ltmp0-__lookup_name
	.cantunwind
	.fnend

	.align	2
	.type	policyof,%function
policyof:                               @ @policyof
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	ldr	r4, .LCPI1_0
	mov	r5, r0
	b	.LBB1_3
.LCPI1_0:
	.long	defpolicy
.LBB1_2:                                @ %for.inc
                                        @   in Loop: Header=BB1_3 Depth=1
	add	r4, r4, #20
	b	.LBB1_3
.LBB1_3:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r6, [r4, #16]
	mov	r0, r5
	mov	r1, r4
	mov	r2, r6
	bl	memcmp
	cmp	r0, #0
	bne	.LBB1_2
	b	.LBB1_4
.LBB1_4:                                @ %if.end
                                        @   in Loop: Header=BB1_3 Depth=1
	ldrb	r1, [r5, r6]
	ldrb	r2, [r4, #17]
	ldrb	r0, [r4, r6]
	and	r1, r2, r1
	and	r1, r1, #255
	cmp	r1, r0
	bne	.LBB1_2
	b	.LBB1_5
.LBB1_5:                                @ %if.end20
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp1:
	.size	policyof, .Ltmp1-policyof
	.cantunwind
	.fnend

	.align	2
	.type	scopeof,%function
scopeof:                                @ @scopeof
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	ldrb	r1, [r0]
	cmp	r1, #254
	bne	.LBB2_2
	b	.LBB2_1
.LBB2_1:                                @ %land.lhs.true
	ldrb	r1, [r0, #1]
	and	r2, r1, #192
	mov	r1, #2
	cmp	r2, #128
	beq	.LBB2_14
	b	.LBB2_4
.LBB2_2:                                @ %entry
	cmp	r1, #255
	bne	.LBB2_4
	b	.LBB2_3
.LBB2_3:                                @ %if.then
	ldrb	r0, [r0, #1]
	and	r1, r0, #15
	b	.LBB2_14
.LBB2_4:                                @ %if.end14
	ldr	r2, [r0]
	cmp	r2, #0
	bne	.LBB2_11
	b	.LBB2_5
.LBB2_5:                                @ %land.lhs.true18
	ldr	r1, [r0, #4]
	cmp	r1, #0
	bne	.LBB2_11
	b	.LBB2_6
.LBB2_6:                                @ %land.lhs.true22
	ldr	r1, [r0, #8]
	cmp	r1, #0
	bne	.LBB2_11
	b	.LBB2_7
.LBB2_7:                                @ %land.lhs.true26
	ldrb	r1, [r0, #12]
	cmp	r1, #0
	bne	.LBB2_11
	b	.LBB2_8
.LBB2_8:                                @ %land.lhs.true31
	ldrb	r1, [r0, #13]
	cmp	r1, #0
	bne	.LBB2_11
	b	.LBB2_9
.LBB2_9:                                @ %land.lhs.true36
	ldrb	r1, [r0, #14]
	cmp	r1, #0
	bne	.LBB2_11
	b	.LBB2_10
.LBB2_10:                               @ %land.lhs.true41
	ldrb	r3, [r0, #15]
	mov	r1, #2
	cmp	r3, #1
	beq	.LBB2_14
	b	.LBB2_11
.LBB2_11:                               @ %if.end47
	and	r1, r2, #255
	cmp	r1, #254
	bne	.LBB2_13
	b	.LBB2_12
.LBB2_12:                               @ %land.lhs.true52
	ldrb	r0, [r0, #1]
	mov	r1, #5
	cmp	r0, #191
	movls	r1, #14
	b	.LBB2_14
.LBB2_13:                               @ %if.end59
	mov	r1, #14
	b	.LBB2_14
.LBB2_14:                               @ %return
	mov	r0, r1
	mov	pc, lr
.Ltmp2:
	.size	scopeof, .Ltmp2-scopeof
	.cantunwind
	.fnend

	.align	2
	.type	addrcmp,%function
addrcmp:                                @ @addrcmp
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	ldr	r0, [r0, #24]
	ldr	r1, [r1, #24]
	sub	r0, r1, r0
	mov	pc, lr
.Ltmp3:
	.size	addrcmp, .Ltmp3-addrcmp
	.cantunwind
	.fnend

	.align	2
	.type	is_valid_hostname,%function
is_valid_hostname:                      @ @is_valid_hostname
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	mov	r4, r0
	mov	r1, #255
	b	.LBB4_2
.LBB4_2:                                @ %entry
                                        @ kill: R0<def> R4<kill>
	bl	strnlen
	sub	r0, r0, #1
	mov	r5, #0
	cmp	r0, #253
	bhi	.LBB4_9
	b	.LBB4_3
.LBB4_3:                                @ %lor.lhs.false
	mov	r0, #0
	mov	r1, r4
	mov	r2, #0
	mov	r5, #0
	bl	mbstowcs
	cmn	r0, #1
	bne	.LBB4_5
	b	.LBB4_9
.LBB4_4:                                @ %for.inc
                                        @   in Loop: Header=BB4_5 Depth=1
	add	r4, r4, #1
	b	.LBB4_5
.LBB4_5:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [r4]
	sub	r1, r0, #45
	cmp	r0, #0
	blt	.LBB4_4
	b	.LBB4_6
.LBB4_6:                                @ %for.cond
                                        @   in Loop: Header=BB4_5 Depth=1
	and	r0, r0, #255
	and	r1, r1, #255
	cmp	r1, #2
	blo	.LBB4_4
	b	.LBB4_7
.LBB4_7:                                @ %lor.rhs
                                        @   in Loop: Header=BB4_5 Depth=1
	bl	isalnum
	cmp	r0, #0
	bne	.LBB4_4
	b	.LBB4_8
.LBB4_8:                                @ %for.end
	ldrb	r0, [r4]
	mov	r5, #0
	cmp	r0, #0
	moveq	r5, #1
	b	.LBB4_9
.LBB4_9:                                @ %return
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	is_valid_hostname, .Ltmp4-is_valid_hostname
	.cantunwind
	.fnend

	.align	2
	.type	dns_parse_callback,%function
dns_parse_callback:                     @ @dns_parse_callback
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	.pad	#264
	sub	sp, sp, #264
	mov	r5, r0
	cmp	r1, #28
	beq	.LBB5_7
	b	.LBB5_2
.LBB5_2:                                @ %entry
	mov	r4, #0
	cmp	r1, #5
	bne	.LBB5_11
	b	.LBB5_3
.LBB5_3:                                @ %sw.bb27
	ldr	r0, [sp, #280]
	mov	r1, #256
	add	r3, sp, #8
	str	r1, [sp]
	b	.LBB5_4
.LBB5_4:                                @ %sw.bb27
	add	r1, r0, #512
	bl	__dn_expand
	cmp	r0, #1
	blt	.LBB5_15
	b	.LBB5_5
.LBB5_5:                                @ %land.lhs.true
	add	r0, sp, #8
	bl	is_valid_hostname
	cmp	r0, #0
	beq	.LBB5_15
	b	.LBB5_6
.LBB5_6:                                @ %if.then33
	ldr	r0, [r5, #4]
	add	r1, sp, #8
	bl	strcpy
	b	.LBB5_15
.LBB5_7:                                @ %sw.bb8
	mvn	r4, #0
	cmp	r3, #16
	bne	.LBB5_15
	b	.LBB5_8
.LBB5_8:                                @ %if.end11
	ldr	r1, [r5, #8]
	ldr	r0, [r5]
	mov	r4, #10
	rsb	r3, r1, r1, lsl #3
	b	.LBB5_9
.LBB5_9:                                @ %if.end11
	add	r1, r1, #1
	str	r4, [r0, r3, lsl #2]!
	mov	r4, #0
	str	r4, [r0, #4]
	b	.LBB5_10
.LBB5_10:                               @ %if.end11
	str	r1, [r5, #8]
	mov	r1, r2
	add	r0, r0, #8
	mov	r2, #16
	bl	memcpy
	b	.LBB5_15
.LBB5_11:                               @ %entry
	cmp	r1, #1
	mvneq	r4, #0
	cmpeq	r3, #4
	bne	.LBB5_15
	b	.LBB5_12
.LBB5_12:                               @ %if.end
	ldr	r1, [r5, #8]
	ldr	r0, [r5]
	mov	r4, #2
	rsb	r3, r1, r1, lsl #3
	b	.LBB5_13
.LBB5_13:                               @ %if.end
	add	r1, r1, #1
	str	r4, [r0, r3, lsl #2]!
	mov	r4, #0
	str	r4, [r0, #4]
	b	.LBB5_14
.LBB5_14:                               @ %if.end
	str	r1, [r5, #8]
	mov	r1, r2
	add	r0, r0, #8
	mov	r2, #4
	bl	memcpy
	b	.LBB5_15
.LBB5_15:                               @ %cleanup
	mov	r0, r4
	add	sp, sp, #264
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	dns_parse_callback, .Ltmp5-dns_parse_callback
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata,"a",%progbits
.L.str:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\377\377"
	.size	.L.str, 13

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.asciz	"/etc/hosts"
	.size	.L.str1, 11

	.type	defpolicy,%object       @ @defpolicy
	.section	.rodata,"a",%progbits
defpolicy:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001"
	.byte	15                      @ 0xf
	.byte	255                     @ 0xff
	.byte	50                      @ 0x32
	.byte	0                       @ 0x0
	.asciz	"\000\000\000\000\000\000\000\000\000\000\377\377\000\000\000"
	.byte	11                      @ 0xb
	.byte	255                     @ 0xff
	.byte	35                      @ 0x23
	.byte	4                       @ 0x4
	.asciz	" \002\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.byte	1                       @ 0x1
	.byte	255                     @ 0xff
	.byte	30                      @ 0x1e
	.byte	2                       @ 0x2
	.asciz	" \001\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.byte	3                       @ 0x3
	.byte	255                     @ 0xff
	.byte	5                       @ 0x5
	.byte	5                       @ 0x5
	.asciz	"\374\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.byte	0                       @ 0x0
	.byte	254                     @ 0xfe
	.byte	3                       @ 0x3
	.byte	13                      @ 0xd
	.zero	16
	.byte	0                       @ 0x0
	.byte	0                       @ 0x0
	.byte	40                      @ 0x28
	.byte	1                       @ 0x1
	.size	defpolicy, 120


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
