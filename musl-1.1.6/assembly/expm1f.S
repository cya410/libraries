.section expm1f_text
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
	.file	"src/math/expm1f.bc"
	.globl	expm1f
	.align	2
	.type	expm1f,%function
.section bb0_0
expm1f:                                 @ @expm1f
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r1, .LCPI0_11
	mov	r4, r0
	bic	r0, r4, #-2147483648
	lsr	r7, r4, #31
	cmp	r0, r1
	blo	.LBB0_7
	b	.LBB0_4
.LCPI0_11:
	.long	1100331076              @ 0x4195b844
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	cmp	r0, r1
	bhi	.LBB0_60
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	cmp	r7, #0
	beq	.LBB0_15
	b	.LBB0_6
.section bb0_6
.LBB0_6:
	mov	r4, #1065353216
	orr	r4, r4, #-2147483648
	b	.LBB0_60
.section bb0_7
.LBB0_7:                                @ %if.end9
	ldr	r1, .LCPI0_12
	cmp	r0, r1
	blo	.LBB0_11
	b	.LBB0_8
.LCPI0_12:
	.long	1051816473              @ 0x3eb17219
.section bb0_8
.LBB0_8:                                @ %if.then11
	ldr	r1, .LCPI0_13
	cmp	r0, r1
	bhi	.LBB0_18
	b	.LBB0_9
.LCPI0_13:
	.long	1065686417              @ 0x3f851591
.section bb0_9
.LBB0_9:                                @ %if.then13
	cmp	r7, #0
	beq	.LBB0_23
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.else
	ldr	r1, .LCPI0_14
	mov	r0, r4
	bl	__aeabi_fadd
	ldr	r7, .LCPI0_15
	mov	r6, r0
	mvn	r9, #0
	b	.LBB0_24
.LCPI0_14:
	.long	1060204928              @ 0x3f317180
.LCPI0_15:
	.long	3071801297              @ 0xb717f7d1
.section bb0_11
.LBB0_11:                               @ %if.else29
	lsr	r1, r0, #24
	cmp	r1, #50
	bhi	.LBB0_14
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then32
	mov	r1, #0
	cmp	r1, r0, lsr #23
	bne	.LBB0_60
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %do.body
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	str	r0, [sp, #4]
	b	.LBB0_60
.section bb0_14
.LBB0_14:
	mov	r9, #0
                                        @ implicit-def: R8
	b	.LBB0_26
.section bb0_15
.LBB0_15:                               @ %if.end5
	ldr	r5, .LCPI0_20
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fcmple
	b	.LBB0_16
.LCPI0_20:
	.long	1118925184              @ 0x42b17180
.section bb0_16
.LBB0_16:                               @ %if.end5
	mov	r6, r0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fcmpun
	orrs	r0, r0, r6
	bne	.LBB0_18
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then7
	mov	r0, r4
	mov	r1, #2130706432
	b	.LBB0_58
.section bb0_18
.LBB0_18:                               @ %if.else17
	ldr	r1, .LCPI0_21
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r1, #1056964608
	b	.LBB0_19
.LCPI0_21:
	.long	1069066811              @ 0x3fb8aa3b
.section bb0_19
.LBB0_19:                               @ %if.else17
	cmp	r7, #0
	movne	r1, #-1090519040
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.else17
	mov	r9, r0
                                        @ kill: R0<def> R9<kill>
	bl	__aeabi_i2f
	ldr	r1, .LCPI0_16
	b	.LBB0_21
.LCPI0_16:
	.long	3207688576              @ 0xbf317180
.section bb0_21
.LBB0_21:                               @ %if.else17
	mov	r7, r0
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.else17
	mov	r0, r4
	bl	__aeabi_fadd
	ldr	r1, .LCPI0_18
	mov	r6, r0
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_24
.LCPI0_18:
	.long	924317649               @ 0x3717f7d1
.section bb0_23
.LBB0_23:                               @ %if.then15
	ldr	r1, .LCPI0_17
	mov	r0, r4
	bl	__aeabi_fadd
	ldr	r7, .LCPI0_19
	mov	r6, r0
	mov	r9, #1
	b	.LBB0_24
.LCPI0_17:
	.long	3207688576              @ 0xbf317180
.LCPI0_19:
	.long	924317649               @ 0x3717f7d1
.section bb0_24
.LBB0_24:                               @ %if.end25
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r4, r0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end25
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r8, r0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end40
	mov	r0, r4
	mov	r1, #1056964608
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end40
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_22
	b	.LBB0_28
.LCPI0_22:
	.long	986656784               @ 0x3acf3010
.section bb0_28
.LBB0_28:                               @ %if.end40
	mov	r7, r0
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_23
	b	.LBB0_29
.LCPI0_23:
	.long	3171453032              @ 0xbd088868
.section bb0_29
.LBB0_29:                               @ %if.end40
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end40
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r5, r0
	mov	r0, r6
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end40
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #4194304
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end40
	orr	r0, r0, #1073741824
	bl	__aeabi_fsub
	mov	r6, r0
	mov	r0, r5
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end40
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r5, r0
	mov	r0, r4
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end40
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #12582912
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end40
	orr	r0, r0, #1073741824
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end40
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r1, r0
	cmp	r9, #0
	beq	.LBB0_43
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end59
	mov	r0, r1
	mov	r1, r8
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end59
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r1, r8
	bl	__aeabi_fsub
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end59
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r7, r0
	cmp	r9, #1
	bne	.LBB0_44
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.then73
	mov	r5, #1048576000
	mov	r0, r4
	orr	r5, r5, #-2147483648
	mov	r1, r5
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.then73
	bl	__aeabi_fcmpge
	mov	r6, r0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fcmpun
	orrs	r0, r0, r6
	bne	.LBB0_46
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.then76
	mov	r0, r4
	mov	r1, #1056964608
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fsub
	mov	r1, #-1073741824
	b	.LBB0_58
.section bb0_43
.LBB0_43:                               @ %if.then55
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub
	b	.LBB0_59
.section bb0_44
.LBB0_44:                               @ %if.end59
	cmn	r9, #1
	bne	.LBB0_47
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.then66
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r1, #1056964608
	bl	__aeabi_fmul
	mov	r1, #-1090519040
	b	.LBB0_52
.section bb0_46
.LBB0_46:                               @ %if.end80
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r1, r0
	bl	__aeabi_fadd
	mov	r1, #1065353216
	b	.LBB0_52
.section bb0_47
.LBB0_47:                               @ %if.end84
	mov	r0, #1065353216
	cmp	r9, #57
	add	r8, r0, r9, lsl #23
	blo	.LBB0_53
	b	.LBB0_48
.section bb0_48
.LBB0_48:                               @ %if.then92
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r1, #1065353216
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.then92
	bl	__aeabi_fadd
	mov	r4, r0
	mov	r1, r4
                                        @ kill: R0<def> R4<kill>
	b	.LBB0_50
.section bb0_50
.LBB0_50:                               @ %if.then92
	bl	__aeabi_fadd
	mov	r1, #2130706432
	bl	__aeabi_fmul
	mov	r5, r0
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.then92
	mov	r0, r8
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, #1065353216
	cmp	r9, #128
	moveq	r0, r5
	orr	r1, r1, #-2147483648
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %return
	bl	__aeabi_fadd
	b	.LBB0_59
.section bb0_53
.LBB0_53:                               @ %if.end104
	rsb	r0, r9, #127
	cmp	r9, #22
	lsl	r6, r0, #23
	bgt	.LBB0_56
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.then110
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_fsub
	mov	r4, r0
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %if.then110
	mov	r0, #1065353216
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r1, r4
	b	.LBB0_57
.section bb0_56
.LBB0_56:                               @ %if.else116
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r1, #1065353216
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %if.end122
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r8
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %return
	bl	__aeabi_fmul
	b	.LBB0_59
.section bb0_59
.LBB0_59:                               @ %return
	mov	r4, r0
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %return
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	expm1f, .Ltmp0-expm1f
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
