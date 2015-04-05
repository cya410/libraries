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
	.file	"src/linux/ppoll.bc"
	.globl	ppoll
	.align	2
	.type	ppoll,%function
ppoll:                                  @ @ppoll
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	cmp	r2, #0
	mov	lr, r1
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r1, r0
	mov	r12, #0
	mov	r4, #0
	ldmne	r2, {r0, r2}
	b	.LBB0_3
.LBB0_3:                                @ %entry
	addne	r12, sp, #16
	str	r3, [sp]
	mov	r3, r12
	strne	r2, [sp, #20]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	strne	r0, [sp, #16]
	mov	r0, #8
	mov	r2, lr
	stmib	sp, {r0, r4}
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r0, #336
	bl	__syscall_cp
	bl	__syscall_ret
	add	sp, sp, #24
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	ppoll, .Ltmp0-ppoll
	.cantunwind
	.fnend

	.hidden	__syscall_ret
	.hidden	__syscall_cp

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
