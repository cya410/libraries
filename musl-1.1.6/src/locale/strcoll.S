.section strcoll_text
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
	.file	"src/locale/strcoll.bc"
	.globl	__strcoll_l
	.align	2
	.type	__strcoll_l,%function
.section bb0_0
__strcoll_l:                            @ @__strcoll_l
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	b	strcmp
.Ltmp0:
	.size	__strcoll_l, .Ltmp0-__strcoll_l
	.cantunwind
	.fnend

	.globl	strcoll
	.align	2
	.type	strcoll,%function
.section bb1_0
strcoll:                                @ @strcoll
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r2, .LCPI1_0
	ldr	r2, [r2, #44]
	b	strcmp
.LCPI1_0:
	.long	__libc
.Ltmp1:
	.size	strcoll, .Ltmp1-strcoll
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	strcoll_l
strcoll_l = __strcoll_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
