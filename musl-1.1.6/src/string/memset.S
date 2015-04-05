.section memset_text
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
	.file	"src/string/memset.bc"
	.globl	memset
	.align	2
	.type	memset,%function
.section bb0_0
memset:                                 @ @memset
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	cmp	r2, #0
	beq	.LBB0_17
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %if.end
	add	r3, r2, r0
	cmp	r2, #3
	strb	r1, [r3, #-1]
	strb	r1, [r0]
	blo	.LBB0_17
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end4
	strb	r1, [r3, #-2]
	strb	r1, [r0, #1]
	strb	r1, [r3, #-3]
	strb	r1, [r0, #2]
	cmp	r2, #7
	blo	.LBB0_17
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end16
	strb	r1, [r3, #-4]
	strb	r1, [r0, #3]
	cmp	r2, #9
	blo	.LBB0_17
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end24
	ldr	r3, .LCPI0_0
	and	r12, r1, #255
	mul	r1, r12, r3
	rsb	r3, r0, #0
	b	.LBB0_5
.LCPI0_0:
	.long	16843009                @ 0x1010101
.section bb0_5
.LBB0_5:                                @ %if.end24
	mov	r12, r0
	and	r3, r3, #3
	sub	r2, r2, r3
	str	r1, [r12, r3]!
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end24
	bic	lr, r2, #3
	orr	r2, lr, r3
	cmp	lr, #9
	add	r2, r2, r0
	str	r1, [r2, #-4]
	blo	.LBB0_17
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end36
	orr	r4, r3, #4
	cmp	lr, #25
	str	r1, [r0, r4]
	orr	r4, r3, #8
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end36
	str	r1, [r0, r4]
	str	r1, [r2, #-12]
	str	r1, [r2, #-8]
	blo	.LBB0_17
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end46
	orr	r4, r3, #12
	str	r1, [r0, r4]
	orr	r4, r3, #16
	str	r1, [r0, r4]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end46
	orr	r4, r3, #20
	str	r1, [r0, r4]
	orr	r4, r3, #24
	str	r1, [r0, r4]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end46
	str	r1, [r2, #-28]
	str	r1, [r2, #-24]
	str	r1, [r2, #-20]
	str	r1, [r2, #-16]
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end46
	and	r2, r12, #4
	orr	r12, r2, #24
	sub	r2, lr, r12
	cmp	r2, #32
	blo	.LBB0_17
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.body.lr.ph
	orr	r3, r12, r3
	add	r3, r0, r3
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.body
                                        @   in Loop: Header=BB0_14 Depth=1
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %for.body
                                        @   in Loop: Header=BB0_14 Depth=1
	sub	r2, r2, #32
	add	r3, r3, #32
	cmp	r2, #31
	bhi	.LBB0_14
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	memset, .Ltmp0-memset
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
