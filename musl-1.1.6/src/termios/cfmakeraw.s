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
	.file	"src/termios/cfmakeraw.bc"
	.globl	cfmakeraw
	.align	2
	.type	cfmakeraw,%function
cfmakeraw:                              @ @cfmakeraw
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r1, [r0]
	ldr	r2, .LCPI0_2
	and	r1, r1, r2
	str	r1, [r0]
	b	.LBB0_1
.LCPI0_2:
	.long	4294965780              @ 0xfffffa14
.LBB0_1:                                @ %entry
	ldr	r1, [r0, #4]
	bic	r1, r1, #1
	str	r1, [r0, #4]
	ldr	r1, [r0, #12]
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r2, .LCPI0_3
	and	r1, r1, r2
	str	r1, [r0, #12]
	ldr	r1, [r0, #8]
	b	.LBB0_3
.LCPI0_3:
	.long	4294934452              @ 0xffff7fb4
.LBB0_3:                                @ %entry
	bic	r1, r1, #304
	orr	r1, r1, #48
	str	r1, [r0, #8]
	mov	r1, #1
	strb	r1, [r0, #23]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	pc, lr
.Ltmp0:
	.size	cfmakeraw, .Ltmp0-cfmakeraw
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
