.section lsearch_text
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
	.file	"src/search/lsearch.bc"
	.globl	lsearch
	.align	2
	.type	lsearch,%function
.section bb0_0
lsearch:                                @ @lsearch
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
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r9, r2
	mov	r10, r3
	mov	r8, r1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r11, r0
	ldr	r7, [r9]
	cmp	r7, #0
	beq	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:
	ldr	r5, [sp, #40]
	mov	r4, #0
	mov	r6, r8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r11
	mov	lr, pc
	mov	pc, r5
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.cond
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r4, r4, #1
	add	r6, r6, r10
	cmp	r4, r7
	blo	.LBB0_6
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.end
	add	r0, r7, #1
	mov	r1, r11
	mov	r2, r10
	str	r0, [r9]
	mla	r0, r7, r10, r8
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	memcpy
.section bb0_9
.LBB0_9:                                @ %return
	mov	r0, r6
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	lsearch, .Ltmp0-lsearch
	.cantunwind
	.fnend

	.globl	lfind
	.align	2
	.type	lfind,%function
.section bb1_0
lfind:                                  @ @lfind
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	ldr	r7, [r2]
	mov	r9, r0
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r8, r3
	mov	r5, r1
	mov	r0, #0
	cmp	r7, #0
	beq	.LBB1_8
	b	.LBB1_4
.section bb1_4
.LBB1_4:
	ldr	r6, [sp, #32]
	mov	r4, #0
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r9
	mov	lr, pc
	mov	pc, r6
	cmp	r0, #0
	beq	.LBB1_7
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %for.cond
                                        @   in Loop: Header=BB1_5 Depth=1
	add	r4, r4, #1
	add	r5, r5, r8
	mov	r0, #0
	cmp	r4, r7
	blo	.LBB1_5
	b	.LBB1_8
.section bb1_7
.LBB1_7:
	mov	r0, r5
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %return
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	lfind, .Ltmp1-lfind
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
