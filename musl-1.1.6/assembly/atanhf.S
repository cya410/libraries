.section atanhf_text
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
	.file	"src/math/atanhf.bc"
	.globl	atanhf
	.align	2
	.type	atanhf,%function
.section bb0_0
atanhf:                                 @ @atanhf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	bic	r5, r4, #-2147483648
	lsr	r0, r5, #24
	cmp	r0, #62
	bhi	.LBB0_6
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	lsr	r0, r5, #23
	cmp	r0, #94
	bhi	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then6
	mov	r0, #0
	cmp	r0, r5, lsr #23
	bne	.LBB0_12
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %do.body
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fmul
	str	r0, [sp, #4]
	b	.LBB0_12
.section bb0_6
.LBB0_6:                                @ %if.else15
	mov	r0, #1065353216
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv
	mov	r1, r0
	b	.LBB0_11
.section bb0_7
.LBB0_7:                                @ %if.else
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fadd
	mov	r6, r0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.else
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.else
	mov	r0, #1065353216
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.else
	mov	r0, r7
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end21
	bl	__aeabi_fadd
	bl	log1pf
	mov	r1, #1056964608
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end21
	mov	r0, #-2147483648
	mov	r1, r5
	bl	__aeabi_fsub
	cmp	r4, #0
	movge	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	atanhf, .Ltmp0-atanhf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
