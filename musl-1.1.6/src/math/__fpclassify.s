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
	.file	"src/math/__fpclassify.bc"
	.globl	__fpclassify
	.align	2
	.type	__fpclassify,%function
__fpclassify:                           @ @__fpclassify
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r2, #255
	orr	r2, r2, #1792
	and	r3, r2, r1, lsr #20
	cmp	r3, r2
	bne	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %if.then4
	ldr	r2, .LCPI0_0
	and	r1, r1, r2
	mov	r2, #0
	orrs	r0, r0, r1
	moveq	r2, #1
	b	.LBB0_4
.LCPI0_0:
	.long	1048575                 @ 0xfffff
.LBB0_2:                                @ %entry
	mov	r2, #4
	cmp	r3, #0
	bne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	bic	r1, r1, #-2147483648
	mov	r2, #2
	orrs	r0, r0, r1
	movne	r2, #3
	b	.LBB0_4
.LBB0_4:                                @ %return
	mov	r0, r2
	mov	pc, lr
.Ltmp0:
	.size	__fpclassify, .Ltmp0-__fpclassify
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
