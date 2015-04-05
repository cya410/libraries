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
	.file	"src/thread/sem_open.bc"
	.globl	sem_open
	.align	2
	.type	sem_open,%function
sem_open:                               @ @sem_open
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	b	.LBB0_3
.LBB0_3:                                @ %entry
	.pad	#508
	sub	sp, sp, #508
	mov	r4, r1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	add	r1, sp, #39
	str	r3, [sp, #548]
	str	r2, [sp, #544]
	bl	__shm_mapname
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r9, r0
	mov	r7, #0
	cmp	r9, #0
	beq	.LBB0_67
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	ldr	r5, .LCPI0_4
	add	r6, r5, #4
	mov	r0, r6
	bl	__lock
	ldr	r0, [r5]
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_7
.LCPI0_4:
	.long	_MergedGlobals
.LBB0_7:                                @ %land.lhs.true
	mov	r0, #16
	mov	r1, #256
	bl	calloc
	str	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_42
	b	.LBB0_8
.LBB0_8:                                @ %for.cond.preheader
	mvn	r10, #0
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_9
.LBB0_9:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r7, r0, r2, lsl #4
	cmp	r10, #0
	mov	r3, #0
	ldr	r5, [r7, #8]
	b	.LBB0_10
.LBB0_10:                               @ %for.body
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r7, [r7, #12]
	movlt	r3, #1
	cmp	r5, #0
	mov	r5, #0
	b	.LBB0_11
.LBB0_11:                               @ %for.body
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r1, r7, r1
	moveq	r5, #1
	tst	r3, r5
	movne	r10, r2
	add	r2, r2, #1
	cmp	r2, #256
	bne	.LBB0_9
	b	.LBB0_12
.LBB0_12:                               @ %for.end
	cmp	r10, #0
	blt	.LBB0_41
	b	.LBB0_13
.LBB0_13:                               @ %for.end
	cmn	r1, #-2147483647
	beq	.LBB0_41
	b	.LBB0_14
.LBB0_14:                               @ %if.end19
	add	r0, r0, r10, lsl #4
	mvn	r1, #0
	str	r1, [r0, #8]
	mov	r0, r6
	b	.LBB0_15
.LBB0_15:                               @ %if.end19
	bl	__unlock
	add	r1, sp, #500
	mov	r0, #1
	mov	r7, #1
	b	.LBB0_16
.LBB0_16:                               @ %if.end19
	bl	pthread_setcancelstate
	and	r8, r4, #192
	cmp	r8, #192
	bne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               @ %land.lhs.true24
	mov	r0, r9
	mov	r1, #0
	bl	access
	cmp	r0, #0
	beq	.LBB0_44
	b	.LBB0_18
.LBB0_18:                               @ %for.cond30.preheader
	and	r0, r4, #64
	str	r6, [sp, #24]           @ 4-byte Spill
	add	r6, sp, #420
	add	r4, sp, #544
	str	r0, [sp, #28]           @ 4-byte Spill
                                        @ implicit-def: R0
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB0_19
.LBB0_19:                               @ %for.cond30
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r8, #192
	bne	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %if.end50
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB0_24
	b	.LBB0_63
.LBB0_21:                               @ %if.then32
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r1, .LCPI0_7
	mov	r0, r9
	bl	open
	mov	r5, r0
	cmp	r5, #0
	bge	.LBB0_47
	b	.LBB0_22
.LCPI0_7:
	.long	559106                  @ 0x88802
.LBB0_22:                               @ %if.end45
                                        @   in Loop: Header=BB0_19 Depth=1
	bl	__errno_location
	ldr	r1, [sp, #28]           @ 4-byte Reload
	cmp	r1, #0
	beq	.LBB0_63
	b	.LBB0_23
.LBB0_23:                               @ %if.end45
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r0, [r0]
	cmp	r0, #2
	bne	.LBB0_63
	b	.LBB0_24
.LBB0_24:                               @ %if.end54
                                        @   in Loop: Header=BB0_19 Depth=1
	cmp	r7, #0
	beq	.LBB0_28
	b	.LBB0_25
.LBB0_25:                               @ %if.then56
                                        @   in Loop: Header=BB0_19 Depth=1
	orr	r0, r4, #4
	str	r4, [sp, #504]
	str	r0, [sp, #504]
	mov	r0, r4
	b	.LBB0_26
.LBB0_26:                               @ %if.then56
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r5, [r0], #8
	str	r0, [sp, #504]
	ldr	r2, [sp, #548]
	cmp	r2, #0
	blt	.LBB0_45
	b	.LBB0_27
.LBB0_27:                               @ %if.end67
                                        @   in Loop: Header=BB0_19 Depth=1
	add	r0, sp, #484
	mov	r1, #1
	bl	sem_init
	mov	r0, #182
	orr	r0, r0, #256
	and	r0, r5, r0
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB0_28
.LBB0_28:                               @ %if.end69
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, #0
	add	r1, sp, #412
	bl	clock_gettime
	ldr	r3, [sp, #416]
	b	.LBB0_29
.LBB0_29:                               @ %if.end69
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r2, .LCPI0_8
	mov	r0, r6
	mov	r1, #64
	bl	snprintf
	b	.LBB0_30
.LCPI0_8:
	.long	.L.str
.LBB0_30:                               @ %if.end69
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r1, .LCPI0_9
	ldr	r2, [sp, #32]           @ 4-byte Reload
	mov	r0, r6
	bl	open
	mov	r11, r0
	cmp	r11, #0
	blt	.LBB0_40
	b	.LBB0_31
.LCPI0_9:
	.long	559298                  @ 0x888c2
.LBB0_31:                               @ %if.end81
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, r11
	add	r1, sp, #484
	mov	r2, #16
	bl	write
	cmp	r0, #16
	bne	.LBB0_43
	b	.LBB0_32
.LBB0_32:                               @ %lor.lhs.false84
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, r11
	add	r1, sp, #304
	bl	fstat
	cmp	r0, #0
	blt	.LBB0_43
	b	.LBB0_33
.LBB0_33:                               @ %lor.lhs.false87
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, #0
	mov	r1, #16
	mov	r2, #3
	mov	r3, #1
	b	.LBB0_34
.LBB0_34:                               @ %lor.lhs.false87
                                        @   in Loop: Header=BB0_19 Depth=1
	str	r0, [sp, #8]
	str	r0, [sp, #12]
	mov	r0, #0
	str	r11, [sp]
	b	.LBB0_35
.LBB0_35:                               @ %lor.lhs.false87
                                        @   in Loop: Header=BB0_19 Depth=1
	bl	mmap
	mov	r7, r0
	cmn	r7, #1
	beq	.LBB0_43
	b	.LBB0_36
.LBB0_36:                               @ %if.end94
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, r11
	bl	close
	mov	r0, r6
	mov	r1, r9
	bl	link
	cmp	r0, #0
	beq	.LBB0_46
	b	.LBB0_37
.LBB0_37:                               @ %cond.end
                                        @   in Loop: Header=BB0_19 Depth=1
	bl	__errno_location
	ldr	r5, [r0]
	mov	r0, r6
	bl	unlink
	cmp	r5, #0
	beq	.LBB0_52
	b	.LBB0_38
.LBB0_38:                               @ %if.end104
                                        @   in Loop: Header=BB0_19 Depth=1
	cmp	r8, #192
	beq	.LBB0_63
	b	.LBB0_39
.LBB0_39:                               @ %if.end104
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r7, #0
	cmp	r5, #17
	beq	.LBB0_19
	b	.LBB0_63
.LBB0_40:                               @ %if.then76
                                        @   in Loop: Header=BB0_19 Depth=1
	bl	__errno_location
	ldr	r0, [r0]
	mov	r7, #0
	cmp	r0, #17
	beq	.LBB0_19
	b	.LBB0_63
.LBB0_41:                               @ %if.then17
	bl	__errno_location
	mov	r1, #24
	str	r1, [r0]
	mov	r0, r6
	bl	__unlock
	mov	r7, #0
	b	.LBB0_67
.LBB0_42:                               @ %if.then7
	mov	r0, r6
	b	.LBB0_66
.LBB0_43:                               @ %if.then90
	mov	r0, r11
	bl	close
	add	r0, sp, #420
	bl	unlink
	b	.LBB0_63
.LBB0_44:                               @ %if.then27
	str	r6, [sp, #24]           @ 4-byte Spill
	bl	__errno_location
	mov	r1, #17
	str	r1, [r0]
	b	.LBB0_63
.LBB0_45:                               @ %if.then65
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_63
.LBB0_46:                               @ %cond.end.thread
	add	r0, sp, #420
	bl	unlink
	b	.LBB0_52
.LBB0_47:                               @ %if.then35
	add	r1, sp, #304
	mov	r0, r5
	bl	fstat
	cmp	r0, #0
	blt	.LBB0_62
	b	.LBB0_48
.LBB0_48:                               @ %lor.lhs.false38
	mov	r0, #0
	mov	r1, #16
	mov	r2, #3
	mov	r3, #1
	b	.LBB0_49
.LBB0_49:                               @ %lor.lhs.false38
	str	r0, [sp, #8]
	str	r0, [sp, #12]
	mov	r0, #0
	str	r5, [sp]
	b	.LBB0_50
.LBB0_50:                               @ %lor.lhs.false38
	bl	mmap
	mov	r7, r0
	cmn	r7, #1
	beq	.LBB0_62
	b	.LBB0_51
.LBB0_51:                               @ %if.end43
	mov	r0, r5
	bl	close
	b	.LBB0_52
.LBB0_52:                               @ %for.end110
	ldr	r0, [sp, #24]           @ 4-byte Reload
	bl	__lock
	ldr	r9, .LCPI0_5
	add	r0, sp, #304
	b	.LBB0_53
.LCPI0_5:
	.long	_MergedGlobals
.LBB0_53:                               @ %for.end110
	ldr	r1, [sp, #404]
	mov	r4, #0
	add	r8, r0, #96
	ldr	r0, [sp, #400]
	ldr	r2, [r9]
	mov	r3, r2
	b	.LBB0_54
.LBB0_54:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r3]
	ldr	r5, [r3, #4]
	eor	r5, r5, r1
	eor	r6, r6, r0
	orrs	r6, r6, r5
	beq	.LBB0_57
	b	.LBB0_55
.LBB0_55:                               @ %for.inc116
                                        @   in Loop: Header=BB0_54 Depth=1
	add	r4, r4, #1
	add	r3, r3, #16
	cmp	r4, #256
	blt	.LBB0_54
	b	.LBB0_56
.LBB0_56:
	mov	r4, r10
	b	.LBB0_59
.LBB0_57:                               @ %if.then120
	mov	r0, r7
	mov	r1, #16
	bl	munmap
	ldr	r0, [r9]
	b	.LBB0_58
.LBB0_58:                               @ %if.then120
	mov	r1, #0
	add	r0, r0, r10, lsl #4
	str	r1, [r0, #8]
	ldr	r2, [r9]
	add	r0, r2, r4, lsl #4
	ldr	r7, [r0, #8]
	ldm	r8, {r0, r1}
	b	.LBB0_59
.LBB0_59:                               @ %if.end126
	add	r2, r2, r4, lsl #4
	ldr	r3, [r2, #12]
	str	r7, [r2, #8]
	add	r3, r3, #1
	b	.LBB0_60
.LBB0_60:                               @ %if.end126
	str	r3, [r2, #12]
	ldr	r2, [r9], #4
	str	r0, [r2, r4, lsl #4]!
	mov	r0, r9
	b	.LBB0_61
.LBB0_61:                               @ %if.end126
	str	r1, [r2, #4]
	bl	__unlock
	ldr	r0, [sp, #500]
	mov	r1, #0
	bl	pthread_setcancelstate
	b	.LBB0_67
.LBB0_62:                               @ %if.then41
	mov	r0, r5
	bl	close
	b	.LBB0_63
.LBB0_63:                               @ %fail
	ldr	r0, [sp, #500]
	mov	r1, #0
	mov	r7, #0
	bl	pthread_setcancelstate
	b	.LBB0_64
.LBB0_64:                               @ %fail
	ldr	r4, [sp, #24]           @ 4-byte Reload
	mov	r0, r4
	bl	__lock
	ldr	r0, .LCPI0_6
	b	.LBB0_65
.LCPI0_6:
	.long	_MergedGlobals
.LBB0_65:                               @ %fail
	ldr	r0, [r0]
	add	r0, r0, r10, lsl #4
	str	r7, [r0, #8]
	mov	r0, r4
	b	.LBB0_66
.LBB0_66:                               @ %cleanup
	bl	__unlock
	b	.LBB0_67
.LBB0_67:                               @ %cleanup
	mov	r0, r7
	add	sp, sp, #508
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	sem_open, .Ltmp0-sem_open
	.cantunwind
	.fnend

	.globl	sem_close
	.align	2
	.type	sem_close,%function
sem_close:                              @ @sem_close
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	ldr	r6, .LCPI1_0
	mov	r4, r0
	b	.LBB1_2
.LCPI1_0:
	.long	_MergedGlobals
.LBB1_2:                                @ %entry
	add	r5, r6, #4
	mov	r0, r5
	bl	__lock
	ldr	r1, [r6]
	mov	r0, #0
	add	r2, r1, #8
	b	.LBB1_3
.LBB1_3:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r2, r0, lsl #4]
	cmp	r3, r4
	beq	.LBB1_5
	b	.LBB1_4
.LBB1_4:                                @ %for.inc
                                        @   in Loop: Header=BB1_3 Depth=1
	add	r0, r0, #1
	cmp	r0, #256
	blt	.LBB1_3
	b	.LBB1_5
.LBB1_5:                                @ %for.end
	add	r1, r1, r0, lsl #4
	ldr	r2, [r1, #12]
	subs	r2, r2, #1
	str	r2, [r1, #12]
	bne	.LBB1_7
	b	.LBB1_6
.LBB1_6:                                @ %if.then
	mov	r2, #0
	str	r2, [r1, #8]
	ldr	r1, [r6]
	str	r2, [r1, r0, lsl #4]!
	str	r2, [r1, #4]
	b	.LBB1_7
.LBB1_7:                                @ %if.end
	mov	r0, r5
	bl	__unlock
	mov	r0, r4
	mov	r1, #16
	bl	munmap
	mov	r0, #0
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp1:
	.size	sem_close, .Ltmp1-sem_close
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/dev/shm/tmp-%d"
	.size	.L.str, 16

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,12,4
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
