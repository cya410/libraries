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
	.file	"src/internal/libc.bc"
	.type	__progname,%object      @ @__progname
	.bss
	.globl	__progname
	.align	2
__progname:
	.long	0
	.size	__progname, 4

	.type	__progname_full,%object @ @__progname_full
	.globl	__progname_full
	.align	2
__progname_full:
	.long	0
	.size	__progname_full, 4

	.hidden	__libc                  @ @__libc
	.type	__libc,%object
	.comm	__libc,76,4
	.type	__hwcap,%object         @ @__hwcap
	.comm	__hwcap,4,4
	.type	__sysinfo,%object       @ @__sysinfo
	.comm	__sysinfo,4,4

	.weak	program_invocation_short_name
program_invocation_short_name = __progname
	.weak	program_invocation_name
program_invocation_name = __progname_full
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
