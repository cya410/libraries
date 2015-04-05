.section drand48_text
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
	.file	"src/prng/drand48.bc"
	.globl	erand48
	.align	2
	.type	erand48,%function
.section bb0_0
erand48:                                @ @erand48
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r1, .LCPI0_0
	add	r1, r1, #6
	bl	__rand48_step
	lsl	r1, r1, #4
	b	.LBB0_2
.LCPI0_0:
	.long	__seed48
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r3, #267386880
	mov	r2, #0
	orr	r1, r1, r0, lsr #28
	lsl	r0, r0, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	orr	r3, r3, #-1342177280
	orr	r1, r1, #267386880
	orr	r1, r1, #805306368
	bl	__aeabi_dadd
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	erand48, .Ltmp0-erand48
	.cantunwind
	.fnend

	.globl	drand48
	.align	2
	.type	drand48,%function
.section bb1_0
drand48:                                @ @drand48
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	ldr	r0, .LCPI1_0
	add	r1, r0, #6
	bl	__rand48_step
	lsl	r1, r1, #4
	b	.LBB1_2
.LCPI1_0:
	.long	__seed48
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r3, #267386880
	mov	r2, #0
	orr	r1, r1, r0, lsr #28
	lsl	r0, r0, #4
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	orr	r3, r3, #-1342177280
	orr	r1, r1, #267386880
	orr	r1, r1, #805306368
	bl	__aeabi_dadd
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	drand48, .Ltmp1-drand48
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
