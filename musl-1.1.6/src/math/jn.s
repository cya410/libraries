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
	.file	"src/math/jn.bc"
	.globl	jn
	.align	2
	.type	jn,%function
jn:                                     @ @jn
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#44
	sub	sp, sp, #44
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r2
	mov	r1, r3
	mov	r4, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r5, #267386880
	rsb	r0, r6, #0
	bic	r7, r1, #-2147483648
	orr	r5, r5, #1879048192
	b	.LBB0_5
.LBB0_5:                                @ %entry
	orr	r0, r6, r0
	orr	r0, r7, r0, lsr #31
	cmp	r0, r5
	bhi	.LBB0_138
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	cmp	r4, #0
	beq	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.end11
	lsr	r8, r1, #31
	blt	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %if.else
	sub	r10, r4, #1
	b	.LBB0_11
.LBB0_9:                                @ %if.then10
	mov	r0, r6
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	j0
.LBB0_10:                               @ %if.then14
	eor	r8, r8, #1
	mvn	r10, r4
	eor	r1, r1, #-2147483648
	b	.LBB0_11
.LBB0_11:                               @ %if.end18
	cmp	r10, #0
	beq	.LBB0_24
	b	.LBB0_12
.LBB0_12:                               @ %if.end23
	mov	r0, r6
	bl	fabs
	and	r2, r8, r4
	mov	r4, #0
	cmp	r7, r5
	beq	.LBB0_25
	b	.LBB0_13
.LBB0_13:                               @ %if.end23
	str	r2, [sp, #20]           @ 4-byte Spill
	orrs	r2, r7, r6
	mov	r5, #0
	mov	r9, r1
	mov	r6, r0
	beq	.LBB0_136
	b	.LBB0_14
.LBB0_14:                               @ %if.else32
	mov	r0, r10
	bl	__aeabi_i2d
	mov	r8, r0
	mov	r5, r1
	b	.LBB0_15
.LBB0_15:                               @ %if.else32
	mov	r2, r6
	mov	r3, r9
                                        @ kill: R0<def> R8<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_16
.LBB0_16:                               @ %if.else32
	bl	__aeabi_dcmpge
	mov	r4, r0
	mov	r0, r8
	mov	r1, r5
	b	.LBB0_17
.LBB0_17:                               @ %if.else32
	mov	r2, r6
	mov	r3, r9
	bl	__aeabi_dcmpun
	orrs	r0, r0, r4
	bne	.LBB0_26
	b	.LBB0_18
.LBB0_18:                               @ %if.then36
	mov	r0, #47185920
	orr	r0, r0, #1342177280
	cmp	r7, r0
	blo	.LBB0_32
	b	.LBB0_19
.LBB0_19:                               @ %if.then39
	and	r0, r10, #3
	cmp	r0, #2
	beq	.LBB0_103
	b	.LBB0_20
.LBB0_20:                               @ %if.then39
	cmp	r0, #1
	bne	.LBB0_106
	b	.LBB0_21
.LBB0_21:                               @ %sw.bb45
	mov	r0, r6
	mov	r1, r9
	bl	cos
	mov	r4, r0
	b	.LBB0_22
.LBB0_22:                               @ %sw.bb45
	mov	r5, r1
	mov	r0, r6
	mov	r1, r9
	bl	sin
	b	.LBB0_23
.LBB0_23:                               @ %sw.bb45
	mov	r2, r0
	mov	r3, r1
	eor	r1, r5, #-2147483648
	mov	r0, r4
	bl	__aeabi_dsub
	b	.LBB0_132
.LBB0_24:                               @ %if.then21
	mov	r0, r6
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	j1
.LBB0_25:
	str	r2, [sp, #20]           @ 4-byte Spill
	mov	r5, #0
	b	.LBB0_136
.LBB0_26:                               @ %if.else70
	ldr	r0, .LCPI0_6
	cmp	r7, r0
	bhi	.LBB0_42
	b	.LBB0_27
.LCPI0_6:
	.long	1041235967              @ 0x3e0fffff
.LBB0_27:                               @ %if.then73
	mov	r0, r6
	mov	r4, #0
	mov	r5, #0
	mov	r1, r9
	mov	r6, r10
	cmp	r10, #32
	bgt	.LBB0_136
	b	.LBB0_28
.LBB0_28:                               @ %if.else77
	mov	r3, #266338304
	mov	r2, #0
	mov	r4, #0
	orr	r3, r3, #805306368
	b	.LBB0_29
.LBB0_29:                               @ %if.else77
	bl	__aeabi_dmul
	mov	r10, #267386880
	mov	r8, r0
	add	r0, r6, #1
	b	.LBB0_30
.LBB0_30:                               @ %if.else77
	mov	r9, r1
	mov	r11, r6
	orr	r10, r10, #805306368
	cmp	r0, #2
	bge	.LBB0_109
	b	.LBB0_31
.LBB0_31:
	mov	r7, r8
	mov	r5, r9
	mov	r6, #0
	b	.LBB0_114
.LBB0_32:                               @ %if.else59
	mov	r0, r6
	mov	r1, r9
	bl	j0
	mov	r8, r0
	b	.LBB0_33
.LBB0_33:                               @ %if.else59
	mov	r7, r1
	mov	r0, r6
	mov	r1, r9
	bl	j1
	b	.LBB0_34
.LBB0_34:                               @ %if.else59
	mov	r4, r0
	mov	r5, r1
	cmp	r10, #1
	blt	.LBB0_136
	b	.LBB0_35
.LBB0_35:
	str	r6, [sp, #40]           @ 4-byte Spill
	mov	r6, #0
	mov	r11, r9
	str	r10, [sp, #36]          @ 4-byte Spill
	b	.LBB0_36
.LBB0_36:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r6, r6, #1
	mov	r9, r5
	mov	r10, r4
	mov	r0, r6
	b	.LBB0_37
.LBB0_37:                               @ %for.body
                                        @   in Loop: Header=BB0_36 Depth=1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	b	.LBB0_38
.LBB0_38:                               @ %for.body
                                        @   in Loop: Header=BB0_36 Depth=1
	ldr	r2, [sp, #40]           @ 4-byte Reload
	mov	r3, r11
	bl	__aeabi_ddiv
	mov	r2, r0
	b	.LBB0_39
.LBB0_39:                               @ %for.body
                                        @   in Loop: Header=BB0_36 Depth=1
	mov	r3, r1
	mov	r0, r10
	mov	r1, r9
	bl	__aeabi_dmul
	b	.LBB0_40
.LBB0_40:                               @ %for.body
                                        @   in Loop: Header=BB0_36 Depth=1
	mov	r2, r8
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r4, r0
	b	.LBB0_41
.LBB0_41:                               @ %for.body
                                        @   in Loop: Header=BB0_36 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	mov	r5, r1
	mov	r8, r10
	mov	r7, r9
	cmp	r0, r6
	bne	.LBB0_36
	b	.LBB0_136
.LBB0_42:                               @ %if.else91
	mov	r3, #267386880
	mov	r0, r8
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_43
.LBB0_43:                               @ %if.else91
	str	r10, [sp, #36]          @ 4-byte Spill
	mov	r11, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_44
.LBB0_44:                               @ %if.else91
	mov	r7, r9
	mov	r9, r0
	mov	r3, r1
	str	r1, [sp, #12]           @ 4-byte Spill
	b	.LBB0_45
.LBB0_45:                               @ %if.else91
	mov	r2, r9
                                        @ kill: R0<def> R9<kill>
	bl	__aeabi_dadd
	mov	r4, r6
	b	.LBB0_46
.LBB0_46:                               @ %if.else91
	mov	r3, r7
	mov	r2, r4
	str	r4, [sp, #40]           @ 4-byte Spill
	bl	__aeabi_ddiv
	b	.LBB0_47
.LBB0_47:                               @ %if.else91
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0
	mov	r1, #1073741824
	b	.LBB0_48
.LBB0_48:                               @ %if.else91
	mov	r2, r4
	mov	r3, r7
	str	r7, [sp, #16]           @ 4-byte Spill
	bl	__aeabi_ddiv
	b	.LBB0_49
.LBB0_49:                               @ %if.else91
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_50
.LBB0_50:                               @ %if.else91
	str	r2, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	bl	__aeabi_dadd
	mov	r8, r1
	b	.LBB0_51
.LBB0_51:                               @ %if.else91
	mov	r2, r0
	mov	r0, r5
	mov	r1, r6
	mov	r3, r8
	b	.LBB0_52
.LBB0_52:                               @ %if.else91
	str	r2, [sp, #32]           @ 4-byte Spill
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB0_53
.LBB0_53:                               @ %if.else91
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_7
	mov	r7, r0
	b	.LBB0_54
.LCPI0_7:
	.long	1104006501              @ 0x41cdcd65
.LBB0_54:                               @ %if.else91
	mov	r10, r1
	mov	r2, #0
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R10<kill>
	b	.LBB0_55
.LBB0_55:                               @ %if.else91
	bl	__aeabi_dcmplt
	mov	r4, #1
	cmp	r0, #0
	beq	.LBB0_66
	b	.LBB0_56
.LBB0_56:
	str	r9, [sp]                @ 4-byte Spill
	ldr	r9, [sp, #32]           @ 4-byte Reload
	mov	r11, r6
	str	r5, [sp, #8]            @ 4-byte Spill
	str	r6, [sp, #4]            @ 4-byte Spill
	b	.LBB0_57
.LBB0_57:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_58
.LBB0_58:                               @ %while.body
                                        @   in Loop: Header=BB0_57 Depth=1
	str	r7, [sp, #32]           @ 4-byte Spill
	bl	__aeabi_dadd
	mov	r9, r0
	mov	r8, r1
	b	.LBB0_59
.LBB0_59:                               @ %while.body
                                        @   in Loop: Header=BB0_57 Depth=1
	mov	r0, r7
	mov	r1, r10
	mov	r6, r10
	mov	r2, r9
	b	.LBB0_60
.LBB0_60:                               @ %while.body
                                        @   in Loop: Header=BB0_57 Depth=1
	mov	r3, r8
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r11
	b	.LBB0_61
.LBB0_61:                               @ %while.body
                                        @   in Loop: Header=BB0_57 Depth=1
	bl	__aeabi_dsub
	ldr	r3, .LCPI0_8
	mov	r7, r0
	mov	r10, r1
	b	.LBB0_62
.LCPI0_8:
	.long	1104006501              @ 0x41cdcd65
.LBB0_62:                               @ %while.body
                                        @   in Loop: Header=BB0_57 Depth=1
	mov	r2, #0
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R10<kill>
	bl	__aeabi_dcmplt
	b	.LBB0_63
.LBB0_63:                               @ %while.body
                                        @   in Loop: Header=BB0_57 Depth=1
	ldr	r5, [sp, #32]           @ 4-byte Reload
	add	r4, r4, #1
	mov	r11, r6
	cmp	r0, #0
	bne	.LBB0_57
	b	.LBB0_64
.LBB0_64:                               @ %for.cond108.preheader
	ldr	r10, [sp, #16]          @ 4-byte Reload
	ldr	r8, [sp, #40]           @ 4-byte Reload
	ldr	r9, [sp]                @ 4-byte Reload
	ldr	r5, [sp, #12]           @ 4-byte Reload
	b	.LBB0_65
.LBB0_65:                               @ %for.cond108.preheader
	sub	r0, r4, #1
	mov	r11, #0
	mov	r6, #0
	cmn	r0, #2
	ble	.LBB0_74
	b	.LBB0_67
.LBB0_66:
	str	r5, [sp, #8]            @ 4-byte Spill
	ldr	r10, [sp, #16]          @ 4-byte Reload
	ldr	r5, [sp, #12]           @ 4-byte Reload
	ldr	r8, [sp, #40]           @ 4-byte Reload
	str	r6, [sp, #4]            @ 4-byte Spill
	mov	r6, #0
	b	.LBB0_67
.LBB0_67:                               @ %for.body111
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_68
.LBB0_68:                               @ %for.body111
                                        @   in Loop: Header=BB0_67 Depth=1
	mov	r0, r9
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_69
.LBB0_69:                               @ %for.body111
                                        @   in Loop: Header=BB0_67 Depth=1
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r10
	b	.LBB0_70
.LBB0_70:                               @ %for.body111
                                        @   in Loop: Header=BB0_67 Depth=1
	bl	__aeabi_ddiv
	mov	r2, r11
	mov	r3, r6
	bl	__aeabi_dsub
	b	.LBB0_71
.LBB0_71:                               @ %for.body111
                                        @   in Loop: Header=BB0_67 Depth=1
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	b	.LBB0_72
.LBB0_72:                               @ %for.body111
                                        @   in Loop: Header=BB0_67 Depth=1
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	mov	r11, r0
	sub	r0, r4, #1
	b	.LBB0_73
.LBB0_73:                               @ %for.body111
                                        @   in Loop: Header=BB0_67 Depth=1
	cmp	r4, #0
	mov	r6, r1
	mov	r4, r0
	bgt	.LBB0_67
	b	.LBB0_74
.LBB0_74:                               @ %for.end119
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	fabs
	bl	log
	b	.LBB0_75
.LBB0_75:                               @ %for.end119
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r5
	b	.LBB0_76
.LBB0_76:                               @ %for.end119
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_9
	ldr	r3, .LCPI0_10
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.LBB0_86
	b	.LBB0_77
.LCPI0_9:
	.long	4277811695              @ 0xfefa39ef
.LCPI0_10:
	.long	1082535490              @ 0x40862e42
.LBB0_77:                               @ %for.cond126.preheader
	ldr	r1, [sp, #36]           @ 4-byte Reload
	mov	r9, #267386880
	mov	r0, r8
	mov	r8, #0
	orr	r9, r9, #805306368
	cmp	r1, #1
	blt	.LBB0_115
	b	.LBB0_78
.LBB0_78:
	str	r11, [sp, #28]          @ 4-byte Spill
	mov	r7, r11
	mov	r11, r10
	ldr	r10, [sp, #36]          @ 4-byte Reload
	mov	r5, r6
	str	r6, [sp, #32]           @ 4-byte Spill
	b	.LBB0_79
.LBB0_79:                               @ %for.body129
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r10
	mov	r6, r9
	mov	r4, r8
	bl	__aeabi_i2d
	b	.LBB0_80
.LBB0_80:                               @ %for.body129
                                        @   in Loop: Header=BB0_79 Depth=1
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_81
.LBB0_81:                               @ %for.body129
                                        @   in Loop: Header=BB0_79 Depth=1
	mov	r3, r1
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_dmul
	b	.LBB0_82
.LBB0_82:                               @ %for.body129
                                        @   in Loop: Header=BB0_79 Depth=1
	ldr	r2, [sp, #40]           @ 4-byte Reload
	mov	r3, r11
	bl	__aeabi_ddiv
	mov	r2, r7
	b	.LBB0_83
.LBB0_83:                               @ %for.body129
                                        @   in Loop: Header=BB0_79 Depth=1
	mov	r3, r5
	bl	__aeabi_dsub
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_84
.LBB0_84:                               @ %for.body129
                                        @   in Loop: Header=BB0_79 Depth=1
	subs	r10, r10, #1
	mov	r7, r4
	mov	r5, r6
	bgt	.LBB0_79
	b	.LBB0_85
.LBB0_85:
	ldr	r7, [sp, #28]           @ 4-byte Reload
	ldr	r10, [sp, #40]          @ 4-byte Reload
	b	.LBB0_117
.LBB0_86:                               @ %for.cond139.preheader
	ldr	r1, [sp, #36]           @ 4-byte Reload
	mov	r5, r8
	mov	r2, #0
	mov	r4, r11
	cmp	r1, #0
	ble	.LBB0_116
	b	.LBB0_87
.LBB0_87:
	ldr	r0, [sp, #36]           @ 4-byte Reload
	mov	r10, r5
	mov	r5, #267386880
	mov	r7, r11
	str	r6, [sp, #32]           @ 4-byte Spill
	orr	r5, r5, #805306368
	str	r10, [sp, #40]          @ 4-byte Spill
	b	.LBB0_88
.LBB0_88:                               @ %for.body142
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r8, r7
	mov	r11, r2
	bl	__aeabi_i2d
	b	.LBB0_89
.LBB0_89:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_90
.LBB0_90:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r3, r1
	mov	r0, r11
	mov	r1, r5
	mov	r7, r8
	b	.LBB0_91
.LBB0_91:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	bl	__aeabi_dmul
	ldr	r3, [sp, #16]           @ 4-byte Reload
	mov	r2, r10
	bl	__aeabi_ddiv
	b	.LBB0_92
.LBB0_92:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r2, r4
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r3, #254803968
	b	.LBB0_93
.LBB0_93:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r8, r0
	mov	r4, r1
	mov	r2, #0
	orr	r3, r3, #1342177280
	b	.LBB0_94
.LBB0_94:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
                                        @ kill: R0<def> R8<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dcmpgt
	ldr	r6, [sp, #32]           @ 4-byte Reload
	b	.LBB0_95
.LBB0_95:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r10, r5
	mov	r5, r0
	mov	r0, r7
	mov	r2, r8
	b	.LBB0_96
.LBB0_96:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r3, r4
	mov	r1, r6
	bl	__aeabi_ddiv
	cmp	r5, #0
	b	.LBB0_97
.LBB0_97:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r9, r4
	mov	r2, r8
	mov	r3, r4
	movne	r7, r0
	b	.LBB0_98
.LBB0_98:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r0, #267386880
	movne	r6, r1
	mov	r1, r10
	orr	r0, r0, #805306368
	b	.LBB0_99
.LBB0_99:                               @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	str	r6, [sp, #32]           @ 4-byte Spill
	movne	r9, r0
	mov	r0, r11
	bl	__aeabi_ddiv
	b	.LBB0_100
.LBB0_100:                              @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	cmp	r5, #0
	mov	r4, r0
	mov	r6, r1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	b	.LBB0_101
.LBB0_101:                              @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r5, r9
	moveq	r6, r10
	ldr	r10, [sp, #40]          @ 4-byte Reload
	movne	r8, #0
	b	.LBB0_102
.LBB0_102:                              @ %for.body142
                                        @   in Loop: Header=BB0_88 Depth=1
	moveq	r4, r11
	mov	r2, r8
	subs	r0, r0, #1
	bgt	.LBB0_88
	b	.LBB0_117
.LBB0_103:                              @ %sw.bb50
	mov	r0, r6
	mov	r1, r9
	bl	cos
	mov	r4, r0
	b	.LBB0_104
.LBB0_104:                              @ %sw.bb50
	mov	r5, r1
	mov	r0, r6
	mov	r1, r9
	bl	sin
	b	.LBB0_105
.LBB0_105:                              @ %sw.bb50
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	b	.LBB0_132
.LBB0_106:                              @ %if.then39
	cmp	r0, #0
	bne	.LBB0_129
	b	.LBB0_107
.LBB0_107:                              @ %sw.bb
	mov	r0, r6
	mov	r1, r9
	bl	cos
	mov	r4, r0
	b	.LBB0_108
.LBB0_108:                              @ %sw.bb
	mov	r5, r1
	mov	r0, r6
	mov	r1, r9
	bl	sin
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	b	.LBB0_132
.LBB0_109:
	mov	r7, r8
	mov	r5, r9
	mov	r6, #0
	b	.LBB0_110
.LBB0_110:                              @ %for.body83
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r8
	mov	r1, r9
	mov	r2, r7
	mov	r3, r5
	b	.LBB0_111
.LBB0_111:                              @ %for.body83
                                        @   in Loop: Header=BB0_110 Depth=1
	bl	__aeabi_dmul
	mov	r7, r0
	add	r0, r4, #2
	mov	r5, r1
	b	.LBB0_112
.LBB0_112:                              @ %for.body83
                                        @   in Loop: Header=BB0_110 Depth=1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_113
.LBB0_113:                              @ %for.body83
                                        @   in Loop: Header=BB0_110 Depth=1
	mov	r1, r10
	bl	__aeabi_dmul
	add	r4, r4, #1
	mov	r6, r0
	mov	r10, r1
	cmp	r11, r4
	bne	.LBB0_110
	b	.LBB0_114
.LBB0_114:                              @ %for.end88
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	mov	r3, r10
	b	.LBB0_135
.LBB0_115:
	mov	r4, r11
	str	r6, [sp, #32]           @ 4-byte Spill
	mov	r10, r0
	mov	r7, r11
	b	.LBB0_117
.LBB0_116:
	mov	r9, #267386880
	str	r6, [sp, #32]           @ 4-byte Spill
	mov	r8, #0
	mov	r10, r5
	mov	r7, r11
	orr	r9, r9, #805306368
	b	.LBB0_117
.LBB0_117:                              @ %if.end157
	ldr	r5, [sp, #16]           @ 4-byte Reload
	mov	r0, r10
	str	r7, [sp, #28]           @ 4-byte Spill
	mov	r1, r5
	b	.LBB0_118
.LBB0_118:                              @ %if.end157
	bl	j0
	mov	r7, r0
	mov	r11, r1
	mov	r0, r10
	b	.LBB0_119
.LBB0_119:                              @ %if.end157
	mov	r1, r5
	str	r7, [sp, #8]            @ 4-byte Spill
	str	r11, [sp, #12]          @ 4-byte Spill
	bl	j1
	b	.LBB0_120
.LBB0_120:                              @ %if.end157
	mov	r2, r0
	mov	r5, r1
	mov	r0, r7
	mov	r1, r11
	b	.LBB0_121
.LBB0_121:                              @ %if.end157
	str	r2, [sp, #24]           @ 4-byte Spill
	str	r5, [sp, #36]           @ 4-byte Spill
	mov	r7, r2
	bl	fabs
	b	.LBB0_122
.LBB0_122:                              @ %if.end157
	mov	r10, r0
	mov	r11, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_123
.LBB0_123:                              @ %if.end157
	bl	fabs
	mov	r7, r0
	mov	r5, r1
	mov	r0, r10
	b	.LBB0_124
.LBB0_124:                              @ %if.end157
	mov	r1, r11
	mov	r2, r7
	mov	r3, r5
	bl	__aeabi_dcmplt
	b	.LBB0_125
.LBB0_125:                              @ %if.end157
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r10
	mov	r1, r11
	mov	r2, r7
	b	.LBB0_126
.LBB0_126:                              @ %if.end157
	mov	r3, r5
	bl	__aeabi_dcmpun
	ldr	r1, [sp, #40]           @ 4-byte Reload
	orrs	r0, r0, r1
	beq	.LBB0_128
	b	.LBB0_127
.LBB0_127:                              @ %if.else167
	add	r3, sp, #28
	ldr	r2, [sp, #24]           @ 4-byte Reload
	ldm	r3, {r0, r1, r3}
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r6
	b	.LBB0_135
.LBB0_128:                              @ %if.then164
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r3, [sp, #12]           @ 4-byte Reload
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r3, r9
	b	.LBB0_135
.LBB0_129:                              @ %sw.bb54
	mov	r0, r6
	mov	r1, r9
	bl	cos
	mov	r4, r0
	b	.LBB0_130
.LBB0_130:                              @ %sw.bb54
	mov	r5, r1
	mov	r0, r6
	mov	r1, r9
	bl	sin
	b	.LBB0_131
.LBB0_131:                              @ %sw.bb54
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	b	.LBB0_132
.LBB0_132:                              @ %sw.epilog
	ldr	r2, .LCPI0_11
	ldr	r3, .LCPI0_12
	bl	__aeabi_dmul
	mov	r4, r0
	b	.LBB0_133
.LCPI0_11:
	.long	1346542445              @ 0x50429b6d
.LCPI0_12:
	.long	1071779287              @ 0x3fe20dd7
.LBB0_133:                              @ %sw.epilog
	mov	r5, r1
	mov	r0, r6
	mov	r1, r9
	bl	sqrt
	b	.LBB0_134
.LBB0_134:                              @ %sw.epilog
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_135
.LBB0_135:                              @ %if.end173
	bl	__aeabi_ddiv
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_136
.LBB0_136:                              @ %if.end173
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_137
.LBB0_137:                              @ %if.end173
	bl	__aeabi_dsub
	mov	r6, r0
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #0
	moveq	r1, r5
	moveq	r6, r4
	b	.LBB0_138
.LBB0_138:                              @ %return
	mov	r0, r6
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	jn, .Ltmp0-jn
	.cantunwind
	.fnend

	.globl	yn
	.align	2
	.type	yn,%function
yn:                                     @ @yn
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r9, r2
	mov	r4, r3
	mov	r2, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r1, #267386880
	rsb	r0, r9, #0
	bic	r3, r4, #-2147483648
	orr	r1, r1, #1879048192
	b	.LBB1_5
.LBB1_5:                                @ %entry
	orr	r0, r9, r0
	orr	r0, r3, r0, lsr #31
	cmp	r0, r1
	bls	.LBB1_7
	b	.LBB1_6
.LBB1_6:
	mov	r0, r9
	mov	r1, r4
	b	.LBB1_49
.LBB1_7:                                @ %if.end
	cmp	r4, #0
	bge	.LBB1_10
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	orrs	r0, r3, r9
	beq	.LBB1_10
	b	.LBB1_9
.LBB1_9:
	mov	r1, #66584576
	mov	r0, #0
	orr	r1, r1, #2080374784
	b	.LBB1_49
.LBB1_10:                               @ %if.end12
	cmp	r3, r1
	mov	r0, #0
	mov	r1, #0
	beq	.LBB1_49
	b	.LBB1_11
.LBB1_11:                               @ %if.end16
	cmp	r2, #0
	beq	.LBB1_18
	b	.LBB1_12
.LBB1_12:                               @ %if.end20
	sub	r0, r2, #1
	and	r6, r2, r2, lsr #31
	mvnlt	r0, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB1_19
	b	.LBB1_13
.LBB1_13:                               @ %if.end35
	mov	r0, #47185920
	orr	r0, r0, #1342177280
	cmp	r3, r0
	blo	.LBB1_22
	b	.LBB1_14
.LBB1_14:                               @ %if.then38
	ldr	r0, [sp, #8]            @ 4-byte Reload
	and	r0, r0, #3
	cmp	r0, #2
	beq	.LBB1_33
	b	.LBB1_15
.LBB1_15:                               @ %if.then38
	cmp	r0, #1
	bne	.LBB1_36
	b	.LBB1_16
.LBB1_16:                               @ %sw.bb44
	mov	r0, r9
	mov	r1, r4
	str	r6, [sp]                @ 4-byte Spill
	bl	sin
	b	.LBB1_17
.LBB1_17:                               @ %sw.bb44
	mov	r6, r0
	mov	r5, r1
	mov	r0, r9
	mov	r1, r4
	bl	cos
	mov	r2, r6
	mov	r3, r5
	b	.LBB1_43
.LBB1_18:                               @ %if.then19
	mov	r0, r9
	mov	r1, r4
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	y0
.LBB1_19:                               @ %if.then30
	mov	r0, r9
	mov	r1, r4
	bl	y1
	mov	r4, r0
	b	.LBB1_20
.LBB1_20:                               @ %if.then30
	mov	r5, r1
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r4
	b	.LBB1_21
.LBB1_21:                               @ %if.then30
	mov	r3, r5
	bl	__aeabi_dsub
	cmp	r6, #0
	moveq	r1, r5
	moveq	r0, r4
	b	.LBB1_49
.LBB1_22:                               @ %if.else58
	mov	r0, r9
	mov	r1, r4
	str	r6, [sp]                @ 4-byte Spill
	bl	y0
	b	.LBB1_23
.LBB1_23:                               @ %if.else58
	mov	r10, r0
	mov	r11, r1
	mov	r0, r9
	mov	r1, r4
	b	.LBB1_24
.LBB1_24:                               @ %if.else58
	bl	y1
	mov	r6, r0
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	r7, r1
	cmp	r0, #1
	blt	.LBB1_47
	b	.LBB1_25
.LBB1_25:                               @ %if.else58
	mov	r0, #267386880
	orr	r0, r0, #-268435456
	teq	r7, r0
	beq	.LBB1_47
	b	.LBB1_26
.LBB1_26:
	mov	r5, #1
	str	r4, [sp, #4]            @ 4-byte Spill
	b	.LBB1_27
.LBB1_27:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r4, r7
	mov	r8, r6
	bl	__aeabi_i2d
	b	.LBB1_28
.LBB1_28:                               @ %for.body
                                        @   in Loop: Header=BB1_27 Depth=1
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	ldr	r3, [sp, #4]            @ 4-byte Reload
	b	.LBB1_29
.LBB1_29:                               @ %for.body
                                        @   in Loop: Header=BB1_27 Depth=1
	mov	r2, r9
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_30
.LBB1_30:                               @ %for.body
                                        @   in Loop: Header=BB1_27 Depth=1
	mov	r0, r8
	mov	r1, r4
	bl	__aeabi_dmul
	mov	r2, r10
	b	.LBB1_31
.LBB1_31:                               @ %for.body
                                        @   in Loop: Header=BB1_27 Depth=1
	mov	r3, r11
	bl	__aeabi_dsub
	mov	r6, r0
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	r7, r1
	cmp	r5, r0
	bge	.LBB1_47
	b	.LBB1_32
.LBB1_32:                               @ %for.body
                                        @   in Loop: Header=BB1_27 Depth=1
	mov	r0, #267386880
	add	r5, r5, #1
	mov	r10, r8
	mov	r11, r4
	orr	r0, r0, #-268435456
	teq	r7, r0
	bne	.LBB1_27
	b	.LBB1_47
.LBB1_33:                               @ %sw.bb49
	mov	r0, r9
	mov	r1, r4
	str	r6, [sp]                @ 4-byte Spill
	bl	sin
	b	.LBB1_34
.LBB1_34:                               @ %sw.bb49
	mov	r6, r0
	mov	r5, r1
	mov	r0, r9
	mov	r1, r4
	b	.LBB1_35
.LBB1_35:                               @ %sw.bb49
	bl	cos
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_dadd
	b	.LBB1_44
.LBB1_36:                               @ %if.then38
	str	r6, [sp]                @ 4-byte Spill
	cmp	r0, #0
	bne	.LBB1_40
	b	.LBB1_37
.LBB1_37:                               @ %sw.bb
	mov	r0, r9
	mov	r1, r4
	bl	sin
	mov	r6, r0
	b	.LBB1_38
.LBB1_38:                               @ %sw.bb
	mov	r5, r1
	mov	r0, r9
	mov	r1, r4
	bl	cos
	b	.LBB1_39
.LBB1_39:                               @ %sw.bb
	mov	r2, r0
	mov	r3, r1
	eor	r1, r5, #-2147483648
	mov	r0, r6
	b	.LBB1_43
.LBB1_40:                               @ %sw.bb53
	mov	r0, r9
	mov	r1, r4
	bl	sin
	mov	r6, r0
	b	.LBB1_41
.LBB1_41:                               @ %sw.bb53
	mov	r5, r1
	mov	r0, r9
	mov	r1, r4
	bl	cos
	b	.LBB1_42
.LBB1_42:                               @ %sw.bb53
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r5
	b	.LBB1_43
.LBB1_43:                               @ %sw.epilog
	bl	__aeabi_dsub
	b	.LBB1_44
.LBB1_44:                               @ %sw.epilog
	ldr	r2, .LCPI1_0
	ldr	r3, .LCPI1_2
	bl	__aeabi_dmul
	mov	r6, r0
	b	.LBB1_45
.LCPI1_0:
	.long	1346542445              @ 0x50429b6d
.LCPI1_2:
	.long	1071779287              @ 0x3fe20dd7
.LBB1_45:                               @ %sw.epilog
	mov	r5, r1
	mov	r0, r9
	mov	r1, r4
	bl	sqrt
	b	.LBB1_46
.LBB1_46:                               @ %sw.epilog
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r6, r0
	mov	r7, r1
	b	.LBB1_47
.LBB1_47:                               @ %if.end84
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r6
	mov	r3, r7
	b	.LBB1_48
.LBB1_48:                               @ %if.end84
	bl	__aeabi_dsub
	ldr	r2, [sp]                @ 4-byte Reload
	cmp	r2, #0
	moveq	r1, r7
	moveq	r0, r6
	b	.LBB1_49
.LBB1_49:                               @ %return
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	yn, .Ltmp1-yn
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
