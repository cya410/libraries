.section memchr_text
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
	.file	"src/string/memchr.bc"
	.globl	memchr
	.align	2
	.type	memchr,%function
.section bb0_0
memchr:                                 @ @memchr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	cmp	r2, #0
	mov	r3, r2
	and	r12, r1, #255
	movne	r3, #1
	beq	.LBB0_5
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	ands	r1, r0, #3
	beq	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.rhs
                                        @   in Loop: Header=BB0_2 Depth=1
	ldrb	r1, [r0]
	cmp	r1, r12
	beq	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.inc
                                        @   in Loop: Header=BB0_2 Depth=1
	cmp	r2, #1
	mov	r3, #0
	sub	r2, r2, #1
	add	r0, r0, #1
	movne	r3, #1
	bne	.LBB0_2
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.end
	mov	r1, #0
	cmp	r3, #1
	bne	.LBB0_17
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.lhs.true6
	ldrb	r1, [r0]
	cmp	r1, r12
	bne	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:
	mov	r1, r2
	b	.LBB0_17
.section bb0_8
.LBB0_8:                                @ %if.then
	ldr	r3, .LCPI0_3
	cmp	r2, #4
	blo	.LBB0_13
	b	.LBB0_9
.LCPI0_3:
	.long	16843009                @ 0x1010101
.section bb0_9
.LBB0_9:
	mul	lr, r12, r3
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %land.rhs13
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0]
	ldr	r1, .LCPI0_4
	eor	r3, r3, lr
	add	r1, r3, r1
	b	.LBB0_11
.LCPI0_4:
	.long	4278124287              @ 0xfefefeff
.section bb0_11
.LBB0_11:                               @ %land.rhs13
                                        @   in Loop: Header=BB0_10 Depth=1
	bic	r1, r1, r3
	ldr	r3, .LCPI0_5
	tst	r1, r3
	bne	.LBB0_14
	b	.LBB0_12
.LCPI0_5:
	.long	2155905152              @ 0x80808080
.section bb0_12
.LBB0_12:                               @ %for.inc20
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r2, r2, #4
	add	r0, r0, #4
	cmp	r2, #3
	bhi	.LBB0_10
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.end23
	mov	r1, #0
	cmp	r2, #0
	beq	.LBB0_17
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %land.rhs26
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r0]
	cmp	r1, r12
	beq	.LBB0_16
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.inc32
                                        @   in Loop: Header=BB0_14 Depth=1
	subs	r2, r2, #1
	add	r0, r0, #1
	mov	r1, #0
	bne	.LBB0_14
	b	.LBB0_17
.section bb0_16
.LBB0_16:
	mov	r1, r2
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end
	cmp	r1, #0
	moveq	r0, r1
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	memchr, .Ltmp0-memchr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
