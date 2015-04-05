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
	.file	"src/math/atan.bc"
	.globl	atan
	.align	2
	.type	atan,%function
atan:                                   @ @atan
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r1, #68157440
	mov	r5, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	bic	r6, r4, #-2147483648
	lsr	r10, r4, #31
	orr	r1, r1, #1073741824
	cmp	r6, r1
	blo	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %cond.true7
	mov	r1, #267386880
	mov	r2, #0
	orr	r1, r1, #1879048192
	cmp	r6, r1
	b	.LBB0_6
.LBB0_6:                                @ %cond.true7
	movhi	r2, #1
	cmp	r0, #0
	movne	r0, #1
	cmp	r6, r1
	movne	r0, r2
	cmp	r0, #0
	bne	.LBB0_69
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	ldr	r0, .LCPI0_59
	ldr	r4, .LCPI0_60
	ldr	r5, .LCPI0_61
	cmp	r10, #0
	movne	r4, r0
	b	.LBB0_69
.LCPI0_59:
	.long	3220775419              @ 0xbff921fb
.LCPI0_60:
	.long	1073291771              @ 0x3ff921fb
.LCPI0_61:
	.long	1413754136              @ 0x54442d18
.LBB0_8:                                @ %if.end19
	ldr	r0, .LCPI0_31
	cmp	r6, r0
	bhi	.LBB0_12
	b	.LBB0_9
.LCPI0_31:
	.long	1071382527              @ 0x3fdbffff
.LBB0_9:                                @ %if.then22
	lsr	r0, r6, #22
	mvn	r11, #0
	cmp	r0, #248
	bhi	.LBB0_34
	b	.LBB0_10
.LBB0_10:                               @ %if.then25
	mov	r0, #0
	cmp	r0, r6, lsr #20
	bne	.LBB0_69
	b	.LBB0_11
.LBB0_11:                               @ %do.body29
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_d2f
	str	r0, [sp]
	b	.LBB0_69
.LBB0_12:                               @ %if.else
	mov	r0, r5
	mov	r1, r4
	bl	fabs
	mov	r5, r0
	b	.LBB0_13
.LBB0_13:                               @ %if.else
	ldr	r0, .LCPI0_32
	mov	r4, r1
	cmp	r6, r0
	bhi	.LBB0_20
	b	.LBB0_14
.LCPI0_32:
	.long	1072889855              @ 0x3ff2ffff
.LBB0_14:                               @ %if.then37
	ldr	r0, .LCPI0_34
	cmp	r6, r0
	bhi	.LBB0_27
	b	.LBB0_15
.LCPI0_34:
	.long	1072037887              @ 0x3fe5ffff
.LBB0_15:                               @ %if.then40
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	mov	r3, #1073741824
	b	.LBB0_16
.LBB0_16:                               @ %if.then40
	mov	r11, #0
	bl	__aeabi_dadd
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_17
.LBB0_17:                               @ %if.then40
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_18
.LBB0_18:                               @ %if.then40
	bl	__aeabi_dadd
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #-1342177280
	b	.LBB0_19
.LBB0_19:                               @ %if.then40
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ddiv
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_34
.LBB0_20:                               @ %if.else48
	ldr	r0, .LCPI0_33
	cmp	r6, r0
	bhi	.LBB0_32
	b	.LBB0_21
.LCPI0_33:
	.long	1073971199              @ 0x40037fff
.LBB0_21:                               @ %if.then51
	mov	r3, #66584576
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_22
.LBB0_22:                               @ %if.then51
	orr	r3, r3, #-1140850688
	bl	__aeabi_dadd
	mov	r3, #66584576
	mov	r6, r0
	b	.LBB0_23
.LBB0_23:                               @ %if.then51
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_24
.LBB0_24:                               @ %if.then51
	orr	r3, r3, #1006632960
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB0_25
.LBB0_25:                               @ %if.then51
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_26
.LBB0_26:                               @ %if.then51
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	mov	r5, r0
	mov	r4, r1
	mov	r11, #2
	b	.LBB0_34
.LBB0_27:                               @ %if.else43
	mov	r3, #267386880
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_28
.LBB0_28:                               @ %if.else43
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	mov	r3, #267386880
	mov	r6, r0
	b	.LBB0_29
.LBB0_29:                               @ %if.else43
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_30
.LBB0_30:                               @ %if.else43
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_31
.LBB0_31:                               @ %if.else43
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	mov	r5, r0
	mov	r4, r1
	mov	r11, #1
	b	.LBB0_34
.LBB0_32:                               @ %if.else56
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_33
.LBB0_33:                               @ %if.else56
	orr	r1, r1, #-1342177280
	bl	__aeabi_ddiv
	mov	r5, r0
	mov	r4, r1
	mov	r11, #3
	b	.LBB0_34
.LBB0_34:                               @ %if.end60
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_35
.LBB0_35:                               @ %if.end60
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r9, r1
	mov	r2, r8
	b	.LBB0_36
.LBB0_36:                               @ %if.end60
	mov	r3, r9
                                        @ kill: R0<def> R8<kill>
                                        @ kill: R1<def> R9<kill>
	bl	__aeabi_dmul
	b	.LBB0_37
.LBB0_37:                               @ %if.end60
	ldr	r2, .LCPI0_35
	ldr	r3, .LCPI0_36
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_38
.LCPI0_35:
	.long	3810712081              @ 0xe322da11
.LCPI0_36:
	.long	1066446138              @ 0x3f90ad3a
.LBB0_38:                               @ %if.end60
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_37
	b	.LBB0_39
.LCPI0_37:
	.long	611716587               @ 0x24760deb
.LBB0_39:                               @ %if.end60
	ldr	r3, .LCPI0_38
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_40
.LCPI0_38:
	.long	1068071755              @ 0x3fa97b4b
.LBB0_40:                               @ %if.end60
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_39
	b	.LBB0_41
.LCPI0_39:
	.long	2698001745              @ 0xa0d03d51
.LBB0_41:                               @ %if.end60
	ldr	r3, .LCPI0_40
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_42
.LCPI0_40:
	.long	1068567910              @ 0x3fb10d66
.LBB0_42:                               @ %if.end60
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_41
	b	.LBB0_43
.LCPI0_41:
	.long	3310100590              @ 0xc54c206e
.LBB0_43:                               @ %if.end60
	ldr	r3, .LCPI0_42
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_44
.LCPI0_42:
	.long	1068975565              @ 0x3fb745cd
.LBB0_44:                               @ %if.end60
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_43
	b	.LBB0_45
.LCPI0_43:
	.long	2449507327              @ 0x920083ff
.LBB0_45:                               @ %if.end60
	ldr	r3, .LCPI0_44
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_46
.LCPI0_44:
	.long	1069697316              @ 0x3fc24924
.LBB0_46:                               @ %if.end60
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_45
	b	.LBB0_47
.LCPI0_45:
	.long	1431655693              @ 0x5555550d
.LBB0_47:                               @ %if.end60
	ldr	r3, .LCPI0_46
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_48
.LCPI0_46:
	.long	1070945621              @ 0x3fd55555
.LBB0_48:                               @ %if.end60
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_47
	b	.LBB0_49
.LCPI0_47:
	.long	745172015               @ 0x2c6a6c2f
.LBB0_49:                               @ %if.end60
	ldr	r3, .LCPI0_48
	mov	r9, r0
	mov	r8, r1
	mov	r0, r6
	b	.LBB0_50
.LCPI0_48:
	.long	3215111236              @ 0xbfa2b444
.LBB0_50:                               @ %if.end60
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_49
	ldr	r3, .LCPI0_50
	b	.LBB0_51
.LCPI0_49:
	.long	1390345626              @ 0x52defd9a
.LCPI0_50:
	.long	3215842861              @ 0xbfadde2d
.LBB0_51:                               @ %if.end60
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_52
.LBB0_52:                               @ %if.end60
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_51
	ldr	r3, .LCPI0_52
	b	.LBB0_53
.LCPI0_51:
	.long	2943654509              @ 0xaf749a6d
.LCPI0_52:
	.long	3216224498              @ 0xbfb3b0f2
.LBB0_53:                               @ %if.end60
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_54
.LBB0_54:                               @ %if.end60
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_53
	ldr	r3, .LCPI0_54
	b	.LBB0_55
.LCPI0_53:
	.long	4263712369              @ 0xfe231671
.LCPI0_54:
	.long	3216798150              @ 0xbfbc71c6
.LBB0_55:                               @ %if.end60
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_56
.LBB0_56:                               @ %if.end60
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_55
	ldr	r3, .LCPI0_56
	b	.LBB0_57
.LCPI0_55:
	.long	2576935876              @ 0x9998ebc4
.LCPI0_56:
	.long	3217660313              @ 0xbfc99999
.LBB0_57:                               @ %if.end60
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_58
.LBB0_58:                               @ %if.end60
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r9
	mov	r3, r8
	cmp	r11, #0
	blt	.LBB0_66
	b	.LBB0_59
.LBB0_59:                               @ %if.end89
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_60
.LBB0_60:                               @ %if.end89
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r3, .LCPI0_57
	ldr	r2, [r3, r11, lsl #3]!
	b	.LBB0_61
.LCPI0_57:
	.long	atanlo
.LBB0_61:                               @ %if.end89
	ldr	r3, [r3, #4]
	bl	__aeabi_dsub
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_62
.LBB0_62:                               @ %if.end89
	bl	__aeabi_dsub
	mov	r3, r1
	ldr	r1, .LCPI0_58
	mov	r2, r0
	b	.LBB0_63
.LCPI0_58:
	.long	atanhi
.LBB0_63:                               @ %if.end89
	ldr	r0, [r1, r11, lsl #3]!
	ldr	r1, [r1, #4]
	bl	__aeabi_dsub
	mov	r6, r0
	b	.LBB0_64
.LBB0_64:                               @ %if.end89
	mov	r7, r1
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r6
	b	.LBB0_65
.LBB0_65:                               @ %if.end89
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r5, r0
	cmp	r10, #0
	mov	r4, r1
	moveq	r4, r7
	moveq	r5, r6
	b	.LBB0_69
.LBB0_66:                               @ %if.then85
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_67
.LBB0_67:                               @ %if.then85
	mov	r1, r4
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_68
.LBB0_68:                               @ %if.then85
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_69
.LBB0_69:                               @ %return
	mov	r0, r5
	mov	r1, r4
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	atan, .Ltmp0-atan
	.cantunwind
	.fnend

	.type	atanhi,%object          @ @atanhi
	.section	.rodata,"a",%progbits
	.align	3
atanhi:
	.long	90291023                @ double 4.636476e-01
	.long	1071492199
	.long	1413754136              @ double 7.853982e-01
	.long	1072243195
	.long	3531732635              @ double 9.827937e-01
	.long	1072657163
	.long	1413754136              @ double 1.570796e+00
	.long	1073291771
	.size	atanhi, 32

	.type	atanlo,%object          @ @atanlo
	.align	3
atanlo:
	.long	573531618               @ double 2.269878e-17
	.long	1014639487
	.long	856972295               @ double 3.061617e-17
	.long	1015129638
	.long	2062601149              @ double 1.390331e-17
	.long	1013974920
	.long	856972295               @ double 6.123234e-17
	.long	1016178214
	.size	atanlo, 32


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
