.section pthread_barrier_init_text
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
	.file	"src/thread/pthread_barrier_init.bc"
	.globl	pthread_barrier_init
	.align	2
	.type	pthread_barrier_init,%function
.section bb0_0
pthread_barrier_init:                   @ @pthread_barrier_init
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	sub	r2, r2, #1
	mov	r3, r0
	mov	r0, #22
	cmn	r2, #-2147483646
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	movhi	pc, lr
	cmp	r1, #0
	mov	r12, #0
	mov	r0, #0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldrne	r12, [r1]
	str	r0, [r3]
	orr	r1, r12, r2
	stmib	r3, {r0, r1}
	str	r0, [r3, #12]
	str	r0, [r3, #16]
	mov	pc, lr
.Ltmp0:
	.size	pthread_barrier_init, .Ltmp0-pthread_barrier_init
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
