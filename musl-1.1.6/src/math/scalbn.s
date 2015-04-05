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
	.file	"src/math/scalbn.bc"
	.globl	scalbn
	.align	2
	.type	scalbn,%function
scalbn:                                 @ @scalbn
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r4, r2
	cmp	r4, #1024
	blt	.LBB0_5
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #1879048192
	bl	__aeabi_dmul
	b	.LBB0_2
.LBB0_2:                                @ %if.then
	ldr	r2, .LCPI0_3
	add	r2, r4, r2
	cmp	r2, #1024
	blt	.LBB0_10
	b	.LBB0_3
.LCPI0_3:
	.long	4294966273              @ 0xfffffc01
.LBB0_3:                                @ %if.then2
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #1879048192
	bl	__aeabi_dmul
	b	.LBB0_4
.LBB0_4:                                @ %if.then2
	ldr	r2, .LCPI0_7
	add	r2, r4, r2
	mov	r4, #255
	orr	r4, r4, #768
	cmp	r2, #1024
	b	.LBB0_9
.LCPI0_7:
	.long	4294965250              @ 0xfffff802
.LBB0_5:                                @ %if.else
	ldr	r2, .LCPI0_4
	cmp	r4, r2
	bgt	.LBB0_11
	b	.LBB0_6
.LCPI0_4:
	.long	4294966273              @ 0xfffffc01
.LBB0_6:                                @ %if.then9
	mov	r2, #0
	mov	r3, #1048576
	bl	__aeabi_dmul
	ldr	r3, .LCPI0_5
	b	.LBB0_7
.LCPI0_5:
	.long	4294966273              @ 0xfffffc01
.LBB0_7:                                @ %if.then9
	add	r2, r4, #254
	add	r2, r2, #768
	cmp	r2, r3
	bgt	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %if.then12
	mov	r2, #0
	mov	r3, #1048576
	bl	__aeabi_dmul
	add	r2, r4, #1020
	add	r4, r2, #1024
	ldr	r2, .LCPI0_6
	cmp	r4, r2
	b	.LBB0_9
.LCPI0_6:
	.long	4294966274              @ 0xfffffc02
.LBB0_9:                                @ %if.end20
	movlt	r4, r2
	b	.LBB0_11
.LBB0_10:
	mov	r4, r2
	b	.LBB0_11
.LBB0_11:                               @ %if.end20
	mov	r2, #267386880
	orr	r2, r2, #805306368
	add	r3, r2, r4, lsl #20
	mov	r2, #0
	bl	__aeabi_dmul
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	scalbn, .Ltmp0-scalbn
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
