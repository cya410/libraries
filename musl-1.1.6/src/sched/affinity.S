.section affinity_text
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
	.file	"src/sched/affinity.bc"
	.globl	sched_setaffinity
	.align	2
	.type	sched_setaffinity,%function
.section bb0_0
sched_setaffinity:                      @ @sched_setaffinity
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #241
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	sched_setaffinity, .Ltmp0-sched_setaffinity
	.cantunwind
	.fnend

	.globl	pthread_setaffinity_np
	.align	2
	.type	pthread_setaffinity_np,%function
.section bb1_0
pthread_setaffinity_np:                 @ @pthread_setaffinity_np
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	ldr	r0, [r0, #24]
	mov	r7, #241
	@APP
	svc	#0
	@NO_APP
	rsb	r0, r0, #0
	pop	{r7, lr}
	mov	pc, lr
.Ltmp1:
	.size	pthread_setaffinity_np, .Ltmp1-pthread_setaffinity_np
	.cantunwind
	.fnend

	.globl	sched_getaffinity
	.align	2
	.type	sched_getaffinity,%function
.section bb2_0
sched_getaffinity:                      @ @sched_getaffinity
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	bl	do_getaffinity
	pop	{r11, lr}
	b	__syscall_ret
.Ltmp2:
	.size	sched_getaffinity, .Ltmp2-sched_getaffinity
	.cantunwind
	.fnend

	.align	2
	.type	do_getaffinity,%function
.section bb3_0
do_getaffinity:                         @ @do_getaffinity
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	mov	r7, #242
	@APP
	svc	#0
	@NO_APP
	mov	r4, r0
	cmp	r0, #0
	blt	.LBB3_4
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %if.end
	mov	r4, #0
	cmp	r0, r1
	bhs	.LBB3_4
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %if.then2
	add	r3, r2, r0
	sub	r2, r1, r0
	mov	r1, #0
	mov	r4, #0
	mov	r0, r3
	bl	memset
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %return
	mov	r0, r4
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	do_getaffinity, .Ltmp3-do_getaffinity
	.cantunwind
	.fnend

	.globl	pthread_getaffinity_np
	.align	2
	.type	pthread_getaffinity_np,%function
.section bb4_0
pthread_getaffinity_np:                 @ @pthread_getaffinity_np
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	ldr	r0, [r0, #24]
	bl	do_getaffinity
	rsb	r0, r0, #0
	pop	{r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	pthread_getaffinity_np, .Ltmp4-pthread_getaffinity_np
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
