.section wcsftime_text
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
	.file	"src/time/wcsftime.bc"
	.globl	__wcsftime_l
	.align	2
	.type	__wcsftime_l,%function
.section bb0_0
__wcsftime_l:                           @ @__wcsftime_l
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
	.pad	#524
	sub	sp, sp, #524
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r9, r3
	mov	r7, r2
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB0_48
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.body.lr.ph
	mov	r5, r1
	mov	r8, #0
	rsb	r0, r5, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_7
.section bb0_5
.LBB0_5:                                @ %for.body
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r0, #0
	beq	.LBB0_49
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then2
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	r10, r7
	str	r0, [r1, r8, lsl #2]
	add	r8, r8, #1
	b	.LBB0_45
.section bb0_7
.LBB0_7:                                @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_23 Depth 2
                                        @     Child Loop BB0_41 Depth 2
	ldr	r0, [r7]
	cmp	r0, #37
	bne	.LBB0_5
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end4
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r11, [r7, #4]!
	add	r1, sp, #16
	mov	r2, #10
	cmp	r11, #43
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end4
                                        @   in Loop: Header=BB0_7 Depth=1
	addeq	r7, r7, #4
	mov	r0, r7
	bl	wcstoul
	ldr	r10, [sp, #16]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end4
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r4, #0
	ldr	r2, [r10]
	sub	r1, r2, #67
	cmp	r1, #22
	bhi	.LBB0_14
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end4
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r6, #25
	mov	r3, #1
	orr	r6, r6, #4194304
	tst	r6, r3, lsl r1
	beq	.LBB0_14
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then19
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r10, r7
	mov	r1, #0
	mov	r3, r0
	moveq	r1, #1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then19
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r0, #0
	movne	r3, #1
	orrs	r1, r3, r1
	mov	r1, #1
	moveq	r0, r1
	mov	r4, r0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end25
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r2, #69
	cmpne	r2, #79
	bne	.LBB0_16
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then31
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r2, [r10, #4]!
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end33
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r0, [sp, #560]
	add	r1, sp, #520
	mov	r3, r9
	str	r0, [sp]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end33
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r0, sp, #420
	bl	__strftime_fmt_1
	mov	r1, r0
	cmp	r1, #0
	beq	.LBB0_46
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end37
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r0, sp, #20
	mov	r2, #100
	bl	mbstowcs
	mov	r2, r0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end37
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, #0
	str	r2, [sp, #520]
	cmn	r2, #1
	beq	.LBB0_48
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end42
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r4, #0
	beq	.LBB0_29
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.cond46.preheader
                                        @   in Loop: Header=BB0_7 Depth=1
	mvn	r0, r2
	add	r3, r2, #1
	add	r1, sp, #20
	b	.LBB0_23
.section bb0_22
.LBB0_22:                               @ %for.inc
                                        @   in Loop: Header=BB0_23 Depth=2
	sub	r2, r3, #2
	add	r0, r0, #1
	sub	r3, r3, #1
	add	r1, r1, #4
	str	r2, [sp, #520]
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %for.cond46
                                        @   Parent Loop BB0_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r1]
	cmp	r2, #43
	cmpne	r2, #45
	beq	.LBB0_22
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %for.cond46
                                        @   in Loop: Header=BB0_23 Depth=2
	cmp	r2, #48
	bne	.LBB0_26
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %land.rhs
                                        @   in Loop: Header=BB0_23 Depth=2
	ldr	r2, [r1, #4]
	cmp	r2, #0
	bne	.LBB0_22
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.end
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r2, [r9, #20]
	sub	r6, r4, #1
	cmp	r11, #43
	bne	.LBB0_30
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.end
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r7, #932
	orr	r7, r7, #7168
	cmp	r2, r7
	blt	.LBB0_30
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.then63
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r2, [sp, #12]           @ 4-byte Reload
	mov	r7, #43
	b	.LBB0_32
.section bb0_29
.LBB0_29:                               @   in Loop: Header=BB0_7 Depth=1
	add	r1, sp, #20
	b	.LBB0_43
.section bb0_30
.LBB0_30:                               @ %if.else66
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r7, .LCPI0_0
	cmp	r2, r7
	bgt	.LBB0_33
	b	.LBB0_31
.LCPI0_0:
	.long	4294965395              @ 0xfffff893
.section bb0_31
.LBB0_31:                               @ %if.then70
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r2, [sp, #12]           @ 4-byte Reload
	mov	r7, #45
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %for.cond77.preheader
                                        @   in Loop: Header=BB0_7 Depth=1
	str	r7, [r2, r8, lsl #2]
	add	r8, r8, #1
	b	.LBB0_34
.section bb0_33
.LBB0_33:                               @   in Loop: Header=BB0_7 Depth=1
	mov	r6, r4
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %for.cond77.preheader
                                        @   in Loop: Header=BB0_7 Depth=1
	sub	r2, r3, #1
	cmp	r8, r5
	bhs	.LBB0_43
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %for.cond77.preheader
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r6, r2
	bls	.LBB0_43
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %for.body84.lr.ph
                                        @   in Loop: Header=BB0_7 Depth=1
	rsb	r4, r6, #0
	rsb	r3, r3, #0
	sub	r7, r8, r5
	cmp	r4, r3
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %for.body84.lr.ph
                                        @   in Loop: Header=BB0_7 Depth=1
	movhi	r3, r4
	add	r3, r6, r3
	mvn	r3, r3
	cmp	r7, r3
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %for.body84.lr.ph
                                        @   in Loop: Header=BB0_7 Depth=1
	movhi	r3, r7
	ldr	r7, [sp, #8]            @ 4-byte Reload
	cmp	r0, r4
	movhi	r4, r0
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %for.body84.lr.ph
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r0, r6, r4
	mov	r6, #48
	mvn	r0, r0
	add	r7, r7, r8
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %for.body84.lr.ph
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r7, r0
	movhi	r0, r7
	ldr	r7, [sp, #12]           @ 4-byte Reload
	rsb	r0, r0, #0
	add	r7, r7, r8, lsl #2
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %for.body84
                                        @   Parent Loop BB0_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r6, [r7], #4
	subs	r0, r0, #1
	bne	.LBB0_41
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %for.cond77.if.end90.loopexit_crit_edge
                                        @   in Loop: Header=BB0_7 Depth=1
	sub	r8, r8, r3
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.end90
                                        @   in Loop: Header=BB0_7 Depth=1
	sub	r0, r5, r8
	cmp	r2, r0
	strhs	r0, [sp, #520]
	movhs	r2, r0
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %if.end90
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	add	r0, r0, r8, lsl #2
	bl	wmemcpy
	ldr	r0, [sp, #520]
	add	r8, r0, r8
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %for.inc97
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r7, r10, #4
	cmp	r8, r5
	blo	.LBB0_7
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %for.end99
	mov	r0, #0
	cmp	r5, #0
	beq	.LBB0_48
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.then101
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r8, r5
	mov	r0, #0
	subeq	r8, r5, #1
	str	r0, [r1, r8, lsl #2]
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %cleanup
	add	sp, sp, #524
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_49
.LBB0_49:                               @ %if.then
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	r0, #0
	str	r0, [r1, r8, lsl #2]
	mov	r0, r8
	b	.LBB0_48
.Ltmp0:
	.size	__wcsftime_l, .Ltmp0-__wcsftime_l
	.cantunwind
	.fnend

	.globl	wcsftime
	.align	2
	.type	wcsftime,%function
.section bb1_0
wcsftime:                               @ @wcsftime
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	lr, .LCPI1_0
	mov	r12, r0
	ldr	r0, [lr, #44]
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_2
.LCPI1_0:
	.long	__libc
.section bb1_2
.LBB1_2:                                @ %cond.true
	@APP
	bl	__a_gettp
	mov	r4, r0
	@NO_APP
	ldr	r0, [r4, #-32]
	b	.LBB1_4
.section bb1_3
.LBB1_3:
	add	r0, lr, #52
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %cond.end
	str	r0, [sp]
	mov	r0, r12
	bl	__wcsftime_l
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp1:
	.size	wcsftime, .Ltmp1-wcsftime
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	wcsftime_l
wcsftime_l = __wcsftime_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
