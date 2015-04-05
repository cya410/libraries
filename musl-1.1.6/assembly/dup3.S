.section dup3_text
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
	.file	"src/unistd/dup3.bc"
	.globl	__dup3
	.align	2
	.type	__dup3,%function
.section bb0_0
__dup3:                                 @ @__dup3
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r12, r0
	cmp	r12, r1
	bne	.LBB0_2
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %if.then
	mvn	r0, #21
	b	.LBB0_10
.section bb0_2
.LBB0_2:                                @ %if.end
	ands	lr, r2, #524288
	beq	.LBB0_6
	b	.LBB0_3
.section bb0_3
.LBB0_3:
	mov	r7, #102
	orr	r7, r7, #256
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r12
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #16
	beq	.LBB0_4
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %while.cond
	cmn	r0, #38
	bne	.LBB0_10
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %while.cond9
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, #63
	mov	r0, r12
	@APP
	svc	#0
	@NO_APP
	mov	r3, r0
	cmn	r3, #16
	beq	.LBB0_6
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %while.end13
	cmp	lr, #0
	beq	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then16
	mov	r0, r1
	mov	r7, #221
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end18
	mov	r0, r3
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then5
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	__dup3, .Ltmp0-__dup3
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	dup3
dup3 = __dup3
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
