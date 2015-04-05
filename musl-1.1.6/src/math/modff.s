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
	.file	"src/math/modff.bc"
	.globl	modff
	.align	2
	.type	modff,%function
modff:                                  @ @modff
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r2, #255
	and	r3, r2, r0, lsr #23
	sub	r2, r3, #127
	cmp	r2, #23
	blt	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %if.then
	str	r0, [r1]
	ldr	r1, .LCPI0_0
	tst	r0, r1
	beq	.LBB0_9
	b	.LBB0_3
.LCPI0_0:
	.long	8388607                 @ 0x7fffff
.LBB0_3:                                @ %if.then
	cmp	r2, #128
	andne	r0, r0, #-2147483648
	b	.LBB0_10
.LBB0_4:                                @ %if.end8
	cmp	r3, #126
	bhi	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then10
	and	r2, r0, #-2147483648
	str	r2, [r1]
	b	.LBB0_10
.LBB0_6:                                @ %if.end14
	ldr	r3, .LCPI0_1
	tst	r0, r3, lsr r2
	beq	.LBB0_8
	b	.LBB0_7
.LCPI0_1:
	.long	8388607                 @ 0x7fffff
.LBB0_7:                                @ %if.end23
	lsr	r2, r3, r2
	bic	r2, r0, r2
	str	r2, [r1]
	mov	r1, r2
	bl	__aeabi_fsub
	b	.LBB0_10
.LBB0_8:                                @ %if.then19
	str	r0, [r1]
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	and	r0, r0, #-2147483648
	b	.LBB0_10
.LBB0_10:                               @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	modff, .Ltmp0-modff
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
