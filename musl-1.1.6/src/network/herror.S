.section herror_text
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
	.file	"src/network/herror.bc"
	.globl	herror
	.align	2
	.type	herror,%function
.section bb0_0
herror:                                 @ @herror
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	bl	__h_errno_location
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r0, [r0]
	bl	hstrerror
	str	r0, [sp]
	ldr	r0, .LCPI0_6
	b	.LBB0_3
.LCPI0_6:
	.long	stderr
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r2, .LCPI0_5
	ldr	r1, .LCPI0_7
	ldr	r3, .LCPI0_4
	cmp	r4, #0
	b	.LBB0_4
.LCPI0_4:
	.long	.L.str2
.LCPI0_5:
	.long	.L.str1
.LCPI0_7:
	.long	.L.str
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r0, [r0]
	moveq	r3, r2
	movne	r2, r4
	bl	fprintf
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	herror, .Ltmp0-herror
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s%s%s"
	.size	.L.str, 7

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.zero	1
	.size	.L.str1, 1

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	": "
	.size	.L.str2, 3


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
