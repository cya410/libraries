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
	.file	"src/multibyte/wcsnrtombs.bc"
	.globl	wcsnrtombs
	.align	2
	.type	wcsnrtombs,%function
wcsnrtombs:                             @ @wcsnrtombs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#268
	sub	sp, sp, #268
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, r2
	mov	r9, r0
	ldr	r2, [r1]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	add	r8, sp, #12
	mov	r4, r3
	mov	r11, #0
	cmp	r9, #0
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r6, r8
	moveq	r4, #256
	movne	r6, r9
	cmp	r4, #0
	str	r2, [sp, #8]
	cmpne	r2, #0
	bne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	str	r1, [sp, #4]            @ 4-byte Spill
	b	.LBB0_14
.LBB0_7:
	add	r10, sp, #8
	str	r1, [sp, #4]            @ 4-byte Spill
	b	.LBB0_8
.LBB0_8:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, r4
	cmplo	r7, #33
	blo	.LBB0_14
	b	.LBB0_9
.LBB0_9:                                @ %while.body
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r7, r4
	mov	r2, r7
	mov	r0, r6
	mov	r1, r10
	b	.LBB0_10
.LBB0_10:                               @ %while.body
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r3, #0
	movhs	r2, r4
	sub	r7, r7, r2
	bl	wcsrtombs
	cmn	r0, #1
	beq	.LBB0_26
	b	.LBB0_11
.LBB0_11:                               @ %if.end9
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r2, [sp, #8]
	cmp	r6, r8
	mov	r1, r0
	add	r11, r0, r11
	b	.LBB0_12
.LBB0_12:                               @ %if.end9
                                        @   in Loop: Header=BB0_8 Depth=1
	moveq	r1, #0
	addne	r6, r6, r0
	sub	r5, r4, r1
	cmp	r4, r1
	beq	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               @ %if.end9
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r4, r5
	cmp	r2, #0
	bne	.LBB0_8
	b	.LBB0_15
.LBB0_14:
	mov	r5, r4
	b	.LBB0_15
.LBB0_15:                               @ %while.end
	cmp	r2, #0
	cmpne	r5, #0
	beq	.LBB0_24
	b	.LBB0_16
.LBB0_16:                               @ %while.cond18.preheader
	cmp	r7, #0
	beq	.LBB0_24
	b	.LBB0_17
.LBB0_17:                               @ %while.body23.preheader
	rsb	r4, r7, #1
	b	.LBB0_18
.LBB0_18:                               @ %while.body23
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r2]
	mov	r0, r6
	mov	r2, #0
	bl	wcrtomb
	b	.LBB0_19
.LBB0_19:                               @ %while.body23
                                        @   in Loop: Header=BB0_18 Depth=1
	mov	r1, r0
	add	r0, r1, #1
	cmp	r0, #1
	bls	.LBB0_22
	b	.LBB0_20
.LBB0_20:                               @ %if.end32
                                        @   in Loop: Header=BB0_18 Depth=1
	ldr	r0, [sp, #8]
	add	r11, r1, r11
	cmp	r5, r1
	add	r2, r0, #4
	str	r2, [sp, #8]
	beq	.LBB0_24
	b	.LBB0_21
.LBB0_21:                               @ %if.end32
                                        @   in Loop: Header=BB0_18 Depth=1
	add	r0, r4, #1
	cmp	r4, #0
	sub	r5, r5, r1
	add	r6, r6, r1
	mov	r4, r0
	mov	r0, r11
	bne	.LBB0_18
	b	.LBB0_25
.LBB0_22:                               @ %if.then27
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB0_25
	b	.LBB0_23
.LBB0_23:                               @ %if.then29
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB0_24
.LBB0_24:
	mov	r0, r11
	b	.LBB0_25
.LBB0_25:                               @ %if.end37
	cmp	r9, #0
	ldrne	r1, [sp, #8]
	ldrne	r2, [sp, #4]            @ 4-byte Reload
	strne	r1, [r2]
	add	sp, sp, #268
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_26:                               @ %while.body.while.endthread-pre-split_crit_edge
	ldr	r2, [sp, #8]
	mvn	r11, #0
	mov	r5, #0
	b	.LBB0_15
.Ltmp0:
	.size	wcsnrtombs, .Ltmp0-wcsnrtombs
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
