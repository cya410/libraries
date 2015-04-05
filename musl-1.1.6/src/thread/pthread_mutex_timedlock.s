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
	.file	"src/thread/pthread_mutex_timedlock.bc"
	.globl	__pthread_mutex_timedlock
	.align	2
	.type	__pthread_mutex_timedlock,%function
__pthread_mutex_timedlock:              @ @__pthread_mutex_timedlock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r0
	mov	r8, r1
	ldr	r4, [r9]
	tst	r4, #15
	bne	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                @ %land.lhs.true
	add	r4, r9, #4
	mov	r5, #0
	b	.LBB0_5
.LBB0_5:                                @ %for.cond.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #16
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_6
.LBB0_6:                                @ %if.end.i
                                        @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_7
.LBB0_7:                                @ %if.end.loopexit
	ldr	r4, [r9]
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	mov	r0, r9
	bl	pthread_mutex_trylock
	mov	r5, r0
	cmp	r5, #16
	bne	.LBB0_28
	b	.LBB0_9
.LBB0_9:                                @ %while.cond.preheader
	mov	r0, #128
	add	r6, r9, #8
	add	r7, r9, #4
	bic	r10, r0, r4
	mvn	r0, #99
	b	.LBB0_10
.LBB0_10:                               @ %land.lhs.true13
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r7]
	cmp	r1, #0
	beq	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               @ %land.rhs
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r6]
	cmp	r1, #0
	bne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %while.body
                                        @   in Loop: Header=BB0_10 Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	adds	r0, r0, #1
	bne	.LBB0_10
	b	.LBB0_13
.LBB0_13:                               @ %while.cond22.preheader
	mov	r0, r9
	bl	pthread_mutex_trylock
	mov	r5, r0
	cmp	r5, #16
	bne	.LBB0_28
	b	.LBB0_14
.LBB0_14:
	mov	r11, #0
	b	.LBB0_15
.LBB0_15:                               @ %while.body25
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_19 Depth 2
                                        @     Child Loop BB0_21 Depth 2
                                        @     Child Loop BB0_25 Depth 2
	ldr	r4, [r7]
	cmp	r4, #0
	beq	.LBB0_27
	b	.LBB0_16
.LBB0_16:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [r9]
	tst	r4, #1073741824
	andsne	r1, r0, #4
	bne	.LBB0_27
	b	.LBB0_17
.LBB0_17:                               @ %if.end39
                                        @   in Loop: Header=BB0_15 Depth=1
	and	r0, r0, #3
	cmp	r0, #2
	bne	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               @ %land.lhs.true45
                                        @   in Loop: Header=BB0_15 Depth=1
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	mov	r5, #35
	ldr	r0, [r1, #-160]
	bic	r1, r4, #-2147483648
	cmp	r1, r0
	beq	.LBB0_28
	b	.LBB0_19
.LBB0_19:                               @ %do.body.i.i
                                        @   Parent Loop BB0_15 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6]
	mov	r2, r6
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_19
	b	.LBB0_20
.LBB0_20:                               @ %a_inc.exit
                                        @   in Loop: Header=BB0_15 Depth=1
	orr	r5, r4, #-2147483648
	b	.LBB0_21
.LBB0_21:                               @ %for.cond.i96
                                        @   Parent Loop BB0_15 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r4
	mov	r1, r5
	mov	r2, r7
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               @ %if.end.i98
                                        @   in Loop: Header=BB0_21 Depth=2
	ldr	r0, [r7]
	cmp	r0, r4
	beq	.LBB0_21
	b	.LBB0_23
.LBB0_23:                               @ %a_cas.exit100
                                        @   in Loop: Header=BB0_15 Depth=1
	mov	r0, r7
	mov	r1, r5
	mov	r2, #0
	mov	r3, r8
	b	.LBB0_24
.LBB0_24:                               @ %a_cas.exit100
                                        @   in Loop: Header=BB0_15 Depth=1
	str	r11, [sp]
	str	r11, [sp, #4]
	str	r10, [sp, #8]
	bl	__timedwait
	mov	r5, r0
	b	.LBB0_25
.LBB0_25:                               @ %do.body.i.i104
                                        @   Parent Loop BB0_15 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6]
	mov	r2, r6
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_25
	b	.LBB0_26
.LBB0_26:                               @ %a_dec.exit
                                        @   in Loop: Header=BB0_15 Depth=1
	orr	r0, r5, #4
	cmp	r0, #4
	bne	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               @ %while.cond22.backedge
                                        @   in Loop: Header=BB0_15 Depth=1
	mov	r0, r9
	bl	pthread_mutex_trylock
	mov	r5, r0
	cmp	r5, #16
	beq	.LBB0_15
	b	.LBB0_28
.LBB0_28:                               @ %return
	mov	r0, r5
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_mutex_timedlock, .Ltmp0-__pthread_mutex_timedlock
	.cantunwind
	.fnend

	.hidden	__a_cas

	.weak	pthread_mutex_timedlock
pthread_mutex_timedlock = __pthread_mutex_timedlock
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
