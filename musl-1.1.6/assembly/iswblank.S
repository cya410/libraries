.section iswblank_text
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
	.file	"src/ctype/iswblank.bc"
	.globl	iswblank
	.align	2
	.type	iswblank,%function
.section bb0_0
iswblank:                               @ @iswblank
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	b	isblank
.Ltmp0:
	.size	iswblank, .Ltmp0-iswblank
	.cantunwind
	.fnend

	.globl	__iswblank_l
	.align	2
	.type	__iswblank_l,%function
.section bb1_0
__iswblank_l:                           @ @__iswblank_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	isblank
.Ltmp1:
	.size	__iswblank_l, .Ltmp1-__iswblank_l
	.cantunwind
	.fnend


	.weak	iswblank_l
iswblank_l = __iswblank_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
