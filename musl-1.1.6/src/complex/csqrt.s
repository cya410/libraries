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
	.file	"src/complex/csqrt.bc"
	.globl	csqrt
	.align	2
	.type	csqrt,%function
csqrt:                                  @ @csqrt
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#52
	sub	sp, sp, #52
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r3
	mov	r4, r2
	mov	r8, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r2, #0
	mov	r3, #0
	mov	r0, r4
	mov	r1, r9
	b	.LBB0_5
.LBB0_5:                                @ %entry
	bl	__aeabi_dcmpeq
	ldr	r10, [sp, #88]
	ldr	r6, [sp, #92]
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %entry
	mov	r0, r10
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_7
.LBB0_7:                                @ %entry
	mov	r7, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %if.then
	mov	r0, r8
	str	r7, [r8]
	str	r7, [r8, #4]
	mov	r5, #0
	str	r10, [r0, #8]!
	str	r6, [r0, #4]
	b	.LBB0_20
.LBB0_9:                                @ %cond.true13
	mov	r5, #267386880
	bic	r0, r6, #-2147483648
	orr	r5, r5, #1879048192
	eor	r0, r0, r5
	orrs	r0, r10, r0
	bne	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               @ %if.then22
	mov	r7, #0
	b	.LBB0_11
.LBB0_11:                               @ %if.end155
	mov	r0, r8
	str	r7, [r8]
	str	r5, [r8, #4]
	str	r10, [r0, #8]!
	str	r6, [r0, #4]
	b	.LBB0_20
.LBB0_12:                               @ %cond.true38
	bic	r0, r9, #-2147483648
	mov	r2, #0
	mov	r1, #0
	cmp	r0, r5
	b	.LBB0_13
.LBB0_13:                               @ %cond.true38
	movlo	r2, #1
	cmp	r4, #0
	moveq	r1, #1
	cmp	r0, r5
	movne	r1, r2
	cmp	r1, #0
	bne	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               @ %if.then47
	mov	r0, r10
	mov	r1, r6
	mov	r2, r10
	mov	r3, r6
	b	.LBB0_15
.LBB0_15:                               @ %if.then47
	stm	r8, {r4, r9}
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_ddiv
	mov	r10, r0
	mov	r6, r1
	b	.LBB0_19
.LBB0_16:                               @ %cond.true64
	eor	r0, r0, r5
	orrs	r0, r4, r0
	bne	.LBB0_21
	b	.LBB0_17
.LBB0_17:                               @ %cond.true78
	mov	r0, r10
	mov	r1, r6
	mov	r2, r10
	mov	r3, r6
	bl	__aeabi_dsub
	cmp	r9, #0
	blt	.LBB0_69
	b	.LBB0_18
.LBB0_18:                               @ %if.else
	mov	r2, r10
	mov	r3, r6
	bl	copysign
	mov	r10, r0
	mov	r6, r1
	stm	r8, {r4, r9}
	b	.LBB0_19
.LBB0_19:                               @ %return
	mov	r0, r8
	mov	r7, r4
	mov	r5, r9
	str	r10, [r0, #8]!
	str	r6, [r0, #4]
	b	.LBB0_20
.LBB0_20:                               @ %return
	str	r7, [r8]
	str	r5, [r8, #4]
	str	r10, [r0]
	str	r6, [r0, #4]
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_21:                               @ %if.end106
	mov	r0, r4
	mov	r1, r9
	bl	fabs
	ldr	r2, .LCPI0_2
	b	.LBB0_22
.LCPI0_2:
	.long	2583490354              @ 0x99fcef32
.LBB0_22:                               @ %if.end106
	ldr	r3, .LCPI0_4
	bl	__aeabi_dcmpge
	cmp	r0, #0
	bne	.LBB0_29
	b	.LBB0_23
.LCPI0_4:
	.long	2145026681              @ 0x7fda8279
.LBB0_23:                               @ %lor.lhs.false
	mov	r0, r10
	mov	r1, r6
	bl	fabs
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB0_24
.LBB0_24:                               @ %lor.lhs.false
	ldr	r5, .LCPI0_3
	ldr	r7, .LCPI0_5
	mov	r11, r0
                                        @ kill: R0<def> R11<kill>
	b	.LBB0_25
.LCPI0_3:
	.long	2583490354              @ 0x99fcef32
.LCPI0_5:
	.long	2145026681              @ 0x7fda8279
.LBB0_25:                               @ %lor.lhs.false
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dcmplt
	ldr	r1, [sp, #24]           @ 4-byte Reload
	b	.LBB0_26
.LBB0_26:                               @ %lor.lhs.false
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r11
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_27
.LBB0_27:                               @ %lor.lhs.false
	bl	__aeabi_dcmpun
	ldr	r1, [sp, #28]           @ 4-byte Reload
	orrs	r0, r0, r1
	beq	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	mov	r0, #0
	b	.LBB0_33
.LBB0_29:                               @ %if.then113
	mov	r5, #265289728
	mov	r0, r4
	mov	r1, r9
	mov	r2, #0
	b	.LBB0_30
.LBB0_30:                               @ %if.then113
	orr	r5, r5, #805306368
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r4, r0
	b	.LBB0_31
.LBB0_31:                               @ %if.then113
	mov	r9, r1
	mov	r0, r10
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_32
.LBB0_32:                               @ %if.then113
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r10, r0
	mov	r6, r1
	mov	r0, #1
	b	.LBB0_33
.LBB0_33:                               @ %if.end116
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r4
	mov	r1, r9
	mov	r2, r10
	b	.LBB0_34
.LBB0_34:                               @ %if.end116
	mov	r3, r6
	bl	hypot
	mov	r7, r0
	mov	r11, r1
	b	.LBB0_35
.LBB0_35:                               @ %if.end116
	mov	r0, r4
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_36
.LBB0_36:                               @ %if.end116
	bl	__aeabi_dcmplt
	mov	r5, r0
	mov	r0, r4
	mov	r1, r9
	b	.LBB0_37
.LBB0_37:                               @ %if.end116
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpun
	orrs	r0, r0, r5
	beq	.LBB0_46
	b	.LBB0_38
.LBB0_38:                               @ %if.else132
	mov	r0, r7
	mov	r1, r11
	mov	r2, r4
	mov	r3, r9
	b	.LBB0_39
.LBB0_39:                               @ %if.else132
	bl	__aeabi_dsub
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_40
.LBB0_40:                               @ %if.else132
	bl	__aeabi_dmul
	bl	sqrt
	mov	r5, r0
	mov	r7, r1
	b	.LBB0_41
.LBB0_41:                               @ %if.else132
	mov	r2, r5
	mov	r3, r7
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB0_42
.LBB0_42:                               @ %if.else132
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r9, r1
	mov	r0, r10
	b	.LBB0_43
.LBB0_43:                               @ %if.else132
	mov	r1, r6
	bl	fabs
	mov	r2, r4
	mov	r3, r9
	b	.LBB0_44
.LBB0_44:                               @ %if.else132
	bl	__aeabi_ddiv
	mov	r4, r0
	mov	r9, r1
	mov	r0, r5
	b	.LBB0_45
.LBB0_45:                               @ %if.else132
	mov	r1, r7
	mov	r2, r10
	mov	r3, r6
	bl	copysign
	b	.LBB0_51
.LBB0_46:                               @ %if.then119
	mov	r0, r4
	mov	r1, r9
	mov	r2, r7
	mov	r3, r11
	b	.LBB0_47
.LBB0_47:                               @ %if.then119
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_48
.LBB0_48:                               @ %if.then119
	bl	__aeabi_dmul
	bl	sqrt
	mov	r4, r0
	mov	r9, r1
	b	.LBB0_49
.LBB0_49:                               @ %if.then119
	mov	r2, r4
	mov	r3, r9
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R9<kill>
	b	.LBB0_50
.LBB0_50:                               @ %if.then119
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_ddiv
	b	.LBB0_51
.LBB0_51:                               @ %if.end149
	mov	r6, r0
	ldr	r0, [sp, #28]           @ 4-byte Reload
	mov	r11, r1
	cmp	r0, #0
	beq	.LBB0_71
	b	.LBB0_52
.LBB0_52:                               @ %if.then151
	mov	r0, r4
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_53
.LBB0_53:                               @ %if.then151
	bl	__aeabi_dmul
	mov	r7, r4
	mov	r4, r11
	mov	r5, r0
	b	.LBB0_54
.LBB0_54:                               @ %if.then151
	mov	r10, r1
	mov	r0, r6
	mov	r2, r6
	mov	r1, r4
	b	.LBB0_55
.LBB0_55:                               @ %if.then151
	mov	r3, r4
	str	r7, [sp, #24]           @ 4-byte Spill
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_56
.LBB0_56:                               @ %if.then151
	mov	r3, r1
	mov	r0, r5
	mov	r1, r10
	bl	__aeabi_dadd
	b	.LBB0_57
.LBB0_57:                               @ %if.then151
	mov	r11, r6
	mov	r10, r0
	mov	r6, r1
	mov	r0, r7
	b	.LBB0_58
.LBB0_58:                               @ %if.then151
	mov	r1, r9
	mov	r2, r7
	mov	r3, r9
	bl	__aeabi_dadd
	b	.LBB0_59
.LBB0_59:                               @ %if.then151
	mov	r5, r0
	mov	r7, r1
	mov	r0, r11
	mov	r1, r4
	b	.LBB0_60
.LBB0_60:                               @ %if.then151
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_61
.LBB0_61:                               @ %if.then151
	mov	r3, r1
	mov	r0, r5
	mov	r1, r7
	bl	__aeabi_dsub
	b	.LBB0_62
.LBB0_62:                               @ %if.then151
	mov	r7, r0
	mov	r5, r1
	mov	r2, r7
	mov	r3, r5
	b	.LBB0_63
.LBB0_63:                               @ %if.then151
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dcmpun
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_64
.LBB0_64:                               @ %if.then151
	mov	r0, r10
	mov	r1, r6
	mov	r2, r10
	mov	r3, r6
	bl	__aeabi_dcmpun
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_65
.LBB0_65:                               @ %complex_mul_libcall
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r0, #0
	mov	r1, #1073741824
	str	r11, [sp]
	b	.LBB0_66
.LBB0_66:                               @ %complex_mul_libcall
	str	r4, [sp, #4]
	mov	r3, r9
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	b	.LBB0_67
.LBB0_67:                               @ %complex_mul_libcall
	str	r0, [sp, #16]
	str	r0, [sp, #20]
	add	r0, sp, #32
	bl	__muldc3
	b	.LBB0_68
.LBB0_68:                               @ %complex_mul_libcall
	ldr	r7, [sp, #32]
	ldr	r5, [sp, #36]
	ldr	r10, [sp, #40]
	ldr	r6, [sp, #44]
	b	.LBB0_11
.LBB0_69:                               @ %if.then86
	bl	fabs
	mov	r7, r0
	mov	r5, r1
	mov	r0, r4
	b	.LBB0_70
.LBB0_70:                               @ %if.then86
	mov	r1, r9
	mov	r2, r10
	mov	r3, r6
	bl	copysign
	mov	r10, r0
	mov	r6, r1
	b	.LBB0_11
.LBB0_71:
	mov	r10, r6
	mov	r7, r4
	mov	r5, r9
	mov	r6, r11
	b	.LBB0_11
.Ltmp0:
	.size	csqrt, .Ltmp0-csqrt
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
