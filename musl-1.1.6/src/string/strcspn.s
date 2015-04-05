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
	.file	"src/string/strcspn.bc"
	.globl	strcspn
	.align	2
	.type	strcspn,%function
strcspn:                                @ @strcspn
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r6, r1
	mov	r4, r0
	ldrb	r1, [r6]
	cmp	r1, #0
	ldrbne	r0, [r6, #1]
	cmpne	r0, #0
	bne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	mov	r0, r4
	bl	__strchrnul
	b	.LBB0_13
.LBB0_4:                                @ %if.end
	mov	r5, sp
	mov	r1, #0
	mov	r2, #32
	mov	r0, r5
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	bl	memset
	ldrb	r0, [r6]
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %land.rhs.preheader
	add	r1, r6, #1
	mov	r2, #1
	b	.LBB0_7
.LBB0_7:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	and	r3, r0, #224
	and	r0, r0, #31
	ldr	r6, [r5, r3, lsr #3]
	orr	r0, r6, r2, lsl r0
	b	.LBB0_8
.LBB0_8:                                @ %land.rhs
                                        @   in Loop: Header=BB0_7 Depth=1
	str	r0, [r5, r3, lsr #3]
	ldrb	r0, [r1], #1
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_9
.LBB0_9:                                @ %for.cond10.preheader
	ldrb	r1, [r4]
	mov	r0, r4
	cmp	r1, #0
	beq	.LBB0_13
	b	.LBB0_10
.LBB0_10:
	mov	r2, #1
	mov	r0, r4
	b	.LBB0_11
.LBB0_11:                               @ %land.rhs13
                                        @ =>This Inner Loop Header: Depth=1
	and	r3, r1, #224
	and	r1, r1, #31
	ldr	r3, [r5, r3, lsr #3]
	tst	r3, r2, lsl r1
	bne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %for.inc23
                                        @   in Loop: Header=BB0_11 Depth=1
	ldrb	r1, [r0, #1]!
	cmp	r1, #0
	bne	.LBB0_11
	b	.LBB0_13
.LBB0_13:                               @ %for.end25
	sub	r0, r0, r4
	add	sp, sp, #32
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	strcspn, .Ltmp0-strcspn
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
