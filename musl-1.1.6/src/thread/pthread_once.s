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
	.file	"src/thread/pthread_once.bc"
	.globl	__pthread_once_full
	.align	2
	.type	__pthread_once_full,%function
__pthread_once_full:                    @ @__pthread_once_full
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r5, r1
	mov	r4, r0
	b	.LBB0_4
.LBB0_3:                                @ %sw.bb4
                                        @   in Loop: Header=BB0_4 Depth=1
	mov	r0, r4
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	__wait
	b	.LBB0_4
.LBB0_4:                                @ %entry
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_8 Depth 2
	mov	r0, #0
	mov	r1, #1
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                @ %if.end.i
                                        @   in Loop: Header=BB0_4 Depth=1
	ldr	r0, [r4]
	cmp	r0, #1
	beq	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %if.end.i
                                        @   in Loop: Header=BB0_4 Depth=1
	cmp	r0, #3
	beq	.LBB0_3
	b	.LBB0_7
.LBB0_7:                                @ %if.end.i
                                        @   in Loop: Header=BB0_4 Depth=1
	cmp	r0, #2
	bne	.LBB0_4
	b	.LBB0_16
.LBB0_8:                                @ %for.cond.i15
                                        @   Parent Loop BB0_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #1
	mov	r1, #3
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_9
.LBB0_9:                                @ %if.end.i17
                                        @   in Loop: Header=BB0_8 Depth=2
	ldr	r0, [r4]
	cmp	r0, #1
	beq	.LBB0_8
	b	.LBB0_3
.LBB0_10:                               @ %do.body
	ldr	r1, .LCPI0_0
	add	r6, sp, #4
	mov	r2, r4
	mov	r0, r6
	b	.LBB0_11
.LCPI0_0:
	.long	undo
.LBB0_11:                               @ %do.body
	bl	_pthread_cleanup_push
	mov	lr, pc
	mov	pc, r5
	mov	r0, r6
	mov	r1, #0
	bl	_pthread_cleanup_pop
	b	.LBB0_12
.LBB0_12:                               @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4]
	mov	r1, #2
	mov	r2, r4
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_12
	b	.LBB0_13
.LBB0_13:                               @ %a_swap.exit
	cmp	r5, #3
	bne	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               @ %if.then
	mov	r7, #240
	mov	r0, r4
	mov	r1, #129
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_16
.LBB0_16:                               @ %return
	mov	r0, #0
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_once_full, .Ltmp0-__pthread_once_full
	.cantunwind
	.fnend

	.align	2
	.type	undo,%function
undo:                                   @ @undo
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	mov	r4, r0
	b	.LBB1_1
.LBB1_1:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4]
	mov	r1, #0
	mov	r2, r4
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_1
	b	.LBB1_2
.LBB1_2:                                @ %a_swap.exit
	cmp	r5, #3
	bne	.LBB1_5
	b	.LBB1_3
.LBB1_3:                                @ %if.then
	mov	r7, #240
	mov	r0, r4
	mov	r1, #129
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_5
	b	.LBB1_4
.LBB1_4:                                @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_5
.LBB1_5:                                @ %if.end
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp1:
	.size	undo, .Ltmp1-undo
	.cantunwind
	.fnend

	.globl	__pthread_once
	.align	2
	.type	__pthread_once,%function
__pthread_once:                         @ @__pthread_once
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	ldr	r2, [r0]
	cmp	r2, #2
	bne	.LBB2_2
	b	.LBB2_1
.LBB2_1:                                @ %if.then
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB2_3
.LBB2_2:                                @ %if.end
	bl	__pthread_once_full
	b	.LBB2_3
.LBB2_3:                                @ %return
	mov	r0, #0
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	__pthread_once, .Ltmp2-__pthread_once
	.cantunwind
	.fnend

	.hidden	__a_cas

	.weak	pthread_once
pthread_once = __pthread_once
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
