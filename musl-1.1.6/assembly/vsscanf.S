.section vsscanf_text
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
	.file	"src/stdio/vsscanf.bc"
	.globl	vsscanf
	.align	2
	.type	vsscanf,%function
.section bb0_0
vsscanf:                                @ @vsscanf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#136
	sub	sp, sp, #136
	mov	r7, sp
	mov	r4, r2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r6, r0
	mov	r1, #136
	mov	r2, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, r7
	bl	__aeabi_memset
	ldr	r0, .LCPI0_0
	mov	r1, r5
	b	.LBB0_5
.LCPI0_0:
	.long	do_read
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r2, r4
	str	r0, [sp, #32]
	mvn	r0, #0
	str	r6, [sp, #44]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	str	r0, [sp, #76]
	mov	r0, r7
	str	r6, [sp, #84]
	bl	vfscanf
	add	sp, sp, #136
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	vsscanf, .Ltmp0-vsscanf
	.cantunwind
	.fnend

	.align	2
	.type	do_read,%function
.section bb1_0
do_read:                                @ @do_read
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	__string_read
.Ltmp1:
	.size	do_read, .Ltmp1-do_read
	.cantunwind
	.fnend


	.weak	__isoc99_vsscanf
__isoc99_vsscanf = vsscanf
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
