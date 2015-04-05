.section pipe2_text
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
	.file	"src/unistd/pipe2.bc"
	.globl	pipe2
	.align	2
	.type	pipe2,%function
.section bb0_0
pipe2:                                  @ @pipe2
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r5, r1
	mov	r4, r0
	cmp	r5, #0
	beq	.LBB0_11
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end
	mov	r7, #103
	mov	r0, r4
	mov	r1, r5
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_12
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end4
	mov	r0, r4
	bl	pipe
	mov	r3, r0
	cmp	r3, #0
	bne	.LBB0_10
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end8
	tst	r5, #524288
	beq	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then10
	ldr	r0, [r4]
	mov	r7, #221
	mov	r1, #2
	mov	r2, #1
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then10
	@APP
	svc	#0
	@NO_APP
	mov	r7, #221
	mov	r1, #2
	mov	r2, #1
	ldr	r0, [r4, #4]
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end14
	mov	r3, #0
	tst	r5, #2048
	beq	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then17
	ldr	r0, [r4]
	mov	r7, #221
	mov	r1, #4
	mov	r2, #2048
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then17
	@APP
	svc	#0
	@NO_APP
	mov	r7, #221
	mov	r1, #4
	mov	r2, #2048
	ldr	r0, [r4, #4]
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	mov	r0, r3
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.section bb0_11
.LBB0_11:                               @ %if.then
	mov	r0, r4
	pop	{r4, r5, r7, lr}
	b	pipe
.section bb0_12
.LBB0_12:                               @ %if.then2
	pop	{r4, r5, r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	pipe2, .Ltmp0-pipe2
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
