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
	.file	"src/string/wcsstr.bc"
	.globl	wcsstr
	.align	2
	.type	wcsstr,%function
wcsstr:                                 @ @wcsstr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.LBB0_23
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	ldr	r2, [r0]
	mov	r7, #0
	cmp	r2, #0
	beq	.LBB0_65
	b	.LBB0_5
.LBB0_5:                                @ %if.end4
	bl	wcschr
	mov	r10, r0
	cmp	r10, #0
	beq	.LBB0_65
	b	.LBB0_6
.LBB0_6:                                @ %lor.lhs.false
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.LBB0_24
	b	.LBB0_7
.LBB0_7:                                @ %if.end9
	ldr	r0, [r10, #4]
	mov	r7, #0
	cmp	r0, #0
	beq	.LBB0_65
	b	.LBB0_8
.LBB0_8:
	mov	r6, #0
	mov	r7, #0
	b	.LBB0_9
.LBB0_9:                                @ %land.rhs.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r10, r6, lsl #2]
	cmp	r0, #0
	beq	.LBB0_65
	b	.LBB0_10
.LBB0_10:                               @ %for.inc.i
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r0, r4, r6, lsl #2
	add	r6, r6, #1
	ldr	r0, [r0, #4]
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_11
.LBB0_11:                               @ %while.cond.preheader.i
	mvn	lr, #0
	mov	r11, #1
	cmp	r6, #2
	blo	.LBB0_25
	b	.LBB0_12
.LBB0_12:
	mov	r2, #0
	b	.LBB0_13
.LBB0_13:                               @ %while.body.lr.ph.lr.ph.lr.ph.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_14 Depth 2
                                        @       Child Loop BB0_15 Depth 3
                                        @         Child Loop BB0_16 Depth 4
	add	r3, r4, lr, lsl #2
	mov	r8, #1
	b	.LBB0_14
.LBB0_14:                               @ %while.body.lr.ph.lr.ph.i
                                        @   Parent Loop BB0_13 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_15 Depth 3
                                        @         Child Loop BB0_16 Depth 4
	mov	r9, r2
	mov	r2, r11
	b	.LBB0_15
.LBB0_15:                               @ %while.body.lr.ph.i
                                        @   Parent Loop BB0_13 Depth=1
                                        @     Parent Loop BB0_14 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_16 Depth 4
	mov	r7, #1
	b	.LBB0_16
.LBB0_16:                               @ %while.body.i
                                        @   Parent Loop BB0_13 Depth=1
                                        @     Parent Loop BB0_14 Depth=2
                                        @       Parent Loop BB0_15 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r0, [r4, r2, lsl #2]
	ldr	r5, [r3, r7, lsl #2]
	cmp	r5, r0
	bne	.LBB0_20
	b	.LBB0_17
.LBB0_17:                               @ %if.then10.i
                                        @   in Loop: Header=BB0_16 Depth=4
	cmp	r8, r7
	beq	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               @ %while.cond.i
                                        @   in Loop: Header=BB0_16 Depth=4
	add	r7, r7, #1
	add	r2, r7, r9
	cmp	r2, r6
	blo	.LBB0_16
	b	.LBB0_26
.LBB0_19:                               @ %if.then12.i
                                        @   in Loop: Header=BB0_15 Depth=3
	add	r9, r9, r8
	add	r2, r9, #1
	cmp	r2, r6
	blo	.LBB0_15
	b	.LBB0_26
.LBB0_20:                               @ %if.else16.i
                                        @   in Loop: Header=BB0_14 Depth=2
	bls	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               @ %while.cond.outer245.outer.i
                                        @   in Loop: Header=BB0_14 Depth=2
	add	r11, r2, #1
	sub	r8, r2, lr
	cmp	r11, r6
	blo	.LBB0_14
	b	.LBB0_26
.LBB0_22:                               @ %if.else24.i
                                        @   in Loop: Header=BB0_13 Depth=1
	add	r11, r9, #2
	add	r2, r9, #1
	mov	r8, #1
	mov	lr, r9
	cmp	r11, r6
	blo	.LBB0_13
	b	.LBB0_27
.LBB0_23:
	mov	r7, r0
	b	.LBB0_65
.LBB0_24:
	mov	r7, r10
	b	.LBB0_65
.LBB0_25:
	mvn	r3, #0
	mov	r12, #1
	b	.LBB0_40
.LBB0_26:
	mov	r9, lr
	b	.LBB0_27
.LBB0_27:                               @ %while.body31.lr.ph.lr.ph.lr.ph.i.preheader
	mvn	r3, #0
	mov	r5, #0
	mov	lr, #1
	b	.LBB0_28
.LBB0_28:                               @ %while.body31.lr.ph.lr.ph.lr.ph.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_29 Depth 2
                                        @       Child Loop BB0_32 Depth 3
	add	r7, r4, r3, lsl #2
	mov	r12, #1
	str	r3, [sp, #8]            @ 4-byte Spill
	b	.LBB0_29
.LBB0_29:                               @ %while.body31.lr.ph.lr.ph.i
                                        @   Parent Loop BB0_28 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_32 Depth 3
	mov	r3, r5
	mov	r5, lr
	mov	r0, #1
	b	.LBB0_32
.LBB0_30:                               @ %while.body31.lr.ph.i
                                        @   in Loop: Header=BB0_32 Depth=3
	mov	r0, #1
	b	.LBB0_32
.LBB0_31:                               @ %while.cond28.i
                                        @   in Loop: Header=BB0_32 Depth=3
	add	r0, r0, #1
	add	r5, r0, r3
	cmp	r5, r6
	bhs	.LBB0_39
	b	.LBB0_32
.LBB0_32:                               @ %while.body31.i
                                        @   Parent Loop BB0_28 Depth=1
                                        @     Parent Loop BB0_29 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r1, [r4, r5, lsl #2]
	ldr	r2, [r7, r0, lsl #2]
	cmp	r2, r1
	bne	.LBB0_35
	b	.LBB0_33
.LBB0_33:                               @ %if.then37.i
                                        @   in Loop: Header=BB0_32 Depth=3
	cmp	r12, r0
	bne	.LBB0_31
	b	.LBB0_34
.LBB0_34:                               @ %if.then39.i
                                        @   in Loop: Header=BB0_32 Depth=3
	add	r3, r3, r12
	add	r5, r3, #1
	cmp	r5, r6
	blo	.LBB0_30
	b	.LBB0_39
.LBB0_35:                               @ %if.else44.i
                                        @   in Loop: Header=BB0_29 Depth=2
	bhs	.LBB0_37
	b	.LBB0_36
.LBB0_36:                               @ %while.cond28.outer243.outer.i
                                        @   in Loop: Header=BB0_29 Depth=2
	ldr	r0, [sp, #8]            @ 4-byte Reload
	add	lr, r5, #1
	cmp	lr, r6
	sub	r12, r5, r0
	blo	.LBB0_29
	b	.LBB0_39
.LBB0_37:                               @ %if.else53.i
                                        @   in Loop: Header=BB0_28 Depth=1
	add	lr, r3, #2
	add	r5, r3, #1
	mov	r12, #1
	cmp	lr, r6
	blo	.LBB0_28
	b	.LBB0_38
.LBB0_38:
	mov	r11, r8
	mov	lr, r9
	b	.LBB0_40
.LBB0_39:
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r11, r8
	mov	lr, r9
	b	.LBB0_40
.LBB0_40:                               @ %while.end57.i
	add	r8, lr, #1
	add	r7, r3, #1
	mov	r0, r4
	cmp	r7, r8
	b	.LBB0_41
.LBB0_41:                               @ %while.end57.i
	movhi	lr, r3
	movhi	r11, r12
	add	r9, lr, #1
	add	r1, r4, r11, lsl #2
	b	.LBB0_42
.LBB0_42:                               @ %while.end57.i
	mov	r5, lr
	mov	r2, r9
	str	r9, [sp, #8]            @ 4-byte Spill
	bl	wmemcmp
	cmp	r0, #0
	beq	.LBB0_44
	b	.LBB0_43
.LBB0_43:                               @ %if.then66.i
	sub	r0, r6, r5
	sub	r0, r0, #1
	cmp	r5, r0
	movhi	r0, r5
	add	r11, r0, #1
	mov	r0, #0
	b	.LBB0_45
.LBB0_44:                               @ %if.else73.i
	sub	r0, r6, r11
	b	.LBB0_45
.LBB0_45:                               @ %if.end75.i
	cmp	r8, r7
	mov	r2, r5
	mov	r5, r10
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB0_46
.LBB0_46:                               @ %if.end75.i
	movhi	r7, r8
	mov	r8, #0
	sub	lr, r7, #1
	orr	r7, r6, #63
	str	lr, [sp, #4]            @ 4-byte Spill
	b	.LBB0_48
.LBB0_47:                               @ %for.cond76.backedge.i
                                        @   in Loop: Header=BB0_48 Depth=1
	add	r5, r5, r1, lsl #2
	mov	r10, r0
	mov	r7, r12
	b	.LBB0_48
.LBB0_48:                               @ %for.cond76.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_57 Depth 2
                                        @     Child Loop BB0_60 Depth 2
	sub	r0, r10, r5
	asr	r0, r0, #2
	cmp	r0, r6
	bhs	.LBB0_53
	b	.LBB0_49
.LBB0_49:                               @ %if.then78.i
                                        @   in Loop: Header=BB0_48 Depth=1
	mov	r9, r11
	mov	r11, r2
	mov	r0, r10
	mov	r1, #0
	b	.LBB0_50
.LBB0_50:                               @ %if.then78.i
                                        @   in Loop: Header=BB0_48 Depth=1
	mov	r2, r7
	bl	wmemchr
	cmp	r0, #0
	beq	.LBB0_54
	b	.LBB0_51
.LBB0_51:                               @ %if.then81.i
                                        @   in Loop: Header=BB0_48 Depth=1
	mov	r2, r11
	mov	r11, r9
	ldr	r9, [sp, #8]            @ 4-byte Reload
	ldr	lr, [sp, #4]            @ 4-byte Reload
	b	.LBB0_52
.LBB0_52:                               @ %if.then81.i
                                        @   in Loop: Header=BB0_48 Depth=1
	sub	r1, r0, r5
	mov	r12, r7
	mov	r7, #0
	asr	r1, r1, #2
	cmp	r1, r6
	bhs	.LBB0_55
	b	.LBB0_65
.LBB0_53:                               @   in Loop: Header=BB0_48 Depth=1
	mov	r12, r7
	mov	r0, r10
	b	.LBB0_55
.LBB0_54:                               @ %if.else89.i
                                        @   in Loop: Header=BB0_48 Depth=1
	mov	r2, r11
	mov	r11, r9
	ldr	r9, [sp, #8]            @ 4-byte Reload
	ldr	lr, [sp, #4]            @ 4-byte Reload
	add	r0, r10, r7, lsl #2
	mov	r12, r7
	b	.LBB0_55
.LBB0_55:                               @ %if.end92.i
                                        @   in Loop: Header=BB0_48 Depth=1
	cmp	r9, r8
	mov	r1, r8
	mov	r7, r2
	mov	r3, lr
	b	.LBB0_56
.LBB0_56:                               @ %if.end92.i
                                        @   in Loop: Header=BB0_48 Depth=1
	movhi	r1, r9
	ldr	r2, [r4, r1, lsl #2]
	cmp	r2, #0
	beq	.LBB0_60
	b	.LBB0_57
.LBB0_57:                               @ %land.rhs103.i
                                        @   Parent Loop BB0_48 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r5, r1, lsl #2]
	cmp	r2, r3
	bne	.LBB0_63
	b	.LBB0_58
.LBB0_58:                               @ %for.inc109.i
                                        @   in Loop: Header=BB0_57 Depth=2
	add	r2, r4, r1, lsl #2
	add	r1, r1, #1
	ldr	r2, [r2, #4]
	cmp	r2, #0
	bne	.LBB0_57
	b	.LBB0_59
.LBB0_59:                               @   in Loop: Header=BB0_48 Depth=1
	mov	r3, lr
	b	.LBB0_60
.LBB0_60:                               @ %for.cond119.i
                                        @   Parent Loop BB0_48 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r1, r3, #1
	cmp	r1, r8
	bls	.LBB0_64
	b	.LBB0_61
.LBB0_61:                               @ %land.rhs121.i
                                        @   in Loop: Header=BB0_60 Depth=2
	ldr	r1, [r5, r3, lsl #2]
	ldr	r2, [r4, r3, lsl #2]
	sub	r3, r3, #1
	cmp	r2, r1
	beq	.LBB0_60
	b	.LBB0_62
.LBB0_62:                               @   in Loop: Header=BB0_48 Depth=1
	ldr	r8, [sp]                @ 4-byte Reload
	mov	r1, r11
	mov	r2, r7
	b	.LBB0_47
.LBB0_63:                               @ %if.then114.i
                                        @   in Loop: Header=BB0_48 Depth=1
	mov	r2, r7
	mov	r8, #0
	sub	r1, r1, r2
	b	.LBB0_47
.LBB0_64:
	mov	r7, r5
	b	.LBB0_65
.LBB0_65:                               @ %return
	mov	r0, r7
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcsstr, .Ltmp0-wcsstr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
