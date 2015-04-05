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
	.file	"src/string/strchrnul.bc"
	.globl	__strchrnul
	.align	2
	.type	__strchrnul,%function
__strchrnul:                            @ @__strchrnul
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r4, r0
	ands	r0, r1, #255
	bne	.LBB0_3
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	mov	r0, r4
	bl	strlen
	add	r4, r4, r0
	b	.LBB0_13
.LBB0_2:                                @ %for.inc
                                        @   in Loop: Header=BB0_3 Depth=1
	add	r4, r4, #1
	b	.LBB0_3
.LBB0_3:                                @ %for.cond.preheader
                                        @ =>This Inner Loop Header: Depth=1
	tst	r4, #3
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %for.body
                                        @   in Loop: Header=BB0_3 Depth=1
	ldrb	r1, [r4]
	cmp	r1, #0
	cmpne	r1, r0
	bne	.LBB0_2
	b	.LBB0_13
.LBB0_5:                                @ %for.end
	ldr	r12, .LCPI0_3
	ldr	r2, [r4]
	ldr	r1, .LCPI0_4
	ldr	r3, .LCPI0_7
	b	.LBB0_6
.LCPI0_3:
	.long	16843009                @ 0x1010101
.LCPI0_4:
	.long	4278124287              @ 0xfefefeff
.LCPI0_7:
	.long	2155905152              @ 0x80808080
.LBB0_6:                                @ %for.end
	add	r1, r2, r1
	bic	r1, r1, r2
	tst	r1, r3
	bne	.LBB0_11
	b	.LBB0_7
.LBB0_7:
	mul	lr, r0, r12
	b	.LBB0_8
.LBB0_8:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, .LCPI0_5
	eor	r2, r2, lr
	add	r3, r2, r3
	bic	r2, r3, r2
	b	.LBB0_9
.LCPI0_5:
	.long	4278124287              @ 0xfefefeff
.LBB0_9:                                @ %land.rhs
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r3, .LCPI0_8
	tst	r2, r3
	ldreq	r2, [r4, #4]!
	ldreq	r3, .LCPI0_6
	b	.LBB0_10
.LCPI0_6:
	.long	4278124287              @ 0xfefefeff
.LCPI0_8:
	.long	2155905152              @ 0x80808080
.LBB0_10:                               @ %land.rhs
                                        @   in Loop: Header=BB0_8 Depth=1
	ldreq	r1, .LCPI0_9
	addeq	r3, r2, r3
	biceq	r3, r3, r2
	tsteq	r3, r1
	beq	.LBB0_8
	b	.LBB0_11
.LCPI0_9:
	.long	2155905152              @ 0x80808080
.LBB0_11:                               @ %for.end20
	sub	r4, r4, #1
	b	.LBB0_12
.LBB0_12:                               @ %for.cond21
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r4, #1]!
	cmp	r1, #0
	cmpne	r1, r0
	bne	.LBB0_12
	b	.LBB0_13
.LBB0_13:                               @ %return
	mov	r0, r4
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__strchrnul, .Ltmp0-__strchrnul
	.cantunwind
	.fnend


	.weak	strchrnul
strchrnul = __strchrnul
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
