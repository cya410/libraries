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
	.file	"src/complex/csqrtf.bc"
	.globl	csqrtf
	.align	2
	.type	csqrtf,%function
csqrtf:                                 @ @csqrtf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r7, r1
	mov	r4, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r1, #0
	mov	r5, r2
	mov	r0, r7
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r0, r5
	mov	r1, #0
	mov	r6, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.LBB0_36
	b	.LBB0_5
.LBB0_5:                                @ %cond.true
	mov	r6, #1065353216
	bic	r0, r5, #-2147483648
	orr	r6, r6, #1073741824
	cmp	r0, r6
	beq	.LBB0_36
	b	.LBB0_6
.LBB0_6:                                @ %cond.true31
	ldr	r1, .LCPI0_0
	bic	r0, r7, #-2147483648
	cmp	r0, r1
	blo	.LBB0_8
	b	.LBB0_7
.LCPI0_0:
	.long	2139095041              @ 0x7f800001
.LBB0_7:                                @ %if.then48
	mov	r0, r5
	mov	r1, r5
	str	r7, [r4]
	bl	__aeabi_fsub
	mov	r1, r0
	bl	__aeabi_fdiv
	mov	r5, r0
	b	.LBB0_11
.LBB0_8:                                @ %cond.true60
	cmp	r0, r6
	bne	.LBB0_12
	b	.LBB0_9
.LBB0_9:                                @ %cond.true78
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fsub
	cmp	r7, #0
	blt	.LBB0_34
	b	.LBB0_10
.LBB0_10:                               @ %if.else
	mov	r1, r5
	bl	copysignf
	mov	r5, r0
	str	r7, [r4]
	b	.LBB0_11
.LBB0_11:                               @ %return
	mov	r0, r4
	mov	r6, r7
	str	r5, [r0, #4]!
	b	.LBB0_38
.LBB0_12:                               @ %if.end111
	mov	r0, r7
	mov	r1, #0
	bl	__aeabi_fcmplt
	mov	r6, r0
	b	.LBB0_13
.LBB0_13:                               @ %if.end111
	mov	r0, r7
	mov	r1, #0
	bl	__aeabi_fcmpun
	orrs	r0, r0, r6
	beq	.LBB0_24
	b	.LBB0_14
.LBB0_14:                               @ %if.else132
	mov	r0, r7
	bl	__aeabi_f2d
	mov	r6, r0
	mov	r0, r5
	b	.LBB0_15
.LBB0_15:                               @ %if.else132
	mov	r7, r1
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_16
.LBB0_16:                               @ %if.else132
	mov	r0, r6
	mov	r1, r7
	bl	hypot
	mov	r2, r6
	b	.LBB0_17
.LBB0_17:                               @ %if.else132
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r3, #266338304
	mov	r2, #0
	b	.LBB0_18
.LBB0_18:                               @ %if.else132
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	bl	sqrt
	mov	r7, r0
	b	.LBB0_19
.LBB0_19:                               @ %if.else132
	mov	r0, r5
	mov	r8, r1
	bl	fabsf
	bl	__aeabi_f2d
	b	.LBB0_20
.LBB0_20:                               @ %if.else132
	mov	r6, r0
	mov	r9, r1
	mov	r0, r7
	mov	r1, r8
	b	.LBB0_21
.LBB0_21:                               @ %if.else132
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_22
.LBB0_22:                               @ %if.else132
	mov	r3, r1
	mov	r0, r6
	mov	r1, r9
	bl	__aeabi_ddiv
	b	.LBB0_23
.LBB0_23:                               @ %if.else132
	bl	__aeabi_d2f
	mov	r6, r0
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_d2f
	b	.LBB0_35
.LBB0_24:                               @ %if.then114
	mov	r0, r7
	bl	__aeabi_f2d
	mov	r6, r0
	mov	r0, r5
	b	.LBB0_25
.LBB0_25:                               @ %if.then114
	mov	r7, r1
	bl	__aeabi_f2d
	mov	r9, r0
	mov	r8, r1
	b	.LBB0_26
.LBB0_26:                               @ %if.then114
	mov	r0, r6
	mov	r1, r7
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_27
.LBB0_27:                               @ %if.then114
	bl	hypot
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_28
.LBB0_28:                               @ %if.then114
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r2, #0
	b	.LBB0_29
.LBB0_29:                               @ %if.then114
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	bl	sqrt
	mov	r7, r0
	b	.LBB0_30
.LBB0_30:                               @ %if.then114
	mov	r5, r1
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_d2f
	b	.LBB0_31
.LBB0_31:                               @ %if.then114
	mov	r6, r0
	mov	r0, r7
	mov	r1, r5
	mov	r2, r7
	b	.LBB0_32
.LBB0_32:                               @ %if.then114
	mov	r3, r5
	str	r6, [r4]
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_33
.LBB0_33:                               @ %if.then114
	mov	r3, r1
	mov	r0, r9
	mov	r1, r8
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	mov	r5, r0
	b	.LBB0_37
.LBB0_34:                               @ %if.then91
	bl	fabsf
	mov	r6, r0
	mov	r0, r7
	b	.LBB0_35
.LBB0_35:                               @ %return
	mov	r1, r5
	bl	copysignf
	mov	r5, r0
	b	.LBB0_36
.LBB0_36:                               @ %return
	str	r6, [r4]
	b	.LBB0_37
.LBB0_37:                               @ %return
	mov	r0, r4
	str	r5, [r0, #4]!
	b	.LBB0_38
.LBB0_38:                               @ %return
	str	r6, [r4]
	str	r5, [r0]
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	csqrtf, .Ltmp0-csqrtf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
