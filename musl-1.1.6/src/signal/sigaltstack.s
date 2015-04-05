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
	.file	"src/signal/sigaltstack.bc"
	.globl	sigaltstack
	.align	2
	.type	sigaltstack,%function
sigaltstack:                            @ @sigaltstack
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	ldr	r2, [r0, #8]
	mov	r3, #0
	cmp	r3, r2, lsr #11
	bne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %if.then1
	bl	__errno_location
	mov	r1, #12
	b	.LBB0_5
.LBB0_3:                                @ %if.end
	ldr	r2, [r0, #4]
	mvn	r3, #2
	tst	r2, r3
	beq	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %if.then3
	bl	__errno_location
	mov	r1, #22
	b	.LBB0_5
.LBB0_5:                                @ %return
	str	r1, [r0]
	mvn	r0, #0
	pop	{r7, lr}
	mov	pc, lr
.LBB0_6:                                @ %if.end6
	mov	r7, #186
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	sigaltstack, .Ltmp0-sigaltstack
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
