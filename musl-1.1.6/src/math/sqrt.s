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
	.file	"src/math/sqrt.bc"
	.globl	sqrt
	.align	2
	.type	sqrt,%function
sqrt:                                   @ @sqrt
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	mov	r0, #267386880
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	orr	r0, r0, #1879048192
	and	r1, r5, r0
	cmp	r1, r0
	bne	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_6
.LBB0_6:                                @ %return
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_40
.LBB0_7:                                @ %if.end
	cmp	r5, #0
	ble	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %if.end18
	mov	r0, #1
	mov	r1, #0
	cmp	r1, r5, asr #20
	beq	.LBB0_15
	b	.LBB0_9
.LBB0_9:
	asr	r0, r5, #20
	b	.LBB0_20
.LBB0_10:                               @ %if.then7
	bic	r0, r5, #-2147483648
	orrs	r0, r0, r4
	beq	.LBB0_40
	b	.LBB0_11
.LBB0_11:                               @ %if.end12
	cmp	r5, #0
	blt	.LBB0_41
	b	.LBB0_12
.LBB0_12:                               @ %while.body.lr.ph
	mov	r0, #1
	mov	r1, #0
	add	r0, r0, r5, asr #20
	b	.LBB0_13
.LBB0_13:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r4
	sub	r0, r0, #21
	lsl	r4, r2, #21
	cmp	r1, r2, lsr #11
	beq	.LBB0_13
	b	.LBB0_14
.LBB0_14:
	lsr	r5, r2, #11
	b	.LBB0_15
.LBB0_15:                               @ %for.cond.preheader
	mov	r1, #0
	tst	r5, #1048576
	beq	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	mov	r3, r5
	b	.LBB0_19
.LBB0_17:
	mov	r2, #1048576
	b	.LBB0_18
.LBB0_18:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	lsl	r3, r5, #1
	tst	r2, r5, lsl #1
	add	r1, r1, #1
	mov	r5, r3
	beq	.LBB0_18
	b	.LBB0_19
.LBB0_19:                               @ %for.end
	rsb	r2, r1, #32
	sub	r0, r0, r1
	orr	r5, r3, r4, lsr r2
	lsl	r4, r4, r1
	b	.LBB0_20
.LBB0_20:                               @ %if.end38
	ldr	r1, .LCPI0_2
	mov	lr, #0
	mov	r8, #0
	mov	r2, #0
	b	.LBB0_21
.LCPI0_2:
	.long	4294966273              @ 0xfffffc01
.LBB0_21:                               @ %if.end38
	add	r12, r0, r1
	ldr	r0, .LCPI0_3
	tst	r12, #1
	and	r0, r5, r0
	b	.LBB0_22
.LCPI0_3:
	.long	1048575                 @ 0xfffff
.LBB0_22:                               @ %if.end38
	mov	r5, #1
	orr	r0, r0, #1048576
	lslne	r0, r0, #1
	orrne	r0, r0, r4, lsr #31
	b	.LBB0_23
.LBB0_23:                               @ %if.end38
	lslne	r4, r4, #1
	lsl	r0, r0, #1
	lsl	r3, r4, #1
	orr	r1, r0, r4, lsr #31
	mov	r0, #2097152
	b	.LBB0_24
.LBB0_24:                               @ %while.body59
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r3
	add	r3, r0, r2
	lsr	r6, r0, #1
	cmp	r1, r3
	b	.LBB0_25
.LBB0_25:                               @ %while.body59
                                        @   in Loop: Header=BB0_24 Depth=1
	subge	r1, r1, r3
	addge	r2, r3, r0
	and	r3, r5, r4, lsr #30
	addge	r8, r0, r8
	b	.LBB0_26
.LBB0_26:                               @ %while.body59
                                        @   in Loop: Header=BB0_24 Depth=1
	cmp	lr, r0, lsr #1
	mov	r4, r7
	mov	r0, r6
	orr	r1, r3, r1, lsl #1
	lsl	r3, r7, #1
	bne	.LBB0_24
	b	.LBB0_27
.LBB0_27:                               @ %while.cond75.preheader
	lsr	r12, r12, #1
	mov	r0, #-2147483648
	mov	lr, #0
	mov	r9, #0
	mov	r5, #0
	b	.LBB0_28
.LBB0_28:                               @ %while.body78
                                        @ =>This Inner Loop Header: Depth=1
	mov	r6, r0
	cmp	r1, r2
	add	r0, r5, r6
	bgt	.LBB0_31
	b	.LBB0_29
.LBB0_29:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_28 Depth=1
	bne	.LBB0_34
	b	.LBB0_30
.LBB0_30:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_28 Depth=1
	cmp	r3, r0
	blo	.LBB0_34
	b	.LBB0_31
.LBB0_31:                               @ %if.then86
                                        @   in Loop: Header=BB0_28 Depth=1
	cmp	r3, r0
	sub	r1, r1, r2
	mov	r7, #0
	add	r5, r0, r6
	b	.LBB0_32
.LBB0_32:                               @ %if.then86
                                        @   in Loop: Header=BB0_28 Depth=1
	mov	r4, #0
	add	r9, r9, r6
	sub	r3, r3, r0
	sublo	r1, r1, #1
	b	.LBB0_33
.LBB0_33:                               @ %if.then86
                                        @   in Loop: Header=BB0_28 Depth=1
	cmp	r0, #0
	movlt	r7, #1
	cmp	r5, #0
	movge	r4, #1
	tst	r7, r4
	addne	r2, r2, #1
	b	.LBB0_34
.LBB0_34:                               @ %if.end105
                                        @   in Loop: Header=BB0_28 Depth=1
	lsl	r0, r1, #1
	cmp	lr, r6, lsr #1
	orr	r1, r0, r3, lsr #31
	lsr	r0, r6, #1
	lsl	r3, r3, #1
	bne	.LBB0_28
	b	.LBB0_35
.LBB0_35:                               @ %while.end112
	orrs	r0, r3, r1
	beq	.LBB0_39
	b	.LBB0_36
.LBB0_36:                               @ %if.then119
	cmn	r9, #1
	beq	.LBB0_38
	b	.LBB0_37
.LBB0_37:                               @ %if.else133
	and	r0, r9, #1
	add	r9, r0, r9
	b	.LBB0_39
.LBB0_38:                               @ %if.then122
	add	r8, r8, #1
	mov	r9, #0
	b	.LBB0_39
.LBB0_39:                               @ %if.end139
	lsr	r0, r9, #1
	orr	r4, r0, r8, lsl #31
	lsl	r0, r12, #20
	add	r0, r0, r8, asr #1
	add	r0, r0, #266338304
	add	r5, r0, #805306368
	b	.LBB0_40
.LBB0_40:                               @ %return
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.LBB0_41:                               @ %if.then15
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_42
.LBB0_42:                               @ %if.then15
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_ddiv
	b	.LBB0_6
.Ltmp0:
	.size	sqrt, .Ltmp0-sqrt
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
