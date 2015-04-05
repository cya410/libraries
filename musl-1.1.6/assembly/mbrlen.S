.section mbrlen_text
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
	.file	"src/multibyte/mbrlen.bc"
	.globl	mbrlen
	.align	2
	.type	mbrlen,%function
.section bb0_0
mbrlen:                                 @ @mbrlen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r3, .LCPI0_0
	mov	r12, r1
	cmp	r2, #0
	mov	r1, r0
	mov	r0, #0
	movne	r3, r2
	mov	r2, r12
	b	mbrtowc
.LCPI0_0:
	.long	mbrlen.internal
.Ltmp0:
	.size	mbrlen, .Ltmp0-mbrlen
	.cantunwind
	.fnend

	.type	mbrlen.internal,%object @ @mbrlen.internal
	.local	mbrlen.internal
	.comm	mbrlen.internal,4,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
