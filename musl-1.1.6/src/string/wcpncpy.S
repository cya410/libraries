.section wcpncpy_text
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
	.file	"src/string/wcpncpy.bc"
	.globl	wcpncpy
	.align	2
	.type	wcpncpy,%function
.section bb0_0
wcpncpy:                                @ @wcpncpy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r2
	mov	r5, r1
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
                                        @ kill: R1<def> R5<kill>
                                        @ kill: R2<def> R4<kill>
	bl	wcsncpy
	mov	r6, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r0, r5
	mov	r1, r4
	bl	wcsnlen
	add	r0, r6, r0, lsl #2
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcpncpy, .Ltmp0-wcpncpy
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
