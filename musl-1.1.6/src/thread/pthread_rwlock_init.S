.section pthread_rwlock_init_text
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
	.file	"src/thread/pthread_rwlock_init.bc"
	.globl	pthread_rwlock_init
	.align	2
	.type	pthread_rwlock_init,%function
.section bb0_0
pthread_rwlock_init:                    @ @pthread_rwlock_init
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
	.pad	#32
	sub	sp, sp, #32
	mov	r7, r1
	mov	r4, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r0, sp
	mov	r1, #32
	mov	r2, #0
	bl	__aeabi_memset
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldm	sp, {r0, r1, r2, r3, r5, r6}
	cmp	r7, #0
	stm	r4, {r0, r1, r2, r3, r5, r6}
	ldr	r1, [sp, #28]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	ldr	r0, [sp, #24]
	str	r1, [r4, #28]
	str	r0, [r4, #24]
	ldrne	r0, [r7]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	lslne	r0, r0, #7
	strne	r0, [r4, #8]
	mov	r0, #0
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_rwlock_init, .Ltmp0-pthread_rwlock_init
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
