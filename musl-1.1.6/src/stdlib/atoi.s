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
	.file	"src/stdlib/atoi.bc"
	.globl	atoi
	.align	2
	.type	atoi,%function
atoi:                                   @ @atoi
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
.LBB0_1:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r0], #1
	sub	r2, r1, #9
	cmp	r1, #32
	beq	.LBB0_1
	b	.LBB0_2
.LBB0_2:                                @ %while.cond
                                        @   in Loop: Header=BB0_1 Depth=1
	cmp	r2, #5
	blo	.LBB0_1
	b	.LBB0_3
.LBB0_3:                                @ %while.end
	mov	r2, #0
	cmp	r1, #43
	beq	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %while.end
	cmp	r1, #45
	bne	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %sw.bb
	mov	r2, #1
	b	.LBB0_6
.LBB0_6:                                @ %sw.bb2
	ldrb	r1, [r0]
	b	.LBB0_8
.LBB0_7:
	sub	r0, r0, #1
	b	.LBB0_8
.LBB0_8:                                @ %while.cond4.preheader
	sub	r3, r1, #48
	mov	r1, #0
	cmp	r3, #9
	bhi	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @ %while.body7.preheader
	add	r0, r0, #1
	mov	r1, #0
	b	.LBB0_10
.LBB0_10:                               @ %while.body7
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r1, r1, lsl #2
	rsb	r1, r3, r1, lsl #1
	ldrb	r3, [r0], #1
	sub	r3, r3, #48
	cmp	r3, #10
	blo	.LBB0_10
	b	.LBB0_11
.LBB0_11:                               @ %while.end12
	cmp	r2, #0
	rsbeq	r1, r1, #0
	mov	r0, r1
	mov	pc, lr
.Ltmp0:
	.size	atoi, .Ltmp0-atoi
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
