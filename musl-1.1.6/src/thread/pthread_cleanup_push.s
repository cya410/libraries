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
	.file	"src/thread/pthread_cleanup_push.bc"
	.align	2
	.type	dummy,%function
dummy:                                  @ @dummy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy, .Ltmp0-dummy
	.cantunwind
	.fnend

	.globl	_pthread_cleanup_push
	.align	2
	.type	_pthread_cleanup_push,%function
_pthread_cleanup_push:                  @ @_pthread_cleanup_push
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	stm	r0, {r1, r2}
	b	__do_cleanup_push
.Ltmp1:
	.size	_pthread_cleanup_push, .Ltmp1-_pthread_cleanup_push
	.cantunwind
	.fnend

	.globl	_pthread_cleanup_pop
	.align	2
	.type	_pthread_cleanup_pop,%function
_pthread_cleanup_pop:                   @ @_pthread_cleanup_pop
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	mov	r4, r0
	mov	r5, r1
	b	.LBB2_2
.LBB2_2:                                @ %entry
                                        @ kill: R0<def> R4<kill>
	bl	__do_cleanup_pop
	cmp	r5, #0
	popeq	{r4, r5, r11, lr}
	b	.LBB2_3
.LBB2_3:                                @ %entry
	moveq	pc, lr
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	pop	{r4, r5, r11, lr}
	bx	r1
.Ltmp2:
	.size	_pthread_cleanup_pop, .Ltmp2-_pthread_cleanup_pop
	.cantunwind
	.fnend


	.weak	__do_cleanup_push
__do_cleanup_push = dummy
	.weak	__do_cleanup_pop
__do_cleanup_pop = dummy
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
