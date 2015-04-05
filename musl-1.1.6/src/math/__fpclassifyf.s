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
	.file	"src/math/__fpclassifyf.bc"
	.globl	__fpclassifyf
	.align	2
	.type	__fpclassifyf,%function
__fpclassifyf:                          @ @__fpclassifyf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, #255
	and	r2, r1, r0, lsr #23
	cmp	r2, #255
	bne	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %if.then3
	ldr	r2, .LCPI0_0
	mov	r1, #0
	tst	r0, r2
	moveq	r1, #1
	b	.LBB0_4
.LCPI0_0:
	.long	8388607                 @ 0x7fffff
.LBB0_2:                                @ %entry
	mov	r1, #4
	cmp	r2, #0
	bne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	mvn	r2, #-2147483648
	mov	r1, #2
	tst	r0, r2
	movne	r1, #3
	b	.LBB0_4
.LBB0_4:                                @ %return
	mov	r0, r1
	mov	pc, lr
.Ltmp0:
	.size	__fpclassifyf, .Ltmp0-__fpclassifyf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
