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
	.file	"src/string/strlen.bc"
	.globl	strlen
	.align	2
	.type	strlen,%function
strlen:                                 @ @strlen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, r0
	tst	r0, #3
	beq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	mov	r1, r0
	b	.LBB0_2
.LBB0_2:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.LBB0_8
	b	.LBB0_3
.LBB0_3:                                @ %for.inc
                                        @   in Loop: Header=BB0_2 Depth=1
	add	r1, r1, #1
	tst	r1, #3
	bne	.LBB0_2
	b	.LBB0_4
.LBB0_4:                                @ %for.end
	sub	r1, r1, #4
	b	.LBB0_5
.LBB0_5:                                @ %for.cond2
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1, #4]!
	ldr	r3, .LCPI0_2
	add	r3, r2, r3
	bic	r12, r3, r2
	ldr	r3, .LCPI0_3
	tst	r12, r3
	beq	.LBB0_5
	b	.LBB0_7
.LCPI0_2:
	.long	4278124287              @ 0xfefefeff
.LCPI0_3:
	.long	2155905152              @ 0x80808080
.LBB0_6:                                @ %for.cond9.for.cond9_crit_edge
                                        @   in Loop: Header=BB0_7 Depth=1
	ldrb	r2, [r1, #1]
	add	r3, r1, #1
	mov	r1, r3
	b	.LBB0_7
.LBB0_7:                                @ %for.cond9
                                        @ =>This Inner Loop Header: Depth=1
	tst	r2, #255
	bne	.LBB0_6
	b	.LBB0_8
.LBB0_8:                                @ %return
	sub	r0, r1, r0
	mov	pc, lr
.Ltmp0:
	.size	strlen, .Ltmp0-strlen
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
