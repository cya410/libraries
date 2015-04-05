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
	.file	"src/math/scalb.bc"
	.globl	scalb
	.align	2
	.type	scalb,%function
scalb:                                  @ @scalb
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	mov	r0, #267386880
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r10, r1
	mov	r6, r2
	mov	r5, r3
	mov	r3, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r1, #0
	bic	r2, r10, #-2147483648
	orr	r0, r0, #1879048192
	mov	r7, r4
	b	.LBB0_5
.LBB0_5:                                @ %entry
	cmp	r2, r0
	movhi	r3, #1
	cmp	r4, #0
	movne	r7, #1
	b	.LBB0_6
.LBB0_6:                                @ %entry
	cmp	r2, r0
	movne	r7, r3
	cmp	r7, #0
	bne	.LBB0_16
	b	.LBB0_7
.LBB0_7:                                @ %cond.true18
	bic	r2, r5, #-2147483648
	mov	r3, #0
	cmp	r2, r0
	movlo	r3, #1
	b	.LBB0_8
.LBB0_8:                                @ %cond.true18
	cmp	r6, #0
	moveq	r1, #1
	cmp	r2, r0
	movne	r1, r3
	cmp	r1, #0
	beq	.LBB0_16
	b	.LBB0_9
.LBB0_9:                                @ %cond.true34
	and	r1, r5, r0
	cmp	r1, r0
	bhs	.LBB0_13
	b	.LBB0_10
.LBB0_10:                               @ %if.end48
	mov	r0, r6
	mov	r1, r5
	bl	rint
	mov	r2, r6
	b	.LBB0_11
.LBB0_11:                               @ %if.end48
	mov	r3, r5
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_20
	b	.LBB0_12
.LBB0_12:                               @ %if.then52
	mov	r0, r6
	mov	r1, r5
	mov	r2, r6
	mov	r3, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_19
.LBB0_13:                               @ %if.then43
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_14
.LBB0_14:                               @ %if.then43
	bl	__aeabi_dcmple
	mov	r8, r0
	mov	r0, r6
	mov	r1, r5
	b	.LBB0_15
.LBB0_15:                               @ %if.then43
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpun
	orrs	r0, r0, r8
	bne	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               @ %if.then
	mov	r0, r4
	mov	r1, r10
	mov	r2, r6
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_17
.LBB0_17:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.LBB0_18:                               @ %if.else
	eor	r3, r5, #-2147483648
	mov	r0, r4
	mov	r1, r10
	mov	r2, r6
	b	.LBB0_19
.LBB0_19:                               @ %return
	bl	__aeabi_ddiv
	b	.LBB0_17
.LBB0_20:                               @ %if.end56
	ldr	r8, .LCPI0_3
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_21
.LCPI0_3:
	.long	1089453312              @ 0x40efbd00
.LBB0_21:                               @ %if.end56
	mov	r3, r8
	bl	__aeabi_dcmple
	mov	r9, r0
	mov	r0, r6
	b	.LBB0_22
.LBB0_22:                               @ %if.end56
	mov	r1, r5
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dcmpun
	orrs	r0, r0, r9
	bne	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               @ %if.then59
	mov	r2, #488
	orr	r2, r2, #64512
	b	.LBB0_29
.LBB0_24:                               @ %if.end61
	ldr	r8, .LCPI0_4
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_25
.LCPI0_4:
	.long	3236936960              @ 0xc0efbd00
.LBB0_25:                               @ %if.end61
	mov	r3, r8
	bl	__aeabi_dcmpge
	mov	r9, r0
	mov	r0, r6
	b	.LBB0_26
.LBB0_26:                               @ %if.end61
	mov	r1, r5
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dcmpun
	orrs	r0, r0, r9
	bne	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               @ %if.then65
	ldr	r2, .LCPI0_5
	b	.LBB0_29
.LCPI0_5:
	.long	4294902296              @ 0xffff0218
.LBB0_28:                               @ %if.end67
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_d2iz
	mov	r2, r0
	b	.LBB0_29
.LBB0_29:                               @ %if.then59
	mov	r0, r4
	mov	r1, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	scalbn
.Ltmp0:
	.size	scalb, .Ltmp0-scalb
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
