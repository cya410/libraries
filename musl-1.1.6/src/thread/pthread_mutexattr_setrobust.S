.section pthread_mutexattr_setrobust_text
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
	.file	"src/thread/pthread_mutexattr_setrobust.bc"
	.globl	__do_private_robust_list
	.align	2
	.type	__do_private_robust_list,%function
.section bb0_0
__do_private_robust_list:               @ @__do_private_robust_list
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
	@APP
	bl	__a_gettp
	mov	r8, r0
	@NO_APP
	mov	r9, r8
	ldr	r10, [r9, #-52]!
	cmp	r10, #0
	cmpne	r10, r9
	beq	.LBB0_16
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.body.lr.ph.lr.ph
	mov	r0, r9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_6 Depth 2
                                        @       Child Loop BB0_8 Depth 3
	mov	r11, r0
	mov	r0, r10
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.body
                                        @   Parent Loop BB0_5 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_8 Depth 3
	ldr	r10, [r0]
	ldrb	r1, [r0, #-16]
	tst	r1, #128
	bne	.LBB0_15
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then
                                        @   in Loop: Header=BB0_6 Depth=2
	ldr	r7, [r0, #-8]
	str	r10, [r11]
	sub	r4, r0, #12
	ldr	r0, [r8, #-160]
	orr	r6, r0, #1073741824
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %do.body.i
                                        @   Parent Loop BB0_5 Depth=1
                                        @     Parent Loop BB0_6 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r5, [r4]
	mov	r1, r6
	mov	r2, r4
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %a_swap.exit
                                        @   in Loop: Header=BB0_6 Depth=2
	cmp	r7, #0
	bne	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %a_swap.exit
                                        @   in Loop: Header=BB0_6 Depth=2
	cmp	r5, #0
	bge	.LBB0_13
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then15
                                        @   in Loop: Header=BB0_6 Depth=2
	mov	r7, #240
	mov	r0, r4
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_13
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %lor.rhs.i
                                        @   in Loop: Header=BB0_6 Depth=2
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB0_6 Depth=2
	cmp	r10, #0
	beq	.LBB0_16
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB0_6 Depth=2
	mov	r0, r10
	cmp	r10, r9
	bne	.LBB0_6
	b	.LBB0_16
.section bb0_15
.LBB0_15:                               @ %for.cond.outer.loopexit
                                        @   in Loop: Header=BB0_5 Depth=1
	cmp	r10, #0
	cmpne	r10, r9
	bne	.LBB0_5
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %for.end
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__do_private_robust_list, .Ltmp0-__do_private_robust_list
	.cantunwind
	.fnend

	.globl	pthread_mutexattr_setrobust
	.align	2
	.type	pthread_mutexattr_setrobust,%function
.section bb1_0
pthread_mutexattr_setrobust:            @ @pthread_mutexattr_setrobust
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r2, #22
	cmp	r1, #1
	bhi	.LBB1_2
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %if.end
	ldr	r2, [r0]
	bic	r2, r2, #4
	orr	r1, r2, r1, lsl #2
	mov	r2, #0
	str	r1, [r0]
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %return
	mov	r0, r2
	mov	pc, lr
.Ltmp1:
	.size	pthread_mutexattr_setrobust, .Ltmp1-pthread_mutexattr_setrobust
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
