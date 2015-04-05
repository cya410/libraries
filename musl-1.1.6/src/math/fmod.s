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
	.file	"src/math/fmod.bc"
	.globl	fmod
	.align	2
	.type	fmod,%function
fmod:                                   @ @fmod
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r8, r0
	adds	r0, r2, r2
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r1
	adc	r7, r3, r3
	orrs	r1, r0, r7
	beq	.LBB0_12
	b	.LBB0_4
.LBB0_4:                                @ %cond.true17
	mov	r6, #267386880
	bic	r1, r3, #-2147483648
	mov	r5, #0
	mov	r4, r2
	b	.LBB0_5
.LBB0_5:                                @ %cond.true17
	orr	r6, r6, #1879048192
	cmp	r1, r6
	movhi	r5, #1
	cmp	r2, #0
	b	.LBB0_6
.LBB0_6:                                @ %cond.true17
	movne	r4, #1
	cmp	r1, r6
	movne	r4, r5
	cmp	r4, #0
	bne	.LBB0_12
	b	.LBB0_7
.LBB0_7:                                @ %cond.true17
	mov	r12, #255
	orr	r12, r12, #1792
	and	r1, r12, r9, lsr #20
	cmp	r1, r12
	beq	.LBB0_12
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	adds	r5, r8, r8
	mov	r4, #0
	mov	r6, #0
	adc	lr, r9, r9
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	cmp	r5, r0
	movhi	r4, #1
	cmp	lr, r7
	movhi	r6, #1
	moveq	r6, r4
	cmp	r6, #0
	beq	.LBB0_13
	b	.LBB0_10
.LBB0_10:                               @ %if.end44
	and	r5, r12, r3, lsr #20
	cmp	r1, #0
	beq	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %if.else
	ldr	r0, .LCPI0_0
	mov	r7, r8
	and	r0, r9, r0
	orr	r6, r0, #1048576
	b	.LBB0_20
.LCPI0_0:
	.long	1048575                 @ 0xfffff
.LBB0_12:                               @ %if.then
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_ddiv
	b	.LBB0_45
.LBB0_13:                               @ %if.then35
	eor	r0, r5, r0
	eor	r1, lr, r7
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_14
.LBB0_14:                               @ %if.then35
	orr	r4, r0, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	cmp	r4, #0
	movne	r0, r8
	movne	r1, r9
	b	.LBB0_45
.LBB0_15:                               @ %if.then45
	lsl	r0, r9, #12
	mov	r1, #0
	orr	r0, r0, r8, lsr #20
	cmp	r0, #0
	blt	.LBB0_18
	b	.LBB0_16
.LBB0_16:
	lsl	r7, r8, #12
	b	.LBB0_17
.LBB0_17:                               @ %for.inc
                                        @ =>This Inner Loop Header: Depth=1
	adds	r7, r7, r7
	sub	r1, r1, #1
	adc	r0, r0, r0
	cmp	r0, #0
	bge	.LBB0_17
	b	.LBB0_18
.LBB0_18:                               @ %for.end
	rsb	r0, r1, #1
	rsb	r7, r0, #32
	lsr	r7, r8, r7
	orr	r6, r7, r9, lsl r0
	b	.LBB0_19
.LBB0_19:                               @ %for.end
	mvn	r7, #30
	sub	r7, r7, r1
	cmp	r7, #0
	lslge	r6, r8, r7
	lsl	r7, r8, r0
	b	.LBB0_20
.LBB0_20:                               @ %if.end53
	cmp	r5, #0
	beq	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               @ %if.else72
	ldr	r0, .LCPI0_1
	and	r0, r3, r0
	orr	r12, r0, #1048576
	b	.LBB0_27
.LCPI0_1:
	.long	1048575                 @ 0xfffff
.LBB0_22:                               @ %if.then55
	lsl	r0, r3, #12
	mov	r5, #0
	orr	r0, r0, r2, lsr #20
	cmp	r0, #0
	blt	.LBB0_25
	b	.LBB0_23
.LBB0_23:
	lsl	r4, r2, #12
	b	.LBB0_24
.LBB0_24:                               @ %for.inc63
                                        @ =>This Inner Loop Header: Depth=1
	adds	r4, r4, r4
	sub	r5, r5, #1
	adc	r0, r0, r0
	cmp	r0, #0
	bge	.LBB0_24
	b	.LBB0_25
.LBB0_25:                               @ %for.end66
	rsb	r0, r5, #1
	rsb	r4, r0, #32
	lsr	r4, r2, r4
	orr	r12, r4, r3, lsl r0
	b	.LBB0_26
.LBB0_26:                               @ %for.end66
	mvn	r3, #30
	sub	r3, r3, r5
	cmp	r3, #0
	lslge	r12, r2, r3
	lsl	r2, r2, r0
	b	.LBB0_27
.LBB0_27:                               @ %for.cond78.preheader
	subs	r0, r7, r2
	mov	r4, #0
	sbc	r3, r6, r12
	cmp	r3, #0
	movge	r4, #1
	b	.LBB0_30
.LBB0_28:                               @ %if.end93
                                        @   in Loop: Header=BB0_30 Depth=1
	adds	r7, r0, r0
	mov	r4, #0
	sub	r1, r1, #1
	adc	r6, r3, r3
	b	.LBB0_29
.LBB0_29:                               @ %if.end93
                                        @   in Loop: Header=BB0_30 Depth=1
	subs	r0, r7, r2
	sbc	r3, r6, r12
	cmp	r3, #0
	movge	r4, #1
	b	.LBB0_30
.LBB0_30:                               @ %for.cond78.preheader
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r1, r5
	ble	.LBB0_34
	b	.LBB0_31
.LBB0_31:                               @ %for.body81
                                        @   in Loop: Header=BB0_30 Depth=1
	tst	r4, #1
	beq	.LBB0_33
	b	.LBB0_32
.LBB0_32:                               @ %if.then87
                                        @   in Loop: Header=BB0_30 Depth=1
	eor	r7, r7, r2
	eor	r6, r6, r12
	orrs	r7, r7, r6
	bne	.LBB0_28
	b	.LBB0_36
.LBB0_33:                               @   in Loop: Header=BB0_30 Depth=1
	mov	r0, r7
	mov	r3, r6
	b	.LBB0_28
.LBB0_34:                               @ %for.end97
	cmp	r4, #1
	bne	.LBB0_37
	b	.LBB0_35
.LBB0_35:                               @ %if.then103
	eor	r2, r7, r2
	eor	r7, r6, r12
	orrs	r2, r2, r7
	bne	.LBB0_39
	b	.LBB0_36
.LBB0_36:                               @ %if.then90
	mov	r0, r8
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dmul
	b	.LBB0_45
.LBB0_37:
	mov	r0, r7
	mov	r3, r6
	b	.LBB0_39
.LBB0_38:                               @ %for.inc115
                                        @   in Loop: Header=BB0_39 Depth=1
	adds	r0, r0, r0
	sub	r1, r1, #1
	adc	r3, r3, r3
	b	.LBB0_39
.LBB0_39:                               @ %for.inc115
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r3, #1048576
	blo	.LBB0_38
	b	.LBB0_40
.LBB0_40:                               @ %for.end118
	and	r2, r9, #-2147483648
	cmp	r1, #1
	blt	.LBB0_42
	b	.LBB0_41
.LBB0_41:                               @ %if.then121
	sub	r3, r3, #1048576
	orr	r1, r3, r1, lsl #20
	b	.LBB0_44
.LBB0_42:                               @ %if.else126
	rsb	r7, r1, #1
	lsr	r0, r0, r7
	rsb	r6, r7, #32
	orr	r0, r0, r3, lsl r6
	b	.LBB0_43
.LBB0_43:                               @ %if.else126
	mvn	r6, #30
	sub	r1, r6, r1
	cmp	r1, #0
	lsrge	r0, r3, r1
	lsr	r1, r3, r7
	b	.LBB0_44
.LBB0_44:                               @ %if.end131
	orr	r1, r1, r2
	b	.LBB0_45
.LBB0_45:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fmod, .Ltmp0-fmod
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
