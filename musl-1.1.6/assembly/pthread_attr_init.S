.section pthread_attr_init_text
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
	.file	"src/thread/pthread_attr_init.bc"
	.globl	pthread_attr_init
	.align	2
	.type	pthread_attr_init,%function
.section bb0_0
pthread_attr_init:                      @ @pthread_attr_init
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#40
	sub	sp, sp, #40
	mov	r4, r0
	add	r0, sp, #4
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r1, #36
	mov	r2, #0
	bl	__aeabi_memset
	ldmib	sp, {r12, lr}
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #16]
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #24]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	str	r1, [r4, #20]
	str	r0, [r4, #16]
	str	r3, [r4, #12]
	str	r2, [r4, #8]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	stm	r4, {r12, lr}
	add	r2, sp, #28
	add	r3, r4, #24
	ldm	r2, {r0, r1, r2}
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	stm	r3, {r0, r1, r2}
	mov	r0, #0
	add	sp, sp, #40
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_attr_init, .Ltmp0-pthread_attr_init
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
