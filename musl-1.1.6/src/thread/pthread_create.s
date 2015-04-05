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
	.file	"src/thread/pthread_create.bc"
	.globl	__pthread_exit
	.align	2
	.type	__pthread_exit,%function
__pthread_exit:                         @ @__pthread_exit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#128
	sub	sp, sp, #128
	mov	r1, r0
	@APP
	bl	__a_gettp
	mov	r5, r0
	@NO_APP
	str	r1, [r5, #-104]
	b	.LBB0_4
.LBB0_3:                                @ %while.body
                                        @   in Loop: Header=BB0_4 Depth=1
	ldr	r2, [r1]
	ldmib	r1, {r0, r1}
	str	r1, [r5, #-100]
	mov	lr, pc
	mov	pc, r2
	b	.LBB0_4
.LBB0_4:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r5, #-100]
	cmp	r1, #0
	bne	.LBB0_3
	b	.LBB0_5
.LBB0_5:                                @ %while.end
	bl	__pthread_tsd_run_dtors
	sub	r0, r5, #20
	bl	__lock
	sub	r4, r5, #28
	b	.LBB0_6
.LBB0_6:                                @ %while.end
	mov	r0, r4
	bl	__lock
	mov	r0, #1
	str	r0, [r5, #-56]
	b	.LBB0_7
.LBB0_7:                                @ %while.end
	mov	r0, sp
	bl	__block_all_sigs
	mov	r0, r4
	bl	__unlock
	ldr	r6, .LCPI0_0
	b	.LBB0_8
.LCPI0_0:
	.long	__libc
.LBB0_8:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r6
	ldr	r4, [r2, #20]!
	sub	r1, r4, #1
	mov	r0, r4
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_9
.LBB0_9:                                @ %a_fetch_add.exit
	cmp	r4, #0
	beq	.LBB0_20
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	ldr	r1, [r5, #-32]
	add	r0, r6, #52
	cmp	r1, r0
	beq	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r6
	ldr	r0, [r2, #44]!
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_12
.LBB0_12:                               @ %a_dec.exit
	ldr	r0, [r5, #-32]
	ldr	r0, [r0]
	b	.LBB0_14
.LBB0_13:                               @ %do.body.i.i47
                                        @   in Loop: Header=BB0_14 Depth=1
	mov	r2, r6
	ldr	r0, [r2, #48]!
	sub	r1, r0, #1
	bl	__a_cas
	b	.LBB0_14
.LBB0_14:                               @ %do.body.i.i47
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #0
	bne	.LBB0_13
	b	.LBB0_15
.LBB0_15:                               @ %if.end16
	bl	__do_private_robust_list
	bl	__do_orphaned_stdio_locks
	ldr	r1, [r5, #-132]
	cmp	r1, #0
	ldrne	r0, [r5, #-128]
	cmpne	r0, #0
	beq	.LBB0_19
	b	.LBB0_16
.LBB0_16:                               @ %if.then19
	cmp	r1, #2
	bne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               @ %if.then22
	mov	r7, #256
	mov	r0, #0
	@APP
	svc	#0
	@NO_APP
	ldr	r0, [r5, #-128]
	b	.LBB0_18
.LBB0_18:                               @ %if.end24
	ldr	r1, [r5, #-124]
	bl	__unmapself
	b	.LBB0_19
.LBB0_19:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, #1
	mov	r0, #0
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_19
.LBB0_20:                               @ %if.then
	mov	r0, #0
	str	r0, [r6, #20]
	mov	r0, sp
	bl	__restore_sigs
	mov	r0, #0
	bl	exit
.Ltmp0:
	.size	__pthread_exit, .Ltmp0-__pthread_exit
	.cantunwind
	.fnend

	.globl	__do_cleanup_push
	.align	2
	.type	__do_cleanup_push,%function
__do_cleanup_push:                      @ @__do_cleanup_push
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r1, r0
	ldr	r0, .LCPI1_0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_2
.LCPI1_0:
	.long	__libc
.LBB1_2:                                @ %if.end
	@APP
	bl	__a_gettp
	mov	r2, r0
	@NO_APP
	ldr	r0, [r2, #-100]
	str	r0, [r1, #8]
	str	r1, [r2, #-100]
	b	.LBB1_3
.LBB1_3:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__do_cleanup_push, .Ltmp1-__do_cleanup_push
	.cantunwind
	.fnend

	.globl	__do_cleanup_pop
	.align	2
	.type	__do_cleanup_pop,%function
__do_cleanup_pop:                       @ @__do_cleanup_pop
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	ldr	r1, .LCPI2_0
	ldr	r1, [r1]
	cmp	r1, #0
	beq	.LBB2_3
	b	.LBB2_2
.LCPI2_0:
	.long	__libc
.LBB2_2:                                @ %if.end
	ldr	r1, [r0, #8]
	@APP
	bl	__a_gettp
	mov	r2, r0
	@NO_APP
	str	r1, [r2, #-100]
	b	.LBB2_3
.LBB2_3:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	__do_cleanup_pop, .Ltmp2-__do_cleanup_pop
	.cantunwind
	.fnend

	.globl	__pthread_create
	.align	2
	.type	__pthread_create,%function
__pthread_create:                       @ @__pthread_create
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.LBB3_2:                                @ %entry
	.pad	#84
	sub	sp, sp, #84
	b	.LBB3_3
.LBB3_3:                                @ %entry
	mov	r11, r2
	mov	r9, r1
	mov	r8, r0
	b	.LBB3_4
.LBB3_4:                                @ %entry
	add	r0, sp, #48
	mov	r1, #36
	mov	r2, #0
	mov	r5, r3
	b	.LBB3_5
.LBB3_5:                                @ %entry
	bl	__aeabi_memset
	ldr	r10, .LCPI3_10
	mov	r4, #38
	ldr	r0, [r10, #4]
	cmp	r0, #0
	beq	.LBB3_76
	b	.LBB3_6
.LCPI3_10:
	.long	__libc
.LBB3_6:                                @ %if.end
	ldr	r1, [r10, #8]
	str	r5, [sp, #36]           @ 4-byte Spill
	@APP
	bl	__a_gettp
	mov	r5, r0
	@NO_APP
	cmp	r1, #0
	bne	.LBB3_19
	b	.LBB3_7
.LBB3_7:                                @ %for.cond.preheader
	ldr	r0, [r10, #24]
	cmp	r0, #0
	beq	.LBB3_10
	b	.LBB3_8
.LBB3_8:
	mov	r1, #0
	b	.LBB3_9
.LBB3_9:                                @ %land.lhs.true.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0, #76]
	cmp	r2, #0
	strlt	r1, [r0, #76]
	ldr	r0, [r0, #56]
	cmp	r0, #0
	bne	.LBB3_9
	b	.LBB3_10
.LBB3_10:                               @ %for.end
	ldr	r0, .LCPI3_11
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB3_12
	b	.LBB3_11
.LCPI3_11:
	.long	__stdin_used
.LBB3_11:                               @ %land.lhs.true.i221
	ldr	r1, [r0, #76]
	cmp	r1, #0
	movlt	r1, #0
	strlt	r1, [r0, #76]
	b	.LBB3_12
.LBB3_12:                               @ %init_file_lock.exit223
	ldr	r0, .LCPI3_12
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB3_14
	b	.LBB3_13
.LCPI3_12:
	.long	__stdout_used
.LBB3_13:                               @ %land.lhs.true.i227
	ldr	r1, [r0, #76]
	cmp	r1, #0
	movlt	r1, #0
	strlt	r1, [r0, #76]
	b	.LBB3_14
.LBB3_14:                               @ %init_file_lock.exit229
	ldr	r0, .LCPI3_13
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB3_16
	b	.LBB3_15
.LCPI3_13:
	.long	__stderr_used
.LBB3_15:                               @ %land.lhs.true.i233
	ldr	r1, [r0, #76]
	cmp	r1, #0
	movlt	r1, #0
	strlt	r1, [r0, #76]
	b	.LBB3_16
.LBB3_16:                               @ %init_file_lock.exit235
	mov	r0, #0
	add	r1, sp, #40
	mov	r7, #175
	mov	r2, #0
	b	.LBB3_17
.LBB3_17:                               @ %init_file_lock.exit235
	mov	r3, #8
	mov	r6, #1
	str	r0, [sp, #40]
	mov	r0, #3
	b	.LBB3_18
.LBB3_18:                               @ %init_file_lock.exit235
	str	r0, [sp, #44]
	mov	r0, #1
	@APP
	svc	#0
	@NO_APP
	ldr	r0, .LCPI3_14
	str	r0, [r5, #-96]
	str	r6, [r10, #8]
	b	.LBB3_19
.LCPI3_14:
	.long	__pthread_tsd_main
.LBB3_19:                               @ %if.end7
	add	r0, r9, #1
	cmp	r0, #2
	blo	.LBB3_22
	b	.LBB3_20
.LBB3_20:                               @ %if.then10
	ldm	r9, {r0, r1, r2, r3, r7}
	ldr	r6, [r9, #20]
	add	r4, sp, #48
	str	r6, [sp, #68]
	b	.LBB3_21
.LBB3_21:                               @ %if.then10
	stm	r4, {r0, r1, r2, r3, r7}
	add	r2, r9, #24
	add	r3, sp, #72
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	b	.LBB3_22
.LBB3_22:                               @ %if.end11
	str	r11, [sp, #32]          @ 4-byte Spill
	bl	__acquire_ptc
	ldr	r3, [sp, #56]
	cmp	r3, #0
	beq	.LBB3_29
	b	.LBB3_23
.LBB3_23:                               @ %if.then13
	ldr	r1, .LCPI3_15
	ldr	r0, [r10, #36]
	bic	r4, r3, #15
	ldr	r2, [r1]
	b	.LBB3_24
.LCPI3_15:
	.long	__pthread_tsd_size
.LBB3_24:                               @ %if.then13
	ldr	r7, [sp, #48]
	add	r7, r7, #81920
	add	r2, r2, r0
	sub	r6, r3, r7
	mov	r3, #0
	cmp	r3, r2, lsr #11
	bne	.LBB3_38
	b	.LBB3_25
.LBB3_25:                               @ %if.then13
	lsr	r3, r7, #3
	cmp	r2, r3
	bhs	.LBB3_38
	b	.LBB3_26
.LBB3_26:                               @ %if.end55
	str	r5, [sp, #28]           @ 4-byte Spill
	str	r6, [sp, #24]           @ 4-byte Spill
	str	r8, [sp, #20]           @ 4-byte Spill
	ldr	r6, [r1]
	b	.LBB3_27
.LBB3_27:                               @ %if.end55
	mov	r1, #0
	mov	r5, #0
	add	r0, r6, r0
	sub	r8, r4, r0
	b	.LBB3_28
.LBB3_28:                               @ %if.end55
	mov	r0, r8
	bl	memset
	subs	r6, r4, r6
	mov	r4, r8
	bne	.LBB3_47
	b	.LBB3_40
.LBB3_29:                               @ %if.then57
	ldr	r1, [sp, #52]
	ldr	r0, [sp, #48]
	ldr	r2, .LCPI3_18
	ldr	r6, .LCPI3_16
	b	.LBB3_30
.LCPI3_16:
	.long	__pthread_tsd_size
.LCPI3_18:
	.long	4294963200              @ 0xfffff000
.LBB3_30:                               @ %if.then57
	add	r1, r1, #255
	add	r1, r1, #7936
	ands	r11, r1, r2
	ldr	r1, [r10, #36]
	b	.LBB3_31
.LBB3_31:                               @ %if.then57
	add	r0, r0, r1
	ldr	r1, [r6]
	add	r0, r0, r1
	ldr	r1, .LCPI3_20
	b	.LBB3_32
.LCPI3_20:
	.long	86015                   @ 0x14fff
.LBB3_32:                               @ %if.then57
	add	r0, r0, r1
	and	r4, r0, r2
	add	r7, r4, r11
	beq	.LBB3_39
	b	.LBB3_33
.LBB3_33:                               @ %if.then59
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	mov	r3, #34
	b	.LBB3_34
.LBB3_34:                               @ %if.then59
	str	r5, [sp, #28]           @ 4-byte Spill
	str	r8, [sp, #20]           @ 4-byte Spill
	str	r0, [sp, #8]
	str	r0, [sp, #12]
	b	.LBB3_35
.LBB3_35:                               @ %if.then59
	mvn	r0, #0
	str	r0, [sp]
	mov	r0, #0
	bl	__mmap
	mov	r5, r0
	cmn	r5, #1
	beq	.LBB3_44
	b	.LBB3_36
.LBB3_36:                               @ %if.end64
	add	r0, r5, r11
	mov	r1, r4
	mov	r2, #3
	bl	__mprotect
	cmp	r0, #0
	beq	.LBB3_45
	b	.LBB3_37
.LBB3_37:                               @ %if.then69
	mov	r0, r5
	mov	r1, r7
	bl	__munmap
	b	.LBB3_44
.LBB3_38:                               @ %if.then57.thread255
	str	r6, [sp, #24]           @ 4-byte Spill
	str	r5, [sp, #28]           @ 4-byte Spill
	str	r8, [sp, #20]           @ 4-byte Spill
	ldr	r1, .LCPI3_19
	add	r0, r2, #255
	add	r0, r0, #3840
	and	r7, r0, r1
	b	.LBB3_40
.LCPI3_19:
	.long	4294963200              @ 0xfffff000
.LBB3_39:
                                        @ implicit-def: R0
	str	r5, [sp, #28]           @ 4-byte Spill
	str	r8, [sp, #20]           @ 4-byte Spill
	mov	r4, #0
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB3_40
.LBB3_40:                               @ %if.else72
	mov	r11, #0
	mvn	r0, #0
	mov	r1, r7
	mov	r2, #3
	b	.LBB3_41
.LBB3_41:                               @ %if.else72
	mov	r3, #34
	str	r11, [sp, #8]
	str	r11, [sp, #12]
	str	r0, [sp]
	b	.LBB3_42
.LBB3_42:                               @ %if.else72
	mov	r0, #0
	bl	__mmap
	mov	r5, r0
	cmn	r5, #1
	beq	.LBB3_44
	b	.LBB3_43
.LBB3_43:                               @ %if.end78
	ldr	r0, .LCPI3_17
	mov	r8, r4
	cmp	r4, #0
	ldr	r0, [r0]
	sub	r0, r7, r0
	add	r6, r5, r0
	bne	.LBB3_47
	b	.LBB3_46
.LCPI3_17:
	.long	__pthread_tsd_size
.LBB3_44:                               @ %fail
	bl	__release_ptc
	mov	r4, #11
	b	.LBB3_76
.LBB3_45:                               @ %if.end78.thread
	ldr	r0, [r6]
	sub	r0, r7, r0
	add	r6, r5, r0
	b	.LBB3_46
.LBB3_46:                               @ %if.then83
	add	r2, r5, r11
	str	r2, [sp, #24]           @ 4-byte Spill
	ldr	r2, [r10, #36]
	sub	r0, r0, r2
	add	r8, r5, r0
	b	.LBB3_47
.LBB3_47:                               @ %if.end88
	ldr	r0, [r10, #36]
	sub	r0, r6, r0
	bl	__copy_tls
	mov	r4, r0
	b	.LBB3_48
.LBB3_48:                               @ %if.end88
	mov	r11, r7
	add	r1, r4, #56
	stm	r1, {r5, r7, r8}
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB3_49
.LBB3_49:                               @ %if.end88
	sub	r0, r8, r0
	str	r0, [r4, #68]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [r4, #76]
	b	.LBB3_50
.LBB3_50:                               @ %if.end88
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [r4, #72]
	add	r0, r10, #52
	str	r4, [r4]
	b	.LBB3_51
.LBB3_51:                               @ %if.end88
	str	r6, [r4, #88]
	str	r0, [r4, #152]
	ldr	r0, [sp, #60]
	cmp	r0, #0
	beq	.LBB3_53
	b	.LBB3_52
.LBB3_52:                               @ %if.then98
	mov	r6, #3840
	mov	r0, #1
	orr	r6, r6, #6094848
	str	r0, [r4, #52]
	b	.LBB3_54
.LBB3_53:
	mov	r6, #3840
	orr	r6, r6, #8192000
	b	.LBB3_54
.LBB3_54:                               @ %if.end100
	ldr	r0, [sp, #64]
	mov	r7, #0
	cmp	r0, #0
	beq	.LBB3_56
	b	.LBB3_55
.LBB3_55:                               @ %if.then105
	mov	r7, #1
	add	r0, r4, #180
	str	r7, [r4, #172]
	bl	__block_app_sigs
	b	.LBB3_56
.LBB3_56:                               @ %if.end108
	ldr	r1, [sp, #28]           @ 4-byte Reload
	ldr	r0, [r1, #-144]
	str	r0, [r4, #144]
	ldr	r0, [r1, #-164]
	str	r0, [r4, #20]
	b	.LBB3_57
.LBB3_57:                               @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r10
	ldr	r0, [r2, #20]!
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB3_57
	b	.LBB3_58
.LBB3_58:                               @ %a_inc.exit
	add	r0, r4, #24
	add	r1, r4, #184
	cmn	r9, #1
	mov	r2, r6
	b	.LBB3_59
.LBB3_59:                               @ %a_inc.exit
	mov	r3, r4
	stm	sp, {r0, r1}
	ldr	r1, .LCPI3_21
	str	r0, [sp, #8]
	b	.LBB3_60
.LCPI3_21:
	.long	start_c11
.LBB3_60:                               @ %a_inc.exit
	ldr	r0, .LCPI3_22
	moveq	r0, r1
	mov	r1, r8
	bl	__clone
	b	.LBB3_61
.LCPI3_22:
	.long	start
.LBB3_61:                               @ %a_inc.exit
	mov	r6, r0
	bl	__release_ptc
	cmp	r7, #1
	bne	.LBB3_63
	b	.LBB3_62
.LBB3_62:                               @ %if.then116
	add	r0, r4, #180
	bl	__restore_sigs
	b	.LBB3_63
.LBB3_63:                               @ %if.end119
	add	r1, sp, #48
	cmp	r6, #0
	blt	.LBB3_72
	b	.LBB3_64
.LBB3_64:                               @ %if.end127
	ldr	r5, [sp, #20]           @ 4-byte Reload
	cmp	r7, #1
	bne	.LBB3_71
	b	.LBB3_65
.LBB3_65:                               @ %if.then129
	add	r2, r1, #24
	ldr	r0, [r4, #24]
	ldr	r1, [sp, #68]
	mov	r7, #156
	b	.LBB3_66
.LBB3_66:                               @ %if.then129
	add	r6, r4, #172
	@APP
	svc	#0
	@NO_APP
	mov	r7, #240
	mov	r1, #129
	b	.LBB3_67
.LBB3_67:                               @ %if.then129
	mov	r2, #1
	@APP
	bl	__a_barrier
	@NO_APP
	mov	r3, r0
	mov	r0, #2
	b	.LBB3_68
.LBB3_68:                               @ %if.then129
	and	r0, r0, r3, lsr #30
	str	r0, [r4, #172]
	mov	r0, r6
	@APP
	bl	__a_barrier
	@NO_APP
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB3_70
	b	.LBB3_69
.LBB3_69:                               @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB3_70
.LBB3_70:                               @ %__wake.exit
	cmp	r3, #0
	blt	.LBB3_75
	b	.LBB3_71
.LBB3_71:                               @ %if.end150
	str	r4, [r5]
	mov	r4, #0
	b	.LBB3_76
.LBB3_72:                               @ %do.body.i.i239
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r10
	ldr	r0, [r2, #20]!
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB3_72
	b	.LBB3_73
.LBB3_73:                               @ %a_dec.exit
	mov	r4, #11
	cmp	r5, #0
	beq	.LBB3_76
	b	.LBB3_74
.LBB3_74:                               @ %if.then124
	mov	r0, r5
	mov	r1, r11
	bl	__munmap
	b	.LBB3_76
.LBB3_75:                               @ %if.then147
	rsb	r4, r3, #0
	b	.LBB3_76
.LBB3_76:                               @ %cleanup
	mov	r0, r4
	add	sp, sp, #84
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	__pthread_create, .Ltmp3-__pthread_create
	.cantunwind
	.fnend

	.align	2
	.type	start_c11,%function
start_c11:                              @ @start_c11
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	ldr	r1, [r0, #72]
	ldr	r2, [r0, #76]
	mov	r0, r1
	mov	lr, pc
	mov	pc, r2
	bl	__pthread_exit
.Ltmp4:
	.size	start_c11, .Ltmp4-start_c11
	.cantunwind
	.fnend

	.align	2
	.type	start,%function
start:                                  @ @start
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB5_2
.LBB5_2:                                @ %entry
	mov	r4, r0
	mov	r5, r4
	ldr	r0, [r5, #172]!
	cmp	r0, #0
	beq	.LBB5_6
	b	.LBB5_3
.LBB5_3:                                @ %if.then
	mov	r0, r5
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	b	.LBB5_4
.LBB5_4:                                @ %if.then
	bl	__wait
	ldr	r0, [r5]
	cmp	r0, #0
	bne	.LBB5_10
	b	.LBB5_5
.LBB5_5:                                @ %if.end
	add	r0, r4, #180
	bl	__restore_sigs
	b	.LBB5_6
.LBB5_6:                                @ %if.end7
	ldr	r0, [r4, #144]
	cmp	r0, #0
	beq	.LBB5_9
	b	.LBB5_7
.LBB5_7:                                @ %if.then9
	mov	r0, #0
	mov	r1, sp
	mov	r7, #175
	mov	r2, #0
	b	.LBB5_8
.LBB5_8:                                @ %if.then9
	mov	r3, #8
	str	r0, [sp]
	mov	r0, #3
	str	r0, [sp, #4]
	mov	r0, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB5_9
.LBB5_9:                                @ %if.end11
	ldr	r0, [r4, #72]
	ldr	r1, [r4, #76]
	mov	lr, pc
	mov	pc, r1
	bl	__pthread_exit
.LBB5_10:                               @ %if.then5
	mov	r0, #2
	str	r0, [r4, #52]
	mov	r0, #0
	bl	pthread_exit
.Ltmp5:
	.size	start, .Ltmp5-start
	.cantunwind
	.fnend

	.align	2
	.type	dummy_0,%function
dummy_0:                                @ @dummy_0
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	mov	pc, lr
.Ltmp6:
	.size	dummy_0, .Ltmp6-dummy_0
	.cantunwind
	.fnend

	.hidden	__libc
	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,12,4
	.hidden	__lock
	.hidden	__unlock
	.hidden	__a_cas

	.weak	__acquire_ptc
__acquire_ptc = dummy_0
	.weak	__release_ptc
__release_ptc = dummy_0
	.weak	__pthread_tsd_run_dtors
__pthread_tsd_run_dtors = dummy_0
	.weak	__do_private_robust_list
__do_private_robust_list = dummy_0
	.weak	__do_orphaned_stdio_locks
__do_orphaned_stdio_locks = dummy_0
	.weak	__pthread_tsd_size
__pthread_tsd_size = _MergedGlobals
	.weak	__pthread_tsd_main
__pthread_tsd_main = _MergedGlobals+4
	.weak	__stdin_used
__stdin_used = _MergedGlobals+8
	.weak	__stdout_used
__stdout_used = _MergedGlobals+8
	.weak	__stderr_used
__stderr_used = _MergedGlobals+8
	.weak	pthread_exit
pthread_exit = __pthread_exit
	.weak	pthread_create
pthread_create = __pthread_create
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
