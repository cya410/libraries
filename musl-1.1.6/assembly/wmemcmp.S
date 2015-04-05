.section wmemcmp_text
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
	.file	"src/string/wmemcmp.bc"
	.globl	wmemcmp
	.align	2
	.type	wmemcmp,%function
.section bb0_0
wmemcmp:                                @ @wmemcmp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r3, r0
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB0_5
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r12, [r1]
	ldr	lr, [r3]
	cmp	lr, r12
	bne	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.inc
                                        @   in Loop: Header=BB0_2 Depth=1
	add	r1, r1, #4
	add	r3, r3, #4
	subs	r2, r2, #1
	bne	.LBB0_2
	b	.LBB0_5
.section bb0_4
.LBB0_4:                                @ %cond.true
	sub	r0, lr, r12
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.end
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	wmemcmp, .Ltmp0-wmemcmp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
