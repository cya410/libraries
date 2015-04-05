.section inet_ntoa_text
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
	.file	"src/network/inet_ntoa.bc"
	.globl	inet_ntoa
	.align	2
	.type	inet_ntoa,%function
.section bb0_0
inet_ntoa:                              @ @inet_ntoa
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r2, #255
	ldr	r4, .LCPI0_2
	b	.LBB0_2
.LCPI0_2:
	.long	inet_ntoa.buf
.section bb0_2
.LBB0_2:                                @ %entry
	lsr	r1, r0, #24
	and	r3, r2, r0, lsr #16
	and	r2, r2, r0, lsr #8
	stm	sp, {r2, r3}
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r2, .LCPI0_3
	str	r1, [sp, #8]
	and	r3, r0, #255
	mov	r1, #16
	b	.LBB0_4
.LCPI0_3:
	.long	.L.str
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, r4
	bl	snprintf
	mov	r0, r4
	add	sp, sp, #16
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	inet_ntoa, .Ltmp0-inet_ntoa
	.cantunwind
	.fnend

	.type	inet_ntoa.buf,%object   @ @inet_ntoa.buf
	.local	inet_ntoa.buf
	.comm	inet_ntoa.buf,16,1
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%d.%d.%d.%d"
	.size	.L.str, 12


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
