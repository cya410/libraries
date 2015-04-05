.section fmtmsg_text
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
	.file	"src/misc/fmtmsg.bc"
	.globl	fmtmsg
	.align	2
	.type	fmtmsg,%function
.section bb0_0
fmtmsg:                                 @ @fmtmsg
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
	.pad	#52
	sub	sp, sp, #52
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r0
	ldr	r0, .LCPI0_10
	str	r3, [sp, #44]           @ 4-byte Spill
	b	.LBB0_4
.LCPI0_10:
	.long	.L.str
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r6, r2
	mov	r9, r1
	bl	getenv
	mov	r4, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	add	r1, sp, #48
	mov	r0, #1
	bl	pthread_setcancelstate
	sub	r0, r6, #1
	cmp	r0, #3
	bhs	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %switch.lookup
	ldr	r1, .LCPI0_12
	ldr	r0, [r1, r0, lsl #2]
	b	.LBB0_8
.LCPI0_12:
	.long	.Lswitch.table
.section bb0_7
.LBB0_7:                                @ %if.else7
	ldr	r0, .LCPI0_11
	cmp	r6, #4
	movne	r0, #0
	b	.LBB0_8
.LCPI0_11:
	.long	.L.str9
.section bb0_8
.LBB0_8:                                @ %if.end12
	ldr	r8, [sp, #88]
	mov	r10, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	tst	r7, #512
	beq	.LBB0_21
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then13
	ldr	r0, .LCPI0_13
	mov	r1, #1
	bl	open
	mov	r5, r0
	mov	r10, #4
	cmp	r5, #0
	blt	.LBB0_21
	b	.LBB0_10
.LCPI0_13:
	.long	.L.str10
.section bb0_10
.LBB0_10:                               @ %if.else17
	ldr	r0, [sp, #92]
	ldr	r2, .LCPI0_14
	ldr	r3, .LCPI0_20
	mov	r1, r0
	b	.LBB0_11
.LCPI0_14:
	.long	.L.str12
.LCPI0_20:
	.long	.L.str13
.section bb0_11
.LBB0_11:                               @ %if.else17
	mov	r0, r2
	cmp	r1, #0
	movne	r0, r1
	cmp	r8, #0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.else17
	ldr	r1, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #20]
	ldr	r0, .LCPI0_16
	moveq	r0, r2
	b	.LBB0_13
.LCPI0_16:
	.long	.L.str15
.section bb0_13
.LBB0_13:                               @ %if.else17
	str	r0, [sp, #16]
	mov	r0, r2
	movne	r0, r8
	cmp	r8, #0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.else17
	str	r0, [sp, #12]
	ldr	r0, .LCPI0_18
	moveq	r0, r2
	cmp	r1, #0
	b	.LBB0_15
.LCPI0_18:
	.long	.L.str14
.section bb0_15
.LBB0_15:                               @ %if.else17
	str	r0, [sp, #8]
	mov	r0, r2
	movne	r0, r1
	ldr	r1, [sp, #40]           @ 4-byte Reload
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.else17
	cmp	r6, #0
	str	r0, [sp, #4]
	mov	r0, r2
	movne	r0, r1
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.else17
	ldr	r1, .LCPI0_22
	cmp	r9, #0
	str	r0, [sp]
	moveq	r3, r2
	b	.LBB0_18
.LCPI0_22:
	.long	.L.str11
.section bb0_18
.LBB0_18:                               @ %if.else17
	movne	r2, r9
	mov	r0, r5
	bl	dprintf
	str	r7, [sp, #36]           @ 4-byte Spill
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.else17
	mov	r7, r6
	mov	r6, r0
	mov	r0, r5
	mov	r11, r8
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.else17
	bl	close
	cmp	r6, #1
	mov	r6, r7
	ldr	r7, [sp, #36]           @ 4-byte Reload
	mov	r10, #0
	mov	r8, r11
	movlt	r10, #4
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end51
	tst	r7, #256
	beq	.LBB0_49
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %while.cond.preheader
	mov	r5, #0
	str	r6, [sp, #32]           @ 4-byte Spill
	str	r9, [sp, #36]           @ 4-byte Spill
	cmp	r4, #0
	beq	.LBB0_34
	b	.LBB0_23
.section bb0_23
.LBB0_23:
	ldr	r6, .LCPI0_24
	mov	r11, #1
	b	.LBB0_24
.LCPI0_24:
	.long	fmtmsg.msgs
.section bb0_24
.LBB0_24:                               @ %land.rhs
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_25 Depth 2
                                        @       Child Loop BB0_27 Depth 3
	ldrb	r0, [r4]
	mov	r1, #0
	cmp	r0, #0
	beq	.LBB0_51
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %for.body
                                        @   Parent Loop BB0_24 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_27 Depth 3
	ldr	r2, [r6, r1, lsl #2]
	mov	r0, #0
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.LBB0_30
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %land.lhs.true.i.preheader
                                        @   in Loop: Header=BB0_25 Depth=2
	add	r2, r2, #1
	mov	r0, #0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %land.lhs.true.i
                                        @   Parent Loop BB0_24 Depth=1
                                        @     Parent Loop BB0_25 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r7, [r4, r0]
	and	r3, r3, #255
	cmp	r7, r3
	bne	.LBB0_31
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %land.lhs.true.i
                                        @   in Loop: Header=BB0_27 Depth=3
	cmp	r7, #0
	beq	.LBB0_31
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %while.body.i
                                        @   in Loop: Header=BB0_27 Depth=3
	ldrb	r3, [r2, r0]
	add	r0, r0, #1
	cmp	r3, #0
	bne	.LBB0_27
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %lor.lhs.false.i
                                        @   in Loop: Header=BB0_25 Depth=2
	ldrb	r0, [r4, r0]
	cmp	r0, #0
	cmpne	r0, #58
	beq	.LBB0_32
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %for.inc
                                        @   in Loop: Header=BB0_25 Depth=2
	add	r1, r1, #1
	mov	r0, #255
	cmp	r1, #5
	bne	.LBB0_25
	b	.LBB0_35
.section bb0_32
.LBB0_32:                               @ %if.else68
                                        @   in Loop: Header=BB0_24 Depth=1
	orr	r5, r5, r11, lsl r1
	mov	r0, r4
	mov	r1, #58
	bl	strchr
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.else68
                                        @   in Loop: Header=BB0_24 Depth=1
	mov	r4, r0
	mov	r0, r5
	cmp	r4, #0
	addne	r4, r4, #1
	bne	.LBB0_24
	b	.LBB0_35
.section bb0_34
.LBB0_34:
	mov	r0, #0
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %while.end
	ldr	r1, [sp, #92]
	mov	r7, r1
	ldr	r1, .LCPI0_15
	cmp	r7, #0
	b	.LBB0_36
.LCPI0_15:
	.long	.L.str12
.section bb0_36
.LBB0_36:                               @ %while.end
	mov	r2, r7
	movne	r2, #1
	cmp	r0, #0
	moveq	r0, #255
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %while.end
	and	r3, r0, #16
	tst	r2, r3, lsr #4
	and	r3, r0, #4
	moveq	r7, r1
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %while.end
	str	r7, [sp, #20]
	ldr	r7, [sp, #44]           @ 4-byte Reload
	cmp	r7, #0
	mov	r2, r7
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %while.end
	movne	r2, #1
	tst	r2, r3, lsr #2
	ldr	r3, [sp, #32]           @ 4-byte Reload
	and	r2, r0, #2
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %while.end
	moveq	r7, r1
	str	r7, [sp, #4]
	cmp	r3, #0
	movne	r3, #1
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %while.end
	tst	r3, r2, lsr #1
	ldr	r2, [sp, #40]           @ 4-byte Reload
	and	r3, r0, #8
	moveq	r2, r1
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %while.end
	cmp	r8, #0
	str	r2, [sp]
	mov	r2, r8
	movne	r2, #1
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %while.end
	and	r2, r2, r3, lsr #3
	ldr	r3, .LCPI0_17
	cmp	r2, #0
	moveq	r3, r1
	b	.LBB0_44
.LCPI0_17:
	.long	.L.str15
.section bb0_44
.LBB0_44:                               @ %while.end
	moveq	r8, r1
	cmp	r2, #0
	ldr	r2, [sp, #36]           @ 4-byte Reload
	str	r3, [sp, #16]
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %while.end
	ldr	r3, .LCPI0_19
	str	r8, [sp, #12]
	moveq	r3, r1
	str	r3, [sp, #8]
	b	.LBB0_46
.LCPI0_19:
	.long	.L.str14
.section bb0_46
.LBB0_46:                               @ %while.end
	cmp	r2, #0
	mov	r3, r2
	movne	r3, #1
	ands	r0, r0, r3
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %while.end
	ldr	r3, .LCPI0_21
	moveq	r2, r1
	moveq	r3, r1
	ldr	r1, .LCPI0_23
	b	.LBB0_48
.LCPI0_21:
	.long	.L.str13
.LCPI0_23:
	.long	.L.str11
.section bb0_48
.LBB0_48:                               @ %while.end
	mov	r0, #2
	bl	dprintf
	cmp	r0, #1
	orrlt	r10, r10, #1
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.end140
	ldr	r0, [sp, #48]
	mov	r1, #0
	bl	pthread_setcancelstate
	and	r0, r10, #5
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.end140
	cmp	r0, #5
	mvneq	r10, #0
	mov	r0, r10
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_51
.LBB0_51:
	mov	r0, r5
	b	.LBB0_35
.Ltmp0:
	.size	fmtmsg, .Ltmp0-fmtmsg
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"MSGVERB"
	.size	.L.str, 8

	.type	fmtmsg.msgs,%object     @ @fmtmsg.msgs
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
fmtmsg.msgs:
	.long	.L.str1
	.long	.L.str2
	.long	.L.str3
	.long	.L.str4
	.long	.L.str5
	.long	0
	.size	fmtmsg.msgs, 24

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.asciz	"label"
	.size	.L.str1, 6

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"severity"
	.size	.L.str2, 9

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"text"
	.size	.L.str3, 5

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"action"
	.size	.L.str4, 7

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"tag"
	.size	.L.str5, 4

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"HALT: "
	.size	.L.str6, 7

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	"ERROR: "
	.size	.L.str7, 8

	.type	.L.str8,%object         @ @.str8
.L.str8:
	.asciz	"WARNING: "
	.size	.L.str8, 10

	.type	.L.str9,%object         @ @.str9
.L.str9:
	.asciz	"INFO: "
	.size	.L.str9, 7

	.type	.L.str10,%object        @ @.str10
.L.str10:
	.asciz	"/dev/console"
	.size	.L.str10, 13

	.type	.L.str11,%object        @ @.str11
.L.str11:
	.asciz	"%s%s%s%s%s%s%s%s\n"
	.size	.L.str11, 18

	.type	.L.str12,%object        @ @.str12
.L.str12:
	.zero	1
	.size	.L.str12, 1

	.type	.L.str13,%object        @ @.str13
.L.str13:
	.asciz	": "
	.size	.L.str13, 3

	.type	.L.str14,%object        @ @.str14
.L.str14:
	.asciz	"\nTO FIX: "
	.size	.L.str14, 10

	.type	.L.str15,%object        @ @.str15
.L.str15:
	.asciz	" "
	.size	.L.str15, 2

	.type	.Lswitch.table,%object  @ @switch.table
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
.Lswitch.table:
	.long	.L.str6
	.long	.L.str7
	.long	.L.str8
	.size	.Lswitch.table, 12


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
