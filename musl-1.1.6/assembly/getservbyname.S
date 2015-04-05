.section getservbyname_text
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
	.file	"src/network/getservbyname.bc"
	.globl	getservbyname
	.align	2
	.type	getservbyname,%function
.section bb0_0
getservbyname:                          @ @getservbyname
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r3, #8
	add	r2, sp, #12
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	str	r3, [sp]
	ldr	r3, .LCPI0_0
	str	r2, [sp, #4]
	add	r4, r3, #8
	b	.LBB0_3
.LCPI0_0:
	.long	_MergedGlobals
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r2, r4
	bl	getservbyname_r
	cmp	r0, #0
	movne	r4, #0
	mov	r0, r4
	add	sp, sp, #16
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	getservbyname, .Ltmp0-getservbyname
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,24,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
