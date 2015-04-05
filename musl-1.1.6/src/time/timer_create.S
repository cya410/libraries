.section timer_create_text
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
	.file	"src/time/timer_create.bc"
	.align	2
	.type	dummy_1,%function
.section bb0_0
dummy_1:                                @ @dummy_1
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy_1, .Ltmp0-dummy_1
	.cantunwind
	.fnend

	.globl	timer_create
	.align	2
	.type	timer_create,%function
.section bb1_0
timer_create:                           @ @timer_create
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#212
	sub	sp, sp, #212
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r6, r1
	mov	r11, r2
	mov	r5, r0
	mov	r1, #0
	cmp	r6, #0
	beq	.LBB1_8
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %cond.end
	ldr	r0, [r6, #8]
	cmp	r0, #2
	beq	.LBB1_12
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %cond.end
	cmp	r0, #1
	bhi	.LBB1_16
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.then
	ldr	r1, [r6]
	str	r1, [sp, #132]
	ldr	r1, [r6, #4]
	str	r1, [sp, #136]
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %if.then
	str	r0, [sp, #140]
	mov	r0, #0
	add	r1, sp, #132
	str	r0, [sp, #144]
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.end
	mov	r7, #1
	add	r2, sp, #128
	mov	r0, r5
	orr	r7, r7, #256
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %if.end
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB1_34
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.end8
	ldr	r0, [sp, #128]
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %sw.epilog
	str	r0, [r11]
	mov	r0, #0
	b	.LBB1_34
.section bb1_12
.LBB1_12:                               @ %sw.bb9
	ldr	r0, .LCPI1_3
	ldr	r1, .LCPI1_4
	bl	pthread_once
	ldr	r0, [r6, #16]
	cmp	r0, #0
	beq	.LBB1_17
	b	.LBB1_13
.LCPI1_3:
	.long	timer_create.once
.LCPI1_4:
	.long	install_handler
.section bb1_13
.LBB1_13:                               @ %if.then12
	ldr	r12, [r0]
	ldmib	r0, {r2, r3, r7}
	ldr	r4, [r0, #16]
	ldr	r1, [r0, #20]
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.then12
	add	r8, sp, #176
	str	r1, [sp, #192]
	str	r4, [sp, #188]
	stm	r8, {r2, r3, r7}
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %if.then12
	str	r12, [sp, #172]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r0, [r0, #32]
	str	r0, [sp, #204]
	str	r2, [sp, #200]
	str	r1, [sp, #196]
	b	.LBB1_18
.section bb1_16
.LBB1_16:                               @ %sw.default
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB1_34
.section bb1_17
.LBB1_17:                               @ %if.else
	add	r0, sp, #172
	bl	pthread_attr_init
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %if.end15
	add	r8, sp, #172
	mov	r1, #1
	mov	r0, r8
	bl	pthread_attr_setdetachstate
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %if.end15
	add	r9, sp, #148
	mov	r1, #0
	mov	r2, #2
	mov	r10, #0
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %if.end15
	mov	r0, r9
	bl	pthread_barrier_init
	mov	r7, sp
	str	r6, [sp, #168]
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %if.end15
	mov	r0, r7
	bl	__block_app_sigs
	ldr	r2, .LCPI1_5
	add	r0, sp, #208
	b	.LBB1_22
.LCPI1_5:
	.long	start
.section bb1_22
.LBB1_22:                               @ %if.end15
	mov	r1, r8
	mov	r3, r9
	bl	pthread_create
	mov	r6, r0
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %if.end15
	mov	r0, r7
	bl	__restore_sigs
	cmp	r6, #0
	beq	.LBB1_25
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %if.then20
	bl	__errno_location
	str	r6, [r0]
	mvn	r0, #0
	b	.LBB1_34
.section bb1_25
.LBB1_25:                               @ %if.end22
	mov	r0, #32
	str	r10, [sp, #132]
	mov	r7, #1
	add	r1, sp, #132
	b	.LBB1_26
.section bb1_26
.LBB1_26:                               @ %if.end22
	add	r2, sp, #128
	str	r0, [sp, #136]
	mov	r0, #4
	orr	r7, r7, #256
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %if.end22
	str	r0, [sp, #140]
	ldr	r0, [sp, #208]
	ldr	r0, [r0, #24]
	str	r0, [sp, #144]
	b	.LBB1_28
.section bb1_28
.LBB1_28:                               @ %if.end22
	mov	r0, r5
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	cmp	r0, #0
	blt	.LBB1_30
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %if.end22.if.end31_crit_edge
	ldr	r0, [sp, #128]
	b	.LBB1_31
.section bb1_30
.LBB1_30:                               @ %if.then30
	mvn	r0, #0
	str	r0, [sp, #128]
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %if.end31
	ldr	r1, [sp, #208]
	str	r0, [r1, #148]
	add	r0, sp, #148
	bl	pthread_barrier_wait
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %if.end31
	ldr	r1, [sp, #128]
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB1_34
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %if.end36
	ldr	r0, [sp, #208]
	mov	r1, #-2147483648
	orr	r0, r1, r0, lsr #1
	b	.LBB1_11
.section bb1_34
.LBB1_34:                               @ %cleanup
	add	sp, sp, #212
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	timer_create, .Ltmp1-timer_create
	.cantunwind
	.fnend

	.align	2
	.type	start,%function
.section bb2_0
start:                                  @ @start
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r1, r0
	@APP
	bl	__a_gettp
	mov	r4, r0
	@NO_APP
	ldr	r2, [r1, #20]
	ldr	r3, [r2, #12]
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	str	r3, [r4, #-108]
	ldr	r0, [r2]
	str	r0, [r4, #-112]
	mov	r0, r1
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	bl	pthread_barrier_wait
	ldr	r5, [r4, #-36]!
	cmp	r5, #0
	blt	.LBB2_10
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %if.then
	mov	r0, #-2147483648
	mov	r1, sp
	mov	r2, #0
	str	r0, [sp]
	mov	r0, #4
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %arrayinit.body
                                        @ =>This Inner Loop Header: Depth=1
	str	r2, [r1, r0]
	add	r0, r0, #4
	cmp	r0, #8
	bne	.LBB2_6
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %arrayinit.end3
	mov	r1, sp
	mov	r7, #175
	mov	r0, #1
	mov	r2, #0
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %arrayinit.end3
	mov	r3, #8
	@APP
	svc	#0
	@NO_APP
	mov	r1, #0
	mov	r2, r5
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %arrayinit.end3
	mov	r3, #1
	mov	r0, r4
	bl	__wait
	mov	r7, #5
	mov	r0, r5
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.end
	mov	r0, #0
	add	sp, sp, #8
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp2:
	.size	start, .Ltmp2-start
	.cantunwind
	.fnend

	.align	2
	.type	install_handler,%function
.section bb3_0
install_handler:                        @ @install_handler
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	.pad	#144
	sub	sp, sp, #144
	ldr	r1, .LCPI3_0
	add	r4, sp, #4
	b	.LBB3_2
.LCPI3_0:
	.long	.Linstall_handler.sa
.section bb3_2
.LBB3_2:                                @ %entry
	mov	r2, #140
	mov	r0, r4
	bl	__aeabi_memcpy
	mov	r0, #32
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %entry
	mov	r1, r4
	mov	r2, #0
	bl	__libc_sigaction
	add	sp, sp, #144
	pop	{r4, lr}
	mov	pc, lr
.Ltmp3:
	.size	install_handler, .Ltmp3-install_handler
	.cantunwind
	.fnend

	.align	2
	.type	timer_handler,%function
.section bb4_0
timer_handler:                          @ @timer_handler
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	.pad	#408
	sub	sp, sp, #408
	mov	r5, r1
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %entry
	ldr	r4, [r1, #-112]
	ldr	r6, [r1, #-108]
	add	r0, sp, #16
	bl	setjmp
	cmp	r0, #0
	bne	.LBB4_7
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %land.lhs.true
	ldr	r0, [r5, #8]
	cmn	r0, #2
	bne	.LBB4_7
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %do.body
	ldr	r1, .LCPI4_0
	add	r5, sp, #4
	add	r2, sp, #16
	mov	r0, r5
	b	.LBB4_6
.LCPI4_0:
	.long	cleanup_fromsig
.section bb4_6
.LBB4_6:                                @ %do.body
	bl	_pthread_cleanup_push
	mov	r0, r4
	mov	lr, pc
	mov	pc, r6
	mov	r0, r5
	mov	r1, #1
	bl	_pthread_cleanup_pop
	b	.LBB4_7
.section bb4_7
.LBB4_7:                                @ %if.end
	add	sp, sp, #408
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp4:
	.size	timer_handler, .Ltmp4-timer_handler
	.cantunwind
	.fnend

	.align	2
	.type	cleanup_fromsig,%function
.section bb5_0
cleanup_fromsig:                        @ @cleanup_fromsig
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	mov	r4, r0
	@APP
	bl	__a_gettp
	mov	r5, r0
	@NO_APP
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %entry
	sub	r0, r5, #184
	bl	__pthread_tsd_run_dtors
	mov	r0, #0
	str	r0, [r5, #-144]
	b	.LBB5_3
.section bb5_3
.LBB5_3:                                @ %entry
	str	r0, [r5, #-100]
	str	r0, [r5, #-140]
	str	r0, [r5, #-136]
	str	r0, [r5, #-40]
	bl	__reset_tls
	mov	r0, r4
	mov	r1, #1
	bl	longjmp
.Ltmp5:
	.size	cleanup_fromsig, .Ltmp5-cleanup_fromsig
	.cantunwind
	.fnend

	.type	timer_create.once,%object @ @timer_create.once
	.local	timer_create.once
	.comm	timer_create.once,4,4
	.type	.Linstall_handler.sa,%object @ @install_handler.sa
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
.Linstall_handler.sa:
	.long	timer_handler
	.zero	128
	.long	268435460               @ 0x10000004
	.long	0
	.size	.Linstall_handler.sa, 140

	.hidden	__syscall_ret

	.weak	__pthread_tsd_run_dtors
__pthread_tsd_run_dtors = dummy_1
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
