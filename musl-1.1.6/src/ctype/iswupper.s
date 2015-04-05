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
	.file	"src/ctype/iswupper.bc"
	.globl	iswupper
	.align	2
	.type	iswupper,%function
iswupper:                               @ @iswupper
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	towlower
	mov	r1, #0
	b	.LBB0_2
.LBB0_2:                                @ %entry
	cmp	r0, r4
	movne	r1, #1
	mov	r0, r1
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	iswupper, .Ltmp0-iswupper
	.cantunwind
	.fnend

	.globl	__iswupper_l
	.align	2
	.type	__iswupper_l,%function
__iswupper_l:                           @ @__iswupper_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	towlower
	mov	r1, #0
	b	.LBB1_2
.LBB1_2:                                @ %entry
	cmp	r0, r4
	movne	r1, #1
	mov	r0, r1
	pop	{r4, lr}
	mov	pc, lr
.Ltmp1:
	.size	__iswupper_l, .Ltmp1-__iswupper_l
	.cantunwind
	.fnend


	.weak	iswupper_l
iswupper_l = __iswupper_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
