.section assert_text
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
	.file	"src/exit/assert.bc"
	.globl	__assert_fail
	.align	2
	.type	__assert_fail,%function
.section bb0_0
__assert_fail:                          @ @__assert_fail
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	lr, r0
	ldr	r0, .LCPI0_2
	b	.LBB0_2
.LCPI0_2:
	.long	stderr
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r12, r1
	ldr	r1, .LCPI0_3
	str	r3, [sp]
	str	r2, [sp, #4]
	b	.LBB0_3
.LCPI0_3:
	.long	.L.str
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r2, lr
	mov	r3, r12
	ldr	r0, [r0]
	bl	fprintf
	mov	r0, #0
	bl	fflush
	bl	abort
.Ltmp0:
	.size	__assert_fail, .Ltmp0-__assert_fail
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Assertion failed: %s (%s: %s: %d)\n"
	.size	.L.str, 35


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
