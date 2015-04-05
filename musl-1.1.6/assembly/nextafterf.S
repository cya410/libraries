.section nextafterf_text
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
	.file	"src/math/nextafterf.bc"
	.globl	nextafterf
	.align	2
	.type	nextafterf,%function
.section bb0_0
nextafterf:                             @ @nextafterf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	mov	r1, #1065353216
	bic	r2, r0, #-2147483648
	orr	r1, r1, #1073741824
	cmp	r2, r1
	bhi	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %cond.true12
	ldr	r5, .LCPI0_0
	bic	r3, r4, #-2147483648
	cmp	r3, r5
	blo	.LBB0_6
	b	.LBB0_4
.LCPI0_0:
	.long	2139095041              @ 0x7f800001
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r1, r4
	bl	__aeabi_fadd
	mov	r4, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %return
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.section bb0_6
.LBB0_6:                                @ %if.end
	cmp	r0, r4
	beq	.LBB0_5
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end33
	cmp	r2, #0
	beq	.LBB0_11
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.else
	cmp	r2, r3
	bhi	.LBB0_13
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.else
	eor	r2, r4, r0
	cmp	r2, #0
	blt	.LBB0_13
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.else56
	add	r4, r0, #1
	b	.LBB0_14
.section bb0_11
.LBB0_11:                               @ %if.then40
	cmp	r3, #0
	beq	.LBB0_5
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end44
	and	r2, r4, #-2147483648
	orr	r4, r2, #1
	b	.LBB0_14
.section bb0_13
.LBB0_13:                               @ %if.then54
	sub	r4, r0, #1
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end59
	ands	r2, r4, r1
	bne	.LBB0_17
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %do.body70
	mov	r1, r0
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r0, r4
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %do.body70
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	str	r0, [sp]
	b	.LBB0_5
.section bb0_17
.LBB0_17:                               @ %if.end59
	cmp	r2, r1
	bne	.LBB0_5
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %do.body
	mov	r1, r0
	bl	__aeabi_fadd
	str	r0, [sp, #4]
	b	.LBB0_5
.Ltmp0:
	.size	nextafterf, .Ltmp0-nextafterf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
