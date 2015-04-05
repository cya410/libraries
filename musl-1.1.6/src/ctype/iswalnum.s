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
	.file	"src/ctype/iswalnum.bc"
	.globl	iswalnum
	.align	2
	.type	iswalnum,%function
iswalnum:                               @ @iswalnum
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r1, r0
	mov	r0, #1
	sub	r2, r1, #48
	cmp	r2, #10
	blo	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %lor.rhs
	mov	r0, r1
	bl	iswalpha
	cmp	r0, #0
	movne	r0, #1
	b	.LBB0_3
.LBB0_3:                                @ %lor.end
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	iswalnum, .Ltmp0-iswalnum
	.cantunwind
	.fnend

	.globl	__iswalnum_l
	.align	2
	.type	__iswalnum_l,%function
__iswalnum_l:                           @ @__iswalnum_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r1, r0
	mov	r0, #1
	sub	r2, r1, #48
	cmp	r2, #10
	blo	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @ %lor.rhs.i
	mov	r0, r1
	bl	iswalpha
	cmp	r0, #0
	movne	r0, #1
	b	.LBB1_3
.LBB1_3:                                @ %iswalnum.exit
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__iswalnum_l, .Ltmp1-__iswalnum_l
	.cantunwind
	.fnend


	.weak	iswalnum_l
iswalnum_l = __iswalnum_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
