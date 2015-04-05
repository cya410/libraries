.section htonl_text
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
	.file	"src/network/htonl.bc"
	.globl	htonl
	.align	2
	.type	htonl,%function
.section bb0_0
htonl:                                  @ @htonl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, #65280
	mov	r2, #16711680
	and	r1, r1, r0, lsr #8
	and	r2, r2, r0, lsl #8
	orr	r1, r1, r0, lsr #24
	orr	r0, r2, r0, lsl #24
	orr	r0, r0, r1
	mov	pc, lr
.Ltmp0:
	.size	htonl, .Ltmp0-htonl
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
