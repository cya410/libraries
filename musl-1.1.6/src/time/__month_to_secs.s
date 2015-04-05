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
	.file	"src/time/__month_to_secs.bc"
	.globl	__month_to_secs
	.align	2
	.type	__month_to_secs,%function
__month_to_secs:                        @ @__month_to_secs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r3, .LCPI0_0
	cmp	r0, #1
	mov	r2, #0
	movgt	r2, #1
	b	.LBB0_1
.LCPI0_0:
	.long	__month_to_secs.secs_through_month
.LBB0_1:                                @ %entry
	cmp	r1, #0
	movne	r1, #1
	tst	r2, r1
	ldr	r0, [r3, r0, lsl #2]
	add	r3, r0, #4480
	addne	r0, r3, #81920
	mov	pc, lr
.Ltmp0:
	.size	__month_to_secs, .Ltmp0-__month_to_secs
	.cantunwind
	.fnend

	.type	__month_to_secs.secs_through_month,%object @ @__month_to_secs.secs_through_month
	.section	.rodata,"a",%progbits
	.align	2
__month_to_secs.secs_through_month:
	.long	0                       @ 0x0
	.long	2678400                 @ 0x28de80
	.long	5097600                 @ 0x4dc880
	.long	7776000                 @ 0x76a700
	.long	10368000                @ 0x9e3400
	.long	13046400                @ 0xc71280
	.long	15638400                @ 0xee9f80
	.long	18316800                @ 0x1177e00
	.long	20995200                @ 0x1405c80
	.long	23587200                @ 0x167e980
	.long	26265600                @ 0x190c800
	.long	28857600                @ 0x1b85500
	.size	__month_to_secs.secs_through_month, 48


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
