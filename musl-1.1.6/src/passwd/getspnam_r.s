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
	.file	"src/passwd/getspnam_r.bc"
	.globl	__parsespent
	.align	2
	.type	__parsespent,%function
__parsespent:                           @ @__parsespent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r1
	mov	r1, #58
	b	.LBB0_2
.LBB0_2:                                @ %entry
	str	r0, [r4]
	bl	strchr
	mvn	r6, #0
	cmp	r0, #0
	beq	.LBB0_47
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	mov	r5, #0
	mov	r1, #58
	strb	r5, [r0], #1
	str	r0, [r4, #4]
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_47
	b	.LBB0_4
.LBB0_4:                                @ %if.end4
	strb	r5, [r0]
	mov	r2, r0
	mvn	r6, #0
	ldrb	r1, [r2, #1]!
	cmp	r1, #10
	cmpne	r1, #58
	bne	.LBB0_26
	b	.LBB0_5
.LBB0_5:
	mov	r1, r0
	mvn	r3, #0
	b	.LBB0_6
.LBB0_6:                                @ %xatol.exit
	str	r3, [r4, #8]
	ldrb	r0, [r2]
	cmp	r0, #58
	bne	.LBB0_47
	b	.LBB0_7
.LBB0_7:                                @ %if.end9
	mov	r0, r1
	mvn	r6, #0
	ldrb	r2, [r0, #2]!
	cmp	r2, #10
	cmpne	r2, #58
	bne	.LBB0_29
	b	.LBB0_8
.LBB0_8:
	mvn	r2, #0
	b	.LBB0_9
.LBB0_9:                                @ %xatol.exit149
	str	r2, [r4, #12]
	ldrb	r1, [r0]
	cmp	r1, #58
	bne	.LBB0_47
	b	.LBB0_10
.LBB0_10:                               @ %if.end16
	mov	r2, r0
	mvn	r6, #0
	ldrb	r1, [r2, #1]!
	cmp	r1, #10
	cmpne	r1, #58
	bne	.LBB0_34
	b	.LBB0_11
.LBB0_11:
	mov	r1, r0
	mvn	r3, #0
	b	.LBB0_12
.LBB0_12:                               @ %xatol.exit134
	str	r3, [r4, #16]
	ldrb	r0, [r2]
	cmp	r0, #58
	bne	.LBB0_47
	b	.LBB0_13
.LBB0_13:                               @ %if.end23
	mov	r0, r1
	mvn	r6, #0
	ldrb	r2, [r0, #2]!
	cmp	r2, #10
	cmpne	r2, #58
	bne	.LBB0_37
	b	.LBB0_14
.LBB0_14:
	mvn	r2, #0
	b	.LBB0_15
.LBB0_15:                               @ %xatol.exit119
	str	r2, [r4, #20]
	ldrb	r1, [r0]
	cmp	r1, #58
	bne	.LBB0_47
	b	.LBB0_16
.LBB0_16:                               @ %if.end30
	mov	r2, r0
	mvn	r6, #0
	ldrb	r1, [r2, #1]!
	cmp	r1, #10
	cmpne	r1, #58
	bne	.LBB0_42
	b	.LBB0_17
.LBB0_17:
	mov	r1, r0
	mvn	r3, #0
	b	.LBB0_18
.LBB0_18:                               @ %xatol.exit104
	str	r3, [r4, #24]
	ldrb	r0, [r2]
	cmp	r0, #58
	bne	.LBB0_47
	b	.LBB0_19
.LBB0_19:                               @ %if.end37
	mov	r5, r1
	mvn	r6, #0
	ldrb	r0, [r5, #2]!
	cmp	r0, #10
	cmpne	r0, #58
	bne	.LBB0_48
	b	.LBB0_20
.LBB0_20:
	mvn	r2, #0
	b	.LBB0_21
.LBB0_21:                               @ %xatol.exit89
	str	r2, [r4, #28]
	ldrb	r0, [r5]
	cmp	r0, #58
	bne	.LBB0_47
	b	.LBB0_22
.LBB0_22:                               @ %if.end44
	mov	r2, r5
	mvn	r1, #0
	ldrb	r0, [r2, #1]!
	cmp	r0, #10
	cmpne	r0, #58
	beq	.LBB0_45
	b	.LBB0_23
.LBB0_23:                               @ %for.cond.preheader.i63
	sub	r3, r0, #48
	mov	r1, #0
	cmp	r3, #9
	bhi	.LBB0_45
	b	.LBB0_24
.LBB0_24:                               @ %for.body.i72
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r1, r1, lsl #2
	add	r1, r3, r0, lsl #1
	mov	r0, r5
	mov	r5, r2
	b	.LBB0_25
.LBB0_25:                               @ %for.body.i72
                                        @   in Loop: Header=BB0_24 Depth=1
	ldrb	r3, [r0, #2]!
	sub	r3, r3, #48
	mov	r2, r0
	cmp	r3, #10
	blo	.LBB0_24
	b	.LBB0_46
.LBB0_26:                               @ %for.cond.preheader.i
	sub	r5, r1, #48
	mov	r3, #0
	cmp	r5, #9
	bhi	.LBB0_33
	b	.LBB0_27
.LBB0_27:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r2
	add	r2, r3, r3, lsl #2
	add	r3, r5, r2, lsl #1
	mov	r2, r0
	b	.LBB0_28
.LBB0_28:                               @ %for.body.i
                                        @   in Loop: Header=BB0_27 Depth=1
	ldrb	r0, [r2, #2]!
	sub	r5, r0, #48
	mov	r0, r1
	cmp	r5, #10
	blo	.LBB0_27
	b	.LBB0_6
.LBB0_29:                               @ %for.cond.preheader.i138
	sub	r3, r2, #48
	mov	r2, #0
	cmp	r3, #9
	bhi	.LBB0_9
	b	.LBB0_30
.LBB0_30:                               @ %for.body.i147.preheader
	add	r0, r1, #3
	mov	r2, #0
	b	.LBB0_31
.LBB0_31:                               @ %for.body.i147
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r2, r2, lsl #2
	add	r2, r3, r1, lsl #1
	ldrb	r1, [r0], #1
	sub	r3, r1, #48
	cmp	r3, #10
	blo	.LBB0_31
	b	.LBB0_32
.LBB0_32:                               @ %xatol.exit149.loopexit
	sub	r0, r0, #1
	b	.LBB0_9
.LBB0_33:
	mov	r1, r0
	b	.LBB0_6
.LBB0_34:                               @ %for.cond.preheader.i123
	sub	r5, r1, #48
	mov	r3, #0
	cmp	r5, #9
	bhi	.LBB0_41
	b	.LBB0_35
.LBB0_35:                               @ %for.body.i132
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r2
	add	r2, r3, r3, lsl #2
	add	r3, r5, r2, lsl #1
	mov	r2, r0
	b	.LBB0_36
.LBB0_36:                               @ %for.body.i132
                                        @   in Loop: Header=BB0_35 Depth=1
	ldrb	r0, [r2, #2]!
	sub	r5, r0, #48
	mov	r0, r1
	cmp	r5, #10
	blo	.LBB0_35
	b	.LBB0_12
.LBB0_37:                               @ %for.cond.preheader.i108
	sub	r3, r2, #48
	mov	r2, #0
	cmp	r3, #9
	bhi	.LBB0_15
	b	.LBB0_38
.LBB0_38:                               @ %for.body.i117.preheader
	add	r0, r1, #3
	mov	r2, #0
	b	.LBB0_39
.LBB0_39:                               @ %for.body.i117
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r2, r2, lsl #2
	add	r2, r3, r1, lsl #1
	ldrb	r1, [r0], #1
	sub	r3, r1, #48
	cmp	r3, #10
	blo	.LBB0_39
	b	.LBB0_40
.LBB0_40:                               @ %xatol.exit119.loopexit
	sub	r0, r0, #1
	b	.LBB0_15
.LBB0_41:
	mov	r1, r0
	b	.LBB0_12
.LBB0_42:                               @ %for.cond.preheader.i93
	sub	r5, r1, #48
	mov	r3, #0
	cmp	r5, #9
	bhi	.LBB0_52
	b	.LBB0_43
.LBB0_43:                               @ %for.body.i102
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r2
	add	r2, r3, r3, lsl #2
	add	r3, r5, r2, lsl #1
	mov	r2, r0
	b	.LBB0_44
.LBB0_44:                               @ %for.body.i102
                                        @   in Loop: Header=BB0_43 Depth=1
	ldrb	r0, [r2, #2]!
	sub	r5, r0, #48
	mov	r0, r1
	cmp	r5, #10
	blo	.LBB0_43
	b	.LBB0_18
.LBB0_45:
	mov	r0, r2
	b	.LBB0_46
.LBB0_46:                               @ %xatol.exit74
	str	r1, [r4, #32]
	mov	r6, #0
	ldrb	r0, [r0]
	cmp	r0, #10
	mvnne	r6, #0
	b	.LBB0_47
.LBB0_47:                               @ %return
	mov	r0, r6
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.LBB0_48:                               @ %for.cond.preheader.i78
	sub	r3, r0, #48
	mov	r2, #0
	cmp	r3, #9
	bhi	.LBB0_21
	b	.LBB0_49
.LBB0_49:                               @ %for.body.i87.preheader
	add	r0, r1, #3
	mov	r2, #0
	b	.LBB0_50
.LBB0_50:                               @ %for.body.i87
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r2, r2, lsl #2
	add	r2, r3, r1, lsl #1
	ldrb	r1, [r0], #1
	sub	r3, r1, #48
	cmp	r3, #10
	blo	.LBB0_50
	b	.LBB0_51
.LBB0_51:                               @ %xatol.exit89.loopexit
	sub	r5, r0, #1
	b	.LBB0_21
.LBB0_52:
	mov	r1, r0
	b	.LBB0_18
.Ltmp0:
	.size	__parsespent, .Ltmp0-__parsespent
	.cantunwind
	.fnend

	.globl	getspnam_r
	.align	2
	.type	getspnam_r,%function
getspnam_r:                             @ @getspnam_r
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#404
	sub	sp, sp, #404
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r7, r0
	mov	r10, r3
	mov	r11, r2
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r8, r1
                                        @ kill: R0<def> R7<kill>
	bl	strlen
	ldr	r1, [sp, #440]
	b	.LBB1_5
.LBB1_5:                                @ %entry
	mov	r5, r0
	mov	r0, #0
	mov	r4, #22
	str	r0, [r1]
	ldrb	r0, [r7]
	cmp	r0, #46
	beq	.LBB1_34
	b	.LBB1_6
.LBB1_6:                                @ %lor.lhs.false
	mov	r0, r7
	mov	r1, #47
	bl	strchr
	cmp	r5, #0
	beq	.LBB1_34
	b	.LBB1_7
.LBB1_7:                                @ %lor.lhs.false
	cmp	r0, #0
	bne	.LBB1_34
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	add	r0, r5, #100
	mov	r4, #34
	cmp	r0, r10
	bhi	.LBB1_34
	b	.LBB1_9
.LBB1_9:                                @ %if.end8
	ldr	r2, .LCPI1_5
	mov	r1, #19
	add	r0, sp, #129
	mov	r3, r7
	b	.LBB1_10
.LCPI1_5:
	.long	.L.str
.LBB1_10:                               @ %if.end8
	orr	r1, r1, #256
	bl	snprintf
	mov	r1, #18
	mov	r4, #22
	orr	r1, r1, #256
	cmp	r0, r1
	bhi	.LBB1_34
	b	.LBB1_11
.LBB1_11:                               @ %if.end13
	mov	r1, #34816
	add	r0, sp, #129
	orr	r1, r1, #524288
	bl	open
	mov	r4, r0
	cmp	r4, #0
	blt	.LBB1_20
	b	.LBB1_12
.LBB1_12:                               @ %if.then18
	add	r9, sp, #16
	mov	r1, #104
	mov	r2, #0
	mov	r0, r9
	b	.LBB1_13
.LBB1_13:                               @ %if.then18
	bl	__aeabi_memset
	bl	__errno_location
	mov	r6, r0
	mov	r0, #22
	b	.LBB1_14
.LBB1_14:                               @ %if.then18
	mov	r1, r9
	str	r0, [r6]
	mov	r0, r4
	bl	fstat
	cmp	r0, #0
	bne	.LBB1_18
	b	.LBB1_15
.LBB1_15:                               @ %lor.lhs.false22
	ldr	r0, [sp, #32]
	and	r0, r0, #61440
	cmp	r0, #32768
	bne	.LBB1_18
	b	.LBB1_16
.LBB1_16:                               @ %lor.lhs.false25
	ldr	r1, .LCPI1_8
	mov	r0, r4
	bl	fdopen
	cmp	r0, #0
	beq	.LBB1_18
	b	.LBB1_17
.LCPI1_8:
	.long	.L.str1
.LBB1_17:                               @ %cleanup.thread
	mov	r9, r0
	b	.LBB1_21
.LBB1_18:                               @ %cleanup
	add	r1, sp, #124
	mov	r0, #1
	bl	pthread_setcancelstate
	mov	r0, r4
	b	.LBB1_19
.LBB1_19:                               @ %cleanup
	bl	close
	ldr	r0, [sp, #124]
	mov	r1, #0
	bl	pthread_setcancelstate
	ldr	r4, [r6]
	b	.LBB1_34
.LBB1_20:                               @ %if.else
	ldr	r0, .LCPI1_6
	ldr	r1, .LCPI1_7
	bl	fopen
	mov	r9, r0
	cmp	r9, #0
	beq	.LBB1_33
	b	.LBB1_21
.LCPI1_6:
	.long	.L.str2
.LCPI1_7:
	.long	.L.str3
.LBB1_21:                               @ %do.body
	ldr	r1, .LCPI1_9
	add	r0, sp, #4
	mov	r2, r9
	bl	_pthread_cleanup_push
	b	.LBB1_22
.LCPI1_9:
	.long	cleanup
.LBB1_22:                               @ %do.body
	mov	r0, r11
	mov	r1, r10
	mov	r2, r9
	bl	fgets
	mov	r4, #0
	cmp	r0, #0
	beq	.LBB1_32
	b	.LBB1_23
.LBB1_23:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r11
	bl	strlen
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB1_31
	b	.LBB1_24
.LBB1_24:                               @ %while.body
                                        @   in Loop: Header=BB1_23 Depth=1
	cmp	r4, #0
	bne	.LBB1_26
	b	.LBB1_25
.LBB1_25:                               @ %lor.lhs.false46
                                        @   in Loop: Header=BB1_23 Depth=1
	mov	r0, r7
	mov	r1, r11
	mov	r2, r5
	bl	strncmp
	cmp	r0, #0
	beq	.LBB1_28
	b	.LBB1_26
.LBB1_26:                               @ %if.then49
                                        @   in Loop: Header=BB1_23 Depth=1
	add	r0, r6, r11
	mov	r4, #0
	ldrb	r0, [r0, #-1]
	cmp	r0, #10
	movne	r4, #1
	b	.LBB1_27
.LBB1_27:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB1_23 Depth=1
	mov	r0, r11
	mov	r1, r10
	mov	r2, r9
	bl	fgets
	cmp	r0, #0
	bne	.LBB1_23
	b	.LBB1_31
.LBB1_28:                               @ %if.end53
                                        @   in Loop: Header=BB1_23 Depth=1
	add	r0, r6, r11
	mov	r4, #34
	ldrb	r0, [r0, #-1]
	cmp	r0, #10
	bne	.LBB1_32
	b	.LBB1_29
.LBB1_29:                               @ %if.end60
                                        @   in Loop: Header=BB1_23 Depth=1
	mov	r0, r11
	mov	r1, r8
	bl	__parsespent
	mov	r4, #0
	cmp	r0, #0
	blt	.LBB1_27
	b	.LBB1_30
.LBB1_30:                               @ %if.end65
	ldr	r0, [sp, #440]
	str	r8, [r0]
	b	.LBB1_31
.LBB1_31:                               @ %while.end
	mov	r4, #0
	b	.LBB1_32
.LBB1_32:                               @ %while.end
	add	r0, sp, #4
	mov	r1, #1
	bl	_pthread_cleanup_pop
	b	.LBB1_34
.LBB1_33:                               @ %if.then36
	bl	__errno_location
	ldr	r4, [r0]
	b	.LBB1_34
.LBB1_34:                               @ %cleanup66
	mov	r0, r4
	add	sp, sp, #404
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	getspnam_r, .Ltmp1-getspnam_r
	.cantunwind
	.fnend

	.align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	b	fclose
.Ltmp2:
	.size	cleanup, .Ltmp2-cleanup
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/etc/tcb/%s/shadow"
	.size	.L.str, 19

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"rb"
	.size	.L.str1, 3

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"/etc/shadow"
	.size	.L.str2, 12

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"rbe"
	.size	.L.str3, 4


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
