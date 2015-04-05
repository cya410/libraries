.section swab_text
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
	.file	"src/string/swab.bc"
	.globl	swab
	.align	2
	.type	swab,%function
.section bb0_0
swab:                                   @ @swab
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	cmp	r2, #2
	movlt	pc, lr
	add	r0, r0, #1
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r0]
	sub	r2, r2, #2
	cmp	r2, #1
	strb	r3, [r1]
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %for.body
                                        @   in Loop: Header=BB0_1 Depth=1
	ldrb	r3, [r0, #-1]
	add	r0, r0, #2
	strb	r3, [r1, #1]
	add	r1, r1, #2
	bgt	.LBB0_1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.end
	mov	pc, lr
.Ltmp0:
	.size	swab, .Ltmp0-swab
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
