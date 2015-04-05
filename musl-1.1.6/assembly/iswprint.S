.section iswprint_text
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
	.file	"src/ctype/iswprint.bc"
	.globl	iswprint
	.align	2
	.type	iswprint,%function
.section bb0_0
iswprint:                               @ @iswprint
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	cmp	r0, #254
	bhi	.LBB0_2
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %if.then
	add	r0, r0, #1
	mov	r1, #0
	and	r0, r0, #127
	cmp	r0, #32
	movhi	r1, #1
	b	.LBB0_8
.section bb0_2
.LBB0_2:                                @ %if.end
	ldr	r12, .LCPI0_2
	mov	r2, #249
	mov	r1, #1
	sub	r3, r0, #57344
	orr	r2, r2, #7936
	cmp	r3, r2
	blo	.LBB0_8
	b	.LBB0_3
.LCPI0_2:
	.long	4294959062              @ 0xffffdfd6
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r2, #40
	orr	r2, r2, #8192
	cmp	r0, r2
	movhs	r3, #214
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	addhs	r2, r0, r12
	orrhs	r3, r3, #46848
	cmphs	r2, r3
	blo	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end11
	mov	r1, #254
	mov	r3, #0
	orr	r1, r1, #65280
	and	r2, r0, r1
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end11
	cmp	r2, r1
	ldr	r2, .LCPI0_3
	mov	r1, #0
	movne	r1, #1
	b	.LBB0_7
.LCPI0_3:
	.long	4294901764              @ 0xffff0004
.section bb0_7
.LBB0_7:                                @ %if.end11
	add	r0, r0, r2
	mov	r2, #4
	orr	r2, r2, #1048576
	cmp	r0, r2
	movlo	r3, #1
	and	r0, r3, r1
	mov	pc, lr
.section bb0_8
.LBB0_8:                                @ %return
	mov	r0, r1
	mov	pc, lr
.Ltmp0:
	.size	iswprint, .Ltmp0-iswprint
	.cantunwind
	.fnend

	.globl	__iswprint_l
	.align	2
	.type	__iswprint_l,%function
.section bb1_0
__iswprint_l:                           @ @__iswprint_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	iswprint
.Ltmp1:
	.size	__iswprint_l, .Ltmp1-__iswprint_l
	.cantunwind
	.fnend


	.weak	iswprint_l
iswprint_l = __iswprint_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
