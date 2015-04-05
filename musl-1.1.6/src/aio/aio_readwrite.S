.section aio_readwrite_text
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
	.file	"src/aio/aio_readwrite.bc"
	.align	2
	.type	dummy,%function
.section bb0_0
dummy:                                  @ @dummy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy, .Ltmp0-dummy
	.cantunwind
	.fnend

	.globl	aio_read
	.align	2
	.type	aio_read,%function
.section bb1_0
aio_read:                               @ @aio_read
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r1, #0
	str	r1, [r0, #4]
	b	new_req
.Ltmp1:
	.size	aio_read, .Ltmp1-aio_read
	.cantunwind
	.fnend

	.align	2
	.type	new_req,%function
.section bb2_0
new_req:                                @ @new_req
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	.pad	#168
	sub	sp, sp, #168
	mov	r4, r0
	ldr	r0, [r4, #28]
	cmp	r0, #2
	bne	.LBB2_7
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %if.then
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.LBB2_9
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.then2
	ldm	r0, {r1, r2, r3, r7}
	ldr	r6, [r0, #16]
	ldr	r5, [r0, #20]
	add	r11, sp, #132
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %if.then2
	str	r5, [sp, #152]
	str	r6, [sp, #148]
	stm	r11, {r1, r2, r3, r7}
	ldr	r1, [r0, #24]
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %if.then2
	ldr	r2, [r0, #28]
	ldr	r0, [r0, #32]
	str	r0, [sp, #164]
	str	r2, [sp, #160]
	str	r1, [sp, #156]
	b	.LBB2_10
.section bb2_7
.LBB2_7:                                @ %if.else5
	add	r5, sp, #132
	mov	r0, r5
	bl	pthread_attr_init
	mov	r0, r5
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %if.else5
	mov	r1, #4096
	bl	pthread_attr_setstacksize
	mov	r0, r5
	mov	r1, #0
	bl	pthread_attr_setguardsize
	b	.LBB2_10
.section bb2_9
.LBB2_9:                                @ %if.else
	add	r0, sp, #132
	bl	pthread_attr_init
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.end9
	add	r6, sp, #132
	mov	r1, #1
	mov	r0, r6
	bl	pthread_attr_setdetachstate
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.end9
	add	r7, sp, #4
	mov	r0, r7
	bl	sigfillset
	mov	r0, #0
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.end9
	mov	r1, r7
	mov	r2, r7
	mov	r5, #0
	bl	pthread_sigmask
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.end9
	ldr	r2, .LCPI2_0
	mov	r0, #115
	mov	r1, r6
	mov	r3, r4
	b	.LBB2_14
.LCPI2_0:
	.long	io_thread
.section bb2_14
.LBB2_14:                               @ %if.end9
	str	r0, [r4, #96]
	mov	r0, sp
	bl	pthread_create
	cmp	r0, #0
	beq	.LBB2_16
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %if.then15
	bl	__errno_location
	mov	r1, #11
	mvn	r5, #0
	str	r1, [r0]
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %if.end17
	add	r1, sp, #4
	mov	r0, #2
	mov	r2, #0
	bl	pthread_sigmask
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %if.end17
	ldr	r0, [sp]
	str	r0, [r4, #84]
	mov	r0, r5
	add	sp, sp, #168
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	new_req, .Ltmp2-new_req
	.cantunwind
	.fnend

	.globl	aio_write
	.align	2
	.type	aio_write,%function
.section bb3_0
aio_write:                              @ @aio_write
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r1, #1
	str	r1, [r0, #4]
	b	new_req
.Ltmp3:
	.size	aio_write, .Ltmp3-aio_write
	.cantunwind
	.fnend

	.align	2
	.type	io_thread,%function
.section bb4_0
io_thread:                              @ @io_thread
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	.pad	#148
	sub	sp, sp, #148
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %entry
	mov	r6, r0
	ldr	r0, [r6, #32]
	ldr	r9, [r6, #104]
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %entry
	ldr	r8, [r6, #108]
	ldr	r4, [r6, #12]
	ldr	r10, [r6, #16]
	ldr	r2, [r6, #20]
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %entry
	ldr	r1, [r6, #24]
	ldr	r11, [r6, #28]
	ldr	r5, [r6]
	str	r0, [sp, #12]           @ 4-byte Spill
	ldr	r0, [r6, #4]
	cmp	r0, #0
	bne	.LBB4_10
	b	.LBB4_6
.section bb4_6
.LBB4_6:                                @ %if.then8
	str	r2, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r0, r5
	mov	r1, r4
	b	.LBB4_7
.section bb4_7
.LBB4_7:                                @ %if.then8
	mov	r2, r10
	str	r9, [sp]
	str	r8, [sp, #4]
	bl	pread
	mov	r7, r0
	cmp	r7, #0
	bge	.LBB4_14
	b	.LBB4_8
.section bb4_8
.LBB4_8:                                @ %land.lhs.true11
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #29
	bne	.LBB4_19
	b	.LBB4_9
.section bb4_9
.LBB4_9:                                @ %if.then14
	mov	r0, r5
	mov	r1, r4
	mov	r2, r10
	bl	read
	b	.LBB4_17
.section bb4_10
.LBB4_10:                               @ %entry
	mov	r7, #0
	str	r2, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	cmp	r0, #1
	bne	.LBB4_14
	b	.LBB4_11
.section bb4_11
.LBB4_11:                               @ %if.then
	mov	r0, r5
	mov	r1, #3
	bl	fcntl
	tst	r0, #1024
	bne	.LBB4_16
	b	.LBB4_12
.section bb4_12
.LBB4_12:                               @ %lor.lhs.false
	mov	r0, r5
	mov	r1, r4
	mov	r2, r10
	str	r9, [sp]
	b	.LBB4_13
.section bb4_13
.LBB4_13:                               @ %lor.lhs.false
	str	r8, [sp, #4]
	bl	pwrite
	mov	r7, r0
	cmp	r7, #0
	blt	.LBB4_15
	b	.LBB4_14
.section bb4_14
.LBB4_14:                               @ %if.end19.thread
	add	r4, r6, #96
	str	r7, [r6, #100]
	b	.LBB4_18
.section bb4_15
.LBB4_15:                               @ %land.lhs.true
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #29
	bne	.LBB4_19
	b	.LBB4_16
.section bb4_16
.LBB4_16:                               @ %if.then5
	mov	r0, r5
	mov	r1, r4
	mov	r2, r10
	bl	write
	b	.LBB4_17
.section bb4_17
.LBB4_17:                               @ %if.end19
	add	r4, r6, #96
	str	r0, [r6, #100]
	cmp	r0, #0
	blt	.LBB4_20
	b	.LBB4_18
.section bb4_18
.LBB4_18:                               @ %if.else23
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r4]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB4_21
.section bb4_19
.LBB4_19:                               @ %if.end19.thread60
	str	r7, [r6, #100]
	add	r4, r6, #96
	b	.LBB4_20
.section bb4_20
.LBB4_20:                               @ %if.then21
	bl	__errno_location
	ldr	r0, [r0]
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r4]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB4_21
.section bb4_21
.LBB4_21:                               @ %if.end25
	bl	__aio_wake
	cmp	r11, #2
	bne	.LBB4_23
	b	.LBB4_22
.section bb4_22
.LBB4_22:                               @ %sw.bb26
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB4_29
.section bb4_23
.LBB4_23:                               @ %if.end25
	cmp	r11, #0
	bne	.LBB4_29
	b	.LBB4_24
.section bb4_24
.LBB4_24:                               @ %sw.bb
	add	r4, sp, #20
	mov	r1, #128
	mov	r2, #0
	mov	r0, r4
	b	.LBB4_25
.section bb4_25
.LBB4_25:                               @ %sw.bb
	bl	__aeabi_memset
	ldr	r6, [sp, #8]            @ 4-byte Reload
	mvn	r0, #3
	str	r6, [sp, #20]
	b	.LBB4_26
.section bb4_26
.LBB4_26:                               @ %sw.bb
	str	r0, [sp, #28]
	bl	getpid
	mov	r5, r0
	str	r5, [sp, #32]
	b	.LBB4_27
.section bb4_27
.LBB4_27:                               @ %sw.bb
	bl	getuid
	str	r0, [sp, #36]
	ldr	r0, [sp, #16]           @ 4-byte Reload
	mov	r7, #178
	b	.LBB4_28
.section bb4_28
.LBB4_28:                               @ %sw.bb
	mov	r1, r6
	mov	r2, r4
	str	r0, [sp, #40]
	mov	r0, r5
	@APP
	svc	#0
	@NO_APP
	b	.LBB4_29
.section bb4_29
.LBB4_29:                               @ %sw.epilog
	mov	r0, #0
	add	sp, sp, #148
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	io_thread, .Ltmp4-io_thread
	.cantunwind
	.fnend


	.weak	__aio_wake
__aio_wake = dummy
	.weak	aio_read64
aio_read64 = aio_read
	.weak	aio_write64
aio_write64 = aio_write
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
