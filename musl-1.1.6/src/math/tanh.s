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
	.file	"src/math/tanh.bc"
	.globl	tanh
	.align	2
	.type	tanh,%function
tanh:                                   @ @tanh
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r6, r0
	ldr	r0, .LCPI0_3
	b	.LBB0_3
.LCPI0_3:
	.long	1071748075              @ 0x3fe193eb
.LBB0_3:                                @ %entry
	mov	r4, r1
	bic	r5, r4, #-2147483648
	cmp	r5, r0
	blo	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	ldr	r0, .LCPI0_5
	cmp	r5, r0
	blo	.LBB0_12
	b	.LBB0_5
.LCPI0_5:
	.long	1077149697              @ 0x40340001
.LBB0_5:                                @ %if.then9
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r6
	mov	r3, r5
	b	.LBB0_6
.LBB0_6:                                @ %if.then9
	bl	__aeabi_ddiv
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_25
.LBB0_7:                                @ %if.else12
	ldr	r0, .LCPI0_4
	cmp	r5, r0
	blo	.LBB0_17
	b	.LBB0_8
.LCPI0_4:
	.long	1070618799              @ 0x3fd058af
.LBB0_8:                                @ %if.then15
	mov	r0, r6
	mov	r1, r5
	mov	r2, r6
	mov	r3, r5
	b	.LBB0_9
.LBB0_9:                                @ %if.then15
	bl	__aeabi_dadd
	bl	expm1
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_10
.LBB0_10:                               @ %if.then15
	mov	r2, #0
	mov	r3, #1073741824
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	b	.LBB0_11
.LBB0_11:                               @ %if.then15
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_24
.LBB0_12:                               @ %if.else
	mov	r0, r6
	mov	r1, r5
	mov	r2, r6
	mov	r3, r5
	b	.LBB0_13
.LBB0_13:                               @ %if.else
	bl	__aeabi_dadd
	bl	expm1
	mov	r2, #0
	mov	r3, #1073741824
	b	.LBB0_14
.LBB0_14:                               @ %if.else
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	b	.LBB0_15
.LBB0_15:                               @ %if.else
	mov	r1, #1073741824
	bl	__aeabi_ddiv
	mov	r3, r1
	mov	r1, #267386880
	b	.LBB0_16
.LBB0_16:                               @ %if.else
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	b	.LBB0_25
.LBB0_17:                               @ %if.else20
	cmp	r5, #1048576
	blo	.LBB0_28
	b	.LBB0_18
.LBB0_18:                               @ %if.then23
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #-1073741824
	b	.LBB0_19
.LBB0_19:                               @ %if.then23
	bl	__aeabi_dmul
	bl	expm1
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_20
.LBB0_20:                               @ %if.then23
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_21
.LBB0_21:                               @ %if.then23
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r8, r1
	mov	r0, r5
	b	.LBB0_22
.LBB0_22:                               @ %if.then23
	mov	r1, r6
	mov	r2, #0
	mov	r3, #1073741824
	bl	__aeabi_dadd
	b	.LBB0_23
.LBB0_23:                               @ %if.then23
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	b	.LBB0_24
.LBB0_24:                               @ %if.end33
	bl	__aeabi_ddiv
	b	.LBB0_25
.LBB0_25:                               @ %if.end33
	mov	r6, r0
	mov	r5, r1
	b	.LBB0_26
.LBB0_26:                               @ %if.end33
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r6
	mov	r3, r5
	b	.LBB0_27
.LBB0_27:                               @ %if.end33
	bl	__aeabi_dsub
	cmp	r4, #0
	movge	r0, r6
	movge	r1, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.LBB0_28:                               @ %do.body
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_d2f
	str	r0, [sp, #4]
	b	.LBB0_26
.Ltmp0:
	.size	tanh, .Ltmp0-tanh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
