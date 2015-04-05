.section cprojf_text
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
	.file	"src/complex/cprojf.bc"
	.globl	cprojf
	.align	2
	.type	cprojf,%function
.section bb0_0
cprojf:                                 @ @cprojf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r5, #1065353216
	mov	r4, r0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	bic	r0, r1, #-2147483648
	orr	r5, r5, #1073741824
	cmp	r0, r5
	bicne	r0, r2, #-2147483648
	cmpne	r0, r5
	bne	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	mov	r0, #0
	bl	copysignf
	mov	r2, r0
	mov	r0, r4
	str	r5, [r4]
	str	r2, [r0, #4]!
	b	.LBB0_5
.section bb0_4
.LBB0_4:                                @ %if.end
	mov	r0, r4
	str	r1, [r4]
	mov	r5, r1
	str	r2, [r0, #4]!
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %return
	str	r5, [r4]
	str	r2, [r0]
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	cprojf, .Ltmp0-cprojf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
