.section pthread_barrier_destroy_text
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
	.file	"src/thread/pthread_barrier_destroy.bc"
	.globl	pthread_barrier_destroy
	.align	2
	.type	pthread_barrier_destroy,%function
.section bb0_0
pthread_barrier_destroy:                @ @pthread_barrier_destroy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #8]
	cmp	r0, #0
	bge	.LBB0_8
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.then
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	orr	r1, r0, #-2147483648
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %while.cond.preheader
	ldr	r2, [r4]
	mvn	r5, #-2147483648
	b	.LBB0_6
.section bb0_5
.LBB0_5:                                @ %while.body
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, r4
	mov	r1, #0
	mov	r3, #0
	bl	__wait
	ldr	r2, [r4]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	tst	r2, r5
	bne	.LBB0_5
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	mvn	r0, #0
	bl	__vm_lock
	bl	__vm_unlock
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end15
	mov	r0, #0
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_barrier_destroy, .Ltmp0-pthread_barrier_destroy
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
