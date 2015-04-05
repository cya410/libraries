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
	.file	"src/search/hsearch.bc"
	.globl	hcreate
	.align	2
	.type	hcreate,%function
hcreate:                                @ @hcreate
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r1, .LCPI0_0
	b	__hcreate_r
.LCPI0_0:
	.long	htab
.Ltmp0:
	.size	hcreate, .Ltmp0-hcreate
	.cantunwind
	.fnend

	.globl	__hcreate_r
	.align	2
	.type	__hcreate_r,%function
__hcreate_r:                            @ @__hcreate_r
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r0, #1
	mov	r1, #12
	bl	calloc
	mov	r1, r0
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r0, #0
	str	r1, [r4]
	cmp	r1, #0
	beq	.LBB1_6
	b	.LBB1_4
.LBB1_4:                                @ %if.end
	mov	r0, r5
	mov	r1, r4
	bl	resize
	cmp	r0, #0
	bne	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %if.then3
	ldr	r0, [r4]
	bl	free
	mov	r0, #0
	str	r0, [r4]
	b	.LBB1_6
.LBB1_6:                                @ %return
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__hcreate_r, .Ltmp1-__hcreate_r
	.cantunwind
	.fnend

	.globl	hdestroy
	.align	2
	.type	hdestroy,%function
hdestroy:                               @ @hdestroy
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	ldr	r0, .LCPI2_0
	b	__hdestroy_r
.LCPI2_0:
	.long	htab
.Ltmp2:
	.size	hdestroy, .Ltmp2-hdestroy
	.cantunwind
	.fnend

	.globl	__hdestroy_r
	.align	2
	.type	__hdestroy_r,%function
__hdestroy_r:                           @ @__hdestroy_r
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB3_3
	b	.LBB3_2
.LBB3_2:                                @ %if.then
	ldr	r0, [r0]
	bl	free
	ldr	r0, [r4]
	b	.LBB3_3
.LBB3_3:                                @ %if.end
	bl	free
	mov	r0, #0
	str	r0, [r4]
	pop	{r4, lr}
	mov	pc, lr
.Ltmp3:
	.size	__hdestroy_r, .Ltmp3-__hdestroy_r
	.cantunwind
	.fnend

	.globl	hsearch
	.align	2
	.type	hsearch,%function
hsearch:                                @ @hsearch
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	r3, .LCPI4_0
	str	r3, [sp]
	b	.LBB4_2
.LCPI4_0:
	.long	htab
.LBB4_2:                                @ %entry
	add	r3, sp, #4
	bl	__hsearch_r
	ldr	r0, [sp, #4]
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	hsearch, .Ltmp4-hsearch
	.cantunwind
	.fnend

	.globl	__hsearch_r
	.align	2
	.type	__hsearch_r,%function
__hsearch_r:                            @ @__hsearch_r
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	b	.LBB5_2
.LBB5_2:                                @ %entry
	mov	r5, r0
	ldr	r8, [sp, #32]
	b	.LBB5_3
.LBB5_3:                                @ %entry
	mov	r10, r3
	mov	r6, r2
	mov	r9, r1
	mov	r7, #0
	ldrb	r0, [r5]
	cmp	r0, #0
	beq	.LBB5_6
	b	.LBB5_4
.LBB5_4:                                @ %while.body.i.preheader
	add	r1, r5, #1
	mov	r7, #0
	b	.LBB5_5
.LBB5_5:                                @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r0, #255
	rsb	r2, r7, r7, lsl #5
	add	r7, r2, r0
	ldrb	r0, [r1], #1
	cmp	r0, #0
	bne	.LBB5_5
	b	.LBB5_6
.LBB5_6:                                @ %keyhash.exit
	mov	r0, r5
	mov	r1, r7
	mov	r2, r8
	bl	lookup
	b	.LBB5_7
.LBB5_7:                                @ %keyhash.exit
	mov	r4, r0
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.LBB5_13
	b	.LBB5_8
.LBB5_8:                                @ %if.end
	cmp	r6, #0
	beq	.LBB5_15
	b	.LBB5_9
.LBB5_9:                                @ %if.end6
	stm	r4, {r5, r9}
	ldr	r1, [r8]
	ldr	r0, [r1, #8]
	add	r0, r0, #1
	b	.LBB5_10
.LBB5_10:                               @ %if.end6
	str	r0, [r1, #8]
	ldr	r1, [r1, #4]
	sub	r1, r1, r1, lsr #2
	cmp	r0, r1
	bls	.LBB5_13
	b	.LBB5_11
.LBB5_11:                               @ %if.then11
	lsl	r0, r0, #1
	mov	r1, r8
	bl	resize
	cmp	r0, #0
	beq	.LBB5_16
	b	.LBB5_12
.LBB5_12:                               @ %if.end20
	mov	r0, r5
	mov	r1, r7
	mov	r2, r8
	bl	lookup
	mov	r4, r0
	b	.LBB5_13
.LBB5_13:                               @ %if.end23
	mov	r0, #1
	str	r4, [r10]
	b	.LBB5_14
.LBB5_14:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.LBB5_15:                               @ %if.then5
	mov	r0, #0
	str	r0, [r10]
	b	.LBB5_14
.LBB5_16:                               @ %if.then16
	ldr	r0, [r8]
	ldr	r1, [r0, #8]
	sub	r1, r1, #1
	str	r1, [r0, #8]
	mov	r0, #0
	str	r0, [r4]
	str	r0, [r10]
	b	.LBB5_14
.Ltmp5:
	.size	__hsearch_r, .Ltmp5-__hsearch_r
	.cantunwind
	.fnend

	.align	2
	.type	resize,%function
resize:                                 @ @resize
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB6_1
.LBB6_1:                                @ %entry
	b	.LBB6_2
.LBB6_2:                                @ %entry
	mov	r10, r1
	cmp	r0, #-2147483648
	b	.LBB6_3
.LBB6_3:                                @ %entry
	ldr	r1, [r10]
	movhi	r0, #-2147483648
	ldr	r9, [r1]
	ldr	r1, [r1, #4]
	add	r7, r1, #1
	mov	r1, #8
	b	.LBB6_4
.LBB6_4:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r6, r1
	lsl	r1, r6, #1
	cmp	r6, r0
	blo	.LBB6_4
	b	.LBB6_5
.LBB6_5:                                @ %for.end
	mov	r0, r6
	mov	r1, #8
	bl	calloc
	ldr	r1, [r10]
	cmp	r0, #0
	str	r0, [r1]
	beq	.LBB6_19
	b	.LBB6_6
.LBB6_6:                                @ %if.end13
	sub	r0, r6, #1
	mov	r8, #1
	cmp	r9, #0
	str	r0, [r1, #4]
	beq	.LBB6_20
	b	.LBB6_7
.LBB6_7:                                @ %for.cond19.preheader
	cmp	r7, #1
	blt	.LBB6_18
	b	.LBB6_8
.LBB6_8:
	add	r0, r9, r7, lsl #3
	mov	r1, r9
	b	.LBB6_9
.LBB6_9:                                @ %for.body21
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_12 Depth 2
                                        @     Child Loop BB6_15 Depth 2
	ldr	r7, [r1]
	cmp	r7, #0
	beq	.LBB6_17
	b	.LBB6_10
.LBB6_10:                               @ %if.then23
                                        @   in Loop: Header=BB6_9 Depth=1
	ldrb	r3, [r7]
	mov	r2, #0
	cmp	r3, #0
	beq	.LBB6_13
	b	.LBB6_11
.LBB6_11:                               @ %while.body.i.preheader
                                        @   in Loop: Header=BB6_9 Depth=1
	add	r7, r7, #1
	mov	r2, #0
	b	.LBB6_12
.LBB6_12:                               @ %while.body.i
                                        @   Parent Loop BB6_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r3, r3, #255
	rsb	r2, r2, r2, lsl #5
	add	r2, r2, r3
	ldrb	r3, [r7], #1
	cmp	r3, #0
	bne	.LBB6_12
	b	.LBB6_13
.LBB6_13:                               @ %for.cond26.preheader
                                        @   in Loop: Header=BB6_9 Depth=1
	ldr	r3, [r10]
	ldm	r3, {r6, r7}
	and	r5, r7, r2
	mov	r3, r6
	ldr	r4, [r3, r5, lsl #3]!
	mov	r5, #1
	b	.LBB6_15
.LBB6_14:                               @ %for.inc36
                                        @   in Loop: Header=BB6_15 Depth=2
	add	r2, r5, r2
	mov	r3, r6
	add	r5, r5, #1
	and	r4, r7, r2
	ldr	r4, [r3, r4, lsl #3]!
	b	.LBB6_15
.LBB6_15:                               @ %for.inc36
                                        @   Parent Loop BB6_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r4, #0
	bne	.LBB6_14
	b	.LBB6_16
.LBB6_16:                               @ %for.end37
                                        @   in Loop: Header=BB6_9 Depth=1
	ldm	r1, {r2, r7}
	stm	r3, {r2, r7}
	b	.LBB6_17
.LBB6_17:                               @ %for.inc39
                                        @   in Loop: Header=BB6_9 Depth=1
	add	r1, r1, #8
	cmp	r1, r0
	blo	.LBB6_9
	b	.LBB6_18
.LBB6_18:                               @ %for.end40
	mov	r0, r9
	bl	free
	b	.LBB6_20
.LBB6_19:                               @ %if.then10
	str	r9, [r1]
	mov	r8, #0
	b	.LBB6_20
.LBB6_20:                               @ %return
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp6:
	.size	resize, .Ltmp6-resize
	.cantunwind
	.fnend

	.align	2
	.type	lookup,%function
lookup:                                 @ @lookup
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB7_1
.LBB7_1:                                @ %entry
	b	.LBB7_2
.LBB7_2:                                @ %entry
	mov	r4, r2
	mov	r8, r0
	mov	r5, r1
	ldr	r0, [r4]
	b	.LBB7_3
.LBB7_3:                                @ %entry
	ldr	r7, [r0]
	ldr	r0, [r0, #4]
	and	r0, r0, r5
	ldr	r0, [r7, r0, lsl #3]!
	cmp	r0, #0
	beq	.LBB7_8
	b	.LBB7_4
.LBB7_4:
	mov	r6, #1
	b	.LBB7_5
.LBB7_5:                                @ %lor.lhs.false
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r8
	bl	strcmp
	cmp	r0, #0
	ldrne	r0, [r4]
	b	.LBB7_6
.LBB7_6:                                @ %lor.lhs.false
                                        @   in Loop: Header=BB7_5 Depth=1
	addne	r5, r5, r6
	addne	r6, r6, #1
	ldrne	r7, [r0]
	ldrne	r0, [r0, #4]
	b	.LBB7_7
.LBB7_7:                                @ %lor.lhs.false
                                        @   in Loop: Header=BB7_5 Depth=1
	andne	r0, r0, r5
	ldrne	r0, [r7, r0, lsl #3]!
	cmpne	r0, #0
	bne	.LBB7_5
	b	.LBB7_8
.LBB7_8:                                @ %for.end
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp7:
	.size	lookup, .Ltmp7-lookup
	.cantunwind
	.fnend

	.type	htab,%object            @ @htab
	.local	htab
	.comm	htab,12,4

	.weak	hcreate_r
hcreate_r = __hcreate_r
	.weak	hdestroy_r
hdestroy_r = __hdestroy_r
	.weak	hsearch_r
hsearch_r = __hsearch_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
