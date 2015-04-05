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
	.file	"src/stdio/ext2.bc"
	.globl	__freadahead
	.align	2
	.type	__freadahead,%function
__freadahead:                           @ @__freadahead
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #8]
	sub	r0, r0, r1
	mov	pc, lr
.Ltmp0:
	.size	__freadahead, .Ltmp0-__freadahead
	.cantunwind
	.fnend

	.globl	__freadptr
	.align	2
	.type	__freadptr,%function
__freadptr:                             @ @__freadptr
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldmib	r0, {r2, r3}
	mov	r0, #0
	cmp	r3, r2
	subne	r0, r3, r2
	strne	r0, [r1]
	movne	r0, r2
	mov	pc, lr
.Ltmp1:
	.size	__freadptr, .Ltmp1-__freadptr
	.cantunwind
	.fnend

	.globl	__freadptrinc
	.align	2
	.type	__freadptrinc,%function
__freadptrinc:                          @ @__freadptrinc
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	ldr	r2, [r0, #4]
	add	r1, r2, r1
	str	r1, [r0, #4]
	mov	pc, lr
.Ltmp2:
	.size	__freadptrinc, .Ltmp2-__freadptrinc
	.cantunwind
	.fnend

	.globl	__fseterr
	.align	2
	.type	__fseterr,%function
__fseterr:                              @ @__fseterr
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	ldr	r1, [r0]
	orr	r1, r1, #32
	str	r1, [r0]
	mov	pc, lr
.Ltmp3:
	.size	__fseterr, .Ltmp3-__fseterr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
