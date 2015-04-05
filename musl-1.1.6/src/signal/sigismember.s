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
	.file	"src/signal/sigismember.bc"
	.globl	sigismember
	.align	2
	.type	sigismember,%function
sigismember:                            @ @sigismember
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	sub	r1, r1, #1
	mov	r2, r0
	mov	r0, #0
	cmp	r1, #63
	b	.LBB0_1
.LBB0_1:                                @ %entry
	movhi	pc, lr
	mvn	r0, #-536870909
	and	r0, r0, r1, lsr #3
	and	r1, r1, #31
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r0, [r2, r0]
	mov	r2, #1
	and	r0, r0, r2, lsl r1
	cmp	r0, #0
	movne	r0, #1
	mov	pc, lr
.Ltmp0:
	.size	sigismember, .Ltmp0-sigismember
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
