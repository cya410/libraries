.section __rem_pio2_large_text
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
	.file	"src/math/__rem_pio2_large.bc"
	.globl	__rem_pio2_large
	.align	2
	.type	__rem_pio2_large,%function
.section bb0_0
__rem_pio2_large:                       @ @__rem_pio2_large
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
	.pad	#644
	sub	sp, sp, #644
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r0, [sp, #72]           @ 4-byte Spill
	str	r3, [sp, #76]           @ 4-byte Spill
	str	r2, [sp, #32]           @ 4-byte Spill
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	str	r1, [sp, #16]           @ 4-byte Spill
	ldr	r1, .LCPI0_6
	sub	r0, r2, #3
	sub	r11, r3, #1
	b	.LBB0_5
.LCPI0_6:
	.long	715827883               @ 0x2aaaaaab
.section bb0_5
.LBB0_5:                                @ %entry
	smull	r2, r7, r0, r1
	mov	r1, #24
	asr	r0, r7, #2
	add	r0, r0, r7, lsr #31
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	cmp	r0, #0
	movlt	r0, #0
	str	r0, [sp, #64]           @ 4-byte Spill
	add	r0, r0, r0, lsl #1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	add	r0, r1, r0, lsl #3
	ldr	r1, [sp, #680]
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r0, .LCPI0_7
	b	.LBB0_8
.LCPI0_7:
	.long	init_jk
.section bb0_8
.LBB0_8:                                @ %entry
	ldr	r0, [r0, r1, lsl #2]
	str	r0, [sp, #60]           @ 4-byte Spill
	add	r0, r0, r11
	cmp	r0, #0
	blt	.LBB0_13
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.body.lr.ph
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r1, [sp, #76]           @ 4-byte Reload
	ldr	r7, .LCPI0_8
	add	r6, sp, #400
	add	r4, r0, r1
	ldr	r0, [sp, #64]           @ 4-byte Reload
	sub	r5, r0, r11
	b	.LBB0_10
.LCPI0_8:
	.long	ipio2
.section bb0_10
.LBB0_10:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, #0
	cmp	r5, #0
	blt	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %cond.false
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r7, r5, lsl #2]
	bl	__aeabi_i2d
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %cond.end
                                        @   in Loop: Header=BB0_10 Depth=1
	stm	r6!, {r0, r1}
	subs	r4, r4, #1
	add	r5, r5, #1
	bne	.LBB0_10
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.cond14.preheader.lr.ph
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	mov	r9, #0
	sub	r0, r0, r1
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.cond14.preheader.lr.ph
	add	r1, sp, #400
	str	r0, [sp, #52]           @ 4-byte Spill
	ldr	r0, [sp, #76]           @ 4-byte Reload
	add	r0, r1, r0, lsl #3
	sub	r8, r0, #8
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.cond14.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_17 Depth 2
	ldr	r0, [sp, #76]           @ 4-byte Reload
	ldr	r7, [sp, #72]           @ 4-byte Reload
	mvn	r4, #0
	mov	r5, r8
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %for.cond14.preheader
                                        @   in Loop: Header=BB0_15 Depth=1
	mov	r6, #0
	mov	r10, #0
	cmp	r0, #1
	blt	.LBB0_20
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %for.body17
                                        @   Parent Loop BB0_15 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldm	r7, {r0, r1}
	ldm	r5, {r2, r3}
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.body17
                                        @   in Loop: Header=BB0_17 Depth=2
	mov	r3, r1
	mov	r0, r6
	mov	r1, r10
	bl	__aeabi_dadd
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.body17
                                        @   in Loop: Header=BB0_17 Depth=2
	add	r4, r4, #1
	mov	r6, r0
	mov	r10, r1
	add	r7, r7, #8
	sub	r5, r5, #8
	cmp	r4, r11
	blt	.LBB0_17
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.end26
                                        @   in Loop: Header=BB0_15 Depth=1
	ldr	r1, [sp, #60]           @ 4-byte Reload
	add	r0, sp, #80
	add	r8, r8, #8
	str	r6, [r0, r9, lsl #3]
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.end26
                                        @   in Loop: Header=BB0_15 Depth=1
	add	r0, r0, r9, lsl #3
	str	r10, [r0, #4]
	add	r0, r9, #1
	cmp	r9, r1
	mov	r9, r0
	blt	.LBB0_15
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %recompute.preheader
	ldr	r1, [sp, #60]           @ 4-byte Reload
	add	r2, sp, #564
	add	r0, r2, r1, lsl #2
	sub	r0, r0, #4
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %recompute.preheader
	str	r0, [sp, #56]           @ 4-byte Spill
	sub	r0, r2, #4
	str	r0, [sp, #48]           @ 4-byte Spill
	add	r0, sp, #80
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %recompute.preheader
	sub	r0, r0, #8
	str	r0, [sp, #44]           @ 4-byte Spill
	ldr	r0, [sp, #52]           @ 4-byte Reload
	rsb	r2, r0, #23
	rsb	r0, r0, #24
	str	r2, [sp, #40]           @ 4-byte Spill
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_42
.section bb0_25
.LBB0_25:                               @ %for.cond135.preheader
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r5, r6
	ldr	r7, [sp, #60]           @ 4-byte Reload
	ldr	r6, [sp, #48]           @ 4-byte Reload
	mov	r0, #0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.cond135.preheader
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r2, r4
	mov	r1, #0
	cmp	r4, r7
	ble	.LBB0_29
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.body138
                                        @   Parent Loop BB0_42 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r6, r2, lsl #2]
	sub	r2, r2, #1
	cmp	r2, r7
	orr	r1, r3, r1
	bgt	.LBB0_27
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %for.end142
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r2, [sp, #56]           @ 4-byte Reload
	cmp	r1, #0
	beq	.LBB0_30
	b	.LBB0_103
.section bb0_29
.LBB0_29:                               @   in Loop: Header=BB0_42 Depth=1
	ldr	r2, [sp, #56]           @ 4-byte Reload
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %for.cond146
                                        @   Parent Loop BB0_42 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r2, -r0, lsl #2]
	add	r0, r0, #1
	cmp	r1, #0
	beq	.LBB0_30
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %for.cond156.preheader
                                        @   in Loop: Header=BB0_42 Depth=1
	add	r1, r4, r0
	str	r2, [sp, #56]           @ 4-byte Spill
	cmp	r0, #1
	str	r1, [sp, #68]           @ 4-byte Spill
	blt	.LBB0_42
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %for.body160.preheader
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r0, [sp, #76]           @ 4-byte Reload
	add	r1, sp, #400
	add	r0, r0, r4
	add	r8, r1, r0, lsl #3
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %for.body160
                                        @   Parent Loop BB0_42 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_37 Depth 3
	ldr	r0, [sp, #64]           @ 4-byte Reload
	ldr	r1, .LCPI0_9
	add	r9, r4, #1
	add	r0, r9, r0
	b	.LBB0_34
.LCPI0_9:
	.long	ipio2
.section bb0_34
.LBB0_34:                               @ %for.body160
                                        @   in Loop: Header=BB0_33 Depth=2
	ldr	r0, [r1, r0, lsl #2]
	bl	__aeabi_i2d
	ldr	r3, [sp, #76]           @ 4-byte Reload
	add	r7, sp, #400
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %for.body160
                                        @   in Loop: Header=BB0_33 Depth=2
	mov	r5, #0
	mov	r10, r8
	mov	r6, #0
	add	r2, r4, r3
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %for.body160
                                        @   in Loop: Header=BB0_33 Depth=2
	mvn	r4, #0
	cmp	r3, #1
	str	r0, [r7, r2, lsl #3]
	add	r0, r7, r2, lsl #3
	ldr	r7, [sp, #72]           @ 4-byte Reload
	str	r1, [r0, #4]
	blt	.LBB0_40
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %for.body169
                                        @   Parent Loop BB0_42 Depth=1
                                        @     Parent Loop BB0_33 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldm	r7, {r0, r1}
	ldm	r10, {r2, r3}
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %for.body169
                                        @   in Loop: Header=BB0_37 Depth=3
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %for.body169
                                        @   in Loop: Header=BB0_37 Depth=3
	add	r4, r4, #1
	mov	r5, r0
	mov	r6, r1
	add	r7, r7, #8
	sub	r10, r10, #8
	cmp	r4, r11
	blt	.LBB0_37
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %for.end178
                                        @   in Loop: Header=BB0_33 Depth=2
	ldr	r1, [sp, #68]           @ 4-byte Reload
	add	r0, sp, #80
	add	r8, r8, #8
	mov	r4, r9
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %for.end178
                                        @   in Loop: Header=BB0_33 Depth=2
	str	r5, [r0, r9, lsl #3]
	add	r0, r0, r9, lsl #3
	str	r6, [r0, #4]
	cmp	r9, r1
	blt	.LBB0_33
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %recompute
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_44 Depth 2
                                        @     Child Loop BB0_73 Depth 2
                                        @     Child Loop BB0_27 Depth 2
                                        @     Child Loop BB0_30 Depth 2
                                        @     Child Loop BB0_33 Depth 2
                                        @       Child Loop BB0_37 Depth 3
	add	r0, sp, #80
	cmp	r1, #1
	ldr	r5, [r0, r1, lsl #3]
	add	r0, r0, r1, lsl #3
	ldr	r6, [r0, #4]
	blt	.LBB0_52
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %for.body35.preheader
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r0, [sp, #44]           @ 4-byte Reload
	add	r8, r1, #1
	add	r10, sp, #564
	str	r1, [sp, #68]           @ 4-byte Spill
	add	r9, r0, r1, lsl #3
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %for.body35
                                        @   Parent Loop BB0_42 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r3, #242221056
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %for.body35
                                        @   in Loop: Header=BB0_44 Depth=2
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	bl	__aeabi_i2d
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %for.body35
                                        @   in Loop: Header=BB0_44 Depth=2
	mov	r3, #24117248
	mov	r4, r0
	mov	r7, r1
	mov	r2, #0
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %for.body35
                                        @   in Loop: Header=BB0_44 Depth=2
	orr	r3, r3, #-1073741824
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %for.body35
                                        @   in Loop: Header=BB0_44 Depth=2
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %for.body35
                                        @   in Loop: Header=BB0_44 Depth=2
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	str	r0, [r10], #4
	ldm	r9, {r2, r3}
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %for.body35
                                        @   in Loop: Header=BB0_44 Depth=2
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_dadd
	sub	r8, r8, #1
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %for.body35
                                        @   in Loop: Header=BB0_44 Depth=2
	mov	r5, r0
	mov	r6, r1
	sub	r9, r9, #8
	cmp	r8, #1
	bgt	.LBB0_44
	b	.LBB0_53
.section bb0_52
.LBB0_52:                               @   in Loop: Header=BB0_42 Depth=1
	str	r1, [sp, #68]           @ 4-byte Spill
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r7, [sp, #52]           @ 4-byte Reload
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
	bl	scalbn
	mov	r4, r0
	mov	r5, r1
	mov	r2, #0
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r3, #1069547520
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dmul
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
	bl	floor
	mov	r3, #2097152
	mov	r2, #0
	orr	r3, r3, #-1073741824
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r6, r1
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_d2iz
	mov	r9, r0
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
                                        @ kill: R0<def> R9<kill>
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %for.end48
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r10, r0
	mov	r8, r1
	cmp	r7, #1
	blt	.LBB0_64
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then58
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r4, [sp, #68]           @ 4-byte Reload
	add	r0, sp, #564
	ldr	r3, [sp, #36]           @ 4-byte Reload
	add	r0, r0, r4, lsl #2
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.then58
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r1, [r0, #-4]
	asr	r2, r1, r3
	add	r9, r9, r1, asr r3
	sub	r2, r1, r2, lsl r3
	str	r2, [r0, #-4]
	ldr	r0, [sp, #40]           @ 4-byte Reload
	asr	r6, r2, r0
	b	.LBB0_66
.section bb0_64
.LBB0_64:                               @ %if.else
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	cmp	r1, r0
	bne	.LBB0_67
	b	.LBB0_65
.section bb0_65
.LBB0_65:                               @ %if.then73
                                        @   in Loop: Header=BB0_42 Depth=1
	ldr	r4, [sp, #68]           @ 4-byte Reload
	add	r0, sp, #564
	add	r0, r0, r4, lsl #2
	ldr	r0, [r0, #-4]
	asr	r6, r0, #23
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.end83
                                        @   in Loop: Header=BB0_42 Depth=1
	mvn	r3, #-16777216
	cmp	r6, #1
	bge	.LBB0_72
	b	.LBB0_89
.section bb0_67
.LBB0_67:                               @ %if.else77
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r5, #266338304
	mov	r0, r10
	mov	r1, r8
	mov	r2, #0
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.else77
                                        @   in Loop: Header=BB0_42 Depth=1
	orr	r5, r5, #805306368
	mov	r3, r5
	bl	__aeabi_dcmplt
	mov	r4, r0
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %if.else77
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r0, r10
	mov	r1, r8
	mov	r2, #0
	mov	r3, r5
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.else77
                                        @   in Loop: Header=BB0_42 Depth=1
	bl	__aeabi_dcmpun
	orrs	r0, r0, r4
	ldr	r4, [sp, #68]           @ 4-byte Reload
	mov	r6, #2
	mvn	r3, #-16777216
	beq	.LBB0_72
	b	.LBB0_71
.section bb0_71
.LBB0_71:                               @   in Loop: Header=BB0_42 Depth=1
	mov	r6, #0
	b	.LBB0_89
.section bb0_72
.LBB0_72:                               @ %if.then86
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r5, #0
	add	r0, sp, #564
	mov	r1, r4
	cmp	r4, #1
	blt	.LBB0_77
	b	.LBB0_73
.section bb0_73
.LBB0_73:                               @ %for.body91
                                        @   Parent Loop BB0_42 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0]
	cmp	r5, #0
	beq	.LBB0_75
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %if.else102
                                        @   in Loop: Header=BB0_73 Depth=2
	sub	r2, r3, r2
	str	r2, [r0]
	b	.LBB0_76
.section bb0_75
.LBB0_75:                               @ %if.then95
                                        @   in Loop: Header=BB0_73 Depth=2
	cmp	r2, #0
	mov	r5, #0
	rsbne	r2, r2, #16777216
	movne	r5, #1
	strne	r2, [r0]
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %for.inc106
                                        @   in Loop: Header=BB0_73 Depth=2
	add	r0, r0, #4
	subs	r1, r1, #1
	bne	.LBB0_73
	b	.LBB0_77
.section bb0_77
.LBB0_77:                               @ %for.end108
                                        @   in Loop: Header=BB0_42 Depth=1
	cmp	r7, #1
	blt	.LBB0_83
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %if.then111
                                        @   in Loop: Header=BB0_42 Depth=1
	cmp	r7, #2
	bne	.LBB0_80
	b	.LBB0_79
.section bb0_79
.LBB0_79:                               @ %sw.bb114
                                        @   in Loop: Header=BB0_42 Depth=1
	add	r0, sp, #564
	add	r0, r0, r4, lsl #2
	ldr	r1, [r0, #-4]
	ldr	r2, .LCPI0_10
	b	.LBB0_82
.LCPI0_10:
	.long	4194303                 @ 0x3fffff
.section bb0_80
.LBB0_80:                               @ %if.then111
                                        @   in Loop: Header=BB0_42 Depth=1
	cmp	r7, #1
	bne	.LBB0_83
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %sw.bb
                                        @   in Loop: Header=BB0_42 Depth=1
	add	r0, sp, #564
	add	r0, r0, r4, lsl #2
	ldr	r1, [r0, #-4]
	ldr	r2, .LCPI0_11
	b	.LBB0_82
.LCPI0_11:
	.long	8388607                 @ 0x7fffff
.section bb0_82
.LBB0_82:                               @ %if.end118
                                        @   in Loop: Header=BB0_42 Depth=1
	and	r1, r1, r2
	str	r1, [r0, #-4]
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %if.end118
                                        @   in Loop: Header=BB0_42 Depth=1
	add	r9, r9, #1
	cmp	r6, #2
	bne	.LBB0_89
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.then121
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r6, #267386880
	mov	r0, #0
	mov	r2, r10
	mov	r3, r8
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %if.then121
                                        @   in Loop: Header=BB0_42 Depth=1
	orr	r6, r6, #805306368
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r10, r0
	mov	r8, r1
	cmp	r5, #0
	beq	.LBB0_88
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %if.then125
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r0, #0
	mov	r1, r6
	mov	r2, r7
	bl	scalbn
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %if.then125
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_dsub
	mov	r10, r0
	mov	r8, r1
	b	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %if.end130
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r6, #2
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %if.end130
                                        @   in Loop: Header=BB0_42 Depth=1
	mov	r0, r10
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_25
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %if.else196
	rsb	r2, r7, #0
	mov	r0, r10
	mov	r1, r8
	mov	r11, r6
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %if.else196
	bl	scalbn
	mov	r8, #24117248
	mov	r6, r0
	mov	r5, r1
	b	.LBB0_92
.section bb0_92
.LBB0_92:                               @ %if.else196
	mov	r2, #0
	mov	r10, r7
	orr	r8, r8, #1073741824
                                        @ kill: R0<def> R6<kill>
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %if.else196
                                        @ kill: R1<def> R5<kill>
	mov	r3, r8
	bl	__aeabi_dcmplt
	mov	r7, r0
	b	.LBB0_94
.section bb0_94
.LBB0_94:                               @ %if.else196
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dcmpun
	orrs	r0, r0, r7
	beq	.LBB0_96
	b	.LBB0_95
.section bb0_95
.LBB0_95:                               @ %if.else213
	mov	r0, r6
	mov	r1, r5
	str	r11, [sp, #20]          @ 4-byte Spill
	str	r9, [sp, #24]           @ 4-byte Spill
	bl	__aeabi_d2iz
	add	r1, sp, #564
	str	r0, [r1, r4, lsl #2]
	b	.LBB0_102
.section bb0_96
.LBB0_96:                               @ %if.then201
	mov	r3, #242221056
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %if.then201
	str	r11, [sp, #20]          @ 4-byte Spill
	str	r9, [sp, #24]           @ 4-byte Spill
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %if.then201
	bl	__aeabi_d2iz
	mov	r7, r0
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_i2d
	b	.LBB0_99
.section bb0_99
.LBB0_99:                               @ %if.then201
	mov	r3, #24117248
	mov	r2, #0
	orr	r3, r3, #-1073741824
	bl	__aeabi_dmul
	b	.LBB0_100
.section bb0_100
.LBB0_100:                              @ %if.then201
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r5
	b	.LBB0_101
.section bb0_101
.LBB0_101:                              @ %if.then201
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	add	r1, sp, #564
	add	r10, r10, #24
	str	r0, [r1, r4, lsl #2]
	add	r4, r4, #1
	str	r7, [r1, r4, lsl #2]
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %if.end217
	mov	r2, r10
	b	.LBB0_105
.section bb0_103
.LBB0_103:                              @ %while.cond.preheader
	ldr	r2, [sp, #52]           @ 4-byte Reload
	add	r0, sp, #564
	str	r5, [sp, #20]           @ 4-byte Spill
	str	r9, [sp, #24]           @ 4-byte Spill
	sub	r0, r0, #4
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0, r4, lsl #2]
	sub	r4, r4, #1
	sub	r2, r2, #24
	cmp	r1, #0
	beq	.LBB0_104
	b	.LBB0_105
.section bb0_105
.LBB0_105:                              @ %if.end217
	mov	r1, #267386880
	mov	r0, #0
	str	r4, [sp, #68]           @ 4-byte Spill
	orr	r1, r1, #805306368
	b	.LBB0_106
.section bb0_106
.LBB0_106:                              @ %if.end217
	bl	scalbn
	mov	r10, r0
	mov	r6, r1
	cmp	r4, #0
	blt	.LBB0_123
	b	.LBB0_107
.section bb0_107
.LBB0_107:                              @ %for.body222.preheader
	mov	r9, #242221056
	add	r0, sp, #80
	add	r8, sp, #564
	mov	r7, r4
	add	r5, r0, r4, lsl #3
	orr	r9, r9, #805306368
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %for.body222
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r8, r7, lsl #2]
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_109
.section bb0_109
.LBB0_109:                              @ %for.body222
                                        @   in Loop: Header=BB0_108 Depth=1
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_dmul
	stm	r5, {r0, r1}
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %for.body222
                                        @   in Loop: Header=BB0_108 Depth=1
	mov	r0, r10
	mov	r1, r6
	mov	r2, #0
	mov	r3, r9
	b	.LBB0_111
.section bb0_111
.LBB0_111:                              @ %for.body222
                                        @   in Loop: Header=BB0_108 Depth=1
	bl	__aeabi_dmul
	mov	r10, r0
	sub	r0, r7, #1
	cmp	r7, #0
	b	.LBB0_112
.section bb0_112
.LBB0_112:                              @ %for.body222
                                        @   in Loop: Header=BB0_108 Depth=1
	mov	r6, r1
	sub	r5, r5, #8
	mov	r7, r0
	bgt	.LBB0_108
	b	.LBB0_113
.section bb0_113
.LBB0_113:                              @ %for.cond231.preheader
	cmp	r4, #0
	blt	.LBB0_123
	b	.LBB0_114
.section bb0_114
.LBB0_114:                              @ %for.cond235.preheader.lr.ph
	add	r0, sp, #80
	mvn	r7, #0
	mov	r11, r4
	add	r9, r0, r4, lsl #3
	ldr	r0, [sp, #60]           @ 4-byte Reload
	mvn	r0, r0
	str	r0, [sp, #72]           @ 4-byte Spill
	b	.LBB0_115
.section bb0_115
.LBB0_115:                              @ %for.body241.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_117 Depth 2
	sub	r0, r4, r11
	ldr	r8, .LCPI0_12
	mov	r4, #0
	mov	r5, r9
	b	.LBB0_116
.LCPI0_12:
	.long	PIo2
.section bb0_116
.LBB0_116:                              @ %for.body241.lr.ph
                                        @   in Loop: Header=BB0_115 Depth=1
	mov	r6, #0
	str	r0, [sp, #76]           @ 4-byte Spill
	ldr	r0, [sp, #72]           @ 4-byte Reload
	cmp	r7, r0
	movhi	r0, r7
	rsb	r10, r0, #0
	b	.LBB0_117
.section bb0_117
.LBB0_117:                              @ %for.body241
                                        @   Parent Loop BB0_115 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldm	r8, {r0, r1}
	ldm	r5, {r2, r3}
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_118
.section bb0_118
.LBB0_118:                              @ %for.body241
                                        @   in Loop: Header=BB0_117 Depth=2
	mov	r3, r1
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_119
.section bb0_119
.LBB0_119:                              @ %for.body241
                                        @   in Loop: Header=BB0_117 Depth=2
	mov	r4, r0
	mov	r6, r1
	add	r8, r8, #8
	add	r5, r5, #8
	subs	r10, r10, #1
	bne	.LBB0_117
	b	.LBB0_120
.section bb0_120
.LBB0_120:                              @ %for.end249
                                        @   in Loop: Header=BB0_115 Depth=1
	ldr	r1, [sp, #76]           @ 4-byte Reload
	add	r0, sp, #240
	sub	r9, r9, #8
	sub	r7, r7, #1
	b	.LBB0_121
.section bb0_121
.LBB0_121:                              @ %for.end249
                                        @   in Loop: Header=BB0_115 Depth=1
	cmp	r11, #0
	str	r4, [r0, r1, lsl #3]
	ldr	r4, [sp, #68]           @ 4-byte Reload
	add	r0, r0, r1, lsl #3
	b	.LBB0_122
.section bb0_122
.LBB0_122:                              @ %for.end249
                                        @   in Loop: Header=BB0_115 Depth=1
	str	r6, [r0, #4]
	sub	r0, r11, #1
	mov	r11, r0
	bgt	.LBB0_115
	b	.LBB0_123
.section bb0_123
.LBB0_123:                              @ %for.end254
	ldr	r1, [sp, #680]
	sub	r0, r1, #1
	cmp	r0, #2
	bhs	.LBB0_138
	b	.LBB0_124
.section bb0_124
.LBB0_124:                              @ %for.cond274.preheader
	mov	r8, #0
	mov	r6, #0
	cmp	r4, #0
	blt	.LBB0_128
	b	.LBB0_125
.section bb0_125
.LBB0_125:                              @ %for.body277.preheader
	add	r0, sp, #240
	add	r7, r4, #1
	mov	r8, #0
	mov	r6, #0
	add	r5, r0, r4, lsl #3
	b	.LBB0_126
.section bb0_126
.LBB0_126:                              @ %for.body277
                                        @ =>This Inner Loop Header: Depth=1
	ldm	r5, {r2, r3}
	mov	r0, r8
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_127
.section bb0_127
.LBB0_127:                              @ %for.body277
                                        @   in Loop: Header=BB0_126 Depth=1
	sub	r7, r7, #1
	mov	r8, r0
	mov	r6, r1
	sub	r5, r5, #8
	cmp	r7, #0
	bgt	.LBB0_126
	b	.LBB0_128
.section bb0_128
.LBB0_128:                              @ %for.end282
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r8
	mov	r3, r6
	b	.LBB0_129
.section bb0_129
.LBB0_129:                              @ %for.end282
	bl	__aeabi_dsub
	ldr	r10, [sp, #20]          @ 4-byte Reload
	ldr	r9, [sp, #16]           @ 4-byte Reload
	mov	r2, r8
	b	.LBB0_130
.section bb0_130
.LBB0_130:                              @ %for.end282
	mov	r3, r6
	cmp	r10, #0
	moveq	r1, r6
	moveq	r0, r8
	b	.LBB0_131
.section bb0_131
.LBB0_131:                              @ %for.end282
	stm	r9, {r0, r1}
	ldr	r0, [sp, #240]
	ldr	r1, [sp, #244]
	bl	__aeabi_dsub
	b	.LBB0_132
.section bb0_132
.LBB0_132:                              @ %for.end282
	mov	r7, r0
	mov	r6, r1
	cmp	r4, #1
	blt	.LBB0_136
	b	.LBB0_133
.section bb0_133
.LBB0_133:                              @ %for.body296.preheader
	add	r0, sp, #240
	add	r5, r0, #8
	b	.LBB0_134
.section bb0_134
.LBB0_134:                              @ %for.body296
                                        @ =>This Inner Loop Header: Depth=1
	ldm	r5, {r2, r3}
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_135
.section bb0_135
.LBB0_135:                              @ %for.body296
                                        @   in Loop: Header=BB0_134 Depth=1
	mov	r7, r0
	mov	r6, r1
	add	r5, r5, #8
	subs	r4, r4, #1
	bne	.LBB0_134
	b	.LBB0_136
.section bb0_136
.LBB0_136:                              @ %for.end301
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_137
.section bb0_137
.LBB0_137:                              @ %for.end301
	bl	__aeabi_dsub
	cmp	r10, #0
	moveq	r0, r7
	moveq	r1, r6
	str	r0, [r9, #8]
	str	r1, [r9, #12]
	ldr	r9, [sp, #24]           @ 4-byte Reload
	b	.LBB0_171
.section bb0_138
.LBB0_138:                              @ %for.end254
	cmp	r1, #0
	bne	.LBB0_145
	b	.LBB0_139
.section bb0_139
.LBB0_139:                              @ %for.cond256.preheader
	ldr	r9, [sp, #24]           @ 4-byte Reload
	ldr	r10, [sp, #20]          @ 4-byte Reload
	mov	r8, #0
	mov	r6, #0
	cmp	r4, #0
	blt	.LBB0_143
	b	.LBB0_140
.section bb0_140
.LBB0_140:                              @ %for.body259.preheader
	add	r0, sp, #240
	add	r7, r4, #1
	mov	r8, #0
	mov	r6, #0
	add	r5, r0, r4, lsl #3
	b	.LBB0_141
.section bb0_141
.LBB0_141:                              @ %for.body259
                                        @ =>This Inner Loop Header: Depth=1
	ldm	r5, {r2, r3}
	mov	r0, r8
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_142
.section bb0_142
.LBB0_142:                              @ %for.body259
                                        @   in Loop: Header=BB0_141 Depth=1
	sub	r7, r7, #1
	mov	r8, r0
	mov	r6, r1
	sub	r5, r5, #8
	cmp	r7, #0
	bgt	.LBB0_141
	b	.LBB0_143
.section bb0_143
.LBB0_143:                              @ %for.end264
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r8
	mov	r3, r6
	b	.LBB0_144
.section bb0_144
.LBB0_144:                              @ %for.end264
	bl	__aeabi_dsub
	ldr	r2, [sp, #16]           @ 4-byte Reload
	cmp	r10, #0
	moveq	r1, r6
	moveq	r0, r8
	stm	r2, {r0, r1}
	b	.LBB0_171
.section bb0_145
.LBB0_145:                              @ %for.end254
	ldr	r9, [sp, #24]           @ 4-byte Reload
	ldr	r7, [sp, #20]           @ 4-byte Reload
	cmp	r1, #3
	bne	.LBB0_171
	b	.LBB0_146
.section bb0_146
.LBB0_146:                              @ %for.cond311.preheader
	mov	r0, #0
	mov	r1, #0
	cmp	r4, #1
	blt	.LBB0_167
	b	.LBB0_147
.section bb0_147
.LBB0_147:                              @ %for.body314.lr.ph
	add	r0, sp, #240
	str	r4, [sp, #68]           @ 4-byte Spill
	add	r11, r0, r4, lsl #3
	ldr	r10, [r0, r4, lsl #3]
	add	r4, r4, #1
	ldr	r6, [r11, #4]
	b	.LBB0_148
.section bb0_148
.LBB0_148:                              @ %for.body314
                                        @ =>This Inner Loop Header: Depth=1
	mov	r8, r11
	mov	r2, r10
	mov	r3, r6
	ldr	r7, [r8, #-8]!
	b	.LBB0_149
.section bb0_149
.LBB0_149:                              @ %for.body314
                                        @   in Loop: Header=BB0_148 Depth=1
	ldr	r5, [r11, #-4]
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dadd
	b	.LBB0_150
.section bb0_150
.LBB0_150:                              @ %for.body314
                                        @   in Loop: Header=BB0_148 Depth=1
	mov	r9, r1
	mov	r2, r0
	mov	r1, r5
	mov	r0, r7
	b	.LBB0_151
.section bb0_151
.LBB0_151:                              @ %for.body314
                                        @   in Loop: Header=BB0_148 Depth=1
	mov	r3, r9
	mov	r5, r2
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_152
.section bb0_152
.LBB0_152:                              @ %for.body314
                                        @   in Loop: Header=BB0_148 Depth=1
	mov	r3, r1
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_153
.section bb0_153
.LBB0_153:                              @ %for.body314
                                        @   in Loop: Header=BB0_148 Depth=1
	str	r9, [r11, #-4]
	stm	r11, {r0, r1}
	sub	r4, r4, #1
	mov	r11, r8
	b	.LBB0_154
.section bb0_154
.LBB0_154:                              @ %for.body314
                                        @   in Loop: Header=BB0_148 Depth=1
	mov	r10, r5
	mov	r6, r9
	str	r5, [r8]
	cmp	r4, #1
	bgt	.LBB0_148
	b	.LBB0_155
.section bb0_155
.LBB0_155:                              @ %for.cond329.preheader
	ldr	r2, [sp, #68]           @ 4-byte Reload
	ldr	r9, [sp, #24]           @ 4-byte Reload
	ldr	r7, [sp, #20]           @ 4-byte Reload
	mov	r0, #0
	mov	r1, #0
	cmp	r2, #2
	blt	.LBB0_167
	b	.LBB0_156
.section bb0_156
.LBB0_156:                              @ %for.body332.lr.ph
	add	r0, sp, #240
	mov	r4, r2
	add	r6, r0, r2, lsl #3
	ldr	r10, [r0, r2, lsl #3]
	ldr	r11, [r6, #4]
	b	.LBB0_157
.section bb0_157
.LBB0_157:                              @ %for.body332
                                        @ =>This Inner Loop Header: Depth=1
	mov	r8, r6
	mov	r2, r10
	mov	r3, r11
	ldr	r5, [r8, #-8]!
	b	.LBB0_158
.section bb0_158
.LBB0_158:                              @ %for.body332
                                        @   in Loop: Header=BB0_157 Depth=1
	ldr	r7, [r6, #-4]
	mov	r0, r5
	mov	r1, r7
	bl	__aeabi_dadd
	b	.LBB0_159
.section bb0_159
.LBB0_159:                              @ %for.body332
                                        @   in Loop: Header=BB0_157 Depth=1
	mov	r9, r1
	mov	r2, r0
	mov	r0, r5
	mov	r1, r7
	b	.LBB0_160
.section bb0_160
.LBB0_160:                              @ %for.body332
                                        @   in Loop: Header=BB0_157 Depth=1
	mov	r3, r9
	mov	r5, r2
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_161
.section bb0_161
.LBB0_161:                              @ %for.body332
                                        @   in Loop: Header=BB0_157 Depth=1
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	bl	__aeabi_dadd
	b	.LBB0_162
.section bb0_162
.LBB0_162:                              @ %for.body332
                                        @   in Loop: Header=BB0_157 Depth=1
	str	r9, [r6, #-4]
	stm	r6, {r0, r1}
	sub	r4, r4, #1
	mov	r6, r8
	b	.LBB0_163
.section bb0_163
.LBB0_163:                              @ %for.body332
                                        @   in Loop: Header=BB0_157 Depth=1
	mov	r10, r5
	mov	r11, r9
	str	r5, [r8]
	cmp	r4, #1
	bgt	.LBB0_157
	b	.LBB0_164
.section bb0_164
.LBB0_164:                              @ %for.cond347.preheader
	ldr	r5, [sp, #68]           @ 4-byte Reload
	ldr	r9, [sp, #24]           @ 4-byte Reload
	ldr	r7, [sp, #20]           @ 4-byte Reload
	mov	r0, #0
	mov	r1, #0
	cmp	r5, #2
	blt	.LBB0_167
	b	.LBB0_165
.section bb0_165
.LBB0_165:                              @ %for.body350.preheader
	add	r0, sp, #240
	mov	r1, #0
	add	r4, r0, r5, lsl #3
	mov	r0, #0
	b	.LBB0_166
.section bb0_166
.LBB0_166:                              @ %for.body350
                                        @ =>This Inner Loop Header: Depth=1
	ldm	r4, {r2, r3}
	bl	__aeabi_dadd
	sub	r5, r5, #1
	sub	r4, r4, #8
	cmp	r5, #1
	bgt	.LBB0_166
	b	.LBB0_167
.section bb0_167
.LBB0_167:                              @ %for.end355
	ldr	r3, [sp, #240]
	ldr	r6, [sp, #244]
	ldr	r2, [sp, #248]
	ldr	r4, [sp, #252]
	cmp	r7, #0
	beq	.LBB0_169
	b	.LBB0_168
.section bb0_168
.LBB0_168:                              @ %if.else364
	ldr	r5, [sp, #16]           @ 4-byte Reload
	eor	r6, r6, #-2147483648
	eor	r1, r1, #-2147483648
	eor	r7, r4, #-2147483648
	stm	r5, {r3, r6}
	str	r2, [r5, #8]
	str	r7, [r5, #12]
	b	.LBB0_170
.section bb0_169
.LBB0_169:                              @ %if.then358
	ldr	r5, [sp, #16]           @ 4-byte Reload
	stm	r5, {r3, r6}
	str	r2, [r5, #8]
	str	r4, [r5, #12]
	b	.LBB0_170
.section bb0_170
.LBB0_170:                              @ %sw.epilog374
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	b	.LBB0_171
.section bb0_171
.LBB0_171:                              @ %sw.epilog374
	and	r0, r9, #7
	add	sp, sp, #644
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__rem_pio2_large, .Ltmp0-__rem_pio2_large
	.cantunwind
	.fnend

	.type	init_jk,%object         @ @init_jk
	.section	.rodata.cst16,"aM",%progbits,16
	.align	2
init_jk:
	.long	3                       @ 0x3
	.long	4                       @ 0x4
	.long	4                       @ 0x4
	.long	6                       @ 0x6
	.size	init_jk, 16

	.type	ipio2,%object           @ @ipio2
	.section	.rodata,"a",%progbits
	.align	2
ipio2:
	.long	10680707                @ 0xa2f983
	.long	7228996                 @ 0x6e4e44
	.long	1387004                 @ 0x1529fc
	.long	2578385                 @ 0x2757d1
	.long	16069853                @ 0xf534dd
	.long	12639074                @ 0xc0db62
	.long	9804092                 @ 0x95993c
	.long	4427841                 @ 0x439041
	.long	16666979                @ 0xfe5163
	.long	11263675                @ 0xabdebb
	.long	12935607                @ 0xc561b7
	.long	2387514                 @ 0x246e3a
	.long	4345298                 @ 0x424dd2
	.long	14681673                @ 0xe00649
	.long	3074569                 @ 0x2eea09
	.long	13734428                @ 0xd1921c
	.long	16653803                @ 0xfe1deb
	.long	1880361                 @ 0x1cb129
	.long	10960616                @ 0xa73ee8
	.long	8533493                 @ 0x8235f5
	.long	3062596                 @ 0x2ebb44
	.long	8710556                 @ 0x84e99c
	.long	7349940                 @ 0x7026b4
	.long	6258241                 @ 0x5f7e41
	.long	3772886                 @ 0x3991d6
	.long	3769171                 @ 0x398353
	.long	3798172                 @ 0x39f49c
	.long	8675211                 @ 0x845f8b
	.long	12450088                @ 0xbdf928
	.long	3874808                 @ 0x3b1ff8
	.long	9961438                 @ 0x97ffde
	.long	366607                  @ 0x5980f
	.long	15675153                @ 0xef2f11
	.long	9132554                 @ 0x8b5a0a
	.long	7151469                 @ 0x6d1f6d
	.long	3571407                 @ 0x367ecf
	.long	2607881                 @ 0x27cb09
	.long	12013382                @ 0xb74f46
	.long	4155038                 @ 0x3f669e
	.long	6285869                 @ 0x5fea2d
	.long	7677882                 @ 0x7527ba
	.long	13102053                @ 0xc7ebe5
	.long	15825725                @ 0xf17b3d
	.long	473591                  @ 0x739f7
	.long	9065106                 @ 0x8a5292
	.long	15363067                @ 0xea6bfb
	.long	6271263                 @ 0x5fb11f
	.long	9264392                 @ 0x8d5d08
	.long	5636912                 @ 0x560330
	.long	4652155                 @ 0x46fc7b
	.long	7056368                 @ 0x6babf0
	.long	13614112                @ 0xcfbc20
	.long	10155062                @ 0x9af436
	.long	1944035                 @ 0x1da9e3
	.long	9527646                 @ 0x91615e
	.long	15080200                @ 0xe61b08
	.long	6658437                 @ 0x659985
	.long	6231200                 @ 0x5f14a0
	.long	6832269                 @ 0x68408d
	.long	16767104                @ 0xffd880
	.long	5075751                 @ 0x4d7327
	.long	3212806                 @ 0x310606
	.long	1398474                 @ 0x1556ca
	.long	7579849                 @ 0x73a8c9
	.long	6349435                 @ 0x60e27b
	.long	12618859                @ 0xc08c6b
	.size	ipio2, 264

	.type	PIo2,%object            @ @PIo2
	.align	3
PIo2:
	.long	1073741824              @ double 1.570796e+00
	.long	1073291771
	.long	0                       @ double 7.549789e-08
	.long	1047807021
	.long	2147483648              @ double 5.390303e-15
	.long	1022903960
	.long	1610612736              @ double 3.282003e-22
	.long	997772369
	.long	2147483648              @ double 1.270656e-29
	.long	972036995
	.long	1073741824              @ double 1.229333e-36
	.long	947528992
	.long	2147483648              @ double 2.733701e-44
	.long	920879650
	.long	0                       @ double 2.167417e-51
	.long	896135965
	.size	PIo2, 64


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
