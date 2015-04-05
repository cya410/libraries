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
	.file	"src/signal/sigandset.bc"
	.globl	sigandset
	.align	2
	.type	sigandset,%function
sigandset:                              @ @sigandset
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	mov	lr, #0
	b	.LBB0_1
.LBB0_1:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r12, [r1, lr, lsl #2]
	ldr	r3, [r2, lr, lsl #2]
	and	r3, r3, r12
	str	r3, [r0, lr, lsl #2]
	add	lr, lr, #1
	cmp	lr, #2
	bne	.LBB0_1
	b	.LBB0_2
.LBB0_2:                                @ %for.end
	mov	r0, #0
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	sigandset, .Ltmp0-sigandset
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
