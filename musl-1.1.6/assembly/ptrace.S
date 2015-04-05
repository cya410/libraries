.section ptrace_text
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
	.file	"src/linux/ptrace.bc"
	.globl	ptrace
	.align	2
	.type	ptrace,%function
.section bb0_0
ptrace:                                 @ @ptrace
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	add	r4, sp, #28
	sub	r5, r0, #1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, #26
	stm	r4, {r1, r2, r3}
	add	r2, sp, #28
	cmp	r5, #3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	add	r1, r2, #4
	mov	r3, r2
	add	r4, r2, #8
	str	r2, [sp, #4]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	str	r1, [sp, #4]
	ldr	r1, [r3], #16
	str	r4, [sp, #4]
	add	r4, r2, #12
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	ldr	r2, [sp, #32]
	str	r4, [sp, #4]
	ldr	r4, [sp, #36]
	str	r3, [sp, #4]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r3, sp
	movhs	r3, r4
	ldr	r4, [sp, #40]
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %entry
	bl	__syscall_ret
	cmp	r0, #0
	mov	r2, #0
	mov	r1, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %entry
	movlt	r2, #1
	cmp	r5, #2
	movhi	r1, #1
	orrs	r1, r1, r2
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %entry
	ldr	r1, [sp]
	moveq	r0, r1
	add	sp, sp, #8
	pop	{r4, r5, r7, lr}
	add	sp, sp, #16
	mov	pc, lr
.Ltmp0:
	.size	ptrace, .Ltmp0-ptrace
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
