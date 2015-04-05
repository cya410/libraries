.section getnameinfo_text
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
	.file	"src/network/getnameinfo.bc"
	.globl	getnameinfo
	.align	2
	.type	getnameinfo,%function
.section bb0_0
getnameinfo:                            @ @getnameinfo
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
	.pad	#100
	sub	sp, sp, #100
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	.pad	#2048
	sub	sp, sp, #2048
	mov	r4, r0
	mov	r11, r3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r10, r2
	mvn	r0, #5
	ldrh	r9, [r4]
	cmp	r9, #10
	bne	.LBB0_12
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %sw.bb2
	cmp	r1, #28
	bne	.LBB0_112
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end6
	ldr	r1, .LCPI0_10
	add	r7, r4, #8
	mov	r2, #12
	mov	r0, r7
	bl	memcmp
	cmp	r0, #0
	beq	.LBB0_16
	b	.LBB0_7
.LCPI0_10:
	.long	.L.str
.section bb0_7
.LBB0_7:                                @ %for.body.i.preheader
	ldr	r2, .LCPI0_13
	add	lr, sp, #256
	mov	r8, r7
	add	r0, r4, #23
	mov	r3, #0
	mov	r6, #46
	add	r1, lr, #82
	b	.LBB0_8
.LCPI0_13:
	.long	mkptr6.xdigits
.section bb0_8
.LBB0_8:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r5, [r0, r3]
	ldrb	r7, [r0, r3]
	and	r5, r5, #15
	ldrb	r7, [r2, r7, lsr #4]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	ldrb	r5, [r2, r5]
	strb	r5, [r1, -r3, lsl #2]
	sub	r5, r1, r3, lsl #2
	strb	r6, [r5, #1]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.body.i
                                        @   in Loop: Header=BB0_8 Depth=1
	strb	r7, [r5, #2]
	sub	r7, r3, #1
	add	r3, r3, #15
	strb	r6, [r5, #3]
	cmp	r3, #0
	mov	r3, r7
	bgt	.LBB0_8
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %mkptr6.exit
	add	r0, r1, #64
	ldr	r1, .LCPI0_14
	bl	strcpy
	mov	r7, r8
	b	.LBB0_18
.LCPI0_14:
	.long	.L.str2
.section bb0_12
.LBB0_12:                               @ %entry
	cmp	r9, #2
	cmpeq	r1, #16
	bne	.LBB0_112
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldrb	r3, [r4, #6]
	ldrb	r2, [r4, #7]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end
	add	r5, sp, #256
	add	r7, r4, #4
	str	r1, [sp]
	ldr	r1, .LCPI0_15
	b	.LBB0_15
.LCPI0_15:
	.long	.L.str1
.section bb0_15
.LBB0_15:                               @ %if.end
	str	r0, [sp, #4]
	add	r0, r5, #82
	bl	sprintf
	mov	r0, #3
	mov	r6, #0
	b	.LBB0_19
.section bb0_16
.LBB0_16:                               @ %if.else
	ldrb	r1, [r4, #21]
	ldrb	r0, [r4, #20]
	ldrb	r3, [r4, #22]
	ldrb	r2, [r4, #23]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.else
	add	r5, sp, #256
	str	r1, [sp]
	ldr	r1, .LCPI0_16
	str	r0, [sp, #4]
	add	r0, r5, #82
	bl	sprintf
	b	.LBB0_18
.LCPI0_16:
	.long	.L.str1
.section bb0_18
.LBB0_18:                               @ %if.end10
	ldr	r6, [r4, #24]
	mov	r0, #7
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %sw.epilog
	ldr	r8, [sp, #2192]
	cmp	r10, #0
	add	r1, sp, #80
	cmpne	r11, #0
	beq	.LBB0_81
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then13
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, #0
	tst	r8, #1
	strb	r0, [r1, #2]
	bne	.LBB0_66
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then15
	ldr	r0, .LCPI0_17
	mov	r3, #8
	add	r1, sp, #416
	add	r2, sp, #600
	b	.LBB0_22
.LCPI0_17:
	.long	.L.str3
.section bb0_22
.LBB0_22:                               @ %if.then15
	orr	r3, r3, #1024
	bl	__fopen_rb_ca
	str	r0, [sp, #32]           @ 4-byte Spill
	cmp	r0, #0
	add	r0, sp, #80
	beq	.LBB0_56
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end.i
	str	r11, [sp, #24]          @ 4-byte Spill
	str	r10, [sp, #28]          @ 4-byte Spill
	cmp	r9, #2
	str	r7, [sp, #48]           @ 4-byte Spill
	bne	.LBB0_26
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.then1.i
	add	r5, sp, #584
	mov	r1, r7
	mov	r2, #4
	add	r0, r5, #12
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.then1.i
	str	r5, [sp, #48]           @ 4-byte Spill
	bl	memcpy
	ldr	r1, .LCPI0_11
	mov	r0, r5
	mov	r2, #12
	bl	memcpy
	b	.LBB0_26
.LCPI0_11:
	.long	.L.str
.section bb0_26
.LBB0_26:                               @ %while.cond.preheader.i
	ldr	r5, [sp, #32]           @ 4-byte Reload
	add	r10, sp, #1632
	mov	r1, #512
	str	r7, [sp, #36]           @ 4-byte Spill
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %while.cond.preheader.i
	mov	r0, r10
	mov	r2, r5
	bl	fgets
	cmp	r0, #0
	beq	.LBB0_54
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %while.body.lr.ph.i
	add	r7, sp, #556
	add	r0, r7, #20
	add	r11, r7, #8
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %while.body.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_32 Depth 2
                                        @     Child Loop BB0_43 Depth 2
                                        @     Child Loop BB0_47 Depth 2
	mov	r0, r10
	mov	r1, #35
	bl	strchr
	cmp	r0, #0
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %while.body.i
                                        @   in Loop: Header=BB0_29 Depth=1
	mov	r8, r10
	movne	r1, #0
	strbne	r1, [r0, #1]
	movne	r1, #10
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %while.body.i
                                        @   in Loop: Header=BB0_29 Depth=1
	strbne	r1, [r0]
	ldrb	r0, [sp, #1632]
	cmp	r0, #0
	beq	.LBB0_35
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %land.rhs.i
                                        @   Parent Loop BB0_29 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r0, #255
	cmp	r0, #32
	beq	.LBB0_35
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %land.rhs.i
                                        @   in Loop: Header=BB0_32 Depth=2
	sub	r0, r0, #9
	cmp	r0, #5
	blo	.LBB0_35
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %for.inc.i
                                        @   in Loop: Header=BB0_32 Depth=2
	ldrb	r0, [r8, #1]!
	cmp	r0, #0
	bne	.LBB0_32
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %for.end.i
                                        @   in Loop: Header=BB0_29 Depth=1
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	strb	r0, [r8]
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %for.end.i
                                        @   in Loop: Header=BB0_29 Depth=1
	mov	r0, r7
	bl	__lookup_ipliteral
	cmp	r0, #0
	ble	.LBB0_52
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end28.i
                                        @   in Loop: Header=BB0_29 Depth=1
	ldr	r0, [sp, #556]
	cmp	r0, #2
	bne	.LBB0_40
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.then32.i
                                        @   in Loop: Header=BB0_29 Depth=1
	ldr	r0, [sp, #44]           @ 4-byte Reload
	mov	r1, r11
	mov	r2, #4
	bl	memcpy
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.then32.i
                                        @   in Loop: Header=BB0_29 Depth=1
	ldr	r1, .LCPI0_12
	mov	r0, r11
	mov	r2, #12
	bl	memcpy
	mov	r0, #0
	str	r0, [sp, #560]
	b	.LBB0_40
.LCPI0_12:
	.long	.L.str
.section bb0_40
.LBB0_40:                               @ %if.end42.i
                                        @   in Loop: Header=BB0_29 Depth=1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	mov	r1, r11
	mov	r2, #16
	bl	memcmp
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end42.i
                                        @   in Loop: Header=BB0_29 Depth=1
	cmp	r0, #0
	ldreq	r0, [sp, #560]
	cmpeq	r0, r6
	bne	.LBB0_52
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %for.cond52.i.preheader
                                        @   in Loop: Header=BB0_29 Depth=1
	add	r3, r8, #1
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %for.cond52.i
                                        @   Parent Loop BB0_29 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r1, r3
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.LBB0_49
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %land.rhs55.i
                                        @   in Loop: Header=BB0_43 Depth=2
	add	r3, r1, #1
	cmp	r0, #32
	beq	.LBB0_43
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %land.rhs55.i
                                        @   in Loop: Header=BB0_43 Depth=2
	sub	r2, r0, #9
	cmp	r2, #5
	blo	.LBB0_43
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %land.rhs67.i.preheader
                                        @   in Loop: Header=BB0_29 Depth=1
	mov	r12, r7
	sub	r2, r3, #1
	mov	r7, r5
	sub	r3, r3, #2
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %land.rhs67.i
                                        @   Parent Loop BB0_29 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r0, #255
	mov	r5, r2
	cmp	r0, #32
	subne	r0, r0, #9
	cmpne	r0, #4
	bls	.LBB0_50
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %for.cond64.i
                                        @   in Loop: Header=BB0_47 Depth=2
	add	r2, r3, #2
	mov	r3, r5
	ldrb	r0, [r2]
	cmp	r0, #0
	bne	.LBB0_47
	b	.LBB0_51
.section bb0_49
.LBB0_49:                               @   in Loop: Header=BB0_29 Depth=1
	mov	r12, r7
	mov	r7, r5
	mov	r2, r1
	b	.LBB0_51
.section bb0_50
.LBB0_50:                               @   in Loop: Header=BB0_29 Depth=1
	mov	r2, r5
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %for.end76.i
                                        @   in Loop: Header=BB0_29 Depth=1
	mov	r0, #0
	mov	r5, r7
	mov	r7, r12
	strb	r0, [r2], -r1
	cmp	r2, #255
	ble	.LBB0_53
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %while.cond.backedge.i
                                        @   in Loop: Header=BB0_29 Depth=1
	mov	r0, r10
	mov	r1, #512
	mov	r2, r5
	bl	fgets
	cmp	r0, #0
	bne	.LBB0_29
	b	.LBB0_54
.section bb0_53
.LBB0_53:                               @ %if.then79.i
	add	r2, r2, #1
	add	r0, sp, #82
	bl	memcpy
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %while.end.i
	mov	r0, r5
	bl	__fclose_ca
	ldr	r10, [sp, #28]          @ 4-byte Reload
	ldr	r11, [sp, #24]          @ 4-byte Reload
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %while.end.i
	ldr	r8, [sp, #2192]
	ldr	r7, [sp, #36]           @ 4-byte Reload
	add	r5, sp, #80
	mov	r0, r5
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %if.end17
	ldrb	r0, [r0, #2]
	cmp	r0, #0
	bne	.LBB0_79
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %if.then23
	str	r7, [sp, #36]           @ 4-byte Spill
	mov	r7, #0
	add	r8, sp, #256
	mov	r0, #96
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %if.then23
	add	r5, sp, #1632
	mov	r2, #1
	mov	r3, #12
	str	r7, [sp]
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %if.then23
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	str	r5, [sp, #12]
	str	r0, [sp, #16]
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.then23
	add	r1, r8, #82
	mov	r0, #0
	bl	__res_mkquery
	mov	r1, r0
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.then23
	add	r2, sp, #600
	mov	r0, r5
	mov	r3, #512
	bl	__res_send
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then23
	mov	r1, r0
	add	r5, sp, #80
	strb	r7, [r5, #2]
	cmp	r1, #0
	ble	.LBB0_65
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.end38
	ldr	r2, .LCPI0_18
	add	r0, sp, #600
	add	r3, sp, #82
	bl	__dns_parse
	b	.LBB0_64
.LCPI0_18:
	.long	dns_parse_callback
.section bb0_64
.LBB0_64:                               @ %if.end38
	ldrb	r0, [r5, #2]
	ldr	r8, [sp, #2192]
	ldr	r7, [sp, #36]           @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB0_79
	b	.LBB0_66
.section bb0_65
.LBB0_65:                               @ %if.end38.thread241
	ldr	r8, [sp, #2192]
	ldr	r7, [sp, #36]           @ 4-byte Reload
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.then41
	mvn	r0, #1
	tst	r8, #8
	bne	.LBB0_112
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %if.end45
	add	r2, sp, #82
	mov	r0, r9
	mov	r1, r7
	mov	r3, #256
	bl	inet_ntop
	cmp	r6, #0
	beq	.LBB0_79
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.then49
	tst	r8, #256
	bne	.LBB0_74
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %land.lhs.true52
	ldrb	r0, [r7]
	cmp	r0, #255
	bne	.LBB0_71
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %land.lhs.true67
	ldr	r0, [sp, #40]           @ 4-byte Reload
	add	r0, r4, r0
	ldrb	r0, [r0, #2]
	and	r0, r0, #15
	cmp	r0, #2
	bne	.LBB0_74
	b	.LBB0_73
.section bb0_71
.LBB0_71:                               @ %land.lhs.true52
	cmp	r0, #254
	bne	.LBB0_74
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %land.lhs.true57
	ldr	r0, [sp, #40]           @ 4-byte Reload
	add	r0, r4, r0
	ldrb	r0, [r0, #2]
	and	r0, r0, #192
	cmp	r0, #128
	bne	.LBB0_74
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %if.end77
	add	r0, sp, #52
	add	r1, r0, #1
	mov	r0, r6
	bl	if_indextoname
	mov	r1, r0
	cmp	r1, #0
	bne	.LBB0_78
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %if.then79
	mov	r0, #0
	add	r1, sp, #80
	strb	r0, [r1]
	add	r0, sp, #69
	add	r0, r0, #10
	b	.LBB0_75
.section bb0_75
.LBB0_75:                               @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, .LCPI0_19
	cmp	r6, #9
	umull	r2, r3, r6, r1
	lsr	r1, r3, #3
	b	.LBB0_76
.LCPI0_19:
	.long	3435973837              @ 0xcccccccd
.section bb0_76
.LBB0_76:                               @ %do.body.i
                                        @   in Loop: Header=BB0_75 Depth=1
	add	r2, r1, r1, lsl #2
	sub	r2, r6, r2, lsl #1
	mov	r6, r1
	orr	r2, r2, #48
	strb	r2, [r0], #-1
	bhi	.LBB0_75
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %if.end82.loopexit
	add	r1, r0, #1
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %if.end82
	mov	r0, #37
	strb	r0, [r1, #-1]!
	add	r0, sp, #82
	bl	strcat
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %if.end86
	add	r0, sp, #82
	bl	strlen
	mov	r1, r0
	mvn	r0, #11
	cmp	r1, r11
	bhs	.LBB0_112
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.end92
	add	r1, sp, #82
	mov	r0, r10
	bl	strcpy
	add	r1, sp, #80
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %if.end95
	ldr	r5, [sp, #2184]
	mov	r0, #0
	cmp	r5, #0
	ldrne	r9, [sp, #2188]
	movne	r7, r1
	cmpne	r9, #0
	beq	.LBB0_112
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %if.then99
	ldrh	r0, [r4, #2]
	bl	ntohs
	mov	r4, r0
	mov	r6, #0
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %if.then99
	mov	r1, r7
	tst	r8, #2
	strb	r6, [r1, #2]
	bne	.LBB0_106
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.then109
	ldr	r0, .LCPI0_21
	mov	r3, #8
	mov	r7, r1
	add	r1, sp, #1632
	b	.LBB0_85
.LCPI0_21:
	.long	.L.str4
.section bb0_85
.LBB0_85:                               @ %if.then109
	add	r2, sp, #600
	orr	r3, r3, #1024
	bl	__fopen_rb_ca
	mov	r11, r0
	mov	r1, r7
	cmp	r11, #0
	beq	.LBB0_104
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %while.cond.preheader.i186
	add	r7, sp, #416
	mov	r1, #128
	mov	r2, r11
	mov	r0, r7
	bl	fgets
	cmp	r0, #0
	beq	.LBB0_102
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %while.body.lr.ph.i188
	and	r6, r8, #16
	add	r8, r7, #1
	mov	r10, #0
	mov	r9, #10
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %while.body.i190
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_90 Depth 2
	mov	r0, r7
	mov	r1, #35
	bl	strchr
	cmp	r0, #0
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %while.body.i190
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r5, r8
	strbne	r10, [r0, #1]
	strbne	r9, [r0]
	ldrb	r0, [sp, #416]
	cmp	r0, #0
	beq	.LBB0_100
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %land.rhs.i198
                                        @   Parent Loop BB0_88 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r0, #255
	cmp	r0, #32
	beq	.LBB0_93
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %land.rhs.i198
                                        @   in Loop: Header=BB0_90 Depth=2
	sub	r0, r0, #9
	cmp	r0, #5
	blo	.LBB0_93
	b	.LBB0_92
.section bb0_92
.LBB0_92:                               @ %for.inc.i200
                                        @   in Loop: Header=BB0_90 Depth=2
	ldrb	r0, [r5], #1
	cmp	r0, #0
	bne	.LBB0_90
	b	.LBB0_100
.section bb0_93
.LBB0_93:                               @ %if.end17.i
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r0, r5
	add	r1, sp, #556
	mov	r2, #10
	strb	r10, [r5, #-1]
	bl	strtoul
	cmp	r0, r4
	bne	.LBB0_100
	b	.LBB0_94
.section bb0_94
.LBB0_94:                               @ %lor.lhs.false.i
                                        @   in Loop: Header=BB0_88 Depth=1
	ldr	r0, [sp, #556]
	cmp	r0, r5
	beq	.LBB0_100
	b	.LBB0_95
.section bb0_95
.LBB0_95:                               @ %if.end24.i
                                        @   in Loop: Header=BB0_88 Depth=1
	cmp	r6, #0
	beq	.LBB0_97
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %land.lhs.true.i
                                        @   in Loop: Header=BB0_88 Depth=1
	ldr	r1, .LCPI0_22
	b	.LBB0_98
.LCPI0_22:
	.long	.L.str5
.section bb0_97
.LBB0_97:                               @ %land.lhs.true31.i
                                        @   in Loop: Header=BB0_88 Depth=1
	ldr	r1, .LCPI0_23
	b	.LBB0_98
.LCPI0_23:
	.long	.L.str6
.section bb0_98
.LBB0_98:                               @ %land.lhs.true.i
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r2, #4
	bl	strncmp
	cmp	r0, #0
	bne	.LBB0_100
	b	.LBB0_99
.section bb0_99
.LBB0_99:                               @ %if.end35.i
                                        @   in Loop: Header=BB0_88 Depth=1
	sub	r2, r5, r7
	cmp	r2, #32
	ble	.LBB0_101
	b	.LBB0_100
.section bb0_100
.LBB0_100:                              @ %while.cond.backedge.i202
                                        @   in Loop: Header=BB0_88 Depth=1
	mov	r0, r7
	mov	r1, #128
	mov	r2, r11
	bl	fgets
	cmp	r0, #0
	bne	.LBB0_88
	b	.LBB0_102
.section bb0_101
.LBB0_101:                              @ %if.end40.i
	add	r0, sp, #82
	add	r1, sp, #416
	bl	memcpy
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %while.end.i205
	mov	r0, r11
	bl	__fclose_ca
	add	r5, sp, #80
	ldr	r7, [sp, #2188]
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %while.end.i205
	mov	r6, #0
	mov	r1, r5
	ldr	r5, [sp, #2184]
	mov	r9, r7
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %if.end112
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.LBB0_106
	b	.LBB0_105
.section bb0_105
.LBB0_105:
	add	r4, sp, #82
	b	.LBB0_110
.section bb0_106
.LBB0_106:                              @ %if.then114
	add	r0, sp, #69
	strb	r6, [r1]
	add	r0, r0, #10
	b	.LBB0_107
.section bb0_107
.LBB0_107:                              @ %do.body.i214
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, .LCPI0_20
	cmp	r4, #9
	umull	r2, r3, r4, r1
	lsr	r1, r3, #3
	b	.LBB0_108
.LCPI0_20:
	.long	3435973837              @ 0xcccccccd
.section bb0_108
.LBB0_108:                              @ %do.body.i214
                                        @   in Loop: Header=BB0_107 Depth=1
	add	r2, r1, r1, lsl #2
	sub	r2, r4, r2, lsl #1
	mov	r4, r1
	orr	r2, r2, #48
	strb	r2, [r0], #-1
	bhi	.LBB0_107
	b	.LBB0_109
.section bb0_109
.LBB0_109:                              @ %if.end117.loopexit
	add	r4, r0, #1
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %if.end117
	mov	r0, r4
	bl	strlen
	mov	r1, r0
	mvn	r0, #11
	cmp	r1, r9
	bhs	.LBB0_112
	b	.LBB0_111
.section bb0_111
.LBB0_111:                              @ %if.end122
	mov	r0, r5
	mov	r1, r4
	bl	strcpy
	mov	r0, #0
	b	.LBB0_112
.section bb0_112
.LBB0_112:                              @ %cleanup
	add	sp, sp, #100
	add	sp, sp, #2048
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getnameinfo, .Ltmp0-getnameinfo
	.cantunwind
	.fnend

	.align	2
	.type	dns_parse_callback,%function
.section bb1_0
dns_parse_callback:                     @ @dns_parse_callback
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
	mov	r4, r0
	cmp	r1, #12
	bne	.LBB1_4
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %if.end
	ldr	r0, [sp, #16]
	mov	r1, #256
	mov	r3, r4
	str	r1, [sp]
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %if.end
	add	r1, r0, #512
	bl	__dn_expand
	cmp	r0, #0
	movle	r0, #0
	strble	r0, [r4]
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %return
	mov	r0, #0
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp1:
	.size	dns_parse_callback, .Ltmp1-dns_parse_callback
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata,"a",%progbits
.L.str:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\377\377"
	.size	.L.str, 13

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.asciz	"%d.%d.%d.%d.in-addr.arpa"
	.size	.L.str1, 25

	.type	mkptr6.xdigits,%object  @ @mkptr6.xdigits
mkptr6.xdigits:
	.asciz	"0123456789abcdef"
	.size	mkptr6.xdigits, 17

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"ip6.arpa"
	.size	.L.str2, 9

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"/etc/hosts"
	.size	.L.str3, 11

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"/etc/services"
	.size	.L.str4, 14

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"/udp"
	.size	.L.str5, 5

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"/tcp"
	.size	.L.str6, 5


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
