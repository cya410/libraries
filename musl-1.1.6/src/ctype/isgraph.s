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
	.file	"src/ctype/isgraph.bc"
	.globl	isgraph
	.align	2
	.type	isgraph,%function
isgraph:                                @ @isgraph
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	sub	r1, r0, #33
	mov	r0, #0
	cmp	r1, #94
	movlo	r0, #1
	mov	pc, lr
.Ltmp0:
	.size	isgraph, .Ltmp0-isgraph
	.cantunwind
	.fnend

	.globl	__isgraph_l
	.align	2
	.type	__isgraph_l,%function
__isgraph_l:                            @ @__isgraph_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	sub	r1, r0, #33
	mov	r0, #0
	cmp	r1, #94
	movlo	r0, #1
	mov	pc, lr
.Ltmp1:
	.size	__isgraph_l, .Ltmp1-__isgraph_l
	.cantunwind
	.fnend


	.weak	isgraph_l
isgraph_l = __isgraph_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
