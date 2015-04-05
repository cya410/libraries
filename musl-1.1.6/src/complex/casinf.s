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
	.file	"src/complex/casinf.bc"
	.globl	casinf
	.align	2
	.type	casinf,%function
casinf:                                 @ @casinf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r2
	mov	r5, r1
	mov	r8, r0
	mov	r0, r5
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r7, r0
	mov	r0, r5
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r1, r6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_6
.LBB0_6:                                @ %entry
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub
	b	.LBB0_7
.LBB0_7:                                @ %entry
	mov	r9, r0
	mov	r0, r5
	bl	__aeabi_f2d
	mov	r2, #0
	b	.LBB0_8
.LBB0_8:                                @ %entry
	mov	r3, #-1073741824
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r0, r6
	b	.LBB0_9
.LBB0_9:                                @ %entry
	mov	r7, r1
	bl	__aeabi_f2d
	mov	r2, r4
	mov	r3, r7
	b	.LBB0_10
.LBB0_10:                               @ %entry
	bl	__aeabi_dmul
	bl	__aeabi_d2f
	mov	r2, r0
	add	r0, sp, #8
	b	.LBB0_11
.LBB0_11:                               @ %entry
	mov	r1, r9
	bl	csqrtf
	ldr	r0, [sp, #8]
	ldr	r4, [sp, #12]
	b	.LBB0_12
.LBB0_12:                               @ %entry
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r6, r0
	mov	r0, r5
	b	.LBB0_13
.LBB0_13:                               @ %entry
	mov	r1, r4
	bl	__aeabi_fadd
	mov	r2, r0
	mov	r0, sp
	b	.LBB0_14
.LBB0_14:                               @ %entry
	mov	r1, r6
	bl	clogf
	ldm	sp, {r0, r1}
	stm	r8, {r0, r1}
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	casinf, .Ltmp0-casinf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
