.section fgetgrent_text
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
	.file	"src/passwd/fgetgrent.bc"
	.globl	fgetgrent
	.align	2
	.type	fgetgrent,%function
.section bb0_0
fgetgrent:                              @ @fgetgrent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	ldr	r2, .LCPI0_0
	mov	r1, #0
	b	.LBB0_2
.LCPI0_0:
	.long	_MergedGlobals
.section bb0_2
.LBB0_2:                                @ %entry
	add	r3, sp, #12
	str	r1, [sp, #12]
	str	r1, [sp, #8]
	add	r1, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r1, [sp, #4]
	add	r1, r2, #4
	str	r1, [sp]
	add	r1, r2, #8
	bl	__getgrent_a
	add	sp, sp, #16
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fgetgrent, .Ltmp0-fgetgrent
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,24,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
