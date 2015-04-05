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
	.file	"src/string/strverscmp.bc"
	.globl	strverscmp
	.align	2
	.type	strverscmp,%function
strverscmp:                             @ @strverscmp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldrb	r5, [r1]
	ldrb	lr, [r0]
	cmp	lr, r5
	bne	.LBB0_11
	b	.LBB0_2
.LBB0_2:                                @ %while.body.lr.ph
	mov	r12, #1
	b	.LBB0_3
.LBB0_3:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r3, r12
	mov	r2, #0
	tst	lr, #255
	beq	.LBB0_23
	b	.LBB0_4
.LBB0_4:                                @ %while.body
                                        @   in Loop: Header=BB0_3 Depth=1
	and	r2, lr, #255
	cmp	r2, #48
	bne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then6
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r3, #1
	moveq	r3, #0
	b	.LBB0_8
.LBB0_6:                                @ %if.else
                                        @   in Loop: Header=BB0_3 Depth=1
	sub	r2, lr, #48
	mov	r12, #1
	cmp	r2, #9
	bhi	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.then14
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r3, #1
	moveq	r3, #2
	b	.LBB0_8
.LBB0_8:                                @ %if.end21
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r12, r3
	b	.LBB0_9
.LBB0_9:                                @ %if.end21
                                        @   in Loop: Header=BB0_3 Depth=1
	ldrb	r5, [r1, #1]!
	ldrb	lr, [r0, #1]!
	cmp	lr, r5
	beq	.LBB0_3
	b	.LBB0_10
.LBB0_10:                               @ %while.end
	cmp	r12, #1
	bne	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @ %land.lhs.true
	cmp	r5, #48
	mov	r3, #0
	mov	r2, #0
	movne	r3, #1
	cmp	lr, #48
	movne	r2, #1
	and	r12, r2, r3
	b	.LBB0_12
.LBB0_12:                               @ %if.end32
	sub	r2, lr, #48
	cmp	r2, #9
	bhi	.LBB0_22
	b	.LBB0_13
.LBB0_13:                               @ %land.lhs.true37
	cmp	r12, #0
	beq	.LBB0_22
	b	.LBB0_14
.LBB0_14:                               @ %land.lhs.true37
	sub	r2, r5, #48
	cmp	r2, #9
	bhi	.LBB0_22
	b	.LBB0_15
.LBB0_15:                               @ %while.cond45.preheader
	add	r3, r0, #1
	mov	r4, #0
	mov	r2, lr
	b	.LBB0_17
.LBB0_16:                               @ %while.cond45.while.cond45_crit_edge
                                        @   in Loop: Header=BB0_17 Depth=1
	ldrb	r2, [r3, r4]
	add	r0, r4, #1
	mov	r4, r0
	b	.LBB0_17
.LBB0_17:                               @ %while.cond45
                                        @ =>This Inner Loop Header: Depth=1
	and	r2, r2, #255
	sub	r2, r2, #48
	cmp	r2, #10
	blo	.LBB0_16
	b	.LBB0_18
.LBB0_18:                               @ %while.cond52.preheader
	add	r1, r1, #1
	mov	r3, #0
	mov	r2, r5
	b	.LBB0_20
.LBB0_19:                               @ %while.cond52.while.cond52_crit_edge
                                        @   in Loop: Header=BB0_20 Depth=1
	ldrb	r2, [r1, r3]
	add	r0, r3, #1
	mov	r3, r0
	b	.LBB0_20
.LBB0_20:                               @ %while.cond52
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r2, #255
	sub	r0, r0, #48
	cmp	r0, #9
	bls	.LBB0_19
	b	.LBB0_21
.LBB0_21:                               @ %while.end60
	cmp	r4, r3
	bne	.LBB0_24
	b	.LBB0_22
.LBB0_22:                               @ %if.else72
	sub	r2, lr, r5
	b	.LBB0_23
.LBB0_23:                               @ %return
	mov	r0, r2
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.LBB0_24:                               @ %if.else67
	mvn	r2, #0
	movhi	r2, #1
	b	.LBB0_23
.Ltmp0:
	.size	strverscmp, .Ltmp0-strverscmp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
