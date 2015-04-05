.section strptime_text
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
	.file	"src/time/strptime.bc"
	.globl	strptime
	.align	2
	.type	strptime,%function
.section bb0_0
strptime:                               @ @strptime
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
	mov	r5, r0
	mov	r0, #0
	str	r2, [sp, #32]           @ 4-byte Spill
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	str	r1, [sp, #48]
	str	r0, [sp, #40]
	mov	r0, #0
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	add	r0, r2, #20
	str	r0, [sp, #12]           @ 4-byte Spill
	add	r0, r2, #4
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	add	r0, r2, #28
	str	r0, [sp, #8]            @ 4-byte Spill
	add	r0, r2, #8
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	add	r0, r2, #12
	str	r0, [sp, #16]           @ 4-byte Spill
	add	r0, r2, #16
	str	r0, [sp, #24]           @ 4-byte Spill
	add	r0, r2, #24
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_9
.section bb0_8
.LBB0_8:                                @ %while.cond.backedge
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, [sp, #48]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %while.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_35 Depth 2
                                        @     Child Loop BB0_40 Depth 2
                                        @     Child Loop BB0_66 Depth 2
                                        @     Child Loop BB0_81 Depth 2
                                        @     Child Loop BB0_25 Depth 2
	ldrb	r3, [r1]
	cmp	r3, #37
	bne	.LBB0_30
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end19
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r0, r1, #1
	str	r0, [sp, #48]
	ldrb	r2, [r1, #1]
	cmp	r2, #43
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end19
                                        @   in Loop: Header=BB0_9 Depth=1
	addeq	r0, r1, #2
	streq	r0, [sp, #48]
	ldrbeq	r2, [r1, #2]
	mvn	r1, #0
	sub	r2, r2, #48
	cmp	r2, #9
	bhi	.LBB0_13
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then30
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r1, sp, #48
	mov	r2, #10
	bl	strtoul
	mov	r1, r0
	ldr	r0, [sp, #48]
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r2, r0, #1
	mov	r12, #0
	mov	r9, #7
	mov	r4, #131072
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	str	r2, [sp, #48]
	ldrb	r2, [r0]
	mov	r0, #0
	cmp	r2, #96
	bgt	.LBB0_18
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r2, #64
	bgt	.LBB0_21
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r2, #37
	bne	.LBB0_93
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %sw.bb131
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrb	r1, [r5], #1
	mov	r0, #0
	cmp	r1, #37
	beq	.LBB0_8
	b	.LBB0_93
.section bb0_18
.LBB0_18:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r1, r2, #97
	cmp	r1, #24
	bhi	.LBB0_93
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	adr	r2, .LJTI0_0_0
	ldr	r11, [sp, #36]          @ 4-byte Reload
	lsl	r1, r1, #2
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_24
	.long	.LBB0_23
	.long	.LBB0_42
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_23
	.long	.LBB0_93
	.long	.LBB0_43
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_44
	.long	.LBB0_38
	.long	.LBB0_93
	.long	.LBB0_45
	.long	.LBB0_93
	.long	.LBB0_53
	.long	.LBB0_93
	.long	.LBB0_38
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_54
	.long	.LBB0_55
	.long	.LBB0_56
.section bb0_20
.LBB0_20:                               @ %sw.bb48
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #16]           @ 4-byte Reload
	mov	lr, #31
	mov	r8, #1
	b	.LBB0_64
.section bb0_21
.LBB0_21:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r2, r2, #65
	cmp	r2, #24
	bhi	.LBB0_93
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end33
                                        @   in Loop: Header=BB0_9 Depth=1
	adr	r3, .LJTI0_1_1
	ldr	r11, [sp, #36]          @ 4-byte Reload
	lsl	r2, r2, #2
	mov	lr, #54
	mov	r8, #0
	add	r6, sp, #44
	ldr	pc, [r2, r3]
.LJTI0_1_1:
	.long	.LBB0_24
	.long	.LBB0_23
	.long	.LBB0_57
	.long	.LBB0_58
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_59
	.long	.LBB0_60
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_61
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_93
	.long	.LBB0_62
	.long	.LBB0_63
	.long	.LBB0_71
	.long	.LBB0_64
	.long	.LBB0_93
	.long	.LBB0_64
	.long	.LBB0_72
	.long	.LBB0_75
.section bb0_23
.LBB0_23:                               @ %sw.bb36
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r11, [sp, #24]          @ 4-byte Reload
	mov	r4, #14
	mov	r9, #12
	orr	r4, r4, #131072
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %symbolic_range
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r4, r4, #1
	lsl	r1, r9, #1
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %for.cond212
                                        @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	cmp	r1, #1
	blt	.LBB0_93
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.body215
                                        @   in Loop: Header=BB0_25 Depth=2
	add	r0, r4, r1
	sub	r7, r1, #1
	bl	nl_langinfo
	mov	r10, r0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.body215
                                        @   in Loop: Header=BB0_25 Depth=2
                                        @ kill: R0<def> R10<kill>
	bl	strlen
	mov	r8, r0
	mov	r0, r5
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %for.body215
                                        @   in Loop: Header=BB0_25 Depth=2
	mov	r1, r10
	mov	r2, r8
	bl	strncasecmp
	mov	r1, r7
	cmp	r0, #0
	bne	.LBB0_25
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %for.end225
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, r7
	mov	r1, r9
	bl	__modsi3
	str	r0, [r11]
	add	r5, r5, r8
	b	.LBB0_8
.section bb0_30
.LBB0_30:                               @ %while.cond
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r3, #0
	beq	.LBB0_87
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.then
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrb	r2, [r5]
	cmp	r3, #32
	subne	r0, r3, #9
	cmpne	r0, #4
	bls	.LBB0_35
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.else
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #0
	cmp	r2, r3
	bne	.LBB0_93
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.else15
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r5, r5, #1
	b	.LBB0_37
.section bb0_34
.LBB0_34:                               @ %for.inc
                                        @   in Loop: Header=BB0_35 Depth=2
	ldrb	r2, [r5, #1]!
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %for.cond.preheader
                                        @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r2, #0
	beq	.LBB0_37
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %land.rhs
                                        @   in Loop: Header=BB0_35 Depth=2
	and	r0, r2, #255
	cmp	r0, #32
	subne	r0, r0, #9
	cmpne	r0, #4
	bls	.LBB0_34
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end17
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r0, r1, #1
	str	r0, [sp, #48]
	b	.LBB0_8
.section bb0_38
.LBB0_38:                               @ %for.cond62.preheader
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrb	r0, [r5]
	b	.LBB0_40
.section bb0_39
.LBB0_39:                               @ %for.inc71
                                        @   in Loop: Header=BB0_40 Depth=2
	ldrb	r0, [r5, #1]!
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %for.cond62.preheader
                                        @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %land.rhs65
                                        @   in Loop: Header=BB0_40 Depth=2
	and	r0, r0, #255
	cmp	r0, #32
	subne	r0, r0, #9
	cmpne	r0, #4
	bls	.LBB0_39
	b	.LBB0_8
.section bb0_42
.LBB0_42:                               @ %sw.bb37
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #40
	b	.LBB0_73
.section bb0_43
.LBB0_43:                               @ %sw.bb57
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #8]            @ 4-byte Reload
	mov	lr, #110
	mov	r8, #1
	orr	lr, lr, #256
	b	.LBB0_64
.section bb0_44
.LBB0_44:                               @ %sw.bb58
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #24]           @ 4-byte Reload
	mov	lr, #12
	mov	r12, #1
	mov	r8, #1
	b	.LBB0_64
.section bb0_45
.LBB0_45:                               @ %sw.bb74
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #38
	orr	r0, r0, #131072
	bl	nl_langinfo
	mov	r7, r0
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %sw.bb74
                                        @   in Loop: Header=BB0_9 Depth=1
                                        @ kill: R0<def> R7<kill>
	bl	strlen
	mov	r2, r0
	mov	r0, r5
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %sw.bb74
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r1, r7
	bl	strncasecmp
	cmp	r0, #0
	beq	.LBB0_85
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %if.end81
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #39
	orr	r0, r0, #131072
	bl	nl_langinfo
	mov	r7, r0
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.end81
                                        @   in Loop: Header=BB0_9 Depth=1
                                        @ kill: R0<def> R7<kill>
	bl	strlen
	mov	r2, r0
	mov	r0, r5
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.end81
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r1, r7
	bl	strncasecmp
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	bne	.LBB0_93
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.then86
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r7, [sp, #20]           @ 4-byte Reload
	ldr	r0, [r7]
	ldr	r1, .LCPI0_7
	smull	r2, r3, r0, r1
	b	.LBB0_52
.LCPI0_7:
	.long	715827883               @ 0x2aaaaaab
.section bb0_52
.LBB0_52:                               @ %if.then86
                                        @   in Loop: Header=BB0_9 Depth=1
	asr	r1, r3, #1
	add	r1, r1, r3, lsr #31
	add	r1, r1, r1, lsl #1
	sub	r0, r0, r1, lsl #2
	add	r0, r0, #12
	str	r0, [r7]
	b	.LBB0_8
.section bb0_53
.LBB0_53:                               @ %sw.bb91
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #43
	b	.LBB0_73
.section bb0_54
.LBB0_54:                               @ %sw.bb109
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #36]           @ 4-byte Reload
	mov	lr, #7
	mov	r8, #0
	b	.LBB0_64
.section bb0_55
.LBB0_55:                               @ %sw.bb111
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #41
	b	.LBB0_73
.section bb0_56
.LBB0_56:                               @ %sw.bb123
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r3, [sp, #12]           @ 4-byte Reload
	mov	r2, #0
	mov	r1, #2
	orr	r0, r0, #1
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB0_76
.section bb0_57
.LBB0_57:                               @ %sw.bb43
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	cmp	r1, #0
	mov	r2, #0
	add	r3, sp, #40
	movlt	r1, #2
	orr	r0, r0, #2
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB0_76
.section bb0_58
.LBB0_58:                               @ %sw.bb49
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, .LCPI0_9
	mov	r0, r5
	b	.LBB0_74
.LCPI0_9:
	.long	.L.str
.section bb0_59
.LBB0_59:                               @ %sw.bb54
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #20]           @ 4-byte Reload
	mov	lr, #24
	mov	r8, #0
	b	.LBB0_64
.section bb0_60
.LBB0_60:                               @ %sw.bb55
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #20]           @ 4-byte Reload
	mov	lr, #12
	mov	r8, #1
	b	.LBB0_64
.section bb0_61
.LBB0_61:                               @ %sw.bb60
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #4]            @ 4-byte Reload
	mov	lr, #60
	mov	r8, #0
	b	.LBB0_64
.section bb0_62
.LBB0_62:                               @ %sw.bb97
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, .LCPI0_6
	mov	r0, r5
	b	.LBB0_74
.LCPI0_6:
	.long	.L.str1
.section bb0_63
.LBB0_63:                               @ %sw.bb102
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r6, [sp, #32]           @ 4-byte Reload
	mov	lr, #61
	mov	r8, #0
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %numeric_range
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrb	r0, [r5]
	sub	r1, r0, #48
	mov	r0, #0
	cmp	r1, #9
	bhi	.LBB0_93
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %if.end143
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #0
	add	r4, lr, r8
	mov	r2, #1
	mov	r1, #0
	str	r0, [r6]
	cmp	r4, #1
	blt	.LBB0_69
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %land.end153
                                        @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r3, [r5]
	sub	r7, r3, #48
	cmp	r7, #9
	bhi	.LBB0_69
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %for.body154
                                        @   in Loop: Header=BB0_66 Depth=2
	add	r1, r1, r1, lsl #2
	add	r2, r2, r2, lsl #2
	add	r5, r5, #1
	add	r1, r3, r1, lsl #1
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %for.body154
                                        @   in Loop: Header=BB0_66 Depth=2
	lsl	r2, r2, #1
	sub	r1, r1, #48
	cmp	r2, r4
	str	r1, [r6]
	ble	.LBB0_66
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %for.end161
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r2, r1, r8
	cmp	r2, lr
	bhs	.LBB0_93
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.end166
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r0, r1, r12
	str	r0, [r6]
	b	.LBB0_8
.section bb0_71
.LBB0_71:                               @ %sw.bb103
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, .LCPI0_5
	mov	r0, r5
	b	.LBB0_74
.LCPI0_5:
	.long	.L.str2
.section bb0_72
.LBB0_72:                               @ %sw.bb117
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #42
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %sw.bb37
                                        @   in Loop: Header=BB0_9 Depth=1
	orr	r0, r0, #131072
	bl	nl_langinfo
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %sw.bb49
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r2, [sp, #32]           @ 4-byte Reload
	bl	strptime
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	bne	.LBB0_8
	b	.LBB0_93
.section bb0_75
.LBB0_75:                               @ %sw.bb125
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r3, [sp, #12]           @ 4-byte Reload
	cmp	r1, #0
	mov	r2, #876
	mov	r0, #0
	movlt	r1, #4
	str	r0, [sp, #28]           @ 4-byte Spill
	orr	r2, r2, #1024
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %numeric_digits
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrb	r0, [r5]
	cmp	r0, #45
	bne	.LBB0_78
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %if.then178
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r5, r5, #1
	mov	r7, #1
	b	.LBB0_79
.section bb0_78
.LBB0_78:                               @ %numeric_digits
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r0, #43
	mov	r7, #0
	addeq	r5, r5, #1
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.end181
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrb	r0, [r5]
	sub	r6, r0, #48
	mov	r0, #0
	cmp	r6, #9
	bhi	.LBB0_93
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.end187
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, #0
	mov	r6, #0
	cmp	r1, #1
	str	r0, [r3]
	blt	.LBB0_84
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %land.rhs191
                                        @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r4, [r5, r6]
	sub	r4, r4, #48
	cmp	r4, #9
	bhi	.LBB0_83
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %for.body197
                                        @   in Loop: Header=BB0_81 Depth=2
	add	r0, r0, r0, lsl #2
	add	r6, r6, #1
	add	r0, r4, r0, lsl #1
	cmp	r6, r1
	str	r0, [r3]
	blt	.LBB0_81
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %land.rhs191.for.end204.loopexit_crit_edge
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r5, r5, r6
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %for.end204
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r7, #0
	rsbne	r0, r0, #0
	strne	r0, [r3]
	sub	r0, r0, r2
	str	r0, [r3]
	b	.LBB0_8
.section bb0_85
.LBB0_85:                               @ %if.then79
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r7, [sp, #20]           @ 4-byte Reload
	ldr	r0, [r7]
	ldr	r1, .LCPI0_8
	smull	r2, r3, r0, r1
	b	.LBB0_86
.LCPI0_8:
	.long	715827883               @ 0x2aaaaaab
.section bb0_86
.LBB0_86:                               @ %if.then79
                                        @   in Loop: Header=BB0_9 Depth=1
	asr	r1, r3, #1
	add	r1, r1, r3, lsr #31
	add	r1, r1, r1, lsl #1
	sub	r0, r0, r1, lsl #2
	str	r0, [r7]
	b	.LBB0_8
.section bb0_87
.LBB0_87:                               @ %while.end
	ldr	r0, [sp, #28]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_92
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %if.then232
	tst	r0, #2
	beq	.LBB0_91
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %if.then234
	ldr	r7, [sp, #12]           @ 4-byte Reload
	ldr	r2, [sp, #40]
	mov	r1, #100
	ldr	r0, [r7]
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %if.then234
	mla	r3, r2, r1, r0
	ldr	r0, .LCPI0_10
	add	r0, r3, r0
	str	r0, [r7]
	b	.LBB0_92
.LCPI0_10:
	.long	4294965396              @ 0xfffff894
.section bb0_91
.LBB0_91:                               @ %if.else239
	ldr	r1, [sp, #12]           @ 4-byte Reload
	ldr	r0, [r1]
	cmp	r0, #68
	addle	r0, r0, #100
	strle	r0, [r1]
	b	.LBB0_92
.section bb0_92
.LBB0_92:                               @ %return
	mov	r0, r5
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %return
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strptime, .Ltmp0-strptime
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%m/%d/%y"
	.size	.L.str, 9

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"%H:%M"
	.size	.L.str1, 6

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"%H:%M:%S"
	.size	.L.str2, 9


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
