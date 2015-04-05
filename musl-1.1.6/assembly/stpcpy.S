.section stpcpy_text
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
	.file	"src/string/stpcpy.bc"
	.globl	__stpcpy
	.align	2
	.type	__stpcpy,%function
.section bb0_0
__stpcpy:                               @ @__stpcpy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	eor	r2, r1, r0
	tst	r2, #3
	bne	.LBB0_7
	b	.LBB0_2
.section bb0_1
.LBB0_1:                                @ %for.inc
                                        @   in Loop: Header=BB0_2 Depth=1
	add	r0, r0, #1
	add	r1, r1, #1
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %for.cond.preheader
                                        @ =>This Inner Loop Header: Depth=1
	tst	r1, #3
	beq	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.body
                                        @   in Loop: Header=BB0_2 Depth=1
	ldrb	r2, [r1]
	strb	r2, [r0]
	cmp	r2, #0
	bne	.LBB0_1
	b	.LBB0_9
.section bb0_4
.LBB0_4:                                @ %for.end
	ldr	r2, [r1]
	b	.LBB0_6
.section bb0_5
.LBB0_5:                                @ %for.inc10
                                        @   in Loop: Header=BB0_6 Depth=1
	str	r2, [r0], #4
	ldr	r2, [r1, #4]!
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.inc10
                                        @ =>This Inner Loop Header: Depth=1
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
.section bb0_7
.LBB0_7:                                @ %for.cond15.preheader
	ldrb	r2, [r1]
	cmp	r2, #0
	strb	r2, [r0]
	moveq	pc, lr
	add	r1, r1, #1
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.inc18
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r1], #1
	strb	r2, [r0, #1]!
	cmp	r2, #0
	bne	.LBB0_8
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	mov	pc, lr
.Ltmp0:
	.size	__stpcpy, .Ltmp0-__stpcpy
	.cantunwind
	.fnend


	.weak	stpcpy
stpcpy = __stpcpy
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
