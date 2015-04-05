.section pthread_join_text
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
	.file	"src/thread/pthread_join.bc"
	.globl	__pthread_join
	.align	2
	.type	__pthread_join,%function
.section bb0_0
__pthread_join:                         @ @__pthread_join
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
	.pad	#16
	sub	sp, sp, #16
	mov	r8, r1
	mov	r4, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bl	pthread_testcancel
	mov	r6, r4
	ldr	r1, [r6, #24]!
	cmp	r1, #0
	beq	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:
	ldr	r5, .LCPI0_0
	mov	r7, #0
	b	.LBB0_5
.LCPI0_0:
	.long	dummy
.section bb0_5
.LBB0_5:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	stm	sp, {r5, r7}
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %while.body
                                        @   in Loop: Header=BB0_5 Depth=1
	str	r7, [sp, #8]
	bl	__timedwait
	ldr	r1, [r6]
	cmp	r1, #0
	bne	.LBB0_5
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %while.end
	cmp	r8, #0
	ldrne	r0, [r4, #80]
	strne	r0, [r8]
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then4
	ldr	r1, [r4, #60]
	bl	__munmap
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end7
	mov	r0, #0
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_join, .Ltmp0-__pthread_join
	.cantunwind
	.fnend

	.align	2
	.type	dummy,%function
.section bb1_0
dummy:                                  @ @dummy
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	dummy, .Ltmp1-dummy
	.cantunwind
	.fnend


	.weak	pthread_join
pthread_join = __pthread_join
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
