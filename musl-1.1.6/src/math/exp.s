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
	.file	"src/math/exp.bc"
	.globl	exp
	.align	2
	.type	exp,%function
exp:                                    @ @exp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r2, .LCPI0_25
	mov	r10, r1
	mov	r11, r0
	b	.LBB0_4
.LCPI0_25:
	.long	1082532651              @ 0x4086232b
.LBB0_4:                                @ %entry
	bic	r1, r10, #-2147483648
	lsr	r4, r10, #31
	cmp	r1, r2
	blo	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %cond.true7
	mov	r2, #267386880
	mov	r3, #0
	orr	r2, r2, #1879048192
	cmp	r1, r2
	b	.LBB0_6
.LBB0_6:                                @ %cond.true7
	movhi	r3, #1
	cmp	r0, #0
	movne	r0, #1
	cmp	r1, r2
	movne	r0, r3
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_7
.LBB0_7:
	mov	r5, r11
	mov	r1, r10
	b	.LBB0_60
.LBB0_8:                                @ %if.end32
	ldr	r0, .LCPI0_26
	cmp	r1, r0
	blo	.LBB0_15
	b	.LBB0_9
.LCPI0_26:
	.long	1071001155              @ 0x3fd62e43
.LBB0_9:                                @ %if.then35
	ldr	r0, .LCPI0_27
	cmp	r1, r0
	bhs	.LBB0_25
	b	.LBB0_10
.LCPI0_27:
	.long	1072734898              @ 0x3ff0a2b2
.LBB0_10:                               @ %if.else
	eor	r0, r4, #1
	sub	r0, r0, r4
	b	.LBB0_27
.LBB0_11:                               @ %if.end
	ldr	r5, .LCPI0_28
	ldr	r6, .LCPI0_29
	mov	r0, r11
	mov	r1, r10
	b	.LBB0_12
.LCPI0_28:
	.long	4277811695              @ 0xfefa39ef
.LCPI0_29:
	.long	1082535490              @ 0x40862e42
.LBB0_12:                               @ %if.end
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dcmple
	mov	r7, r0
	b	.LBB0_13
.LBB0_13:                               @ %if.end
	mov	r0, r11
	mov	r1, r10
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dcmpun
	orrs	r0, r0, r7
	bne	.LBB0_18
	b	.LBB0_14
.LBB0_14:                               @ %if.then19
	mov	r3, #266338304
	mov	r0, r11
	mov	r1, r10
	mov	r2, #0
	orr	r3, r3, #1879048192
	bl	__aeabi_dmul
	b	.LBB0_59
.LBB0_15:                               @ %if.else49
	mov	r0, #238026752
	orr	r0, r0, #805306368
	cmp	r1, r0
	bls	.LBB0_56
	b	.LBB0_16
.LBB0_16:
	mov	r0, #0
	mov	r9, r11
	mov	r6, r10
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_17
.LBB0_17:
	mov	r0, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB0_34
.LBB0_18:                               @ %if.end20
	ldr	r5, .LCPI0_30
	ldr	r6, .LCPI0_31
	mov	r0, r11
	mov	r1, r10
	b	.LBB0_19
.LCPI0_30:
	.long	3715808466              @ 0xdd7abcd2
.LCPI0_31:
	.long	3230016299              @ 0xc086232b
.LBB0_19:                               @ %if.end20
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dcmpge
	mov	r7, r0
	b	.LBB0_20
.LBB0_20:                               @ %if.end20
	mov	r0, r11
	mov	r1, r10
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dcmpun
	orrs	r0, r0, r7
	bne	.LBB0_25
	b	.LBB0_21
.LBB0_21:                               @ %do.body24
	mov	r1, #111149056
	mov	r0, #0
	mov	r2, r11
	mov	r3, r10
	b	.LBB0_22
.LBB0_22:                               @ %do.body24
	mov	r5, #0
	orr	r1, r1, #-1342177280
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	b	.LBB0_23
.LBB0_23:                               @ %do.body24
	str	r0, [sp, #24]
	mov	r0, r11
	mov	r1, r10
	ldr	r2, .LCPI0_32
	b	.LBB0_24
.LCPI0_32:
	.long	3576508497              @ 0xd52d3051
.LBB0_24:                               @ %do.body24
	ldr	r3, .LCPI0_33
	bl	__aeabi_dcmplt
	mov	r1, #0
	cmp	r0, #0
	bne	.LBB0_60
	b	.LBB0_25
.LCPI0_33:
	.long	3230091536              @ 0xc0874910
.LBB0_25:                               @ %if.then38
	ldr	r2, .LCPI0_34
	ldr	r3, .LCPI0_35
	mov	r0, r11
	mov	r1, r10
	b	.LBB0_26
.LCPI0_34:
	.long	1697350398              @ 0x652b82fe
.LCPI0_35:
	.long	1073157447              @ 0x3ff71547
.LBB0_26:                               @ %if.then38
	bl	__aeabi_dmul
	ldr	r3, .LCPI0_36
	ldr	r2, [r3, r4, lsl #3]!
	ldr	r3, [r3, #4]
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	b	.LBB0_27
.LCPI0_36:
	.long	half
.LBB0_27:                               @ %if.end42
	str	r0, [sp, #12]           @ 4-byte Spill
	bl	__aeabi_i2d
	ldr	r3, .LCPI0_37
	mov	r2, #249561088
	b	.LBB0_28
.LCPI0_37:
	.long	3219533378              @ 0xbfe62e42
.LBB0_28:                               @ %if.end42
	mov	r5, r0
	mov	r6, r1
	orr	r2, r2, #-268435456
                                        @ kill: R0<def> R5<kill>
	b	.LBB0_29
.LBB0_29:                               @ %if.end42
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_30
.LBB0_30:                               @ %if.end42
	mov	r0, r11
	mov	r1, r10
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_38
	b	.LBB0_31
.LCPI0_38:
	.long	897137782               @ 0x35793c76
.LBB0_31:                               @ %if.end42
	ldr	r3, .LCPI0_39
	mov	r11, r0
	mov	r10, r1
	mov	r0, r5
	b	.LBB0_32
.LCPI0_39:
	.long	1038760431              @ 0x3dea39ef
.LBB0_32:                               @ %if.end42
	mov	r1, r6
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_33
.LBB0_33:                               @ %if.end42
	mov	r0, r11
	mov	r1, r10
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bl	__aeabi_dsub
	mov	r9, r0
	mov	r6, r1
	b	.LBB0_34
.LBB0_34:                               @ %if.end60
	mov	r0, r9
	mov	r1, r6
	mov	r2, r9
	mov	r3, r6
	b	.LBB0_35
.LBB0_35:                               @ %if.end60
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_40
	ldr	r3, .LCPI0_41
	mov	r5, r0
	b	.LBB0_36
.LCPI0_40:
	.long	1925096656              @ 0x72bea4d0
.LCPI0_41:
	.long	1046886249              @ 0x3e663769
.LBB0_36:                               @ %if.end60
	mov	r8, r1
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dmul
	b	.LBB0_37
.LBB0_37:                               @ %if.end60
	ldr	r2, .LCPI0_42
	ldr	r3, .LCPI0_43
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_38
.LCPI0_42:
	.long	3318901745              @ 0xc5d26bf1
.LCPI0_43:
	.long	3199974721              @ 0xbebbbd41
.LBB0_38:                               @ %if.end60
	mov	r3, r1
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_39
.LBB0_39:                               @ %if.end60
	ldr	r2, .LCPI0_44
	ldr	r3, .LCPI0_45
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_40
.LCPI0_44:
	.long	2938494508              @ 0xaf25de2c
.LCPI0_45:
	.long	1058100842              @ 0x3f11566a
.LBB0_40:                               @ %if.end60
	mov	r3, r1
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_41
.LBB0_41:                               @ %if.end60
	ldr	r2, .LCPI0_46
	ldr	r3, .LCPI0_47
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_42
.LCPI0_46:
	.long	381599123               @ 0x16bebd93
.LCPI0_47:
	.long	3211182444              @ 0xbf66c16c
.LBB0_42:                               @ %if.end60
	mov	r3, r1
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_43
.LBB0_43:                               @ %if.end60
	ldr	r2, .LCPI0_48
	ldr	r3, .LCPI0_49
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_44
.LCPI0_48:
	.long	1431655742              @ 0x5555553e
.LCPI0_49:
	.long	1069897045              @ 0x3fc55555
.LBB0_44:                               @ %if.end60
	mov	r3, r1
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_45
.LBB0_45:                               @ %if.end60
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r6
	b	.LBB0_46
.LBB0_46:                               @ %if.end60
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r7, r1
	mov	r0, r9
	b	.LBB0_47
.LBB0_47:                               @ %if.end60
	mov	r1, r6
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dmul
	b	.LBB0_48
.LBB0_48:                               @ %if.end60
	mov	r6, r0
	mov	r4, r1
	mov	r0, #0
	mov	r1, #1073741824
	b	.LBB0_49
.LBB0_49:                               @ %if.end60
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_50
.LBB0_50:                               @ %if.end60
	mov	r3, r1
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_ddiv
	b	.LBB0_51
.LBB0_51:                               @ %if.end60
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r3, [sp, #4]            @ 4-byte Reload
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_52
.LBB0_52:                               @ %if.end60
	mov	r3, r1
	mov	r0, r11
	mov	r1, r10
	bl	__aeabi_dadd
	b	.LBB0_53
.LBB0_53:                               @ %if.end60
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_54
.LBB0_54:                               @ %if.end60
	ldr	r2, [sp, #12]           @ 4-byte Reload
	mov	r5, r0
	cmp	r2, #0
	beq	.LBB0_60
	b	.LBB0_55
.LBB0_55:                               @ %if.end81
	mov	r0, r5
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	scalbn
.LBB0_56:                               @ %do.body54
	mov	r3, #266338304
	mov	r0, r11
	mov	r1, r10
	mov	r2, #0
	b	.LBB0_57
.LBB0_57:                               @ %do.body54
	orr	r3, r3, #1879048192
	bl	__aeabi_dadd
	mov	r3, #267386880
	str	r1, [sp, #20]
	b	.LBB0_58
.LBB0_58:                               @ %do.body54
	str	r0, [sp, #16]
	mov	r0, r11
	mov	r1, r10
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_59
.LBB0_59:                               @ %return
	mov	r5, r0
	b	.LBB0_60
.LBB0_60:                               @ %return
	mov	r0, r5
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	exp, .Ltmp0-exp
	.cantunwind
	.fnend

	.type	half,%object            @ @half
	.section	.rodata.cst16,"aM",%progbits,16
	.align	3
half:
	.long	0                       @ double 5.000000e-01
	.long	1071644672
	.long	0                       @ double -5.000000e-01
	.long	3219128320
	.size	half, 16


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
