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
	.file	"src/math/fma.bc"
	.globl	fma
	.align	2
	.type	fma,%function
fma:                                    @ @fma
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#76
	sub	sp, sp, #76
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r2
	ldr	r2, .LCPI0_2
	mov	r4, r0
	b	.LBB0_4
.LCPI0_2:
	.long	2146435071              @ 0x7fefffff
.LBB0_4:                                @ %entry
	mov	r0, #267386880
	mov	r7, r1
	ldr	r5, [sp, #116]
	ldr	r11, [sp, #112]
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r6, r3
	orr	r0, r0, #1879048192
	and	r1, r7, r0
	cmp	r1, r2
	andls	r1, r6, r0
	cmpls	r1, r0
	bhs	.LBB0_11
	b	.LBB0_6
.LBB0_6:                                @ %cond.true34
	ldr	r1, .LCPI0_3
	and	r0, r5, r0
	cmp	r0, r1
	bhi	.LBB0_14
	b	.LBB0_7
.LCPI0_3:
	.long	2146435071              @ 0x7fefffff
.LBB0_7:                                @ %if.end44
	mov	r0, r4
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_8
.LBB0_8:                                @ %if.end44
	mov	r0, r9
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @ %if.end53
	mov	r0, r11
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_15
	b	.LBB0_10
.LBB0_10:                               @ %if.then56
	mov	r0, r4
	mov	r1, r7
	mov	r2, r9
	mov	r3, r6
	bl	__aeabi_dmul
	b	.LBB0_13
.LBB0_11:                               @ %if.then
	mov	r0, r4
	mov	r1, r7
	mov	r2, r9
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, r11
	mov	r3, r5
	b	.LBB0_12
.LBB0_12:                               @ %return
	bl	__aeabi_dadd
	b	.LBB0_13
.LBB0_13:                               @ %return
	mov	r11, r0
	mov	r5, r1
	b	.LBB0_14
.LBB0_14:                               @ %return
	mov	r0, r11
	mov	r1, r5
	add	sp, sp, #76
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_15:                               @ %if.end58
	add	r2, sp, #72
	mov	r0, r4
	mov	r1, r7
	bl	frexp
	b	.LBB0_16
.LBB0_16:                               @ %if.end58
	mov	r10, r0
	str	r1, [sp, #52]           @ 4-byte Spill
	add	r2, sp, #68
	mov	r0, r9
	b	.LBB0_17
.LBB0_17:                               @ %if.end58
	mov	r1, r6
	bl	frexp
	mov	r6, r0
	mov	r9, r1
	b	.LBB0_18
.LBB0_18:                               @ %if.end58
	add	r2, sp, #64
	mov	r0, r11
	mov	r1, r5
	bl	frexp
	b	.LBB0_19
.LBB0_19:                               @ %if.end58
	mov	r7, r0
	mov	r4, r1
	bl	fegetround
	ldr	r2, [sp, #72]
	b	.LBB0_20
.LBB0_20:                               @ %if.end58
	ldr	r1, [sp, #68]
	add	r2, r1, r2
	ldr	r1, [sp, #64]
	sub	r1, r2, r1
	cmn	r1, #53
	blt	.LBB0_14
	b	.LBB0_21
.LBB0_21:                               @ %if.end67
	str	r0, [sp, #4]            @ 4-byte Spill
	cmp	r1, #106
	bgt	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               @ %if.then70
	rsb	r2, r1, #0
	mov	r0, r7
	mov	r1, r4
	bl	scalbn
	b	.LBB0_24
.LBB0_23:                               @ %if.else
	mov	r0, #0
	mov	r1, #1048576
	mov	r2, r7
	mov	r3, r4
	bl	copysign
	b	.LBB0_24
.LBB0_24:                               @ %if.end74
	ldr	r8, [sp, #52]           @ 4-byte Reload
	mov	r7, #27262976
	str	r0, [sp, #48]           @ 4-byte Spill
	str	r1, [sp, #44]           @ 4-byte Spill
	b	.LBB0_25
.LBB0_25:                               @ %if.end74
	mov	r0, r10
	mov	r2, #33554432
	orr	r7, r7, #1073741824
	mov	r3, r7
	b	.LBB0_26
.LBB0_26:                               @ %if.end74
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_27
.LBB0_27:                               @ %if.end74
	mov	r0, r10
	mov	r1, r8
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_28
.LBB0_28:                               @ %if.end74
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_29
.LBB0_29:                               @ %if.end74
	mov	r1, r5
	bl	__aeabi_dadd
	str	r10, [sp, #32]          @ 4-byte Spill
	mov	r10, r0
	b	.LBB0_30
.LBB0_30:                               @ %if.end74
	mov	r5, r1
	mov	r0, r6
	mov	r1, r9
	mov	r2, #33554432
	b	.LBB0_31
.LBB0_31:                               @ %if.end74
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r7, r0
	mov	r4, r6
	b	.LBB0_32
.LBB0_32:                               @ %if.end74
	mov	r6, r1
	mov	r1, r9
	mov	r0, r4
	mov	r2, r7
	b	.LBB0_33
.LBB0_33:                               @ %if.end74
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_34
.LBB0_34:                               @ %if.end74
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r11, r0
	b	.LBB0_35
.LBB0_35:                               @ %if.end74
	mov	r7, r1
	mov	r0, r4
	mov	r1, r9
	mov	r2, r11
	b	.LBB0_36
.LBB0_36:                               @ %if.end74
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_37
.LBB0_37:                               @ %if.end74
	mov	r0, r10
	mov	r1, r5
	str	r2, [sp, #40]           @ 4-byte Spill
	str	r3, [sp, #36]           @ 4-byte Spill
	b	.LBB0_38
.LBB0_38:                               @ %if.end74
	bl	__aeabi_dmul
	mov	r6, r0
	ldr	r0, [sp, #32]           @ 4-byte Reload
	mov	r4, r1
	b	.LBB0_39
.LBB0_39:                               @ %if.end74
	mov	r1, r8
	mov	r2, r10
	mov	r3, r5
	bl	__aeabi_dsub
	b	.LBB0_40
.LBB0_40:                               @ %if.end74
	mov	r2, r11
	mov	r3, r7
	str	r0, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
	b	.LBB0_41
.LBB0_41:                               @ %if.end74
	bl	__aeabi_dmul
	mov	r2, r6
	mov	r3, r4
	bl	__aeabi_dadd
	b	.LBB0_42
.LBB0_42:                               @ %if.end74
	mov	r4, r0
	mov	r6, r1
	mov	r0, r10
	mov	r1, r5
	b	.LBB0_43
.LBB0_43:                               @ %if.end74
	mov	r2, r11
	mov	r3, r7
	str	r4, [sp, #28]           @ 4-byte Spill
	str	r6, [sp, #24]           @ 4-byte Spill
	b	.LBB0_44
.LBB0_44:                               @ %if.end74
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r6
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB0_45
.LBB0_45:                               @ %if.end74
	str	r1, [sp, #16]           @ 4-byte Spill
	bl	__aeabi_dadd
	ldr	r6, [sp, #48]           @ 4-byte Reload
	ldr	r4, [sp, #44]           @ 4-byte Reload
	b	.LBB0_46
.LBB0_46:                               @ %if.end74
	mov	r5, r0
	mov	r9, r1
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R9<kill>
	b	.LBB0_47
.LBB0_47:                               @ %if.end74
	mov	r2, r6
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r11, r0
	b	.LBB0_48
.LBB0_48:                               @ %if.end74
	mov	r10, r1
	mov	r2, r5
	mov	r3, r9
                                        @ kill: R0<def> R11<kill>
	b	.LBB0_49
.LBB0_49:                               @ %if.end74
                                        @ kill: R1<def> R10<kill>
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r8, r1
	b	.LBB0_50
.LBB0_50:                               @ %if.end74
	mov	r0, r11
	mov	r1, r10
	mov	r2, r7
	mov	r3, r8
	b	.LBB0_51
.LBB0_51:                               @ %if.end74
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_52
.LBB0_52:                               @ %if.end74
	mov	r1, r9
	bl	__aeabi_dsub
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	b	.LBB0_53
.LBB0_53:                               @ %if.end74
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	mov	r3, r8
	b	.LBB0_54
.LBB0_54:                               @ %if.end74
	bl	__aeabi_dsub
	ldr	r2, [sp, #12]           @ 4-byte Reload
	ldr	r3, [sp, #8]            @ 4-byte Reload
	bl	__aeabi_dadd
	b	.LBB0_55
.LBB0_55:                               @ %if.end74
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r6, r1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	b	.LBB0_56
.LBB0_56:                               @ %if.end74
	mov	r7, r5
	mov	r3, r9
	mov	r2, r7
	bl	__aeabi_dsub
	b	.LBB0_57
.LBB0_57:                               @ %if.end74
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	b	.LBB0_58
.LBB0_58:                               @ %if.end74
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [sp, #52]           @ 4-byte Reload
	b	.LBB0_59
.LBB0_59:                               @ %if.end74
	ldr	r1, [sp, #32]           @ 4-byte Reload
	ldr	r2, [sp, #40]           @ 4-byte Reload
	ldr	r3, [sp, #36]           @ 4-byte Reload
	bl	__aeabi_dmul
	b	.LBB0_60
.LBB0_60:                               @ %if.end74
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	mov	r4, r0
	b	.LBB0_61
.LBB0_61:                               @ %if.end74
	mov	r0, #0
	mov	r8, r1
	bl	fesetround
	mov	r0, r11
	b	.LBB0_62
.LBB0_62:                               @ %if.end74
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	b	.LBB0_63
.LBB0_63:                               @ %if.end74
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #68]
	cmp	r0, #0
	add	r5, r2, r1
	beq	.LBB0_69
	b	.LBB0_64
.LBB0_64:                               @ %if.then81
	ldr	r0, [sp, #4]            @ 4-byte Reload
	bl	fesetround
	ldr	r0, [sp, #44]           @ 4-byte Reload
	mov	r1, r9
	b	.LBB0_65
.LBB0_65:                               @ %if.then81
	str	r0, [sp, #60]
	ldr	r0, [sp, #48]           @ 4-byte Reload
	str	r0, [sp, #56]
	mov	r0, r7
	b	.LBB0_66
.LBB0_66:                               @ %if.then81
	ldr	r2, [sp, #56]
	ldr	r3, [sp, #60]
	bl	__aeabi_dadd
	mov	r6, r0
	b	.LBB0_67
.LBB0_67:                               @ %if.then81
	mov	r7, r1
	mov	r0, r4
	mov	r1, r8
	mov	r2, r5
	b	.LBB0_68
.LBB0_68:                               @ %if.then81
	bl	scalbn
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_12
.LBB0_69:                               @ %if.end88
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r7, [sp, #12]           @ 4-byte Reload
	str	r5, [sp, #52]           @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB0_73
	b	.LBB0_70
.LBB0_70:                               @ %if.then91
	bl	fesetround
	mov	r0, r4
	mov	r1, r8
	mov	r2, r7
	b	.LBB0_71
.LBB0_71:                               @ %if.then91
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_72
.LBB0_72:                               @ %if.then91
	mov	r0, r11
	mov	r1, r10
	bl	__aeabi_dadd
	ldr	r2, [sp, #52]           @ 4-byte Reload
	b	.LBB0_103
.LBB0_73:                               @ %if.end100
	str	r11, [sp, #44]          @ 4-byte Spill
	mov	r11, r6
	mov	r0, r4
	mov	r1, r8
	b	.LBB0_74
.LBB0_74:                               @ %if.end100
	mov	r2, r7
	str	r10, [sp, #48]          @ 4-byte Spill
	mov	r3, r11
	bl	__aeabi_dadd
	b	.LBB0_75
.LBB0_75:                               @ %if.end100
	mov	r5, r0
	mov	r6, r1
	mov	r2, r7
	mov	r3, r11
	b	.LBB0_76
.LBB0_76:                               @ %if.end100
	str	r5, [sp, #40]           @ 4-byte Spill
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dsub
	b	.LBB0_77
.LBB0_77:                               @ %if.end100
	mov	r9, r0
	mov	r10, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_78
.LBB0_78:                               @ %if.end100
	mov	r2, r9
	mov	r3, r10
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_79
.LBB0_79:                               @ %if.end100
	mov	r3, r1
	mov	r0, r7
	mov	r1, r11
	bl	__aeabi_dsub
	b	.LBB0_80
.LBB0_80:                               @ %if.end100
	mov	r5, r0
	mov	r11, r1
	mov	r0, r4
	mov	r1, r8
	b	.LBB0_81
.LBB0_81:                               @ %if.end100
	mov	r2, r9
	mov	r3, r10
	bl	__aeabi_dsub
	mov	r2, r5
	b	.LBB0_82
.LBB0_82:                               @ %if.end100
	mov	r3, r11
	bl	__aeabi_dadd
	mov	r4, r1
	mov	r2, #0
	b	.LBB0_83
.LBB0_83:                               @ %if.end100
	mov	r3, #0
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_86
	b	.LBB0_84
.LBB0_84:                               @ %if.then.i159
	ldr	r10, [sp, #40]          @ 4-byte Reload
	ldr	r7, [sp, #48]           @ 4-byte Reload
	ldr	r5, [sp, #44]           @ 4-byte Reload
	tst	r10, #1
	bne	.LBB0_87
	b	.LBB0_85
.LBB0_85:                               @ %if.then2.i
	adds	r0, r10, #1
	eor	r2, r4, r6
	adc	r1, r6, #0
	subs	r10, r0, r2, lsr #30
	sbc	r6, r1, #0
	b	.LBB0_87
.LBB0_86:
	ldr	r7, [sp, #48]           @ 4-byte Reload
	ldr	r5, [sp, #44]           @ 4-byte Reload
	ldr	r10, [sp, #40]          @ 4-byte Reload
	b	.LBB0_87
.LBB0_87:                               @ %add_adjusted.exit
	ldr	r9, [sp, #52]           @ 4-byte Reload
	mov	r0, r5
	mov	r1, r7
	mov	r2, r10
	b	.LBB0_88
.LBB0_88:                               @ %add_adjusted.exit
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r8, r1
	b	.LBB0_89
.LBB0_89:                               @ %add_adjusted.exit
	mov	r0, r5
	mov	r1, r7
	bl	ilogb
	ldr	r1, .LCPI0_4
	add	r0, r0, r9
	cmp	r0, r1
	bge	.LBB0_102
	b	.LBB0_90
.LCPI0_4:
	.long	4294966274              @ 0xfffffc02
.LBB0_90:                               @ %if.else113
	mov	r0, r4
	mov	r1, r8
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_91
.LBB0_91:                               @ %if.else113
	bl	__aeabi_dsub
	mov	r11, r0
	str	r6, [sp, #52]           @ 4-byte Spill
	mov	r6, r1
	b	.LBB0_92
.LBB0_92:                               @ %if.else113
	mov	r0, r4
	mov	r1, r8
	mov	r2, r11
	mov	r3, r6
	b	.LBB0_93
.LBB0_93:                               @ %if.else113
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_94
.LBB0_94:                               @ %if.else113
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r5, r1
	ldr	r1, [sp, #52]           @ 4-byte Reload
	b	.LBB0_95
.LBB0_95:                               @ %if.else113
	mov	r7, r0
	mov	r0, r10
	mov	r2, r11
	mov	r3, r6
	b	.LBB0_96
.LBB0_96:                               @ %if.else113
	bl	__aeabi_dsub
	mov	r2, r7
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_97
.LBB0_97:                               @ %if.else113
	mov	r5, r1
	mov	r2, #0
	mov	r3, #0
	mov	r6, #0
	b	.LBB0_98
.LBB0_98:                               @ %if.else113
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_102
	b	.LBB0_99
.LBB0_99:                               @ %if.then.i
	mov	r0, #255
	orr	r0, r0, #1792
	and	r0, r0, r8, lsr #20
	cmn	r9, r0
	b	.LBB0_100
.LBB0_100:                              @ %if.then.i
	movne	r6, #1
	eor	r0, r4, r6
	tst	r0, #1
	beq	.LBB0_102
	b	.LBB0_101
.LBB0_101:                              @ %if.then7.i
	eor	r2, r5, r8
	mov	r3, #2
	adds	r0, r4, #1
	and	r2, r3, r2, lsr #30
	adc	r1, r8, #0
	subs	r4, r0, r2
	sbc	r8, r1, #0
	b	.LBB0_102
.LBB0_102:                              @ %add_and_denormalize.exit
	mov	r0, r4
	mov	r1, r8
	mov	r2, r9
	b	.LBB0_103
.LBB0_103:                              @ %return
	bl	scalbn
	b	.LBB0_13
.Ltmp0:
	.size	fma, .Ltmp0-fma
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
