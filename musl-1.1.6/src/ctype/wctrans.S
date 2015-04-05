.section wctrans_text
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
	.file	"src/ctype/wctrans.bc"
	.globl	wctrans
	.align	2
	.type	wctrans,%function
.section bb0_0
wctrans:                                @ @wctrans
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r1, .LCPI0_2
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	strcmp
	b	.LBB0_2
.LCPI0_2:
	.long	.L.str
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	beq	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldr	r1, .LCPI0_3
	mov	r0, r4
	bl	strcmp
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	moveq	r0, #2
	b	.LBB0_4
.LCPI0_3:
	.long	.L.str1
.section bb0_4
.LBB0_4:                                @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	wctrans, .Ltmp0-wctrans
	.cantunwind
	.fnend

	.globl	towctrans
	.align	2
	.type	towctrans,%function
.section bb1_0
towctrans:                              @ @towctrans
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	cmp	r1, #2
	bne	.LBB1_2
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %if.then2
	b	towlower
.section bb1_2
.LBB1_2:                                @ %entry
	cmp	r1, #1
	movne	pc, lr
	b	towupper
.Ltmp1:
	.size	towctrans, .Ltmp1-towctrans
	.cantunwind
	.fnend

	.globl	__wctrans_l
	.align	2
	.type	__wctrans_l,%function
.section bb2_0
__wctrans_l:                            @ @__wctrans_l
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	b	wctrans
.Ltmp2:
	.size	__wctrans_l, .Ltmp2-__wctrans_l
	.cantunwind
	.fnend

	.globl	__towctrans_l
	.align	2
	.type	__towctrans_l,%function
.section bb3_0
__towctrans_l:                          @ @__towctrans_l
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	b	towctrans
.Ltmp3:
	.size	__towctrans_l, .Ltmp3-__towctrans_l
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"toupper"
	.size	.L.str, 8

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"tolower"
	.size	.L.str1, 8


	.weak	wctrans_l
wctrans_l = __wctrans_l
	.weak	towctrans_l
towctrans_l = __towctrans_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
