.section sigqueue_text
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
	.file	"src/signal/sigqueue.bc"
	.globl	sigqueue
	.align	2
	.type	sigqueue,%function
.section bb0_0
sigqueue:                               @ @sigqueue
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#256
	sub	sp, sp, #256
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	add	r8, sp, #128
	mov	r5, r2
	mov	r4, r1
	mov	r6, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r1, #0
	mov	r2, #128
	mov	r0, r8
	bl	memset
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mvn	r0, #0
	str	r4, [sp, #128]
	str	r0, [sp, #136]
	str	r5, [sp, #148]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	bl	getuid
	mov	r5, sp
	str	r0, [sp, #144]
	mov	r0, r5
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	bl	__block_app_sigs
	bl	getpid
	str	r0, [sp, #140]
	mov	r7, #178
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %entry
	mov	r0, r6
	mov	r1, r4
	mov	r2, r8
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %entry
	bl	__syscall_ret
	mov	r4, r0
	mov	r0, r5
	bl	__restore_sigs
	mov	r0, r4
	add	sp, sp, #256
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	sigqueue, .Ltmp0-sigqueue
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
