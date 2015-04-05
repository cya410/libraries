.section a64l_text
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
	.file	"src/misc/a64l.bc"
	.globl	a64l
	.align	2
	.type	a64l,%function
.section bb0_0
a64l:                                   @ @a64l
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r6, .LCPI0_0
	mov	r5, r0
	mov	r4, #0
	mov	r7, #0
	b	.LBB0_3
.LCPI0_0:
	.long	digits
.section bb0_3
.LBB0_3:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r5]
	cmp	r1, #0
	beq	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.body
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, r6
	bl	strchr
	sub	r0, r0, r6
	add	r5, r5, #1
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body
                                        @   in Loop: Header=BB0_3 Depth=1
	orr	r4, r4, r0, lsl r7
	add	r7, r7, #6
	cmp	r7, #36
	blt	.LBB0_3
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.end
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	a64l, .Ltmp0-a64l
	.cantunwind
	.fnend

	.globl	l64a
	.align	2
	.type	l64a,%function
.section bb1_0
l64a:                                   @ @l64a
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r1, .LCPI1_2
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_1
.LCPI1_2:
	.long	l64a.s
.section bb1_1
.LBB1_1:
	ldr	r12, .LCPI1_4
	mov	r3, #0
	b	.LBB1_2
.LCPI1_4:
	.long	digits
.section bb1_2
.LBB1_2:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	and	r2, r0, #63
	cmp	r3, r0, lsr #6
	ldrb	r2, [r12, r2]
	strb	r2, [r1], #1
	lsr	r2, r0, #6
	mov	r0, r2
	bne	.LBB1_2
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %for.end
	mov	r0, #0
	strb	r0, [r1]
	ldr	r0, .LCPI1_3
	mov	pc, lr
.LCPI1_3:
	.long	l64a.s
.Ltmp1:
	.size	l64a, .Ltmp1-l64a
	.cantunwind
	.fnend

	.type	digits,%object          @ @digits
	.section	.rodata,"a",%progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	l64a.s,%object          @ @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
