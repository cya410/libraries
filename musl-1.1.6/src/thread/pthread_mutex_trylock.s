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
	.file	"src/thread/pthread_mutex_trylock.bc"
	.globl	__pthread_mutex_trylock_owner
	.align	2
	.type	__pthread_mutex_trylock_owner,%function
__pthread_mutex_trylock_owner:          @ @__pthread_mutex_trylock_owner
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r9, r0
	@APP
	bl	__a_gettp
	mov	r4, r0
	@NO_APP
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r0, [r4, #-48]
	ldr	r6, [r4, #-160]
	ldr	r2, [r9]
	sub	r8, r4, #52
	cmp	r0, #0
	bne	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r7, #82
	mov	r0, r8
	mov	r1, #12
	orr	r7, r7, #256
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	@APP
	svc	#0
	@NO_APP
	str	r8, [r4, #-52]
	mvn	r0, #11
	str	r0, [r4, #-48]
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r7, r9
	and	r0, r2, #3
	ldr	r5, [r7, #4]!
	cmp	r0, #1
	bic	r10, r5, #-2147483648
	cmpeq	r10, r6
	bne	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.then20
	ldr	r1, [r9, #20]
	mov	r0, #11
	cmn	r1, #-2147483646
	addls	r0, r1, #1
	strls	r0, [r9, #20]
	movls	r0, #0
	b	.LBB0_8
.LBB0_8:                                @ %return
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.LBB0_9:                                @ %if.end30
	mov	r0, #131
	cmp	r10, #1073741824
	beq	.LBB0_8
	b	.LBB0_10
.LBB0_10:                               @ %if.end33
	ldrb	r0, [r9]
	tst	r0, #128
	beq	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @ %if.then39
	ldr	r0, [r9, #8]
	add	r1, r9, #16
	str	r1, [r4, #-44]
	cmp	r0, #0
	orrne	r6, r6, #-2147483648
	b	.LBB0_12
.LBB0_12:                               @ %if.end50
	cmp	r10, #0
	beq	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               @ %land.lhs.true52
	tst	r2, #4
	andsne	r0, r5, #1073741824
	beq	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               @ %for.cond.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_17
	b	.LBB0_15
.LBB0_15:                               @ %if.end.i
                                        @   in Loop: Header=BB0_14 Depth=1
	ldr	r0, [r7]
	cmp	r0, r5
	beq	.LBB0_14
	b	.LBB0_16
.LBB0_16:                               @ %if.then63
	mov	r0, #0
	str	r0, [r4, #-44]
	mov	r0, #16
	b	.LBB0_8
.LBB0_17:                               @ %if.end66
	ldr	r1, [r8]
	mov	r0, r9
	str	r1, [r0, #16]!
	cmp	r1, r8
	b	.LBB0_18
.LBB0_18:                               @ %if.end66
	str	r8, [r0, #-4]
	strne	r0, [r1, #-4]
	str	r0, [r4, #-52]
	mov	r0, #0
	cmp	r10, #0
	str	r0, [r4, #-44]
	beq	.LBB0_8
	b	.LBB0_19
.LBB0_19:                               @ %if.then93
	mov	r0, #0
	str	r0, [r9, #20]
	ldr	r0, [r9]
	orr	r0, r0, #8
	str	r0, [r9]
	mov	r0, #130
	b	.LBB0_8
.Ltmp0:
	.size	__pthread_mutex_trylock_owner, .Ltmp0-__pthread_mutex_trylock_owner
	.cantunwind
	.fnend

	.globl	__pthread_mutex_trylock
	.align	2
	.type	__pthread_mutex_trylock,%function
__pthread_mutex_trylock:                @ @__pthread_mutex_trylock
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	ldrb	r1, [r0]
	tst	r1, #15
	beq	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @ %if.end
	pop	{r4, r5, r11, lr}
	b	__pthread_mutex_trylock_owner
.LBB1_3:                                @ %if.then
	add	r4, r0, #4
	b	.LBB1_4
.LBB1_4:                                @ %for.cond.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #16
	mov	r2, r4
	mov	r5, #0
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %if.end.i
                                        @   in Loop: Header=BB1_4 Depth=1
	ldr	r5, [r4]
	cmp	r5, #0
	beq	.LBB1_4
	b	.LBB1_6
.LBB1_6:                                @ %return
	and	r0, r5, #16
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__pthread_mutex_trylock, .Ltmp1-__pthread_mutex_trylock
	.cantunwind
	.fnend

	.hidden	__a_cas

	.weak	pthread_mutex_trylock
pthread_mutex_trylock = __pthread_mutex_trylock
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
