.section sem_post_text
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
	.file	"src/thread/sem_post.bc"
	.globl	sem_post
	.align	2
	.type	sem_post,%function
.section bb0_0
sem_post:                               @ @sem_post
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4]
	ldr	r8, [r4, #8]
	b	.LBB0_5
.section bb0_2
.LBB0_2:                                @ %do.cond
                                        @   in Loop: Header=BB0_5 Depth=1
	ldr	r7, [r4, #4]
	add	r0, r5, r5, lsr #31
	add	r6, r0, #1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.cond.i
                                        @   Parent Loop BB0_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end.i
                                        @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r4]
	cmp	r0, r5
	beq	.LBB0_3
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %do.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	mov	r5, r0
	cmn	r5, #-2147483647
	bne	.LBB0_2
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then
	bl	__errno_location
	mov	r1, #75
	mvn	r3, #0
	str	r1, [r0]
	b	.LBB0_12
.section bb0_7
.LBB0_7:                                @ %do.end
	mov	r3, #0
	cmp	r5, #0
	blt	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %do.end
	cmp	r7, #0
	beq	.LBB0_12
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then13
	cmp	r8, #0
	mov	r1, #1
	mov	r7, #240
	mov	r0, r4
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then13
	mov	r2, #1
	movne	r1, #129
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %return
	mov	r0, r3
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	sem_post, .Ltmp0-sem_post
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
