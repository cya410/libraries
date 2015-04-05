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
	.file	"src/thread/pthread_cancel.bc"
	.globl	__cancel
	.align	2
	.type	__cancel,%function
__cancel:                               @ @__cancel
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	mov	r0, #1
	str	r0, [r1, #-140]
	mov	r0, #0
	str	r0, [r1, #-136]
	mvn	r0, #0
	bl	pthread_exit
.Ltmp0:
	.size	__cancel, .Ltmp0-__cancel
	.cantunwind
	.fnend

	.globl	__syscall_cp_c
	.align	2
	.type	__syscall_cp_c,%function
__syscall_cp_c:                         @ @__syscall_cp_c
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r6, r0
	ldr	r0, .LCPI1_0
	b	.LBB1_3
.LCPI1_0:
	.long	__libc
.LBB1_3:                                @ %entry
	ldr	r5, [sp, #48]
	ldr	r4, [sp, #44]
	ldr	r8, [sp, #40]
	mov	r12, r2
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r2, r1
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %lor.lhs.false
	@APP
	bl	__a_gettp
	mov	r7, r0
	@NO_APP
	ldr	r0, [r7, #-140]
	cmp	r0, #0
	beq	.LBB1_8
	b	.LBB1_6
.LBB1_6:                                @ %if.then
	mov	r0, r2
	mov	r2, r3
	mov	r7, r6
	mov	r1, r12
	mov	r3, r8
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_7
.LBB1_7:                                @ %return
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.LBB1_8:                                @ %if.end
	stm	sp, {r3, r8}
	str	r4, [sp, #8]
	sub	r4, r7, #144
	mov	r1, r6
	b	.LBB1_9
.LBB1_9:                                @ %if.end
	mov	r3, r12
	str	r5, [sp, #12]
	mov	r0, r4
	bl	__syscall_cp_asm
	cmp	r6, #6
	beq	.LBB1_7
	b	.LBB1_10
.LBB1_10:                               @ %if.end
	cmn	r0, #4
	bne	.LBB1_7
	b	.LBB1_11
.LBB1_11:                               @ %land.lhs.true5
	ldr	r1, [r4]
	mvn	r0, #3
	cmp	r1, #0
	beq	.LBB1_7
	b	.LBB1_12
.LBB1_12:                               @ %land.lhs.true8
	ldr	r1, [r7, #-140]
	cmp	r1, #0
	bne	.LBB1_7
	b	.LBB1_13
.LBB1_13:                               @ %if.then11
	bl	__cancel
.Ltmp1:
	.size	__syscall_cp_c, .Ltmp1-__syscall_cp_c
	.cantunwind
	.fnend

	.globl	__testcancel
	.align	2
	.type	__testcancel,%function
__testcancel:                           @ @__testcancel
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	ldr	r0, .LCPI2_0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB2_4
	b	.LBB2_2
.LCPI2_0:
	.long	__libc
.LBB2_2:                                @ %if.end
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	ldr	r0, [r1, #-144]
	cmp	r0, #0
	beq	.LBB2_4
	b	.LBB2_3
.LBB2_3:                                @ %land.lhs.true
	ldr	r0, [r1, #-140]
	cmp	r0, #0
	beq	.LBB2_5
	b	.LBB2_4
.LBB2_4:                                @ %if.end4
	pop	{r11, lr}
	mov	pc, lr
.LBB2_5:                                @ %if.then3
	bl	__cancel
.Ltmp2:
	.size	__testcancel, .Ltmp2-__testcancel
	.cantunwind
	.fnend

	.globl	pthread_cancel
	.align	2
	.type	pthread_cancel,%function
pthread_cancel:                         @ @pthread_cancel
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	.pad	#144
	sub	sp, sp, #144
	b	.LBB3_2
.LBB3_2:                                @ %entry
	ldr	r6, .LCPI3_2
	mov	r4, r0
	ldrb	r0, [r6]
	cmp	r0, #0
	bne	.LBB3_6
	b	.LBB3_3
.LCPI3_2:
	.long	pthread_cancel.init
.LBB3_3:                                @ %if.then
	ldr	r1, .LCPI3_3
	add	r5, sp, #4
	mov	r2, #140
	mov	r0, r5
	b	.LBB3_4
.LCPI3_3:
	.long	.Linit_cancellation.sa
.LBB3_4:                                @ %if.then
	bl	__aeabi_memcpy
	add	r0, r5, #4
	bl	sigfillset
	mov	r0, #33
	b	.LBB3_5
.LBB3_5:                                @ %if.then
	mov	r1, r5
	mov	r2, #0
	bl	__libc_sigaction
	mov	r0, #1
	strb	r0, [r6]
	b	.LBB3_6
.LBB3_6:                                @ %if.end
	mov	r0, #1
	@APP
	bl	__a_barrier
	@NO_APP
	mov	r1, #33
	str	r0, [r4, #40]
	b	.LBB3_7
.LBB3_7:                                @ %if.end
	mov	r0, r4
	@APP
	bl	__a_barrier
	@NO_APP
	bl	pthread_kill
	add	sp, sp, #144
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp3:
	.size	pthread_cancel, .Ltmp3-pthread_cancel
	.cantunwind
	.fnend

	.align	2
	.type	cancel_handler,%function
cancel_handler:                         @ @cancel_handler
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	@APP
	bl	__a_gettp
	mov	r3, r0
	@NO_APP
	ldr	r1, [r2, #92]
	ldr	r0, [r3, #-144]
	cmp	r0, #0
	beq	.LBB4_7
	b	.LBB4_2
.LBB4_2:                                @ %lor.lhs.false
	ldr	r0, [r3, #-140]
	cmp	r0, #0
	bne	.LBB4_7
	b	.LBB4_3
.LBB4_3:                                @ %if.end
	ldr	r0, [r2, #108]
	orr	r0, r0, #1
	str	r0, [r2, #108]
	ldr	r0, [r3, #-136]
	cmp	r0, #0
	bne	.LBB4_8
	b	.LBB4_4
.LBB4_4:                                @ %lor.lhs.false3
	ldr	r0, .LCPI4_0
	cmp	r1, r0
	blo	.LBB4_6
	b	.LBB4_5
.LCPI4_0:
	.long	__cp_begin
.LBB4_5:                                @ %lor.lhs.false3
	ldr	r0, .LCPI4_2
	cmp	r1, r0
	blo	.LBB4_8
	b	.LBB4_6
.LCPI4_2:
	.long	__cp_end
.LBB4_6:                                @ %if.end9
	ldr	r0, [r3, #-160]
	mov	r7, #238
	mov	r1, #33
	@APP
	svc	#0
	@NO_APP
	b	.LBB4_7
.LBB4_7:                                @ %return
	pop	{r7, lr}
	mov	pc, lr
.LBB4_8:                                @ %if.then5
	mov	r0, #1
	add	r1, r2, #104
	mov	r2, #0
	str	r0, [r3, #-140]
	mov	r0, #2
	bl	pthread_sigmask
	bl	__cancel
.Ltmp4:
	.size	cancel_handler, .Ltmp4-cancel_handler
	.cantunwind
	.fnend

	.hidden	__libc
	.type	pthread_cancel.init,%object @ @pthread_cancel.init
	.local	pthread_cancel.init
	.comm	pthread_cancel.init,1,1
	.type	.Linit_cancellation.sa,%object @ @init_cancellation.sa
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
.Linit_cancellation.sa:
	.long	cancel_handler
	.zero	128
	.long	268435460               @ 0x10000004
	.long	0
	.size	.Linit_cancellation.sa, 140


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
