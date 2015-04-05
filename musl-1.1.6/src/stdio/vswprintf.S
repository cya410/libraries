.section vswprintf_text
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
	.file	"src/stdio/vswprintf.bc"
	.globl	vswprintf
	.align	2
	.type	vswprintf,%function
.section bb0_0
vswprintf:                              @ @vswprintf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#400
	sub	sp, sp, #400
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	str	r0, [sp]
	mov	r6, r2
	mov	r1, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r2, #136
	mov	r5, r3
	sub	r0, r4, #1
	str	r0, [sp, #4]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	add	r0, sp, #264
	bl	memset
	mov	r0, #255
	mvn	r7, #0
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	cmp	r4, #0
	strb	r0, [sp, #339]
	ldr	r0, .LCPI0_0
	str	r0, [sp, #300]
	b	.LBB0_7
.LCPI0_0:
	.long	sw_write
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r0, #256
	str	r0, [sp, #312]
	add	r0, sp, #8
	str	r0, [sp, #308]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %entry
	mov	r0, sp
	str	r7, [sp, #340]
	str	r0, [sp, #348]
	beq	.LBB0_14
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.else
	blt	.LBB0_13
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end4
	add	r8, sp, #264
	mov	r1, r6
	mov	r2, r5
	mov	r0, r8
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end4
	bl	vfwprintf
	mov	r7, r0
	mov	r0, r8
	mov	r1, #0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end4
	mov	r2, #0
	bl	sw_write
	cmp	r7, r4
	mvnhs	r7, #0
	b	.LBB0_14
.section bb0_13
.LBB0_13:                               @ %if.then2
	bl	__errno_location
	mov	r1, #75
	str	r1, [r0]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %cleanup
	mov	r0, r7
	add	sp, sp, #400
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	vswprintf, .Ltmp0-vswprintf
	.cantunwind
	.fnend

	.align	2
	.type	sw_write,%function
.section bb1_0
sw_write:                               @ @sw_write
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r5, r1
	ldr	r1, [r0, #28]
	ldr	r7, [r0, #84]
	mov	r4, r2
	cmp	r1, r5
	beq	.LBB1_4
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %land.lhs.true
	ldr	r2, [r0, #20]
	sub	r2, r2, r1
	bl	sw_write
	mov	r1, r0
	mvn	r0, #0
	cmn	r1, #1
	beq	.LBB1_11
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %while.cond.preheader
	mov	r8, #0
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB1_10
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %while.cond.preheader
	ldr	r0, [r7, #4]
	cmp	r0, #0
	mov	r0, #0
	beq	.LBB1_10
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %land.rhs.lr.ph
	ldr	r1, [r7]
	mov	r6, r4
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r1
	mov	r1, r5
	mov	r2, r6
	bl	mbtowc
	cmp	r0, #0
	blt	.LBB1_10
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %while.body
                                        @   in Loop: Header=BB1_7 Depth=1
	ldr	r1, [r7, #4]
	cmp	r6, r0
	subne	r6, r6, r0
	addne	r5, r5, r0
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %while.body
                                        @   in Loop: Header=BB1_7 Depth=1
	sub	r2, r1, #1
	str	r2, [r7, #4]
	cmpne	r2, #0
	ldr	r1, [r7]
	add	r1, r1, #4
	str	r1, [r7]
	bne	.LBB1_7
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %while.end
	ldr	r1, [r7]
	cmp	r0, #0
	movlt	r4, r0
	mov	r0, r4
	str	r8, [r1]
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	sw_write, .Ltmp1-sw_write
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
