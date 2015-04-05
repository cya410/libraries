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
	.file	"src/math/j0.bc"
	.globl	j0
	.align	2
	.type	j0,%function
j0:                                     @ @j0
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r2, #267386880
	bic	r5, r1, #-2147483648
	orr	r2, r2, #1879048192
	cmp	r5, r2
	blo	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r3, r1
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	b	.LBB0_42
.LBB0_6:                                @ %if.end
	bl	fabs
	mov	r7, r0
	mov	r4, r1
	cmp	r5, #1073741824
	blo	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then4
	mov	r0, #0
	mov	r2, r7
	mov	r3, r4
	str	r0, [sp]
	mov	r0, r5
	bl	common
	b	.LBB0_42
.LBB0_8:                                @ %if.end6
	mov	r0, #253755392
	orr	r0, r0, #805306368
	cmp	r5, r0
	blo	.LBB0_37
	b	.LBB0_9
.LBB0_9:                                @ %if.then9
	mov	r3, #266338304
	mov	r0, r7
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_10
.LBB0_10:                               @ %if.then9
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r8, #267386880
	mov	r5, r0
	b	.LBB0_11
.LBB0_11:                               @ %if.then9
	mov	r6, r1
	mov	r2, #0
	orr	r8, r8, #805306368
                                        @ kill: R0<def> R5<kill>
	b	.LBB0_12
.LBB0_12:                               @ %if.then9
                                        @ kill: R1<def> R6<kill>
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r9, r0
	b	.LBB0_13
.LBB0_13:                               @ %if.then9
	mov	r10, r1
	mov	r0, #0
	mov	r1, r8
	mov	r2, r5
	b	.LBB0_14
.LBB0_14:                               @ %if.then9
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_15
.LBB0_15:                               @ %if.then9
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_dmul
	mov	r9, r0
	b	.LBB0_16
.LBB0_16:                               @ %if.then9
	mov	r10, r1
	mov	r0, r7
	mov	r1, r4
	mov	r2, r7
	b	.LBB0_17
.LBB0_17:                               @ %if.then9
	mov	r3, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_15
	ldr	r3, .LCPI0_16
	b	.LBB0_18
.LCPI0_15:
	.long	1943420878              @ 0x73d63fce
.LCPI0_16:
	.long	3191068135              @ 0xbe33d5e7
.LBB0_18:                               @ %if.then9
	mov	r7, r0
	mov	r4, r1
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R4<kill>
	b	.LBB0_19
.LBB0_19:                               @ %if.then9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_17
	ldr	r3, .LCPI0_18
	bl	__aeabi_dadd
	b	.LBB0_20
.LCPI0_17:
	.long	206584089               @ 0xc503919
.LCPI0_18:
	.long	1052684753              @ 0x3ebeb1d1
.LBB0_20:                               @ %if.then9
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_21
.LBB0_21:                               @ %if.then9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_19
	ldr	r3, .LCPI0_20
	bl	__aeabi_dadd
	b	.LBB0_22
.LCPI0_19:
	.long	3055208169              @ 0xb61ac6e9
.LCPI0_20:
	.long	3207128741              @ 0xbf28e6a5
.LBB0_22:                               @ %if.then9
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_23
.LBB0_23:                               @ %if.then9
	bl	__aeabi_dmul
	ldr	r3, .LCPI0_21
	mvn	r2, #2
	bl	__aeabi_dadd
	b	.LBB0_24
.LCPI0_21:
	.long	1066401791              @ 0x3f8fffff
.LBB0_24:                               @ %if.then9
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_25
.LBB0_25:                               @ %if.then9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_22
	ldr	r3, .LCPI0_23
	mov	r5, r0
	b	.LBB0_26
.LCPI0_22:
	.long	4101266831              @ 0xf4745d8f
.LCPI0_23:
	.long	1041500348              @ 0x3e1408bc
.LBB0_26:                               @ %if.then9
	mov	r6, r1
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_27
.LBB0_27:                               @ %if.then9
	ldr	r2, .LCPI0_24
	ldr	r3, .LCPI0_25
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_28
.LCPI0_24:
	.long	3464811945              @ 0xce84d5a9
.LCPI0_25:
	.long	1050753876              @ 0x3ea13b54
.LBB0_28:                               @ %if.then9
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_29
.LBB0_29:                               @ %if.then9
	ldr	r2, .LCPI0_26
	ldr	r3, .LCPI0_27
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_30
.LCPI0_26:
	.long	3713522676              @ 0xdd57dbf4
.LCPI0_27:
	.long	1058973394              @ 0x3f1ea6d2
.LBB0_30:                               @ %if.then9
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_31
.LBB0_31:                               @ %if.then9
	ldr	r2, .LCPI0_28
	ldr	r3, .LCPI0_29
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_32
.LCPI0_28:
	.long	2194195108              @ 0x82c8c2a4
.LCPI0_29:
	.long	1066401000              @ 0x3f8ffce8
.LBB0_32:                               @ %if.then9
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_33
.LBB0_33:                               @ %if.then9
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_34
.LBB0_34:                               @ %if.then9
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_ddiv
	b	.LBB0_35
.LBB0_35:                               @ %if.then9
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_36
.LBB0_36:                               @ %if.then9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_dadd
	b	.LBB0_42
.LBB0_37:                               @ %if.end32
	mov	r3, #265289728
	mov	r0, r7
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_38
.LBB0_38:                               @ %if.end32
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_39
.LBB0_39:                               @ %if.end32
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	lsr	r2, r5, #27
	b	.LBB0_40
.LBB0_40:                               @ %if.end32
	cmp	r2, #6
	movhi	r7, r0
	movhi	r4, r1
	mov	r1, #267386880
	b	.LBB0_41
.LBB0_41:                               @ %if.end32
	mov	r0, #0
	orr	r1, r1, #805306368
	mov	r2, r7
	mov	r3, r4
	bl	__aeabi_dsub
	b	.LBB0_42
.LBB0_42:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	j0, .Ltmp0-j0
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
	mov	r10, r3
	mov	r5, r2
	mov	r11, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r0, r5
	mov	r1, r10
	str	r5, [sp, #32]           @ 4-byte Spill
	str	r11, [sp, #28]          @ 4-byte Spill
	b	.LBB1_5
.LBB1_5:                                @ %entry
	bl	sin
	mov	r7, r0
	mov	r4, r1
	mov	r0, r5
	b	.LBB1_6
.LBB1_6:                                @ %entry
	mov	r1, r10
	bl	cos
	mov	r5, r0
	mov	r6, r1
	b	.LBB1_7
.LBB1_7:                                @ %entry
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r6
	b	.LBB1_8
.LBB1_8:                                @ %entry
	bl	__aeabi_dsub
	mov	r8, r0
	ldr	r0, [sp, #72]
	mov	r9, r1
	b	.LBB1_9
.LBB1_9:                                @ %entry
	mov	r1, r4
	cmp	r0, #0
	mov	r0, r7
	moveq	r9, r6
	b	.LBB1_10
.LBB1_10:                               @ %entry
	moveq	r8, r5
	mov	r6, r4
	mov	r2, r8
	mov	r3, r9
	b	.LBB1_11
.LBB1_11:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r0
	ldr	r0, .LCPI1_0
	mov	r5, r1
	mov	r4, r2
	cmp	r11, r0
	bhi	.LBB1_32
	b	.LBB1_12
.LCPI1_0:
	.long	2145386495              @ 0x7fdfffff
.LBB1_12:                               @ %if.then2
	mov	r11, r1
	str	r2, [sp, #24]           @ 4-byte Spill
	mov	r0, r7
	mov	r1, r6
	b	.LBB1_13
.LBB1_13:                               @ %if.then2
	mov	r2, r8
	mov	r3, r9
	str	r5, [sp, #16]           @ 4-byte Spill
	str	r4, [sp, #12]           @ 4-byte Spill
	b	.LBB1_14
.LBB1_14:                               @ %if.then2
	bl	__aeabi_dmul
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmplt
	b	.LBB1_15
.LBB1_15:                               @ %if.then2
	mov	r4, r10
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r7
	mov	r1, r6
	b	.LBB1_16
.LBB1_16:                               @ %if.then2
	mov	r2, r8
	mov	r3, r9
	str	r4, [sp, #20]           @ 4-byte Spill
	bl	__aeabi_dsub
	b	.LBB1_17
.LBB1_17:                               @ %if.then2
	ldr	r10, [sp, #32]          @ 4-byte Reload
	mov	r5, r0
	mov	r7, r1
	mov	r1, r4
	b	.LBB1_18
.LBB1_18:                               @ %if.then2
	mov	r3, r4
	str	r5, [sp, #4]            @ 4-byte Spill
	str	r7, [sp]                @ 4-byte Spill
	mov	r0, r10
	b	.LBB1_19
.LBB1_19:                               @ %if.then2
	mov	r2, r10
	bl	__aeabi_dadd
	bl	cos
	eor	r6, r1, #-2147483648
	b	.LBB1_20
.LBB1_20:                               @ %if.then2
	mov	r4, r0
	mov	r2, r5
	mov	r3, r7
	mov	r1, r6
	b	.LBB1_21
.LBB1_21:                               @ %if.then2
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_ddiv
	ldr	r9, [sp, #8]            @ 4-byte Reload
	ldr	r2, [sp, #12]           @ 4-byte Reload
	b	.LBB1_22
.LBB1_22:                               @ %if.then2
	ldr	r3, [sp, #16]           @ 4-byte Reload
	ldr	r8, [sp, #24]           @ 4-byte Reload
	cmp	r9, #0
	movne	r11, r1
	b	.LBB1_23
.LBB1_23:                               @ %if.then2
	movne	r8, r0
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_ddiv
	b	.LBB1_24
.LBB1_24:                               @ %if.then2
	mov	r5, r0
	ldr	r0, [sp]                @ 4-byte Reload
	mov	r7, r1
	cmp	r9, #0
	b	.LBB1_25
.LBB1_25:                               @ %if.then2
	mov	r6, r10
	movne	r7, r0
	ldr	r0, [sp, #4]            @ 4-byte Reload
	movne	r5, r0
	b	.LBB1_26
.LBB1_26:                               @ %if.then2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	lsr	r0, r0, #27
	cmp	r0, #8
	bhi	.LBB1_33
	b	.LBB1_27
.LBB1_27:                               @ %if.then12
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r7
	b	.LBB1_28
.LBB1_28:                               @ %if.then12
	str	r8, [sp, #24]           @ 4-byte Spill
	str	r11, [sp, #28]          @ 4-byte Spill
	bl	__aeabi_dsub
	mov	r2, r1
	b	.LBB1_29
.LBB1_29:                               @ %if.then12
	ldr	r1, [sp, #72]
	ldr	r3, [sp, #20]           @ 4-byte Reload
	cmp	r1, #0
	ldr	r1, .LCPI1_24
	b	.LBB1_30
.LCPI1_24:
	.long	1075838975              @ 0x401fffff
.LBB1_30:                               @ %if.then12
	bic	r10, r3, #-2147483648
	moveq	r2, r7
	moveq	r0, r5
	cmp	r10, r1
	mov	r1, r3
	bls	.LBB1_34
	b	.LBB1_31
.LBB1_31:
	ldr	r5, .LCPI1_22
	ldr	r4, .LCPI1_23
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB1_38
.LCPI1_22:
	.long	pR8
.LCPI1_23:
	.long	pS8
.LBB1_32:
	ldr	r6, [sp, #32]           @ 4-byte Reload
	b	.LBB1_111
.LBB1_33:
	ldr	r10, [sp, #20]          @ 4-byte Reload
	mov	r4, r8
	mov	r5, r11
	b	.LBB1_111
.LBB1_34:                               @ %if.else.i
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	ldr	r0, .LCPI1_28
	cmp	r10, r0
	bls	.LBB1_36
	b	.LBB1_35
.LCPI1_28:
	.long	1074933386              @ 0x40122e8a
.LBB1_35:
	ldr	r5, .LCPI1_26
	ldr	r4, .LCPI1_27
	b	.LBB1_38
.LCPI1_26:
	.long	pR5
.LCPI1_27:
	.long	pS5
.LBB1_36:                               @ %if.else5.i
	ldr	r0, .LCPI1_30
	ldr	r2, .LCPI1_32
	ldr	r5, .LCPI1_33
	ldr	r4, .LCPI1_35
	b	.LBB1_37
.LCPI1_30:
	.long	1074191212              @ 0x4006db6c
.LCPI1_32:
	.long	pR3
.LCPI1_33:
	.long	pR2
.LCPI1_35:
	.long	pS2
.LBB1_37:                               @ %if.else5.i
	cmp	r10, r0
	ldr	r0, .LCPI1_34
	movhi	r5, r2
	movhi	r4, r0
	b	.LBB1_38
.LCPI1_34:
	.long	pS3
.LBB1_38:                               @ %pzero.exit
	mov	r0, r6
	mov	r3, r1
	mov	r2, r0
	bl	__aeabi_dmul
	b	.LBB1_39
.LBB1_39:                               @ %pzero.exit
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	b	.LBB1_40
.LBB1_40:                               @ %pzero.exit
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	ldr	r2, [r5, #40]
	ldr	r3, [r5, #44]
	b	.LBB1_41
.LBB1_41:                               @ %pzero.exit
	mov	r6, r0
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB1_42
.LBB1_42:                               @ %pzero.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #32]
	b	.LBB1_43
.LBB1_43:                               @ %pzero.exit
	ldr	r1, [r5, #36]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_44
.LBB1_44:                               @ %pzero.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_45
.LBB1_45:                               @ %pzero.exit
	mov	r3, r1
	ldr	r0, [r5, #24]
	ldr	r1, [r5, #28]
	bl	__aeabi_dadd
	b	.LBB1_46
.LBB1_46:                               @ %pzero.exit
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_47
.LBB1_47:                               @ %pzero.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #16]
	b	.LBB1_48
.LBB1_48:                               @ %pzero.exit
	ldr	r1, [r5, #20]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_49
.LBB1_49:                               @ %pzero.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_50
.LBB1_50:                               @ %pzero.exit
	mov	r3, r1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #12]
	ldm	r5, {r8, r9}
	b	.LBB1_51
.LBB1_51:                               @ %pzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_52
.LBB1_52:                               @ %pzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_53
.LBB1_53:                               @ %pzero.exit
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	ldr	r2, [r4, #32]
	b	.LBB1_54
.LBB1_54:                               @ %pzero.exit
	ldr	r3, [r4, #36]
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	b	.LBB1_55
.LBB1_55:                               @ %pzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_56
.LBB1_56:                               @ %pzero.exit
	ldr	r0, [r4, #24]
	ldr	r1, [r4, #28]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_57
.LBB1_57:                               @ %pzero.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_58
.LBB1_58:                               @ %pzero.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	b	.LBB1_59
.LBB1_59:                               @ %pzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_60
.LBB1_60:                               @ %pzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_61
.LBB1_61:                               @ %pzero.exit
	ldr	r0, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r11, [r4]
	ldr	r5, [r4, #4]
	b	.LBB1_62
.LBB1_62:                               @ %pzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_63
.LBB1_63:                               @ %pzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_64
.LBB1_64:                               @ %pzero.exit
	mov	r0, r11
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_65
.LBB1_65:                               @ %pzero.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_66
.LBB1_66:                               @ %pzero.exit
	mov	r4, #267386880
	mov	r2, #0
	orr	r4, r4, #805306368
	mov	r3, r4
	b	.LBB1_67
.LBB1_67:                               @ %pzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB1_68
.LBB1_68:                               @ %pzero.exit
	mov	r1, r9
	bl	__aeabi_ddiv
	mov	r2, #0
	mov	r3, r4
	b	.LBB1_69
.LBB1_69:                               @ %pzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB1_70
.LBB1_70:                               @ %pzero.exit
	ldr	r1, [sp, #28]           @ 4-byte Reload
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_25
	mov	r8, r0
	cmp	r10, r2
	bls	.LBB1_72
	b	.LBB1_71
.LCPI1_25:
	.long	1075838975              @ 0x401fffff
.LBB1_71:
	ldr	r5, .LCPI1_36
	ldr	r4, .LCPI1_37
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB1_76
.LCPI1_36:
	.long	qR8
.LCPI1_37:
	.long	qS8
.LBB1_72:                               @ %if.else.i48
	str	r1, [sp, #28]           @ 4-byte Spill
	ldr	r0, .LCPI1_29
	cmp	r10, r0
	bls	.LBB1_74
	b	.LBB1_73
.LCPI1_29:
	.long	1074933386              @ 0x40122e8a
.LBB1_73:
	ldr	r5, .LCPI1_38
	ldr	r4, .LCPI1_39
	b	.LBB1_76
.LCPI1_38:
	.long	qR5
.LCPI1_39:
	.long	qS5
.LBB1_74:                               @ %if.else5.i51
	ldr	r0, .LCPI1_31
	ldr	r1, .LCPI1_40
	ldr	r5, .LCPI1_41
	ldr	r4, .LCPI1_43
	b	.LBB1_75
.LCPI1_31:
	.long	1074191212              @ 0x4006db6c
.LCPI1_40:
	.long	qR3
.LCPI1_41:
	.long	qR2
.LCPI1_43:
	.long	qS2
.LBB1_75:                               @ %if.else5.i51
	cmp	r10, r0
	ldr	r0, .LCPI1_42
	movhi	r5, r1
	movhi	r4, r0
	b	.LBB1_76
.LCPI1_42:
	.long	qS3
.LBB1_76:                               @ %qzero.exit
	ldr	r2, [r5, #40]
	ldr	r3, [r5, #44]
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_77
.LBB1_77:                               @ %qzero.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #32]
	b	.LBB1_78
.LBB1_78:                               @ %qzero.exit
	ldr	r1, [r5, #36]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_79
.LBB1_79:                               @ %qzero.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_80
.LBB1_80:                               @ %qzero.exit
	mov	r3, r1
	ldr	r0, [r5, #24]
	ldr	r1, [r5, #28]
	bl	__aeabi_dadd
	b	.LBB1_81
.LBB1_81:                               @ %qzero.exit
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_82
.LBB1_82:                               @ %qzero.exit
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r5, #16]
	b	.LBB1_83
.LBB1_83:                               @ %qzero.exit
	ldr	r1, [r5, #20]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_84
.LBB1_84:                               @ %qzero.exit
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB1_85
.LBB1_85:                               @ %qzero.exit
	mov	r3, r1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #12]
	ldm	r5, {r9, r10}
	b	.LBB1_86
.LBB1_86:                               @ %qzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_87
.LBB1_87:                               @ %qzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_88
.LBB1_88:                               @ %qzero.exit
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_dadd
	ldr	r2, [r4, #40]
	b	.LBB1_89
.LBB1_89:                               @ %qzero.exit
	ldr	r3, [r4, #44]
	mov	r9, r0
	mov	r10, r1
	mov	r0, r6
	b	.LBB1_90
.LBB1_90:                               @ %qzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_91
.LBB1_91:                               @ %qzero.exit
	ldr	r0, [r4, #32]
	ldr	r1, [r4, #36]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_92
.LBB1_92:                               @ %qzero.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_93
.LBB1_93:                               @ %qzero.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r4, #24]
	ldr	r1, [r4, #28]
	b	.LBB1_94
.LBB1_94:                               @ %qzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_95
.LBB1_95:                               @ %qzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_96
.LBB1_96:                               @ %qzero.exit
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_97
.LBB1_97:                               @ %qzero.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_98
.LBB1_98:                               @ %qzero.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [r4, #8]
	ldr	r1, [r4, #12]
	b	.LBB1_99
.LBB1_99:                               @ %qzero.exit
	ldr	r11, [r4]
	ldr	r5, [r4, #4]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_100
.LBB1_100:                              @ %qzero.exit
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB1_101
.LBB1_101:                              @ %qzero.exit
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r5
	b	.LBB1_102
.LBB1_102:                              @ %qzero.exit
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_103
.LBB1_103:                              @ %qzero.exit
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB1_104
.LBB1_104:                              @ %qzero.exit
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_105
.LBB1_105:                              @ %qzero.exit
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_ddiv
	mov	r3, #1069547520
	b	.LBB1_106
.LBB1_106:                              @ %qzero.exit
	mov	r2, #0
	orr	r3, r3, #-2147483648
	bl	__aeabi_dadd
	ldr	r6, [sp, #32]           @ 4-byte Reload
	b	.LBB1_107
.LBB1_107:                              @ %qzero.exit
	ldr	r10, [sp, #20]          @ 4-byte Reload
	mov	r2, r6
	mov	r3, r10
	bl	__aeabi_ddiv
	b	.LBB1_108
.LBB1_108:                              @ %qzero.exit
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	b	.LBB1_109
.LBB1_109:                              @ %qzero.exit
	bl	__aeabi_dmul
	mov	r3, r1
	ldr	r1, [sp, #28]           @ 4-byte Reload
	mov	r2, r0
	b	.LBB1_110
.LBB1_110:                              @ %qzero.exit
	mov	r0, r8
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r5, r1
	b	.LBB1_111
.LBB1_111:                              @ %if.end23
	ldr	r2, .LCPI1_44
	ldr	r3, .LCPI1_45
	mov	r0, r4
	mov	r1, r5
	b	.LBB1_112
.LCPI1_44:
	.long	1346542445              @ 0x50429b6d
.LCPI1_45:
	.long	1071779287              @ 0x3fe20dd7
.LBB1_112:                              @ %if.end23
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	b	.LBB1_113
.LBB1_113:                              @ %if.end23
	mov	r1, r10
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_114
.LBB1_114:                              @ %if.end23
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

	.globl	y0
	.align	2
	.type	y0,%function
y0:                                     @ @y0
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
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
	mov	r2, r5
	mov	r3, r4
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	b	.LBB2_44
.LBB2_7:
	mov	r1, #267386880
	orr	r1, r1, #-268435456
	b	.LBB2_44
.LBB2_8:
	mov	r1, #66584576
	orr	r1, r1, #2080374784
	b	.LBB2_44
.LBB2_9:                                @ %if.end10
	cmp	r4, #1073741824
	blo	.LBB2_11
	b	.LBB2_10
.LBB2_10:                               @ %if.then13
	mov	r0, #1
	mov	r2, r5
	mov	r3, r4
	str	r0, [sp]
	mov	r0, r4
	bl	common
	b	.LBB2_44
.LBB2_11:                               @ %if.end14
	cmp	r4, #1044381696
	blo	.LBB2_41
	b	.LBB2_12
.LBB2_12:                               @ %if.then17
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB2_13
.LBB2_13:                               @ %if.then17
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_31
	ldr	r3, .LCPI2_32
	mov	r6, r0
	b	.LBB2_14
.LCPI2_31:
	.long	1765782472              @ 0x693fb3c8
.LCPI2_32:
	.long	3183862845              @ 0xbdc5e43d
.LBB2_14:                               @ %if.then17
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	b	.LBB2_15
.LBB2_15:                               @ %if.then17
	ldr	r2, .LCPI2_33
	ldr	r3, .LCPI2_34
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_16
.LCPI2_33:
	.long	995011540               @ 0x3b4eabd4
.LCPI2_34:
	.long	1045758039              @ 0x3e550057
.LBB2_16:                               @ %if.then17
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_17
.LBB2_17:                               @ %if.then17
	ldr	r2, .LCPI2_35
	ldr	r3, .LCPI2_36
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_18
.LCPI2_35:
	.long	1943166125              @ 0x73d25cad
.LCPI2_36:
	.long	3201302183              @ 0xbecffea7
.LBB2_18:                               @ %if.then17
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_19
.LBB2_19:                               @ %if.then17
	ldr	r2, .LCPI2_37
	ldr	r3, .LCPI2_38
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_20
.LCPI2_37:
	.long	548576107               @ 0x20b29b6b
.LCPI2_38:
	.long	1060554061              @ 0x3f36c54d
.LBB2_20:                               @ %if.then17
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_21
.LBB2_21:                               @ %if.then17
	ldr	r2, .LCPI2_39
	ldr	r3, .LCPI2_40
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_22
.LCPI2_39:
	.long	2976709271              @ 0xb16cfa97
.LCPI2_40:
	.long	3213642984              @ 0xbf8c4ce8
.LBB2_22:                               @ %if.then17
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_23
.LBB2_23:                               @ %if.then17
	ldr	r2, .LCPI2_41
	ldr	r3, .LCPI2_42
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_24
.LCPI2_41:
	.long	2649351164              @ 0x9de9e3fc
.LCPI2_42:
	.long	1069980929              @ 0x3fc69d01
.LBB2_24:                               @ %if.then17
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB2_25
.LBB2_25:                               @ %if.then17
	ldr	r2, .LCPI2_27
	ldr	r3, .LCPI2_29
	bl	__aeabi_dadd
	ldr	r2, .LCPI2_43
	b	.LBB2_26
.LCPI2_27:
	.long	2580271135              @ 0x99cbd01f
.LCPI2_29:
	.long	3216172246              @ 0xbfb2e4d6
.LCPI2_43:
	.long	1003936239              @ 0x3bd6d9ef
.LBB2_26:                               @ %if.then17
	ldr	r3, .LCPI2_44
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	b	.LBB2_27
.LCPI2_44:
	.long	1040076824              @ 0x3dfe5018
.LBB2_27:                               @ %if.then17
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_45
	ldr	r3, .LCPI2_46
	b	.LBB2_28
.LCPI2_45:
	.long	2146566909              @ 0x7ff202fd
.LCPI2_46:
	.long	1049715757              @ 0x3e91642d
.LBB2_28:                               @ %if.then17
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_29
.LBB2_29:                               @ %if.then17
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_47
	ldr	r3, .LCPI2_48
	b	.LBB2_30
.LCPI2_47:
	.long	4118333121              @ 0xf578c6c1
.LCPI2_48:
	.long	1058270395              @ 0x3f13ecbb
.LBB2_30:                               @ %if.then17
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_31
.LBB2_31:                               @ %if.then17
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_49
	ldr	r3, .LCPI2_50
	b	.LBB2_32
.LCPI2_49:
	.long	2445920026              @ 0x91c9c71a
.LCPI2_50:
	.long	1066013296              @ 0x3f8a1270
.LBB2_32:                               @ %if.then17
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_33
.LBB2_33:                               @ %if.then17
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB2_34
.LBB2_34:                               @ %if.then17
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB2_35
.LBB2_35:                               @ %if.then17
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ddiv
	mov	r8, r0
	b	.LBB2_36
.LBB2_36:                               @ %if.then17
	mov	r9, r1
	mov	r0, r5
	mov	r1, r4
	bl	j0
	b	.LBB2_37
.LBB2_37:                               @ %if.then17
	mov	r6, r0
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	b	.LBB2_38
.LBB2_38:                               @ %if.then17
	bl	log
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_39
.LBB2_39:                               @ %if.then17
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_0
	ldr	r3, .LCPI2_24
	b	.LBB2_40
.LCPI2_0:
	.long	1841940611              @ 0x6dc9c883
.LCPI2_24:
	.long	1071931184              @ 0x3fe45f30
.LBB2_40:                               @ %if.then17
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	b	.LBB2_43
.LBB2_41:                               @ %if.end43
	mov	r0, r5
	mov	r1, r4
	bl	log
	ldr	r2, .LCPI2_25
	b	.LBB2_42
.LCPI2_1:
	.long	1841940611              @ 0x6dc9c883
.LCPI2_25:
	.long	1071931184              @ 0x3fe45f30
.LBB2_42:                               @ %if.end43
	ldr	r3, .LCPI2_26
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_28
	ldr	r3, .LCPI2_30
	b	.LBB2_43
.LCPI2_26:
	.long	1071931184              @ 0x3fe45f30
.LCPI2_28:
	.long	2580271135              @ 0x99cbd01f
.LCPI2_30:
	.long	3216172246              @ 0xbfb2e4d6
.LBB2_43:                               @ %return
	bl	__aeabi_dadd
	b	.LBB2_44
.LBB2_44:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	y0, .Ltmp2-y0
	.cantunwind
	.fnend

	.type	pR8,%object             @ @pR8
	.section	.rodata,"a",%progbits
	.align	3
pR8:
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	4294966578              @ double -7.031250e-02
	.long	3216113663
	.long	3025119097              @ double -8.081670e+00
	.long	3223333328
	.long	2065295459              @ double -2.570631e+02
	.long	3228569858
	.long	3444427516              @ double -2.485216e+03
	.long	3231935086
	.long	919364669               @ double -5.253044e+03
	.long	3233056011
	.size	pR8, 48

	.type	pS8,%object             @ @pS8
	.align	3
pS8:
	.long	128542545               @ double 1.165344e+02
	.long	1079845427
	.long	1348036920              @ double 3.833745e+03
	.long	1085141885
	.long	1857466463              @ double 4.059786e+04
	.long	1088672443
	.long	2409605565              @ double 1.167530e+05
	.long	1090289935
	.long	1328302556              @ double 4.762773e+04
	.long	1088897399
	.size	pS8, 40

	.type	pR5,%object             @ @pR5
	.align	3
pR5:
	.long	1206162892              @ double -1.141255e-11
	.long	3181975729
	.long	3868916678              @ double -7.031249e-02
	.long	3216113663
	.long	4178340799              @ double -4.159611e+00
	.long	3222315888
	.long	1518147459              @ double -6.767477e+01
	.long	3226528559
	.long	1732430947              @ double -3.312313e+02
	.long	3228873651
	.long	681806807               @ double -3.464334e+02
	.long	3228935919
	.size	pR5, 48

	.type	pS5,%object             @ @pS5
	.align	3
pS5:
	.long	211338718               @ double 6.075394e+01
	.long	1078878337
	.long	1551771748              @ double 1.051252e+03
	.long	1083206914
	.long	2411601248              @ double 5.978971e+03
	.long	1085758200
	.long	4202101304              @ double 9.625445e+03
	.long	1086508216
	.long	3339446372              @ double 2.406058e+03
	.long	1084410909
	.size	pS5, 40

	.type	pR3,%object             @ @pR3
	.align	3
pR3:
	.long	1877060230              @ double -2.547046e-09
	.long	3190153475
	.long	4156613195              @ double -7.031196e-02
	.long	3216113654
	.long	2930016372              @ double -2.409032e+00
	.long	3221439922
	.long	1287212564              @ double -2.196598e+01
	.long	3224762186
	.long	1107958341              @ double -5.807917e+01
	.long	3226274338
	.long	2828195855              @ double -3.144795e+01
	.long	3225383596
	.size	pR3, 48

	.type	pS3,%object             @ @pS3
	.align	3
pS3:
	.long	2215083475              @ double 3.585603e+01
	.long	1078062482
	.long	1179286542              @ double 3.615140e+02
	.long	1081514041
	.long	1829790166              @ double 1.193608e+03
	.long	1083352686
	.long	3099827070              @ double 1.127997e+03
	.long	1083285500
	.long	4231499905              @ double 1.735809e+02
	.long	1080406678
	.size	pS3, 40

	.type	pR2,%object             @ @pR2
	.align	3
pR2:
	.long	3911647853              @ double -8.875343e-08
	.long	3195523862
	.long	1230904898              @ double -7.030310e-02
	.long	3216113506
	.long	2317658179              @ double -1.450738e+00
	.long	3220649529
	.long	3987711987              @ double -7.635696e+00
	.long	3223227123
	.long	3307496195              @ double -1.119317e+01
	.long	3223741158
	.long	2945443599              @ double -3.233646e+00
	.long	3221872257
	.size	pR2, 48

	.type	pS2,%object             @ @pS2
	.align	3
pS2:
	.long	2425051481              @ double 2.222030e+01
	.long	1077295205
	.long	250120079               @ double 1.362068e+02
	.long	1080100510
	.long	1122633627              @ double 2.704703e+02
	.long	1081141126
	.long	985070335               @ double 1.538754e+02
	.long	1080245251
	.long	1144592393              @ double 1.465762e+01
	.long	1076711603
	.size	pS2, 40

	.type	qR8,%object             @ @qR8
	.align	3
qR8:
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	4294966828              @ double 7.324219e-02
	.long	1068679167
	.long	1538471126              @ double 1.176821e+01
	.long	1076332882
	.long	355473445               @ double 5.576734e+02
	.long	1082223971
	.long	1041822829              @ double 8.859197e+03
	.long	1086410137
	.long	244323686               @ double 3.701463e+04
	.long	1088557780
	.size	qR8, 48

	.type	qS8,%object             @ @qS8
	.align	3
qS8:
	.long	911948220               @ double 1.637760e+02
	.long	1080326357
	.long	1315636579              @ double 8.098345e+03
	.long	1086300760
	.long	1423150143              @ double 1.425383e+05
	.long	1090610770
	.long	2208639811              @ double 8.033093e+05
	.long	1093174234
	.long	685640509               @ double 8.405016e+05
	.long	1093248619
	.long	747974853               @ double -3.438993e+05
	.long	3239378285
	.size	qS8, 48

	.type	qR5,%object             @ @qR5
	.align	3
qR5:
	.long	701271257               @ double 1.840860e-11
	.long	1035222415
	.long	3513954380              @ double 7.324218e-02
	.long	1068679167
	.long	3113565651              @ double 5.835635e+00
	.long	1075271600
	.long	176654569               @ double 1.351116e+02
	.long	1080091538
	.long	2647180417              @ double 1.027244e+03
	.long	1083182329
	.long	1405543334              @ double 1.989978e+03
	.long	1084168169
	.size	qR5, 48

	.type	qS5,%object             @ @qS5
	.align	3
qS5:
	.long	4217247043              @ double 8.277661e+01
	.long	1079292339
	.long	3659645134              @ double 2.077814e+03
	.long	1084242848
	.long	2069438061              @ double 1.884729e+04
	.long	1087530962
	.long	2548048754              @ double 5.675111e+04
	.long	1089189347
	.long	528110752               @ double 3.597675e+04
	.long	1088524568
	.long	3202074121              @ double -5.354343e+03
	.long	3233081943
	.size	qS5, 48

	.type	qR3,%object             @ @qR3
	.align	3
qR3:
	.long	1792985986              @ double 4.377410e-09
	.long	1043516675
	.long	244123714               @ double 7.324112e-02
	.long	1068679150
	.long	1628740853              @ double 3.344231e+00
	.long	1074446588
	.long	2519576285              @ double 4.262184e+01
	.long	1078284184
	.long	3797875999              @ double 1.708081e+02
	.long	1080383963
	.long	2180653536              @ double 1.667339e+02
	.long	1080350588
	.size	qR3, 48

	.type	qS3,%object             @ @qS3
	.align	3
qS3:
	.long	3219342246              @ double 4.875887e+01
	.long	1078485282
	.long	2253672115              @ double 7.096892e+02
	.long	1082535299
	.long	3830316131              @ double 3.704148e+03
	.long	1085075531
	.long	3620170280              @ double 6.460425e+03
	.long	1085881452
	.long	3645878720              @ double 2.516334e+03
	.long	1084467370
	.long	538768399               @ double -1.492475e+02
	.long	3227690987
	.size	qS3, 48

	.type	qR2,%object             @ @qR2
	.align	3
qR2:
	.long	1425501147              @ double 1.504444e-07
	.long	1048850747
	.long	1049116212              @ double 7.322343e-02
	.long	1068678853
	.long	3878123420              @ double 1.998192e+00
	.long	1073739927
	.long	2868473829              @ double 1.449560e+01
	.long	1076690367
	.long	704371786               @ double 3.166623e+01
	.long	1077914254
	.long	1904298932              @ double 1.625271e+01
	.long	1076904113
	.size	qR2, 48

	.type	qS2,%object             @ @qS2
	.align	3
qS2:
	.long	4156586733              @ double 3.036558e+01
	.long	1077829014
	.long	3838921536              @ double 2.693481e+02
	.long	1081136529
	.long	582205218               @ double 8.447838e+02
	.long	1082811973
	.long	2623324692              @ double 8.829358e+02
	.long	1082890108
	.long	234885989               @ double 2.126664e+02
	.long	1080726867
	.long	4172491057              @ double -5.310955e+00
	.long	3222617706
	.size	qS2, 48


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
