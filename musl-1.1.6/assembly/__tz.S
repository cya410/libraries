.section __tz_text
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
	.file	"src/time/__tz.bc"
	.globl	__secs_to_zone
	.align	2
	.type	__secs_to_zone,%function
.section bb0_0
__secs_to_zone:                         @ @__secs_to_zone
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
	.pad	#36
	sub	sp, sp, #36
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r5, .LCPI0_6
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r6, r3
	b	.LBB0_4
.LCPI0_6:
	.long	_MergedGlobals1
.section bb0_4
.LBB0_4:                                @ %entry
	str	r2, [sp, #24]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
	add	r9, r5, #48
	mov	r0, r9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	bl	__lock
	bl	do_tzset
	ldr	r0, [r5]
	ldr	r8, [sp, #80]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	ldr	r11, [sp, #76]
	ldr	r12, [sp, #72]
	cmp	r0, #0
	beq	.LBB0_69
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then
	ldr	lr, [r5, #24]
	add	r1, r0, #44
	ldr	r0, [r5, #28]
	mov	r10, #3
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then
	mov	r4, #0
	str	r1, [sp, #20]           @ 4-byte Spill
	cmp	lr, r1
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then
	sub	r1, r0, lr
	mov	r0, #0
	moveq	r10, #2
	cmp	r4, r1, asr r10
	beq	.LBB0_61
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %while.cond.preheader.i
	asr	r0, r1, r10
	mov	r1, #0
	mov	r4, #0
	str	r6, [sp, #12]           @ 4-byte Spill
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %while.cond.preheader.i
	str	r9, [sp, #4]            @ 4-byte Spill
	str	r0, [sp, #8]            @ 4-byte Spill
	cmp	r0, #2
	blo	.LBB0_27
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %while.body.lr.ph.i
	ldr	r0, .LCPI0_7
	ldr	r8, [sp, #8]            @ 4-byte Reload
	mov	r1, #0
	mov	r4, #0
	ldr	r0, [r0, #4]
	b	.LBB0_13
.LCPI0_7:
	.long	_MergedGlobals1
.section bb0_13
.LBB0_13:                               @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r9, r1, r8, lsr #1
	mov	r3, lr
	lsl	r5, r9, r10
	ldrb	r6, [r3, r5]!
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %while.body.i
                                        @   in Loop: Header=BB0_13 Depth=1
	ldrb	r7, [r3, #1]
	ldrb	r2, [r3, #2]
	ldrb	r3, [r3, #3]
	lsl	r7, r7, #16
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %while.body.i
                                        @   in Loop: Header=BB0_13 Depth=1
	orr	r7, r7, r6, lsl #24
	orr	r2, r7, r2, lsl #8
	orr	r12, r2, r3
	ldr	r2, [sp, #20]           @ 4-byte Reload
	cmp	lr, r2
	beq	.LBB0_18
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then10.i
                                        @   in Loop: Header=BB0_13 Depth=1
	add	r2, r5, lr
	ldrb	r5, [r2, #5]
	ldrb	r3, [r2, #4]
	ldrb	r6, [r2, #6]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then10.i
                                        @   in Loop: Header=BB0_13 Depth=1
	ldrb	r2, [r2, #7]
	lsl	r5, r5, #16
	orr	r3, r5, r3, lsl #24
	orr	r3, r3, r6, lsl #8
	orr	r11, r3, r2
	b	.LBB0_19
.section bb0_18
.LBB0_18:                               @ %if.else.i
                                        @   in Loop: Header=BB0_13 Depth=1
	asr	r2, r12, #31
	mov	r11, r12
	mov	r12, r2
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end19.i
                                        @   in Loop: Header=BB0_13 Depth=1
	ldr	r2, [sp, #24]           @ 4-byte Reload
	lsr	r5, r8, #1
	cmp	r2, #0
	beq	.LBB0_23
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then21.i
                                        @   in Loop: Header=BB0_13 Depth=1
	ldr	r2, [sp, #16]           @ 4-byte Reload
	mov	r3, r0
	mov	r6, #1
	add	r2, r9, r2
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then21.i
                                        @   in Loop: Header=BB0_13 Depth=1
	ldrb	r2, [r2, #-1]
	add	r2, r2, r2, lsl #1
	ldrb	r4, [r3, r2, lsl #1]!
	orr	r2, r6, r2, lsl #1
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then21.i
                                        @   in Loop: Header=BB0_13 Depth=1
	ldrb	r2, [r0, r2]
	lsl	r2, r2, #16
	orr	r2, r2, r4, lsl #24
	ldrb	r4, [r3, #2]
	ldrb	r3, [r3, #3]
	orr	r2, r2, r4, lsl #8
	orr	r4, r2, r3
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end26.i
                                        @   in Loop: Header=BB0_13 Depth=1
	ldr	r2, [sp, #28]           @ 4-byte Reload
	ldr	r3, [sp, #32]           @ 4-byte Reload
	subs	r2, r2, r4
	sbc	r3, r3, r4, asr #31
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end26.i
                                        @   in Loop: Header=BB0_13 Depth=1
	cmp	r2, r11
	mov	r2, #0
	movlo	r2, #1
	cmp	r3, r12
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end26.i
                                        @   in Loop: Header=BB0_13 Depth=1
	mov	r3, #0
	movlt	r3, #1
	moveq	r3, r2
	cmp	r3, #0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end26.i
                                        @   in Loop: Header=BB0_13 Depth=1
	subeq	r5, r8, r5
	moveq	r1, r9
	mov	r8, r5
	cmp	r5, #1
	bhi	.LBB0_13
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %while.end.i
	ldr	r5, [sp, #80]
	ldr	r10, [sp, #8]           @ 4-byte Reload
	ldr	r9, [sp, #4]            @ 4-byte Reload
	ldr	r11, [sp, #76]
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %while.end.i
	ldr	r12, [sp, #72]
	ldr	r6, [sp, #12]           @ 4-byte Reload
	mov	r8, r5
	ldr	r5, .LCPI0_8
	sub	r0, r10, #1
	cmp	r1, r0
	beq	.LBB0_69
	b	.LBB0_29
.LCPI0_8:
	.long	_MergedGlobals1
.section bb0_29
.LBB0_29:                               @ %if.end45.i
	cmp	r1, #0
	beq	.LBB0_33
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %land.lhs.true.i
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldrb	r4, [r0, r1]!
	ldr	r3, [r5, #4]
	ldrb	r0, [r0, #-1]
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %land.lhs.true.i
	add	r2, r4, r4, lsl #1
	add	r2, r3, r2, lsl #1
	ldrb	r2, [r2, #4]
	add	r7, r0, r0, lsl #1
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %land.lhs.true.i
	add	r3, r3, r7, lsl #1
	ldrb	r3, [r3, #4]
	cmp	r3, r2
	bne	.LBB0_61
	b	.LBB0_55
.section bb0_33
.LBB0_33:                               @ %if.then48.i
	ldrb	r2, [lr, #1]
	ldrb	r0, [lr]
	ldrb	r3, [lr, #2]
	ldrb	r7, [lr, #3]
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.then48.i
	mov	r10, r6
	lsl	r2, r2, #16
	orr	r0, r2, r0, lsl #24
	ldr	r2, [sp, #20]           @ 4-byte Reload
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.then48.i
	orr	r0, r0, r3, lsl #8
	orr	r0, r0, r7
	cmp	lr, r2
	beq	.LBB0_38
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.then55.i
	ldrb	r3, [lr, #5]
	ldrb	r2, [lr, #4]
	ldrb	r7, [lr, #6]
	ldrb	r6, [lr, #7]
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.then55.i
	lsl	r3, r3, #16
	orr	r2, r3, r2, lsl #24
	orr	r2, r2, r7, lsl #8
	orr	r12, r2, r6
	b	.LBB0_39
.section bb0_38
.LBB0_38:                               @ %if.else63.i
	asr	r2, r0, #31
	mov	r12, r0
	mov	r0, r2
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end66.i
	ldr	r2, [sp, #24]           @ 4-byte Reload
	cmp	r2, #0
	beq	.LBB0_43
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.then68.i
	ldr	r2, [sp, #16]           @ 4-byte Reload
	ldr	r6, [r5, #4]
	mov	r4, #1
	ldrb	r7, [r2, #-1]
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.then68.i
	mov	r2, r6
	add	r7, r7, r7, lsl #1
	ldrb	r3, [r2, r7, lsl #1]!
	orr	r7, r4, r7, lsl #1
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.then68.i
	ldrb	r7, [r6, r7]
	ldrb	r6, [r2, #2]
	ldrb	r2, [r2, #3]
	lsl	r7, r7, #16
	orr	r7, r7, r3, lsl #24
	orr	r7, r7, r6, lsl #8
	orr	r4, r7, r2
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.end75.i
	ldr	r2, [sp, #28]           @ 4-byte Reload
	mov	r3, #0
	subs	r7, r2, r4
	ldr	r2, [sp, #32]           @ 4-byte Reload
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end75.i
	sbc	r6, r2, r4, asr #31
	cmp	r7, r12
	ldr	r12, [sp, #72]
	mov	r2, #0
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.end75.i
	movhs	r3, #1
	cmp	r6, r0
	mov	r6, r10
	ldr	r10, [sp, #8]           @ 4-byte Reload
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end75.i
	mov	r0, #0
	movge	r0, #1
	moveq	r0, r3
	cmp	r0, #0
	bne	.LBB0_55
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %for.cond.preheader.i
	ldmib	r5, {r0, r1}
	mov	lr, r6
	sub	r3, r1, r0
	ldr	r1, .LCPI0_9
	b	.LBB0_48
.LCPI0_9:
	.long	715827883               @ 0x2aaaaaab
.section bb0_48
.LBB0_48:                               @ %for.cond.preheader.i
	smull	r7, r6, r3, r1
	add	r3, r3, #5
	add	r1, r6, r6, lsr #31
	cmp	r3, #11
	blo	.LBB0_52
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %for.body.lr.ph.i
	mov	r3, r0
	mov	r2, #0
	ldrb	r6, [r3, #4]!
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3]
	cmp	r7, r6
	bne	.LBB0_52
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %for.inc.i
                                        @   in Loop: Header=BB0_50 Depth=1
	add	r2, r2, #1
	add	r3, r3, #6
	cmp	r2, r1
	blo	.LBB0_50
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %for.end.i
	cmp	r2, r1
	mov	r4, #0
	mov	r6, lr
	moveq	r2, #0
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %for.end.i
	add	r1, r2, r2, lsl #1
	add	r0, r0, r1, lsl #1
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB0_60
	b	.LBB0_54
.section bb0_54
.LBB0_54:
	mov	r0, r2
	b	.LBB0_61
.section bb0_55
.LBB0_55:                               @ %if.else135.i
	add	r0, r1, #1
	cmp	r0, r10
	bhs	.LBB0_59
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %land.lhs.true139.i
	ldr	r3, [sp, #16]           @ 4-byte Reload
	ldr	r2, [r5, #4]
	ldrb	r4, [r3, r1]
	ldrb	r0, [r3, r0]
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %land.lhs.true139.i
	add	r1, r4, r4, lsl #1
	add	r3, r0, r0, lsl #1
	add	r1, r2, r1, lsl #1
	add	r2, r2, r3, lsl #1
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %land.lhs.true139.i
	ldrb	r1, [r1, #4]
	ldrb	r2, [r2, #4]
	cmp	r2, r1
	moveq	r0, r4
	b	.LBB0_61
.section bb0_59
.LBB0_59:                               @ %if.else135.if.else159_crit_edge.i
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldrb	r4, [r0, r1]
	mov	r0, r4
	b	.LBB0_61
.section bb0_60
.LBB0_60:                               @ %scan_trans.exit
	mov	r0, #0
	mov	r4, r2
	cmn	r2, #1
	beq	.LBB0_69
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.then1
	ldr	r3, [r5, #4]
	add	r2, r4, r4, lsl #1
	cmp	r11, #0
	add	r7, r3, r2, lsl #1
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then1
	ldrb	r1, [r7, #4]
	str	r1, [r6]
	mov	r1, #1
	ldrb	r6, [r3, r2, lsl #1]
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.then1
	orr	r2, r1, r2, lsl #1
	ldrb	r2, [r3, r2]
	ldrb	r3, [r7, #2]
	lsl	r2, r2, #16
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.then1
	orr	r2, r2, r6, lsl #24
	ldrb	r6, [r7, #3]
	orr	r2, r2, r3, lsl #8
	orr	r2, r2, r6
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %if.then1
	rsb	r2, r2, #0
	str	r2, [r12]
	ldrb	r2, [r7, #5]
	ldr	r3, [r5, #8]
	add	r2, r3, r2
	str	r2, [r8]
	beq	.LBB0_103
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.then10
	ldr	r2, [r5, #4]
	add	r0, r0, r0, lsl #1
	mov	r3, r2
	ldrb	r7, [r3, r0, lsl #1]!
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %if.then10
	orr	r0, r1, r0, lsl #1
	ldrb	r0, [r2, r0]
	ldrb	r1, [r3, #2]
	ldrb	r2, [r3, #3]
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.then10
	lsl	r0, r0, #16
	orr	r0, r0, r7, lsl #24
	orr	r0, r0, r1, lsl #8
	orr	r0, r0, r2
	rsb	r0, r0, #0
	str	r0, [r11]
	b	.LBB0_103
.section bb0_69
.LBB0_69:                               @ %if.end16
	ldr	r0, .LCPI0_10
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB0_98
	b	.LBB0_70
.LCPI0_10:
	.long	__daylight
.section bb0_70
.LBB0_70:                               @ %if.end19
	str	r6, [sp, #12]           @ 4-byte Spill
	ldr	r2, .LCPI0_11
	ldr	r10, [sp, #28]          @ 4-byte Reload
	ldr	r6, [sp, #32]           @ 4-byte Reload
	b	.LBB0_71
.LCPI0_11:
	.long	31556952                @ 0x1e18558
.section bb0_71
.LBB0_71:                               @ %if.end19
	mov	r3, #0
	mov	r11, r5
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_ldivmod
	adds	r0, r0, #70
	adc	r1, r1, #0
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, r1
	mov	r5, r0
	mov	r2, #0
                                        @ kill: R0<def> R5<kill>
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %while.cond
                                        @   in Loop: Header=BB0_72 Depth=1
                                        @ kill: R1<def> R4<kill>
	bl	__year_to_secs
	cmp	r0, r10
	mov	r0, #0
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %while.cond
                                        @   in Loop: Header=BB0_72 Depth=1
	mov	r2, #0
	movhi	r0, #1
	cmp	r1, r6
	movgt	r2, #1
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %while.cond
                                        @   in Loop: Header=BB0_72 Depth=1
	moveq	r2, r0
	subs	r0, r5, #1
	sbc	r1, r4, #0
	cmp	r2, #0
	bne	.LBB0_72
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %while.cond24
                                        @ =>This Inner Loop Header: Depth=1
	mov	r8, r5
	mov	r2, #0
	adds	r5, r8, #1
	adc	r4, r4, #0
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %while.cond24
                                        @   in Loop: Header=BB0_76 Depth=1
	mov	r0, r5
	mov	r1, r4
	bl	__year_to_secs
	cmp	r0, r10
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %while.cond24
                                        @   in Loop: Header=BB0_76 Depth=1
	mov	r0, #0
	movlo	r0, #1
	cmp	r1, r6
	mov	r1, #0
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %while.cond24
                                        @   in Loop: Header=BB0_76 Depth=1
	movlt	r1, #1
	moveq	r1, r0
	cmp	r1, #0
	bne	.LBB0_76
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %while.end30
	add	r0, r11, #56
	mov	r1, r8
	bl	rule_to_secs
	mov	r4, r0
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %while.end30
	mov	r7, r1
	add	r0, r11, #76
	mov	r1, r8
	bl	rule_to_secs
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %while.end30
	cmp	r4, r0
	mov	r3, #0
	mov	r2, #0
	movhs	r3, #1
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %while.end30
	cmp	r7, r1
	movge	r2, #1
	moveq	r2, r3
	cmp	r2, #0
	bne	.LBB0_90
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.then37
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r5, r11
	cmp	r2, #0
	bne	.LBB0_87
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %if.then39
	ldr	r2, [r5, #12]
	asr	r3, r2, #31
	adds	r0, r2, r0
	ldr	r2, .LCPI0_12
	b	.LBB0_86
.LCPI0_12:
	.long	__timezone
.section bb0_86
.LBB0_86:                               @ %if.then39
	adc	r1, r3, r1
	ldr	r2, [r2]
	asr	r3, r2, #31
	adds	r4, r2, r4
	adc	r7, r3, r7
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %if.end44
	ldr	r6, [sp, #32]           @ 4-byte Reload
	cmp	r4, r10
	mov	r3, #0
	ldr	r8, [sp, #80]
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %if.end44
	ldr	r12, [sp, #72]
	ldr	r11, [sp, #76]
	mov	r2, #0
	movhi	r3, #1
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %if.end44
	cmp	r7, r6
	ldr	r6, [sp, #12]           @ 4-byte Reload
	mov	r7, #0
	movgt	r7, #1
	moveq	r7, r3
	cmp	r7, #0
	beq	.LBB0_96
	b	.LBB0_98
.section bb0_90
.LBB0_90:                               @ %if.else
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r5, r11
	cmp	r2, #0
	bne	.LBB0_93
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %if.then52
	ldr	r2, [r5, #12]
	asr	r3, r2, #31
	adds	r4, r2, r4
	ldr	r2, .LCPI0_13
	b	.LBB0_92
.LCPI0_13:
	.long	__timezone
.section bb0_92
.LBB0_92:                               @ %if.then52
	adc	r7, r3, r7
	ldr	r2, [r2]
	asr	r3, r2, #31
	adds	r0, r2, r0
	adc	r1, r3, r1
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %if.end57
	ldr	r6, [sp, #32]           @ 4-byte Reload
	cmp	r4, r10
	mov	r3, #0
	ldr	r8, [sp, #80]
	b	.LBB0_94
.section bb0_94
.LBB0_94:                               @ %if.end57
	ldr	r12, [sp, #72]
	ldr	r11, [sp, #76]
	mov	r2, #0
	movls	r3, #1
	b	.LBB0_95
.section bb0_95
.LBB0_95:                               @ %if.end57
	cmp	r7, r6
	ldr	r6, [sp, #12]           @ 4-byte Reload
	mov	r7, #0
	movle	r7, #1
	moveq	r7, r3
	cmp	r7, #0
	bne	.LBB0_100
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %if.end57
	ldr	r3, [sp, #32]           @ 4-byte Reload
	cmp	r0, r10
	mov	r0, #0
	movhi	r0, #1
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %if.end57
	cmp	r1, r3
	movgt	r2, #1
	moveq	r2, r0
	cmp	r2, #0
	bne	.LBB0_100
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %std
	mov	r0, #0
	cmp	r11, #0
	str	r0, [r6]
	ldr	r0, .LCPI0_14
	b	.LBB0_99
.LCPI0_14:
	.long	__timezone
.section bb0_99
.LBB0_99:                               @ %std
	ldr	r0, [r0]
	str	r0, [r12]
	ldrne	r0, [r5, #12]
	strne	r0, [r11]
	ldr	r0, .LCPI0_16
	ldr	r0, [r0]
	b	.LBB0_102
.LCPI0_16:
	.long	__tzname
.section bb0_100
.LBB0_100:                              @ %dst
	mov	r0, #1
	cmp	r11, #0
	str	r0, [r6]
	ldr	r0, [r5, #12]
	b	.LBB0_101
.section bb0_101
.LBB0_101:                              @ %dst
	str	r0, [r12]
	ldrne	r0, .LCPI0_15
	ldrne	r0, [r0]
	strne	r0, [r11]
	ldr	r0, .LCPI0_17
	ldr	r0, [r0, #4]
	b	.LBB0_102
.LCPI0_15:
	.long	__timezone
.LCPI0_17:
	.long	__tzname
.section bb0_102
.LBB0_102:                              @ %if.end67
	str	r0, [r8]
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %if.end
	mov	r0, r9
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	__unlock
.Ltmp0:
	.size	__secs_to_zone, .Ltmp0-__secs_to_zone
	.cantunwind
	.fnend

	.align	2
	.type	rule_to_secs,%function
.section bb1_0
rule_to_secs:                           @ @rule_to_secs
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	asr	r3, r1, #31
	mov	r4, r0
	mov	r0, r1
	add	r2, sp, #4
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r1, r3
	bl	__year_to_secs
	mov	r6, r0
	ldm	r4, {r0, r7}
	mov	r9, r1
	cmp	r0, #77
	bne	.LBB1_13
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.else
	ldr	r1, [sp, #4]
	ldr	r5, [r4, #8]
	ldr	r10, [r4, #12]
	sub	r8, r7, #1
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.else
	mov	r0, r8
	bl	__month_to_secs
	asr	r1, r0, #31
	adds	r6, r0, r6
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %if.else
	mov	r0, #17920
	mov	r2, #14976
	mov	r3, #0
	orr	r0, r0, #327680
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.else
	adc	r9, r1, r9
	orr	r2, r2, #589824
	adds	r0, r6, r0
	adc	r1, r9, #0
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %if.else
	bl	__moddi3
	ldr	r1, .LCPI1_0
	smull	r2, r3, r0, r1
	add	r0, r3, r0
	b	.LBB1_10
.LCPI1_0:
	.long	3257812231              @ 0xc22e4507
.section bb1_10
.LBB1_10:                               @ %if.else
	asr	r1, r0, #16
	add	r0, r1, r0, lsr #31
	sub	r0, r10, r0
	cmp	r0, #0
	addlt	r0, r0, #7
	cmp	r5, #5
	bne	.LBB1_19
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %land.lhs.true26
	add	r1, r0, #28
	cmp	r7, #2
	bne	.LBB1_17
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then.i
	ldr	r2, [sp, #4]
	add	r2, r2, #28
	b	.LBB1_18
.section bb1_13
.LBB1_13:                               @ %entry
	cmp	r0, #74
	bne	.LBB1_16
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %land.lhs.true
	ldr	r0, [sp, #4]
	mov	r1, #0
	cmp	r0, #0
	mov	r0, #0
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %land.lhs.true
	moveq	r0, #1
	cmp	r7, #60
	movlt	r1, #1
	orrs	r0, r1, r0
	subne	r7, r7, #1
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.end
	mov	r0, #4480
	orr	r0, r0, #81920
	mul	r1, r7, r0
	asr	r2, r1, #31
	adds	r0, r1, r6
	adc	r1, r2, r9
	b	.LBB1_21
.section bb1_17
.LBB1_17:                               @ %if.else.i
	mov	r2, #213
	mov	r3, #1
	orr	r2, r2, #2560
	and	r2, r3, r2, lsr r8
	orr	r2, r2, #30
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %days_in_month.exit
	mov	r5, #4
	cmp	r1, r2
	movlt	r5, #5
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %if.end32
	rsb	r1, r5, r5, lsl #3
	mov	r2, #4480
	add	r0, r0, r1
	ldr	r1, .LCPI1_2
	b	.LBB1_20
.LCPI1_2:
	.long	4294362496              @ 0xfff6c580
.section bb1_20
.LBB1_20:                               @ %if.end32
	orr	r2, r2, #81920
	mla	r3, r0, r2, r1
	asr	r1, r3, #31
	adds	r0, r3, r6
	adc	r1, r1, r9
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %if.end39
	ldr	r2, [r4, #16]
	asr	r3, r2, #31
	adds	r0, r2, r0
	adc	r1, r3, r1
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp1:
	.size	rule_to_secs, .Ltmp1-rule_to_secs
	.cantunwind
	.fnend

	.globl	__tzset
	.align	2
	.type	__tzset,%function
.section bb2_0
__tzset:                                @ @__tzset
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	ldr	r0, .LCPI2_0
	add	r4, r0, #48
	mov	r0, r4
	bl	__lock
	bl	do_tzset
	mov	r0, r4
	pop	{r4, lr}
	b	__unlock
.LCPI2_0:
	.long	_MergedGlobals1
.Ltmp2:
	.size	__tzset, .Ltmp2-__tzset
	.cantunwind
	.fnend

	.globl	__tm_to_tzname
	.align	2
	.type	__tm_to_tzname,%function
.section bb3_0
__tm_to_tzname:                         @ @__tm_to_tzname
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	ldr	r6, .LCPI3_4
	ldr	r4, [r0, #40]
	b	.LBB3_2
.LCPI3_4:
	.long	_MergedGlobals1
.section bb3_2
.LBB3_2:                                @ %entry
	add	r5, r6, #48
	mov	r0, r5
	bl	__lock
	bl	do_tzset
	ldr	r0, .LCPI3_6
	cmp	r4, r0
	beq	.LBB3_7
	b	.LBB3_3
.LCPI3_6:
	.long	__gmt
.section bb3_3
.LBB3_3:                                @ %entry
	ldr	r0, .LCPI3_5
	ldr	r1, [r0]
	cmp	r4, r1
	ldrne	r0, [r0, #4]
	cmpne	r4, r0
	beq	.LBB3_7
	b	.LBB3_4
.LCPI3_5:
	.long	__tzname
.section bb3_4
.LBB3_4:                                @ %land.lhs.true4
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.LBB3_6
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %lor.lhs.false
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #16]
	sub	r2, r4, r0
	sub	r0, r1, r0
	cmp	r2, r0
	ldrhs	r4, .LCPI3_7
	b	.LBB3_7
.LCPI3_7:
	.long	.L.str
.section bb3_6
.LBB3_6:                                @ %if.then
	ldr	r4, .LCPI3_8
	b	.LBB3_7
.LCPI3_8:
	.long	.L.str
.section bb3_7
.LBB3_7:                                @ %if.end
	mov	r0, r5
	bl	__unlock
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp3:
	.size	__tm_to_tzname, .Ltmp3-__tm_to_tzname
	.cantunwind
	.fnend

	.align	2
	.type	do_tzset,%function
.section bb4_0
do_tzset:                               @ @do_tzset
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	.pad	#292
	sub	sp, sp, #292
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %entry
	ldr	r0, .LCPI4_11
	bl	getenv
	mov	r4, r0
	b	.LBB4_4
.LCPI4_11:
	.long	.L.str1
.section bb4_4
.LBB4_4:                                @ %entry
	str	r4, [sp, #8]
	cmp	r4, #0
	ldrbne	r0, [r4]
	cmpne	r0, #0
	bne	.LBB4_6
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %if.then
	ldr	r4, .LCPI4_12
	str	r4, [sp, #8]
	b	.LBB4_6
.LCPI4_12:
	.long	.L.str2
.section bb4_6
.LBB4_6:                                @ %if.end
	ldr	r6, .LCPI4_14
	ldr	r1, [r6]
	cmp	r1, #0
	beq	.LBB4_8
	b	.LBB4_7
.LCPI4_14:
	.long	_MergedGlobals
.section bb4_7
.LBB4_7:                                @ %land.lhs.true
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	.LBB4_58
	b	.LBB4_8
.section bb4_8
.LBB4_8:                                @ %if.end6
	ldr	r8, .LCPI4_15
	ldr	r0, [r8]
	cmp	r0, #0
	beq	.LBB4_10
	b	.LBB4_9
.LCPI4_15:
	.long	_MergedGlobals1
.section bb4_9
.LBB4_9:                                @ %if.then8
	ldr	r1, [r8, #20]
	bl	__munmap
	b	.LBB4_10
.section bb4_10
.LBB4_10:                               @ %if.end10
	mov	r0, r4
	bl	strlen
	mov	r1, #2
	mov	r5, r0
	b	.LBB4_11
.section bb4_11
.LBB4_11:                               @ %if.end10
	ldr	r2, [r6, #4]
	orr	r1, r1, #4096
	cmp	r5, r1
	ldrhs	r4, .LCPI4_16
	b	.LBB4_12
.LCPI4_16:
	.long	__gmt
.section bb4_12
.LBB4_12:                               @ %if.end10
	movhs	r5, #3
	strhs	r4, [sp, #8]
	cmp	r5, r2
	bhs	.LBB4_14
	b	.LBB4_13
.section bb4_13
.LBB4_13:                               @ %if.end23thread-pre-split
	ldr	r0, [r6]
	b	.LBB4_16
.section bb4_14
.LBB4_14:                               @ %if.then15
	add	r0, r5, #1
	cmp	r5, r2, lsl #1
	lsllo	r0, r2, #1
	cmp	r0, r1
	b	.LBB4_15
.section bb4_15
.LBB4_15:                               @ %if.then15
	movhi	r0, r1
	str	r0, [r6, #4]
	bl	malloc
	str	r0, [r6]
	b	.LBB4_16
.section bb4_16
.LBB4_16:                               @ %if.end23
	cmp	r0, #0
	beq	.LBB4_18
	b	.LBB4_17
.section bb4_17
.LBB4_17:                               @ %if.then25
	add	r2, r5, #1
	mov	r1, r4
	bl	memcpy
	b	.LBB4_18
.section bb4_18
.LBB4_18:                               @ %if.end28
	ldrb	r0, [r4]
	cmp	r0, #58
	beq	.LBB4_22
	b	.LBB4_19
.section bb4_19
.LBB4_19:                               @ %lor.lhs.false31
	mov	r0, r4
	mov	r1, #47
	bl	strchr
	cmp	r0, #0
	beq	.LBB4_43
	b	.LBB4_20
.section bb4_20
.LBB4_20:                               @ %land.lhs.true34
	sub	r2, r0, r4
	mov	r0, r4
	mov	r1, #44
	bl	memchr
	cmp	r0, #0
	bne	.LBB4_43
	b	.LBB4_21
.section bb4_21
.LBB4_21:                               @ %if.then37
	ldrb	r0, [r4]
	cmp	r0, #58
	bne	.LBB4_59
	b	.LBB4_22
.section bb4_22
.LBB4_22:                               @ %if.then41
	add	r5, r4, #1
	str	r5, [sp, #8]
	ldrb	r0, [r4, #1]
	b	.LBB4_23
.section bb4_23
.LBB4_23:                               @ %if.end42
	and	r0, r0, #254
	cmp	r0, #46
	bne	.LBB4_27
	b	.LBB4_24
.section bb4_24
.LBB4_24:                               @ %if.then50
	ldr	r0, .LCPI4_20
	ldr	r0, [r0, #12]
	cmp	r0, #0
	beq	.LBB4_26
	b	.LBB4_25
.LCPI4_20:
	.long	__libc
.section bb4_25
.LBB4_25:                               @ %lor.lhs.false52
	ldr	r1, .LCPI4_13
	mov	r0, r5
	bl	strcmp
	cmp	r0, #0
	bne	.LBB4_42
	b	.LBB4_26
.LCPI4_13:
	.long	.L.str2
.section bb4_26
.LBB4_26:                               @ %if.end79
	add	r1, r8, #20
	mov	r0, r5
	bl	__map_file
	cmp	r0, #0
	bne	.LBB4_36
	b	.LBB4_42
.section bb4_27
.LBB4_27:                               @ %if.else
	mov	r0, r5
	bl	strlen
	mov	r4, r0
	cmp	r4, #255
	bhi	.LBB4_42
	b	.LBB4_28
.section bb4_28
.LBB4_28:                               @ %land.lhs.true61
	mov	r0, r5
	mov	r1, #46
	bl	strchr
	cmp	r0, #0
	bne	.LBB4_42
	b	.LBB4_29
.section bb4_29
.LBB4_29:                               @ %if.then64
	add	r9, sp, #12
	add	r2, r4, #1
	mov	r1, r5
	add	r0, r9, #24
	b	.LBB4_30
.section bb4_30
.LBB4_30:                               @ %if.then64
	bl	memcpy
	ldr	r5, .LCPI4_19
	add	r0, r4, r9
	mov	r1, #0
	add	r4, r8, #20
	strb	r1, [r0, #24]
	b	.LBB4_31
.LCPI4_19:
	.long	do_tzset.search
.section bb4_31
.LBB4_31:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r5]
	cmp	r0, #0
	beq	.LBB4_42
	b	.LBB4_32
.section bb4_32
.LBB4_32:                               @ %for.body
                                        @   in Loop: Header=BB4_31 Depth=1
	mov	r0, r5
	bl	strlen
	mov	r6, r0
	mov	r1, r5
	b	.LBB4_33
.section bb4_33
.LBB4_33:                               @ %for.body
                                        @   in Loop: Header=BB4_31 Depth=1
	rsb	r0, r6, #24
	mov	r2, r6
	add	r7, r9, r0
	mov	r0, r7
	b	.LBB4_34
.section bb4_34
.LBB4_34:                               @ %for.body
                                        @   in Loop: Header=BB4_31 Depth=1
	bl	memcpy
	mov	r0, r7
	mov	r1, r4
	add	r5, r6, r5
	b	.LBB4_35
.section bb4_35
.LBB4_35:                               @ %for.body
                                        @   in Loop: Header=BB4_31 Depth=1
	bl	__map_file
	add	r5, r5, #1
	cmp	r0, #0
	beq	.LBB4_31
	b	.LBB4_36
.section bb4_36
.LBB4_36:                               @ %land.lhs.true85
	ldr	r1, [r8, #20]
	cmp	r1, #44
	blo	.LBB4_41
	b	.LBB4_37
.section bb4_37
.LBB4_37:                               @ %lor.lhs.false88
	ldrb	r1, [r0]
	ldrb	r2, [r0, #1]
	ldrb	r3, [r0, #2]
	ldrb	r7, [r0, #3]
	b	.LBB4_38
.section bb4_38
.LBB4_38:                               @ %lor.lhs.false88
	orr	r1, r1, r2, lsl #8
	ldr	r2, .LCPI4_21
	orr	r3, r3, r7, lsl #8
	orr	r1, r1, r3, lsl #16
	b	.LBB4_39
.LCPI4_21:
	.long	1718180436              @ 0x66695a54
.section bb4_39
.LBB4_39:                               @ %lor.lhs.false88
	mov	r3, #0
	cmp	r1, r2
	movne	r3, #1
	cmp	r3, #0
	beq	.LBB4_60
	b	.LBB4_40
.section bb4_40
.LBB4_40:                               @ %lor.lhs.false88.if.end176.thread333_crit_edge
	ldr	r1, [r8, #20]
	b	.LBB4_41
.section bb4_41
.LBB4_41:                               @ %if.end176.thread333
	bl	__munmap
	b	.LBB4_42
.section bb4_42
.LBB4_42:                               @ %if.end176.thread335
	ldr	r0, .LCPI4_17
	str	r0, [sp, #8]
	b	.LBB4_43
.LCPI4_17:
	.long	__gmt
.section bb4_43
.LBB4_43:                               @ %if.end176
	mov	r0, #0
	str	r0, [r8]
	b	.LBB4_44
.section bb4_44
.LBB4_44:                               @ %if.end179
	add	r4, r8, #32
	add	r5, sp, #8
	mov	r0, r4
	mov	r1, r5
	b	.LBB4_45
.section bb4_45
.LBB4_45:                               @ %if.end179
	bl	getname
	ldr	r7, .LCPI4_22
	mov	r0, r5
	str	r4, [r7]
	b	.LBB4_46
.LCPI4_22:
	.long	__tzname
.section bb4_46
.LBB4_46:                               @ %if.end179
	bl	getoff
	ldr	r6, .LCPI4_24
	add	r4, r8, #39
	mov	r1, r5
	b	.LBB4_47
.LCPI4_24:
	.long	__timezone
.section bb4_47
.LBB4_47:                               @ %if.end179
	str	r0, [r6]
	mov	r0, r4
	bl	getname
	ldrb	r0, [r8, #39]
	str	r4, [r7, #4]
	cmp	r0, #0
	beq	.LBB4_52
	b	.LBB4_48
.section bb4_48
.LBB4_48:                               @ %if.then182
	ldr	r0, .LCPI4_27
	mov	r1, #1
	str	r1, [r0]
	ldr	r0, [sp, #8]
	b	.LBB4_49
.LCPI4_27:
	.long	__daylight
.section bb4_49
.LBB4_49:                               @ %if.then182
	ldrb	r0, [r0]
	cmp	r0, #43
	cmpne	r0, #45
	beq	.LBB4_51
	b	.LBB4_50
.section bb4_50
.LBB4_50:                               @ %lor.lhs.false190
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB4_53
	b	.LBB4_51
.section bb4_51
.LBB4_51:                               @ %if.then195
	add	r0, sp, #8
	bl	getoff
	str	r0, [r8, #12]
	b	.LBB4_54
.section bb4_52
.LBB4_52:                               @ %if.else200
	ldr	r0, .LCPI4_28
	mov	r1, #0
	str	r1, [r8, #12]
	str	r1, [r0]
	b	.LBB4_54
.LCPI4_28:
	.long	__daylight
.section bb4_53
.LBB4_53:                               @ %if.else197
	ldr	r0, [r6]
	sub	r0, r0, #3600
	str	r0, [r8, #12]
	b	.LBB4_54
.section bb4_54
.LBB4_54:                               @ %if.end201
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	cmp	r1, #44
	bne	.LBB4_58
	b	.LBB4_55
.section bb4_55
.LBB4_55:                               @ %if.end207
	add	r0, r0, #1
	add	r1, r8, #56
	str	r0, [sp, #8]
	add	r0, sp, #8
	b	.LBB4_56
.section bb4_56
.LBB4_56:                               @ %if.end207
	bl	getrule
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	cmp	r1, #44
	bne	.LBB4_58
	b	.LBB4_57
.section bb4_57
.LBB4_57:                               @ %if.then211
	add	r0, r0, #1
	add	r1, r8, #76
	str	r0, [sp, #8]
	add	r0, sp, #8
	bl	getrule
	b	.LBB4_58
.section bb4_58
.LBB4_58:                               @ %cleanup
	add	sp, sp, #292
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb4_59
.LBB4_59:
	mov	r5, r4
	b	.LBB4_23
.section bb4_60
.LBB4_60:                               @ %if.then95
	add	r1, r0, #44
	str	r0, [r8]
	str	r1, [r8, #24]
	ldrb	r2, [r0, #33]
	b	.LBB4_61
.section bb4_61
.LBB4_61:                               @ %if.then95
	ldrb	r1, [r0, #32]
	ldrb	r3, [r0, #34]
	ldrb	r7, [r0, #35]
	lsl	r2, r2, #16
	b	.LBB4_62
.section bb4_62
.LBB4_62:                               @ %if.then95
	orr	r1, r2, r1, lsl #24
	mov	r2, #44
	orr	r1, r1, r3, lsl #8
	orr	r11, r1, r7
	b	.LBB4_63
.section bb4_63
.LBB4_63:                               @ %if.then95
	add	r2, r2, r11, lsl #2
	add	r3, r0, r2
	str	r3, [r8, #28]
	ldrb	r7, [r0, #33]
	b	.LBB4_64
.section bb4_64
.LBB4_64:                               @ %if.then95
	ldrb	r3, [r0, #32]
	ldrb	r6, [r0, #34]
	ldrb	r5, [r0, #35]
	lsl	r7, r7, #16
	b	.LBB4_65
.section bb4_65
.LBB4_65:                               @ %if.then95
	orr	r3, r7, r3, lsl #24
	orr	r3, r3, r6, lsl #8
	orr	r4, r3, r5
	add	r5, r4, r2
	b	.LBB4_66
.section bb4_66
.LBB4_66:                               @ %if.then95
	add	r2, r0, r5
	str	r2, [r8, #4]
	ldrb	r3, [r0, #37]
	ldrb	r2, [r0, #36]
	b	.LBB4_67
.section bb4_67
.LBB4_67:                               @ %if.then95
	ldrb	r7, [r0, #38]
	ldrb	r6, [r0, #39]
	lsl	r3, r3, #16
	orr	r2, r3, r2, lsl #24
	b	.LBB4_68
.section bb4_68
.LBB4_68:                               @ %if.then95
	orr	r2, r2, r7, lsl #8
	orr	r2, r2, r6
	add	r2, r2, r2, lsl #1
	add	lr, r5, r2, lsl #1
	b	.LBB4_69
.section bb4_69
.LBB4_69:                               @ %if.then95
	add	r9, r0, lr
	str	r9, [r8, #8]
	ldrb	r7, [r0, #41]
	ldrb	r3, [r0, #40]
	b	.LBB4_70
.section bb4_70
.LBB4_70:                               @ %if.then95
	ldrb	r6, [r0, #42]
	ldrb	r1, [r0, #43]
	lsl	r7, r7, #16
	orr	r3, r7, r3, lsl #24
	b	.LBB4_71
.section bb4_71
.LBB4_71:                               @ %if.then95
	orr	r3, r3, r6, lsl #8
	orr	r1, r3, r1
	add	r1, r1, lr
	add	r1, r0, r1
	b	.LBB4_72
.section bb4_72
.LBB4_72:                               @ %if.then95
	str	r1, [r8, #16]
	ldr	r1, [r8, #20]
	add	r3, r1, r0
	ldrb	r1, [r3, #-1]
	cmp	r1, #10
	bne	.LBB4_76
	b	.LBB4_73
.section bb4_73
.LBB4_73:                               @ %if.then114
	sub	r0, r3, #2
	b	.LBB4_74
.section bb4_74
.LBB4_74:                               @ %for.cond117
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #8]
	ldrb	r1, [r0], #-1
	cmp	r1, #10
	bne	.LBB4_74
	b	.LBB4_75
.section bb4_75
.LBB4_75:                               @ %if.end176.thread
	add	r0, r0, #2
	str	r0, [sp, #8]
	b	.LBB4_44
.section bb4_76
.LBB4_76:                               @ %if.else126
	ldr	r1, .LCPI4_25
	mov	r3, #0
	ldr	r2, .LCPI4_23
	mov	r6, #0
	b	.LBB4_77
.LCPI4_23:
	.long	__tzname
.LCPI4_25:
	.long	__timezone
.section bb4_77
.LBB4_77:                               @ %if.else126
	str	r3, [r8, #12]
	str	r3, [r1]
	ldr	r1, .LCPI4_29
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r1]
	b	.LBB4_78
.LCPI4_29:
	.long	__daylight
.section bb4_78
.LBB4_78:                               @ %for.body131
                                        @ =>This Inner Loop Header: Depth=1
	sub	r1, r8, r6, lsl #2
	sub	r6, r6, #1
	str	r3, [r1, #76]
	str	r3, [r1, #56]
	cmn	r6, #5
	bne	.LBB4_78
	b	.LBB4_79
.section bb4_79
.LBB4_79:                               @ %for.end135
	cmp	r5, lr
	bge	.LBB4_95
	b	.LBB4_80
.section bb4_80
.LBB4_80:                               @ %for.body139.preheader
	add	r1, r4, r11, lsl #2
	mov	r12, #0
	mov	r4, #0
	mov	r11, #0
	mov	r10, #0
	add	r1, r1, r0
	add	r3, r1, #49
	b	.LBB4_81
.section bb4_81
.LBB4_81:                               @ %for.body139
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r3
	ldrb	r3, [r1, #-1]
	cmp	r3, #0
	cmpeq	r4, #0
	bne	.LBB4_86
	b	.LBB4_82
.section bb4_82
.LBB4_82:                               @ %if.then144
                                        @   in Loop: Header=BB4_81 Depth=1
	ldrb	r3, [r1]
	add	r3, lr, r3
	add	r4, r0, r3
	str	r4, [r2]
	b	.LBB4_83
.section bb4_83
.LBB4_83:                               @ %if.then144
                                        @   in Loop: Header=BB4_81 Depth=1
	ldrb	r7, [r1, #-4]
	ldrb	r3, [r1, #-5]
	ldrb	r6, [r1, #-3]
	ldrb	r12, [r1, #-2]
	b	.LBB4_84
.section bb4_84
.LBB4_84:                               @ %if.then144
                                        @   in Loop: Header=BB4_81 Depth=1
	lsl	r7, r7, #16
	orr	r3, r7, r3, lsl #24
	orr	r3, r3, r6, lsl #8
	orr	r3, r3, r12
	b	.LBB4_85
.section bb4_85
.LBB4_85:                               @ %if.then144
                                        @   in Loop: Header=BB4_81 Depth=1
	rsb	r12, r3, #0
	ldr	r3, .LCPI4_26
	str	r12, [r3]
	ldrb	r3, [r1, #-1]
	b	.LBB4_86
.LCPI4_26:
	.long	__timezone
.section bb4_86
.LBB4_86:                               @ %if.end150
                                        @   in Loop: Header=BB4_81 Depth=1
	cmp	r3, #0
	beq	.LBB4_92
	b	.LBB4_87
.section bb4_87
.LBB4_87:                               @ %if.end150
                                        @   in Loop: Header=BB4_81 Depth=1
	cmp	r10, #0
	bne	.LBB4_92
	b	.LBB4_88
.section bb4_88
.LBB4_88:                               @ %if.then156
                                        @   in Loop: Header=BB4_81 Depth=1
	ldrb	r3, [r1]
	mov	r5, r2
	mov	r11, #1
	add	r3, lr, r3
	b	.LBB4_89
.section bb4_89
.LBB4_89:                               @ %if.then156
                                        @   in Loop: Header=BB4_81 Depth=1
	add	r10, r0, r3
	str	r10, [r2, #4]
	ldrb	r6, [r1, #-4]
	ldrb	r3, [r1, #-5]
	b	.LBB4_90
.section bb4_90
.LBB4_90:                               @ %if.then156
                                        @   in Loop: Header=BB4_81 Depth=1
	ldrb	r7, [r1, #-3]
	ldrb	r2, [r1, #-2]
	lsl	r6, r6, #16
	orr	r3, r6, r3, lsl #24
	b	.LBB4_91
.section bb4_91
.LBB4_91:                               @ %if.then156
                                        @   in Loop: Header=BB4_81 Depth=1
	orr	r3, r3, r7, lsl #8
	orr	r2, r3, r2
	ldr	r3, .LCPI4_30
	rsb	r2, r2, #0
	str	r2, [r8, #12]
	mov	r2, r5
	str	r11, [r3]
	b	.LBB4_92
.LCPI4_30:
	.long	__daylight
.section bb4_92
.LBB4_92:                               @ %for.inc163
                                        @   in Loop: Header=BB4_81 Depth=1
	add	r3, r1, #6
	add	r1, r1, #1
	cmp	r1, r9
	blo	.LBB4_81
	b	.LBB4_93
.section bb4_93
.LBB4_93:                               @ %for.end165
	cmp	r4, #0
	beq	.LBB4_97
	b	.LBB4_94
.section bb4_94
.LBB4_94:
	mov	r10, r4
	b	.LBB4_98
.section bb4_95
.LBB4_95:                               @ %if.end168.thread
	mov	r12, #0
	mov	r11, #0
	str	r12, [r2]
	b	.LBB4_96
.section bb4_96
.LBB4_96:                               @ %if.then170
	ldr	r10, .LCPI4_18
	str	r10, [r2]
	b	.LBB4_98
.LCPI4_18:
	.long	__gmt
.section bb4_97
.LBB4_97:                               @ %if.end168
	str	r10, [r2]
	cmp	r10, #0
	beq	.LBB4_96
	b	.LBB4_98
.section bb4_98
.LBB4_98:                               @ %if.end171
	cmp	r11, #0
	streq	r10, [r2, #4]
	streq	r12, [r8, #12]
	b	.LBB4_58
.Ltmp4:
	.size	do_tzset, .Ltmp4-do_tzset
	.cantunwind
	.fnend

	.align	2
	.type	getname,%function
.section bb5_0
getname:                                @ @getname
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	ldr	r12, [r1]
	ldrb	lr, [r12]
	cmp	lr, #60
	bne	.LBB5_8
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %if.then
	add	lr, r12, #1
	mov	r3, #0
	str	lr, [r1]
	ldrb	r12, [r12, #1]
	cmp	r12, #62
	beq	.LBB5_7
	b	.LBB5_3
.section bb5_3
.LBB5_3:
	mov	r3, #1
	b	.LBB5_5
.section bb5_4
.LBB5_4:                                @ %for.body.for.body_crit_edge
                                        @   in Loop: Header=BB5_5 Depth=1
	ldrb	r12, [lr, r3]
	add	r3, r3, #1
	b	.LBB5_5
.section bb5_5
.LBB5_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r2, r0, r3
	cmp	r3, #5
	strb	r12, [r2, #-1]
	ldr	lr, [r1]
	bgt	.LBB5_7
	b	.LBB5_6
.section bb5_6
.LBB5_6:                                @ %for.body
                                        @   in Loop: Header=BB5_5 Depth=1
	ldrb	r2, [lr]
	cmp	r2, #62
	bne	.LBB5_4
	b	.LBB5_7
.section bb5_7
.LBB5_7:                                @ %for.end
	add	r12, lr, #1
	str	r12, [r1]
	b	.LBB5_12
.section bb5_8
.LBB5_8:                                @ %for.cond9.preheader
	orr	r2, lr, #32
	sub	r3, r2, #97
	mov	r2, #0
	cmp	r3, #26
	bhs	.LBB5_11
	b	.LBB5_9
.section bb5_9
.LBB5_9:                                @ %for.body18
                                        @ =>This Inner Loop Header: Depth=1
	strb	lr, [r0, r2]
	add	r3, r2, #1
	ldr	r12, [r1]
	cmp	r3, #5
	bgt	.LBB5_12
	b	.LBB5_10
.section bb5_10
.LBB5_10:                               @ %for.body18
                                        @   in Loop: Header=BB5_9 Depth=1
	add	r2, r12, r2
	ldrb	lr, [r2, #1]
	orr	r2, lr, #32
	sub	r2, r2, #97
	cmp	r2, #26
	mov	r2, r3
	blo	.LBB5_9
	b	.LBB5_12
.section bb5_11
.LBB5_11:
	mov	r3, #0
	b	.LBB5_12
.section bb5_12
.LBB5_12:                               @ %if.end
	add	r2, r12, r3
	str	r2, [r1]
	mov	r1, #0
	strb	r1, [r0, r3]
	pop	{r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	getname, .Ltmp5-getname
	.cantunwind
	.fnend

	.align	2
	.type	getoff,%function
.section bb6_0
getoff:                                 @ @getoff
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB6_1
.section bb6_1
.LBB6_1:                                @ %entry
	ldr	r3, [r0]
	mov	r12, #0
	ldrb	r1, [r3]
	cmp	r1, #43
	bne	.LBB6_3
	b	.LBB6_2
.section bb6_2
.LBB6_2:                                @ %if.then5
	add	r3, r3, #1
	str	r3, [r0]
	b	.LBB6_4
.section bb6_3
.LBB6_3:                                @ %entry
	cmp	r1, #45
	addeq	r3, r3, #1
	moveq	r12, #1
	streq	r3, [r0]
	b	.LBB6_4
.section bb6_4
.LBB6_4:                                @ %if.end7
	ldrb	r1, [r3]
	sub	r6, r1, #48
	cmp	r6, #9
	bhi	.LBB6_8
	b	.LBB6_5
.section bb6_5
.LBB6_5:                                @ %for.body.i.preheader
	add	r2, r3, #1
	mov	r3, #0
	b	.LBB6_6
.section bb6_6
.LBB6_6:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r3, r3, lsl #2
	str	r2, [r0]
	add	r3, r6, r1, lsl #1
	ldrb	r1, [r2], #1
	sub	r6, r1, #48
	cmp	r6, #10
	blo	.LBB6_6
	b	.LBB6_7
.section bb6_7
.LBB6_7:                                @ %getint.exit.loopexit
	mov	r4, #3600
	mul	lr, r3, r4
	sub	r3, r2, #1
	b	.LBB6_9
.section bb6_8
.LBB6_8:
	mov	lr, #0
	b	.LBB6_9
.section bb6_9
.LBB6_9:                                @ %getint.exit
	cmp	r1, #58
	bne	.LBB6_20
	b	.LBB6_10
.section bb6_10
.LBB6_10:                               @ %if.then11
	add	r4, r3, #1
	mov	r1, #0
	str	r4, [r0]
	ldrb	r5, [r3, #1]
	sub	r6, r5, #48
	cmp	r6, #9
	bhi	.LBB6_14
	b	.LBB6_11
.section bb6_11
.LBB6_11:                               @ %for.body.i60
                                        @ =>This Inner Loop Header: Depth=1
	add	r2, r3, #2
	add	r1, r1, r1, lsl #2
	str	r2, [r0]
	add	r1, r6, r1, lsl #1
	b	.LBB6_12
.section bb6_12
.LBB6_12:                               @ %for.body.i60
                                        @   in Loop: Header=BB6_11 Depth=1
	ldrb	r5, [r3, #2]
	mov	r3, r4
	mov	r4, r2
	sub	r6, r5, #48
	cmp	r6, #10
	blo	.LBB6_11
	b	.LBB6_13
.section bb6_13
.LBB6_13:                               @ %getint.exit62.loopexit
	rsb	r1, r1, r1, lsl #4
	lsl	r1, r1, #2
	b	.LBB6_15
.section bb6_14
.LBB6_14:
	mov	r2, r4
	b	.LBB6_15
.section bb6_15
.LBB6_15:                               @ %getint.exit62
	add	lr, r1, lr
	cmp	r5, #58
	bne	.LBB6_20
	b	.LBB6_16
.section bb6_16
.LBB6_16:                               @ %if.then18
	add	r3, r2, #1
	str	r3, [r0]
	ldrb	r1, [r2, #1]
	sub	r4, r1, #48
	mov	r1, #0
	cmp	r4, #9
	bhi	.LBB6_19
	b	.LBB6_17
.section bb6_17
.LBB6_17:                               @ %for.body.i46
                                        @ =>This Inner Loop Header: Depth=1
	add	r5, r2, #2
	add	r1, r1, r1, lsl #2
	str	r5, [r0]
	add	r1, r4, r1, lsl #1
	b	.LBB6_18
.section bb6_18
.LBB6_18:                               @ %for.body.i46
                                        @   in Loop: Header=BB6_17 Depth=1
	ldrb	r2, [r2, #2]
	sub	r4, r2, #48
	mov	r2, r3
	mov	r3, r5
	cmp	r4, #10
	blo	.LBB6_17
	b	.LBB6_19
.section bb6_19
.LBB6_19:                               @ %getint.exit48
	add	lr, r1, lr
	b	.LBB6_20
.section bb6_20
.LBB6_20:                               @ %if.end23
	cmp	r12, #0
	rsbne	lr, lr, #0
	mov	r0, lr
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp6:
	.size	getoff, .Ltmp6-getoff
	.cantunwind
	.fnend

	.align	2
	.type	getrule,%function
.section bb7_0
getrule:                                @ @getrule
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB7_1
.section bb7_1
.LBB7_1:                                @ %entry
	b	.LBB7_2
.section bb7_2
.LBB7_2:                                @ %entry
	mov	r7, r1
	ldr	r1, [r0]
	ldrb	r2, [r1]
	str	r2, [r7]
	cmp	r2, #77
	bne	.LBB7_7
	b	.LBB7_3
.section bb7_3
.LBB7_3:                                @ %if.else7
	add	r3, r1, #1
	str	r3, [r0]
	ldrb	r2, [r1, #1]
	sub	r5, r2, #48
	mov	r2, #0
	cmp	r5, #9
	bhi	.LBB7_9
	b	.LBB7_4
.section bb7_4
.LBB7_4:
	mov	r6, #0
	b	.LBB7_5
.section bb7_5
.LBB7_5:                                @ %for.body.i58
                                        @ =>This Inner Loop Header: Depth=1
	add	r4, r1, #2
	add	r6, r6, r6, lsl #2
	str	r4, [r0]
	add	r6, r5, r6, lsl #1
	b	.LBB7_6
.section bb7_6
.LBB7_6:                                @ %for.body.i58
                                        @   in Loop: Header=BB7_5 Depth=1
	ldrb	r1, [r1, #2]
	sub	r5, r1, #48
	mov	r1, r3
	mov	r3, r4
	cmp	r5, #10
	blo	.LBB7_5
	b	.LBB7_10
.section bb7_7
.LBB7_7:                                @ %entry
	cmp	r2, #74
	bne	.LBB7_13
	b	.LBB7_8
.section bb7_8
.LBB7_8:                                @ %if.then4
	add	r1, r1, #1
	str	r1, [r0]
	b	.LBB7_14
.section bb7_9
.LBB7_9:
	mov	r4, r3
	mov	r6, #0
	b	.LBB7_10
.section bb7_10
.LBB7_10:                               @ %getint.exit60
	add	r1, r4, #1
	str	r6, [r7, #4]
	str	r1, [r0]
	ldrb	r3, [r4, #1]
	sub	r5, r3, #48
	cmp	r5, #9
	bhi	.LBB7_19
	b	.LBB7_11
.section bb7_11
.LBB7_11:                               @ %for.body.i86
                                        @ =>This Inner Loop Header: Depth=1
	add	r3, r4, #2
	add	r2, r2, r2, lsl #2
	str	r3, [r0]
	add	r2, r5, r2, lsl #1
	b	.LBB7_12
.section bb7_12
.LBB7_12:                               @ %for.body.i86
                                        @   in Loop: Header=BB7_11 Depth=1
	ldrb	r6, [r4, #2]
	mov	r4, r1
	mov	r1, r3
	sub	r5, r6, #48
	cmp	r5, #10
	blo	.LBB7_11
	b	.LBB7_20
.section bb7_13
.LBB7_13:                               @ %if.else
	mov	r2, #0
	str	r2, [r7]
	b	.LBB7_14
.section bb7_14
.LBB7_14:                               @ %if.end
	ldrb	r2, [r1]
	sub	r3, r2, #48
	mov	r2, #0
	cmp	r3, #9
	bhi	.LBB7_18
	b	.LBB7_15
.section bb7_15
.LBB7_15:                               @ %for.body.i.preheader
	add	r1, r1, #1
	mov	r2, #0
	b	.LBB7_16
.section bb7_16
.LBB7_16:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r2, r2, r2, lsl #2
	str	r1, [r0]
	add	r2, r3, r2, lsl #1
	ldrb	r3, [r1], #1
	sub	r3, r3, #48
	cmp	r3, #10
	blo	.LBB7_16
	b	.LBB7_17
.section bb7_17
.LBB7_17:                               @ %getint.exit.loopexit
	sub	r1, r1, #1
	b	.LBB7_18
.section bb7_18
.LBB7_18:                               @ %getint.exit
	str	r2, [r7, #4]
	b	.LBB7_26
.section bb7_19
.LBB7_19:
	mov	r3, r1
	b	.LBB7_20
.section bb7_20
.LBB7_20:                               @ %getint.exit88
	add	r4, r3, #1
	str	r2, [r7, #8]
	mov	r2, #0
	str	r4, [r0]
	b	.LBB7_21
.section bb7_21
.LBB7_21:                               @ %getint.exit88
	ldrb	r1, [r3, #1]
	sub	r5, r1, #48
	cmp	r5, #9
	bhi	.LBB7_24
	b	.LBB7_22
.section bb7_22
.LBB7_22:                               @ %for.body.i72
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r3, #2
	add	r2, r2, r2, lsl #2
	str	r1, [r0]
	add	r2, r5, r2, lsl #1
	b	.LBB7_23
.section bb7_23
.LBB7_23:                               @ %for.body.i72
                                        @   in Loop: Header=BB7_22 Depth=1
	ldrb	r3, [r3, #2]
	sub	r5, r3, #48
	mov	r3, r4
	mov	r4, r1
	cmp	r5, #10
	blo	.LBB7_22
	b	.LBB7_25
.section bb7_24
.LBB7_24:
	mov	r1, r4
	b	.LBB7_25
.section bb7_25
.LBB7_25:                               @ %getint.exit74
	str	r2, [r7, #12]
	b	.LBB7_26
.section bb7_26
.LBB7_26:                               @ %if.end17
	ldrb	r2, [r1]
	cmp	r2, #47
	bne	.LBB7_28
	b	.LBB7_27
.section bb7_27
.LBB7_27:                               @ %if.then21
	add	r1, r1, #1
	str	r1, [r0]
	bl	getoff
	b	.LBB7_29
.section bb7_28
.LBB7_28:
	mov	r0, #3104
	orr	r0, r0, #4096
	b	.LBB7_29
.section bb7_29
.LBB7_29:                               @ %if.end27
	str	r0, [r7, #16]
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp7:
	.size	getrule, .Ltmp7-getrule
	.cantunwind
	.fnend

	.type	__timezone,%object      @ @__timezone
	.bss
	.globl	__timezone
	.align	2
__timezone:
	.long	0                       @ 0x0
	.size	__timezone, 4

	.type	__daylight,%object      @ @__daylight
	.globl	__daylight
	.align	2
__daylight:
	.long	0                       @ 0x0
	.size	__daylight, 4

	.type	__tzname,%object        @ @__tzname
	.globl	__tzname
	.align	2
__tzname:
	.zero	8
	.size	__tzname, 8

	.type	__gmt,%object           @ @__gmt
	.section	.rodata,"a",%progbits
	.globl	__gmt
__gmt:
	.asciz	"GMT"
	.size	__gmt, 4

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	do_tzset.search,%object @ @do_tzset.search
	.section	.rodata,"a",%progbits
do_tzset.search:
	.asciz	"/usr/share/zoneinfo/\000/share/zoneinfo/\000/etc/zoneinfo/\000"
	.size	do_tzset.search, 54

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.asciz	"TZ"
	.size	.L.str1, 3

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"/etc/localtime"
	.size	.L.str2, 15

	.hidden	__libc
	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"TZif"
	.size	.L.str3, 5

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.section	.data.rel.local,"aw",%progbits
	.align	2
_MergedGlobals:
	.long	_MergedGlobals1+96
	.long	32                      @ 0x20
	.size	_MergedGlobals, 8

	.type	_MergedGlobals1,%object @ @_MergedGlobals1
	.local	_MergedGlobals1
	.comm	_MergedGlobals1,128,16
	.hidden	__lock
	.hidden	__unlock

	.weak	timezone
timezone = __timezone
	.weak	daylight
daylight = __daylight
	.weak	tzname
tzname = __tzname
	.weak	tzset
tzset = __tzset
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
