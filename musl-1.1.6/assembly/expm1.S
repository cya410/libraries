.section expm1_text
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
	.file	"src/math/expm1.bc"
	.globl	expm1
	.align	2
	.type	expm1,%function
.section bb0_0
expm1:                                  @ @expm1
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
	mov	r9, r1
	mov	r1, r0
	ldr	r0, .LCPI0_23
	b	.LBB0_4
.LCPI0_23:
	.long	1078159482              @ 0x4043687a
.section bb0_4
.LBB0_4:                                @ %entry
	bic	r2, r9, #-2147483648
	lsr	r4, r9, #31
	mov	r6, r1
	cmp	r2, r0
	blo	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.true9
	mov	r3, #267386880
	mov	r7, #0
	mov	r0, #0
	orr	r3, r3, #1879048192
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.true9
	cmp	r2, r3
	movhi	r7, #1
	cmp	r1, #0
	movne	r1, #1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cond.true9
	cmp	r2, r3
	movne	r1, r7
	cmp	r1, #0
	bne	.LBB0_18
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	cmp	r4, #0
	beq	.LBB0_20
	b	.LBB0_9
.section bb0_9
.LBB0_9:
	mov	r9, #267386880
	orr	r9, r9, #-1342177280
	b	.LBB0_104
.section bb0_10
.LBB0_10:                               @ %if.end25
	ldr	r0, .LCPI0_24
	cmp	r2, r0
	blo	.LBB0_15
	b	.LBB0_11
.LCPI0_24:
	.long	1071001155              @ 0x3fd62e43
.section bb0_11
.LBB0_11:                               @ %if.then28
	ldr	r0, .LCPI0_26
	cmp	r2, r0
	bhi	.LBB0_24
	b	.LBB0_12
.LCPI0_26:
	.long	1072734897              @ 0x3ff0a2b1
.section bb0_12
.LBB0_12:                               @ %if.then31
	mov	r2, #249561088
	cmp	r4, #0
	orr	r2, r2, #-268435456
	beq	.LBB0_33
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.else
	ldr	r3, .LCPI0_27
	mov	r0, r6
	mov	r1, r9
	bl	__aeabi_dadd
	b	.LBB0_14
.LCPI0_27:
	.long	1072049730              @ 0x3fe62e42
.section bb0_14
.LBB0_14:                               @ %if.else
	ldr	r5, .LCPI0_28
	ldr	r4, .LCPI0_29
	mov	r8, r0
	mvn	r0, #0
	mov	r7, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_35
.LCPI0_28:
	.long	3186244079              @ 0xbdea39ef
.LCPI0_29:
	.long	897137782               @ 0x35793c76
.section bb0_15
.LBB0_15:                               @ %if.else48
	ldr	r0, .LCPI0_25
	cmp	r2, r0
	bhi	.LBB0_19
	b	.LBB0_16
.LCPI0_25:
	.long	1016070143              @ 0x3c8fffff
.section bb0_16
.LBB0_16:                               @ %if.then51
	mov	r0, #0
	cmp	r0, r2, lsr #20
	bne	.LBB0_18
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %do.body
	mov	r0, r6
	mov	r1, r9
	bl	__aeabi_d2f
	str	r0, [sp, #16]
	b	.LBB0_18
.section bb0_18
.LBB0_18:
	mov	r0, r6
	b	.LBB0_104
.section bb0_19
.LBB0_19:
	mov	r0, #0
	str	r0, [sp, #8]            @ 4-byte Spill
                                        @ implicit-def: R0
	str	r0, [sp, #4]            @ 4-byte Spill
                                        @ implicit-def: R0
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB0_39
.section bb0_20
.LBB0_20:                               @ %if.end20
	ldr	r5, .LCPI0_36
	ldr	r7, .LCPI0_37
	mov	r0, r6
	mov	r1, r9
	b	.LBB0_21
.LCPI0_36:
	.long	4277811695              @ 0xfefa39ef
.LCPI0_37:
	.long	1082535490              @ 0x40862e42
.section bb0_21
.LBB0_21:                               @ %if.end20
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dcmple
	mov	r8, r0
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end20
	mov	r0, r6
	mov	r1, r9
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dcmpun
	orrs	r0, r0, r8
	bne	.LBB0_24
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then23
	mov	r3, #266338304
	mov	r0, r6
	mov	r1, r9
	mov	r2, #0
	orr	r3, r3, #1879048192
	b	.LBB0_102
.section bb0_24
.LBB0_24:                               @ %if.else35
	ldr	r2, .LCPI0_38
	ldr	r3, .LCPI0_39
	mov	r0, r6
	mov	r1, r9
	b	.LBB0_25
.LCPI0_38:
	.long	1697350398              @ 0x652b82fe
.LCPI0_39:
	.long	1073157447              @ 0x3ff71547
.section bb0_25
.LBB0_25:                               @ %if.else35
	bl	__aeabi_dmul
	mov	r2, #266338304
	mov	r3, #266338304
	cmp	r4, #0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.else35
	orr	r2, r2, #-1342177280
	orr	r3, r3, #805306368
	movne	r3, r2
	mov	r2, #0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.else35
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_i2d
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.else35
	ldr	r3, .LCPI0_32
	mov	r2, #249561088
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_29
.LCPI0_32:
	.long	3219533378              @ 0xbfe62e42
.section bb0_29
.LBB0_29:                               @ %if.else35
	orr	r2, r2, #-268435456
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.else35
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r9
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.else35
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_30
	ldr	r3, .LCPI0_34
	mov	r8, r0
	b	.LBB0_32
.LCPI0_30:
	.long	897137782               @ 0x35793c76
.LCPI0_34:
	.long	1038760431              @ 0x3dea39ef
.section bb0_32
.LBB0_32:                               @ %if.else35
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_35
.section bb0_33
.LBB0_33:                               @ %if.then33
	ldr	r3, .LCPI0_33
	mov	r0, r6
	mov	r1, r9
	bl	__aeabi_dadd
	b	.LBB0_34
.LCPI0_33:
	.long	3219533378              @ 0xbfe62e42
.section bb0_34
.LBB0_34:                               @ %if.then33
	ldr	r5, .LCPI0_35
	ldr	r4, .LCPI0_31
	mov	r8, r0
	mov	r0, #1
	mov	r7, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_35
.LCPI0_31:
	.long	897137782               @ 0x35793c76
.LCPI0_35:
	.long	1038760431              @ 0x3dea39ef
.section bb0_35
.LBB0_35:                               @ %if.end44
	mov	r0, r8
	mov	r1, r7
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end44
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r9, r1
	mov	r0, r8
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end44
	mov	r1, r7
	mov	r2, r6
	mov	r3, r9
	bl	__aeabi_dsub
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end44
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end59
	mov	r3, #266338304
	mov	r0, r6
	mov	r1, r9
	mov	r2, #0
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.end59
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r7, r1
	mov	r2, r0
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end59
	mov	r0, r6
	mov	r1, r9
	mov	r3, r7
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end59
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_40
	ldr	r3, .LCPI0_41
	mov	r11, r0
	b	.LBB0_43
.LCPI0_40:
	.long	1846133549              @ 0x6e09c32d
.LCPI0_41:
	.long	3196779959              @ 0xbe8afdb7
.section bb0_43
.LBB0_43:                               @ %if.end59
	mov	r8, r1
                                        @ kill: R0<def> R11<kill>
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dmul
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end59
	ldr	r2, .LCPI0_42
	ldr	r3, .LCPI0_43
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_45
.LCPI0_42:
	.long	2263241273              @ 0x86e65239
.LCPI0_43:
	.long	1053872074              @ 0x3ed0cfca
.section bb0_45
.LBB0_45:                               @ %if.end59
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end59
	ldr	r2, .LCPI0_44
	ldr	r3, .LCPI0_45
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_47
.LCPI0_44:
	.long	2661997495              @ 0x9eaadbb7
.LCPI0_45:
	.long	3205811737              @ 0xbf14ce19
.section bb0_47
.LBB0_47:                               @ %if.end59
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %if.end59
	ldr	r2, .LCPI0_46
	ldr	r3, .LCPI0_47
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_49
.LCPI0_46:
	.long	436098437               @ 0x19fe5585
.LCPI0_47:
	.long	1062863264              @ 0x3f5a01a0
.section bb0_49
.LBB0_49:                               @ %if.end59
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.end59
	ldr	r2, .LCPI0_48
	ldr	r3, .LCPI0_49
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_51
.LCPI0_48:
	.long	286331124               @ 0x111110f4
.LCPI0_49:
	.long	3215003921              @ 0xbfa11111
.section bb0_51
.LBB0_51:                               @ %if.end59
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.end59
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %if.end59
	mov	r5, r0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	mov	r10, r1
	mov	r1, r7
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.end59
	mov	r4, r6
	mov	r2, r5
	mov	r3, r10
	bl	__aeabi_dmul
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %if.end59
	mov	r3, r1
	mov	r1, #524288
	mov	r2, r0
	mov	r0, #0
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %if.end59
	orr	r1, r1, #1073741824
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r6, r1
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %if.end59
	mov	r1, r10
	mov	r0, r5
	mov	r10, r4
	mov	r2, r7
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %if.end59
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %if.end59
	mov	r0, r10
	mov	r1, r9
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.end59
	bl	__aeabi_dmul
	mov	r3, r1
	mov	r1, #1572864
	mov	r2, r0
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.end59
	mov	r0, #0
	orr	r1, r1, #1073741824
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.end59
	mov	r3, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_ddiv
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.end59
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.end59
	bl	__aeabi_dmul
	ldr	r4, [sp, #8]            @ 4-byte Reload
	mov	r2, r0
	mov	r3, r1
	cmp	r4, #0
	beq	.LBB0_76
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %if.end84
	ldr	r5, [sp, #4]            @ 4-byte Reload
	ldr	r6, [sp]                @ 4-byte Reload
	mov	r0, r2
	mov	r1, r3
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.end84
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %if.end84
	mov	r3, r1
	mov	r0, r10
	mov	r1, r9
	bl	__aeabi_dmul
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.end84
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r2, r11
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.end84
	mov	r3, r8
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r7, r1
	cmp	r4, #1
	bne	.LBB0_78
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.then98
	mov	r4, #265289728
	mov	r0, r10
	mov	r1, r9
	mov	r2, #0
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.then98
	orr	r4, r4, #-1342177280
	mov	r3, r4
	bl	__aeabi_dcmpge
	mov	r5, r0
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %if.then98
	mov	r0, r10
	mov	r1, r9
	mov	r2, #0
	mov	r3, r4
	bl	__aeabi_dcmpun
	orrs	r0, r0, r5
	bne	.LBB0_81
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.then101
	mov	r3, #266338304
	mov	r0, r10
	mov	r1, r9
	mov	r2, #0
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %if.then101
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %if.then101
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, #0
	mov	r3, #-1073741824
	b	.LBB0_102
.section bb0_76
.LBB0_76:                               @ %if.then80
	mov	r0, r10
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r11
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %if.then80
	mov	r3, r8
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r9
	bl	__aeabi_dsub
	b	.LBB0_103
.section bb0_78
.LBB0_78:                               @ %if.end84
	cmn	r4, #1
	bne	.LBB0_83
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.then91
	mov	r0, r10
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.then91
	bl	__aeabi_dsub
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r3, #266338304
	b	.LBB0_92
.section bb0_81
.LBB0_81:                               @ %if.end105
	mov	r0, r10
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %if.end105
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r3, #267386880
	orr	r3, r3, #805306368
	b	.LBB0_93
.section bb0_83
.LBB0_83:                               @ %if.end109
	mov	r0, #267386880
	cmp	r4, #57
	orr	r0, r0, #805306368
	add	r8, r0, r4, lsl #20
	blo	.LBB0_94
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.then118
	mov	r0, r10
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %if.then118
	bl	__aeabi_dsub
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %if.then118
	bl	__aeabi_dadd
	mov	r5, r1
	mov	r9, r4
	mov	r4, r0
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %if.then118
	mov	r2, r4
	mov	r3, r5
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %if.then118
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #1879048192
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %if.then118
	bl	__aeabi_dmul
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %if.then118
	mov	r1, r8
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %if.then118
	cmp	r9, #1024
	mov	r3, #267386880
	moveq	r0, r6
	moveq	r1, r7
	b	.LBB0_92
.section bb0_92
.LBB0_92:                               @ %return
	orr	r3, r3, #-1342177280
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %return
	mov	r2, #0
	bl	__aeabi_dadd
	b	.LBB0_103
.section bb0_94
.LBB0_94:                               @ %if.end130
	mov	r0, #255
	cmp	r4, #19
	orr	r0, r0, #768
	sub	r0, r0, r4
	lsl	r5, r0, #20
	bgt	.LBB0_98
	b	.LBB0_95
.section bb0_95
.LBB0_95:                               @ %if.then137
	mov	r0, r10
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %if.then137
	bl	__aeabi_dsub
	mov	r6, r1
	mov	r1, #267386880
	mov	r4, r0
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %if.then137
	mov	r0, #0
	mov	r2, #0
	mov	r3, r5
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r6
	b	.LBB0_101
.section bb0_98
.LBB0_98:                               @ %if.else143
	mov	r0, #0
	mov	r1, r5
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_99
.section bb0_99
.LBB0_99:                               @ %if.else143
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	b	.LBB0_100
.section bb0_100
.LBB0_100:                              @ %if.else143
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_101
.section bb0_101
.LBB0_101:                              @ %if.end149
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, r8
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %return
	bl	__aeabi_dmul
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %return
	mov	r9, r1
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %return
	mov	r1, r9
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	expm1, .Ltmp0-expm1
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
