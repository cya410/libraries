.section strncmp_text
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
	.file	"src/string/strncmp.bc"
	.globl	strncmp
	.align	2
	.type	strncmp,%function
.section bb0_0
strncmp:                                @ @strncmp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r3, #0
	cmp	r2, #0
	beq	.LBB0_11
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %for.cond.preheader
	ldrb	lr, [r0]
	mov	r12, #0
	cmp	lr, #0
	beq	.LBB0_10
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %land.lhs.true.preheader
	add	r0, r0, #1
	rsb	r2, r2, #1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r1]
	and	r4, lr, #255
	cmp	r4, r3
	bne	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.lhs.true
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r2, #0
	beq	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r3, #0
	beq	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.inc
                                        @   in Loop: Header=BB0_3 Depth=1
	ldrb	lr, [r0], #1
	add	r2, r2, #1
	add	r1, r1, #1
	cmp	lr, #0
	bne	.LBB0_3
	b	.LBB0_10
.section bb0_7
.LBB0_7:
	mov	r12, lr
	b	.LBB0_10
.section bb0_8
.LBB0_8:
	mov	r12, lr
	b	.LBB0_10
.section bb0_9
.LBB0_9:
	mov	r12, lr
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.end
	ldrb	r0, [r1]
	and	r1, r12, #255
	sub	r3, r1, r0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	mov	r0, r3
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	strncmp, .Ltmp0-strncmp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
