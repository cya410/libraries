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
	.file	"src/complex/csinh.bc"
	.globl	csinh
	.align	2
	.type	csinh,%function
csinh:                                  @ @csinh
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#36
	sub	sp, sp, #36
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r2
	ldr	r2, .LCPI0_5
	mov	r7, r3
	b	.LBB0_4
.LCPI0_5:
	.long	2146435071              @ 0x7fefffff
.LBB0_4:                                @ %entry
	mov	r8, r0
	ldr	r6, [sp, #76]
	ldr	r5, [sp, #72]
	bic	r0, r7, #-2147483648
	b	.LBB0_5
.LBB0_5:                                @ %entry
	cmp	r0, r2
	bic	r1, r6, #-2147483648
	ldrls	r2, .LCPI0_6
	cmpls	r1, r2
	bhi	.LBB0_44
	b	.LBB0_6
.LCPI0_6:
	.long	2146435071              @ 0x7fefffff
.LBB0_6:                                @ %if.then
	orrs	r1, r1, r5
	beq	.LBB0_15
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	ldr	r1, .LCPI0_10
	cmp	r0, r1
	bhi	.LBB0_16
	b	.LBB0_8
.LCPI0_10:
	.long	1077280767              @ 0x4035ffff
.LBB0_8:                                @ %if.then28
	mov	r0, r4
	mov	r1, r7
	bl	sinh
	mov	r9, r0
	b	.LBB0_9
.LBB0_9:                                @ %if.then28
	mov	r10, r1
	mov	r0, r5
	mov	r1, r6
	bl	cos
	b	.LBB0_10
.LBB0_10:                               @ %if.then28
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r10
	b	.LBB0_11
.LBB0_11:                               @ %if.then28
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r10, r1
	mov	r0, r4
	b	.LBB0_12
.LBB0_12:                               @ %if.then28
	mov	r1, r7
	bl	cosh
	mov	r4, r0
	mov	r7, r1
	b	.LBB0_13
.LBB0_13:                               @ %if.then28
	mov	r0, r5
	mov	r1, r6
	bl	sin
	mov	r2, r0
	mov	r3, r1
	stm	r8, {r9, r10}
	b	.LBB0_14
.LBB0_14:                               @ %return
	mov	r0, r4
	mov	r1, r7
	b	.LBB0_41
.LBB0_15:                               @ %if.then20
	mov	r0, r4
	mov	r1, r7
	bl	sinh
	b	.LBB0_32
.LBB0_16:                               @ %if.end41
	ldr	r1, .LCPI0_11
	cmp	r0, r1
	bhi	.LBB0_25
	b	.LBB0_17
.LCPI0_11:
	.long	1082535489              @ 0x40862e41
.LBB0_17:                               @ %if.then44
	mov	r0, r4
	mov	r1, r7
	bl	fabs
	bl	exp
	b	.LBB0_18
.LBB0_18:                               @ %if.then44
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	b	.LBB0_19
.LBB0_19:                               @ %if.then44
	mov	r11, r0
	mov	r2, r4
	mov	r3, r7
	str	r1, [sp, #12]           @ 4-byte Spill
	b	.LBB0_20
.LBB0_20:                               @ %if.then44
                                        @ kill: R0<def> R11<kill>
	bl	copysign
	mov	r4, r0
	mov	r7, r1
	b	.LBB0_21
.LBB0_21:                               @ %if.then44
	mov	r0, r5
	mov	r1, r6
	bl	cos
	mov	r2, r0
	b	.LBB0_22
.LBB0_22:                               @ %if.then44
	mov	r3, r1
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_23
.LBB0_23:                               @ %if.then44
	mov	r9, r0
	mov	r10, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_24
.LBB0_24:                               @ %if.then44
	bl	sin
	stm	r8, {r9, r10}
	mov	r3, r1
	mov	r2, r0
	mov	r0, r11
	ldr	r1, [sp, #12]           @ 4-byte Reload
	b	.LBB0_41
.LBB0_25:                               @ %if.else
	ldr	r1, .LCPI0_12
	cmp	r0, r1
	bhi	.LBB0_33
	b	.LBB0_26
.LCPI0_12:
	.long	1083620265              @ 0x4096bba9
.LBB0_26:                               @ %if.then62
	mov	r0, r4
	mov	r1, r7
	bl	fabs
	mov	r2, r0
	b	.LBB0_27
.LBB0_27:                               @ %if.then62
	mvn	r0, #0
	stm	sp, {r5, r6}
	mov	r3, r1
	str	r0, [sp, #8]
	b	.LBB0_28
.LBB0_28:                               @ %if.then62
	add	r0, sp, #16
	bl	__ldexp_cexp
	ldr	r9, [sp, #16]
	ldr	r10, [sp, #20]
	b	.LBB0_29
.LBB0_29:                               @ %if.then62
	ldr	r5, [sp, #24]
	ldr	r6, [sp, #28]
	mov	r1, #267386880
	mov	r0, #0
	b	.LBB0_30
.LBB0_30:                               @ %if.then62
	mov	r2, r4
	mov	r3, r7
	orr	r1, r1, #805306368
	bl	copysign
	b	.LBB0_31
.LBB0_31:                               @ %if.then62
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_dmul
	b	.LBB0_32
.LBB0_32:                               @ %return
	mov	r9, r0
	mov	r10, r1
	stm	r8, {r9, r10}
	b	.LBB0_42
.LBB0_33:                               @ %if.else94
	mov	r3, #266338304
	mov	r0, r4
	mov	r1, r7
	mov	r2, #0
	b	.LBB0_34
.LBB0_34:                               @ %if.else94
	orr	r3, r3, #1879048192
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r7, r1
	b	.LBB0_35
.LBB0_35:                               @ %if.else94
	mov	r0, r5
	mov	r1, r6
	bl	cos
	mov	r2, r0
	b	.LBB0_36
.LBB0_36:                               @ %if.else94
	mov	r3, r1
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_37
.LBB0_37:                               @ %if.else94
	mov	r9, r0
	mov	r10, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_38
.LBB0_38:                               @ %if.else94
	bl	sin
	mov	r5, r0
	mov	r6, r1
	mov	r0, r4
	b	.LBB0_39
.LBB0_39:                               @ %if.else94
	mov	r1, r7
	mov	r2, r4
	mov	r3, r7
	stm	r8, {r9, r10}
	bl	__aeabi_dmul
	b	.LBB0_40
.LBB0_40:                               @ %return
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_41
.LBB0_41:                               @ %return
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_42
.LBB0_42:                               @ %return
	mov	r0, r8
	str	r5, [r0, #8]!
	str	r6, [r0, #4]
	b	.LBB0_43
.LBB0_43:                               @ %return
	stm	r8, {r9, r10}
	stm	r0, {r5, r6}
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_44:                               @ %if.end108
	mov	r2, #267386880
	orr	r2, r2, #1879048192
	cmp	r1, r2
	blo	.LBB0_50
	b	.LBB0_45
.LBB0_45:                               @ %if.end108
	orrs	r3, r0, r4
	bne	.LBB0_50
	b	.LBB0_46
.LBB0_46:                               @ %if.then115
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_47
.LBB0_47:                               @ %if.then115
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r6, r1
	mov	r0, r4
	b	.LBB0_48
.LBB0_48:                               @ %if.then115
	mov	r1, r7
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	b	.LBB0_49
.LBB0_49:                               @ %if.then115
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #0
	bl	copysign
	b	.LBB0_32
.LBB0_50:                               @ %if.end126
	cmp	r0, r2
	blo	.LBB0_55
	b	.LBB0_51
.LBB0_51:                               @ %if.end126
	orrs	r3, r1, r5
	bne	.LBB0_55
	b	.LBB0_52
.LBB0_52:                               @ %if.then133
	ldr	r0, .LCPI0_8
	and	r0, r7, r0
	orrs	r0, r0, r4
	beq	.LBB0_54
	b	.LBB0_53
.LCPI0_8:
	.long	1048575                 @ 0xfffff
.LBB0_53:                               @ %if.end146
	mov	r0, #0
	mov	r1, #0
	mov	r2, r5
	mov	r3, r6
	bl	copysign
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_54
.LBB0_54:                               @ %if.then138
	mov	r0, r8
	stm	r8, {r4, r7}
	mov	r9, r4
	mov	r10, r7
	str	r5, [r0, #8]!
	str	r6, [r0, #4]
	b	.LBB0_43
.LBB0_55:                               @ %if.end155
	ldr	r3, .LCPI0_7
	cmp	r0, r3
	bhi	.LBB0_60
	b	.LBB0_56
.LCPI0_7:
	.long	2146435071              @ 0x7fefffff
.LBB0_56:                               @ %if.end155
	cmp	r1, r2
	blo	.LBB0_60
	b	.LBB0_57
.LBB0_57:                               @ %if.then161
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_58
.LBB0_58:                               @ %if.then161
	bl	__aeabi_dsub
	mov	r9, r0
	mov	r10, r1
	mov	r0, r4
	b	.LBB0_59
.LBB0_59:                               @ %if.then161
	mov	r1, r7
	stm	r8, {r9, r10}
	mov	r2, r9
	mov	r3, r10
	b	.LBB0_41
.LBB0_60:                               @ %if.end172
	cmp	r0, r2
	blo	.LBB0_62
	b	.LBB0_61
.LBB0_61:                               @ %land.lhs.true175
	ldr	r0, .LCPI0_9
	and	r0, r7, r0
	orrs	r0, r0, r4
	beq	.LBB0_68
	b	.LBB0_62
.LCPI0_9:
	.long	1048575                 @ 0xfffff
.LBB0_62:                               @ %if.end206
	mov	r0, r4
	mov	r1, r7
	mov	r2, r4
	mov	r3, r7
	b	.LBB0_63
.LBB0_63:                               @ %if.end206
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r10, r1
	mov	r0, r5
	b	.LBB0_64
.LBB0_64:                               @ %if.end206
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dsub
	b	.LBB0_65
.LBB0_65:                               @ %if.end206
	mov	r5, r0
	mov	r6, r1
	mov	r0, r9
	mov	r1, r10
	b	.LBB0_66
.LBB0_66:                               @ %if.end206
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r9, r0
	b	.LBB0_67
.LBB0_67:                               @ %if.end206
	mov	r10, r1
	mov	r0, r4
	mov	r1, r7
	mov	r2, r4
	mov	r3, r7
	stm	r8, {r9, r10}
	bl	__aeabi_dadd
	b	.LBB0_40
.LBB0_68:                               @ %if.then180
	cmp	r1, r2
	blo	.LBB0_72
	b	.LBB0_69
.LBB0_69:                               @ %if.then183
	mov	r0, r4
	mov	r1, r7
	mov	r2, r4
	mov	r3, r7
	b	.LBB0_70
.LBB0_70:                               @ %if.then183
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r10, r1
	mov	r0, r5
	b	.LBB0_71
.LBB0_71:                               @ %if.then183
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	stm	r8, {r9, r10}
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_14
.LBB0_72:                               @ %if.end194
	mov	r0, r5
	mov	r1, r6
	bl	cos
	mov	r2, r0
	b	.LBB0_73
.LBB0_73:                               @ %if.end194
	mov	r3, r1
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_74
.LBB0_74:                               @ %if.end194
	mov	r9, r0
	mov	r10, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_75
.LBB0_75:                               @ %if.end194
	bl	sin
	mov	r3, #267386880
	stm	r8, {r9, r10}
	mov	r2, #0
	orr	r3, r3, #1879048192
	b	.LBB0_41
.Ltmp0:
	.size	csinh, .Ltmp0-csinh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
