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
	.file	"src/thread/pthread_rwlock_unlock.bc"
	.globl	pthread_rwlock_unlock
	.align	2
	.type	pthread_rwlock_unlock,%function
pthread_rwlock_unlock:                  @ @pthread_rwlock_unlock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4]
	ldr	r8, [r4, #8]
	b	.LBB0_3
.LBB0_3:                                @ %do.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_6 Depth 2
	mov	r6, r0
	mov	r0, #0
	ldr	r9, [r4, #4]
	bic	r5, r6, #-2147483648
	b	.LBB0_4
.LBB0_4:                                @ %do.body
                                        @   in Loop: Header=BB0_3 Depth=1
	sub	r7, r6, #1
	cmn	r5, #-2147483647
	mov	r1, r5
	moveq	r0, #1
	b	.LBB0_5
.LBB0_5:                                @ %do.body
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r5, #1
	movne	r1, #0
	orrs	r0, r0, r1
	movne	r7, #0
	b	.LBB0_6
.LBB0_6:                                @ %for.cond.i
                                        @   Parent Loop BB0_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r6
	mov	r1, r7
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.end.i
                                        @   in Loop: Header=BB0_6 Depth=2
	ldr	r0, [r4]
	cmp	r0, r6
	beq	.LBB0_6
	b	.LBB0_3
.LBB0_8:                                @ %do.end
	cmp	r7, #0
	bne	.LBB0_14
	b	.LBB0_9
.LBB0_9:                                @ %land.lhs.true
	cmp	r6, #0
	blt	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %land.lhs.true
	cmp	r9, #0
	beq	.LBB0_14
	b	.LBB0_11
.LBB0_11:                               @ %if.then
	mov	r1, #1
	cmp	r8, #128
	mov	r7, #240
	mov	r0, r4
	b	.LBB0_12
.LBB0_12:                               @ %if.then
	mov	r2, r5
	movne	r1, #129
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, r5
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_14
.LBB0_14:                               @ %if.end
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_rwlock_unlock, .Ltmp0-pthread_rwlock_unlock
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
