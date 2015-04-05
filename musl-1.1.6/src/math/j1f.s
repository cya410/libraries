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
	.file	"src/math/j1f.bc"
	.globl	j1f
	.align	2
	.type	j1f,%function
j1f:                                    @ @j1f
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	bic	r5, r4, #-2147483648
	lsr	r0, r5, #23
	cmp	r0, #255
	blo	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %if.then
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	b	.LBB0_21
.LBB0_3:                                @ %if.end
	cmp	r5, #1073741824
	blo	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %if.then2
	mov	r0, r4
	lsr	r6, r4, #31
	bl	fabsf
	mov	r1, r0
	b	.LBB0_5
.LBB0_5:                                @ %if.then2
	mov	r0, r5
	mov	r2, #0
	mov	r3, r6
	pop	{r4, r5, r6, lr}
	b	common
.LBB0_6:                                @ %if.end4
	mov	r0, r4
	cmp	r5, #838860800
	blo	.LBB0_20
	b	.LBB0_7
.LBB0_7:                                @ %if.then6
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_8
	b	.LBB0_8
.LCPI0_8:
	.long	861231058               @ 0x335557d2
.LBB0_8:                                @ %if.then6
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_9
	b	.LBB0_9
.LCPI0_9:
	.long	3079024182              @ 0xb7862e36
.LBB0_9:                                @ %if.then6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_10
.LBB0_10:                               @ %if.then6
	ldr	r1, .LCPI0_10
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_11
.LCPI0_10:
	.long	985165053               @ 0x3ab86cfd
.LBB0_11:                               @ %if.then6
	bl	__aeabi_fmul
	mov	r1, #1031798784
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	b	.LBB0_12
.LBB0_12:                               @ %if.then6
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_11
	b	.LBB0_13
.LCPI0_11:
	.long	760829566               @ 0x2d59567e
.LBB0_13:                               @ %if.then6
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_12
	b	.LBB0_14
.LCPI0_12:
	.long	833446982               @ 0x31ad6446
.LBB0_14:                               @ %if.then6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_15
.LBB0_15:                               @ %if.then6
	ldr	r1, .LCPI0_13
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_16
.LCPI0_13:
	.long	899547074               @ 0x359dffc2
.LBB0_16:                               @ %if.then6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_14
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_17
.LCPI0_14:
	.long	960690870               @ 0x3942fab6
.LBB0_17:                               @ %if.then6
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_15
	bl	__aeabi_fadd
	b	.LBB0_18
.LCPI0_15:
	.long	1016916057              @ 0x3c9ce859
.LBB0_18:                               @ %if.then6
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, #1065353216
	b	.LBB0_19
.LBB0_19:                               @ %if.then6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fdiv
	b	.LBB0_20
.LBB0_20:                               @ %if.end27
	mov	r1, #1056964608
	bl	__aeabi_fadd
	mov	r1, r4
	bl	__aeabi_fmul
	b	.LBB0_21
.LBB0_21:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	j1f, .Ltmp0-j1f
	.cantunwind
	.fnend

	.align	2
	.type	common,%function
common:                                 @ @common
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#36
	sub	sp, sp, #36
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r10, r1
	mov	r7, r0
	str	r3, [sp, #32]           @ 4-byte Spill
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r6, r2
	mov	r0, r10
	str	r7, [sp, #28]           @ 4-byte Spill
	bl	sinf
	b	.LBB1_5
.LBB1_5:                                @ %entry
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	mov	r0, #0
	b	.LBB1_6
.LBB1_6:                                @ %entry
	mov	r1, #-2147483648
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	b	.LBB1_7
.LBB1_7:                                @ %entry
	mov	r11, r0
	cmp	r6, #0
	mov	r8, r1
	mov	r0, r10
	b	.LBB1_8
.LBB1_8:                                @ %entry
	moveq	r11, r4
	moveq	r8, r5
	bl	cosf
	bl	__aeabi_f2d
	b	.LBB1_9
.LBB1_9:                                @ %entry
	mov	r9, r0
	mov	r5, r1
	mov	r0, r11
	mov	r1, r8
	b	.LBB1_10
.LBB1_10:                               @ %entry
	mov	r2, r9
	mov	r3, r5
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB1_11
.LBB1_11:                               @ %entry
	lsr	r0, r7, #24
	mov	r3, r1
	mov	r7, r2
	cmp	r0, #126
	bhi	.LBB1_83
	b	.LBB1_12
.LBB1_12:                               @ %if.then5
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r2, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	mov	r0, r11
	b	.LBB1_13
.LBB1_13:                               @ %if.then5
	mov	r1, r8
	mov	r2, r9
	mov	r3, r5
	str	r6, [sp, #4]            @ 4-byte Spill
	b	.LBB1_14
.LBB1_14:                               @ %if.then5
	bl	__aeabi_dmul
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpgt
	b	.LBB1_15
.LBB1_15:                               @ %if.then5
	mov	r4, r10
	mov	r10, r0
	mov	r0, #0
	mov	r1, #-2147483648
	b	.LBB1_16
.LBB1_16:                               @ %if.then5
	mov	r2, r11
	mov	r3, r8
	str	r4, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_dsub
	b	.LBB1_17
.LBB1_17:                               @ %if.then5
	mov	r2, r9
	mov	r3, r5
	bl	__aeabi_dsub
	mov	r6, r0
	b	.LBB1_18
.LBB1_18:                               @ %if.then5
	mov	r9, r1
	mov	r0, r4
	mov	r1, r4
	str	r6, [sp, #12]           @ 4-byte Spill
	b	.LBB1_19
.LBB1_19:                               @ %if.then5
	bl	__aeabi_fadd
	bl	cosf
	bl	__aeabi_f2d
	mov	r5, r0
	b	.LBB1_20
.LBB1_20:                               @ %if.then5
	mov	r4, r1
	mov	r2, r6
	mov	r3, r9
                                        @ kill: R0<def> R5<kill>
	b	.LBB1_21
.LBB1_21:                               @ %if.then5
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_ddiv
	ldr	r3, [sp, #20]           @ 4-byte Reload
	cmp	r10, #0
	b	.LBB1_22
.LBB1_22:                               @ %if.then5
	mov	r8, r10
	ldr	r10, [sp, #16]          @ 4-byte Reload
	ldr	r11, [sp, #24]          @ 4-byte Reload
	mov	r2, r7
	b	.LBB1_23
.LBB1_23:                               @ %if.then5
	movne	r10, r1
	movne	r11, r0
	mov	r0, r5
	mov	r1, r4
	b	.LBB1_24
.LBB1_24:                               @ %if.then5
	bl	__aeabi_ddiv
	mov	r7, r0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r8, #0
	b	.LBB1_25
.LBB1_25:                               @ %if.then5
	mov	r6, r1
	mov	r4, r10
	movne	r6, r9
	movne	r7, r0
	b	.LBB1_26
.LBB1_26:                               @ %if.then5
	ldr	r0, [sp, #28]           @ 4-byte Reload
	lsr	r0, r0, #23
	cmp	r0, #176
	bhi	.LBB1_32
	b	.LBB1_27
.LBB1_27:                               @ %if.then18
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r7
	mov	r3, r6
	b	.LBB1_28
.LBB1_28:                               @ %if.then18
	str	r11, [sp, #24]          @ 4-byte Spill
	bl	__aeabi_dsub
	ldr	r2, [sp, #4]            @ 4-byte Reload
	mov	r11, r4
	b	.LBB1_29
.LBB1_29:                               @ %if.then18
	cmp	r2, #0
	moveq	r0, r7
	ldr	r7, [sp, #8]            @ 4-byte Reload
	moveq	r1, r6
	b	.LBB1_30
.LBB1_30:                               @ %if.then18
	bic	r3, r7, #-2147483648
	mov	r10, r7
	lsr	r2, r3, #24
	cmp	r2, #64
	bls	.LBB1_33
	b	.LBB1_31
.LBB1_31:
	ldr	r6, .LCPI1_0
	ldr	r4, .LCPI1_16
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB1_37
.LCPI1_0:
	.long	pr8
.LCPI1_16:
	.long	ps8
.LBB1_32:
	ldr	r10, [sp, #8]           @ 4-byte Reload
	mov	r7, r11
	mov	r3, r4
	b	.LBB1_83
.LBB1_33:                               @ %if.else.i
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #20]           @ 4-byte Spill
	ldr	r1, .LCPI1_19
	cmp	r3, r1
	bls	.LBB1_35
	b	.LBB1_34
.LCPI1_19:
	.long	1089936471              @ 0x40f71c57
.LBB1_34:
	ldr	r6, .LCPI1_17
	ldr	r4, .LCPI1_18
	b	.LBB1_37
.LCPI1_17:
	.long	pr5
.LCPI1_18:
	.long	ps5
.LBB1_35:                               @ %if.else3.i
	ldr	r1, .LCPI1_20
	ldr	r2, .LCPI1_21
	ldr	r0, .LCPI1_23
	ldr	r6, .LCPI1_22
	b	.LBB1_36
.LCPI1_20:
	.long	1077336935              @ 0x4036db67
.LCPI1_21:
	.long	pr3
.LCPI1_22:
	.long	pr2
.LCPI1_23:
	.long	ps3
.LBB1_36:                               @ %if.else3.i
	ldr	r4, .LCPI1_24
	cmp	r3, r1
	movhi	r6, r2
	movhi	r4, r0
	b	.LBB1_37
.LCPI1_24:
	.long	ps2
.LBB1_37:                               @ %ponef.exit
	mov	r0, r10
	mov	r1, r10
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_38
.LBB1_38:                               @ %ponef.exit
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	ldr	r1, [r6, #20]
	mov	r5, r0
	b	.LBB1_39
.LBB1_39:                               @ %ponef.exit
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r6, #16]
	b	.LBB1_40
.LBB1_40:                               @ %ponef.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_41
.LBB1_41:                               @ %ponef.exit
	mov	r1, r0
	ldr	r0, [r6, #12]
	ldm	r6, {r8, r9}
	ldr	r7, [r6, #8]
	b	.LBB1_42
.LBB1_42:                               @ %ponef.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_43
.LBB1_43:                               @ %ponef.exit
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_44
.LBB1_44:                               @ %ponef.exit
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r9
	b	.LBB1_45
.LBB1_45:                               @ %ponef.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_46
.LBB1_46:                               @ %ponef.exit
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd
	ldr	r1, [r4, #16]
	b	.LBB1_47
.LBB1_47:                               @ %ponef.exit
	mov	r8, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_48
.LBB1_48:                               @ %ponef.exit
	ldr	r0, [r4, #12]
	ldr	r9, [r4]
	ldmib	r4, {r6, r7}
	bl	__aeabi_fadd
	b	.LBB1_49
.LBB1_49:                               @ %ponef.exit
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_50
.LBB1_50:                               @ %ponef.exit
	mov	r0, r7
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_51
.LBB1_51:                               @ %ponef.exit
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd
	b	.LBB1_52
.LBB1_52:                               @ %ponef.exit
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_53
.LBB1_53:                               @ %ponef.exit
	mov	r0, r9
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_54
.LBB1_54:                               @ %ponef.exit
	bl	__aeabi_fmul
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_55
.LBB1_55:                               @ %ponef.exit
	mov	r0, r8
	bl	__aeabi_fdiv
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB1_56
.LBB1_56:                               @ %ponef.exit
	bl	__aeabi_f2d
	mov	r2, r0
	ldr	r0, [sp, #24]           @ 4-byte Reload
	mov	r3, r1
	b	.LBB1_57
.LBB1_57:                               @ %ponef.exit
	mov	r1, r11
	bl	__aeabi_dmul
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, #266338304
	b	.LBB1_58
.LBB1_58:                               @ %ponef.exit
	str	r1, [sp, #24]           @ 4-byte Spill
	ldr	r9, .LCPI1_25
	mov	r11, r10
	orr	r0, r0, #1879048192
	b	.LBB1_59
.LCPI1_25:
	.long	1075838975              @ 0x401fffff
.LBB1_59:                               @ %ponef.exit
	and	r8, r10, r0
	ldr	r0, .LCPI1_26
	ldr	r10, .LCPI1_27
	cmp	r8, r9
	b	.LBB1_60
.LCPI1_26:
	.long	qr8
.LCPI1_27:
	.long	qr2
.LBB1_60:                               @ %ponef.exit
	movhi	r10, r0
	mov	r0, r5
	ldr	r1, [r10, #20]
	bl	__aeabi_fmul
	b	.LBB1_61
.LBB1_61:                               @ %ponef.exit
	mov	r1, r0
	ldr	r0, [r10, #16]
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_62
.LBB1_62:                               @ %ponef.exit
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r10, #12]
	b	.LBB1_63
.LBB1_63:                               @ %ponef.exit
	ldr	r7, [r10]
	ldmib	r10, {r4, r6}
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_64
.LBB1_64:                               @ %ponef.exit
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r6
	b	.LBB1_65
.LBB1_65:                               @ %ponef.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_66
.LBB1_66:                               @ %ponef.exit
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_67
.LBB1_67:                               @ %ponef.exit
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r7
	b	.LBB1_68
.LBB1_68:                               @ %ponef.exit
	bl	__aeabi_fadd
	mov	r10, r0
	ldr	r0, .LCPI1_28
	ldr	r7, .LCPI1_29
	b	.LBB1_69
.LCPI1_28:
	.long	qs8
.LCPI1_29:
	.long	qs2
.LBB1_69:                               @ %ponef.exit
	cmp	r8, r9
	movhi	r7, r0
	mov	r0, r5
	ldr	r1, [r7, #20]
	b	.LBB1_70
.LBB1_70:                               @ %ponef.exit
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r7, #16]
	bl	__aeabi_fadd
	b	.LBB1_71
.LBB1_71:                               @ %ponef.exit
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_72
.LBB1_72:                               @ %ponef.exit
	ldr	r0, [r7, #12]
	ldm	r7, {r4, r6, r8}
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_73
.LBB1_73:                               @ %ponef.exit
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r8
	b	.LBB1_74
.LBB1_74:                               @ %ponef.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_75
.LBB1_75:                               @ %ponef.exit
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_76
.LBB1_76:                               @ %ponef.exit
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	b	.LBB1_77
.LBB1_77:                               @ %ponef.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB1_78
.LBB1_78:                               @ %ponef.exit
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r10
	b	.LBB1_79
.LBB1_79:                               @ %ponef.exit
	mov	r10, r11
	bl	__aeabi_fdiv
	mov	r1, #1052770304
	bl	__aeabi_fadd
	b	.LBB1_80
.LBB1_80:                               @ %ponef.exit
	mov	r1, r10
	bl	__aeabi_fdiv
	bl	__aeabi_f2d
	mov	r2, r0
	b	.LBB1_81
.LBB1_81:                               @ %ponef.exit
	mov	r3, r1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__aeabi_dmul
	b	.LBB1_82
.LBB1_82:                               @ %ponef.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r3, r1
	b	.LBB1_83
.LBB1_83:                               @ %if.end31
	ldr	r4, [sp, #32]           @ 4-byte Reload
	mov	r5, r3
	mov	r0, #0
	mov	r1, #-2147483648
	b	.LBB1_84
.LBB1_84:                               @ %if.end31
	mov	r2, r7
                                        @ kill: R3<def> R5<kill>
	bl	__aeabi_dsub
	ldr	r3, .LCPI1_30
	b	.LBB1_85
.LCPI1_30:
	.long	1071779287              @ 0x3fe20dd7
.LBB1_85:                               @ %if.end31
	cmp	r4, #0
	mov	r2, #1610612736
	moveq	r0, r7
	moveq	r1, r5
	b	.LBB1_86
.LBB1_86:                               @ %if.end31
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r0, r10
	mov	r5, r1
	b	.LBB1_87
.LBB1_87:                               @ %if.end31
	bl	sqrtf
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_88
.LBB1_88:                               @ %if.end31
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	common, .Ltmp1-common
	.cantunwind
	.fnend

	.globl	y1f
	.align	2
	.type	y1f,%function
y1f:                                    @ @y1f
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	mov	r4, r0
	mvn	r0, #-2147483648
	tst	r4, r0
	beq	.LBB2_5
	b	.LBB2_2
.LBB2_2:                                @ %if.end
	cmp	r4, #0
	blt	.LBB2_6
	b	.LBB2_3
.LBB2_3:                                @ %if.end2
	lsr	r0, r4, #23
	cmp	r0, #255
	blo	.LBB2_7
	b	.LBB2_4
.LBB2_4:                                @ %if.then4
	mov	r0, #1065353216
	b	.LBB2_11
.LBB2_5:
	mov	r0, #1065353216
	orr	r0, r0, #-1073741824
	b	.LBB2_31
.LBB2_6:
	mov	r0, #1069547520
	orr	r0, r0, #1073741824
	b	.LBB2_31
.LBB2_7:                                @ %if.end5
	cmp	r4, #1073741824
	blo	.LBB2_9
	b	.LBB2_8
.LBB2_8:                                @ %if.then7
	mov	r0, r4
	mov	r1, r4
	mov	r2, #1
	mov	r3, #0
	pop	{r4, r5, r6, lr}
	b	common
.LBB2_9:                                @ %if.end8
	lsr	r0, r4, #25
	cmp	r0, #24
	bhi	.LBB2_12
	b	.LBB2_10
.LBB2_10:                               @ %if.then10
	ldr	r0, .LCPI2_22
	b	.LBB2_11
.LCPI2_22:
	.long	3206740355              @ 0xbf22f983
.LBB2_11:                               @ %return
	mov	r1, r4
	bl	__aeabi_fdiv
	b	.LBB2_31
.LBB2_12:                               @ %if.end12
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_0
	b	.LBB2_13
.LCPI2_0:
	.long	3016056835              @ 0xb3c56003
.LBB2_13:                               @ %if.end12
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_12
	b	.LBB2_14
.LCPI2_12:
	.long	935680028               @ 0x37c5581c
.LBB2_14:                               @ %if.end12
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_15
.LBB2_15:                               @ %if.end12
	ldr	r1, .LCPI2_13
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB2_16
.LCPI2_13:
	.long	3136991018              @ 0xbafaaf2a
.LBB2_16:                               @ %if.end12
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_14
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB2_17
.LCPI2_14:
	.long	1028562492              @ 0x3d4e9e3c
.LBB2_17:                               @ %if.end12
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_15
	bl	__aeabi_fadd
	b	.LBB2_18
.LCPI2_15:
	.long	3192439601              @ 0xbe48c331
.LBB2_18:                               @ %if.end12
	ldr	r1, .LCPI2_16
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_19
.LCPI2_16:
	.long	764576207               @ 0x2d9281cf
.LBB2_19:                               @ %if.end12
	ldr	r1, .LCPI2_17
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB2_20
.LCPI2_17:
	.long	836106475               @ 0x31d5f8eb
.LBB2_20:                               @ %if.end12
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_18
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB2_21
.LCPI2_18:
	.long	901120724               @ 0x35b602d4
.LBB2_21:                               @ %if.end12
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_19
	bl	__aeabi_fadd
	b	.LBB2_22
.LCPI2_19:
	.long	961832011               @ 0x3954644b
.LBB2_22:                               @ %if.end12
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_20
	b	.LBB2_23
.LCPI2_20:
	.long	1017325674              @ 0x3ca3286a
.LBB2_23:                               @ %if.end12
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_24
.LBB2_24:                               @ %if.end12
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB2_25
.LBB2_25:                               @ %if.end12
	bl	__aeabi_fdiv
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB2_26
.LBB2_26:                               @ %if.end12
	mov	r0, r4
	bl	j1f
	mov	r6, r0
	mov	r0, r4
	b	.LBB2_27
.LBB2_27:                               @ %if.end12
	bl	logf
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB2_28
.LBB2_28:                               @ %if.end12
	mov	r6, r0
	mov	r0, #1065353216
	mov	r1, r4
	bl	__aeabi_fdiv
	b	.LBB2_29
.LBB2_29:                               @ %if.end12
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fsub
	ldr	r1, .LCPI2_21
	b	.LBB2_30
.LCPI2_21:
	.long	1059256707              @ 0x3f22f983
.LBB2_30:                               @ %if.end12
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	b	.LBB2_31
.LBB2_31:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp2:
	.size	y1f, .Ltmp2-y1f
	.cantunwind
	.fnend

	.type	pr8,%object             @ @pr8
	.section	.rodata,"a",%progbits
	.align	2
pr8:
	.long	0                       @ float 0.000000e+00
	.long	1039138816              @ float 1.171875e-01
	.long	1096013034              @ float 1.323948e+01
	.long	1137575587              @ float 4.120518e+02
	.long	1165110253              @ float 3.874745e+03
	.long	1173836758              @ float 7.914479e+03
	.size	pr8, 24

	.type	ps8,%object             @ @ps8
	.align	2
ps8:
	.long	1122265644              @ float 1.142074e+02
	.long	1164193509              @ float 3.650931e+03
	.long	1192254517              @ float 3.695621e+04
	.long	1203675494              @ float 9.760280e+04
	.long	1190176907              @ float 3.080427e+04
	.size	ps8, 20

	.type	pr5,%object             @ @pr5
	.align	2
pr5:
	.long	761803583               @ float 1.319905e-11
	.long	1039138815              @ float 1.171875e-01
	.long	1088008227              @ float 6.802751e+00
	.long	1121492426              @ float 1.083082e+02
	.long	1140943031              @ float 5.176362e+02
	.long	1141124550              @ float 5.287152e+02
	.size	pr5, 24

	.type	ps5,%object             @ @ps5
	.align	2
ps5:
	.long	1114447701              @ float 5.928060e+01
	.long	1148705201              @ float 9.914014e+02
	.long	1168591395              @ float 5.353267e+03
	.long	1173693830              @ float 7.844690e+03
	.long	1153171840              @ float 1.504047e+03
	.size	ps5, 20

	.type	pr3,%object             @ @pr3
	.align	2
pr3:
	.long	827318541               @ float 3.025039e-09
	.long	1039138731              @ float 1.171869e-01
	.long	1081849319              @ float 3.932977e+00
	.long	1108113989              @ float 3.511940e+01
	.long	1119231018              @ float 9.105501e+01
	.long	1111637116              @ float 4.855907e+01
	.size	pr3, 24

	.type	ps3,%object             @ @ps3
	.align	2
ps3:
	.long	1108027981              @ float 3.479131e+01
	.long	1135108504              @ float 3.367625e+02
	.long	1149426659              @ float 1.046871e+03
	.long	1147057133              @ float 8.908113e+02
	.long	1120899948              @ float 1.037879e+02
	.size	ps3, 20

	.type	pr2,%object             @ @pr2
	.align	2
pr2:
	.long	870796968               @ float 1.077108e-07
	.long	1039137302              @ float 1.171762e-01
	.long	1075287488              @ float 2.368515e+00
	.long	1094967740              @ float 1.224261e+01
	.long	1099795777              @ float 1.769397e+01
	.long	1084381773              @ float 5.073523e+00
	.size	pr2, 24

	.type	ps2,%object             @ @ps2
	.align	2
ps2:
	.long	1101757932              @ float 2.143649e+01
	.long	1123718297              @ float 1.252902e+02
	.long	1130907335              @ float 2.322765e+02
	.long	1122720727              @ float 1.176794e+02
	.long	1090901392              @ float 8.364639e+00
	.size	ps2, 20

	.type	qr8,%object             @ @qr8
	.align	2
qr8:
	.long	0                       @ float 0.000000e+00
	.long	3184656384              @ float -1.025391e-01
	.long	3246533773              @ float -1.627175e+01
	.long	3292391043              @ float -7.596017e+02
	.long	3325634362              @ float -1.184981e+04
	.long	3342677635              @ float -4.843851e+04
	.size	qr8, 24

	.type	qs8,%object             @ @qs8
	.align	2
qs8:
	.long	1126262071              @ float 1.613954e+02
	.long	1173654295              @ float 7.825386e+03
	.long	1208138966              @ float 1.338753e+05
	.long	1227862684              @ float 7.196578e+05
	.long	1227013780              @ float 6.666012e+05
	.long	3364866888              @ float -2.944902e+05
	.size	qs8, 24

	.type	qr2,%object             @ @qr2
	.align	2
qr2:
	.long	3024062770              @ float -1.783817e-07
	.long	3184653429              @ float -1.025170e-01
	.long	3224380451              @ float -2.752206e+00
	.long	3248312086              @ float -1.966362e+01
	.long	3257486623              @ float -4.232531e+01
	.long	3249207730              @ float -2.137192e+01
	.size	qr2, 24

	.type	qs2,%object             @ @qs2
	.align	2
qs2:
	.long	1106003028              @ float 2.953336e+01
	.long	1132264263              @ float 2.529816e+02
	.long	1144873006              @ float 7.575028e+02
	.long	1144576298              @ float 7.393932e+02
	.long	1125905138              @ float 1.559490e+02
	.long	3231626295              @ float -4.959499e+00
	.size	qs2, 24


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
