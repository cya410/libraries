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
	.file	"src/math/lgammaf_r.bc"
	.globl	__lgammaf_r
	.align	2
	.type	__lgammaf_r,%function
__lgammaf_r:                            @ @__lgammaf_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r11, r0
	mov	r5, r1
	mov	r0, #1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	bic	r4, r11, #-2147483648
	str	r0, [r5]
	lsr	r8, r4, #23
	cmp	r8, #255
	blo	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	mov	r0, r11
	mov	r1, r11
	bl	__aeabi_fmul
	b	.LBB0_151
.LBB0_6:                                @ %if.end
	lsr	r10, r4, #24
	cmp	r10, #52
	bhi	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then4
	cmp	r11, #0
	mvnlt	r0, #0
	eorlt	r11, r11, #-2147483648
	strlt	r0, [r5]
	mov	r0, r11
	bl	logf
	eor	r0, r0, #-2147483648
	b	.LBB0_151
.LBB0_8:                                @ %if.end8
	cmp	r11, #0
	blt	.LBB0_10
	b	.LBB0_9
.LBB0_9:
                                        @ implicit-def: R5
	mov	r9, r11
	b	.LBB0_32
.LBB0_10:                               @ %if.then10
	mov	r0, r11
	mov	r1, #-1090519040
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_11
.LBB0_11:                               @ %if.then10
                                        @ kill: R0<def> R6<kill>
	bl	floorf
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_12
.LBB0_12:                               @ %if.then10
	bl	__aeabi_fsub
	mov	r1, r0
	bl	__aeabi_fadd
	mov	r1, #8388608
	b	.LBB0_13
.LBB0_13:                               @ %if.then10
	mov	r7, r0
	orr	r1, r1, #1073741824
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fmul
	b	.LBB0_14
.LBB0_14:                               @ %if.then10
	bl	__aeabi_f2iz
	add	r0, r0, #1
	add	r6, r0, r0, lsr #31
	asr	r9, r6, #1
	b	.LBB0_15
.LBB0_15:                               @ %if.then10
	mov	r0, r9
	bl	__aeabi_i2f
	mov	r1, #-1090519040
	bl	__aeabi_fmul
	b	.LBB0_16
.LBB0_16:                               @ %if.then10
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd
	bl	__aeabi_f2d
	b	.LBB0_17
.LBB0_17:                               @ %if.then10
	ldr	r2, .LCPI0_69
	ldr	r3, .LCPI0_70
	bl	__aeabi_dmul
	mov	r2, #1
	cmp	r2, r6, asr #1
	beq	.LBB0_20
	b	.LBB0_18
.LCPI0_69:
	.long	1413754136              @ 0x54442d18
.LCPI0_70:
	.long	1074340347              @ 0x400921fb
.LBB0_18:                               @ %if.then10
	cmp	r9, #2
	bne	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               @ %sw.bb12.i
	eor	r1, r1, #-2147483648
	b	.LBB0_23
.LBB0_20:                               @ %sw.bb10.i
	bl	__cosdf
	mov	r7, r0
	b	.LBB0_24
.LBB0_21:                               @ %if.then10
	cmp	r9, #3
	bne	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               @ %sw.bb15.i
	bl	__cosdf
	eor	r7, r0, #-2147483648
	b	.LBB0_24
.LBB0_23:                               @ %sw.bb.i
	bl	__sindf
	mov	r7, r0
	b	.LBB0_24
.LBB0_24:                               @ %sin_pi.exit
	mov	r0, r7
	mov	r1, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               @ %if.then14
	mov	r0, r11
	mov	r1, r11
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	b	.LBB0_151
.LBB0_26:                               @ %if.end16
	mov	r0, r7
	mov	r1, #0
	eor	r9, r11, #-2147483648
	bl	__aeabi_fcmple
	b	.LBB0_27
.LBB0_27:                               @ %if.end16
	mov	r6, r0
	mov	r0, r7
	mov	r1, #0
	bl	__aeabi_fcmpun
	orrs	r0, r0, r6
	bne	.LBB0_29
	b	.LBB0_28
.LBB0_28:                               @ %if.then18
	mvn	r0, #0
	str	r0, [r5]
	b	.LBB0_30
.LBB0_29:                               @ %if.else
	eor	r7, r7, #-2147483648
	b	.LBB0_30
.LBB0_30:                               @ %if.end20
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB0_31
.LBB0_31:                               @ %if.end20
	ldr	r0, .LCPI0_71
	bl	__aeabi_fdiv
	bl	logf
	mov	r5, r0
	b	.LBB0_32
.LCPI0_71:
	.long	1078530011              @ 0x40490fdb
.LBB0_32:                               @ %if.end24
	mov	r7, #0
	cmp	r11, #1065353216
	bge	.LBB0_35
	b	.LBB0_33
.LBB0_33:                               @ %if.end24
	mov	r0, #1065353216
	orr	r0, r0, #-2147483648
	cmp	r11, r0
	beq	.LBB0_150
	b	.LBB0_34
.LBB0_34:                               @ %if.end24
	cmp	r11, #-1073741824
	bne	.LBB0_36
	b	.LBB0_150
.LBB0_35:                               @ %if.end24
	cmpne	r11, #1073741824
	beq	.LBB0_150
	b	.LBB0_36
.LBB0_36:                               @ %if.else28
	mov	r0, #0
	cmp	r0, r4, lsr #30
	bne	.LBB0_40
	b	.LBB0_37
.LBB0_37:                               @ %if.then30
	ldr	r0, .LCPI0_93
	cmp	r4, r0
	bhi	.LBB0_69
	b	.LBB0_38
.LCPI0_93:
	.long	1063675494              @ 0x3f666666
.LBB0_38:                               @ %if.then32
	mov	r0, r9
	bl	logf
	ldr	r1, .LCPI0_97
	eor	r8, r0, #-2147483648
	mov	r0, #1065353216
	cmp	r4, r1
	bls	.LBB0_104
	b	.LBB0_39
.LCPI0_97:
	.long	1060850207              @ 0x3f3b4a1f
.LBB0_39:
	mov	r4, r5
	b	.LBB0_71
.LBB0_40:                               @ %if.else145
	mov	r0, r9
	str	r5, [sp]                @ 4-byte Spill
	cmp	r10, #64
	bhi	.LBB0_90
	b	.LBB0_41
.LBB0_41:                               @ %if.then147
	bl	__aeabi_f2iz
	mov	r8, r0
                                        @ kill: R0<def> R8<kill>
	bl	__aeabi_i2f
	b	.LBB0_42
.LBB0_42:                               @ %if.then147
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fsub
	ldr	r1, .LCPI0_79
	b	.LBB0_43
.LCPI0_79:
	.long	939917159               @ 0x3805ff67
.LBB0_43:                               @ %if.then147
	mov	r6, r0
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_80
	b	.LBB0_44
.LCPI0_80:
	.long	988886452               @ 0x3af135b4
.LBB0_44:                               @ %if.then147
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_45
.LBB0_45:                               @ %if.then147
	ldr	r1, .LCPI0_81
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_46
.LCPI0_81:
	.long	1020936420              @ 0x3cda40e4
.LBB0_46:                               @ %if.then147
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_82
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_47
.LCPI0_82:
	.long	1041620198              @ 0x3e15dce6
.LBB0_47:                               @ %if.then147
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_83
	bl	__aeabi_fadd
	b	.LBB0_48
.LCPI0_83:
	.long	1051118714              @ 0x3ea6cc7a
.LBB0_48:                               @ %if.then147
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_84
	b	.LBB0_49
.LCPI0_84:
	.long	1046226010              @ 0x3e5c245a
.LBB0_49:                               @ %if.then147
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_50
.LBB0_50:                               @ %if.then147
	ldr	r1, .LCPI0_85
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_51
.LCPI0_85:
	.long	3181257535              @ 0xbd9e233f
.LBB0_51:                               @ %if.then147
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_87
	mov	r7, r0
	mov	r0, r6
	b	.LBB0_52
.LCPI0_87:
	.long	922081213               @ 0x36f5d7bd
.LBB0_52:                               @ %if.then147
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_88
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_53
.LCPI0_88:
	.long	978054870               @ 0x3a4beed6
.LBB0_53:                               @ %if.then147
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_89
	bl	__aeabi_fadd
	b	.LBB0_54
.LCPI0_89:
	.long	1016643412              @ 0x3c98bf54
.LBB0_54:                               @ %if.then147
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_90
	b	.LBB0_55
.LCPI0_90:
	.long	1043337070              @ 0x3e300f6e
.LBB0_55:                               @ %if.then147
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_56
.LBB0_56:                               @ %if.then147
	ldr	r1, .LCPI0_91
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_57
.LCPI0_91:
	.long	1060688069              @ 0x3f38d0c5
.LBB0_57:                               @ %if.then147
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_92
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_58
.LCPI0_92:
	.long	1068641595              @ 0x3fb22d3b
.LBB0_58:                               @ %if.then147
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, #1065353216
	mov	r5, #1065353216
	b	.LBB0_59
.LBB0_59:                               @ %if.then147
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fdiv
	b	.LBB0_60
.LBB0_60:                               @ %if.then147
	mov	r7, r0
	mov	r0, r6
	mov	r1, #1056964608
	bl	__aeabi_fmul
	b	.LBB0_61
.LBB0_61:                               @ %if.then147
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r7, r0
	sub	r0, r8, #3
	cmp	r0, #4
	bhi	.LBB0_132
	b	.LBB0_62
.LBB0_62:                               @ %if.then147
	lsl	r0, r0, #2
	adr	r1, .LJTI0_0_0
	ldr	pc, [r0, r1]
.LJTI0_0_0:
	.long	.LBB0_67
	.long	.LBB0_66
	.long	.LBB0_65
	.long	.LBB0_64
	.long	.LBB0_63
.LBB0_63:                               @ %sw.bb178
	mov	r1, #12582912
	mov	r0, r6
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	mov	r5, r0
	b	.LBB0_64
.LBB0_64:                               @ %sw.bb181
	mov	r1, #10485760
	mov	r0, r6
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_65
.LBB0_65:                               @ %sw.bb184
	mov	r1, #8388608
	mov	r0, r6
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_66
.LBB0_66:                               @ %sw.bb187
	mov	r1, #4194304
	mov	r0, r6
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_67
.LBB0_67:                               @ %sw.bb190
	mov	r0, r6
	mov	r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r5
	b	.LBB0_68
.LBB0_68:                               @ %sw.bb190
	bl	__aeabi_fmul
	bl	logf
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_103
.LBB0_69:                               @ %if.else45
	ldr	r0, .LCPI0_94
	cmp	r4, r0
	bls	.LBB0_106
	b	.LBB0_70
.LCPI0_94:
	.long	1071490583              @ 0x3fdda617
.LBB0_70:
	mov	r4, r5
	mov	r0, #1073741824
	mov	r8, #0
	b	.LBB0_71
.LBB0_71:                               @ %sw.bb
	mov	r1, r9
	bl	__aeabi_fsub
	mov	r6, r0
	mov	r1, r6
	b	.LBB0_72
.LBB0_72:                               @ %sw.bb
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_127
	mov	r7, r0
	b	.LBB0_73
.LCPI0_127:
	.long	936608674               @ 0x37d383a2
.LBB0_73:                               @ %sw.bb
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_128
	bl	__aeabi_fadd
	b	.LBB0_74
.LCPI0_128:
	.long	963090279               @ 0x39679767
.LBB0_74:                               @ %sw.bb
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_129
	b	.LBB0_75
.LCPI0_129:
	.long	983323809               @ 0x3a9c54a1
.LBB0_75:                               @ %sw.bb
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_76
.LBB0_76:                               @ %sw.bb
	ldr	r1, .LCPI0_130
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_77
.LCPI0_130:
	.long	1005716094              @ 0x3bf2027e
.LBB0_77:                               @ %sw.bb
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_131
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_78
.LCPI0_131:
	.long	1032450049              @ 0x3d89f001
.LBB0_78:                               @ %sw.bb
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_132
	bl	__aeabi_fadd
	b	.LBB0_79
.LCPI0_132:
	.long	1033773887              @ 0x3d9e233f
.LBB0_79:                               @ %sw.bb
	ldr	r1, .LCPI0_133
	mov	r5, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_80
.LCPI0_133:
	.long	943467637               @ 0x383c2c75
.LBB0_80:                               @ %sw.bb
	ldr	r1, .LCPI0_134
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_81
.LCPI0_134:
	.long	954369093               @ 0x38e28445
.LBB0_81:                               @ %sw.bb
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_135
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_82
.LCPI0_135:
	.long	973452852               @ 0x3a05b634
.LBB0_82:                               @ %sw.bb
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_136
	bl	__aeabi_fadd
	b	.LBB0_83
.LCPI0_136:
	.long	993881798               @ 0x3b3d6ec6
.LBB0_83:                               @ %sw.bb
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_137
	b	.LBB0_84
.LCPI0_137:
	.long	1017682197              @ 0x3ca89915
.LBB0_84:                               @ %sw.bb
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_85
.LBB0_85:                               @ %sw.bb
	ldr	r1, .LCPI0_138
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_86
.LCPI0_138:
	.long	1051007590              @ 0x3ea51a66
.LBB0_86:                               @ %sw.bb
	bl	__aeabi_fmul
	mov	r7, r0
	mov	r0, r6
	mov	r1, r5
	b	.LBB0_87
.LBB0_87:                               @ %sw.bb
	bl	__aeabi_fmul
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r5, r0
	b	.LBB0_88
.LBB0_88:                               @ %sw.bb
	mov	r0, r6
	mov	r1, #-1090519040
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB0_89
.LBB0_89:                               @ %sw.bb
	mov	r0, r5
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd
	mov	r7, r0
	mov	r5, r4
	b	.LBB0_150
.LBB0_90:                               @ %if.else196
	bl	logf
	mov	r4, r0
	cmp	r8, #184
	bhi	.LBB0_130
	b	.LBB0_91
.LBB0_91:                               @ %if.then199
	mov	r0, #1065353216
	mov	r1, r9
	bl	__aeabi_fdiv
	mov	r5, r0
	b	.LBB0_92
.LBB0_92:                               @ %if.then199
	mov	r1, r5
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_72
	b	.LBB0_93
.LCPI0_72:
	.long	3134571752              @ 0xbad5c4e8
.LBB0_93:                               @ %if.then199
	mov	r7, r0
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_73
	b	.LBB0_94
.LCPI0_73:
	.long	979058130               @ 0x3a5b3dd2
.LBB0_94:                               @ %if.then199
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_95
.LBB0_95:                               @ %if.then199
	ldr	r1, .LCPI0_74
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_96
.LCPI0_74:
	.long	3122398812              @ 0xba1c065c
.LBB0_96:                               @ %if.then199
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_75
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_97
.LCPI0_75:
	.long	978324733               @ 0x3a500cfd
.LBB0_97:                               @ %if.then199
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_76
	bl	__aeabi_fadd
	b	.LBB0_98
.LCPI0_76:
	.long	3140881249              @ 0xbb360b61
.LBB0_98:                               @ %if.then199
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_77
	b	.LBB0_99
.LCPI0_77:
	.long	1034594987              @ 0x3daaaaab
.LBB0_99:                               @ %if.then199
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_100
.LBB0_100:                              @ %if.then199
	ldr	r1, .LCPI0_78
	bl	__aeabi_fadd
	mov	r5, r0
	mov	r0, r9
	b	.LBB0_101
.LCPI0_78:
	.long	1054244637              @ 0x3ed67f1d
.LBB0_101:                              @ %if.then199
	mov	r1, #-1090519040
	bl	__aeabi_fadd
	mov	r1, #1065353216
	mov	r6, r0
	b	.LBB0_102
.LBB0_102:                              @ %if.then199
	mov	r0, r4
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r5
	b	.LBB0_103
.LBB0_103:                              @ %if.end226
	bl	__aeabi_fadd
	b	.LBB0_131
.LBB0_104:                              @ %if.end57
	ldr	r1, .LCPI0_98
	mov	r0, r9
	mov	r10, r5
	bl	__aeabi_fadd
	b	.LBB0_105
.LCPI0_98:
	.long	3203160844              @ 0xbeec5b0c
.LBB0_105:                              @ %if.end57
	mov	r7, r0
	ldr	r0, .LCPI0_99
	cmp	r4, r0
	movls	r7, r9
	bls	.LBB0_134
	b	.LBB0_108
.LCPI0_99:
	.long	1047343879              @ 0x3e6d3307
.LBB0_106:                              @ %if.else49
	ldr	r0, .LCPI0_95
	mov	r10, r5
	cmp	r4, r0
	blo	.LBB0_133
	b	.LBB0_107
.LCPI0_95:
	.long	1067296288              @ 0x3f9da620
.LBB0_107:                              @ %if.end57.thread361
	ldr	r1, .LCPI0_96
	mov	r0, r9
	bl	__aeabi_fadd
	mov	r7, r0
	mov	r8, #0
	b	.LBB0_108
.LCPI0_96:
	.long	3216709315              @ 0xbfbb16c3
.LBB0_108:                              @ %sw.bb84
	mov	r0, r7
	mov	r1, r7
	bl	__aeabi_fmul
	mov	r9, r0
	b	.LBB0_109
.LBB0_109:                              @ %sw.bb84
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_110
	b	.LBB0_110
.LCPI0_110:
	.long	3114531111              @ 0xb9a3f927
.LBB0_110:                              @ %sw.bb84
	mov	r6, r0
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_111
	b	.LBB0_111
.LCPI0_111:
	.long	979826791               @ 0x3a66f867
.LBB0_111:                              @ %sw.bb84
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_112
.LBB0_112:                              @ %sw.bb84
	ldr	r1, .LCPI0_112
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_113
.LCPI0_112:
	.long	3144775678              @ 0xbb7177fe
.LBB0_113:                              @ %sw.bb84
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_113
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_114
.LCPI0_113:
	.long	1016280893              @ 0x3c93373d
.LBB0_114:                              @ %sw.bb84
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_114
	bl	__aeabi_fadd
	b	.LBB0_115
.LCPI0_114:
	.long	3189186876              @ 0xbe17213c
.LBB0_115:                              @ %sw.bb84
	ldr	r1, .LCPI0_115
	mov	r5, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_116
.LCPI0_115:
	.long	967830007               @ 0x39afe9f7
.LBB0_116:                              @ %sw.bb84
	ldr	r1, .LCPI0_116
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_117
.LCPI0_116:
	.long	3121426565              @ 0xba0d3085
.LBB0_117:                              @ %sw.bb84
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_117
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_118
.LCPI0_117:
	.long	991172249               @ 0x3b141699
.LBB0_118:                              @ %sw.bb84
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_118
	bl	__aeabi_fadd
	b	.LBB0_119
.LCPI0_118:
	.long	3156802814              @ 0xbc28fcfe
.LBB0_119:                              @ %sw.bb84
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_119
	b	.LBB0_120
.LCPI0_119:
	.long	1032083989              @ 0x3d845a15
.LBB0_120:                              @ %sw.bb84
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_121
.LBB0_121:                              @ %sw.bb84
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_122
.LBB0_122:                              @ %sw.bb84
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, .LCPI0_120
	b	.LBB0_123
.LCPI0_120:
	.long	837164114               @ 0x31e61c52
.LBB0_123:                              @ %sw.bb84
	bl	__aeabi_fsub
	ldr	r1, .LCPI0_121
	mov	r5, r0
	mov	r0, r6
	b	.LBB0_124
.LCPI0_121:
	.long	967146347               @ 0x39a57b6b
.LBB0_124:                              @ %sw.bb84
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_122
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_125
.LCPI0_122:
	.long	3132617846              @ 0xbab7f476
.LBB0_125:                              @ %sw.bb84
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_123
	bl	__aeabi_fadd
	b	.LBB0_126
.LCPI0_123:
	.long	1002956551              @ 0x3bc7e707
.LBB0_126:                              @ %sw.bb84
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_124
	b	.LBB0_127
.LCPI0_124:
	.long	3171306823              @ 0xbd064d47
.LBB0_127:                              @ %sw.bb84
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_128
.LBB0_128:                              @ %sw.bb84
	ldr	r1, .LCPI0_125
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r9
	b	.LBB0_129
.LCPI0_125:
	.long	1056422238              @ 0x3ef7b95e
.LBB0_129:                              @ %sw.bb84
	bl	__aeabi_fmul
	mov	r1, r5
	bl	__aeabi_fsub
	ldr	r1, .LCPI0_126
	b	.LBB0_149
.LCPI0_126:
	.long	3187199437              @ 0xbdf8cdcd
.LBB0_130:                              @ %if.else219
	mov	r1, #1065353216
	mov	r0, r4
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul
	b	.LBB0_131
.LBB0_131:                              @ %if.end226
	mov	r7, r0
	b	.LBB0_132
.LBB0_132:                              @ %if.end226
	ldr	r5, [sp]                @ 4-byte Reload
	b	.LBB0_150
.LBB0_133:                              @ %if.end57.thread364
	mov	r1, #1065353216
	mov	r0, r9
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r7, r0
	mov	r8, #0
	b	.LBB0_134
.LBB0_134:                              @ %sw.bb119
	ldr	r1, .LCPI0_100
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_101
	b	.LBB0_135
.LCPI0_100:
	.long	1012612190              @ 0x3c5b3c5e
.LCPI0_101:
	.long	1047164280              @ 0x3e6a7578
.LBB0_135:                              @ %sw.bb119
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_136
.LBB0_136:                              @ %sw.bb119
	ldr	r1, .LCPI0_102
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_137
.LCPI0_102:
	.long	1064979378              @ 0x3f7a4bb2
.LBB0_137:                              @ %sw.bb119
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_103
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_138
.LCPI0_103:
	.long	1069169383              @ 0x3fba3ae7
.LBB0_138:                              @ %sw.bb119
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_104
	bl	__aeabi_fadd
	b	.LBB0_139
.LCPI0_104:
	.long	1059193076              @ 0x3f2200f4
.LBB0_139:                              @ %sw.bb119
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_86
	b	.LBB0_140
.LCPI0_86:
	.long	3181257535              @ 0xbd9e233f
.LBB0_140:                              @ %sw.bb119
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_141
.LBB0_141:                              @ %sw.bb119
	ldr	r1, .LCPI0_105
	mov	r5, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_142
.LCPI0_105:
	.long	995284443               @ 0x3b52d5db
.LBB0_142:                              @ %sw.bb119
	ldr	r1, .LCPI0_106
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_143
.LCPI0_106:
	.long	1037398703              @ 0x3dd572af
.LBB0_143:                              @ %sw.bb119
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_107
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_144
.LCPI0_107:
	.long	1061482463              @ 0x3f44efdf
.LBB0_144:                              @ %sw.bb119
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_108
	bl	__aeabi_fadd
	b	.LBB0_145
.LCPI0_108:
	.long	1074280749              @ 0x4008392d
.LBB0_145:                              @ %sw.bb119
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_109
	b	.LBB0_146
.LCPI0_109:
	.long	1075654334              @ 0x401d2ebe
.LBB0_146:                              @ %sw.bb119
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_147
.LBB0_147:                              @ %sw.bb119
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r6, r0
	mov	r0, r7
	b	.LBB0_148
.LBB0_148:                              @ %sw.bb119
	mov	r1, #-1090519040
	bl	__aeabi_fmul
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fdiv
	mov	r1, r7
	b	.LBB0_149
.LBB0_149:                              @ %if.end226
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd
	mov	r7, r0
	mov	r5, r10
	b	.LBB0_150
.LBB0_150:                              @ %if.end226
	mov	r0, r5
	mov	r1, r7
	bl	__aeabi_fsub
	cmp	r11, #0
	movge	r0, r7
	b	.LBB0_151
.LBB0_151:                              @ %return
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lgammaf_r, .Ltmp0-__lgammaf_r
	.cantunwind
	.fnend


	.weak	lgammaf_r
lgammaf_r = __lgammaf_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
