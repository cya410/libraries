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
	.file	"src/math/jnf.bc"
	.globl	jnf
	.align	2
	.type	jnf,%function
jnf:                                    @ @jnf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, #1065353216
	mov	r5, r1
	bic	r6, r5, #-2147483648
	orr	r7, r7, #1073741824
	cmp	r6, r7
	bhi	.LBB0_75
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %if.end4
	lsr	r2, r5, #31
	blt	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %if.else
	sub	r11, r0, #1
	mov	r1, r5
	b	.LBB0_9
.LBB0_7:                                @ %if.then3
	mov	r0, r5
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	j0f
.LBB0_8:                                @ %if.then6
	eor	r2, r2, #1
	eor	r1, r5, #-2147483648
	mvn	r11, r0
	b	.LBB0_9
.LBB0_9:                                @ %if.end9
	cmp	r11, #0
	beq	.LBB0_13
	b	.LBB0_10
.LBB0_10:                               @ %if.end13
	and	r10, r2, r0
	mov	r0, r1
	bl	fabsf
	mov	r9, r0
	mov	r4, #0
	cmp	r5, #0
	bge	.LBB0_14
	b	.LBB0_11
.LBB0_11:                               @ %if.end13
	cmp	r5, #-2147483648
	beq	.LBB0_74
	b	.LBB0_12
.LBB0_12:                               @ %if.end13
	cmn	r5, #8388608
	bne	.LBB0_15
	b	.LBB0_74
.LBB0_13:                               @ %if.then11
	mov	r0, r1
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	j1f
.LBB0_14:                               @ %if.end13
	cmpne	r5, r7
	beq	.LBB0_74
	b	.LBB0_15
.LBB0_15:                               @ %if.else19
	mov	r0, r11
	bl	__aeabi_i2f
	mov	r4, r0
	mov	r1, r9
	b	.LBB0_16
.LBB0_16:                               @ %if.else19
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fcmpge
	mov	r5, r0
	mov	r0, r4
	b	.LBB0_17
.LBB0_17:                               @ %if.else19
	mov	r1, r9
	bl	__aeabi_fcmpun
	orrs	r0, r0, r5
	bne	.LBB0_25
	b	.LBB0_18
.LBB0_18:                               @ %if.then22
	mov	r0, r9
	bl	j0f
	mov	r5, r0
	mov	r0, r9
	b	.LBB0_19
.LBB0_19:                               @ %if.then22
	bl	j1f
	mov	r4, r0
	cmp	r11, #1
	blt	.LBB0_74
	b	.LBB0_20
.LBB0_20:
	mov	r6, #0
	b	.LBB0_21
.LBB0_21:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r6, r6, #1
	mov	r7, r4
	mov	r0, r6
	bl	__aeabi_i2f
	b	.LBB0_22
.LBB0_22:                               @ %for.body
                                        @   in Loop: Header=BB0_21 Depth=1
	mov	r1, r0
	bl	__aeabi_fadd
	mov	r1, r9
	bl	__aeabi_fdiv
	b	.LBB0_23
.LBB0_23:                               @ %for.body
                                        @   in Loop: Header=BB0_21 Depth=1
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r1, r5
	b	.LBB0_24
.LBB0_24:                               @ %for.body
                                        @   in Loop: Header=BB0_21 Depth=1
	bl	__aeabi_fsub
	mov	r4, r0
	mov	r5, r7
	cmp	r11, r6
	bne	.LBB0_21
	b	.LBB0_74
.LBB0_25:                               @ %if.else30
	lsr	r0, r6, #23
	cmp	r0, #106
	bhi	.LBB0_30
	b	.LBB0_26
.LBB0_26:                               @ %if.then33
	mov	r0, r9
	mov	r1, #1056964608
	bl	__aeabi_fmul
	mov	r8, r0
	b	.LBB0_27
.LBB0_27:                               @ %if.then33
	add	r0, r11, #1
	cmp	r0, #1
	movle	r5, #1065353216
	cmple	r11, #9
	bge	.LBB0_76
	b	.LBB0_28
.LBB0_28:
	mov	r6, r8
	b	.LBB0_29
.LBB0_29:                               @ %for.end48
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_fdiv
	mov	r4, r0
	b	.LBB0_74
.LBB0_30:                               @ %if.else50
	mov	r0, r4
	mov	r1, #1065353216
	str	r10, [sp, #4]           @ 4-byte Spill
	bl	__aeabi_fadd
	b	.LBB0_31
.LBB0_31:                               @ %if.else50
	mov	r6, r0
	mov	r1, r6
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fadd
	b	.LBB0_32
.LBB0_32:                               @ %if.else50
	mov	r1, r9
	bl	__aeabi_fdiv
	mov	r5, r0
	mov	r0, #1073741824
	b	.LBB0_33
.LBB0_33:                               @ %if.else50
	mov	r1, r9
	str	r5, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_fdiv
	mov	r7, r0
	b	.LBB0_34
.LBB0_34:                               @ %if.else50
	mov	r0, r5
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r4, r0
	b	.LBB0_35
.LBB0_35:                               @ %if.else50
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, #1065353216
	b	.LBB0_36
.LBB0_36:                               @ %if.else50
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r1, #1851392
	mov	r8, r0
	b	.LBB0_37
.LBB0_37:                               @ %if.else50
	orr	r1, r1, #1174405120
                                        @ kill: R0<def> R8<kill>
	bl	__aeabi_fcmplt
	mov	r10, #0
	mov	r5, #1
	cmp	r0, #0
	beq	.LBB0_44
	b	.LBB0_38
.LBB0_38:
	ldr	r10, [sp, #8]           @ 4-byte Reload
	str	r6, [sp]                @ 4-byte Spill
	b	.LBB0_39
.LBB0_39:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r7
	mov	r1, r4
	mov	r6, r8
	bl	__aeabi_fadd
	b	.LBB0_40
.LBB0_40:                               @ %while.body
                                        @   in Loop: Header=BB0_39 Depth=1
	mov	r4, r0
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_fmul
	b	.LBB0_41
.LBB0_41:                               @ %while.body
                                        @   in Loop: Header=BB0_39 Depth=1
	mov	r1, r10
	bl	__aeabi_fsub
	mov	r1, #1851392
	mov	r8, r0
	b	.LBB0_42
.LBB0_42:                               @ %while.body
                                        @   in Loop: Header=BB0_39 Depth=1
	orr	r1, r1, #1174405120
                                        @ kill: R0<def> R8<kill>
	bl	__aeabi_fcmplt
	add	r5, r5, #1
	mov	r10, r6
	cmp	r0, #0
	bne	.LBB0_39
	b	.LBB0_43
.LBB0_43:                               @ %for.cond67.preheader
	ldr	r6, [sp]                @ 4-byte Reload
	sub	r0, r5, #1
	mov	r10, #0
	cmn	r0, #2
	ble	.LBB0_48
	b	.LBB0_44
.LBB0_44:                               @ %for.body70
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	__aeabi_i2f
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_45
.LBB0_45:                               @ %for.body70
                                        @   in Loop: Header=BB0_44 Depth=1
	bl	__aeabi_fadd
	mov	r1, r0
	bl	__aeabi_fadd
	mov	r1, r9
	b	.LBB0_46
.LBB0_46:                               @ %for.body70
                                        @   in Loop: Header=BB0_44 Depth=1
	bl	__aeabi_fdiv
	mov	r1, r10
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_47
.LBB0_47:                               @ %for.body70
                                        @   in Loop: Header=BB0_44 Depth=1
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	mov	r10, r0
	sub	r0, r5, #1
	cmp	r5, #0
	mov	r5, r0
	bgt	.LBB0_44
	b	.LBB0_48
.LBB0_48:                               @ %for.end78
	ldr	r0, [sp, #8]            @ 4-byte Reload
	bl	fabsf
	bl	logf
	mov	r1, r0
	b	.LBB0_49
.LBB0_49:                               @ %for.end78
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_0
	bl	__aeabi_fcmplt
	cmp	r0, #0
	beq	.LBB0_55
	b	.LBB0_50
.LCPI0_0:
	.long	1118925184              @ 0x42b17180
.LBB0_50:                               @ %for.cond85.preheader
	mov	r5, #1065353216
	cmp	r11, #1
	blt	.LBB0_64
	b	.LBB0_51
.LBB0_51:
	mov	r4, r10
	b	.LBB0_52
.LBB0_52:                               @ %for.body88
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r11
	mov	r7, r5
	bl	__aeabi_i2f
	mov	r1, r0
	b	.LBB0_53
.LBB0_53:                               @ %for.body88
                                        @   in Loop: Header=BB0_52 Depth=1
	bl	__aeabi_fadd
	mov	r1, r7
	bl	__aeabi_fmul
	mov	r1, r9
	b	.LBB0_54
.LBB0_54:                               @ %for.body88
                                        @   in Loop: Header=BB0_52 Depth=1
	bl	__aeabi_fdiv
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r5, r0
	subs	r11, r11, #1
	mov	r4, r7
	bgt	.LBB0_52
	b	.LBB0_66
.LBB0_55:                               @ %for.cond98.preheader
	mov	r4, #1065353216
	cmp	r11, #0
	ble	.LBB0_65
	b	.LBB0_56
.LBB0_56:
	mov	r8, #494927872
	mov	r7, r10
	orr	r8, r8, #1073741824
	b	.LBB0_57
.LBB0_57:                               @ %for.body101
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r11
	bl	__aeabi_i2f
	mov	r1, r0
	bl	__aeabi_fadd
	b	.LBB0_58
.LBB0_58:                               @ %for.body101
                                        @   in Loop: Header=BB0_57 Depth=1
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r9
	bl	__aeabi_fdiv
	b	.LBB0_59
.LBB0_59:                               @ %for.body101
                                        @   in Loop: Header=BB0_57 Depth=1
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r5, r0
	mov	r1, r8
	b	.LBB0_60
.LBB0_60:                               @ %for.body101
                                        @   in Loop: Header=BB0_57 Depth=1
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fcmpgt
	mov	r6, r0
	mov	r0, r10
	b	.LBB0_61
.LBB0_61:                               @ %for.body101
                                        @   in Loop: Header=BB0_57 Depth=1
	mov	r1, r5
	bl	__aeabi_fdiv
	cmp	r6, #0
	mov	r1, r5
	b	.LBB0_62
.LBB0_62:                               @ %for.body101
                                        @   in Loop: Header=BB0_57 Depth=1
	movne	r10, r0
	mov	r0, r4
	bl	__aeabi_fdiv
	cmp	r6, #0
	b	.LBB0_63
.LBB0_63:                               @ %for.body101
                                        @   in Loop: Header=BB0_57 Depth=1
	mov	r7, r0
	movne	r5, #1065353216
	moveq	r7, r4
	subs	r11, r11, #1
	mov	r4, r5
	bgt	.LBB0_57
	b	.LBB0_66
.LBB0_64:
	mov	r7, r10
	b	.LBB0_66
.LBB0_65:
	mov	r7, r10
	mov	r5, #1065353216
	b	.LBB0_66
.LBB0_66:                               @ %if.end116
	mov	r0, r9
	bl	j0f
	mov	r8, r0
	mov	r0, r9
	b	.LBB0_67
.LBB0_67:                               @ %if.end116
	bl	j1f
	mov	r9, r0
	mov	r0, r8
	bl	fabsf
	b	.LBB0_68
.LBB0_68:                               @ %if.end116
	mov	r6, r0
	mov	r0, r9
	bl	fabsf
	mov	r4, r0
	b	.LBB0_69
.LBB0_69:                               @ %if.end116
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_fcmplt
	mov	r11, r0
	b	.LBB0_70
.LBB0_70:                               @ %if.end116
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_fcmpun
	orrs	r0, r0, r11
	beq	.LBB0_72
	b	.LBB0_71
.LBB0_71:                               @ %if.else126
	mov	r0, r10
	mov	r1, r9
	bl	__aeabi_fmul
	mov	r1, r7
	b	.LBB0_73
.LBB0_72:                               @ %if.then123
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_fmul
	mov	r1, r5
	b	.LBB0_73
.LBB0_73:                               @ %if.end132
	bl	__aeabi_fdiv
	ldr	r10, [sp, #4]           @ 4-byte Reload
	mov	r4, r0
	b	.LBB0_74
.LBB0_74:                               @ %if.end132
	mov	r0, #-2147483648
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r5, r0
	cmp	r10, #0
	moveq	r5, r4
	b	.LBB0_75
.LBB0_75:                               @ %return
	mov	r0, r5
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_76:                               @ %for.body43.lr.ph
	mvn	r0, r11
	mov	r5, #1065353216
	mov	r4, #0
	mov	r6, r8
	cmn	r0, #9
	mvnle	r0, #8
	mvn	r7, r0
	b	.LBB0_77
.LBB0_77:                               @ %for.body43
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r4, #2
	bl	__aeabi_i2f
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_78
.LBB0_78:                               @ %for.body43
                                        @   in Loop: Header=BB0_77 Depth=1
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_79
.LBB0_79:                               @ %for.body43
                                        @   in Loop: Header=BB0_77 Depth=1
	bl	__aeabi_fmul
	add	r4, r4, #1
	mov	r6, r0
	cmp	r7, r4
	bne	.LBB0_77
	b	.LBB0_29
.Ltmp0:
	.size	jnf, .Ltmp0-jnf
	.cantunwind
	.fnend

	.globl	ynf
	.align	2
	.type	ynf,%function
ynf:                                    @ @ynf
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r3, #1065353216
	mov	r8, r1
	b	.LBB1_3
.LBB1_3:                                @ %entry
	bic	r2, r8, #-2147483648
	orr	r3, r3, #1073741824
	cmp	r2, r3
	bls	.LBB1_5
	b	.LBB1_4
.LBB1_4:
	mov	r1, r8
	b	.LBB1_23
.LBB1_5:                                @ %if.end
	cmp	r8, #0
	bge	.LBB1_8
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	cmp	r2, #0
	beq	.LBB1_8
	b	.LBB1_7
.LBB1_7:
	mov	r1, #1069547520
	orr	r1, r1, #1073741824
	b	.LBB1_23
.LBB1_8:                                @ %if.end4
	mov	r1, #0
	cmp	r2, r3
	beq	.LBB1_23
	b	.LBB1_9
.LBB1_9:                                @ %if.end7
	cmp	r0, #0
	beq	.LBB1_20
	b	.LBB1_10
.LBB1_10:                               @ %if.end10
	sub	r10, r0, #1
	and	r9, r0, r0, lsr #31
	mvnlt	r10, r0
	cmp	r10, #0
	beq	.LBB1_21
	b	.LBB1_11
.LBB1_11:                               @ %if.end22
	mov	r0, r8
	bl	y0f
	mov	r5, r0
	mov	r0, r8
	b	.LBB1_12
.LBB1_12:                               @ %if.end22
	bl	y1f
	mov	r7, r0
	cmp	r10, #1
	blt	.LBB1_19
	b	.LBB1_13
.LBB1_13:                               @ %if.end22
	cmn	r7, #8388608
	beq	.LBB1_19
	b	.LBB1_14
.LBB1_14:
	mov	r6, #1
	b	.LBB1_15
.LBB1_15:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r4, r7
	bl	__aeabi_i2f
	mov	r1, r0
	b	.LBB1_16
.LBB1_16:                               @ %for.body
                                        @   in Loop: Header=BB1_15 Depth=1
	bl	__aeabi_fadd
	mov	r1, r8
	bl	__aeabi_fdiv
	mov	r1, r0
	b	.LBB1_17
.LBB1_17:                               @ %for.body
                                        @   in Loop: Header=BB1_15 Depth=1
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r7, r0
	cmp	r6, r10
	bge	.LBB1_19
	b	.LBB1_18
.LBB1_18:                               @ %for.body
                                        @   in Loop: Header=BB1_15 Depth=1
	add	r6, r6, #1
	mov	r5, r4
	cmn	r7, #8388608
	bne	.LBB1_15
	b	.LBB1_19
.LBB1_19:                               @ %for.end
	mov	r0, #-2147483648
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r1, r0
	cmp	r9, #0
	moveq	r1, r7
	b	.LBB1_23
.LBB1_20:                               @ %if.then9
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	y0f
.LBB1_21:                               @ %if.then17
	mov	r0, r8
	bl	y1f
	mov	r4, r0
	mov	r0, #-2147483648
	b	.LBB1_22
.LBB1_22:                               @ %if.then17
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, r0
	cmp	r9, #0
	moveq	r1, r4
	b	.LBB1_23
.LBB1_23:                               @ %return
	mov	r0, r1
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp1:
	.size	ynf, .Ltmp1-ynf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
