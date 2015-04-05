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
	.file	"src/linux/eventfd.bc"
	.globl	eventfd
	.align	2
	.type	eventfd,%function
eventfd:                                @ @eventfd
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r2, r0
	mov	r7, #356
	cmp	r1, #0
                                        @ kill: R0<def> R2<kill>
	@APP
	svc	#0
	@NO_APP
	cmneq	r0, #38
	bne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %if.then
	mov	r7, #95
	mov	r0, r2
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	eventfd, .Ltmp0-eventfd
	.cantunwind
	.fnend

	.globl	eventfd_read
	.align	2
	.type	eventfd_read,%function
eventfd_read:                           @ @eventfd_read
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r2, #8
	bl	read
	mov	r1, #0
	cmp	r0, #8
	mvnne	r1, #0
	mov	r0, r1
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	eventfd_read, .Ltmp1-eventfd_read
	.cantunwind
	.fnend

	.globl	eventfd_write
	.align	2
	.type	eventfd_write,%function
eventfd_write:                          @ @eventfd_write
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	stm	sp, {r2, r3}
	mov	r1, sp
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r2, #8
	bl	write
	mov	r1, #0
	cmp	r0, #8
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mvnne	r1, #0
	mov	r0, r1
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	eventfd_write, .Ltmp2-eventfd_write
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
