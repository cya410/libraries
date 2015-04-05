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
	.file	"src/math/pow.bc"
	.globl	pow
	.align	2
	.type	pow,%function
pow:                                    @ @pow
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
	mov	r11, #267386880
	mov	r10, r2
	mov	r7, r1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r6, r0
	bic	r4, r3, #-2147483648
	mov	r5, #0
	orr	r11, r11, #805306368
	orrs	r0, r4, r10
	beq	.LBB0_13
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	cmp	r6, #0
	moveq	r0, #267386880
	orreq	r0, r0, #805306368
	cmpeq	r7, r0
	beq	.LBB0_13
	b	.LBB0_6
.LBB0_6:                                @ %if.end20
	mov	r9, #267386880
	bic	r8, r7, #-2147483648
	orr	r9, r9, #1879048192
	cmp	r8, r9
	bhi	.LBB0_11
	b	.LBB0_7
.LBB0_7:                                @ %lor.lhs.false
	mov	r0, #0
	mov	r1, r6
	moveq	r0, #1
	cmp	r6, #0
	movne	r1, #1
	tst	r1, r0
	bne	.LBB0_11
	b	.LBB0_8
.LBB0_8:                                @ %lor.lhs.false
	cmp	r4, r9
	bhi	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @ %lor.lhs.false31
	cmp	r10, #0
	beq	.LBB0_15
	b	.LBB0_10
.LBB0_10:                               @ %lor.lhs.false31
	cmp	r4, r9
	bne	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %if.then37
	mov	r0, r6
	mov	r1, r7
	mov	r2, r10
	bl	__aeabi_dadd
	b	.LBB0_12
.LBB0_12:                               @ %return
	mov	r5, r0
	mov	r11, r1
	b	.LBB0_13
.LBB0_13:                               @ %return
	mov	r0, r5
	mov	r1, r11
	b	.LBB0_14
.LBB0_14:                               @ %return
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_15:                               @ %if.end38
	str	r3, [sp, #40]           @ 4-byte Spill
	cmp	r7, #0
	bge	.LBB0_21
	b	.LBB0_16
.LBB0_16:                               @ %if.then41
	ldr	r0, .LCPI0_59
	mov	r2, #2
	cmp	r4, r0
	bhi	.LBB0_22
	b	.LBB0_17
.LCPI0_59:
	.long	1128267775              @ 0x433fffff
.LBB0_17:                               @ %if.else
	mov	r0, #267386880
	orr	r0, r0, #805306368
	cmp	r4, r0
	blo	.LBB0_21
	b	.LBB0_18
.LBB0_18:                               @ %if.then47
	ldr	r0, .LCPI0_60
	add	r1, r0, r4, lsr #20
	lsr	r0, r4, #20
	cmp	r1, #21
	blt	.LBB0_23
	b	.LBB0_19
.LCPI0_60:
	.long	4294966273              @ 0xfffffc01
.LBB0_19:                               @ %if.then51
	mov	r1, #51
	mov	r2, #0
	orr	r1, r1, #1024
	sub	r1, r1, r0
	b	.LBB0_20
.LBB0_20:                               @ %if.then51
	lsr	r0, r10, r1
	cmp	r10, r0, lsl r1
	andeq	r0, r0, #1
	rsbeq	r2, r0, #2
	b	.LBB0_22
.LBB0_21:
	mov	r2, #0
	b	.LBB0_22
.LBB0_22:                               @ %if.end79
	cmp	r10, #0
	bne	.LBB0_40
	b	.LBB0_26
.LBB0_23:                               @ %if.else61
	mov	r2, #0
	cmp	r10, #0
	bne	.LBB0_40
	b	.LBB0_24
.LBB0_24:                               @ %if.then64
	mov	r1, #19
	mov	r2, #0
	orr	r1, r1, #1024
	sub	r1, r1, r0
	b	.LBB0_25
.LBB0_25:                               @ %if.then64
	lsr	r0, r4, r1
	cmp	r4, r0, lsl r1
	andeq	r0, r0, #1
	rsbeq	r2, r0, #2
	b	.LBB0_26
.LBB0_26:                               @ %if.then82
	cmp	r4, r9
	bne	.LBB0_30
	b	.LBB0_27
.LBB0_27:                               @ %if.then85
	add	r0, r8, #1048576
	mov	r5, #0
	add	r0, r0, #-1073741824
	orrs	r0, r0, r6
	beq	.LBB0_13
	b	.LBB0_28
.LBB0_28:                               @ %if.else91
	mov	r0, #267386880
	orr	r0, r0, #805306368
	cmp	r8, r0
	blo	.LBB0_33
	b	.LBB0_29
.LBB0_29:                               @ %if.then94
	ldr	r0, [sp, #40]           @ 4-byte Reload
	mov	r11, #0
	cmp	r0, #0
	movlt	r10, r11
	movge	r11, r0
	mov	r5, r10
	b	.LBB0_13
.LBB0_30:                               @ %if.end112
	mov	r0, #267386880
	orr	r0, r0, #805306368
	cmp	r4, r0
	bne	.LBB0_35
	b	.LBB0_31
.LBB0_31:                               @ %if.then115
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_32
.LBB0_32:                               @ %if.then115
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	ldr	r2, [sp, #40]           @ 4-byte Reload
	cmp	r2, #0
	movge	r0, r6
	movge	r1, r7
	b	.LBB0_14
.LBB0_33:                               @ %if.else97
	orrs	r0, r8, r6
	beq	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               @ %if.then101
	ldr	r0, [sp, #40]           @ 4-byte Reload
	cmp	r0, #0
	eor	r11, r0, #-2147483648
	movge	r10, #0
	movge	r11, #0
	mov	r5, r10
	b	.LBB0_13
.LBB0_35:                               @ %if.end120
	ldr	r1, [sp, #40]           @ 4-byte Reload
	cmp	r1, #1073741824
	bne	.LBB0_37
	b	.LBB0_36
.LBB0_36:                               @ %if.then123
	mov	r0, r6
	mov	r1, r7
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_238
.LBB0_37:                               @ %if.end124
	cmp	r7, #0
	blt	.LBB0_40
	b	.LBB0_38
.LBB0_38:                               @ %if.end124
	mov	r0, #266338304
	orr	r0, r0, #805306368
	cmp	r1, r0
	bne	.LBB0_40
	b	.LBB0_39
.LBB0_39:                               @ %if.then130
	mov	r0, r6
	mov	r1, r7
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	sqrt
.LBB0_40:                               @ %if.end133
	mov	r0, r6
	mov	r1, r7
	str	r2, [sp, #36]           @ 4-byte Spill
	bl	fabs
	b	.LBB0_41
.LBB0_41:                               @ %if.end133
	mov	r5, r0
	mov	r11, r1
	cmp	r6, #0
	bne	.LBB0_49
	b	.LBB0_42
.LBB0_42:                               @ %if.then137
	mov	r1, #267386880
	bic	r0, r7, #-1073741824
	orr	r1, r1, #805306368
	cmp	r0, r1
	cmpne	r8, #0
	bne	.LBB0_49
	b	.LBB0_43
.LBB0_43:                               @ %if.then146
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r5
	mov	r3, r11
	b	.LBB0_44
.LBB0_44:                               @ %if.then146
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	ldr	r2, [sp, #40]           @ 4-byte Reload
	cmp	r2, #0
	b	.LBB0_45
.LBB0_45:                               @ %if.then146
	movlt	r11, r1
	movlt	r5, r0
	cmp	r7, #0
	bge	.LBB0_13
	b	.LBB0_46
.LBB0_46:                               @ %if.then154
	ldr	r2, [sp, #36]           @ 4-byte Reload
	add	r0, r8, #1048576
	add	r0, r0, #-1073741824
	orrs	r0, r2, r0
	beq	.LBB0_258
	b	.LBB0_47
.LBB0_47:                               @ %if.else163
	mov	r4, r2
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	b	.LBB0_48
.LBB0_48:                               @ %if.else163
	mov	r3, r11
	bl	__aeabi_dsub
	cmp	r4, #1
	movne	r0, r5
	movne	r1, r11
	b	.LBB0_14
.LBB0_49:                               @ %if.end172
	mov	r0, #0
	mov	r1, #267386880
	cmp	r7, #0
	str	r0, [sp, #32]           @ 4-byte Spill
	ldr	r0, [sp, #36]           @ 4-byte Reload
	orr	r1, r1, #805306368
	bge	.LBB0_54
	b	.LBB0_50
.LBB0_50:                               @ %if.then175
	cmp	r0, #1
	bne	.LBB0_52
	b	.LBB0_51
.LBB0_51:                               @ %if.then185
	mov	r1, #267386880
	orr	r1, r1, #-1342177280
	b	.LBB0_54
.LBB0_52:                               @ %if.then175
	cmp	r0, #0
	bne	.LBB0_54
	b	.LBB0_53
.LBB0_53:                               @ %if.then178
	mov	r0, r6
	mov	r1, r7
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_259
.LBB0_54:                               @ %if.end187
	ldr	r0, .LCPI0_63
	cmp	r4, r0
	blo	.LBB0_58
	b	.LBB0_55
.LCPI0_63:
	.long	1105199105              @ 0x41e00001
.LBB0_55:                               @ %if.then190
	ldr	r0, .LCPI0_87
	cmp	r4, r0
	blo	.LBB0_61
	b	.LBB0_56
.LCPI0_87:
	.long	1139802113              @ 0x43f00001
.LBB0_56:                               @ %if.then193
	ldr	r0, .LCPI0_132
	cmp	r8, r0
	ldr	r0, [sp, #40]           @ 4-byte Reload
	bhi	.LBB0_74
	b	.LBB0_57
.LCPI0_132:
	.long	1072693247              @ 0x3fefffff
.LBB0_57:                               @ %if.then196
	and	r11, r9, r0, asr #31
	mov	r5, #0
	b	.LBB0_13
.LBB0_58:                               @ %if.else259
	mov	r0, #0
	mov	r4, #0
	cmp	r0, r8, lsr #20
	bne	.LBB0_69
	b	.LBB0_59
.LBB0_59:                               @ %if.then262
	mov	r3, #54525952
	str	r1, [sp, #28]           @ 4-byte Spill
	mov	r0, r5
	mov	r1, r11
	b	.LBB0_60
.LBB0_60:                               @ %if.then262
	mov	r2, #0
	orr	r3, r3, #1073741824
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r8, r1
	mvn	r0, #52
	b	.LBB0_70
.LBB0_61:                               @ %if.end208
	ldr	r0, .LCPI0_88
	cmp	r8, r0
	bhi	.LBB0_75
	b	.LBB0_62
.LCPI0_88:
	.long	1072693246              @ 0x3feffffe
.LBB0_62:                               @ %if.then211
	ldr	r4, .LCPI0_106
	ldr	r5, .LCPI0_110
	ldr	r7, [sp, #32]           @ 4-byte Reload
	mov	r6, r1
	b	.LBB0_63
.LCPI0_106:
	.long	2281731484              @ 0x8800759c
.LCPI0_110:
	.long	2117592124              @ 0x7e37e43c
.LBB0_63:                               @ %if.then211
                                        @ kill: R1<def> R6<kill>
	mov	r0, r7
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_64
.LBB0_64:                               @ %if.then211
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_65
.LBB0_65:                               @ %if.then211
	ldr	r4, .LCPI0_100
	ldr	r5, .LCPI0_103
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_66
.LCPI0_100:
	.long	3271095129              @ 0xc2f8f359
.LCPI0_103:
	.long	27618847                @ 0x1a56e1f
.LBB0_66:                               @ %if.then211
	mov	r0, r7
	mov	r1, r6
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_67
.LBB0_67:                               @ %if.then211
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_68
.LBB0_68:                               @ %if.then211
	mov	r5, r0
	ldr	r0, [sp, #40]           @ 4-byte Reload
	mov	r11, r1
	cmp	r0, #0
	movlt	r11, r9
	movlt	r5, r8
	b	.LBB0_13
.LBB0_69:
	str	r1, [sp, #28]           @ 4-byte Spill
	mov	r0, #0
	b	.LBB0_70
.LBB0_70:                               @ %if.end272
	ldr	r1, .LCPI0_64
	add	r0, r0, r8, asr #20
	and	r1, r8, r1
	orr	r2, r1, #267386880
	b	.LBB0_71
.LCPI0_64:
	.long	1048575                 @ 0xfffff
.LBB0_71:                               @ %if.end272
	orr	r9, r2, #805306368
	ldr	r2, .LCPI0_61
	add	r2, r0, r2
	mov	r0, #143
	orr	r0, r0, #235520
	cmp	r1, r0
	blo	.LBB0_84
	b	.LBB0_72
.LCPI0_61:
	.long	4294966273              @ 0xfffffc01
.LBB0_72:                               @ %if.else281
	ldr	r0, .LCPI0_66
	cmp	r1, r0
	bhs	.LBB0_83
	b	.LBB0_73
.LCPI0_66:
	.long	767610                  @ 0xbb67a
.LBB0_73:
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r4, #1
	b	.LBB0_85
.LBB0_74:                               @ %if.then203
	mov	r5, #0
	cmp	r0, #0
	movle	r9, r5
	mov	r11, r9
	b	.LBB0_13
.LBB0_75:                               @ %if.end222
	ldr	r0, .LCPI0_89
	cmp	r8, r0
	blo	.LBB0_239
	b	.LBB0_76
.LCPI0_89:
	.long	1072693249              @ 0x3ff00001
.LBB0_76:                               @ %if.then225
	ldr	r4, .LCPI0_107
	ldr	r5, .LCPI0_111
	ldr	r7, [sp, #32]           @ 4-byte Reload
	mov	r6, r1
	b	.LBB0_77
.LCPI0_107:
	.long	2281731484              @ 0x8800759c
.LCPI0_111:
	.long	2117592124              @ 0x7e37e43c
.LBB0_77:                               @ %if.then225
                                        @ kill: R1<def> R6<kill>
	mov	r0, r7
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_78
.LBB0_78:                               @ %if.then225
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_79
.LBB0_79:                               @ %if.then225
	ldr	r4, .LCPI0_101
	ldr	r5, .LCPI0_104
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_80
.LCPI0_101:
	.long	3271095129              @ 0xc2f8f359
.LCPI0_104:
	.long	27618847                @ 0x1a56e1f
.LBB0_80:                               @ %if.then225
	mov	r0, r7
	mov	r1, r6
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_81
.LBB0_81:                               @ %if.then225
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_82
.LBB0_82:                               @ %if.then225
	mov	r5, r0
	ldr	r0, [sp, #40]           @ 4-byte Reload
	mov	r11, r1
	cmp	r0, #0
	movgt	r11, r9
	movgt	r5, r8
	b	.LBB0_13
.LBB0_83:                               @ %if.else285
	sub	r9, r9, #1048576
	add	r2, r2, #1
	b	.LBB0_84
.LBB0_84:                               @ %do.body290
	str	r2, [sp, #4]            @ 4-byte Spill
	b	.LBB0_85
.LBB0_85:                               @ %do.body290
	ldr	r0, .LCPI0_67
	mov	r8, r4
	mov	r1, r9
	str	r8, [sp, #24]           @ 4-byte Spill
	b	.LBB0_86
.LCPI0_67:
	.long	bp
.LBB0_86:                               @ %do.body290
	ldr	r11, [r0, r8, lsl #3]!
	ldr	r7, [r0, #4]
	mov	r0, r5
	mov	r2, r11
	b	.LBB0_87
.LBB0_87:                               @ %do.body290
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r4, r1
	b	.LBB0_88
.LBB0_88:                               @ %do.body290
	mov	r0, r11
	mov	r1, r7
	mov	r2, r5
	mov	r3, r9
	b	.LBB0_89
.LBB0_89:                               @ %do.body290
	str	r6, [sp, #8]            @ 4-byte Spill
	str	r4, [sp, #12]           @ 4-byte Spill
	bl	__aeabi_dadd
	mov	r3, r1
	b	.LBB0_90
.LBB0_90:                               @ %do.body290
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	b	.LBB0_91
.LBB0_91:                               @ %do.body290
	bl	__aeabi_ddiv
	mov	r2, r6
	mov	r3, r4
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB0_92
.LBB0_92:                               @ %do.body290
	str	r1, [sp, #16]           @ 4-byte Spill
	bl	__aeabi_dmul
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, #536870912
	b	.LBB0_93
.LBB0_93:                               @ %do.body290
	mov	r6, r1
	mov	r2, r11
	mov	r3, r7
	orr	r0, r0, r9, asr #1
	b	.LBB0_94
.LBB0_94:                               @ %do.body290
	add	r0, r0, r8, lsl #18
	add	r4, r0, #524288
	mov	r0, #0
	mov	r1, r4
	b	.LBB0_95
.LBB0_95:                               @ %do.body290
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_96
.LBB0_96:                               @ %do.body290
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_97
.LBB0_97:                               @ %do.body290
	mov	r0, #0
	mov	r1, r6
	bl	__aeabi_dmul
	mov	r5, r0
	b	.LBB0_98
.LBB0_98:                               @ %do.body290
	mov	r7, r1
	mov	r0, #0
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_99
.LBB0_99:                               @ %do.body290
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_100
.LBB0_100:                              @ %do.body290
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	__aeabi_dsub
	mov	r2, r5
	b	.LBB0_101
.LBB0_101:                              @ %do.body290
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_102
.LBB0_102:                              @ %do.body290
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__aeabi_dmul
	mov	r9, r0
	b	.LBB0_103
.LBB0_103:                              @ %do.body290
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r1, [sp, #20]           @ 4-byte Spill
	mov	r1, r6
	mov	r3, r6
	b	.LBB0_104
.LBB0_104:                              @ %do.body290
	mov	r8, r6
	str	r9, [sp, #16]           @ 4-byte Spill
	mov	r2, r0
	mov	r7, r0
	b	.LBB0_105
.LBB0_105:                              @ %do.body290
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_68
	ldr	r3, .LCPI0_69
	mov	r6, r0
	b	.LBB0_106
.LCPI0_68:
	.long	1246056175              @ 0x4a454eef
.LCPI0_69:
	.long	1070235176              @ 0x3fca7e28
.LBB0_106:                              @ %do.body290
	mov	r11, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R11<kill>
	bl	__aeabi_dmul
	b	.LBB0_107
.LBB0_107:                              @ %do.body290
	ldr	r2, .LCPI0_70
	ldr	r3, .LCPI0_71
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_108
.LCPI0_70:
	.long	2479479653              @ 0x93c9db65
.LCPI0_71:
	.long	1070433866              @ 0x3fcd864a
.LBB0_108:                              @ %do.body290
	mov	r3, r1
	mov	r0, r6
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_109
.LBB0_109:                              @ %do.body290
	ldr	r2, .LCPI0_72
	ldr	r3, .LCPI0_73
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_110
.LCPI0_72:
	.long	2837266689              @ 0xa91d4101
.LCPI0_73:
	.long	1070691424              @ 0x3fd17460
.LBB0_110:                              @ %do.body290
	mov	r3, r1
	mov	r0, r6
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_111
.LBB0_111:                              @ %do.body290
	ldr	r2, .LCPI0_74
	ldr	r3, .LCPI0_75
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_112
.LCPI0_74:
	.long	1368335949              @ 0x518f264d
.LCPI0_75:
	.long	1070945621              @ 0x3fd55555
.LBB0_112:                              @ %do.body290
	mov	r3, r1
	mov	r0, r6
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_113
.LBB0_113:                              @ %do.body290
	ldr	r2, .LCPI0_77
	ldr	r3, .LCPI0_78
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_114
.LCPI0_77:
	.long	3681528831              @ 0xdb6fabff
.LCPI0_78:
	.long	1071345078              @ 0x3fdb6db6
.LBB0_114:                              @ %do.body290
	mov	r3, r1
	mov	r0, r6
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_115
.LBB0_115:                              @ %do.body290
	ldr	r2, .LCPI0_79
	ldr	r3, .LCPI0_80
	bl	__aeabi_dadd
	mov	r4, r0
	b	.LBB0_116
.LCPI0_79:
	.long	858993411               @ 0x33333303
.LCPI0_80:
	.long	1071854387              @ 0x3fe33333
.LBB0_116:                              @ %do.body290
	mov	r5, r1
	mov	r0, r6
	mov	r1, r11
	mov	r2, r6
	b	.LBB0_117
.LBB0_117:                              @ %do.body290
	mov	r3, r11
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_118
.LBB0_118:                              @ %do.body290
	bl	__aeabi_dmul
	mov	r5, r1
	mov	r1, r8
	mov	r4, r0
	b	.LBB0_119
.LBB0_119:                              @ %do.body290
	mov	r0, r7
	mov	r2, #0
	mov	r3, r1
                                        @ kill: R8<def> R1<kill>
	b	.LBB0_120
.LBB0_120:                              @ %do.body290
	bl	__aeabi_dadd
	mov	r2, r9
	ldr	r9, [sp, #20]           @ 4-byte Reload
	mov	r3, r9
	b	.LBB0_121
.LBB0_121:                              @ %do.body290
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_122
.LBB0_122:                              @ %do.body290
	mov	r11, r0
	mov	r7, r1
	mov	r0, #0
	mov	r1, r8
	b	.LBB0_123
.LBB0_123:                              @ %do.body290
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dmul
	mov	r3, #524288
	b	.LBB0_124
.LBB0_124:                              @ %do.body290
	mov	r4, r0
	mov	r5, r1
	mov	r2, #0
	orr	r3, r3, #1073741824
	b	.LBB0_125
.LBB0_125:                              @ %do.body290
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dadd
	mov	r2, r11
	b	.LBB0_126
.LBB0_126:                              @ %do.body290
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r3, #524288
	mov	r6, r1
	b	.LBB0_127
.LBB0_127:                              @ %do.body290
	mov	r0, #0
	mov	r2, #0
	orr	r3, r3, #-1073741824
                                        @ kill: R1<def> R6<kill>
	b	.LBB0_128
.LBB0_128:                              @ %do.body290
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	b	.LBB0_129
.LBB0_129:                              @ %do.body290
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r7
	b	.LBB0_130
.LBB0_130:                              @ %do.body290
	bl	__aeabi_dsub
	mov	r2, r0
	ldr	r0, [sp, #36]           @ 4-byte Reload
	mov	r3, r1
	b	.LBB0_131
.LBB0_131:                              @ %do.body290
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r4, r0
	ldr	r0, [sp, #16]           @ 4-byte Reload
	b	.LBB0_132
.LBB0_132:                              @ %do.body290
	mov	r5, r1
	mov	r1, r9
	mov	r2, #0
	mov	r3, r6
	b	.LBB0_133
.LBB0_133:                              @ %do.body290
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_134
.LBB0_134:                              @ %do.body290
	mov	r5, r0
	mov	r7, r1
	mov	r0, #0
	mov	r1, r8
	b	.LBB0_135
.LBB0_135:                              @ %do.body290
	mov	r2, #0
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r6, r0
	b	.LBB0_136
.LBB0_136:                              @ %do.body290
	mov	r4, r1
	mov	r2, r5
	mov	r3, r7
                                        @ kill: R0<def> R6<kill>
	b	.LBB0_137
.LBB0_137:                              @ %do.body290
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dadd
	mov	r8, r1
	mov	r0, #0
	b	.LBB0_138
.LBB0_138:                              @ %do.body290
	mov	r2, r6
	mov	r3, r4
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dsub
	b	.LBB0_139
.LBB0_139:                              @ %do.body290
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r7
	b	.LBB0_140
.LBB0_140:                              @ %do.body290
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_81
	ldr	r5, .LCPI0_82
	mov	r3, r5
	b	.LBB0_141
.LCPI0_81:
	.long	3694789629              @ 0xdc3a03fd
.LCPI0_82:
	.long	1072613129              @ 0x3feec709
.LBB0_141:                              @ %do.body290
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_83
	ldr	r3, .LCPI0_84
	mov	r4, r0
	b	.LBB0_142
.LCPI0_83:
	.long	341508597               @ 0x145b01f5
.LCPI0_84:
	.long	3191746528              @ 0xbe3e2fe0
.LBB0_142:                              @ %do.body290
	mov	r6, r1
	mov	r0, #0
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_143
.LBB0_143:                              @ %do.body290
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_144
.LBB0_144:                              @ %do.body290
	bl	__aeabi_dadd
	mov	r3, r1
	ldr	r1, .LCPI0_85
	ldr	r4, [sp, #24]           @ 4-byte Reload
	b	.LBB0_145
.LCPI0_85:
	.long	dp_l
.LBB0_145:                              @ %do.body290
	mov	r2, r0
	ldr	r0, [r1, r4, lsl #3]!
	ldr	r1, [r1, #4]
	bl	__aeabi_dadd
	b	.LBB0_146
.LBB0_146:                              @ %do.body290
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0
	mov	r1, r8
	b	.LBB0_147
.LBB0_147:                              @ %do.body290
	mov	r2, #-536870912
	mov	r3, r5
	str	r6, [sp, #16]           @ 4-byte Spill
	str	r7, [sp, #20]           @ 4-byte Spill
	b	.LBB0_148
.LBB0_148:                              @ %do.body290
	bl	__aeabi_dmul
	mov	r2, r6
	mov	r3, r7
	str	r1, [sp, #12]           @ 4-byte Spill
	b	.LBB0_149
.LBB0_149:                              @ %do.body290
	mov	r9, r0
	bl	__aeabi_dadd
	mov	r2, r0
	ldr	r0, .LCPI0_86
	b	.LBB0_150
.LCPI0_86:
	.long	dp_h
.LBB0_150:                              @ %do.body290
	mov	r3, r1
	mov	r1, #0
	ldr	r6, [r0, r4, lsl #3]!
	str	r1, [sp, #36]           @ 4-byte Spill
	b	.LBB0_151
.LBB0_151:                              @ %do.body290
	ldr	r8, [r0, #4]
	mov	r0, r6
	mov	r1, r8
	bl	__aeabi_dadd
	b	.LBB0_152
.LBB0_152:                              @ %do.body290
	mov	r4, r0
	ldr	r0, [sp, #4]            @ 4-byte Reload
	mov	r11, r1
	bl	__aeabi_i2d
	b	.LBB0_153
.LBB0_153:                              @ %do.body290
	mov	r5, r0
	mov	r7, r1
	mov	r2, r4
	mov	r3, r11
	b	.LBB0_154
.LBB0_154:                              @ %do.body290
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dadd
	mov	r11, r1
	b	.LBB0_155
.LBB0_155:                              @ %do.body290
	mov	r0, #0
	mov	r2, r5
	mov	r3, r7
                                        @ kill: R1<def> R11<kill>
	b	.LBB0_156
.LBB0_156:                              @ %do.body290
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r8
	bl	__aeabi_dsub
	b	.LBB0_157
.LBB0_157:                              @ %do.body290
	ldr	r3, [sp, #12]           @ 4-byte Reload
	mov	r2, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	b	.LBB0_158
.LBB0_158:                              @ %if.end407
	bl	__aeabi_dsub
	ldr	r5, [sp, #40]           @ 4-byte Reload
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_159
.LBB0_159:                              @ %if.end407
	mov	r0, r10
	mov	r2, #0
	mov	r1, r5
	mov	r3, r5
	b	.LBB0_160
.LBB0_160:                              @ %if.end407
	bl	__aeabi_dsub
	ldr	r6, [sp, #36]           @ 4-byte Reload
	mov	r3, r11
	mov	r2, r6
	b	.LBB0_161
.LBB0_161:                              @ %if.end407
	bl	__aeabi_dmul
	mov	r7, r0
	mov	r4, r1
	mov	r0, r8
	b	.LBB0_162
.LBB0_162:                              @ %if.end407
	mov	r1, r9
	mov	r2, r10
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_163
.LBB0_163:                              @ %if.end407
	mov	r2, r7
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r10, r0
	b	.LBB0_164
.LBB0_164:                              @ %if.end407
	mov	r8, r1
	mov	r0, #0
	mov	r1, r5
	mov	r2, r6
	b	.LBB0_165
.LBB0_165:                              @ %if.end407
	mov	r3, r11
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r6, r1
	b	.LBB0_166
.LBB0_166:                              @ %if.end407
	mov	r2, r10
	mov	r3, r8
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R6<kill>
	b	.LBB0_167
.LBB0_167:                              @ %if.end407
	bl	__aeabi_dadd
	mov	r7, r0
	mov	r0, #9437184
	mov	r5, r1
	orr	r0, r0, #1073741824
	cmp	r5, r0
	blt	.LBB0_170
	b	.LBB0_168
.LBB0_168:                              @ %if.then433
	ldr	r1, [sp, #28]           @ 4-byte Reload
	add	r0, r5, #258998272
	add	r0, r0, #-1342177280
	orrs	r0, r0, r7
	beq	.LBB0_178
	b	.LBB0_169
.LBB0_169:                              @ %if.then438
	ldr	r4, .LCPI0_108
	ldr	r5, .LCPI0_112
	ldr	r0, [sp, #32]           @ 4-byte Reload
	b	.LBB0_187
.LCPI0_108:
	.long	2281731484              @ 0x8800759c
.LCPI0_112:
	.long	2117592124              @ 0x7e37e43c
.LBB0_170:                              @ %if.else450
	ldr	r0, .LCPI0_97
	ldr	r1, .LCPI0_98
	and	r0, r5, r0
	cmp	r0, r1
	blo	.LBB0_188
	b	.LBB0_171
.LCPI0_97:
	.long	2147482624              @ 0x7ffffc00
.LCPI0_98:
	.long	1083231232              @ 0x4090cc00
.LBB0_171:                              @ %if.then454
	ldr	r0, .LCPI0_99
	add	r0, r5, r0
	orrs	r0, r0, r7
	bne	.LBB0_177
	b	.LBB0_172
.LCPI0_99:
	.long	1064252416              @ 0x3f6f3400
.LBB0_172:                              @ %if.end462
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	mov	r3, r6
	b	.LBB0_173
.LBB0_173:                              @ %if.end462
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r9, r1
	mov	r0, r10
	b	.LBB0_174
.LBB0_174:                              @ %if.end462
	mov	r1, r8
	mov	r2, r7
	mov	r3, r9
	bl	__aeabi_dcmpgt
	b	.LBB0_175
.LBB0_175:                              @ %if.end462
	mov	r11, r0
	mov	r0, r10
	mov	r1, r8
	mov	r2, r7
	b	.LBB0_176
.LBB0_176:                              @ %if.end462
	mov	r3, r9
	bl	__aeabi_dcmpun
	orrs	r0, r0, r11
	bne	.LBB0_188
	b	.LBB0_177
.LBB0_177:                              @ %if.then459
	ldr	r4, .LCPI0_102
	ldr	r5, .LCPI0_105
	b	.LBB0_186
.LCPI0_102:
	.long	3271095129              @ 0xc2f8f359
.LCPI0_105:
	.long	27618847                @ 0x1a56e1f
.LBB0_178:                              @ %if.end441
	ldr	r2, .LCPI0_91
	ldr	r3, .LCPI0_114
	mov	r0, r10
	mov	r1, r8
	b	.LBB0_179
.LCPI0_91:
	.long	1697350398              @ 0x652b82fe
.LCPI0_114:
	.long	1016534343              @ 0x3c971547
.LBB0_179:                              @ %if.end441
	bl	__aeabi_dadd
	mov	r11, r0
	str	r1, [sp, #40]           @ 4-byte Spill
	mov	r0, r7
	b	.LBB0_180
.LBB0_180:                              @ %if.end441
	mov	r1, r5
	mov	r2, r4
	mov	r3, r6
	str	r11, [sp, #24]          @ 4-byte Spill
	b	.LBB0_181
.LBB0_181:                              @ %if.end441
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r0, r11
	ldr	r11, [sp, #40]          @ 4-byte Reload
	b	.LBB0_182
.LBB0_182:                              @ %if.end441
	mov	r9, r1
	mov	r2, r7
	mov	r3, r9
	mov	r1, r11
	b	.LBB0_183
.LBB0_183:                              @ %if.end441
	bl	__aeabi_dcmple
	str	r0, [sp, #36]           @ 4-byte Spill
	ldr	r0, [sp, #24]           @ 4-byte Reload
	mov	r1, r11
	b	.LBB0_184
.LBB0_184:                              @ %if.end441
	mov	r2, r7
	mov	r3, r9
	bl	__aeabi_dcmpun
	ldr	r1, [sp, #36]           @ 4-byte Reload
	orrs	r0, r0, r1
	bne	.LBB0_188
	b	.LBB0_185
.LBB0_185:                              @ %if.then446
	ldr	r4, .LCPI0_109
	ldr	r5, .LCPI0_113
	b	.LBB0_186
.LCPI0_109:
	.long	2281731484              @ 0x8800759c
.LCPI0_113:
	.long	2117592124              @ 0x7e37e43c
.LBB0_186:                              @ %return
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	b	.LBB0_187
.LBB0_187:                              @ %return
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_238
.LBB0_188:                              @ %if.end471
	ldr	r1, .LCPI0_115
	bic	r0, r5, #-2147483648
	cmp	r0, r1
	blo	.LBB0_195
	b	.LBB0_189
.LCPI0_115:
	.long	1071644673              @ 0x3fe00001
.LBB0_189:                              @ %if.then477
	ldr	r1, .LCPI0_116
	ldr	r3, .LCPI0_65
	mov	r2, #19
	mov	r12, #0
	b	.LBB0_190
.LCPI0_65:
	.long	1048575                 @ 0xfffff
.LCPI0_116:
	.long	4294966274              @ 0xfffffc02
.LBB0_190:                              @ %if.then477
	cmp	r5, #0
	orr	r2, r2, #1024
	add	r0, r1, r0, lsr #20
	mov	r1, #1048576
	b	.LBB0_191
.LBB0_191:                              @ %if.then477
	add	r0, r5, r1, lsr r0
	mov	r1, #255
	orr	r1, r1, #1792
	and	r7, r0, r3
	b	.LBB0_192
.LBB0_192:                              @ %if.then477
	and	lr, r1, r0, lsr #20
	orr	r7, r7, #1048576
	sub	r2, r2, lr
	lsr	r1, r7, r2
	b	.LBB0_193
.LBB0_193:                              @ %if.then477
	sublt	r1, r12, r7, lsr r2
	str	r1, [sp, #40]           @ 4-byte Spill
	ldr	r2, .LCPI0_62
	add	r1, lr, r2
	b	.LBB0_194
.LCPI0_62:
	.long	4294966273              @ 0xfffffc01
.LBB0_194:                              @ %if.then477
	mov	r2, #0
	bic	r3, r0, r3, lsr r1
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r6, r1
	b	.LBB0_196
.LBB0_195:
	mov	r0, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB0_196
.LBB0_196:                              @ %if.end507
	mov	r0, r10
	mov	r1, r8
	mov	r2, r4
	mov	r3, r6
	b	.LBB0_197
.LBB0_197:                              @ %if.end507
	bl	__aeabi_dadd
	mov	r5, r1
	mov	r0, #0
	mov	r2, r4
	b	.LBB0_198
.LBB0_198:                              @ %if.end507
	mov	r3, r6
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_199
.LBB0_199:                              @ %if.end507
	mov	r3, r1
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_dsub
	b	.LBB0_200
.LBB0_200:                              @ %if.end507
	ldr	r2, .LCPI0_117
	ldr	r3, .LCPI0_118
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_119
	b	.LBB0_201
.LCPI0_117:
	.long	4277811695              @ 0xfefa39ef
.LCPI0_118:
	.long	1072049730              @ 0x3fe62e42
.LCPI0_119:
	.long	212364345               @ 0xca86c39
.LBB0_201:                              @ %if.end507
	ldr	r3, .LCPI0_120
	mov	r4, r0
	mov	r6, r1
	mov	r0, #0
	b	.LBB0_202
.LCPI0_120:
	.long	3189791841              @ 0xbe205c61
.LBB0_202:                              @ %if.end507
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_203
.LBB0_203:                              @ %if.end507
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r4, r0
	b	.LBB0_204
.LBB0_204:                              @ %if.end507
	mov	r6, r1
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_205
.LBB0_205:                              @ %if.end507
	str	r4, [sp, #36]           @ 4-byte Spill
	str	r6, [sp, #24]           @ 4-byte Spill
	ldr	r3, .LCPI0_121
	bl	__aeabi_dmul
	b	.LBB0_206
.LCPI0_121:
	.long	1072049731              @ 0x3fe62e43
.LBB0_206:                              @ %if.end507
	mov	r11, r0
	mov	r2, r4
	mov	r3, r6
	str	r1, [sp, #20]           @ 4-byte Spill
	b	.LBB0_207
.LBB0_207:                              @ %if.end507
                                        @ kill: R0<def> R11<kill>
	bl	__aeabi_dadd
	mov	r10, r0
	mov	r9, r1
	b	.LBB0_208
.LBB0_208:                              @ %if.end507
	mov	r2, r10
	mov	r3, r9
                                        @ kill: R0<def> R10<kill>
                                        @ kill: R1<def> R9<kill>
	b	.LBB0_209
.LBB0_209:                              @ %if.end507
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_122
	ldr	r3, .LCPI0_123
	mov	r4, r0
	b	.LBB0_210
.LCPI0_122:
	.long	1925096656              @ 0x72bea4d0
.LCPI0_123:
	.long	1046886249              @ 0x3e663769
.LBB0_210:                              @ %if.end507
	mov	r8, r1
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dmul
	b	.LBB0_211
.LBB0_211:                              @ %if.end507
	ldr	r2, .LCPI0_124
	ldr	r3, .LCPI0_125
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_212
.LCPI0_124:
	.long	3318901745              @ 0xc5d26bf1
.LCPI0_125:
	.long	3199974721              @ 0xbebbbd41
.LBB0_212:                              @ %if.end507
	mov	r3, r1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_213
.LBB0_213:                              @ %if.end507
	ldr	r2, .LCPI0_126
	ldr	r3, .LCPI0_127
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_214
.LCPI0_126:
	.long	2938494508              @ 0xaf25de2c
.LCPI0_127:
	.long	1058100842              @ 0x3f11566a
.LBB0_214:                              @ %if.end507
	mov	r3, r1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_215
.LBB0_215:                              @ %if.end507
	ldr	r2, .LCPI0_128
	ldr	r3, .LCPI0_129
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_216
.LCPI0_128:
	.long	381599123               @ 0x16bebd93
.LCPI0_129:
	.long	3211182444              @ 0xbf66c16c
.LBB0_216:                              @ %if.end507
	mov	r3, r1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_217
.LBB0_217:                              @ %if.end507
	ldr	r2, .LCPI0_130
	ldr	r3, .LCPI0_131
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_218
.LCPI0_130:
	.long	1431655742              @ 0x5555553e
.LCPI0_131:
	.long	1069897045              @ 0x3fc55555
.LBB0_218:                              @ %if.end507
	mov	r3, r1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_219
.LBB0_219:                              @ %if.end507
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r9
	b	.LBB0_220
.LBB0_220:                              @ %if.end507
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r7, r1
	mov	r0, r10
	b	.LBB0_221
.LBB0_221:                              @ %if.end507
	mov	r1, r9
	mov	r2, r4
	mov	r3, r7
	bl	__aeabi_dmul
	b	.LBB0_222
.LBB0_222:                              @ %if.end507
	mov	r5, r0
	mov	r6, r1
	mov	r0, r4
	mov	r1, r7
	b	.LBB0_223
.LBB0_223:                              @ %if.end507
	mov	r2, #0
	mov	r3, #-1073741824
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_224
.LBB0_224:                              @ %if.end507
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_ddiv
	b	.LBB0_225
.LBB0_225:                              @ %if.end507
	ldr	r3, [sp, #20]           @ 4-byte Reload
	mov	r4, r0
	mov	r7, r1
	mov	r0, r10
	b	.LBB0_226
.LBB0_226:                              @ %if.end507
	mov	r1, r9
	mov	r2, r11
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_227
.LBB0_227:                              @ %if.end507
	mov	r3, r1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__aeabi_dsub
	b	.LBB0_228
.LBB0_228:                              @ %if.end507
	mov	r5, r0
	mov	r6, r1
	mov	r0, r10
	mov	r1, r9
	b	.LBB0_229
.LBB0_229:                              @ %if.end507
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_230
.LBB0_230:                              @ %if.end507
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_231
.LBB0_231:                              @ %if.end507
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r7
	b	.LBB0_232
.LBB0_232:                              @ %if.end507
	bl	__aeabi_dsub
	mov	r2, r10
	mov	r3, r9
	bl	__aeabi_dsub
	b	.LBB0_233
.LBB0_233:                              @ %if.end507
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	b	.LBB0_234
.LBB0_234:                              @ %if.end507
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	ldr	r2, [sp, #40]           @ 4-byte Reload
	mov	r7, r0
	b	.LBB0_235
.LBB0_235:                              @ %if.end507
	add	r3, r1, r2, lsl #20
	asr	r0, r3, #20
	cmp	r0, #0
	bgt	.LBB0_237
	b	.LBB0_236
.LBB0_236:                              @ %if.then557
	mov	r0, r7
	bl	scalbn
	mov	r7, r0
	mov	r3, r1
	b	.LBB0_237
.LBB0_237:                              @ %do.body560
	ldr	r1, [sp, #28]           @ 4-byte Reload
	ldr	r0, [sp, #32]           @ 4-byte Reload
	mov	r2, r7
	b	.LBB0_238
.LBB0_238:                              @ %return
	bl	__aeabi_dmul
	b	.LBB0_12
.LBB0_239:                              @ %if.end236
	mov	r3, #267386880
	mov	r0, #0
	str	r1, [sp, #28]           @ 4-byte Spill
	mov	r1, r11
	b	.LBB0_240
.LBB0_240:                              @ %if.end236
	mov	r2, #0
	str	r0, [sp, #36]           @ 4-byte Spill
	orr	r3, r3, #-1342177280
	mov	r0, r5
	b	.LBB0_241
.LBB0_241:                              @ %if.end236
	bl	__aeabi_dadd
	mov	r3, #265289728
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_242
.LBB0_242:                              @ %if.end236
	mov	r2, #0
	orr	r3, r3, #-1342177280
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_243
.LBB0_243:                              @ %if.end236
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_90
	ldr	r3, .LCPI0_76
	bl	__aeabi_dadd
	b	.LBB0_244
.LCPI0_76:
	.long	1070945621              @ 0x3fd55555
.LCPI0_90:
	.long	1431655765              @ 0x55555555
.LBB0_244:                              @ %if.end236
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_245
.LBB0_245:                              @ %if.end236
	bl	__aeabi_dmul
	mov	r3, r1
	mov	r1, #266338304
	mov	r2, r0
	b	.LBB0_246
.LBB0_246:                              @ %if.end236
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	mov	r6, r0
	b	.LBB0_247
.LBB0_247:                              @ %if.end236
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	b	.LBB0_248
.LBB0_248:                              @ %if.end236
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_249
.LBB0_249:                              @ %if.end236
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_92
	ldr	r3, .LCPI0_93
	bl	__aeabi_dmul
	b	.LBB0_250
.LCPI0_92:
	.long	1697350398              @ 0x652b82fe
.LCPI0_93:
	.long	3220641095              @ 0xbff71547
.LBB0_250:                              @ %if.end236
	ldr	r2, .LCPI0_94
	ldr	r3, .LCPI0_95
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_251
.LCPI0_94:
	.long	4166901572              @ 0xf85ddf44
.LCPI0_95:
	.long	1045736971              @ 0x3e54ae0b
.LBB0_251:                              @ %if.end236
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r6
	b	.LBB0_252
.LBB0_252:                              @ %if.end236
	mov	r3, r7
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_96
	mov	r8, r0
	b	.LBB0_253
.LCPI0_96:
	.long	1073157447              @ 0x3ff71547
.LBB0_253:                              @ %if.end236
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	mov	r2, #1610612736
	b	.LBB0_254
.LBB0_254:                              @ %if.end236
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r6, r1
	mov	r2, r8
	b	.LBB0_255
.LBB0_255:                              @ %if.end236
	mov	r3, r7
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dadd
	b	.LBB0_256
.LBB0_256:                              @ %if.end236
	mov	r11, r1
	mov	r0, #0
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_257
.LBB0_257:                              @ %if.end236
                                        @ kill: R1<def> R11<kill>
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r7
	b	.LBB0_158
.LBB0_258:                              @ %if.then159
	mov	r0, r5
	mov	r1, r11
	mov	r2, r5
	mov	r3, r11
	b	.LBB0_259
.LBB0_259:                              @ %return
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_ddiv
	b	.LBB0_12
.Ltmp0:
	.size	pow, .Ltmp0-pow
	.cantunwind
	.fnend

	.type	bp,%object              @ @bp
	.section	.rodata.cst16,"aM",%progbits,16
	.align	3
bp:
	.long	0                       @ double 1.000000e+00
	.long	1072693248
	.long	0                       @ double 1.500000e+00
	.long	1073217536
	.size	bp, 16

	.type	dp_l,%object            @ @dp_l
	.align	3
dp_l:
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	1137692678              @ double 1.350039e-08
	.long	1045233131
	.size	dp_l, 16

	.type	dp_h,%object            @ @dp_h
	.align	3
dp_h:
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	1073741824              @ double 5.849625e-01
	.long	1071822851
	.size	dp_h, 16


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
