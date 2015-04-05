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
	.file	"src/misc/syscall.bc"
	.globl	syscall
	.align	2
	.type	syscall,%function
syscall:                                @ @syscall
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	add	r4, sp, #28
	mov	r7, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	stm	r4, {r1, r2, r3}
	add	r3, sp, #28
	add	r1, r3, #4
	str	r3, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r5, r3
	add	r2, r3, #12
	add	r4, r3, #16
	str	r1, [sp, #4]
	b	.LBB0_5
.LBB0_5:                                @ %entry
	add	r1, r3, #8
	ldr	r12, [r5], #24
	str	r1, [sp, #4]
	ldr	r1, [sp, #32]
	b	.LBB0_6
.LBB0_6:                                @ %entry
	str	r2, [sp, #4]
	ldr	r2, [sp, #36]
	str	r4, [sp, #4]
	add	r4, r3, #20
	b	.LBB0_7
.LBB0_7:                                @ %entry
	ldr	r3, [sp, #40]
	str	r4, [sp, #4]
	mov	r0, r12
	ldr	r4, [sp, #44]
	b	.LBB0_8
.LBB0_8:                                @ %entry
	str	r5, [sp, #4]
	ldr	r5, [sp, #48]
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	add	sp, sp, #8
	pop	{r4, r5, r7, lr}
	add	sp, sp, #16
	mov	pc, lr
.Ltmp0:
	.size	syscall, .Ltmp0-syscall
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
