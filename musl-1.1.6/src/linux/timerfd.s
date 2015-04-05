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
	.file	"src/linux/timerfd.bc"
	.globl	timerfd_create
	.align	2
	.type	timerfd_create,%function
timerfd_create:                         @ @timerfd_create
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r7, #94
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	timerfd_create, .Ltmp0-timerfd_create
	.cantunwind
	.fnend

	.globl	timerfd_settime
	.align	2
	.type	timerfd_settime,%function
timerfd_settime:                        @ @timerfd_settime
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r7, #97
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp1:
	.size	timerfd_settime, .Ltmp1-timerfd_settime
	.cantunwind
	.fnend

	.globl	timerfd_gettime
	.align	2
	.type	timerfd_gettime,%function
timerfd_gettime:                        @ @timerfd_gettime
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	mov	r7, #98
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp2:
	.size	timerfd_gettime, .Ltmp2-timerfd_gettime
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
