.section aio_suspend_text
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
	.file	"src/aio/aio_suspend.bc"
	.globl	__aio_wake
	.align	2
	.type	__aio_wake,%function
.section bb0_0
__aio_wake:                             @ @__aio_wake
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	ldr	r4, .LCPI0_0
	b	.LBB0_1
.LCPI0_0:
	.long	seq
.section bb0_1
.LBB0_1:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_1
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %a_inc.exit
	ldr	r0, .LCPI0_1
	mov	r7, #240
	mov	r1, #129
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_4
	b	.LBB0_3
.LCPI0_1:
	.long	seq
.section bb0_3
.LBB0_3:                                @ %lor.rhs.i
	ldr	r0, .LCPI0_2
	mov	r7, #240
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_4
.LCPI0_2:
	.long	seq
.section bb0_4
.LBB0_4:                                @ %__wake.exit
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__aio_wake, .Ltmp0-__aio_wake
	.cantunwind
	.fnend

	.globl	aio_suspend
	.align	2
	.type	aio_suspend,%function
.section bb1_0
aio_suspend:                            @ @aio_suspend
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
	.pad	#20
	sub	sp, sp, #20
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r5, r1
	mov	r4, r2
	mov	r6, r0
	cmp	r5, #0
	blt	.LBB1_18
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %for.cond.preheader
	ldr	r9, .LCPI1_0
	add	r0, sp, #12
	cmp	r4, #0
	mov	r10, r4
	mov	r8, #0
	mov	r11, #1
	movne	r10, r0
	b	.LBB1_5
.LCPI1_0:
	.long	seq
.section bb1_5
.LBB1_5:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_6 Depth 2
	ldr	r7, [r9]
	mov	r1, #0
	cmp	r5, #1
	blt	.LBB1_9
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %for.body
                                        @   Parent Loop BB1_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6, r1, lsl #2]
	cmp	r0, #0
	beq	.LBB1_8
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %land.lhs.true
                                        @   in Loop: Header=BB1_6 Depth=2
	ldr	r2, [r0, #96]
	mov	r0, #0
	cmp	r2, #115
	bne	.LBB1_20
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %for.inc
                                        @   in Loop: Header=BB1_6 Depth=2
	add	r1, r1, #1
	cmp	r1, r5
	blt	.LBB1_6
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %for.end
                                        @   in Loop: Header=BB1_5 Depth=1
	cmp	r4, #0
	cmpne	r11, #0
	beq	.LBB1_14
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.then10
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r0, #1
	add	r1, sp, #12
	bl	clock_gettime
	ldr	r0, [r4]
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.then10
                                        @   in Loop: Header=BB1_5 Depth=1
	ldr	r1, [sp, #12]
	mov	r11, #0
	add	r0, r1, r0
	str	r0, [sp, #12]
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then10
                                        @   in Loop: Header=BB1_5 Depth=1
	ldr	r1, [r4, #4]
	ldr	r2, [sp, #16]
	add	r1, r2, r1
	str	r1, [sp, #16]
	ldr	r2, .LCPI1_3
	cmp	r1, r2
	blt	.LBB1_14
	b	.LBB1_13
.LCPI1_3:
	.long	1000000000              @ 0x3b9aca00
.section bb1_13
.LBB1_13:                               @ %if.then16
                                        @   in Loop: Header=BB1_5 Depth=1
	ldr	r2, .LCPI1_4
	add	r0, r0, #1
	add	r1, r1, r2
	str	r1, [sp, #16]
	str	r0, [sp, #12]
	b	.LBB1_14
.LCPI1_4:
	.long	3294967296              @ 0xc4653600
.section bb1_14
.LBB1_14:                               @ %if.end21
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r0, #1
	str	r8, [sp]
	str	r8, [sp, #4]
	mov	r1, r7
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %if.end21
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r2, #1
	mov	r3, r10
	str	r0, [sp, #8]
	mov	r0, r9
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.end21
                                        @   in Loop: Header=BB1_5 Depth=1
	bl	__timedwait
	mov	r7, r0
	cmp	r7, #110
	moveq	r7, #11
	cmp	r7, #0
	beq	.LBB1_5
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %if.then28
	bl	__errno_location
	str	r7, [r0]
	b	.LBB1_19
.section bb1_18
.LBB1_18:                               @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %return
	mvn	r0, #0
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	aio_suspend, .Ltmp1-aio_suspend
	.cantunwind
	.fnend

	.type	seq,%object             @ @seq
	.local	seq
	.comm	seq,4,4
	.hidden	__a_cas

	.weak	aio_suspend64
aio_suspend64 = aio_suspend
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
