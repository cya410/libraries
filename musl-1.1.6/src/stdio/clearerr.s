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
	.file	"src/stdio/clearerr.bc"
	.globl	clearerr
	.align	2
	.type	clearerr,%function
clearerr:                               @ @clearerr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	ldr	r1, [r4]
	cmp	r0, #0
	bic	r1, r1, #48
	str	r1, [r4]
	beq	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	mov	r0, r4
	pop	{r4, lr}
	b	__unlockfile
.LBB0_4:                                @ %if.end.critedge
	ldr	r0, [r4]
	bic	r0, r0, #48
	str	r0, [r4]
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	clearerr, .Ltmp0-clearerr
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	clearerr_unlocked
clearerr_unlocked = clearerr
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
