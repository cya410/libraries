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
	.file	"src/network/dns_parse.bc"
	.globl	__dns_parse
	.align	2
	.type	__dns_parse,%function
__dns_parse:                            @ @__dns_parse
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, r1
	mov	r5, r0
	mov	r10, r3
	mvn	r0, #0
	cmp	r7, #12
	blt	.LBB0_36
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	ldrb	r1, [r5, #3]
	tst	r1, #15
	bne	.LBB0_35
	b	.LBB0_5
.LBB0_5:                                @ %if.end2
	ldrb	r4, [r5, #4]
	ldrb	r1, [r5, #5]
	ldrb	r6, [r5, #6]
	ldrb	r3, [r5, #7]
	b	.LBB0_6
.LBB0_6:                                @ %if.end2
	orr	r8, r1, r4, lsl #8
	orr	r9, r3, r6, lsl #8
	add	r1, r9, r8
	cmp	r1, #64
	bgt	.LBB0_36
	b	.LBB0_7
.LBB0_7:                                @ %while.cond.preheader
	mov	r12, r2
	add	r4, r5, #12
	cmp	r8, #0
	beq	.LBB0_18
	b	.LBB0_8
.LBB0_8:                                @ %while.cond19.preheader.lr.ph
	add	r1, r7, r5
	sub	r1, r1, #6
	b	.LBB0_9
.LBB0_9:                                @ %while.cond19.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_11 Depth 2
	mov	r3, r4
	ldrb	r2, [r3], -r5
	cmp	r3, r7
	bge	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               @ %land.rhs.preheader
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r3, r4, #1
	b	.LBB0_11
.LBB0_11:                               @ %land.rhs
                                        @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r6, r2, #255
	sub	r6, r6, #1
	cmp	r6, #126
	bhi	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %while.body25
                                        @   in Loop: Header=BB0_11 Depth=2
	sub	r6, r3, r5
	ldrb	r2, [r3], #1
	cmp	r6, r7
	blt	.LBB0_11
	b	.LBB0_13
.LBB0_13:                               @ %land.rhs.while.end.loopexit_crit_edge
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r4, r3, #1
	b	.LBB0_14
.LBB0_14:                               @ %while.end
                                        @   in Loop: Header=BB0_9 Depth=1
	and	r3, r2, #255
	cmp	r3, #193
	bhi	.LBB0_37
	b	.LBB0_15
.LBB0_15:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_9 Depth=1
	ldrbeq	r3, [r4, #1]
	cmpeq	r3, #255
	beq	.LBB0_37
	b	.LBB0_16
.LBB0_16:                               @ %lor.lhs.false36
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r4, r1
	bhi	.LBB0_37
	b	.LBB0_17
.LBB0_17:                               @ %if.end42
                                        @   in Loop: Header=BB0_9 Depth=1
	tst	r2, #255
	mov	r2, #5
	sub	r8, r8, #1
	movne	r2, #6
	cmp	r8, #0
	add	r4, r4, r2
	bne	.LBB0_9
	b	.LBB0_18
.LBB0_18:                               @ %while.cond48.preheader
	cmp	r9, #0
	beq	.LBB0_35
	b	.LBB0_19
.LBB0_19:                               @ %while.cond52.preheader.lr.ph
	add	r0, r5, r7
	str	r9, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #8]            @ 4-byte Spill
	sub	r0, r0, #6
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB0_20
.LBB0_20:                               @ %while.cond52.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_22 Depth 2
	mov	r1, r4
	ldrb	r0, [r1], -r5
	cmp	r1, r7
	bge	.LBB0_25
	b	.LBB0_21
.LBB0_21:                               @ %land.rhs58.preheader
                                        @   in Loop: Header=BB0_20 Depth=1
	add	r1, r4, #1
	b	.LBB0_22
.LBB0_22:                               @ %land.rhs58
                                        @   Parent Loop BB0_20 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r2, r0, #255
	sub	r2, r2, #1
	cmp	r2, #126
	bhi	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               @ %while.body64
                                        @   in Loop: Header=BB0_22 Depth=2
	sub	r2, r1, r5
	ldrb	r0, [r1], #1
	cmp	r2, r7
	blt	.LBB0_22
	b	.LBB0_24
.LBB0_24:                               @ %land.rhs58.while.end66.loopexit_crit_edge
                                        @   in Loop: Header=BB0_20 Depth=1
	sub	r4, r1, #1
	b	.LBB0_25
.LBB0_25:                               @ %while.end66
                                        @   in Loop: Header=BB0_20 Depth=1
	and	r1, r0, #255
	cmp	r1, #193
	bhi	.LBB0_37
	b	.LBB0_26
.LBB0_26:                               @ %lor.lhs.false70
                                        @   in Loop: Header=BB0_20 Depth=1
	ldrbeq	r1, [r4, #1]
	cmpeq	r1, #255
	beq	.LBB0_37
	b	.LBB0_27
.LBB0_27:                               @ %lor.lhs.false79
                                        @   in Loop: Header=BB0_20 Depth=1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r4, r1
	bhi	.LBB0_37
	b	.LBB0_28
.LBB0_28:                               @ %if.end85
                                        @   in Loop: Header=BB0_20 Depth=1
	tst	r0, #255
	mov	r0, #1
	movne	r0, #2
	orr	r1, r0, #8
	b	.LBB0_29
.LBB0_29:                               @ %if.end85
                                        @   in Loop: Header=BB0_20 Depth=1
	ldrb	r2, [r4, r1]
	add	r1, r0, r4
	ldrb	r3, [r1, #9]
	orr	r9, r3, r2, lsl #8
	b	.LBB0_30
.LBB0_30:                               @ %if.end85
                                        @   in Loop: Header=BB0_20 Depth=1
	ldr	r3, [sp, #8]            @ 4-byte Reload
	add	r2, r9, r0
	add	r2, r4, r2
	cmp	r2, r3
	bhi	.LBB0_37
	b	.LBB0_31
.LBB0_31:                               @ %if.end104
                                        @   in Loop: Header=BB0_20 Depth=1
	ldrb	r1, [r1, #1]
	add	r11, r0, #10
	mov	r8, r12
	mov	r0, r10
	b	.LBB0_32
.LBB0_32:                               @ %if.end104
                                        @   in Loop: Header=BB0_20 Depth=1
	mov	r3, r9
	str	r5, [sp]
	add	r2, r4, r11
	mov	r6, r8
	b	.LBB0_33
.LBB0_33:                               @ %if.end104
                                        @   in Loop: Header=BB0_20 Depth=1
	mov	lr, pc
	mov	pc, r6
	mov	r12, r8
	cmp	r0, #0
	blt	.LBB0_37
	b	.LBB0_34
.LBB0_34:                               @ %if.end111
                                        @   in Loop: Header=BB0_20 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	subs	r0, r0, #1
	str	r0, [sp, #16]           @ 4-byte Spill
	add	r0, r11, r9
	add	r4, r4, r0
	bne	.LBB0_20
	b	.LBB0_35
.LBB0_35:
	mov	r0, #0
	b	.LBB0_36
.LBB0_36:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_37:
	mvn	r0, #0
	b	.LBB0_36
.Ltmp0:
	.size	__dns_parse, .Ltmp0-__dns_parse
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
