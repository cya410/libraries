.section posix_spawn_text
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
	.file	"src/process/posix_spawn.bc"
	.globl	__posix_spawnx
	.align	2
	.type	__posix_spawnx,%function
.section bb0_0
__posix_spawnx:                         @ @__posix_spawnx
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#532
	sub	sp, sp, #532
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r8, r0
	mov	r0, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	add	r9, sp, #364
	mov	r4, r1
	mov	r1, #524288
	mov	r5, r3
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r7, r2
	str	r0, [sp, #528]
	mov	r0, r9
	bl	pipe2
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then
	bl	__errno_location
	b	.LBB0_25
.section bb0_7
.LBB0_7:                                @ %if.end
	ldr	r10, [sp, #1600]
	ldr	r11, [sp, #1596]
	ldr	r6, [sp, #1592]
	add	r1, sp, #524
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	mov	r0, #1
	bl	pthread_setcancelstate
	str	r4, [sp, #500]
	str	r7, [sp, #504]
	str	r5, [sp, #508]
	cmp	r6, #0
	bne	.LBB0_10
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %cond.false
	add	r6, sp, #28
	mov	r1, #336
	mov	r2, #0
	mov	r0, r6
	bl	__aeabi_memset
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %cond.end
	mvn	r0, #0
	add	r5, r9, #8
	add	r1, sp, #8
	str	r6, [sp, #512]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %cond.end
	str	r11, [sp, #516]
	str	r10, [sp, #520]
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %cond.end
	str	r0, [sp, #20]
	str	r0, [sp, #16]
	mov	r0, #0
	mov	r2, r5
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %cond.end
	bl	pthread_sigmask
	add	r0, sp, #532
	mov	r2, #17
	mov	r3, r9
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %cond.end
	add	r1, r0, #1024
	ldr	r0, .LCPI0_0
	orr	r2, r2, #16640
	bl	__clone
	b	.LBB0_15
.LCPI0_0:
	.long	child
.section bb0_15
.LBB0_15:                               @ %cond.end
	mov	r6, r0
	ldr	r0, [sp, #368]
	bl	close
	cmp	r6, #1
	blt	.LBB0_18
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then17
	ldr	r0, [sp, #364]
	add	r1, sp, #528
	mov	r2, #4
	bl	read
	cmp	r0, #4
	bne	.LBB0_19
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.else
	mov	r0, #0
	add	r1, sp, #4
	mov	r2, #0
	str	r0, [sp, #4]
	mov	r0, r6
	bl	waitpid
	b	.LBB0_21
.section bb0_18
.LBB0_18:                               @ %if.else26
	rsb	r0, r6, #0
	b	.LBB0_20
.section bb0_19
.LBB0_19:                               @ %if.then22
	mov	r0, #0
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end27
	str	r0, [sp, #528]
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end27
	ldr	r0, [sp, #364]
	bl	close
	cmp	r8, #0
	beq	.LBB0_23
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end27
	ldr	r0, [sp, #528]
	cmp	r0, #0
	streq	r6, [r8]
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end34
	mov	r0, #2
	mov	r1, r5
	mov	r2, #0
	bl	pthread_sigmask
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end34
	ldr	r0, [sp, #524]
	mov	r1, #0
	bl	pthread_setcancelstate
	add	r0, sp, #528
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %cleanup
	ldr	r0, [r0]
	add	sp, sp, #532
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__posix_spawnx, .Ltmp0-__posix_spawnx
	.cantunwind
	.fnend

	.align	2
	.type	child,%function
.section bb1_0
child:                                  @ @child
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
	.pad	#284
	sub	sp, sp, #284
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	add	r7, sp, #140
	mov	r5, r0
	mov	r1, #140
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r2, #0
	mov	r11, #0
	mov	r0, r7
	str	r5, [sp, #4]            @ 4-byte Spill
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	bl	__aeabi_memset
	ldm	r5, {r0, r4}
	ldr	r1, [r5, #144]
	ldr	r10, [r5, #148]
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	str	r1, [sp, #8]            @ 4-byte Spill
	bl	close
	add	r9, sp, #12
	mov	r0, r9
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %entry
	bl	__get_handler_set
	mov	r5, r10
	mvn	r8, #30
	ldr	r0, [r5], #8
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r6, r8, #32
	tst	r0, #4
	beq	.LBB1_10
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %land.lhs.true
                                        @   in Loop: Header=BB1_8 Depth=1
	mov	r0, r5
	mov	r1, r6
	bl	sigismember
	cmp	r0, #0
	bne	.LBB1_14
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.else
                                        @   in Loop: Header=BB1_8 Depth=1
	mov	r0, r9
	mov	r1, r6
	bl	sigismember
	cmp	r0, #0
	beq	.LBB1_16
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.then10
                                        @   in Loop: Header=BB1_8 Depth=1
	cmp	r8, #2
	bhi	.LBB1_13
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then12
                                        @   in Loop: Header=BB1_8 Depth=1
	mov	r0, #1
	str	r0, [sp, #140]
	b	.LBB1_15
.section bb1_13
.LBB1_13:                               @ %if.else15
                                        @   in Loop: Header=BB1_8 Depth=1
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	bl	__libc_sigaction
	ldr	r0, [sp, #140]
	cmp	r0, #1
	beq	.LBB1_16
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.end
                                        @   in Loop: Header=BB1_8 Depth=1
	str	r11, [sp, #140]
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %if.end26
                                        @   in Loop: Header=BB1_8 Depth=1
	mov	r0, r6
	mov	r1, r7
	mov	r2, #0
	bl	__libc_sigaction
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %for.inc
                                        @   in Loop: Header=BB1_8 Depth=1
	ldr	r0, [r10]
	add	r8, r8, #1
	cmp	r8, #33
	bne	.LBB1_8
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %for.end
	tst	r0, #2
	beq	.LBB1_21
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %if.then31
	ldr	r1, [r10, #4]
	mov	r7, #57
	mov	r0, #0
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %if.then31
	mov	r2, r0
	str	r2, [sp, #280]
	cmp	r2, #0
	bne	.LBB1_50
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %if.then31.if.end36_crit_edge
	ldr	r0, [r10]
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %if.end36
	tst	r0, #1
	beq	.LBB1_26
	b	.LBB1_22
.section bb1_22
.LBB1_22:                               @ %if.then40
	mov	r7, #200
	@APP
	svc	#0
	@NO_APP
	mov	r7, #214
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %if.then40
	mov	r2, r0
	str	r2, [sp, #280]
	cmp	r2, #0
	bne	.LBB1_50
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %lor.lhs.false
	mov	r7, #199
	@APP
	svc	#0
	@NO_APP
	mov	r7, #213
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %lor.lhs.false
	mov	r2, r0
	str	r2, [sp, #280]
	cmp	r2, #0
	bne	.LBB1_50
	b	.LBB1_26
.section bb1_26
.LBB1_26:                               @ %if.end49
	ldr	r0, [sp, #8]            @ 4-byte Reload
	cmp	r0, #0
	ldrne	r0, [r0, #8]
	cmpne	r0, #0
	beq	.LBB1_44
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %for.cond55
                                        @ =>This Inner Loop Header: Depth=1
	mov	r3, r0
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.LBB1_27
	b	.LBB1_29
.section bb1_28
.LBB1_28:                               @ %for.inc96
                                        @   in Loop: Header=BB1_29 Depth=1
	ldr	r3, [r3, #4]
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %for.cond61.preheader
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r3, #0
	beq	.LBB1_44
	b	.LBB1_30
.section bb1_30
.LBB1_30:                               @ %for.body63
                                        @   in Loop: Header=BB1_29 Depth=1
	ldr	r0, [r3, #12]
	cmp	r0, r4
	bne	.LBB1_33
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %if.then66
                                        @   in Loop: Header=BB1_29 Depth=1
	mov	r7, #41
	mov	r0, r4
	@APP
	svc	#0
	@NO_APP
	mov	r2, r0
	str	r2, [sp, #280]
	cmp	r2, #0
	blt	.LBB1_50
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %if.end70
                                        @   in Loop: Header=BB1_29 Depth=1
	mov	r7, #6
	mov	r0, r4
	@APP
	svc	#0
	@NO_APP
	ldr	r4, [sp, #280]
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %if.end72
                                        @   in Loop: Header=BB1_29 Depth=1
	ldr	r0, [r3, #8]
	cmp	r0, #3
	beq	.LBB1_37
	b	.LBB1_34
.section bb1_34
.LBB1_34:                               @ %if.end72
                                        @   in Loop: Header=BB1_29 Depth=1
	cmp	r0, #2
	bne	.LBB1_42
	b	.LBB1_35
.section bb1_35
.LBB1_35:                               @ %sw.bb75
                                        @   in Loop: Header=BB1_29 Depth=1
	ldr	r1, [r3, #12]
	ldr	r0, [r3, #16]
	mov	r7, #63
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_36
.section bb1_36
.LBB1_36:                               @ %sw.bb75
                                        @   in Loop: Header=BB1_29 Depth=1
	mov	r2, r0
	str	r2, [sp, #280]
	cmp	r2, #0
	bge	.LBB1_28
	b	.LBB1_50
.section bb1_37
.LBB1_37:                               @ %sw.bb81
                                        @   in Loop: Header=BB1_29 Depth=1
	ldr	r1, [r3, #20]
	ldr	r2, [r3, #24]
	add	r0, r3, #28
	mov	r7, #5
	b	.LBB1_38
.section bb1_38
.LBB1_38:                               @ %sw.bb81
                                        @   in Loop: Header=BB1_29 Depth=1
	orr	r1, r1, #131072
	@APP
	svc	#0
	@NO_APP
	mov	r2, r0
	str	r2, [sp, #280]
	cmp	r2, #0
	blt	.LBB1_50
	b	.LBB1_39
.section bb1_39
.LBB1_39:                               @ %if.end85
                                        @   in Loop: Header=BB1_29 Depth=1
	ldr	r1, [r3, #12]
	cmp	r2, r1
	beq	.LBB1_28
	b	.LBB1_40
.section bb1_40
.LBB1_40:                               @ %if.then88
                                        @   in Loop: Header=BB1_29 Depth=1
	mov	r7, #63
	mov	r0, r2
	@APP
	svc	#0
	@NO_APP
	str	r0, [sp, #280]
	cmp	r0, #0
	blt	.LBB1_49
	b	.LBB1_41
.section bb1_41
.LBB1_41:                               @ %if.end93
                                        @   in Loop: Header=BB1_29 Depth=1
	mov	r7, #6
	mov	r0, r2
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_28
.section bb1_42
.LBB1_42:                               @ %if.end72
                                        @   in Loop: Header=BB1_29 Depth=1
	cmp	r0, #1
	bne	.LBB1_28
	b	.LBB1_43
.section bb1_43
.LBB1_43:                               @ %sw.bb
                                        @   in Loop: Header=BB1_29 Depth=1
	ldr	r0, [r3, #12]
	mov	r7, #6
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_28
.section bb1_44
.LBB1_44:                               @ %fail
	mov	r7, #221
	mov	r0, r4
	mov	r1, #2
	mov	r2, #1
	b	.LBB1_45
.section bb1_45
.LBB1_45:                               @ %fail
	@APP
	svc	#0
	@NO_APP
	mov	r2, #0
	ldr	r0, [r10], #136
	ldr	r5, [sp, #4]            @ 4-byte Reload
	b	.LBB1_46
.section bb1_46
.LBB1_46:                               @ %fail
	tst	r0, #8
	mov	r0, #2
	addeq	r10, r5, #8
	mov	r1, r10
	b	.LBB1_47
.section bb1_47
.LBB1_47:                               @ %fail
	bl	pthread_sigmask
	ldr	r3, [r5, #140]
	ldr	r0, [r5, #136]
	ldr	r1, [r5, #152]
	b	.LBB1_48
.section bb1_48
.LBB1_48:                               @ %fail
	ldr	r2, [r5, #156]
	mov	lr, pc
	mov	pc, r3
	bl	__errno_location
	ldr	r0, [r0]
	str	r0, [sp, #280]
	cmp	r0, #0
	bne	.LBB1_51
	b	.LBB1_53
.section bb1_49
.LBB1_49:
	mov	r2, r0
	b	.LBB1_50
.section bb1_50
.LBB1_50:                               @ %fail.thread
	rsb	r0, r2, #0
	str	r0, [sp, #280]
	b	.LBB1_51
.section bb1_51
.LBB1_51:                               @ %while.cond.preheader
	add	r1, sp, #280
	mov	r7, #4
	mov	r2, #4
	b	.LBB1_52
.section bb1_52
.LBB1_52:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	blt	.LBB1_52
	b	.LBB1_53
.section bb1_53
.LBB1_53:                               @ %if.end113
	mov	r0, #127
	bl	_exit
.Ltmp1:
	.size	child, .Ltmp1-child
	.cantunwind
	.fnend

	.globl	posix_spawn
	.align	2
	.type	posix_spawn,%function
.section bb2_0
posix_spawn:                            @ @posix_spawn
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r12, r2
	ldr	r2, [sp, #28]
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	str	r2, [sp, #8]
	ldr	r2, [sp, #24]
	str	r2, [sp, #4]
	ldr	r2, .LCPI2_0
	b	.LBB2_3
.LCPI2_0:
	.long	execve
.section bb2_3
.LBB2_3:                                @ %entry
	str	r3, [sp]
	mov	r3, r12
	bl	__posix_spawnx
	add	sp, sp, #16
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	posix_spawn, .Ltmp2-posix_spawn
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
