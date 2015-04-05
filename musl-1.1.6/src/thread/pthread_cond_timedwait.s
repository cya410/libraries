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
	.file	"src/thread/pthread_cond_timedwait.bc"
	.globl	__pthread_cond_timedwait
	.align	2
	.type	__pthread_cond_timedwait,%function
__pthread_cond_timedwait:               @ @__pthread_cond_timedwait
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#52
	sub	sp, sp, #52
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r9, sp, #16
	mov	r11, r2
	mov	r8, r1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r7, r0
	mov	r1, #36
	mov	r2, #0
	mov	r0, r9
	b	.LBB0_5
.LBB0_5:                                @ %entry
	bl	__aeabi_memset
	ldr	r10, [r7, #16]
	ldrb	r0, [r8]
	str	r8, [sp, #40]
	str	r7, [sp, #44]
	tst	r0, #15
	beq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %land.lhs.true
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	mov	r5, #1
	ldr	r0, [r1, #-160]
	ldr	r1, [r8, #4]
	bic	r1, r1, #-2147483648
	cmp	r1, r0
	bne	.LBB0_35
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	cmp	r11, #0
	beq	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %land.lhs.true9
	ldr	r0, [r11, #4]
	ldr	r1, .LCPI0_2
	mov	r5, #22
	cmp	r0, r1
	bhi	.LBB0_35
	b	.LBB0_9
.LCPI0_2:
	.long	999999999               @ 0x3b9ac9ff
.LBB0_9:                                @ %if.end12
	bl	__pthread_testcancel
	ldr	r0, [r7]
	cmp	r0, #0
	beq	.LBB0_13
	b	.LBB0_10
.LBB0_10:                               @ %if.then16
	mov	r0, #1
	str	r0, [sp, #48]
	ldr	r4, [r7, #8]!
	add	r5, r7, #4
	b	.LBB0_11
.LBB0_11:                               @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5]
	mov	r2, r5
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_12
.LBB0_12:
	mov	r6, r7
	b	.LBB0_29
.LBB0_13:                               @ %if.else
	add	r5, r7, #32
	b	.LBB0_14
.LBB0_14:                               @ %for.cond.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #1
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_21
	b	.LBB0_15
.LBB0_15:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_14 Depth=1
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_16
.LBB0_16:                               @ %for.cond.i9.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #1
	mov	r1, #2
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               @ %if.end.i11.i
                                        @   in Loop: Header=BB0_16 Depth=1
	ldr	r0, [r5]
	cmp	r0, #1
	beq	.LBB0_16
	b	.LBB0_18
.LBB0_18:                               @ %do.body.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_19 Depth 2
	mov	r0, r5
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	bl	__wait
	b	.LBB0_19
.LBB0_19:                               @ %for.cond.i16.i
                                        @   Parent Loop BB0_18 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	mov	r1, #2
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %if.end.i18.i
                                        @   in Loop: Header=BB0_19 Depth=2
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_19
	b	.LBB0_18
.LBB0_21:                               @ %lock.exit
	mov	r0, #2
	add	r6, r9, #12
	str	r0, [sp, #28]
	mov	r0, #0
	b	.LBB0_22
.LBB0_22:                               @ %lock.exit
	str	r0, [sp, #24]
	ldr	r0, [r7, #4]
	str	r9, [r7, #4]
	ldr	r1, [r7, #20]
	str	r0, [sp, #20]
	cmp	r1, #0
	beq	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               @ %if.else44
	str	r9, [r0]
	b	.LBB0_25
.LBB0_24:                               @ %if.then40
	str	r9, [r7, #20]
	b	.LBB0_25
.LBB0_25:                               @ %do.body.i.i90
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r5]
	mov	r1, #0
	mov	r2, r5
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_25
	b	.LBB0_26
.LBB0_26:                               @ %a_swap.exit.i
	mov	r4, #2
	cmp	r7, #2
	bne	.LBB0_29
	b	.LBB0_27
.LBB0_27:                               @ %if.then.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_29
	b	.LBB0_28
.LBB0_28:                               @ %lor.rhs.i.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_29
.LBB0_29:                               @ %if.end50
	mov	r0, r8
	bl	__pthread_mutex_unlock
	ldr	r7, .LCPI0_3
	b	.LBB0_30
.LCPI0_3:
	.long	unwait
.LBB0_30:                               @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #48]
	stm	sp, {r7, r9}
	mov	r1, r4
	mov	r2, r10
	b	.LBB0_31
.LBB0_31:                               @ %do.body
                                        @   in Loop: Header=BB0_30 Depth=1
	mov	r3, r11
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	b	.LBB0_32
.LBB0_32:                               @ %do.body
                                        @   in Loop: Header=BB0_30 Depth=1
	str	r0, [sp, #8]
	mov	r0, r6
	bl	__timedwait
	mov	r5, r0
	b	.LBB0_33
.LBB0_33:                               @ %do.body
                                        @   in Loop: Header=BB0_30 Depth=1
	ldr	r0, [r6]
	cmp	r0, r4
	biceq	r0, r5, #4
	cmpeq	r0, #0
	beq	.LBB0_30
	b	.LBB0_34
.LBB0_34:                               @ %do.end
	add	r0, sp, #16
	bl	unwait
	ldr	r0, [sp, #32]
	cmp	r5, #4
	moveq	r5, #0
	cmp	r0, #0
	movne	r5, r0
	b	.LBB0_35
.LBB0_35:                               @ %cleanup
	mov	r0, r5
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_cond_timedwait, .Ltmp0-__pthread_cond_timedwait
	.cantunwind
	.fnend

	.align	2
	.type	unwait,%function
unwait:                                 @ @unwait
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r8, r0
	ldr	r0, [r8, #32]
	cmp	r0, #0
	beq	.LBB1_9
	b	.LBB1_3
.LBB1_3:                                @ %if.then
	ldr	r0, [r8, #28]
	ldr	r5, [r8, #24]
	add	r6, r0, #12
	b	.LBB1_4
.LBB1_4:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r6]
	mov	r2, r6
	sub	r1, r7, #1
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_4
	b	.LBB1_5
.LBB1_5:                                @ %a_fetch_add.exit
	cmp	r7, #-2147483647
	bne	.LBB1_8
	b	.LBB1_6
.LBB1_6:                                @ %if.then1
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_8
	b	.LBB1_7
.LBB1_7:                                @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	mov	r0, r5
	bl	pthread_mutex_lock
	str	r0, [r8, #16]
	b	.LBB1_58
.LBB1_9:                                @ %if.end6
	add	r5, r8, #8
	b	.LBB1_10
.LBB1_10:                               @ %for.cond.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #2
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_20
	b	.LBB1_11
.LBB1_11:                               @ %if.end.i
                                        @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_10
	b	.LBB1_12
.LBB1_12:                               @ %if.else59
	add	r5, r8, #12
	mov	r4, #0
	b	.LBB1_13
.LBB1_13:                               @ %for.cond.i.i142
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #1
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_44
	b	.LBB1_14
.LBB1_14:                               @ %if.end.i.i144
                                        @   in Loop: Header=BB1_13 Depth=1
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_13
	b	.LBB1_15
.LBB1_15:                               @ %for.cond.i9.i147
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #1
	mov	r1, #2
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_17
	b	.LBB1_16
.LBB1_16:                               @ %if.end.i11.i149
                                        @   in Loop: Header=BB1_15 Depth=1
	ldr	r0, [r5]
	cmp	r0, #1
	beq	.LBB1_15
	b	.LBB1_17
.LBB1_17:                               @ %do.body.i150
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_18 Depth 2
	mov	r0, r5
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	mov	r4, #0
	bl	__wait
	b	.LBB1_18
.LBB1_18:                               @ %for.cond.i16.i153
                                        @   Parent Loop BB1_17 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	mov	r1, #2
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_44
	b	.LBB1_19
.LBB1_19:                               @ %if.end.i18.i155
                                        @   in Loop: Header=BB1_18 Depth=2
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_18
	b	.LBB1_17
.LBB1_20:                               @ %if.then9
	ldr	r4, [r8, #28]
	add	r5, r4, #32
	b	.LBB1_21
.LBB1_21:                               @ %for.cond.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #1
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_28
	b	.LBB1_22
.LBB1_22:                               @ %if.end.i.i
                                        @   in Loop: Header=BB1_21 Depth=1
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_21
	b	.LBB1_23
.LBB1_23:                               @ %for.cond.i9.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #1
	mov	r1, #2
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_25
	b	.LBB1_24
.LBB1_24:                               @ %if.end.i11.i
                                        @   in Loop: Header=BB1_23 Depth=1
	ldr	r0, [r5]
	cmp	r0, #1
	beq	.LBB1_23
	b	.LBB1_25
.LBB1_25:                               @ %do.body.i126
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_26 Depth 2
	mov	r0, r5
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	bl	__wait
	b	.LBB1_26
.LBB1_26:                               @ %for.cond.i16.i
                                        @   Parent Loop BB1_25 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	mov	r1, #2
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB1_28
	b	.LBB1_27
.LBB1_27:                               @ %if.end.i18.i
                                        @   in Loop: Header=BB1_26 Depth=2
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_26
	b	.LBB1_25
.LBB1_28:                               @ %lock.exit
	ldr	r0, [r4, #4]
	cmp	r0, r8
	beq	.LBB1_30
	b	.LBB1_29
.LBB1_29:                               @ %if.else
	ldr	r0, [r8]
	cmp	r0, #0
	ldrne	r1, [r8, #4]
	strne	r1, [r0, #4]
	b	.LBB1_31
.LBB1_30:                               @ %if.then18
	ldr	r0, [r8, #4]
	str	r0, [r4, #4]
	b	.LBB1_31
.LBB1_31:                               @ %if.end28
	ldr	r0, [r4, #20]
	cmp	r0, r8
	beq	.LBB1_33
	b	.LBB1_32
.LBB1_32:                               @ %if.else38
	ldr	r0, [r8, #4]
	cmp	r0, #0
	ldrne	r1, [r8]
	strne	r1, [r0]
	b	.LBB1_34
.LBB1_33:                               @ %if.then33
	ldr	r0, [r8]
	str	r0, [r4, #20]
	b	.LBB1_34
.LBB1_34:                               @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r5]
	mov	r1, #0
	mov	r2, r5
	mov	r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_34
	b	.LBB1_35
.LBB1_35:                               @ %a_swap.exit.i
	cmp	r6, #2
	bne	.LBB1_38
	b	.LBB1_36
.LBB1_36:                               @ %if.then.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_38
	b	.LBB1_37
.LBB1_37:                               @ %lor.rhs.i.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_38
.LBB1_38:                               @ %unlock.exit
	ldr	r5, [r8, #20]
	mov	r4, #1
	cmp	r5, #0
	beq	.LBB1_44
	b	.LBB1_39
.LBB1_39:                               @ %do.body.i135
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r5]
	mov	r2, r5
	sub	r1, r6, #1
	mov	r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_39
	b	.LBB1_40
.LBB1_40:                               @ %a_fetch_add.exit136
	cmp	r6, #1
	bne	.LBB1_44
	b	.LBB1_41
.LBB1_41:                               @ %if.then55
	ldr	r3, [r8, #20]
	mov	r7, #240
	mov	r1, #129
	mov	r2, #1
	b	.LBB1_42
.LBB1_42:                               @ %if.then55
	mov	r4, #1
	mov	r0, r3
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_44
	b	.LBB1_43
.LBB1_43:                               @ %lor.rhs.i138
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	mov	r4, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_44
.LBB1_44:                               @ %if.end60
	ldr	r0, [r8, #24]
	bl	pthread_mutex_lock
	str	r0, [r8, #16]
	cmp	r4, #0
	bne	.LBB1_58
	b	.LBB1_45
.LBB1_45:                               @ %if.end66
	ldr	r0, [r8, #4]
	cmp	r0, #0
	bne	.LBB1_48
	b	.LBB1_46
.LBB1_46:                               @ %if.then69
	ldr	r0, [r8, #24]
	add	r5, r0, #8
	b	.LBB1_47
.LBB1_47:                               @ %do.body.i.i160
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5]
	mov	r2, r5
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_47
	b	.LBB1_48
.LBB1_48:                               @ %if.end74
	ldr	r5, [r8]
	cmp	r5, #0
	beq	.LBB1_53
	b	.LBB1_49
.LBB1_49:                               @ %if.then77
	ldr	r0, [r8, #24]
	mov	r2, #0
	ldr	r1, [r0]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB1_50
.LBB1_50:                               @ %if.then77
	str	r2, [r5, #12]!
	@APP
	bl	__a_barrier
	@NO_APP
	tst	r1, #128
	beq	.LBB1_55
	b	.LBB1_51
.LBB1_51:                               @ %if.then.i163
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_58
	b	.LBB1_52
.LBB1_52:                               @ %lor.rhs.i.i164
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_58
.LBB1_53:                               @ %if.else88
	ldr	r0, [r8, #24]
	add	r4, r0, #8
	b	.LBB1_54
.LBB1_54:                               @ %do.body.i.i171
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_54
	b	.LBB1_58
.LBB1_55:                               @ %if.else.i
	add	r4, r0, #4
	mov	r7, #240
	mov	r0, r5
	mov	r1, #131
	b	.LBB1_56
.LBB1_56:                               @ %if.else.i
	mov	r2, #0
	mov	r3, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_58
	b	.LBB1_57
.LBB1_57:                               @ %lor.rhs.i166
	mov	r7, #240
	mov	r0, r5
	mov	r1, #3
	mov	r2, #0
	mov	r3, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_58
.LBB1_58:                               @ %if.end93
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	unwait, .Ltmp1-unwait
	.cantunwind
	.fnend

	.globl	__private_cond_signal
	.align	2
	.type	__private_cond_signal,%function
__private_cond_signal:                  @ @__private_cond_signal
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r9, r0
	mov	r0, #0
	mov	r6, r1
	add	r4, r9, #32
	str	r0, [sp, #4]
	b	.LBB2_4
.LBB2_4:                                @ %for.cond.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #1
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB2_11
	b	.LBB2_5
.LBB2_5:                                @ %if.end.i.i
                                        @   in Loop: Header=BB2_4 Depth=1
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB2_4
	b	.LBB2_6
.LBB2_6:                                @ %for.cond.i9.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #1
	mov	r1, #2
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB2_8
	b	.LBB2_7
.LBB2_7:                                @ %if.end.i11.i
                                        @   in Loop: Header=BB2_6 Depth=1
	ldr	r0, [r4]
	cmp	r0, #1
	beq	.LBB2_6
	b	.LBB2_8
.LBB2_8:                                @ %do.body.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_9 Depth 2
	mov	r0, r4
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	bl	__wait
	b	.LBB2_9
.LBB2_9:                                @ %for.cond.i16.i
                                        @   Parent Loop BB2_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	mov	r1, #2
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB2_11
	b	.LBB2_10
.LBB2_10:                               @ %if.end.i18.i
                                        @   in Loop: Header=BB2_9 Depth=2
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB2_9
	b	.LBB2_8
.LBB2_11:                               @ %lock.exit
	ldr	r5, [r9, #20]
	mov	r8, #0
	cmp	r5, #0
	mov	r0, r5
	b	.LBB2_12
.LBB2_12:                               @ %lock.exit
	movne	r0, #1
	cmp	r6, #0
	cmpne	r5, #0
	beq	.LBB2_20
	b	.LBB2_13
.LBB2_13:
	add	r10, sp, #4
	b	.LBB2_14
.LBB2_14:                               @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_15 Depth 2
	add	r7, r5, #8
	b	.LBB2_15
.LBB2_15:                               @ %for.cond.i
                                        @   Parent Loop BB2_14 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	mov	r1, #1
	mov	r2, r7
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB2_18
	b	.LBB2_16
.LBB2_16:                               @ %if.end.i
                                        @   in Loop: Header=BB2_15 Depth=2
	ldr	r0, [r7]
	cmp	r0, #0
	beq	.LBB2_15
	b	.LBB2_17
.LBB2_17:                               @ %if.then
                                        @   in Loop: Header=BB2_14 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	str	r10, [r5, #20]
	b	.LBB2_19
.LBB2_18:                               @ %if.else
                                        @   in Loop: Header=BB2_14 Depth=1
	cmp	r8, #0
	sub	r6, r6, #1
	moveq	r8, r5
	b	.LBB2_19
.LBB2_19:                               @ %for.inc
                                        @   in Loop: Header=BB2_14 Depth=1
	ldr	r5, [r5]
	cmp	r5, #0
	mov	r0, r5
	movne	r0, #1
	cmp	r6, #0
	cmpne	r5, #0
	bne	.LBB2_14
	b	.LBB2_20
.LBB2_20:                               @ %for.end
	cmp	r0, #1
	bne	.LBB2_22
	b	.LBB2_21
.LBB2_21:                               @ %if.then8
	ldr	r0, [r5, #4]
	cmp	r0, #0
	movne	r1, #0
	strne	r1, [r0]
	mov	r0, #0
	str	r0, [r5, #4]
	b	.LBB2_23
.LBB2_22:                               @ %if.else15
	mov	r0, #0
	str	r0, [r9, #4]
	b	.LBB2_23
.LBB2_23:                               @ %if.end19
	str	r5, [r9, #20]
	b	.LBB2_24
.LBB2_24:                               @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4]
	mov	r1, #0
	mov	r2, r4
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB2_24
	b	.LBB2_25
.LBB2_25:                               @ %a_swap.exit.i
	cmp	r5, #2
	bne	.LBB2_28
	b	.LBB2_26
.LBB2_26:                               @ %if.then.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB2_28
	b	.LBB2_27
.LBB2_27:                               @ %lor.rhs.i.i
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB2_28
.LBB2_28:                               @ %while.cond.preheader
	ldr	r2, [sp, #4]
	cmp	r2, #0
	beq	.LBB2_31
	b	.LBB2_29
.LBB2_29:
	add	r4, sp, #4
	b	.LBB2_30
.LBB2_30:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, #0
	mov	r3, #1
	bl	__wait
	ldr	r2, [sp, #4]
	cmp	r2, #0
	bne	.LBB2_30
	b	.LBB2_31
.LBB2_31:                               @ %while.end
	cmp	r8, #0
	beq	.LBB2_37
	b	.LBB2_32
.LBB2_32:                               @ %if.then28
	add	r4, r8, #12
	b	.LBB2_33
.LBB2_33:                               @ %do.body.i.i51
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4]
	mov	r1, #0
	mov	r2, r4
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB2_33
	b	.LBB2_34
.LBB2_34:                               @ %a_swap.exit.i53
	cmp	r5, #2
	bne	.LBB2_37
	b	.LBB2_35
.LBB2_35:                               @ %if.then.i55
	mov	r7, #240
	mov	r0, r4
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB2_37
	b	.LBB2_36
.LBB2_36:                               @ %lor.rhs.i.i56
	mov	r7, #240
	mov	r0, r4
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB2_37
.LBB2_37:                               @ %if.end29
	mov	r0, #0
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp2:
	.size	__private_cond_signal, .Ltmp2-__private_cond_signal
	.cantunwind
	.fnend

	.hidden	__a_cas

	.weak	pthread_cond_timedwait
pthread_cond_timedwait = __pthread_cond_timedwait
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
