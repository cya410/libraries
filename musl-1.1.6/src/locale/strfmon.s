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
	.file	"src/locale/strfmon.bc"
	.globl	strfmon_l
	.align	2
	.type	strfmon_l,%function
strfmon_l:                              @ @strfmon_l
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	add	r12, sp, #16
	mov	r2, r3
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r3, r12
	str	r12, [sp, #4]
	bl	vstrfmon_l
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strfmon_l, .Ltmp0-strfmon_l
	.cantunwind
	.fnend

	.align	2
	.type	vstrfmon_l,%function
vstrfmon_l:                             @ @vstrfmon_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r9, r0
	mov	r5, r1
	mov	r6, r9
	cmp	r5, #0
	beq	.LBB1_41
	b	.LBB1_4
.LBB1_4:                                @ %land.rhs.lr.ph.lr.ph
	ldr	r8, .LCPI1_0
	mov	r1, r9
	b	.LBB1_5
.LCPI1_0:
	.long	.L.str
.LBB1_5:                                @ %land.rhs.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_6 Depth 2
                                        @     Child Loop BB1_11 Depth 2
                                        @     Child Loop BB1_23 Depth 2
                                        @     Child Loop BB1_26 Depth 2
                                        @     Child Loop BB1_31 Depth 2
	mov	r6, r1
	b	.LBB1_6
.LBB1_6:                                @ %land.rhs
                                        @   Parent Loop BB1_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r2]
	cmp	r0, #37
	bne	.LBB1_9
	b	.LBB1_7
.LBB1_7:                                @ %if.end
                                        @   in Loop: Header=BB1_6 Depth=2
	mov	r7, r2
	mov	lr, #0
	mov	r0, #37
	ldrb	r4, [r7, #1]!
	cmp	r4, #37
	bne	.LBB1_11
	b	.LBB1_8
.LBB1_8:                                @ %literal
                                        @   in Loop: Header=BB1_6 Depth=2
	strb	r0, [r6], #1
	subs	r5, r5, #1
	add	r2, r7, #1
	bne	.LBB1_6
	b	.LBB1_41
.LBB1_9:                                @ %land.rhs
                                        @   in Loop: Header=BB1_6 Depth=2
	mov	r7, r2
	cmp	r0, #0
	bne	.LBB1_8
	b	.LBB1_41
.LBB1_10:                               @ %for.inc
                                        @   in Loop: Header=BB1_11 Depth=2
	mov	r7, r2
	ldrb	r4, [r7, #1]!
	b	.LBB1_11
.LBB1_11:                               @ %for.cond11
                                        @   Parent Loop BB1_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r4, #255
	cmp	r0, #60
	bgt	.LBB1_15
	b	.LBB1_12
.LBB1_12:                               @ %for.cond11
                                        @   in Loop: Header=BB1_11 Depth=2
	cmp	r0, #42
	bgt	.LBB1_17
	b	.LBB1_13
.LBB1_13:                               @ %for.cond11
                                        @   in Loop: Header=BB1_11 Depth=2
	cmp	r0, #33
	beq	.LBB1_21
	b	.LBB1_14
.LBB1_14:                               @ %for.cond11
                                        @   in Loop: Header=BB1_11 Depth=2
	cmp	r0, #40
	beq	.LBB1_21
	b	.LBB1_22
.LBB1_15:                               @ %for.cond11
                                        @   in Loop: Header=BB1_11 Depth=2
	cmp	r0, #61
	bne	.LBB1_20
	b	.LBB1_16
.LBB1_16:                               @ %sw.bb
                                        @   in Loop: Header=BB1_11 Depth=2
	add	r2, r2, #2
	b	.LBB1_10
.LBB1_17:                               @ %for.cond11
                                        @   in Loop: Header=BB1_11 Depth=2
	cmp	r0, #43
	beq	.LBB1_21
	b	.LBB1_18
.LBB1_18:                               @ %for.cond11
                                        @   in Loop: Header=BB1_11 Depth=2
	cmp	r0, #45
	bne	.LBB1_22
	b	.LBB1_19
.LBB1_19:                               @ %sw.bb19
                                        @   in Loop: Header=BB1_11 Depth=2
	mov	lr, #1
	b	.LBB1_21
.LBB1_20:                               @ %for.cond11
                                        @   in Loop: Header=BB1_11 Depth=2
	cmp	r0, #94
	bne	.LBB1_22
	b	.LBB1_21
.LBB1_21:                               @ %for.inc
                                        @   in Loop: Header=BB1_11 Depth=2
	mov	r2, r7
	b	.LBB1_10
.LBB1_22:                               @ %for.cond21.preheader
                                        @   in Loop: Header=BB1_5 Depth=1
	sub	r0, r0, #48
	mov	r12, #0
	mov	r11, #0
	cmp	r0, #10
	bhs	.LBB1_24
	b	.LBB1_23
.LBB1_23:                               @ %for.body25
                                        @   Parent Loop BB1_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r4, [r7, #1]!
	add	r1, r11, r11, lsl #2
	add	r11, r0, r1, lsl #1
	sub	r0, r4, #48
	cmp	r0, #10
	blo	.LBB1_23
	b	.LBB1_24
.LBB1_24:                               @ %for.end30
                                        @   in Loop: Header=BB1_5 Depth=1
	and	r0, r4, #255
	cmp	r0, #35
	bne	.LBB1_28
	b	.LBB1_25
.LBB1_25:                               @ %for.cond36.preheader
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r0, r7
	mov	r12, #0
	ldrb	r4, [r0, #1]!
	sub	r1, r4, #48
	mov	r2, r0
	cmp	r1, #9
	bhi	.LBB1_29
	b	.LBB1_26
.LBB1_26:                               @ %for.body41
                                        @   Parent Loop BB1_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r2, r12, r12, lsl #2
	add	r12, r1, r2, lsl #1
	mov	r2, r7
	mov	r7, r0
	b	.LBB1_27
.LBB1_27:                               @ %for.body41
                                        @   in Loop: Header=BB1_26 Depth=2
	ldrb	r4, [r2, #2]!
	sub	r1, r4, #48
	mov	r0, r2
	cmp	r1, #10
	blo	.LBB1_26
	b	.LBB1_29
.LBB1_28:                               @   in Loop: Header=BB1_5 Depth=1
	mov	r2, r7
	b	.LBB1_29
.LBB1_29:                               @ %if.end49
                                        @   in Loop: Header=BB1_5 Depth=1
	and	r0, r4, #255
	mov	r7, #2
	cmp	r0, #46
	bne	.LBB1_33
	b	.LBB1_30
.LBB1_30:                               @ %for.cond55.preheader
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r0, r2
	mov	r7, #0
	ldrb	r1, [r0, #1]!
	sub	r1, r1, #48
	mov	r4, r0
	cmp	r1, #9
	bhi	.LBB1_34
	b	.LBB1_31
.LBB1_31:                               @ %for.body60
                                        @   Parent Loop BB1_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r4, r7, r7, lsl #2
	add	r7, r1, r4, lsl #1
	mov	r4, r2
	mov	r2, r0
	b	.LBB1_32
.LBB1_32:                               @ %for.body60
                                        @   in Loop: Header=BB1_31 Depth=2
	ldrb	r1, [r4, #2]!
	sub	r1, r1, #48
	mov	r0, r4
	cmp	r1, #10
	blo	.LBB1_31
	b	.LBB1_34
.LBB1_33:                               @   in Loop: Header=BB1_5 Depth=1
	mov	r4, r2
	b	.LBB1_34
.LBB1_34:                               @ %if.end68
                                        @   in Loop: Header=BB1_5 Depth=1
	add	r0, r3, #7
	mov	r2, r8
	bic	r10, r0, #7
	ldm	r10, {r0, r1}
	b	.LBB1_35
.LBB1_35:                               @ %if.end68
                                        @   in Loop: Header=BB1_5 Depth=1
	str	r0, [sp, #8]
	add	r0, r12, r7
	str	r1, [sp, #12]
	mov	r1, #0
	b	.LBB1_36
.LBB1_36:                               @ %if.end68
                                        @   in Loop: Header=BB1_5 Depth=1
	str	r7, [sp]
	add	r3, r0, #1
	mov	r0, #0
	cmp	r11, r3
	b	.LBB1_37
.LBB1_37:                               @ %if.end68
                                        @   in Loop: Header=BB1_5 Depth=1
	movgt	r0, #1
	cmp	lr, #0
	moveq	r1, #1
	tst	r1, r0
	b	.LBB1_38
.LBB1_38:                               @ %if.end68
                                        @   in Loop: Header=BB1_5 Depth=1
	mov	r0, r6
	mov	r1, r5
	movne	r3, r11
	bl	snprintf
	cmp	r5, r0
	bls	.LBB1_43
	b	.LBB1_39
.LBB1_39:                               @ %if.end85
                                        @   in Loop: Header=BB1_5 Depth=1
	subs	r5, r5, r0
	add	r1, r6, r0
	add	r3, r10, #8
	add	r2, r4, #1
	bne	.LBB1_5
	b	.LBB1_40
.LBB1_40:                               @ %for.end87.loopexit1
	add	r6, r6, r0
	b	.LBB1_41
.LBB1_41:                               @ %for.end87
	sub	r0, r6, r9
	b	.LBB1_42
.LBB1_42:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB1_43:                               @ %if.then83
	bl	__errno_location
	mov	r1, #7
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB1_42
.Ltmp1:
	.size	vstrfmon_l, .Ltmp1-vstrfmon_l
	.cantunwind
	.fnend

	.globl	strfmon
	.align	2
	.type	strfmon,%function
strfmon:                                @ @strfmon
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB2_2
.LBB2_2:                                @ %entry
	str	r3, [sp, #20]
	add	r3, sp, #20
	str	r3, [sp, #4]
	ldr	r3, .LCPI2_0
	b	.LBB2_3
.LCPI2_0:
	.long	__libc
.LBB2_3:                                @ %entry
	ldr	r3, [r3, #44]
	ldr	r3, [sp, #4]
	bl	vstrfmon_l
	add	sp, sp, #8
	pop	{r11, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp2:
	.size	strfmon, .Ltmp2-strfmon
	.cantunwind
	.fnend

	.hidden	__libc
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%*.*f"
	.size	.L.str, 6


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
