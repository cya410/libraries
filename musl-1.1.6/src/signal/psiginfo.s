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
	.file	"src/signal/psiginfo.bc"
	.globl	psiginfo
	.align	2
	.type	psiginfo,%function
psiginfo:                               @ @psiginfo
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r0, [r0]
	mov	r4, r1
	bl	strsignal
	mov	r3, r0
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r0, .LCPI0_3
	cmp	r4, #0
	ldr	r0, [r0]
	beq	.LBB0_4
	b	.LBB0_3
.LCPI0_3:
	.long	stderr
.LBB0_3:                                @ %if.then
	ldr	r1, .LCPI0_4
	mov	r2, r4
	bl	fprintf
	pop	{r4, lr}
	mov	pc, lr
.LCPI0_4:
	.long	.L.str
.LBB0_4:                                @ %if.else
	ldr	r1, .LCPI0_5
	mov	r2, r3
	bl	fprintf
	pop	{r4, lr}
	mov	pc, lr
.LCPI0_5:
	.long	.L.str1
.Ltmp0:
	.size	psiginfo, .Ltmp0-psiginfo
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s: %s\n"
	.size	.L.str, 8

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"%s\n"
	.size	.L.str1, 4


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
