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
	.file	"src/linux/epoll.bc"
	.globl	epoll_create
	.align	2
	.type	epoll_create,%function
epoll_create:                           @ @epoll_create
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r0, #0
	b	epoll_create1
.Ltmp0:
	.size	epoll_create, .Ltmp0-epoll_create
	.cantunwind
	.fnend

	.globl	epoll_create1
	.align	2
	.type	epoll_create1,%function
epoll_create1:                          @ @epoll_create1
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r1, r0
	mov	r7, #101
	orr	r7, r7, #256
                                        @ kill: R0<def> R1<kill>
	b	.LBB1_2
.LBB1_2:                                @ %entry
	cmp	r1, #0
	@APP
	svc	#0
	@NO_APP
	cmneq	r0, #38
	bne	.LBB1_4
	b	.LBB1_3
.LBB1_3:                                @ %if.then
	mov	r7, #250
	mov	r0, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_4
.LBB1_4:                                @ %if.end
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp1:
	.size	epoll_create1, .Ltmp1-epoll_create1
	.cantunwind
	.fnend

	.globl	epoll_ctl
	.align	2
	.type	epoll_ctl,%function
epoll_ctl:                              @ @epoll_ctl
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #251
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp2:
	.size	epoll_ctl, .Ltmp2-epoll_ctl
	.cantunwind
	.fnend

	.globl	epoll_pwait
	.align	2
	.type	epoll_pwait,%function
epoll_pwait:                            @ @epoll_pwait
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	ldr	r4, [sp, #16]
	mov	r12, r0
	b	.LBB3_2
.LBB3_2:                                @ %entry
	mov	r7, #90
	mov	r5, #8
	orr	r7, r7, #256
                                        @ kill: R0<def> R12<kill>
	b	.LBB3_3
.LBB3_3:                                @ %entry
	@APP
	svc	#0
	@NO_APP
	cmp	r4, #0
	cmneq	r0, #38
	bne	.LBB3_5
	b	.LBB3_4
.LBB3_4:                                @ %if.then
	mov	r7, #252
	mov	r0, r12
	@APP
	svc	#0
	@NO_APP
	b	.LBB3_5
.LBB3_5:                                @ %if.end
	pop	{r4, r5, r7, lr}
	b	__syscall_ret
.Ltmp3:
	.size	epoll_pwait, .Ltmp3-epoll_pwait
	.cantunwind
	.fnend

	.globl	epoll_wait
	.align	2
	.type	epoll_wait,%function
epoll_wait:                             @ @epoll_wait
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #0
	str	r12, [sp]
	bl	epoll_pwait
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	epoll_wait, .Ltmp4-epoll_wait
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
