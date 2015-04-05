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
	.file	"src/thread/pthread_rwlock_timedrdlock.bc"
	.globl	pthread_rwlock_timedrdlock
	.align	2
	.type	pthread_rwlock_timedrdlock,%function
pthread_rwlock_timedrdlock:             @ @pthread_rwlock_timedrdlock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	mov	r8, r1
                                        @ kill: R0<def> R5<kill>
	bl	pthread_rwlock_tryrdlock
	mov	r7, r0
	cmp	r7, #16
	bne	.LBB0_21
	b	.LBB0_4
.LBB0_4:                                @ %while.cond.preheader
	add	r6, r5, #4
	mvn	r0, #99
	b	.LBB0_5
.LBB0_5:                                @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r5]
	cmp	r1, #0
	beq	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %land.rhs
                                        @   in Loop: Header=BB0_5 Depth=1
	ldr	r1, [r6]
	cmp	r1, #0
	bne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %while.body
                                        @   in Loop: Header=BB0_5 Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	adds	r0, r0, #1
	bne	.LBB0_5
	b	.LBB0_8
.LBB0_8:                                @ %while.cond6.preheader
	mov	r0, r5
	bl	pthread_rwlock_tryrdlock
	mov	r7, r0
	cmp	r7, #16
	bne	.LBB0_21
	b	.LBB0_9
.LBB0_9:
	mov	r9, #0
	b	.LBB0_10
.LBB0_10:                               @ %while.body9
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_12 Depth 2
                                        @     Child Loop BB0_14 Depth 2
                                        @     Child Loop BB0_18 Depth 2
	ldr	r7, [r5]
	cmp	r7, #0
	beq	.LBB0_20
	b	.LBB0_11
.LBB0_11:                               @ %while.body9
                                        @   in Loop: Header=BB0_10 Depth=1
	bic	r0, r7, #-2147483648
	cmn	r0, #-2147483647
	bne	.LBB0_20
	b	.LBB0_12
.LBB0_12:                               @ %do.body.i.i
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6]
	mov	r2, r6
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_12
	b	.LBB0_13
.LBB0_13:                               @ %for.cond.i.preheader
                                        @   in Loop: Header=BB0_10 Depth=1
	orr	r4, r7, #-2147483648
	b	.LBB0_14
.LBB0_14:                               @ %for.cond.i
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r7
	mov	r1, r4
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.end.i
                                        @   in Loop: Header=BB0_14 Depth=2
	ldr	r0, [r5]
	cmp	r0, r7
	beq	.LBB0_14
	b	.LBB0_16
.LBB0_16:                               @ %a_cas.exit
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r5, #8]
	str	r9, [sp]
	str	r9, [sp, #4]
	mov	r1, r4
	b	.LBB0_17
.LBB0_17:                               @ %a_cas.exit
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r2, #0
	mov	r3, r8
	eor	r0, r0, #128
	str	r0, [sp, #8]
	mov	r0, r5
	bl	__timedwait
	mov	r7, r0
	b	.LBB0_18
.LBB0_18:                               @ %do.body.i.i63
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6]
	mov	r2, r6
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_18
	b	.LBB0_19
.LBB0_19:                               @ %a_dec.exit
                                        @   in Loop: Header=BB0_10 Depth=1
	orr	r0, r7, #4
	cmp	r0, #4
	bne	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %while.cond6.backedge
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r5
	bl	pthread_rwlock_tryrdlock
	mov	r7, r0
	cmp	r7, #16
	beq	.LBB0_10
	b	.LBB0_21
.LBB0_21:                               @ %return
	mov	r0, r7
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_rwlock_timedrdlock, .Ltmp0-pthread_rwlock_timedrdlock
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
