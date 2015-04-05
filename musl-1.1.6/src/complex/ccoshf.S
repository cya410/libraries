.section ccoshf_text
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
	.file	"src/complex/ccoshf.bc"
	.globl	ccoshf
	.align	2
	.type	ccoshf,%function
.section bb0_0
ccoshf:                                 @ @ccoshf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r1
	mov	r9, r0
	mov	r6, r2
	bic	r0, r7, #-2147483648
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bic	r4, r6, #-2147483648
	lsr	r5, r0, #23
	cmp	r5, #254
	lsrls	r1, r4, #23
	cmpls	r1, #254
	bhi	.LBB0_28
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	cmp	r4, #0
	beq	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r1, .LCPI0_6
	cmp	r0, r1
	bhi	.LBB0_11
	b	.LBB0_7
.LCPI0_6:
	.long	1091567615              @ 0x410fffff
.section bb0_7
.LBB0_7:                                @ %if.then18
	mov	r0, r7
	bl	coshf
	mov	r5, r0
	mov	r0, r6
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then18
	bl	cosf
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r10, r0
	mov	r0, r7
	bl	sinhf
	b	.LBB0_15
.section bb0_9
.LBB0_9:                                @ %if.then11
	mov	r0, r7
	bl	coshf
	mov	r10, r0
	mov	r0, r7
	str	r10, [r9]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	mov	r1, r6
	b	.LBB0_18
.section bb0_11
.LBB0_11:                               @ %if.end32
	ldr	r1, .LCPI0_7
	cmp	r0, r1
	bhi	.LBB0_20
	b	.LBB0_12
.LCPI0_7:
	.long	1118925335              @ 0x42b17217
.section bb0_12
.LBB0_12:                               @ %if.then34
	mov	r0, r7
	bl	fabsf
	bl	expf
	mov	r1, #1056964608
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then34
	bl	__aeabi_fmul
	mov	r8, r0
	mov	r0, r6
	bl	cosf
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then34
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fmul
	mov	r10, r0
	mov	r0, r8
	mov	r1, r7
	bl	copysignf
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %return
	mov	r7, r0
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %return
	mov	r0, r6
	bl	sinf
	mov	r1, r0
	str	r10, [r9]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	mov	r0, r7
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %return
	bl	__aeabi_fmul
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %return
	mov	r1, r9
	str	r0, [r1, #4]!
	str	r10, [r9]
	str	r0, [r1]
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.section bb0_20
.LBB0_20:                               @ %if.else
	ldr	r1, .LCPI0_8
	cmp	r0, r1
	bhi	.LBB0_24
	b	.LBB0_21
.LCPI0_8:
	.long	1128313318              @ 0x4340b1e6
.section bb0_21
.LBB0_21:                               @ %if.then51
	mov	r0, r7
	bl	fabsf
	mov	r1, r0
	mov	r0, sp
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then51
	mov	r2, r6
	mvn	r3, #0
	bl	__ldexp_cexpf
	ldr	r10, [sp]
	ldr	r6, [sp, #4]
	mov	r0, #1065353216
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %return
	mov	r1, r7
	bl	copysignf
	mov	r1, r0
	str	r10, [r9]
	mov	r0, r6
	b	.LBB0_18
.section bb0_24
.LBB0_24:                               @ %if.else83
	mov	r0, r7
	mov	r1, #2130706432
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.else83
	mov	r1, r7
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.else83
	mov	r0, r6
	bl	cosf
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %return
	bl	__aeabi_fmul
	mov	r10, r0
	b	.LBB0_16
.section bb0_28
.LBB0_28:                               @ %if.end97
	cmp	r0, #0
	bne	.LBB0_31
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end97
	lsr	r0, r4, #23
	cmp	r0, #255
	blo	.LBB0_31
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.then101
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r10, r0
	mov	r0, r7
	mov	r1, r10
	b	.LBB0_35
.section bb0_31
.LBB0_31:                               @ %if.end112
	cmp	r4, #0
	bne	.LBB0_36
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end112
	cmp	r5, #255
	blo	.LBB0_36
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.then116
	mov	r0, r7
	mov	r1, r7
	bl	__aeabi_fmul
	mov	r10, r0
	ldr	r0, .LCPI0_4
	tst	r7, r0
	beq	.LBB0_43
	b	.LBB0_34
.LCPI0_4:
	.long	8388607                 @ 0x7fffff
.section bb0_34
.LBB0_34:                               @ %if.end130
	mov	r0, r7
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %return
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #0
	bl	copysignf
	str	r10, [r9]
	b	.LBB0_19
.section bb0_36
.LBB0_36:                               @ %if.end141
	cmp	r5, #254
	bhi	.LBB0_39
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end141
	lsr	r0, r4, #23
	cmp	r0, #255
	blo	.LBB0_39
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.then145
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r10, r0
	mov	r0, r7
	str	r10, [r9]
	mov	r1, r10
	b	.LBB0_18
.section bb0_39
.LBB0_39:                               @ %if.end156
	ldr	r8, .LCPI0_5
	mov	r0, r7
	mov	r1, r7
	bl	__aeabi_fmul
	mov	r10, r0
	cmp	r5, #255
	blo	.LBB0_44
	b	.LBB0_40
.LCPI0_5:
	.long	8388607                 @ 0x7fffff
.section bb0_40
.LBB0_40:                               @ %if.end156
	ands	r0, r7, r8
	bne	.LBB0_44
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.then161
	lsr	r0, r4, #23
	cmp	r0, #255
	blo	.LBB0_47
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.then163
	mov	r0, r6
	mov	r1, r6
	str	r10, [r9]
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_17
.section bb0_43
.LBB0_43:                               @ %if.then119
	mov	r0, #0
	b	.LBB0_23
.section bb0_44
.LBB0_44:                               @ %if.end187
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r6, r0
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.end187
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r10, r0
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end187
	mov	r0, r7
	mov	r1, r7
	str	r10, [r9]
	bl	__aeabi_fadd
	b	.LBB0_10
.section bb0_47
.LBB0_47:                               @ %if.end174
	mov	r0, r6
	bl	cosf
	mov	r1, r0
	mov	r0, r10
	b	.LBB0_27
.Ltmp0:
	.size	ccoshf, .Ltmp0-ccoshf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
