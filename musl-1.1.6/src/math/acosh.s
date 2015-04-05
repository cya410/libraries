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
	.file	"src/math/acosh.bc"
	.globl	acosh
	.align	2
	.type	acosh,%function
acosh:                                  @ @acosh
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r0, #255
	mov	r4, r1
	mov	r1, #0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	orr	r0, r0, #1792
	and	r0, r0, r4, lsr #20
	cmp	r1, r0, lsr #10
	bne	.LBB0_12
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r3, #267386880
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_6
.LBB0_6:                                @ %if.then
	mov	r2, r4
	mov	r3, r5
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_7
.LBB0_7:                                @ %if.then
	bl	__aeabi_dmul
	mov	r6, r0
	mov	r7, r1
	mov	r0, r4
	b	.LBB0_8
.LBB0_8:                                @ %if.then
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_9
.LBB0_9:                                @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_10
.LBB0_10:                               @ %if.then
	bl	__aeabi_dadd
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_11
.LBB0_11:                               @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	pop	{r4, r5, r6, r7, r8, lr}
	b	log1p
.LBB0_12:                               @ %if.end
	mov	r1, #24
	orr	r1, r1, #1024
	cmp	r0, r1
	bhi	.LBB0_21
	b	.LBB0_13
.LBB0_13:                               @ %if.then10
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_14
.LBB0_14:                               @ %if.then10
	bl	__aeabi_dadd
	mov	r8, r0
	mov	r7, r1
	mov	r0, r5
	b	.LBB0_15
.LBB0_15:                               @ %if.then10
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB0_16
.LBB0_16:                               @ %if.then10
	mov	r6, #267386880
	mov	r2, #0
	orr	r6, r6, #-1342177280
	mov	r3, r6
	b	.LBB0_17
.LBB0_17:                               @ %if.then10
	bl	__aeabi_dadd
	bl	sqrt
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_18
.LBB0_18:                               @ %if.then10
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	b	.LBB0_19
.LBB0_19:                               @ %if.then10
	mov	r1, r6
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_20
.LBB0_20:                               @ %if.then10
	mov	r0, r8
	mov	r1, r7
	bl	__aeabi_dadd
	pop	{r4, r5, r6, r7, r8, lr}
	b	log
.LBB0_21:                               @ %return
	mov	r0, r5
	mov	r1, r4
	bl	log
	ldr	r2, .LCPI0_2
	ldr	r3, .LCPI0_3
	bl	__aeabi_dadd
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.LCPI0_2:
	.long	4277811695              @ 0xfefa39ef
.LCPI0_3:
	.long	1072049730              @ 0x3fe62e42
.Ltmp0:
	.size	acosh, .Ltmp0-acosh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
