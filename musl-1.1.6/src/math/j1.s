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
	.file	"src/math/j1.bc"
	.globl	j1
	.align	2
	.type	j1,%function
j1:                                     @ @j1
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r0, #267386880
	bic	r6, r4, #-2147483648
	orr	r0, r0, #1879048192
	cmp	r6, r0
	blo	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	bl	__aeabi_dmul
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	b	.LBB0_32
.LBB0_6:                                @ %if.end
	cmp	r6, #1073741824
	blo	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.then5
	mov	r0, r5
	mov	r1, r4
	lsr	r7, r4, #31
	bl	fabs
	b	.LBB0_8
.LBB0_8:                                @ %if.then5
	mov	r2, r0
	mov	r0, #0
	mov	r3, r1
	stm	sp, {r0, r7}
	mov	r0, r6
	bl	common
	b	.LBB0_32
.LBB0_9:                                @ %if.end7
	mov	r0, r5
	mov	r1, r4
	cmp	r6, #939524096
	blo	.LBB0_31
	b	.LBB0_10
.LBB0_10:                               @ %if.then10
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_11
.LBB0_11:                               @ %if.then10
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_16
	ldr	r3, .LCPI0_17
	mov	r6, r0
	b	.LBB0_12
.LCPI0_16:
	.long	1187646425              @ 0x46ca0bd9
.LCPI0_17:
	.long	1047177978              @ 0x3e6aaafa
.LBB0_12:                               @ %if.then10
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	b	.LBB0_13
.LBB0_13:                               @ %if.then10
	ldr	r2, .LCPI0_18
	ldr	r3, .LCPI0_19
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_14
.LCPI0_18:
	.long	3122042472              @ 0xba169668
.LCPI0_19:
	.long	3203450310              @ 0xbef0c5c6
.LBB0_14:                               @ %if.then10
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_15
.LBB0_15:                               @ %if.then10
	ldr	r2, .LCPI0_20
	ldr	r3, .LCPI0_21
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_16
.LCPI0_20:
	.long	2554801249              @ 0x98472c61
.LCPI0_21:
	.long	1062669727              @ 0x3f570d9f
.LBB0_16:                               @ %if.then10
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_17
.LBB0_17:                               @ %if.then10
	mov	r3, #263192576
	mov	r2, #0
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	b	.LBB0_18
.LBB0_18:                               @ %if.then10
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_19
.LBB0_19:                               @ %if.then10
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_22
	ldr	r3, .LCPI0_23
	mov	r8, r0
	b	.LBB0_20
.LCPI0_22:
	.long	3485040344              @ 0xcfb97ed8
.LCPI0_23:
	.long	1034627791              @ 0x3dab2acf
.LBB0_20:                               @ %if.then10
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_21
.LBB0_21:                               @ %if.then10
	ldr	r2, .LCPI0_24
	ldr	r3, .LCPI0_25
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_22
.LCPI0_24:
	.long	3380477740              @ 0xc97dff2c
.LCPI0_25:
	.long	1043704968              @ 0x3e35ac88
.LBB0_22:                               @ %if.then10
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_23
.LBB0_23:                               @ %if.then10
	ldr	r2, .LCPI0_26
	ldr	r3, .LCPI0_27
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_24
.LCPI0_26:
	.long	859800728               @ 0x333f8498
.LCPI0_27:
	.long	1051967480              @ 0x3eb3bff8
.LBB0_24:                               @ %if.then10
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_25
.LBB0_25:                               @ %if.then10
	ldr	r2, .LCPI0_28
	ldr	r3, .LCPI0_29
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_26
.LCPI0_28:
	.long	3117282916              @ 0xb9cdf664
.LCPI0_29:
	.long	1059610454              @ 0x3f285f56
.LBB0_26:                               @ %if.then10
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_27
.LBB0_27:                               @ %if.then10
	ldr	r2, .LCPI0_30
	ldr	r3, .LCPI0_31
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_28
.LCPI0_30:
	.long	308510291               @ 0x12637e53
.LCPI0_31:
	.long	1066638603              @ 0x3f939d0b
.LBB0_28:                               @ %if.then10
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_29
.LBB0_29:                               @ %if.then10
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_30
.LBB0_30:                               @ %if.then10
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ddiv
	b	.LBB0_31
.LBB0_31:                               @ %if.end29
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB0_32
.LBB0_32:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	j1, .Ltmp0-j1
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
	mov	r6, r3
	mov	r7, r2
	mov	r8, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r0, r7
	mov	r1, r6
	str	r6, [sp, #32]           @ 4-byte Spill
	str	r7, [sp, #28]           @ 4-byte Spill
	b	.LBB1_5
.LBB1_5:                                @ %entry
	str	r8, [sp, #24]           @ 4-byte Spill
	bl	sin
	mov	r4, r0
	mov	r5, r1
	b	.LBB1_6
.LBB1_6:                                @ %entry
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r4
	mov	r3, r5
	b	.LBB1_7
.LBB1_7:                                @ %entry
	bl	__aeabi_dsub
	mov	r10, r0
	ldr	r0, [sp, #72]
	mov	r11, r1
	b	.LBB1_8
.LBB1_8:                                @ %entry
	mov	r1, r6
	cmp	r0, #0
	mov	r0, r7
	moveq	r10, r4
	b	.LBB1_9
.LBB1_9:                                @ %entry
	moveq	r11, r5
	bl	cos
	mov	r9, r0
	mov	r6, r1
	b	.LBB1_10
.LBB1_10:                               @ %entry
	mov	r0, r10
	mov	r1, r11
	mov	r2, r9
	mov	r3, r6
	b	.LBB1_11
.LBB1_11:                               @ %entry
	bl	__aeabi_dsub
	mov	r2, r0
	ldr	r0, .LCPI1_0
	ldr	r4, [sp, #76]
	b	.LBB1_12
.LCPI1_0:
	.long	2145386495              @ 0x7fdfffff
.LBB1_12:                               @ %entry
	mov	r7, r1
	mov	r5, r2
	cmp	r8, r0
	bhi	.LBB1_33
	b	.LBB1_13
.LBB1_13:                               @ %if.then3
	mov	r8, r1
	str	r2, [sp, #20]           @ 4-byte Spill
	mov	r0, r10
	mov	r1, r11
	b	.LBB1_14
.LBB1_14:                               @ %if.then3
	mov	r2, r9
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, #0
	b	.LBB1_15
.LBB1_15:                               @ %if.then3
	mov	r3, #0
	bl	__aeabi_dcmpgt
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, #0
	b	.LBB1_16
.LBB1_16:                               @ %if.then3
	mov	r1, #-2147483648
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_dsub
	b	.LBB1_17
.LBB1_17:                               @ %if.then3
	mov	r2, r9
	mov	r3, r6
	bl	__aeabi_dsub
	str	r5, [sp, #8]            @ 4-byte Spill
	b	.LBB1_18
.LBB1_18:                               @ %if.then3
	mov	r5, r1
	ldr	r10, [sp, #28]          @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	str	r7, [sp, #12]           @ 4-byte Spill
	b	.LBB1_19
.LBB1_19:                               @ %if.then3
	mov	r7, r0
	str	r7, [sp, #4]            @ 4-byte Spill
	str	r5, [sp]                @ 4-byte Spill
	mov	r0, r10
	b	.LBB1_20
.LBB1_20:                               @ %if.then3
	mov	r2, r10
	mov	r3, r1
	bl	__aeabi_dadd
	bl	cos
	b	.LBB1_21
.LBB1_21:                               @ %if.then3
	mov	r6, r0
	mov	r4, r1
	mov	r2, r7
	mov	r3, r5
	b	.LBB1_22
.LBB1_22:                               @ %if.then3
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_ddiv
	ldr	r9, [sp, #16]           @ 4-byte Reload
	b	.LBB1_23
.LBB1_23:                               @ %if.then3
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r3, [sp, #12]           @ 4-byte Reload
	ldr	r11, [sp, #20]          @ 4-byte Reload
	cmp	r9, #0
	b	.LBB1_24
.LBB1_24:                               @ %if.then3
	movne	r8, r1
	movne	r11, r0
	mov	r0, r6
	mov	r1, r4
	b	.LBB1_25
.LBB1_25:                               @ %if.then3
	bl	__aeabi_ddiv
	mov	r5, r0
	ldr	r0, [sp]                @ 4-byte Reload
	cmp	r9, #0
	b	.LBB1_26
.LBB1_26:                               @ %if.then3
	mov	r7, r1
	mov	r9, r10
	movne	r7, r0
	ldr	r0, [sp, #4]            @ 4-byte Reload
	b	.LBB1_27
.LBB1_27:                               @ %if.then3
	movne	r5, r0
	ldr	r0, [sp, #24]           @ 4-byte Reload
	lsr	r0, r0, #27
	cmp	r0, #8
	bhi	.LBB1_34
	b	.LBB1_28
.LBB1_28:                               @ %if.then13
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r7
	b	.LBB1_29
.LBB1_29:                               @ %if.then13
	str	r11, [sp, #20]          @ 4-byte Spill
	str	r8, [sp, #24]           @ 4-byte Spill
	bl	__aeabi_dsub
	mov	r2, r1
	b	.LBB1_30
.LBB1_30:                               @ %if.then13
	ldr	r1, [sp, #72]
	ldr	r3, [sp, #32]           @ 4-byte Reload
	cmp	r1, #0
	ldr	r1, .LCPI1_24
	b	.LBB1_31
.LCPI1_24:
	.long	1075838975              @ 0x401fffff
.LBB1_31:                               @ %if.then13
	bic	r10, r3, #-2147483648
	moveq	r2, r7
	moveq	r0, r5
	cmp	r10, r1
	mov	r1, r3
	bls	.LBB1_35
	b	.LBB1_32
.LBB1_32:
	ldr	r5, .LCPI1_22
	ldr	r4, .LCPI1_23
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB1_39
.LCPI1_22:
	.long	pr8
.LCPI1_23:
	.long	ps8
.LBB1_33:
	ldr	r9, [sp, #28]           @ 4-byte Reload
	ldr	r6, [sp, #32]           @ 4-byte Reload
	b	.LBB1_113
.LBB1_34:
	ldr	r6, [sp, #32]           @ 4-byte Reload
	mov	r5, r11
	mov	r7, r8
	b	.LBB1_112
.LBB1_35:                               @ %if.else.i
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	ldr	r0, .LCPI1_28
	cmp	r10, r0
	bls	.LBB1_37
	b	.LBB1_36
.LCPI1_28:
	.long	1074933386              @ 0x40122e8a
.LBB1_36:
	ldr	r5, .LCPI1_26
	ldr	r4, .LCPI1_27
	b	.LBB1_39
.LCPI1_26:
	.long	pr5
.LCPI1_27:
	.long	ps5
.LBB1_37:                               @ %if.else5.i
	ldr	r0, .LCPI1_30
	ldr	r2, .LCPI1_32
	ldr	r5, .LCPI1_33
	ldr	r4, .LCPI1_35
	b	.LBB1_38
.LCPI1_30:
	.long	1074191212              @ 0x4006db6c
.LCPI1_32:
	.long	pr3
.LCPI1_33:
	.long	pr2
.LCPI1_35:
	.long	ps2
.LBB1_38:                               @ %if.else5.i
	cmp	r10, r0
	ldr	r0, .LCPI1_34
	movhi	r5, r2
	movhi	r4, r0
	b	.LBB1_39
.LCPI1_34:
	.long	ps3
.LBB1_39:                               @ %pone.exit
	mov	r0, r9
	mov	r3, r1
	mov	r2, r0
	bl	__aeabi_dmul
	b	.LBB1_40
.LBB1_40:                               @ %pone.exit
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	b	.LBB1_41
.LBB1_41:                               @ %pone.exit
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	ldr	r2, [r5, #40]
	ldr	r3, [r5, #44]
	b	.LBB1_42
.LBB1_42:                               @ %pone.exit
	mov	r6, r0
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB1_43
.LBB1_43:                               @ %pone.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #32]
	b	.LBB1_44
.LBB1_44:                               @ %pone.exit
	ldr	r1, [r5, #36]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_45
.LBB1_45:                               @ %pone.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_46
.LBB1_46:                               @ %pone.exit
	mov	r3, r1
	ldr	r0, [r5, #24]
	ldr	r1, [r5, #28]
	bl	__aeabi_dadd
	b	.LBB1_47
.LBB1_47:                               @ %pone.exit
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_48
.LBB1_48:                               @ %pone.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #16]
	b	.LBB1_49
.LBB1_49:                               @ %pone.exit
	ldr	r1, [r5, #20]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_50
.LBB1_50:                               @ %pone.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_51
.LBB1_51:                               @ %pone.exit
	mov	r3, r1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #12]
	ldm	r5, {r8, r9}
	b	.LBB1_52
.LBB1_52:                               @ %pone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_53
.LBB1_53:                               @ %pone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_54
.LBB1_54:                               @ %pone.exit
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	ldr	r2, [r4, #32]
	b	.LBB1_55
.LBB1_55:                               @ %pone.exit
	ldr	r3, [r4, #36]
	mov	r9, r0
	mov	r8, r1
	mov	r0, r6
	b	.LBB1_56
.LBB1_56:                               @ %pone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_57
.LBB1_57:                               @ %pone.exit
	ldr	r0, [r4, #24]
	ldr	r1, [r4, #28]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_58
.LBB1_58:                               @ %pone.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_59
.LBB1_59:                               @ %pone.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	b	.LBB1_60
.LBB1_60:                               @ %pone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_61
.LBB1_61:                               @ %pone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_62
.LBB1_62:                               @ %pone.exit
	ldr	r0, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r11, [r4]
	ldr	r5, [r4, #4]
	b	.LBB1_63
.LBB1_63:                               @ %pone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_64
.LBB1_64:                               @ %pone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_65
.LBB1_65:                               @ %pone.exit
	mov	r0, r11
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_66
.LBB1_66:                               @ %pone.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_67
.LBB1_67:                               @ %pone.exit
	mov	r4, #267386880
	mov	r2, #0
	orr	r4, r4, #805306368
	mov	r3, r4
	b	.LBB1_68
.LBB1_68:                               @ %pone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	b	.LBB1_69
.LBB1_69:                               @ %pone.exit
	mov	r1, r8
	bl	__aeabi_ddiv
	mov	r2, #0
	mov	r3, r4
	b	.LBB1_70
.LBB1_70:                               @ %pone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	b	.LBB1_71
.LBB1_71:                               @ %pone.exit
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_25
	mov	r8, r0
	cmp	r10, r2
	bls	.LBB1_73
	b	.LBB1_72
.LCPI1_25:
	.long	1075838975              @ 0x401fffff
.LBB1_72:
	ldr	r5, .LCPI1_36
	ldr	r4, .LCPI1_37
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB1_77
.LCPI1_36:
	.long	qr8
.LCPI1_37:
	.long	qs8
.LBB1_73:                               @ %if.else.i54
	str	r1, [sp, #24]           @ 4-byte Spill
	ldr	r0, .LCPI1_29
	cmp	r10, r0
	bls	.LBB1_75
	b	.LBB1_74
.LCPI1_29:
	.long	1074933386              @ 0x40122e8a
.LBB1_74:
	ldr	r5, .LCPI1_38
	ldr	r4, .LCPI1_39
	b	.LBB1_77
.LCPI1_38:
	.long	qr5
.LCPI1_39:
	.long	qs5
.LBB1_75:                               @ %if.else5.i57
	ldr	r0, .LCPI1_31
	ldr	r1, .LCPI1_40
	ldr	r5, .LCPI1_41
	ldr	r4, .LCPI1_43
	b	.LBB1_76
.LCPI1_31:
	.long	1074191212              @ 0x4006db6c
.LCPI1_40:
	.long	qr3
.LCPI1_41:
	.long	qr2
.LCPI1_43:
	.long	qs2
.LBB1_76:                               @ %if.else5.i57
	cmp	r10, r0
	ldr	r0, .LCPI1_42
	movhi	r5, r1
	movhi	r4, r0
	b	.LBB1_77
.LCPI1_42:
	.long	qs3
.LBB1_77:                               @ %qone.exit
	ldr	r2, [r5, #40]
	ldr	r3, [r5, #44]
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_78
.LBB1_78:                               @ %qone.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #32]
	b	.LBB1_79
.LBB1_79:                               @ %qone.exit
	ldr	r1, [r5, #36]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_80
.LBB1_80:                               @ %qone.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_81
.LBB1_81:                               @ %qone.exit
	mov	r3, r1
	ldr	r0, [r5, #24]
	ldr	r1, [r5, #28]
	bl	__aeabi_dadd
	b	.LBB1_82
.LBB1_82:                               @ %qone.exit
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_83
.LBB1_83:                               @ %qone.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #16]
	b	.LBB1_84
.LBB1_84:                               @ %qone.exit
	ldr	r1, [r5, #20]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_85
.LBB1_85:                               @ %qone.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_86
.LBB1_86:                               @ %qone.exit
	mov	r3, r1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #12]
	ldm	r5, {r9, r10}
	b	.LBB1_87
.LBB1_87:                               @ %qone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_88
.LBB1_88:                               @ %qone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_89
.LBB1_89:                               @ %qone.exit
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_dadd
	ldr	r2, [r4, #40]
	b	.LBB1_90
.LBB1_90:                               @ %qone.exit
	ldr	r3, [r4, #44]
	mov	r9, r0
	mov	r10, r1
	mov	r0, r6
	b	.LBB1_91
.LBB1_91:                               @ %qone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_92
.LBB1_92:                               @ %qone.exit
	ldr	r0, [r4, #32]
	ldr	r1, [r4, #36]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_93
.LBB1_93:                               @ %qone.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_94
.LBB1_94:                               @ %qone.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r4, #24]
	ldr	r1, [r4, #28]
	b	.LBB1_95
.LBB1_95:                               @ %qone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_96
.LBB1_96:                               @ %qone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_97
.LBB1_97:                               @ %qone.exit
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_98
.LBB1_98:                               @ %qone.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_99
.LBB1_99:                               @ %qone.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r4, #8]
	ldr	r1, [r4, #12]
	b	.LBB1_100
.LBB1_100:                              @ %qone.exit
	ldr	r11, [r4]
	ldr	r5, [r4, #4]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_101
.LBB1_101:                              @ %qone.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_102
.LBB1_102:                              @ %qone.exit
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r5
	b	.LBB1_103
.LBB1_103:                              @ %qone.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_104
.LBB1_104:                              @ %qone.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB1_105
.LBB1_105:                              @ %qone.exit
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_106
.LBB1_106:                              @ %qone.exit
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_ddiv
	mov	r3, #64487424
	b	.LBB1_107
.LBB1_107:                              @ %qone.exit
	mov	r2, #0
	orr	r3, r3, #1006632960
	bl	__aeabi_dadd
	ldr	r9, [sp, #28]           @ 4-byte Reload
	b	.LBB1_108
.LBB1_108:                              @ %qone.exit
	ldr	r6, [sp, #32]           @ 4-byte Reload
	mov	r2, r9
	mov	r3, r6
	bl	__aeabi_ddiv
	b	.LBB1_109
.LBB1_109:                              @ %qone.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	b	.LBB1_110
.LBB1_110:                              @ %qone.exit
	bl	__aeabi_dmul
	mov	r3, r1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	r2, r0
	b	.LBB1_111
.LBB1_111:                              @ %qone.exit
	mov	r0, r8
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r7, r1
	b	.LBB1_112
.LBB1_112:                              @ %if.end24
	ldr	r4, [sp, #76]
	b	.LBB1_113
.LBB1_113:                              @ %if.end24
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r7
	b	.LBB1_114
.LBB1_114:                              @ %if.end24
	bl	__aeabi_dsub
	ldr	r2, .LCPI1_44
	ldr	r3, .LCPI1_45
	cmp	r4, #0
	b	.LBB1_115
.LCPI1_44:
	.long	1346542445              @ 0x50429b6d
.LCPI1_45:
	.long	1071779287              @ 0x3fe20dd7
.LBB1_115:                              @ %if.end24
	moveq	r0, r5
	moveq	r1, r7
	bl	__aeabi_dmul
	mov	r4, r0
	b	.LBB1_116
.LBB1_116:                              @ %if.end24
	mov	r5, r1
	mov	r0, r9
	mov	r1, r6
	bl	sqrt
	b	.LBB1_117
.LBB1_117:                              @ %if.end24
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	common, .Ltmp1-common
	.cantunwind
	.fnend

	.globl	y1
	.align	2
	.type	y1,%function
y1:                                     @ @y1
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	add	r0, r4, r4
	orrs	r0, r0, r5
	mov	r0, #0
	beq	.LBB2_7
	b	.LBB2_4
.LBB2_4:                                @ %if.end
	cmp	r4, #0
	blt	.LBB2_8
	b	.LBB2_5
.LBB2_5:                                @ %if.end6
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	cmp	r4, r0
	blo	.LBB2_9
	b	.LBB2_6
.LBB2_6:                                @ %if.then9
	mov	r1, #267386880
	mov	r0, #0
	orr	r1, r1, #805306368
	b	.LBB2_14
.LBB2_7:
	mov	r1, #267386880
	orr	r1, r1, #-268435456
	b	.LBB2_46
.LBB2_8:
	mov	r1, #66584576
	orr	r1, r1, #2080374784
	b	.LBB2_46
.LBB2_9:                                @ %if.end10
	cmp	r4, #1073741824
	blo	.LBB2_12
	b	.LBB2_10
.LBB2_10:                               @ %if.then13
	mov	r1, #1
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	b	.LBB2_11
.LBB2_11:                               @ %if.then13
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r0, r4
	bl	common
	b	.LBB2_46
.LBB2_12:                               @ %if.end14
	ldr	r0, .LCPI2_0
	cmp	r4, r0
	bhi	.LBB2_15
	b	.LBB2_13
.LCPI2_0:
	.long	1016070143              @ 0x3c8fffff
.LBB2_13:                               @ %if.then17
	ldr	r0, .LCPI2_44
	ldr	r1, .LCPI2_47
	b	.LBB2_14
.LCPI2_44:
	.long	1841940611              @ 0x6dc9c883
.LCPI2_47:
	.long	3219414832              @ 0xbfe45f30
.LBB2_14:                               @ %return
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_ddiv
	b	.LBB2_46
.LBB2_15:                               @ %if.end19
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB2_16
.LBB2_16:                               @ %if.end19
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_24
	ldr	r3, .LCPI2_25
	mov	r6, r0
	b	.LBB2_17
.LCPI2_24:
	.long	1452344760              @ 0x569105b8
.LCPI2_25:
	.long	3195579392              @ 0xbe78ac00
.LBB2_17:                               @ %if.end19
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	b	.LBB2_18
.LBB2_18:                               @ %if.end19
	ldr	r2, .LCPI2_26
	ldr	r3, .LCPI2_27
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_19
.LCPI2_26:
	.long	2410068110              @ 0x8fa6b88e
.LCPI2_27:
	.long	1056484099              @ 0x3ef8ab03
.LBB2_19:                               @ %if.end19
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_20
.LBB2_20:                               @ %if.end19
	ldr	r2, .LCPI2_28
	ldr	r3, .LCPI2_29
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_21
.LCPI2_28:
	.long	1212478735              @ 0x4844f50f
.LCPI2_29:
	.long	3210696165              @ 0xbf5f55e5
.LBB2_21:                               @ %if.end19
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_22
.LBB2_22:                               @ %if.end19
	ldr	r2, .LCPI2_30
	ldr	r3, .LCPI2_31
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_23
.LCPI2_30:
	.long	1982409937              @ 0x76292cd1
.LCPI2_31:
	.long	1068094407              @ 0x3fa9d3c7
.LBB2_23:                               @ %if.end19
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_24
.LBB2_24:                               @ %if.end19
	ldr	r2, .LCPI2_32
	ldr	r3, .LCPI2_33
	bl	__aeabi_dadd
	ldr	r2, .LCPI2_34
	b	.LBB2_25
.LCPI2_32:
	.long	339524746               @ 0x143cbc8a
.LCPI2_33:
	.long	3217627238              @ 0xbfc91866
.LCPI2_34:
	.long	3670701866              @ 0xdaca772a
.LBB2_25:                               @ %if.end19
	ldr	r3, .LCPI2_35
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	b	.LBB2_26
.LCPI2_35:
	.long	1035096121              @ 0x3db25039
.LBB2_26:                               @ %if.end19
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_36
	ldr	r3, .LCPI2_37
	b	.LBB2_27
.LCPI2_36:
	.long	1537645190              @ 0x5ba69a86
.LCPI2_37:
	.long	1044037405              @ 0x3e3abf1d
.LBB2_27:                               @ %if.end19
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_28
.LBB2_28:                               @ %if.end19
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_38
	ldr	r3, .LCPI2_39
	b	.LBB2_29
.LCPI2_38:
	.long	2303626406              @ 0x894e8ca6
.LCPI2_39:
	.long	1052164186              @ 0x3eb6c05a
.LBB2_29:                               @ %if.end19
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_30
.LBB2_30:                               @ %if.end19
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_40
	ldr	r3, .LCPI2_41
	b	.LBB2_31
.LCPI2_40:
	.long	1814394724              @ 0x6c257764
.LCPI2_41:
	.long	1059753097              @ 0x3f2a8c89
.LBB2_31:                               @ %if.end19
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_32
.LBB2_32:                               @ %if.end19
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_42
	ldr	r3, .LCPI2_43
	b	.LBB2_33
.LCPI2_42:
	.long	1062054384              @ 0x3f4da9f0
.LCPI2_43:
	.long	1066689805              @ 0x3f94650d
.LBB2_33:                               @ %if.end19
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_34
.LBB2_34:                               @ %if.end19
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r6, #267386880
	mov	r2, #0
	b	.LBB2_35
.LBB2_35:                               @ %if.end19
	orr	r6, r6, #805306368
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_36
.LBB2_36:                               @ %if.end19
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ddiv
	b	.LBB2_37
.LBB2_37:                               @ %if.end19
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r8, r0
	b	.LBB2_38
.LBB2_38:                               @ %if.end19
	mov	r9, r1
	mov	r0, #0
	mov	r1, r6
	mov	r2, r5
	b	.LBB2_39
.LBB2_39:                               @ %if.end19
	mov	r3, r4
	bl	__aeabi_ddiv
	mov	r10, r0
	mov	r11, r1
	b	.LBB2_40
.LBB2_40:                               @ %if.end19
	mov	r0, r5
	mov	r1, r4
	bl	j1
	mov	r6, r0
	b	.LBB2_41
.LBB2_41:                               @ %if.end19
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	bl	log
	b	.LBB2_42
.LBB2_42:                               @ %if.end19
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB2_43
.LBB2_43:                               @ %if.end19
	bl	__aeabi_dmul
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_dsub
	b	.LBB2_44
.LBB2_44:                               @ %if.end19
	ldr	r2, .LCPI2_45
	ldr	r3, .LCPI2_46
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB2_45
.LCPI2_45:
	.long	1841940611              @ 0x6dc9c883
.LCPI2_46:
	.long	1071931184              @ 0x3fe45f30
.LBB2_45:                               @ %if.end19
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	b	.LBB2_46
.LBB2_46:                               @ %return
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	y1, .Ltmp2-y1
	.cantunwind
	.fnend

	.type	pr8,%object             @ @pr8
	.section	.rodata,"a",%progbits
	.align	3
pr8:
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	4294966478              @ double 1.171875e-01
	.long	1069416447
	.long	897548238               @ double 1.323948e+01
	.long	1076525725
	.long	1697555856              @ double 4.120519e+02
	.long	1081721044
	.long	2745512652              @ double 3.874745e+03
	.long	1085162877
	.long	3274146525              @ double 7.914480e+03
	.long	1086253690
	.size	pr8, 48

	.type	ps8,%object             @ @ps8
	.align	3
ps8:
	.long	2389011628              @ double 1.142074e+02
	.long	1079807301
	.long	2521638735              @ double 3.650931e+03
	.long	1085048284
	.long	2546318207              @ double 3.695621e+04
	.long	1088555910
	.long	2995722171              @ double 9.760279e+04
	.long	1089983532
	.long	1769605933              @ double 3.080427e+04
	.long	1088296209
	.size	ps8, 40

	.type	pr5,%object             @ @pr5
	.align	3
pr5:
	.long	3672230525              @ double 1.319905e-11
	.long	1034749543
	.long	3804299331              @ double 1.171875e-01
	.long	1069416447
	.long	1851987427              @ double 6.802751e+00
	.long	1075525124
	.long	1160119021              @ double 1.083082e+02
	.long	1079710649
	.long	3495089737              @ double 5.176361e+02
	.long	1082141974
	.long	3145600183              @ double 5.287152e+02
	.long	1082164664
	.size	pr5, 48

	.type	ps5,%object             @ @ps5
	.align	3
ps5:
	.long	2830066493              @ double 5.928060e+01
	.long	1078830058
	.long	453404417               @ double 9.914014e+02
	.long	1083112246
	.long	1460057851              @ double 5.353267e+03
	.long	1085598020
	.long	3097869077              @ double 7.844690e+03
	.long	1086235824
	.long	57630289                @ double 1.504047e+03
	.long	1083670576
	.size	ps5, 40

	.type	pr3,%object             @ @pr3
	.align	3
pr3:
	.long	2813173469              @ double 3.025039e-09
	.long	1042938913
	.long	1528942971              @ double 1.171869e-01
	.long	1069416437
	.long	3898518922              @ double 3.932978e+00
	.long	1074755260
	.long	2644955433              @ double 3.511940e+01
	.long	1078038344
	.long	1294735415              @ double 9.105501e+01
	.long	1079427973
	.long	2393390821              @ double 4.855907e+01
	.long	1078478735
	.size	pr3, 48

	.type	ps3,%object             @ @ps3
	.align	3
ps3:
	.long	2704541340              @ double 3.479131e+01
	.long	1078027593
	.long	133277535               @ double 3.367625e+02
	.long	1081412659
	.long	1345836323              @ double 1.046871e+03
	.long	1083202428
	.long	2737713641              @ double 8.908113e+02
	.long	1082906237
	.long	2083450195              @ double 1.037879e+02
	.long	1079636589
	.size	ps3, 40

	.type	pr2,%object             @ @pr2
	.align	3
pr2:
	.long	4132783348              @ double 1.077108e-07
	.long	1048373716
	.long	3195407747              @ double 1.171762e-01
	.long	1069416258
	.long	4186943168              @ double 2.368515e+00
	.long	1073935031
	.long	2138155364              @ double 1.224261e+01
	.long	1076395063
	.long	394235618               @ double 1.769397e+01
	.long	1076998568
	.long	2775892478              @ double 5.073523e+00
	.long	1075071817
	.size	pr2, 48

	.type	ps2,%object             @ @ps2
	.align	3
ps2:
	.long	2329275612              @ double 2.143649e+01
	.long	1077243837
	.long	351874261               @ double 1.252902e+02
	.long	1079988883
	.long	3584220121              @ double 2.322765e+02
	.long	1080887512
	.long	3659039913              @ double 1.176794e+02
	.long	1079864186
	.long	4098773394              @ double 8.364639e+00
	.long	1075886769
	.size	ps2, 40

	.type	qr8,%object             @ @qr8
	.align	3
qr8:
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	4294966771              @ double -1.025391e-01
	.long	3216654335
	.long	2724690423              @ double -1.627175e+01
	.long	3224389009
	.long	1407497590              @ double -7.596017e+02
	.long	3230121168
	.long	1090024469              @ double -1.184981e+04
	.long	3234276583
	.long	1708170346              @ double -4.843851e+04
	.long	3236406992
	.size	qr8, 48

	.type	qs8,%object             @ @qs8
	.align	3
qs8:
	.long	3730558437              @ double 1.613954e+02
	.long	1080306854
	.long	3503850521              @ double 7.825386e+03
	.long	1086230882
	.long	2964807320              @ double 1.338753e+05
	.long	1090541466
	.long	1921424409              @ double 7.196577e+05
	.long	1093006931
	.long	1998171484              @ double 6.666012e+05
	.long	1092900818
	.long	245738008               @ double -2.944903e+05
	.long	3239180649
	.size	qs8, 48

	.type	qr5,%object             @ @qr5
	.align	3
qr5:
	.long	446800024               @ double -2.089799e-11
	.long	3182885443
	.long	3411640303              @ double -1.025391e-01
	.long	3216654335
	.long	3389238603              @ double -8.056448e+00
	.long	3223330022
	.long	1822931376              @ double -1.836696e+02
	.long	3227972973
	.long	1764848463              @ double -1.373194e+03
	.long	3231020230
	.long	2298324893              @ double -2.612444e+03
	.long	3232000227
	.size	qr5, 48

	.type	qs5,%object             @ @qs5
	.align	3
qs5:
	.long	4284092850              @ double 8.127655e+01
	.long	1079267762
	.long	3883661369              @ double 1.991799e+03
	.long	1084170033
	.long	224710185               @ double 1.746849e+04
	.long	1087442719
	.long	2864370071              @ double 4.985143e+04
	.long	1088968557
	.long	3481024075              @ double 2.794808e+04
	.long	1088113412
	.long	4244611076              @ double -4.719184e+03
	.long	3232919342
	.size	qs5, 48

	.type	qr3,%object             @ @qr3
	.align	3
qr3:
	.long	3549415503              @ double -5.078312e-09
	.long	3191197609
	.long	1370418516              @ double -1.025378e-01
	.long	3216654315
	.long	855824895               @ double -4.610116e+00
	.long	3222433986
	.long	3260880602              @ double -5.784722e+01
	.long	3226266737
	.long	1192809823              @ double -2.282445e+02
	.long	3228338131
	.long	1599871990              @ double -2.192101e+02
	.long	3228264121
	.size	qr3, 48

	.type	qs3,%object             @ @qs3
	.align	3
qs3:
	.long	3436406756              @ double 4.766516e+01
	.long	1078449443
	.long	3224497726              @ double 6.738651e+02
	.long	1082461931
	.long	1150188698              @ double 3.380153e+03
	.long	1084909646
	.long	2786940070              @ double 5.547729e+03
	.long	1085647802
	.long	232054603               @ double 1.903119e+03
	.long	1084079226
	.long	688533791               @ double -1.352012e+02
	.long	3227575920
	.size	qs3, 48

	.type	qr2,%object             @ @qr2
	.align	3
qr2:
	.long	1153836754              @ double -1.783817e-07
	.long	3196580134
	.long	2437459984              @ double -1.025170e-01
	.long	3216653966
	.long	1773883098              @ double -2.752206e+00
	.long	3221619844
	.long	3244855423              @ double -1.966362e+01
	.long	3224611298
	.long	3725609642              @ double -4.232531e+01
	.long	3225758115
	.long	969895506               @ double -2.137192e+01
	.long	3224723254
	.size	qr2, 48

	.type	qs2,%object             @ @qs2
	.align	3
qs2:
	.long	2024695039              @ double 2.953336e+01
	.long	1077774474
	.long	3682737338              @ double 2.529815e+02
	.long	1081057128
	.long	3460931831              @ double 7.575028e+02
	.long	1082633221
	.long	1221902377              @ double 7.393932e+02
	.long	1082596133
	.long	1010751700              @ double 1.559490e+02
	.long	1080262238
	.long	3877365867              @ double -4.959499e+00
	.long	3222525574
	.size	qs2, 48


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
