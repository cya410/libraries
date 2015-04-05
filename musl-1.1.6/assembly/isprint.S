.section isprint_text
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
	.file	"src/ctype/isprint.bc"
	.globl	isprint
	.align	2
	.type	isprint,%function
.section bb0_0
isprint:                                @ @isprint
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	sub	r1, r0, #32
	mov	r0, #0
	cmp	r1, #95
	movlo	r0, #1
	mov	pc, lr
.Ltmp0:
	.size	isprint, .Ltmp0-isprint
	.cantunwind
	.fnend

	.globl	__isprint_l
	.align	2
	.type	__isprint_l,%function
.section bb1_0
__isprint_l:                            @ @__isprint_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	sub	r1, r0, #32
	mov	r0, #0
	cmp	r1, #95
	movlo	r0, #1
	mov	pc, lr
.Ltmp1:
	.size	__isprint_l, .Ltmp1-__isprint_l
	.cantunwind
	.fnend


	.weak	isprint_l
isprint_l = __isprint_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
