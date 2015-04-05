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
	.file	"src/network/res_msend.bc"
	.globl	__res_msend
	.align	2
	.type	__res_msend,%function
__res_msend:                            @ @__res_msend
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#716
	sub	sp, sp, #716
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI0_10
	str	r3, [sp, #56]           @ 4-byte Spill
	b	.LBB0_4
.LCPI0_10:
	.long	.L__res_msend.sa
.LBB0_4:                                @ %entry
	mov	r9, r2
	str	r1, [sp, #68]           @ 4-byte Spill
	add	r8, sp, #220
	ldm	r0, {r1, r2, r3, r7}
	b	.LBB0_5
.LBB0_5:                                @ %entry
	ldr	r5, [r0, #20]
	ldr	r6, [r0, #16]
	ldr	r0, [r0, #24]
	str	r5, [sp, #240]
	b	.LBB0_6
.LBB0_6:                                @ %entry
	str	r6, [sp, #236]
	stm	r8, {r1, r2, r3, r7}
	str	r0, [sp, #244]
	add	r0, sp, #136
	b	.LBB0_7
.LBB0_7:                                @ %entry
	mov	r1, #84
	mov	r2, #0
	bl	__aeabi_memset
	add	r1, sp, #132
	b	.LBB0_8
.LBB0_8:                                @ %entry
	mov	r0, #1
	bl	pthread_setcancelstate
	ldr	r0, .LCPI0_11
	add	r1, sp, #568
	b	.LBB0_9
.LCPI0_11:
	.long	.L.str
.LBB0_9:                                @ %entry
	add	r2, sp, #312
	mov	r3, #256
	bl	__fopen_rb_ca
	mov	r8, r0
	mov	r1, #2
	cmp	r8, #0
	beq	.LBB0_15
	b	.LBB0_10
.LBB0_10:                               @ %for.cond.preheader
	add	r0, sp, #96
	str	r4, [sp, #52]           @ 4-byte Spill
	ldr	r4, .LCPI0_12
	ldr	r6, .LCPI0_15
	b	.LBB0_11
.LCPI0_12:
	.long	.L.str1
.LCPI0_15:
	.long	.L.str4
.LBB0_11:                               @ %for.cond.preheader
	str	r9, [sp, #40]           @ 4-byte Spill
	add	r9, sp, #248
	add	r0, r0, #8
	add	r5, r9, #12
	b	.LBB0_12
.LBB0_12:                               @ %for.cond.preheader
	add	r10, r9, #11
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, #904
	orr	r0, r0, #4096
	b	.LBB0_13
.LBB0_13:                               @ %for.cond.preheader
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, #16
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, #2
	b	.LBB0_14
.LBB0_14:                               @ %for.cond.preheader
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, #2
	b	.LBB0_22
.LBB0_15:
	mov	r0, #904
	mov	r5, #16
	mov	r7, #2
	add	r6, sp, #128
	b	.LBB0_16
.LBB0_16:
	orr	r0, r0, #4096
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, #2
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB0_56
.LBB0_17:                               @ %if.else
                                        @   in Loop: Header=BB0_22 Depth=1
	ldr	r6, [sp, #48]           @ 4-byte Reload
	add	r1, sp, #136
	mov	r2, #16
	rsb	r0, r6, r6, lsl #3
	b	.LBB0_18
.LBB0_18:                               @ %if.else
                                        @   in Loop: Header=BB0_22 Depth=1
	add	r4, r1, r0, lsl #2
	ldr	r1, [sp, #36]           @ 4-byte Reload
	add	r0, r4, #8
	bl	memcpy
	b	.LBB0_19
.LBB0_19:                               @ %if.else
                                        @   in Loop: Header=BB0_22 Depth=1
	mov	r0, #53
	bl	htons
	strh	r0, [r4, #2]
	ldr	r0, [sp, #100]
	b	.LBB0_20
.LBB0_20:                               @ %if.else
                                        @   in Loop: Header=BB0_22 Depth=1
	add	r6, r6, #1
	str	r6, [sp, #48]           @ 4-byte Spill
	cmp	r6, #3
	str	r0, [r4, #24]
	b	.LBB0_21
.LBB0_21:                               @ %if.else
                                        @   in Loop: Header=BB0_22 Depth=1
	mov	r0, #10
	strh	r0, [r4]
	mov	r0, #10
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, #28
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB0_51
.LBB0_22:                               @ %land.rhs.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_23 Depth 2
                                        @       Child Loop BB0_38 Depth 3
                                        @       Child Loop BB0_41 Depth 3
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB0_23
.LBB0_23:                               @ %land.rhs
                                        @   Parent Loop BB0_22 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_38 Depth 3
                                        @       Child Loop BB0_41 Depth 3
	mov	r0, r9
	mov	r1, #64
	mov	r2, r8
	bl	fgets
	cmp	r0, #0
	beq	.LBB0_54
	b	.LBB0_24
.LBB0_24:                               @ %for.body
                                        @   in Loop: Header=BB0_23 Depth=2
	mov	r0, r9
	mov	r1, r4
	mov	r2, #7
	bl	strncmp
	cmp	r0, #0
	bne	.LBB0_35
	b	.LBB0_25
.LBB0_25:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_23 Depth=2
	ldrb	r0, [sp, #255]
	cmp	r0, #32
	subne	r0, r0, #9
	cmpne	r0, #4
	bhi	.LBB0_35
	b	.LBB0_26
.LBB0_26:                               @ %if.then10
                                        @   in Loop: Header=BB0_23 Depth=2
	ldr	r1, .LCPI0_13
	mov	r0, r9
	bl	strstr
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB0_30
	b	.LBB0_27
.LCPI0_13:
	.long	.L.str2
.LBB0_27:                               @ %land.lhs.true15
                                        @   in Loop: Header=BB0_23 Depth=2
	ldrb	r0, [r11, #8]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB0_30
	b	.LBB0_28
.LBB0_28:                               @ %if.then20
                                        @   in Loop: Header=BB0_23 Depth=2
	mov	r0, r11
	add	r1, sp, #92
	mov	r2, #10
	bl	strtoul
	ldr	r1, [sp, #92]
	cmp	r1, r11
	beq	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               @ %if.then24
                                        @   in Loop: Header=BB0_23 Depth=2
	mov	r1, #1328
	cmp	r0, #30
	mov	r2, #1000
	orr	r1, r1, #28672
	mullo	r1, r0, r2
	str	r1, [sp, #20]           @ 4-byte Spill
	b	.LBB0_30
.LBB0_30:                               @ %if.end27
                                        @   in Loop: Header=BB0_23 Depth=2
	ldr	r1, .LCPI0_14
	mov	r0, r9
	bl	strstr
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB0_35
	b	.LBB0_31
.LCPI0_14:
	.long	.L.str3
.LBB0_31:                               @ %land.lhs.true31
                                        @   in Loop: Header=BB0_23 Depth=2
	ldrb	r0, [r11, #9]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB0_35
	b	.LBB0_32
.LBB0_32:                               @ %if.then37
                                        @   in Loop: Header=BB0_23 Depth=2
	mov	r0, r11
	add	r1, sp, #92
	mov	r2, #10
	bl	strtoul
	b	.LBB0_33
.LBB0_33:                               @ %if.then37
                                        @   in Loop: Header=BB0_23 Depth=2
	cmp	r0, #10
	mov	r1, #10
	movhs	r0, r1
	ldr	r1, [sp, #92]
	b	.LBB0_34
.LBB0_34:                               @ %if.then37
                                        @   in Loop: Header=BB0_23 Depth=2
	cmp	r1, r11
	ldr	r1, [sp, #64]           @ 4-byte Reload
	moveq	r0, r1
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB0_35
.LBB0_35:                               @ %if.end54
                                        @   in Loop: Header=BB0_23 Depth=2
	mov	r0, r9
	mov	r1, r6
	mov	r2, #10
	bl	strncmp
	cmp	r0, #0
	bne	.LBB0_23
	b	.LBB0_36
.LBB0_36:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_23 Depth=2
	ldrb	r0, [sp, #258]
	mov	r3, r5
	mov	r1, r10
	cmp	r0, #32
	beq	.LBB0_38
	b	.LBB0_37
.LBB0_37:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_23 Depth=2
	sub	r0, r0, #9
	mov	r3, r5
	mov	r1, r10
	cmp	r0, #4
	bhi	.LBB0_23
	b	.LBB0_38
.LBB0_38:                               @ %for.cond66
                                        @   Parent Loop BB0_22 Depth=1
                                        @     Parent Loop BB0_23 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrb	r2, [r1], #1
	mov	r0, r3
	add	r3, r0, #1
	sub	r7, r2, #9
	cmp	r2, #32
	beq	.LBB0_38
	b	.LBB0_39
.LBB0_39:                               @ %for.cond66
                                        @   in Loop: Header=BB0_38 Depth=3
	cmp	r7, #5
	blo	.LBB0_38
	b	.LBB0_40
.LBB0_40:                               @ %for.cond71.preheader
                                        @   in Loop: Header=BB0_23 Depth=2
	sub	r1, r1, #1
	cmp	r2, #0
	mov	r3, r1
	beq	.LBB0_45
	b	.LBB0_41
.LBB0_41:                               @ %land.rhs74
                                        @   Parent Loop BB0_22 Depth=1
                                        @     Parent Loop BB0_23 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	and	r2, r2, #255
	cmp	r2, #32
	beq	.LBB0_44
	b	.LBB0_42
.LBB0_42:                               @ %land.rhs74
                                        @   in Loop: Header=BB0_41 Depth=3
	sub	r2, r2, #9
	cmp	r2, #5
	blo	.LBB0_44
	b	.LBB0_43
.LBB0_43:                               @ %for.inc80
                                        @   in Loop: Header=BB0_41 Depth=3
	ldrb	r2, [r0], #1
	cmp	r2, #0
	bne	.LBB0_41
	b	.LBB0_44
.LBB0_44:                               @ %land.rhs74.for.end82.loopexit_crit_edge
                                        @   in Loop: Header=BB0_23 Depth=2
	sub	r3, r0, #1
	b	.LBB0_45
.LBB0_45:                               @ %for.end82
                                        @   in Loop: Header=BB0_23 Depth=2
	mov	r0, #0
	mov	r2, #0
	strb	r0, [r3]
	add	r0, sp, #96
	bl	__lookup_ipliteral
	cmp	r0, #1
	blt	.LBB0_23
	b	.LBB0_46
.LBB0_46:                               @ %if.then86
                                        @   in Loop: Header=BB0_22 Depth=1
	ldr	r0, [sp, #96]
	ldr	r11, [sp, #64]          @ 4-byte Reload
	mov	r7, r4
	cmp	r0, #2
	bne	.LBB0_17
	b	.LBB0_47
.LBB0_47:                               @ %if.then90
                                        @   in Loop: Header=BB0_22 Depth=1
	ldr	r4, [sp, #48]           @ 4-byte Reload
	add	r1, sp, #136
	mov	r2, #4
	rsb	r0, r4, r4, lsl #3
	b	.LBB0_48
.LBB0_48:                               @ %if.then90
                                        @   in Loop: Header=BB0_22 Depth=1
	add	r6, r1, r0, lsl #2
	ldr	r1, [sp, #36]           @ 4-byte Reload
	add	r0, r6, #4
	bl	memcpy
	b	.LBB0_49
.LBB0_49:                               @ %if.then90
                                        @   in Loop: Header=BB0_22 Depth=1
	mov	r0, #53
	bl	htons
	add	r4, r4, #1
	strh	r0, [r6, #2]
	b	.LBB0_50
.LBB0_50:                               @ %if.then90
                                        @   in Loop: Header=BB0_22 Depth=1
	mov	r0, #2
	cmp	r4, #3
	strh	r0, [r6]
	str	r4, [sp, #48]           @ 4-byte Spill
	b	.LBB0_51
.LBB0_51:                               @ %if.then90
                                        @   in Loop: Header=BB0_22 Depth=1
	ldr	r6, .LCPI0_16
	mov	r0, r11
	mov	r4, r7
	blt	.LBB0_22
	b	.LBB0_52
.LCPI0_16:
	.long	.L.str4
.LBB0_52:                               @ %if.end118.thread
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r0, r8
	bl	__fclose_ca
	ldr	r9, [sp, #40]           @ 4-byte Reload
	b	.LBB0_53
.LBB0_53:                               @ %if.end118.thread
	ldr	r5, [sp, #60]           @ 4-byte Reload
	ldr	r7, [sp, #44]           @ 4-byte Reload
	ldr	r4, [sp, #52]           @ 4-byte Reload
	add	r6, sp, #128
	b	.LBB0_58
.LBB0_54:                               @ %if.end118
	mov	r0, r8
	bl	__fclose_ca
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r9, [sp, #40]           @ 4-byte Reload
	b	.LBB0_55
.LBB0_55:                               @ %if.end118
	ldr	r5, [sp, #60]           @ 4-byte Reload
	ldr	r7, [sp, #44]           @ 4-byte Reload
	ldr	r4, [sp, #52]           @ 4-byte Reload
	add	r6, sp, #128
	mov	r1, #2
	cmp	r0, #0
	bne	.LBB0_58
	b	.LBB0_56
.LBB0_56:                               @ %if.then120
	mov	r0, #53
	strh	r1, [r6, #8]
	bl	htons
	strh	r0, [r6, #10]
	b	.LBB0_57
.LBB0_57:                               @ %if.then120
	mov	r0, #1
	orr	r0, r0, #2130706432
	bl	htonl
	str	r0, [sp, #140]
	mov	r0, #1
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB0_58
.LBB0_58:                               @ %if.end132
	strh	r7, [r6, #92]
	ldr	r1, .LCPI0_17
	mov	r0, r7
	mov	r2, #0
	b	.LBB0_59
.LCPI0_17:
	.long	526338                  @ 0x80802
.LBB0_59:                               @ %if.end132
	bl	socket
	mov	r11, r0
	cmp	r7, #10
	bne	.LBB0_63
	b	.LBB0_60
.LBB0_60:                               @ %if.end132
	cmp	r11, #0
	bge	.LBB0_63
	b	.LBB0_61
.LBB0_61:                               @ %land.lhs.true142
	bl	__errno_location
	ldr	r0, [r0]
	mov	r7, #10
	cmp	r0, #97
	bne	.LBB0_63
	b	.LBB0_62
.LBB0_62:                               @ %if.then146
	ldr	r1, .LCPI0_18
	mov	r0, #2
	mov	r2, #0
	mov	r7, #2
	bl	socket
	mov	r11, r0
	b	.LBB0_63
.LCPI0_18:
	.long	526338                  @ 0x80802
.LBB0_63:                               @ %if.end148
	mvn	r8, #0
	cmp	r11, #0
	blt	.LBB0_138
	b	.LBB0_64
.LBB0_64:                               @ %lor.lhs.false151
	add	r1, sp, #220
	mov	r0, r11
	mov	r2, r5
	str	r4, [sp, #52]           @ 4-byte Spill
	bl	bind
	cmp	r0, #0
	blt	.LBB0_138
	b	.LBB0_65
.LBB0_65:                               @ %do.body
	ldr	r1, .LCPI0_19
	add	r0, sp, #80
	mov	r2, r11
	str	r9, [sp, #40]           @ 4-byte Spill
	b	.LBB0_66
.LCPI0_19:
	.long	cleanup
.LBB0_66:                               @ %do.body
	bl	_pthread_cleanup_push
	ldr	r0, [sp, #132]
	mov	r1, #0
	mov	r4, #0
	bl	pthread_setcancelstate
	cmp	r7, #10
	bne	.LBB0_74
	b	.LBB0_67
.LBB0_67:                               @ %if.then160
	mov	r0, #4
	add	r3, sp, #76
	mov	r1, #41
	mov	r2, #26
	b	.LBB0_68
.LBB0_68:                               @ %if.then160
	str	r4, [sp, #76]
	str	r0, [sp]
	mov	r0, r11
	bl	setsockopt
	ldr	r0, [sp, #48]           @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB0_74
	b	.LBB0_69
.LBB0_69:                               @ %for.body165.lr.ph
	ldr	r4, .LCPI0_20
	ldr	r10, [sp, #48]          @ 4-byte Reload
	add	r0, sp, #136
	mov	r8, #10
	mov	r9, #0
	add	r7, r0, #24
	b	.LBB0_70
.LCPI0_20:
	.long	.L.str5
.LBB0_70:                               @ %for.body165
                                        @ =>This Inner Loop Header: Depth=1
	ldrh	r0, [r7, #-24]
	cmp	r0, #2
	bne	.LBB0_73
	b	.LBB0_71
.LBB0_71:                               @ %if.end173
                                        @   in Loop: Header=BB0_70 Depth=1
	sub	r0, r7, #4
	sub	r1, r7, #20
	mov	r2, #4
	bl	memcpy
	b	.LBB0_72
.LBB0_72:                               @ %if.end173
                                        @   in Loop: Header=BB0_70 Depth=1
	sub	r0, r7, #16
	mov	r1, r4
	mov	r2, #12
	bl	memcpy
	strh	r8, [r7, #-24]
	str	r9, [r7, #-20]
	str	r9, [r7]
	b	.LBB0_73
.LBB0_73:                               @ %for.inc198
                                        @   in Loop: Header=BB0_70 Depth=1
	add	r7, r7, #28
	subs	r10, r10, #1
	bne	.LBB0_70
	b	.LBB0_74
.LBB0_74:                               @ %if.end201
	ldr	r0, [sp, #52]           @ 4-byte Reload
	mov	r1, #0
	lsl	r2, r0, #2
	ldr	r0, [sp, #752]
	b	.LBB0_75
.LBB0_75:                               @ %if.end201
	bl	memset
	mov	r0, #1
	str	r11, [sp, #124]
	add	r1, sp, #704
	b	.LBB0_76
.LBB0_76:                               @ %if.end201
	strh	r0, [r6]
	mov	r0, #0
	bl	clock_gettime
	ldr	r6, .LCPI0_21
	b	.LBB0_77
.LCPI0_21:
	.long	1125899907              @ 0x431bde83
.LBB0_77:                               @ %if.end201
	ldr	r4, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #64]           @ 4-byte Reload
	ldr	r8, [sp, #704]
	ldr	r7, [sp, #708]
	b	.LBB0_78
.LBB0_78:                               @ %if.end201
	mov	r0, r4
	bl	__aeabi_idiv
	cmp	r4, #0
	ldr	r4, [sp, #48]           @ 4-byte Reload
	b	.LBB0_79
.LBB0_79:                               @ %if.end201
	mov	r2, #0
	mov	r10, r5
	str	r0, [sp, #32]           @ 4-byte Spill
	beq	.LBB0_137
	b	.LBB0_80
.LBB0_80:                               @ %for.body211.lr.ph
	smull	r0, r1, r7, r6
	asr	r0, r1, #18
	add	r0, r0, r1, lsr #31
	mov	r1, #1000
	b	.LBB0_81
.LBB0_81:                               @ %for.body211.lr.ph
	mla	r3, r8, r1, r0
	ldr	r0, [sp, #32]           @ 4-byte Reload
	mov	r7, r3
	str	r3, [sp, #16]           @ 4-byte Spill
	b	.LBB0_82
.LBB0_82:                               @ %for.body211.lr.ph
	sub	r0, r3, r0
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r0, [sp, #52]           @ 4-byte Reload
	sub	r1, r0, #1
	b	.LBB0_83
.LBB0_83:                               @ %for.body211.lr.ph
	lsl	r0, r0, #1
	str	r0, [sp, #24]           @ 4-byte Spill
                                        @ implicit-def: R0
	str	r1, [sp, #60]           @ 4-byte Spill
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_84
.LBB0_84:                               @ %for.body211
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_87 Depth 2
                                        @       Child Loop BB0_90 Depth 3
                                        @     Child Loop BB0_102 Depth 2
                                        @       Child Loop BB0_104 Depth 3
                                        @       Child Loop BB0_110 Depth 3
                                        @       Child Loop BB0_129 Depth 3
	ldr	r3, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	str	r7, [sp, #44]           @ 4-byte Spill
	mov	r8, r4
	b	.LBB0_85
.LBB0_85:                               @ %for.body211
                                        @   in Loop: Header=BB0_84 Depth=1
	sub	r0, r7, r3
	cmp	r0, r1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	movhs	r3, r7
	ldr	r7, [sp, #36]           @ 4-byte Reload
	movhs	r7, r0
	blo	.LBB0_94
	b	.LBB0_86
.LBB0_86:                               @ %for.body211
                                        @   in Loop: Header=BB0_84 Depth=1
	ldr	r1, [sp, #52]           @ 4-byte Reload
	ldr	r9, [sp, #40]           @ 4-byte Reload
	ldr	r4, [sp, #68]           @ 4-byte Reload
	mov	r0, #0
	str	r2, [sp, #64]           @ 4-byte Spill
	cmp	r1, #1
	blt	.LBB0_95
	b	.LBB0_87
.LBB0_87:                               @ %for.body219
                                        @   Parent Loop BB0_84 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_90 Depth 3
	ldr	r1, [sp, #752]
	mov	r7, r0
	cmp	r8, #1
	mov	r0, #0
	b	.LBB0_88
.LBB0_88:                               @ %for.body219
                                        @   in Loop: Header=BB0_87 Depth=2
	movlt	r0, #1
	ldr	r1, [r1, r7, lsl #2]
	cmp	r1, #0
	cmpeq	r0, #0
	bne	.LBB0_92
	b	.LBB0_89
.LBB0_89:                               @ %for.body226.lr.ph
                                        @   in Loop: Header=BB0_87 Depth=2
	add	r5, sp, #136
	mov	r6, r8
	b	.LBB0_90
.LBB0_90:                               @ %for.body226
                                        @   Parent Loop BB0_84 Depth=1
                                        @     Parent Loop BB0_87 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r9, r7, lsl #2]
	ldr	r1, [r4, r7, lsl #2]
	mov	r0, r11
	mov	r3, #16384
	b	.LBB0_91
.LBB0_91:                               @ %for.body226
                                        @   in Loop: Header=BB0_90 Depth=3
	stm	sp, {r5, r10}
	bl	sendto
	add	r5, r5, #28
	subs	r6, r6, #1
	bne	.LBB0_90
	b	.LBB0_92
.LBB0_92:                               @ %for.inc235
                                        @   in Loop: Header=BB0_87 Depth=2
	ldr	r1, [sp, #60]           @ 4-byte Reload
	add	r0, r7, #1
	cmp	r7, r1
	bne	.LBB0_87
	b	.LBB0_93
.LBB0_93:                               @   in Loop: Header=BB0_84 Depth=1
	ldr	r7, [sp, #24]           @ 4-byte Reload
	ldr	r3, [sp, #44]           @ 4-byte Reload
	b	.LBB0_95
.LBB0_94:                               @   in Loop: Header=BB0_84 Depth=1
	ldr	r9, [sp, #40]           @ 4-byte Reload
	ldr	r4, [sp, #68]           @ 4-byte Reload
	str	r2, [sp, #64]           @ 4-byte Spill
	b	.LBB0_95
.LBB0_95:                               @ %if.end239
                                        @   in Loop: Header=BB0_84 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #44]           @ 4-byte Reload
	str	r7, [sp, #36]           @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	b	.LBB0_96
.LBB0_96:                               @ %if.end239
                                        @   in Loop: Header=BB0_84 Depth=1
	str	r9, [sp, #40]           @ 4-byte Spill
	str	r4, [sp, #68]           @ 4-byte Spill
	sub	r0, r0, r1
	mov	r1, #1
	b	.LBB0_97
.LBB0_97:                               @ %if.end239
                                        @   in Loop: Header=BB0_84 Depth=1
	add	r2, r0, r3
	add	r0, sp, #124
	bl	poll
	add	r6, sp, #220
	cmp	r0, #1
	blt	.LBB0_132
	b	.LBB0_98
.LBB0_98:                               @ %while.cond.preheader
                                        @   in Loop: Header=BB0_84 Depth=1
	ldr	r9, [sp, #56]           @ 4-byte Reload
	ldr	r0, [sp, #64]           @ 4-byte Reload
	ldr	r2, [sp, #756]
	mov	r3, #0
	b	.LBB0_99
.LBB0_99:                               @ %while.cond.preheader
                                        @   in Loop: Header=BB0_84 Depth=1
	mov	r5, r10
	ldr	r1, [r9, r0, lsl #2]!
	add	r0, sp, #72
	str	r6, [sp]
	b	.LBB0_100
.LBB0_100:                              @ %while.cond.preheader
                                        @   in Loop: Header=BB0_84 Depth=1
	str	r10, [sp, #72]
	str	r0, [sp, #4]
	mov	r0, r11
	bl	recvfrom
	b	.LBB0_101
.LBB0_101:                              @ %while.cond.preheader
                                        @   in Loop: Header=BB0_84 Depth=1
	mov	r10, r0
	mov	r4, r8
	cmp	r10, #0
	blt	.LBB0_133
	b	.LBB0_102
.LBB0_102:                              @ %while.body
                                        @   Parent Loop BB0_84 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_104 Depth 3
                                        @       Child Loop BB0_110 Depth 3
                                        @       Child Loop BB0_129 Depth 3
	cmp	r10, #3
	ble	.LBB0_107
	b	.LBB0_103
.LBB0_103:                              @ %for.cond256.preheader
                                        @   in Loop: Header=BB0_102 Depth=2
	mov	r7, #0
	add	r8, sp, #136
	cmp	r4, #1
	blt	.LBB0_106
	b	.LBB0_104
.LBB0_104:                              @ %land.rhs259
                                        @   Parent Loop BB0_84 Depth=1
                                        @     Parent Loop BB0_102 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	bl	memcmp
	cmp	r0, #0
	beq	.LBB0_106
	b	.LBB0_105
.LBB0_105:                              @ %for.inc266
                                        @   in Loop: Header=BB0_104 Depth=3
	add	r7, r7, #1
	add	r8, r8, #28
	cmp	r7, r4
	blt	.LBB0_104
	b	.LBB0_106
.LBB0_106:                              @ %for.end268
                                        @   in Loop: Header=BB0_102 Depth=2
	cmp	r7, r4
	bne	.LBB0_108
	b	.LBB0_107
.LBB0_107:                              @   in Loop: Header=BB0_102 Depth=2
	ldr	r12, [sp, #64]          @ 4-byte Reload
	mov	r8, r6
	b	.LBB0_116
.LBB0_108:                              @ %for.cond273.preheader
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r12, [sp, #64]          @ 4-byte Reload
	ldr	r4, [sp, #52]           @ 4-byte Reload
	mov	r8, r6
	mov	r0, r12
	cmp	r12, r4
	bge	.LBB0_113
	b	.LBB0_109
.LBB0_109:                              @ %land.rhs276.lr.ph
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r1, [r9]
	mov	r0, r12
	ldrb	r2, [r1]
	b	.LBB0_110
.LBB0_110:                              @ %land.rhs276
                                        @   Parent Loop BB0_84 Depth=1
                                        @     Parent Loop BB0_102 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r3, [sp, #68]           @ 4-byte Reload
	ldr	r3, [r3, r0, lsl #2]
	ldrb	r6, [r3]
	cmp	r2, r6
	bne	.LBB0_112
	b	.LBB0_111
.LBB0_111:                              @ %lor.rhs
                                        @   in Loop: Header=BB0_110 Depth=3
	ldrb	r3, [r3, #1]
	ldrb	r6, [r1, #1]
	cmp	r6, r3
	beq	.LBB0_113
	b	.LBB0_112
.LBB0_112:                              @ %for.inc295
                                        @   in Loop: Header=BB0_110 Depth=3
	add	r0, r0, #1
	cmp	r0, r4
	blt	.LBB0_110
	b	.LBB0_113
.LBB0_113:                              @ %for.end297
                                        @   in Loop: Header=BB0_102 Depth=2
	cmp	r0, r4
	beq	.LBB0_115
	b	.LBB0_114
.LBB0_114:                              @ %if.end301
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r1, [sp, #752]
	ldr	r1, [r1, r0, lsl #2]
	cmp	r1, #0
	beq	.LBB0_119
	b	.LBB0_115
.LBB0_115:                              @   in Loop: Header=BB0_102 Depth=2
	ldr	r4, [sp, #48]           @ 4-byte Reload
	b	.LBB0_116
.LBB0_116:                              @ %while.cond.backedge
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r9, [sp, #56]           @ 4-byte Reload
	str	r12, [sp, #64]          @ 4-byte Spill
	ldr	r2, [sp, #756]
	mov	r6, r8
	b	.LBB0_117
.LBB0_117:                              @ %while.cond.backedge
                                        @   in Loop: Header=BB0_102 Depth=2
	add	r0, sp, #72
	mov	r3, #0
	ldr	r1, [r9, r12, lsl #2]!
	str	r6, [sp]
	b	.LBB0_118
.LBB0_118:                              @ %while.cond.backedge
                                        @   in Loop: Header=BB0_102 Depth=2
	str	r0, [sp, #4]
	mov	r0, r11
	str	r5, [sp, #72]
	bl	recvfrom
	mov	r10, r0
	cmp	r10, #0
	bge	.LBB0_102
	b	.LBB0_133
.LBB0_119:                              @ %if.end305
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r1, [r9]
	ldrb	r2, [r1, #3]
	ands	r2, r2, #15
	cmpne	r2, #3
	beq	.LBB0_126
	b	.LBB0_120
.LBB0_120:                              @ %if.end305
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r4, [sp, #48]           @ 4-byte Reload
	cmp	r2, #2
	bne	.LBB0_116
	b	.LBB0_121
.LBB0_121:                              @ %sw.bb309
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r6, [sp, #36]           @ 4-byte Reload
	ldr	r2, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #68]           @ 4-byte Reload
	cmp	r6, #0
	beq	.LBB0_125
	b	.LBB0_122
.LBB0_122:                              @ %land.lhs.true311
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r2, [r2, r0, lsl #2]
	ldr	r1, [r1, r0, lsl #2]
	rsb	r0, r7, r7, lsl #3
	add	r3, sp, #136
	b	.LBB0_123
.LBB0_123:                              @ %land.lhs.true311
                                        @   in Loop: Header=BB0_102 Depth=2
	mov	r7, r12
	add	r0, r3, r0, lsl #2
	mov	r3, #16384
	stm	sp, {r0, r5}
	b	.LBB0_124
.LBB0_124:                              @ %land.lhs.true311
                                        @   in Loop: Header=BB0_102 Depth=2
	mov	r0, r11
	bl	sendto
	sub	r6, r6, #1
	mov	r12, r7
	str	r6, [sp, #36]           @ 4-byte Spill
	b	.LBB0_116
.LBB0_125:                              @   in Loop: Header=BB0_102 Depth=2
	mov	r0, #0
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_116
.LBB0_126:                              @ %sw.epilog
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r2, [sp, #752]
	cmp	r0, r12
	str	r10, [r2, r0, lsl #2]
	beq	.LBB0_129
	b	.LBB0_127
.LBB0_127:                              @ %if.else334
                                        @   in Loop: Header=BB0_102 Depth=2
	ldr	r2, [sp, #56]           @ 4-byte Reload
	mov	r6, r12
	ldr	r0, [r2, r0, lsl #2]
	mov	r2, r10
	bl	memcpy
	mov	r12, r6
	b	.LBB0_131
.LBB0_128:                              @ %for.inc331
                                        @   in Loop: Header=BB0_129 Depth=3
	add	r12, r12, #1
	b	.LBB0_129
.LBB0_129:                              @ %for.cond323.preheader
                                        @   Parent Loop BB0_84 Depth=1
                                        @     Parent Loop BB0_102 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r12, r4
	bge	.LBB0_131
	b	.LBB0_130
.LBB0_130:                              @ %land.rhs326
                                        @   in Loop: Header=BB0_129 Depth=3
	ldr	r0, [sp, #752]
	ldr	r0, [r0, r12, lsl #2]
	cmp	r0, #0
	bne	.LBB0_128
	b	.LBB0_131
.LBB0_131:                              @ %if.end338
                                        @   in Loop: Header=BB0_102 Depth=2
	cmp	r12, r4
	ldr	r4, [sp, #48]           @ 4-byte Reload
	bne	.LBB0_116
	b	.LBB0_137
.LBB0_132:                              @   in Loop: Header=BB0_84 Depth=1
	mov	r5, r10
	mov	r4, r8
	b	.LBB0_133
.LBB0_133:                              @ %for.inc343
                                        @   in Loop: Header=BB0_84 Depth=1
	mov	r0, #0
	add	r1, sp, #704
	bl	clock_gettime
	ldr	r0, .LCPI0_22
	b	.LBB0_134
.LCPI0_22:
	.long	1125899907              @ 0x431bde83
.LBB0_134:                              @ %for.inc343
                                        @   in Loop: Header=BB0_84 Depth=1
	ldr	r2, [sp, #708]
	ldr	r1, [sp, #704]
	mov	r10, r5
	smull	r3, r7, r2, r0
	b	.LBB0_135
.LBB0_135:                              @ %for.inc343
                                        @   in Loop: Header=BB0_84 Depth=1
	mov	r2, #1000
	asr	r0, r7, #18
	add	r0, r0, r7, lsr #31
	mla	r7, r1, r2, r0
	b	.LBB0_136
.LBB0_136:                              @ %for.inc343
                                        @   in Loop: Header=BB0_84 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r2, [sp, #64]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	sub	r0, r7, r0
	cmp	r0, r1
	blo	.LBB0_84
	b	.LBB0_137
.LBB0_137:                              @ %out
	add	r0, sp, #80
	mov	r1, #1
	bl	_pthread_cleanup_pop
	mov	r8, #0
	b	.LBB0_138
.LBB0_138:                              @ %cleanup
	mov	r0, r8
	add	sp, sp, #716
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__res_msend, .Ltmp0-__res_msend
	.cantunwind
	.fnend

	.align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #6
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	mov	pc, lr
.Ltmp1:
	.size	cleanup, .Ltmp1-cleanup
	.cantunwind
	.fnend

	.type	.L__res_msend.sa,%object @ @__res_msend.sa
	.section	.rodata,"a",%progbits
	.align	2
.L__res_msend.sa:
	.zero	16
	.zero	12
	.size	.L__res_msend.sa, 28

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/etc/resolv.conf"
	.size	.L.str, 17

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"options"
	.size	.L.str1, 8

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"timeout:"
	.size	.L.str2, 9

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"attempts:"
	.size	.L.str3, 10

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"nameserver"
	.size	.L.str4, 11

	.type	.L.str5,%object         @ @.str5
	.section	.rodata,"a",%progbits
.L.str5:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\377\377"
	.size	.L.str5, 13


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
