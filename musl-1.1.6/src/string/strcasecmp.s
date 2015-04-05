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
	.file	"src/string/strcasecmp.bc"
	.globl	strcasecmp
	.align	2
	.type	strcasecmp,%function
strcasecmp:                             @ @strcasecmp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	mov	r7, #0
	ldrb	r0, [r5]
	b	.LBB0_4
.LBB0_3:                                @ %for.inc
                                        @   in Loop: Header=BB0_4 Depth=1
	ldrb	r0, [r5, #1]!
	add	r4, r4, #1
	b	.LBB0_4
.LBB0_4:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                @ %land.lhs.true
                                        @   in Loop: Header=BB0_4 Depth=1
	ldrb	r1, [r4]
	cmp	r1, #0
	beq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %land.rhs
                                        @   in Loop: Header=BB0_4 Depth=1
	and	r2, r0, #255
	cmp	r2, r1
	beq	.LBB0_3
	b	.LBB0_7
.LBB0_7:                                @ %lor.rhs
                                        @   in Loop: Header=BB0_4 Depth=1
	bl	tolower
	mov	r6, r0
	ldrb	r0, [r4]
	bl	tolower
	cmp	r6, r0
	beq	.LBB0_3
	b	.LBB0_8
.LBB0_8:                                @ %lor.rhs.for.end_crit_edge
	ldrb	r7, [r5]
	b	.LBB0_10
.LBB0_9:
	mov	r7, r0
	b	.LBB0_10
.LBB0_10:                               @ %for.end
	and	r0, r7, #255
	bl	tolower
	mov	r5, r0
	ldrb	r0, [r4]
	bl	tolower
	sub	r0, r5, r0
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strcasecmp, .Ltmp0-strcasecmp
	.cantunwind
	.fnend

	.globl	__strcasecmp_l
	.align	2
	.type	__strcasecmp_l,%function
__strcasecmp_l:                         @ @__strcasecmp_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	mov	r7, #0
	ldrb	r0, [r5]
	b	.LBB1_4
.LBB1_3:                                @ %for.inc.i
                                        @   in Loop: Header=BB1_4 Depth=1
	ldrb	r0, [r5, #1]!
	add	r4, r4, #1
	b	.LBB1_4
.LBB1_4:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #0
	beq	.LBB1_10
	b	.LBB1_5
.LBB1_5:                                @ %land.lhs.true.i
                                        @   in Loop: Header=BB1_4 Depth=1
	ldrb	r1, [r4]
	cmp	r1, #0
	beq	.LBB1_9
	b	.LBB1_6
.LBB1_6:                                @ %land.rhs.i
                                        @   in Loop: Header=BB1_4 Depth=1
	and	r2, r0, #255
	cmp	r2, r1
	beq	.LBB1_3
	b	.LBB1_7
.LBB1_7:                                @ %lor.rhs.i
                                        @   in Loop: Header=BB1_4 Depth=1
	bl	tolower
	mov	r6, r0
	ldrb	r0, [r4]
	bl	tolower
	cmp	r6, r0
	beq	.LBB1_3
	b	.LBB1_8
.LBB1_8:                                @ %lor.rhs.for.end_crit_edge.i
	ldrb	r7, [r5]
	b	.LBB1_10
.LBB1_9:
	mov	r7, r0
	b	.LBB1_10
.LBB1_10:                               @ %strcasecmp.exit
	and	r0, r7, #255
	bl	tolower
	mov	r5, r0
	ldrb	r0, [r4]
	bl	tolower
	sub	r0, r5, r0
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__strcasecmp_l, .Ltmp1-__strcasecmp_l
	.cantunwind
	.fnend


	.weak	strcasecmp_l
strcasecmp_l = __strcasecmp_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
