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
	.file	"src/string/strcmp.bc"
	.globl	strcmp
	.align	2
	.type	strcmp,%function
strcmp:                                 @ @strcmp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	cmp	r2, #0
	beq	.LBB0_5
	b	.LBB0_1
.LBB0_1:                                @ %entry
	cmp	r2, r3
	bne	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                @ %for.inc.preheader
	add	r0, r0, #1
	add	r1, r1, #1
	b	.LBB0_3
.LBB0_3:                                @ %for.inc
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r0], #1
	ldrb	r3, [r1], #1
	cmp	r2, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %for.inc
                                        @   in Loop: Header=BB0_3 Depth=1
	cmp	r2, r3
	beq	.LBB0_3
	b	.LBB0_5
.LBB0_5:                                @ %for.end
	sub	r0, r2, r3
	mov	pc, lr
.Ltmp0:
	.size	strcmp, .Ltmp0-strcmp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
