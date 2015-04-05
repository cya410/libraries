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
	.file	"src/string/wmemmove.bc"
	.globl	wmemmove
	.align	2
	.type	wmemmove,%function
wmemmove:                               @ @wmemmove
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	sub	r3, r0, r1
	asr	r3, r3, #2
	cmp	r3, r2
	bhs	.LBB0_3
	b	.LBB0_1
.LBB0_1:                                @ %while.cond.preheader
	cmp	r2, #0
	moveq	pc, lr
	sub	r12, r1, #4
	sub	r3, r0, #4
	b	.LBB0_2
.LBB0_2:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r12, r2, lsl #2]
	str	r1, [r3, r2, lsl #2]
	subs	r2, r2, #1
	bne	.LBB0_2
	b	.LBB0_6
.LBB0_3:                                @ %while.cond2.preheader
	cmp	r2, #0
	beq	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	mov	r12, r0
	b	.LBB0_5
.LBB0_5:                                @ %while.body5
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	subs	r2, r2, #1
	str	r3, [r12], #4
	bne	.LBB0_5
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	pc, lr
.Ltmp0:
	.size	wmemmove, .Ltmp0-wmemmove
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
