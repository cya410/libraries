.section ccosh_text
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
	.file	"src/complex/ccosh.bc"
	.globl	ccosh
	.align	2
	.type	ccosh,%function
.section bb0_0
ccosh:                                  @ @ccosh
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
	ldr	r1, .LCPI0_5
	mov	r7, r3
	mov	r10, r0
	b	.LBB0_4
.LCPI0_5:
	.long	2146435071              @ 0x7fefffff
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r11, [sp, #76]
	ldr	r8, [sp, #72]
	mov	r5, r2
	bic	r0, r7, #-2147483648
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	cmp	r0, r1
	bic	r6, r11, #-2147483648
	ldrls	r1, .LCPI0_6
	cmpls	r6, r1
	bhi	.LBB0_45
	b	.LBB0_6
.LCPI0_6:
	.long	2146435071              @ 0x7fefffff
.section bb0_6
.LBB0_6:                                @ %if.then
	orrs	r1, r6, r8
	beq	.LBB0_14
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	ldr	r1, .LCPI0_10
	cmp	r0, r1
	bhi	.LBB0_16
	b	.LBB0_8
.LCPI0_10:
	.long	1077280767              @ 0x4035ffff
.section bb0_8
.LBB0_8:                                @ %if.then28
	mov	r0, r5
	mov	r1, r7
	bl	cosh
	mov	r6, r0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then28
	mov	r9, r1
	mov	r0, r8
	mov	r1, r11
	bl	cos
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then28
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r9
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then28
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r4, r8
	mov	r8, r1
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then28
	mov	r0, r5
	mov	r1, r7
	bl	sinh
	mov	r5, r0
	mov	r7, r1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %return
	mov	r0, r4
	mov	r1, r11
	b	.LBB0_24
.section bb0_14
.LBB0_14:                               @ %if.then20
	mov	r0, r5
	mov	r1, r7
	bl	cosh
	mov	r9, r0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then20
	mov	r2, r8
	mov	r8, r1
	mov	r0, r5
	mov	r1, r7
	mov	r3, r11
	str	r9, [r10]
	str	r8, [r10, #4]
	b	.LBB0_27
.section bb0_16
.LBB0_16:                               @ %if.end42
	ldr	r1, .LCPI0_11
	mov	r6, r11
	cmp	r0, r1
	bhi	.LBB0_30
	b	.LBB0_17
.LCPI0_11:
	.long	1082535489              @ 0x40862e41
.section bb0_17
.LBB0_17:                               @ %if.then45
	mov	r0, r5
	mov	r1, r7
	bl	fabs
	bl	exp
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then45
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then45
	mov	r11, r0
	mov	r4, r1
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then45
	bl	cos
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then45
	mov	r1, r4
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r8, r1
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then45
	mov	r0, r11
	mov	r1, r4
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then45
	bl	copysign
	mov	r5, r0
	ldr	r0, [sp, #72]
	mov	r7, r1
	mov	r1, r6
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %return
	bl	sin
	mov	r2, r0
	mov	r3, r1
	str	r9, [r10]
	str	r8, [r10, #4]
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %return
	mov	r0, r5
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %return
	mov	r1, r7
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %return
	bl	__aeabi_dmul
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %return
	mov	r2, r10
	str	r1, [r10, #12]
	str	r0, [r2, #8]!
	str	r9, [r10]
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %return
	str	r8, [r10, #4]
	stm	r2, {r0, r1}
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_30
.LBB0_30:                               @ %if.else
	ldr	r1, .LCPI0_12
	cmp	r0, r1
	bhi	.LBB0_37
	b	.LBB0_31
.LCPI0_12:
	.long	1083620265              @ 0x4096bba9
.section bb0_31
.LBB0_31:                               @ %if.then63
	mov	r0, r5
	mov	r1, r7
	bl	fabs
	mov	r2, r0
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.then63
	mvn	r0, #0
	str	r8, [sp]
	str	r6, [sp, #4]
	mov	r3, r1
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.then63
	str	r0, [sp, #8]
	add	r0, sp, #16
	bl	__ldexp_cexp
	ldr	r9, [sp, #16]
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.then63
	ldr	r8, [sp, #20]
	ldr	r6, [sp, #24]
	ldr	r4, [sp, #28]
	mov	r1, #267386880
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.then63
	mov	r0, #0
	mov	r2, r5
	mov	r3, r7
	orr	r1, r1, #805306368
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.then63
	bl	copysign
	mov	r2, r0
	mov	r3, r1
	str	r9, [r10]
	str	r8, [r10, #4]
	mov	r0, r6
	mov	r1, r4
	b	.LBB0_27
.section bb0_37
.LBB0_37:                               @ %if.else95
	mov	r3, #266338304
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.else95
	orr	r3, r3, #1879048192
	bl	__aeabi_dmul
	mov	r11, r0
	mov	r7, r1
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.else95
	mov	r2, r11
	mov	r3, r7
                                        @ kill: R0<def> R11<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.else95
	bl	__aeabi_dmul
	mov	r5, r8
	mov	r4, r6
	mov	r8, r0
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.else95
	mov	r9, r1
	mov	r0, r5
	mov	r1, r4
	bl	cos
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.else95
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.else95
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r8, r1
	mov	r0, r5
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.else95
	mov	r1, r4
	bl	sin
	mov	r2, r0
	str	r9, [r10]
	mov	r3, r1
	str	r8, [r10, #4]
	mov	r0, r11
	b	.LBB0_26
.section bb0_45
.LBB0_45:                               @ %if.end109
	mov	r4, #267386880
	orr	r4, r4, #1879048192
	cmp	r6, r4
	blo	.LBB0_49
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end109
	orrs	r1, r0, r5
	bne	.LBB0_49
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.then116
	mov	r0, r8
	mov	r1, r11
	mov	r2, r8
	mov	r3, r11
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %if.then116
	bl	__aeabi_dsub
	mov	r9, r0
	mov	r8, r1
	mov	r0, r5
	mov	r1, r7
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_56
.section bb0_49
.LBB0_49:                               @ %if.end127
	cmp	r0, r4
	blo	.LBB0_58
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.end127
	orrs	r1, r6, r8
	bne	.LBB0_58
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.then134
	ldr	r0, .LCPI0_8
	mov	r1, r7
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_52
.LCPI0_8:
	.long	1048575                 @ 0xfffff
.section bb0_52
.LBB0_52:                               @ %if.then134
	mov	r6, r8
	and	r0, r7, r0
	orr	r4, r0, r5
	mov	r0, r5
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %if.then134
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r8, r1
	cmp	r4, #0
	beq	.LBB0_72
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.end150
	mov	r0, r5
	mov	r1, r7
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %if.end150
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r11
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %return
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %return
	mov	r1, #0
	bl	copysign
	str	r8, [r10, #4]
	str	r9, [r10]
	b	.LBB0_28
.section bb0_58
.LBB0_58:                               @ %if.end161
	ldr	r1, .LCPI0_7
	cmp	r0, r1
	bhi	.LBB0_63
	b	.LBB0_59
.LCPI0_7:
	.long	2146435071              @ 0x7fefffff
.section bb0_59
.LBB0_59:                               @ %if.end161
	cmp	r6, r4
	blo	.LBB0_63
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.then167
	mov	r0, r8
	mov	r1, r11
	mov	r2, r8
	mov	r3, r11
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.then167
	bl	__aeabi_dsub
	mov	r9, r0
	mov	r8, r1
	mov	r0, r5
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then167
	mov	r1, r7
	str	r9, [r10]
	str	r8, [r10, #4]
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_27
.section bb0_63
.LBB0_63:                               @ %if.end178
	cmp	r0, r4
	blo	.LBB0_65
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %land.lhs.true181
	ldr	r0, .LCPI0_9
	and	r0, r7, r0
	orrs	r0, r0, r5
	beq	.LBB0_74
	b	.LBB0_65
.LCPI0_9:
	.long	1048575                 @ 0xfffff
.section bb0_65
.LBB0_65:                               @ %if.end213
	mov	r0, r5
	mov	r1, r7
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.end213
	bl	__aeabi_dmul
	mov	r8, r0
	ldr	r0, [sp, #72]
	mov	r9, r1
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %if.end213
	mov	r1, r11
	mov	r3, r11
	mov	r2, r0
	bl	__aeabi_dsub
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.end213
	mov	r6, r0
	mov	r4, r1
	mov	r0, r8
	mov	r1, r9
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.end213
	mov	r2, r6
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r9, r0
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.end213
	mov	r8, r1
	mov	r0, r5
	mov	r1, r7
	mov	r2, r5
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.end213
	mov	r3, r7
	str	r9, [r10]
	str	r8, [r10, #4]
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r4
	b	.LBB0_27
.section bb0_72
.LBB0_72:                               @ %if.then139
	mov	r0, #0
	mov	r1, #0
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.then139
	bl	copysign
	mov	r2, r0
	mov	r3, r1
	str	r9, [r10]
	str	r8, [r10, #4]
	mov	r0, r6
	mov	r1, r11
	b	.LBB0_27
.section bb0_74
.LBB0_74:                               @ %if.then186
	mov	r0, r5
	mov	r1, r7
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %if.then186
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r8, r1
	cmp	r6, r4
	blo	.LBB0_78
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %if.then189
	ldr	r0, [sp, #72]
	mov	r1, r11
	mov	r3, r11
	str	r9, [r10]
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %if.then189
	str	r8, [r10, #4]
	mov	r2, r0
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_25
.section bb0_78
.LBB0_78:                               @ %if.end200
	ldr	r4, [sp, #72]
	mov	r1, r11
	mov	r0, r4
	bl	cos
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.end200
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r8, r1
	b	.LBB0_13
.Ltmp0:
	.size	ccosh, .Ltmp0-ccosh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
