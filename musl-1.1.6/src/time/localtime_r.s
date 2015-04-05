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
	.file	"src/time/localtime_r.bc"
	.globl	__localtime_r
	.align	2
	.type	__localtime_r,%function
__localtime_r:                          @ @__localtime_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r5, [r0]
	mov	r4, r1
	mov	r1, #0
	add	r2, r4, #36
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r0, r4, #40
	add	r3, r4, #32
	str	r2, [sp]
	str	r1, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	str	r0, [sp, #8]
	mov	r2, #0
	asr	r6, r5, #31
	mov	r0, r5
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r1, r6
	bl	__secs_to_zone
	ldr	r1, [r4, #36]
	mov	r2, r4
	b	.LBB0_6
.LBB0_6:                                @ %entry
	subs	r0, r5, r1
	sbc	r1, r6, r1, asr #31
	bl	__secs_to_tm
	cmp	r0, #0
	bge	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then12
	bl	__errno_location
	mov	r1, #75
	mov	r4, #0
	str	r1, [r0]
	b	.LBB0_8
.LBB0_8:                                @ %return
	mov	r0, r4
	add	sp, sp, #16
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__localtime_r, .Ltmp0-__localtime_r
	.cantunwind
	.fnend


	.weak	localtime_r
localtime_r = __localtime_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
