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
	.file	"src/env/unsetenv.bc"
	.globl	unsetenv
	.align	2
	.type	unsetenv,%function
unsetenv:                               @ @unsetenv
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
                                        @ kill: R0<def> R4<kill>
	b	.LBB0_3
.LBB0_3:                                @ %entry
	bl	strlen
	mov	r10, r0
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %lor.lhs.false
	mov	r0, r4
	mov	r1, #61
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	mvn	r6, #0
	str	r1, [r0]
	b	.LBB0_26
.LBB0_6:
	ldr	r7, .LCPI0_2
	ldr	r8, .LCPI0_3
	mov	r2, #0
	mov	r9, #4
	b	.LBB0_8
.LCPI0_2:
	.long	__environ
.LCPI0_3:
	.long	__env_map
.LBB0_7:                                @ %for.inc
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r2, r5, #1
	b	.LBB0_8
.LBB0_8:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_15 Depth 2
                                        @     Child Loop BB0_20 Depth 2
                                        @     Child Loop BB0_24 Depth 2
	ldr	r0, [r7]
	mov	r5, r2
	mov	r6, #0
	ldr	r1, [r0, r5, lsl #2]
	cmp	r1, #0
	beq	.LBB0_26
	b	.LBB0_9
.LBB0_9:                                @ %land.rhs
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r0, r4
	mov	r2, r10
	bl	memcmp
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_10
.LBB0_10:                               @ %lor.rhs
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [r7]
	ldr	r1, [r0, r5, lsl #2]
	ldrb	r2, [r1, r10]
	cmp	r2, #61
	bne	.LBB0_7
	b	.LBB0_11
.LBB0_11:                               @ %for.end
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r1, #0
	beq	.LBB0_26
	b	.LBB0_12
.LBB0_12:                               @ %if.then13
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.LBB0_23
	b	.LBB0_13
.LBB0_13:                               @ %for.cond16.preheader
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r2, [r3]
	mov	r0, #0
	mov	r6, #0
	cmp	r2, #0
	beq	.LBB0_18
	b	.LBB0_14
.LBB0_14:                               @ %land.rhs19.preheader
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r3, r3, #4
	mov	r6, #0
	b	.LBB0_15
.LBB0_15:                               @ %land.rhs19
                                        @   Parent Loop BB0_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	r2, r1
	beq	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               @ %for.inc26
                                        @   in Loop: Header=BB0_15 Depth=2
	ldr	r2, [r3, r6, lsl #2]
	add	r6, r6, #1
	mov	r0, #0
	cmp	r2, #0
	bne	.LBB0_15
	b	.LBB0_18
.LBB0_17:                               @   in Loop: Header=BB0_8 Depth=1
	mov	r0, r1
	b	.LBB0_18
.LBB0_18:                               @ %for.end28
                                        @   in Loop: Header=BB0_8 Depth=1
	bl	free
	ldr	r0, [r8]
	mov	r1, r0
	ldr	r2, [r1, r6, lsl #2]!
	cmp	r2, #0
	beq	.LBB0_22
	b	.LBB0_19
.LBB0_19:                               @ %for.body33.preheader
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r2, r9, r6, lsl #2
	b	.LBB0_20
.LBB0_20:                               @ %for.body33
                                        @   Parent Loop BB0_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r0, r2]
	add	r6, r6, #1
	str	r0, [r1]
	ldr	r0, [r8]
	b	.LBB0_21
.LBB0_21:                               @ %for.body33
                                        @   in Loop: Header=BB0_20 Depth=2
	ldr	r3, [r0, r2]
	add	r1, r0, r6, lsl #2
	add	r2, r2, #4
	cmp	r3, #0
	bne	.LBB0_20
	b	.LBB0_22
.LBB0_22:                               @ %for.cond40.preheader
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [r7]
	mov	r2, #0
	ldr	r1, [r0, r5, lsl #2]
	cmp	r1, #0
	beq	.LBB0_8
	b	.LBB0_23
.LBB0_23:                               @ %for.body43.lr.ph
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r1, r9, r5, lsl #2
	add	r3, r0, r5, lsl #2
	b	.LBB0_24
.LBB0_24:                               @ %for.body43
                                        @   Parent Loop BB0_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r0, r1]
	add	r5, r5, #1
	mov	r2, #0
	str	r0, [r3]
	b	.LBB0_25
.LBB0_25:                               @ %for.body43
                                        @   in Loop: Header=BB0_24 Depth=2
	ldr	r0, [r7]
	ldr	r6, [r0, r1]
	add	r3, r0, r5, lsl #2
	add	r1, r1, #4
	cmp	r6, #0
	bne	.LBB0_24
	b	.LBB0_8
.LBB0_26:                               @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	unsetenv, .Ltmp0-unsetenv
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
