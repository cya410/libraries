.section fgetpos_text
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
	.file	"src/stdio/fgetpos.bc"
	.globl	fgetpos
	.align	2
	.type	fgetpos,%function
.section bb0_0
fgetpos:                                @ @fgetpos
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r1
	bl	__ftello
	cmp	r1, #0
	mvn	r2, #0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	movge	r2, #0
	stmge	r4, {r0, r1}
	mov	r0, r2
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	fgetpos, .Ltmp0-fgetpos
	.cantunwind
	.fnend


	.weak	fgetpos64
fgetpos64 = fgetpos
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
