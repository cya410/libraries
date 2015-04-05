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
	.file	"src/time/timer_delete.bc"
	.globl	timer_delete
	.align	2
	.type	timer_delete,%function
timer_delete:                           @ @timer_delete
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	cmp	r0, #0
	bge	.LBB0_6
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	mov	r3, #148
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	b	.LBB0_2
.LBB0_2:                                @ %if.then
	ldr	r0, [r3, r0, lsl #1]!
	@APP
	bl	__a_barrier
	@NO_APP
	orr	r0, r0, #-2147483648
	str	r0, [r3]
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	mov	r0, r3
	@APP
	bl	__a_barrier
	@NO_APP
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_5
.LBB0_5:                                @ %return
	mov	r0, #0
	pop	{r7, lr}
	mov	pc, lr
.LBB0_6:                                @ %if.end
	mov	r7, #5
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	timer_delete, .Ltmp0-timer_delete
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
