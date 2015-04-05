.section scalbnf_text
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
	.file	"src/math/scalbnf.bc"
	.globl	scalbnf
	.align	2
	.type	scalbnf,%function
.section bb0_0
scalbnf:                                @ @scalbnf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r4, r1
	cmp	r4, #128
	blt	.LBB0_3
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %if.then
	mov	r1, #2130706432
	bl	__aeabi_fmul
	sub	r1, r4, #127
	cmp	r1, #128
	blt	.LBB0_6
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.then2
	mov	r1, #2130706432
	bl	__aeabi_fmul
	sub	r4, r4, #254
	cmp	r4, #127
	movgt	r4, #127
	b	.LBB0_7
.section bb0_3
.LBB0_3:                                @ %if.else
	cmn	r4, #127
	bgt	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then9
	mov	r1, #8388608
	bl	__aeabi_fmul
	add	r1, r4, #126
	cmn	r1, #127
	bgt	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then12
	mov	r1, #8388608
	bl	__aeabi_fmul
	add	r4, r4, #252
	cmn	r4, #126
	mvnlt	r4, #125
	b	.LBB0_7
.section bb0_6
.LBB0_6:
	mov	r4, r1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end20
	mov	r1, #1065353216
	add	r1, r1, r4, lsl #23
	bl	__aeabi_fmul
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	scalbnf, .Ltmp0-scalbnf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
