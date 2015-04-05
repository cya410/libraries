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
	.file	"src/string/stpncpy.bc"
	.globl	__stpncpy
	.align	2
	.type	__stpncpy,%function
__stpncpy:                              @ @__stpncpy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	eor	r0, r1, r4
	tst	r0, #3
	bne	.LBB0_11
	b	.LBB0_2
.LBB0_2:                                @ %for.cond.preheader
	cmp	r2, #0
	mov	r0, r2
	movne	r0, #1
	beq	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                @ %for.cond.preheader
                                        @ =>This Inner Loop Header: Depth=1
	ands	r3, r1, #3
	beq	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %land.rhs
                                        @   in Loop: Header=BB0_3 Depth=1
	ldrb	r0, [r1]
	strb	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %for.inc
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r2, #1
	mov	r0, #0
	add	r4, r4, #1
	add	r1, r1, #1
	movne	r0, #1
	subs	r2, r2, #1
	bne	.LBB0_3
	b	.LBB0_6
.LBB0_6:                                @ %for.end
	mov	r3, #0
	cmp	r0, #1
	bne	.LBB0_16
	b	.LBB0_7
.LBB0_7:                                @ %lor.lhs.false
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.LBB0_15
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	cmp	r2, #4
	blo	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @ %land.rhs12
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r1]
	ldr	r3, .LCPI0_2
	add	r3, r0, r3
	bic	r12, r3, r0
	ldr	r3, .LCPI0_3
	tst	r12, r3
	bne	.LBB0_11
	b	.LBB0_10
.LCPI0_2:
	.long	4278124287              @ 0xfefefeff
.LCPI0_3:
	.long	2155905152              @ 0x80808080
.LBB0_10:                               @ %for.body17
                                        @   in Loop: Header=BB0_9 Depth=1
	sub	r2, r2, #4
	str	r0, [r4], #4
	add	r1, r1, #4
	cmp	r2, #3
	bhi	.LBB0_9
	b	.LBB0_11
.LBB0_11:                               @ %for.cond24.preheader
	mov	r3, #0
	cmp	r2, #0
	beq	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               @ %land.rhs26
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r1]
	strb	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               @ %for.inc31
                                        @   in Loop: Header=BB0_12 Depth=1
	add	r4, r4, #1
	add	r1, r1, #1
	subs	r2, r2, #1
	bne	.LBB0_12
	b	.LBB0_16
.LBB0_14:
	mov	r3, r2
	b	.LBB0_16
.LBB0_15:
	mov	r3, r2
	b	.LBB0_16
.LBB0_16:                               @ %tail
	mov	r0, r4
	mov	r1, #0
	mov	r2, r3
	bl	memset
	mov	r0, r4
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__stpncpy, .Ltmp0-__stpncpy
	.cantunwind
	.fnend


	.weak	stpncpy
stpncpy = __stpncpy
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
