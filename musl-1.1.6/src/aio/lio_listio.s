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
	.file	"src/aio/lio_listio.bc"
	.globl	lio_listio
	.align	2
	.type	lio_listio,%function
lio_listio:                             @ @lio_listio
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#168
	sub	sp, sp, #168
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r2
	mov	r9, r3
	mov	r4, r1
	mov	r7, r0
	cmp	r6, #0
	blt	.LBB0_24
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	cmp	r7, #0
	beq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %lor.lhs.false
	cmp	r9, #0
	mov	r8, #0
	ldrne	r0, [r9, #8]
	cmpne	r0, #1
	beq	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %if.then3
	mov	r0, #8
	add	r0, r0, r6, lsl #2
	bl	malloc
	mov	r8, r0
	cmp	r8, #0
	beq	.LBB0_34
	b	.LBB0_7
.LBB0_7:                                @ %if.end8
	lsl	r2, r6, #2
	add	r0, r8, #8
	mov	r1, r4
	str	r9, [r8]
	str	r6, [r8, #4]
	bl	memcpy
	b	.LBB0_8
.LBB0_8:                                @ %if.end14
	cmp	r6, #1
	blt	.LBB0_17
	b	.LBB0_9
.LBB0_9:
	mov	r5, #0
	b	.LBB0_10
.LBB0_10:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, r5, lsl #2]
	cmp	r0, #0
	beq	.LBB0_16
	b	.LBB0_11
.LBB0_11:                               @ %if.end18
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r0, #4]
	cmp	r1, #1
	bne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %sw.bb22
                                        @   in Loop: Header=BB0_10 Depth=1
	bl	aio_write
	b	.LBB0_15
.LBB0_13:                               @ %if.end18
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r1, #0
	bne	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               @ %sw.bb
                                        @   in Loop: Header=BB0_10 Depth=1
	bl	aio_read
	b	.LBB0_15
.LBB0_15:                               @ %sw.epilog
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r0, #0
	bne	.LBB0_33
	b	.LBB0_16
.LBB0_16:                               @ %for.inc
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r5, r5, #1
	cmp	r5, r6
	blt	.LBB0_10
	b	.LBB0_17
.LBB0_17:                               @ %for.end
	cmp	r7, #0
	beq	.LBB0_25
	b	.LBB0_18
.LBB0_18:                               @ %if.end32
	mov	r4, #0
	cmp	r8, #0
	beq	.LBB0_36
	b	.LBB0_19
.LBB0_19:                               @ %if.then34
	ldr	r0, [r9, #8]
	cmp	r0, #2
	bne	.LBB0_26
	b	.LBB0_20
.LBB0_20:                               @ %if.then37
	ldr	r0, [r9, #16]
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_21
.LBB0_21:                               @ %if.then39
	ldm	r0, {r1, r2, r3, r7}
	ldr	r6, [r0, #16]
	ldr	r5, [r0, #20]
	add	r4, sp, #132
	b	.LBB0_22
.LBB0_22:                               @ %if.then39
	str	r5, [sp, #152]
	str	r6, [sp, #148]
	stm	r4, {r1, r2, r3, r7}
	ldr	r1, [r0, #24]
	b	.LBB0_23
.LBB0_23:                               @ %if.then39
	ldr	r2, [r0, #28]
	ldr	r0, [r0, #32]
	str	r0, [sp, #164]
	str	r2, [sp, #160]
	str	r1, [sp, #156]
	b	.LBB0_29
.LBB0_24:                               @ %if.then
	bl	__errno_location
	mov	r1, #22
	b	.LBB0_35
.LBB0_25:                               @ %if.then30
	mov	r0, r8
	bl	lio_wait
	mov	r4, r0
	mov	r0, r8
	bl	free
	b	.LBB0_36
.LBB0_26:                               @ %if.else43
	add	r4, sp, #132
	mov	r0, r4
	bl	pthread_attr_init
	mov	r0, r4
	b	.LBB0_27
.LBB0_27:                               @ %if.else43
	mov	r1, #4096
	bl	pthread_attr_setstacksize
	mov	r0, r4
	mov	r1, #0
	bl	pthread_attr_setguardsize
	b	.LBB0_29
.LBB0_28:                               @ %if.else
	add	r0, sp, #132
	bl	pthread_attr_init
	b	.LBB0_29
.LBB0_29:                               @ %if.end47
	add	r5, sp, #132
	mov	r1, #1
	mov	r0, r5
	bl	pthread_attr_setdetachstate
	b	.LBB0_30
.LBB0_30:                               @ %if.end47
	add	r6, sp, #4
	mov	r0, r6
	bl	sigfillset
	mov	r0, #0
	b	.LBB0_31
.LBB0_31:                               @ %if.end47
	mov	r1, r6
	mov	r2, r6
	mov	r4, #0
	bl	pthread_sigmask
	b	.LBB0_32
.LBB0_32:                               @ %if.end47
	ldr	r2, .LCPI0_0
	mov	r0, sp
	mov	r1, r5
	mov	r3, r8
	bl	pthread_create
	cmp	r0, #0
	beq	.LBB0_37
	b	.LBB0_33
.LCPI0_0:
	.long	wait_thread
.LBB0_33:                               @ %if.then26
	mov	r0, r8
	bl	free
	b	.LBB0_34
.LBB0_34:                               @ %if.then6
	bl	__errno_location
	mov	r1, #11
	b	.LBB0_35
.LBB0_35:                               @ %return
	str	r1, [r0]
	mvn	r4, #0
	b	.LBB0_36
.LBB0_36:                               @ %return
	mov	r0, r4
	add	sp, sp, #168
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.LBB0_37:                               @ %if.end55
	add	r1, sp, #4
	mov	r0, #2
	mov	r2, #0
	bl	pthread_sigmask
	b	.LBB0_36
.Ltmp0:
	.size	lio_listio, .Ltmp0-lio_listio
	.cantunwind
	.fnend

	.align	2
	.type	lio_wait,%function
lio_wait:                               @ @lio_wait
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r10, r0
	mov	r8, #0
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r9, #0
	mov	r7, #0
	ldr	r6, [r10, #4]
	add	r5, r10, #8
	b	.LBB1_5
.LBB1_4:                                @ %for.inc
                                        @   in Loop: Header=BB1_5 Depth=1
	add	r7, r7, #1
	mov	r9, r1
	b	.LBB1_5
.LBB1_5:                                @ %for.cond3
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, r6
	bge	.LBB1_8
	b	.LBB1_6
.LBB1_6:                                @ %for.body
                                        @   in Loop: Header=BB1_5 Depth=1
	add	r4, r10, r7, lsl #2
	ldr	r0, [r4, #8]!
	cmp	r0, #0
	beq	.LBB1_11
	b	.LBB1_7
.LBB1_7:                                @ %if.end
                                        @   in Loop: Header=BB1_5 Depth=1
	bl	aio_error
	cmp	r0, #115
	bne	.LBB1_12
	b	.LBB1_8
.LBB1_8:                                @ %for.end
                                        @   in Loop: Header=BB1_5 Depth=1
	cmp	r7, r6
	beq	.LBB1_13
	b	.LBB1_9
.LBB1_9:                                @ %if.end18
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r7, #0
	b	.LBB1_10
.LBB1_10:                               @ %if.end18
                                        @   in Loop: Header=BB1_5 Depth=1
	bl	aio_suspend
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	beq	.LBB1_5
	b	.LBB1_15
.LBB1_11:                               @   in Loop: Header=BB1_5 Depth=1
	mov	r1, r9
	b	.LBB1_4
.LBB1_12:                               @ %if.end
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r1, #1
	cmp	r0, #0
	str	r8, [r4]
	moveq	r1, r9
	b	.LBB1_4
.LBB1_13:                               @ %if.then13
	mov	r0, #0
	cmp	r9, #0
	beq	.LBB1_15
	b	.LBB1_14
.LBB1_14:                               @ %if.then15
	bl	__errno_location
	mov	r1, #5
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB1_15
.LBB1_15:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp1:
	.size	lio_wait, .Ltmp1-lio_wait
	.cantunwind
	.fnend

	.align	2
	.type	wait_thread,%function
wait_thread:                            @ @wait_thread
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#128
	sub	sp, sp, #128
	mov	r4, r0
	ldr	r7, [r4]
	b	.LBB2_3
.LBB2_3:                                @ %entry
                                        @ kill: R0<def> R4<kill>
	bl	lio_wait
	mov	r0, r4
	bl	free
	ldr	r0, [r7, #8]
	cmp	r0, #2
	bne	.LBB2_6
	b	.LBB2_4
.LBB2_4:                                @ %sw.bb2
	ldrb	r0, [r7]
	ldrb	r1, [r7, #1]
	ldrb	r2, [r7, #2]
	ldrb	r3, [r7, #3]
	b	.LBB2_5
.LBB2_5:                                @ %sw.bb2
	orr	r0, r0, r1, lsl #8
	ldr	r1, [r7, #12]
	orr	r2, r2, r3, lsl #8
	orr	r0, r0, r2, lsl #16
	mov	lr, pc
	mov	pc, r1
	b	.LBB2_12
.LBB2_6:                                @ %entry
	cmp	r0, #0
	bne	.LBB2_12
	b	.LBB2_7
.LBB2_7:                                @ %sw.bb
	mov	r4, sp
	mov	r1, #128
	mov	r2, #0
	mov	r0, r4
	b	.LBB2_8
.LBB2_8:                                @ %sw.bb
	bl	__aeabi_memset
	ldr	r5, [r7, #4]
	mvn	r0, #3
	str	r5, [sp]
	b	.LBB2_9
.LBB2_9:                                @ %sw.bb
	str	r0, [sp, #8]
	bl	getpid
	mov	r6, r0
	str	r6, [sp, #12]
	b	.LBB2_10
.LBB2_10:                               @ %sw.bb
	bl	getuid
	str	r0, [sp, #16]
	mov	r1, r5
	mov	r2, r4
	b	.LBB2_11
.LBB2_11:                               @ %sw.bb
	ldr	r0, [r7]
	mov	r7, #178
	str	r0, [sp, #20]
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	b	.LBB2_12
.LBB2_12:                               @ %sw.epilog
	mov	r0, #0
	add	sp, sp, #128
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	wait_thread, .Ltmp2-wait_thread
	.cantunwind
	.fnend


	.weak	lio_listio64
lio_listio64 = lio_listio
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
