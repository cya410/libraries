.section __rand48_step_text
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
	.file	"src/prng/__rand48_step.bc"
	.globl	__rand48_step
	.align	2
	.type	__rand48_step,%function
.section bb0_0
__rand48_step:                          @ @__rand48_step
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldrh	r2, [r0, #2]
	ldrh	r3, [r0]
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldrh	r12, [r1, #2]
	ldrh	r4, [r1, #4]
	ldrh	r5, [r0, #4]
	orr	lr, r3, r2, lsl #16
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldrh	r2, [r1]
	ldrh	r1, [r1, #6]
	orr	r3, r2, r12, lsl #16
	umull	r2, r12, r3, lr
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	adds	r2, r2, r1
	lsr	r1, r2, #16
	strh	r2, [r0]
	strh	r1, [r0, #2]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mla	r1, r3, r5, r12
	mla	r3, r4, lr, r1
	adc	r1, r3, #0
	strh	r1, [r0, #4]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r0, #255
	orr	r0, r0, #65280
	and	r1, r1, r0
	mov	r0, r2
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__rand48_step, .Ltmp0-__rand48_step
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
