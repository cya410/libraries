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
	.file	"src/ipc/semctl.bc"
	.globl	semctl
	.align	2
	.type	semctl,%function
semctl:                                 @ @semctl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	str	r3, [sp, #20]
	mov	r3, #0
	cmp	r2, #19
	bhi	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	lr, #14
	mov	r12, #1
	orr	lr, lr, #991232
	tst	lr, r12, lsl r2
	b	.LBB0_4
.LBB0_4:                                @ %entry
	addne	r3, sp, #20
	strne	r3, [sp, #4]
	addne	r3, r3, #4
	strne	r3, [sp, #4]
	ldrne	r3, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                @ %sw.epilog
	orr	r2, r2, #256
	mov	r7, #300
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	add	sp, sp, #8
	pop	{r7, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	semctl, .Ltmp0-semctl
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
