.section __rem_pio2_text
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
	.file	"src/math/__rem_pio2.bc"
	.globl	__rem_pio2
	.align	2
	.type	__rem_pio2,%function
.section bb0_0
__rem_pio2:                             @ @__rem_pio2
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
	.pad	#68
	sub	sp, sp, #68
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	ldr	r0, .LCPI0_32
	mov	r4, r1
	b	.LBB0_4
.LCPI0_32:
	.long	1074752122              @ 0x400f6a7a
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r11, r2
	bic	r10, r4, #-2147483648
	lsr	r8, r4, #31
	cmp	r10, r0
	bhi	.LBB0_14
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	ldr	r0, .LCPI0_35
	ldr	r1, .LCPI0_58
	and	r0, r4, r0
	cmp	r0, r1
	beq	.LBB0_36
	b	.LBB0_6
.LCPI0_35:
	.long	1048575                 @ 0xfffff
.LCPI0_58:
	.long	598523                  @ 0x921fb
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, .LCPI0_59
	mov	r2, #339738624
	orr	r2, r2, #1073741824
	cmp	r10, r0
	bhi	.LBB0_28
	b	.LBB0_7
.LCPI0_59:
	.long	1073928572              @ 0x4002d97c
.section bb0_7
.LBB0_7:                                @ %if.then12
	cmp	r8, #0
	beq	.LBB0_99
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.else
	ldr	r3, .LCPI0_67
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_9
.LCPI0_67:
	.long	1073291771              @ 0x3ff921fb
.section bb0_9
.LBB0_9:                                @ %if.else
	ldr	r6, .LCPI0_41
	ldr	r7, .LCPI0_68
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_10
.LCPI0_41:
	.long	442655537               @ 0x1a626331
.LCPI0_68:
	.long	1037087841              @ 0x3dd0b461
.section bb0_10
.LBB0_10:                               @ %if.else
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.else
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.else
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.else
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mvn	r0, #0
	b	.LBB0_77
.section bb0_14
.LBB0_14:                               @ %if.end43
	ldr	r0, .LCPI0_33
	cmp	r10, r0
	bhi	.LBB0_24
	b	.LBB0_15
.LCPI0_33:
	.long	1075594811              @ 0x401c463b
.section bb0_15
.LBB0_15:                               @ %if.then46
	ldr	r0, .LCPI0_38
	cmp	r10, r0
	bhi	.LBB0_35
	b	.LBB0_16
.LCPI0_38:
	.long	1075183036              @ 0x4015fdbc
.section bb0_16
.LBB0_16:                               @ %if.then49
	ldr	r0, .LCPI0_51
	cmp	r10, r0
	beq	.LBB0_36
	b	.LBB0_17
.LCPI0_51:
	.long	1074977148              @ 0x4012d97c
.section bb0_17
.LBB0_17:                               @ %if.end53
	mov	r2, #254803968
	cmp	r8, #0
	orr	r2, r2, #1879048192
	beq	.LBB0_111
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.else63
	ldr	r3, .LCPI0_52
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_19
.LCPI0_52:
	.long	1074977148              @ 0x4012d97c
.section bb0_19
.LBB0_19:                               @ %if.else63
	ldr	r6, .LCPI0_53
	ldr	r7, .LCPI0_55
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_20
.LCPI0_53:
	.long	2811466954              @ 0xa79394ca
.LCPI0_55:
	.long	1038683793              @ 0x3de90e91
.section bb0_20
.LBB0_20:                               @ %if.else63
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.else63
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.else63
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.else63
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mvn	r0, #2
	b	.LBB0_77
.section bb0_24
.LBB0_24:                               @ %if.end93
	ldr	r0, .LCPI0_34
	cmp	r10, r0
	bls	.LBB0_36
	b	.LBB0_25
.LCPI0_34:
	.long	1094263290              @ 0x413921fa
.section bb0_25
.LBB0_25:                               @ %if.end148
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	cmp	r10, r0
	blo	.LBB0_78
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.then151
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.then151
	bl	__aeabi_dsub
	stm	r11, {r0, r1}
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mov	r0, #0
	b	.LBB0_77
.section bb0_28
.LBB0_28:                               @ %if.else25
	cmp	r8, #0
	beq	.LBB0_105
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.else35
	ldr	r3, .LCPI0_62
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_30
.LCPI0_62:
	.long	1074340347              @ 0x400921fb
.section bb0_30
.LBB0_30:                               @ %if.else35
	ldr	r6, .LCPI0_42
	ldr	r7, .LCPI0_63
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_31
.LCPI0_42:
	.long	442655537               @ 0x1a626331
.LCPI0_63:
	.long	1038136417              @ 0x3de0b461
.section bb0_31
.LBB0_31:                               @ %if.else35
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.else35
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.else35
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.else35
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mvn	r0, #1
	b	.LBB0_77
.section bb0_35
.LBB0_35:                               @ %if.else71
	ldr	r0, .LCPI0_39
	cmp	r10, r0
	bne	.LBB0_92
	b	.LBB0_36
.LCPI0_39:
	.long	1075388923              @ 0x401921fb
.section bb0_36
.LBB0_36:                               @ %medium
	ldr	r2, .LCPI0_71
	ldr	r3, .LCPI0_72
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_37
.LCPI0_71:
	.long	1841940611              @ 0x6dc9c883
.LCPI0_72:
	.long	1071931184              @ 0x3fe45f30
.section bb0_37
.LBB0_37:                               @ %medium
	bl	__aeabi_dmul
	mov	r3, #54001664
	mov	r2, #0
	orr	r3, r3, #1073741824
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %medium
	bl	__aeabi_dadd
	mov	r3, #54001664
	mov	r2, #0
	orr	r3, r3, #-1073741824
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %medium
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_64
	mov	r2, #339738624
	mov	r6, r0
	b	.LBB0_40
.LCPI0_64:
	.long	3220775419              @ 0xbff921fb
.section bb0_40
.LBB0_40:                               @ %medium
	mov	r7, r1
	orr	r2, r2, #1073741824
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %medium
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %medium
	mov	r1, r4
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_43
	ldr	r3, .LCPI0_69
	b	.LBB0_43
.LCPI0_43:
	.long	442655537               @ 0x1a626331
.LCPI0_69:
	.long	1037087841              @ 0x3dd0b461
.section bb0_43
.LBB0_43:                               @ %medium
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %medium
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %medium
	mov	r1, r5
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_dsub
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %medium
	mov	r8, r0
	mov	r0, #255
	mov	r9, r1
	mov	r1, r7
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %medium
	orr	r0, r0, #1792
	stm	r11, {r8, r9}
	str	r11, [sp, #16]          @ 4-byte Spill
	and	r0, r0, r9, lsr #20
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %medium
	rsb	r11, r0, r10, lsr #20
	mov	r0, r6
	bl	__aeabi_d2iz
	cmp	r11, #17
	blt	.LBB0_74
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.then115
	str	r0, [sp, #20]           @ 4-byte Spill
	lsr	r0, r10, #20
	mov	r2, #174063616
	mov	r9, r7
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.then115
	mov	r11, r6
	str	r0, [sp, #12]           @ 4-byte Spill
	ldr	r3, .LCPI0_70
	orr	r2, r2, #268435456
	b	.LBB0_51
.LCPI0_70:
	.long	1037087841              @ 0x3dd0b461
.section bb0_51
.LBB0_51:                               @ %if.then115
	mov	r0, r11
	mov	r1, r9
	str	r9, [sp, #4]            @ 4-byte Spill
	bl	__aeabi_dmul
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.then115
	mov	r6, r0
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %if.then115
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r10, r0
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.then115
	mov	r0, r4
	mov	r4, r1
	mov	r1, r5
	mov	r2, r10
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %if.then115
	mov	r3, r4
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %if.then115
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_73
	ldr	r3, .LCPI0_74
	mov	r6, r0
	b	.LBB0_57
.LCPI0_73:
	.long	771977331               @ 0x2e037073
.LCPI0_74:
	.long	1000544650              @ 0x3ba3198a
.section bb0_57
.LBB0_57:                               @ %if.then115
	mov	r7, r1
	mov	r0, r11
	mov	r1, r9
	bl	__aeabi_dmul
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %if.then115
	mov	r2, r6
	mov	r3, r7
	mov	r6, r10
	bl	__aeabi_dsub
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %if.then115
	mov	r5, r0
	mov	r7, r1
	mov	r0, r6
	mov	r1, r4
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.then115
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r9, r1
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.then115
	ldr	r1, [sp, #16]           @ 4-byte Reload
	mov	r8, r0
	mov	r0, #255
	orr	r0, r0, #1792
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then115
	and	r0, r0, r9, lsr #20
	stm	r1, {r8, r9}
	mov	r10, r1
	ldr	r2, [sp, #12]           @ 4-byte Reload
	sub	r0, r2, r0
	cmp	r0, #50
	blt	.LBB0_75
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.then133
	ldr	r3, .LCPI0_75
	ldr	r9, [sp, #4]            @ 4-byte Reload
	mov	r0, r11
	mov	r2, #771751936
	b	.LBB0_64
.LCPI0_75:
	.long	1000544650              @ 0x3ba3198a
.section bb0_64
.LBB0_64:                               @ %if.then133
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r7, r1
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %if.then133
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.then133
	bl	__aeabi_dsub
	mov	r3, r6
	mov	r6, r0
	mov	r2, r4
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %if.then133
	mov	r4, r1
	mov	r0, r3
	mov	r1, r2
	mov	r2, r6
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.then133
	mov	r3, r4
	bl	__aeabi_dsub
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.then133
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_76
	ldr	r3, .LCPI0_77
	mov	r5, r0
	b	.LBB0_70
.LCPI0_76:
	.long	622873025               @ 0x252049c1
.LCPI0_77:
	.long	964395930               @ 0x397b839a
.section bb0_70
.LBB0_70:                               @ %if.then133
	mov	r7, r1
	mov	r0, r11
	mov	r1, r9
	bl	__aeabi_dmul
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.then133
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r5, r0
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %if.then133
	mov	r7, r1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.then133
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r8, r0
	mov	r9, r1
	stm	r10, {r8, r9}
	b	.LBB0_75
.section bb0_74
.LBB0_74:
	mov	r6, r4
	mov	r4, r5
	ldr	r10, [sp, #16]          @ 4-byte Reload
	ldr	r5, [sp, #12]           @ 4-byte Reload
	ldr	r7, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %if.end143
	mov	r0, r6
	mov	r1, r4
	mov	r2, r8
	mov	r3, r9
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %if.end143
	bl	__aeabi_dsub
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dsub
	str	r0, [r10, #8]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r1, [r10, #12]
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %return
	add	sp, sp, #68
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_78
.LBB0_78:                               @ %if.end155
	ldr	r0, .LCPI0_36
	mov	r9, #24117248
	mov	r6, #0
	add	r7, sp, #40
	b	.LBB0_79
.LCPI0_36:
	.long	1048575                 @ 0xfffff
.section bb0_79
.LBB0_79:                               @ %if.end155
	orr	r9, r9, #1073741824
	and	r0, r4, r0
	orr	r0, r0, #23068672
	orr	r4, r0, #1073741824
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_d2iz
	bl	__aeabi_i2d
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %for.body
                                        @   in Loop: Header=BB0_80 Depth=1
	mov	r2, r0
	mov	r3, r1
	add	r0, r7, r6
	mov	r1, r4
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %for.body
                                        @   in Loop: Header=BB0_80 Depth=1
	str	r2, [r7, r6]
	str	r3, [r0, #4]
	mov	r0, r5
	bl	__aeabi_dsub
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %for.body
                                        @   in Loop: Header=BB0_80 Depth=1
	mov	r2, #0
	mov	r3, r9
	bl	__aeabi_dmul
	add	r6, r6, #8
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %for.body
                                        @   in Loop: Header=BB0_80 Depth=1
	mov	r5, r0
	mov	r4, r1
	cmp	r6, #16
	bne	.LBB0_80
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %for.end
	add	r7, r7, #8
	mov	r6, #3
	str	r5, [sp, #56]
	str	r4, [sp, #60]
	b	.LBB0_87
.section bb0_86
.LBB0_86:                               @ %while.cond.while.cond_crit_edge
                                        @   in Loop: Header=BB0_87 Depth=1
	ldr	r5, [r7]
	ldr	r4, [r7, #4]
	sub	r7, r7, #8
	sub	r6, r6, #1
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_86
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %while.end
	mov	r0, #1
	add	r1, sp, #24
	mov	r3, r6
	str	r0, [sp]
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %while.end
	ldr	r0, .LCPI0_37
	add	r2, r0, r10, lsr #20
	add	r0, sp, #40
	bl	__rem_pio2_large
	b	.LBB0_90
.LCPI0_37:
	.long	4294966250              @ 0xfffffbea
.section bb0_90
.LBB0_90:                               @ %while.end
	add	r7, sp, #24
	cmp	r8, #0
	ldm	r7, {r1, r3, r7}
	ldr	r2, [sp, #36]
	beq	.LBB0_117
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %if.then178
	eor	r3, r3, #-2147483648
	eor	r2, r2, #-2147483648
	rsb	r0, r0, #0
	stm	r11, {r1, r3, r7}
	str	r2, [r11, #12]
	b	.LBB0_77
.section bb0_92
.LBB0_92:                               @ %if.end75
	mov	r2, #339738624
	cmp	r8, #0
	orr	r2, r2, #1073741824
	beq	.LBB0_118
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %if.else85
	ldr	r3, .LCPI0_40
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_94
.LCPI0_40:
	.long	1075388923              @ 0x401921fb
.section bb0_94
.LBB0_94:                               @ %if.else85
	ldr	r6, .LCPI0_44
	ldr	r7, .LCPI0_48
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_95
.LCPI0_44:
	.long	442655537               @ 0x1a626331
.LCPI0_48:
	.long	1039184993              @ 0x3df0b461
.section bb0_95
.LBB0_95:                               @ %if.else85
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %if.else85
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %if.else85
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %if.else85
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mvn	r0, #3
	b	.LBB0_77
.section bb0_99
.LBB0_99:                               @ %if.then13
	ldr	r3, .LCPI0_65
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_100
.LCPI0_65:
	.long	3220775419              @ 0xbff921fb
.section bb0_100
.LBB0_100:                              @ %if.then13
	ldr	r6, .LCPI0_45
	ldr	r7, .LCPI0_66
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_101
.LCPI0_45:
	.long	442655537               @ 0x1a626331
.LCPI0_66:
	.long	3184571489              @ 0xbdd0b461
.section bb0_101
.LBB0_101:                              @ %if.then13
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %if.then13
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %if.then13
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %if.then13
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mov	r0, #1
	b	.LBB0_77
.section bb0_105
.LBB0_105:                              @ %if.then27
	ldr	r3, .LCPI0_60
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_106
.LCPI0_60:
	.long	3221823995              @ 0xc00921fb
.section bb0_106
.LBB0_106:                              @ %if.then27
	ldr	r6, .LCPI0_46
	ldr	r7, .LCPI0_61
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_107
.LCPI0_46:
	.long	442655537               @ 0x1a626331
.LCPI0_61:
	.long	3185620065              @ 0xbde0b461
.section bb0_107
.LBB0_107:                              @ %if.then27
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %if.then27
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_109
.section bb0_109
.LBB0_109:                              @ %if.then27
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %if.then27
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mov	r0, #2
	b	.LBB0_77
.section bb0_111
.LBB0_111:                              @ %if.then55
	ldr	r3, .LCPI0_56
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_112
.LCPI0_56:
	.long	3222460796              @ 0xc012d97c
.section bb0_112
.LBB0_112:                              @ %if.then55
	ldr	r6, .LCPI0_54
	ldr	r7, .LCPI0_57
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_113
.LCPI0_54:
	.long	2811466954              @ 0xa79394ca
.LCPI0_57:
	.long	3186167441              @ 0xbde90e91
.section bb0_113
.LBB0_113:                              @ %if.then55
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_114
.section bb0_114
.LBB0_114:                              @ %if.then55
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_115
.section bb0_115
.LBB0_115:                              @ %if.then55
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_116
.section bb0_116
.LBB0_116:                              @ %if.then55
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mov	r0, #3
	b	.LBB0_77
.section bb0_117
.LBB0_117:                              @ %if.end186
	stm	r11, {r1, r3, r7}
	str	r2, [r11, #12]
	b	.LBB0_77
.section bb0_118
.LBB0_118:                              @ %if.then77
	ldr	r3, .LCPI0_49
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_119
.LCPI0_49:
	.long	3222872571              @ 0xc01921fb
.section bb0_119
.LBB0_119:                              @ %if.then77
	ldr	r6, .LCPI0_47
	ldr	r7, .LCPI0_50
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_120
.LCPI0_47:
	.long	442655537               @ 0x1a626331
.LCPI0_50:
	.long	3186668641              @ 0xbdf0b461
.section bb0_120
.LBB0_120:                              @ %if.then77
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_121
.section bb0_121
.LBB0_121:                              @ %if.then77
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_122
.section bb0_122
.LBB0_122:                              @ %if.then77
	mov	r1, r5
	stm	r11, {r2, r3}
	bl	__aeabi_dsub
	mov	r2, r6
	b	.LBB0_123
.section bb0_123
.LBB0_123:                              @ %if.then77
	mov	r3, r7
	bl	__aeabi_dadd
	str	r0, [r11, #8]
	str	r1, [r11, #12]
	mov	r0, #4
	b	.LBB0_77
.Ltmp0:
	.size	__rem_pio2, .Ltmp0-__rem_pio2
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
