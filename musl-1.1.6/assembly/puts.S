.section puts_text
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
	.file	"src/stdio/puts.bc"
	.globl	puts
	.align	2
	.type	puts,%function
.section bb0_0
puts:                                   @ @puts
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r6, r0
	ldr	r0, .LCPI0_0
	b	.LBB0_2
.LCPI0_0:
	.long	stdout
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r5, #0
	ldr	r4, [r0]
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	mov	r5, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %cond.end
	mov	r0, r6
	mov	r1, r4
	bl	fputs
	mov	r1, #1
	cmp	r0, #0
	blt	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %lor.rhs
	ldrb	r0, [r4, #75]
	cmp	r0, #10
	beq	.LBB0_8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.lhs.true
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	cmp	r0, r1
	bhs	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cond.true7
	add	r1, r0, #1
	str	r1, [r4, #20]
	mov	r1, #10
	strb	r1, [r0]
	mov	r1, #0
	b	.LBB0_9
.section bb0_8
.LBB0_8:                                @ %cond.false9
	mov	r0, r4
	mov	r1, #10
	bl	__overflow
	lsr	r1, r0, #31
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %lor.end
	lsl	r0, r1, #31
	cmp	r5, #0
	asr	r6, r0, #31
	beq	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end
	mov	r0, r6
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	puts, .Ltmp0-puts
	.cantunwind
	.fnend

	.hidden	__lockfile
	.protected	__overflow
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
