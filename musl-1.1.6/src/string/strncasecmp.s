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
	.file	"src/string/strncasecmp.bc"
	.globl	strncasecmp
	.align	2
	.type	strncasecmp,%function
strncasecmp:                            @ @strncasecmp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB0_14
	b	.LBB0_3
.LBB0_3:                                @ %for.cond.preheader
	ldrb	r0, [r5]
	mov	r8, #0
	cmp	r0, #0
	beq	.LBB0_13
	b	.LBB0_4
.LBB0_4:                                @ %land.lhs.true.lr.ph
	rsb	r7, r2, #1
	b	.LBB0_5
.LBB0_5:                                @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, #0
	beq	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                @ %land.lhs.true
                                        @   in Loop: Header=BB0_5 Depth=1
	ldrb	r1, [r4]
	cmp	r1, #0
	beq	.LBB0_11
	b	.LBB0_7
.LBB0_7:                                @ %land.rhs
                                        @   in Loop: Header=BB0_5 Depth=1
	and	r2, r0, #255
	cmp	r2, r1
	beq	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %lor.rhs
                                        @   in Loop: Header=BB0_5 Depth=1
	bl	tolower
	mov	r6, r0
	ldrb	r0, [r4]
	bl	tolower
	cmp	r6, r0
	bne	.LBB0_12
	b	.LBB0_9
.LBB0_9:                                @ %for.inc
                                        @   in Loop: Header=BB0_5 Depth=1
	ldrb	r0, [r5, #1]!
	add	r7, r7, #1
	add	r4, r4, #1
	cmp	r0, #0
	bne	.LBB0_5
	b	.LBB0_13
.LBB0_10:
	mov	r8, r0
	b	.LBB0_13
.LBB0_11:
	mov	r8, r0
	b	.LBB0_13
.LBB0_12:                               @ %lor.rhs.for.end_crit_edge
	ldrb	r8, [r5]
	b	.LBB0_13
.LBB0_13:                               @ %for.end
	and	r0, r8, #255
	bl	tolower
	mov	r5, r0
	ldrb	r0, [r4]
	bl	tolower
	sub	r0, r5, r0
	b	.LBB0_14
.LBB0_14:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	strncasecmp, .Ltmp0-strncasecmp
	.cantunwind
	.fnend

	.globl	__strncasecmp_l
	.align	2
	.type	__strncasecmp_l,%function
__strncasecmp_l:                        @ @__strncasecmp_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB1_14
	b	.LBB1_3
.LBB1_3:                                @ %for.cond.preheader.i
	ldrb	r0, [r5]
	mov	r8, #0
	cmp	r0, #0
	beq	.LBB1_13
	b	.LBB1_4
.LBB1_4:                                @ %land.lhs.true.lr.ph.i
	rsb	r7, r2, #1
	b	.LBB1_5
.LBB1_5:                                @ %land.lhs.true.i
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, #0
	beq	.LBB1_10
	b	.LBB1_6
.LBB1_6:                                @ %land.lhs.true.i
                                        @   in Loop: Header=BB1_5 Depth=1
	ldrb	r1, [r4]
	cmp	r1, #0
	beq	.LBB1_11
	b	.LBB1_7
.LBB1_7:                                @ %land.rhs.i
                                        @   in Loop: Header=BB1_5 Depth=1
	and	r2, r0, #255
	cmp	r2, r1
	beq	.LBB1_9
	b	.LBB1_8
.LBB1_8:                                @ %lor.rhs.i
                                        @   in Loop: Header=BB1_5 Depth=1
	bl	tolower
	mov	r6, r0
	ldrb	r0, [r4]
	bl	tolower
	cmp	r6, r0
	bne	.LBB1_12
	b	.LBB1_9
.LBB1_9:                                @ %for.inc.i
                                        @   in Loop: Header=BB1_5 Depth=1
	ldrb	r0, [r5, #1]!
	add	r7, r7, #1
	add	r4, r4, #1
	cmp	r0, #0
	bne	.LBB1_5
	b	.LBB1_13
.LBB1_10:
	mov	r8, r0
	b	.LBB1_13
.LBB1_11:
	mov	r8, r0
	b	.LBB1_13
.LBB1_12:                               @ %lor.rhs.for.end_crit_edge.i
	ldrb	r8, [r5]
	b	.LBB1_13
.LBB1_13:                               @ %for.end.i
	and	r0, r8, #255
	bl	tolower
	mov	r5, r0
	ldrb	r0, [r4]
	bl	tolower
	sub	r0, r5, r0
	b	.LBB1_14
.LBB1_14:                               @ %strncasecmp.exit
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	__strncasecmp_l, .Ltmp1-__strncasecmp_l
	.cantunwind
	.fnend


	.weak	strncasecmp_l
strncasecmp_l = __strncasecmp_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
