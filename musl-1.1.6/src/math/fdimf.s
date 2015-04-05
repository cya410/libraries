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
	.file	"src/math/fdimf.bc"
	.globl	fdimf
	.align	2
	.type	fdimf,%function
fdimf:                                  @ @fdimf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r0, #1065353216
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r1
	orr	r0, r0, #1073741824
	bic	r1, r4, #-2147483648
	cmp	r1, r0
	bhi	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %cond.true11
	bic	r1, r5, #-2147483648
	cmp	r1, r0
	bls	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	r4, r5
	b	.LBB0_7
.LBB0_5:                                @ %if.end29
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fcmpgt
	mov	r6, r0
	b	.LBB0_6
.LBB0_6:                                @ %if.end29
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r4, r0
	cmp	r6, #0
	moveq	r4, r6
	b	.LBB0_7
.LBB0_7:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	fdimf, .Ltmp0-fdimf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
