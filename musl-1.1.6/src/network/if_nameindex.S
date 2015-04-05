.section if_nameindex_text
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
	.file	"src/network/if_nameindex.bc"
	.globl	if_nameindex
	.align	2
	.type	if_nameindex,%function
.section bb0_0
if_nameindex:                           @ @if_nameindex
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#280
	sub	sp, sp, #280
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	add	r1, sp, #4
	mov	r0, #1
	bl	pthread_setcancelstate
	add	r5, sp, #8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r1, #0
	mov	r2, #272
	mov	r9, #0
	mov	r0, r5
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	bl	memset
	ldr	r2, .LCPI0_0
	mov	r0, #0
	mov	r1, #2
	b	.LBB0_6
.LCPI0_0:
	.long	netlink_msg_to_nameindex
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r3, r5
	bl	__rtnetlink_enumerate
	cmp	r0, #0
	blt	.LBB0_15
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #16]
	add	r0, r1, r0, lsl #3
	add	r0, r0, #8
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	bl	malloc
	mov	r9, r0
	cmp	r9, #0
	beq	.LBB0_15
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end6
	ldr	r7, [sp, #8]
	mov	r8, r9
	cmp	r7, #0
	beq	.LBB0_14
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.body.lr.ph
	ldr	r0, [sp, #20]
	add	r8, r9, r7, lsl #3
	mov	r10, #0
	mov	r4, r9
	add	r5, r8, #8
	add	r6, r0, #4
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6]
	add	r1, r6, #5
	stm	r4, {r0, r5}
	mov	r0, r5
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.body
                                        @   in Loop: Header=BB0_11 Depth=1
	ldrb	r2, [r6, #4]
	bl	memcpy
	ldrb	r0, [r6, #4]
	add	r4, r4, #8
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.body
                                        @   in Loop: Header=BB0_11 Depth=1
	add	r6, r6, #28
	subs	r7, r7, #1
	strb	r10, [r5, r0]!
	add	r5, r5, #1
	bne	.LBB0_11
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.end
	mov	r0, #0
	str	r0, [r8]
	str	r0, [r8, #4]
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %err
	ldr	r0, [sp, #4]
	mov	r1, #0
	bl	pthread_setcancelstate
	ldr	r0, [sp, #20]
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %err
	bl	free
	bl	__errno_location
	mov	r1, #105
	str	r1, [r0]
	mov	r0, r9
	add	sp, sp, #280
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	if_nameindex, .Ltmp0-if_nameindex
	.cantunwind
	.fnend

	.align	2
	.type	netlink_msg_to_nameindex,%function
.section bb1_0
netlink_msg_to_nameindex:               @ @netlink_msg_to_nameindex
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r4, r0
	ldrh	r0, [r1, #4]
	add	r7, r1, #24
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r9, #0
	cmp	r0, #16
	ldr	r0, [r1]
	addeq	r7, r1, #32
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	add	r0, r1, r0
	sub	r2, r0, r7
	cmp	r2, #4
	blo	.LBB1_28
	b	.LBB1_6
.section bb1_6
.LBB1_6:
	ldr	r5, [r1, #20]
	mov	r1, #1020
	orr	r1, r1, #130048
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrh	r10, [r7]
	ldrh	r2, [r7, #2]
	cmp	r2, #3
	beq	.LBB1_9
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %for.inc
                                        @   in Loop: Header=BB1_7 Depth=1
	add	r2, r10, #3
	and	r2, r2, r1
	add	r7, r7, r2
	sub	r2, r0, r7
	cmp	r2, #3
	bhi	.LBB1_7
	b	.LBB1_28
.section bb1_9
.LBB1_9:                                @ %if.end14
	sub	r6, r10, #5
	cmp	r6, #16
	bgt	.LBB1_28
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.end20
	asr	r0, r5, #31
	add	r1, r4, #16
	add	r0, r5, r0, lsr #26
	str	r1, [sp, #4]            @ 4-byte Spill
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.end20
	bic	r0, r0, #63
	sub	r0, r5, r0
	str	r0, [sp]                @ 4-byte Spill
	ldr	r0, [r1, r0, lsl #2]
	cmp	r0, #0
	beq	.LBB1_17
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %while.body.lr.ph
	add	r1, r7, #4
	str	r1, [sp, #8]            @ 4-byte Spill
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r11, [r4, #12]
	sub	r0, r0, #1
	rsb	r8, r0, r0, lsl #3
	add	r0, r11, r8, lsl #2
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %while.body
                                        @   in Loop: Header=BB1_13 Depth=1
	ldr	r1, [r0, #4]
	cmp	r1, r5
	ldrbeq	r1, [r0, #8]
	cmpeq	r1, r6
	bne	.LBB1_16
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %land.lhs.true30
                                        @   in Loop: Header=BB1_13 Depth=1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	add	r0, r0, #9
	mov	r2, r6
	bl	memcmp
	cmp	r0, #0
	beq	.LBB1_28
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.end35
                                        @   in Loop: Header=BB1_13 Depth=1
	ldr	r0, [r11, r8, lsl #2]
	cmp	r0, #0
	bne	.LBB1_13
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %while.end
	ldm	r4, {r0, r1}
	cmp	r0, r1
	bhs	.LBB1_19
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %while.end.if.end54_crit_edge
	ldr	r8, [r4, #12]
	b	.LBB1_23
.section bb1_19
.LBB1_19:                               @ %if.then38
	mov	r0, #1
	cmp	r1, #0
	mvn	r9, #0
	orr	r11, r0, r1, lsl #1
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %if.then38
	ldr	r0, .LCPI1_0
	moveq	r11, #8
	cmp	r11, r0
	bhi	.LBB1_28
	b	.LBB1_21
.LCPI1_0:
	.long	153391689               @ 0x9249249
.section bb1_21
.LBB1_21:                               @ %if.end45
	ldr	r0, [r4, #12]
	rsb	r1, r11, r11, lsl #3
	lsl	r1, r1, #2
	bl	realloc
	mov	r8, r0
	cmp	r8, #0
	beq	.LBB1_28
	b	.LBB1_22
.section bb1_22
.LBB1_22:                               @ %if.end51
	str	r8, [r4, #12]
	str	r11, [r4, #4]
	ldr	r0, [r4]
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %if.end54
	sub	r9, r10, #4
	rsb	r10, r0, r0, lsl #3
	ldr	r11, [sp]               @ 4-byte Reload
	add	r1, r7, #4
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %if.end54
	mov	r2, r6
	add	r0, r8, r10, lsl #2
	str	r5, [r0, #4]
	strb	r6, [r0, #8]
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %if.end54
	add	r0, r0, #9
	bl	memcpy
	ldr	r0, [r4, #8]
	ldr	r2, [sp, #4]            @ 4-byte Reload
	b	.LBB1_26
.section bb1_26
.LBB1_26:                               @ %if.end54
	add	r0, r9, r0
	mov	r9, #0
	str	r0, [r4, #8]
	ldr	r0, [r4]
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %if.end54
	add	r0, r0, #1
	str	r0, [r4]
	ldr	r1, [r2, r11, lsl #2]
	str	r1, [r8, r10, lsl #2]
	str	r0, [r2, r11, lsl #2]
	b	.LBB1_28
.section bb1_28
.LBB1_28:                               @ %return
	mov	r0, r9
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	netlink_msg_to_nameindex, .Ltmp1-netlink_msg_to_nameindex
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
