.section wcscoll_text
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
	.file	"src/locale/wcscoll.bc"
	.globl	__wcscoll_l
	.align	2
	.type	__wcscoll_l,%function
.section bb0_0
__wcscoll_l:                            @ @__wcscoll_l
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	b	wcscmp
.Ltmp0:
	.size	__wcscoll_l, .Ltmp0-__wcscoll_l
	.cantunwind
	.fnend

	.globl	wcscoll
	.align	2
	.type	wcscoll,%function
.section bb1_0
wcscoll:                                @ @wcscoll
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r2, .LCPI1_0
	ldr	r2, [r2, #44]
	b	wcscmp
.LCPI1_0:
	.long	__libc
.Ltmp1:
	.size	wcscoll, .Ltmp1-wcscoll
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	wcscoll_l
wcscoll_l = __wcscoll_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
