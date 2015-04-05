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
	.file	"src/mman/mprotect.bc"
	.globl	__mprotect
	.align	2
	.type	__mprotect,%function
__mprotect:                             @ @__mprotect
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r3, .LCPI0_0
	mov	r7, #125
	and	r12, r0, r3
	add	r0, r1, r0
	b	.LBB0_2
.LCPI0_0:
	.long	4294963200              @ 0xfffff000
.LBB0_2:                                @ %entry
	add	r0, r0, #255
	add	r0, r0, #3840
	and	r0, r0, r3
	sub	r1, r0, r12
	mov	r0, r12
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	__mprotect, .Ltmp0-__mprotect
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	mprotect
mprotect = __mprotect
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
