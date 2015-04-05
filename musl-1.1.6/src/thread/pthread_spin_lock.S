.section pthread_spin_lock_text
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
	.file	"src/thread/pthread_spin_lock.bc"
	.globl	pthread_spin_lock
	.align	2
	.type	pthread_spin_lock,%function
.section bb0_0
pthread_spin_lock:                      @ @pthread_spin_lock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	mov	r4, r0
	b	.LBB0_2
.section bb0_1
.LBB0_1:                                @ %while.body
                                        @   in Loop: Header=BB0_2 Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4]
	mov	r1, #1
	mov	r2, r4
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %a_swap.exit
                                        @   in Loop: Header=BB0_2 Depth=1
	cmp	r5, #0
	bne	.LBB0_1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %while.end
	mov	r0, #0
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_spin_lock, .Ltmp0-pthread_spin_lock
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
