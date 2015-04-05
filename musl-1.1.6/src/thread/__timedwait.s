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
	.file	"src/thread/__timedwait.bc"
	.globl	__timedwait
	.align	2
	.type	__timedwait,%function
__timedwait:                            @ @__timedwait
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#40
	sub	sp, sp, #40
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r6, [sp, #80]
	mov	r5, r3
	mov	r9, r1
	mov	r10, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r7, #0
	cmp	r6, #0
	movne	r6, #128
	cmp	r5, #0
	beq	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                @ %if.then2
	ldr	r0, [r5, #4]
	ldr	r1, .LCPI0_2
	mov	r4, #22
	cmp	r0, r1
	bhi	.LBB0_22
	b	.LBB0_6
.LCPI0_2:
	.long	999999999               @ 0x3b9ac9ff
.LBB0_6:                                @ %if.end4
	add	r7, sp, #28
	mov	r0, r2
	mov	r1, r7
	bl	__clock_gettime
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_7
.LBB0_7:                                @ %if.end7
	ldr	r0, [r5]
	ldr	r1, [sp, #28]
	sub	r0, r0, r1
	str	r0, [sp, #28]
	b	.LBB0_8
.LBB0_8:                                @ %if.end7
	ldr	r1, [r5, #4]
	ldr	r2, [sp, #32]
	sub	r1, r1, r2
	str	r1, [sp, #32]
	cmp	r1, #0
	bge	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                @ %if.then15
	sub	r0, r0, #1
	str	r0, [sp, #28]
	ldr	r2, .LCPI0_3
	add	r1, r1, r2
	str	r1, [sp, #32]
	b	.LBB0_10
.LCPI0_3:
	.long	1000000000              @ 0x3b9aca00
.LBB0_10:                               @ %if.end18
	mov	r4, #110
	cmp	r0, #0
	blt	.LBB0_22
	b	.LBB0_11
.LBB0_11:                               @ %if.end23
	ldr	r8, [sp, #72]
	ldr	r4, [sp, #76]
	cmp	r8, #0
	bne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %if.then25
	add	r1, sp, #36
	mov	r0, #1
	bl	__pthread_setcancelstate
	b	.LBB0_13
.LBB0_13:                               @ %do.body
	add	r0, sp, #16
	mov	r1, r8
	mov	r2, r4
	bl	_pthread_cleanup_push
	b	.LBB0_14
.LBB0_14:                               @ %do.body
	mov	r4, #0
	mov	r0, #240
	mov	r1, r10
	mov	r2, r6
	b	.LBB0_15
.LBB0_15:                               @ %do.body
	mov	r3, r9
	str	r7, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	b	.LBB0_16
.LBB0_16:                               @ %do.body
	bl	__syscall_cp
	mov	r1, #38
	cmn	r1, r0
	bne	.LBB0_19
	b	.LBB0_17
.LBB0_17:                               @ %if.then31
	mov	r0, #240
	mov	r1, r10
	mov	r2, #0
	mov	r3, r9
	b	.LBB0_18
.LBB0_18:                               @ %if.then31
	str	r7, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	__syscall_cp
	b	.LBB0_19
.LBB0_19:                               @ %if.end34
	rsb	r5, r0, #0
	add	r0, sp, #16
	mov	r1, #0
	bl	_pthread_cleanup_pop
	b	.LBB0_20
.LBB0_20:                               @ %if.end34
	cmp	r5, #4
	mov	r4, r5
	movne	r4, #0
	cmp	r5, #110
	moveq	r4, r5
	cmp	r8, #0
	bne	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               @ %if.then40
	ldr	r0, [sp, #36]
	mov	r1, #0
	bl	__pthread_setcancelstate
	b	.LBB0_22
.LBB0_22:                               @ %return
	mov	r0, r4
	add	sp, sp, #40
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	__timedwait, .Ltmp0-__timedwait
	.cantunwind
	.fnend

	.hidden	__syscall_cp

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
