.section random_text
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
	.file	"src/prng/random.bc"
	.globl	srandom
	.align	2
	.type	srandom,%function
.section bb0_0
srandom:                                @ @srandom
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI0_0
	b	.LBB0_2
.LCPI0_0:
	.long	_MergedGlobals1
.section bb0_2
.LBB0_2:                                @ %entry
	add	r5, r0, #4
	mov	r0, r5
	bl	__lock
	mov	r0, r4
	bl	__srandom
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	b	__unlock
.Ltmp0:
	.size	srandom, .Ltmp0-srandom
	.cantunwind
	.fnend

	.align	2
	.type	__srandom,%function
.section bb1_0
__srandom:                              @ @__srandom
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	ldr	r12, .LCPI1_4
	ldr	r1, [r12]
	cmp	r1, #0
	beq	.LBB1_10
	b	.LBB1_3
.LCPI1_4:
	.long	_MergedGlobals
.section bb1_3
.LBB1_3:                                @ %if.end
	cmp	r1, #7
	mov	lr, #0
	mov	r3, #0
	mov	r2, #0
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.end
	moveq	lr, #1
	cmp	r1, #31
	moveq	r3, #1
	orrs	r3, r3, lr
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.end
	mov	r3, #1
	movne	r3, #3
	cmp	r1, #0
	str	r3, [r12, #8]
	ldr	r3, .LCPI1_5
	str	r2, [r3]
	ble	.LBB1_11
	b	.LBB1_6
.LCPI1_5:
	.long	_MergedGlobals1
.section bb1_6
.LBB1_6:                                @ %for.body.lr.ph
	ldr	lr, [r12, #4]
	mov	r1, #0
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, .LCPI1_6
	ldr	r6, .LCPI1_7
	umull	r4, r5, r0, r3
	mla	r7, r0, r6, r5
	b	.LBB1_8
.LCPI1_6:
	.long	1284865837              @ 0x4c957f2d
.LCPI1_7:
	.long	1481765933              @ 0x5851f42d
.section bb1_8
.LBB1_8:                                @ %for.body
                                        @   in Loop: Header=BB1_7 Depth=1
	adds	r0, r4, #1
	mla	r5, r2, r3, r7
	adc	r2, r5, #0
	str	r2, [lr, r1, lsl #2]
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %for.body
                                        @   in Loop: Header=BB1_7 Depth=1
	add	r1, r1, #1
	ldr	r3, [r12]
	cmp	r1, r3
	blt	.LBB1_7
	b	.LBB1_12
.section bb1_10
.LBB1_10:                               @ %if.then
	ldr	r1, [r12, #4]
	str	r0, [r1]
	b	.LBB1_13
.section bb1_11
.LBB1_11:                               @ %if.end.for.end_crit_edge
	ldr	lr, [r12, #4]
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %for.end
	ldr	r0, [lr]
	orr	r0, r0, #1
	str	r0, [lr]
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__srandom, .Ltmp1-__srandom
	.cantunwind
	.fnend

	.globl	initstate
	.align	2
	.type	initstate,%function
.section bb2_0
initstate:                              @ @initstate
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r6, r2
	mov	r9, r1
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r8, r0
	mov	r4, #0
	cmp	r6, #8
	blo	.LBB2_16
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.end
	ldr	r5, .LCPI2_0
	add	r0, r5, #4
	bl	__lock
	ldr	r7, .LCPI2_2
	b	.LBB2_5
.LCPI2_0:
	.long	_MergedGlobals1
.LCPI2_2:
	.long	_MergedGlobals
.section bb2_5
.LBB2_5:                                @ %if.end
	cmp	r6, #31
	ldm	r7, {r0, r4}
	ldr	r1, [r7, #8]
	lsl	r1, r1, #8
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %if.end
	orr	r0, r1, r0, lsl #16
	ldr	r1, [r5]
	orr	r0, r0, r1
	str	r0, [r4, #-4]!
	bhi	.LBB2_8
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %if.then2
	mov	r0, #0
	b	.LBB2_13
.section bb2_8
.LBB2_8:                                @ %if.else
	cmp	r6, #63
	bhi	.LBB2_10
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %if.then4
	mov	r0, #7
	b	.LBB2_13
.section bb2_10
.LBB2_10:                               @ %if.else5
	cmp	r6, #127
	bhi	.LBB2_12
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.then7
	mov	r0, #15
	b	.LBB2_13
.section bb2_12
.LBB2_12:                               @ %if.else8
	cmp	r6, #255
	movhi	r0, #63
	movls	r0, #31
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.end15
	str	r0, [r7]
	add	r0, r9, #4
	str	r0, [r7, #4]
	mov	r0, r8
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.end15
	bl	__srandom
	ldm	r7, {r0, r1, r2}
	lsl	r2, r2, #8
	orr	r0, r2, r0, lsl #16
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %if.end15
	ldr	r2, [r5], #4
	orr	r0, r0, r2
	str	r0, [r1, #-4]
	mov	r0, r5
	bl	__unlock
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	initstate, .Ltmp2-initstate
	.cantunwind
	.fnend

	.globl	setstate
	.align	2
	.type	setstate,%function
.section bb3_0
setstate:                               @ @setstate
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	ldr	r7, .LCPI3_0
	mov	r4, r0
	add	r5, r7, #4
	mov	r0, r5
	b	.LBB3_3
.LCPI3_0:
	.long	_MergedGlobals1
.section bb3_3
.LBB3_3:                                @ %entry
	bl	__lock
	ldr	r0, .LCPI3_2
	ldm	r0, {r1, r6}
	ldr	r2, [r0, #8]
	b	.LBB3_4
.LCPI3_2:
	.long	_MergedGlobals
.section bb3_4
.LBB3_4:                                @ %entry
	lsl	r2, r2, #8
	orr	r1, r2, r1, lsl #16
	ldr	r2, [r7]
	orr	r1, r1, r2
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %entry
	mov	r2, #255
	str	r1, [r6, #-4]!
	add	r1, r4, #4
	str	r1, [r0, #4]
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %entry
	ldrh	r1, [r4, #2]
	str	r1, [r0]
	ldr	r1, [r4]
	and	r1, r2, r1, lsr #8
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %entry
	str	r1, [r0, #8]
	ldrb	r0, [r4]
	str	r0, [r7]
	mov	r0, r5
	bl	__unlock
	mov	r0, r6
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	setstate, .Ltmp3-setstate
	.cantunwind
	.fnend

	.globl	random
	.align	2
	.type	random,%function
.section bb4_0
random:                                 @ @random
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	ldr	r6, .LCPI4_0
	add	r4, r6, #4
	b	.LBB4_2
.LCPI4_0:
	.long	_MergedGlobals1
.section bb4_2
.LBB4_2:                                @ %entry
	mov	r0, r4
	bl	__lock
	ldr	r0, .LCPI4_3
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.LBB4_7
	b	.LBB4_3
.LCPI4_3:
	.long	_MergedGlobals
.section bb4_3
.LBB4_3:                                @ %if.end
	ldr	r1, [r6]
	ldmib	r0, {r2, r3}
	ldr	r1, [r2, r1, lsl #2]
	ldr	r5, [r2, r3, lsl #2]
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %if.end
	add	r1, r5, r1
	str	r1, [r2, r3, lsl #2]
	ldr	r3, [r0, #8]
	ldr	r1, [r0]
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %if.end
	ldr	r2, [r2, r3, lsl #2]
	add	r3, r3, #1
	cmp	r3, r1
	moveq	r3, #0
	b	.LBB4_6
.section bb4_6
.LBB4_6:                                @ %if.end
	str	r3, [r0, #8]
	ldr	r0, [r6]
	lsr	r5, r2, #1
	add	r0, r0, #1
	cmp	r0, r1
	moveq	r0, #0
	str	r0, [r6]
	b	.LBB4_9
.section bb4_7
.LBB4_7:                                @ %if.then
	ldr	r0, [r0, #4]
	mov	r2, #57
	orr	r2, r2, #12288
	ldr	r1, [r0]
	b	.LBB4_8
.section bb4_8
.LBB4_8:                                @ %if.then
	ldr	r3, .LCPI4_4
	mla	r5, r1, r3, r2
	bic	r5, r5, #-2147483648
	str	r5, [r0]
	b	.LBB4_9
.LCPI4_4:
	.long	1103515245              @ 0x41c64e6d
.section bb4_9
.LBB4_9:                                @ %end
	mov	r0, r4
	bl	__unlock
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp4:
	.size	random, .Ltmp4-random
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.section	.data.rel.local,"aw",%progbits
	.align	4
_MergedGlobals:
	.long	31                      @ 0x1f
	.long	_MergedGlobals+16
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	1481765933              @ 0x5851f42d
	.long	3232861391              @ 0xc0b18ccf
	.long	3417699910              @ 0xcbb5f646
	.long	3338875177              @ 0xc7033129
	.long	812669700               @ 0x30705b04
	.long	553475508               @ 0x20fd5db4
	.long	2592833400              @ 0x9a8b7f78
	.long	1344887256              @ 0x502959d8
	.long	2877900904              @ 0xab894868
	.long	1812158119              @ 0x6c0356a7
	.long	2295183359              @ 0x88cdb7ff
	.long	3027751999              @ 0xb477d43f
	.long	1889772843              @ 0x70a3a52b
	.long	2833562353              @ 0xa8e4baf1
	.long	4253237756              @ 0xfd8341fc
	.long	2330030041              @ 0x8ae16fd9
	.long	1949118330              @ 0x742d2f7a
	.long	220137366               @ 0xd1f0796
	.long	1979932169              @ 0x76035e09
	.long	1089957932              @ 0x40f7702c
	.long	1873226917              @ 0x6fa72ca5
	.long	2863153495              @ 0xaaa84157
	.long	1486937972              @ 0x58a0df74
	.long	3343516516              @ 0xc74a0364
	.long	2924690628              @ 0xae533cc4
	.long	68706223                @ 0x4185faf
	.long	1843638549              @ 0x6de3b115
	.long	212567592               @ 0xcab8628
	.long	4030971812              @ 0xf043bfa4
	.long	964776169               @ 0x398150e9
	.long	928126551               @ 0x37521657
	.size	_MergedGlobals, 140

	.type	_MergedGlobals1,%object @ @_MergedGlobals1
	.local	_MergedGlobals1
	.comm	_MergedGlobals1,12,4
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
