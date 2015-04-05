.section iswxdigit_text
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
	.file	"src/ctype/iswxdigit.bc"
	.globl	iswxdigit
	.align	2
	.type	iswxdigit,%function
.section bb0_0
iswxdigit:                              @ @iswxdigit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, r0
	mov	r0, #1
	sub	r2, r1, #48
	cmp	r2, #10
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	movlo	pc, lr
	orr	r0, r1, #32
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #6
	movlo	r0, #1
	mov	pc, lr
.Ltmp0:
	.size	iswxdigit, .Ltmp0-iswxdigit
	.cantunwind
	.fnend

	.globl	__iswxdigit_l
	.align	2
	.type	__iswxdigit_l,%function
.section bb1_0
__iswxdigit_l:                          @ @__iswxdigit_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r1, r0
	mov	r0, #1
	sub	r2, r1, #48
	cmp	r2, #10
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	movlo	pc, lr
	orr	r0, r1, #32
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #6
	movlo	r0, #1
	mov	pc, lr
.Ltmp1:
	.size	__iswxdigit_l, .Ltmp1-__iswxdigit_l
	.cantunwind
	.fnend


	.weak	iswxdigit_l
iswxdigit_l = __iswxdigit_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
