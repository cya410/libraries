.section iswcntrl_text
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
	.file	"src/ctype/iswcntrl.bc"
	.globl	iswcntrl
	.align	2
	.type	iswcntrl,%function
.section bb0_0
iswcntrl:                               @ @iswcntrl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, r0
	mov	r3, #40
	mov	r0, #1
	bic	r2, r1, #1
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	orr	r3, r3, #8192
	cmp	r2, r3
	moveq	pc, lr
	cmp	r1, #32
	subhs	r2, r1, #127
	cmphs	r2, #33
	blo	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %lor.rhs
	ldr	r0, .LCPI0_0
	add	r1, r1, r0
	mov	r0, #0
	cmp	r1, #3
	movlo	r0, #1
	b	.LBB0_3
.LCPI0_0:
	.long	4294901767              @ 0xffff0007
.section bb0_3
.LBB0_3:                                @ %lor.end
	mov	pc, lr
.Ltmp0:
	.size	iswcntrl, .Ltmp0-iswcntrl
	.cantunwind
	.fnend

	.globl	__iswcntrl_l
	.align	2
	.type	__iswcntrl_l,%function
.section bb1_0
__iswcntrl_l:                           @ @__iswcntrl_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r1, r0
	mov	r3, #40
	mov	r0, #1
	bic	r2, r1, #1
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	orr	r3, r3, #8192
	cmp	r2, r3
	moveq	pc, lr
	cmp	r1, #32
	subhs	r2, r1, #127
	cmphs	r2, #33
	blo	.LBB1_3
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %lor.rhs.i
	ldr	r0, .LCPI1_0
	add	r1, r1, r0
	mov	r0, #0
	cmp	r1, #3
	movlo	r0, #1
	b	.LBB1_3
.LCPI1_0:
	.long	4294901767              @ 0xffff0007
.section bb1_3
.LBB1_3:                                @ %iswcntrl.exit
	mov	pc, lr
.Ltmp1:
	.size	__iswcntrl_l, .Ltmp1-__iswcntrl_l
	.cantunwind
	.fnend


	.weak	iswcntrl_l
iswcntrl_l = __iswcntrl_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
