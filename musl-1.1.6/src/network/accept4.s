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
	.file	"src/network/accept4.bc"
	.globl	accept4
	.align	2
	.type	accept4,%function
accept4:                                @ @accept4
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r4, r3
	mov	r6, r2
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, r1
	mov	r5, r0
	cmp	r4, #0
	beq	.LBB0_14
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	mov	r0, #0
	str	r4, [sp]
	mov	r1, r5
	mov	r2, r7
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	mov	r3, r6
	str	r0, [sp, #4]
	str	r0, [sp, #8]
	mov	r0, #110
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	orr	r0, r0, #256
	bl	__syscall_cp
	bl	__syscall_ret
	mov	r8, r0
	cmp	r8, #0
	bge	.LBB0_13
	b	.LBB0_7
.LBB0_7:                                @ %lor.lhs.false
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #22
	cmpne	r0, #38
	bne	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                @ %if.end8
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	bl	accept
	mov	r8, r0
	cmp	r8, #0
	blt	.LBB0_13
	b	.LBB0_9
.LBB0_9:                                @ %if.end12
	tst	r4, #524288
	beq	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %if.then14
	mov	r7, #221
	mov	r0, r8
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_11
.LBB0_11:                               @ %if.end16
	tst	r4, #2048
	beq	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %if.then19
	mov	r7, #221
	mov	r0, r8
	mov	r1, #4
	mov	r2, #2048
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_13
.LBB0_13:                               @ %return
	mov	r0, r8
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.LBB0_14:                               @ %if.then
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	b	accept
.Ltmp0:
	.size	accept4, .Ltmp0-accept4
	.cantunwind
	.fnend

	.hidden	__syscall_ret
	.hidden	__syscall_cp

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
