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
	.file	"src/thread/pthread_atfork.bc"
	.globl	__fork_handler
	.align	2
	.type	__fork_handler,%function
__fork_handler:                         @ @__fork_handler
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r5, .LCPI0_0
	mov	r4, r0
	ldr	r6, [r5]
	cmp	r6, #0
	beq	.LBB0_15
	b	.LBB0_2
.LCPI0_0:
	.long	_MergedGlobals
.LBB0_2:                                @ %if.end
	cmp	r4, #0
	blt	.LBB0_10
	b	.LBB0_3
.LBB0_3:                                @ %for.body9
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r4, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %land.lhs.true16
                                        @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [r6, #8]
	b	.LBB0_6
.LBB0_5:                                @ %land.lhs.true
                                        @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [r6, #4]
	b	.LBB0_6
.LBB0_6:                                @ %land.lhs.true16
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then18
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	lr, pc
	mov	pc, r0
	b	.LBB0_8
.LBB0_8:                                @ %if.end21
                                        @   in Loop: Header=BB0_3 Depth=1
	str	r6, [r5]
	ldr	r6, [r6, #12]
	cmp	r6, #0
	bne	.LBB0_3
	b	.LBB0_9
.LBB0_9:                                @ %for.end23
	add	r0, r5, #4
	pop	{r4, r5, r6, lr}
	b	__unlock
.LBB0_10:                               @ %if.then1
	add	r0, r5, #4
	bl	__lock
	ldr	r4, [r5]
	b	.LBB0_12
.LBB0_11:                               @ %if.end6
                                        @   in Loop: Header=BB0_12 Depth=1
	str	r4, [r5]
	ldr	r4, [r4, #16]
	b	.LBB0_12
.LBB0_12:                               @ %if.then1
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r4, #0
	beq	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               @ %for.body
                                        @   in Loop: Header=BB0_12 Depth=1
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_14
.LBB0_14:                               @ %if.then4
                                        @   in Loop: Header=BB0_12 Depth=1
	mov	lr, pc
	mov	pc, r0
	b	.LBB0_11
.LBB0_15:                               @ %if.end24
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__fork_handler, .Ltmp0-__fork_handler
	.cantunwind
	.fnend

	.globl	pthread_atfork
	.align	2
	.type	pthread_atfork,%function
pthread_atfork:                         @ @pthread_atfork
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r6, r0
	mov	r0, #20
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r8, r2
	mov	r9, r1
	bl	malloc
	mov	r4, r0
	mvn	r5, #0
	cmp	r4, #0
	beq	.LBB1_7
	b	.LBB1_4
.LBB1_4:                                @ %if.end
	ldr	r7, .LCPI1_0
	add	r0, r7, #4
	bl	__lock
	ldr	r0, [r7]
	b	.LBB1_5
.LCPI1_0:
	.long	_MergedGlobals
.LBB1_5:                                @ %if.end
	mov	r5, #0
	stm	r4, {r6, r9}
	str	r8, [r4, #8]
	str	r5, [r4, #12]
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	str	r0, [r4, #16]
	ldr	r0, [r7]
	cmp	r0, #0
	strne	r4, [r0, #12]
	str	r4, [r7], #4
	mov	r0, r7
	bl	__unlock
	b	.LBB1_7
.LBB1_7:                                @ %return
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	pthread_atfork, .Ltmp1-pthread_atfork
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,12,4
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
