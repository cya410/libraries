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
	.file	"src/math/hypot.bc"
	.globl	hypot
	.align	2
	.type	hypot,%function
hypot:                                  @ @hypot
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, r0
	bic	r6, r1, #-2147483648
	mov	r5, #0
	bic	r3, r3, #-2147483648
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r0, #0
	mov	r1, #255
	mov	r4, r2
	cmp	r7, r2
	b	.LBB0_5
.LBB0_5:                                @ %entry
	orr	r1, r1, #1792
	movlo	r5, #1
	cmp	r6, r3
	movlo	r0, #1
	b	.LBB0_6
.LBB0_6:                                @ %entry
	moveq	r0, r5
	mov	r5, r3
	cmp	r0, #0
	movne	r4, r7
	b	.LBB0_7
.LBB0_7:                                @ %entry
	movne	r5, r6
	movne	r7, r2
	movne	r6, r3
	cmp	r1, r5, lsr #20
	beq	.LBB0_30
	b	.LBB0_8
.LBB0_8:                                @ %if.end15
	orrs	r0, r4, r5
	lsrne	r0, r6, #20
	cmpne	r0, r1
	bne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	mov	r4, r7
	mov	r5, r6
	b	.LBB0_30
.LBB0_10:                               @ %if.end22
	lsr	r1, r5, #20
	sub	r2, r0, r1
	cmp	r2, #65
	blt	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @ %if.then25
	mov	r0, r7
	mov	r1, r6
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_29
.LBB0_12:                               @ %if.end26
	mov	r2, #254
	orr	r2, r2, #1280
	cmp	r0, r2
	blo	.LBB0_17
	b	.LBB0_13
.LBB0_13:                               @ %if.then29
	mov	r9, #70254592
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_14
.LBB0_14:                               @ %if.then29
	mov	r8, #0
	orr	r9, r9, #268435456
	mov	r3, r9
	bl	__aeabi_dmul
	b	.LBB0_15
.LBB0_15:                               @ %if.then29
	mov	r7, r0
	mov	r6, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_16
.LBB0_16:                               @ %if.then29
	mov	r2, #0
	mov	r3, r9
	bl	__aeabi_dmul
	mov	r9, #196083712
	mov	r4, r0
	mov	r5, r1
	orr	r9, r9, #1610612736
	b	.LBB0_23
.LBB0_17:                               @ %if.else
	cmp	r1, #572
	bhi	.LBB0_22
	b	.LBB0_18
.LBB0_18:                               @ %if.then33
	mov	r9, #196083712
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_19
.LBB0_19:                               @ %if.then33
	mov	r8, #0
	orr	r9, r9, #1610612736
	mov	r3, r9
	bl	__aeabi_dmul
	b	.LBB0_20
.LBB0_20:                               @ %if.then33
	mov	r7, r0
	mov	r6, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_21
.LBB0_21:                               @ %if.then33
	mov	r2, #0
	mov	r3, r9
	bl	__aeabi_dmul
	mov	r9, #70254592
	mov	r4, r0
	mov	r5, r1
	orr	r9, r9, #268435456
	b	.LBB0_23
.LBB0_22:
	mov	r9, #267386880
	mov	r8, #0
	orr	r9, r9, #805306368
	b	.LBB0_23
.LBB0_23:                               @ %if.end37
	add	r0, sp, #24
	add	r1, sp, #16
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_24
.LBB0_24:                               @ %if.end37
	bl	sq
	add	r0, sp, #8
	mov	r1, sp
	mov	r2, r4
	b	.LBB0_25
.LBB0_25:                               @ %if.end37
	mov	r3, r5
	bl	sq
	ldm	sp, {r0, r1}
	ldr	r2, [sp, #16]
	b	.LBB0_26
.LBB0_26:                               @ %if.end37
	ldr	r3, [sp, #20]
	bl	__aeabi_dadd
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	b	.LBB0_27
.LBB0_27:                               @ %if.end37
	bl	__aeabi_dadd
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	bl	__aeabi_dadd
	b	.LBB0_28
.LBB0_28:                               @ %if.end37
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	b	.LBB0_29
.LBB0_29:                               @ %return
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_30
.LBB0_30:                               @ %return
	mov	r0, r4
	mov	r1, r5
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	hypot, .Ltmp0-hypot
	.cantunwind
	.fnend

	.align	2
	.type	sq,%function
sq:                                     @ @sq
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r4, r3
	mov	r7, r2
	str	r1, [sp]                @ 4-byte Spill
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r5, r0
	mov	r0, r7
	mov	r1, r4
                                        @ kill: R2<def> R7<kill>
	b	.LBB1_5
.LBB1_5:                                @ %entry
                                        @ kill: R3<def> R4<kill>
	bl	__aeabi_dmul
	mov	r3, #27262976
	mov	r9, r0
	b	.LBB1_6
.LBB1_6:                                @ %entry
	mov	r10, r1
	mov	r0, r7
	mov	r1, r4
	mov	r2, #33554432
	b	.LBB1_7
.LBB1_7:                                @ %entry
	orr	r3, r3, #1073741824
	stm	r5, {r9, r10}
	bl	__aeabi_dmul
	mov	r5, r0
	b	.LBB1_8
.LBB1_8:                                @ %entry
	mov	r6, r1
	mov	r0, r7
	mov	r1, r4
	mov	r2, r5
	b	.LBB1_9
.LBB1_9:                                @ %entry
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_10
.LBB1_10:                               @ %entry
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r5, r0
	b	.LBB1_11
.LBB1_11:                               @ %entry
	mov	r6, r1
	mov	r0, r7
	mov	r1, r4
	mov	r2, r5
	b	.LBB1_12
.LBB1_12:                               @ %entry
	mov	r3, r6
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r4, r1
	b	.LBB1_13
.LBB1_13:                               @ %entry
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r6
	b	.LBB1_14
.LBB1_14:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB1_15
.LBB1_15:                               @ %entry
	mov	r11, r0
	mov	r8, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB1_16
.LBB1_16:                               @ %entry
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, r9
	b	.LBB1_17
.LBB1_17:                               @ %entry
	mov	r3, r10
	bl	__aeabi_dsub
	mov	r2, r11
	mov	r3, r8
	b	.LBB1_18
.LBB1_18:                               @ %entry
	bl	__aeabi_dadd
	mov	r5, r0
	mov	r6, r1
	mov	r0, r7
	b	.LBB1_19
.LBB1_19:                               @ %entry
	mov	r1, r4
	mov	r2, r7
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB1_20
.LBB1_20:                               @ %entry
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	ldr	r2, [sp]                @ 4-byte Reload
	stm	r2, {r0, r1}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	sq, .Ltmp1-sq
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
