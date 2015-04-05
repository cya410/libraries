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
	.file	"src/thread/pthread_sigmask.bc"
	.globl	pthread_sigmask
	.align	2
	.type	pthread_sigmask,%function
pthread_sigmask:                        @ @pthread_sigmask
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r3, r0
	mov	r0, #22
	cmp	r3, #2
	bhi	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                @ %if.end
	mov	r0, r3
	mov	r7, #175
	mov	r3, #8
	cmp	r2, #0
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	@APP
	svc	#0
	@NO_APP
	mov	r1, r0
	rsb	r0, r1, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	cmp	r1, #0
	ldreq	r1, [r2]
	biceq	r1, r1, #-2147483648
	streq	r1, [r2]
	ldreq	r1, [r2, #4]
	biceq	r1, r1, #3
	streq	r1, [r2, #4]
	b	.LBB0_5
.LBB0_5:                                @ %return
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_sigmask, .Ltmp0-pthread_sigmask
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
