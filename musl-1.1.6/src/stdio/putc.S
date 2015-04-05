.section putc_text
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
	.file	"src/stdio/putc.bc"
	.globl	putc
	.align	2
	.type	putc,%function
.section bb0_0
putc:                                   @ @putc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB0_6
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %lor.lhs.false
	mov	r0, r4
	bl	__lockfile
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldrsb	r0, [r4, #75]
	cmp	r0, r5
	beq	.LBB0_10
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.lhs.true13
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	cmp	r0, r1
	bhs	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.true18
	add	r1, r0, #1
	str	r1, [r4, #20]
	strb	r5, [r0]
	and	r5, r5, #255
	b	.LBB0_11
.section bb0_6
.LBB0_6:                                @ %if.then
	ldrsb	r0, [r4, #75]
	cmp	r0, r5
	beq	.LBB0_9
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.lhs.true
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	cmp	r0, r1
	bhs	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %cond.true
	add	r1, r0, #1
	str	r1, [r4, #20]
	strb	r5, [r0]
	and	r5, r5, #255
	b	.LBB0_12
.section bb0_9
.LBB0_9:                                @ %cond.false
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r11, lr}
	b	__overflow
.section bb0_10
.LBB0_10:                               @ %cond.false23
	mov	r0, r4
	mov	r1, r5
	bl	__overflow
	mov	r5, r0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %cond.end25
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %return
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	putc, .Ltmp0-putc
	.cantunwind
	.fnend

	.hidden	__lockfile
	.protected	__overflow
	.hidden	__unlockfile

	.weak	_IO_putc
_IO_putc = putc
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
