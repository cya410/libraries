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
	.file	"src/mq/mq_notify.bc"
	.globl	mq_notify
	.align	2
	.type	mq_notify,%function
mq_notify:                              @ @mq_notify
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#136
	sub	sp, sp, #136
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r4, r0
	add	r0, sp, #108
	mov	r1, #24
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r2, #0
	bl	__aeabi_memset
	str	r5, [sp, #132]
	cmp	r5, #0
	beq	.LBB0_12
	b	.LBB0_5
.LBB0_5:                                @ %lor.lhs.false
	ldr	r0, [r5, #8]
	cmp	r0, #2
	bne	.LBB0_12
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r1, #3
	mov	r0, #16
	mov	r2, #0
	orr	r1, r1, #524288
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	bl	socket
	mov	r8, r0
	mvn	r6, #0
	cmp	r8, #0
	blt	.LBB0_25
	b	.LBB0_8
.LBB0_8:                                @ %if.end6
	str	r8, [sp, #128]
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.LBB0_13
	b	.LBB0_9
.LBB0_9:                                @ %if.then8
	ldm	r0, {r1, r2, r3, r7}
	ldr	r6, [r0, #16]
	ldr	r5, [r0, #20]
	add	r9, sp, #72
	b	.LBB0_10
.LBB0_10:                               @ %if.then8
	str	r5, [sp, #92]
	str	r6, [sp, #88]
	stm	r9, {r1, r2, r3, r7}
	ldr	r1, [r0, #24]
	b	.LBB0_11
.LBB0_11:                               @ %if.then8
	ldr	r2, [r0, #28]
	ldr	r0, [r0, #32]
	str	r0, [sp, #104]
	str	r2, [sp, #100]
	str	r1, [sp, #96]
	b	.LBB0_14
.LBB0_12:                               @ %if.then
	mov	r7, #22
	mov	r0, r4
	mov	r1, r5
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r6, r0
	b	.LBB0_25
.LBB0_13:                               @ %if.else
	add	r0, sp, #72
	bl	pthread_attr_init
	b	.LBB0_14
.LBB0_14:                               @ %if.end11
	add	r5, sp, #72
	mov	r1, #1
	mov	r0, r5
	bl	pthread_attr_setdetachstate
	b	.LBB0_15
.LBB0_15:                               @ %if.end11
	add	r7, sp, #108
	mov	r1, #0
	mov	r2, #2
	mov	r6, #0
	b	.LBB0_16
.LBB0_16:                               @ %if.end11
	mov	r9, #2
	mov	r0, r7
	bl	pthread_barrier_init
	ldr	r2, .LCPI0_2
	b	.LBB0_17
.LCPI0_2:
	.long	start
.LBB0_17:                               @ %if.end11
	add	r0, sp, #68
	mov	r1, r5
	mov	r3, r7
	bl	pthread_create
	cmp	r0, #0
	beq	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               @ %if.then16
	mov	r7, #6
	mov	r0, r8
	@APP
	svc	#0
	@NO_APP
	bl	__errno_location
	mov	r1, #11
	str	r1, [r0]
	b	.LBB0_24
.LBB0_19:                               @ %if.end19
	add	r5, sp, #108
	mov	r0, r5
	bl	pthread_barrier_wait
	mov	r0, r5
	b	.LBB0_20
.LBB0_20:                               @ %if.end19
	bl	pthread_barrier_destroy
	ldr	r0, .LCPI0_3
	mov	r7, #22
	str	r9, [sp, #12]
	b	.LBB0_21
.LCPI0_3:
	.long	mq_notify.zeros
.LBB0_21:                               @ %if.end19
	str	r8, [sp, #8]
	add	r1, sp, #4
	orr	r7, r7, #256
	str	r0, [sp, #4]
	b	.LBB0_22
.LBB0_22:                               @ %if.end19
	mov	r0, r4
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	cmp	r0, #0
	bge	.LBB0_25
	b	.LBB0_23
.LBB0_23:                               @ %if.then28
	ldr	r0, [sp, #68]
	bl	pthread_cancel
	mov	r7, #6
	mov	r0, r8
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_24
.LBB0_24:                               @ %cleanup
	mvn	r6, #0
	b	.LBB0_25
.LBB0_25:                               @ %cleanup
	mov	r0, r6
	add	sp, sp, #136
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	mq_notify, .Ltmp0-mq_notify
	.cantunwind
	.fnend

	.align	2
	.type	start,%function
start:                                  @ @start
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	ldr	r1, [r0, #24]
	ldr	r5, [r0, #20]
	b	.LBB1_3
.LBB1_3:                                @ %entry
	ldr	r4, [r1]
	ldr	r7, [r1, #12]
	bl	pthread_barrier_wait
	mov	r1, sp
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r0, r5
	mov	r2, #32
	mov	r3, #16640
	bl	recv
	b	.LBB1_5
.LBB1_5:                                @ %entry
	mov	r6, r0
	mov	r0, r5
	bl	close
	cmp	r6, #32
	ldrbeq	r0, [sp, #31]
	cmpeq	r0, #1
	bne	.LBB1_7
	b	.LBB1_6
.LBB1_6:                                @ %if.then
	mov	r0, r4
	mov	lr, pc
	mov	pc, r7
	b	.LBB1_7
.LBB1_7:                                @ %if.end
	mov	r0, #0
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	start, .Ltmp1-start
	.cantunwind
	.fnend

	.type	mq_notify.zeros,%object @ @mq_notify.zeros
	.section	.rodata,"a",%progbits
mq_notify.zeros:
	.zero	32
	.size	mq_notify.zeros, 32

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
