.section ispunct_text
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
	.file	"src/ctype/ispunct.bc"
	.globl	ispunct
	.align	2
	.type	ispunct,%function
.section bb0_0
ispunct:                                @ @ispunct
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r1, r0
	mov	r0, #0
	sub	r2, r1, #33
	cmp	r2, #93
	bhi	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %land.rhs
	mov	r0, r1
	bl	isalnum
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	moveq	r0, #1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.end
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	ispunct, .Ltmp0-ispunct
	.cantunwind
	.fnend

	.globl	__ispunct_l
	.align	2
	.type	__ispunct_l,%function
.section bb1_0
__ispunct_l:                            @ @__ispunct_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r1, r0
	mov	r0, #0
	sub	r2, r1, #33
	cmp	r2, #93
	bhi	.LBB1_3
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %land.rhs.i
	mov	r0, r1
	bl	isalnum
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	moveq	r0, #1
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %ispunct.exit
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__ispunct_l, .Ltmp1-__ispunct_l
	.cantunwind
	.fnend


	.weak	ispunct_l
ispunct_l = __ispunct_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
