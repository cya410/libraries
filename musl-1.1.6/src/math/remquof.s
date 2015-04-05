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
	.file	"src/math/remquof.bc"
	.globl	remquof
	.align	2
	.type	remquof,%function
remquof:                                @ @remquof
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r11, r1
	mov	r9, r2
	mov	r1, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	str	r1, [r9]
	bic	r1, r11, #-2147483648
	cmp	r1, #0
	beq	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                @ %cond.true
	mov	r2, #1065353216
	orr	r2, r2, #1073741824
	cmp	r1, r2
	bhi	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                @ %cond.true
	mov	r1, #255
	and	r6, r1, r0, lsr #23
	cmp	r6, #255
	beq	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	mvn	r2, #-2147483648
	tst	r0, r2
	beq	.LBB0_44
	b	.LBB0_8
.LBB0_8:                                @ %if.end33
	and	r4, r1, r11, lsr #23
	cmp	r6, #0
	beq	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @ %if.else
	ldr	r1, .LCPI0_0
	and	r1, r0, r1
	orr	r1, r1, #8388608
	b	.LBB0_15
.LCPI0_0:
	.long	8388607                 @ 0x7fffff
.LBB0_10:                               @ %if.then
	mov	r1, r11
	bl	__aeabi_fmul
	mov	r1, r0
	bl	__aeabi_fdiv
	b	.LBB0_44
.LBB0_11:                               @ %if.then34
	lsl	r1, r0, #9
	mov	r6, #0
	b	.LBB0_13
.LBB0_12:                               @ %for.inc
                                        @   in Loop: Header=BB0_13 Depth=1
	lsl	r1, r1, #1
	sub	r6, r6, #1
	b	.LBB0_13
.LBB0_13:                               @ %for.inc
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r1, #0
	bge	.LBB0_12
	b	.LBB0_14
.LBB0_14:                               @ %for.end
	rsb	r1, r6, #1
	lsl	r1, r0, r1
	b	.LBB0_15
.LBB0_15:                               @ %if.end42
	cmp	r4, #0
	beq	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               @ %if.else60
	ldr	r2, .LCPI0_1
	and	r2, r11, r2
	orr	r2, r2, #8388608
	b	.LBB0_21
.LCPI0_1:
	.long	8388607                 @ 0x7fffff
.LBB0_17:                               @ %if.then44
	lsl	r2, r11, #9
	mov	r4, #0
	b	.LBB0_19
.LBB0_18:                               @ %for.inc52
                                        @   in Loop: Header=BB0_19 Depth=1
	lsl	r2, r2, #1
	sub	r4, r4, #1
	b	.LBB0_19
.LBB0_19:                               @ %for.inc52
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r2, #0
	bge	.LBB0_18
	b	.LBB0_20
.LBB0_20:                               @ %for.end55
	rsb	r2, r4, #1
	lsl	r2, r11, r2
	b	.LBB0_21
.LBB0_21:                               @ %if.end65
	cmp	r6, r4
	bge	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               @ %if.then68
	add	r2, r6, #1
	mov	r7, #0
	cmp	r2, r4
	beq	.LBB0_30
	b	.LBB0_44
.LBB0_23:                               @ %for.cond75.preheader
	sub	r3, r1, r2
	mov	r7, #1
	cmp	r3, #0
	eor	r7, r7, r3, lsr #31
	movge	r1, r3
	cmp	r6, r4
	ble	.LBB0_27
	b	.LBB0_24
.LBB0_24:                               @ %for.body78
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r3, r2, r1, lsl #1
	sub	r6, r6, #1
	cmp	r3, #0
	lsr	r5, r3, #31
	b	.LBB0_25
.LBB0_25:                               @ %for.body78
                                        @   in Loop: Header=BB0_24 Depth=1
	lsllt	r3, r1, #1
	orr	r1, r5, r7, lsl #1
	cmp	r6, r4
	eor	r7, r1, #1
	mov	r1, r3
	bgt	.LBB0_24
	b	.LBB0_26
.LBB0_26:
	mov	r1, r3
	mov	r6, r4
	b	.LBB0_27
.LBB0_27:                               @ %for.end90
	cmp	r1, #0
	beq	.LBB0_32
	b	.LBB0_28
.LBB0_28:                               @ %for.cond103.preheader
	mov	r2, #0
	cmp	r2, r1, lsr #23
	bne	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               @ %for.inc108
                                        @ =>This Inner Loop Header: Depth=1
	lsl	r1, r1, #1
	sub	r6, r6, #1
	cmp	r1, #8388608
	blo	.LBB0_29
	b	.LBB0_30
.LBB0_30:                               @ %end
	cmp	r6, #1
	blt	.LBB0_33
	b	.LBB0_31
.LBB0_31:                               @ %if.then115
	sub	r1, r1, #8388608
	orr	r8, r1, r6, lsl #23
	b	.LBB0_34
.LBB0_32:
	mvn	r6, #29
	mov	r1, #0
	b	.LBB0_33
.LBB0_33:                               @ %if.else119
	rsb	r2, r6, #1
	lsr	r8, r1, r2
	b	.LBB0_34
.LBB0_34:                               @ %if.end123
	lsr	r0, r0, #31
	mov	r1, r11
	lsr	r5, r11, #31
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB0_35
.LBB0_35:                               @ %if.end123
	mov	r0, #-2147483648
	bl	__aeabi_fsub
	mov	r10, r0
	cmp	r5, #0
	moveq	r10, r11
	cmp	r6, r4
	beq	.LBB0_41
	b	.LBB0_36
.LBB0_36:                               @ %lor.lhs.false132
	add	r0, r6, #1
	cmp	r0, r4
	bne	.LBB0_42
	b	.LBB0_37
.LBB0_37:                               @ %land.lhs.true
	mov	r0, r8
	mov	r1, r8
	bl	__aeabi_fadd
	mov	r4, r0
	b	.LBB0_38
.LBB0_38:                               @ %land.lhs.true
	mov	r1, r10
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fcmpgt
	cmp	r0, #0
	bne	.LBB0_41
	b	.LBB0_39
.LBB0_39:                               @ %lor.lhs.false139
	tst	r7, #1
	beq	.LBB0_42
	b	.LBB0_40
.LBB0_40:                               @ %lor.lhs.false139
	mov	r0, r4
	mov	r1, r10
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.LBB0_42
	b	.LBB0_41
.LBB0_41:                               @ %if.then145
	mov	r0, r8
	mov	r1, r10
	bl	__aeabi_fsub
	mov	r8, r0
	add	r7, r7, #1
	b	.LBB0_42
.LBB0_42:                               @ %if.end148
	ldr	r4, [sp]                @ 4-byte Reload
	bic	r0, r7, #-2147483648
	mov	r1, r8
	cmp	r4, r5
	b	.LBB0_43
.LBB0_43:                               @ %if.end148
	rsbne	r0, r0, #0
	str	r0, [r9]
	mov	r0, #-2147483648
	bl	__aeabi_fsub
	cmp	r4, #0
	moveq	r0, r8
	b	.LBB0_44
.LBB0_44:                               @ %return
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	remquof, .Ltmp0-remquof
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
