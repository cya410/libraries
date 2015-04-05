.section tgamma_text
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
	.file	"src/math/tgamma.bc"
	.globl	tgamma
	.align	2
	.type	tgamma,%function
.section bb0_0
tgamma:                                 @ @tgamma
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
	.pad	#60
	sub	sp, sp, #60
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r9, r1
	mov	r10, r0
	mov	r0, #267386880
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bic	r7, r9, #-2147483648
	orr	r0, r0, #1879048192
	mov	r5, r9
	mov	r4, r10
	cmp	r7, r0
	blo	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	mov	r3, #267386880
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	orr	r3, r3, #1879048192
	bl	__aeabi_dadd
	b	.LBB0_112
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, .LCPI0_10
	cmp	r7, r0
	bhi	.LBB0_8
	b	.LBB0_7
.LCPI0_10:
	.long	1016070143              @ 0x3c8fffff
.section bb0_7
.LBB0_7:                                @ %if.then7
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r4
	mov	r3, r5
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	b	.LBB0_112
.section bb0_8
.LBB0_8:                                @ %if.end8
	mov	r0, r4
	mov	r1, r5
	lsr	r6, r9, #31
	bl	floor
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end8
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_15
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then11
	cmp	r6, #0
	beq	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:
	mov	r1, #66584576
	mov	r4, #0
	orr	r1, r1, #2080374784
	b	.LBB0_113
.section bb0_12
.LBB0_12:                               @ %if.end13
	mov	r8, #3604480
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end13
	orr	r8, r8, #1073741824
	mov	r3, r8
	bl	__aeabi_dcmpgt
	mov	r11, r0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end13
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dcmpun
	orrs	r0, r0, r11
	beq	.LBB0_88
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end19
	mov	r0, #6750208
	str	r4, [sp, #44]           @ 4-byte Spill
	orr	r0, r0, #1073741824
	cmp	r7, r0
	blo	.LBB0_27
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then22
	cmp	r6, #0
	beq	.LBB0_89
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %do.body
	ldr	r6, [sp, #44]           @ 4-byte Reload
	mov	r1, #135266304
	mov	r0, #0
	mov	r3, r5
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %do.body
	mov	r4, #0
	orr	r1, r1, #805306368
	mov	r2, r6
	bl	__aeabi_ddiv
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %do.body
	bl	__aeabi_d2f
	mov	r10, #266338304
	str	r0, [sp, #56]
	mov	r0, r6
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %do.body
	mov	r1, r5
	mov	r2, #0
	orr	r10, r10, #805306368
	mov	r3, r10
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %do.body
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r7, r1
	mov	r0, r6
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %do.body
	mov	r1, r5
	bl	floor
	mov	r5, r0
	mov	r8, r1
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %do.body
	mov	r0, r9
	mov	r1, r7
	bl	floor
	mov	r6, r0
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %do.body
	mov	r7, r1
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %do.body
	mov	r3, r10
	bl	__aeabi_dmul
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %do.body
	bl	__aeabi_dcmpeq
	mov	r1, #-2147483648
	cmp	r0, #0
	movne	r1, #0
	b	.LBB0_113
.section bb0_27
.LBB0_27:                               @ %if.end36
	ldr	r2, [sp, #44]           @ 4-byte Reload
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r3, r5
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end36
	str	r5, [sp, #36]           @ 4-byte Spill
	bl	__aeabi_dsub
	ldr	r7, .LCPI0_12
	cmp	r6, #0
	b	.LBB0_29
.LCPI0_12:
	.long	1075190085              @ 0x40161945
.section bb0_29
.LBB0_29:                               @ %if.end36
	mov	r11, #964689920
	movne	r10, r0
	movne	r9, r1
	orr	r11, r11, #-2147483648
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end36
	mov	r0, r10
	mov	r1, r9
	mov	r2, r11
	mov	r3, r7
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end36
	bl	__aeabi_dcmpgt
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r10
	mov	r1, r9
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end36
	mov	r2, r11
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r4, r1
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end36
	mov	r8, r0
	mov	r2, r10
	mov	r3, r9
	str	r4, [sp, #40]           @ 4-byte Spill
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end36
                                        @ kill: R0<def> R8<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dsub
	ldr	r7, .LCPI0_13
	b	.LBB0_35
.LCPI0_13:
	.long	3222673733              @ 0xc0161945
.section bb0_35
.LBB0_35:                               @ %if.end36
	mov	r2, r11
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r5, r0
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end36
	mov	r6, r1
	mov	r0, r8
	mov	r1, r4
	mov	r2, r11
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end36
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r2, r10
	mov	r3, r9
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end36
	bl	__aeabi_dsub
	ldr	r2, [sp, #52]           @ 4-byte Reload
	cmp	r2, #0
	mov	r2, #0
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end36
	movne	r0, r5
	mov	r5, #2097152
	movne	r1, r6
	orr	r5, r5, #1073741824
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.end36
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r10
	mov	r1, r9
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end36
	mov	r3, r5
	bl	__aeabi_dcmpge
	mov	r6, r0
	mov	r0, r10
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end36
	mov	r1, r9
	mov	r2, #0
	mov	r3, r5
	bl	__aeabi_dcmpun
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.end36
	mov	r3, #266338304
	orr	r4, r0, r6
	mov	r0, r10
	mov	r1, r9
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end36
	mov	r2, #0
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_14
	ldr	r3, .LCPI0_16
	cmp	r4, #0
	bne	.LBB0_54
	b	.LBB0_45
.LCPI0_14:
	.long	Sden
.LCPI0_16:
	.long	Snum
.section bb0_45
.LBB0_45:
	str	r8, [sp, #32]           @ 4-byte Spill
	add	r8, r2, #96
	mov	r5, r9
	add	r9, r3, #96
	b	.LBB0_46
.section bb0_46
.LBB0_46:
	mov	r11, r10
	mov	r10, #13
	mov	r7, #0
	mov	r3, #0
	b	.LBB0_47
.section bb0_47
.LBB0_47:
	mov	r6, #0
	mov	r2, #0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, r5
	str	r2, [sp, #52]           @ 4-byte Spill
	mov	r2, r3
	mov	r0, r11
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %for.body.i
                                        @   in Loop: Header=BB0_48 Depth=1
	mov	r3, r6
	mov	r1, r4
	bl	__aeabi_dmul
	ldm	r9, {r2, r3}
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %for.body.i
                                        @   in Loop: Header=BB0_48 Depth=1
	bl	__aeabi_dadd
	ldr	r2, [sp, #52]           @ 4-byte Reload
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r6, r1
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %for.body.i
                                        @   in Loop: Header=BB0_48 Depth=1
	mov	r0, r11
	mov	r1, r4
	mov	r3, r7
	mov	r5, r4
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %for.body.i
                                        @   in Loop: Header=BB0_48 Depth=1
	bl	__aeabi_dmul
	ldm	r8, {r2, r3}
	bl	__aeabi_dadd
	ldr	r3, [sp, #48]           @ 4-byte Reload
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %for.body.i
                                        @   in Loop: Header=BB0_48 Depth=1
	sub	r10, r10, #1
	mov	r2, r0
	mov	r7, r1
	sub	r9, r9, #8
	sub	r8, r8, #8
	cmp	r10, #0
	bgt	.LBB0_48
	b	.LBB0_63
.section bb0_54
.LBB0_54:
	mov	r4, #0
	mov	r7, #0
	mov	r3, #0
	mov	r6, #0
	b	.LBB0_55
.section bb0_55
.LBB0_55:
	mov	r5, r9
	mov	r11, r10
	mov	r2, #0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r8, [sp, #32]           @ 4-byte Spill
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %for.body7.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r3
	mov	r8, r2
	mov	r1, r6
	mov	r2, r11
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %for.body7.i
                                        @   in Loop: Header=BB0_56 Depth=1
	mov	r3, r5
	mov	r9, r7
	bl	__aeabi_ddiv
	ldr	r3, .LCPI0_17
	b	.LBB0_58
.LCPI0_17:
	.long	Snum
.section bb0_58
.LBB0_58:                               @ %for.body7.i
                                        @   in Loop: Header=BB0_56 Depth=1
	ldr	r2, [r3, r4]!
	ldr	r3, [r3, #4]
	bl	__aeabi_dadd
	mov	r10, r0
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %for.body7.i
                                        @   in Loop: Header=BB0_56 Depth=1
	mov	r6, r1
	mov	r0, r8
	mov	r1, r9
	mov	r2, r11
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %for.body7.i
                                        @   in Loop: Header=BB0_56 Depth=1
	mov	r3, r5
	bl	__aeabi_ddiv
	ldr	r3, .LCPI0_15
	ldr	r2, [r3, r4]!
	b	.LBB0_61
.LCPI0_15:
	.long	Sden
.section bb0_61
.LBB0_61:                               @ %for.body7.i
                                        @   in Loop: Header=BB0_56 Depth=1
	ldr	r3, [r3, #4]
	bl	__aeabi_dadd
	add	r4, r4, #8
	mov	r3, r10
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %for.body7.i
                                        @   in Loop: Header=BB0_56 Depth=1
	mov	r2, r0
	mov	r7, r1
	cmp	r4, #104
	bne	.LBB0_56
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %S.exit
	mov	r0, r3
	mov	r1, r6
	mov	r3, r7
	str	r11, [sp, #24]          @ 4-byte Spill
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %S.exit
	str	r5, [sp, #28]           @ 4-byte Spill
	bl	__aeabi_ddiv
	ldr	r11, [sp, #40]          @ 4-byte Reload
	ldr	r10, [sp, #32]          @ 4-byte Reload
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %S.exit
	mov	r4, r0
	mov	r5, r1
	eor	r1, r11, #-2147483648
	mov	r0, r10
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %S.exit
	bl	exp
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %S.exit
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r6, [sp, #44]           @ 4-byte Reload
	ldr	r5, [sp, #36]           @ 4-byte Reload
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %S.exit
	mov	r7, r0
	mov	r9, r1
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %S.exit
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_dcmpge
	mov	r4, r0
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %S.exit
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpun
	orrs	r0, r0, r4
	bne	.LBB0_87
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.then55
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	mov	r8, #266338304
	mov	r2, #0
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %if.then55
	str	r7, [sp, #52]           @ 4-byte Spill
	orr	r8, r8, #805306368
	mov	r3, r8
	bl	__aeabi_dmul
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.then55
	mov	r4, r0
	mov	r6, r1
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R6<kill>
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %if.then55
	bl	floor
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %if.then55
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %if.then55
	bl	__aeabi_dadd
	mov	r3, #1048576
	mov	r6, r0
	mov	r4, r1
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %if.then55
	mov	r2, #0
	orr	r3, r3, #1073741824
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R4<kill>
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %if.then55
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	add	r0, r0, #1
	add	r5, r0, r0, lsr #31
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.then55
	asr	r7, r5, #1
	mov	r0, r7
	bl	__aeabi_i2d
	mov	r2, #0
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.then55
	mov	r3, r8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %if.then55
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_18
	b	.LBB0_82
.LCPI0_18:
	.long	1413754136              @ 0x54442d18
.section bb0_82
.LBB0_82:                               @ %if.then55
	ldr	r3, .LCPI0_20
	bl	__aeabi_dmul
	mov	r2, #1
	cmp	r2, r5, asr #1
	beq	.LBB0_90
	b	.LBB0_83
.LCPI0_20:
	.long	1074340347              @ 0x400921fb
.section bb0_83
.LBB0_83:                               @ %if.then55
	mov	r8, r10
	mov	r10, r11
	ldr	r4, [sp, #20]           @ 4-byte Reload
	ldr	r11, [sp, #52]          @ 4-byte Reload
	cmp	r7, #2
	bne	.LBB0_92
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %sw.bb10.i
	mov	r2, #0
	eor	r1, r1, #-2147483648
	mov	r3, #0
	str	r2, [sp]
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %sw.bb10.i
	mov	r2, #0
	bl	__sin
	mov	r2, r0
	ldr	r0, [sp, #16]           @ 4-byte Reload
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %sw.bb10.i
	ldr	r6, [sp, #8]            @ 4-byte Reload
	ldr	r5, [sp, #12]           @ 4-byte Reload
	mov	r7, r11
	mov	r11, r10
	mov	r10, r8
	mov	r3, r1
	mov	r8, r0
	b	.LBB0_97
.section bb0_87
.LBB0_87:
	ldr	r8, [sp, #16]           @ 4-byte Reload
	ldr	r6, [sp, #8]            @ 4-byte Reload
	ldr	r4, [sp, #20]           @ 4-byte Reload
	ldr	r5, [sp, #12]           @ 4-byte Reload
	b	.LBB0_101
.section bb0_88
.LBB0_88:                               @ %if.then16
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_d2iz
	ldr	r1, .LCPI0_11
	add	r0, r1, r0, lsl #3
	ldr	r4, [r0, #-8]
	ldr	r1, [r0, #-4]
	b	.LBB0_113
.LCPI0_11:
	.long	fact
.section bb0_89
.LBB0_89:                               @ %if.end34
	ldr	r0, [sp, #44]           @ 4-byte Reload
	mov	r3, #266338304
	mov	r1, r5
	mov	r2, #0
	orr	r3, r3, #1879048192
	b	.LBB0_111
.section bb0_90
.LBB0_90:                               @ %sw.bb8.i
	mov	r2, #0
	mov	r3, #0
	bl	__cos
	ldr	r8, [sp, #16]           @ 4-byte Reload
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %sw.bb8.i
	ldr	r6, [sp, #8]            @ 4-byte Reload
	ldr	r4, [sp, #20]           @ 4-byte Reload
	ldr	r5, [sp, #12]           @ 4-byte Reload
	ldr	r7, [sp, #52]           @ 4-byte Reload
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_97
.section bb0_92
.LBB0_92:                               @ %if.then55
	ldr	r6, [sp, #8]            @ 4-byte Reload
	ldr	r5, [sp, #12]           @ 4-byte Reload
	cmp	r7, #3
	mov	r7, r11
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %if.then55
	mov	r11, r10
	mov	r10, r8
	mov	r2, #0
	bne	.LBB0_95
	b	.LBB0_94
.section bb0_94
.LBB0_94:                               @ %sw.bb13.i
	mov	r3, #0
	bl	__cos
	mov	r2, r0
	eor	r3, r1, #-2147483648
	b	.LBB0_96
.section bb0_95
.LBB0_95:                               @ %sw.bb.i
	str	r2, [sp]
	mov	r2, #0
	mov	r3, #0
	bl	__sin
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %sinpi.exit
	ldr	r8, [sp, #16]           @ 4-byte Reload
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %sinpi.exit
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %sinpi.exit
	mov	r3, r1
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_dmul
	b	.LBB0_99
.section bb0_99
.LBB0_99:                               @ %sinpi.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_19
	ldr	r1, .LCPI0_21
	b	.LBB0_100
.LCPI0_19:
	.long	1413754136              @ 0x54442d18
.LCPI0_21:
	.long	3221823995              @ 0xc00921fb
.section bb0_100
.LBB0_100:                              @ %sinpi.exit
	bl	__aeabi_ddiv
	mov	r7, r0
	mov	r9, r1
	eor	r6, r6, #-2147483648
	eor	r5, r5, #-2147483648
	b	.LBB0_101
.section bb0_101
.LBB0_101:                              @ %if.end62
	ldr	r3, .LCPI0_22
	mov	r2, #964689920
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_102
.LCPI0_22:
	.long	1075321157              @ 0x40181945
.section bb0_102
.LBB0_102:                              @ %if.end62
	orr	r2, r2, #-2147483648
	bl	__aeabi_dmul
	mov	r2, r7
	mov	r3, r9
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %if.end62
	bl	__aeabi_dmul
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_ddiv
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %if.end62
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r9
	b	.LBB0_105
.section bb0_105
.LBB0_105:                              @ %if.end62
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_106
.section bb0_106
.LBB0_106:                              @ %if.end62
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_107
.section bb0_107
.LBB0_107:                              @ %if.end62
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %if.end62
	mov	r1, r11
	bl	pow
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_109
.section bb0_109
.LBB0_109:                              @ %if.end62
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %if.end62
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_111
.section bb0_111
.LBB0_111:                              @ %return
	bl	__aeabi_dmul
	b	.LBB0_112
.section bb0_112
.LBB0_112:                              @ %return
	mov	r4, r0
	b	.LBB0_113
.section bb0_113
.LBB0_113:                              @ %return
	mov	r0, r4
	add	sp, sp, #60
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	tgamma, .Ltmp0-tgamma
	.cantunwind
	.fnend

	.type	fact,%object            @ @fact
	.section	.rodata,"a",%progbits
	.align	3
fact:
	.long	0                       @ double 1.000000e+00
	.long	1072693248
	.long	0                       @ double 1.000000e+00
	.long	1072693248
	.long	0                       @ double 2.000000e+00
	.long	1073741824
	.long	0                       @ double 6.000000e+00
	.long	1075314688
	.long	0                       @ double 2.400000e+01
	.long	1077411840
	.long	0                       @ double 1.200000e+02
	.long	1079902208
	.long	0                       @ double 7.200000e+02
	.long	1082556416
	.long	0                       @ double 5.040000e+03
	.long	1085517824
	.long	0                       @ double 4.032000e+04
	.long	1088663552
	.long	0                       @ double 3.628800e+05
	.long	1091970560
	.long	0                       @ double 3.628800e+06
	.long	1095479168
	.long	0                       @ double 3.991680e+07
	.long	1099106472
	.long	0                       @ double 4.790016e+08
	.long	1102875900
	.long	3221225472              @ double 6.227021e+09
	.long	1106719372
	.long	671088640               @ double 8.717829e+10
	.long	1110723643
	.long	1971322880              @ double 1.307674e+12
	.long	1114834807
	.long	1971322880              @ double 2.092279e+13
	.long	1119029111
	.long	3973578752              @ double 3.556874e+14
	.long	1123301358
	.long	3396534272              @ double 6.402374e+15
	.long	1127661292
	.long	812158976               @ double 1.216451e+17
	.long	1132135097
	.long	3191953920              @ double 2.432902e+18
	.long	1136714163
	.long	3921004064              @ double 5.109094e+19
	.long	1141254203
	.long	1633284204              @ double 1.124001e+21
	.long	1145993042
	.size	fact, 184

	.type	Snum,%object            @ @Snum
	.align	3
Snum:
	.long	1136764062              @ double 2.353138e+10
	.long	1108732497
	.long	1979010135              @ double 4.291980e+10
	.long	1109654640
	.long	2173351450              @ double 3.571196e+10
	.long	1109434674
	.long	585639450               @ double 1.792103e+10
	.long	1108390069
	.long	3013976552              @ double 6.039543e+09
	.long	1106673601
	.long	4124308287              @ double 1.439720e+09
	.long	1104507928
	.long	2075746090              @ double 2.488746e+08
	.long	1101900556
	.long	4183674008              @ double 3.142642e+07
	.long	1098774646
	.long	1350628428              @ double 2.876371e+06
	.long	1095102953
	.long	528975851               @ double 1.860563e+05
	.long	1090958914
	.long	140040196               @ double 8.071672e+03
	.long	1086293932
	.long	2075933522              @ double 2.108243e+02
	.long	1080711776
	.long	536225541               @ double 2.506628e+00
	.long	1074007443
	.size	Snum, 104

	.type	Sden,%object            @ @Sden
	.align	3
Sden:
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	0                       @ double 3.991680e+07
	.long	1099106472
	.long	2147483648              @ double 1.205438e+08
	.long	1100791145
	.long	2952790016              @ double 1.509180e+08
	.long	1101135270
	.long	1879048192              @ double 1.052581e+08
	.long	1100552305
	.long	2415919104              @ double 4.599573e+07
	.long	1099296438
	.long	3758096384              @ double 1.333954e+07
	.long	1097429361
	.long	0                       @ double 2.637558e+06
	.long	1094983547
	.long	0                       @ double 3.574230e+05
	.long	1091948732
	.long	0                       @ double 3.267000e+04
	.long	1088415616
	.long	0                       @ double 1.925000e+03
	.long	1084101632
	.long	0                       @ double 6.600000e+01
	.long	1079017472
	.long	0                       @ double 1.000000e+00
	.long	1072693248
	.size	Sden, 104


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
