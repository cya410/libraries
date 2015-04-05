.section sem_timedwait_text
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
	.file	"src/thread/sem_timedwait.bc"
	.globl	sem_timedwait
	.align	2
	.type	sem_timedwait,%function
.section bb0_0
sem_timedwait:                          @ @sem_timedwait
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r4, r1
	mov	r6, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bl	pthread_testcancel
	mov	r0, r6
	bl	sem_trywait
	mov	r8, #0
	cmp	r0, #0
	beq	.LBB0_17
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %while.cond.preheader
	add	r7, r6, #4
	mvn	r0, #99
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r6]
	cmp	r1, #0
	bgt	.LBB0_8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.rhs
                                        @   in Loop: Header=BB0_5 Depth=1
	ldr	r1, [r7]
	cmp	r1, #0
	bne	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %while.body
                                        @   in Loop: Header=BB0_5 Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	adds	r0, r0, #1
	bne	.LBB0_5
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %while.cond5
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_9 Depth 2
                                        @     Child Loop BB0_10 Depth 2
                                        @     Child Loop BB0_14 Depth 2
	mov	r0, r6
	bl	sem_trywait
	cmp	r0, #0
	beq	.LBB0_17
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %do.body.i.i
                                        @   Parent Loop BB0_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r7]
	mov	r2, r7
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.cond.i
                                        @   Parent Loop BB0_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	mvn	r1, #0
	mov	r2, r6
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end.i
                                        @   in Loop: Header=BB0_10 Depth=2
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %a_cas.exit
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [r6, #8]
	mvn	r1, #0
	mov	r2, #0
	mov	r3, r4
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %a_cas.exit
                                        @   in Loop: Header=BB0_8 Depth=1
	str	r0, [sp, #8]
	ldr	r0, .LCPI0_0
	str	r7, [sp, #4]
	str	r0, [sp]
	mov	r0, r6
	bl	__timedwait
	mov	r5, r0
	b	.LBB0_14
.LCPI0_0:
	.long	cleanup
.section bb0_14
.LBB0_14:                               @ %do.body.i.i43
                                        @   Parent Loop BB0_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r7]
	mov	r2, r7
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %a_dec.exit
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r5, #0
	beq	.LBB0_8
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then25
	bl	__errno_location
	mvn	r8, #0
	str	r5, [r0]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	mov	r0, r8
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	sem_timedwait, .Ltmp0-sem_timedwait
	.cantunwind
	.fnend

	.align	2
	.type	cleanup,%function
.section bb1_0
cleanup:                                @ @cleanup
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r4, r0
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_1
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %a_dec.exit
	pop	{r4, lr}
	mov	pc, lr
.Ltmp1:
	.size	cleanup, .Ltmp1-cleanup
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
