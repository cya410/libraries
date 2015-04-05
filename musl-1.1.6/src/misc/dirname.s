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
	.file	"src/misc/dirname.bc"
	.globl	dirname
	.align	2
	.type	dirname,%function
dirname:                                @ @dirname
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r6, .LCPI0_2
	b	.LBB0_2
.LCPI0_2:
	.long	.L.str
.LBB0_2:                                @ %entry
	cmp	r4, #0
	ldrbne	r0, [r4]
	cmpne	r0, #0
	beq	.LBB0_13
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	mov	r0, r4
	bl	strlen
	ldr	r12, .LCPI0_3
	add	r3, r4, r0
	mov	r2, #0
	sub	r1, r3, #1
	b	.LBB0_4
.LCPI0_3:
	.long	.L.str1
.LBB0_4:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r5, [r1, -r2]
	cmp	r5, #47
	bne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %for.body
                                        @   in Loop: Header=BB0_4 Depth=1
	add	r2, r2, #1
	cmp	r0, r2
	bne	.LBB0_4
	b	.LBB0_14
.LBB0_6:                                @ %for.body11.preheader
	rsb	r2, r2, #0
	b	.LBB0_7
.LBB0_7:                                @ %for.body11
                                        @ =>This Inner Loop Header: Depth=1
	add	r5, r0, r2
	cmp	r5, #1
	beq	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                @ %for.inc15
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r5, r3, r2
	sub	r2, r2, #1
	ldrb	r5, [r5, #-2]
	cmp	r5, #47
	bne	.LBB0_7
	b	.LBB0_9
.LBB0_9:                                @ %for.body23.preheader
	sub	r0, r0, #1
	rsb	r2, r2, #0
	add	r3, r4, r0
	b	.LBB0_10
.LBB0_10:                               @ %for.body23
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, r2
	beq	.LBB0_14
	b	.LBB0_11
.LBB0_11:                               @ %for.inc27
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r6, r3, r2
	add	r2, r2, #1
	ldrb	r6, [r6, #-1]
	cmp	r6, #47
	beq	.LBB0_10
	b	.LBB0_12
.LBB0_12:                               @ %for.end29
	sub	r0, r1, r2
	mov	r1, #0
	strb	r1, [r0, #1]
	b	.LBB0_15
.LBB0_13:
	mov	r4, r6
	b	.LBB0_15
.LBB0_14:
	mov	r4, r12
	b	.LBB0_15
.LBB0_15:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	dirname, .Ltmp0-dirname
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"/"
	.size	.L.str1, 2


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
