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
	.file	"src/linux/inotify.bc"
	.globl	inotify_init
	.align	2
	.type	inotify_init,%function
inotify_init:                           @ @inotify_init
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r7, #360
	mov	r0, #0
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %if.then.i
	mov	r7, #316
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_3
.LBB0_3:                                @ %inotify_init1.exit
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	inotify_init, .Ltmp0-inotify_init
	.cantunwind
	.fnend

	.globl	inotify_init1
	.align	2
	.type	inotify_init1,%function
inotify_init1:                          @ @inotify_init1
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r1, r0
	mov	r7, #360
                                        @ kill: R0<def> R1<kill>
	cmp	r1, #0
	@APP
	svc	#0
	@NO_APP
	cmneq	r0, #38
	bne	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @ %if.then
	mov	r7, #316
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_3
.LBB1_3:                                @ %if.end
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp1:
	.size	inotify_init1, .Ltmp1-inotify_init1
	.cantunwind
	.fnend

	.globl	inotify_add_watch
	.align	2
	.type	inotify_add_watch,%function
inotify_add_watch:                      @ @inotify_add_watch
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	mov	r7, #61
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp2:
	.size	inotify_add_watch, .Ltmp2-inotify_add_watch
	.cantunwind
	.fnend

	.globl	inotify_rm_watch
	.align	2
	.type	inotify_rm_watch,%function
inotify_rm_watch:                       @ @inotify_rm_watch
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	mov	r7, #62
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp3:
	.size	inotify_rm_watch, .Ltmp3-inotify_rm_watch
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
