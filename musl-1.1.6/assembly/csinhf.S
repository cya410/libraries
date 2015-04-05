.section csinhf_text
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
	.file	"src/complex/csinhf.bc"
	.globl	csinhf
	.align	2
	.type	csinhf,%function
.section bb0_0
csinhf:                                 @ @csinhf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r6, r1
	mov	r5, r2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	bic	r2, r6, #-2147483648
	bic	r0, r5, #-2147483648
	lsr	r1, r2, #23
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	cmp	r1, #254
	lsrls	r3, r0, #23
	cmpls	r3, #254
	bhi	.LBB0_32
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, .LCPI0_6
	cmp	r2, r0
	bhi	.LBB0_13
	b	.LBB0_7
.LCPI0_6:
	.long	1091567615              @ 0x410fffff
.section bb0_7
.LBB0_7:                                @ %if.then18
	mov	r0, r6
	bl	sinhf
	mov	r7, r0
	mov	r0, r5
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then18
	bl	cosf
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then18
	mov	r7, r0
	mov	r0, r6
	bl	coshf
	mov	r6, r0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then18
	mov	r0, r5
	bl	sinf
	mov	r1, r0
	str	r7, [r4]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	mov	r0, r6
	b	.LBB0_29
.section bb0_12
.LBB0_12:                               @ %if.then11
	mov	r0, r6
	bl	sinhf
	b	.LBB0_23
.section bb0_13
.LBB0_13:                               @ %if.end31
	ldr	r0, .LCPI0_7
	cmp	r2, r0
	bhi	.LBB0_19
	b	.LBB0_14
.LCPI0_7:
	.long	1118925335              @ 0x42b17217
.section bb0_14
.LBB0_14:                               @ %if.then33
	mov	r0, r6
	bl	fabsf
	bl	expf
	mov	r1, #1056964608
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then33
	bl	__aeabi_fmul
	mov	r8, r0
	mov	r1, r6
                                        @ kill: R0<def> R8<kill>
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then33
	bl	copysignf
	mov	r6, r0
	mov	r0, r5
	bl	cosf
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then33
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then33
	mov	r0, r5
	bl	sinf
	mov	r1, r0
	str	r7, [r4]
	mov	r0, r8
	b	.LBB0_29
.section bb0_19
.LBB0_19:                               @ %if.else
	ldr	r0, .LCPI0_8
	cmp	r2, r0
	bhi	.LBB0_24
	b	.LBB0_20
.LCPI0_8:
	.long	1128313318              @ 0x4340b1e6
.section bb0_20
.LBB0_20:                               @ %if.then50
	mov	r0, r6
	bl	fabsf
	mov	r1, r0
	mov	r0, sp
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then50
	mov	r2, r5
	mvn	r3, #0
	bl	__ldexp_cexpf
	ldr	r7, [sp]
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then50
	ldr	r5, [sp, #4]
	mov	r0, #1065353216
	mov	r1, r6
	bl	copysignf
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %return
	mov	r7, r0
	str	r7, [r4]
	b	.LBB0_30
.section bb0_24
.LBB0_24:                               @ %if.else82
	mov	r0, r6
	mov	r1, #2130706432
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.else82
	mov	r0, r5
	bl	cosf
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.else82
	bl	__aeabi_fmul
	mov	r7, r0
	mov	r0, r5
	bl	sinf
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.else82
	mov	r5, r0
	mov	r0, r6
	mov	r1, r6
	str	r7, [r4]
	bl	__aeabi_fmul
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %return
	mov	r1, r5
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %return
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %return
	mov	r0, r4
	str	r5, [r0, #4]!
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %return
	str	r7, [r4]
	str	r5, [r0]
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_32
.LBB0_32:                               @ %if.end96
	cmp	r2, #0
	bne	.LBB0_36
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end96
	lsr	r2, r0, #23
	cmp	r2, #255
	blo	.LBB0_36
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.then100
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.then100
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #0
	bl	copysignf
	b	.LBB0_23
.section bb0_36
.LBB0_36:                               @ %if.end111
	cmp	r0, #0
	bne	.LBB0_41
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end111
	cmp	r1, #255
	blo	.LBB0_41
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.then115
	ldr	r0, .LCPI0_4
	tst	r6, r0
	beq	.LBB0_40
	b	.LBB0_39
.LCPI0_4:
	.long	8388607                 @ 0x7fffff
.section bb0_39
.LBB0_39:                               @ %if.end126
	mov	r0, #0
	mov	r1, r5
	bl	copysignf
	mov	r5, r0
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.then118
	mov	r0, r4
	str	r6, [r4]
	mov	r7, r6
	str	r5, [r0, #4]!
	b	.LBB0_31
.section bb0_41
.LBB0_41:                               @ %if.end135
	cmp	r1, #254
	bhi	.LBB0_44
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end135
	lsr	r2, r0, #23
	cmp	r2, #255
	blo	.LBB0_44
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.then139
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r7, r0
	mov	r0, r6
	str	r7, [r4]
	mov	r1, r7
	b	.LBB0_29
.section bb0_44
.LBB0_44:                               @ %if.end150
	ldr	r2, .LCPI0_5
	cmp	r1, #255
	blo	.LBB0_49
	b	.LBB0_45
.LCPI0_5:
	.long	8388607                 @ 0x7fffff
.section bb0_45
.LBB0_45:                               @ %if.end150
	ands	r1, r6, r2
	bne	.LBB0_49
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.then155
	lsr	r0, r0, #23
	cmp	r0, #255
	blo	.LBB0_53
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.then157
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %if.then157
	mov	r0, r5
	mov	r1, r5
	str	r7, [r4]
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_11
.section bb0_49
.LBB0_49:                               @ %if.end180
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.end180
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.end180
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.end180
	mov	r0, r6
	mov	r1, r6
	str	r7, [r4]
	bl	__aeabi_fadd
	b	.LBB0_28
.section bb0_53
.LBB0_53:                               @ %if.end168
	mov	r0, r5
	bl	cosf
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.end168
	bl	__aeabi_fmul
	mov	r7, r0
	mov	r0, r5
	bl	sinf
	mov	r1, #1065353216
	str	r7, [r4]
	orr	r1, r1, #1073741824
	b	.LBB0_29
.Ltmp0:
	.size	csinhf, .Ltmp0-csinhf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
