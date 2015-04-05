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
	.file	"src/stdio/vasprintf.bc"
	.globl	vasprintf
	.align	2
	.type	vasprintf,%function
vasprintf:                              @ @vasprintf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r1
	mov	r3, r2
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r0
	mov	r0, #0
	mov	r1, #0
	mov	r2, r4
	b	.LBB0_4
.LBB0_4:                                @ %entry
	str	r3, [sp, #4]
	str	r3, [sp]
	bl	vsnprintf
	mvn	r5, #0
	cmp	r0, #0
	blt	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %lor.lhs.false
	add	r7, r0, #1
	mov	r0, r7
	bl	malloc
	str	r0, [r6]
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	ldr	r3, [sp, #4]
	mov	r1, r7
	mov	r2, r4
	bl	vsnprintf
	mov	r5, r0
	b	.LBB0_7
.LBB0_7:                                @ %return
	mov	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	vasprintf, .Ltmp0-vasprintf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
