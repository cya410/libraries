.section tre-mem_text
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
	.file	"src/regex/tre-mem.bc"
	.globl	__tre_mem_new_impl
	.align	2
	.type	__tre_mem_new_impl,%function
.section bb0_0
__tre_mem_new_impl:                     @ @__tre_mem_new_impl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r4, r1
	cmp	r0, #0
	beq	.LBB0_2
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %if.end
	mov	r0, r4
	mov	r1, #0
	mov	r2, #24
	bl	memset
	mov	r0, r4
	pop	{r4, lr}
	mov	pc, lr
.section bb0_2
.LBB0_2:                                @ %if.else
	mov	r0, #1
	mov	r1, #24
	pop	{r4, lr}
	b	calloc
.Ltmp0:
	.size	__tre_mem_new_impl, .Ltmp0-__tre_mem_new_impl
	.cantunwind
	.fnend

	.globl	__tre_mem_destroy
	.align	2
	.type	__tre_mem_destroy,%function
.section bb1_0
__tre_mem_destroy:                      @ @__tre_mem_destroy
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r4, r0
	ldr	r5, [r4]
	cmp	r5, #0
	beq	.LBB1_4
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5]
	bl	free
	ldr	r6, [r5, #4]
	mov	r0, r5
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %while.body
                                        @   in Loop: Header=BB1_2 Depth=1
	bl	free
	mov	r5, r6
	cmp	r6, #0
	bne	.LBB1_2
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %while.end
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	free
.Ltmp1:
	.size	__tre_mem_destroy, .Ltmp1-__tre_mem_destroy
	.cantunwind
	.fnend

	.globl	__tre_mem_alloc_impl
	.align	2
	.type	__tre_mem_alloc_impl,%function
.section bb2_0
__tre_mem_alloc_impl:                   @ @__tre_mem_alloc_impl
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r4, r0
	mov	r8, r3
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r7, r2
	mov	r5, #0
	ldr	r0, [r4, #16]
	cmp	r0, #0
	bne	.LBB2_21
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.end
	ldr	r6, [sp, #32]
	ldr	r9, [r4, #12]
	cmp	r9, r6
	bhs	.LBB2_8
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %if.then1
	cmp	r1, #0
	beq	.LBB2_9
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %if.then3
	cmp	r7, #0
	beq	.LBB2_20
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %if.end7
	mov	r9, #1024
	b	.LBB2_14
.section bb2_8
.LBB2_8:                                @ %if.end.if.end39_crit_edge
	ldr	r7, [r4, #8]
	b	.LBB2_15
.section bb2_9
.LBB2_9:                                @ %if.else
	lsl	r0, r6, #3
	mov	r9, #1024
	cmp	r0, #1024
	mov	r0, #8
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.else
	lslhi	r9, r6, #3
	bl	malloc
	mov	r10, r0
	cmp	r10, #0
	beq	.LBB2_20
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.end18
	mov	r0, r9
	bl	malloc
	mov	r7, r0
	str	r7, [r10]
	cmp	r7, #0
	beq	.LBB2_19
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.end24
	mov	r0, #0
	str	r0, [r10, #4]
	ldr	r0, [r4, #4]
	cmp	r0, #0
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.end24
	strne	r10, [r0, #4]
	ldr	r0, [r4]
	cmp	r0, #0
	streq	r10, [r4]
	str	r10, [r4, #4]
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.end39
	str	r7, [r4, #8]
	str	r9, [r4, #12]
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %if.end39
	add	r0, r7, r6
	ands	r0, r0, #3
	rsb	r0, r0, #4
	addne	r6, r6, r0
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %if.end39
	cmp	r8, #0
	add	r0, r7, r6
	sub	r1, r9, r6
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	beq	.LBB2_18
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %if.then51
	mov	r0, r7
	mov	r1, #0
	mov	r2, r6
	bl	memset
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %return
	mov	r5, r7
	b	.LBB2_21
.section bb2_19
.LBB2_19:                               @ %if.then22
	mov	r0, r10
	bl	free
	b	.LBB2_20
.section bb2_20
.LBB2_20:                               @ %if.then5
	mov	r0, #1
	str	r0, [r4, #16]
	b	.LBB2_21
.section bb2_21
.LBB2_21:                               @ %return
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp2:
	.size	__tre_mem_alloc_impl, .Ltmp2-__tre_mem_alloc_impl
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
