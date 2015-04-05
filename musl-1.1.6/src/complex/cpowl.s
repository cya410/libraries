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
	.file	"src/complex/cpowl.bc"
	.globl	cpowl
	.align	2
	.type	cpowl,%function
cpowl:                                  @ @cpowl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#40
	sub	sp, sp, #40
	mov	r4, r0
	ldr	r1, [sp, #68]
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r0, [sp, #64]
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	ldr	r1, [sp, #60]
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r0, [sp, #56]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #48]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	ldr	r1, [sp, #52]
	stm	sp, {r0, r1}
	add	r0, sp, #24
	bl	cpow
	b	.LBB0_5
.LBB0_5:                                @ %entry
	add	r3, sp, #24
	ldm	r3, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	add	sp, sp, #40
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	cpowl, .Ltmp0-cpowl
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
