.section pthread_mutex_unlock_text
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
	.file	"src/thread/pthread_mutex_unlock.bc"
	.globl	__pthread_mutex_unlock
	.align	2
	.type	__pthread_mutex_unlock,%function
.section bb0_0
__pthread_mutex_unlock:                 @ @__pthread_mutex_unlock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	ldr	r6, [r5]
	ldr	r8, [r5, #8]
	and	r9, r6, #128
	ands	r11, r6, #15
	beq	.LBB0_9
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	@APP
	bl	__a_gettp
	mov	r7, r0
	@NO_APP
	mov	r4, r5
	mov	r3, #1
	ldr	r0, [r7, #-160]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	ldr	r1, [r4, #4]!
	bic	r1, r1, #-2147483648
	cmp	r1, r0
	bne	.LBB0_21
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	and	r0, r6, #3
	cmp	r0, #1
	bne	.LBB0_10
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.lhs.true
	ldr	r0, [r5, #20]
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then19
	sub	r0, r0, #1
	mov	r3, #0
	str	r0, [r5, #20]
	b	.LBB0_21
.section bb0_9
.LBB0_9:                                @ %entry.if.end39_crit_edge
	add	r4, r5, #4
                                        @ implicit-def: R10
	b	.LBB0_13
.section bb0_10
.LBB0_10:                               @ %if.end23
	sub	r10, r7, #184
	cmp	r9, #0
	beq	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then25
	add	r0, r5, #16
	str	r0, [r7, #-44]
	mov	r0, #1
	bl	__vm_lock_impl
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end28
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #16]
	sub	r2, r7, #52
	cmp	r1, r2
	str	r1, [r0]
	strne	r0, [r1, #-4]
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end39
	mov	r0, #1073741824
	and	r6, r0, r6, lsl #27
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4]
	mov	r1, r6
	mov	r2, r4
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %a_swap.exit
	cmp	r11, #0
	cmpne	r9, #0
	beq	.LBB0_17
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then49
	mov	r0, #0
	str	r0, [r10, #140]
	bl	__vm_unlock_impl
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end52
	mov	r3, #0
	cmp	r8, #0
	bne	.LBB0_19
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end52
	cmp	r5, #0
	bge	.LBB0_21
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then55
	eor	r1, r9, #129
	mov	r7, #240
	mov	r0, r4
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_21
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %return
	mov	r0, r3
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_mutex_unlock, .Ltmp0-__pthread_mutex_unlock
	.cantunwind
	.fnend

	.hidden	__a_cas

	.weak	pthread_mutex_unlock
pthread_mutex_unlock = __pthread_mutex_unlock
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
