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
	.file	"src/thread/pthread_cond_signal.bc"
	.globl	pthread_cond_signal
	.align	2
	.type	pthread_cond_signal,%function
pthread_cond_signal:                    @ @pthread_cond_signal
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                @ %if.end
	ldr	r1, [r0, #12]
	cmp	r1, #0
	beq	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %if.end5
	add	r4, r0, #8
	b	.LBB0_4
.LBB0_4:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_4
	b	.LBB0_5
.LBB0_5:                                @ %a_inc.exit
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_7
.LBB0_7:                                @ %return
	mov	r0, #0
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.LBB0_8:                                @ %if.then
	mov	r1, #1
	pop	{r4, r7, r11, lr}
	b	__private_cond_signal
.Ltmp0:
	.size	pthread_cond_signal, .Ltmp0-pthread_cond_signal
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
