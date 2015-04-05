.section fflush_text
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
	.file	"src/stdio/fflush.bc"
	.globl	fflush
	.align	2
	.type	fflush,%function
.section bb0_0
fflush:                                 @ @fflush
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_6
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.then
	ldr	r0, [r5, #76]
	cmp	r0, #0
	blt	.LBB0_19
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %cond.end
	mov	r0, r5
	bl	__lockfile
	mov	r6, r0
	mov	r0, r5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %cond.end
	bl	__fflush_unlocked
	mov	r4, r0
	cmp	r6, #0
	beq	.LBB0_18
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then3
	mov	r0, r5
	bl	__unlockfile
	b	.LBB0_18
.section bb0_6
.LBB0_6:                                @ %if.end4
	ldr	r0, .LCPI0_2
	mov	r4, #0
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.LBB0_8
	b	.LBB0_7
.LCPI0_2:
	.long	__stdout_used
.section bb0_7
.LBB0_7:                                @ %cond.true6
	ldr	r0, [r0]
	bl	fflush
	mov	r4, r0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %cond.end9
	ldr	r6, .LCPI0_3
	add	r5, r6, #28
	mov	r0, r5
	bl	__lock
	ldr	r6, [r6, #24]
	b	.LBB0_10
.LCPI0_3:
	.long	__libc
.section bb0_9
.LBB0_9:                                @ %for.inc
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r6, [r6, #56]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %cond.end9
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r6, #0
	beq	.LBB0_17
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.body
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r6, #76]
	mov	r7, #0
	cmp	r0, #0
	blt	.LBB0_13
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %cond.true15
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r6
	bl	__lockfile
	mov	r7, r0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %cond.end18
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #28]
	cmp	r0, r1
	bls	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then21
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r6
	bl	__fflush_unlocked
	orr	r4, r0, r4
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end23
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r7, #0
	beq	.LBB0_9
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then25
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r6
	bl	__unlockfile
	b	.LBB0_9
.section bb0_17
.LBB0_17:                               @ %for.end
	mov	r0, r5
	bl	__unlock
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb0_19
.LBB0_19:                               @ %cond.end.thread
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	b	__fflush_unlocked
.Ltmp0:
	.size	fflush, .Ltmp0-fflush
	.cantunwind
	.fnend

	.align	2
	.type	__fflush_unlocked,%function
.section bb1_0
__fflush_unlocked:                      @ @__fflush_unlocked
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #28]
	cmp	r0, r1
	bls	.LBB1_5
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %if.then
	ldr	r3, [r4, #36]
	mov	r0, r4
	mov	r1, #0
	mov	r2, #0
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.then
	mov	lr, pc
	mov	pc, r3
	ldr	r1, [r4, #20]
	mvn	r0, #0
	cmp	r1, #0
	beq	.LBB1_8
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.end3
	ldmib	r4, {r0, r1}
	cmp	r0, r1
	bhs	.LBB1_7
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.then5
	ldr	r5, [r4, #40]
	mov	r2, #1
	str	r2, [sp]
	sub	r2, r0, r1
	mov	r0, r4
	asr	r3, r2, #31
	mov	lr, pc
	mov	pc, r5
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %if.end9
	mov	r0, #0
	str	r0, [r4, #28]
	str	r0, [r4, #16]
	str	r0, [r4, #20]
	str	r0, [r4, #8]
	str	r0, [r4, #4]
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %return
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__fflush_unlocked, .Ltmp1-__fflush_unlocked
	.cantunwind
	.fnend

	.type	dummy,%object           @ @dummy
	.local	dummy
	.comm	dummy,4,4
	.hidden	__libc
	.hidden	__lockfile
	.hidden	__unlockfile
	.hidden	__lock
	.hidden	__unlock

	.weak	__stdout_used
__stdout_used = dummy
	.weak	fflush_unlocked
fflush_unlocked = __fflush_unlocked
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
