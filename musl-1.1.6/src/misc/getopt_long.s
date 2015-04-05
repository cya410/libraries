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
	.file	"src/misc/getopt_long.bc"
	.globl	getopt_long
	.align	2
	.type	getopt_long,%function
getopt_long:                            @ @getopt_long
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #0
	str	r12, [sp, #4]
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r12, [sp, #16]
	str	r12, [sp]
	bl	__getopt_long
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getopt_long, .Ltmp0-getopt_long
	.cantunwind
	.fnend

	.align	2
	.type	__getopt_long,%function
__getopt_long:                          @ @__getopt_long
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB1_3
.LBB1_3:                                @ %entry
	ldr	r11, .LCPI1_11
	ldr	r5, .LCPI1_10
	ldr	r7, [r11]
	cmp	r7, #0
	beq	.LBB1_5
	b	.LBB1_4
.LCPI1_10:
	.long	__optreset
.LCPI1_11:
	.long	optind
.LBB1_4:                                @ %entry
	ldr	r6, [r5]
	cmp	r6, #0
	beq	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %if.then
	ldr	r6, .LCPI1_14
	mov	r7, #0
	str	r7, [r5]
	str	r7, [r6]
	mov	r7, #1
	str	r7, [r11]
	b	.LBB1_6
.LCPI1_14:
	.long	__optpos
.LBB1_6:                                @ %if.end
	mvn	r10, #0
	cmp	r7, r0
	bge	.LBB1_56
	b	.LBB1_7
.LBB1_7:                                @ %lor.lhs.false2
	ldr	r8, [r1, r7, lsl #2]
	str	r1, [sp, #24]           @ 4-byte Spill
	cmp	r8, #0
	beq	.LBB1_56
	b	.LBB1_8
.LBB1_8:                                @ %if.end5
	ldrb	r6, [r2]
	cmp	r6, #43
	cmpne	r6, #45
	bne	.LBB1_14
	b	.LBB1_9
.LBB1_9:
	mov	r9, r7
	b	.LBB1_10
.LBB1_10:                               @ %if.end33
	cmp	r3, #0
	beq	.LBB1_48
	b	.LBB1_11
.LBB1_11:                               @ %land.lhs.true.i
	ldrb	r6, [r8]
	cmp	r6, #45
	bne	.LBB1_48
	b	.LBB1_12
.LBB1_12:                               @ %land.lhs.true3.i
	mov	r1, r8
	ldr	r6, [sp, #68]
	ldrb	r10, [r1, #1]!
	cmp	r6, #0
	beq	.LBB1_20
	b	.LBB1_13
.LBB1_13:                               @ %land.lhs.true5.i
	cmp	r10, #0
	bne	.LBB1_22
	b	.LBB1_48
.LBB1_14:                               @ %lor.lhs.false16.preheader
	ldr	r1, [sp, #24]           @ 4-byte Reload
	add	r6, r7, #1
	b	.LBB1_16
.LBB1_15:                               @ %for.inc.lor.lhs.false16_crit_edge
                                        @   in Loop: Header=BB1_16 Depth=1
	ldr	r8, [r1, r6, lsl #2]
	add	r6, r6, #1
	b	.LBB1_16
.LBB1_16:                               @ %lor.lhs.false16
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r8, #0
	beq	.LBB1_56
	b	.LBB1_17
.LBB1_17:                               @ %if.end20
                                        @   in Loop: Header=BB1_16 Depth=1
	ldrb	r5, [r8]
	cmp	r5, #45
	bne	.LBB1_19
	b	.LBB1_18
.LBB1_18:                               @ %land.lhs.true26
                                        @   in Loop: Header=BB1_16 Depth=1
	ldrb	r5, [r8, #1]
	cmp	r5, #0
	bne	.LBB1_57
	b	.LBB1_19
.LBB1_19:                               @ %for.inc
                                        @   in Loop: Header=BB1_16 Depth=1
	cmp	r6, r0
	blt	.LBB1_15
	b	.LBB1_56
.LBB1_20:                               @ %lor.lhs.false.i
	cmp	r10, #45
	bne	.LBB1_48
	b	.LBB1_21
.LBB1_21:                               @ %land.lhs.true15.i
	ldrb	r6, [r8, #2]
	mov	r10, #45
	cmp	r6, #0
	beq	.LBB1_48
	b	.LBB1_22
.LBB1_22:                               @ %if.then.i
	mov	r6, r2
	str	r9, [sp, #16]           @ 4-byte Spill
	mov	lr, #0
	mov	r5, #0
	b	.LBB1_23
.LBB1_23:                               @ %if.then.i
	mov	r4, #0
	ldrb	r12, [r6], #1
	ldr	r9, [r3]
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB1_24
.LBB1_24:                               @ %if.then.i
	cmp	r12, #45
	moveq	lr, #1
	cmp	r12, #43
	moveq	r5, #1
	b	.LBB1_25
.LBB1_25:                               @ %if.then.i
	orrs	r5, r5, lr
	moveq	r6, r2
	cmp	r9, #0
	ldrb	r6, [r6]
	str	r6, [sp, #8]            @ 4-byte Spill
	beq	.LBB1_39
	b	.LBB1_26
.LBB1_26:                               @ %for.body.lr.ph.i
	cmp	r10, #45
	mov	r2, r1
	mov	r4, #0
	mov	r12, #0
	b	.LBB1_27
.LBB1_27:                               @ %for.body.lr.ph.i
                                        @ implicit-def: R6
	str	r10, [sp, #4]           @ 4-byte Spill
	str	r6, [sp, #20]           @ 4-byte Spill
	addeq	r2, r8, #2
	ldrb	r11, [r2]
	b	.LBB1_28
.LBB1_28:                               @ %for.body.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_31 Depth 2
	ldrb	r10, [r9]
	cmp	r10, #0
	beq	.LBB1_33
	b	.LBB1_29
.LBB1_29:                               @ %for.body.i
                                        @   in Loop: Header=BB1_28 Depth=1
	mov	lr, r11
	mov	r5, r2
	cmp	r10, r11
	bne	.LBB1_34
	b	.LBB1_30
.LBB1_30:                               @ %for.inc.i.preheader
                                        @   in Loop: Header=BB1_28 Depth=1
	add	r6, r9, #1
	mov	r5, r2
	b	.LBB1_31
.LBB1_31:                               @ %for.inc.i
                                        @   Parent Loop BB1_28 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r10, [r6], #1
	ldrb	lr, [r5, #1]!
	cmp	r10, #0
	beq	.LBB1_34
	b	.LBB1_32
.LBB1_32:                               @ %for.inc.i
                                        @   in Loop: Header=BB1_31 Depth=2
	cmp	r10, lr
	beq	.LBB1_31
	b	.LBB1_34
.LBB1_33:                               @   in Loop: Header=BB1_28 Depth=1
	mov	lr, r11
	mov	r5, r2
	b	.LBB1_34
.LBB1_34:                               @ %for.end.i
                                        @   in Loop: Header=BB1_28 Depth=1
	cmp	lr, #0
	cmpne	lr, #61
	bne	.LBB1_37
	b	.LBB1_35
.LBB1_35:                               @ %if.end59.i
                                        @   in Loop: Header=BB1_28 Depth=1
	cmp	r10, #0
	beq	.LBB1_58
	b	.LBB1_36
.LBB1_36:                               @ %if.end62.i
                                        @   in Loop: Header=BB1_28 Depth=1
	add	r4, r4, #1
	str	r12, [sp, #20]          @ 4-byte Spill
	b	.LBB1_37
.LBB1_37:                               @ %for.inc63.i
                                        @   in Loop: Header=BB1_28 Depth=1
	add	r12, r12, #1
	ldr	r9, [r3, r12, lsl #4]
	cmp	r9, #0
	bne	.LBB1_28
	b	.LBB1_38
.LBB1_38:                               @ %for.end65.i
	ldr	r11, .LCPI1_12
	ldr	r12, [sp, #20]          @ 4-byte Reload
	ldr	r10, [sp, #4]           @ 4-byte Reload
	cmp	r4, #1
	beq	.LBB1_59
	b	.LBB1_39
.LCPI1_12:
	.long	optind
.LBB1_39:                               @ %if.end128.i
	ldr	r9, [sp, #16]           @ 4-byte Reload
	ldr	r2, [sp, #12]           @ 4-byte Reload
	cmp	r10, #45
	bne	.LBB1_48
	b	.LBB1_40
.LBB1_40:                               @ %if.then134.i
	ldr	r2, [sp, #8]            @ 4-byte Reload
	mov	r0, #0
	cmp	r2, #58
	ldr	r2, .LCPI1_19
	b	.LBB1_41
.LCPI1_19:
	.long	opterr
.LBB1_41:                               @ %if.then134.i
	movne	r0, #1
	ldr	r2, [r2]
	cmp	r2, #0
	mov	r2, r9
	beq	.LBB1_47
	b	.LBB1_42
.LBB1_42:                               @ %if.then134.i
	mov	r2, r9
	cmp	r0, #1
	bne	.LBB1_47
	b	.LBB1_43
.LBB1_43:                               @ %if.then138.i
	ldr	r0, .LCPI1_24
	ldr	r5, .LCPI1_25
	cmp	r4, #0
	mov	r6, r9
	b	.LBB1_44
.LCPI1_24:
	.long	.L.str2
.LCPI1_25:
	.long	.L.str3
.LBB1_44:                               @ %if.then138.i
	add	r9, r8, #2
	movne	r5, r0
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r4, [r0]
	b	.LBB1_45
.LBB1_45:                               @ %if.then138.i
	mov	r0, r9
	bl	strlen
	mov	r3, r0
	mov	r2, r9
	b	.LBB1_46
.LBB1_46:                               @ %if.then138.i
	mov	r0, r4
	mov	r1, r5
	mov	r9, r6
	bl	__getopt_msg
	ldr	r2, [r11]
	b	.LBB1_47
.LBB1_47:                               @ %if.end146.i
	ldr	r8, [sp, #24]           @ 4-byte Reload
	add	r0, r2, #1
	mov	r10, #63
	str	r0, [r11]
	b	.LBB1_49
.LBB1_48:                               @ %if.end149.i
	ldr	r8, [sp, #24]           @ 4-byte Reload
	mov	r1, r8
	bl	getopt
	mov	r10, r0
	b	.LBB1_49
.LBB1_49:                               @ %__getopt_long_core.exit
	cmp	r9, r7
	ble	.LBB1_56
	b	.LBB1_50
.LBB1_50:                               @ %if.then36
	ldr	r0, [r11]
	sub	r12, r0, r9
	cmp	r12, #1
	blt	.LBB1_55
	b	.LBB1_51
.LBB1_51:                               @ %for.body.lr.ph
	sub	r5, r0, #1
	mov	r6, #0
	add	lr, r8, r5, lsl #2
	sub	r9, r5, r9
	b	.LBB1_52
.LBB1_52:                               @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_53 Depth 2
	ldr	r0, [r8, r5, lsl #2]
	mov	r4, lr
	mov	r1, r5
	cmp	r5, r7
	ble	.LBB1_54
	b	.LBB1_53
.LBB1_53:                               @ %for.body.i68
                                        @   Parent Loop BB1_52 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r2, r4
	sub	r1, r1, #1
	ldr	r3, [r2, #-4]!
	cmp	r1, r7
	str	r3, [r4]
	mov	r4, r2
	bgt	.LBB1_53
	b	.LBB1_54
.LBB1_54:                               @ %permute.exit
                                        @   in Loop: Header=BB1_52 Depth=1
	str	r0, [r8, r7, lsl #2]
	add	r0, r6, #1
	cmp	r6, r9
	mov	r6, r0
	bne	.LBB1_52
	b	.LBB1_55
.LBB1_55:                               @ %for.end44
	add	r0, r12, r7
	str	r0, [r11]
	b	.LBB1_56
.LBB1_56:                               @ %return
	mov	r0, r10
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB1_57:                               @ %for.end
	sub	r9, r6, #1
	str	r9, [r11]
	b	.LBB1_10
.LBB1_58:
	ldr	r11, .LCPI1_13
	b	.LBB1_59
.LCPI1_13:
	.long	optind
.LBB1_59:                               @ %if.then68.i
	ldr	r9, [sp, #16]           @ 4-byte Reload
	add	r1, r3, r12, lsl #4
	ldr	r4, .LCPI1_15
	mov	r0, r1
	b	.LBB1_60
.LCPI1_15:
	.long	optopt
.LBB1_60:                               @ %if.then68.i
	add	r2, r9, #1
	str	r2, [r11]
	ldr	r6, [r0, #12]!
	ldr	r8, [sp, #24]           @ 4-byte Reload
	b	.LBB1_61
.LBB1_61:                               @ %if.then68.i
	str	r6, [r4]
	ldr	r6, [r0, #-8]
	ldrb	r4, [r5]
	cmp	r4, #61
	bne	.LBB1_64
	b	.LBB1_62
.LBB1_62:                               @ %if.then74.i
	cmp	r6, #0
	beq	.LBB1_70
	b	.LBB1_63
.LBB1_63:                               @ %if.end88.i
	ldr	r3, .LCPI1_16
	add	r2, r5, #1
	str	r2, [r3]
	b	.LBB1_68
.LCPI1_16:
	.long	optarg
.LBB1_64:                               @ %if.else.i
	cmp	r6, #1
	bne	.LBB1_67
	b	.LBB1_65
.LBB1_65:                               @ %if.then94.i
	ldr	r2, [r8, r2, lsl #2]
	ldr	r6, .LCPI1_17
	str	r2, [r6]
	cmp	r2, #0
	beq	.LBB1_74
	b	.LBB1_66
.LCPI1_17:
	.long	optarg
.LBB1_66:                               @ %if.end110.i
	add	r2, r9, #2
	str	r2, [r11]
	b	.LBB1_68
.LBB1_67:                               @ %if.else112.i
	ldr	r2, .LCPI1_18
	mov	r3, #0
	str	r3, [r2]
	b	.LBB1_68
.LCPI1_18:
	.long	optarg
.LBB1_68:                               @ %if.end114.i
	ldr	r2, [sp, #64]
	cmp	r2, #0
	strne	r12, [r2]
	ldr	r1, [r1, #8]
	b	.LBB1_69
.LBB1_69:                               @ %if.end114.i
	ldr	r10, [r0]
	cmp	r1, #0
	strne	r10, [r1]
	movne	r10, #0
	b	.LBB1_49
.LBB1_70:                               @ %if.then77.i
	ldr	r1, [sp, #8]            @ 4-byte Reload
	mov	r0, #0
	mov	r10, #63
	cmp	r1, #58
	b	.LBB1_71
.LBB1_71:                               @ %if.then77.i
	ldr	r1, .LCPI1_20
	movne	r0, #1
	ldr	r1, [r1]
	cmp	r1, #0
	beq	.LBB1_49
	b	.LBB1_72
.LCPI1_20:
	.long	opterr
.LBB1_72:                               @ %if.then77.i
	cmp	r0, #1
	bne	.LBB1_49
	b	.LBB1_73
.LBB1_73:                               @ %if.end82.i
	mov	r5, r9
	ldr	r9, [r3, r12, lsl #4]
	ldr	r4, [r8]
	mov	r0, r9
	bl	strlen
	ldr	r1, .LCPI1_23
	mov	r3, r0
	b	.LBB1_77
.LCPI1_23:
	.long	.L.str
.LBB1_74:                               @ %if.then97.i
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	r10, #58
	cmp	r0, #58
	beq	.LBB1_49
	b	.LBB1_75
.LBB1_75:                               @ %if.end100.i
	ldr	r0, .LCPI1_21
	mov	r10, #63
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB1_49
	b	.LBB1_76
.LCPI1_21:
	.long	opterr
.LBB1_76:                               @ %if.end103.i
	mov	r5, r9
	ldr	r9, [r3, r12, lsl #4]
	ldr	r4, [r8]
	mov	r0, r9
	bl	strlen
	ldr	r1, .LCPI1_22
	mov	r3, r0
	b	.LBB1_77
.LCPI1_22:
	.long	.L.str1
.LBB1_77:                               @ %__getopt_long_core.exit
	mov	r2, r9
	mov	r0, r4
	mov	r9, r5
	bl	__getopt_msg
	b	.LBB1_49
.Ltmp1:
	.size	__getopt_long, .Ltmp1-__getopt_long
	.cantunwind
	.fnend

	.globl	getopt_long_only
	.align	2
	.type	getopt_long_only,%function
getopt_long_only:                       @ @getopt_long_only
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #1
	str	r12, [sp, #4]
	b	.LBB2_2
.LBB2_2:                                @ %entry
	ldr	r12, [sp, #16]
	str	r12, [sp]
	bl	__getopt_long
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	getopt_long_only, .Ltmp2-getopt_long_only
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	": option does not take an argument: "
	.size	.L.str, 37

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	": option requires an argument: "
	.size	.L.str1, 32

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	": option is ambiguous: "
	.size	.L.str2, 24

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	": unrecognized option: "
	.size	.L.str3, 24


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
