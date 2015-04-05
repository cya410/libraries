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
	.file	"src/prng/rand_r.bc"
	.globl	rand_r
	.align	2
	.type	rand_r,%function
rand_r:                                 @ @rand_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r1, [r0]
	ldr	r3, .LCPI0_2
	mov	r12, #57
	orr	r12, r12, #12288
	b	.LBB0_1
.LCPI0_2:
	.long	1103515245              @ 0x41c64e6d
.LBB0_1:                                @ %entry
	mla	r2, r1, r3, r12
	str	r2, [r0]
	eor	r0, r2, r2, lsr #11
	ldr	r1, .LCPI0_3
	b	.LBB0_2
.LCPI0_3:
	.long	2636928640              @ 0x9d2c5680
.LBB0_2:                                @ %entry
	and	r1, r1, r0, lsl #7
	eor	r0, r1, r0
	mov	r1, #12976128
	orr	r1, r1, #-285212672
	b	.LBB0_3
.LBB0_3:                                @ %entry
	and	r1, r1, r0, lsl #15
	eor	r0, r1, r0
	eor	r0, r0, r0, lsr #18
	lsr	r0, r0, #1
	mov	pc, lr
.Ltmp0:
	.size	rand_r, .Ltmp0-rand_r
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
