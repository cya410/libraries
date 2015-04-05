.section syscall_ret_text
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
	.file	"src/internal/syscall_ret.bc"
	.hidden	__syscall_ret
	.globl	__syscall_ret
	.align	2
	.type	__syscall_ret,%function
.section bb0_0
__syscall_ret:                          @ @__syscall_ret
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	ldr	r1, .LCPI0_0
	cmp	r0, r1
	blo	.LBB0_2
	b	.LBB0_1
.LCPI0_0:
	.long	4294963201              @ 0xfffff001
.section bb0_1
.LBB0_1:                                @ %if.then
	rsb	r4, r0, #0
	bl	__errno_location
	str	r4, [r0]
	mvn	r0, #0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__syscall_ret, .Ltmp0-__syscall_ret
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
