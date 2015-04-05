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
	.file	"src/stdio/vfwprintf.bc"
	.globl	vfwprintf
	.align	2
	.type	vfwprintf,%function
vfwprintf:                              @ @vfwprintf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#128
	sub	sp, sp, #128
	add	r8, sp, #84
	mov	r6, r1
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	str	r2, [sp, #124]
	mov	r1, #36
	mov	r2, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r5, #0
	mov	r0, r8
	bl	__aeabi_memset
	ldr	r0, [sp, #124]
	b	.LBB0_5
.LBB0_5:                                @ %entry
	add	r2, sp, #120
	add	r3, sp, #8
	mov	r1, r6
	str	r8, [sp]
	b	.LBB0_6
.LBB0_6:                                @ %entry
	str	r0, [sp, #120]
	mov	r0, #0
	bl	wprintf_core
	cmp	r0, #0
	blt	.LBB0_15
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
	cmp	r5, #0
	movne	r5, #1
	b	.LBB0_9
.LBB0_9:                                @ %cond.end
	ldrsb	r0, [r4, #74]
	add	r2, sp, #120
	add	r3, sp, #8
	str	r8, [sp]
	b	.LBB0_10
.LBB0_10:                               @ %cond.end
	add	r1, r0, #1
	orr	r0, r1, r0
	mov	r1, r6
	strb	r0, [r4, #74]
	b	.LBB0_11
.LBB0_11:                               @ %cond.end
	ldr	r7, [r4]
	bic	r0, r7, #32
	str	r0, [r4]
	mov	r0, r4
	b	.LBB0_12
.LBB0_12:                               @ %cond.end
	bl	wprintf_core
	ldr	r1, [r4]
	mov	r6, r0
	and	r0, r7, #32
	b	.LBB0_13
.LBB0_13:                               @ %cond.end
	tst	r1, #32
	orr	r0, r1, r0
	mvnne	r6, #0
	str	r0, [r4]
	cmp	r5, #1
	bne	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               @ %if.then20
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_16
.LBB0_15:                               @ %if.then
	mvn	r6, #0
	b	.LBB0_16
.LBB0_16:                               @ %cleanup
	mov	r0, r6
	add	sp, sp, #128
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	vfwprintf, .Ltmp0-vfwprintf
	.cantunwind
	.fnend

	.align	2
	.type	wprintf_core,%function
wprintf_core:                           @ @wprintf_core
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#92
	sub	sp, sp, #92
	b	.LBB1_3
.LBB1_3:                                @ %entry
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, #0
	mov	r11, r1
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r10, #0
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r2, [sp, #44]           @ 4-byte Spill
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #52]           @ 4-byte Spill
	b	.LBB1_6
.LBB1_5:                                @ %for.cond
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r1, [sp, #56]           @ 4-byte Reload
	bl	fputwc
	mov	r10, #1
	b	.LBB1_6
.LBB1_6:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_14 Depth 2
                                        @     Child Loop BB1_27 Depth 2
                                        @     Child Loop BB1_35 Depth 2
                                        @     Child Loop BB1_51 Depth 2
                                        @     Child Loop BB1_57 Depth 2
                                        @     Child Loop BB1_81 Depth 2
                                        @     Child Loop BB1_108 Depth 2
	ldr	r4, [sp, #52]           @ 4-byte Reload
	mov	r5, r11
	cmp	r4, #0
	blt	.LBB1_10
	b	.LBB1_7
.LBB1_7:                                @ %if.then
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r8, [sp, #56]           @ 4-byte Reload
	mvn	r0, #-2147483648
	sub	r0, r0, r4
	cmp	r10, r0
	ble	.LBB1_11
	b	.LBB1_8
.LBB1_8:                                @ %if.then2
                                        @   in Loop: Header=BB1_6 Depth=1
	ldrb	r0, [r8]
	mvn	r4, #0
	tst	r0, #32
	bne	.LBB1_12
	b	.LBB1_9
.LBB1_9:                                @ %if.then3
                                        @   in Loop: Header=BB1_6 Depth=1
	bl	__errno_location
	mov	r1, #75
	str	r1, [r0]
	b	.LBB1_12
.LBB1_10:                               @   in Loop: Header=BB1_6 Depth=1
	ldr	r8, [sp, #56]           @ 4-byte Reload
	b	.LBB1_12
.LBB1_11:                               @ %if.else
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r4, r10, r4
	b	.LBB1_12
.LBB1_12:                               @ %if.end5
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [r5]
	mov	r6, #0
	cmp	r0, #0
	bne	.LBB1_14
	b	.LBB1_116
.LBB1_13:                               @ %for.inc
                                        @   in Loop: Header=BB1_14 Depth=2
	add	r0, r5, r6
	add	r6, r6, #4
	ldr	r0, [r0, #4]
	b	.LBB1_14
.LBB1_14:                               @ %for.cond9
                                        @   Parent Loop BB1_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r0, #0
	cmpne	r0, #37
	bne	.LBB1_13
	b	.LBB1_15
.LBB1_15:                               @ %for.end
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r1, .LCPI1_12
	add	r0, r5, r6
	str	r4, [sp, #52]           @ 4-byte Spill
	bl	wcsspn
	b	.LBB1_16
.LCPI1_12:
	.long	.L.str
.LBB1_16:                               @ %for.end
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r4, r0
	cmp	r8, #0
	lsr	r0, r4, #1
	add	r7, r5, r0, lsl #3
	b	.LBB1_17
.LBB1_17:                               @ %for.end
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r0, r5, r0, lsl #2
	add	r0, r0, r6
	sub	r0, r0, r5
	asr	r10, r0, #2
	beq	.LBB1_19
	b	.LBB1_18
.LBB1_18:                               @ %if.then15
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r0, r8
	mov	r1, r5
	mov	r2, r10
	bl	out
	b	.LBB1_19
.LBB1_19:                               @ %if.end16
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r11, r7, r6
	str	r8, [sp, #56]           @ 4-byte Spill
	cmp	r10, #0
	bne	.LBB1_6
	b	.LBB1_20
.LBB1_20:                               @ %if.end19
                                        @   in Loop: Header=BB1_6 Depth=1
	mvn	r0, #7
	and	r0, r0, r4, lsl #2
	add	r0, r5, r0
	add	r3, r0, r6
	b	.LBB1_21
.LBB1_21:                               @ %if.end19
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r1, r3
	ldr	r0, [r1, #4]!
	sub	r2, r0, #48
	cmp	r2, #9
	bhi	.LBB1_24
	b	.LBB1_22
.LBB1_22:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [r3, #8]
	cmp	r0, #36
	addeq	r1, r3, #12
	ldr	r3, [sp, #48]           @ 4-byte Reload
	b	.LBB1_23
.LBB1_23:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_6 Depth=1
	mvnne	r2, #0
	ldr	r0, [r1]
	moveq	r3, #1
	str	r3, [sp, #48]           @ 4-byte Spill
	b	.LBB1_25
.LBB1_24:                               @   in Loop: Header=BB1_6 Depth=1
	mvn	r2, #0
	b	.LBB1_25
.LBB1_25:                               @ %if.end30
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r6, #137
	sub	r3, r0, #32
	mov	r7, #1
	mov	r9, #0
	b	.LBB1_26
.LBB1_26:                               @ %if.end30
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r5, #0
	orr	r6, r6, #75776
	cmp	r3, #31
	bhi	.LBB1_34
	b	.LBB1_27
.LBB1_27:                               @ %land.end38
                                        @   Parent Loop BB1_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	tst	r6, r7, lsl r3
	beq	.LBB1_29
	b	.LBB1_28
.LBB1_28:                               @ %for.body39
                                        @   in Loop: Header=BB1_27 Depth=2
	sub	r0, r0, #32
	orr	r5, r5, r7, lsl r0
	ldr	r0, [r1, #4]!
	sub	r3, r0, #32
	cmp	r3, #32
	blo	.LBB1_27
	b	.LBB1_34
.LBB1_29:                               @ %for.end44
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r0, #42
	bne	.LBB1_34
	b	.LBB1_30
.LBB1_30:                               @ %if.then46
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r3, r1
	mov	r6, #58
	ldr	r0, [r3, #4]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB1_38
	b	.LBB1_31
.LBB1_31:                               @ %land.lhs.true50
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r7, [r1, #8]
	cmp	r7, #36
	bne	.LBB1_38
	b	.LBB1_32
.LBB1_32:                               @ %if.then53
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r3, [sp, #128]
	mov	r7, #10
	str	r7, [r3, r0, lsl #2]
	ldr	r3, [sp, #40]           @ 4-byte Reload
	b	.LBB1_33
.LBB1_33:                               @ %if.then53
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [r1, #4]
	add	r0, r3, r0, lsl #3
	add	r3, r1, #12
	ldr	r9, [r0, #-384]
	mov	r0, #1
	b	.LBB1_41
.LBB1_34:                               @ %if.else77
                                        @   in Loop: Header=BB1_6 Depth=1
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB1_37
	b	.LBB1_35
.LBB1_35:                               @ %for.body.i
                                        @   Parent Loop BB1_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r3, r9, r9, lsl #2
	add	r9, r0, r3, lsl #1
	ldr	r0, [r1, #4]!
	sub	r0, r0, #48
	cmp	r0, #10
	blo	.LBB1_35
	b	.LBB1_36
.LBB1_36:                               @ %getint.exit
                                        @   in Loop: Header=BB1_6 Depth=1
	mvn	r0, #0
	mov	r6, #58
	cmp	r9, #0
	bge	.LBB1_43
	b	.LBB1_126
.LBB1_37:                               @   in Loop: Header=BB1_6 Depth=1
	mov	r6, #58
	b	.LBB1_43
.LBB1_38:                               @ %if.else62
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r1, [sp, #48]           @ 4-byte Reload
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB1_126
	b	.LBB1_39
.LBB1_39:                               @ %if.then64
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB1_42
	b	.LBB1_40
.LBB1_40:                               @ %cond.true
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r7, [sp, #44]           @ 4-byte Reload
	ldr	r0, [r7]
	add	r1, r0, #4
	str	r1, [r7]
	ldr	r9, [r0]
	mov	r0, #0
	b	.LBB1_41
.LBB1_41:                               @ %if.end70
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r9, #0
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r1, r3
	rsblt	r9, r9, #0
	orrlt	r5, r5, #8192
	b	.LBB1_43
.LBB1_42:                               @   in Loop: Header=BB1_6 Depth=1
	mov	r0, #0
	mov	r1, r3
	mov	r9, #0
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB1_43
.LBB1_43:                               @ %if.end83
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [r1]
	mvn	r8, #0
	cmp	r0, #46
	bne	.LBB1_49
	b	.LBB1_44
.LBB1_44:                               @ %land.lhs.true86
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r0, r1
	ldr	r3, [r0, #4]!
	cmp	r3, #42
	bne	.LBB1_50
	b	.LBB1_45
.LBB1_45:                               @ %if.then90
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r11, r1
	ldr	r0, [r11, #8]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB1_53
	b	.LBB1_46
.LBB1_46:                               @ %land.lhs.true95
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r3, [r1, #12]
	cmp	r3, #36
	bne	.LBB1_53
	b	.LBB1_47
.LBB1_47:                               @ %if.then99
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r3, [sp, #128]
	mov	r7, #10
	add	r11, r1, #16
	str	r7, [r3, r0, lsl #2]
	b	.LBB1_48
.LBB1_48:                               @ %if.then99
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r3, [sp, #40]           @ 4-byte Reload
	ldr	r0, [r1, #8]
	add	r0, r3, r0, lsl #3
	ldr	r8, [r0, #-384]
	b	.LBB1_56
.LBB1_49:                               @   in Loop: Header=BB1_6 Depth=1
	mov	r11, r1
	b	.LBB1_56
.LBB1_50:                               @ %if.then127
                                        @   in Loop: Header=BB1_6 Depth=1
	sub	r3, r3, #48
	mov	r8, #0
	mov	r11, r0
	cmp	r3, #9
	bhi	.LBB1_56
	b	.LBB1_51
.LBB1_51:                               @ %for.body.i480
                                        @   Parent Loop BB1_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r11, r1
	add	r7, r8, r8, lsl #2
	ldr	r1, [r11, #8]!
	add	r8, r3, r7, lsl #1
	b	.LBB1_52
.LBB1_52:                               @ %for.body.i480
                                        @   in Loop: Header=BB1_51 Depth=2
	sub	r3, r1, #48
	mov	r1, r0
	mov	r0, r11
	cmp	r3, #10
	blo	.LBB1_51
	b	.LBB1_56
.LBB1_53:                               @ %if.else109
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r1, [sp, #48]           @ 4-byte Reload
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB1_126
	b	.LBB1_54
.LBB1_54:                               @ %if.then111
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	mov	r8, #0
	cmp	r0, #0
	beq	.LBB1_56
	b	.LBB1_55
.LBB1_55:                               @ %cond.true113
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r3, [sp, #44]           @ 4-byte Reload
	ldr	r0, [r3]
	add	r1, r0, #4
	str	r1, [r3]
	ldr	r8, [r0]
	b	.LBB1_56
.LBB1_56:                               @ %if.end132
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r7, .LCPI1_13
	mov	r1, #0
	b	.LBB1_57
.LCPI1_13:
	.long	states
.LBB1_57:                               @ %do.body
                                        @   Parent Loop BB1_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11]
	mov	r4, r1
	sub	r1, r0, #65
	mvn	r0, #0
	cmp	r1, #57
	bhi	.LBB1_126
	b	.LBB1_58
.LBB1_58:                               @ %if.end137
                                        @   in Loop: Header=BB1_57 Depth=2
	mla	r3, r4, r6, r7
	add	r11, r11, #4
	ldrb	r1, [r3, r1]
	sub	r3, r1, #1
	cmp	r3, #8
	blo	.LBB1_57
	b	.LBB1_59
.LBB1_59:                               @ %do.end
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r1, #0
	beq	.LBB1_126
	b	.LBB1_60
.LBB1_60:                               @ %if.end148
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r1, #19
	bne	.LBB1_62
	b	.LBB1_61
.LBB1_61:                               @ %if.then151
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r2, #0
	blt	.LBB1_64
	b	.LBB1_126
.LBB1_62:                               @ %if.else156
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r2, #0
	blt	.LBB1_65
	b	.LBB1_63
.LBB1_63:                               @ %if.then159
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #128]
	str	r1, [r0, r2, lsl #2]
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [r0, r2, lsl #3]!
	ldr	r0, [r0, #4]
	str	r0, [sp, #84]
	str	r1, [sp, #80]
	b	.LBB1_64
.LBB1_64:                               @ %if.end168
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	mov	r10, #0
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_67
.LBB1_65:                               @ %if.else162
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r2, [sp, #56]           @ 4-byte Reload
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB1_126
	b	.LBB1_66
.LBB1_66:                               @ %if.end168.thread
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r2, [sp, #44]           @ 4-byte Reload
	add	r0, sp, #80
	bl	pop_arg
	b	.LBB1_67
.LBB1_67:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [r11, #-4]
	mov	r2, r4
	and	r1, r0, #15
	cmp	r1, #3
	b	.LBB1_68
.LBB1_68:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r1, #0
	moveq	r1, #1
	cmp	r4, #0
	movne	r2, #1
	b	.LBB1_69
.LBB1_69:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	tst	r2, r1
	bicne	r0, r0, #32
	cmp	r0, #82
	bgt	.LBB1_72
	b	.LBB1_70
.LBB1_70:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r0, #67
	bne	.LBB1_89
	b	.LBB1_71
.LBB1_71:                               @ %sw.bb204
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #80]
	b	.LBB1_5
.LBB1_72:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r6, sp, #60
	cmp	r0, #109
	bgt	.LBB1_78
	b	.LBB1_73
.LBB1_73:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r0, #83
	bne	.LBB1_83
	b	.LBB1_74
.LBB1_74:                               @ %sw.bb208
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r4, [sp, #80]
	mov	r1, #0
	mov	r2, r8
	mov	r0, r4
	b	.LBB1_75
.LBB1_75:                               @ %sw.bb208
                                        @   in Loop: Header=BB1_6 Depth=1
	bl	wmemchr
	sub	r1, r0, r4
	cmp	r0, #0
	asrne	r8, r1, #2
	b	.LBB1_76
.LBB1_76:                               @ %sw.bb208
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r9, r8
	movlt	r9, r8
	tst	r5, #8192
	beq	.LBB1_101
	b	.LBB1_77
.LBB1_77:                               @ %if.then230.critedge
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r5, [sp, #56]           @ 4-byte Reload
	mov	r1, r4
	mov	r2, r8
	mov	r0, r5
	bl	out
	sub	r2, r9, r8
	mov	r0, r5
	b	.LBB1_112
.LBB1_78:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r0, #115
	bne	.LBB1_85
	b	.LBB1_79
.LBB1_79:                               @ %sw.bb234
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r8, #0
	mov	r7, #0
	mvnlt	r8, #-2147483648
	cmp	r8, #1
	blt	.LBB1_104
	b	.LBB1_80
.LBB1_80:                               @ %land.rhs243.lr.ph
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r4, [sp, #80]
	mov	r7, #0
	b	.LBB1_81
.LBB1_81:                               @ %land.rhs243
                                        @   Parent Loop BB1_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r6
	mov	r1, r4
	mov	r2, #4
	bl	mbtowc
	cmp	r0, #1
	blt	.LBB1_103
	b	.LBB1_82
.LBB1_82:                               @ %for.inc249
                                        @   in Loop: Header=BB1_81 Depth=2
	add	r7, r7, #1
	add	r4, r4, r0
	cmp	r7, r8
	blt	.LBB1_81
	b	.LBB1_104
.LBB1_83:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r0, #99
	bne	.LBB1_89
	b	.LBB1_84
.LBB1_84:                               @ %sw.bb199
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #80]
	bl	btowc
	b	.LBB1_5
.LBB1_85:                               @ %if.end171
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r0, #110
	bne	.LBB1_89
	b	.LBB1_86
.LBB1_86:                               @ %sw.bb
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r10, #0
	cmp	r4, #7
	bhi	.LBB1_6
	b	.LBB1_87
.LBB1_87:                               @ %sw.bb
                                        @   in Loop: Header=BB1_6 Depth=1
	lsl	r0, r4, #2
	adr	r1, .LJTI1_0_0
	ldr	pc, [r0, r1]
.LJTI1_0_0:
	.long	.LBB1_88
	.long	.LBB1_88
	.long	.LBB1_113
	.long	.LBB1_114
	.long	.LBB1_115
	.long	.LBB1_6
	.long	.LBB1_88
	.long	.LBB1_113
.LBB1_88:                               @ %sw.bb181
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #52]           @ 4-byte Reload
	str	r1, [r0]
	b	.LBB1_6
.LBB1_89:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r3, .LCPI1_20
	mov	r2, #1
	str	r0, [sp, #20]
	orr	r4, r0, #32
	b	.LBB1_90
.LCPI1_20:
	.long	.L.str8
.LBB1_90:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, .LCPI1_24
	bic	r1, r2, r5, lsr #16
	add	r1, r3, r1
	ldr	r3, .LCPI1_21
	b	.LBB1_91
.LCPI1_21:
	.long	.L.str7
.LCPI1_24:
	.long	sizeprefix
.LBB1_91:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r0, r4, r0
	str	r1, [sp, #12]
	bic	r1, r2, r5
	ldrb	r0, [r0, #-97]
	b	.LBB1_92
.LBB1_92:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r1, r3, r1
	ldr	r3, .LCPI1_22
	str	r1, [sp, #8]
	bic	r1, r2, r5, lsr #13
	b	.LBB1_93
.LCPI1_22:
	.long	.L.str6
.LBB1_93:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r1, r3, r1
	ldr	r3, .LCPI1_23
	str	r1, [sp, #4]
	bic	r1, r2, r5, lsr #11
	b	.LBB1_94
.LCPI1_23:
	.long	.L.str5
.LBB1_94:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r1, r3, r1
	str	r1, [sp]
	ldr	r1, .LCPI1_25
	str	r0, [sp, #16]
	b	.LBB1_95
.LCPI1_25:
	.long	.L.str4
.LBB1_95:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	bic	r0, r2, r5, lsr #3
	ldr	r2, .LCPI1_26
	add	r3, r1, r0
	add	r0, sp, #64
	b	.LBB1_96
.LCPI1_26:
	.long	.L.str3
.LBB1_96:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r1, #16
	bl	snprintf
	sub	r0, r4, #97
	mov	r10, #0
	cmp	r0, #23
	bhi	.LBB1_6
	b	.LBB1_97
.LBB1_97:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r1, .LCPI1_27
	mov	r2, #1
	tst	r1, r2, lsl r0
	bne	.LBB1_99
	b	.LBB1_98
.LCPI1_27:
	.long	9486600                 @ 0x90c108
.LBB1_98:                               @ %sw.epilog277
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r1, #113
	tst	r1, r2, lsl r0
	beq	.LBB1_6
	b	.LBB1_99
.LBB1_99:                               @ %sw.bb311
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #84]
	mov	r2, r9
	mov	r3, r8
	b	.LBB1_100
.LBB1_100:                              @ %sw.bb311
                                        @   in Loop: Header=BB1_6 Depth=1
	stm	sp, {r0, r1}
	add	r1, sp, #64
	ldr	r0, [sp, #56]           @ 4-byte Reload
	bl	fprintf
	mov	r10, r0
	b	.LBB1_6
.LBB1_101:                              @ %if.then224
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r5, [sp, #56]           @ 4-byte Reload
	ldr	r1, .LCPI1_14
	ldr	r3, .LCPI1_17
	sub	r2, r9, r8
	b	.LBB1_102
.LCPI1_14:
	.long	.L.str1
.LCPI1_17:
	.long	.L.str2
.LBB1_102:                              @ %if.then224
                                        @   in Loop: Header=BB1_6 Depth=1
	mov	r0, r5
	bl	fprintf
	mov	r0, r5
	mov	r1, r4
	mov	r2, r8
	bl	out
	mov	r10, r9
	b	.LBB1_6
.LBB1_103:                              @ %for.end251
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r0, #0
	mvn	r0, #0
	blt	.LBB1_126
	b	.LBB1_104
.LBB1_104:                              @ %if.end255
                                        @   in Loop: Header=BB1_6 Depth=1
	cmp	r9, r7
	mov	r8, r6
	movlt	r9, r7
	ands	r0, r5, #8192
	str	r0, [sp, #36]           @ 4-byte Spill
	bne	.LBB1_106
	b	.LBB1_105
.LBB1_105:                              @ %if.then262
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	ldr	r1, .LCPI1_15
	ldr	r3, .LCPI1_18
	sub	r2, r9, r7
	bl	fprintf
	b	.LBB1_106
.LCPI1_15:
	.long	.L.str1
.LCPI1_18:
	.long	.L.str2
.LBB1_106:                              @ %if.end265
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r10, [sp, #56]          @ 4-byte Reload
	cmp	r7, #0
	beq	.LBB1_110
	b	.LBB1_107
.LBB1_107:                              @ %while.body.lr.ph
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r4, [sp, #80]
	mov	r6, r7
	b	.LBB1_108
.LBB1_108:                              @ %while.body
                                        @   Parent Loop BB1_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r8
	mov	r1, r4
	mov	r2, #4
	bl	mbtowc
	b	.LBB1_109
.LBB1_109:                              @ %while.body
                                        @   in Loop: Header=BB1_108 Depth=2
	mov	r5, r0
	ldr	r0, [sp, #60]
	mov	r1, r10
	bl	fputwc
	add	r4, r4, r5
	subs	r6, r6, #1
	bne	.LBB1_108
	b	.LBB1_110
.LBB1_110:                              @ %while.end
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	mov	r10, r9
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_111
.LBB1_111:                              @ %if.then273
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	sub	r2, r9, r7
	b	.LBB1_112
.LBB1_112:                              @ %for.cond
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r1, .LCPI1_16
	ldr	r3, .LCPI1_19
	bl	fprintf
	mov	r10, r9
	b	.LBB1_6
.LCPI1_16:
	.long	.L.str1
.LCPI1_19:
	.long	.L.str2
.LBB1_113:                              @ %sw.bb185
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r1, [sp, #52]           @ 4-byte Reload
	ldr	r0, [sp, #80]
	mov	r2, r1
	asr	r1, r2, #31
	str	r2, [r0]
	str	r1, [r0, #4]
	b	.LBB1_6
.LBB1_114:                              @ %sw.bb188
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #52]           @ 4-byte Reload
	strh	r1, [r0]
	b	.LBB1_6
.LBB1_115:                              @ %sw.bb191
                                        @   in Loop: Header=BB1_6 Depth=1
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #52]           @ 4-byte Reload
	strb	r1, [r0]
	b	.LBB1_6
.LBB1_116:                              @ %for.end316
	mov	r0, r4
	cmp	r8, #0
	bne	.LBB1_126
	b	.LBB1_117
.LBB1_117:                              @ %if.end319
	ldr	r1, [sp, #48]           @ 4-byte Reload
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB1_126
	b	.LBB1_118
.LBB1_118:                              @ %land.rhs326.preheader
	ldr	r0, [sp, #40]           @ 4-byte Reload
	mov	r5, #1
	add	r4, r0, #8
	b	.LBB1_119
.LBB1_119:                              @ %land.rhs326
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #128]
	ldr	r1, [r0, r5, lsl #2]
	cmp	r1, #0
	beq	.LBB1_122
	b	.LBB1_120
.LBB1_120:                              @ %for.body330
                                        @   in Loop: Header=BB1_119 Depth=1
	ldr	r2, [sp, #44]           @ 4-byte Reload
	mov	r0, r4
	bl	pop_arg
	add	r5, r5, #1
	b	.LBB1_121
.LBB1_121:                              @ %for.body330
                                        @   in Loop: Header=BB1_119 Depth=1
	add	r4, r4, #8
	mov	r0, #1
	cmp	r5, #10
	blt	.LBB1_119
	b	.LBB1_126
.LBB1_122:                              @ %for.cond336.preheader
	cmp	r5, #10
	bge	.LBB1_125
	b	.LBB1_123
.LBB1_123:                              @ %land.rhs339
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #128]
	ldr	r1, [r0, r5, lsl #2]
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB1_126
	b	.LBB1_124
.LBB1_124:                              @ %for.cond336
                                        @   in Loop: Header=BB1_123 Depth=1
	add	r5, r5, #1
	cmp	r5, #9
	ble	.LBB1_123
	b	.LBB1_125
.LBB1_125:
	mov	r0, #1
	b	.LBB1_126
.LBB1_126:                              @ %return
	add	sp, sp, #92
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	wprintf_core, .Ltmp1-wprintf_core
	.cantunwind
	.fnend

	.align	2
	.type	out,%function
out:                                    @ @out
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	mov	r4, r2
	mov	r5, r1
	mov	r6, r0
	b	.LBB2_3
.LBB2_2:                                @ %while.body
                                        @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [r5], #4
	mov	r1, r6
	sub	r4, r4, #1
	bl	fputwc
	b	.LBB2_3
.LBB2_3:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r4, #0
	beq	.LBB2_5
	b	.LBB2_4
.LBB2_4:                                @ %land.rhs
                                        @   in Loop: Header=BB2_3 Depth=1
	ldrb	r0, [r6]
	tst	r0, #32
	beq	.LBB2_2
	b	.LBB2_5
.LBB2_5:                                @ %while.end
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp2:
	.size	out, .Ltmp2-out
	.cantunwind
	.fnend

	.align	2
	.type	pop_arg,%function
pop_arg:                                @ @pop_arg
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	cmp	r1, #20
	subls	r1, r1, #9
	cmpls	r1, #9
	bhi	.LBB3_4
	b	.LBB3_1
.LBB3_1:                                @ %if.end
	lsl	r1, r1, #2
	adr	r3, .LJTI3_0_0
	ldr	pc, [r1, r3]
.LJTI3_0_0:
	.long	.LBB3_5
	.long	.LBB3_6
	.long	.LBB3_7
	.long	.LBB3_2
	.long	.LBB3_8
	.long	.LBB3_9
	.long	.LBB3_10
	.long	.LBB3_12
	.long	.LBB3_2
	.long	.LBB3_2
.LBB3_2:                                @ %sw.bb50
	ldr	r1, [r2]
	add	r1, r1, #7
	bic	r1, r1, #7
	add	r3, r1, #8
	b	.LBB3_3
.LBB3_3:                                @ %sw.bb50
	str	r3, [r2]
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	str	r2, [r0]
	str	r1, [r0, #4]
	b	.LBB3_4
.LBB3_4:                                @ %sw.epilog
	mov	pc, lr
.LBB3_5:                                @ %sw.bb
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldr	r1, [r1]
	str	r1, [r0]
	mov	pc, lr
.LBB3_6:                                @ %sw.bb2
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldr	r1, [r1]
	b	.LBB3_11
.LBB3_7:                                @ %sw.bb6
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldr	r1, [r1]
	b	.LBB3_13
.LBB3_8:                                @ %sw.bb17
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrsh	r1, [r1]
	b	.LBB3_11
.LBB3_9:                                @ %sw.bb24
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrh	r1, [r1]
	b	.LBB3_13
.LBB3_10:                               @ %sw.bb31
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrsb	r1, [r1]
	b	.LBB3_11
.LBB3_11:                               @ %sw.epilog
	asr	r2, r1, #31
	b	.LBB3_14
.LBB3_12:                               @ %sw.bb38
	ldr	r1, [r2]
	add	r3, r1, #4
	str	r3, [r2]
	ldrb	r1, [r1]
	b	.LBB3_13
.LBB3_13:                               @ %sw.epilog
	mov	r2, #0
	b	.LBB3_14
.LBB3_14:                               @ %sw.epilog
	stm	r0, {r1, r2}
	mov	pc, lr
.Ltmp3:
	.size	pop_arg, .Ltmp3-pop_arg
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str4.4,"aMS",%progbits,4
	.align	2
.L.str:
	.long	37                      @ 0x25
	.long	0                       @ 0x0
	.size	.L.str, 8

	.type	states,%object          @ @states
	.section	.rodata,"a",%progbits
states:
	.ascii	"\021\000\n\000\021\021\021\000\000\000\000\005\000\000\000\000\000\000\t\000\000\000\000\013\000\000\000\000\000\000\000\000\021\000\017\n\021\021\021\003\n\007\000\001\023\t\013\013\000\000\t\006\013\000\000\013\000\006"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\000\n\n\000\000\000\000\n\000\000\002\000\t\013\000\000\000\t\000\013\000\000\013\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\f\000\000\000\000\t\f\000\000\000\000\000\f\000\000\f\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\r\000\000\000\004\r\000\000\000\000\t\016\000\000\000\000\000\016\000\000\016\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\017\000\000\000\000\t\020\000\000\000\000\000\020\000\000\020\000"
	.asciz	"\022\000\000\000\022\022\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\022\000\000\000\022\022\022\000\000\000\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\n\000\000\000\000\n\000\000\000\000\t\013\000\000\000\000\000\013\000\000\013\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\f\000\000\000\000\t\f\000\000\000\000\000\f\000\000\f\000"
	.size	states, 464

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.asciz	"%.*s"
	.size	.L.str1, 5

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.zero	1
	.size	.L.str2, 1

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"%%%s%s%s%s%s*.*%c%c"
	.size	.L.str3, 20

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"#"
	.size	.L.str4, 2

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"+"
	.size	.L.str5, 2

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"-"
	.size	.L.str6, 2

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	" "
	.size	.L.str7, 2

	.type	.L.str8,%object         @ @.str8
.L.str8:
	.asciz	"0"
	.size	.L.str8, 2

	.type	sizeprefix,%object      @ @sizeprefix
	.section	.rodata,"a",%progbits
sizeprefix:
	.ascii	"L\000\000jLLL\000j\000\000\000\000\000jj\000\000\000\000j\000\000j"
	.size	sizeprefix, 24

	.hidden	__lockfile
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
