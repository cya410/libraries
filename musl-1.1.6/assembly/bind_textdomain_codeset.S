.section bind_textdomain_codeset_text
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
	.file	"src/locale/bind_textdomain_codeset.bc"
	.globl	bind_textdomain_codeset
	.align	2
	.type	bind_textdomain_codeset,%function
.section bb0_0
bind_textdomain_codeset:                @ @bind_textdomain_codeset
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	cmp	r1, #0
	beq	.LBB0_3
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %land.lhs.true
	ldr	r2, .LCPI0_0
	mov	r0, r1
	mov	r1, r2
	bl	strcasecmp
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_2
.LCPI0_0:
	.long	.L.str
.section bb0_2
.LBB0_2:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r0, #0
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	bind_textdomain_codeset, .Ltmp0-bind_textdomain_codeset
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"UTF-8"
	.size	.L.str, 6


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
