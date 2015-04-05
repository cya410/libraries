.section find_exidx_text
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
	.file	"arch/arm/src/find_exidx.bc"
	.globl	__gnu_Unwind_Find_exidx
	.align	2
	.type	__gnu_Unwind_Find_exidx,%function
.section bb0_0
__gnu_Unwind_Find_exidx:                @ @__gnu_Unwind_Find_exidx
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r0, .LCPI0_0
	b	.LBB0_2
.LCPI0_0:
	.long	find_exidx
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	add	r1, sp, #4
	bl	dl_iterate_phdr
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #1
	blt	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldr	r0, [sp, #12]
	asr	r1, r0, #31
	add	r0, r0, r1, lsr #29
	asr	r0, r0, #3
	str	r0, [r4]
	ldr	r0, [sp, #8]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %return
	add	sp, sp, #16
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__gnu_Unwind_Find_exidx, .Ltmp0-__gnu_Unwind_Find_exidx
	.cantunwind
	.fnend

	.align	2
	.type	find_exidx,%function
.section bb1_0
find_exidx:                             @ @find_exidx
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
	mov	r12, r0
	mov	lr, #0
	mov	r0, #0
	mov	r8, #0
	ldrh	r1, [r12, #12]
	cmp	r1, #0
	beq	.LBB1_11
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %for.body.lr.ph
	ldr	r0, [r12, #8]
	ldr	r4, [r12]
	add	r1, r1, #1
	mov	lr, #0
	mov	r8, #0
	add	r3, r0, #20
	mov	r0, #0
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r3, #-12]
	ldr	r7, [r3, #-20]
	add	r5, r6, r4
	cmp	r7, #1879048193
	bne	.LBB1_6
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %sw.bb8
                                        @   in Loop: Header=BB1_4 Depth=1
	ldr	lr, [r3]
	mov	r8, r5
	b	.LBB1_10
.section bb1_6
.LBB1_6:                                @ %for.body
                                        @   in Loop: Header=BB1_4 Depth=1
	cmp	r7, #1
	bne	.LBB1_10
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %sw.bb
                                        @   in Loop: Header=BB1_4 Depth=1
	ldr	r7, [r2]
	mov	r6, #0
	cmp	r7, r5
	blo	.LBB1_9
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %land.rhs
                                        @   in Loop: Header=BB1_4 Depth=1
	ldr	r6, [r3]
	add	r6, r6, r5
	cmp	r7, r6
	mov	r6, #0
	movlo	r6, #1
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %land.end
                                        @   in Loop: Header=BB1_4 Depth=1
	cmp	r6, #0
	orrne	r0, r0, #1
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %for.inc
                                        @   in Loop: Header=BB1_4 Depth=1
	sub	r1, r1, #1
	add	r3, r3, #32
	cmp	r1, #1
	bgt	.LBB1_4
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %for.end
	stmib	r2, {r8, lr}
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	find_exidx, .Ltmp1-find_exidx
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
