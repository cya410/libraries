.section localeconv_text
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
	.file	"src/locale/localeconv.bc"
	.globl	localeconv
	.align	2
	.type	localeconv,%function
.section bb0_0
localeconv:                             @ @localeconv
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r0, .LCPI0_0
	mov	pc, lr
.LCPI0_0:
	.long	posix_lconv
.Ltmp0:
	.size	localeconv, .Ltmp0-localeconv
	.cantunwind
	.fnend

	.type	posix_lconv,%object     @ @posix_lconv
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
posix_lconv:
	.long	.L.str
	.long	.L.str1
	.long	.L.str1
	.long	.L.str1
	.long	.L.str1
	.long	.L.str1
	.long	.L.str1
	.long	.L.str1
	.long	.L.str1
	.long	.L.str1
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.byte	255                     @ 0xff
	.zero	2
	.size	posix_lconv, 56

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.zero	1
	.size	.L.str1, 1


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
