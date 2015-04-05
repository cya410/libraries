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
	.file	"src/time/ftime.bc"
	.globl	ftime
	.align	2
	.type	ftime,%function
ftime:                                  @ @ftime
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	mov	r1, sp
	mov	r0, #0
	mov	r5, #0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	bl	clock_gettime
	ldr	r0, [sp]
	str	r0, [r4]
	ldr	r0, .LCPI0_0
	b	.LBB0_4
.LCPI0_0:
	.long	1125899907              @ 0x431bde83
.LBB0_4:                                @ %entry
	ldr	r1, [sp, #4]
	smull	r2, r3, r1, r0
	asr	r0, r3, #18
	add	r0, r0, r3, lsr #31
	b	.LBB0_5
.LBB0_5:                                @ %entry
	strh	r0, [r4, #4]
	strh	r5, [r4, #8]
	strh	r5, [r4, #6]
	mov	r0, #0
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	ftime, .Ltmp0-ftime
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
