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
	.file	"src/stdio/fputs.bc"
	.globl	fputs
	.align	2
	.type	fputs,%function
fputs:                                  @ @fputs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_2
.LBB0_2:                                @ %entry
                                        @ kill: R0<def> R5<kill>
	bl	strlen
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r2, #1
	mov	r3, r4
	bl	fwrite
	sub	r0, r0, #1
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fputs, .Ltmp0-fputs
	.cantunwind
	.fnend


	.weak	fputs_unlocked
fputs_unlocked = fputs
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
