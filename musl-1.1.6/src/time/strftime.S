.section strftime_text
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
	.file	"src/time/strftime.bc"
	.globl	__strftime_fmt_1
	.align	2
	.type	__strftime_fmt_1,%function
.section bb0_0
__strftime_fmt_1:                       @ @__strftime_fmt_1
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
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r2
	mov	r8, r1
	mov	r6, r3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r5, r0
	mov	r7, #0
	sub	r1, r4, #37
	cmp	r1, #85
	bhi	.LBB0_77
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	ldr	r2, .LCPI0_17
	ldr	r9, [sp, #48]
	mov	r0, #40
	lsl	r1, r1, #2
	adr	r3, .LJTI0_0_0
	orr	r0, r0, #131072
	ldr	pc, [r1, r3]
.LJTI0_0_0:
	.long	.LBB0_11
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_12
	.long	.LBB0_13
	.long	.LBB0_14
	.long	.LBB0_53
	.long	.LBB0_77
	.long	.LBB0_16
	.long	.LBB0_6
	.long	.LBB0_17
	.long	.LBB0_18
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_20
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_21
	.long	.LBB0_22
	.long	.LBB0_23
	.long	.LBB0_24
	.long	.LBB0_25
	.long	.LBB0_26
	.long	.LBB0_30
	.long	.LBB0_31
	.long	.LBB0_33
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_35
	.long	.LBB0_10
	.long	.LBB0_52
	.long	.LBB0_37
	.long	.LBB0_38
	.long	.LBB0_77
	.long	.LBB0_6
	.long	.LBB0_10
	.long	.LBB0_77
	.long	.LBB0_39
	.long	.LBB0_77
	.long	.LBB0_77
	.long	.LBB0_40
	.long	.LBB0_41
	.long	.LBB0_77
	.long	.LBB0_42
	.long	.LBB0_77
	.long	.LBB0_45
	.long	.LBB0_46
	.long	.LBB0_47
	.long	.LBB0_48
	.long	.LBB0_77
	.long	.LBB0_49
	.long	.LBB0_50
	.long	.LBB0_55
	.long	.LBB0_59
.LCPI0_17:
	.long	.L.str
.section bb0_6
.LBB0_6:                                @ %sw.bb19
	ldr	r0, [r6, #20]
	mov	r3, #876
	ldr	r2, [r6, #28]
	orr	r3, r3, #1024
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %sw.bb19
	asr	r1, r0, #31
	adds	r11, r0, r3
	adc	r10, r1, #0
	cmp	r2, #2
	bgt	.LBB0_65
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %land.lhs.true
	mov	r2, #107
	orr	r2, r2, #1792
	adds	r9, r0, r2
	mov	r0, r6
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %land.lhs.true
	adc	r7, r1, #0
	bl	week_num
	cmp	r0, #1
	moveq	r9, r11
	moveq	r7, r10
	b	.LBB0_69
.section bb0_10
.LBB0_10:                               @ %sw.bb4
	ldr	r0, [r6, #16]
	add	r0, r0, #14
	b	.LBB0_36
.section bb0_11
.LBB0_11:                               @ %sw.bb145
	ldr	r7, .LCPI0_18
	mov	r0, #1
	str	r0, [r8]
	b	.LBB0_77
.LCPI0_18:
	.long	.L.str10
.section bb0_12
.LBB0_12:                               @ %sw.bb1
	ldr	r0, [r6, #24]
	add	r0, r0, #7
	b	.LBB0_36
.section bb0_13
.LBB0_13:                               @ %sw.bb6
	ldr	r0, [r6, #16]
	add	r0, r0, #26
	b	.LBB0_36
.section bb0_14
.LBB0_14:                               @ %sw.bb10
	ldr	r0, [r6, #20]
	mov	r2, #876
	mov	r3, #0
	orr	r2, r2, #1024
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %sw.bb10
	asr	r1, r0, #31
	adds	r0, r0, r2
	mov	r2, #100
	adc	r1, r1, #0
	bl	__aeabi_ldivmod
	b	.LBB0_58
.section bb0_16
.LBB0_16:                               @ %sw.bb18
	ldr	r2, .LCPI0_32
	b	.LBB0_53
.LCPI0_32:
	.long	.L.str2
.section bb0_17
.LBB0_17:                               @ %sw.bb41
	ldr	r0, [r6, #8]
	b	.LBB0_57
.section bb0_18
.LBB0_18:                               @ %sw.bb43
	ldr	r2, [r6, #8]
	mov	r3, #2
	cmp	r2, #0
	beq	.LBB0_73
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.else47
	asr	r7, r2, #31
	subs	r0, r2, #12
	sbc	r1, r7, #0
	cmp	r2, #12
	movle	r1, r7
	movle	r0, r2
	b	.LBB0_74
.section bb0_20
.LBB0_20:                               @ %sw.bb61
	ldr	r0, [r6, #4]
	b	.LBB0_57
.section bb0_21
.LBB0_21:                               @ %sw.bb69
	ldr	r2, .LCPI0_30
	b	.LBB0_53
.LCPI0_30:
	.long	.L.str4
.section bb0_22
.LBB0_22:                               @ %sw.bb74
	ldr	r0, [r6]
	b	.LBB0_57
.section bb0_23
.LBB0_23:                               @ %sw.bb77
	ldr	r2, .LCPI0_28
	b	.LBB0_53
.LCPI0_28:
	.long	.L.str6
.section bb0_24
.LBB0_24:                               @ %sw.bb84
	ldr	r1, [r6, #28]
	ldr	r0, [r6, #24]
	add	r1, r1, #7
	sub	r0, r1, r0
	ldr	r1, .LCPI0_26
	smull	r2, r3, r0, r1
	b	.LBB0_29
.LCPI0_26:
	.long	2454267027              @ 0x92492493
.section bb0_25
.LBB0_25:                               @ %sw.bb100
	mov	r0, r6
	bl	week_num
	b	.LBB0_57
.section bb0_26
.LBB0_26:                               @ %sw.bb91
	ldr	r0, [r6, #24]
	ldr	r1, [r6, #28]
	ldr	r2, .LCPI0_27
	add	r0, r0, #6
	b	.LBB0_27
.LCPI0_27:
	.long	2454267027              @ 0x92492493
.section bb0_27
.LBB0_27:                               @ %sw.bb91
	add	r1, r1, #7
	smull	r3, r7, r0, r2
	add	r3, r7, r0
	asr	r7, r3, #2
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %sw.bb91
	add	r3, r7, r3, lsr #31
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3
	sub	r0, r1, r0
	smull	r1, r3, r0, r2
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %number
	add	r0, r3, r0
	asr	r1, r0, #2
	add	r0, r1, r0, lsr #31
	b	.LBB0_57
.section bb0_30
.LBB0_30:                               @ %sw.bb107
	mov	r0, #42
	b	.LBB0_51
.section bb0_31
.LBB0_31:                               @ %sw.bb112
	ldr	r0, [r6, #20]
	mov	r1, #1808
	orr	r1, r1, #8192
	add	r0, r0, #876
	add	r0, r0, #1024
	cmp	r0, r1
	blt	.LBB0_72
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.then118
	ldr	r2, .LCPI0_24
	asr	r1, r0, #31
	stm	sp, {r0, r1}
	mov	r0, r5
	mov	r1, #100
	bl	snprintf
	b	.LBB0_76
.LCPI0_24:
	.long	.L.str7
.section bb0_33
.LBB0_33:                               @ %sw.bb138
	ldr	r0, [r6, #32]
	cmp	r0, #0
	blt	.LBB0_71
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end143
	mov	r0, r6
	bl	__tm_to_tzname
	b	.LBB0_44
.section bb0_35
.LBB0_35:                               @ %sw.bb
	ldr	r0, [r6, #24]
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %nl_strcat
	add	r0, r0, #131072
	b	.LBB0_43
.section bb0_37
.LBB0_37:                               @ %sw.bb12
	ldr	r0, [r6, #12]
	b	.LBB0_57
.section bb0_38
.LBB0_38:                               @ %sw.bb15
	ldr	r3, [r6, #12]
	ldr	r2, .LCPI0_33
	b	.LBB0_75
.LCPI0_33:
	.long	.L.str1
.section bb0_39
.LBB0_39:                               @ %sw.bb53
	ldr	r0, [r6, #28]
	mov	r3, #3
	add	r0, r0, #1
	asr	r1, r0, #31
	b	.LBB0_74
.section bb0_40
.LBB0_40:                               @ %sw.bb57
	ldr	r0, [r6, #16]
	add	r0, r0, #1
	b	.LBB0_57
.section bb0_41
.LBB0_41:                               @ %sw.bb63
	ldr	r7, .LCPI0_31
	mov	r0, #1
	str	r0, [r8]
	b	.LBB0_77
.LCPI0_31:
	.long	.L.str3
.section bb0_42
.LBB0_42:                               @ %sw.bb64
	ldr	r1, [r6, #8]
	mov	r2, #39
	mov	r0, #38
	orr	r2, r2, #131072
	orr	r0, r0, #131072
	cmp	r1, #11
	movgt	r0, r2
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %nl_strcat
	mov	r1, r9
	bl	__nl_langinfo_l
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %string
	mov	r7, r0
                                        @ kill: R0<def> R7<kill>
	bl	strlen
	str	r0, [r8]
	b	.LBB0_77
.section bb0_45
.LBB0_45:                               @ %sw.bb68
	mov	r0, #43
	b	.LBB0_51
.section bb0_46
.LBB0_46:                               @ %sw.bb70
	mov	r0, r6
	bl	__tm_to_secs
	ldr	r2, [r6, #36]
	asr	r3, r2, #31
	adds	r0, r2, r0
	adc	r1, r3, r1
	mov	r3, #1
	b	.LBB0_74
.section bb0_47
.LBB0_47:                               @ %sw.bb76
	ldr	r7, .LCPI0_29
	mov	r0, #1
	str	r0, [r8]
	b	.LBB0_77
.LCPI0_29:
	.long	.L.str5
.section bb0_48
.LBB0_48:                               @ %sw.bb78
	ldr	r0, [r6, #24]
	mov	r3, #1
	orr	r1, r0, r0, asr #31
	cmp	r1, #0
	asrne	r1, r0, #31
	moveq	r0, #7
	b	.LBB0_74
.section bb0_49
.LBB0_49:                               @ %sw.bb103
	ldr	r0, [r6, #24]
	mov	r3, #1
	asr	r1, r0, #31
	b	.LBB0_74
.section bb0_50
.LBB0_50:                               @ %sw.bb106
	mov	r0, #41
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %nl_strftime
	orr	r0, r0, #131072
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %nl_strftime
	mov	r1, r9
	bl	__nl_langinfo_l
	mov	r2, r0
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %recu_strftime
	mov	r0, r5
	mov	r1, #100
	mov	r3, r6
	str	r9, [sp]
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %recu_strftime
	bl	__strftime_l
	mov	r7, r0
	cmp	r7, #0
	str	r7, [r8]
	movne	r7, r5
	b	.LBB0_77
.section bb0_55
.LBB0_55:                               @ %sw.bb108
	ldr	r0, [r6, #20]
	ldr	r1, .LCPI0_25
	smull	r2, r3, r0, r1
	asr	r1, r3, #5
	b	.LBB0_56
.LCPI0_25:
	.long	1374389535              @ 0x51eb851f
.section bb0_56
.LBB0_56:                               @ %sw.bb108
	mov	r2, #100
	add	r1, r1, r3, lsr #31
	mul	r3, r1, r2
	sub	r0, r0, r3
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %number
	asr	r1, r0, #31
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %number
	mov	r3, #2
	b	.LBB0_74
.section bb0_59
.LBB0_59:                               @ %sw.bb123
	ldr	r0, [r6, #32]
	cmp	r0, #0
	blt	.LBB0_71
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.end127
	ldr	r4, [r6, #36]
	ldr	r0, .LCPI0_20
	smull	r1, r2, r4, r0
	add	r0, r2, r4
	b	.LBB0_61
.LCPI0_20:
	.long	2443359173              @ 0x91a2b3c5
.section bb0_61
.LBB0_61:                               @ %if.end127
	asr	r1, r0, #11
	add	r0, r1, r0, lsr #31
	mov	r1, #3600
	mul	r2, r0, r1
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.end127
	sub	r0, r4, r2
	bl	abs
	ldr	r1, .LCPI0_21
	smull	r2, r3, r0, r1
	b	.LBB0_63
.LCPI0_21:
	.long	2290649225              @ 0x88888889
.section bb0_63
.LBB0_63:                               @ %if.end127
	add	r0, r3, r0
	asr	r1, r0, #5
	add	r0, r1, r0, lsr #31
	str	r0, [sp]
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.end127
	ldr	r0, .LCPI0_22
	smull	r1, r2, r4, r0
	sub	r0, r2, r4
	ldr	r2, .LCPI0_23
	asr	r1, r0, #11
	add	r3, r1, r0, lsr #31
	b	.LBB0_75
.LCPI0_22:
	.long	1851608123              @ 0x6e5d4c3b
.LCPI0_23:
	.long	.L.str9
.section bb0_65
.LBB0_65:                               @ %if.else
	cmp	r2, #360
	ble	.LBB0_68
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %land.lhs.true30
	mov	r2, #109
	orr	r2, r2, #1792
	adds	r7, r0, r2
	mov	r0, r6
	b	.LBB0_67
.section bb0_67
.LBB0_67:                               @ %land.lhs.true30
	adc	r9, r1, #0
	bl	week_num
	cmp	r0, #1
	moveq	r11, r7
	moveq	r10, r9
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.end35
	mov	r9, r11
	mov	r7, r10
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.end35
	mov	r0, r9
	mov	r1, r7
	mov	r2, #100
	mov	r3, #0
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.end35
	bl	__moddi3
	cmp	r4, #103
	mov	r3, #4
	movne	r1, r7
	movne	r0, r9
	moveq	r3, #2
	b	.LBB0_74
.section bb0_71
.LBB0_71:                               @ %if.then126
	ldr	r7, .LCPI0_19
	mov	r0, #0
	str	r0, [r8]
	b	.LBB0_77
.LCPI0_19:
	.long	.L.str8
.section bb0_72
.LBB0_72:
	asr	r1, r0, #31
	mov	r3, #4
	b	.LBB0_74
.section bb0_73
.LBB0_73:
	mov	r1, #0
	mov	r0, #12
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %number
	ldr	r2, .LCPI0_34
	stm	sp, {r0, r1}
	b	.LBB0_75
.LCPI0_34:
	.long	.L.str11
.section bb0_75
.LBB0_75:                               @ %return
	mov	r0, r5
	mov	r1, #100
	bl	snprintf
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %return
	str	r0, [r8]
	mov	r7, r5
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %return
	mov	r0, r7
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__strftime_fmt_1, .Ltmp0-__strftime_fmt_1
	.cantunwind
	.fnend

	.align	2
	.type	week_num,%function
.section bb1_0
week_num:                               @ @week_num
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r12, r0
	ldr	lr, [r12, #24]
	ldr	r3, [r12, #28]
	ldr	r1, .LCPI1_0
	b	.LBB1_2
.LCPI1_0:
	.long	2454267027              @ 0x92492493
.section bb1_2
.LBB1_2:                                @ %entry
	add	r0, lr, #6
	sub	lr, lr, r3
	smull	r2, r4, r0, r1
	add	r2, r4, r0
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	asr	r4, r2, #2
	add	r2, r4, r2, lsr #31
	rsb	r2, r2, r2, lsl #3
	sub	r0, r0, r2
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	add	r2, r3, #7
	add	r3, lr, #113
	sub	r0, r2, r0
	add	r3, r3, #256
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	smull	r2, r4, r0, r1
	add	r0, r4, r0
	asr	r2, r0, #2
	add	r0, r2, r0, lsr #31
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	smull	r4, r2, r3, r1
	add	r1, r2, r3
	asr	r2, r1, #2
	add	r1, r2, r1, lsr #31
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %entry
	rsb	r1, r1, r1, lsl #3
	sub	r1, r3, r1
	cmp	r1, #3
	addlt	r0, r0, #1
	cmp	r0, #53
	bne	.LBB1_15
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.then24
	ldr	r1, .LCPI1_3
	add	r0, lr, #115
	add	r0, r0, #256
	smull	r2, r3, r0, r1
	b	.LBB1_9
.LCPI1_1:
	.long	2454267027              @ 0x92492493
.LCPI1_3:
	.long	2147481747              @ 0x7ffff893
.section bb1_9
.LBB1_9:                                @ %if.then24
	add	r1, r3, r0
	asr	r2, r1, #2
	add	r1, r2, r1, lsr #31
	rsb	r1, r1, r1, lsl #3
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.then24
	sub	r2, r0, r1
	mov	r0, #53
	cmp	r2, #4
	beq	.LBB1_30
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.then24
	cmp	r2, #3
	bne	.LBB1_14
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %lor.lhs.false33
	ldr	r1, [r12, #20]
	ldr	r2, .LCPI1_4
	cmp	r1, r2
	subgt	r1, r1, #2000
	b	.LBB1_13
.LCPI1_4:
	.long	2147481747              @ 0x7ffff893
.section bb1_13
.LBB1_13:                               @ %lor.lhs.false33
	add	r1, r1, #876
	add	r1, r1, #1024
	tst	r1, #3
	beq	.LBB1_27
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.then37
	mov	r0, #1
	b	.LBB1_30
.section bb1_15
.LBB1_15:                               @ %entry
	cmp	r0, #0
	bne	.LBB1_30
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.then8
	ldr	r1, .LCPI1_6
	add	r0, lr, #6
	smull	r2, r3, r0, r1
	add	r1, r3, r0
	b	.LBB1_17
.LCPI1_2:
	.long	2454267027              @ 0x92492493
.LCPI1_6:
	.long	1374389535              @ 0x51eb851f
.section bb1_17
.LBB1_17:                               @ %if.then8
	asr	r2, r1, #2
	add	r1, r2, r1, lsr #31
	rsb	r1, r1, r1, lsl #3
	sub	r2, r0, r1
	cmp	r2, #4
	beq	.LBB1_26
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %if.then8
	mov	r0, #52
	cmp	r2, #5
	bne	.LBB1_30
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %land.lhs.true
	ldr	r2, [r12, #20]
	ldr	r1, .LCPI1_7
	mov	r12, #400
	smull	r3, r4, r2, r1
	b	.LBB1_20
.LCPI1_7:
	.long	1374389535              @ 0x51eb851f
.section bb1_20
.LBB1_20:                               @ %land.lhs.true
	asr	r1, r4, #7
	add	r3, r1, r4, lsr #31
	ldr	r1, .LCPI1_5
	mul	r4, r3, r12
	b	.LBB1_21
.LCPI1_5:
	.long	2147481747              @ 0x7ffff893
.section bb1_21
.LBB1_21:                               @ %land.lhs.true
	mvn	r3, #2000
	sub	r2, r2, r4
	sub	r4, r2, #1
	cmp	r4, r1
	b	.LBB1_22
.section bb1_22
.LBB1_22:                               @ %land.lhs.true
	addgt	r4, r2, r3
	add	r1, r4, #876
	add	r2, r1, #1024
	tst	r2, #3
	bne	.LBB1_30
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %land.rhs.i
	ldr	r1, .LCPI1_8
	smull	r4, r3, r2, r1
	asr	r1, r3, #5
	mov	r4, #100
	b	.LBB1_24
.LCPI1_8:
	.long	1374389535              @ 0x51eb851f
.section bb1_24
.LBB1_24:                               @ %land.rhs.i
	add	lr, r1, r3, lsr #31
	mul	r1, lr, r4
	subs	r1, r2, r1
	bne	.LBB1_26
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %land.rhs.i
	asr	r1, r3, #7
	add	r1, r1, r3, lsr #31
	mul	r3, r1, r12
	subs	r1, r2, r3
	moveq	r0, #53
	b	.LBB1_30
.section bb1_26
.LBB1_26:                               @ %if.then20
	mov	r0, #53
	b	.LBB1_30
.section bb1_27
.LBB1_27:                               @ %land.rhs.i64
	ldr	r3, .LCPI1_9
	smull	r4, r2, r1, r3
	asr	r3, r2, #5
	mov	r4, #100
	b	.LBB1_28
.LCPI1_9:
	.long	1374389535              @ 0x51eb851f
.section bb1_28
.LBB1_28:                               @ %land.rhs.i64
	add	r12, r3, r2, lsr #31
	mul	r3, r12, r4
	subs	r3, r1, r3
	bne	.LBB1_30
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %land.rhs.i64
	asr	r3, r2, #7
	add	r2, r3, r2, lsr #31
	mov	r3, #400
	mul	r4, r2, r3
	subs	r1, r1, r4
	movne	r0, #1
	b	.LBB1_30
.section bb1_30
.LBB1_30:                               @ %if.end40
	pop	{r4, lr}
	mov	pc, lr
.Ltmp1:
	.size	week_num, .Ltmp1-week_num
	.cantunwind
	.fnend

	.globl	__strftime_l
	.align	2
	.type	__strftime_l,%function
.section bb2_0
__strftime_l:                           @ @__strftime_l
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	.pad	#124
	sub	sp, sp, #124
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r5, r1
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r7, r2
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	mov	r0, #0
	str	r3, [sp, #8]            @ 4-byte Spill
	cmp	r5, #0
	beq	.LBB2_46
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %for.body.lr.ph
	rsb	r0, r5, #0
	mov	r6, #0
	mov	r8, #48
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB2_8
.section bb2_6
.LBB2_6:                                @ %for.body
                                        @   in Loop: Header=BB2_8 Depth=1
	cmp	r0, #0
	beq	.LBB2_47
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %if.then3
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	r9, r7
	strb	r0, [r1, r6]
	add	r6, r6, #1
	b	.LBB2_43
.section bb2_8
.LBB2_8:                                @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_22 Depth 2
                                        @     Child Loop BB2_38 Depth 2
	ldrb	r0, [r7]
	cmp	r0, #37
	bne	.LBB2_6
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %if.end5
                                        @   in Loop: Header=BB2_8 Depth=1
	ldrb	r10, [r7, #1]!
	add	r1, sp, #16
	mov	r2, #10
	cmp	r10, #43
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.end5
                                        @   in Loop: Header=BB2_8 Depth=1
	addeq	r7, r7, #1
	mov	r0, r7
	bl	strtoul
	ldr	r9, [sp, #16]
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.end5
                                        @   in Loop: Header=BB2_8 Depth=1
	mov	r11, #0
	ldrb	r2, [r9]
	sub	r1, r2, #67
	and	r1, r1, #255
	cmp	r1, #22
	bhi	.LBB2_15
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.end5
                                        @   in Loop: Header=BB2_8 Depth=1
	mov	r4, #25
	mov	r3, #1
	orr	r4, r4, #4194304
	tst	r4, r3, lsl r1
	beq	.LBB2_15
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.then26
                                        @   in Loop: Header=BB2_8 Depth=1
	cmp	r9, r7
	mov	r1, #0
	mov	r3, r0
	moveq	r1, #1
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.then26
                                        @   in Loop: Header=BB2_8 Depth=1
	cmp	r0, #0
	movne	r3, #1
	orrs	r1, r3, r1
	mov	r1, #1
	moveq	r0, r1
	mov	r11, r0
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %if.end32
                                        @   in Loop: Header=BB2_8 Depth=1
	cmp	r2, #69
	cmpne	r2, #79
	bne	.LBB2_17
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %if.then40
                                        @   in Loop: Header=BB2_8 Depth=1
	ldrb	r2, [r9, #1]!
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %if.end42
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r0, [sp, #160]
	ldr	r3, [sp, #8]            @ 4-byte Reload
	add	r1, sp, #120
	str	r0, [sp]
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %if.end42
                                        @   in Loop: Header=BB2_8 Depth=1
	add	r0, sp, #20
	bl	__strftime_fmt_1
	mov	r1, r0
	cmp	r1, #0
	beq	.LBB2_44
	b	.LBB2_19
.section bb2_19
.LBB2_19:                               @ %if.end47
                                        @   in Loop: Header=BB2_8 Depth=1
	cmp	r11, #0
	bne	.LBB2_22
	b	.LBB2_20
.section bb2_20
.LBB2_20:                               @ %if.end47.if.end98_crit_edge
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r7, [sp, #120]
	b	.LBB2_41
.section bb2_21
.LBB2_21:                               @ %for.inc
                                        @   in Loop: Header=BB2_22 Depth=2
	ldr	r0, [sp, #120]
	add	r1, r1, #1
	sub	r0, r0, #1
	str	r0, [sp, #120]
	b	.LBB2_22
.section bb2_22
.LBB2_22:                               @ %for.cond50
                                        @   Parent Loop BB2_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r1]
	cmp	r0, #43
	cmpne	r0, #45
	beq	.LBB2_21
	b	.LBB2_23
.section bb2_23
.LBB2_23:                               @ %for.cond50
                                        @   in Loop: Header=BB2_22 Depth=2
	cmp	r0, #48
	bne	.LBB2_25
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %land.rhs
                                        @   in Loop: Header=BB2_22 Depth=2
	ldrb	r0, [r1, #1]
	cmp	r0, #0
	bne	.LBB2_21
	b	.LBB2_25
.section bb2_25
.LBB2_25:                               @ %for.end
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	cmp	r10, #43
	ldr	r2, [r0, #20]
	sub	r0, r11, #1
	bne	.LBB2_28
	b	.LBB2_26
.section bb2_26
.LBB2_26:                               @ %for.end
                                        @   in Loop: Header=BB2_8 Depth=1
	mov	r3, #932
	orr	r3, r3, #7168
	cmp	r2, r3
	blt	.LBB2_28
	b	.LBB2_27
.section bb2_27
.LBB2_27:                               @ %if.then71
                                        @   in Loop: Header=BB2_8 Depth=1
	mov	r2, #43
	b	.LBB2_30
.section bb2_28
.LBB2_28:                               @ %if.else74
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r3, .LCPI2_0
	cmp	r2, r3
	bgt	.LBB2_31
	b	.LBB2_29
.LCPI2_0:
	.long	4294965395              @ 0xfffff893
.section bb2_29
.LBB2_29:                               @ %if.then78
                                        @   in Loop: Header=BB2_8 Depth=1
	mov	r2, #45
	b	.LBB2_30
.section bb2_30
.LBB2_30:                               @ %for.cond85.preheader
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r3, [sp, #12]           @ 4-byte Reload
	strb	r2, [r3, r6]
	add	r6, r6, #1
	b	.LBB2_32
.section bb2_31
.LBB2_31:                               @   in Loop: Header=BB2_8 Depth=1
	mov	r0, r11
	b	.LBB2_32
.section bb2_32
.LBB2_32:                               @ %for.cond85.preheader
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r7, [sp, #120]
	cmp	r6, r5
	bhs	.LBB2_41
	b	.LBB2_33
.section bb2_33
.LBB2_33:                               @ %for.cond85.preheader
                                        @   in Loop: Header=BB2_8 Depth=1
	mov	r12, r5
	ldr	r5, [sp, #12]           @ 4-byte Reload
	cmp	r0, r7
	bls	.LBB2_40
	b	.LBB2_34
.section bb2_34
.LBB2_34:                               @ %for.body92.lr.ph
                                        @   in Loop: Header=BB2_8 Depth=1
	rsb	r3, r0, #0
	mvn	r4, r7
	sub	r2, r6, r12
	cmp	r3, r4
	b	.LBB2_35
.section bb2_35
.LBB2_35:                               @ %for.body92.lr.ph
                                        @   in Loop: Header=BB2_8 Depth=1
	movhi	r4, r3
	ldr	r3, [sp, #4]            @ 4-byte Reload
	add	r0, r0, r4
	mvn	r0, r0
	b	.LBB2_36
.section bb2_36
.LBB2_36:                               @ %for.body92.lr.ph
                                        @   in Loop: Header=BB2_8 Depth=1
	cmp	r2, r0
	add	r3, r3, r6
	movls	r2, r0
	cmp	r3, r0
	b	.LBB2_37
.section bb2_37
.LBB2_37:                               @ %for.body92.lr.ph
                                        @   in Loop: Header=BB2_8 Depth=1
	movhi	r0, r3
	mov	r3, r5
	rsb	r0, r0, #0
	add	r3, r3, r6
	b	.LBB2_38
.section bb2_38
.LBB2_38:                               @ %for.body92
                                        @   Parent Loop BB2_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	strb	r8, [r3], #1
	subs	r0, r0, #1
	bne	.LBB2_38
	b	.LBB2_39
.section bb2_39
.LBB2_39:                               @ %for.cond85.if.end98.loopexit_crit_edge
                                        @   in Loop: Header=BB2_8 Depth=1
	sub	r6, r6, r2
	b	.LBB2_40
.section bb2_40
.LBB2_40:                               @ %if.end98
                                        @   in Loop: Header=BB2_8 Depth=1
	mov	r5, r12
	b	.LBB2_41
.section bb2_41
.LBB2_41:                               @ %if.end98
                                        @   in Loop: Header=BB2_8 Depth=1
	sub	r0, r5, r6
	cmp	r7, r0
	movhi	r7, r0
	strhi	r0, [sp, #120]
	b	.LBB2_42
.section bb2_42
.LBB2_42:                               @ %if.end98
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	mov	r2, r7
	add	r0, r0, r6
	bl	memcpy
	add	r6, r7, r6
	b	.LBB2_43
.section bb2_43
.LBB2_43:                               @ %for.inc105
                                        @   in Loop: Header=BB2_8 Depth=1
	add	r7, r9, #1
	cmp	r6, r5
	blo	.LBB2_8
	b	.LBB2_44
.section bb2_44
.LBB2_44:                               @ %for.end107
	mov	r0, #0
	cmp	r5, #0
	beq	.LBB2_46
	b	.LBB2_45
.section bb2_45
.LBB2_45:                               @ %if.then109
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r6, r5
	mov	r0, #0
	subeq	r6, r5, #1
	strb	r0, [r1, r6]
	b	.LBB2_46
.section bb2_46
.LBB2_46:                               @ %cleanup
	add	sp, sp, #124
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb2_47
.LBB2_47:                               @ %if.then
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	r0, #0
	strb	r0, [r1, r6]
	mov	r0, r6
	b	.LBB2_46
.Ltmp2:
	.size	__strftime_l, .Ltmp2-__strftime_l
	.cantunwind
	.fnend

	.globl	strftime
	.align	2
	.type	strftime,%function
.section bb3_0
strftime:                               @ @strftime
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	lr, .LCPI3_0
	mov	r12, r0
	ldr	r0, [lr, #44]
	cmp	r0, #0
	beq	.LBB3_3
	b	.LBB3_2
.LCPI3_0:
	.long	__libc
.section bb3_2
.LBB3_2:                                @ %cond.true
	@APP
	bl	__a_gettp
	mov	r4, r0
	@NO_APP
	ldr	r0, [r4, #-32]
	b	.LBB3_4
.section bb3_3
.LBB3_3:
	add	r0, lr, #52
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %cond.end
	str	r0, [sp]
	mov	r0, r12
	bl	__strftime_l
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp3:
	.size	strftime, .Ltmp3-strftime
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%m/%d/%y"
	.size	.L.str, 9

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"%2d"
	.size	.L.str1, 4

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"%Y-%m-%d"
	.size	.L.str2, 9

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"\n"
	.size	.L.str3, 2

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"%H:%M"
	.size	.L.str4, 6

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"\t"
	.size	.L.str5, 2

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"%H:%M:%S"
	.size	.L.str6, 9

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	"+%lld"
	.size	.L.str7, 6

	.type	.L.str8,%object         @ @.str8
.L.str8:
	.zero	1
	.size	.L.str8, 1

	.type	.L.str9,%object         @ @.str9
.L.str9:
	.asciz	"%+.2d%.2d"
	.size	.L.str9, 10

	.type	.L.str10,%object        @ @.str10
.L.str10:
	.asciz	"%"
	.size	.L.str10, 2

	.type	.L.str11,%object        @ @.str11
.L.str11:
	.asciz	"%0*lld"
	.size	.L.str11, 7

	.hidden	__libc

	.weak	strftime_l
strftime_l = __strftime_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
