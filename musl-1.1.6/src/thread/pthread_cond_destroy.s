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
	.file	"src/thread/pthread_cond_destroy.bc"
	.globl	pthread_cond_destroy
	.align	2
	.type	pthread_cond_destroy,%function
pthread_cond_destroy:                   @ @pthread_cond_destroy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r5, r0
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                @ %land.lhs.true
	mov	r4, r5
	ldr	r0, [r4, #12]!
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_3
.LBB0_3:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	orr	r1, r0, #-2147483648
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_4
.LBB0_4:                                @ %a_or.exit
	add	r5, r5, #8
	b	.LBB0_5
.LBB0_5:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5]
	mov	r2, r5
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_5
	b	.LBB0_6
.LBB0_6:                                @ %a_inc.exit
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mvn	r2, #-2147483648
	b	.LBB0_7
.LBB0_7:                                @ %a_inc.exit
	mvn	r3, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_9
.LBB0_9:                                @ %while.cond.preheader
	ldr	r2, [r4]
	tst	r2, r3
	beq	.LBB0_12
	b	.LBB0_10
.LBB0_10:
	mvn	r5, #-2147483648
	b	.LBB0_11
.LBB0_11:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, #0
	mov	r3, #0
	bl	__wait
	ldr	r2, [r4]
	tst	r2, r5
	bne	.LBB0_11
	b	.LBB0_12
.LBB0_12:                               @ %if.end
	mov	r0, #0
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_cond_destroy, .Ltmp0-pthread_cond_destroy
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
