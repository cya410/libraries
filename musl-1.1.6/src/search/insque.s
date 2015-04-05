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
	.file	"src/search/insque.bc"
	.globl	insque
	.align	2
	.type	insque,%function
insque:                                 @ @insque
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	cmp	r1, #0
	beq	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %if.end
	ldr	r2, [r1]
	str	r2, [r0]
	str	r1, [r0, #4]
	str	r0, [r1]
	ldr	r1, [r0]
	cmp	r1, #0
	strne	r0, [r1, #4]
	mov	pc, lr
.LBB0_2:                                @ %if.then
	mov	r1, #0
	str	r1, [r0]
	str	r1, [r0, #4]
	mov	pc, lr
.Ltmp0:
	.size	insque, .Ltmp0-insque
	.cantunwind
	.fnend

	.globl	remque
	.align	2
	.type	remque,%function
remque:                                 @ @remque
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r1, [r0]
	cmp	r1, #0
	ldrne	r2, [r0, #4]
	strne	r2, [r1, #4]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	strne	r1, [r0]
	mov	pc, lr
.Ltmp1:
	.size	remque, .Ltmp1-remque
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
