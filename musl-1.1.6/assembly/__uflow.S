.section __uflow_text
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
	.file	"src/stdio/__uflow.bc"
	.protected	__uflow
	.globl	__uflow
	.align	2
	.type	__uflow,%function
.section bb0_0
__uflow:                                @ @__uflow
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	ldr	r0, [r4, #8]
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %lor.lhs.false
	mov	r0, r4
	bl	__toread
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.lhs.true
	ldr	r3, [r4, #32]
	add	r1, sp, #7
	mov	r0, r4
	mov	r2, #1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.lhs.true
	mov	lr, pc
	mov	pc, r3
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #1
	ldrbeq	r0, [sp, #7]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %return
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__uflow, .Ltmp0-__uflow
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
