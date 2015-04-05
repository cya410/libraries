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
	.file	"src/thread/synccall.bc"
	.globl	__synccall
	.align	2
	.type	__synccall,%function
__synccall:                             @ @__synccall
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#272
	sub	sp, sp, #272
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r1
	mov	r1, r0
	ldr	r0, .LCPI0_3
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB0_22
	b	.LBB0_4
.LCPI0_3:
	.long	__libc
.LBB0_4:                                @ %if.end
	mov	r5, r1
	bl	__inhibit_ptc
	add	r0, sp, #4
	bl	__block_all_sigs
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	ldr	r4, .LCPI0_4
	mov	r1, #0
	mov	r2, #0
	mov	r7, #0
	b	.LBB0_6
.LCPI0_4:
	.long	_MergedGlobals
.LBB0_6:                                @ %if.end
	add	r6, r4, #20
	mov	r0, r6
	bl	sem_init
	add	r0, r4, #36
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	mov	r1, #0
	mov	r2, #1
	bl	sem_init
	mov	r0, #268435460
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	str	r7, [r4]
	str	r7, [r4, #4]
	add	r7, sp, #132
	str	r5, [r4, #8]
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	mov	r8, r5
	str	r9, [r4, #12]
	str	r0, [sp, #264]
	ldr	r0, .LCPI0_5
	b	.LBB0_10
.LCPI0_5:
	.long	handler
.LBB0_10:                               @ %if.end
	str	r0, [sp, #132]
	add	r0, r7, #4
	bl	sigfillset
	mov	r0, #34
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	mov	r1, r7
	mov	r2, #0
	bl	__libc_sigaction
	bl	getpid
	mov	r1, #34
	mov	r2, #0
	bl	sigqueue
	b	.LBB0_12
.LBB0_12:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	bl	sem_wait
	cmp	r0, #0
	bne	.LBB0_12
	b	.LBB0_13
.LBB0_13:                               @ %while.end
	mov	r0, #0
	add	r1, sp, #132
	mov	r2, #0
	str	r0, [sp, #264]
	b	.LBB0_14
.LBB0_14:                               @ %while.end
	mov	r0, #1
	str	r0, [sp, #132]
	mov	r0, #34
	bl	__libc_sigaction
	ldr	r0, [r4, #4]
	b	.LBB0_16
.LBB0_15:                               @ %for.inc
                                        @   in Loop: Header=BB0_16 Depth=1
	ldr	r0, [r4, #16]
	ldr	r0, [r0]
	b	.LBB0_16
.LBB0_16:                               @ %while.end
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_18 Depth 2
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.LBB0_19
	b	.LBB0_17
.LBB0_17:                               @ %for.body
                                        @   in Loop: Header=BB0_16 Depth=1
	add	r0, r0, #4
	bl	sem_post
	b	.LBB0_18
.LBB0_18:                               @ %while.cond13
                                        @   Parent Loop BB0_16 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r4, #16]
	add	r0, r0, #20
	bl	sem_wait
	cmp	r0, #0
	bne	.LBB0_18
	b	.LBB0_15
.LBB0_19:                               @ %for.end
	mov	r0, r9
	mov	r1, r8
	mov	lr, pc
	mov	pc, r1
	ldr	r0, [r4, #4]
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %for.body21
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r0], #4
	bl	sem_post
	mov	r0, r5
	str	r5, [r4, #16]
	cmp	r5, #0
	bne	.LBB0_20
	b	.LBB0_21
.LBB0_21:                               @ %for.end26
	add	r0, sp, #4
	bl	__restore_sigs
	bl	__release_ptc
	b	.LBB0_23
.LBB0_22:                               @ %if.then
	mov	r0, r9
	mov	lr, pc
	mov	pc, r1
	b	.LBB0_23
.LBB0_23:                               @ %cleanup
	add	sp, sp, #272
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__synccall, .Ltmp0-__synccall
	.cantunwind
	.fnend

	.align	2
	.type	handler,%function
handler:                                @ @handler
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#36
	sub	sp, sp, #36
	b	.LBB1_3
.LBB1_3:                                @ %entry
	bl	__errno_location
	ldr	r6, .LCPI1_0
	ldr	r10, .LCPI1_2
	b	.LBB1_4
.LCPI1_0:
	.long	_MergedGlobals
.LCPI1_2:
	.long	__libc
.LBB1_4:                                @ %entry
	mov	r4, r0
	ldr	r8, [r4]
	ldr	r0, [r6]
	ldr	r1, [r10, #20]
	cmp	r0, r1
	beq	.LBB1_18
	b	.LBB1_5
.LBB1_5:                                @ %if.end
	bl	getpid
	mov	r1, #34
	mov	r2, #0
	bl	sigqueue
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	mov	r11, sp
	mov	r1, #0
	mov	r2, #0
	add	r5, r11, #4
	b	.LBB1_7
.LBB1_7:                                @ %if.end
	mov	r0, r5
	bl	sem_init
	add	r9, r11, #20
	mov	r1, #0
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	mov	r2, #0
	mov	r0, r9
	bl	sem_init
	add	r7, r6, #36
	b	.LBB1_9
.LBB1_9:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r7
	bl	sem_wait
	cmp	r0, #0
	bne	.LBB1_9
	b	.LBB1_10
.LBB1_10:                               @ %while.end
	ldr	r0, [r6, #4]
	str	r11, [r6, #4]
	str	r0, [sp]
	ldr	r0, [r6]
	b	.LBB1_11
.LBB1_11:                               @ %while.end
	add	r0, r0, #1
	str	r0, [r6]
	ldr	r1, [r10, #20]
	cmp	r0, r1
	bne	.LBB1_13
	b	.LBB1_12
.LBB1_12:                               @ %if.then7
	add	r0, r6, #20
	bl	sem_post
	b	.LBB1_13
.LBB1_13:                               @ %if.end9
	mov	r0, r7
	bl	sem_post
	b	.LBB1_14
.LBB1_14:                               @ %while.cond11
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	sem_wait
	cmp	r0, #0
	bne	.LBB1_14
	b	.LBB1_15
.LBB1_15:                               @ %while.end16
	ldr	r1, [r6, #8]
	ldr	r0, [r6, #12]
	mov	lr, pc
	mov	pc, r1
	mov	r0, r9
	bl	sem_post
	b	.LBB1_16
.LBB1_16:                               @ %while.cond19
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	sem_wait
	cmp	r0, #0
	bne	.LBB1_16
	b	.LBB1_17
.LBB1_17:                               @ %while.end24
	str	r8, [r4]
	b	.LBB1_18
.LBB1_18:                               @ %cleanup
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	handler, .Ltmp1-handler
	.cantunwind
	.fnend

	.hidden	__libc
	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,52,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
