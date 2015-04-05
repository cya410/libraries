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
	.file	"src/network/lookup_serv.bc"
	.globl	__lookup_serv
	.align	2
	.type	__lookup_serv,%function
__lookup_serv:                          @ @__lookup_serv
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#292
	sub	sp, sp, #292
	b	.LBB0_3
.LBB0_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r6, r1
	ldr	r1, .LCPI0_4
	b	.LBB0_4
.LCPI0_4:
	.long	.L.str
.LBB0_4:                                @ %entry
	mov	r8, r0
	mov	r4, r3
	mov	r11, r2
	mov	r0, #0
	cmp	r6, #0
	str	r1, [sp, #1184]
	beq	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	ldrb	r0, [r6]
	mvn	r7, #7
	cmp	r0, #0
	beq	.LBB0_45
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	add	r1, sp, #1184
	mov	r0, r6
	mov	r2, #10
	bl	strtoul
	ldr	r1, [sp, #1184]
	b	.LBB0_7
.LBB0_7:                                @ %if.end3
	ldrb	r1, [r1]
	mvn	r7, #7
	cmp	r1, #0
	beq	.LBB0_41
	b	.LBB0_8
.LBB0_8:                                @ %if.end24
	tst	r4, #1024
	bne	.LBB0_45
	b	.LBB0_9
.LBB0_9:                                @ %if.end27
	mov	r0, r6
	bl	strlen
	mov	r4, r0
	ldr	r0, .LCPI0_5
	b	.LBB0_10
.LCPI0_5:
	.long	.L.str1
.LBB0_10:                               @ %if.end27
	mov	r3, #8
	add	r1, sp, #16
	add	r2, sp, #152
	orr	r3, r3, #1024
	b	.LBB0_11
.LBB0_11:                               @ %if.end27
	bl	__fopen_rb_ca
	mov	r10, r0
	mvn	r7, #7
	cmp	r10, #0
	beq	.LBB0_45
	b	.LBB0_12
.LBB0_12:                               @ %while.cond.preheader
	add	r9, sp, #1024
	mov	r1, #128
	mov	r2, r10
	add	r5, r9, #164
	b	.LBB0_13
.LBB0_13:                               @ %while.cond.preheader
	mov	r0, r5
	bl	fgets
	mov	r7, #0
	cmp	r0, #0
	beq	.LBB0_40
	b	.LBB0_14
.LBB0_14:                               @ %while.body.lr.ph.lr.ph
	mov	r9, #0
	mov	r7, #0
	b	.LBB0_15
.LBB0_15:                               @ %while.body.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_16 Depth 2
                                        @       Child Loop BB0_19 Depth 3
                                        @       Child Loop BB0_25 Depth 3
	str	r11, [sp, #12]          @ 4-byte Spill
	str	r8, [sp, #8]            @ 4-byte Spill
	b	.LBB0_16
.LBB0_16:                               @ %while.body
                                        @   Parent Loop BB0_15 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_19 Depth 3
                                        @       Child Loop BB0_25 Depth 3
	mov	r0, r5
	mov	r1, #35
	bl	strchr
	cmp	r0, #0
	b	.LBB0_17
.LBB0_17:                               @ %while.body
                                        @   in Loop: Header=BB0_16 Depth=2
	movne	r1, #10
	strbne	r9, [r0, #1]
	strbne	r1, [r0]
	mov	r0, r5
	b	.LBB0_19
.LBB0_18:                               @ %for.inc
                                        @   in Loop: Header=BB0_19 Depth=3
	add	r0, r0, #1
	b	.LBB0_19
.LBB0_19:                               @ %for.cond.preheader
                                        @   Parent Loop BB0_15 Depth=1
                                        @     Parent Loop BB0_16 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r1, r6
	bl	strstr
	cmp	r0, #0
	beq	.LBB0_32
	b	.LBB0_20
.LBB0_20:                               @ %for.body
                                        @   in Loop: Header=BB0_19 Depth=3
	cmp	r0, r5
	bls	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_19 Depth=3
	ldrb	r1, [r0, #-1]
	cmp	r1, #32
	subne	r1, r1, #9
	cmpne	r1, #4
	bhi	.LBB0_18
	b	.LBB0_22
.LBB0_22:                               @ %if.end54
                                        @   in Loop: Header=BB0_19 Depth=3
	ldrb	r1, [r0, r4]
	cmp	r1, #0
	cmpne	r1, #32
	beq	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               @ %land.lhs.true58
                                        @   in Loop: Header=BB0_19 Depth=3
	sub	r1, r1, #9
	cmp	r1, #4
	bhi	.LBB0_18
	b	.LBB0_24
.LBB0_24:                               @ %for.cond70.preheader
                                        @   in Loop: Header=BB0_16 Depth=2
	ldrb	r0, [sp, #1188]
	mov	r8, r5
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_25
.LBB0_25:                               @ %land.rhs73
                                        @   Parent Loop BB0_15 Depth=1
                                        @     Parent Loop BB0_16 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	and	r0, r0, #255
	cmp	r0, #32
	beq	.LBB0_28
	b	.LBB0_26
.LBB0_26:                               @ %land.rhs73
                                        @   in Loop: Header=BB0_25 Depth=3
	sub	r0, r0, #9
	cmp	r0, #5
	blo	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               @ %for.inc79
                                        @   in Loop: Header=BB0_25 Depth=3
	ldrb	r0, [r8, #1]!
	cmp	r0, #0
	bne	.LBB0_25
	b	.LBB0_28
.LBB0_28:                               @ %for.end81
                                        @   in Loop: Header=BB0_16 Depth=2
	mov	r0, r8
	add	r1, sp, #1184
	mov	r2, #10
	bl	strtoul
	mov	r11, r0
	cmp	r9, r11, lsr #16
	bne	.LBB0_32
	b	.LBB0_29
.LBB0_29:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB0_16 Depth=2
	ldr	r0, [sp, #1184]
	cmp	r0, r8
	beq	.LBB0_32
	b	.LBB0_30
.LBB0_30:                               @ %if.end88
                                        @   in Loop: Header=BB0_16 Depth=2
	ldr	r1, .LCPI0_6
	mov	r2, #4
	bl	strncmp
	cmp	r0, #0
	bne	.LBB0_33
	b	.LBB0_31
.LCPI0_6:
	.long	.L.str2
.LBB0_31:                               @ %if.then91
                                        @   in Loop: Header=BB0_16 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #6
	bne	.LBB0_34
	b	.LBB0_32
.LBB0_32:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB0_16 Depth=2
	mov	r0, r5
	mov	r1, #128
	mov	r2, r10
	bl	fgets
	cmp	r0, #0
	bne	.LBB0_16
	b	.LBB0_40
.LBB0_33:                               @   in Loop: Header=BB0_15 Depth=1
	ldr	r8, [sp, #8]            @ 4-byte Reload
	b	.LBB0_35
.LBB0_34:                               @ %if.end95
                                        @   in Loop: Header=BB0_15 Depth=1
	ldr	r8, [sp, #8]            @ 4-byte Reload
	lsl	r0, r7, #2
	add	r7, r7, #1
	mov	r1, r8
	strh	r11, [r1, r0]!
	mov	r0, #17
	strb	r0, [r1, #2]
	b	.LBB0_35
.LBB0_35:                               @ %if.end102
                                        @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [sp, #1184]
	ldr	r1, .LCPI0_7
	mov	r2, #4
	bl	strncmp
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r1, #17
	beq	.LBB0_38
	b	.LBB0_36
.LCPI0_7:
	.long	.L.str3
.LBB0_36:                               @ %if.end102
                                        @   in Loop: Header=BB0_15 Depth=1
	cmp	r0, #0
	bne	.LBB0_38
	b	.LBB0_37
.LBB0_37:                               @ %if.end109
                                        @   in Loop: Header=BB0_15 Depth=1
	lsl	r0, r7, #2
	mov	r1, r8
	add	r7, r7, #1
	strh	r11, [r1, r0]!
	mov	r0, #6
	strb	r0, [r1, #2]
	b	.LBB0_38
.LBB0_38:                               @   in Loop: Header=BB0_15 Depth=1
	ldr	r11, [sp, #12]          @ 4-byte Reload
	mov	r0, r5
	mov	r1, #128
	mov	r2, r10
	bl	fgets
	cmp	r7, #1
	bgt	.LBB0_40
	b	.LBB0_39
.LBB0_39:                               @ %while.cond.outer.backedge
                                        @   in Loop: Header=BB0_15 Depth=1
	cmp	r0, #0
	bne	.LBB0_15
	b	.LBB0_40
.LBB0_40:                               @ %while.end
	mov	r0, r10
	bl	__fclose_ca
	cmp	r7, #0
	mvnle	r7, #7
	b	.LBB0_45
.LBB0_41:                               @ %if.then5
	mov	r1, #0
	cmp	r1, r0, lsr #16
	bne	.LBB0_45
	b	.LBB0_42
.LBB0_42:                               @ %if.end7
	cmp	r11, #17
	beq	.LBB0_44
	b	.LBB0_43
.LBB0_43:                               @ %if.end13
	mov	r1, #6
	strh	r0, [r8]
	mov	r7, #1
	cmp	r11, #6
	strb	r1, [r8, #2]
	mov	r1, #1
	beq	.LBB0_45
	b	.LBB0_44
.LBB0_44:                               @ %if.then16
	lsl	r2, r1, #2
	add	r7, r1, #1
	strh	r0, [r8, r2]!
	mov	r0, #17
	strb	r0, [r8, #2]
	b	.LBB0_45
.LBB0_45:                               @ %cleanup121
	mov	r0, r7
	add	sp, sp, #292
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lookup_serv, .Ltmp0-__lookup_serv
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"/etc/services"
	.size	.L.str1, 14

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"/udp"
	.size	.L.str2, 5

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"/tcp"
	.size	.L.str3, 5


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
