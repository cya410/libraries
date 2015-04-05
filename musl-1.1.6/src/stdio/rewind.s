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
	.file	"src/stdio/rewind.bc"
	.globl	rewind
	.align	2
	.type	rewind,%function
rewind:                                 @ @rewind
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	mov	r5, r0
	mov	r0, #0
	b	.LBB0_4
.LBB0_4:                                @ %cond.true
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp]
	mov	r0, r4
	b	.LBB0_5
.LBB0_5:                                @ %cond.true
	bl	__fseeko_unlocked
	ldr	r0, [r4]
	cmp	r5, #0
	bic	r0, r0, #32
	str	r0, [r4]
	beq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %if.then
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	b	__unlockfile
.LBB0_7:                                @ %if.end.critedge
	mov	r0, #0
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp]
	b	.LBB0_8
.LBB0_8:                                @ %if.end.critedge
	mov	r0, r4
	bl	__fseeko_unlocked
	ldr	r0, [r4]
	bic	r0, r0, #32
	str	r0, [r4]
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	rewind, .Ltmp0-rewind
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
