.section isblank_text
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
	.file	"src/ctype/isblank.bc"
	.globl	isblank
	.align	2
	.type	isblank,%function
.section bb0_0
isblank:                                @ @isblank
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	cmp	r0, #9
	mov	r2, #0
	mov	r1, #0
	moveq	r2, #1
	cmp	r0, #32
	moveq	r1, #1
	orr	r0, r1, r2
	mov	pc, lr
.Ltmp0:
	.size	isblank, .Ltmp0-isblank
	.cantunwind
	.fnend

	.globl	__isblank_l
	.align	2
	.type	__isblank_l,%function
.section bb1_0
__isblank_l:                            @ @__isblank_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	cmp	r0, #9
	mov	r2, #0
	mov	r1, #0
	moveq	r2, #1
	cmp	r0, #32
	moveq	r1, #1
	orr	r0, r1, r2
	mov	pc, lr
.Ltmp1:
	.size	__isblank_l, .Ltmp1-__isblank_l
	.cantunwind
	.fnend


	.weak	isblank_l
isblank_l = __isblank_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
