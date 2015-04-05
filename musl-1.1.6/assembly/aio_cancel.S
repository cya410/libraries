.section aio_cancel_text
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
	.file	"src/aio/aio_cancel.bc"
	.globl	aio_cancel
	.align	2
	.type	aio_cancel,%function
.section bb0_0
aio_cancel:                             @ @aio_cancel
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r0, #1
	cmp	r1, #0
	moveq	pc, lr
	ldr	r1, [r1, #96]
	mov	r0, #2
	cmp	r1, #115
	moveq	r0, #1
	mov	pc, lr
.Ltmp0:
	.size	aio_cancel, .Ltmp0-aio_cancel
	.cantunwind
	.fnend


	.weak	aio_cancel64
aio_cancel64 = aio_cancel
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
