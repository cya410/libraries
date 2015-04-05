.section __string_read_text
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
	.file	"src/stdio/__string_read.bc"
	.globl	__string_read
	.align	2
	.type	__string_read,%function
.section bb0_0
__string_read:                          @ @__string_read
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r6, r0
	mov	r4, r2
	mov	r8, r1
	mov	r1, #0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r7, [r6, #84]
	add	r5, r4, #256
	mov	r2, r5
	mov	r0, r7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bl	memchr
	cmp	r0, #0
	mov	r1, r7
	subne	r5, r0, r7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, r8
	cmp	r5, r4
	movlo	r4, r5
	mov	r2, r4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	bl	memcpy
	add	r1, r7, r5
	add	r0, r7, r4
	str	r1, [r6, #84]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	str	r0, [r6, #4]
	str	r1, [r6, #8]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__string_read, .Ltmp0-__string_read
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
