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
	.file	"src/prng/seed48.bc"
	.globl	seed48
	.align	2
	.type	seed48,%function
seed48:                                 @ @seed48
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r6, .LCPI0_3
	ldr	r5, .LCPI0_2
	b	.LBB0_2
.LCPI0_2:
	.long	seed48.p
.LCPI0_3:
	.long	__seed48
.LBB0_2:                                @ %entry
	mov	r4, r0
	mov	r2, #6
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_3
.LBB0_3:                                @ %entry
	bl	memcpy
	mov	r0, r6
	mov	r1, r4
	mov	r2, #6
	bl	memcpy
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	seed48, .Ltmp0-seed48
	.cantunwind
	.fnend

	.type	seed48.p,%object        @ @seed48.p
	.local	seed48.p
	.comm	seed48.p,6,2

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
