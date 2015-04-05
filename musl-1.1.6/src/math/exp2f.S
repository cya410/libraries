.section exp2f_text
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
	.file	"src/math/exp2f.bc"
	.globl	exp2f
	.align	2
	.type	exp2f,%function
.section bb0_0
exp2f:                                  @ @exp2f
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
	ldr	r1, .LCPI0_7
	mov	r4, r0
	bic	r0, r4, #-2147483648
	cmp	r0, r1
	blo	.LBB0_7
	b	.LBB0_4
.LCPI0_7:
	.long	1123811329              @ 0x42fc0001
.section bb0_4
.LBB0_4:                                @ %if.then
	cmp	r4, #1124073472
	blo	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	cmp	r4, #0
	blt	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then5
	mov	r0, r4
	mov	r1, #2130706432
	bl	__aeabi_fmul
	b	.LBB0_35
.section bb0_7
.LBB0_7:                                @ %if.else
	cmp	r0, #855638016
	bhi	.LBB0_15
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then21
	mov	r0, r4
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB0_35
.section bb0_9
.LBB0_9:                                @ %if.end
	cmp	r4, #0
	bge	.LBB0_15
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then8
	mov	r1, #1441792
	mov	r0, #0
	orr	r1, r1, #-1023410176
	cmp	r4, r1
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then8
	mov	r1, #255
	movlo	r0, #1
	orr	r1, r1, #65280
	tst	r4, r1
	bne	.LBB0_13
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then8
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %do.body
	mov	r0, #-2147483647
	mov	r1, r4
	bl	__aeabi_fdiv
	str	r0, [sp, #8]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end14
	ldr	r1, .LCPI0_8
	mov	r0, #0
	cmp	r4, r1
	bhi	.LBB0_35
	b	.LBB0_15
.LCPI0_8:
	.long	3272998911              @ 0xc315ffff
.section bb0_15
.LBB0_15:                               @ %if.end23
	mov	r1, #155189248
	mov	r0, r4
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end23
	add	r1, r0, #8
	str	r1, [sp, #4]            @ 4-byte Spill
	and	r6, r1, #15
	mov	r1, #155189248
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end23
	orr	r1, r1, #-1073741824
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end23
	bl	__aeabi_fsub
	bl	__aeabi_f2d
	mov	r4, r0
	ldr	r0, .LCPI0_9
	b	.LBB0_19
.LCPI0_9:
	.long	exp2ft
.section bb0_19
.LBB0_19:                               @ %if.end23
	mov	r5, r1
                                        @ kill: R1<def> R5<kill>
	ldr	r6, [r0, r6, lsl #3]!
	ldr	r7, [r0, #4]
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end23
	mov	r0, r4
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end23
	ldr	r3, .LCPI0_10
	mov	r10, r0
	mov	r11, r1
	mov	r0, r4
	b	.LBB0_22
.LCPI0_10:
	.long	1070514110              @ 0x3fcebfbe
.section bb0_22
.LBB0_22:                               @ %if.end23
	mov	r1, r5
	mov	r2, #0
	bl	__aeabi_dmul
	ldr	r3, .LCPI0_11
	b	.LBB0_23
.LCPI0_11:
	.long	1072049731              @ 0x3fe62e43
.section bb0_23
.LBB0_23:                               @ %if.end23
	mov	r2, #0
	bl	__aeabi_dadd
	mov	r2, r10
	mov	r3, r11
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end23
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end23
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end23
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end23
	bl	__aeabi_dmul
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_dmul
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end23
	ldr	r3, .LCPI0_12
	mov	r6, r0
	mov	r7, r1
	mov	r0, r4
	b	.LBB0_29
.LCPI0_12:
	.long	1065595593              @ 0x3f83b2c9
.section bb0_29
.LBB0_29:                               @ %if.end23
	mov	r1, r5
	mov	r2, #-1073741824
	bl	__aeabi_dmul
	ldr	r3, .LCPI0_13
	b	.LBB0_30
.LCPI0_13:
	.long	1068264244              @ 0x3fac6b34
.section bb0_30
.LBB0_30:                               @ %if.end23
	mov	r2, #-2147483648
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end23
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end23
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r3, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end23
	mov	r2, r0
	mov	r0, #267386880
	orr	r0, r0, #-268435456
	and	r0, r0, r1, lsl #16
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end23
	add	r0, r0, #267386880
	add	r1, r0, #805306368
	mov	r0, #0
	bl	__aeabi_dmul
	bl	__aeabi_d2f
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %return
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	exp2f, .Ltmp0-exp2f
	.cantunwind
	.fnend

	.type	exp2ft,%object          @ @exp2ft
	.section	.rodata,"a",%progbits
	.align	3
exp2ft:
	.long	1719614413              @ double 7.071068e-01
	.long	1072079006
	.long	1944781191              @ double 7.384131e-01
	.long	1072144660
	.long	1110089947              @ double 7.711054e-01
	.long	1072213221
	.long	2191782032              @ double 8.052452e-01
	.long	1072284817
	.long	2572866477              @ double 8.408964e-01
	.long	1072359583
	.long	3716502172              @ double 8.781261e-01
	.long	1072437659
	.long	3707479175              @ double 9.170040e-01
	.long	1072519192
	.long	2728693978              @ double 9.576033e-01
	.long	1072604335
	.long	0                       @ double 1.000000e+00
	.long	1072693248
	.long	1828292879              @ double 1.044274e+00
	.long	1072739672
	.long	1014845819              @ double 1.090508e+00
	.long	1072788152
	.long	1853186616              @ double 1.138789e+00
	.long	1072838778
	.long	171030293               @ double 1.189207e+00
	.long	1072891646
	.long	1276261410              @ double 1.241858e+00
	.long	1072946854
	.long	3577096743              @ double 1.296840e+00
	.long	1073004506
	.long	3712504873              @ double 1.354256e+00
	.long	1073064711
	.size	exp2ft, 128


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
