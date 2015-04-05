.section __tan_text
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
	.file	"src/math/__tan.bc"
	.globl	__tan
	.align	2
	.type	__tan,%function
.section bb0_0
__tan:                                  @ @__tan
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
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r10, r0
	mov	r7, r3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r2
	bic	r1, r4, #-2147483641
	str	r1, [sp, #20]           @ 4-byte Spill
	ldr	r0, .LCPI0_31
	b	.LBB0_5
.LCPI0_31:
	.long	1072010279              @ 0x3fe59427
.section bb0_5
.LBB0_5:                                @ %entry
	cmp	r1, r0
	mov	r0, #0
	movlo	r0, #1
	moveq	r0, #1
	cmp	r0, #0
	bne	.LBB0_17
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r10
	mov	r3, r4
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then
	bl	__aeabi_dsub
	mov	r11, r0
	mov	r6, r1
	mov	r0, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then
	mov	r1, #-2147483648
	mov	r2, r8
	mov	r3, r7
	bl	__aeabi_dsub
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then
	mov	r9, r0
	mov	r0, #0
	str	r1, [sp, #24]           @ 4-byte Spill
	cmp	r0, r4, lsr #31
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then
	ldr	r0, .LCPI0_33
	ldr	r1, .LCPI0_34
	movne	r10, r11
	moveq	r6, r4
	b	.LBB0_11
.LCPI0_33:
	.long	1413754136              @ 0x54442d18
.LCPI0_34:
	.long	1072243195              @ 0x3fe921fb
.section bb0_11
.LBB0_11:                               @ %if.then
	mov	r2, r10
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r5, r0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then
	mov	r0, #0
	mov	r6, r1
	cmp	r0, r4, lsr #31
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then
	movne	r8, r9
	mov	r2, r8
	movne	r7, r0
	ldr	r0, .LCPI0_35
	b	.LBB0_14
.LCPI0_35:
	.long	856972295               @ 0x33145c07
.section bb0_14
.LBB0_14:                               @ %if.then
	ldr	r1, .LCPI0_36
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_15
.LCPI0_36:
	.long	1015129638              @ 0x3c81a626
.section bb0_15
.LBB0_15:                               @ %if.then
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then
	mov	r10, r0
	lsr	r0, r4, #31
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB0_18
.section bb0_17
.LBB0_17:
                                        @ implicit-def: R0
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r1, r4
	str	r7, [sp, #16]           @ 4-byte Spill
	str	r8, [sp, #12]           @ 4-byte Spill
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end8
	mov	r0, r10
	mov	r2, r10
	mov	r3, r1
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end8
	bl	__aeabi_dmul
	mov	r11, r0
	mov	r8, r1
	mov	r2, r11
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end8
	mov	r3, r8
                                        @ kill: R0<def> R11<kill>
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dmul
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end8
	ldr	r2, .LCPI0_37
	ldr	r3, .LCPI0_38
	mov	r7, r0
	mov	r4, r1
	b	.LBB0_22
.LCPI0_37:
	.long	3680523123              @ 0xdb605373
.LCPI0_38:
	.long	3203626443              @ 0xbef375cb
.section bb0_22
.LBB0_22:                               @ %if.end8
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_39
	b	.LBB0_23
.LCPI0_39:
	.long	2687996582              @ 0xa03792a6
.section bb0_23
.LBB0_23:                               @ %if.end8
	ldr	r3, .LCPI0_40
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_24
.LCPI0_40:
	.long	1058307720              @ 0x3f147e88
.section bb0_24
.LBB0_24:                               @ %if.end8
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_41
	b	.LBB0_25
.LCPI0_41:
	.long	4075971841              @ 0xf2f26501
.section bb0_25
.LBB0_25:                               @ %if.end8
	ldr	r3, .LCPI0_42
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_26
.LCPI0_42:
	.long	1061373144              @ 0x3f4344d8
.section bb0_26
.LBB0_26:                               @ %if.end8
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_43
	b	.LBB0_27
.LCPI0_43:
	.long	3377857320              @ 0xc9560328
.section bb0_27
.LBB0_27:                               @ %if.end8
	ldr	r3, .LCPI0_44
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_28
.LCPI0_44:
	.long	1064135970              @ 0x3f6d6d22
.section bb0_28
.LBB0_28:                               @ %if.end8
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_45
	b	.LBB0_29
.LCPI0_45:
	.long	2215040567              @ 0x8406d637
.section bb0_29
.LBB0_29:                               @ %if.end8
	ldr	r3, .LCPI0_46
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_30
.LCPI0_46:
	.long	1066820852              @ 0x3f9664f4
.section bb0_30
.LBB0_30:                               @ %if.end8
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_47
	b	.LBB0_31
.LCPI0_47:
	.long	286326394               @ 0x1110fe7a
.section bb0_31
.LBB0_31:                               @ %if.end8
	ldr	r3, .LCPI0_48
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_49
	ldr	r3, .LCPI0_50
	b	.LBB0_32
.LCPI0_48:
	.long	1069617425              @ 0x3fc11111
.LCPI0_49:
	.long	1958705876              @ 0x74bf7ad4
.LCPI0_50:
	.long	1056647792              @ 0x3efb2a70
.section bb0_32
.LBB0_32:                               @ %if.end8
	mov	r6, r0
	mov	r9, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end8
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_51
	ldr	r3, .LCPI0_52
	bl	__aeabi_dadd
	b	.LBB0_34
.LCPI0_51:
	.long	854632425               @ 0x32f0a7e9
.LCPI0_52:
	.long	1058191375              @ 0x3f12b80f
.section bb0_34
.LBB0_34:                               @ %if.end8
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end8
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_53
	ldr	r3, .LCPI0_54
	bl	__aeabi_dadd
	b	.LBB0_36
.LCPI0_53:
	.long	445452392               @ 0x1a8d1068
.LCPI0_54:
	.long	1060120311              @ 0x3f3026f7
.section bb0_36
.LBB0_36:                               @ %if.end8
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end8
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_55
	ldr	r3, .LCPI0_56
	bl	__aeabi_dadd
	b	.LBB0_38
.LCPI0_55:
	.long	4276126485              @ 0xfee08315
.LCPI0_56:
	.long	1062722504              @ 0x3f57dbc8
.section bb0_38
.LBB0_38:                               @ %if.end8
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end8
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_57
	ldr	r3, .LCPI0_58
	bl	__aeabi_dadd
	b	.LBB0_40
.LCPI0_57:
	.long	3916334227              @ 0xe96e8493
.LCPI0_58:
	.long	1065494243              @ 0x3f8226e3
.section bb0_40
.LBB0_40:                               @ %if.end8
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end8
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_59
	ldr	r3, .LCPI0_60
	bl	__aeabi_dadd
	b	.LBB0_42
.LCPI0_59:
	.long	464732670               @ 0x1bb341fe
.LCPI0_60:
	.long	1068212666              @ 0x3faba1ba
.section bb0_42
.LBB0_42:                               @ %if.end8
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.end8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r1, r9
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end8
	mov	r0, r6
	mov	r9, r10
	bl	__aeabi_dadd
	ldr	r10, [sp, #24]          @ 4-byte Reload
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.end8
	mov	r5, r0
	mov	r6, r1
	mov	r0, r9
	mov	r2, r11
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end8
	mov	r3, r8
	mov	r1, r10
	bl	__aeabi_dmul
	mov	r4, r0
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.end8
	mov	r7, r1
	mov	r2, r5
	mov	r3, r6
                                        @ kill: R0<def> R4<kill>
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %if.end8
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	ldr	r6, [sp, #12]           @ 4-byte Reload
	ldr	r5, [sp, #16]           @ 4-byte Reload
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.end8
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r5
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.end8
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.end8
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.end8
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_61
	b	.LBB0_53
.LCPI0_61:
	.long	1431655779              @ 0x55555563
.section bb0_53
.LBB0_53:                               @ %if.end8
	ldr	r3, .LCPI0_62
	mov	r5, r0
	mov	r6, r1
	mov	r0, r4
	b	.LBB0_54
.LCPI0_62:
	.long	1070945621              @ 0x3fd55555
.section bb0_54
.LBB0_54:                               @ %if.end8
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %if.end8
	bl	__aeabi_dadd
	mov	r7, r0
	mov	r6, r1
	mov	r0, r9
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %if.end8
	mov	r1, r10
	mov	r2, r7
	mov	r3, r6
	bl	__aeabi_dadd
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %if.end8
	mov	r5, r0
	mov	r4, r1
	ldr	r0, .LCPI0_32
	ldr	r1, [sp, #20]           @ 4-byte Reload
	b	.LBB0_58
.LCPI0_32:
	.long	1072010279              @ 0x3fe59427
.section bb0_58
.LBB0_58:                               @ %if.end8
	cmp	r1, r0
	mov	r0, #0
	movlo	r0, #1
	moveq	r0, #1
	cmp	r0, #0
	bne	.LBB0_72
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %if.then41
	ldr	r1, [sp, #64]
	mov	r0, #1
	sub	r0, r0, r1, lsl #1
	bl	__aeabi_i2d
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.then41
	mov	r8, r0
	str	r9, [sp, #20]           @ 4-byte Spill
	mov	r9, r1
	mov	r0, r5
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.then41
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then41
	mov	r10, r0
	mov	r11, r1
	mov	r0, r8
	mov	r1, r9
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.then41
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.then41
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	bl	__aeabi_ddiv
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %if.then41
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.then41
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %if.then41
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__aeabi_dadd
	mov	r2, #0
	mov	r3, #-1073741824
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.then41
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.then41
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.then41
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %if.then41
	bl	__aeabi_dsub
	mov	r5, r0
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	r4, r1
	cmp	r0, #0
	moveq	r4, r7
	moveq	r5, r6
	b	.LBB0_86
.section bb0_72
.LBB0_72:                               @ %if.end53
	ldr	r3, [sp, #24]           @ 4-byte Reload
	ldr	r0, [sp, #64]
	cmp	r0, #0
	beq	.LBB0_86
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.end56
	mov	r0, #0
	mov	r1, r4
	mov	r2, r9
	bl	__aeabi_dsub
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %if.end56
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %if.end56
	bl	__aeabi_dsub
	mov	r6, r1
	mov	r1, #267386880
	mov	r7, r0
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %if.end56
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	orr	r1, r1, #-1342177280
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %if.end56
	bl	__aeabi_ddiv
	mov	r5, r1
	mov	r8, r0
	mov	r0, r7
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %if.end56
	mov	r1, r6
	mov	r2, #0
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.end56
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0
	mov	r1, r4
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.end56
	mov	r2, #0
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r3, #267386880
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %if.end56
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %if.end56
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %if.end56
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r5
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.end56
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %if.end56
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %return
	mov	r0, r5
	mov	r1, r4
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__tan, .Ltmp0-__tan
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
