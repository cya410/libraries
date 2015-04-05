.section toupper_text
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
	.file	"src/ctype/toupper.bc"
	.globl	toupper
	.align	2
	.type	toupper,%function
.section bb0_0
toupper:                                @ @toupper
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	sub	r1, r0, #97
	cmp	r1, #26
	andlo	r0, r0, #95
	mov	pc, lr
.Ltmp0:
	.size	toupper, .Ltmp0-toupper
	.cantunwind
	.fnend

	.globl	__toupper_l
	.align	2
	.type	__toupper_l,%function
.section bb1_0
__toupper_l:                            @ @__toupper_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	sub	r1, r0, #97
	cmp	r1, #26
	andlo	r0, r0, #95
	mov	pc, lr
.Ltmp1:
	.size	__toupper_l, .Ltmp1-__toupper_l
	.cantunwind
	.fnend


	.weak	toupper_l
toupper_l = __toupper_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
