.section lutimes_text
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
	.file	"src/legacy/lutimes.bc"
	.globl	lutimes
	.align	2
	.type	lutimes,%function
.section bb0_0
lutimes:                                @ @lutimes
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r12, r0
	ldr	r0, [r1]
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r2, #1000
	str	r0, [sp]
	ldr	r0, [r1, #4]
	mul	r3, r0, r2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r3, [sp, #4]
	mov	r3, #256
	ldr	r0, [r1, #8]
	str	r0, [sp, #8]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r0, [r1, #12]
	mul	r1, r0, r2
	mov	r2, sp
	mvn	r0, #99
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	str	r1, [sp, #12]
	mov	r1, r12
	bl	utimensat
	add	sp, sp, #16
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	lutimes, .Ltmp0-lutimes
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
