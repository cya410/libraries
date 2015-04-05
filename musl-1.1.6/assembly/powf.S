.section powf_text
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
	.file	"src/math/powf.bc"
	.globl	powf
	.align	2
	.type	powf,%function
.section bb0_0
powf:                                   @ @powf
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
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r10, r1
	mov	r6, #1065353216
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	cmp	r4, #1065353216
	bicne	r5, r10, #-2147483648
	cmpne	r5, #0
	beq	.LBB0_53
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end10
	mov	r0, #1065353216
	bic	r7, r4, #-2147483648
	orr	r0, r0, #1073741824
	cmp	r7, r0
	ldrls	r1, .LCPI0_34
	cmpls	r5, r1
	blo	.LBB0_8
	b	.LBB0_6
.LCPI0_34:
	.long	2139095041              @ 0x7f800001
.section bb0_6
.LBB0_6:                                @ %if.then13
	mov	r0, r4
	mov	r1, r10
	bl	__aeabi_fadd
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	mov	r6, r0
	b	.LBB0_53
.section bb0_8
.LBB0_8:                                @ %if.end14
	cmp	r4, #0
	bge	.LBB0_12
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then16
	lsr	r1, r5, #23
	mov	r8, #2
	cmp	r1, #150
	bhi	.LBB0_13
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.else
	cmp	r5, #1065353216
	blo	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then20
	mov	r1, #150
	mov	r8, #0
	sub	r2, r1, r5, lsr #23
	lsr	r1, r5, r2
	cmp	r5, r1, lsl r2
	andeq	r1, r1, #1
	rsbeq	r8, r1, #2
	b	.LBB0_13
.section bb0_12
.LBB0_12:
	mov	r8, #0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end31
	cmp	r5, #1065353216
	bne	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then54
	mov	r0, #1065353216
	mov	r1, r4
	bl	__aeabi_fdiv
	mov	r6, r0
	cmp	r10, #0
	movge	r6, r4
	b	.LBB0_53
.section bb0_15
.LBB0_15:                               @ %if.end31
	cmp	r5, r0
	bne	.LBB0_21
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then33
	cmp	r7, #1065353216
	beq	.LBB0_53
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.else36
	bls	.LBB0_19
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then38
	cmp	r10, #0
	movlt	r10, #0
	mov	r6, r10
	b	.LBB0_53
.section bb0_19
.LBB0_19:                               @ %if.else40
	cmp	r7, #0
	beq	.LBB0_21
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then42
	eor	r6, r10, #-2147483648
	cmp	r10, #0
	movge	r6, #0
	b	.LBB0_53
.section bb0_21
.LBB0_21:                               @ %if.end60
	cmp	r10, #1073741824
	bne	.LBB0_25
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then62
	mov	r0, r4
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %return
	mov	r1, r4
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %return
	bl	__aeabi_fmul
	b	.LBB0_7
.section bb0_25
.LBB0_25:                               @ %if.end63
	cmp	r4, #0
	blt	.LBB0_28
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end63
	cmp	r10, #1056964608
	bne	.LBB0_28
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.then67
	mov	r0, r4
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	sqrtf
.section bb0_28
.LBB0_28:                               @ %if.end69
	mov	r0, r4
	bl	fabsf
	mov	r6, r0
	bic	r0, r4, #-1073741824
	cmp	r0, #1065353216
	cmpne	r7, #0
	bne	.LBB0_32
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.then76
	mov	r0, #1065353216
	mov	r1, r6
	bl	__aeabi_fdiv
	cmp	r10, #0
	movlt	r6, r0
	cmp	r4, #0
	bge	.LBB0_53
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.then82
	sub	r0, r7, #1065353216
	orrs	r0, r8, r0
	beq	.LBB0_57
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.else89
	mov	r0, #-2147483648
	mov	r1, r6
	bl	__aeabi_fsub
	cmp	r8, #1
	movne	r0, r6
	b	.LBB0_54
.section bb0_32
.LBB0_32:                               @ %if.end96
	mov	r11, #1065353216
	cmp	r4, #0
	bge	.LBB0_37
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.then98
	cmp	r8, #1
	bne	.LBB0_35
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.then106
	mov	r11, #1065353216
	orr	r11, r11, #-2147483648
	b	.LBB0_37
.section bb0_35
.LBB0_35:                               @ %if.then98
	cmp	r8, #0
	bne	.LBB0_37
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.then100
	mov	r0, r4
	mov	r1, r4
	b	.LBB0_58
.section bb0_37
.LBB0_37:                               @ %if.end108
	cmp	r5, #1291845632
	bls	.LBB0_43
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.then110
	ldr	r0, .LCPI0_55
	cmp	r7, r0
	bhi	.LBB0_48
	b	.LBB0_39
.LCPI0_55:
	.long	1065353207              @ 0x3f7ffff7
.section bb0_39
.LBB0_39:                               @ %if.then112
	ldr	r4, .LCPI0_73
	mov	r0, r11
	mov	r1, r4
	bl	__aeabi_fmul
	b	.LBB0_40
.LCPI0_73:
	.long	1900671690              @ 0x7149f2ca
.section bb0_40
.LBB0_40:                               @ %if.then112
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r6, .LCPI0_60
	mov	r4, r0
	b	.LBB0_41
.LCPI0_60:
	.long	228737632               @ 0xda24260
.section bb0_41
.LBB0_41:                               @ %if.then112
	mov	r0, r11
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r1, r6
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.then112
	bl	__aeabi_fmul
	mov	r6, r0
	cmp	r10, #0
	movlt	r6, r4
	b	.LBB0_53
.section bb0_43
.LBB0_43:                               @ %if.else160
	mov	r1, #192937984
	mov	r0, r6
	orr	r1, r1, #1073741824
	bl	__aeabi_fmul
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.else160
	cmp	r7, #8388608
	mvn	r1, #126
	mov	r3, #0
	mvnlo	r1, #150
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.else160
	movhs	r0, r7
	add	r2, r1, r0, asr #23
	ldr	r1, .LCPI0_35
	and	r0, r0, r1
	b	.LBB0_46
.LCPI0_35:
	.long	8388607                 @ 0x7fffff
.section bb0_46
.LBB0_46:                               @ %if.else160
	ldr	r1, .LCPI0_37
	orr	r4, r0, #1065353216
	cmp	r0, r1
	bhs	.LBB0_55
	b	.LBB0_47
.LCPI0_37:
	.long	1885298                 @ 0x1cc472
.section bb0_47
.LBB0_47:
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r11, [sp, #16]          @ 4-byte Spill
	b	.LBB0_73
.section bb0_48
.LBB0_48:                               @ %if.end122
	mov	r0, #8
	orr	r0, r0, #1065353216
	cmp	r7, r0
	blo	.LBB0_59
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.then124
	ldr	r4, .LCPI0_74
	mov	r0, r11
	mov	r1, r4
	bl	__aeabi_fmul
	b	.LBB0_50
.LCPI0_74:
	.long	1900671690              @ 0x7149f2ca
.section bb0_50
.LBB0_50:                               @ %if.then124
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r6, .LCPI0_61
	mov	r4, r0
	b	.LBB0_51
.LCPI0_61:
	.long	228737632               @ 0xda24260
.section bb0_51
.LBB0_51:                               @ %if.then124
	mov	r0, r11
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r1, r6
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.then124
	bl	__aeabi_fmul
	mov	r6, r0
	cmp	r10, #0
	movgt	r6, r4
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %return
	mov	r0, r6
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_55
.LBB0_55:                               @ %if.else178
	ldr	r1, .LCPI0_38
	cmp	r0, r1
	bhs	.LBB0_72
	b	.LBB0_56
.LCPI0_38:
	.long	6140887                 @ 0x5db3d7
.section bb0_56
.LBB0_56:
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r11, [sp, #16]          @ 4-byte Spill
	mov	r3, #1
	b	.LBB0_73
.section bb0_57
.LBB0_57:                               @ %if.then85
	mov	r0, r6
	mov	r1, r6
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %return
	bl	__aeabi_fsub
	mov	r1, r0
	bl	__aeabi_fdiv
	b	.LBB0_7
.section bb0_59
.LBB0_59:                               @ %if.end134
	mov	r1, #1065353216
	mov	r0, r6
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.end134
	mov	r4, r0
	mov	r1, r4
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fmul
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.end134
	mov	r1, #1048576000
	mov	r6, r0
	mov	r0, r4
	orr	r1, r1, #-2147483648
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.end134
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_47
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_63
.LCPI0_47:
	.long	1051372203              @ 0x3eaaaaab
.section bb0_63
.LBB0_63:                               @ %if.end134
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #1056964608
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.end134
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %if.end134
	ldr	r1, .LCPI0_56
	mov	r6, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB0_66
.LCPI0_56:
	.long	1069066752              @ 0x3fb8aa00
.section bb0_66
.LBB0_66:                               @ %if.end134
	ldr	r1, .LCPI0_57
	mov	r7, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB0_67
.LCPI0_57:
	.long	921478512               @ 0x36eca570
.section bb0_67
.LBB0_67:                               @ %if.end134
	ldr	r1, .LCPI0_58
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_68
.LCPI0_58:
	.long	3216550459              @ 0xbfb8aa3b
.section bb0_68
.LBB0_68:                               @ %if.end134
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r4, r0
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.end134
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_fadd
	ldr	r1, .LCPI0_41
	b	.LBB0_70
.LCPI0_41:
	.long	4294963200              @ 0xfffff000
.section bb0_70
.LBB0_70:                               @ %if.end134
	and	r6, r0, r1
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_fsub
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.end134
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r8, r0
	b	.LBB0_120
.section bb0_72
.LBB0_72:                               @ %if.else181
	sub	r4, r4, #8388608
	add	r2, r2, #1
	str	r11, [sp, #16]          @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %do.body186
	ldr	r0, .LCPI0_39
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r7, r3
	ldr	r6, [r0, r3, lsl #2]
	b	.LBB0_74
.LCPI0_39:
	.long	bp
.section bb0_74
.LBB0_74:                               @ %do.body186
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %do.body186
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %do.body186
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	mov	r11, r0
	mov	r0, r5
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %do.body186
	mov	r1, r11
	bl	__aeabi_fmul
	mov	r8, r0
	ldr	r0, .LCPI0_40
	b	.LBB0_78
.LCPI0_40:
	.long	3758092288              @ 0xdffff000
.section bb0_78
.LBB0_78:                               @ %do.body186
	mov	r1, r6
	and	r0, r0, r4, asr #1
	orr	r0, r0, #536870912
	add	r0, r0, r7, lsl #21
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %do.body186
	add	r7, r0, #4194304
	mov	r0, r7
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %do.body186
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r1, r0
	ldr	r0, .LCPI0_42
	b	.LBB0_81
.LCPI0_42:
	.long	4294963200              @ 0xfffff000
.section bb0_81
.LBB0_81:                               @ %do.body186
	and	r9, r8, r0
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r9
	bl	__aeabi_fmul
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %do.body186
	mov	r6, r0
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_fmul
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %do.body186
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fsub
	mov	r1, r6
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %do.body186
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r11
	bl	__aeabi_fmul
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %do.body186
	mov	r4, r0
	mov	r0, r8
	mov	r1, r9
	str	r4, [sp]                @ 4-byte Spill
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %do.body186
	bl	__aeabi_fadd
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r11, r0
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %do.body186
	mov	r0, r8
	mov	r1, r8
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_44
	b	.LBB0_88
.LCPI0_44:
	.long	1045688642              @ 0x3e53f142
.section bb0_88
.LBB0_88:                               @ %do.body186
	mov	r6, r0
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_45
	b	.LBB0_89
.LCPI0_45:
	.long	1047278165              @ 0x3e6c3255
.section bb0_89
.LBB0_89:                               @ %do.body186
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %do.body186
	ldr	r1, .LCPI0_46
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_91
.LCPI0_46:
	.long	1049338629              @ 0x3e8ba305
.section bb0_91
.LBB0_91:                               @ %do.body186
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_48
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_92
.LCPI0_48:
	.long	1051372203              @ 0x3eaaaaab
.section bb0_92
.LBB0_92:                               @ %do.body186
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_49
	bl	__aeabi_fadd
	b	.LBB0_93
.LCPI0_49:
	.long	1054567863              @ 0x3edb6db7
.section bb0_93
.LBB0_93:                               @ %do.body186
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_50
	b	.LBB0_94
.LCPI0_50:
	.long	1058642330              @ 0x3f19999a
.section bb0_94
.LBB0_94:                               @ %do.body186
	bl	__aeabi_fadd
	mov	r7, r0
	mov	r0, r6
	mov	r1, r6
	b	.LBB0_95
.section bb0_95
.LBB0_95:                               @ %do.body186
	bl	__aeabi_fmul
	mov	r1, r7
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %do.body186
	mov	r0, r11
	bl	__aeabi_fadd
	mov	r7, r0
	mov	r0, r9
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %do.body186
	mov	r1, r9
	bl	__aeabi_fmul
	mov	r1, #4194304
	mov	r4, r0
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %do.body186
	orr	r1, r1, #1073741824
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fadd
	mov	r1, r7
	b	.LBB0_99
.section bb0_99
.LBB0_99:                               @ %do.body186
	bl	__aeabi_fadd
	ldr	r5, [sp, #4]            @ 4-byte Reload
	mov	r1, #4194304
	orr	r1, r1, #-1073741824
	b	.LBB0_100
.section bb0_100
.LBB0_100:                              @ %do.body186
	and	r6, r0, r5
	mov	r0, r6
	bl	__aeabi_fadd
	mov	r1, r4
	b	.LBB0_101
.section bb0_101
.LBB0_101:                              @ %do.body186
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fsub
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %do.body186
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fmul
	mov	r4, r0
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %do.body186
	ldr	r0, [sp]                @ 4-byte Reload
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r1, r4
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %do.body186
	bl	__aeabi_fadd
	mov	r4, r0
	mov	r0, r9
	mov	r1, r6
	b	.LBB0_105
.section bb0_105
.LBB0_105:                              @ %do.body186
	bl	__aeabi_fmul
	mov	r7, r0
	mov	r1, r4
                                        @ kill: R0<def> R7<kill>
	b	.LBB0_106
.section bb0_106
.LBB0_106:                              @ %do.body186
	bl	__aeabi_fadd
	and	r6, r0, r5
	mov	r1, r7
	mov	r0, r6
	b	.LBB0_107
.section bb0_107
.LBB0_107:                              @ %do.body186
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %do.body186
	ldr	r1, .LCPI0_51
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_52
	mov	r4, r0
	b	.LBB0_109
.LCPI0_51:
	.long	1064712271              @ 0x3f76384f
.LCPI0_52:
	.long	3103138758              @ 0xb8f623c6
.section bb0_109
.LBB0_109:                              @ %do.body186
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %do.body186
	bl	__aeabi_fadd
	mov	r1, r0
	ldr	r0, .LCPI0_53
	ldr	r4, [sp, #8]            @ 4-byte Reload
	b	.LBB0_111
.LCPI0_53:
	.long	dp_l
.section bb0_111
.LBB0_111:                              @ %do.body186
	ldr	r0, [r0, r4, lsl #2]
	bl	__aeabi_fadd
	mov	r1, #3555328
	mov	r8, r0
	b	.LBB0_112
.section bb0_112
.LBB0_112:                              @ %do.body186
	mov	r0, r6
	orr	r1, r1, #1061158912
	bl	__aeabi_fmul
	mov	r9, r0
	b	.LBB0_113
.section bb0_113
.LBB0_113:                              @ %do.body186
	mov	r1, r8
                                        @ kill: R0<def> R9<kill>
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_114
.section bb0_114
.LBB0_114:                              @ %do.body186
	ldr	r0, .LCPI0_54
	ldr	r4, [r0, r4, lsl #2]
	mov	r0, r4
	bl	__aeabi_fadd
	b	.LBB0_115
.LCPI0_54:
	.long	dp_h
.section bb0_115
.LBB0_115:                              @ %do.body186
	mov	r6, r0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	__aeabi_i2f
	mov	r7, r0
	b	.LBB0_116
.section bb0_116
.LBB0_116:                              @ %do.body186
	mov	r1, r6
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fadd
	and	r6, r0, r5
	b	.LBB0_117
.section bb0_117
.LBB0_117:                              @ %do.body186
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_fsub
	mov	r1, r4
	b	.LBB0_118
.section bb0_118
.LBB0_118:                              @ %do.body186
	bl	__aeabi_fsub
	mov	r1, r9
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_119
.section bb0_119
.LBB0_119:                              @ %do.body186
	mov	r0, r8
	bl	__aeabi_fsub
	ldr	r11, [sp, #16]          @ 4-byte Reload
	mov	r8, r0
	b	.LBB0_120
.section bb0_120
.LBB0_120:                              @ %do.body304
	ldr	r0, .LCPI0_43
	and	r7, r10, r0
	mov	r0, r10
	mov	r1, r7
	b	.LBB0_121
.LCPI0_43:
	.long	4294963200              @ 0xfffff000
.section bb0_121
.LBB0_121:                              @ %do.body304
	bl	__aeabi_fsub
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r4, r0
	b	.LBB0_122
.section bb0_122
.LBB0_122:                              @ %do.body304
	mov	r0, r8
	mov	r1, r10
	bl	__aeabi_fmul
	mov	r1, r4
	b	.LBB0_123
.section bb0_123
.LBB0_123:                              @ %do.body304
	bl	__aeabi_fadd
	mov	r8, r0
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_124
.section bb0_124
.LBB0_124:                              @ %do.body304
	bl	__aeabi_fmul
	mov	r6, r0
	mov	r1, r8
                                        @ kill: R0<def> R6<kill>
	b	.LBB0_125
.section bb0_125
.LBB0_125:                              @ %do.body304
	bl	__aeabi_fadd
	mov	r7, r0
	cmp	r7, #1124073472
	bgt	.LBB0_131
	b	.LBB0_126
.section bb0_126
.LBB0_126:                              @ %if.else331
	bne	.LBB0_132
	b	.LBB0_127
.section bb0_127
.LBB0_127:                              @ %if.then334
	ldr	r1, .LCPI0_63
	mov	r0, r8
	bl	__aeabi_fadd
	mov	r5, r0
	b	.LBB0_128
.LCPI0_63:
	.long	859351612               @ 0x3338aa3c
.section bb0_128
.LBB0_128:                              @ %if.then334
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r4, r0
	b	.LBB0_129
.section bb0_129
.LBB0_129:                              @ %if.then334
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_fcmple
	mov	r9, r0
	b	.LBB0_130
.section bb0_130
.LBB0_130:                              @ %if.then334
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_fcmpun
	mov	r4, #1124073472
	orrs	r0, r0, r9
	bne	.LBB0_140
	b	.LBB0_131
.section bb0_131
.LBB0_131:                              @ %if.then328
	ldr	r4, .LCPI0_75
	b	.LBB0_138
.LCPI0_75:
	.long	1900671690              @ 0x7149f2ca
.section bb0_132
.LBB0_132:                              @ %if.else343
	ldr	r0, .LCPI0_59
	bic	r4, r7, #-2147483648
	cmp	r4, r0
	bhs	.LBB0_137
	b	.LBB0_133
.LCPI0_59:
	.long	1125515265              @ 0x43160001
.section bb0_133
.LBB0_133:                              @ %if.else350
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_134
.section bb0_134
.LBB0_134:                              @ %if.else350
	mov	r0, #1441792
	orr	r0, r0, #-1023410176
	cmp	r7, r0
	bne	.LBB0_139
	b	.LBB0_135
.section bb0_135
.LBB0_135:                              @ %if.else350
	mov	r0, r8
	mov	r1, r5
	bl	__aeabi_fcmpgt
	mov	r9, r0
	b	.LBB0_136
.section bb0_136
.LBB0_136:                              @ %if.else350
	mov	r0, r8
	mov	r1, r5
	bl	__aeabi_fcmpun
	orrs	r0, r0, r9
	bne	.LBB0_139
	b	.LBB0_137
.section bb0_137
.LBB0_137:                              @ %if.then347
	ldr	r4, .LCPI0_62
	b	.LBB0_138
.LCPI0_62:
	.long	228737632               @ 0xda24260
.section bb0_138
.LBB0_138:                              @ %return
	mov	r0, r11
	mov	r1, r4
	bl	__aeabi_fmul
	b	.LBB0_23
.section bb0_139
.LBB0_139:                              @ %if.end364
	mov	r9, #0
	cmp	r4, #1056964608
	bls	.LBB0_144
	b	.LBB0_140
.section bb0_140
.LBB0_140:                              @ %if.then370
	ldr	r3, .LCPI0_36
	mvn	r0, #125
	mov	r1, #8388608
	cmp	r7, #0
	b	.LBB0_141
.LCPI0_36:
	.long	8388607                 @ 0x7fffff
.section bb0_141
.LBB0_141:                              @ %if.then370
	add	r0, r0, r4, lsr #23
	mov	r4, #0
	add	r0, r7, r1, lsr r0
	mov	r1, #255
	b	.LBB0_142
.section bb0_142
.LBB0_142:                              @ %if.then370
	and	r1, r1, r0, lsr #23
	and	r5, r0, r3
	rsb	r2, r1, #150
	sub	r1, r1, #127
	b	.LBB0_143
.section bb0_143
.LBB0_143:                              @ %if.then370
	orr	r5, r5, #8388608
	bic	r1, r0, r3, lsr r1
	mov	r0, r6
	lsr	r9, r5, r2
	sublt	r9, r4, r5, lsr r2
	bl	__aeabi_fsub
	mov	r6, r0
	b	.LBB0_144
.section bb0_144
.LBB0_144:                              @ %if.end394
	mov	r0, r8
	mov	r1, r6
	bl	__aeabi_fadd
	ldr	r1, .LCPI0_64
	b	.LBB0_145
.LCPI0_64:
	.long	4294934528              @ 0xffff8000
.section bb0_145
.LBB0_145:                              @ %if.end394
	and	r4, r0, r1
	ldr	r1, .LCPI0_65
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB0_146
.LCPI0_65:
	.long	1060205056              @ 0x3f317200
.section bb0_146
.LBB0_146:                              @ %if.end394
	mov	r10, r0
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_fsub
	b	.LBB0_147
.section bb0_147
.LBB0_147:                              @ %if.end394
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fsub
	ldr	r1, .LCPI0_66
	b	.LBB0_148
.LCPI0_66:
	.long	1060205080              @ 0x3f317218
.section bb0_148
.LBB0_148:                              @ %if.end394
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_67
	mov	r5, r0
	mov	r0, r4
	b	.LBB0_149
.LCPI0_67:
	.long	901758604               @ 0x35bfbe8c
.section bb0_149
.LBB0_149:                              @ %if.end394
	bl	__aeabi_fmul
	mov	r1, r5
	bl	__aeabi_fadd
	mov	r6, r0
	b	.LBB0_150
.section bb0_150
.LBB0_150:                              @ %if.end394
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_fadd
	mov	r4, r0
	b	.LBB0_151
.section bb0_151
.LBB0_151:                              @ %if.end394
	mov	r1, r4
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_68
	b	.LBB0_152
.LCPI0_68:
	.long	858897228               @ 0x3331bb4c
.section bb0_152
.LBB0_152:                              @ %if.end394
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_69
	b	.LBB0_153
.LCPI0_69:
	.long	3051219470              @ 0xb5ddea0e
.section bb0_153
.LBB0_153:                              @ %if.end394
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_154
.section bb0_154
.LBB0_154:                              @ %if.end394
	ldr	r1, .LCPI0_70
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_155
.LCPI0_70:
	.long	948613973               @ 0x388ab355
.section bb0_155
.LBB0_155:                              @ %if.end394
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_71
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_156
.LCPI0_71:
	.long	3140881249              @ 0xbb360b61
.section bb0_156
.LBB0_156:                              @ %if.end394
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_72
	bl	__aeabi_fadd
	b	.LBB0_157
.LCPI0_72:
	.long	1042983595              @ 0x3e2aaaab
.section bb0_157
.LBB0_157:                              @ %if.end394
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB0_158
.section bb0_158
.LBB0_158:                              @ %if.end394
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r5, r0
	mov	r0, r4
	b	.LBB0_159
.section bb0_159
.LBB0_159:                              @ %if.end394
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r7, r0
	mov	r0, r5
	b	.LBB0_160
.section bb0_160
.LBB0_160:                              @ %if.end394
	mov	r1, #-1073741824
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_161
.section bb0_161
.LBB0_161:                              @ %if.end394
	bl	__aeabi_fdiv
	mov	r5, r0
	mov	r0, r4
	mov	r1, r10
	b	.LBB0_162
.section bb0_162
.LBB0_162:                              @ %if.end394
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fsub
	b	.LBB0_163
.section bb0_163
.LBB0_163:                              @ %if.end394
	mov	r6, r0
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_fmul
	b	.LBB0_164
.section bb0_164
.LBB0_164:                              @ %if.end394
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_165
.section bb0_165
.LBB0_165:                              @ %if.end394
	mov	r0, r5
	bl	__aeabi_fsub
	mov	r1, r4
	bl	__aeabi_fsub
	b	.LBB0_166
.section bb0_166
.LBB0_166:                              @ %if.end394
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub
	add	r1, r0, r9, lsl #23
	asr	r2, r1, #23
	cmp	r2, #0
	bgt	.LBB0_168
	b	.LBB0_167
.section bb0_167
.LBB0_167:                              @ %if.then445
	mov	r1, r9
	bl	scalbnf
	mov	r1, r0
	b	.LBB0_168
.section bb0_168
.LBB0_168:                              @ %if.end453
	mov	r0, r11
	b	.LBB0_24
.Ltmp0:
	.size	powf, .Ltmp0-powf
	.cantunwind
	.fnend

	.type	bp,%object              @ @bp
	.section	.rodata.cst8,"aM",%progbits,8
	.align	2
bp:
	.long	1065353216              @ float 1.000000e+00
	.long	1069547520              @ float 1.500000e+00
	.size	bp, 8

	.type	dp_l,%object            @ @dp_l
	.align	2
dp_l:
	.long	0                       @ float 0.000000e+00
	.long	902942684               @ float 1.563221e-06
	.size	dp_l, 8

	.type	dp_h,%object            @ @dp_h
	.align	2
dp_h:
	.long	0                       @ float 0.000000e+00
	.long	1058390016              @ float 5.849609e-01
	.size	dp_h, 8


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
