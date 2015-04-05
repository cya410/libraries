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
	.file	"src/thread/pthread_barrier_wait.bc"
	.globl	pthread_barrier_wait
	.align	2
	.type	pthread_barrier_wait,%function
pthread_barrier_wait:                   @ @pthread_barrier_wait
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	mvn	r10, #0
	ldr	r4, [r5, #8]
	cmp	r4, #0
	beq	.LBB0_78
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	blt	.LBB0_19
	b	.LBB0_5
.LBB0_5:                                @ %while.cond.preheader
	add	r6, r5, #4
	b	.LBB0_7
.LBB0_6:                                @ %while.body
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB0_7
.LBB0_7:                                @ %do.body.i126
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r5]
	mov	r1, #1
	mov	r2, r5
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_8
.LBB0_8:                                @ %a_swap.exit
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r7, #0
	bne	.LBB0_6
	b	.LBB0_9
.LBB0_9:                                @ %while.end
	ldr	r6, [r5, #12]
	cmp	r6, #0
	beq	.LBB0_25
	b	.LBB0_10
.LBB0_10:                               @ %if.end50
	ldr	r0, [r6]
	add	r0, r0, #1
	str	r0, [r6]
	cmp	r0, r4
	bne	.LBB0_42
	b	.LBB0_11
.LBB0_11:                               @ %if.then52
	mov	r0, #0
	str	r0, [r5, #12]
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5]
	b	.LBB0_12
.LBB0_12:                               @ %if.then52
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               @ %if.then63
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %lor.rhs.i134
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_15
.LBB0_15:                               @ %if.end67
	mov	r0, #1
	mov	r3, r6
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r3, #4]!
	b	.LBB0_16
.LBB0_16:                               @ %if.end67
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.LBB0_46
	b	.LBB0_17
.LBB0_17:                               @ %if.then69
	mov	r7, #240
	mov	r0, r3
	mov	r1, #129
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_46
	b	.LBB0_18
.LBB0_18:                               @ %lor.rhs.i137
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_46
.LBB0_19:                               @ %if.then1
	bic	r9, r4, #-2147483648
	cmp	r9, #0
	beq	.LBB0_78
	b	.LBB0_20
.LBB0_20:                               @ %while.cond.preheader.i
	add	r4, r9, #1
	mov	r0, #0
	mov	r2, r5
	mov	r1, r4
	bl	__a_cas
	add	r8, r5, #4
	b	.LBB0_22
.LBB0_21:                               @ %for.cond.i.i.backedge
                                        @   in Loop: Header=BB0_22 Depth=1
	mov	r0, #0
	mov	r1, r4
	mov	r2, r5
	bl	__a_cas
	b	.LBB0_22
.LBB0_22:                               @ %while.cond.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #0
	beq	.LBB0_38
	b	.LBB0_23
.LBB0_23:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_22 Depth=1
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.LBB0_21
	b	.LBB0_24
.LBB0_24:                               @ %while.body.i
                                        @   in Loop: Header=BB0_22 Depth=1
	mov	r0, r5
	mov	r1, r8
	mov	r3, #0
	bl	__wait
	b	.LBB0_21
.LBB0_25:                               @ %if.then17
	mov	r0, #0
	mov	r3, sp
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB0_26
.LBB0_26:                               @ %if.then17
	str	r0, [sp, #4]
	str	r0, [sp]
	str	r3, [r5, #12]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB0_27
.LBB0_27:                               @ %if.then17
	str	r0, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.LBB0_30
	b	.LBB0_28
.LBB0_28:                               @ %if.then28
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_30
.LBB0_30:                               @ %while.cond33.preheader
	add	r5, r3, #12
	mvn	r0, #199
	b	.LBB0_31
.LBB0_31:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	cmp	r1, #0
	bne	.LBB0_33
	b	.LBB0_32
.LBB0_32:                               @ %while.body36
                                        @   in Loop: Header=BB0_31 Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	adds	r0, r0, #1
	bne	.LBB0_31
	b	.LBB0_33
.LBB0_33:                               @ %do.body.i.i131
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	mov	r2, r5
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_33
	b	.LBB0_35
.LBB0_34:                               @ %lor.rhs
                                        @   in Loop: Header=BB0_35 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #0
	mov	r2, #1
	mov	r3, #0
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_35
.LBB0_35:                               @ %while.cond39.preheader
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #1
	bne	.LBB0_78
	b	.LBB0_36
.LBB0_36:                               @ %while.body42
                                        @   in Loop: Header=BB0_35 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #128
	mov	r2, #1
	b	.LBB0_37
.LBB0_37:                               @ %while.body42
                                        @   in Loop: Header=BB0_35 Depth=1
	mov	r3, #0
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_35
	b	.LBB0_34
.LBB0_38:                               @ %while.end.i
	mov	r6, r5
	ldr	r0, [r6, #12]!
	add	r0, r0, #1
	str	r0, [r6]
	@APP
	bl	__a_barrier
	@NO_APP
	cmp	r0, r4
	bne	.LBB0_53
	b	.LBB0_39
.LBB0_39:                               @ %if.then14.i
	mov	r0, #0
	mvn	r10, #0
	str	r0, [r5, #12]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.LBB0_59
	b	.LBB0_40
.LBB0_40:                               @ %if.then22.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_59
	b	.LBB0_41
.LBB0_41:                               @ %lor.rhs.i.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_59
.LBB0_42:                               @ %if.else
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
	beq	.LBB0_45
	b	.LBB0_43
.LBB0_43:                               @ %if.then79
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_45
	b	.LBB0_44
.LBB0_44:                               @ %lor.rhs.i140
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_45
.LBB0_45:                               @ %if.end83
	add	r0, r6, #4
	add	r1, r6, #8
	mov	r2, #0
	mov	r3, #1
	bl	__wait
	b	.LBB0_46
.LBB0_46:                               @ %do.body.i145
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r6]
	mov	r2, r6
	sub	r1, r5, #1
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_46
	b	.LBB0_47
.LBB0_47:                               @ %a_fetch_add.exit
	mov	r10, #0
	cmp	r5, #1
	bne	.LBB0_78
	b	.LBB0_48
.LBB0_48:                               @ %land.lhs.true
	add	r5, r6, #12
	b	.LBB0_49
.LBB0_49:                               @ %do.body.i150
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r5]
	mov	r2, r5
	add	r1, r6, #1
	mov	r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_49
	b	.LBB0_50
.LBB0_50:                               @ %a_fetch_add.exit152
	cmp	r6, #0
	beq	.LBB0_78
	b	.LBB0_51
.LBB0_51:                               @ %if.then93
	mov	r7, #240
	mov	r0, r5
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_78
	b	.LBB0_52
.LBB0_52:                               @ %lor.rhs.i154
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_78
.LBB0_53:                               @ %if.else.i
	mov	r10, #0
	str	r10, [r5]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.LBB0_56
	b	.LBB0_54
.LBB0_54:                               @ %if.then34.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_56
	b	.LBB0_55
.LBB0_55:                               @ %lor.rhs.i141.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_56
.LBB0_56:                               @ %while.cond39.preheader.i
	ldr	r2, [r6]
	cmp	r2, #1
	blt	.LBB0_59
	b	.LBB0_57
.LBB0_57:                               @ %while.body44.lr.ph.i
	add	r7, r5, #16
	mov	r10, #0
	b	.LBB0_58
.LBB0_58:                               @ %while.body44.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r7
	mov	r3, #0
	bl	__wait
	ldr	r2, [r6]
	cmp	r2, #0
	bgt	.LBB0_58
	b	.LBB0_59
.LBB0_59:                               @ %if.end52.i
	mov	r0, #1
	bl	__vm_lock_impl
	b	.LBB0_60
.LBB0_60:                               @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r6]
	mov	r2, r6
	sub	r1, r7, #1
	mov	r0, r7
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_60
	b	.LBB0_61
.LBB0_61:                               @ %a_fetch_add.exit.i
	cmn	r7, r9
	bne	.LBB0_65
	b	.LBB0_62
.LBB0_62:                               @ %if.then58.i
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r5, #12]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.LBB0_68
	b	.LBB0_63
.LBB0_63:                               @ %if.then66.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_68
	b	.LBB0_64
.LBB0_64:                               @ %lor.rhs.i146.i
	mov	r7, #240
	mov	r0, r6
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_68
.LBB0_65:                               @ %while.cond72.preheader.i
	ldr	r2, [r6]
	cmp	r2, #0
	beq	.LBB0_68
	b	.LBB0_66
.LBB0_66:                               @ %while.body77.lr.ph.i
	add	r7, r5, #16
	b	.LBB0_67
.LBB0_67:                               @ %while.body77.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r7
	mov	r3, #0
	bl	__wait
	ldr	r2, [r6]
	cmp	r2, #0
	bne	.LBB0_67
	b	.LBB0_68
.LBB0_68:                               @ %do.body.preheader.i
	ldr	r0, [r5]
	b	.LBB0_69
.LBB0_69:                               @ %do.body.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_70 Depth 2
	ldr	r4, [r8]
	mov	r6, r0
	sub	r7, r6, #1
	cmp	r6, #-2147483647
	moveq	r7, #0
	b	.LBB0_70
.LBB0_70:                               @ %for.cond.i150.i
                                        @   Parent Loop BB0_69 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r6
	mov	r1, r7
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_72
	b	.LBB0_71
.LBB0_71:                               @ %if.end.i152.i
                                        @   in Loop: Header=BB0_70 Depth=2
	ldr	r0, [r5]
	cmp	r0, r6
	beq	.LBB0_70
	b	.LBB0_69
.LBB0_72:                               @ %do.end.i
	cmp	r6, #-2147483647
	beq	.LBB0_75
	b	.LBB0_73
.LBB0_73:                               @ %lor.lhs.false.i
	cmp	r6, #1
	bne	.LBB0_77
	b	.LBB0_74
.LBB0_74:                               @ %lor.lhs.false.i
	cmp	r4, #0
	beq	.LBB0_77
	b	.LBB0_75
.LBB0_75:                               @ %if.then102.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_77
	b	.LBB0_76
.LBB0_76:                               @ %lor.rhs.i156.i
	mov	r7, #240
	mov	r0, r5
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_77
.LBB0_77:                               @ %if.end106.i
	bl	__vm_unlock_impl
	b	.LBB0_78
.LBB0_78:                               @ %return
	mov	r0, r10
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_barrier_wait, .Ltmp0-pthread_barrier_wait
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
