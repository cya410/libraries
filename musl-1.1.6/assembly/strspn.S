.section strspn_text
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
	.file	"src/string/strspn.bc"
	.globl	strspn
	.align	2
	.type	strspn,%function
.section bb0_0
strspn:                                 @ @strspn
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	mov	r2, #0
	str	r2, [sp, #28]
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	str	r2, [sp, #24]
	str	r2, [sp, #20]
	str	r2, [sp, #16]
	str	r2, [sp, #12]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r2, [sp, #8]
	str	r2, [sp, #4]
	str	r2, [sp]
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.LBB0_15
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	ldrb	r2, [r1, #1]
	cmp	r2, #0
	beq	.LBB0_12
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.rhs.preheader
	add	r2, r1, #1
	mov	lr, sp
	mov	r12, #1
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	and	r1, r3, #224
	and	r3, r3, #31
	ldr	r4, [lr, r1, lsr #3]
	orr	r3, r4, r12, lsl r3
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.rhs
                                        @   in Loop: Header=BB0_6 Depth=1
	str	r3, [lr, r1, lsr #3]
	ldrb	r3, [r2], #1
	cmp	r3, #0
	bne	.LBB0_6
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.cond18.preheader
	ldrb	r3, [r0]
	mov	r2, r0
	cmp	r3, #0
	beq	.LBB0_11
	b	.LBB0_9
.section bb0_9
.LBB0_9:
	mov	r12, #1
	mov	r2, r0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %land.rhs21
                                        @ =>This Inner Loop Header: Depth=1
	and	r1, r3, #224
	and	r3, r3, #31
	ldr	r1, [lr, r1, lsr #3]
	tst	r1, r12, lsl r3
	ldrbne	r3, [r2, #1]!
	cmpne	r3, #0
	bne	.LBB0_10
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.end33
	sub	r2, r2, r0
	b	.LBB0_15
.section bb0_12
.LBB0_12:                               @ %for.cond.preheader
	sub	r1, r0, #1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r1, #1]!
	cmp	r2, r3
	beq	.LBB0_13
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.end
	sub	r2, r1, r0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %return
	mov	r0, r2
	add	sp, sp, #32
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	strspn, .Ltmp0-strspn
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
