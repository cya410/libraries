.section atexit_text
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
	.file	"src/exit/atexit.bc"
	.globl	__funcs_on_exit
	.align	2
	.type	__funcs_on_exit,%function
.section bb0_0
__funcs_on_exit:                        @ @__funcs_on_exit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r9, .LCPI0_0
	add	r4, r9, #4
	b	.LBB0_3
.LCPI0_0:
	.long	_MergedGlobals
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r0, r4
	bl	__lock
	ldr	r0, [r9]
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_4
.section bb0_4
.LBB0_4:
	mov	r7, #31
	mov	r8, #0
	b	.LBB0_6
.section bb0_5
.LBB0_5:                                @ %for.inc.for.body2_crit_edge
                                        @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [r9]
	sub	r7, r7, #1
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.body2
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r0, r7, lsl #2
	mov	r0, r1
	ldr	r6, [r0, #4]!
	cmp	r6, #0
	beq	.LBB0_9
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
                                        @   in Loop: Header=BB0_6 Depth=1
	ldr	r5, [r1, #132]
	str	r8, [r0]
	mov	r0, r4
	bl	__unlock
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, r5
	mov	lr, pc
	mov	pc, r6
	mov	r0, r4
	bl	__lock
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.inc
                                        @   in Loop: Header=BB0_6 Depth=1
	cmp	r7, #1
	bge	.LBB0_5
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.inc9
                                        @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [r9]
	mov	r7, #31
	ldr	r0, [r0]
	str	r0, [r9]
	cmp	r0, #0
	bne	.LBB0_6
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.end10
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__funcs_on_exit, .Ltmp0-__funcs_on_exit
	.cantunwind
	.fnend

	.globl	__cxa_finalize
	.align	2
	.type	__cxa_finalize,%function
.section bb1_0
__cxa_finalize:                         @ @__cxa_finalize
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	__cxa_finalize, .Ltmp1-__cxa_finalize
	.cantunwind
	.fnend

	.globl	__cxa_atexit
	.align	2
	.type	__cxa_atexit,%function
.section bb2_0
__cxa_atexit:                           @ @__cxa_atexit
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
	ldr	r5, .LCPI2_0
	mov	r6, r0
	mov	r4, r1
	add	r7, r5, #4
	b	.LBB2_3
.LCPI2_0:
	.long	_MergedGlobals
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r0, r7
	bl	__lock
	ldr	r0, [r5]
	cmp	r0, #0
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	addeq	r0, r5, #12
	streq	r0, [r5]
	ldr	r1, [r0, #128]
	cmp	r1, #0
	beq	.LBB2_7
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %if.then2
	mov	r0, #260
	mov	r1, #1
	bl	calloc
	cmp	r0, #0
	beq	.LBB2_12
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %if.end5
	ldr	r1, [r5]
	str	r1, [r0]
	str	r0, [r5]
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %for.cond.preheader
	add	r2, r0, #4
	mov	r1, #0
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r2, r1, lsl #2]
	cmp	r3, #0
	beq	.LBB2_10
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %for.inc
                                        @   in Loop: Header=BB2_8 Depth=1
	add	r1, r1, #1
	cmp	r1, #32
	blt	.LBB2_8
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %for.end
	add	r0, r0, r1, lsl #2
	str	r6, [r0, #4]
	ldr	r0, [r5], #4
	add	r0, r0, r1, lsl #2
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %for.end
	str	r4, [r0, #132]
	mov	r0, r5
	bl	__unlock
	mov	r0, #0
	b	.LBB2_13
.section bb2_12
.LBB2_12:                               @ %if.then4
	mov	r0, r7
	bl	__unlock
	mvn	r0, #0
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	__cxa_atexit, .Ltmp2-__cxa_atexit
	.cantunwind
	.fnend

	.globl	atexit
	.align	2
	.type	atexit,%function
.section bb3_0
atexit:                                 @ @atexit
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r1, r0
	ldr	r0, .LCPI3_0
	b	__cxa_atexit
.LCPI3_0:
	.long	call
.Ltmp3:
	.size	atexit, .Ltmp3-atexit
	.cantunwind
	.fnend

	.align	2
	.type	call,%function
.section bb4_0
call:                                   @ @call
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	bx	r0
.Ltmp4:
	.size	call, .Ltmp4-call
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,272,16
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
