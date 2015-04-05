.section bsearch_text
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
	.file	"src/stdlib/bsearch.bc"
	.globl	bsearch
	.align	2
	.type	bsearch,%function
.section bb0_0
bsearch:                                @ @bsearch
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
	mov	r10, r2
	mov	r8, r3
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r9, r0
	cmp	r10, #0
	beq	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:
	ldr	r6, [sp, #32]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	lsr	r7, r10, #1
	mov	r0, r9
	mla	r4, r7, r8, r5
	mov	r1, r4
	mov	lr, pc
	mov	pc, r6
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.else
                                        @   in Loop: Header=BB0_5 Depth=1
	cmp	r10, #1
	beq	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.else4
                                        @   in Loop: Header=BB0_5 Depth=1
	cmp	r0, #0
	subge	r7, r10, r7
	movge	r5, r4
	mov	r10, r7
	cmp	r7, #0
	bne	.LBB0_5
	b	.LBB0_8
.section bb0_8
.LBB0_8:
	mov	r4, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	bsearch, .Ltmp0-bsearch
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
