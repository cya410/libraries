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
	.file	"src/mq/mq_open.bc"
	.globl	mq_open
	.align	2
	.type	mq_open,%function
mq_open:                                @ @mq_open
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
	mov	r12, r0
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	mov	r3, #0
	b	.LBB0_3
.LBB0_3:                                @ %entry
                                        @ kill: R0<def> R12<kill>
	ldrb	r2, [r0], #1
	cmp	r2, #47
	mov	r2, #0
	movne	r0, r12
	tst	r1, #64
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.then2
	add	r3, sp, #16
	orr	r2, r3, #4
	str	r3, [sp, #4]
	str	r2, [sp, #4]
	ldr	r2, [r3], #8
	str	r3, [sp, #4]
	ldr	r3, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                @ %if.end9
	mov	r7, #18
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	add	sp, sp, #8
	pop	{r7, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	mq_open, .Ltmp0-mq_open
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
