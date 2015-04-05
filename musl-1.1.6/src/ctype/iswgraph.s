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
	.file	"src/ctype/iswgraph.bc"
	.globl	iswgraph
	.align	2
	.type	iswgraph,%function
iswgraph:                               @ @iswgraph
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	iswspace
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	bne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %land.rhs
	mov	r0, r4
	bl	iswprint
	cmp	r0, #0
	movne	r0, #1
	b	.LBB0_3
.LBB0_3:                                @ %land.end
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	iswgraph, .Ltmp0-iswgraph
	.cantunwind
	.fnend

	.globl	__iswgraph_l
	.align	2
	.type	__iswgraph_l,%function
__iswgraph_l:                           @ @__iswgraph_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	iswgraph
.Ltmp1:
	.size	__iswgraph_l, .Ltmp1-__iswgraph_l
	.cantunwind
	.fnend


	.weak	iswgraph_l
iswgraph_l = __iswgraph_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
