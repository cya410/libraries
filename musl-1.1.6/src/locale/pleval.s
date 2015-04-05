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
	.file	"src/locale/pleval.bc"
	.globl	__pleval
	.align	2
	.type	__pleval,%function
__pleval:                               @ @__pleval
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r2, r0
	str	r1, [sp, #8]
	b	.LBB0_2
.LBB0_2:                                @ %entry
	add	r0, sp, #4
	mov	r1, r2
	mov	r2, #100
	bl	evalexpr
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldrb	r1, [r0]
	ldr	r0, [sp, #4]
	cmp	r1, #59
	mvnne	r0, #0
	add	sp, sp, #16
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pleval, .Ltmp0-__pleval
	.cantunwind
	.fnend

	.align	2
	.type	evalexpr,%function
evalexpr:                               @ @evalexpr
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	ldr	r6, .LCPI1_0
	mov	r4, r0
	cmp	r2, #1
	blt	.LBB1_9
	b	.LBB1_3
.LCPI1_0:
	.long	.L.str
.LBB1_3:                                @ %if.end
	sub	r5, r2, #1
	mov	r0, r4
	mov	r2, #0
	mov	r3, r5
	b	.LBB1_4
.LBB1_4:                                @ %if.end
	bl	evalbinop
	ldrb	r1, [r0]
	cmp	r1, #63
	bne	.LBB1_10
	b	.LBB1_5
.LBB1_5:                                @ %if.end4
	ldr	r7, [r4]
	add	r1, r0, #1
	mov	r0, r4
	mov	r2, r5
	b	.LBB1_6
.LBB1_6:                                @ %if.end4
	bl	evalexpr
	mov	r1, r0
	ldrb	r0, [r1]
	cmp	r0, #58
	mov	r0, r6
	bne	.LBB1_10
	b	.LBB1_7
.LBB1_7:                                @ %if.end10
	ldr	r6, [r4]
	add	r1, r1, #1
	mov	r0, r4
	mov	r2, r5
	b	.LBB1_8
.LBB1_8:                                @ %if.end10
	bl	evalexpr
	cmp	r7, #0
	ldreq	r6, [r4]
	str	r6, [r4]
	b	.LBB1_10
.LBB1_9:
	mov	r0, r6
	b	.LBB1_10
.LBB1_10:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	evalexpr, .Ltmp1-evalexpr
	.cantunwind
	.fnend

	.align	2
	.type	evalbinop,%function
evalbinop:                              @ @evalbinop
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB2_3
.LBB2_3:                                @ %entry
	sub	r9, r3, #1
	mov	r5, r0
	mov	r8, r2
	b	.LBB2_4
.LBB2_4:                                @ %entry
	mov	r2, r9
                                        @ kill: R0<def> R5<kill>
	bl	evalprim
	ldrb	r1, [r0]
	ldr	r2, .LCPI2_4
	mov	r11, #0
	b	.LBB2_5
.LCPI2_4:
	.long	parseop.opch
.LBB2_5:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r2, r11]
	cmp	r1, r3
	beq	.LBB2_7
	b	.LBB2_6
.LBB2_6:                                @ %for.inc.i
                                        @   in Loop: Header=BB2_5 Depth=1
	add	r11, r11, #1
	cmp	r11, #11
	blt	.LBB2_5
	b	.LBB2_12
.LBB2_7:                                @ %if.then.i22
	add	r7, r0, #1
	cmp	r11, #5
	bgt	.LBB2_11
	b	.LBB2_8
.LBB2_8:                                @ %land.lhs.true.i
	ldr	r1, .LCPI2_5
	ldrb	r2, [r7]
	ldrb	r1, [r1, r11]
	cmp	r2, r1
	bne	.LBB2_10
	b	.LBB2_9
.LCPI2_5:
	.long	parseop.opch2
.LBB2_9:                                @ %if.then12.i
	mov	r6, r5
	add	r7, r0, #2
	str	r11, [r6, #8]!
	b	.LBB2_13
.LBB2_10:                               @ %if.end.i
	cmp	r11, #4
	blt	.LBB2_12
	b	.LBB2_11
.LBB2_11:                               @ %if.then15.i
	add	r11, r11, #2
	mov	r6, r5
	str	r11, [r6, #8]!
	b	.LBB2_13
.LBB2_12:                               @ %for.end.i
	mov	r11, #13
	mov	r6, r5
	mov	r7, r0
	str	r11, [r6, #8]!
	b	.LBB2_13
.LBB2_13:                               @ %for.cond.preheader
	ldr	r10, .LCPI2_6
	ldrb	r2, [r10, r11]
	cmp	r2, r8
	ble	.LBB2_37
	b	.LBB2_14
.LCPI2_6:
	.long	evalbinop.prec
.LBB2_14:                               @ %if.end.lr.ph
	ldr	r4, [r5]
	b	.LBB2_15
.LBB2_15:                               @ %if.end
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r7
	mov	r3, r9
	bl	evalbinop
	mov	r7, r0
	cmp	r11, #12
	bhi	.LBB2_36
	b	.LBB2_16
.LBB2_16:                               @ %if.end
                                        @   in Loop: Header=BB2_15 Depth=1
	ldr	r1, [r5]
	lsl	r0, r11, #2
	adr	r2, .LJTI2_0_0
	ldr	pc, [r0, r2]
.LJTI2_0_0:
	.long	.LBB2_17
	.long	.LBB2_18
	.long	.LBB2_19
	.long	.LBB2_20
	.long	.LBB2_22
	.long	.LBB2_23
	.long	.LBB2_24
	.long	.LBB2_25
	.long	.LBB2_26
	.long	.LBB2_27
	.long	.LBB2_28
	.long	.LBB2_29
	.long	.LBB2_31
.LBB2_17:                               @ %sw.bb.i
                                        @   in Loop: Header=BB2_15 Depth=1
	orrs	r4, r1, r4
	b	.LBB2_21
.LBB2_18:                               @ %sw.bb3.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r1, #0
	movne	r1, #1
	cmp	r4, #0
	movne	r4, #1
	and	r4, r4, r1
	b	.LBB2_34
.LBB2_19:                               @ %sw.bb7.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r4, r1
	mov	r4, #0
	moveq	r4, #1
	b	.LBB2_34
.LBB2_20:                               @ %sw.bb9.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r4, r1
	mov	r4, #0
	b	.LBB2_21
.LBB2_21:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB2_15 Depth=1
	movne	r4, #1
	b	.LBB2_34
.LBB2_22:                               @ %sw.bb13.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r4, r1
	mov	r4, #0
	movhs	r4, #1
	b	.LBB2_34
.LBB2_23:                               @ %sw.bb17.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r4, r1
	mov	r4, #0
	movls	r4, #1
	b	.LBB2_34
.LBB2_24:                               @ %sw.bb21.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r4, r1
	mov	r4, #0
	movhi	r4, #1
	b	.LBB2_34
.LBB2_25:                               @ %sw.bb25.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r4, r1
	mov	r4, #0
	movlo	r4, #1
	b	.LBB2_34
.LBB2_26:                               @ %sw.bb29.i
                                        @   in Loop: Header=BB2_15 Depth=1
	add	r4, r1, r4
	b	.LBB2_34
.LBB2_27:                               @ %sw.bb31.i
                                        @   in Loop: Header=BB2_15 Depth=1
	sub	r4, r4, r1
	b	.LBB2_34
.LBB2_28:                               @ %sw.bb33.i
                                        @   in Loop: Header=BB2_15 Depth=1
	mul	r0, r1, r4
	str	r0, [r5]
	mov	r4, r0
	b	.LBB2_35
.LBB2_29:                               @ %sw.bb35.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r1, #0
	beq	.LBB2_36
	b	.LBB2_30
.LBB2_30:                               @ %if.then.i
                                        @   in Loop: Header=BB2_15 Depth=1
	mov	r0, r4
	bl	__umodsi3
	b	.LBB2_33
.LBB2_31:                               @ %sw.bb38.i
                                        @   in Loop: Header=BB2_15 Depth=1
	cmp	r1, #0
	beq	.LBB2_36
	b	.LBB2_32
.LBB2_32:                               @ %if.then40.i
                                        @   in Loop: Header=BB2_15 Depth=1
	mov	r0, r4
	bl	__aeabi_uidiv
	b	.LBB2_33
.LBB2_33:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB2_15 Depth=1
	mov	r4, r0
	b	.LBB2_34
.LBB2_34:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB2_15 Depth=1
	str	r4, [r5]
	b	.LBB2_35
.LBB2_35:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB2_15 Depth=1
	ldr	r11, [r6]
	ldrb	r2, [r10, r11]
	cmp	r2, r8
	bgt	.LBB2_15
	b	.LBB2_37
.LBB2_36:
	ldr	r7, .LCPI2_7
	b	.LBB2_37
.LCPI2_7:
	.long	.L.str
.LBB2_37:                               @ %return
	mov	r0, r7
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	evalbinop, .Ltmp2-evalbinop
	.cantunwind
	.fnend

	.align	2
	.type	evalprim,%function
evalprim:                               @ @evalprim
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB3_2
.LBB3_2:                                @ %entry
	ldr	r4, .LCPI3_0
	mov	r5, r0
	cmp	r2, #1
	blt	.LBB3_23
	b	.LBB3_3
.LCPI3_0:
	.long	.L.str
.LBB3_3:                                @ %while.cond.i.preheader
	sub	r2, r2, #1
	sub	r6, r1, #1
	b	.LBB3_4
.LBB3_4:                                @ %while.cond.i
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r6, #1]!
	sub	r1, r0, #9
	cmp	r0, #32
	beq	.LBB3_4
	b	.LBB3_5
.LBB3_5:                                @ %while.cond.i
                                        @   in Loop: Header=BB3_4 Depth=1
	cmp	r1, #5
	blo	.LBB3_4
	b	.LBB3_6
.LBB3_6:                                @ %skipspace.exit
	sub	r1, r0, #48
	cmp	r1, #9
	bhi	.LBB3_12
	b	.LBB3_7
.LBB3_7:                                @ %if.then3
	add	r1, sp, #4
	mov	r0, r6
	mov	r2, #10
	bl	strtoul
	b	.LBB3_8
.LBB3_8:                                @ %if.then3
	str	r0, [r5]
	cmn	r0, #1
	ldrne	r0, [sp, #4]
	cmpne	r0, r6
	beq	.LBB3_23
	b	.LBB3_9
.LBB3_9:                                @ %while.cond.i71.preheader
	sub	r4, r0, #1
	b	.LBB3_10
.LBB3_10:                               @ %while.cond.i71
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r4, #1]!
	sub	r0, r1, #9
	cmp	r1, #32
	beq	.LBB3_10
	b	.LBB3_11
.LBB3_11:                               @ %while.cond.i71
                                        @   in Loop: Header=BB3_10 Depth=1
	cmp	r0, #5
	blo	.LBB3_10
	b	.LBB3_23
.LBB3_12:                               @ %if.end13
	add	r1, r6, #1
	cmp	r0, #33
	beq	.LBB3_18
	b	.LBB3_13
.LBB3_13:                               @ %if.end13
	cmp	r0, #40
	bne	.LBB3_19
	b	.LBB3_14
.LBB3_14:                               @ %if.then24
	mov	r0, r5
	bl	evalexpr
	ldrb	r1, [r0]
	cmp	r1, #41
	bne	.LBB3_23
	b	.LBB3_15
.LBB3_15:
	mov	r4, r0
	b	.LBB3_16
.LBB3_16:                               @ %while.cond.i89
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r4, #1]!
	sub	r0, r1, #9
	cmp	r1, #32
	beq	.LBB3_16
	b	.LBB3_17
.LBB3_17:                               @ %while.cond.i89
                                        @   in Loop: Header=BB3_16 Depth=1
	cmp	r0, #5
	blo	.LBB3_16
	b	.LBB3_23
.LBB3_18:                               @ %if.then38
	mov	r0, r5
	bl	evalprim
	ldr	r1, [r5]
	mov	r2, #0
	cmp	r1, #0
	moveq	r2, #1
	str	r2, [r5]
	b	.LBB3_24
.LBB3_19:                               @ %if.end13
	cmp	r0, #110
	bne	.LBB3_23
	b	.LBB3_20
.LBB3_20:                               @ %if.then17
	ldr	r0, [r5, #4]
	str	r0, [r5]
	b	.LBB3_21
.LBB3_21:                               @ %while.cond.i80
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, r1
	add	r1, r6, #2
	ldrb	r2, [r4]
	mov	r6, r4
	sub	r0, r2, #9
	cmp	r2, #32
	beq	.LBB3_21
	b	.LBB3_22
.LBB3_22:                               @ %while.cond.i80
                                        @   in Loop: Header=BB3_21 Depth=1
	mov	r6, r4
	cmp	r0, #5
	blo	.LBB3_21
	b	.LBB3_23
.LBB3_23:                               @ %return
	mov	r0, r4
	b	.LBB3_24
.LBB3_24:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp3:
	.size	evalprim, .Ltmp3-evalprim
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	evalbinop.prec,%object  @ @evalbinop.prec
evalbinop.prec:
	.asciz	"\001\002\003\003\004\004\004\004\005\005\006\006\006"
	.size	evalbinop.prec, 14

	.type	parseop.opch,%object    @ @parseop.opch
	.section	.rodata,"a",%progbits
parseop.opch:
	.ascii	"|&=!><+-*%/"
	.size	parseop.opch, 11

	.type	parseop.opch2,%object   @ @parseop.opch2
parseop.opch2:
	.ascii	"|&===="
	.size	parseop.opch2, 6


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
