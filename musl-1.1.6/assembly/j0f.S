.section j0f_text
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
	.file	"src/math/j0f.bc"
	.globl	j0f
	.align	2
	.type	j0f,%function
.section bb0_0
j0f:                                    @ @j0f
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	bic	r5, r0, #-2147483648
	lsr	r6, r5, #23
	cmp	r6, #255
	blo	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	mov	r1, r0
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	b	.LBB0_25
.section bb0_4
.LBB0_4:                                @ %if.end
	bl	fabsf
	mov	r4, r0
	cmp	r5, #1073741824
	blo	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then2
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	pop	{r4, r5, r6, r7, r8, lr}
	b	common
.section bb0_6
.LBB0_6:                                @ %if.end4
	mov	r0, r4
	cmp	r5, #973078528
	blo	.LBB0_23
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then6
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_7
	mov	r5, r0
	b	.LBB0_8
.LCPI0_7:
	.long	2979966780              @ 0xb19eaf3c
.section bb0_8
.LBB0_8:                                @ %if.then6
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_8
	bl	__aeabi_fadd
	b	.LBB0_9
.LCPI0_8:
	.long	905285256               @ 0x35f58e88
.section bb0_9
.LBB0_9:                                @ %if.then6
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_9
	b	.LBB0_10
.LCPI0_9:
	.long	3108451630              @ 0xb947352e
.section bb0_10
.LBB0_10:                               @ %if.then6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then6
	mov	r1, #1015021568
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_10
	mov	r8, r0
	mov	r0, r5
	b	.LBB0_13
.LCPI0_10:
	.long	815810024               @ 0x30a045e8
.section bb0_13
.LBB0_13:                               @ %if.then6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_11
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_14
.LCPI0_11:
	.long	889838246               @ 0x3509daa6
.section bb0_14
.LBB0_14:                               @ %if.then6
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_12
	bl	__aeabi_fadd
	b	.LBB0_15
.LCPI0_12:
	.long	955594391               @ 0x38f53697
.section bb0_15
.LBB0_15:                               @ %if.then6
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_13
	b	.LBB0_16
.LCPI0_13:
	.long	1015015236              @ 0x3c7fe744
.section bb0_16
.LBB0_16:                               @ %if.then6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then6
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r7, r0
	mov	r0, r4
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then6
	mov	r1, #1056964608
	bl	__aeabi_fmul
	mov	r4, r0
	mov	r1, #1065353216
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then6
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fadd
	mov	r6, r0
	mov	r0, #1065353216
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then6
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then6
	bl	__aeabi_fmul
	mov	r4, r0
	mov	r0, r8
	mov	r1, r7
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then6
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	b	.LBB0_25
.section bb0_23
.LBB0_23:                               @ %if.end29
	mov	r1, #1048576000
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end29
	bl	__aeabi_fmul
	cmp	r6, #66
	movhi	r4, r0
	mov	r0, #1065353216
	mov	r1, r4
	bl	__aeabi_fsub
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	j0f, .Ltmp0-j0f
	.cantunwind
	.fnend

	.align	2
	.type	common,%function
.section bb1_0
common:                                 @ @common
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
	mov	r5, r1
	mov	r9, r0
	mov	r4, r2
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r0, r5
	bl	sinf
	mov	r8, r0
	mov	r0, r5
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	bl	cosf
	mov	r6, r0
	mov	r0, #-2147483648
	mov	r1, r6
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	bl	__aeabi_fsub
	mov	r7, r0
	cmp	r4, #0
	mov	r0, r8
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %entry
	moveq	r7, r6
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r6, r0
	lsr	r0, r9, #24
	cmp	r0, #126
	bhi	.LBB1_70
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.then2
	mov	r0, r8
	mov	r1, r7
	str	r4, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_fmul
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %if.then2
	mov	r1, #0
	bl	__aeabi_fcmplt
	mov	r11, r0
	mov	r0, r5
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.then2
	mov	r1, r5
	bl	__aeabi_fadd
	bl	cosf
	eor	r10, r0, #-2147483648
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.then2
	mov	r1, r6
	mov	r0, r10
	bl	__aeabi_fdiv
	mov	r4, r9
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then2
	mov	r9, r0
	mov	r0, r8
	mov	r1, r7
	bl	__aeabi_fsub
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %if.then2
	mov	r1, r0
	cmp	r11, #0
	mov	r0, r10
	movne	r9, r1
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.then2
	bl	__aeabi_fdiv
	cmp	r11, #0
	movne	r6, r0
	lsr	r0, r4, #23
	mov	r10, r6
	cmp	r0, #176
	bhi	.LBB1_19
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %if.then12
	mov	r0, #-2147483648
	mov	r1, r9
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.then12
	ldr	r0, [sp, #8]            @ 4-byte Reload
	bic	r8, r5, #-2147483648
	lsr	r2, r8, #24
	cmp	r0, #0
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %if.then12
	mov	r0, r5
	moveq	r1, r9
	cmp	r2, #64
	bls	.LBB1_20
	b	.LBB1_18
.section bb1_18
.LBB1_18:
	ldr	r4, .LCPI1_19
	ldr	r11, .LCPI1_20
	str	r2, [sp]                @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	b	.LBB1_24
.LCPI1_19:
	.long	pR8
.LCPI1_20:
	.long	pS8
.section bb1_19
.LBB1_19:
	mov	r6, r10
	b	.LBB1_70
.section bb1_20
.LBB1_20:                               @ %if.else.i
	str	r2, [sp]                @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	ldr	r1, .LCPI1_23
	cmp	r8, r1
	bls	.LBB1_22
	b	.LBB1_21
.LCPI1_23:
	.long	1089936471              @ 0x40f71c57
.section bb1_21
.LBB1_21:
	ldr	r4, .LCPI1_21
	ldr	r11, .LCPI1_22
	b	.LBB1_24
.LCPI1_21:
	.long	pR5
.LCPI1_22:
	.long	pS5
.section bb1_22
.LBB1_22:                               @ %if.else3.i
	ldr	r2, .LCPI1_25
	ldr	r1, .LCPI1_27
	ldr	r4, .LCPI1_28
	ldr	r11, .LCPI1_30
	b	.LBB1_23
.LCPI1_25:
	.long	1077336935              @ 0x4036db67
.LCPI1_27:
	.long	pR3
.LCPI1_28:
	.long	pR2
.LCPI1_30:
	.long	pS2
.section bb1_23
.LBB1_23:                               @ %if.else3.i
	cmp	r8, r2
	movhi	r4, r1
	ldr	r1, .LCPI1_29
	movhi	r11, r1
	b	.LBB1_24
.LCPI1_29:
	.long	pS3
.section bb1_24
.LBB1_24:                               @ %pzerof.exit
	mov	r1, r0
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %pzerof.exit
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	ldr	r1, [r4, #20]
	mov	r6, r0
	b	.LBB1_26
.section bb1_26
.LBB1_26:                               @ %pzerof.exit
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #16]
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %pzerof.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB1_28
.section bb1_28
.LBB1_28:                               @ %pzerof.exit
	mov	r1, r0
	ldr	r0, [r4, #12]
	ldr	r9, [r4]
	ldmib	r4, {r5, r7}
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %pzerof.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB1_30
.section bb1_30
.LBB1_30:                               @ %pzerof.exit
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %pzerof.exit
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r5
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %pzerof.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %pzerof.exit
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fadd
	ldr	r1, [r11, #16]
	b	.LBB1_34
.section bb1_34
.LBB1_34:                               @ %pzerof.exit
	mov	r9, r0
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_35
.section bb1_35
.LBB1_35:                               @ %pzerof.exit
	ldr	r0, [r11, #12]
	ldm	r11, {r4, r7}
	ldr	r5, [r11, #8]
	bl	__aeabi_fadd
	b	.LBB1_36
.section bb1_36
.LBB1_36:                               @ %pzerof.exit
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_37
.section bb1_37
.LBB1_37:                               @ %pzerof.exit
	mov	r0, r5
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB1_38
.section bb1_38
.LBB1_38:                               @ %pzerof.exit
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd
	b	.LBB1_39
.section bb1_39
.LBB1_39:                               @ %pzerof.exit
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_40
.section bb1_40
.LBB1_40:                               @ %pzerof.exit
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB1_41
.section bb1_41
.LBB1_41:                               @ %pzerof.exit
	bl	__aeabi_fmul
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_42
.section bb1_42
.LBB1_42:                               @ %pzerof.exit
	mov	r0, r9
	bl	__aeabi_fdiv
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB1_43
.section bb1_43
.LBB1_43:                               @ %pzerof.exit
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fmul
	mov	r11, r0
	ldr	r0, [sp]                @ 4-byte Reload
	cmp	r0, #64
	bls	.LBB1_45
	b	.LBB1_44
.section bb1_44
.LBB1_44:
	ldr	r5, .LCPI1_31
	ldr	r4, .LCPI1_32
	b	.LBB1_49
.LCPI1_31:
	.long	qR8
.LCPI1_32:
	.long	qS8
.section bb1_45
.LBB1_45:                               @ %if.else.i46
	ldr	r0, .LCPI1_24
	cmp	r8, r0
	bls	.LBB1_47
	b	.LBB1_46
.LCPI1_24:
	.long	1089936471              @ 0x40f71c57
.section bb1_46
.LBB1_46:
	ldr	r5, .LCPI1_33
	ldr	r4, .LCPI1_34
	b	.LBB1_49
.LCPI1_33:
	.long	qR5
.LCPI1_34:
	.long	qS5
.section bb1_47
.LBB1_47:                               @ %if.else3.i49
	ldr	r0, .LCPI1_26
	ldr	r1, .LCPI1_35
	ldr	r5, .LCPI1_36
	ldr	r4, .LCPI1_38
	b	.LBB1_48
.LCPI1_26:
	.long	1077336935              @ 0x4036db67
.LCPI1_35:
	.long	qR3
.LCPI1_36:
	.long	qR2
.LCPI1_38:
	.long	qS2
.section bb1_48
.LBB1_48:                               @ %if.else3.i49
	cmp	r8, r0
	ldr	r0, .LCPI1_37
	movhi	r5, r1
	movhi	r4, r0
	b	.LBB1_49
.LCPI1_37:
	.long	qS3
.section bb1_49
.LBB1_49:                               @ %qzerof.exit
	ldr	r1, [r5, #20]
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_50
.section bb1_50
.LBB1_50:                               @ %qzerof.exit
	ldr	r0, [r5, #16]
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB1_51
.section bb1_51
.LBB1_51:                               @ %qzerof.exit
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r5, #12]
	ldm	r5, {r9, r10}
	b	.LBB1_52
.section bb1_52
.LBB1_52:                               @ %qzerof.exit
	ldr	r7, [r5, #8]
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB1_53
.section bb1_53
.LBB1_53:                               @ %qzerof.exit
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd
	b	.LBB1_54
.section bb1_54
.LBB1_54:                               @ %qzerof.exit
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB1_55
.section bb1_55
.LBB1_55:                               @ %qzerof.exit
	mov	r0, r10
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB1_56
.section bb1_56
.LBB1_56:                               @ %qzerof.exit
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fadd
	b	.LBB1_57
.section bb1_57
.LBB1_57:                               @ %qzerof.exit
	ldr	r1, [r4, #20]
	mov	r9, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB1_58
.section bb1_58
.LBB1_58:                               @ %qzerof.exit
	mov	r1, r0
	ldr	r0, [r4, #16]
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_59
.section bb1_59
.LBB1_59:                               @ %qzerof.exit
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #12]
	b	.LBB1_60
.section bb1_60
.LBB1_60:                               @ %qzerof.exit
	ldr	r10, [r4]
	ldmib	r4, {r5, r7}
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_61
.section bb1_61
.LBB1_61:                               @ %qzerof.exit
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r7
	b	.LBB1_62
.section bb1_62
.LBB1_62:                               @ %qzerof.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB1_63
.section bb1_63
.LBB1_63:                               @ %qzerof.exit
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB1_64
.section bb1_64
.LBB1_64:                               @ %qzerof.exit
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r10
	b	.LBB1_65
.section bb1_65
.LBB1_65:                               @ %qzerof.exit
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	b	.LBB1_66
.section bb1_66
.LBB1_66:                               @ %qzerof.exit
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r9
	b	.LBB1_67
.section bb1_67
.LBB1_67:                               @ %qzerof.exit
	bl	__aeabi_fdiv
	mov	r1, #-1107296256
	bl	__aeabi_fadd
	ldr	r5, [sp, #8]            @ 4-byte Reload
	b	.LBB1_68
.section bb1_68
.LBB1_68:                               @ %qzerof.exit
	mov	r1, r5
	bl	__aeabi_fdiv
	mov	r1, r0
	ldr	r0, [sp, #4]            @ 4-byte Reload
	b	.LBB1_69
.section bb1_69
.LBB1_69:                               @ %qzerof.exit
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r11
	bl	__aeabi_fsub
	mov	r6, r0
	b	.LBB1_70
.section bb1_70
.LBB1_70:                               @ %if.end23
	ldr	r1, .LCPI1_39
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r4, r0
	b	.LBB1_71
.LCPI1_39:
	.long	1058041531              @ 0x3f106ebb
.section bb1_71
.LBB1_71:                               @ %if.end23
	mov	r0, r5
	bl	sqrtf
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	common, .Ltmp1-common
	.cantunwind
	.fnend

	.globl	y0f
	.align	2
	.type	y0f,%function
.section bb2_0
y0f:                                    @ @y0f
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	mov	r4, r0
	mvn	r0, #-2147483648
	tst	r4, r0
	beq	.LBB2_5
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %if.end
	cmp	r4, #0
	blt	.LBB2_6
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %if.end2
	lsr	r0, r4, #23
	cmp	r0, #255
	blo	.LBB2_7
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.then4
	mov	r0, #1065353216
	mov	r1, r4
	bl	__aeabi_fdiv
	b	.LBB2_29
.section bb2_5
.LBB2_5:
	mov	r0, #1065353216
	orr	r0, r0, #-1073741824
	b	.LBB2_29
.section bb2_6
.LBB2_6:
	mov	r0, #1069547520
	orr	r0, r0, #1073741824
	b	.LBB2_29
.section bb2_7
.LBB2_7:                                @ %if.end5
	cmp	r4, #1073741824
	blo	.LBB2_9
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %if.then7
	mov	r0, r4
	mov	r1, r4
	mov	r2, #1
	pop	{r4, r5, r6, lr}
	b	common
.section bb2_9
.LBB2_9:                                @ %if.end8
	cmp	r4, #956301312
	blo	.LBB2_27
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.then10
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_15
	b	.LBB2_11
.LCPI2_15:
	.long	2922324459              @ 0xae2f21eb
.section bb2_11
.LBB2_11:                               @ %if.then10
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_16
	b	.LBB2_12
.LCPI2_16:
	.long	849871546               @ 0x32a802ba
.section bb2_12
.LBB2_12:                               @ %if.then10
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.then10
	ldr	r1, .LCPI2_17
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB2_14
.LCPI2_17:
	.long	3061839164              @ 0xb67ff53c
.section bb2_14
.LBB2_14:                               @ %if.then10
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_18
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB2_15
.LCPI2_18:
	.long	968239721               @ 0x39b62a69
.section bb2_15
.LBB2_15:                               @ %if.then10
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_19
	bl	__aeabi_fadd
	b	.LBB2_16
.LCPI2_19:
	.long	3160565574              @ 0xbc626746
.section bb2_16
.LBB2_16:                               @ %if.then10
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_20
	b	.LBB2_17
.LCPI2_20:
	.long	1043654669              @ 0x3e34e80d
.section bb2_17
.LBB2_17:                               @ %if.then10
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %if.then10
	ldr	r1, .LCPI2_12
	bl	__aeabi_fadd
	ldr	r1, .LCPI2_21
	mov	r6, r0
	b	.LBB2_19
.LCPI2_12:
	.long	3180799669              @ 0xbd9726b5
.LCPI2_21:
	.long	804421826               @ 0x2ff280c2
.section bb2_19
.LBB2_19:                               @ %if.then10
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_22
	bl	__aeabi_fadd
	b	.LBB2_20
.LCPI2_22:
	.long	881533292               @ 0x348b216c
.section bb2_20
.LBB2_20:                               @ %if.then10
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_23
	b	.LBB2_21
.LCPI2_23:
	.long	949970400               @ 0x389f65e0
.section bb2_21
.LBB2_21:                               @ %if.then10
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB2_22
.section bb2_22
.LBB2_22:                               @ %if.then10
	ldr	r1, .LCPI2_24
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB2_23
.LCPI2_24:
	.long	1011913605              @ 0x3c509385
.section bb2_23
.LBB2_23:                               @ %if.then10
	bl	__aeabi_fmul
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %if.then10
	mov	r0, r6
	bl	__aeabi_fdiv
	mov	r5, r0
	mov	r0, r4
	b	.LBB2_25
.section bb2_25
.LBB2_25:                               @ %if.then10
	bl	j0f
	mov	r6, r0
	mov	r0, r4
	bl	logf
	b	.LBB2_26
.section bb2_26
.LBB2_26:                               @ %if.then10
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_0
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r5
	b	.LBB2_28
.LCPI2_0:
	.long	1059256707              @ 0x3f22f983
.section bb2_27
.LBB2_27:                               @ %if.end36
	mov	r0, r4
	bl	logf
	ldr	r1, .LCPI2_13
	bl	__aeabi_fmul
	ldr	r1, .LCPI2_14
	b	.LBB2_28
.LCPI2_1:
	.long	1059256707              @ 0x3f22f983
.LCPI2_13:
	.long	3180799669              @ 0xbd9726b5
.LCPI2_14:
	.long	3180799669              @ 0xbd9726b5
.section bb2_28
.LBB2_28:                               @ %return
	bl	__aeabi_fadd
	b	.LBB2_29
.section bb2_29
.LBB2_29:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp2:
	.size	y0f, .Ltmp2-y0f
	.cantunwind
	.fnend

	.type	pR8,%object             @ @pR8
	.section	.rodata,"a",%progbits
	.align	2
pR8:
	.long	0                       @ float 0.000000e+00
	.long	3180331008              @ float -7.031250e-02
	.long	3238088326              @ float -8.081671e+00
	.long	3279980564              @ float -2.570631e+02
	.long	3306902390              @ float -2.485216e+03
	.long	3315869786              @ float -5.253044e+03
	.size	pR8, 24

	.type	pS8,%object             @ @pS8
	.align	2
pS8:
	.long	1122570648              @ float 1.165344e+02
	.long	1164942315              @ float 3.833745e+03
	.long	1193186779              @ float 4.059786e+04
	.long	1206126716              @ float 1.167530e+05
	.long	1194986426              @ float 4.762773e+04
	.size	pS8, 20

	.type	pR5,%object             @ @pR5
	.align	2
pR5:
	.long	2907227530              @ float -1.141255e-11
	.long	3180331007              @ float -7.031249e-02
	.long	3229948808              @ float -4.159611e+00
	.long	3263650171              @ float -6.767477e+01
	.long	3282410907              @ float -3.312313e+02
	.long	3282909049              @ float -3.464334e+02
	.size	pR5, 24

	.type	pS5,%object             @ @pS5
	.align	2
pS5:
	.long	1114833928              @ float 6.075394e+01
	.long	1149462547              @ float 1.051252e+03
	.long	1169872836              @ float 5.978971e+03
	.long	1175872968              @ float 9.625445e+03
	.long	1159094510              @ float 2.406058e+03
	.size	pS5, 20

	.type	pR3,%object             @ @pR3
	.align	2
pR3:
	.long	2972649499              @ float -2.547046e-09
	.long	3180330936              @ float -7.031196e-02
	.long	3222941077              @ float -2.409032e+00
	.long	3249519186              @ float -2.196598e+01
	.long	3261616402              @ float -5.807917e+01
	.long	3254490469              @ float -3.144795e+01
	.size	pR3, 24

	.type	pS3,%object             @ @pS3
	.align	2
pS3:
	.long	1108307092              @ float 3.585603e+01
	.long	1135919562              @ float 3.615140e+02
	.long	1150628723              @ float 1.193608e+03
	.long	1150091238              @ float 1.127997e+03
	.long	1127060664              @ float 1.735809e+02
	.size	pS3, 20

	.type	pR2,%object             @ @pR2
	.align	2
pR2:
	.long	3015612599              @ float -8.875343e-08
	.long	3180329746              @ float -7.030310e-02
	.long	3216617932              @ float -1.450738e+00
	.long	3237238687              @ float -7.635696e+00
	.long	3241350966              @ float -1.119317e+01
	.long	3226399757              @ float -3.233646e+00
	.size	pR2, 24

	.type	pS2,%object             @ @pS2
	.align	2
pS2:
	.long	1102168877              @ float 2.222030e+01
	.long	1124611312              @ float 1.362068e+02
	.long	1132936242              @ float 2.704703e+02
	.long	1125769242              @ float 1.538754e+02
	.long	1097500058              @ float 1.465762e+01
	.size	pS2, 20

	.type	qR8,%object             @ @qR8
	.align	2
qR8:
	.long	0                       @ float 0.000000e+00
	.long	1033240576              @ float 7.324219e-02
	.long	1094470291              @ float 1.176821e+01
	.long	1141599001              @ float 5.576734e+02
	.long	1175088330              @ float 8.859197e+03
	.long	1192269472              @ float 3.701462e+04
	.size	qR8, 24

	.type	qS8,%object             @ @qS8
	.align	2
qS8:
	.long	1126418090              @ float 1.637760e+02
	.long	1174213314              @ float 8.098345e+03
	.long	1208693395              @ float 1.425383e+05
	.long	1229201108              @ float 8.033092e+05
	.long	1229796185              @ float 8.405016e+05
	.long	3366447977              @ float -3.438993e+05
	.size	qS8, 24

	.type	qR5,%object             @ @qR5
	.align	2
qR5:
	.long	765586553               @ float 1.840860e-11
	.long	1033240575              @ float 7.324218e-02
	.long	1085980038              @ float 5.835635e+00
	.long	1124539536              @ float 1.351116e+02
	.long	1149265869              @ float 1.027244e+03
	.long	1157152587              @ float 1.989978e+03
	.size	qR5, 24

	.type	qS5,%object             @ @qS5
	.align	2
qS5:
	.long	1118145952              @ float 8.277661e+01
	.long	1157750023              @ float 2.077814e+03
	.long	1184054932              @ float 1.884729e+04
	.long	1197322013              @ float 5.675111e+04
	.long	1192003777              @ float 3.597675e+04
	.long	3316077246              @ float -5.354343e+03
	.size	qS5, 24

	.type	qR3,%object             @ @qR3
	.align	2
qR3:
	.long	831940635               @ float 4.377410e-09
	.long	1033240432              @ float 7.324111e-02
	.long	1079379939              @ float 3.344231e+00
	.long	1110080709              @ float 4.262185e+01
	.long	1126878943              @ float 1.708081e+02
	.long	1126611940              @ float 1.667339e+02
	.size	qR3, 24

	.type	qS3,%object             @ @qS3
	.align	2
qS3:
	.long	1111689494              @ float 4.875887e+01
	.long	1144089628              @ float 7.096892e+02
	.long	1164411487              @ float 3.704148e+03
	.long	1170858855              @ float 6.460425e+03
	.long	1159546199              @ float 2.516334e+03
	.long	3272949593              @ float -1.492475e+02
	.size	qS3, 24

	.type	qR2,%object             @ @qR2
	.align	2
qR2:
	.long	874613211               @ float 1.504444e-07
	.long	1033238058              @ float 7.322343e-02
	.long	1073726655              @ float 1.998192e+00
	.long	1097330173              @ float 1.449560e+01
	.long	1107121265              @ float 3.166623e+01
	.long	1099040140              @ float 1.625271e+01
	.size	qR2, 24

	.type	qS2,%object             @ @qS2
	.align	2
qS2:
	.long	1106439352              @ float 3.036559e+01
	.long	1132899471              @ float 2.693481e+02
	.long	1146303017              @ float 8.447838e+02
	.long	1146928101              @ float 8.829359e+02
	.long	1129622168              @ float 2.126664e+02
	.long	3232363352              @ float -5.310955e+00
	.size	qS2, 24


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
