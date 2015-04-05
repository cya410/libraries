.section iswctype_text
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
	.file	"src/ctype/iswctype.bc"
	.globl	iswctype
	.align	2
	.type	iswctype,%function
.section bb0_0
iswctype:                               @ @iswctype
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	sub	r2, r1, #1
	mov	r1, #0
	cmp	r2, #11
	bhi	.LBB0_7
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	lsl	r1, r2, #2
	adr	r2, .LJTI0_0_0
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_2
	.long	.LBB0_3
	.long	.LBB0_4
	.long	.LBB0_5
	.long	.LBB0_6
	.long	.LBB0_8
	.long	.LBB0_9
	.long	.LBB0_10
	.long	.LBB0_11
	.long	.LBB0_12
	.long	.LBB0_13
	.long	.LBB0_14
.section bb0_2
.LBB0_2:                                @ %sw.bb
	b	iswalnum
.section bb0_3
.LBB0_3:                                @ %sw.bb1
	b	iswalpha
.section bb0_4
.LBB0_4:                                @ %sw.bb3
	b	iswblank
.section bb0_5
.LBB0_5:                                @ %sw.bb5
	b	iswcntrl
.section bb0_6
.LBB0_6:                                @ %sw.bb7
	sub	r0, r0, #48
	mov	r1, #0
	cmp	r0, #10
	movlo	r1, #1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	mov	r0, r1
	mov	pc, lr
.section bb0_8
.LBB0_8:                                @ %sw.bb8
	b	iswgraph
.section bb0_9
.LBB0_9:                                @ %sw.bb10
	b	iswlower
.section bb0_10
.LBB0_10:                               @ %sw.bb12
	b	iswprint
.section bb0_11
.LBB0_11:                               @ %sw.bb14
	b	iswpunct
.section bb0_12
.LBB0_12:                               @ %sw.bb16
	b	iswspace
.section bb0_13
.LBB0_13:                               @ %sw.bb18
	b	iswupper
.section bb0_14
.LBB0_14:                               @ %sw.bb20
	b	iswxdigit
.Ltmp0:
	.size	iswctype, .Ltmp0-iswctype
	.cantunwind
	.fnend

	.globl	wctype
	.align	2
	.type	wctype,%function
.section bb1_0
wctype:                                 @ @wctype
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	ldr	r5, .LCPI1_0
	mov	r4, r0
	mov	r6, #1
	mov	r1, #97
	b	.LBB1_2
.LCPI1_0:
	.long	wctype.names
.section bb1_2
.LBB1_2:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r1, #255
	ldrb	r1, [r4]
	cmp	r1, r0
	bne	.LBB1_4
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %land.lhs.true
                                        @   in Loop: Header=BB1_2 Depth=1
	mov	r0, r4
	mov	r1, r5
	bl	strcmp
	cmp	r0, #0
	beq	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %for.inc
                                        @   in Loop: Header=BB1_2 Depth=1
	ldrb	r1, [r5, #6]!
	add	r6, r6, #1
	mov	r0, #0
	cmp	r1, #0
	bne	.LBB1_2
	b	.LBB1_6
.section bb1_5
.LBB1_5:
	mov	r0, r6
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp1:
	.size	wctype, .Ltmp1-wctype
	.cantunwind
	.fnend

	.globl	__iswctype_l
	.align	2
	.type	__iswctype_l,%function
.section bb2_0
__iswctype_l:                           @ @__iswctype_l
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	b	iswctype
.Ltmp2:
	.size	__iswctype_l, .Ltmp2-__iswctype_l
	.cantunwind
	.fnend

	.globl	__wctype_l
	.align	2
	.type	__wctype_l,%function
.section bb3_0
__wctype_l:                             @ @__wctype_l
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	b	wctype
.Ltmp3:
	.size	__wctype_l, .Ltmp3-__wctype_l
	.cantunwind
	.fnend

	.type	wctype.names,%object    @ @wctype.names
	.section	.rodata,"a",%progbits
wctype.names:
	.asciz	"alnum\000alpha\000blank\000cntrl\000digit\000graph\000lower\000print\000punct\000space\000upper\000xdigit"
	.size	wctype.names, 73


	.weak	iswctype_l
iswctype_l = __iswctype_l
	.weak	wctype_l
wctype_l = __wctype_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
