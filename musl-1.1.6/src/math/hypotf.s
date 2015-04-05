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
	.file	"src/math/hypotf.bc"
	.globl	hypotf
	.align	2
	.type	hypotf,%function
hypotf:                                 @ @hypotf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	bic	r5, r0, #-2147483648
	bic	r0, r1, #-2147483648
	cmp	r5, r0
	mov	r4, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	movlo	r4, r5
	movlo	r5, r0
	mov	r0, #1065353216
	orr	r0, r0, #1073741824
	cmp	r4, r0
	beq	.LBB0_20
	b	.LBB0_4
.LBB0_4:                                @ %if.end11
	lsr	r0, r5, #23
	cmp	r0, #254
	bhi	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                @ %if.end11
	cmp	r4, #0
	beq	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                @ %if.end11
	sub	r1, r5, r4
	cmp	r1, #209715200
	bhs	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                @ %if.end21
	cmp	r0, #187
	blo	.LBB0_11
	b	.LBB0_8
.LBB0_8:                                @ %if.then24
	mov	r0, r5
	mov	r1, #310378496
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_9
.LBB0_9:                                @ %if.then24
	mov	r0, r4
	mov	r1, #310378496
	bl	__aeabi_fmul
	mov	r6, #746586112
	mov	r4, r0
	orr	r6, r6, #1073741824
	b	.LBB0_14
.LBB0_10:                               @ %if.then20
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_fadd
	b	.LBB0_19
.LBB0_11:                               @ %if.else
	lsr	r0, r4, #23
	mov	r6, #1065353216
	cmp	r0, #66
	bhi	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               @ %if.then28
	mov	r6, #746586112
	mov	r0, r5
	orr	r6, r6, #1073741824
	mov	r1, r6
	b	.LBB0_13
.LBB0_13:                               @ %if.then28
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r4, r0
	mov	r6, #310378496
	b	.LBB0_14
.LBB0_14:                               @ %if.end32
	mov	r0, r5
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_15
.LBB0_15:                               @ %if.end32
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r0, r4
	mov	r7, r1
	b	.LBB0_16
.LBB0_16:                               @ %if.end32
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	b	.LBB0_17
.LBB0_17:                               @ %if.end32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r7
	b	.LBB0_18
.LBB0_18:                               @ %if.end32
	bl	__aeabi_dadd
	bl	__aeabi_d2f
	bl	sqrtf
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB0_19
.LBB0_19:                               @ %return
	mov	r4, r0
	b	.LBB0_20
.LBB0_20:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	hypotf, .Ltmp0-hypotf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
