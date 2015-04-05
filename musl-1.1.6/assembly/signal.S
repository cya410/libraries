.section signal_text
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
	.file	"src/signal/signal.bc"
	.globl	signal
	.align	2
	.type	signal,%function
.section bb0_0
signal:                                 @ @signal
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
	.pad	#280
	sub	sp, sp, #280
	mov	r6, sp
	mov	r4, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	mov	r1, #140
	mov	r2, #0
	mov	r0, r6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bl	__aeabi_memset
	mov	r0, #268435456
	str	r4, [sp]
	add	r2, sp, #140
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r1, r6
	str	r0, [sp, #132]
	mov	r0, r5
	bl	__sigaction
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	ldr	r1, [sp, #140]
	cmp	r0, #0
	mvnlt	r1, #0
	mov	r0, r1
	add	sp, sp, #280
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	signal, .Ltmp0-signal
	.cantunwind
	.fnend


	.weak	bsd_signal
bsd_signal = signal
	.weak	__sysv_signal
__sysv_signal = signal
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
