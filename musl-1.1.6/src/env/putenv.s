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
	.file	"src/env/putenv.bc"
	.globl	__putenv
	.align	2
	.type	__putenv,%function
__putenv:                               @ @__putenv
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
	mov	r8, r1
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r1, #61
                                        @ kill: R0<def> R4<kill>
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_15
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	mvn	r9, #0
	cmp	r0, r4
	beq	.LBB0_27
	b	.LBB0_5
.LBB0_5:                                @ %for.cond.preheader
	ldr	r10, .LCPI0_3
	mov	r6, #0
	mov	r5, #0
	ldr	r1, [r10]
	ldr	r1, [r1]
	cmp	r1, #0
	beq	.LBB0_9
	b	.LBB0_6
.LCPI0_3:
	.long	__environ
.LBB0_6:
	rsb	r2, r4, #1
	mov	r5, #0
	add	r7, r2, r0
	b	.LBB0_7
.LBB0_7:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r2, r7
	bl	memcmp
	cmp	r0, #0
	b	.LBB0_8
.LBB0_8:                                @ %land.rhs
                                        @   in Loop: Header=BB0_7 Depth=1
	ldrne	r0, [r10]
	addne	r0, r0, r5, lsl #2
	addne	r5, r5, #1
	ldrne	r1, [r0, #4]
	cmpne	r1, #0
	bne	.LBB0_7
	b	.LBB0_9
.LBB0_9:                                @ %for.end
	cmp	r8, #0
	beq	.LBB0_21
	b	.LBB0_10
.LBB0_10:                               @ %if.then9
	ldr	r7, .LCPI0_4
	ldr	r0, [r7]
	cmp	r0, #0
	beq	.LBB0_16
	b	.LBB0_11
.LCPI0_4:
	.long	__env_map
.LBB0_11:                               @ %for.cond17.preheader
	ldr	r2, [r0]
	mov	r6, #0
	cmp	r2, #0
	beq	.LBB0_19
	b	.LBB0_12
.LBB0_12:                               @ %land.rhs20.lr.ph
	ldr	r1, [r10]
	add	r3, r0, #4
	mov	r6, #0
	ldr	r1, [r1, r5, lsl #2]
	b	.LBB0_13
.LBB0_13:                               @ %land.rhs20
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r2, r1
	beq	.LBB0_17
	b	.LBB0_14
.LBB0_14:                               @ %for.inc26
                                        @   in Loop: Header=BB0_13 Depth=1
	ldr	r2, [r3, r6, lsl #2]
	add	r6, r6, #1
	cmp	r2, #0
	bne	.LBB0_13
	b	.LBB0_19
.LBB0_15:                               @ %if.then
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	unsetenv
.LBB0_16:                               @ %if.then11
	mov	r0, #2
	mov	r1, #4
	bl	calloc
	cmp	r0, #0
	str	r0, [r7]
	strne	r4, [r0]
	b	.LBB0_21
.LBB0_17:                               @ %for.end28
	cmp	r1, #0
	beq	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               @ %if.else40
	mov	r0, r1
	bl	free
	b	.LBB0_21
.LBB0_19:                               @ %if.then31
	mov	r1, #8
	add	r1, r1, r6, lsl #2
	bl	realloc
	cmp	r0, #0
	beq	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %if.then35
	str	r0, [r7]
	str	r4, [r0, r6, lsl #2]
	mov	r1, #0
	ldr	r0, [r7]
	add	r0, r0, r6, lsl #2
	str	r1, [r0, #4]
	b	.LBB0_21
.LBB0_21:                               @ %if.end44
	ldr	r0, [r10]
	ldr	r1, [r0, r5, lsl #2]
	cmp	r1, #0
	bne	.LBB0_26
	b	.LBB0_22
.LBB0_22:                               @ %if.then47
	mov	r0, #8
	add	r0, r0, r5, lsl #2
	bl	malloc
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB0_28
	b	.LBB0_23
.LBB0_23:                               @ %if.end58
	ldr	r1, [r10]
	lsl	r2, r5, #2
	mov	r0, r7
	bl	memcpy
	b	.LBB0_24
.LBB0_24:                               @ %if.end58
	ldr	r6, .LCPI0_6
	mov	r0, r7
	mov	r1, #0
	str	r4, [r0, r5, lsl #2]!
	b	.LBB0_25
.LCPI0_6:
	.long	__putenv.oldenv
.LBB0_25:                               @ %if.end58
	str	r1, [r0, #4]
	str	r7, [r10]
	ldr	r0, [r6]
	bl	free
	ldr	r0, [r10]
	str	r0, [r6]
	b	.LBB0_26
.LBB0_26:                               @ %if.end64
	mov	r9, #0
	str	r4, [r0, r5, lsl #2]
	b	.LBB0_27
.LBB0_27:                               @ %return
	mov	r0, r9
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.LBB0_28:                               @ %if.then52
	cmp	r8, #0
	beq	.LBB0_27
	b	.LBB0_29
.LBB0_29:                               @ %if.then52
	ldr	r0, .LCPI0_5
	ldr	r0, [r0]
	cmp	r0, #0
	movne	r1, #0
	strne	r1, [r0, r6, lsl #2]
	b	.LBB0_27
.LCPI0_5:
	.long	__env_map
.Ltmp0:
	.size	__putenv, .Ltmp0-__putenv
	.cantunwind
	.fnend

	.globl	putenv
	.align	2
	.type	putenv,%function
putenv:                                 @ @putenv
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r1, #0
	b	__putenv
.Ltmp1:
	.size	putenv, .Ltmp1-putenv
	.cantunwind
	.fnend

	.type	__putenv.oldenv,%object @ @__putenv.oldenv
	.local	__putenv.oldenv
	.comm	__putenv.oldenv,4,4
	.type	__env_map,%object       @ @__env_map
	.comm	__env_map,4,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
