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
	.file	"src/signal/sigignore.bc"
	.globl	sigignore
	.align	2
	.type	sigignore,%function
sigignore:                              @ @sigignore
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#144
	sub	sp, sp, #144
	b	.LBB0_2
.LBB0_2:                                @ %entry
	add	r5, sp, #4
	mov	r4, r0
	add	r0, r5, #4
	bl	sigemptyset
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	str	r0, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r0, #0
	str	r0, [sp, #136]
	mov	r0, r4
	bl	sigaction
	add	sp, sp, #144
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	sigignore, .Ltmp0-sigignore
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
