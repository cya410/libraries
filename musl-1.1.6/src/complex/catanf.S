.section catanf_text
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
	.file	"src/complex/catanf.bc"
	.globl	catanf
	.align	2
	.type	catanf,%function
.section bb0_0
catanf:                                 @ @catanf
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
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r1
	mov	r4, r0
	mov	r1, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r9, r2
	mov	r0, r7
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, r9
	mov	r1, #1065353216
	bl	__aeabi_fcmpgt
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	mov	r0, r7
	mov	r1, r7
	bl	__aeabi_fmul
	mov	r11, r0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	mov	r0, #1065353216
	mov	r1, r11
	bl	__aeabi_fsub
	mov	r6, r0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	mov	r0, r9
	mov	r1, r9
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end
	mov	r0, r6
	bl	__aeabi_fsub
	mov	r6, r0
	mov	r1, #0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end8
	mov	r0, r7
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r1, r6
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end8
	bl	atan2f
	mov	r1, #1056964608
	mov	r6, #1056964608
	bl	__aeabi_fmul
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end8
	ldr	r1, .LCPI0_5
	mov	r8, r0
                                        @ kill: R0<def> R8<kill>
	bl	__aeabi_fdiv
	b	.LBB0_14
.LCPI0_5:
	.long	1078530011              @ 0x40490fdb
.section bb0_14
.LBB0_14:                               @ %if.end8
	mov	r7, r0
	mov	r1, #0
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fcmplt
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end8
	mov	r5, r0
	mov	r0, r7
	mov	r1, #0
	bl	__aeabi_fcmpun
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end8
	orrs	r0, r0, r5
	movne	r6, #-1090519040
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end8
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	bl	__aeabi_i2f
	bl	__aeabi_f2d
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end8
	mov	r10, r1
	mov	r1, #1065353216
	mov	r5, r0
	mov	r0, r9
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end8
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r1, r0
	bl	__aeabi_fmul
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end8
	mov	r1, r0
	mov	r0, r11
	bl	__aeabi_fadd
	mov	r6, r0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end8
	mov	r1, #0
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.LBB0_24
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %ovrf
	ldr	r0, .LCPI0_9
	mov	r1, r4
	str	r0, [r4]
	str	r0, [r1, #4]!
	mov	r5, r0
	b	.LBB0_23
.LCPI0_9:
	.long	2123789977              @ 0x7e967699
.section bb0_23
.LBB0_23:                               @ %return
	str	r5, [r4]
	str	r0, [r1]
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_24
.LBB0_24:                               @ %if.end18
	mov	r3, #598016
	mov	r0, r5
	mov	r1, r10
	mov	r2, #0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end18
	orr	r3, r3, #-1073741824
	bl	__aeabi_dmul
	mov	r7, r0
	mov	r0, r8
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end18
	str	r6, [sp]                @ 4-byte Spill
	mov	r6, r1
	bl	__aeabi_f2d
	mov	r2, r7
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end18
	mov	r3, r6
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_6
	mov	r6, r0
	b	.LBB0_28
.LCPI0_6:
	.long	3209671680              @ 0xbf4fb400
.section bb0_28
.LBB0_28:                               @ %if.end18
	mov	r7, r1
	mov	r0, r5
	mov	r1, r10
	mov	r2, #0
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end18
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end18
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_7
	ldr	r3, .LCPI0_8
	b	.LBB0_31
.LCPI0_7:
	.long	407279769               @ 0x18469899
.LCPI0_8:
	.long	3196339245              @ 0xbe84442d
.section bb0_31
.LBB0_31:                               @ %if.end18
	mov	r6, r0
	mov	r7, r1
	mov	r0, r5
	mov	r1, r10
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end18
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end18
	mov	r1, r7
	bl	__aeabi_dadd
	bl	__aeabi_d2f
	mov	r7, r0
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end18
	mov	r0, r9
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end18
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r11
	bl	__aeabi_fadd
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end18
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__aeabi_fdiv
	bl	logf
	mov	r1, #1048576000
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end18
	bl	__aeabi_fmul
	mov	r6, r0
	mov	r1, #0
                                        @ kill: R0<def> R6<kill>
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end18
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end18
	mov	r5, r0
	mov	r0, r6
	mov	r1, #0
	str	r5, [r4]
	bl	__aeabi_fadd
	mov	r1, r4
	str	r0, [r1, #4]!
	b	.LBB0_23
.Ltmp0:
	.size	catanf, .Ltmp0-catanf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
