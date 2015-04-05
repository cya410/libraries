.section newlocale_text
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
	.file	"src/locale/newlocale.bc"
	.globl	__newlocale
	.align	2
	.type	__newlocale,%function
.section bb0_0
__newlocale:                            @ @__newlocale
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r6, r2
	mov	r10, r1
	mov	r5, r0
	cmp	r6, #0
	bne	.LBB0_9
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	mov	r0, #1
	mov	r1, #40
	mov	r9, #1
	bl	calloc
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r6, r0
	mov	r0, #0
	cmp	r6, #0
	beq	.LBB0_14
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	ldr	r8, .LCPI0_0
	add	r0, r6, #24
	mov	r7, #0
	str	r0, [r6, #4]
	b	.LBB0_6
.LCPI0_0:
	.long	.L.str
.section bb0_6
.LBB0_6:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	tst	r5, r9, lsl r7
	bne	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then4
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, r6
	mov	r1, r7
	mov	r2, r8
	bl	__setlocalecat
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.inc
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r7, r7, #1
	cmp	r7, #6
	bne	.LBB0_6
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end7
	mov	r7, #0
	mov	r4, #1
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.body10
                                        @ =>This Inner Loop Header: Depth=1
	tst	r5, r4, lsl r7
	beq	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then14
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r6
	mov	r1, r7
	mov	r2, r10
	bl	__setlocalecat
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.inc17
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r7, r7, #1
	cmp	r7, #6
	bne	.LBB0_10
	b	.LBB0_13
.section bb0_13
.LBB0_13:
	mov	r0, r6
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	__newlocale, .Ltmp0-__newlocale
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1


	.weak	newlocale
newlocale = __newlocale
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
