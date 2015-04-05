.section getenv_text
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
	.file	"src/env/getenv.bc"
	.globl	getenv
	.align	2
	.type	getenv,%function
.section bb0_0
getenv:                                 @ @getenv
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	strlen
	ldr	r8, .LCPI0_0
	b	.LBB0_3
.LCPI0_0:
	.long	__environ
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r6, #0
	ldr	r0, [r8]
	cmp	r0, #0
	ldrbne	r0, [r5]
	cmpne	r0, #0
	beq	.LBB0_11
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %lor.lhs.false2
	mov	r0, r5
	mov	r1, #61
	bl	strchr
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.cond.preheader
	ldr	r0, [r8]
	mov	r6, #0
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.LBB0_11
	b	.LBB0_6
.section bb0_6
.LBB0_6:
	mov	r7, #0
	mov	r6, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r2, r4
	bl	strncmp
	ldr	r1, [r8]
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %lor.rhs
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r0, [r1, r7]
	ldrb	r2, [r0, r4]
	cmp	r2, #61
	beq	.LBB0_10
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.inc
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r0, r1, r7
	add	r7, r7, #4
	ldr	r1, [r0, #4]
	cmp	r1, #0
	bne	.LBB0_7
	b	.LBB0_11
.section bb0_10
.LBB0_10:                               @ %for.end
	cmp	r0, #0
	mov	r6, #0
	addne	r0, r4, r0
	addne	r6, r0, #1
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	getenv, .Ltmp0-getenv
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
