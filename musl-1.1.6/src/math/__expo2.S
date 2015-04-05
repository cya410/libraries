.section __expo2_text
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
	.file	"src/math/__expo2.bc"
	.globl	__expo2
	.align	2
	.type	__expo2,%function
.section bb0_0
__expo2:                                @ @__expo2
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r2, .LCPI0_2
	ldr	r3, .LCPI0_3
	bl	__aeabi_dadd
	bl	exp
	b	.LBB0_2
.LCPI0_2:
	.long	354082187               @ 0x151add8b
.LCPI0_3:
	.long	3231064166              @ 0xc0962066
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, #1069547520
	mov	r2, #0
	orr	r4, r4, #1073741824
	mov	r3, r4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bl	__aeabi_dmul
	mov	r2, #0
	mov	r3, r4
	bl	__aeabi_dmul
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__expo2, .Ltmp0-__expo2
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
