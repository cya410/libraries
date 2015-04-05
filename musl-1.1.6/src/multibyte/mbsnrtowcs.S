.section mbsnrtowcs_text
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
	.file	"src/multibyte/mbsnrtowcs.bc"
	.globl	mbsnrtowcs
	.align	2
	.type	mbsnrtowcs,%function
.section bb0_0
mbsnrtowcs:                             @ @mbsnrtowcs
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
	.pad	#1024
	sub	sp, sp, #1024
	mov	r7, r2
	mov	r2, r1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r9, r0
	ldr	r10, [sp, #1072]
	add	r8, sp, #12
	mov	r5, r3
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r6, #0
	ldr	r1, [r2]
	cmp	r9, #0
	mov	r4, r8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	moveq	r5, #256
	movne	r4, r9
	cmp	r5, #0
	str	r1, [sp, #8]
	cmpne	r1, #0
	bne	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:
	str	r2, [sp, #4]            @ 4-byte Spill
	b	.LBB0_15
.section bb0_8
.LBB0_8:
	add	r11, sp, #8
	str	r2, [sp, #4]            @ 4-byte Spill
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	lsr	r2, r7, #2
	cmp	r7, #131
	cmpls	r2, r5
	blo	.LBB0_15
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %while.body
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r2, r5
	mov	r0, r4
	mov	r1, r11
	mov	r3, r10
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %while.body
                                        @   in Loop: Header=BB0_9 Depth=1
	movhs	r2, r5
	sub	r7, r7, r2
	bl	mbsrtowcs
	cmn	r0, #1
	beq	.LBB0_27
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end9
                                        @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, [sp, #8]
	cmp	r4, r8
	mov	r3, r0
	add	r6, r0, r6
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end9
                                        @   in Loop: Header=BB0_9 Depth=1
	moveq	r3, #0
	addne	r4, r4, r0, lsl #2
	sub	r2, r5, r3
	cmp	r5, r3
	beq	.LBB0_16
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end9
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r5, r2
	cmp	r1, #0
	bne	.LBB0_9
	b	.LBB0_16
.section bb0_15
.LBB0_15:
	mov	r2, r5
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %while.end
	cmp	r1, #0
	cmpne	r2, #0
	beq	.LBB0_25
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %while.cond18.preheader
	cmp	r7, #0
	beq	.LBB0_25
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %while.body23.preheader
	rsb	r5, r2, #1
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %while.body23
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r2, r7
	mov	r3, r10
	bl	mbrtowc
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %while.body23
                                        @   in Loop: Header=BB0_19 Depth=1
	mov	r2, r0
	add	r0, r2, #2
	cmp	r0, #2
	bls	.LBB0_23
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end35
                                        @   in Loop: Header=BB0_19 Depth=1
	ldr	r0, [sp, #8]
	add	r6, r6, #1
	cmp	r5, #0
	add	r1, r0, r2
	str	r1, [sp, #8]
	beq	.LBB0_25
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end35
                                        @   in Loop: Header=BB0_19 Depth=1
	subs	r7, r7, r2
	add	r5, r5, #1
	add	r4, r4, #4
	mov	r0, r6
	bne	.LBB0_19
	b	.LBB0_26
.section bb0_23
.LBB0_23:                               @ %if.then27
	mvn	r0, #0
	cmn	r2, #1
	beq	.LBB0_26
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.then27
	mov	r0, #0
	cmp	r2, #0
	strne	r0, [r10]
	streq	r0, [sp, #8]
	b	.LBB0_25
.section bb0_25
.LBB0_25:
	mov	r0, r6
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end39
	cmp	r9, #0
	ldrne	r1, [sp, #8]
	ldrne	r2, [sp, #4]            @ 4-byte Reload
	strne	r1, [r2]
	add	sp, sp, #12
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_27
.LBB0_27:                               @ %while.body.while.endthread-pre-split_crit_edge
	ldr	r1, [sp, #8]
	mvn	r6, #0
	mov	r2, #0
	b	.LBB0_16
.Ltmp0:
	.size	mbsnrtowcs, .Ltmp0-mbsnrtowcs
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
