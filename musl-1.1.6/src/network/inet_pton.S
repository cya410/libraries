.section inet_pton_text
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
	.file	"src/network/inet_pton.bc"
	.globl	inet_pton
	.align	2
	.type	inet_pton,%function
.section bb0_0
inet_pton:                              @ @inet_pton
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
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r8, r2
	mov	r4, r1
	cmp	r0, #10
	bne	.LBB0_25
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end47
	ldrb	r6, [r4]
	mvn	r2, #0
	mov	r1, #0
	cmp	r6, #58
	bne	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true51
	ldrb	r0, [r4, #1]!
	mov	r1, #0
	mov	r6, #58
	cmp	r0, #58
	mov	r0, #0
	bne	.LBB0_56
	b	.LBB0_7
.section bb0_6
.LBB0_6:                                @ %for.inc128
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r1, r1, #1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.cond57
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_13 Depth 2
	mov	r3, #1
	cmp	r2, #0
	bge	.LBB0_11
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.cond57
                                        @   in Loop: Header=BB0_7 Depth=1
	and	r0, r6, #255
	mov	r7, #0
	cmp	r0, #58
	bne	.LBB0_13
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then65
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, sp
	mov	r9, #0
	mov	r2, r1
	add	r0, r0, r1, lsl #1
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then65
                                        @   in Loop: Header=BB0_7 Depth=1
	strh	r9, [r0]
	ldrb	r6, [r4, #1]!
	cmp	r6, #0
	bne	.LBB0_6
	b	.LBB0_40
.section bb0_11
.LBB0_11:                               @   in Loop: Header=BB0_7 Depth=1
	mov	r7, #0
	b	.LBB0_13
.section bb0_12
.LBB0_12:                               @ %for.body81.land.rhs74_crit_edge
                                        @   in Loop: Header=BB0_13 Depth=2
	ldrb	r6, [r4, r3]
	add	r3, r3, #1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %land.rhs74
                                        @   Parent Loop BB0_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r6, r6, #255
	sub	r0, r6, #48
	cmp	r0, #10
	blo	.LBB0_16
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end.i
                                        @   in Loop: Header=BB0_13 Depth=2
	orr	r0, r6, #32
	sub	r6, r0, #97
	cmp	r6, #5
	bhi	.LBB0_17
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end.i
                                        @   in Loop: Header=BB0_13 Depth=2
	sub	r0, r0, #87
	cmp	r0, #0
	blt	.LBB0_17
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %for.body81
                                        @   in Loop: Header=BB0_13 Depth=2
	add	r7, r0, r7, lsl #4
	cmp	r3, #3
	ble	.LBB0_12
	b	.LBB0_19
.section bb0_17
.LBB0_17:                               @ %for.end86
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, #0
	cmp	r3, #1
	beq	.LBB0_56
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @   in Loop: Header=BB0_7 Depth=1
	sub	r3, r3, #1
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end90
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, sp
	add	r0, r0, r1, lsl #1
	strh	r7, [r0]
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LBB0_22
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %land.lhs.true95
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r9, #0
	cmp	r1, #7
	beq	.LBB0_41
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %land.lhs.true95
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r2, #0
	bge	.LBB0_41
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end102
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, #0
	cmp	r1, #7
	beq	.LBB0_56
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end106
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r7, #58
	bne	.LBB0_53
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end125
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r4, r3, r4
	ldrb	r6, [r4, #1]!
	b	.LBB0_6
.section bb0_25
.LBB0_25:                               @ %entry
	cmp	r0, #2
	bne	.LBB0_39
	b	.LBB0_26
.section bb0_26
.LBB0_26:
	mov	r1, #0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.cond2.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_28 Depth 2
	mov	r3, #0
	mov	r2, #0
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %land.rhs
                                        @   Parent Loop BB0_27 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r4, r2]
	sub	r7, r0, #48
	cmp	r7, #9
	bhi	.LBB0_30
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %for.body6
                                        @   in Loop: Header=BB0_28 Depth=2
	add	r3, r3, r3, lsl #2
	add	r2, r2, #1
	add	r0, r0, r3, lsl #1
	cmp	r2, #3
	sub	r3, r0, #48
	blt	.LBB0_28
	b	.LBB0_33
.section bb0_30
.LBB0_30:                               @ %for.end
                                        @   in Loop: Header=BB0_27 Depth=1
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB0_56
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_27 Depth=1
	cmp	r2, #2
	blt	.LBB0_35
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @   in Loop: Header=BB0_27 Depth=1
	mov	r2, #2
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_27 Depth=1
	mov	r0, #0
	cmp	r3, #255
	bgt	.LBB0_56
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_27 Depth=1
	ldrb	r7, [r4]
	cmp	r7, #48
	bne	.LBB0_36
	b	.LBB0_56
.section bb0_35
.LBB0_35:                               @ %lor.lhs.false18
                                        @   in Loop: Header=BB0_27 Depth=1
	cmp	r3, #255
	bgt	.LBB0_56
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end
                                        @   in Loop: Header=BB0_27 Depth=1
	strb	r3, [r8, r1]
	ldrb	r3, [r4, r2]
	cmp	r1, #3
	moveq	r0, #1
	cmpeq	r3, #0
	beq	.LBB0_56
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end32
                                        @   in Loop: Header=BB0_27 Depth=1
	mov	r0, #0
	cmp	r3, #46
	bne	.LBB0_56
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end38
                                        @   in Loop: Header=BB0_27 Depth=1
	add	r2, r2, r4
	add	r1, r1, #1
	add	r4, r2, #1
	cmp	r1, #4
	blt	.LBB0_27
	b	.LBB0_56
.section bb0_39
.LBB0_39:                               @ %if.then45
	bl	__errno_location
	mov	r1, #97
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_56
.section bb0_40
.LBB0_40:
	mov	r2, r1
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %for.end130
	mov	r5, #0
	cmp	r2, #0
	blt	.LBB0_47
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.then133
	rsb	r7, r1, #7
	add	r1, r1, #1
	mov	r0, sp
	add	r6, r0, r2, lsl #1
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.then133
	add	r3, r7, r2
	sub	r1, r1, r2
	lsl	r2, r1, #1
	add	r0, r0, r3, lsl #1
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.then133
	mov	r1, r6
	bl	memmove
	cmp	r7, #1
	blt	.LBB0_47
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %for.body147.lr.ph
	mov	r5, #0
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %for.body147
                                        @ =>This Inner Loop Header: Depth=1
	strh	r5, [r6], #2
	subs	r7, r7, #1
	bne	.LBB0_46
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %for.body157
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, sp
	mov	r2, r8
	add	r1, r0, r5
	ldrb	r1, [r1, #1]
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %for.body157
                                        @   in Loop: Header=BB0_47 Depth=1
	strb	r1, [r2, r5]!
	ldrb	r0, [r0, r5]
	add	r5, r5, #2
	cmp	r5, #16
	strb	r0, [r2, #1]
	bne	.LBB0_47
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %for.end167
	cmp	r9, #0
	beq	.LBB0_52
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %land.lhs.true169
	add	r2, r8, #12
	mov	r0, #2
	mov	r1, r4
	bl	inet_pton
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %land.lhs.true169
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #1
	movge	r0, #1
	b	.LBB0_56
.section bb0_52
.LBB0_52:                               @ %if.end175
	mov	r0, #1
	b	.LBB0_56
.section bb0_53
.LBB0_53:                               @ %if.end106
	cmp	r7, #46
	bne	.LBB0_56
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %lor.lhs.false116
	cmp	r1, #5
	cmple	r2, #0
	blt	.LBB0_56
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %if.end123
	add	r1, r1, #1
	mov	r9, #1
	b	.LBB0_41
.section bb0_56
.LBB0_56:                               @ %return
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	inet_pton, .Ltmp0-inet_pton
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
