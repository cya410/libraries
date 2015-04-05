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
	.file	"src/network/res_send.bc"
	.globl	__res_send
	.align	2
	.type	__res_send,%function
__res_send:                             @ @__res_send
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	str	r0, [sp, #20]
	add	r0, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r1, sp, #20
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r2, sp, #16
	stm	sp, {r0, r3}
	add	r3, sp, #12
	mov	r0, #1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	bl	__res_msend
	ldr	r1, [sp, #8]
	cmp	r0, #0
	movge	r0, r1
	add	sp, sp, #24
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__res_send, .Ltmp0-__res_send
	.cantunwind
	.fnend


	.weak	res_send
res_send = __res_send
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
