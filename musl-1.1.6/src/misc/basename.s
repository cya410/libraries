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
	.file	"src/misc/basename.bc"
	.globl	basename
	.align	2
	.type	basename,%function
basename:                               @ @basename
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI0_0
	cmp	r4, #0
	ldrbne	r1, [r4]
	cmpne	r1, #0
	beq	.LBB0_11
	b	.LBB0_2
.LCPI0_0:
	.long	.L.str
.LBB0_2:                                @ %if.end
	mov	r0, r4
	bl	strlen
	subs	r1, r0, #1
	mov	r0, #0
	beq	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r4, r1]
	cmp	r0, #47
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %for.body
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, #0
	strb	r0, [r4, r1]
	subs	r1, r1, #1
	bne	.LBB0_3
	b	.LBB0_6
.LBB0_5:
	mov	r0, r1
	b	.LBB0_6
.LBB0_6:                                @ %for.cond5.preheader
	sub	r1, r4, #1
	b	.LBB0_7
.LBB0_7:                                @ %for.cond5
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, #0
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %land.rhs7
                                        @   in Loop: Header=BB0_7 Depth=1
	ldrb	r2, [r1, r0]
	sub	r0, r0, #1
	cmp	r2, #47
	bne	.LBB0_7
	b	.LBB0_9
.LBB0_9:                                @ %land.rhs7.for.end17_crit_edge
	add	r2, r0, #1
	b	.LBB0_10
.LBB0_10:                               @ %for.end17
	add	r0, r4, r2
	b	.LBB0_11
.LBB0_11:                               @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	basename, .Ltmp0-basename
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2


	.weak	__xpg_basename
__xpg_basename = basename
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
