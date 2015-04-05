.section dn_comp_text
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
	.file	"src/network/dn_comp.bc"
	.globl	__dn_comp
	.align	2
	.type	__dn_comp,%function
.section bb0_0
__dn_comp:                              @ @__dn_comp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#452
	sub	sp, sp, #452
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r0
	mov	r4, r1
	mov	r1, #255
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r3
	mov	r10, r2
                                        @ kill: R0<def> R7<kill>
	bl	strnlen
	mov	r5, #0
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true
	sub	r1, r0, #1
	ldrb	r2, [r7, r1]
	cmp	r2, #46
	moveq	r0, r1
	mov	r5, r0
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	mvn	r0, #0
	cmp	r10, #1
	blt	.LBB0_71
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	cmp	r5, #253
	bhi	.LBB0_71
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end7
	cmp	r5, #0
	beq	.LBB0_52
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end10
	add	r11, r7, r5
	mov	r9, #0
	add	r6, sp, #69
	mov	r3, #0
	mov	r12, r8
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.cond1.outer.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_11 Depth 2
	mov	r1, r3
	cmp	r3, r5
	bge	.LBB0_13
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %land.rhs.i
                                        @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r2, [r7, r1]
	cmp	r2, #46
	beq	.LBB0_13
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.inc.i
                                        @   in Loop: Header=BB0_11 Depth=2
	add	r1, r1, #1
	cmp	r1, r5
	blt	.LBB0_11
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.end.i
                                        @   in Loop: Header=BB0_10 Depth=1
	sub	r8, r1, r3
	sub	r2, r8, #1
	cmp	r2, #62
	bhi	.LBB0_71
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end.i
                                        @   in Loop: Header=BB0_10 Depth=1
	strb	r8, [r6, r9]
	add	r3, r1, #1
	add	r9, r9, #1
	cmp	r1, r5
	bne	.LBB0_10
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %getlens.exit
	cmp	r9, #0
	beq	.LBB0_71
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end14
	cmp	r12, #0
	beq	.LBB0_55
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %land.lhs.true16
	ldr	r1, [r12]
	str	r10, [sp, #32]          @ 4-byte Spill
	cmp	r1, #0
	beq	.LBB0_56
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.cond.preheader
	add	r0, sp, #69
	str	r11, [sp, #8]           @ 4-byte Spill
	str	r4, [sp, #12]           @ 4-byte Spill
	mov	r3, #0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.cond.preheader
	mov	r4, #16128
	mov	r11, r12
	add	r0, r0, r9
	sub	r0, r0, #2
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.cond.preheader
	str	r0, [sp, #24]           @ 4-byte Spill
	add	r0, sp, #196
	sub	r0, r0, #4
	str	r0, [sp, #60]           @ 4-byte Spill
                                        @ implicit-def: R0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.cond.outer
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_25 Depth 2
                                        @       Child Loop BB0_28 Depth 3
                                        @       Child Loop BB0_39 Depth 3
	str	r3, [sp, #48]           @ 4-byte Spill
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r0, [sp, #56]           @ 4-byte Spill
	b	.LBB0_25
.section bb0_22
.LBB0_22:                               @   in Loop: Header=BB0_25 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r12, [sp, #44]          @ 4-byte Reload
	ldr	r3, [sp, #48]           @ 4-byte Reload
	str	r0, [sp, #56]           @ 4-byte Spill
	b	.LBB0_49
.section bb0_23
.LBB0_23:                               @   in Loop: Header=BB0_25 Depth=2
	ldr	r12, [sp, #44]          @ 4-byte Reload
	b	.LBB0_49
.section bb0_24
.LBB0_24:                               @   in Loop: Header=BB0_25 Depth=2
	ldr	r3, [sp, #48]           @ 4-byte Reload
	mov	r12, lr
	b	.LBB0_49
.section bb0_25
.LBB0_25:                               @ %for.cond
                                        @   Parent Loop BB0_21 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_28 Depth 3
                                        @       Child Loop BB0_39 Depth 3
	ldr	r0, [r11, #4]!
	cmp	r0, #0
	beq	.LBB0_53
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.body
                                        @   in Loop: Header=BB0_25 Depth=2
	ldr	r1, [sp, #60]           @ 4-byte Reload
	ldr	r6, [r12]
	mov	lr, r3
	mov	r3, #0
	str	r1, [sp, #64]           @ 4-byte Spill
	b	.LBB0_28
.section bb0_27
.LBB0_27:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_28 Depth=3
	ldrb	r0, [r0, #1]
	and	r1, r4, r1, lsl #8
	orr	r0, r0, r1
	add	r0, r6, r0
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %while.cond.i.i
                                        @   Parent Loop BB0_21 Depth=1
                                        @     Parent Loop BB0_25 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r1, [r0]
	mov	r10, #0
	ands	r2, r1, #192
	beq	.LBB0_30
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %while.cond.i.i
                                        @   in Loop: Header=BB0_28 Depth=3
	cmp	r2, #192
	beq	.LBB0_27
	b	.LBB0_48
.section bb0_30
.LBB0_30:                               @ %while.end.i.i
                                        @   in Loop: Header=BB0_28 Depth=3
	cmp	r1, #0
	beq	.LBB0_34
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end10.i.i
                                        @   in Loop: Header=BB0_28 Depth=3
	sub	r1, r0, r6
	cmp	r1, #16384
	bge	.LBB0_48
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end14.i.i
                                        @   in Loop: Header=BB0_28 Depth=3
	add	r2, sp, #196
	add	r2, r2, r3, lsl #1
	add	r3, r3, #1
	strh	r1, [r2]
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end14.i.i
                                        @   in Loop: Header=BB0_28 Depth=3
	ldrb	r1, [r0]
	add	r0, r1, r0
	ldr	r1, [sp, #64]           @ 4-byte Reload
	add	r0, r0, #1
	add	r1, r1, #2
	str	r1, [sp, #64]           @ 4-byte Spill
	b	.LBB0_28
.section bb0_34
.LBB0_34:                               @ %getoffs.exit.i
                                        @   in Loop: Header=BB0_25 Depth=2
	cmp	r3, #0
	beq	.LBB0_48
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %for.cond.preheader.i
                                        @   in Loop: Header=BB0_25 Depth=2
	mov	r2, r3
	add	r0, sp, #196
	and	r3, r8, #255
	add	r0, r0, r2, lsl #1
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %for.cond.preheader.i
                                        @   in Loop: Header=BB0_25 Depth=2
	ldrsh	r0, [r0, #-2]
	ldrb	r1, [r6, r0]
	cmp	r3, r1
	bne	.LBB0_48
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %lor.lhs.false.lr.ph.i
                                        @   in Loop: Header=BB0_25 Depth=2
	mov	r1, #0
	str	r2, [sp, #16]           @ 4-byte Spill
	mov	r10, #0
	mov	r2, r3
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %lor.lhs.false.lr.ph.i
                                        @   in Loop: Header=BB0_25 Depth=2
	str	r1, [sp, #52]           @ 4-byte Spill
	ldr	r1, [sp, #56]           @ 4-byte Reload
	str	r1, [sp, #20]           @ 4-byte Spill
	ldr	r1, [sp, #8]            @ 4-byte Reload
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %lor.lhs.false.i
                                        @   Parent Loop BB0_21 Depth=1
                                        @     Parent Loop BB0_25 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	add	r3, sp, #36
	stm	r3, {r1, r2, r12}
	str	r0, [sp, #56]           @ 4-byte Spill
	add	r0, r0, r6
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %lor.lhs.false.i
                                        @   in Loop: Header=BB0_39 Depth=3
	sub	r1, r1, r2
	add	r0, r0, #1
	bl	memcmp
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end12.i
                                        @   in Loop: Header=BB0_39 Depth=3
	ldr	r0, [sp, #52]           @ 4-byte Reload
	ldr	r2, [sp, #40]           @ 4-byte Reload
	ldr	r3, [sp, #48]           @ 4-byte Reload
	add	r1, r0, #1
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end12.i
                                        @   in Loop: Header=BB0_39 Depth=3
	ldr	r0, [sp, #16]           @ 4-byte Reload
	add	r10, r10, r2
	cmp	r1, r9
	addne	r10, r10, #1
	cmp	r1, r0
	beq	.LBB0_23
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.end12.i
                                        @   in Loop: Header=BB0_39 Depth=3
	ldr	lr, [sp, #44]           @ 4-byte Reload
	cmp	r1, r9
	beq	.LBB0_24
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end20.i
                                        @   in Loop: Header=BB0_39 Depth=3
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r3, [sp, #52]           @ 4-byte Reload
	ldrb	r12, [r0, -r3]
	mvn	r0, r2
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.end20.i
                                        @   in Loop: Header=BB0_39 Depth=3
	ldr	r2, [sp, #36]           @ 4-byte Reload
	ldr	r3, [sp, #64]           @ 4-byte Reload
	add	r2, r2, r0
	ldrsh	r0, [r3], #-2
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end20.i
                                        @   in Loop: Header=BB0_39 Depth=3
	str	r1, [sp, #52]           @ 4-byte Spill
	mov	r1, r2
	ldr	r2, [sp, #56]           @ 4-byte Reload
	str	r3, [sp, #64]           @ 4-byte Spill
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.end20.i
                                        @   in Loop: Header=BB0_39 Depth=3
	ldrb	r3, [r6, r0]
	str	r2, [sp, #20]           @ 4-byte Spill
	mov	r2, r12
	cmp	r12, r3
	ldr	r3, [sp, #48]           @ 4-byte Reload
	mov	r12, lr
	beq	.LBB0_39
	b	.LBB0_49
.section bb0_48
.LBB0_48:                               @   in Loop: Header=BB0_25 Depth=2
	mov	r3, lr
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %match.exit
                                        @   in Loop: Header=BB0_25 Depth=2
	cmp	r10, r3
	ble	.LBB0_25
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.then24
                                        @   in Loop: Header=BB0_21 Depth=1
	ldr	r1, [sp, #56]           @ 4-byte Reload
	cmp	r10, r5
	mov	r3, r10
	ldr	r10, [sp, #488]
	mov	r0, r1
	bne	.LBB0_21
	b	.LBB0_51
.section bb0_51
.LBB0_51:
	ldr	r9, [sp, #12]           @ 4-byte Reload
	mov	r3, r5
	mvn	r0, #0
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB0_54
.section bb0_52
.LBB0_52:                               @ %if.then9
	mov	r0, #0
	strb	r0, [r4]
	mov	r0, #1
	b	.LBB0_71
.section bb0_53
.LBB0_53:
	ldr	r9, [sp, #12]           @ 4-byte Reload
	ldr	r10, [sp, #488]
	mvn	r0, #0
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.end31
	add	r6, sp, #69
	b	.LBB0_58
.section bb0_55
.LBB0_55:
                                        @ implicit-def: R1
	str	r10, [sp, #32]          @ 4-byte Spill
	mov	r3, #0
	str	r1, [sp, #28]           @ 4-byte Spill
	mov	r11, #0
	b	.LBB0_57
.section bb0_56
.LBB0_56:
	mov	r3, #0
	mov	r11, r12
                                        @ implicit-def: R1
	str	r1, [sp, #28]           @ 4-byte Spill
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %if.end31
	ldr	r10, [sp, #488]
	mov	r9, r4
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %if.end31
	sub	r2, r5, #1
	sub	r1, r3, #1
	mov	r4, r6
	sub	r6, r5, r3
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %if.end31
	cmp	r1, r2
	ldr	r2, [sp, #32]           @ 4-byte Reload
	mov	r1, r6
	addlo	r1, r1, #1
	add	r1, r1, #2
	cmp	r1, r2
	bhi	.LBB0_71
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.end41
	mov	r1, r7
	add	r0, r9, #1
	mov	r2, r6
	mov	r8, r12
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.end41
	mov	r7, r3
	bl	memcpy
	mov	r3, r7
	mov	r0, #0
	mov	r1, #0
	cmp	r5, r3
	beq	.LBB0_64
	b	.LBB0_62
.section bb0_62
.LBB0_62:
	mov	r1, #0
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %for.body49
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r4], #1
	strb	r2, [r9, r1]
	add	r1, r1, r2
	add	r1, r1, #1
	cmp	r1, r6
	blo	.LBB0_63
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %for.end57
	cmp	r3, #0
	mov	r2, r1
	ldrne	r3, [sp, #28]           @ 4-byte Reload
	movne	r0, #192
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %for.end57
	addne	r2, r1, #1
	orrne	r0, r0, r3, lsr #8
	strbne	r3, [r9, r2]
	cmp	r8, #0
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %for.end57
	strb	r0, [r9, r1]
	add	r0, r2, #1
	cmpne	r10, #0
	beq	.LBB0_71
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %if.end68
	cmp	r2, #2
	blt	.LBB0_71
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %land.lhs.true75
	ldr	r1, [r8]
	cmp	r1, #0
	beq	.LBB0_71
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11], #4
	cmp	r1, #0
	bne	.LBB0_69
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %while.end
	cmp	r11, r10
	movlo	r1, #0
	strlo	r9, [r11, #-4]
	strlo	r1, [r11]
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @ %cleanup
	add	sp, sp, #452
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__dn_comp, .Ltmp0-__dn_comp
	.cantunwind
	.fnend


	.weak	dn_comp
dn_comp = __dn_comp
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
