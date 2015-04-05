.section asinh_text
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
	.file	"src/math/asinh.bc"
	.globl	asinh
	.align	2
	.type	asinh,%function
.section bb0_0
asinh:                                  @ @asinh
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
	mov	r5, r0
	mov	r0, #255
	mov	r4, r1
	mov	r1, #25
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	orr	r0, r0, #1792
	bic	r6, r4, #-2147483648
	orr	r1, r1, #1024
	and	r0, r0, r4, lsr #20
	cmp	r0, r1
	blo	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	mov	r0, r5
	mov	r1, r6
	bl	log
	ldr	r2, .LCPI0_2
	ldr	r3, .LCPI0_3
	bl	__aeabi_dadd
	b	.LBB0_23
.LCPI0_2:
	.long	4277811695              @ 0xfefa39ef
.LCPI0_3:
	.long	1072049730              @ 0x3fe62e42
.section bb0_6
.LBB0_6:                                @ %if.else
	cmp	r0, #1024
	blo	.LBB0_15
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then10
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then10
	bl	__aeabi_dadd
	mov	r9, r0
	mov	r8, r1
	mov	r0, r5
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then10
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then10
	mov	r7, #267386880
	mov	r2, #0
	orr	r7, r7, #805306368
	mov	r3, r7
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then10
	bl	__aeabi_dadd
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then10
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then10
	mov	r3, r1
	mov	r0, #0
	mov	r1, r7
	bl	__aeabi_ddiv
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then10
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	mov	r1, r8
	bl	__aeabi_dadd
	bl	log
	b	.LBB0_23
.section bb0_15
.LBB0_15:                               @ %if.else17
	cmp	r0, #996
	bls	.LBB0_26
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then20
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then20
	bl	__aeabi_dmul
	mov	r9, #267386880
	mov	r7, r0
	mov	r8, r1
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then20
	mov	r2, #0
	orr	r9, r9, #805306368
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R8<kill>
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then20
	mov	r3, r9
	bl	__aeabi_dadd
	bl	sqrt
	mov	r2, #0
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then20
	mov	r3, r9
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then20
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_ddiv
	mov	r2, r0
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then20
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	bl	log1p
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end32
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end32
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end32
	bl	__aeabi_dsub
	cmp	r4, #0
	movge	r0, r5
	movge	r1, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.section bb0_26
.LBB0_26:                               @ %do.body
	mov	r3, #124780544
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %do.body
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	str	r1, [sp, #4]
	str	r0, [sp]
	b	.LBB0_24
.Ltmp0:
	.size	asinh, .Ltmp0-asinh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
