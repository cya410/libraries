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
	.file	"src/malloc/malloc.bc"
	.globl	malloc
	.align	2
	.type	malloc,%function
malloc:                                 @ @malloc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r2, .LCPI0_8
	sub	r1, r0, #1
	cmp	r1, r2
	blo	.LBB0_6
	b	.LBB0_4
.LCPI0_8:
	.long	2147479536              @ 0x7fffeff0
.LBB0_4:                                @ %if.then.i
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_5
.LBB0_5:                                @ %adjust_size.exit
	bl	__errno_location
	mov	r1, #12
	mov	r4, #0
	str	r1, [r0]
	b	.LBB0_59
.LBB0_6:                                @ %if.end
	add	r0, r0, #23
	bic	r2, r0, #15
	cmp	r2, #114688
	bls	.LBB0_12
	b	.LBB0_7
.LBB0_7:                                @ %if.then2
	mov	r4, #0
	mvn	r0, #0
	mov	r3, #34
	str	r4, [sp, #8]
	b	.LBB0_8
.LBB0_8:                                @ %if.then2
	str	r4, [sp, #12]
	str	r0, [sp]
	ldr	r1, .LCPI0_13
	add	r0, r2, #7
	b	.LBB0_9
.LCPI0_13:
	.long	4294963200              @ 0xfffff000
.LBB0_9:                                @ %if.then2
	mov	r2, #3
	add	r0, r0, #4096
	and	r5, r0, r1
	mov	r0, #0
	b	.LBB0_10
.LBB0_10:                               @ %if.then2
	mov	r1, r5
	bl	__mmap
	cmn	r0, #1
	movne	r2, #8
	b	.LBB0_11
.LBB0_11:                               @ %if.then2
	addne	r4, r0, #16
	subne	r1, r5, #8
	strne	r2, [r0, #8]
	strne	r1, [r0, #12]
	b	.LBB0_59
.LBB0_12:                               @ %if.end11
	mvn	r1, #0
	add	r1, r1, r0, lsr #4
	cmp	r1, #33
	bhs	.LBB0_15
	b	.LBB0_13
.LBB0_13:
	str	r2, [sp, #24]           @ 4-byte Spill
	b	.LBB0_16
.LBB0_14:
	mov	r0, #16
	mov	r1, #0
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB0_16
.LBB0_15:                               @ %if.end.i87
	mov	r0, r1
	str	r2, [sp, #24]           @ 4-byte Spill
	bl	__aeabi_i2f
	ldr	r1, .LCPI0_9
	add	r0, r0, r1
	ldr	r1, .LCPI0_10
	add	r1, r1, r0, lsr #21
	b	.LBB0_16
.LCPI0_9:
	.long	2097151                 @ 0x1fffff
.LCPI0_10:
	.long	4294966800              @ 0xfffffe10
.LBB0_16:                               @ %bin_index_up.exit
	mvn	r2, #0
	rsb	r0, r1, #32
	ldr	r5, .LCPI0_15
	str	r1, [sp, #20]           @ 4-byte Spill
	b	.LBB0_17
.LCPI0_15:
	.long	_MergedGlobals
.LBB0_17:                               @ %bin_index_up.exit
	ror	r11, r2, r0
	sub	r0, r1, #32
	lsl	r8, r2, r1
	cmp	r0, #0
	lslge	r11, r2, r0
	b	.LBB0_19
.LBB0_18:                               @ %lor.rhs.i.i.i152
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_19
.LBB0_19:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_31 Depth 2
                                        @     Child Loop BB0_24 Depth 2
	ldr	r1, [r5, #16]
	ldr	r0, [r5, #20]
	and	r0, r0, r11
	and	r1, r1, r8
	orrs	r2, r1, r0
	beq	.LBB0_22
	b	.LBB0_20
.LBB0_20:                               @ %if.end40
                                        @   in Loop: Header=BB0_19 Depth=1
	cmp	r1, #0
	beq	.LBB0_27
	b	.LBB0_21
.LBB0_21:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_19 Depth=1
	rsb	r0, r1, #0
	and	r0, r1, r0
	ldr	r1, .LCPI0_18
	mul	r2, r0, r1
	ldr	r0, .LCPI0_20
	ldrb	r9, [r0, r2, lsr #27]
	b	.LBB0_28
.LCPI0_18:
	.long	124511785               @ 0x76be629
.LCPI0_20:
	.long	a_ctz_l.debruijn32
.LBB0_22:                               @ %if.then15
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r0, [r5]
	cmp	r0, #2
	bne	.LBB0_24
	b	.LBB0_51
.LBB0_23:                               @ %while.body.i
                                        @   in Loop: Header=BB0_24 Depth=2
	add	r1, r5, #4
	mov	r0, r5
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB0_24
.LBB0_24:                               @ %do.body.i.i
                                        @   Parent Loop BB0_19 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r5]
	mov	r1, #1
	mov	r2, r5
	mov	r0, r4
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_24
	b	.LBB0_25
.LBB0_25:                               @ %a_swap.exit.i
                                        @   in Loop: Header=BB0_24 Depth=2
	cmp	r4, #0
	beq	.LBB0_43
	b	.LBB0_26
.LBB0_26:                               @ %a_swap.exit.i
                                        @   in Loop: Header=BB0_24 Depth=2
	cmp	r4, #1
	beq	.LBB0_23
	b	.LBB0_50
.LBB0_27:                               @ %if.then.i.i
                                        @   in Loop: Header=BB0_19 Depth=1
	rsb	r1, r0, #0
	and	r0, r0, r1
	ldr	r1, .LCPI0_19
	mul	r2, r0, r1
	ldr	r0, .LCPI0_21
	ldrb	r0, [r0, r2, lsr #27]
	add	r9, r0, #32
	b	.LBB0_28
.LCPI0_19:
	.long	124511785               @ 0x76be629
.LCPI0_21:
	.long	a_ctz_l.debruijn32
.LBB0_28:                               @ %first_set.exit
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r0, .LCPI0_22
	add	r10, r5, r9, lsl #4
	add	r4, r10, #24
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB0_33
	b	.LBB0_29
.LCPI0_22:
	.long	__libc
.LBB0_29:                               @ %do.body.i.preheader.i.i
                                        @   in Loop: Header=BB0_19 Depth=1
	add	r6, r10, #28
	b	.LBB0_31
.LBB0_30:                               @ %while.body.i.i
                                        @   in Loop: Header=BB0_31 Depth=2
	mov	r0, r4
	mov	r1, r6
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB0_31
.LBB0_31:                               @ %do.body.i.i.i
                                        @   Parent Loop BB0_19 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r4]
	mov	r1, #1
	mov	r2, r4
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_31
	b	.LBB0_32
.LBB0_32:                               @ %a_swap.exit.i.i
                                        @   in Loop: Header=BB0_31 Depth=2
	cmp	r7, #0
	bne	.LBB0_30
	b	.LBB0_33
.LBB0_33:                               @ %lock.exit.i
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r1, r10
	ldr	r6, [r1, #32]!
	sub	r0, r1, #8
	cmp	r6, #0
	b	.LBB0_34
.LBB0_34:                               @ %lock.exit.i
                                        @   in Loop: Header=BB0_19 Depth=1
	moveq	r6, r0
	streq	r0, [r10, #36]
	streq	r0, [r1]
	cmp	r6, r0
	beq	.LBB0_40
	b	.LBB0_35
.LBB0_35:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r7, [r6, #4]
	mvn	r0, #0
	add	r0, r0, r7, lsr #4
	cmp	r0, #33
	bhs	.LBB0_37
	b	.LBB0_36
.LBB0_36:                               @   in Loop: Header=BB0_19 Depth=1
	mov	r1, r0
	b	.LBB0_39
.LBB0_37:                               @ %if.end.i106
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r1, #63
	cmp	r0, #7168
	bhi	.LBB0_39
	b	.LBB0_38
.LBB0_38:                               @ %if.end3.i110
                                        @   in Loop: Header=BB0_19 Depth=1
	bl	__aeabi_i2f
	ldr	r1, .LCPI0_11
	add	r1, r1, r0, lsr #21
	b	.LBB0_39
.LCPI0_11:
	.long	4294966800              @ 0xfffffe10
.LBB0_39:                               @ %bin_index.exit
                                        @   in Loop: Header=BB0_19 Depth=1
	cmp	r9, r1
	beq	.LBB0_60
	b	.LBB0_40
.LBB0_40:                               @ %if.end54
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_19
	b	.LBB0_41
.LBB0_41:                               @ %if.then.i.i149
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r4]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r10, #28]
	cmp	r0, #0
	beq	.LBB0_19
	b	.LBB0_42
.LBB0_42:                               @ %if.then3.i.i151
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r7, #240
	mov	r0, r4
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_19
	b	.LBB0_18
.LBB0_43:                               @ %if.end3.i
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, #0
	bl	__brk
	mov	r1, #255
	orr	r1, r1, #3840
	b	.LBB0_44
.LBB0_44:                               @ %if.end3.i
                                        @   in Loop: Header=BB0_19 Depth=1
	add	r0, r0, r1
	ldr	r1, .LCPI0_14
	and	r0, r0, r1
	orr	r0, r0, #32
	b	.LBB0_45
.LCPI0_14:
	.long	4294963200              @ 0xfffff000
.LBB0_45:                               @ %if.end3.i
                                        @   in Loop: Header=BB0_19 Depth=1
	sub	r0, r0, #1
	bic	r0, r0, #15
	str	r0, [r5, #8]
	ldr	r0, [sp, #24]           @ 4-byte Reload
	bl	expand_heap
	cmp	r0, #0
	beq	.LBB0_64
	b	.LBB0_46
.LBB0_46:                               @ %if.end14.i
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r1, #1
	str	r0, [r5, #12]
	str	r1, [r0], #8
	bl	free
	b	.LBB0_47
.LBB0_47:                               @ %if.end14.i
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r0, #2
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.LBB0_19
	b	.LBB0_48
.LBB0_48:                               @ %if.then16.i
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_19
	b	.LBB0_49
.LBB0_49:                               @ %lor.rhs.i23.i
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_19
.LBB0_50:                               @ %if.then2.i
	mov	r0, #2
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB0_51
.LBB0_51:                               @ %if.end19
	ldr	r11, [sp, #24]          @ 4-byte Reload
	mov	r0, r11
	bl	expand_heap
	mov	r6, r0
	mov	r4, #0
	cmp	r6, #0
	beq	.LBB0_59
	b	.LBB0_52
.LBB0_52:                               @ %if.end23
	mov	r0, r6
	bl	alloc_rev
	cmp	r0, #0
	beq	.LBB0_55
	b	.LBB0_53
.LBB0_53:                               @ %if.then26
	ldm	r6, {r0, r1}
	bic	r0, r0, #1
	rsb	r2, r0, #4
	ldr	r3, [r6, r2]
	b	.LBB0_54
.LBB0_54:                               @ %if.then26
	bic	r3, r3, #1
	add	r1, r3, r1
	str	r1, [r6, r2]
	ldr	r2, [r6, #4]
	bic	r2, r2, #1
	str	r1, [r6, r2]
	sub	r6, r6, r0
	b	.LBB0_55
.LBB0_55:                               @ %for.end
	ldr	r0, [r6, #4]
	bic	r0, r0, #1
	sub	r1, r0, #16
	cmp	r1, r11
	bls	.LBB0_58
	b	.LBB0_56
.LBB0_56:                               @ %if.end.i92
	sub	r2, r0, r11
	orr	r1, r11, #1
	orr	r3, r11, #4
	orr	r2, r2, #1
	b	.LBB0_57
.LBB0_57:                               @ %if.end.i92
	str	r1, [r6, r11]
	str	r2, [r6, r3]
	str	r2, [r6, r0]
	orr	r0, r11, #8
	str	r1, [r6, #4]
	add	r0, r6, r0
	bl	free
	b	.LBB0_58
.LBB0_58:                               @ %trim.exit
	add	r4, r6, #8
	b	.LBB0_59
.LBB0_59:                               @ %return
	mov	r0, r4
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_60:                               @ %if.then49
	ldr	r11, [sp, #24]          @ 4-byte Reload
	cmp	r9, #40
	blt	.LBB0_77
	b	.LBB0_61
.LBB0_61:                               @ %if.end.i115
	ldr	r0, [sp, #20]           @ 4-byte Reload
	add	r0, r0, #3
	cmp	r0, r9
	ble	.LBB0_67
	b	.LBB0_62
.LBB0_62:                               @ %if.then2.i116
	cmp	r9, #63
	bne	.LBB0_77
	b	.LBB0_63
.LBB0_63:                               @ %if.end5.i
	bic	r0, r7, #1
	sub	r1, r0, r11
	cmp	r1, #114688
	bhi	.LBB0_68
	b	.LBB0_77
.LBB0_64:                               @ %if.then10.i
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.LBB0_51
	b	.LBB0_65
.LBB0_65:                               @ %if.then12.i
	ldr	r0, .LCPI0_16
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_51
	b	.LBB0_66
.LCPI0_16:
	.long	_MergedGlobals
.LBB0_66:                               @ %lor.rhs.i.i
	ldr	r0, .LCPI0_17
	mov	r7, #240
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_51
.LCPI0_17:
	.long	_MergedGlobals
.LBB0_67:                               @ %if.else.i120
	bic	r0, r7, #1
	b	.LBB0_68
.LBB0_68:                               @ %if.end11.i
	sub	r8, r0, r11
	mvn	r0, #0
	add	r0, r0, r8, lsr #4
	cmp	r0, #33
	bhs	.LBB0_70
	b	.LBB0_69
.LBB0_69:
	mov	r1, r0
	b	.LBB0_72
.LBB0_70:                               @ %if.end.i.i121
	mov	r1, #63
	cmp	r0, #7168
	bhi	.LBB0_72
	b	.LBB0_71
.LBB0_71:                               @ %if.end3.i.i
	bl	__aeabi_i2f
	ldr	r1, .LCPI0_12
	add	r1, r1, r0, lsr #21
	b	.LBB0_72
.LCPI0_12:
	.long	4294966800              @ 0xfffffe10
.LBB0_72:                               @ %bin_index.exit.i
	cmp	r1, r9
	bne	.LBB0_77
	b	.LBB0_73
.LBB0_73:                               @ %pretrim.exit
	ldr	r0, [r6, #12]
	orr	r1, r11, #12
	str	r0, [r6, r1]
	orr	r1, r11, #8
	b	.LBB0_74
.LBB0_74:                               @ %pretrim.exit
	ldr	r2, [r6, #8]
	str	r2, [r6, r1]
	add	r2, r6, r11
	str	r2, [r0, #8]
	b	.LBB0_75
.LBB0_75:                               @ %pretrim.exit
	ldr	r0, [r6, r1]
	orr	r1, r11, #4
	str	r2, [r0, #12]
	orr	r0, r11, #1
	b	.LBB0_76
.LBB0_76:                               @ %pretrim.exit
	str	r0, [r6, r11]
	str	r8, [r6, r1]
	bic	r1, r7, #1
	str	r8, [r6, r1]
	str	r0, [r6, #4]
	b	.LBB0_85
.LBB0_77:                               @ %if.then52
	ldr	r1, [r6, #8]
	ldr	r0, [r6, #12]
	cmp	r0, r1
	bne	.LBB0_83
	b	.LBB0_78
.LBB0_78:                               @ %if.then.i131
	mov	r0, #1
	rsb	r1, r9, #32
	sub	r2, r9, #32
	lsr	r1, r0, r1
	b	.LBB0_79
.LBB0_79:                               @ %if.then.i131
	cmp	r2, #0
	mvn	r7, r0, lsl r9
	lslge	r1, r0, r2
	mvn	r8, r1
	b	.LBB0_80
.LBB0_80:                               @ %do.body.i.i.i135
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r5
	ldr	r0, [r2, #16]!
	and	r1, r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_80
	b	.LBB0_81
.LBB0_81:                               @ %do.body.i4.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r5
	ldr	r0, [r2, #20]!
	and	r1, r0, r8
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_81
	b	.LBB0_82
.LBB0_82:                               @ %if.end.loopexit.i
	ldr	r7, [r6, #4]
	ldr	r1, [r6, #8]
	ldr	r0, [r6, #12]
	b	.LBB0_83
.LBB0_83:                               @ %unbin.exit
	str	r1, [r0, #8]
	ldr	r1, [r6, #8]
	str	r0, [r1, #12]
	orr	r0, r7, #1
	b	.LBB0_84
.LBB0_84:                               @ %unbin.exit
	str	r0, [r6, #4]
	bic	r0, r7, #1
	ldr	r1, [r6, r0]
	orr	r1, r1, #1
	str	r1, [r6, r0]
	b	.LBB0_85
.LBB0_85:                               @ %if.end53
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_55
	b	.LBB0_86
.LBB0_86:                               @ %if.then.i.i144
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r4]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r10, #28]
	cmp	r0, #0
	beq	.LBB0_55
	b	.LBB0_87
.LBB0_87:                               @ %if.then3.i.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_55
	b	.LBB0_88
.LBB0_88:                               @ %lor.rhs.i.i.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_55
.Ltmp0:
	.size	malloc, .Ltmp0-malloc
	.cantunwind
	.fnend

	.align	2
	.type	expand_heap,%function
expand_heap:                            @ @expand_heap
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r8, r0
	ldr	r0, .LCPI1_0
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB1_7
	b	.LBB1_3
.LCPI1_0:
	.long	__libc
.LBB1_3:
	ldr	r4, .LCPI1_3
	add	r0, r4, #24
	add	r5, r0, #1024
	add	r0, r4, #28
	add	r6, r0, #1024
	b	.LBB1_5
.LCPI1_3:
	.long	_MergedGlobals
.LBB1_4:                                @ %while.body.i
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB1_5
.LBB1_5:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r4
	mov	r1, #1
	ldr	r7, [r2, #1048]!
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_5
	b	.LBB1_6
.LBB1_6:                                @ %a_swap.exit.i
                                        @   in Loop: Header=BB1_5 Depth=1
	cmp	r7, #0
	bne	.LBB1_4
	b	.LBB1_7
.LBB1_7:                                @ %lock.exit
	ldr	r5, .LCPI1_4
	mvn	r1, #8192
	ldr	r0, [r5, #8]
	sub	r1, r1, r0
	cmp	r1, r8
	blo	.LBB1_29
	b	.LBB1_8
.LCPI1_4:
	.long	_MergedGlobals
.LBB1_8:                                @ %if.end
	ldr	r2, .LCPI1_5
	add	r1, r8, r0
	add	r1, r1, #15
	add	r1, r1, #4096
	b	.LBB1_9
.LCPI1_5:
	.long	4294963200              @ 0xfffff000
.LBB1_9:                                @ %if.end
	and	r4, r1, r2
	sub	r6, r4, r0
	mov	r0, r4
	bl	__brk
	cmp	r0, r4
	bne	.LBB1_16
	b	.LBB1_10
.LBB1_10:                               @ %if.end26
	orr	r0, r6, #1
	mov	r1, #1
	stmdb	r4, {r0, r1}
	ldr	r1, [r5, #8]
	b	.LBB1_11
.LBB1_11:                               @ %if.end26
	str	r0, [r1, #-4]
	str	r4, [r5, #8]
	sub	r3, r1, #8
	ldr	r0, [r5, #1048]
	cmp	r0, #0
	beq	.LBB1_35
	b	.LBB1_12
.LBB1_12:                               @ %if.then.i66
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5, #1048]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #1052]
	cmp	r0, #0
	beq	.LBB1_35
	b	.LBB1_13
.LBB1_13:                               @ %if.then3.i68
	add	r0, r5, #24
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	b	.LBB1_14
.LBB1_14:                               @ %if.then3.i68
	add	r6, r0, #1024
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_35
	b	.LBB1_15
.LBB1_15:                               @ %lor.rhs.i.i69
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_35
.LBB1_16:                               @ %if.then7
	ldr	r0, [r5, #1064]
	mov	r1, #0
	mov	r2, #255
	mov	r3, #34
	b	.LBB1_17
.LBB1_17:                               @ %if.then7
	str	r1, [sp, #8]
	str	r1, [sp, #12]
	mvn	r1, #0
	orr	r2, r2, #3840
	b	.LBB1_18
.LBB1_18:                               @ %if.then7
	str	r1, [sp]
	rsb	r1, r6, #0
	and	r1, r1, r2
	mov	r2, #3
	b	.LBB1_19
.LBB1_19:                               @ %if.then7
	add	r4, r1, r6
	lsr	r0, r0, #1
	mov	r1, #4096
	cmp	r4, r1, lsl r0
	b	.LBB1_20
.LBB1_20:                               @ %if.then7
	lsllo	r4, r1, r0
	mov	r0, #0
	mov	r1, r4
	bl	__mmap
	cmn	r0, #1
	beq	.LBB1_29
	b	.LBB1_21
.LBB1_21:                               @ %if.end17
	ldr	r1, [r5, #1064]
	sub	r2, r4, #16
	sub	r7, r4, #8
	mov	r3, r0
	b	.LBB1_22
.LBB1_22:                               @ %if.end17
	orr	r2, r2, #1
	bic	r7, r7, #1
	add	r1, r1, #1
	str	r1, [r5, #1064]
	b	.LBB1_23
.LBB1_23:                               @ %if.end17
	mov	r1, #1
	str	r1, [r3, #8]!
	str	r2, [r0, #12]
	str	r2, [r0, r7]!
	b	.LBB1_24
.LBB1_24:                               @ %if.end17
	str	r1, [r0, #4]
	ldr	r0, [r5, #1048]
	cmp	r0, #0
	beq	.LBB1_35
	b	.LBB1_25
.LBB1_25:                               @ %if.then.i
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5, #1048]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #1052]
	cmp	r0, #0
	beq	.LBB1_35
	b	.LBB1_26
.LBB1_26:                               @ %if.then3.i
	add	r0, r5, #24
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	b	.LBB1_27
.LBB1_27:                               @ %if.then3.i
	add	r6, r0, #1024
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_35
	b	.LBB1_28
.LBB1_28:                               @ %lor.rhs.i.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_35
.LBB1_29:                               @ %fail
	ldr	r0, [r5, #1048]
	cmp	r0, #0
	beq	.LBB1_34
	b	.LBB1_30
.LBB1_30:                               @ %if.then.i73
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5, #1048]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #1052]
	cmp	r0, #0
	beq	.LBB1_34
	b	.LBB1_31
.LBB1_31:                               @ %if.then3.i75
	add	r0, r5, #24
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	b	.LBB1_32
.LBB1_32:                               @ %if.then3.i75
	add	r3, r0, #1024
	mov	r0, r3
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_34
	b	.LBB1_33
.LBB1_33:                               @ %lor.rhs.i.i76
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_34
.LBB1_34:                               @ %unlock.exit77
	bl	__errno_location
	mov	r1, #12
	mov	r3, #0
	str	r1, [r0]
	b	.LBB1_35
.LBB1_35:                               @ %return
	mov	r0, r3
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	expand_heap, .Ltmp1-expand_heap
	.cantunwind
	.fnend

	.align	2
	.type	alloc_rev,%function
alloc_rev:                              @ @alloc_rev
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r9, r0
	mov	r3, #0
	ldr	r10, [r9]
	tst	r10, #1
	bne	.LBB2_35
	b	.LBB2_4
.LBB2_4:
	ldr	r8, .LCPI2_3
	b	.LBB2_5
.LCPI2_3:
	.long	_MergedGlobals
.LBB2_5:                                @ %while.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_12 Depth 2
	mvn	r0, #0
	add	r0, r0, r10, lsr #4
	cmp	r0, #33
	bhs	.LBB2_7
	b	.LBB2_6
.LBB2_6:                                @   in Loop: Header=BB2_5 Depth=1
	mov	r11, r0
	b	.LBB2_9
.LBB2_7:                                @ %if.end.i
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r11, #63
	cmp	r0, #7168
	bhi	.LBB2_9
	b	.LBB2_8
.LBB2_8:                                @ %if.end3.i
                                        @   in Loop: Header=BB2_5 Depth=1
	bl	__aeabi_i2f
	ldr	r1, .LCPI2_0
	add	r11, r1, r0, lsr #21
	b	.LBB2_9
.LCPI2_0:
	.long	4294966800              @ 0xfffffe10
.LBB2_9:                                @ %bin_index.exit
                                        @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, .LCPI2_4
	add	r4, r8, r11, lsl #4
	add	r5, r4, #24
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB2_14
	b	.LBB2_10
.LCPI2_4:
	.long	__libc
.LBB2_10:                               @ %do.body.i.preheader.i.i
                                        @   in Loop: Header=BB2_5 Depth=1
	add	r6, r4, #28
	b	.LBB2_12
.LBB2_11:                               @ %while.body.i.i
                                        @   in Loop: Header=BB2_12 Depth=2
	mov	r0, r5
	mov	r1, r6
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB2_12
.LBB2_12:                               @ %do.body.i.i.i
                                        @   Parent Loop BB2_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r5]
	mov	r1, #1
	mov	r2, r5
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB2_12
	b	.LBB2_13
.LBB2_13:                               @ %a_swap.exit.i.i
                                        @   in Loop: Header=BB2_12 Depth=2
	cmp	r7, #0
	bne	.LBB2_11
	b	.LBB2_14
.LBB2_14:                               @ %lock.exit.i
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, r4
	ldr	r1, [r0, #32]!
	cmp	r1, #0
	subeq	r1, r0, #8
	b	.LBB2_15
.LBB2_15:                               @ %lock.exit.i
                                        @   in Loop: Header=BB2_5 Depth=1
	streq	r1, [r4, #36]
	streq	r1, [r0]
	ldr	r0, [r9]
	cmp	r0, r10
	beq	.LBB2_21
	b	.LBB2_16
.LBB2_16:                               @ %if.end
                                        @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB2_20
	b	.LBB2_17
.LBB2_17:                               @ %if.then.i.i
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r4, #28]
	cmp	r0, #0
	beq	.LBB2_20
	b	.LBB2_18
.LBB2_18:                               @ %if.then3.i.i
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB2_20
	b	.LBB2_19
.LBB2_19:                               @ %lor.rhs.i.i.i
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB2_20
.LBB2_20:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB2_5 Depth=1
	ldr	r10, [r9]
	mov	r3, #0
	tst	r10, #1
	beq	.LBB2_5
	b	.LBB2_35
.LBB2_21:                               @ %if.then
	bic	r6, r10, #1
	rsb	r2, r6, #8
	rsb	r3, r6, #12
	ldr	r1, [r9, r2]
	ldr	r0, [r9, r3]
	cmp	r0, r1
	bne	.LBB2_27
	b	.LBB2_22
.LBB2_22:                               @ %if.then.i15
	str	r2, [sp, #8]            @ 4-byte Spill
	mov	r0, #1
	rsb	r1, r11, #32
	sub	r2, r11, #32
	b	.LBB2_23
.LBB2_23:                               @ %if.then.i15
	str	r3, [sp, #4]            @ 4-byte Spill
	lsr	r1, r0, r1
	cmp	r2, #0
	mvn	r10, r0, lsl r11
	lslge	r1, r0, r2
	mvn	r7, r1
	b	.LBB2_24
.LBB2_24:                               @ %do.body.i.i.i18
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r8
	ldr	r0, [r2, #16]!
	and	r1, r0, r10
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB2_24
	b	.LBB2_25
.LBB2_25:                               @ %do.body.i4.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r8
	ldr	r0, [r2, #20]!
	and	r1, r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB2_25
	b	.LBB2_26
.LBB2_26:                               @ %if.end.loopexit.i
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r9, r0]
	ldr	r1, [r9, r2]
	b	.LBB2_27
.LBB2_27:                               @ %unbin.exit
	str	r1, [r0, #8]
	mov	r3, #1
	ldr	r1, [r9, r2]
	str	r0, [r1, #12]
	b	.LBB2_28
.LBB2_28:                               @ %unbin.exit
	rsb	r0, r6, #4
	ldr	r1, [r9, r0]
	orr	r2, r1, #1
	str	r2, [r9, r0]
	b	.LBB2_29
.LBB2_29:                               @ %unbin.exit
	bic	r0, r1, #1
	sub	r0, r0, r6
	ldr	r1, [r9, r0]
	orr	r1, r1, #1
	b	.LBB2_30
.LBB2_30:                               @ %unbin.exit
	str	r1, [r9, r0]
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB2_35
	b	.LBB2_31
.LBB2_31:                               @ %if.then.i.i24
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r4, #28]
	cmp	r0, #0
	beq	.LBB2_35
	b	.LBB2_32
.LBB2_32:                               @ %if.then3.i.i26
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	b	.LBB2_33
.LBB2_33:                               @ %if.then3.i.i26
	mov	r3, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB2_35
	b	.LBB2_34
.LBB2_34:                               @ %lor.rhs.i.i.i27
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB2_35
.LBB2_35:                               @ %return
	mov	r0, r3
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	alloc_rev, .Ltmp2-alloc_rev
	.cantunwind
	.fnend

	.globl	realloc
	.align	2
	.type	realloc,%function
realloc:                                @ @realloc
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.LBB3_2:                                @ %entry
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB3_6
	b	.LBB3_3
.LBB3_3:                                @ %if.end
	ldr	r2, .LCPI3_0
	sub	r0, r1, #1
	cmp	r0, r2
	blo	.LBB3_7
	b	.LBB3_4
.LCPI3_0:
	.long	2147479536              @ 0x7fffeff0
.LBB3_4:                                @ %if.then.i
	mov	r5, #16
	cmp	r1, #0
	beq	.LBB3_8
	b	.LBB3_5
.LBB3_5:                                @ %adjust_size.exit
	bl	__errno_location
	mov	r1, #12
	mov	r7, #0
	str	r1, [r0]
	b	.LBB3_32
.LBB3_6:                                @ %if.then
	mov	r0, r1
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	malloc
.LBB3_7:                                @ %if.end.i
	add	r0, r1, #23
	bic	r5, r0, #15
	b	.LBB3_8
.LBB3_8:                                @ %if.end3
	ldr	r0, [r4, #-4]
	bic	r6, r0, #1
	tst	r0, #1
	beq	.LBB3_16
	b	.LBB3_9
.LBB3_9:                                @ %if.end35
	sub	r8, r6, #8
	mov	r7, r4
	ldr	r1, [r7, r8]!
	cmp	r1, r0
	b	.LBB3_10
.LBB3_10:                               @ %if.end35
	movne	r0, #0
	strbne	r0, [r0]
	cmp	r5, r6
	bls	.LBB3_13
	b	.LBB3_11
.LBB3_11:                               @ %land.lhs.true45
	mov	r0, r7
	bl	alloc_fwd
	cmp	r0, #0
	beq	.LBB3_13
	b	.LBB3_12
.LBB3_12:                               @ %if.then48
	add	r0, r6, r4
	ldr	r0, [r0, #-4]
	bic	r0, r0, #1
	add	r6, r0, r6
	add	r0, r0, r8
	add	r7, r4, r0
	b	.LBB3_13
.LBB3_13:                               @ %if.end55
	orr	r0, r6, #1
	cmp	r5, r6
	str	r0, [r4, #-4]
	str	r0, [r7]
	bls	.LBB3_20
	b	.LBB3_14
.LBB3_14:                               @ %if.end62
	sub	r0, r5, #8
	bl	malloc
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB3_32
	b	.LBB3_15
.LBB3_15:                               @ %if.end67
	mov	r0, r5
	mov	r1, r4
	mov	r2, r8
	bl	memcpy
	mov	r0, r4
	bl	free
	mov	r7, r5
	b	.LBB3_32
.LBB3_16:                               @ %if.then7
	ldr	r8, [r4, #-8]
	tst	r8, #1
	add	r9, r8, r5
	movne	r0, #0
	b	.LBB3_17
.LBB3_17:                               @ %if.then7
	strbne	r0, [r0]
	mov	r0, #0
	cmp	r0, r9, lsr #12
	bne	.LBB3_25
	b	.LBB3_18
.LBB3_18:                               @ %land.lhs.true
	mov	r0, r5
	bl	malloc
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB3_25
	b	.LBB3_19
.LBB3_19:                               @ %if.then17
	sub	r2, r5, #8
	mov	r0, r7
	mov	r1, r4
	bl	memcpy
	mov	r0, r4
	bl	free
	b	.LBB3_32
.LBB3_20:                               @ %if.then60
	ldr	r0, [r4, #-4]
	bic	r0, r0, #1
	sub	r1, r0, #16
	cmp	r1, r5
	bls	.LBB3_27
	b	.LBB3_21
.LBB3_21:                               @ %if.end.i122
	add	r1, r5, r4
	orr	r2, r5, #1
	sub	r3, r0, r5
	add	r0, r0, r4
	b	.LBB3_22
.LBB3_22:                               @ %if.end.i122
	str	r2, [r1, #-8]
	orr	r1, r5, #4
	orr	r3, r3, #1
	add	r1, r1, r4
	b	.LBB3_23
.LBB3_23:                               @ %if.end.i122
	str	r3, [r1, #-8]
	str	r3, [r0, #-8]
	orr	r0, r5, #8
	str	r2, [r4, #-4]
	b	.LBB3_24
.LBB3_24:                               @ %if.end.i122
	add	r0, r0, r4
	sub	r0, r0, #8
	bl	free
	mov	r7, r4
	b	.LBB3_32
.LBB3_25:                               @ %if.end19
	ldr	r1, .LCPI3_2
	add	r0, r9, #255
	add	r5, r8, r6
	add	r0, r0, #3840
	and	r6, r0, r1
	cmp	r5, r6
	bne	.LBB3_28
	b	.LBB3_26
.LCPI3_2:
	.long	4294963200              @ 0xfffff000
.LBB3_26:
	mov	r7, r4
	b	.LBB3_32
.LBB3_27:
	mov	r7, r4
	b	.LBB3_32
.LBB3_28:                               @ %if.end25
	mvn	r0, #7
	mov	r1, r5
	mov	r2, r6
	mov	r3, #1
	b	.LBB3_29
.LBB3_29:                               @ %if.end25
	sub	r0, r0, r8
	add	r0, r4, r0
	bl	__mremap
	cmn	r0, #1
	beq	.LBB3_31
	b	.LBB3_30
.LBB3_30:                               @ %if.end30
	add	r0, r8, r0
	sub	r1, r6, r8
	str	r1, [r0, #4]
	add	r7, r0, #8
	b	.LBB3_32
.LBB3_31:                               @ %if.then28
	cmp	r6, r5
	movhs	r4, #0
	mov	r7, r4
	b	.LBB3_32
.LBB3_32:                               @ %return
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	realloc, .Ltmp3-realloc
	.cantunwind
	.fnend

	.globl	free
	.align	2
	.type	free,%function
free:                                   @ @free
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.LBB4_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	cmp	r0, #0
	beq	.LBB4_68
	b	.LBB4_3
.LBB4_3:                                @ %if.end
	ldr	r1, [r0, #-4]
	tst	r1, #1
	beq	.LBB4_69
	b	.LBB4_4
.LBB4_4:                                @ %if.end10
	bic	r11, r1, #1
	sub	r9, r0, #8
	mov	r4, #0
	add	r8, r11, r0
	b	.LBB4_5
.LBB4_5:                                @ %if.end10
	str	r11, [sp, #8]           @ 4-byte Spill
	ldr	r0, [r8, #-8]!
	cmp	r0, r1
	strbne	r4, [r4]
	str	r11, [sp, #24]          @ 4-byte Spill
	b	.LBB4_10
.LBB4_6:                                @ %if.then73
                                        @   in Loop: Header=BB4_10 Depth=1
	ldr	r0, [r8, #4]
	mov	r3, #0
	bic	r0, r0, #1
	add	r1, r0, r11
	b	.LBB4_7
.LBB4_7:                                @ %if.then73
                                        @   in Loop: Header=BB4_10 Depth=1
	add	r8, r8, r0
	eor	r2, r1, r0
	cmp	r2, r0
	mov	r2, #0
	b	.LBB4_8
.LBB4_8:                                @ %if.then73
                                        @   in Loop: Header=BB4_10 Depth=1
	movhi	r2, #1
	cmp	r1, #163840
	ldr	r1, [sp, #24]           @ 4-byte Reload
	movhi	r3, #1
	b	.LBB4_9
.LBB4_9:                                @ %if.then73
                                        @   in Loop: Header=BB4_10 Depth=1
	tst	r3, r2
	movne	r4, #1
	add	r1, r0, r1
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB4_10
.LBB4_10:                               @ %for.cond.outer
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_11 Depth 2
                                        @       Child Loop BB4_25 Depth 3
                                        @       Child Loop BB4_31 Depth 3
	ldr	r1, .LCPI4_4
	ldr	r5, .LCPI4_7
	sub	r0, r8, #16
	and	r0, r0, r1
	str	r0, [sp, #4]            @ 4-byte Spill
	add	r0, r5, #36
	add	r10, r0, #1024
	b	.LBB4_11
.LCPI4_4:
	.long	4294963200              @ 0xfffff000
.LCPI4_7:
	.long	_MergedGlobals
.LBB4_11:                               @ %for.cond
                                        @   Parent Loop BB4_10 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB4_25 Depth 3
                                        @       Child Loop BB4_31 Depth 3
	cmp	r4, #0
	beq	.LBB4_15
	b	.LBB4_12
.LBB4_12:                               @ %land.lhs.true
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, [r8, #4]
	ldr	r1, [r9]
	and	r0, r1, r0
	tst	r0, #1
	beq	.LBB4_15
	b	.LBB4_13
.LBB4_13:                               @ %if.then26
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r1, .LCPI4_5
	mov	r0, #15
	mov	r2, #4
	orr	r0, r0, #4096
	b	.LBB4_14
.LCPI4_5:
	.long	4294963200              @ 0xfffff000
.LBB4_14:                               @ %if.then26
                                        @   in Loop: Header=BB4_11 Depth=2
	add	r0, r9, r0
	and	r0, r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	sub	r1, r1, r0
	bl	__madvise
	b	.LBB4_15
.LBB4_15:                               @ %if.end34
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, [r8, #4]
	ldr	r1, [r9]
	and	r0, r1, r0
	tst	r0, #1
	beq	.LBB4_44
	b	.LBB4_16
.LBB4_16:                               @ %if.then40
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r1, [sp, #24]           @ 4-byte Reload
	orr	r0, r1, #1
	str	r0, [r9, #4]
	str	r0, [r8]
	b	.LBB4_17
.LBB4_17:                               @ %if.then40
                                        @   in Loop: Header=BB4_11 Depth=2
	mvn	r0, #0
	add	r0, r0, r1, lsr #4
	cmp	r0, #33
	bhs	.LBB4_19
	b	.LBB4_18
.LBB4_18:                               @   in Loop: Header=BB4_11 Depth=2
	mov	r1, r0
	b	.LBB4_21
.LBB4_19:                               @ %if.end.i
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r1, #63
	cmp	r0, #7168
	bhi	.LBB4_21
	b	.LBB4_20
.LBB4_20:                               @ %if.end3.i
                                        @   in Loop: Header=BB4_11 Depth=2
	bl	__aeabi_i2f
	ldr	r1, .LCPI4_6
	add	r1, r1, r0, lsr #21
	b	.LBB4_21
.LCPI4_6:
	.long	4294966800              @ 0xfffffe10
.LBB4_21:                               @ %bin_index.exit
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, .LCPI4_8
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r4, [sp, #16]           @ 4-byte Spill
	add	r11, r5, r1, lsl #4
	b	.LBB4_22
.LCPI4_8:
	.long	__libc
.LBB4_22:                               @ %bin_index.exit
                                        @   in Loop: Header=BB4_11 Depth=2
	add	r6, r11, #24
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB4_27
	b	.LBB4_23
.LBB4_23:                               @ %do.body.i.preheader.i.i
                                        @   in Loop: Header=BB4_11 Depth=2
	add	r7, r11, #28
	b	.LBB4_25
.LBB4_24:                               @ %while.body.i.i
                                        @   in Loop: Header=BB4_25 Depth=3
	mov	r0, r6
	mov	r1, r7
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB4_25
.LBB4_25:                               @ %do.body.i.i.i
                                        @   Parent Loop BB4_10 Depth=1
                                        @     Parent Loop BB4_11 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r4, [r6]
	mov	r1, #1
	mov	r2, r6
	mov	r0, r4
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB4_25
	b	.LBB4_26
.LBB4_26:                               @ %a_swap.exit.i.i
                                        @   in Loop: Header=BB4_25 Depth=3
	cmp	r4, #0
	bne	.LBB4_24
	b	.LBB4_27
.LBB4_27:                               @ %lock.exit.i
                                        @   in Loop: Header=BB4_11 Depth=2
	str	r11, [sp, #20]          @ 4-byte Spill
	ldr	r0, [r11, #32]!
	cmp	r0, #0
	bne	.LBB4_29
	b	.LBB4_28
.LBB4_28:                               @ %if.then.i
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r1, [sp, #20]           @ 4-byte Reload
	sub	r0, r11, #8
	str	r0, [r1, #36]
	str	r0, [r11]
	b	.LBB4_29
.LBB4_29:                               @ %lock_bin.exit
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, .LCPI4_9
	ldr	r0, [r0, #20]
	cmp	r0, #0
	bne	.LBB4_31
	b	.LBB4_33
.LCPI4_9:
	.long	__libc
.LBB4_30:                               @ %while.body.i
                                        @   in Loop: Header=BB4_31 Depth=3
	add	r0, r5, #1056
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB4_31
.LBB4_31:                               @ %do.body.i.i
                                        @   Parent Loop BB4_10 Depth=1
                                        @     Parent Loop BB4_11 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r2, r5
	mov	r1, #1
	ldr	r4, [r2, #1056]!
	mov	r0, r4
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB4_31
	b	.LBB4_32
.LBB4_32:                               @ %a_swap.exit.i
                                        @   in Loop: Header=BB4_31 Depth=3
	cmp	r4, #0
	bne	.LBB4_30
	b	.LBB4_33
.LBB4_33:                               @ %lock.exit
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, [r8, #4]
	ldr	r1, [r9]
	and	r0, r1, r0
	tst	r0, #1
	bne	.LBB4_50
	b	.LBB4_34
.LBB4_34:                               @ %if.end51
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, [r5, #1056]
	cmp	r0, #0
	beq	.LBB4_39
	b	.LBB4_35
.LBB4_35:                               @ %if.then.i174
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5, #1056]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #1060]
	cmp	r0, #0
	beq	.LBB4_39
	b	.LBB4_36
.LBB4_36:                               @ %if.then3.i
                                        @   in Loop: Header=BB4_11 Depth=2
	add	r3, r5, #1056
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	b	.LBB4_37
.LBB4_37:                               @ %if.then3.i
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r0, r3
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB4_39
	b	.LBB4_38
.LBB4_38:                               @ %lor.rhs.i.i
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB4_39
.LBB4_39:                               @ %unlock.exit
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, [r6]
	ldr	r11, [sp, #8]           @ 4-byte Reload
	ldr	r4, [sp, #16]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB4_44
	b	.LBB4_40
.LBB4_40:                               @ %if.then.i.i179
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r6]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB4_41
.LBB4_41:                               @ %if.then.i.i179
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r0, [r0, #28]
	cmp	r0, #0
	beq	.LBB4_44
	b	.LBB4_42
.LBB4_42:                               @ %if.then3.i.i181
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r7, #240
	mov	r0, r6
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB4_44
	b	.LBB4_43
.LBB4_43:                               @ %lor.rhs.i.i.i182
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB4_44
.LBB4_44:                               @ %if.end52
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r0, r9
	bl	alloc_rev
	cmp	r0, #0
	beq	.LBB4_49
	b	.LBB4_45
.LBB4_45:                               @ %if.then55
                                        @   in Loop: Header=BB4_11 Depth=2
	ldr	r0, [r9]
	bic	r0, r0, #1
	rsb	r1, r0, #4
	ldr	r1, [r9, r1]
	b	.LBB4_46
.LBB4_46:                               @ %if.then55
                                        @   in Loop: Header=BB4_11 Depth=2
	sub	r9, r9, r0
	ldr	r0, [sp, #24]           @ 4-byte Reload
	bic	r1, r1, #1
	add	r2, r1, r11
	b	.LBB4_47
.LBB4_47:                               @ %if.then55
                                        @   in Loop: Header=BB4_11 Depth=2
	add	r0, r1, r0
	eor	r3, r2, r1
	str	r0, [sp, #24]           @ 4-byte Spill
	cmp	r3, r1
	b	.LBB4_48
.LBB4_48:                               @ %if.then55
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r3, #0
	movhi	r3, #1
	cmp	r2, #163840
	mov	r2, #0
	movhi	r2, #1
	tst	r2, r3
	movne	r4, #1
	b	.LBB4_49
.LBB4_49:                               @ %if.end70
                                        @   in Loop: Header=BB4_11 Depth=2
	mov	r0, r8
	bl	alloc_fwd
	cmp	r0, #0
	beq	.LBB4_11
	b	.LBB4_6
.LBB4_50:                               @ %for.end
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [r9, #4]
	str	r0, [r8]
	ldr	r0, [r5, #1056]
	cmp	r0, #0
	beq	.LBB4_55
	b	.LBB4_51
.LBB4_51:                               @ %if.then.i186
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5, #1056]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #1060]
	cmp	r0, #0
	beq	.LBB4_55
	b	.LBB4_52
.LBB4_52:                               @ %if.then3.i188
	add	r3, r5, #1056
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	b	.LBB4_53
.LBB4_53:                               @ %if.then3.i188
	mov	r0, r3
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB4_55
	b	.LBB4_54
.LBB4_54:                               @ %lor.rhs.i.i189
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB4_55
.LBB4_55:                               @ %unlock.exit190
	sub	r0, r11, #8
	ldr	r7, [sp, #12]           @ 4-byte Reload
	str	r0, [r9, #8]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	b	.LBB4_56
.LBB4_56:                               @ %unlock.exit190
	rsb	r3, r7, #32
	ldr	r0, [r0, #36]
	str	r0, [r9, #12]
	str	r9, [r11, #4]
	b	.LBB4_57
.LBB4_57:                               @ %unlock.exit190
	ldr	r0, [r9, #12]
	str	r9, [r0, #8]
	mov	r0, #1
	ldr	r1, [r5, #16]
	b	.LBB4_58
.LBB4_58:                               @ %unlock.exit190
	ldr	r2, [r5, #20]
	lsr	r4, r0, r3
	sub	r3, r7, #32
	cmp	r3, #0
	b	.LBB4_59
.LBB4_59:                               @ %unlock.exit190
	lslge	r4, r0, r3
	and	r1, r1, r0, lsl r7
	and	r2, r2, r4
	orrs	r1, r1, r2
	bne	.LBB4_63
	b	.LBB4_60
.LBB4_60:                               @ %if.then100
	lsl	r7, r0, r7
	b	.LBB4_61
.LBB4_61:                               @ %do.body.i.i193
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r5
	ldr	r0, [r2, #16]!
	orr	r1, r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB4_61
	b	.LBB4_62
.LBB4_62:                               @ %do.body.i4.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r5
	ldr	r0, [r2, #20]!
	orr	r1, r0, r4
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB4_62
	b	.LBB4_63
.LBB4_63:                               @ %if.end103
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.LBB4_68
	b	.LBB4_64
.LBB4_64:                               @ %if.then.i.i
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r6]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB4_65
.LBB4_65:                               @ %if.then.i.i
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r0, [r0, #28]
	cmp	r0, #0
	beq	.LBB4_68
	b	.LBB4_66
.LBB4_66:                               @ %if.then3.i.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB4_68
	b	.LBB4_67
.LBB4_67:                               @ %lor.rhs.i.i.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB4_68
.LBB4_68:                               @ %return
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB4_69:                               @ %if.then2
	ldr	r2, [r0, #-8]
	bic	r1, r1, #1
	mvn	r3, #7
	tst	r2, #1
	b	.LBB4_70
.LBB4_70:                               @ %if.then2
	sub	r3, r3, r2
	add	r1, r2, r1
	movne	r2, #0
	add	r0, r0, r3
	strbne	r2, [r2]
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	__munmap
.Ltmp4:
	.size	free, .Ltmp4-free
	.cantunwind
	.fnend

	.align	2
	.type	alloc_fwd,%function
alloc_fwd:                              @ @alloc_fwd
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	b	.LBB5_2
.LBB5_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB5_3
.LBB5_3:                                @ %entry
	mov	r9, r0
	mov	r3, #0
	ldr	r4, [r9, #4]
	tst	r4, #1
	bne	.LBB5_34
	b	.LBB5_4
.LBB5_4:
	ldr	r8, .LCPI5_3
	b	.LBB5_5
.LCPI5_3:
	.long	_MergedGlobals
.LBB5_5:                                @ %while.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_12 Depth 2
	mvn	r0, #0
	add	r0, r0, r4, lsr #4
	cmp	r0, #33
	bhs	.LBB5_7
	b	.LBB5_6
.LBB5_6:                                @   in Loop: Header=BB5_5 Depth=1
	mov	r11, r0
	b	.LBB5_9
.LBB5_7:                                @ %if.end.i
                                        @   in Loop: Header=BB5_5 Depth=1
	mov	r11, #63
	cmp	r0, #7168
	bhi	.LBB5_9
	b	.LBB5_8
.LBB5_8:                                @ %if.end3.i
                                        @   in Loop: Header=BB5_5 Depth=1
	bl	__aeabi_i2f
	ldr	r1, .LCPI5_0
	add	r11, r1, r0, lsr #21
	b	.LBB5_9
.LCPI5_0:
	.long	4294966800              @ 0xfffffe10
.LBB5_9:                                @ %bin_index.exit
                                        @   in Loop: Header=BB5_5 Depth=1
	ldr	r0, .LCPI5_4
	add	r10, r8, r11, lsl #4
	add	r5, r10, #24
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB5_14
	b	.LBB5_10
.LCPI5_4:
	.long	__libc
.LBB5_10:                               @ %do.body.i.preheader.i.i
                                        @   in Loop: Header=BB5_5 Depth=1
	add	r6, r10, #28
	b	.LBB5_12
.LBB5_11:                               @ %while.body.i.i
                                        @   in Loop: Header=BB5_12 Depth=2
	mov	r0, r5
	mov	r1, r6
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB5_12
.LBB5_12:                               @ %do.body.i.i.i
                                        @   Parent Loop BB5_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r5]
	mov	r1, #1
	mov	r2, r5
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB5_12
	b	.LBB5_13
.LBB5_13:                               @ %a_swap.exit.i.i
                                        @   in Loop: Header=BB5_12 Depth=2
	cmp	r7, #0
	bne	.LBB5_11
	b	.LBB5_14
.LBB5_14:                               @ %lock.exit.i
                                        @   in Loop: Header=BB5_5 Depth=1
	mov	r0, r10
	ldr	r1, [r0, #32]!
	cmp	r1, #0
	subeq	r1, r0, #8
	b	.LBB5_15
.LBB5_15:                               @ %lock.exit.i
                                        @   in Loop: Header=BB5_5 Depth=1
	streq	r1, [r10, #36]
	streq	r1, [r0]
	ldr	r0, [r9, #4]
	cmp	r0, r4
	beq	.LBB5_21
	b	.LBB5_16
.LBB5_16:                               @ %if.end
                                        @   in Loop: Header=BB5_5 Depth=1
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB5_20
	b	.LBB5_17
.LBB5_17:                               @ %if.then.i.i
                                        @   in Loop: Header=BB5_5 Depth=1
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r10, #28]
	cmp	r0, #0
	beq	.LBB5_20
	b	.LBB5_18
.LBB5_18:                               @ %if.then3.i.i
                                        @   in Loop: Header=BB5_5 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB5_20
	b	.LBB5_19
.LBB5_19:                               @ %lor.rhs.i.i.i
                                        @   in Loop: Header=BB5_5 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB5_20
.LBB5_20:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB5_5 Depth=1
	ldr	r4, [r9, #4]
	mov	r3, #0
	tst	r4, #1
	beq	.LBB5_5
	b	.LBB5_34
.LBB5_21:                               @ %if.then
	ldr	r1, [r9, #8]
	ldr	r0, [r9, #12]
	cmp	r0, r1
	bne	.LBB5_27
	b	.LBB5_22
.LBB5_22:                               @ %if.then.i12
	mov	r0, #1
	rsb	r1, r11, #32
	sub	r2, r11, #32
	lsr	r1, r0, r1
	b	.LBB5_23
.LBB5_23:                               @ %if.then.i12
	cmp	r2, #0
	mvn	r6, r0, lsl r11
	lslge	r1, r0, r2
	mvn	r4, r1
	b	.LBB5_24
.LBB5_24:                               @ %do.body.i.i.i15
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r8
	ldr	r0, [r2, #16]!
	and	r1, r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB5_24
	b	.LBB5_25
.LBB5_25:                               @ %do.body.i4.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r8
	ldr	r0, [r2, #20]!
	and	r1, r0, r4
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB5_25
	b	.LBB5_26
.LBB5_26:                               @ %if.end.loopexit.i
	ldr	r4, [r9, #4]
	ldr	r1, [r9, #8]
	ldr	r0, [r9, #12]
	b	.LBB5_27
.LBB5_27:                               @ %unbin.exit
	str	r1, [r0, #8]
	mov	r3, #1
	ldr	r1, [r9, #8]
	str	r0, [r1, #12]
	b	.LBB5_28
.LBB5_28:                               @ %unbin.exit
	orr	r0, r4, #1
	str	r0, [r9, #4]
	bic	r0, r4, #1
	ldr	r1, [r9, r0]
	b	.LBB5_29
.LBB5_29:                               @ %unbin.exit
	orr	r1, r1, #1
	str	r1, [r9, r0]
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB5_34
	b	.LBB5_30
.LBB5_30:                               @ %if.then.i.i21
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r10, #28]
	cmp	r0, #0
	beq	.LBB5_34
	b	.LBB5_31
.LBB5_31:                               @ %if.then3.i.i23
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	b	.LBB5_32
.LBB5_32:                               @ %if.then3.i.i23
	mov	r3, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB5_34
	b	.LBB5_33
.LBB5_33:                               @ %lor.rhs.i.i.i24
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB5_34
.LBB5_34:                               @ %return
	mov	r0, r3
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	alloc_fwd, .Ltmp5-alloc_fwd
	.cantunwind
	.fnend

	.type	a_ctz_l.debruijn32,%object @ @a_ctz_l.debruijn32
	.section	.rodata,"a",%progbits
a_ctz_l.debruijn32:
	.ascii	"\000\001\027\002\035\030\023\003\036\033\031\013\024\b\004\r\037\026\034\022\032\n\007\f\025\021\t\006\020\005\017\016"
	.size	a_ctz_l.debruijn32, 32

	.hidden	__libc
	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,1072,16
	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
