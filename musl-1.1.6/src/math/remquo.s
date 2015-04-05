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
	.file	"src/math/remquo.bc"
	.globl	remquo
	.align	2
	.type	remquo,%function
remquo:                                 @ @remquo
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r11, r3
	ldr	r3, [sp, #56]
	mov	r9, r2
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r2, #0
	str	r2, [r3]
	bic	r3, r11, #-2147483648
	orrs	r7, r9, r3
	beq	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                @ %cond.true20
	mov	r7, #267386880
	mov	r6, r9
	orr	r7, r7, #1879048192
	cmp	r3, r7
	b	.LBB0_6
.LBB0_6:                                @ %cond.true20
	movhi	r2, #1
	cmp	r9, #0
	movne	r6, #1
	cmp	r3, r7
	movne	r6, r2
	cmp	r6, #0
	bne	.LBB0_11
	b	.LBB0_7
.LBB0_7:                                @ %cond.true20
	mov	r2, #255
	orr	r2, r2, #1792
	and	r6, r2, r1, lsr #20
	cmp	r6, r2
	beq	.LBB0_11
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	bic	r3, r1, #-2147483648
	orrs	r3, r0, r3
	beq	.LBB0_57
	b	.LBB0_9
.LBB0_9:                                @ %if.end38
	and	r10, r2, r11, lsr #20
	cmp	r6, #0
	beq	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               @ %if.else
	ldr	r2, .LCPI0_0
	mov	r5, r0
	and	r2, r1, r2
	orr	r2, r2, #1048576
	b	.LBB0_17
.LCPI0_0:
	.long	1048575                 @ 0xfffff
.LBB0_11:                               @ %if.then
	mov	r2, r9
	mov	r3, r11
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_ddiv
	b	.LBB0_57
.LBB0_12:                               @ %if.then39
	lsl	r2, r1, #12
	mov	r6, #0
	orr	r2, r2, r0, lsr #20
	cmp	r2, #0
	blt	.LBB0_15
	b	.LBB0_13
.LBB0_13:
	lsl	r3, r0, #12
	b	.LBB0_14
.LBB0_14:                               @ %for.inc
                                        @ =>This Inner Loop Header: Depth=1
	adds	r3, r3, r3
	sub	r6, r6, #1
	adc	r2, r2, r2
	cmp	r2, #0
	bge	.LBB0_14
	b	.LBB0_15
.LBB0_15:                               @ %for.end
	rsb	r3, r6, #1
	mvn	r7, #30
	rsb	r2, r3, #32
	sub	r7, r7, r6
	b	.LBB0_16
.LBB0_16:                               @ %for.end
	lsl	r5, r0, r3
	lsr	r2, r0, r2
	cmp	r7, #0
	orr	r2, r2, r1, lsl r3
	lslge	r2, r0, r7
	b	.LBB0_17
.LBB0_17:                               @ %if.end47
	cmp	r10, #0
	beq	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               @ %if.else66
	ldr	r3, .LCPI0_1
	mov	r4, r9
	and	r3, r11, r3
	orr	r3, r3, #1048576
	b	.LBB0_24
.LCPI0_1:
	.long	1048575                 @ 0xfffff
.LBB0_19:                               @ %if.then49
	lsl	r3, r11, #12
	mov	r10, #0
	orr	r3, r3, r9, lsr #20
	cmp	r3, #0
	blt	.LBB0_22
	b	.LBB0_20
.LBB0_20:
	lsl	r7, r9, #12
	b	.LBB0_21
.LBB0_21:                               @ %for.inc57
                                        @ =>This Inner Loop Header: Depth=1
	adds	r7, r7, r7
	sub	r10, r10, #1
	adc	r3, r3, r3
	cmp	r3, #0
	bge	.LBB0_21
	b	.LBB0_22
.LBB0_22:                               @ %for.end60
	rsb	r7, r10, #1
	mvn	r4, #30
	rsb	r3, r7, #32
	sub	r4, r4, r10
	b	.LBB0_23
.LBB0_23:                               @ %for.end60
	lsr	r3, r9, r3
	cmp	r4, #0
	orr	r3, r3, r11, lsl r7
	lslge	r3, r9, r4
	lsl	r4, r9, r7
	b	.LBB0_24
.LBB0_24:                               @ %if.end71
	cmp	r6, r10
	bge	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               @ %if.then74
	add	r3, r6, #1
	mov	r8, #0
	cmp	r3, r10
	beq	.LBB0_36
	b	.LBB0_57
.LBB0_26:                               @ %for.cond81.preheader
	subs	r0, r5, r4
	sbc	r7, r2, r3
	cmp	r7, #0
	movlt	r0, r5
	b	.LBB0_27
.LBB0_27:                               @ %for.cond81.preheader
	mov	r5, #1
	movge	r2, r7
	cmp	r6, r10
	eor	r8, r5, r7, lsr #31
	ble	.LBB0_32
	b	.LBB0_28
.LBB0_28:                               @ %for.body84
                                        @ =>This Inner Loop Header: Depth=1
	adds	r7, r0, r0
	sub	r6, r6, #1
	adc	r2, r2, r2
	subs	r0, r7, r4
	b	.LBB0_29
.LBB0_29:                               @ %for.body84
                                        @   in Loop: Header=BB0_28 Depth=1
	sbc	r5, r2, r3
	cmp	r5, #0
	movlt	r0, r7
	lsr	r7, r5, #31
	b	.LBB0_30
.LBB0_30:                               @ %for.body84
                                        @   in Loop: Header=BB0_28 Depth=1
	movge	r2, r5
	cmp	r6, r10
	orr	r7, r7, r8, lsl #1
	eor	r8, r7, #1
	bgt	.LBB0_28
	b	.LBB0_31
.LBB0_31:
	mov	r6, r10
	b	.LBB0_32
.LBB0_32:                               @ %for.end96
	orrs	r3, r0, r2
	beq	.LBB0_38
	b	.LBB0_33
.LBB0_33:                               @ %for.cond109.preheader
	mov	r3, #0
	cmp	r3, r2, lsr #20
	bne	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               @ %for.inc114
                                        @ =>This Inner Loop Header: Depth=1
	adds	r0, r0, r0
	sub	r6, r6, #1
	adc	r2, r2, r2
	cmp	r2, #1048576
	blo	.LBB0_34
	b	.LBB0_35
.LBB0_35:
	mov	r5, r0
	b	.LBB0_36
.LBB0_36:                               @ %end
	cmp	r6, #1
	blt	.LBB0_39
	b	.LBB0_37
.LBB0_37:                               @ %if.then121
	sub	r0, r2, #1048576
	str	r5, [sp, #16]           @ 4-byte Spill
	orr	r0, r0, r6, lsl #20
	b	.LBB0_41
.LBB0_38:
	mov	r5, #0
	mvn	r6, #59
	mov	r2, #0
	b	.LBB0_39
.LBB0_39:                               @ %if.else126
	rsb	r0, r6, #1
	lsr	r3, r5, r0
	rsb	r7, r0, #32
	lsr	r0, r2, r0
	b	.LBB0_40
.LBB0_40:                               @ %if.else126
	orr	r7, r3, r2, lsl r7
	mvn	r3, #30
	sub	r3, r3, r6
	cmp	r3, #0
	lsrge	r7, r2, r3
	str	r7, [sp, #16]           @ 4-byte Spill
	b	.LBB0_41
.LBB0_41:                               @ %if.end131
	str	r0, [sp, #4]            @ 4-byte Spill
	lsr	r0, r1, #31
	lsr	r4, r11, #31
	mov	r1, #-2147483648
	b	.LBB0_42
.LBB0_42:                               @ %if.end131
	mov	r2, r9
	mov	r3, r11
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, #0
	b	.LBB0_43
.LBB0_43:                               @ %if.end131
	str	r4, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_dsub
	mov	r5, r1
	cmp	r4, #0
	b	.LBB0_44
.LBB0_44:                               @ %if.end131
	mov	r7, r0
	moveq	r5, r11
	ldr	r11, [sp, #4]           @ 4-byte Reload
	moveq	r7, r9
	cmp	r6, r10
	beq	.LBB0_51
	b	.LBB0_45
.LBB0_45:                               @ %lor.lhs.false140
	add	r0, r6, #1
	cmp	r0, r10
	bne	.LBB0_53
	b	.LBB0_46
.LBB0_46:                               @ %land.lhs.true
	ldr	r0, [sp, #16]           @ 4-byte Reload
	mov	r1, r11
	mov	r3, r11
	mov	r2, r0
	b	.LBB0_47
.LBB0_47:                               @ %land.lhs.true
	bl	__aeabi_dadd
	mov	r6, r0
	mov	r9, r1
	mov	r2, r7
	b	.LBB0_48
.LBB0_48:                               @ %land.lhs.true
	mov	r3, r5
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R9<kill>
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	bne	.LBB0_51
	b	.LBB0_49
.LBB0_49:                               @ %lor.lhs.false147
	tst	r8, #1
	beq	.LBB0_53
	b	.LBB0_50
.LBB0_50:                               @ %lor.lhs.false147
	mov	r0, r6
	mov	r1, r9
	mov	r2, r7
	mov	r3, r5
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_53
	b	.LBB0_51
.LBB0_51:                               @ %if.then153
	ldr	r0, [sp, #16]           @ 4-byte Reload
	mov	r1, r11
	mov	r2, r7
	mov	r3, r5
	b	.LBB0_52
.LBB0_52:                               @ %if.then153
	bl	__aeabi_dsub
	mov	r11, r1
	ldr	r1, [sp, #56]
	mov	r4, r0
	add	r8, r8, #1
	b	.LBB0_54
.LBB0_53:
	ldr	r1, [sp, #56]
	ldr	r4, [sp, #16]           @ 4-byte Reload
	b	.LBB0_54
.LBB0_54:                               @ %if.end156
	ldr	r6, [sp, #12]           @ 4-byte Reload
	ldr	r2, [sp, #8]            @ 4-byte Reload
	bic	r0, r8, #-2147483648
	mov	r3, r11
	b	.LBB0_55
.LBB0_55:                               @ %if.end156
	teq	r6, r2
	mov	r2, r4
	rsbne	r0, r0, #0
	str	r0, [r1]
	b	.LBB0_56
.LBB0_56:                               @ %if.end156
	mov	r0, #0
	mov	r1, #-2147483648
	bl	__aeabi_dsub
	cmp	r6, #0
	moveq	r1, r11
	moveq	r0, r4
	b	.LBB0_57
.LBB0_57:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	remquo, .Ltmp0-remquo
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
