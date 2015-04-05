.section signalfd_text
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
	.file	"src/linux/signalfd.bc"
	.globl	signalfd
	.align	2
	.type	signalfd,%function
.section bb0_0
signalfd:                               @ @signalfd
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r12, r0
	mov	r7, #99
	mov	r3, r2
	mov	r2, #8
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	orr	r7, r7, #256
                                        @ kill: R0<def> R12<kill>
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_10
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r7, #93
	mov	r0, r12
	mov	r2, #8
	orr	r7, r7, #256
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	@APP
	svc	#0
	@NO_APP
	mov	r12, r0
	cmp	r12, #0
	blt	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then4
	tst	r3, #524288
	beq	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then5
	mov	r7, #221
	mov	r0, r12
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end7
	tst	r3, #2048
	beq	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then10
	mov	r7, #221
	mov	r0, r12
	mov	r1, #4
	mov	r2, #2048
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end13
	mov	r0, r12
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	signalfd, .Ltmp0-signalfd
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
