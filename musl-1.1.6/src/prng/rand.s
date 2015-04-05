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
	.file	"src/prng/rand.bc"
	.globl	srand
	.align	2
	.type	srand,%function
srand:                                  @ @srand
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r1, .LCPI0_0
	mov	r2, #0
	sub	r0, r0, #1
	stm	r1, {r0, r2}
	mov	pc, lr
.LCPI0_0:
	.long	seed
.Ltmp0:
	.size	srand, .Ltmp0-srand
	.cantunwind
	.fnend

	.globl	rand
	.align	2
	.type	rand,%function
rand:                                   @ @rand
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	ldr	r0, .LCPI1_3
	ldm	r0, {r1, r12}
	ldr	r3, .LCPI1_4
	umull	r2, lr, r1, r3
	b	.LBB1_2
.LCPI1_3:
	.long	seed
.LCPI1_4:
	.long	1284865837              @ 0x4c957f2d
.LBB1_2:                                @ %entry
	adds	r2, r2, #1
	str	r2, [r0]
	ldr	r2, .LCPI1_5
	mla	r4, r1, r2, lr
	b	.LBB1_3
.LCPI1_5:
	.long	1481765933              @ 0x5851f42d
.LBB1_3:                                @ %entry
	mla	r1, r12, r3, r4
	adc	r1, r1, #0
	str	r1, [r0, #4]
	lsr	r0, r1, #1
	pop	{r4, lr}
	mov	pc, lr
.Ltmp1:
	.size	rand, .Ltmp1-rand
	.cantunwind
	.fnend

	.type	seed,%object            @ @seed
	.local	seed
	.comm	seed,8,8

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
