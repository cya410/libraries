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
	.file	"src/errno/__errno_location.bc"
	.globl	__errno_location
	.align	2
	.type	__errno_location,%function
__errno_location:                       @ @__errno_location
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r0, .LCPI0_2
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_2
.LCPI0_2:
	.long	__libc
.LBB0_2:                                @ %if.then
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	sub	r0, r1, #148
	b	.LBB0_4
.LBB0_3:
	ldr	r0, .LCPI0_3
	b	.LBB0_4
.LCPI0_3:
	.long	__errno_location.e
.LBB0_4:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__errno_location, .Ltmp0-__errno_location
	.cantunwind
	.fnend

	.type	__errno_location.e,%object @ @__errno_location.e
	.local	__errno_location.e
	.comm	__errno_location.e,4,4
	.hidden	__libc

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
