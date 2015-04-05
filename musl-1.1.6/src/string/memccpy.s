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
	.file	"src/string/memccpy.bc"
	.globl	memccpy
	.align	2
	.type	memccpy,%function
memccpy:                                @ @memccpy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	eor	r4, r1, r0
	and	r12, r2, #255
	tst	r4, #3
	beq	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	mov	r2, r3
	b	.LBB0_3
.LBB0_3:                                @ %for.cond29.preheader
	cmp	r2, #0
	beq	.LBB0_14
	b	.LBB0_4
.LBB0_4:                                @ %land.rhs31
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r1]
	cmp	r3, r12
	strb	r3, [r0]
	addne	r0, r0, #1
	addne	r1, r1, #1
	subsne	r2, r2, #1
	bne	.LBB0_4
	b	.LBB0_14
.LBB0_5:                                @ %for.cond.preheader
	ands	r2, r1, #3
	mov	lr, r2
	movne	lr, #1
	cmp	r3, #0
	beq	.LBB0_11
	b	.LBB0_6
.LBB0_6:                                @ %for.cond.preheader
	cmp	r2, #0
	beq	.LBB0_12
	b	.LBB0_7
.LBB0_7:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r1]
	strb	r2, [r0]
	cmp	r2, r12
	beq	.LBB0_14
	b	.LBB0_8
.LBB0_8:                                @ %for.inc
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r1, r1, #1
	add	r0, r0, #1
	sub	r2, r3, #1
	ands	r4, r1, #3
	b	.LBB0_9
.LBB0_9:                                @ %for.inc
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	lr, r4
	movne	lr, #1
	cmp	r3, #1
	beq	.LBB0_13
	b	.LBB0_10
.LBB0_10:                               @ %for.inc
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r3, r2
	cmp	r4, #0
	bne	.LBB0_7
	b	.LBB0_13
.LBB0_11:
	mov	r2, r3
	b	.LBB0_13
.LBB0_12:
	mov	r2, r3
	b	.LBB0_13
.LBB0_13:                               @ %for.end
	cmp	lr, #0
	beq	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %tail
	ldrb	r2, [r1]
	mov	r1, #0
	cmp	r2, r12
	addeq	r1, r0, #1
	mov	r0, r1
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.LBB0_15:                               @ %if.end
	ldr	r3, .LCPI0_3
	cmp	r2, #4
	blo	.LBB0_3
	b	.LBB0_16
.LCPI0_3:
	.long	16843009                @ 0x1010101
.LBB0_16:
	mul	lr, r12, r3
	b	.LBB0_17
.LBB0_17:                               @ %land.rhs16
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1]
	ldr	r5, .LCPI0_4
	eor	r4, r3, lr
	add	r5, r4, r5
	b	.LBB0_18
.LCPI0_4:
	.long	4278124287              @ 0xfefefeff
.LBB0_18:                               @ %land.rhs16
                                        @   in Loop: Header=BB0_17 Depth=1
	bic	r4, r5, r4
	ldr	r5, .LCPI0_5
	tst	r4, r5
	bne	.LBB0_3
	b	.LBB0_19
.LCPI0_5:
	.long	2155905152              @ 0x80808080
.LBB0_19:                               @ %for.body22
                                        @   in Loop: Header=BB0_17 Depth=1
	sub	r2, r2, #4
	str	r3, [r0], #4
	add	r1, r1, #4
	cmp	r2, #3
	bhi	.LBB0_17
	b	.LBB0_3
.Ltmp0:
	.size	memccpy, .Ltmp0-memccpy
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
