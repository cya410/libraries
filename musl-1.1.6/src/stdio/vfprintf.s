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
	.file	"src/stdio/vfprintf.bc"
	.globl	vfprintf
	.align	2
	.type	vfprintf,%function
vfprintf:                               @ @vfprintf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#216
	sub	sp, sp, #216
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r7, sp, #168
	mov	r6, r1
	mov	r4, r0
	str	r2, [sp, #212]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r1, #40
	mov	r2, #0
	mov	r5, #0
	mov	r0, r7
	b	.LBB0_5
.LBB0_5:                                @ %entry
	bl	__aeabi_memset
	ldr	r0, [sp, #212]
	add	r2, sp, #208
	add	r3, sp, #88
	b	.LBB0_6
.LBB0_6:                                @ %entry
	mov	r1, r6
	str	r7, [sp]
	str	r0, [sp, #208]
	mov	r0, #0
	bl	printf_core
	cmp	r0, #0
	blt	.LBB0_12
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	mov	r5, r0
	b	.LBB0_9
.LBB0_9:                                @ %cond.end
	ldrsb	r1, [r4, #74]
	ldr	r0, [r4]
	cmp	r1, #0
	and	r8, r0, #32
	b	.LBB0_10
.LBB0_10:                               @ %cond.end
	bicle	r1, r0, #32
	strle	r1, [r4]
	ldr	r0, [r4, #48]
	cmp	r0, #0
	beq	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               @ %if.end16.thread
	add	r2, sp, #208
	add	r3, sp, #88
	mov	r0, r4
	mov	r1, r6
	str	r7, [sp]
	bl	printf_core
	mov	r6, r0
	b	.LBB0_20
.LBB0_12:                               @ %if.then
	mvn	r6, #0
	b	.LBB0_22
.LBB0_13:                               @ %if.end16
	ldr	r9, [r4, #44]
	add	r0, sp, #8
	mov	r1, #80
	add	r2, sp, #208
	b	.LBB0_14
.LBB0_14:                               @ %if.end16
	add	r3, sp, #88
	str	r7, [sp]
	str	r0, [r4, #44]
	str	r0, [r4, #28]
	b	.LBB0_15
.LBB0_15:                               @ %if.end16
	str	r0, [r4, #20]
	add	r0, r0, #80
	str	r1, [r4, #48]
	mov	r1, r6
	b	.LBB0_16
.LBB0_16:                               @ %if.end16
	str	r0, [r4, #16]
	mov	r0, r4
	bl	printf_core
	mov	r6, r0
	cmp	r9, #0
	beq	.LBB0_20
	b	.LBB0_17
.LBB0_17:                               @ %if.then21
	ldr	r3, [r4, #36]
	mov	r0, r4
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_18
.LBB0_18:                               @ %if.then21
	mov	r7, #0
	mov	lr, pc
	mov	pc, r3
	ldr	r0, [r4, #20]
	str	r9, [r4, #44]
	b	.LBB0_19
.LBB0_19:                               @ %if.then21
	str	r7, [r4, #48]
	str	r7, [r4, #16]
	str	r7, [r4, #28]
	str	r7, [r4, #20]
	cmp	r0, #0
	mvneq	r6, #0
	b	.LBB0_20
.LBB0_20:                               @ %if.end32
	ldr	r0, [r4]
	tst	r0, #32
	orr	r1, r0, r8
	mvnne	r6, #0
	str	r1, [r4]
	cmp	r5, #0
	beq	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               @ %if.then40
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_22
.LBB0_22:                               @ %cleanup
	mov	r0, r6
	add	sp, sp, #216
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	vfprintf, .Ltmp0-vfprintf
	.cantunwind
	.fnend

	.align	2
	.type	printf_core,%function
printf_core:                            @ @printf_core
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#748
	sub	sp, sp, #748
	b	.LBB1_3
.LBB1_3:                                @ %entry
	str	r2, [sp, #116]          @ 4-byte Spill
	mov	r11, r0
	add	r2, sp, #218
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mvn	r0, #1
	mov	r10, r1
	str	r3, [sp, #108]          @ 4-byte Spill
	ldr	r7, .LCPI1_17
	b	.LBB1_5
.LCPI1_17:
	.long	states
.LBB1_5:                                @ %entry
	mov	r12, #3145728
	mov	r8, #58
	mov	r9, #0
	sub	r0, r0, r2
	b	.LBB1_6
.LBB1_6:                                @ %entry
	orr	r12, r12, #1073741824
	str	r0, [sp, #88]           @ 4-byte Spill
	add	r0, sp, #206
	add	r1, r0, #12
	b	.LBB1_7
.LBB1_7:                                @ %entry
	str	r1, [sp, #96]           @ 4-byte Spill
	sub	r1, r1, r2
	str	r1, [sp, #84]           @ 4-byte Spill
	add	r1, sp, #152
	b	.LBB1_8
.LBB1_8:                                @ %entry
	add	r3, r1, #39
	str	r3, [sp, #76]           @ 4-byte Spill
	add	r3, r2, #8
	add	r2, r2, #9
	b	.LBB1_9
.LBB1_9:                                @ %entry
	str	r2, [sp, #92]           @ 4-byte Spill
	add	r2, r0, #14
	add	r0, r0, #11
	str	r3, [sp, #100]          @ 4-byte Spill
	b	.LBB1_10
.LBB1_10:                               @ %entry
	str	r0, [sp, #72]           @ 4-byte Spill
	add	r0, r1, #40
	mov	r1, #0
	str	r2, [sp, #80]           @ 4-byte Spill
	str	r0, [sp, #104]          @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #132]          @ 4-byte Spill
	b	.LBB1_12
.LBB1_11:                               @ %fmt_fp.exit
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r9, [sp, #68]           @ 4-byte Reload
	mov	r12, #3145728
	orr	r12, r12, #1073741824
	b	.LBB1_12
.LBB1_12:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_18 Depth 2
                                        @     Child Loop BB1_21 Depth 2
                                        @     Child Loop BB1_35 Depth 2
                                        @     Child Loop BB1_43 Depth 2
                                        @     Child Loop BB1_61 Depth 2
                                        @     Child Loop BB1_67 Depth 2
                                        @     Child Loop BB1_240 Depth 2
                                        @     Child Loop BB1_249 Depth 2
                                        @     Child Loop BB1_87 Depth 2
                                        @     Child Loop BB1_266 Depth 2
                                        @     Child Loop BB1_136 Depth 2
                                        @     Child Loop BB1_142 Depth 2
                                        @       Child Loop BB1_144 Depth 3
                                        @       Child Loop BB1_151 Depth 3
                                        @     Child Loop BB1_157 Depth 2
                                        @       Child Loop BB1_159 Depth 3
                                        @     Child Loop BB1_168 Depth 2
                                        @     Child Loop BB1_178 Depth 2
                                        @     Child Loop BB1_303 Depth 2
                                        @     Child Loop BB1_310 Depth 2
                                        @     Child Loop BB1_312 Depth 2
                                        @     Child Loop BB1_327 Depth 2
                                        @     Child Loop BB1_338 Depth 2
                                        @     Child Loop BB1_377 Depth 2
                                        @       Child Loop BB1_382 Depth 3
                                        @     Child Loop BB1_354 Depth 2
                                        @       Child Loop BB1_357 Depth 3
                                        @     Child Loop BB1_368 Depth 2
                                        @       Child Loop BB1_370 Depth 3
                                        @     Child Loop BB1_109 Depth 2
                                        @     Child Loop BB1_198 Depth 2
	mov	r5, r10
	cmp	r9, #0
	blt	.LBB1_16
	b	.LBB1_13
.LBB1_13:                               @ %if.then
                                        @   in Loop: Header=BB1_12 Depth=1
	mvn	r0, #-2147483648
	sub	r0, r0, r9
	cmp	r1, r0
	ble	.LBB1_15
	b	.LBB1_14
.LBB1_14:                               @ %if.then2
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r4, r12
	bl	__errno_location
	mov	r1, #75
	mov	r12, r4
	mvn	r9, #0
	str	r1, [r0]
	b	.LBB1_16
.LBB1_15:                               @ %if.else
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r9, r1, r9
	b	.LBB1_16
.LBB1_16:                               @ %if.end3
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r0, [r5]
	mov	r4, r5
	cmp	r0, #0
	bne	.LBB1_18
	b	.LBB1_413
.LBB1_17:                               @ %for.inc
                                        @   in Loop: Header=BB1_18 Depth=2
	ldrb	r0, [r4, #1]!
	b	.LBB1_18
.LBB1_18:                               @ %for.cond6
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	tst	r0, #255
	beq	.LBB1_22
	b	.LBB1_19
.LBB1_19:                               @ %for.cond6
                                        @   in Loop: Header=BB1_18 Depth=2
	and	r0, r0, #255
	cmp	r0, #37
	bne	.LBB1_17
	b	.LBB1_20
.LBB1_20:                               @   in Loop: Header=BB1_12 Depth=1
	mov	r10, r4
	b	.LBB1_21
.LBB1_21:                               @ %land.rhs15
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r10, #1]
	cmp	r0, #37
	ldrbeq	r0, [r10, #2]!
	addeq	r4, r4, #1
	cmpeq	r0, #37
	beq	.LBB1_21
	b	.LBB1_23
.LBB1_22:                               @   in Loop: Header=BB1_12 Depth=1
	mov	r10, r4
	b	.LBB1_23
.LBB1_23:                               @ %for.end24
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r1, r4, r5
	cmp	r11, #0
	beq	.LBB1_28
	b	.LBB1_24
.LBB1_24:                               @ %if.then26
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r0, [r11]
	tst	r0, #32
	bne	.LBB1_28
	b	.LBB1_25
.LBB1_25:                               @ %if.then.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r5
	mov	r7, r5
	mov	r5, r8
	mov	r8, r11
	b	.LBB1_26
.LBB1_26:                               @ %if.then.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r11, r1
	mov	r6, r12
	mov	r2, r8
	bl	__fwritex
	b	.LBB1_27
.LBB1_27:                               @ %if.then.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r1, r11
	mov	r11, r8
	mov	r8, r5
	mov	r5, r7
	ldr	r7, .LCPI1_18
	mov	r12, r6
	b	.LBB1_28
.LCPI1_18:
	.long	states
.LBB1_28:                               @ %if.end27
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r4, r5
	bne	.LBB1_12
	b	.LBB1_29
.LBB1_29:                               @ %if.end30
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r1, [sp, #124]          @ 4-byte Spill
	mov	r1, r10
	mov	r6, r7
	ldrb	r0, [r1, #1]!
	sub	r2, r0, #48
	cmp	r2, #9
	bhi	.LBB1_32
	b	.LBB1_30
.LBB1_30:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r0, [r10, #2]
	ldr	r3, [sp, #132]          @ 4-byte Reload
	cmp	r0, #36
	mvn	r0, #0
	b	.LBB1_31
.LBB1_31:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_12 Depth=1
	addeq	r1, r10, #3
	movne	r2, r0
	moveq	r3, #1
	ldrb	r0, [r1]
	str	r3, [sp, #132]          @ 4-byte Spill
	b	.LBB1_33
.LBB1_32:                               @   in Loop: Header=BB1_12 Depth=1
	mvn	r2, #0
	b	.LBB1_33
.LBB1_33:                               @ %if.end47
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r4, #137
	mov	r7, #1
	and	r3, r0, #224
	mov	lr, #0
	orr	r4, r4, #75776
	b	.LBB1_35
.LBB1_34:                               @ %for.body58
                                        @   in Loop: Header=BB1_35 Depth=2
	and	r0, r0, #255
	sub	r0, r0, #32
	orr	lr, lr, r7, lsl r0
	ldrb	r0, [r1, #1]!
	and	r3, r0, #224
	b	.LBB1_35
.LBB1_35:                               @ %if.end47
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r3, #32
	bne	.LBB1_37
	b	.LBB1_36
.LBB1_36:                               @ %land.end57
                                        @   in Loop: Header=BB1_35 Depth=2
	sub	r3, r0, #32
	tst	r4, r7, lsl r3
	bne	.LBB1_34
	b	.LBB1_37
.LBB1_37:                               @ %for.end64
                                        @   in Loop: Header=BB1_12 Depth=1
	and	r0, r0, #255
	cmp	r0, #42
	bne	.LBB1_42
	b	.LBB1_38
.LBB1_38:                               @ %if.then68
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r3, r1
	ldrb	r0, [r3, #1]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB1_45
	b	.LBB1_39
.LBB1_39:                               @ %land.lhs.true74
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r7, [r1, #2]
	cmp	r7, #36
	bne	.LBB1_45
	b	.LBB1_40
.LBB1_40:                               @ %if.then79
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r7, [sp, #784]
	mov	r3, #10
	str	r3, [r7, r0, lsl #2]
	ldr	r3, [sp, #108]          @ 4-byte Reload
	b	.LBB1_41
.LBB1_41:                               @ %if.then79
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r0, [r1, #1]
	add	r0, r3, r0, lsl #3
	add	r3, r1, #3
	ldr	r7, [r0, #-384]
	mov	r0, #1
	b	.LBB1_48
.LBB1_42:                               @ %if.else106
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r0, r0, #48
	mov	r3, #0
	cmp	r0, #9
	bhi	.LBB1_51
	b	.LBB1_43
.LBB1_43:                               @ %for.body.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r3, r3, r3, lsl #2
	add	r3, r0, r3, lsl #1
	ldrb	r0, [r1, #1]!
	sub	r0, r0, #48
	cmp	r0, #10
	blo	.LBB1_43
	b	.LBB1_44
.LBB1_44:                               @ %getint.exit
                                        @   in Loop: Header=BB1_12 Depth=1
	mvn	r0, #0
	cmp	r3, #0
	str	r3, [sp, #120]          @ 4-byte Spill
	bge	.LBB1_53
	b	.LBB1_423
.LBB1_45:                               @ %if.else91
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, [sp, #132]          @ 4-byte Reload
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB1_423
	b	.LBB1_46
.LBB1_46:                               @ %if.then93
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r11, #0
	beq	.LBB1_50
	b	.LBB1_47
.LBB1_47:                               @ %cond.true
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r4, [sp, #116]          @ 4-byte Reload
	ldr	r0, [r4]
	add	r1, r0, #4
	str	r1, [r4]
	ldr	r7, [r0]
	mov	r0, #0
	b	.LBB1_48
.LBB1_48:                               @ %if.end99
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp, #132]          @ 4-byte Spill
	cmp	r7, #0
	blt	.LBB1_52
	b	.LBB1_49
.LBB1_49:                               @   in Loop: Header=BB1_12 Depth=1
	str	r7, [sp, #120]          @ 4-byte Spill
	mov	r1, r3
	b	.LBB1_53
.LBB1_50:                               @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #0
	mov	r1, r3
	str	r0, [sp, #132]          @ 4-byte Spill
	b	.LBB1_51
.LBB1_51:                               @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #0
	str	r0, [sp, #120]          @ 4-byte Spill
	b	.LBB1_53
.LBB1_52:                               @ %if.then102
                                        @   in Loop: Header=BB1_12 Depth=1
	rsb	r7, r7, #0
	orr	lr, lr, #8192
	mov	r1, r3
	str	r7, [sp, #120]          @ 4-byte Spill
	b	.LBB1_53
.LBB1_53:                               @ %if.end112
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r0, [r1]
	mvn	r4, #0
	cmp	r0, #46
	bne	.LBB1_59
	b	.LBB1_54
.LBB1_54:                               @ %land.lhs.true116
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r1
	ldrb	r3, [r0, #1]!
	cmp	r3, #42
	bne	.LBB1_60
	b	.LBB1_55
.LBB1_55:                               @ %if.then121
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r10, r1
	ldrb	r0, [r10, #2]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB1_63
	b	.LBB1_56
.LBB1_56:                               @ %land.lhs.true127
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r3, [r1, #3]
	cmp	r3, #36
	bne	.LBB1_63
	b	.LBB1_57
.LBB1_57:                               @ %if.then132
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r7, [sp, #784]
	mov	r3, #10
	add	r10, r1, #4
	str	r3, [r7, r0, lsl #2]
	b	.LBB1_58
.LBB1_58:                               @ %if.then132
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r3, [sp, #108]          @ 4-byte Reload
	ldrb	r0, [r1, #2]
	add	r0, r3, r0, lsl #3
	ldr	r4, [r0, #-384]
	b	.LBB1_66
.LBB1_59:                               @   in Loop: Header=BB1_12 Depth=1
	mov	r10, r1
	b	.LBB1_66
.LBB1_60:                               @ %if.then163
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r3, r3, #48
	mov	r4, #0
	mov	r10, r0
	cmp	r3, #9
	bhi	.LBB1_66
	b	.LBB1_61
.LBB1_61:                               @ %for.body.i686
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r10, r1
	add	r7, r4, r4, lsl #2
	ldrb	r1, [r10, #2]!
	add	r4, r3, r7, lsl #1
	b	.LBB1_62
.LBB1_62:                               @ %for.body.i686
                                        @   in Loop: Header=BB1_61 Depth=2
	sub	r3, r1, #48
	mov	r1, r0
	mov	r0, r10
	cmp	r3, #10
	blo	.LBB1_61
	b	.LBB1_66
.LBB1_63:                               @ %if.else144
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, [sp, #132]          @ 4-byte Reload
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB1_423
	b	.LBB1_64
.LBB1_64:                               @ %if.then146
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r4, #0
	cmp	r11, #0
	beq	.LBB1_66
	b	.LBB1_65
.LBB1_65:                               @ %cond.true148
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r3, [sp, #116]          @ 4-byte Reload
	ldr	r0, [r3]
	add	r1, r0, #4
	str	r1, [r3]
	ldr	r4, [r0]
	b	.LBB1_66
.LBB1_66:                               @ %if.end168
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r1, #0
	mov	r7, r6
	str	r4, [sp, #136]          @ 4-byte Spill
	b	.LBB1_67
.LBB1_67:                               @ %do.body
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r10]
	mov	r4, r1
	sub	r1, r0, #65
	mvn	r0, #0
	cmp	r1, #57
	bhi	.LBB1_423
	b	.LBB1_68
.LBB1_68:                               @ %if.end174
                                        @   in Loop: Header=BB1_67 Depth=2
	mla	r3, r4, r8, r7
	add	r10, r10, #1
	ldrb	r1, [r3, r1]
	sub	r3, r1, #1
	cmp	r3, #8
	blo	.LBB1_67
	b	.LBB1_69
.LBB1_69:                               @ %do.end
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r1, #0
	beq	.LBB1_423
	b	.LBB1_70
.LBB1_70:                               @ %if.end186
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r1, #19
	bne	.LBB1_72
	b	.LBB1_71
.LBB1_71:                               @ %if.then189
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r2, #0
	blt	.LBB1_74
	b	.LBB1_423
.LBB1_72:                               @ %if.else194
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r2, #0
	blt	.LBB1_75
	b	.LBB1_73
.LBB1_73:                               @ %if.then197
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #784]
	str	r1, [r0, r2, lsl #2]
	ldr	r0, [sp, #108]          @ 4-byte Reload
	ldr	r1, [r0, r2, lsl #3]!
	ldr	r0, [r0, #4]
	str	r0, [sp, #196]
	str	r1, [sp, #192]
	b	.LBB1_74
.LBB1_74:                               @ %if.end206
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, [sp, #124]          @ 4-byte Reload
	cmp	r11, #0
	beq	.LBB1_12
	b	.LBB1_77
.LBB1_75:                               @ %if.else200
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #0
	cmp	r11, #0
	beq	.LBB1_423
	b	.LBB1_76
.LBB1_76:                               @ %if.end206.thread
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r2, [sp, #116]          @ 4-byte Reload
	add	r0, sp, #192
	mov	r6, lr
	bl	pop_arg
	ldr	r1, [sp, #124]          @ 4-byte Reload
	mov	lr, r6
	b	.LBB1_77
.LBB1_77:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r6, [r10, #-1]
	mov	r2, r4
	str	r11, [sp, #128]         @ 4-byte Spill
	bic	r11, lr, #65536
	b	.LBB1_78
.LBB1_78:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r12, #0
	and	r0, r6, #15
	cmp	r0, #3
	mov	r0, #0
	b	.LBB1_79
.LBB1_79:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	moveq	r0, #1
	cmp	r4, #0
	movne	r2, #1
	tst	r2, r0
	b	.LBB1_80
.LBB1_80:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	andne	r6, r6, #223
	tst	lr, #8192
	movne	lr, r11
	cmp	r6, #82
	bgt	.LBB1_91
	b	.LBB1_81
.LBB1_81:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r0, r6, #69
	str	r9, [sp, #68]           @ 4-byte Spill
	cmp	r0, #3
	blo	.LBB1_95
	b	.LBB1_82
.LBB1_82:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r6, #65
	beq	.LBB1_95
	b	.LBB1_83
.LBB1_83:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r6, #67
	bne	.LBB1_92
	b	.LBB1_84
.LBB1_84:                               @ %sw.bb378.thread
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	str	r0, [sp, #144]
	mov	r0, #0
	str	r0, [sp, #148]
	b	.LBB1_85
.LBB1_85:                               @ %sw.bb378.thread
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r0, sp, #144
	str	r0, [sp, #192]
	mvn	r0, #0
	str	r0, [sp, #136]          @ 4-byte Spill
	b	.LBB1_86
.LBB1_86:                               @ %land.lhs.true384.lr.ph
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r5, [sp, #192]
	mov	r4, #0
	mov	r0, #0
	add	r9, sp, #140
	b	.LBB1_87
.LBB1_87:                               @ %land.lhs.true384
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r5]
	cmp	r1, #0
	beq	.LBB1_262
	b	.LBB1_88
.LBB1_88:                               @ %land.lhs.true386
                                        @   in Loop: Header=BB1_87 Depth=2
	mov	r0, r9
	mov	r6, lr
	bl	wctomb
	cmp	r0, #0
	blt	.LBB1_261
	b	.LBB1_89
.LBB1_89:                               @ %land.lhs.true386
                                        @   in Loop: Header=BB1_87 Depth=2
	ldr	r2, [sp, #136]          @ 4-byte Reload
	mov	lr, r6
	sub	r1, r2, r4
	cmp	r0, r1
	bhi	.LBB1_262
	b	.LBB1_90
.LBB1_90:                               @ %for.inc399
                                        @   in Loop: Header=BB1_87 Depth=2
	add	r4, r0, r4
	add	r5, r5, #4
	cmp	r2, r4
	bhi	.LBB1_87
	b	.LBB1_262
.LBB1_91:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r0, r6, #83
	str	r1, [sp, #124]          @ 4-byte Spill
	str	r9, [sp, #68]           @ 4-byte Spill
	cmp	r0, #37
	bls	.LBB1_94
	b	.LBB1_92
.LBB1_92:                               @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #104]          @ 4-byte Reload
	b	.LBB1_93
.LBB1_93:                               @ %sw.epilog435
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, .LCPI1_24
	mov	r9, r1
	b	.LBB1_279
.LCPI1_24:
	.long	.L.str
.LBB1_94:                               @ %if.end209
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r3, .LCPI1_25
	lsl	r1, r0, #2
	adr	r2, .LJTI1_0_0
	ldr	r0, [sp, #104]          @ 4-byte Reload
	mov	r9, r3
	ldr	pc, [r1, r2]
.LJTI1_0_0:
	.long	.LBB1_231
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_247
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_95
	.long	.LBB1_279
	.long	.LBB1_234
	.long	.LBB1_186
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_279
	.long	.LBB1_186
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_235
	.long	.LBB1_236
	.long	.LBB1_239
	.long	.LBB1_246
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_254
	.long	.LBB1_279
	.long	.LBB1_258
	.long	.LBB1_279
	.long	.LBB1_279
	.long	.LBB1_247
.LCPI1_25:
	.long	.L.str
.LBB1_95:                               @ %sw.bb432
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r4, [sp, #196]
	ldr	r9, [sp, #192]
	mov	r0, #0
	str	r0, [sp, #240]
	cmp	r4, #0
	blt	.LBB1_98
	b	.LBB1_96
.LBB1_96:                               @ %if.else.i
                                        @   in Loop: Header=BB1_12 Depth=1
	tst	lr, #2048
	beq	.LBB1_99
	b	.LBB1_97
.LBB1_97:                               @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_32
	mov	r7, #1
	add	r2, r0, #3
	b	.LBB1_100
.LCPI1_32:
	.long	.L.str2
.LBB1_98:                               @ %if.then.i716
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_33
	eor	r4, r4, #-2147483648
	mov	r7, #1
	mov	r2, r0
	b	.LBB1_100
.LCPI1_33:
	.long	.L.str2
.LBB1_99:                               @ %if.else11.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_34
	ands	r7, lr, #1
	add	r2, r0, #6
	addeq	r2, r0, #1
	b	.LBB1_100
.LCPI1_34:
	.long	.L.str2
.LBB1_100:                              @ %cond.true25.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #267386880
	str	lr, [sp, #112]          @ 4-byte Spill
	orr	r0, r0, #1879048192
	mov	r1, r0
	and	r0, r4, r1
	cmp	r0, r1
	bhs	.LBB1_115
	b	.LBB1_101
.LBB1_101:                              @ %if.end54.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r2, [sp, #60]           @ 4-byte Spill
	mov	r0, r9
	mov	r1, r4
	add	r2, sp, #240
	b	.LBB1_102
.LBB1_102:                              @ %if.end54.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r7, [sp, #52]           @ 4-byte Spill
	bl	frexpl
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_103
.LBB1_103:                              @ %if.end54.i
                                        @   in Loop: Header=BB1_12 Depth=1
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r5, r1
	mov	r2, #0
	b	.LBB1_104
.LBB1_104:                              @ %if.end54.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r3, #0
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dcmpeq
	b	.LBB1_105
.LBB1_105:                              @ %if.end54.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r0, #0
	orr	r7, r6, #32
	ldreq	r0, [sp, #240]
	subeq	r0, r0, #1
	streq	r0, [sp, #240]
	cmp	r7, #97
	bne	.LBB1_128
	b	.LBB1_106
.LBB1_106:                              @ %if.then61.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r9, [sp, #136]          @ 4-byte Reload
	ands	r11, r6, #32
	addne	r0, r0, #9
	cmp	r9, #11
	str	r0, [sp, #60]           @ 4-byte Spill
	bhi	.LBB1_133
	b	.LBB1_107
.LBB1_107:                              @ %if.then61.i
                                        @   in Loop: Header=BB1_12 Depth=1
	rsbs	r0, r9, #12
	beq	.LBB1_133
	b	.LBB1_108
.LBB1_108:                              @ %while.body.i.preheader
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r6, [sp, #56]           @ 4-byte Spill
	mov	r6, #2097152
	sub	r7, r9, #12
	mov	r9, #3145728
	mov	r8, #0
	orr	r6, r6, #1073741824
	orr	r9, r9, #1073741824
	b	.LBB1_109
.LBB1_109:                              @ %while.body.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	mov	r3, r9
	b	.LBB1_110
.LBB1_110:                              @ %while.body.i
                                        @   in Loop: Header=BB1_109 Depth=2
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r6, r1
	adds	r7, r7, #1
	bne	.LBB1_109
	b	.LBB1_111
.LBB1_111:                              @ %while.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldrb	r0, [r0]
	cmp	r0, #45
	bne	.LBB1_189
	b	.LBB1_112
.LBB1_112:                              @ %if.then84.i
                                        @   in Loop: Header=BB1_12 Depth=1
	eor	r1, r5, #-2147483648
	mov	r0, r4
	mov	r2, r8
	mov	r3, r6
	b	.LBB1_113
.LBB1_113:                              @ %if.then84.i
                                        @   in Loop: Header=BB1_12 Depth=1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB1_114
.LBB1_114:                              @ %if.then84.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r4, r0
	eor	r5, r1, #-2147483648
	b	.LBB1_191
.LBB1_115:                              @ %if.then34.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r5, [sp, #128]          @ 4-byte Reload
	str	r2, [sp, #60]           @ 4-byte Spill
	ldr	r2, [sp, #120]          @ 4-byte Reload
	add	r3, r7, #3
	b	.LBB1_116
.LBB1_116:                              @ %if.then34.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r1, #32
	str	r11, [sp]
	mov	r11, r7
	str	r3, [sp, #124]          @ 4-byte Spill
	b	.LBB1_117
.LBB1_117:                              @ %if.then34.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r5
	bl	pad
	ands	r0, r6, #32
	ldr	r7, .LCPI1_36
	b	.LBB1_118
.LCPI1_36:
	.long	.L.str6
.LBB1_118:                              @ %if.then34.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r6, .LCPI1_38
	mov	r1, r4
	mov	r2, r9
	mov	r3, r4
	b	.LBB1_119
.LCPI1_38:
	.long	.L.str4
.LBB1_119:                              @ %if.then34.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_35
	movne	r7, r0
	ldr	r0, .LCPI1_37
	movne	r6, r0
	b	.LBB1_120
.LCPI1_35:
	.long	.L.str5
.LCPI1_37:
	.long	.L.str3
.LBB1_120:                              @ %if.then34.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r9
	bl	__aeabi_dcmpun
	cmp	r0, #0
	ldr	r0, [r5]
	b	.LBB1_121
.LBB1_121:                              @ %if.then34.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r4, r5
	movne	r6, r7
	tst	r0, #32
	bne	.LBB1_123
	b	.LBB1_122
.LBB1_122:                              @ %if.then.i1200.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	mov	r1, r11
	mov	r2, r4
	bl	__fwritex
	ldr	r0, [r4]
	b	.LBB1_123
.LBB1_123:                              @ %out.exit1201.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r7, .LCPI1_19
	tst	r0, #32
	bne	.LBB1_125
	b	.LBB1_124
.LCPI1_19:
	.long	states
.LBB1_124:                              @ %if.then.i1206.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r6
	mov	r1, #3
	mov	r2, r4
	bl	__fwritex
	b	.LBB1_125
.LBB1_125:                              @ %out.exit1207.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #112]          @ 4-byte Reload
	mov	r11, r4
	ldr	r4, [sp, #120]          @ 4-byte Reload
	ldr	r5, [sp, #124]          @ 4-byte Reload
	b	.LBB1_126
.LBB1_126:                              @ %out.exit1207.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r1, #32
	eor	r0, r0, #8192
	mov	r2, r4
	mov	r3, r5
	b	.LBB1_127
.LBB1_127:                              @ %out.exit1207.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp]
	mov	r0, r11
	bl	pad
	mov	r1, r5
	cmp	r1, r4
	movlt	r1, r4
	b	.LBB1_11
.LBB1_128:                              @ %if.end195.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	b	.LBB1_129
.LBB1_129:                              @ %if.end195.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r6, [sp, #56]           @ 4-byte Spill
	bl	__aeabi_dcmpeq
	ldr	r1, [sp, #136]          @ 4-byte Reload
	cmp	r1, #0
	b	.LBB1_130
.LBB1_130:                              @ %if.end195.i
                                        @   in Loop: Header=BB1_12 Depth=1
	movlt	r1, #6
	cmp	r0, #0
	mov	r9, r1
	str	r1, [sp, #136]          @ 4-byte Spill
	bne	.LBB1_134
	b	.LBB1_131
.LBB1_131:                              @ %if.then201.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #240]
	mov	r3, #28311552
	mov	r1, r5
	mov	r2, #0
	b	.LBB1_132
.LBB1_132:                              @ %if.then201.i
                                        @   in Loop: Header=BB1_12 Depth=1
	orr	r3, r3, #1073741824
	sub	r6, r0, #28
	mov	r0, r4
	str	r6, [sp, #240]
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	b	.LBB1_135
.LBB1_133:                              @   in Loop: Header=BB1_12 Depth=1
	str	r6, [sp, #56]           @ 4-byte Spill
	b	.LBB1_192
.LBB1_134:                              @ %if.end195.if.end204_crit_edge.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r6, [sp, #240]
	b	.LBB1_135
.LBB1_135:                              @ %if.end204.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r6, #0
	add	r11, sp, #244
	str	r7, [sp, #48]           @ 4-byte Spill
	addge	r11, r11, #288
	str	r11, [sp, #64]          @ 4-byte Spill
	b	.LBB1_136
.LBB1_136:                              @ %do.body215.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_d2uiz
	str	r0, [r11], #4
	b	.LBB1_137
.LBB1_137:                              @ %do.body215.i
                                        @   in Loop: Header=BB1_136 Depth=2
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB1_138
.LBB1_138:                              @ %do.body215.i
                                        @   in Loop: Header=BB1_136 Depth=2
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r3, .LCPI1_39
	mov	r2, #0
	b	.LBB1_139
.LCPI1_39:
	.long	1104006501              @ 0x41cdcd65
.LBB1_139:                              @ %do.body215.i
                                        @   in Loop: Header=BB1_136 Depth=2
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	mov	r2, #0
	b	.LBB1_140
.LBB1_140:                              @ %do.body215.i
                                        @   in Loop: Header=BB1_136 Depth=2
	mov	r3, #0
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB1_136
	b	.LBB1_141
.LBB1_141:                              @ %while.cond224thread-pre-split.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r8, [sp, #240]
	ldr	lr, [sp, #64]           @ 4-byte Reload
	ldr	r12, [sp, #112]         @ 4-byte Reload
	mov	r4, r9
	cmp	r8, #1
	blt	.LBB1_154
	b	.LBB1_142
.LBB1_142:                              @ %while.body227.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB1_144 Depth 3
                                        @       Child Loop BB1_151 Depth 3
	cmp	r8, #29
	sub	r9, r11, #4
	movgt	r8, #29
	cmp	r9, lr
	blo	.LBB1_151
	b	.LBB1_143
.LBB1_143:                              @ %for.body.lr.ph.i
                                        @   in Loop: Header=BB1_142 Depth=2
	mov	r0, #0
	mov	r7, r11
	str	r10, [sp, #124]         @ 4-byte Spill
	b	.LBB1_144
.LBB1_144:                              @ %for.body.i721
                                        @   Parent Loop BB1_12 Depth=1
                                        @     Parent Loop BB1_142 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r9]
	rsb	r1, r8, #32
	sub	r3, r8, #32
	ldr	r6, .LCPI1_40
	b	.LBB1_145
.LCPI1_40:
	.long	1000000000              @ 0x3b9aca00
.LBB1_145:                              @ %for.body.i721
                                        @   in Loop: Header=BB1_144 Depth=3
	mov	r10, lr
	cmp	r3, #0
	lsr	r1, r2, r1
	lslge	r1, r2, r3
	b	.LBB1_146
.LBB1_146:                              @ %for.body.i721
                                        @   in Loop: Header=BB1_144 Depth=3
	adds	r4, r0, r2, lsl r8
	mov	r2, r6
	mov	r3, #0
	adc	r5, r1, #0
	b	.LBB1_147
.LBB1_147:                              @ %for.body.i721
                                        @   in Loop: Header=BB1_144 Depth=3
	mov	r0, r4
	mov	r1, r5
	bl	__umoddi3
	str	r0, [r9]
	b	.LBB1_148
.LBB1_148:                              @ %for.body.i721
                                        @   in Loop: Header=BB1_144 Depth=3
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	mov	r3, #0
	b	.LBB1_149
.LBB1_149:                              @ %for.body.i721
                                        @   in Loop: Header=BB1_144 Depth=3
	bl	__aeabi_uldivmod
	sub	r1, r7, #8
	mov	lr, r10
	mov	r7, r9
	mov	r9, r1
	cmp	r1, lr
	bhs	.LBB1_144
	b	.LBB1_150
.LBB1_150:                              @ %for.end.i
                                        @   in Loop: Header=BB1_142 Depth=2
	ldr	r4, [sp, #136]          @ 4-byte Reload
	ldr	r12, [sp, #112]         @ 4-byte Reload
	ldr	r10, [sp, #124]         @ 4-byte Reload
	cmp	r0, #0
	strne	r0, [lr, #-4]!
	b	.LBB1_151
.LBB1_151:                              @ %while.cond248.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @     Parent Loop BB1_142 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r0, r11
	cmp	r0, lr
	bls	.LBB1_153
	b	.LBB1_152
.LBB1_152:                              @ %land.rhs.i
                                        @   in Loop: Header=BB1_151 Depth=3
	mov	r11, r0
	ldr	r1, [r11, #-4]!
	cmp	r1, #0
	beq	.LBB1_151
	b	.LBB1_153
.LBB1_153:                              @ %while.end255.i
                                        @   in Loop: Header=BB1_142 Depth=2
	ldr	r1, [sp, #240]
	mov	r11, r0
	sub	r8, r1, r8
	str	r8, [sp, #240]
	cmp	r8, #0
	bgt	.LBB1_142
	b	.LBB1_154
.LBB1_154:                              @ %while.cond258thread-pre-split.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r8, #0
	blt	.LBB1_156
	b	.LBB1_155
.LBB1_155:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r9, [sp, #48]           @ 4-byte Reload
	b	.LBB1_165
.LBB1_156:                              @ %while.body261.lr.ph.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, .LCPI1_43
	add	r0, r4, #25
	ldr	r9, [sp, #48]           @ 4-byte Reload
	smull	r2, r3, r0, r1
	asr	r0, r3, #1
	add	r0, r0, r3, lsr #31
	add	r0, r0, #1
	b	.LBB1_157
.LCPI1_43:
	.long	954437177               @ 0x38e38e39
.LBB1_157:                              @ %while.body261.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB1_159 Depth 3
	rsb	r1, r8, #0
	cmp	r1, #9
	movgt	r1, #9
	cmp	lr, r11
	bhs	.LBB1_161
	b	.LBB1_158
.LBB1_158:                              @ %for.body279.lr.ph.i
                                        @   in Loop: Header=BB1_157 Depth=2
	mvn	r2, #0
	mov	r3, #1
	mov	r6, lr
	add	r3, r2, r3, lsl r1
	ldr	r2, .LCPI1_41
	lsr	r7, r2, r1
	mov	r2, #0
	b	.LBB1_159
.LCPI1_41:
	.long	1000000000              @ 0x3b9aca00
.LBB1_159:                              @ %for.body279.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @     Parent Loop BB1_157 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r5, [r6]
	add	r2, r2, r5, lsr r1
	and	r5, r5, r3
	str	r2, [r6], #4
	mul	r2, r5, r7
	cmp	r6, r11
	blo	.LBB1_159
	b	.LBB1_160
.LBB1_160:                              @ %for.end289.i
                                        @   in Loop: Header=BB1_157 Depth=2
	mov	r3, lr
	ldr	r7, [r3], #4
	cmp	r7, #0
	moveq	lr, r3
	cmp	r2, #0
	strne	r2, [r11], #4
	b	.LBB1_162
.LBB1_161:                              @ %for.end289.thread.i
                                        @   in Loop: Header=BB1_157 Depth=2
	mov	r2, lr
	ldr	r3, [r2], #4
	cmp	r3, #0
	moveq	lr, r2
	b	.LBB1_162
.LBB1_162:                              @ %if.end297.i
                                        @   in Loop: Header=BB1_157 Depth=2
	ldr	r2, [sp, #240]
	cmp	r9, #102
	add	r8, r2, r1
	ldr	r2, [sp, #64]           @ 4-byte Reload
	b	.LBB1_163
.LBB1_163:                              @ %if.end297.i
                                        @   in Loop: Header=BB1_157 Depth=2
	mov	r1, lr
	str	r8, [sp, #240]
	moveq	r1, r2
	sub	r2, r11, r1
	b	.LBB1_164
.LBB1_164:                              @ %if.end297.i
                                        @   in Loop: Header=BB1_157 Depth=2
	asr	r2, r2, #2
	cmp	r2, r0
	addgt	r11, r1, r0, lsl #2
	cmp	r8, #0
	blt	.LBB1_157
	b	.LBB1_165
.LBB1_165:                              @ %while.end314.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r5, #0
	cmp	lr, r11
	bhs	.LBB1_169
	b	.LBB1_166
.LBB1_166:                              @ %if.then317.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	mov	r1, #10
	sub	r0, r0, lr
	asr	r0, r0, #2
	b	.LBB1_167
.LBB1_167:                              @ %if.then317.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r5, r0, r0, lsl #3
	ldr	r0, [lr]
	cmp	r0, #10
	blo	.LBB1_169
	b	.LBB1_168
.LBB1_168:                              @ %for.inc327.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r2, r1, r1, lsl #2
	add	r5, r5, #1
	lsl	r1, r2, #1
	cmp	r0, r2, lsl #1
	bhs	.LBB1_168
	b	.LBB1_169
.LBB1_169:                              @ %if.end331.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r9, #103
	mov	r1, #0
	mov	r0, r4
	mov	r2, r4
	b	.LBB1_170
.LBB1_170:                              @ %if.end331.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r4, [sp, #136]          @ 4-byte Spill
	ldr	r7, [sp, #96]           @ 4-byte Reload
	moveq	r1, #1
	cmp	r9, #102
	b	.LBB1_171
.LBB1_171:                              @ %if.end331.i
                                        @   in Loop: Header=BB1_12 Depth=1
	subne	r0, r0, r5
	cmp	r4, #0
	ldr	r4, [sp, #64]           @ 4-byte Reload
	movne	r2, #1
	b	.LBB1_172
.LBB1_172:                              @ %if.end331.i
                                        @   in Loop: Header=BB1_12 Depth=1
	tst	r2, r1
	subne	r0, r0, #1
	sub	r1, r11, r4
	asr	r1, r1, #2
	b	.LBB1_173
.LBB1_173:                              @ %if.end331.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r1, r1, r1, lsl #3
	sub	r1, r1, #9
	cmp	r0, r1
	bge	.LBB1_185
	b	.LBB1_174
.LBB1_174:                              @ %if.then352.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	lr, [sp, #44]           @ 4-byte Spill
	ldr	r1, .LCPI1_44
	add	r0, r0, #9216
	smull	r2, r3, r0, r1
	b	.LBB1_175
.LCPI1_44:
	.long	954437177               @ 0x38e38e39
.LBB1_175:                              @ %if.then352.i
                                        @   in Loop: Header=BB1_12 Depth=1
	asr	r1, r3, #1
	ldr	r2, .LCPI1_45
	add	r1, r1, r3, lsr #31
	add	r6, r4, r1, lsl #2
	b	.LBB1_176
.LCPI1_45:
	.long	4294963204              @ 0xfffff004
.LBB1_176:                              @ %if.then352.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r1, r1, r1, lsl #3
	mov	r4, #10
	sub	r0, r0, r1
	add	r9, r6, r2
	add	r1, r0, #1
	cmp	r1, #8
	bgt	.LBB1_179
	b	.LBB1_177
.LBB1_177:                              @ %for.inc366.i.preheader
                                        @   in Loop: Header=BB1_12 Depth=1
	rsb	r0, r0, #8
	mov	r4, #10
	b	.LBB1_178
.LBB1_178:                              @ %for.inc366.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r1, r4, r4, lsl #2
	subs	r0, r0, #1
	lsl	r4, r1, #1
	bne	.LBB1_178
	b	.LBB1_179
.LBB1_179:                              @ %for.end369.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r8, [r9]
	mov	r1, r4
	str	r9, [sp, #124]          @ 4-byte Spill
	mov	r0, r8
	b	.LBB1_180
.LBB1_180:                              @ %for.end369.i
                                        @   in Loop: Header=BB1_12 Depth=1
	bl	__umodsi3
	mov	r2, r0
	cmp	r2, #0
	bne	.LBB1_182
	b	.LBB1_181
.LBB1_181:                              @ %lor.lhs.false372.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_46
	add	r0, r6, r0
	cmp	r0, r11
	beq	.LBB1_274
	b	.LBB1_182
.LCPI1_46:
	.long	4294963208              @ 0xfffff008
.LBB1_182:                              @ %if.then376.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r8
	mov	r1, r4
	str	r6, [sp, #36]           @ 4-byte Spill
	mov	r9, r8
	b	.LBB1_183
.LBB1_183:                              @ %if.then376.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r6, r2
	bl	__aeabi_uidiv
	mov	r12, r6
	add	r1, r4, r4, lsr #31
	mov	r2, #0
	cmp	r12, r1, asr #1
	bhs	.LBB1_228
	b	.LBB1_184
.LBB1_184:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r6, [sp, #52]           @ 4-byte Reload
	mov	r3, #266338304
	orr	r3, r3, #805306368
	b	.LBB1_293
.LBB1_185:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r6, [sp, #48]           @ 4-byte Reload
	b	.LBB1_312
.LBB1_186:                              @ %sw.bb285
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, [sp, #196]
	ldr	r0, [sp, #192]
	cmp	r1, #0
	blt	.LBB1_259
	b	.LBB1_187
.LBB1_187:                              @ %if.else293
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r7, [sp, #136]          @ 4-byte Reload
	tst	lr, #2048
	beq	.LBB1_275
	b	.LBB1_188
.LBB1_188:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r2, .LCPI1_26
	mov	r4, lr
	mov	r6, #1
	add	r9, r2, #1
	b	.LBB1_276
.LCPI1_26:
	.long	.L.str
.LBB1_189:                              @ %if.else89.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r4
	mov	r1, r5
	mov	r2, r8
	mov	r3, r6
	b	.LBB1_190
.LBB1_190:                              @ %if.else89.i
                                        @   in Loop: Header=BB1_12 Depth=1
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r5, r1
	b	.LBB1_191
.LBB1_191:                              @ %if.end93.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r9, [sp, #136]          @ 4-byte Reload
	b	.LBB1_192
.LBB1_192:                              @ %if.end93.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #240]
	ldr	r6, [sp, #96]           @ 4-byte Reload
	cmp	r0, #0
	mov	r2, r6
	b	.LBB1_193
.LBB1_193:                              @ %if.end93.i
                                        @   in Loop: Header=BB1_12 Depth=1
	rsbmi	r0, r0, #0
	asr	r1, r0, #31
	bl	fmt_u
	cmp	r0, r6
	b	.LBB1_194
.LBB1_194:                              @ %if.end93.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r2, r0
	mov	r1, #2
	add	r6, sp, #218
	moveq	r0, #48
	b	.LBB1_195
.LBB1_195:                              @ %if.end93.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldreq	r2, [sp, #72]           @ 4-byte Reload
	strbeq	r0, [sp, #217]
	ldr	r0, [sp, #52]           @ 4-byte Reload
	orr	r0, r0, #2
	b	.LBB1_196
.LBB1_196:                              @ %if.end93.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp, #64]           @ 4-byte Spill
	ldr	r0, [sp, #240]
	and	r0, r1, r0, lsr #30
	add	r0, r0, #43
	b	.LBB1_197
.LBB1_197:                              @ %if.end93.i
                                        @   in Loop: Header=BB1_12 Depth=1
	strb	r0, [r2, #-1]
	ldr	r0, [sp, #56]           @ 4-byte Reload
	add	r0, r0, #15
	strb	r0, [r2, #-2]!
	ldr	r0, [sp, #112]          @ 4-byte Reload
	str	r2, [sp, #124]          @ 4-byte Spill
	and	r8, r0, #8
	b	.LBB1_198
.LBB1_198:                              @ %do.body.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r4
	mov	r1, r5
	mov	r7, r6
	bl	__aeabi_d2iz
	b	.LBB1_199
.LBB1_199:                              @ %do.body.i
                                        @   in Loop: Header=BB1_198 Depth=2
	ldr	r1, .LCPI1_52
	ldrb	r1, [r1, r0]
	orr	r1, r1, r11
	strb	r1, [r6], #1
	b	.LBB1_200
.LCPI1_52:
	.long	xdigits
.LBB1_200:                              @ %do.body.i
                                        @   in Loop: Header=BB1_198 Depth=2
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB1_201
.LBB1_201:                              @ %do.body.i
                                        @   in Loop: Header=BB1_198 Depth=2
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r3, #3145728
	mov	r2, #0
	b	.LBB1_202
.LBB1_202:                              @ %do.body.i
                                        @   in Loop: Header=BB1_198 Depth=2
	orr	r3, r3, #1073741824
	bl	__aeabi_dmul
	mov	r4, r0
	add	r0, sp, #218
	b	.LBB1_203
.LBB1_203:                              @ %do.body.i
                                        @   in Loop: Header=BB1_198 Depth=2
	mov	r5, r1
	sub	r0, r6, r0
	cmp	r0, #1
	bne	.LBB1_208
	b	.LBB1_204
.LBB1_204:                              @ %land.lhs.true.i
                                        @   in Loop: Header=BB1_198 Depth=2
	cmp	r8, #0
	bne	.LBB1_207
	b	.LBB1_205
.LBB1_205:                              @ %land.lhs.true.i
                                        @   in Loop: Header=BB1_198 Depth=2
	cmp	r9, #0
	bgt	.LBB1_207
	b	.LBB1_206
.LBB1_206:                              @ %land.lhs.true.i
                                        @   in Loop: Header=BB1_198 Depth=2
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB1_208
	b	.LBB1_207
.LBB1_207:                              @ %if.then136.i
                                        @   in Loop: Header=BB1_198 Depth=2
	mov	r0, #46
	add	r6, r7, #2
	strb	r0, [r7, #1]
	b	.LBB1_208
.LBB1_208:                              @ %do.cond.i
                                        @   in Loop: Header=BB1_198 Depth=2
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB1_198
	b	.LBB1_209
.LBB1_209:                              @ %do.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #88]           @ 4-byte Reload
	ldr	r1, [sp, #80]           @ 4-byte Reload
	ldr	r2, [sp, #84]           @ 4-byte Reload
	ldr	r3, [sp, #124]          @ 4-byte Reload
	b	.LBB1_210
.LBB1_210:                              @ %do.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #64]          @ 4-byte Reload
	ldr	r5, [sp, #128]          @ 4-byte Reload
	ldr	r4, [sp, #120]          @ 4-byte Reload
	ldr	r8, [sp, #112]          @ 4-byte Reload
	b	.LBB1_211
.LBB1_211:                              @ %do.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r0, r0, r6
	sub	r2, r2, r3
	add	r1, r1, r9
	str	r8, [sp]
	b	.LBB1_212
.LBB1_212:                              @ %do.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r0, r9
	mov	r0, #0
	add	r2, r2, r6
	movlt	r0, #1
	b	.LBB1_213
.LBB1_213:                              @ %do.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r9, #0
	movne	r9, #1
	tst	r9, r0
	mov	r9, r3
	b	.LBB1_214
.LBB1_214:                              @ %do.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r5
	subne	r2, r1, r3
	mov	r1, #32
	add	r7, r2, r11
	b	.LBB1_215
.LBB1_215:                              @ %do.end.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r2, [sp, #136]          @ 4-byte Spill
	mov	r2, r4
	mov	r3, r7
	bl	pad
	ldrb	r0, [r5]
	tst	r0, #32
	bne	.LBB1_217
	b	.LBB1_216
.LBB1_216:                              @ %if.then.i1212.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	mov	r1, r11
	mov	r2, r5
	bl	__fwritex
	b	.LBB1_217
.LBB1_217:                              @ %out.exit1213.i
                                        @   in Loop: Header=BB1_12 Depth=1
	eor	r0, r8, #65536
	mov	r1, #48
	mov	r2, r4
	mov	r3, r7
	b	.LBB1_218
.LBB1_218:                              @ %out.exit1213.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp]
	mov	r0, r5
	bl	pad
	add	r0, sp, #218
	b	.LBB1_219
.LBB1_219:                              @ %out.exit1213.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r11, r5
	mov	r8, #58
	sub	r4, r6, r0
	ldrb	r0, [r5]
	tst	r0, #32
	bne	.LBB1_221
	b	.LBB1_220
.LBB1_220:                              @ %if.then.i1218.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r0, sp, #218
	mov	r1, r4
	mov	r2, r11
	bl	__fwritex
	b	.LBB1_221
.LBB1_221:                              @ %out.exit1219.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #0
	ldr	r1, [sp, #136]          @ 4-byte Reload
	mov	r6, r9
	mov	r3, #0
	b	.LBB1_222
.LBB1_222:                              @ %out.exit1219.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp]
	ldr	r0, [sp, #96]           @ 4-byte Reload
	sub	r5, r0, r6
	add	r0, r4, r5
	b	.LBB1_223
.LBB1_223:                              @ %out.exit1219.i
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r2, r1, r0
	mov	r0, r11
	mov	r1, #48
	bl	pad
	ldrb	r0, [r11]
	tst	r0, #32
	bne	.LBB1_225
	b	.LBB1_224
.LBB1_224:                              @ %if.then.i1224.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r6
	mov	r1, r5
	mov	r2, r11
	bl	__fwritex
	b	.LBB1_225
.LBB1_225:                              @ %out.exit1225.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #112]          @ 4-byte Reload
	ldr	r4, [sp, #120]          @ 4-byte Reload
	mov	r5, r7
	mov	r1, #32
	b	.LBB1_226
.LBB1_226:                              @ %out.exit1225.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r3, r5
	eor	r0, r0, #8192
	mov	r2, r4
	str	r0, [sp]
	b	.LBB1_227
.LBB1_227:                              @ %out.exit1225.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r11
	bl	pad
	ldr	r7, .LCPI1_20
	mov	r1, r5
	cmp	r1, r4
	movlt	r1, r4
	b	.LBB1_11
.LCPI1_20:
	.long	states
.LBB1_228:                              @ %if.else388.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r6, [sp, #52]           @ 4-byte Reload
	asr	r1, r1, #1
	cmp	r12, r1
	bne	.LBB1_230
	b	.LBB1_229
.LBB1_229:                              @ %land.lhs.true392.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, .LCPI1_47
	ldr	r3, [sp, #36]           @ 4-byte Reload
	add	r1, r3, r1
	cmp	r1, r11
	beq	.LBB1_292
	b	.LBB1_230
.LCPI1_47:
	.long	4294963208              @ 0xfffff008
.LBB1_230:                              @ %if.else397.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r1, #66584576
	orr	r1, r1, #1006632960
	mov	r3, r1
	b	.LBB1_293
.LBB1_231:                              @ %sw.bb378
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #136]          @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB1_86
	b	.LBB1_232
.LBB1_232:                              @ %if.end405.thread
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #128]         @ 4-byte Reload
	ldr	r2, [sp, #120]          @ 4-byte Reload
	mov	r1, #32
	mov	r3, #0
	b	.LBB1_233
.LBB1_233:                              @ %if.end405.thread
                                        @   in Loop: Header=BB1_12 Depth=1
	str	lr, [sp]
	mov	r9, lr
	mov	r0, r11
	bl	pad
	mov	r5, #0
	b	.LBB1_272
.LBB1_234:                              @ %sw.bb342
                                        @   in Loop: Header=BB1_12 Depth=1
	ldrb	r0, [sp, #192]
	ldr	r5, [sp, #76]           @ 4-byte Reload
	mov	lr, r11
	strb	r0, [sp, #191]
	mov	r0, #1
	str	r0, [sp, #136]          @ 4-byte Spill
	ldr	r0, [sp, #104]          @ 4-byte Reload
	b	.LBB1_93
.LBB1_235:                              @ %if.then348
                                        @   in Loop: Header=BB1_12 Depth=1
	bl	__errno_location
	ldr	r0, [r0]
	bl	strerror
	mov	r5, r0
	b	.LBB1_255
.LBB1_236:                              @ %sw.bb
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #128]         @ 4-byte Reload
	ldr	r9, [sp, #68]           @ 4-byte Reload
	ldr	r1, [sp, #124]          @ 4-byte Reload
	mov	r12, #3145728
	cmp	r4, #7
	orr	r12, r12, #1073741824
	bhi	.LBB1_12
	b	.LBB1_237
.LBB1_237:                              @ %sw.bb
                                        @   in Loop: Header=BB1_12 Depth=1
	lsl	r0, r4, #2
	adr	r2, .LJTI1_1_1
	ldr	pc, [r0, r2]
.LJTI1_1_1:
	.long	.LBB1_238
	.long	.LBB1_238
	.long	.LBB1_410
	.long	.LBB1_411
	.long	.LBB1_412
	.long	.LBB1_12
	.long	.LBB1_238
	.long	.LBB1_410
.LBB1_238:                              @ %sw.bb226
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	str	r9, [r0]
	b	.LBB1_12
.LBB1_239:                              @ %sw.bb265
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	ldr	r1, [sp, #196]
	ldr	r5, [sp, #104]          @ 4-byte Reload
	orrs	r2, r0, r1
	ldr	r2, [sp, #76]           @ 4-byte Reload
	beq	.LBB1_243
	b	.LBB1_240
.LBB1_240:                              @ %for.body.i705
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r3, r0, #7
	lsr	r0, r0, #3
	orr	r3, r3, #48
	orr	r0, r0, r1, lsl #29
	b	.LBB1_241
.LBB1_241:                              @ %for.body.i705
                                        @   in Loop: Header=BB1_240 Depth=2
	strb	r3, [r2], #-1
	orr	r3, r0, r1, lsr #3
	lsr	r1, r1, #3
	cmp	r3, #0
	bne	.LBB1_240
	b	.LBB1_242
.LBB1_242:                              @ %fmt_o.exit.loopexit
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r5, r2, #1
	b	.LBB1_243
.LBB1_243:                              @ %fmt_o.exit
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r7, [sp, #136]          @ 4-byte Reload
	mov	r12, #0
	tst	lr, #8
	beq	.LBB1_245
	b	.LBB1_244
.LBB1_244:                              @ %land.lhs.true270
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #104]          @ 4-byte Reload
	sub	r0, r0, r5
	add	r0, r0, #1
	cmp	r7, r0
	movlt	r7, r0
	b	.LBB1_245
.LBB1_245:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_27
	mov	r9, r0
	b	.LBB1_277
.LCPI1_27:
	.long	.L.str
.LBB1_246:                              @ %sw.bb244
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #136]          @ 4-byte Reload
	orr	lr, lr, #8
	mov	r6, #120
	cmp	r0, #8
	movls	r0, #8
	str	r0, [sp, #136]          @ 4-byte Spill
	b	.LBB1_247
.LBB1_247:                              @ %sw.bb252
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	ldr	r1, [sp, #196]
	mov	r12, #0
	orrs	r2, r0, r1
	beq	.LBB1_253
	b	.LBB1_248
.LBB1_248:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r3, [sp, #76]           @ 4-byte Reload
	ldr	r5, .LCPI1_53
	and	r2, r6, #32
	b	.LBB1_249
.LCPI1_53:
	.long	xdigits
.LBB1_249:                              @ %for.body.i692
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r7, r0, #15
	lsr	r0, r0, #4
	ldrb	r7, [r5, r7]
	orr	r0, r0, r1, lsl #28
	b	.LBB1_250
.LBB1_250:                              @ %for.body.i692
                                        @   in Loop: Header=BB1_249 Depth=2
	orr	r7, r7, r2
	strb	r7, [r3], #-1
	orr	r7, r0, r1, lsr #4
	lsr	r1, r1, #4
	cmp	r7, #0
	bne	.LBB1_249
	b	.LBB1_251
.LBB1_251:                              @ %fmt_x.exit
                                        @   in Loop: Header=BB1_12 Depth=1
	tst	lr, #8
	ldr	r7, [sp, #136]          @ 4-byte Reload
	add	r5, r3, #1
	ldrne	r0, [sp, #192]
	ldrne	r1, [sp, #196]
	orrsne	r0, r0, r1
	beq	.LBB1_245
	b	.LBB1_252
.LBB1_252:                              @ %if.then261
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_28
	mov	r12, #2
	add	r9, r0, r6, lsr #4
	b	.LBB1_277
.LCPI1_28:
	.long	.L.str
.LBB1_253:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_29
	ldr	r5, [sp, #104]          @ 4-byte Reload
	ldr	r7, [sp, #136]          @ 4-byte Reload
	mov	r9, r0
	b	.LBB1_277
.LCPI1_29:
	.long	.L.str
.LBB1_254:                              @ %sw.bb352
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r5, [sp, #192]
	ldr	r0, .LCPI1_54
	cmp	r5, #0
	moveq	r5, r0
	b	.LBB1_255
.LCPI1_54:
	.long	.L.str1
.LBB1_255:                              @ %if.end360
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r4, [sp, #136]          @ 4-byte Reload
	mov	r0, r5
	mov	r1, #0
	mov	r2, r4
	b	.LBB1_256
.LBB1_256:                              @ %if.end360
                                        @   in Loop: Header=BB1_12 Depth=1
	bl	memchr
	cmp	r0, #0
	mov	r1, r4
	mov	r12, #0
	b	.LBB1_257
.LBB1_257:                              @ %if.end360
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	lr, r11
	subne	r1, r0, r5
	addeq	r0, r5, r4
	str	r1, [sp, #136]          @ 4-byte Spill
	b	.LBB1_93
.LBB1_258:                              @ %if.end209.sw.bb307_crit_edge
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	ldr	r1, [sp, #196]
	mov	r4, lr
	mov	r6, #0
	b	.LBB1_260
.LBB1_259:                              @ %if.then289
                                        @   in Loop: Header=BB1_12 Depth=1
	rsbs	r0, r0, #0
	mov	r4, lr
	mov	r6, #1
	rsc	r1, r1, #0
	str	r0, [sp, #192]
	str	r1, [sp, #196]
	b	.LBB1_260
.LBB1_260:                              @ %sw.bb307
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r2, .LCPI1_30
	ldr	r7, [sp, #136]          @ 4-byte Reload
	mov	r9, r2
	b	.LBB1_276
.LCPI1_30:
	.long	.L.str
.LBB1_261:                              @   in Loop: Header=BB1_12 Depth=1
	mov	lr, r6
	b	.LBB1_262
.LBB1_262:                              @ %for.end401
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #128]         @ 4-byte Reload
	cmp	r0, #0
	mvn	r0, #0
	blt	.LBB1_423
	b	.LBB1_263
.LBB1_263:                              @ %if.end405
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r2, [sp, #120]          @ 4-byte Reload
	mov	r0, r11
	mov	r1, #32
	mov	r3, r4
	b	.LBB1_264
.LBB1_264:                              @ %if.end405
                                        @   in Loop: Header=BB1_12 Depth=1
	str	lr, [sp]
	mov	r9, lr
	bl	pad
	mov	r5, #0
	cmp	r4, #0
	beq	.LBB1_272
	b	.LBB1_265
.LBB1_265:                              @ %land.lhs.true411.lr.ph
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r6, [sp, #192]
	mov	r8, r7
	mov	r5, #0
	add	r7, sp, #140
	b	.LBB1_266
.LBB1_266:                              @ %land.lhs.true411
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r6]
	cmp	r1, #0
	beq	.LBB1_271
	b	.LBB1_267
.LBB1_267:                              @ %land.end420
                                        @   in Loop: Header=BB1_266 Depth=2
	mov	r0, r7
	bl	wctomb
	mov	r1, r0
	add	r5, r1, r5
	cmp	r5, r4
	bgt	.LBB1_271
	b	.LBB1_268
.LBB1_268:                              @ %for.body421
                                        @   in Loop: Header=BB1_266 Depth=2
	ldrb	r0, [r11]
	tst	r0, #32
	bne	.LBB1_270
	b	.LBB1_269
.LBB1_269:                              @ %if.then.i711
                                        @   in Loop: Header=BB1_266 Depth=2
	mov	r0, r7
	mov	r2, r11
	bl	__fwritex
	b	.LBB1_270
.LBB1_270:                              @ %out.exit712
                                        @   in Loop: Header=BB1_266 Depth=2
	add	r6, r6, #4
	cmp	r5, r4
	blo	.LBB1_266
	b	.LBB1_271
.LBB1_271:                              @   in Loop: Header=BB1_12 Depth=1
	mov	r7, r8
	mov	r5, r4
	mov	r8, #58
	b	.LBB1_272
.LBB1_272:                              @ %for.end425
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r4, [sp, #120]          @ 4-byte Reload
	eor	r0, r9, #8192
	mov	r1, #32
	mov	r3, r5
	b	.LBB1_273
.LBB1_273:                              @ %for.end425
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp]
	mov	r0, r11
	mov	r2, r4
	bl	pad
	mov	r1, r5
	cmp	r4, r1
	movgt	r1, r4
	b	.LBB1_11
.LBB1_274:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r12, [sp, #112]         @ 4-byte Reload
	ldr	lr, [sp, #44]           @ 4-byte Reload
	ldr	r6, [sp, #48]           @ 4-byte Reload
	ldr	r3, [sp, #124]          @ 4-byte Reload
	b	.LBB1_311
.LBB1_275:                              @ %if.else298
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r2, .LCPI1_31
	ands	r6, lr, #1
	mov	r4, lr
	mov	r9, r2
	addne	r9, r9, #2
	b	.LBB1_276
.LCPI1_31:
	.long	.L.str
.LBB1_276:                              @ %sw.bb307
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r2, [sp, #104]          @ 4-byte Reload
	bl	fmt_u
	mov	r5, r0
	mov	lr, r4
	mov	r12, r6
	b	.LBB1_277
.LBB1_277:                              @ %if.end310
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	ldr	r1, [sp, #196]
	cmp	r7, #0
	bicge	lr, lr, #65536
	orrseq	r2, r0, r1
	bne	.LBB1_408
	b	.LBB1_278
.LBB1_278:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #104]          @ 4-byte Reload
	mov	r1, #0
	str	r1, [sp, #136]          @ 4-byte Spill
	mov	r5, r0
	b	.LBB1_279
.LBB1_279:                              @ %sw.epilog435
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r9, [sp, #124]          @ 4-byte Spill
	ldr	r9, [sp, #136]          @ 4-byte Reload
	sub	r7, r0, r5
	ldr	r6, [sp, #120]          @ 4-byte Reload
	b	.LBB1_280
.LBB1_280:                              @ %sw.epilog435
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #128]         @ 4-byte Reload
	mov	r1, #32
	str	r12, [sp, #64]          @ 4-byte Spill
	str	lr, [sp, #112]          @ 4-byte Spill
	b	.LBB1_281
.LBB1_281:                              @ %sw.epilog435
                                        @   in Loop: Header=BB1_12 Depth=1
	str	lr, [sp]
	cmp	r9, r7
	mov	r0, r11
	movlt	r9, r7
	b	.LBB1_282
.LBB1_282:                              @ %sw.epilog435
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r4, r12, r9
	cmp	r6, r4
	mov	r3, r4
	movlt	r6, r4
	b	.LBB1_283
.LBB1_283:                              @ %sw.epilog435
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r2, r6
	bl	pad
	ldrb	r0, [r11]
	tst	r0, #32
	bne	.LBB1_285
	b	.LBB1_284
.LBB1_284:                              @ %if.then.i726
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #124]          @ 4-byte Reload
	ldr	r1, [sp, #64]           @ 4-byte Reload
	mov	r2, r11
	bl	__fwritex
	b	.LBB1_285
.LBB1_285:                              @ %out.exit727
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #112]          @ 4-byte Reload
	mov	r1, #48
	mov	r2, r6
	mov	r3, r4
	b	.LBB1_286
.LBB1_286:                              @ %out.exit727
                                        @   in Loop: Header=BB1_12 Depth=1
	eor	r0, r0, #65536
	str	r0, [sp]
	mov	r0, r11
	bl	pad
	b	.LBB1_287
.LBB1_287:                              @ %out.exit727
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #0
	mov	r1, #48
	mov	r2, r9
	mov	r3, r7
	b	.LBB1_288
.LBB1_288:                              @ %out.exit727
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp]
	mov	r0, r11
	bl	pad
	ldrb	r0, [r11]
	tst	r0, #32
	bne	.LBB1_290
	b	.LBB1_289
.LBB1_289:                              @ %if.then.i697
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r5
	mov	r1, r7
	mov	r2, r11
	bl	__fwritex
	b	.LBB1_290
.LBB1_290:                              @ %out.exit698
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #112]          @ 4-byte Reload
	mov	r1, #32
	mov	r2, r6
	mov	r3, r4
	b	.LBB1_291
.LBB1_291:                              @ %out.exit698
                                        @   in Loop: Header=BB1_12 Depth=1
	eor	r0, r0, #8192
	str	r0, [sp]
	mov	r0, r11
	bl	pad
	ldr	r7, .LCPI1_21
	mov	r1, r6
	b	.LBB1_11
.LCPI1_21:
	.long	states
.LBB1_292:                              @   in Loop: Header=BB1_12 Depth=1
	mov	r3, #267386880
	orr	r3, r3, #805306368
	b	.LBB1_293
.LBB1_293:                              @ %if.end399.i
                                        @   in Loop: Header=BB1_12 Depth=1
	and	lr, r0, #1
	cmp	r6, #0
	beq	.LBB1_296
	b	.LBB1_294
.LBB1_294:                              @ %land.lhs.true401.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldrb	r0, [r0]
	cmp	r0, #45
	bne	.LBB1_296
	b	.LBB1_295
.LBB1_295:                              @ %if.then405.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #54525952
	str	r6, [sp, #52]           @ 4-byte Spill
	eor	r3, r3, #-2147483648
	orr	r0, r0, #1073741824
	eor	r6, r0, #-2147483648
	b	.LBB1_297
.LBB1_296:                              @   in Loop: Header=BB1_12 Depth=1
	str	r6, [sp, #52]           @ 4-byte Spill
	mov	r6, #54525952
	orr	r6, r6, #1073741824
	b	.LBB1_297
.LBB1_297:                              @ %if.end408.i
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r0, r9, r12
	ldr	r9, [sp, #124]          @ 4-byte Reload
	mov	r1, r6
	mov	r8, lr
	b	.LBB1_298
.LBB1_298:                              @ %if.end408.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp, #40]           @ 4-byte Spill
	str	r0, [r9]
	mov	r0, lr
	bl	__aeabi_dadd
	b	.LBB1_299
.LBB1_299:                              @ %if.end408.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r2, r8
	mov	r3, r6
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB1_306
	b	.LBB1_300
.LBB1_300:                              @ %if.then413.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	mov	r3, r9
	add	r0, r0, r4
	str	r0, [r9]
	b	.LBB1_301
.LBB1_301:                              @ %if.then413.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, .LCPI1_42
	ldr	lr, [sp, #44]           @ 4-byte Reload
	cmp	r0, r1
	blo	.LBB1_307
	b	.LBB1_302
.LCPI1_42:
	.long	1000000000              @ 0x3b9aca00
.LBB1_302:                              @ %while.body418.i.preheader
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r6, [sp, #48]           @ 4-byte Reload
	mov	r3, #0
	sub	r0, r0, #4096
	b	.LBB1_303
.LBB1_303:                              @ %while.body418.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r0, lr
	str	r3, [r0, #4]
	strlo	r3, [lr, #-4]!
	ldr	r1, [r0]
	b	.LBB1_304
.LBB1_304:                              @ %while.body418.i
                                        @   in Loop: Header=BB1_303 Depth=2
	add	r1, r1, #1
	str	r1, [r0], #-4
	ldr	r2, .LCPI1_48
	cmp	r1, r2
	bhi	.LBB1_303
	b	.LBB1_305
.LCPI1_48:
	.long	999999999               @ 0x3b9ac9ff
.LBB1_305:                              @ %while.end426.i.loopexit
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r12, [sp, #112]         @ 4-byte Reload
	add	r3, r0, #4
	b	.LBB1_308
.LBB1_306:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r12, [sp, #112]         @ 4-byte Reload
	ldr	lr, [sp, #44]           @ 4-byte Reload
	ldr	r6, [sp, #48]           @ 4-byte Reload
	mov	r3, r9
	b	.LBB1_311
.LBB1_307:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r12, [sp, #112]         @ 4-byte Reload
	ldr	r6, [sp, #48]           @ 4-byte Reload
	b	.LBB1_308
.LBB1_308:                              @ %while.end426.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	mov	r1, #10
	sub	r0, r0, lr
	asr	r0, r0, #2
	b	.LBB1_309
.LBB1_309:                              @ %while.end426.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r5, r0, r0, lsl #3
	ldr	r0, [lr]
	cmp	r0, #10
	blo	.LBB1_311
	b	.LBB1_310
.LBB1_310:                              @ %for.inc436.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r2, r1, r1, lsl #2
	add	r5, r5, #1
	lsl	r1, r2, #1
	cmp	r0, r2, lsl #1
	bhs	.LBB1_310
	b	.LBB1_311
.LBB1_311:                              @ %if.end441.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r0, r3, #4
	cmp	r11, r0
	movhi	r11, r0
	b	.LBB1_312
.LBB1_312:                              @ %for.cond449.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r8, r11
	mov	r4, #0
	cmp	r8, lr
	bls	.LBB1_314
	b	.LBB1_313
.LBB1_313:                              @ %land.rhs452.i
                                        @   in Loop: Header=BB1_312 Depth=2
	mov	r11, r8
	mov	r4, #1
	ldr	r0, [r11, #-4]!
	cmp	r0, #0
	beq	.LBB1_312
	b	.LBB1_314
.LBB1_314:                              @ %for.end461.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r6, #103
	bne	.LBB1_318
	b	.LBB1_315
.LBB1_315:                              @ %if.then465.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #136]          @ 4-byte Reload
	cmp	r0, #0
	addeq	r0, r0, #1
	cmp	r0, r5
	ble	.LBB1_319
	b	.LBB1_316
.LBB1_316:                              @ %if.then465.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmn	r5, #4
	blt	.LBB1_319
	b	.LBB1_317
.LBB1_317:                              @ %if.then475.i
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r0, r0, #1
	sub	r2, r0, r5
	ldr	r0, [sp, #56]           @ 4-byte Reload
	sub	r0, r0, #1
	b	.LBB1_320
.LBB1_318:                              @ %for.end461.if.end607_crit_edge.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #136]          @ 4-byte Reload
	and	r1, r12, #8
	b	.LBB1_332
.LBB1_319:                              @ %if.else479.i
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r2, r0, #1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	sub	r0, r0, #2
	b	.LBB1_320
.LBB1_320:                              @ %if.end482.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ands	r1, r12, #8
	str	r0, [sp, #56]           @ 4-byte Spill
	beq	.LBB1_322
	b	.LBB1_321
.LBB1_321:                              @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r2
	b	.LBB1_332
.LBB1_322:                              @ %if.then485.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r6, #9
	str	r2, [sp, #136]          @ 4-byte Spill
	str	lr, [sp, #44]           @ 4-byte Spill
	cmp	r4, #1
	bne	.LBB1_328
	b	.LBB1_323
.LBB1_323:                              @ %land.lhs.true488.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r1, [r8, #-4]
	cmp	r1, #0
	beq	.LBB1_328
	b	.LBB1_324
.LBB1_324:                              @ %for.cond492.preheader.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, .LCPI1_49
	mov	r9, r1
	mov	r11, #10
	mov	r6, #0
	b	.LBB1_325
.LCPI1_49:
	.long	3435973837              @ 0xcccccccd
.LBB1_325:                              @ %for.cond492.preheader.i
                                        @   in Loop: Header=BB1_12 Depth=1
	umull	r1, r2, r9, r0
	lsr	r0, r2, #3
	add	r0, r0, r0, lsl #2
	sub	r0, r9, r0, lsl #1
	b	.LBB1_327
.LBB1_326:                              @ %for.inc498.i
                                        @   in Loop: Header=BB1_327 Depth=2
	add	r0, r11, r11, lsl #2
	lsl	r11, r0, #1
	mov	r0, r9
	mov	r1, r11
	bl	__umodsi3
	add	r6, r6, #1
	b	.LBB1_327
.LBB1_327:                              @ %for.inc498.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r0, #0
	beq	.LBB1_326
	b	.LBB1_328
.LBB1_328:                              @ %if.end503.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	ldr	r1, [sp, #56]           @ 4-byte Reload
	ldr	r9, [sp, #136]          @ 4-byte Reload
	ldr	r12, [sp, #112]         @ 4-byte Reload
	b	.LBB1_329
.LBB1_329:                              @ %if.end503.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	lr, [sp, #44]           @ 4-byte Reload
	sub	r0, r8, r0
	orr	r1, r1, #32
	asr	r0, r0, #2
	b	.LBB1_330
.LBB1_330:                              @ %if.end503.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r1, #102
	mov	r1, #0
	add	r0, r0, r0, lsl #3
	sub	r0, r0, #9
	b	.LBB1_331
.LBB1_331:                              @ %if.end503.i
                                        @   in Loop: Header=BB1_12 Depth=1
	addne	r0, r0, r5
	sub	r0, r0, r6
	cmp	r0, #0
	movlt	r0, #0
	cmp	r9, r0
	movlt	r0, r9
	b	.LBB1_332
.LBB1_332:                              @ %if.end607.i
                                        @   in Loop: Header=BB1_12 Depth=1
	orrs	r11, r0, r1
	str	r0, [sp, #136]          @ 4-byte Spill
	ldr	r0, [sp, #56]           @ 4-byte Reload
	str	r1, [sp, #48]           @ 4-byte Spill
	b	.LBB1_333
.LBB1_333:                              @ %if.end607.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	lr, [sp, #44]           @ 4-byte Spill
	str	r11, [sp, #36]          @ 4-byte Spill
	movne	r11, #1
	orr	r0, r0, #32
	str	r0, [sp, #40]           @ 4-byte Spill
	cmp	r0, #102
	bne	.LBB1_335
	b	.LBB1_334
.LBB1_334:                              @ %if.then616.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r5, #0
	mov	r0, #0
	movle	r5, r0
                                        @ implicit-def: R0
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB1_342
.LBB1_335:                              @ %if.else622.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r5, #0
	mov	r0, r5
	mov	r2, r7
	mov	r6, r12
	b	.LBB1_336
.LBB1_336:                              @ %if.else622.i
                                        @   in Loop: Header=BB1_12 Depth=1
	rsblt	r0, r0, #0
	asr	r1, r0, #31
	bl	fmt_u
	mov	r1, r0
	sub	r0, r7, r1
	cmp	r0, #1
	bgt	.LBB1_340
	b	.LBB1_337
.LBB1_337:                              @ %while.body638.i.preheader
                                        @   in Loop: Header=BB1_12 Depth=1
	sub	r0, r1, #1
	mov	r2, #48
	b	.LBB1_338
.LBB1_338:                              @ %while.body638.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sub	r1, r7, r0
	strb	r2, [r0], #-1
	cmp	r1, #2
	blt	.LBB1_338
	b	.LBB1_339
.LBB1_339:                              @ %while.end640.i.loopexit
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r1, r0, #1
	b	.LBB1_340
.LBB1_340:                              @ %while.end640.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #2
	mov	r12, r6
	and	r0, r0, r5, lsr #30
	add	r0, r0, #43
	b	.LBB1_341
.LBB1_341:                              @ %while.end640.i
                                        @   in Loop: Header=BB1_12 Depth=1
	strb	r0, [r1, #-1]
	ldr	r0, [sp, #56]           @ 4-byte Reload
	strb	r0, [r1, #-2]!
	sub	r5, r7, r1
	str	r1, [sp, #32]           @ 4-byte Spill
	b	.LBB1_342
.LBB1_342:                              @ %if.end652.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #136]          @ 4-byte Reload
	ldr	r1, [sp, #52]           @ 4-byte Reload
	ldr	r6, [sp, #120]          @ 4-byte Reload
	str	r12, [sp]
	b	.LBB1_343
.LBB1_343:                              @ %if.end652.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r9, r12
	add	r0, r1, r0
	mov	r1, #32
	mov	r2, r6
	b	.LBB1_344
.LBB1_344:                              @ %if.end652.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r0, r0, r11
	add	r0, r0, r5
	ldr	r5, [sp, #128]          @ 4-byte Reload
	add	r11, r0, #1
	b	.LBB1_345
.LBB1_345:                              @ %if.end652.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r3, r11
	mov	r0, r5
	bl	pad
	ldrb	r0, [r5]
	ldr	r7, .LCPI1_22
	tst	r0, #32
	bne	.LBB1_347
	b	.LBB1_346
.LCPI1_22:
	.long	states
.LBB1_346:                              @ %if.then.i1230.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r1, [sp, #52]           @ 4-byte Reload
	mov	r2, r5
	bl	__fwritex
	b	.LBB1_347
.LBB1_347:                              @ %out.exit1231.i
                                        @   in Loop: Header=BB1_12 Depth=1
	eor	r0, r9, #65536
	mov	r1, #48
	mov	r2, r6
	mov	r3, r11
	b	.LBB1_348
.LBB1_348:                              @ %out.exit1231.i
                                        @   in Loop: Header=BB1_12 Depth=1
	str	r11, [sp, #124]         @ 4-byte Spill
	str	r0, [sp]
	mov	r0, r5
	bl	pad
	b	.LBB1_349
.LBB1_349:                              @ %out.exit1231.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	mov	r6, #48
	cmp	r0, #102
	bne	.LBB1_375
	b	.LBB1_350
.LBB1_350:                              @ %if.then659.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #64]          @ 4-byte Reload
	ldr	r3, [sp, #44]           @ 4-byte Reload
	mvn	r0, r11
	mvn	r1, r3
	b	.LBB1_351
.LBB1_351:                              @ %if.then659.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r2, r11, #1
	cmp	r0, r1
	movhi	r1, r0
	rsb	r0, r1, #3
	b	.LBB1_352
.LBB1_352:                              @ %if.then659.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mvn	r9, r1
	cmp	r0, r2
	movhi	r2, r0
	cmp	r3, r11
	b	.LBB1_353
.LBB1_353:                              @ %if.then659.i
                                        @   in Loop: Header=BB1_12 Depth=1
	add	r0, r2, r1
	ldr	r2, [sp, #92]           @ 4-byte Reload
	movhi	r3, r11
	mov	r4, r3
	mov	r5, r3
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB1_354
.LBB1_354:                              @ %for.body667.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB1_357 Depth 3
	ldr	r0, [r4]
	mov	r7, r2
	mov	r1, #0
                                        @ kill: R2<def> R7<kill>
	bl	fmt_u
	cmp	r4, r5
	beq	.LBB1_358
	b	.LBB1_355
.LBB1_355:                              @ %while.cond676.preheader.i
                                        @   in Loop: Header=BB1_354 Depth=2
	add	r1, sp, #218
	b	.LBB1_357
.LBB1_356:                              @ %while.body680.i
                                        @   in Loop: Header=BB1_357 Depth=3
	strb	r6, [r0, #-1]!
	b	.LBB1_357
.LBB1_357:                              @ %while.cond676.preheader.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @     Parent Loop BB1_354 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r0, r1
	bhi	.LBB1_356
	b	.LBB1_359
.LBB1_358:                              @ %if.else683.i
                                        @   in Loop: Header=BB1_354 Depth=2
	cmp	r0, r7
	ldreq	r0, [sp, #100]          @ 4-byte Reload
	strbeq	r6, [sp, #226]
	b	.LBB1_359
.LBB1_359:                              @ %if.end691.i
                                        @   in Loop: Header=BB1_354 Depth=2
	ldr	r1, [sp, #128]          @ 4-byte Reload
	ldrb	r1, [r1]
	tst	r1, #32
	bne	.LBB1_361
	b	.LBB1_360
.LBB1_360:                              @ %if.then.i1236.i
                                        @   in Loop: Header=BB1_354 Depth=2
	ldr	r2, [sp, #128]          @ 4-byte Reload
	sub	r1, r7, r0
	bl	__fwritex
	b	.LBB1_361
.LBB1_361:                              @ %out.exit1237.i
                                        @   in Loop: Header=BB1_354 Depth=2
	add	r4, r4, #4
	mov	r2, r7
	cmp	r4, r11
	bls	.LBB1_354
	b	.LBB1_362
.LBB1_362:                              @ %for.end699.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB1_365
	b	.LBB1_363
.LBB1_363:                              @ %if.then704.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #128]          @ 4-byte Reload
	ldrb	r0, [r0]
	tst	r0, #32
	bne	.LBB1_365
	b	.LBB1_364
.LBB1_364:                              @ %if.then.i1242.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r7, r2
	ldr	r0, .LCPI1_50
	ldr	r2, [sp, #128]          @ 4-byte Reload
	mov	r1, #1
	bl	__fwritex
	mov	r2, r7
	b	.LBB1_365
.LCPI1_50:
	.long	.L.str7
.LBB1_365:                              @ %for.cond706.preheader.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #136]         @ 4-byte Reload
	cmp	r11, #1
	blt	.LBB1_396
	b	.LBB1_366
.LBB1_366:                              @ %for.cond706.preheader.i
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r4, r8
	bhs	.LBB1_396
	b	.LBB1_367
.LBB1_367:                              @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	bic	r0, r0, #3
	add	r5, r0, r9
	b	.LBB1_368
.LBB1_368:                              @ %for.body714.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB1_370 Depth 3
	ldr	r0, [r4]
	mov	r1, #0
	mov	r7, r2
	bl	fmt_u
	add	r1, sp, #218
	b	.LBB1_370
.LBB1_369:                              @ %while.body724.i
                                        @   in Loop: Header=BB1_370 Depth=3
	strb	r6, [r0, #-1]!
	b	.LBB1_370
.LBB1_370:                              @ %while.body724.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @     Parent Loop BB1_368 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r0, r1
	bhi	.LBB1_369
	b	.LBB1_371
.LBB1_371:                              @ %while.end726.i
                                        @   in Loop: Header=BB1_368 Depth=2
	ldr	r1, [sp, #128]          @ 4-byte Reload
	ldrb	r1, [r1]
	tst	r1, #32
	bne	.LBB1_373
	b	.LBB1_372
.LBB1_372:                              @ %if.then.i1248.i
                                        @   in Loop: Header=BB1_368 Depth=2
	ldr	r2, [sp, #128]          @ 4-byte Reload
	cmp	r11, #9
	mov	r1, r11
	movgt	r1, #9
	bl	__fwritex
	b	.LBB1_373
.LBB1_373:                              @ %out.exit1249.i
                                        @   in Loop: Header=BB1_368 Depth=2
	sub	r0, r11, #9
	cmp	r11, #10
	blt	.LBB1_402
	b	.LBB1_374
.LBB1_374:                              @ %out.exit1249.i
                                        @   in Loop: Header=BB1_368 Depth=2
	add	r1, r5, #8
	mov	r5, r4
	mov	r11, r0
	mov	r2, r7
	mov	r4, r1
	cmp	r1, r8
	blo	.LBB1_368
	b	.LBB1_403
.LBB1_375:                              @ %if.else738.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r9, [sp, #44]           @ 4-byte Reload
	ldr	r0, [sp, #136]          @ 4-byte Reload
	ldr	r2, [sp, #92]           @ 4-byte Reload
	cmp	r4, #0
	addeq	r8, r9, #4
	cmp	r0, #0
	blt	.LBB1_398
	b	.LBB1_376
.LBB1_376:                              @ %for.body752.lr.ph.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r4, r9
	b	.LBB1_377
.LBB1_377:                              @ %for.body752.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB1_382 Depth 3
	ldr	r0, [r4]
	mov	r5, r2
	mov	r1, #0
                                        @ kill: R2<def> R5<kill>
	b	.LBB1_378
.LBB1_378:                              @ %for.body752.i
                                        @   in Loop: Header=BB1_377 Depth=2
	bl	fmt_u
	mov	r2, r5
	mov	r5, r0
	add	r0, sp, #218
	b	.LBB1_379
.LBB1_379:                              @ %for.body752.i
                                        @   in Loop: Header=BB1_377 Depth=2
	cmp	r5, r2
	ldreq	r5, [sp, #100]          @ 4-byte Reload
	strbeq	r6, [sp, #226]
	cmp	r4, r9
	beq	.LBB1_383
	b	.LBB1_380
.LBB1_380:                              @ %while.cond768.preheader.i
                                        @   in Loop: Header=BB1_377 Depth=2
	mov	r11, r7
	b	.LBB1_382
.LBB1_381:                              @ %while.body772.i
                                        @   in Loop: Header=BB1_382 Depth=3
	strb	r6, [r5, #-1]!
	b	.LBB1_382
.LBB1_382:                              @ %while.cond768.preheader.i
                                        @   Parent Loop BB1_12 Depth=1
                                        @     Parent Loop BB1_377 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r5, r0
	bhi	.LBB1_381
	b	.LBB1_391
.LBB1_383:                              @ %if.else775.i
                                        @   in Loop: Header=BB1_377 Depth=2
	ldr	r0, [sp, #128]          @ 4-byte Reload
	ldrb	r0, [r0]
	tst	r0, #32
	bne	.LBB1_386
	b	.LBB1_384
.LBB1_384:                              @ %if.then.i1254.i
                                        @   in Loop: Header=BB1_377 Depth=2
	mov	r11, r7
	mov	r7, r2
	ldr	r2, [sp, #128]          @ 4-byte Reload
	mov	r0, r5
	b	.LBB1_385
.LBB1_385:                              @ %if.then.i1254.i
                                        @   in Loop: Header=BB1_377 Depth=2
	mov	r1, #1
	bl	__fwritex
	mov	r2, r7
	mov	r7, r11
	b	.LBB1_386
.LBB1_386:                              @ %out.exit1255.i
                                        @   in Loop: Header=BB1_377 Depth=2
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r11, r7
	add	r5, r5, #1
	cmp	r0, #0
	bne	.LBB1_388
	b	.LBB1_387
.LBB1_387:                              @ %out.exit1255.i
                                        @   in Loop: Header=BB1_377 Depth=2
	ldr	r0, [sp, #136]          @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB1_391
	b	.LBB1_388
.LBB1_388:                              @ %if.then782.i
                                        @   in Loop: Header=BB1_377 Depth=2
	mov	r7, r2
	ldr	r2, [sp, #128]          @ 4-byte Reload
	ldrb	r0, [r2]
	tst	r0, #32
	bne	.LBB1_390
	b	.LBB1_389
.LBB1_389:                              @ %if.then.i1260.i
                                        @   in Loop: Header=BB1_377 Depth=2
	ldr	r0, .LCPI1_51
	mov	r1, #1
	bl	__fwritex
	b	.LBB1_390
.LCPI1_51:
	.long	.L.str7
.LBB1_390:                              @ %if.end784.i
                                        @   in Loop: Header=BB1_377 Depth=2
	mov	r2, r7
	b	.LBB1_391
.LBB1_391:                              @ %if.end784.i
                                        @   in Loop: Header=BB1_377 Depth=2
	ldr	r0, [sp, #128]          @ 4-byte Reload
	sub	r7, r2, r5
	ldrb	r0, [r0]
	tst	r0, #32
	bne	.LBB1_394
	b	.LBB1_392
.LBB1_392:                              @ %if.then.i1266.i
                                        @   in Loop: Header=BB1_377 Depth=2
	ldr	r0, [sp, #136]          @ 4-byte Reload
	cmp	r0, r7
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_393
.LBB1_393:                              @ %if.then.i1266.i
                                        @   in Loop: Header=BB1_377 Depth=2
	mov	r5, r2
	ldr	r2, [sp, #128]          @ 4-byte Reload
	movgt	r1, r7
	bl	__fwritex
	mov	r2, r5
	b	.LBB1_394
.LBB1_394:                              @ %out.exit1267.i
                                        @   in Loop: Header=BB1_377 Depth=2
	ldr	r0, [sp, #136]          @ 4-byte Reload
	add	r4, r4, #4
	cmp	r4, r8
	sub	r0, r0, r7
	bhs	.LBB1_397
	b	.LBB1_395
.LBB1_395:                              @ %out.exit1267.i
                                        @   in Loop: Header=BB1_377 Depth=2
	mov	r7, r11
	cmp	r0, #0
	str	r0, [sp, #136]          @ 4-byte Spill
	bge	.LBB1_377
	b	.LBB1_398
.LBB1_396:                              @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r11
	b	.LBB1_403
.LBB1_397:                              @   in Loop: Header=BB1_12 Depth=1
	str	r0, [sp, #136]          @ 4-byte Spill
	mov	r7, r11
	b	.LBB1_398
.LBB1_398:                              @ %for.end809.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, #0
	ldr	r11, [sp, #128]         @ 4-byte Reload
	str	r2, [sp, #92]           @ 4-byte Spill
	mov	r1, #48
	b	.LBB1_399
.LBB1_399:                              @ %for.end809.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r3, #18
	str	r0, [sp]
	ldr	r0, [sp, #136]          @ 4-byte Reload
	add	r2, r0, #18
	b	.LBB1_400
.LBB1_400:                              @ %for.end809.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r11
	bl	pad
	ldrb	r0, [r11]
	tst	r0, #32
	bne	.LBB1_405
	b	.LBB1_401
.LBB1_401:                              @ %if.then.i.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #96]           @ 4-byte Reload
	ldr	r2, [sp, #32]           @ 4-byte Reload
	sub	r1, r0, r2
	mov	r0, r2
	mov	r2, r11
	bl	__fwritex
	b	.LBB1_405
.LBB1_402:                              @   in Loop: Header=BB1_12 Depth=1
	mov	r2, r7
	b	.LBB1_403
.LBB1_403:                              @ %for.end736.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r11, [sp, #128]         @ 4-byte Reload
	mov	r1, #0
	str	r2, [sp, #92]           @ 4-byte Spill
	add	r2, r0, #9
	b	.LBB1_404
.LBB1_404:                              @ %for.end736.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r3, #9
	str	r1, [sp]
	mov	r1, #48
	mov	r0, r11
	bl	pad
	ldr	r7, .LCPI1_23
	b	.LBB1_405
.LCPI1_23:
	.long	states
.LBB1_405:                              @ %if.end814.i
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #112]          @ 4-byte Reload
	ldr	r4, [sp, #120]          @ 4-byte Reload
	ldr	r5, [sp, #124]          @ 4-byte Reload
	mov	r1, #32
	b	.LBB1_406
.LBB1_406:                              @ %if.end814.i
                                        @   in Loop: Header=BB1_12 Depth=1
	eor	r0, r0, #8192
	mov	r2, r4
	mov	r3, r5
	str	r0, [sp]
	b	.LBB1_407
.LBB1_407:                              @ %if.end814.i
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r11
	bl	pad
	mov	r1, r5
	mov	r8, #58
	cmp	r1, r4
	movlt	r1, r4
	b	.LBB1_11
.LBB1_408:                              @ %if.end321
                                        @   in Loop: Header=BB1_12 Depth=1
	orrs	r0, r0, r1
	ldr	r1, [sp, #104]          @ 4-byte Reload
	sub	r0, r1, r5
	addeq	r0, r0, #1
	b	.LBB1_409
.LBB1_409:                              @ %if.end321
                                        @   in Loop: Header=BB1_12 Depth=1
	cmp	r7, r0
	movle	r7, r0
	mov	r0, r1
	str	r7, [sp, #136]          @ 4-byte Spill
	b	.LBB1_279
.LBB1_410:                              @ %sw.bb230
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	asr	r2, r9, #31
	str	r9, [r0]
	str	r2, [r0, #4]
	b	.LBB1_12
.LBB1_411:                              @ %sw.bb233
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	strh	r9, [r0]
	b	.LBB1_12
.LBB1_412:                              @ %sw.bb236
                                        @   in Loop: Header=BB1_12 Depth=1
	ldr	r0, [sp, #192]
	strb	r9, [r0]
	b	.LBB1_12
.LBB1_413:                              @ %for.end463
	mov	r0, r9
	cmp	r11, #0
	bne	.LBB1_423
	b	.LBB1_414
.LBB1_414:                              @ %if.end466
	ldr	r1, [sp, #132]          @ 4-byte Reload
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB1_423
	b	.LBB1_415
.LBB1_415:                              @ %land.rhs473.preheader
	ldr	r0, [sp, #108]          @ 4-byte Reload
	mov	r5, #1
	add	r4, r0, #8
	b	.LBB1_416
.LBB1_416:                              @ %land.rhs473
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #784]
	ldr	r1, [r0, r5, lsl #2]
	cmp	r1, #0
	beq	.LBB1_419
	b	.LBB1_417
.LBB1_417:                              @ %for.body477
                                        @   in Loop: Header=BB1_416 Depth=1
	ldr	r2, [sp, #116]          @ 4-byte Reload
	mov	r0, r4
	bl	pop_arg
	add	r5, r5, #1
	b	.LBB1_418
.LBB1_418:                              @ %for.body477
                                        @   in Loop: Header=BB1_416 Depth=1
	add	r4, r4, #8
	mov	r0, #1
	cmp	r5, #10
	blt	.LBB1_416
	b	.LBB1_423
.LBB1_419:                              @ %for.cond482.preheader
	cmp	r5, #10
	bge	.LBB1_422
	b	.LBB1_420
.LBB1_420:                              @ %land.rhs485
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #784]
	ldr	r1, [r0, r5, lsl #2]
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB1_423
	b	.LBB1_421
.LBB1_421:                              @ %for.cond482
                                        @   in Loop: Header=BB1_420 Depth=1
	add	r5, r5, #1
	cmp	r5, #9
	ble	.LBB1_420
	b	.LBB1_422
.LBB1_422:
	mov	r0, #1
	b	.LBB1_423
.LBB1_423:                              @ %cleanup
	add	sp, sp, #748
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	printf_core, .Ltmp1-printf_core
	.cantunwind
	.fnend

	.align	2
	.type	pop_arg,%function
pop_arg:                                @ @pop_arg
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	cmp	r1, #20
	subls	r1, r1, #9
	cmpls	r1, #9
	bhi	.LBB2_4
	b	.LBB2_1
.LBB2_1:                                @ %if.end
	lsl	r1, r1, #2
	adr	r3, .LJTI2_0_0
	ldr	pc, [r1, r3]
.LJTI2_0_0:
	.long	.LBB2_5
	.long	.LBB2_6
	.long	.LBB2_7
	.long	.LBB2_2
	.long	.LBB2_8
	.long	.LBB2_9
	.long	.LBB2_10
	.long	.LBB2_12
	.long	.LBB2_2
	.long	.LBB2_2
.LBB2_2:                                @ %sw.bb50
	ldr	r1, [r2]
	add	r1, r1, #7
	bic	r1, r1, #7
	add	r3, r1, #8
	b	.LBB2_3
.LBB2_3:                                @ %sw.bb50
	str	r3, [r2]
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	str	r2, [r0]
	str	r1, [r0, #4]
	b	.LBB2_4
.LBB2_4:                                @ %sw.epilog
	mov	pc, lr
.LBB2_5:                                @ %sw.bb
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldr	r1, [r1]
	str	r1, [r0]
	mov	pc, lr
.LBB2_6:                                @ %sw.bb2
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldr	r1, [r1]
	b	.LBB2_11
.LBB2_7:                                @ %sw.bb6
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldr	r1, [r1]
	b	.LBB2_13
.LBB2_8:                                @ %sw.bb17
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrsh	r1, [r1]
	b	.LBB2_11
.LBB2_9:                                @ %sw.bb24
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrh	r1, [r1]
	b	.LBB2_13
.LBB2_10:                               @ %sw.bb31
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrsb	r1, [r1]
	b	.LBB2_11
.LBB2_11:                               @ %sw.epilog
	asr	r2, r1, #31
	b	.LBB2_14
.LBB2_12:                               @ %sw.bb38
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrb	r1, [r1]
	b	.LBB2_13
.LBB2_13:                               @ %sw.epilog
	mov	r2, #0
	b	.LBB2_14
.LBB2_14:                               @ %sw.epilog
	stm	r0, {r1, r2}
	mov	pc, lr
.Ltmp2:
	.size	pop_arg, .Ltmp2-pop_arg
	.cantunwind
	.fnend

	.align	2
	.type	fmt_u,%function
fmt_u:                                  @ @fmt_u
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	mov	r6, r1
	mov	r4, r2
	mov	r5, r0
	cmp	r6, #0
	beq	.LBB3_6
	b	.LBB3_2
.LBB3_2:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, #10
	mov	r3, #0
	b	.LBB3_3
.LBB3_3:                                @ %for.body
                                        @   in Loop: Header=BB3_2 Depth=1
	bl	__umoddi3
	orr	r0, r0, #48
	mov	r1, r6
	mov	r2, #10
	b	.LBB3_4
.LBB3_4:                                @ %for.body
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r3, #0
	strb	r0, [r4, #-1]!
	mov	r0, r5
	bl	__aeabi_uldivmod
	b	.LBB3_5
.LBB3_5:                                @ %for.body
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r5, r0
	lsr	r0, r6, #1
	mov	r6, r1
	cmp	r0, #4
	bhi	.LBB3_2
	b	.LBB3_6
.LBB3_6:                                @ %for.end
	cmp	r5, #0
	beq	.LBB3_9
	b	.LBB3_7
.LBB3_7:                                @ %for.body3
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI3_0
	cmp	r5, #9
	umull	r1, r2, r5, r0
	lsr	r0, r2, #3
	b	.LBB3_8
.LCPI3_0:
	.long	3435973837              @ 0xcccccccd
.LBB3_8:                                @ %for.body3
                                        @   in Loop: Header=BB3_7 Depth=1
	add	r1, r0, r0, lsl #2
	sub	r1, r5, r1, lsl #1
	mov	r5, r0
	orr	r1, r1, #48
	strb	r1, [r4, #-1]!
	bhi	.LBB3_7
	b	.LBB3_9
.LBB3_9:                                @ %for.end10
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp3:
	.size	fmt_u, .Ltmp3-fmt_u
	.cantunwind
	.fnend

	.align	2
	.type	pad,%function
pad:                                    @ @pad
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.LBB4_2:                                @ %entry
	.pad	#256
	sub	sp, sp, #256
	mov	r6, r3
	mov	r7, r2
	mov	r4, r0
	cmp	r7, r6
	ble	.LBB4_15
	b	.LBB4_3
.LBB4_3:                                @ %entry
	ldr	r0, [sp, #280]
	ands	r0, r0, #73728
	bne	.LBB4_15
	b	.LBB4_4
.LBB4_4:                                @ %if.end
	sub	r5, r7, r6
	mov	r0, sp
	cmp	r5, #256
	mov	r2, r5
	b	.LBB4_5
.LBB4_5:                                @ %if.end
	movhi	r2, #256
	bl	memset
	ldr	r0, [r4]
	mov	r1, #0
	b	.LBB4_6
.LBB4_6:                                @ %if.end
	ands	r2, r0, #32
	moveq	r1, #1
	cmp	r5, #256
	blo	.LBB4_13
	b	.LBB4_7
.LBB4_7:                                @ %for.body.lr.ph
	sub	r7, r7, r6
	mov	r6, sp
	b	.LBB4_8
.LBB4_8:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	tst	r1, #1
	beq	.LBB4_10
	b	.LBB4_9
.LBB4_9:                                @ %if.then.i
                                        @   in Loop: Header=BB4_8 Depth=1
	mov	r0, r6
	mov	r1, #256
	mov	r2, r4
	bl	__fwritex
	ldr	r0, [r4]
	b	.LBB4_10
.LBB4_10:                               @ %out.exit
                                        @   in Loop: Header=BB4_8 Depth=1
	ands	r2, r0, #32
	mov	r1, #0
	sub	r5, r5, #256
	moveq	r1, #1
	cmp	r5, #255
	bhi	.LBB4_8
	b	.LBB4_11
.LBB4_11:                               @ %for.cond.for.end_crit_edge
	cmp	r2, #0
	bne	.LBB4_15
	b	.LBB4_12
.LBB4_12:
	and	r5, r7, #255
	b	.LBB4_14
.LBB4_13:                               @ %for.end
	cmp	r2, #0
	bne	.LBB4_15
	b	.LBB4_14
.LBB4_14:                               @ %if.then.i19
	mov	r0, sp
	mov	r1, r5
	mov	r2, r4
	bl	__fwritex
	b	.LBB4_15
.LBB4_15:                               @ %cleanup
	add	sp, sp, #256
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	pad, .Ltmp4-pad
	.cantunwind
	.fnend

	.type	states,%object          @ @states
	.section	.rodata,"a",%progbits
states:
	.ascii	"\021\000\n\000\021\021\021\000\000\000\000\005\000\000\000\000\000\000\t\000\000\000\000\013\000\000\000\000\000\000\000\000\021\000\017\n\021\021\021\003\n\007\000\001\023\t\013\013\000\000\t\006\013\000\000\013\000\006"
	.asciz	"\021\000\000\000\021\021\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\021\000\n\n\021\021\021\000\n\000\000\002\000\t\013\000\000\000\t\000\013\000\000\013\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\f\000\000\000\000\t\f\000\000\000\000\000\f\000\000\f\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\r\000\000\000\004\r\000\000\000\000\t\016\000\000\000\000\000\016\000\000\016\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\017\000\000\000\000\t\020\000\000\000\000\000\020\000\000\020\000"
	.asciz	"\022\000\000\000\022\022\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\022\000\000\000\022\022\022\000\000\000\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\n\000\000\000\000\n\000\000\000\000\t\013\000\000\000\000\000\013\000\000\013\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\f\000\000\000\000\t\f\000\000\000\000\000\f\000\000\f\000"
	.size	states, 464

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"-+   0X0x"
	.size	.L.str, 10

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"(null)"
	.size	.L.str1, 7

	.type	xdigits,%object         @ @xdigits
	.section	.rodata.cst16,"aM",%progbits,16
xdigits:
	.ascii	"0123456789ABCDEF"
	.size	xdigits, 16

	.type	.L.str2,%object         @ @.str2
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str2:
	.asciz	"-0X+0X 0X-0x+0x 0x"
	.size	.L.str2, 19

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"inf"
	.size	.L.str3, 4

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"INF"
	.size	.L.str4, 4

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"nan"
	.size	.L.str5, 4

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"NAN"
	.size	.L.str6, 4

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	"."
	.size	.L.str7, 2

	.hidden	__lockfile
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
