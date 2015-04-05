.section dn_expand_text
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
	.file	"src/network/dn_expand.bc"
	.globl	__dn_expand
	.align	2
	.type	__dn_expand,%function
.section bb0_0
__dn_expand:                            @ @__dn_expand
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
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mvn	r12, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	cmp	r2, r1
	beq	.LBB0_22
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r7, [sp, #44]
	cmp	r7, #1
	ldrge	r0, [sp, #4]            @ 4-byte Reload
	subge	r0, r1, r0
	cmpge	r0, #1
	blt	.LBB0_22
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body.lr.ph
	cmp	r7, #254
	mvn	r11, #0
	mov	r10, #0
	mov	r5, r3
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.body.lr.ph
	movgt	r7, #254
	add	r7, r3, r7
	str	r7, [sp]                @ 4-byte Spill
	mov	r7, r2
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_17 Depth 2
	ldrb	lr, [r7]
	tst	lr, #192
	beq	.LBB0_11
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then4
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r6, r7, #1
	mvn	r12, #0
	cmp	r6, r1
	beq	.LBB0_22
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end9
                                        @   in Loop: Header=BB0_7 Depth=1
	ldrb	r6, [r6]
	mov	r4, #16128
	and	r4, r4, lr, lsl #8
	orr	r6, r6, r4
	cmp	r6, r0
	bge	.LBB0_22
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end28
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r4, [sp, #4]            @ 4-byte Reload
	add	r7, r7, #2
	cmp	r11, #0
	sublt	r11, r7, r2
	add	r6, r4, r6
	mov	r7, r6
	b	.LBB0_20
.section bb0_11
.LBB0_11:                               @ %if.else
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	lr, #0
	beq	.LBB0_21
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then31
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r5, r3
	add	r9, r7, #1
	mov	r8, r3
	mvn	r12, #0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then31
                                        @   in Loop: Header=BB0_7 Depth=1
	movne	r6, #46
	sub	r4, r1, r9
	strbne	r6, [r5], #1
	ldrbne	lr, [r7]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then31
                                        @   in Loop: Header=BB0_7 Depth=1
	movne	r8, r5
	cmp	lr, r4
	ldrlt	r4, [sp]                @ 4-byte Reload
	sublt	r4, r4, r8
	cmplt	lr, r4
	bge	.LBB0_22
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %while.cond.preheader
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	lr, #0
	beq	.LBB0_19
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %while.body.preheader
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r12, r3
	rsb	r5, lr, #0
	mov	r3, r8
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %while.body
                                        @   Parent Loop BB0_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r6, r9
	add	r9, r7, #2
	adds	r5, r5, #1
	ldrb	r4, [r6]
	mov	r7, r6
	strb	r4, [r3], #1
	bne	.LBB0_17
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %while.cond.for.inc.loopexit_crit_edge
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r5, r8, lr
	mov	r7, r9
	mov	r3, r12
	b	.LBB0_20
.section bb0_19
.LBB0_19:                               @   in Loop: Header=BB0_7 Depth=1
	mov	r7, r9
	mov	r5, r8
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.inc
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r10, r10, #2
	mvn	r12, #0
	cmp	r10, r0
	blt	.LBB0_7
	b	.LBB0_22
.section bb0_21
.LBB0_21:                               @ %if.else54
	mov	r0, #0
	cmp	r11, #0
	strb	r0, [r5]
	add	r0, r7, #1
	sublt	r11, r0, r2
	mov	r12, r11
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %return
	mov	r0, r12
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__dn_expand, .Ltmp0-__dn_expand
	.cantunwind
	.fnend


	.weak	dn_expand
dn_expand = __dn_expand
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
