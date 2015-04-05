.section erff_text
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
	.file	"src/math/erff.bc"
	.globl	erff
	.align	2
	.type	erff,%function
.section bb0_0
erff:                                   @ @erff
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	bic	r0, r4, #-2147483648
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	lsr	r6, r4, #31
	lsr	r1, r0, #23
	cmp	r1, #255
	blo	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	mov	r0, #1
	sub	r0, r0, r6, lsl #1
	bl	__aeabi_i2f
	mov	r5, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r0, #1065353216
	mov	r1, r4
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	b	.LBB0_26
.section bb0_5
.LBB0_5:                                @ %if.end
	ldr	r2, .LCPI0_13
	cmp	r0, r2
	bhi	.LBB0_9
	b	.LBB0_6
.LCPI0_13:
	.long	1062731775              @ 0x3f57ffff
.section bb0_6
.LBB0_6:                                @ %if.then3
	mov	r0, r4
	cmp	r1, #98
	bhi	.LBB0_12
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then6
	mov	r1, #1090519040
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_25
	mov	r5, r0
	b	.LBB0_8
.LCPI0_25:
	.long	1065579988              @ 0x3f8375d4
.section bb0_8
.LBB0_8:                                @ %if.then6
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	mov	r1, #1040187392
	bl	__aeabi_fmul
	b	.LBB0_26
.section bb0_9
.LBB0_9:                                @ %if.end34
	ldr	r1, .LCPI0_14
	mov	r5, #1065353216
	cmp	r0, r1
	bhi	.LBB0_11
	b	.LBB0_10
.LCPI0_14:
	.long	1086324735              @ 0x40bfffff
.section bb0_10
.LBB0_10:                               @ %if.then37
	mov	r1, r4
	bl	erfc2
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end39
	mov	r0, #-2147483648
	mov	r1, r5
	bl	__aeabi_fsub
	cmp	r6, #0
	moveq	r0, r5
	b	.LBB0_26
.section bb0_12
.LBB0_12:                               @ %if.end11
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_15
	mov	r5, r0
	b	.LBB0_13
.LCPI0_15:
	.long	3083294385              @ 0xb7c756b1
.section bb0_13
.LBB0_13:                               @ %if.end11
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_16
	bl	__aeabi_fadd
	b	.LBB0_14
.LCPI0_16:
	.long	3149730953              @ 0xbbbd1489
.section bb0_14
.LBB0_14:                               @ %if.end11
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_17
	b	.LBB0_15
.LCPI0_17:
	.long	3169407631              @ 0xbce9528f
.section bb0_15
.LBB0_15:                               @ %if.end11
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end11
	ldr	r1, .LCPI0_18
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_17
.LCPI0_18:
	.long	3198577643              @ 0xbea66beb
.section bb0_17
.LBB0_17:                               @ %if.end11
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_19
	bl	__aeabi_fadd
	ldr	r1, .LCPI0_20
	b	.LBB0_18
.LCPI0_19:
	.long	1040414164              @ 0x3e0375d4
.LCPI0_20:
	.long	3062161946              @ 0xb684e21a
.section bb0_18
.LBB0_18:                               @ %if.end11
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_21
	b	.LBB0_19
.LCPI0_21:
	.long	957017673               @ 0x390aee49
.section bb0_19
.LBB0_19:                               @ %if.end11
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end11
	ldr	r1, .LCPI0_22
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_21
.LCPI0_22:
	.long	1000767766              @ 0x3ba68116
.section bb0_21
.LBB0_21:                               @ %if.end11
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_23
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_22
.LCPI0_23:
	.long	1032137315              @ 0x3d852a63
.section bb0_22
.LBB0_22:                               @ %if.end11
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_24
	bl	__aeabi_fadd
	b	.LBB0_23
.LCPI0_24:
	.long	1053539278              @ 0x3ecbbbce
.section bb0_23
.LBB0_23:                               @ %if.end11
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, #1065353216
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end11
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fdiv
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end11
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r4
	bl	__aeabi_fadd
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	erff, .Ltmp0-erff
	.cantunwind
	.fnend

	.align	2
	.type	erfc2,%function
.section bb1_0
erfc2:                                  @ @erfc2
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r6, r0
	mov	r0, r1
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	bl	fabsf
	mov	r9, r0
	ldr	r0, .LCPI1_47
	cmp	r6, r0
	bhi	.LBB1_22
	b	.LBB1_4
.LCPI1_47:
	.long	1067450367              @ 0x3f9fffff
.section bb1_4
.LBB1_4:                                @ %if.then
	mov	r1, #1065353216
	mov	r0, r9
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.then
	ldr	r1, .LCPI1_80
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fmul
	b	.LBB1_6
.LCPI1_80:
	.long	3138255296              @ 0xbb0df9c0
.section bb1_6
.LBB1_6:                                @ %if.then
	ldr	r1, .LCPI1_81
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	b	.LBB1_7
.LCPI1_81:
	.long	1024545203              @ 0x3d1151b3
.section bb1_7
.LBB1_7:                                @ %if.then
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_82
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_8
.LCPI1_82:
	.long	3185777858              @ 0xbde31cc2
.section bb1_8
.LBB1_8:                                @ %if.then
	mov	r0, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_83
	bl	__aeabi_fadd
	b	.LBB1_9
.LCPI1_83:
	.long	1050869332              @ 0x3ea2fe54
.section bb1_9
.LBB1_9:                                @ %if.then
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_84
	b	.LBB1_10
.LCPI1_84:
	.long	3200160264              @ 0xbebe9208
.section bb1_10
.LBB1_10:                               @ %if.then
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.then
	ldr	r1, .LCPI1_85
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	b	.LBB1_12
.LCPI1_85:
	.long	1054107653              @ 0x3ed46805
.section bb1_12
.LBB1_12:                               @ %if.then
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_86
	bl	__aeabi_fadd
	ldr	r1, .LCPI1_87
	b	.LBB1_13
.LCPI1_86:
	.long	3139096006              @ 0xbb1acdc6
.LCPI1_87:
	.long	1011112611              @ 0x3c445aa3
.section bb1_13
.LBB1_13:                               @ %if.then
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_88
	b	.LBB1_14
.LCPI1_88:
	.long	1012887059              @ 0x3c5f6e13
.section bb1_14
.LBB1_14:                               @ %if.then
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %if.then
	ldr	r1, .LCPI1_89
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	b	.LBB1_16
.LCPI1_89:
	.long	1040265991              @ 0x3e013307
.section bb1_16
.LBB1_16:                               @ %if.then
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_90
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_17
.LCPI1_90:
	.long	1033050855              @ 0x3d931ae7
.section bb1_17
.LBB1_17:                               @ %if.then
	mov	r0, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_91
	bl	__aeabi_fadd
	b	.LBB1_18
.LCPI1_91:
	.long	1057642373              @ 0x3f0a5785
.section bb1_18
.LBB1_18:                               @ %if.then
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_92
	b	.LBB1_19
.LCPI1_92:
	.long	1037693745              @ 0x3dd9f331
.section bb1_19
.LBB1_19:                               @ %if.then
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %if.then
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %if.then
	bl	__aeabi_fdiv
	mov	r1, r0
	ldr	r0, .LCPI1_93
	bl	__aeabi_fsub
	b	.LBB1_66
.LCPI1_93:
	.long	1042196436              @ 0x3e1ea7d4
.section bb1_22
.LBB1_22:                               @ %if.end
	mov	r0, r9
	mov	r1, r9
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %if.end
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	mov	r5, r0
	ldr	r0, .LCPI1_48
	cmp	r6, r0
	bhi	.LBB1_41
	b	.LBB1_24
.LCPI1_48:
	.long	1077336940              @ 0x4036db6c
.section bb1_24
.LBB1_24:                               @ %if.then3
	ldr	r1, .LCPI1_63
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_64
	b	.LBB1_25
.LCPI1_63:
	.long	3239905150              @ 0xc11d077e
.LCPI1_64:
	.long	3265434411              @ 0xc2a2932b
.section bb1_25
.LBB1_25:                               @ %if.then3
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_26
.section bb1_26
.LBB1_26:                               @ %if.then3
	ldr	r1, .LCPI1_65
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_27
.LCPI1_65:
	.long	3275266791              @ 0xc3389ae7
.section bb1_27
.LBB1_27:                               @ %if.then3
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_66
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_28
.LCPI1_66:
	.long	3273811340              @ 0xc322658c
.section bb1_28
.LBB1_28:                               @ %if.then3
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_67
	bl	__aeabi_fadd
	b	.LBB1_29
.LCPI1_67:
	.long	3262742615              @ 0xc2798057
.section bb1_29
.LBB1_29:                               @ %if.then3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_68
	b	.LBB1_30
.LCPI1_68:
	.long	3240685602              @ 0xc128f022
.section bb1_30
.LBB1_30:                               @ %if.then3
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %if.then3
	ldr	r1, .LCPI1_69
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_32
.LCPI1_69:
	.long	3207700663              @ 0xbf31a0b7
.section bb1_32
.LBB1_32:                               @ %if.then3
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_70
	bl	__aeabi_fadd
	ldr	r1, .LCPI1_71
	b	.LBB1_33
.LCPI1_70:
	.long	3156320403              @ 0xbc21a093
.LCPI1_71:
	.long	3178725271              @ 0xbd777f97
.section bb1_33
.LBB1_33:                               @ %if.then3
	mov	r8, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_72
	b	.LBB1_34
.LCPI1_72:
	.long	1087520636              @ 0x40d23f7c
.section bb1_34
.LBB1_34:                               @ %if.then3
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_35
.section bb1_35
.LBB1_35:                               @ %if.then3
	ldr	r1, .LCPI1_73
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_36
.LCPI1_73:
	.long	1121535263              @ 0x42d9451f
.section bb1_36
.LBB1_36:                               @ %if.then3
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_74
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_37
.LCPI1_74:
	.long	1138131211              @ 0x43d6810b
.section bb1_37
.LBB1_37:                               @ %if.then3
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_75
	bl	__aeabi_fadd
	b	.LBB1_38
.LCPI1_75:
	.long	1143036105              @ 0x442158c9
.section bb1_38
.LBB1_38:                               @ %if.then3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_76
	b	.LBB1_39
.LCPI1_76:
	.long	1138313327              @ 0x43d9486f
.section bb1_39
.LBB1_39:                               @ %if.then3
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_40
.section bb1_40
.LBB1_40:                               @ %if.then3
	ldr	r1, .LCPI1_77
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_78
	b	.LBB1_56
.LCPI1_77:
	.long	1124706403              @ 0x4309a863
.LCPI1_78:
	.long	1100821966              @ 0x419d35ce
.section bb1_41
.LBB1_41:                               @ %if.else
	ldr	r1, .LCPI1_49
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_50
	b	.LBB1_42
.LCPI1_49:
	.long	3287401077              @ 0xc3f1c275
.LCPI1_50:
	.long	3296731915              @ 0xc480230b
.section bb1_42
.LBB1_42:                               @ %if.else
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_43
.section bb1_43
.LBB1_43:                               @ %if.else
	ldr	r1, .LCPI1_51
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_44
.LCPI1_51:
	.long	3290391617              @ 0xc41f6441
.section bb1_44
.LBB1_44:                               @ %if.else
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_52
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_45
.LCPI1_52:
	.long	3273695978              @ 0xc320a2ea
.section bb1_45
.LBB1_45:                               @ %if.else
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_53
	bl	__aeabi_fadd
	b	.LBB1_46
.LCPI1_53:
	.long	3247312971              @ 0xc18e104b
.section bb1_46
.LBB1_46:                               @ %if.else
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_54
	b	.LBB1_47
.LCPI1_54:
	.long	3209469396              @ 0xbf4c9dd4
.section bb1_47
.LBB1_47:                               @ %if.else
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_48
.section bb1_48
.LBB1_48:                               @ %if.else
	ldr	r1, .LCPI1_55
	bl	__aeabi_fadd
	ldr	r1, .LCPI1_56
	mov	r8, r0
	b	.LBB1_49
.LCPI1_55:
	.long	3156320402              @ 0xbc21a092
.LCPI1_56:
	.long	3249768210              @ 0xc1b38712
.section bb1_49
.LBB1_49:                               @ %if.else
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_57
	bl	__aeabi_fadd
	b	.LBB1_50
.LCPI1_57:
	.long	1139622823              @ 0x43ed43a7
.section bb1_50
.LBB1_50:                               @ %if.else
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_58
	b	.LBB1_51
.LCPI1_58:
	.long	1159696590              @ 0x451f90ce
.section bb1_51
.LBB1_51:                               @ %if.else
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_52
.section bb1_52
.LBB1_52:                               @ %if.else
	ldr	r1, .LCPI1_59
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_53
.LCPI1_59:
	.long	1162345915              @ 0x4547fdbb
.section bb1_53
.LBB1_53:                               @ %if.else
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_60
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_54
.LCPI1_60:
	.long	1153439577              @ 0x44c01759
.section bb1_54
.LBB1_54:                               @ %if.else
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_61
	bl	__aeabi_fadd
	b	.LBB1_55
.LCPI1_61:
	.long	1134749041              @ 0x43a2e571
.section bb1_55
.LBB1_55:                               @ %if.else
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_62
	b	.LBB1_56
.LCPI1_62:
	.long	1106424921              @ 0x41f2b459
.section bb1_56
.LBB1_56:                               @ %do.body
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_57
.section bb1_57
.LBB1_57:                               @ %do.body
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r5, r0
	ldr	r0, .LCPI1_79
	b	.LBB1_58
.LCPI1_79:
	.long	4294959104              @ 0xffffe000
.section bb1_58
.LBB1_58:                               @ %do.body
	and	r6, r9, r0
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fmul
	b	.LBB1_59
.section bb1_59
.LBB1_59:                               @ %do.body
	mov	r1, r0
	mov	r0, #252706816
	orr	r0, r0, #-1342177280
	bl	__aeabi_fsub
	b	.LBB1_60
.section bb1_60
.LBB1_60:                               @ %do.body
	bl	expf
	mov	r7, r0
	mov	r0, r6
	mov	r1, r9
	b	.LBB1_61
.section bb1_61
.LBB1_61:                               @ %do.body
	bl	__aeabi_fsub
	mov	r4, r0
	mov	r0, r9
	mov	r1, r6
	b	.LBB1_62
.section bb1_62
.LBB1_62:                               @ %do.body
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB1_63
.section bb1_63
.LBB1_63:                               @ %do.body
	mov	r4, r0
	mov	r0, r8
	mov	r1, r5
	bl	__aeabi_fdiv
	b	.LBB1_64
.section bb1_64
.LBB1_64:                               @ %do.body
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	bl	expf
	b	.LBB1_65
.section bb1_65
.LBB1_65:                               @ %do.body
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r1, r9
	bl	__aeabi_fdiv
	b	.LBB1_66
.section bb1_66
.LBB1_66:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	erfc2, .Ltmp1-erfc2
	.cantunwind
	.fnend

	.globl	erfcf
	.align	2
	.type	erfcf,%function
.section bb2_0
erfcf:                                  @ @erfcf
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r4, r0
	bic	r0, r4, #-2147483648
	lsr	r7, r4, #31
	lsr	r6, r0, #23
	cmp	r6, #255
	blo	.LBB2_5
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %if.then
	lsl	r0, r7, #1
	bl	__aeabi_i2f
	mov	r5, r0
	mov	r0, #1065353216
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.then
	mov	r1, r4
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	b	.LBB2_32
.section bb2_5
.LBB2_5:                                @ %if.end
	ldr	r1, .LCPI2_0
	cmp	r0, r1
	bhi	.LBB2_8
	b	.LBB2_6
.LCPI2_0:
	.long	1062731775              @ 0x3f57ffff
.section bb2_6
.LBB2_6:                                @ %if.then3
	cmp	r6, #70
	bhi	.LBB2_11
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %if.then6
	mov	r0, #1065353216
	mov	r1, r4
	bl	__aeabi_fsub
	b	.LBB2_32
.section bb2_8
.LBB2_8:                                @ %if.end39
	ldr	r1, .LCPI2_12
	cmp	r0, r1
	bhi	.LBB2_29
	b	.LBB2_9
.LCPI2_12:
	.long	1105199103              @ 0x41dfffff
.section bb2_9
.LBB2_9:                                @ %if.then42
	mov	r1, r4
	bl	erfc2
	mov	r4, r0
	mov	r0, #1073741824
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.then42
	mov	r1, r4
	bl	__aeabi_fsub
	cmp	r7, #0
	moveq	r0, r4
	b	.LBB2_32
.section bb2_11
.LBB2_11:                               @ %if.end7
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_13
	b	.LBB2_12
.LCPI2_13:
	.long	3083294385              @ 0xb7c756b1
.section bb2_12
.LBB2_12:                               @ %if.end7
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_14
	b	.LBB2_13
.LCPI2_14:
	.long	3149730953              @ 0xbbbd1489
.section bb2_13
.LBB2_13:                               @ %if.end7
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.end7
	ldr	r1, .LCPI2_15
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB2_15
.LCPI2_15:
	.long	3169407631              @ 0xbce9528f
.section bb2_15
.LBB2_15:                               @ %if.end7
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_16
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB2_16
.LCPI2_16:
	.long	3198577643              @ 0xbea66beb
.section bb2_16
.LBB2_16:                               @ %if.end7
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_17
	bl	__aeabi_fadd
	b	.LBB2_17
.LCPI2_17:
	.long	1040414164              @ 0x3e0375d4
.section bb2_17
.LBB2_17:                               @ %if.end7
	ldr	r1, .LCPI2_18
	mov	r8, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_18
.LCPI2_18:
	.long	3062161946              @ 0xb684e21a
.section bb2_18
.LBB2_18:                               @ %if.end7
	ldr	r1, .LCPI2_19
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB2_19
.LCPI2_19:
	.long	957017673               @ 0x390aee49
.section bb2_19
.LBB2_19:                               @ %if.end7
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_20
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB2_20
.LCPI2_20:
	.long	1000767766              @ 0x3ba68116
.section bb2_20
.LBB2_20:                               @ %if.end7
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_21
	bl	__aeabi_fadd
	b	.LBB2_21
.LCPI2_21:
	.long	1032137315              @ 0x3d852a63
.section bb2_21
.LBB2_21:                               @ %if.end7
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_22
	b	.LBB2_22
.LCPI2_22:
	.long	1053539278              @ 0x3ecbbbce
.section bb2_22
.LBB2_22:                               @ %if.end7
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_23
.section bb2_23
.LBB2_23:                               @ %if.end7
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r8
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %if.end7
	bl	__aeabi_fdiv
	mov	r5, r0
	cmp	r7, #0
	bne	.LBB2_30
	b	.LBB2_25
.section bb2_25
.LBB2_25:                               @ %if.end7
	cmp	r6, #124
	bls	.LBB2_30
	b	.LBB2_26
.section bb2_26
.LBB2_26:                               @ %if.end34
	mov	r0, r4
	mov	r1, #-1090519040
	bl	__aeabi_fadd
	mov	r6, r0
	b	.LBB2_27
.section bb2_27
.LBB2_27:                               @ %if.end34
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB2_28
.section bb2_28
.LBB2_28:                               @ %if.end34
	mov	r0, r6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, #1056964608
	bl	__aeabi_fsub
	b	.LBB2_32
.section bb2_29
.LBB2_29:                               @ %if.end46
	cmp	r7, #0
	movne	r7, #1073741824
	mov	r0, r7
	b	.LBB2_32
.section bb2_30
.LBB2_30:                               @ %if.then30
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r4
	b	.LBB2_31
.section bb2_31
.LBB2_31:                               @ %if.then30
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub
	b	.LBB2_32
.section bb2_32
.LBB2_32:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp2:
	.size	erfcf, .Ltmp2-erfcf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
