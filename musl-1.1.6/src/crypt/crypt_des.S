.section crypt_des_text
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
	.file	"src/crypt/crypt_des.bc"
	.globl	__des_setkey
	.align	2
	.type	__des_setkey,%function
.section bb0_0
__des_setkey:                           @ @__des_setkey
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
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r1, [sp]                @ 4-byte Spill
	ldrb	r1, [r0, #6]
	ldrb	r2, [r0, #7]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldrb	r3, [r0, #1]
	ldrb	r7, [r0, #2]
	ldr	r12, .LCPI0_7
	ldr	lr, .LCPI0_8
	b	.LBB0_5
.LCPI0_7:
	.long	key_perm_maskl
.LCPI0_8:
	.long	key_perm_maskr
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r8, #0
	mov	r5, #0
	mov	r6, #0
	orr	r1, r2, r1, lsl #8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	ldrb	r2, [r0, #5]
	orr	r1, r1, r2, lsl #16
	ldrb	r2, [r0, #4]
	orr	r9, r1, r2, lsl #24
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	ldrb	r1, [r0]
	ldrb	r0, [r0, #3]
	mov	r2, #0
	orr	r0, r0, r7, lsl #8
	orr	r0, r0, r3, lsl #16
	mov	r3, #15
	orr	r0, r0, r1, lsl #24
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r5, #28
	and	r4, r3, r0, lsr r1
	and	r1, r3, r9, lsr r1
	add	r7, r12, r4, lsl #2
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.body
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r1, r12, r1, lsl #2
	ldr	r7, [r7, -r5, lsl #3]
	sub	r1, r1, r5, lsl #3
	ldr	r1, [r1, #256]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.body
                                        @   in Loop: Header=BB0_8 Depth=1
	orr	r7, r7, r6
	orr	r6, r7, r1
	add	r7, r5, #24
	add	r1, lr, r4, lsl #2
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.body
                                        @   in Loop: Header=BB0_8 Depth=1
	and	r4, r3, r0, lsr r7
	and	r7, r3, r9, lsr r7
	ldr	r1, [r1, -r5, lsl #4]
	add	r4, lr, r4, lsl #2
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.body
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r7, lr, r7, lsl #2
	sub	r4, r4, r5, lsl #4
	sub	r7, r7, r5, lsl #3
	sub	r5, r5, #8
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.body
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r4, [r4, #64]
	ldr	r7, [r7, #512]
	cmn	r5, #32
	orr	r1, r1, r2
	orr	r1, r1, r4
	orr	r2, r1, r7
	bne	.LBB0_8
	b	.LBB0_14
.section bb0_14
.LBB0_14:
	ldr	r7, .LCPI0_10
	ldr	r0, .LCPI0_11
	ldr	r5, .LCPI0_12
	ldr	r4, .LCPI0_13
	mov	r3, #0
	b	.LBB0_15
.LCPI0_10:
	.long	comp_maskr1
.LCPI0_11:
	.long	comp_maskr0
.LCPI0_12:
	.long	comp_maskl1
.LCPI0_13:
	.long	comp_maskl0
.section bb0_15
.LBB0_15:                               @ %for.body56
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_19 Depth 2
	ldr	r1, .LCPI0_9
	str	r3, [sp, #4]            @ 4-byte Spill
	mov	r12, #25
	mov	lr, #0
	b	.LBB0_16
.LCPI0_9:
	.long	key_shifts
.section bb0_16
.LBB0_16:                               @ %for.body56
                                        @   in Loop: Header=BB0_15 Depth=1
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r6, [sp, #12]           @ 4-byte Spill
	ldrb	r1, [r1, r3]
	add	r8, r1, r8
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %for.body56
                                        @   in Loop: Header=BB0_15 Depth=1
	rsb	r1, r8, #28
	str	r8, [sp, #16]           @ 4-byte Spill
	lsr	r3, r2, r1
	lsr	r1, r6, r1
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.body56
                                        @   in Loop: Header=BB0_15 Depth=1
	orr	r11, r3, r2, lsl r8
	orr	r3, r1, r6, lsl r8
	mov	r1, #0
	mov	r8, #0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.body71
                                        @   Parent Loop BB0_15 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sub	r9, r12, #4
	mov	r2, #15
	and	r10, r2, r11, lsr r9
	mov	r2, r7
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.body71
                                        @   in Loop: Header=BB0_19 Depth=2
	add	r6, r7, r10, lsl #2
	mov	r10, #7
	and	r7, r10, r11, lsr r12
	ldr	r6, [r6, r1, lsl #1]
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.body71
                                        @   in Loop: Header=BB0_19 Depth=2
	add	r7, r0, r7, lsl #2
	ldr	r7, [r7, r1]
	orr	r7, r7, lr
	orr	lr, r7, r6
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %for.body71
                                        @   in Loop: Header=BB0_19 Depth=2
	mov	r7, #7
	mov	r6, #15
	and	r7, r7, r3, lsr r12
	and	r6, r6, r3, lsr r9
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %for.body71
                                        @   in Loop: Header=BB0_19 Depth=2
	sub	r12, r12, #7
	add	r7, r4, r7, lsl #2
	add	r6, r5, r6, lsl #2
	ldr	r7, [r7, r1]
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %for.body71
                                        @   in Loop: Header=BB0_19 Depth=2
	ldr	r6, [r6, r1, lsl #1]
	add	r1, r1, #32
	cmp	r1, #128
	orr	r7, r7, r8
	orr	r8, r7, r6
	mov	r7, r2
	bne	.LBB0_19
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %for.end96
                                        @   in Loop: Header=BB0_15 Depth=1
	ldm	sp, {r1, r3}
	str	r8, [r1, r3, lsl #2]!
	add	r8, sp, #8
	add	r3, r3, #1
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.end96
                                        @   in Loop: Header=BB0_15 Depth=1
	str	lr, [r1, #64]
	cmp	r3, #16
	ldm	r8, {r2, r6, r8}
	bne	.LBB0_15
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.end101
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__des_setkey, .Ltmp0-__des_setkey
	.cantunwind
	.fnend

	.globl	__do_des
	.align	2
	.type	__do_des,%function
.section bb1_0
__do_des:                               @ @__do_des
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	ldr	r10, [sp, #48]
	stm	sp, {r2, r3}
	orrs	r2, r1, r0
	mov	r2, #0
	beq	.LBB1_10
	b	.LBB1_4
.section bb1_4
.LBB1_4:
	ldr	r8, .LCPI1_0
	ldr	r9, .LCPI1_4
	mov	lr, #15
	mov	r4, #0
	mov	r12, #0
	b	.LBB1_5
.LCPI1_0:
	.long	ip_maskr
.LCPI1_4:
	.long	ip_maskl
.section bb1_5
.LBB1_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r5, r2, #28
	and	r3, lr, r0, lsr r5
	and	r5, lr, r1, lsr r5
	add	r7, r8, r3, lsl #2
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %for.body
                                        @   in Loop: Header=BB1_5 Depth=1
	add	r3, r9, r3, lsl #2
	add	r6, r8, r5, lsl #2
	ldr	r3, [r3, -r2, lsl #4]
	ldr	r7, [r7, -r2, lsl #4]
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %for.body
                                        @   in Loop: Header=BB1_5 Depth=1
	sub	r6, r6, r2, lsl #4
	ldr	r6, [r6, #512]
	orr	r3, r3, r4
	add	r4, r9, r5, lsl #2
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %for.body
                                        @   in Loop: Header=BB1_5 Depth=1
	orr	r7, r7, r12
	sub	r4, r4, r2, lsl #4
	sub	r2, r2, #4
	orr	r12, r7, r6
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %for.body
                                        @   in Loop: Header=BB1_5 Depth=1
	ldr	r4, [r4, #512]
	cmn	r2, #32
	orr	r4, r3, r4
	bne	.LBB1_5
	b	.LBB1_11
.section bb1_10
.LBB1_10:
	mov	r12, #0
	mov	r4, #0
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %while.cond.preheader
	cmp	r10, #0
	beq	.LBB1_33
	b	.LBB1_12
.section bb1_12
.LBB1_12:
	str	r10, [sp, #8]           @ 4-byte Spill
	ldr	r7, [sp, #56]
	ldr	r1, [sp, #52]
	ldr	r10, .LCPI1_5
	b	.LBB1_13
.LCPI1_5:
	.long	psbox
.section bb1_13
.LBB1_13:
	mov	r9, #1020
	mov	r2, #258048
	mov	r6, #16515072
	mov	lr, #252
	orr	r9, r9, #64512
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %while.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_15 Depth 2
	mov	r11, r4
	mov	r3, #0
	mov	r4, r12
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %while.body26
                                        @   Parent Loop BB1_14 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r12, r4
	mov	r0, #4032
	and	r4, r2, r12, lsr #11
	and	r8, r6, r12, ror #9
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	and	r5, r0, r12, lsr #13
	orr	r4, r8, r4
	mov	r8, r1
	orr	r4, r4, r5
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	mov	r5, #63
	and	r5, r5, r12, lsr #15
	orr	r4, r4, r5
	and	r5, r6, r12, lsl #7
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	and	r6, r2, r12, lsl #5
	mov	r2, r7
	orr	r6, r6, r12, lsr #31
                                        @ kill: R7<def> R2<kill>
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	orr	r5, r6, r5
	and	r6, r0, r12, lsl #3
	mov	r0, #62
	orr	r5, r5, r6
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	and	r6, r0, r12, lsl #1
	orr	r5, r5, r6
	eor	r6, r4, r5
	and	r6, r6, r1
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	ldr	r1, [r7, r3, lsl #2]!
	add	r3, r3, #1
	eor	r4, r6, r4
	cmp	r3, #16
	b	.LBB1_22
.section bb1_22
.LBB1_22:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	eor	r1, r4, r1
	and	r0, lr, r1, lsr #10
	and	r4, r9, r1, lsr #16
	add	r0, r10, r0
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	ldr	r4, [r10, r4]
	ldr	r0, [r0, #256]
	orr	r0, r0, r4
	and	r4, lr, r1, lsr #4
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	and	r1, r1, #63
	add	r4, r10, r4
	add	r1, r10, r1, lsl #2
	ldr	r4, [r4, #512]
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	ldr	r1, [r1, #768]
	orr	r0, r0, r4
	ldr	r4, [r7, #64]
	mov	r7, r2
	b	.LBB1_26
.section bb1_26
.LBB1_26:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	mov	r2, #258048
	orr	r0, r0, r1
	eor	r1, r6, r5
	mov	r6, #16515072
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	eor	r1, r1, r4
	and	r4, r9, r1, lsr #16
	add	r4, r10, r4
	ldr	r4, [r4, #1024]
	b	.LBB1_28
.section bb1_28
.LBB1_28:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	orr	r0, r0, r4
	and	r4, lr, r1, lsr #10
	add	r4, r10, r4
	ldr	r4, [r4, #1280]
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	orr	r0, r0, r4
	and	r4, lr, r1, lsr #4
	and	r1, r1, #63
	add	r4, r10, r4
	b	.LBB1_30
.section bb1_30
.LBB1_30:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	add	r1, r10, r1, lsl #2
	ldr	r4, [r4, #1536]
	ldr	r1, [r1, #1792]
	orr	r0, r0, r4
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %while.body26
                                        @   in Loop: Header=BB1_15 Depth=2
	orr	r0, r0, r1
	mov	r1, r8
	eor	r4, r0, r11
	mov	r11, r12
	bne	.LBB1_15
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %while.cond.loopexit
                                        @   in Loop: Header=BB1_14 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	subs	r0, r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	bne	.LBB1_14
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %for.cond91.preheader
	ldr	r2, .LCPI1_6
	mov	r0, #0
	mov	r1, #15
	mov	r3, #0
	mov	r7, #0
	b	.LBB1_34
.LCPI1_6:
	.long	fp_maskl
.section bb1_34
.LBB1_34:                               @ %for.body93
                                        @ =>This Inner Loop Header: Depth=1
	add	r6, r0, #24
	and	r5, r1, r4, lsr r6
	and	r6, r1, r12, lsr r6
	add	r5, r2, r5, lsl #2
	b	.LBB1_35
.section bb1_35
.LBB1_35:                               @ %for.body93
                                        @   in Loop: Header=BB1_34 Depth=1
	add	r6, r2, r6, lsl #2
	sub	r6, r6, r0, lsl #3
	ldr	r5, [r5, -r0, lsl #3]
	ldr	r6, [r6, #256]
	b	.LBB1_36
.section bb1_36
.LBB1_36:                               @ %for.body93
                                        @   in Loop: Header=BB1_34 Depth=1
	orr	r7, r5, r7
	orr	r7, r7, r6
	add	r6, r0, #28
	and	r5, r1, r4, lsr r6
	b	.LBB1_37
.section bb1_37
.LBB1_37:                               @ %for.body93
                                        @   in Loop: Header=BB1_34 Depth=1
	and	r6, r1, r12, lsr r6
	add	r5, r2, r5, lsl #2
	add	r6, r2, r6, lsl #2
	sub	r6, r6, r0, lsl #3
	b	.LBB1_38
.section bb1_38
.LBB1_38:                               @ %for.body93
                                        @   in Loop: Header=BB1_34 Depth=1
	ldr	r5, [r5, -r0, lsl #3]
	sub	r0, r0, #8
	ldr	r6, [r6, #256]
	cmn	r0, #32
	orr	r3, r5, r3
	orr	r3, r3, r6
	bne	.LBB1_34
	b	.LBB1_39
.section bb1_39
.LBB1_39:                               @ %for.end120
	ldr	r0, [sp]                @ 4-byte Reload
	str	r7, [r0]
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r3, [r0]
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__do_des, .Ltmp1-__do_des
	.cantunwind
	.fnend

	.globl	__crypt_des
	.align	2
	.type	__crypt_des,%function
.section bb2_0
__crypt_des:                            @ @__crypt_des
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r4, r1
	ldrb	r6, [r4]
                                        @ kill: R1<def> R4<kill>
	bl	_crypt_extended_r_uut
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r5, r0
	ldr	r0, .LCPI2_0
	ldr	r1, .LCPI2_7
	cmp	r6, #95
	b	.LBB2_4
.LCPI2_0:
	.long	.L.str1
.LCPI2_7:
	.long	.L.str3
.section bb2_4
.LBB2_4:                                @ %entry
	add	r2, sp, #3
	moveq	r1, r0
	ldr	r0, .LCPI2_8
	bl	_crypt_extended_r_uut
	cmp	r0, #0
	beq	.LBB2_7
	b	.LBB2_5
.LCPI2_8:
	.long	.L.str
.section bb2_5
.LBB2_5:                                @ %land.lhs.true
	ldr	r2, .LCPI2_9
	ldr	r1, .LCPI2_10
	cmp	r6, #95
	moveq	r1, r2
	bl	strcmp
	cmp	r5, #0
	beq	.LBB2_7
	b	.LBB2_6
.LCPI2_9:
	.long	.L.str2
.LCPI2_10:
	.long	.L.str4
.section bb2_6
.LBB2_6:                                @ %land.lhs.true
	cmp	r0, #0
	beq	.LBB2_8
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %if.end9
	ldrb	r0, [r4]
	ldr	r1, .LCPI2_11
	ldr	r5, .LCPI2_12
	cmp	r0, #42
	moveq	r5, r1
	b	.LBB2_8
.LCPI2_11:
	.long	.L.str5
.LCPI2_12:
	.long	.L.str6
.section bb2_8
.LBB2_8:                                @ %return
	mov	r0, r5
	add	sp, sp, #24
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp2:
	.size	__crypt_des, .Ltmp2-__crypt_des
	.cantunwind
	.fnend

	.align	2
	.type	_crypt_extended_r_uut,%function
.section bb3_0
_crypt_extended_r_uut:                  @ @_crypt_extended_r_uut
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %while.body.lr.ph
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %while.body.lr.ph
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %while.body.lr.ph
	.pad	#180
	sub	sp, sp, #180
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %while.body.lr.ph
	mov	r7, r0
	add	r0, sp, #36
	mov	r10, r2
	mov	r11, r1
	add	r9, r0, #7
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r7]
	lsl	r1, r1, #1
	strb	r1, [r0], #1
	mov	r1, r7
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %while.body
                                        @   in Loop: Header=BB3_4 Depth=1
	ldrb	r2, [r1], #1
	cmp	r2, #0
	movne	r7, r1
	cmp	r0, r9
	bls	.LBB3_4
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %while.end
	add	r8, sp, #44
	add	r0, sp, #36
	mov	r1, r8
	bl	__des_setkey
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %while.end
	ldrb	r2, [r11]
	lsl	r0, r2, #24
	asr	r1, r0, #24
	mov	r0, #0
	cmp	r1, #57
	bgt	.LBB3_9
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %while.end
	tst	r1, #255
	andne	r3, r1, #255
	cmpne	r3, #10
	bne	.LBB3_40
	b	.LBB3_65
.section bb3_9
.LBB3_9:                                @ %while.end
	and	r3, r1, #255
	cmp	r3, #58
	beq	.LBB3_65
	b	.LBB3_10
.section bb3_10
.LBB3_10:                               @ %while.end
	cmp	r3, #95
	bne	.LBB3_40
	b	.LBB3_11
.section bb3_11
.LBB3_11:
	ldr	lr, .LCPI3_0
	mov	r2, #1
	mvn	r12, #255
	mov	r4, #0
	mov	r5, #0
	b	.LBB3_12
.LCPI3_0:
	.long	ascii64
.section bb3_12
.LBB3_12:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r6, [r11, r2]
	lsl	r1, r6, #24
	asr	r1, r1, #24
	cmp	r1, #0
	orrlt	r6, r6, r12
	cmp	r6, #65
	blt	.LBB3_14
	b	.LBB3_13
.section bb3_13
.LBB3_13:                               @ %if.then.i
                                        @   in Loop: Header=BB3_12 Depth=1
	cmp	r6, #96
	mvn	r3, #52
	mvngt	r3, #58
	add	r6, r3, r6
	b	.LBB3_15
.section bb3_14
.LBB3_14:                               @   in Loop: Header=BB3_12 Depth=1
	sub	r6, r6, #46
	b	.LBB3_15
.section bb3_15
.LBB3_15:                               @ %ascii_to_bin.exit
                                        @   in Loop: Header=BB3_12 Depth=1
	and	r6, r6, #63
	and	r1, r1, #255
	ldrb	r3, [lr, r6]
	cmp	r3, r1
	bne	.LBB3_65
	b	.LBB3_16
.section bb3_16
.LBB3_16:                               @ %if.end19
                                        @   in Loop: Header=BB3_12 Depth=1
	orr	r5, r5, r6, lsl r4
	add	r2, r2, #1
	add	r4, r4, #6
	cmp	r2, #5
	blo	.LBB3_12
	b	.LBB3_17
.section bb3_17
.LBB3_17:                               @ %for.end
	mov	r0, #0
	str	r10, [sp, #16]          @ 4-byte Spill
	cmp	r5, #0
	beq	.LBB3_65
	b	.LBB3_18
.section bb3_18
.LBB3_18:
	mov	r2, #5
	mvn	r12, #255
	mov	r3, #0
	mov	r10, #0
	b	.LBB3_19
.section bb3_19
.LBB3_19:                               @ %for.body27
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r11, r2]
	lsl	r0, r1, #24
	asr	r0, r0, #24
	cmp	r0, #0
	orrlt	r1, r1, r12
	cmp	r1, #65
	blt	.LBB3_21
	b	.LBB3_20
.section bb3_20
.LBB3_20:                               @ %if.then.i208
                                        @   in Loop: Header=BB3_19 Depth=1
	cmp	r1, #96
	mvn	r4, #52
	mvngt	r4, #58
	add	r1, r4, r1
	b	.LBB3_22
.section bb3_21
.LBB3_21:                               @   in Loop: Header=BB3_19 Depth=1
	sub	r1, r1, #46
	b	.LBB3_22
.section bb3_22
.LBB3_22:                               @ %ascii_to_bin.exit211
                                        @   in Loop: Header=BB3_19 Depth=1
	and	r1, r1, #63
	and	r6, r0, #255
	mov	r0, #0
	ldrb	r4, [lr, r1]
	cmp	r4, r6
	bne	.LBB3_65
	b	.LBB3_23
.section bb3_23
.LBB3_23:                               @ %if.end39
                                        @   in Loop: Header=BB3_19 Depth=1
	orr	r10, r10, r1, lsl r3
	add	r2, r2, #1
	add	r3, r3, #6
	cmp	r2, #9
	blo	.LBB3_19
	b	.LBB3_24
.section bb3_24
.LBB3_24:                               @ %while.cond47.preheader
	ldrb	r0, [r7]
	add	r4, sp, #36
	str	r11, [sp, #12]          @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB3_38
	b	.LBB3_25
.section bb3_25
.LBB3_25:                               @ %land.rhs.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_35 Depth 2
	ldrb	r0, [sp, #40]
	ldrb	r1, [sp, #38]
	ldrb	r2, [sp, #39]
	ldrb	r11, [sp, #37]
	b	.LBB3_26
.section bb3_26
.LBB3_26:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	ldrb	lr, [sp, #42]
	ldrb	r6, [sp, #43]
	mov	r3, #1
	mov	r12, #0
	b	.LBB3_27
.section bb3_27
.LBB3_27:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	str	r3, [sp]
	add	r3, sp, #172
	str	r12, [sp, #4]
	str	r8, [sp, #8]
	b	.LBB3_28
.section bb3_28
.LBB3_28:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	str	r0, [sp, #24]           @ 4-byte Spill
	ldrb	r0, [sp, #41]
	orr	r1, r2, r1, lsl #8
	orr	r1, r1, r11, lsl #16
	b	.LBB3_29
.section bb3_29
.LBB3_29:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	str	r0, [sp, #20]           @ 4-byte Spill
	ldrb	r0, [sp, #36]
	ldr	r2, [sp, #20]           @ 4-byte Reload
	orr	r0, r1, r0, lsl #24
	b	.LBB3_30
.section bb3_30
.LBB3_30:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	orr	r1, r6, lr, lsl #8
	orr	r1, r1, r2, lsl #16
	ldr	r2, [sp, #24]           @ 4-byte Reload
	orr	r1, r1, r2, lsl #24
	b	.LBB3_31
.section bb3_31
.LBB3_31:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	add	r2, sp, #176
	bl	__do_des
	ldr	r0, [sp, #176]
	lsr	r1, r0, #24
	b	.LBB3_32
.section bb3_32
.LBB3_32:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	strb	r1, [sp, #36]
	lsr	r1, r0, #16
	strb	r1, [sp, #37]
	lsr	r1, r0, #8
	b	.LBB3_33
.section bb3_33
.LBB3_33:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	strb	r1, [sp, #38]
	strb	r0, [sp, #39]
	ldr	r0, [sp, #172]
	lsr	r1, r0, #24
	b	.LBB3_34
.section bb3_34
.LBB3_34:                               @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB3_25 Depth=1
	strb	r1, [sp, #40]
	lsr	r1, r0, #16
	strb	r1, [sp, #41]
	lsr	r1, r0, #8
	strb	r1, [sp, #42]
	strb	r0, [sp, #43]
	mov	r0, r4
	b	.LBB3_35
.section bb3_35
.LBB3_35:                               @ %land.rhs
                                        @   Parent Loop BB3_25 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r1, [r7]
	cmp	r1, #0
	beq	.LBB3_37
	b	.LBB3_36
.section bb3_36
.LBB3_36:                               @ %while.body59
                                        @   in Loop: Header=BB3_35 Depth=2
	ldrb	r2, [r0]
	add	r7, r7, #1
	eor	r1, r2, r1, lsl #1
	strb	r1, [r0], #1
	cmp	r0, r9
	bls	.LBB3_35
	b	.LBB3_37
.section bb3_37
.LBB3_37:                               @ %while.end66
                                        @   in Loop: Header=BB3_25 Depth=1
	mov	r0, r4
	mov	r1, r8
	bl	__des_setkey
	ldrb	r0, [r7]
	cmp	r0, #0
	bne	.LBB3_25
	b	.LBB3_38
.section bb3_38
.LBB3_38:                               @ %while.end68
	ldr	r7, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	r2, #9
	mov	r4, #9
	b	.LBB3_39
.section bb3_39
.LBB3_39:                               @ %while.end68
	mov	r0, r7
	bl	memcpy
	mov	r0, #0
	mov	r6, r7
	strb	r0, [r6, #9]!
	b	.LBB3_50
.section bb3_40
.LBB3_40:                               @ %lor.lhs.false
	ldrb	r3, [r11, #1]
	cmp	r3, #0
	beq	.LBB3_65
	b	.LBB3_41
.section bb3_41
.LBB3_41:                               @ %lor.lhs.false
	lsl	r7, r3, #24
	asr	r6, r7, #24
	and	r7, r6, #255
	cmp	r7, #10
	cmpne	r7, #58
	beq	.LBB3_65
	b	.LBB3_42
.section bb3_42
.LBB3_42:                               @ %if.end78
	mvn	r7, #255
	cmp	r6, #0
	orrlt	r3, r3, r7
	cmp	r3, #65
	blt	.LBB3_44
	b	.LBB3_43
.section bb3_43
.LBB3_43:                               @ %if.then.i233
	mvn	r0, #52
	cmp	r3, #96
	mvngt	r0, #58
	add	r0, r0, r3
	b	.LBB3_45
.section bb3_44
.LBB3_44:
	sub	r0, r3, #46
	b	.LBB3_45
.section bb3_45
.LBB3_45:                               @ %ascii_to_bin.exit236
	mov	r3, #4032
	cmp	r1, #0
	mov	r6, r10
	orrlt	r2, r2, r7
	and	r0, r3, r0, lsl #6
	cmp	r2, #65
	blt	.LBB3_47
	b	.LBB3_46
.section bb3_46
.LBB3_46:                               @ %if.then.i221
	mvn	r3, #52
	cmp	r2, #96
	mvngt	r3, #58
	add	r2, r3, r2
	b	.LBB3_48
.section bb3_47
.LBB3_47:
	sub	r2, r2, #46
	b	.LBB3_48
.section bb3_48
.LBB3_48:                               @ %ascii_to_bin.exit224
	strb	r1, [r6]
	mov	r4, #2
	mov	r5, #25
	ldrb	r1, [r11, #1]
	b	.LBB3_49
.section bb3_49
.LBB3_49:                               @ %ascii_to_bin.exit224
	strb	r1, [r6, #1]
	and	r1, r2, #63
	mov	r2, r6
	orr	r10, r1, r0
	add	r6, r2, #2
	mov	r7, r2
	b	.LBB3_50
.section bb3_50
.LBB3_50:                               @ %if.end92
	mov	r1, #8388608
	mov	r2, #1
	mov	r0, #0
	mov	r3, #24
	b	.LBB3_51
.section bb3_51
.LBB3_51:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	tst	r2, r10
	lsl	r2, r2, #1
	orrne	r0, r0, r1
	subs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.LBB3_51
	b	.LBB3_52
.section bb3_52
.LBB3_52:                               @ %setup_salt.exit
	str	r5, [sp]
	stmib	sp, {r0, r8}
	add	r2, sp, #32
	add	r3, sp, #28
	b	.LBB3_53
.section bb3_53
.LBB3_53:                               @ %setup_salt.exit
	mov	r0, #0
	mov	r1, #0
	mov	r8, #0
	bl	__do_des
	b	.LBB3_54
.section bb3_54
.LBB3_54:                               @ %setup_salt.exit
	ldr	r0, .LCPI3_1
	ldr	r1, [sp, #32]
	mov	r3, #63
	mov	r5, r7
	b	.LBB3_55
.LCPI3_1:
	.long	ascii64
.section bb3_55
.LBB3_55:                               @ %setup_salt.exit
	and	r7, r3, r1, lsr #20
	ldrb	r2, [r0, r1, lsr #26]
	ldrb	r7, [r0, r7]
	strb	r2, [r6]
	b	.LBB3_56
.section bb3_56
.LBB3_56:                               @ %setup_salt.exit
	add	r2, r4, r5
	strb	r7, [r2, #1]
	and	r7, r3, r1, lsr #14
	ldrb	r7, [r0, r7]
	b	.LBB3_57
.section bb3_57
.LBB3_57:                               @ %setup_salt.exit
	strb	r7, [r2, #2]
	and	r7, r3, r1, lsr #8
	ldrb	r7, [r0, r7]
	strb	r7, [r2, #3]
	b	.LBB3_58
.section bb3_58
.LBB3_58:                               @ %setup_salt.exit
	and	r2, r3, r1, lsr #2
	orr	r7, r4, #4
	mov	r4, r5
	ldrb	r2, [r0, r2]
	b	.LBB3_59
.section bb3_59
.LBB3_59:                               @ %setup_salt.exit
	ldr	r6, [sp, #28]
	strb	r2, [r4, r7]!
	lsr	r2, r6, #16
	orr	r1, r2, r1, lsl #16
	b	.LBB3_60
.section bb3_60
.LBB3_60:                               @ %setup_salt.exit
	and	r1, r3, r1, lsr #12
	ldrb	r1, [r0, r1]
	strb	r1, [r4, #1]
	and	r1, r3, r6, lsr #22
	b	.LBB3_61
.section bb3_61
.LBB3_61:                               @ %setup_salt.exit
	ldrb	r1, [r0, r1]
	strb	r1, [r4, #2]
	and	r1, r3, r6, lsr #16
	ldrb	r1, [r0, r1]
	b	.LBB3_62
.section bb3_62
.LBB3_62:                               @ %setup_salt.exit
	strb	r1, [r4, #3]
	and	r1, r3, r6, lsr #10
	ldrb	r1, [r0, r1]
	strb	r1, [r4, #4]
	b	.LBB3_63
.section bb3_63
.LBB3_63:                               @ %setup_salt.exit
	and	r1, r3, r6, lsr #4
	ldrb	r1, [r0, r1]
	strb	r1, [r4, #5]
	mov	r1, #60
	b	.LBB3_64
.section bb3_64
.LBB3_64:                               @ %setup_salt.exit
	and	r1, r1, r6, lsl #2
	ldrb	r0, [r0, r1]
	strb	r0, [r4, #6]
	mov	r0, r5
	strb	r8, [r4, #7]
	b	.LBB3_65
.section bb3_65
.LBB3_65:                               @ %cleanup
	add	sp, sp, #180
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	_crypt_extended_r_uut, .Ltmp3-_crypt_extended_r_uut
	.cantunwind
	.fnend

	.type	key_perm_maskl,%object  @ @key_perm_maskl
	.section	.rodata,"a",%progbits
	.align	2
key_perm_maskl:
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	16                      @ 0x10
	.long	4096                    @ 0x1000
	.long	4096                    @ 0x1000
	.long	4112                    @ 0x1010
	.long	4112                    @ 0x1010
	.long	1048576                 @ 0x100000
	.long	1048576                 @ 0x100000
	.long	1048592                 @ 0x100010
	.long	1048592                 @ 0x100010
	.long	1052672                 @ 0x101000
	.long	1052672                 @ 0x101000
	.long	1052688                 @ 0x101010
	.long	1052688                 @ 0x101010
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	32                      @ 0x20
	.long	32                      @ 0x20
	.long	8192                    @ 0x2000
	.long	8192                    @ 0x2000
	.long	8224                    @ 0x2020
	.long	8224                    @ 0x2020
	.long	2097152                 @ 0x200000
	.long	2097152                 @ 0x200000
	.long	2097184                 @ 0x200020
	.long	2097184                 @ 0x200020
	.long	2105344                 @ 0x202000
	.long	2105344                 @ 0x202000
	.long	2105376                 @ 0x202020
	.long	2105376                 @ 0x202020
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	64                      @ 0x40
	.long	64                      @ 0x40
	.long	16384                   @ 0x4000
	.long	16384                   @ 0x4000
	.long	16448                   @ 0x4040
	.long	16448                   @ 0x4040
	.long	4194304                 @ 0x400000
	.long	4194304                 @ 0x400000
	.long	4194368                 @ 0x400040
	.long	4194368                 @ 0x400040
	.long	4210688                 @ 0x404000
	.long	4210688                 @ 0x404000
	.long	4210752                 @ 0x404040
	.long	4210752                 @ 0x404040
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	128                     @ 0x80
	.long	32768                   @ 0x8000
	.long	32768                   @ 0x8000
	.long	32896                   @ 0x8080
	.long	32896                   @ 0x8080
	.long	8388608                 @ 0x800000
	.long	8388608                 @ 0x800000
	.long	8388736                 @ 0x800080
	.long	8388736                 @ 0x800080
	.long	8421376                 @ 0x808000
	.long	8421376                 @ 0x808000
	.long	8421504                 @ 0x808080
	.long	8421504                 @ 0x808080
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	256                     @ 0x100
	.long	257                     @ 0x101
	.long	65536                   @ 0x10000
	.long	65537                   @ 0x10001
	.long	65792                   @ 0x10100
	.long	65793                   @ 0x10101
	.long	16777216                @ 0x1000000
	.long	16777217                @ 0x1000001
	.long	16777472                @ 0x1000100
	.long	16777473                @ 0x1000101
	.long	16842752                @ 0x1010000
	.long	16842753                @ 0x1010001
	.long	16843008                @ 0x1010100
	.long	16843009                @ 0x1010101
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	512                     @ 0x200
	.long	514                     @ 0x202
	.long	131072                  @ 0x20000
	.long	131074                  @ 0x20002
	.long	131584                  @ 0x20200
	.long	131586                  @ 0x20202
	.long	33554432                @ 0x2000000
	.long	33554434                @ 0x2000002
	.long	33554944                @ 0x2000200
	.long	33554946                @ 0x2000202
	.long	33685504                @ 0x2020000
	.long	33685506                @ 0x2020002
	.long	33686016                @ 0x2020200
	.long	33686018                @ 0x2020202
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	1024                    @ 0x400
	.long	1028                    @ 0x404
	.long	262144                  @ 0x40000
	.long	262148                  @ 0x40004
	.long	263168                  @ 0x40400
	.long	263172                  @ 0x40404
	.long	67108864                @ 0x4000000
	.long	67108868                @ 0x4000004
	.long	67109888                @ 0x4000400
	.long	67109892                @ 0x4000404
	.long	67371008                @ 0x4040000
	.long	67371012                @ 0x4040004
	.long	67372032                @ 0x4040400
	.long	67372036                @ 0x4040404
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	2048                    @ 0x800
	.long	2056                    @ 0x808
	.long	524288                  @ 0x80000
	.long	524296                  @ 0x80008
	.long	526336                  @ 0x80800
	.long	526344                  @ 0x80808
	.long	134217728               @ 0x8000000
	.long	134217736               @ 0x8000008
	.long	134219776               @ 0x8000800
	.long	134219784               @ 0x8000808
	.long	134742016               @ 0x8080000
	.long	134742024               @ 0x8080008
	.long	134744064               @ 0x8080800
	.long	134744072               @ 0x8080808
	.size	key_perm_maskl, 512

	.type	key_perm_maskr,%object  @ @key_perm_maskr
	.align	2
key_perm_maskr:
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	1048576                 @ 0x100000
	.long	4096                    @ 0x1000
	.long	4096                    @ 0x1000
	.long	1052672                 @ 0x101000
	.long	1052672                 @ 0x101000
	.long	16                      @ 0x10
	.long	16                      @ 0x10
	.long	1048592                 @ 0x100010
	.long	1048592                 @ 0x100010
	.long	4112                    @ 0x1010
	.long	4112                    @ 0x1010
	.long	1052688                 @ 0x101010
	.long	1052688                 @ 0x101010
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	2097152                 @ 0x200000
	.long	8192                    @ 0x2000
	.long	8192                    @ 0x2000
	.long	2105344                 @ 0x202000
	.long	2105344                 @ 0x202000
	.long	32                      @ 0x20
	.long	32                      @ 0x20
	.long	2097184                 @ 0x200020
	.long	2097184                 @ 0x200020
	.long	8224                    @ 0x2020
	.long	8224                    @ 0x2020
	.long	2105376                 @ 0x202020
	.long	2105376                 @ 0x202020
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	4194304                 @ 0x400000
	.long	16384                   @ 0x4000
	.long	16384                   @ 0x4000
	.long	4210688                 @ 0x404000
	.long	4210688                 @ 0x404000
	.long	64                      @ 0x40
	.long	64                      @ 0x40
	.long	4194368                 @ 0x400040
	.long	4194368                 @ 0x400040
	.long	16448                   @ 0x4040
	.long	16448                   @ 0x4040
	.long	4210752                 @ 0x404040
	.long	4210752                 @ 0x404040
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	8388608                 @ 0x800000
	.long	32768                   @ 0x8000
	.long	32768                   @ 0x8000
	.long	8421376                 @ 0x808000
	.long	8421376                 @ 0x808000
	.long	128                     @ 0x80
	.long	128                     @ 0x80
	.long	8388736                 @ 0x800080
	.long	8388736                 @ 0x800080
	.long	32896                   @ 0x8080
	.long	32896                   @ 0x8080
	.long	8421504                 @ 0x808080
	.long	8421504                 @ 0x808080
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	16777216                @ 0x1000000
	.long	16777216                @ 0x1000000
	.long	65536                   @ 0x10000
	.long	65536                   @ 0x10000
	.long	16842752                @ 0x1010000
	.long	16842752                @ 0x1010000
	.long	256                     @ 0x100
	.long	256                     @ 0x100
	.long	16777472                @ 0x1000100
	.long	16777472                @ 0x1000100
	.long	65792                   @ 0x10100
	.long	65792                   @ 0x10100
	.long	16843008                @ 0x1010100
	.long	16843008                @ 0x1010100
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	33554432                @ 0x2000000
	.long	33554432                @ 0x2000000
	.long	131072                  @ 0x20000
	.long	131072                  @ 0x20000
	.long	33685504                @ 0x2020000
	.long	33685504                @ 0x2020000
	.long	512                     @ 0x200
	.long	512                     @ 0x200
	.long	33554944                @ 0x2000200
	.long	33554944                @ 0x2000200
	.long	131584                  @ 0x20200
	.long	131584                  @ 0x20200
	.long	33686016                @ 0x2020200
	.long	33686016                @ 0x2020200
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	67108864                @ 0x4000000
	.long	67108864                @ 0x4000000
	.long	262144                  @ 0x40000
	.long	262144                  @ 0x40000
	.long	67371008                @ 0x4040000
	.long	67371008                @ 0x4040000
	.long	1024                    @ 0x400
	.long	1024                    @ 0x400
	.long	67109888                @ 0x4000400
	.long	67109888                @ 0x4000400
	.long	263168                  @ 0x40400
	.long	263168                  @ 0x40400
	.long	67372032                @ 0x4040400
	.long	67372032                @ 0x4040400
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	134217728               @ 0x8000000
	.long	134217728               @ 0x8000000
	.long	524288                  @ 0x80000
	.long	524288                  @ 0x80000
	.long	134742016               @ 0x8080000
	.long	134742016               @ 0x8080000
	.long	2048                    @ 0x800
	.long	2048                    @ 0x800
	.long	134219776               @ 0x8000800
	.long	134219776               @ 0x8000800
	.long	526336                  @ 0x80800
	.long	526336                  @ 0x80800
	.long	134744064               @ 0x8080800
	.long	134744064               @ 0x8080800
	.size	key_perm_maskr, 768

	.type	key_shifts,%object      @ @key_shifts
	.section	.rodata.cst16,"aM",%progbits,16
key_shifts:
	.ascii	"\001\001\002\002\002\002\002\002\001\002\002\002\002\002\002\001"
	.size	key_shifts, 16

	.type	comp_maskl0,%object     @ @comp_maskl0
	.section	.rodata,"a",%progbits
	.align	2
comp_maskl0:
	.long	0                       @ 0x0
	.long	131072                  @ 0x20000
	.long	1                       @ 0x1
	.long	131073                  @ 0x20001
	.long	524288                  @ 0x80000
	.long	655360                  @ 0xa0000
	.long	524289                  @ 0x80001
	.long	655361                  @ 0xa0001
	.long	0                       @ 0x0
	.long	4096                    @ 0x1000
	.long	0                       @ 0x0
	.long	4096                    @ 0x1000
	.long	64                      @ 0x40
	.long	4160                    @ 0x1040
	.long	64                      @ 0x40
	.long	4160                    @ 0x1040
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	32                      @ 0x20
	.long	4194336                 @ 0x400020
	.long	32768                   @ 0x8000
	.long	4227072                 @ 0x408000
	.long	32800                   @ 0x8020
	.long	4227104                 @ 0x408020
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	2048                    @ 0x800
	.long	1050624                 @ 0x100800
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	2048                    @ 0x800
	.long	1050624                 @ 0x100800
	.size	comp_maskl0, 128

	.type	comp_maskr0,%object     @ @comp_maskr0
	.align	2
comp_maskr0:
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	131072                  @ 0x20000
	.long	2228224                 @ 0x220000
	.long	2                       @ 0x2
	.long	2097154                 @ 0x200002
	.long	131074                  @ 0x20002
	.long	2228226                 @ 0x220002
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	1048576                 @ 0x100000
	.long	4                       @ 0x4
	.long	4                       @ 0x4
	.long	1048580                 @ 0x100004
	.long	1048580                 @ 0x100004
	.long	0                       @ 0x0
	.long	16384                   @ 0x4000
	.long	2048                    @ 0x800
	.long	18432                   @ 0x4800
	.long	0                       @ 0x0
	.long	16384                   @ 0x4000
	.long	2048                    @ 0x800
	.long	18432                   @ 0x4800
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	32768                   @ 0x8000
	.long	4227072                 @ 0x408000
	.long	8                       @ 0x8
	.long	4194312                 @ 0x400008
	.long	32776                   @ 0x8008
	.long	4227080                 @ 0x408008
	.size	comp_maskr0, 128

	.type	comp_maskl1,%object     @ @comp_maskl1
	.align	2
comp_maskl1:
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	16384                   @ 0x4000
	.long	16400                   @ 0x4010
	.long	262144                  @ 0x40000
	.long	262160                  @ 0x40010
	.long	278528                  @ 0x44000
	.long	278544                  @ 0x44010
	.long	256                     @ 0x100
	.long	272                     @ 0x110
	.long	16640                   @ 0x4100
	.long	16656                   @ 0x4110
	.long	262400                  @ 0x40100
	.long	262416                  @ 0x40110
	.long	278784                  @ 0x44100
	.long	278800                  @ 0x44110
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	2                       @ 0x2
	.long	8388610                 @ 0x800002
	.long	512                     @ 0x200
	.long	8389120                 @ 0x800200
	.long	514                     @ 0x202
	.long	8389122                 @ 0x800202
	.long	2097152                 @ 0x200000
	.long	10485760                @ 0xa00000
	.long	2097154                 @ 0x200002
	.long	10485762                @ 0xa00002
	.long	2097664                 @ 0x200200
	.long	10486272                @ 0xa00200
	.long	2097666                 @ 0x200202
	.long	10486274                @ 0xa00202
	.long	0                       @ 0x0
	.long	8192                    @ 0x2000
	.long	4                       @ 0x4
	.long	8196                    @ 0x2004
	.long	1024                    @ 0x400
	.long	9216                    @ 0x2400
	.long	1028                    @ 0x404
	.long	9220                    @ 0x2404
	.long	0                       @ 0x0
	.long	8192                    @ 0x2000
	.long	4                       @ 0x4
	.long	8196                    @ 0x2004
	.long	1024                    @ 0x400
	.long	9216                    @ 0x2400
	.long	1028                    @ 0x404
	.long	9220                    @ 0x2404
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	8                       @ 0x8
	.long	65544                   @ 0x10008
	.long	128                     @ 0x80
	.long	65664                   @ 0x10080
	.long	136                     @ 0x88
	.long	65672                   @ 0x10088
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	8                       @ 0x8
	.long	65544                   @ 0x10008
	.long	128                     @ 0x80
	.long	65664                   @ 0x10080
	.long	136                     @ 0x88
	.long	65672                   @ 0x10088
	.size	comp_maskl1, 256

	.type	comp_maskr1,%object     @ @comp_maskr1
	.align	2
comp_maskr1:
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	128                     @ 0x80
	.long	8192                    @ 0x2000
	.long	8192                    @ 0x2000
	.long	8320                    @ 0x2080
	.long	8320                    @ 0x2080
	.long	1                       @ 0x1
	.long	1                       @ 0x1
	.long	129                     @ 0x81
	.long	129                     @ 0x81
	.long	8193                    @ 0x2001
	.long	8193                    @ 0x2001
	.long	8321                    @ 0x2081
	.long	8321                    @ 0x2081
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	8388608                 @ 0x800000
	.long	8388624                 @ 0x800010
	.long	65536                   @ 0x10000
	.long	65552                   @ 0x10010
	.long	8454144                 @ 0x810000
	.long	8454160                 @ 0x810010
	.long	512                     @ 0x200
	.long	528                     @ 0x210
	.long	8389120                 @ 0x800200
	.long	8389136                 @ 0x800210
	.long	66048                   @ 0x10200
	.long	66064                   @ 0x10210
	.long	8454656                 @ 0x810200
	.long	8454672                 @ 0x810210
	.long	0                       @ 0x0
	.long	1024                    @ 0x400
	.long	4096                    @ 0x1000
	.long	5120                    @ 0x1400
	.long	524288                  @ 0x80000
	.long	525312                  @ 0x80400
	.long	528384                  @ 0x81000
	.long	529408                  @ 0x81400
	.long	32                      @ 0x20
	.long	1056                    @ 0x420
	.long	4128                    @ 0x1020
	.long	5152                    @ 0x1420
	.long	524320                  @ 0x80020
	.long	525344                  @ 0x80420
	.long	528416                  @ 0x81020
	.long	529440                  @ 0x81420
	.long	0                       @ 0x0
	.long	256                     @ 0x100
	.long	262144                  @ 0x40000
	.long	262400                  @ 0x40100
	.long	0                       @ 0x0
	.long	256                     @ 0x100
	.long	262144                  @ 0x40000
	.long	262400                  @ 0x40100
	.long	64                      @ 0x40
	.long	320                     @ 0x140
	.long	262208                  @ 0x40040
	.long	262464                  @ 0x40140
	.long	64                      @ 0x40
	.long	320                     @ 0x140
	.long	262208                  @ 0x40040
	.long	262464                  @ 0x40140
	.size	comp_maskr1, 256

	.type	ip_maskl,%object        @ @ip_maskl
	.align	2
ip_maskl:
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	16777216                @ 0x1000000
	.long	16842752                @ 0x1010000
	.long	16777216                @ 0x1000000
	.long	16842752                @ 0x1010000
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	16777216                @ 0x1000000
	.long	16842752                @ 0x1010000
	.long	16777216                @ 0x1000000
	.long	16842752                @ 0x1010000
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	256                     @ 0x100
	.long	257                     @ 0x101
	.long	256                     @ 0x100
	.long	257                     @ 0x101
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	256                     @ 0x100
	.long	257                     @ 0x101
	.long	256                     @ 0x100
	.long	257                     @ 0x101
	.long	0                       @ 0x0
	.long	131072                  @ 0x20000
	.long	0                       @ 0x0
	.long	131072                  @ 0x20000
	.long	33554432                @ 0x2000000
	.long	33685504                @ 0x2020000
	.long	33554432                @ 0x2000000
	.long	33685504                @ 0x2020000
	.long	0                       @ 0x0
	.long	131072                  @ 0x20000
	.long	0                       @ 0x0
	.long	131072                  @ 0x20000
	.long	33554432                @ 0x2000000
	.long	33685504                @ 0x2020000
	.long	33554432                @ 0x2000000
	.long	33685504                @ 0x2020000
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	512                     @ 0x200
	.long	514                     @ 0x202
	.long	512                     @ 0x200
	.long	514                     @ 0x202
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	512                     @ 0x200
	.long	514                     @ 0x202
	.long	512                     @ 0x200
	.long	514                     @ 0x202
	.long	0                       @ 0x0
	.long	262144                  @ 0x40000
	.long	0                       @ 0x0
	.long	262144                  @ 0x40000
	.long	67108864                @ 0x4000000
	.long	67371008                @ 0x4040000
	.long	67108864                @ 0x4000000
	.long	67371008                @ 0x4040000
	.long	0                       @ 0x0
	.long	262144                  @ 0x40000
	.long	0                       @ 0x0
	.long	262144                  @ 0x40000
	.long	67108864                @ 0x4000000
	.long	67371008                @ 0x4040000
	.long	67108864                @ 0x4000000
	.long	67371008                @ 0x4040000
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	1024                    @ 0x400
	.long	1028                    @ 0x404
	.long	1024                    @ 0x400
	.long	1028                    @ 0x404
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	1024                    @ 0x400
	.long	1028                    @ 0x404
	.long	1024                    @ 0x400
	.long	1028                    @ 0x404
	.long	0                       @ 0x0
	.long	524288                  @ 0x80000
	.long	0                       @ 0x0
	.long	524288                  @ 0x80000
	.long	134217728               @ 0x8000000
	.long	134742016               @ 0x8080000
	.long	134217728               @ 0x8000000
	.long	134742016               @ 0x8080000
	.long	0                       @ 0x0
	.long	524288                  @ 0x80000
	.long	0                       @ 0x0
	.long	524288                  @ 0x80000
	.long	134217728               @ 0x8000000
	.long	134742016               @ 0x8080000
	.long	134217728               @ 0x8000000
	.long	134742016               @ 0x8080000
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	2048                    @ 0x800
	.long	2056                    @ 0x808
	.long	2048                    @ 0x800
	.long	2056                    @ 0x808
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	2048                    @ 0x800
	.long	2056                    @ 0x808
	.long	2048                    @ 0x800
	.long	2056                    @ 0x808
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	268435456               @ 0x10000000
	.long	269484032               @ 0x10100000
	.long	268435456               @ 0x10000000
	.long	269484032               @ 0x10100000
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	268435456               @ 0x10000000
	.long	269484032               @ 0x10100000
	.long	268435456               @ 0x10000000
	.long	269484032               @ 0x10100000
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	4096                    @ 0x1000
	.long	4112                    @ 0x1010
	.long	4096                    @ 0x1000
	.long	4112                    @ 0x1010
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	4096                    @ 0x1000
	.long	4112                    @ 0x1010
	.long	4096                    @ 0x1000
	.long	4112                    @ 0x1010
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	536870912               @ 0x20000000
	.long	538968064               @ 0x20200000
	.long	536870912               @ 0x20000000
	.long	538968064               @ 0x20200000
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	536870912               @ 0x20000000
	.long	538968064               @ 0x20200000
	.long	536870912               @ 0x20000000
	.long	538968064               @ 0x20200000
	.long	0                       @ 0x0
	.long	32                      @ 0x20
	.long	0                       @ 0x0
	.long	32                      @ 0x20
	.long	8192                    @ 0x2000
	.long	8224                    @ 0x2020
	.long	8192                    @ 0x2000
	.long	8224                    @ 0x2020
	.long	0                       @ 0x0
	.long	32                      @ 0x20
	.long	0                       @ 0x0
	.long	32                      @ 0x20
	.long	8192                    @ 0x2000
	.long	8224                    @ 0x2020
	.long	8192                    @ 0x2000
	.long	8224                    @ 0x2020
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	1073741824              @ 0x40000000
	.long	1077936128              @ 0x40400000
	.long	1073741824              @ 0x40000000
	.long	1077936128              @ 0x40400000
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	1073741824              @ 0x40000000
	.long	1077936128              @ 0x40400000
	.long	1073741824              @ 0x40000000
	.long	1077936128              @ 0x40400000
	.long	0                       @ 0x0
	.long	64                      @ 0x40
	.long	0                       @ 0x0
	.long	64                      @ 0x40
	.long	16384                   @ 0x4000
	.long	16448                   @ 0x4040
	.long	16384                   @ 0x4000
	.long	16448                   @ 0x4040
	.long	0                       @ 0x0
	.long	64                      @ 0x40
	.long	0                       @ 0x0
	.long	64                      @ 0x40
	.long	16384                   @ 0x4000
	.long	16448                   @ 0x4040
	.long	16384                   @ 0x4000
	.long	16448                   @ 0x4040
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	2147483648              @ 0x80000000
	.long	2155872256              @ 0x80800000
	.long	2147483648              @ 0x80000000
	.long	2155872256              @ 0x80800000
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	2147483648              @ 0x80000000
	.long	2155872256              @ 0x80800000
	.long	2147483648              @ 0x80000000
	.long	2155872256              @ 0x80800000
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	32768                   @ 0x8000
	.long	32896                   @ 0x8080
	.long	32768                   @ 0x8000
	.long	32896                   @ 0x8080
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	32768                   @ 0x8000
	.long	32896                   @ 0x8080
	.long	32768                   @ 0x8000
	.long	32896                   @ 0x8080
	.size	ip_maskl, 1024

	.type	ip_maskr,%object        @ @ip_maskr
	.align	2
ip_maskr:
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	65536                   @ 0x10000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	65536                   @ 0x10000
	.long	65536                   @ 0x10000
	.long	16777216                @ 0x1000000
	.long	16777216                @ 0x1000000
	.long	16842752                @ 0x1010000
	.long	16842752                @ 0x1010000
	.long	16777216                @ 0x1000000
	.long	16777216                @ 0x1000000
	.long	16842752                @ 0x1010000
	.long	16842752                @ 0x1010000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	1                       @ 0x1
	.long	256                     @ 0x100
	.long	256                     @ 0x100
	.long	257                     @ 0x101
	.long	257                     @ 0x101
	.long	256                     @ 0x100
	.long	256                     @ 0x100
	.long	257                     @ 0x101
	.long	257                     @ 0x101
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	131072                  @ 0x20000
	.long	131072                  @ 0x20000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	131072                  @ 0x20000
	.long	131072                  @ 0x20000
	.long	33554432                @ 0x2000000
	.long	33554432                @ 0x2000000
	.long	33685504                @ 0x2020000
	.long	33685504                @ 0x2020000
	.long	33554432                @ 0x2000000
	.long	33554432                @ 0x2000000
	.long	33685504                @ 0x2020000
	.long	33685504                @ 0x2020000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	2                       @ 0x2
	.long	512                     @ 0x200
	.long	512                     @ 0x200
	.long	514                     @ 0x202
	.long	514                     @ 0x202
	.long	512                     @ 0x200
	.long	512                     @ 0x200
	.long	514                     @ 0x202
	.long	514                     @ 0x202
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	262144                  @ 0x40000
	.long	262144                  @ 0x40000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	262144                  @ 0x40000
	.long	262144                  @ 0x40000
	.long	67108864                @ 0x4000000
	.long	67108864                @ 0x4000000
	.long	67371008                @ 0x4040000
	.long	67371008                @ 0x4040000
	.long	67108864                @ 0x4000000
	.long	67108864                @ 0x4000000
	.long	67371008                @ 0x4040000
	.long	67371008                @ 0x4040000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	4                       @ 0x4
	.long	1024                    @ 0x400
	.long	1024                    @ 0x400
	.long	1028                    @ 0x404
	.long	1028                    @ 0x404
	.long	1024                    @ 0x400
	.long	1024                    @ 0x400
	.long	1028                    @ 0x404
	.long	1028                    @ 0x404
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	524288                  @ 0x80000
	.long	524288                  @ 0x80000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	524288                  @ 0x80000
	.long	524288                  @ 0x80000
	.long	134217728               @ 0x8000000
	.long	134217728               @ 0x8000000
	.long	134742016               @ 0x8080000
	.long	134742016               @ 0x8080000
	.long	134217728               @ 0x8000000
	.long	134217728               @ 0x8000000
	.long	134742016               @ 0x8080000
	.long	134742016               @ 0x8080000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	8                       @ 0x8
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	8                       @ 0x8
	.long	8                       @ 0x8
	.long	2048                    @ 0x800
	.long	2048                    @ 0x800
	.long	2056                    @ 0x808
	.long	2056                    @ 0x808
	.long	2048                    @ 0x800
	.long	2048                    @ 0x800
	.long	2056                    @ 0x808
	.long	2056                    @ 0x808
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	1048576                 @ 0x100000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1048576                 @ 0x100000
	.long	1048576                 @ 0x100000
	.long	268435456               @ 0x10000000
	.long	268435456               @ 0x10000000
	.long	269484032               @ 0x10100000
	.long	269484032               @ 0x10100000
	.long	268435456               @ 0x10000000
	.long	268435456               @ 0x10000000
	.long	269484032               @ 0x10100000
	.long	269484032               @ 0x10100000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	16                      @ 0x10
	.long	4096                    @ 0x1000
	.long	4096                    @ 0x1000
	.long	4112                    @ 0x1010
	.long	4112                    @ 0x1010
	.long	4096                    @ 0x1000
	.long	4096                    @ 0x1000
	.long	4112                    @ 0x1010
	.long	4112                    @ 0x1010
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	2097152                 @ 0x200000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	2097152                 @ 0x200000
	.long	2097152                 @ 0x200000
	.long	536870912               @ 0x20000000
	.long	536870912               @ 0x20000000
	.long	538968064               @ 0x20200000
	.long	538968064               @ 0x20200000
	.long	536870912               @ 0x20000000
	.long	536870912               @ 0x20000000
	.long	538968064               @ 0x20200000
	.long	538968064               @ 0x20200000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	32                      @ 0x20
	.long	32                      @ 0x20
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	32                      @ 0x20
	.long	32                      @ 0x20
	.long	8192                    @ 0x2000
	.long	8192                    @ 0x2000
	.long	8224                    @ 0x2020
	.long	8224                    @ 0x2020
	.long	8192                    @ 0x2000
	.long	8192                    @ 0x2000
	.long	8224                    @ 0x2020
	.long	8224                    @ 0x2020
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	4194304                 @ 0x400000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	4194304                 @ 0x400000
	.long	4194304                 @ 0x400000
	.long	1073741824              @ 0x40000000
	.long	1073741824              @ 0x40000000
	.long	1077936128              @ 0x40400000
	.long	1077936128              @ 0x40400000
	.long	1073741824              @ 0x40000000
	.long	1073741824              @ 0x40000000
	.long	1077936128              @ 0x40400000
	.long	1077936128              @ 0x40400000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	64                      @ 0x40
	.long	64                      @ 0x40
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	64                      @ 0x40
	.long	64                      @ 0x40
	.long	16384                   @ 0x4000
	.long	16384                   @ 0x4000
	.long	16448                   @ 0x4040
	.long	16448                   @ 0x4040
	.long	16384                   @ 0x4000
	.long	16384                   @ 0x4000
	.long	16448                   @ 0x4040
	.long	16448                   @ 0x4040
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	8388608                 @ 0x800000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	8388608                 @ 0x800000
	.long	8388608                 @ 0x800000
	.long	2147483648              @ 0x80000000
	.long	2147483648              @ 0x80000000
	.long	2155872256              @ 0x80800000
	.long	2155872256              @ 0x80800000
	.long	2147483648              @ 0x80000000
	.long	2147483648              @ 0x80000000
	.long	2155872256              @ 0x80800000
	.long	2155872256              @ 0x80800000
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	128                     @ 0x80
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	128                     @ 0x80
	.long	128                     @ 0x80
	.long	32768                   @ 0x8000
	.long	32768                   @ 0x8000
	.long	32896                   @ 0x8080
	.long	32896                   @ 0x8080
	.long	32768                   @ 0x8000
	.long	32768                   @ 0x8000
	.long	32896                   @ 0x8080
	.long	32896                   @ 0x8080
	.size	ip_maskr, 1024

	.type	psbox,%object           @ @psbox
	.align	2
psbox:
	.long	8421888                 @ 0x808200
	.long	0                       @ 0x0
	.long	32768                   @ 0x8000
	.long	8421890                 @ 0x808202
	.long	8421378                 @ 0x808002
	.long	33282                   @ 0x8202
	.long	2                       @ 0x2
	.long	32768                   @ 0x8000
	.long	512                     @ 0x200
	.long	8421888                 @ 0x808200
	.long	8421890                 @ 0x808202
	.long	512                     @ 0x200
	.long	8389122                 @ 0x800202
	.long	8421378                 @ 0x808002
	.long	8388608                 @ 0x800000
	.long	2                       @ 0x2
	.long	514                     @ 0x202
	.long	8389120                 @ 0x800200
	.long	8389120                 @ 0x800200
	.long	33280                   @ 0x8200
	.long	33280                   @ 0x8200
	.long	8421376                 @ 0x808000
	.long	8421376                 @ 0x808000
	.long	8389122                 @ 0x800202
	.long	32770                   @ 0x8002
	.long	8388610                 @ 0x800002
	.long	8388610                 @ 0x800002
	.long	32770                   @ 0x8002
	.long	0                       @ 0x0
	.long	514                     @ 0x202
	.long	33282                   @ 0x8202
	.long	8388608                 @ 0x800000
	.long	32768                   @ 0x8000
	.long	8421890                 @ 0x808202
	.long	2                       @ 0x2
	.long	8421376                 @ 0x808000
	.long	8421888                 @ 0x808200
	.long	8388608                 @ 0x800000
	.long	8388608                 @ 0x800000
	.long	512                     @ 0x200
	.long	8421378                 @ 0x808002
	.long	32768                   @ 0x8000
	.long	33280                   @ 0x8200
	.long	8388610                 @ 0x800002
	.long	512                     @ 0x200
	.long	2                       @ 0x2
	.long	8389122                 @ 0x800202
	.long	33282                   @ 0x8202
	.long	8421890                 @ 0x808202
	.long	32770                   @ 0x8002
	.long	8421376                 @ 0x808000
	.long	8389122                 @ 0x800202
	.long	8388610                 @ 0x800002
	.long	514                     @ 0x202
	.long	33282                   @ 0x8202
	.long	8421888                 @ 0x808200
	.long	514                     @ 0x202
	.long	8389120                 @ 0x800200
	.long	8389120                 @ 0x800200
	.long	0                       @ 0x0
	.long	32770                   @ 0x8002
	.long	33280                   @ 0x8200
	.long	0                       @ 0x0
	.long	8421378                 @ 0x808002
	.long	1074282512              @ 0x40084010
	.long	1073758208              @ 0x40004000
	.long	16384                   @ 0x4000
	.long	540688                  @ 0x84010
	.long	524288                  @ 0x80000
	.long	16                      @ 0x10
	.long	1074266128              @ 0x40080010
	.long	1073758224              @ 0x40004010
	.long	1073741840              @ 0x40000010
	.long	1074282512              @ 0x40084010
	.long	1074282496              @ 0x40084000
	.long	1073741824              @ 0x40000000
	.long	1073758208              @ 0x40004000
	.long	524288                  @ 0x80000
	.long	16                      @ 0x10
	.long	1074266128              @ 0x40080010
	.long	540672                  @ 0x84000
	.long	524304                  @ 0x80010
	.long	1073758224              @ 0x40004010
	.long	0                       @ 0x0
	.long	1073741824              @ 0x40000000
	.long	16384                   @ 0x4000
	.long	540688                  @ 0x84010
	.long	1074266112              @ 0x40080000
	.long	524304                  @ 0x80010
	.long	1073741840              @ 0x40000010
	.long	0                       @ 0x0
	.long	540672                  @ 0x84000
	.long	16400                   @ 0x4010
	.long	1074282496              @ 0x40084000
	.long	1074266112              @ 0x40080000
	.long	16400                   @ 0x4010
	.long	0                       @ 0x0
	.long	540688                  @ 0x84010
	.long	1074266128              @ 0x40080010
	.long	524288                  @ 0x80000
	.long	1073758224              @ 0x40004010
	.long	1074266112              @ 0x40080000
	.long	1074282496              @ 0x40084000
	.long	16384                   @ 0x4000
	.long	1074266112              @ 0x40080000
	.long	1073758208              @ 0x40004000
	.long	16                      @ 0x10
	.long	1074282512              @ 0x40084010
	.long	540688                  @ 0x84010
	.long	16                      @ 0x10
	.long	16384                   @ 0x4000
	.long	1073741824              @ 0x40000000
	.long	16400                   @ 0x4010
	.long	1074282496              @ 0x40084000
	.long	524288                  @ 0x80000
	.long	1073741840              @ 0x40000010
	.long	524304                  @ 0x80010
	.long	1073758224              @ 0x40004010
	.long	1073741840              @ 0x40000010
	.long	524304                  @ 0x80010
	.long	540672                  @ 0x84000
	.long	0                       @ 0x0
	.long	1073758208              @ 0x40004000
	.long	16400                   @ 0x4010
	.long	1073741824              @ 0x40000000
	.long	1074266128              @ 0x40080010
	.long	1074282512              @ 0x40084010
	.long	540672                  @ 0x84000
	.long	260                     @ 0x104
	.long	67174656                @ 0x4010100
	.long	0                       @ 0x0
	.long	67174404                @ 0x4010004
	.long	67109120                @ 0x4000100
	.long	0                       @ 0x0
	.long	65796                   @ 0x10104
	.long	67109120                @ 0x4000100
	.long	65540                   @ 0x10004
	.long	67108868                @ 0x4000004
	.long	67108868                @ 0x4000004
	.long	65536                   @ 0x10000
	.long	67174660                @ 0x4010104
	.long	65540                   @ 0x10004
	.long	67174400                @ 0x4010000
	.long	260                     @ 0x104
	.long	67108864                @ 0x4000000
	.long	4                       @ 0x4
	.long	67174656                @ 0x4010100
	.long	256                     @ 0x100
	.long	65792                   @ 0x10100
	.long	67174400                @ 0x4010000
	.long	67174404                @ 0x4010004
	.long	65796                   @ 0x10104
	.long	67109124                @ 0x4000104
	.long	65792                   @ 0x10100
	.long	65536                   @ 0x10000
	.long	67109124                @ 0x4000104
	.long	4                       @ 0x4
	.long	67174660                @ 0x4010104
	.long	256                     @ 0x100
	.long	67108864                @ 0x4000000
	.long	67174656                @ 0x4010100
	.long	67108864                @ 0x4000000
	.long	65540                   @ 0x10004
	.long	260                     @ 0x104
	.long	65536                   @ 0x10000
	.long	67174656                @ 0x4010100
	.long	67109120                @ 0x4000100
	.long	0                       @ 0x0
	.long	256                     @ 0x100
	.long	65540                   @ 0x10004
	.long	67174660                @ 0x4010104
	.long	67109120                @ 0x4000100
	.long	67108868                @ 0x4000004
	.long	256                     @ 0x100
	.long	0                       @ 0x0
	.long	67174404                @ 0x4010004
	.long	67109124                @ 0x4000104
	.long	65536                   @ 0x10000
	.long	67108864                @ 0x4000000
	.long	67174660                @ 0x4010104
	.long	4                       @ 0x4
	.long	65796                   @ 0x10104
	.long	65792                   @ 0x10100
	.long	67108868                @ 0x4000004
	.long	67174400                @ 0x4010000
	.long	67109124                @ 0x4000104
	.long	260                     @ 0x104
	.long	67174400                @ 0x4010000
	.long	65796                   @ 0x10104
	.long	4                       @ 0x4
	.long	67174404                @ 0x4010004
	.long	65792                   @ 0x10100
	.long	2151682048              @ 0x80401000
	.long	2147487808              @ 0x80001040
	.long	2147487808              @ 0x80001040
	.long	64                      @ 0x40
	.long	4198464                 @ 0x401040
	.long	2151678016              @ 0x80400040
	.long	2151677952              @ 0x80400000
	.long	2147487744              @ 0x80001000
	.long	0                       @ 0x0
	.long	4198400                 @ 0x401000
	.long	4198400                 @ 0x401000
	.long	2151682112              @ 0x80401040
	.long	2147483712              @ 0x80000040
	.long	0                       @ 0x0
	.long	4194368                 @ 0x400040
	.long	2151677952              @ 0x80400000
	.long	2147483648              @ 0x80000000
	.long	4096                    @ 0x1000
	.long	4194304                 @ 0x400000
	.long	2151682048              @ 0x80401000
	.long	64                      @ 0x40
	.long	4194304                 @ 0x400000
	.long	2147487744              @ 0x80001000
	.long	4160                    @ 0x1040
	.long	2151678016              @ 0x80400040
	.long	2147483648              @ 0x80000000
	.long	4160                    @ 0x1040
	.long	4194368                 @ 0x400040
	.long	4096                    @ 0x1000
	.long	4198464                 @ 0x401040
	.long	2151682112              @ 0x80401040
	.long	2147483712              @ 0x80000040
	.long	4194368                 @ 0x400040
	.long	2151677952              @ 0x80400000
	.long	4198400                 @ 0x401000
	.long	2151682112              @ 0x80401040
	.long	2147483712              @ 0x80000040
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	4198400                 @ 0x401000
	.long	4160                    @ 0x1040
	.long	4194368                 @ 0x400040
	.long	2151678016              @ 0x80400040
	.long	2147483648              @ 0x80000000
	.long	2151682048              @ 0x80401000
	.long	2147487808              @ 0x80001040
	.long	2147487808              @ 0x80001040
	.long	64                      @ 0x40
	.long	2151682112              @ 0x80401040
	.long	2147483712              @ 0x80000040
	.long	2147483648              @ 0x80000000
	.long	4096                    @ 0x1000
	.long	2151677952              @ 0x80400000
	.long	2147487744              @ 0x80001000
	.long	4198464                 @ 0x401040
	.long	2151678016              @ 0x80400040
	.long	2147487744              @ 0x80001000
	.long	4160                    @ 0x1040
	.long	4194304                 @ 0x400000
	.long	2151682048              @ 0x80401000
	.long	64                      @ 0x40
	.long	4194304                 @ 0x400000
	.long	4096                    @ 0x1000
	.long	4198464                 @ 0x401040
	.long	128                     @ 0x80
	.long	17039488                @ 0x1040080
	.long	17039360                @ 0x1040000
	.long	553648256               @ 0x21000080
	.long	262144                  @ 0x40000
	.long	128                     @ 0x80
	.long	536870912               @ 0x20000000
	.long	17039360                @ 0x1040000
	.long	537133184               @ 0x20040080
	.long	262144                  @ 0x40000
	.long	16777344                @ 0x1000080
	.long	537133184               @ 0x20040080
	.long	553648256               @ 0x21000080
	.long	553910272               @ 0x21040000
	.long	262272                  @ 0x40080
	.long	536870912               @ 0x20000000
	.long	16777216                @ 0x1000000
	.long	537133056               @ 0x20040000
	.long	537133056               @ 0x20040000
	.long	0                       @ 0x0
	.long	536871040               @ 0x20000080
	.long	553910400               @ 0x21040080
	.long	553910400               @ 0x21040080
	.long	16777344                @ 0x1000080
	.long	553910272               @ 0x21040000
	.long	536871040               @ 0x20000080
	.long	0                       @ 0x0
	.long	553648128               @ 0x21000000
	.long	17039488                @ 0x1040080
	.long	16777216                @ 0x1000000
	.long	553648128               @ 0x21000000
	.long	262272                  @ 0x40080
	.long	262144                  @ 0x40000
	.long	553648256               @ 0x21000080
	.long	128                     @ 0x80
	.long	16777216                @ 0x1000000
	.long	536870912               @ 0x20000000
	.long	17039360                @ 0x1040000
	.long	553648256               @ 0x21000080
	.long	537133184               @ 0x20040080
	.long	16777344                @ 0x1000080
	.long	536870912               @ 0x20000000
	.long	553910272               @ 0x21040000
	.long	17039488                @ 0x1040080
	.long	537133184               @ 0x20040080
	.long	128                     @ 0x80
	.long	16777216                @ 0x1000000
	.long	553910272               @ 0x21040000
	.long	553910400               @ 0x21040080
	.long	262272                  @ 0x40080
	.long	553648128               @ 0x21000000
	.long	553910400               @ 0x21040080
	.long	17039360                @ 0x1040000
	.long	0                       @ 0x0
	.long	537133056               @ 0x20040000
	.long	553648128               @ 0x21000000
	.long	262272                  @ 0x40080
	.long	16777344                @ 0x1000080
	.long	536871040               @ 0x20000080
	.long	262144                  @ 0x40000
	.long	0                       @ 0x0
	.long	537133056               @ 0x20040000
	.long	17039488                @ 0x1040080
	.long	536871040               @ 0x20000080
	.long	268435464               @ 0x10000008
	.long	270532608               @ 0x10200000
	.long	8192                    @ 0x2000
	.long	270540808               @ 0x10202008
	.long	270532608               @ 0x10200000
	.long	8                       @ 0x8
	.long	270540808               @ 0x10202008
	.long	2097152                 @ 0x200000
	.long	268443648               @ 0x10002000
	.long	2105352                 @ 0x202008
	.long	2097152                 @ 0x200000
	.long	268435464               @ 0x10000008
	.long	2097160                 @ 0x200008
	.long	268443648               @ 0x10002000
	.long	268435456               @ 0x10000000
	.long	8200                    @ 0x2008
	.long	0                       @ 0x0
	.long	2097160                 @ 0x200008
	.long	268443656               @ 0x10002008
	.long	8192                    @ 0x2000
	.long	2105344                 @ 0x202000
	.long	268443656               @ 0x10002008
	.long	8                       @ 0x8
	.long	270532616               @ 0x10200008
	.long	270532616               @ 0x10200008
	.long	0                       @ 0x0
	.long	2105352                 @ 0x202008
	.long	270540800               @ 0x10202000
	.long	8200                    @ 0x2008
	.long	2105344                 @ 0x202000
	.long	270540800               @ 0x10202000
	.long	268435456               @ 0x10000000
	.long	268443648               @ 0x10002000
	.long	8                       @ 0x8
	.long	270532616               @ 0x10200008
	.long	2105344                 @ 0x202000
	.long	270540808               @ 0x10202008
	.long	2097152                 @ 0x200000
	.long	8200                    @ 0x2008
	.long	268435464               @ 0x10000008
	.long	2097152                 @ 0x200000
	.long	268443648               @ 0x10002000
	.long	268435456               @ 0x10000000
	.long	8200                    @ 0x2008
	.long	268435464               @ 0x10000008
	.long	270540808               @ 0x10202008
	.long	2105344                 @ 0x202000
	.long	270532608               @ 0x10200000
	.long	2105352                 @ 0x202008
	.long	270540800               @ 0x10202000
	.long	0                       @ 0x0
	.long	270532616               @ 0x10200008
	.long	8                       @ 0x8
	.long	8192                    @ 0x2000
	.long	270532608               @ 0x10200000
	.long	2105352                 @ 0x202008
	.long	8192                    @ 0x2000
	.long	2097160                 @ 0x200008
	.long	268443656               @ 0x10002008
	.long	0                       @ 0x0
	.long	270540800               @ 0x10202000
	.long	268435456               @ 0x10000000
	.long	2097160                 @ 0x200008
	.long	268443656               @ 0x10002008
	.long	1048576                 @ 0x100000
	.long	34603009                @ 0x2100001
	.long	33555457                @ 0x2000401
	.long	0                       @ 0x0
	.long	1024                    @ 0x400
	.long	33555457                @ 0x2000401
	.long	1049601                 @ 0x100401
	.long	34604032                @ 0x2100400
	.long	34604033                @ 0x2100401
	.long	1048576                 @ 0x100000
	.long	0                       @ 0x0
	.long	33554433                @ 0x2000001
	.long	1                       @ 0x1
	.long	33554432                @ 0x2000000
	.long	34603009                @ 0x2100001
	.long	1025                    @ 0x401
	.long	33555456                @ 0x2000400
	.long	1049601                 @ 0x100401
	.long	1048577                 @ 0x100001
	.long	33555456                @ 0x2000400
	.long	33554433                @ 0x2000001
	.long	34603008                @ 0x2100000
	.long	34604032                @ 0x2100400
	.long	1048577                 @ 0x100001
	.long	34603008                @ 0x2100000
	.long	1024                    @ 0x400
	.long	1025                    @ 0x401
	.long	34604033                @ 0x2100401
	.long	1049600                 @ 0x100400
	.long	1                       @ 0x1
	.long	33554432                @ 0x2000000
	.long	1049600                 @ 0x100400
	.long	33554432                @ 0x2000000
	.long	1049600                 @ 0x100400
	.long	1048576                 @ 0x100000
	.long	33555457                @ 0x2000401
	.long	33555457                @ 0x2000401
	.long	34603009                @ 0x2100001
	.long	34603009                @ 0x2100001
	.long	1                       @ 0x1
	.long	1048577                 @ 0x100001
	.long	33554432                @ 0x2000000
	.long	33555456                @ 0x2000400
	.long	1048576                 @ 0x100000
	.long	34604032                @ 0x2100400
	.long	1025                    @ 0x401
	.long	1049601                 @ 0x100401
	.long	34604032                @ 0x2100400
	.long	1025                    @ 0x401
	.long	33554433                @ 0x2000001
	.long	34604033                @ 0x2100401
	.long	34603008                @ 0x2100000
	.long	1049600                 @ 0x100400
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	34604033                @ 0x2100401
	.long	0                       @ 0x0
	.long	1049601                 @ 0x100401
	.long	34603008                @ 0x2100000
	.long	1024                    @ 0x400
	.long	33554433                @ 0x2000001
	.long	33555456                @ 0x2000400
	.long	1024                    @ 0x400
	.long	1048577                 @ 0x100001
	.long	134219808               @ 0x8000820
	.long	2048                    @ 0x800
	.long	131072                  @ 0x20000
	.long	134350880               @ 0x8020820
	.long	134217728               @ 0x8000000
	.long	134219808               @ 0x8000820
	.long	32                      @ 0x20
	.long	134217728               @ 0x8000000
	.long	131104                  @ 0x20020
	.long	134348800               @ 0x8020000
	.long	134350880               @ 0x8020820
	.long	133120                  @ 0x20800
	.long	134350848               @ 0x8020800
	.long	133152                  @ 0x20820
	.long	2048                    @ 0x800
	.long	32                      @ 0x20
	.long	134348800               @ 0x8020000
	.long	134217760               @ 0x8000020
	.long	134219776               @ 0x8000800
	.long	2080                    @ 0x820
	.long	133120                  @ 0x20800
	.long	131104                  @ 0x20020
	.long	134348832               @ 0x8020020
	.long	134350848               @ 0x8020800
	.long	2080                    @ 0x820
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	134348832               @ 0x8020020
	.long	134217760               @ 0x8000020
	.long	134219776               @ 0x8000800
	.long	133152                  @ 0x20820
	.long	131072                  @ 0x20000
	.long	133152                  @ 0x20820
	.long	131072                  @ 0x20000
	.long	134350848               @ 0x8020800
	.long	2048                    @ 0x800
	.long	32                      @ 0x20
	.long	134348832               @ 0x8020020
	.long	2048                    @ 0x800
	.long	133152                  @ 0x20820
	.long	134219776               @ 0x8000800
	.long	32                      @ 0x20
	.long	134217760               @ 0x8000020
	.long	134348800               @ 0x8020000
	.long	134348832               @ 0x8020020
	.long	134217728               @ 0x8000000
	.long	131072                  @ 0x20000
	.long	134219808               @ 0x8000820
	.long	0                       @ 0x0
	.long	134350880               @ 0x8020820
	.long	131104                  @ 0x20020
	.long	134217760               @ 0x8000020
	.long	134348800               @ 0x8020000
	.long	134219776               @ 0x8000800
	.long	134219808               @ 0x8000820
	.long	0                       @ 0x0
	.long	134350880               @ 0x8020820
	.long	133120                  @ 0x20800
	.long	133120                  @ 0x20800
	.long	2080                    @ 0x820
	.long	2080                    @ 0x820
	.long	131104                  @ 0x20020
	.long	134217728               @ 0x8000000
	.long	134350848               @ 0x8020800
	.size	psbox, 2048

	.type	fp_maskl,%object        @ @fp_maskl
	.align	2
fp_maskl:
	.long	0                       @ 0x0
	.long	1073741824              @ 0x40000000
	.long	4194304                 @ 0x400000
	.long	1077936128              @ 0x40400000
	.long	16384                   @ 0x4000
	.long	1073758208              @ 0x40004000
	.long	4210688                 @ 0x404000
	.long	1077952512              @ 0x40404000
	.long	64                      @ 0x40
	.long	1073741888              @ 0x40000040
	.long	4194368                 @ 0x400040
	.long	1077936192              @ 0x40400040
	.long	16448                   @ 0x4040
	.long	1073758272              @ 0x40004040
	.long	4210752                 @ 0x404040
	.long	1077952576              @ 0x40404040
	.long	0                       @ 0x0
	.long	268435456               @ 0x10000000
	.long	1048576                 @ 0x100000
	.long	269484032               @ 0x10100000
	.long	4096                    @ 0x1000
	.long	268439552               @ 0x10001000
	.long	1052672                 @ 0x101000
	.long	269488128               @ 0x10101000
	.long	16                      @ 0x10
	.long	268435472               @ 0x10000010
	.long	1048592                 @ 0x100010
	.long	269484048               @ 0x10100010
	.long	4112                    @ 0x1010
	.long	268439568               @ 0x10001010
	.long	1052688                 @ 0x101010
	.long	269488144               @ 0x10101010
	.long	0                       @ 0x0
	.long	67108864                @ 0x4000000
	.long	262144                  @ 0x40000
	.long	67371008                @ 0x4040000
	.long	1024                    @ 0x400
	.long	67109888                @ 0x4000400
	.long	263168                  @ 0x40400
	.long	67372032                @ 0x4040400
	.long	4                       @ 0x4
	.long	67108868                @ 0x4000004
	.long	262148                  @ 0x40004
	.long	67371012                @ 0x4040004
	.long	1028                    @ 0x404
	.long	67109892                @ 0x4000404
	.long	263172                  @ 0x40404
	.long	67372036                @ 0x4040404
	.long	0                       @ 0x0
	.long	16777216                @ 0x1000000
	.long	65536                   @ 0x10000
	.long	16842752                @ 0x1010000
	.long	256                     @ 0x100
	.long	16777472                @ 0x1000100
	.long	65792                   @ 0x10100
	.long	16843008                @ 0x1010100
	.long	1                       @ 0x1
	.long	16777217                @ 0x1000001
	.long	65537                   @ 0x10001
	.long	16842753                @ 0x1010001
	.long	257                     @ 0x101
	.long	16777473                @ 0x1000101
	.long	65793                   @ 0x10101
	.long	16843009                @ 0x1010101
	.long	0                       @ 0x0
	.long	2147483648              @ 0x80000000
	.long	8388608                 @ 0x800000
	.long	2155872256              @ 0x80800000
	.long	32768                   @ 0x8000
	.long	2147516416              @ 0x80008000
	.long	8421376                 @ 0x808000
	.long	2155905024              @ 0x80808000
	.long	128                     @ 0x80
	.long	2147483776              @ 0x80000080
	.long	8388736                 @ 0x800080
	.long	2155872384              @ 0x80800080
	.long	32896                   @ 0x8080
	.long	2147516544              @ 0x80008080
	.long	8421504                 @ 0x808080
	.long	2155905152              @ 0x80808080
	.long	0                       @ 0x0
	.long	536870912               @ 0x20000000
	.long	2097152                 @ 0x200000
	.long	538968064               @ 0x20200000
	.long	8192                    @ 0x2000
	.long	536879104               @ 0x20002000
	.long	2105344                 @ 0x202000
	.long	538976256               @ 0x20202000
	.long	32                      @ 0x20
	.long	536870944               @ 0x20000020
	.long	2097184                 @ 0x200020
	.long	538968096               @ 0x20200020
	.long	8224                    @ 0x2020
	.long	536879136               @ 0x20002020
	.long	2105376                 @ 0x202020
	.long	538976288               @ 0x20202020
	.long	0                       @ 0x0
	.long	134217728               @ 0x8000000
	.long	524288                  @ 0x80000
	.long	134742016               @ 0x8080000
	.long	2048                    @ 0x800
	.long	134219776               @ 0x8000800
	.long	526336                  @ 0x80800
	.long	134744064               @ 0x8080800
	.long	8                       @ 0x8
	.long	134217736               @ 0x8000008
	.long	524296                  @ 0x80008
	.long	134742024               @ 0x8080008
	.long	2056                    @ 0x808
	.long	134219784               @ 0x8000808
	.long	526344                  @ 0x80808
	.long	134744072               @ 0x8080808
	.long	0                       @ 0x0
	.long	33554432                @ 0x2000000
	.long	131072                  @ 0x20000
	.long	33685504                @ 0x2020000
	.long	512                     @ 0x200
	.long	33554944                @ 0x2000200
	.long	131584                  @ 0x20200
	.long	33686016                @ 0x2020200
	.long	2                       @ 0x2
	.long	33554434                @ 0x2000002
	.long	131074                  @ 0x20002
	.long	33685506                @ 0x2020002
	.long	514                     @ 0x202
	.long	33554946                @ 0x2000202
	.long	131586                  @ 0x20202
	.long	33686018                @ 0x2020202
	.size	fp_maskl, 512

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"\200\377\200\001 \177\201\200\200\r\n\377\177 \201 test"
	.size	.L.str, 21

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"_0.../9Zz"
	.size	.L.str1, 10

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"_0.../9ZzX7iSJNd21sU"
	.size	.L.str2, 21

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"\200x"
	.size	.L.str3, 3

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"\200x22/wK52ZKGA"
	.size	.L.str4, 14

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"x"
	.size	.L.str5, 2

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"*"
	.size	.L.str6, 2

	.type	ascii64,%object         @ @ascii64
ascii64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	ascii64, 65


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
