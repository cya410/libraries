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
	.file	"src/stdio/fgetln.bc"
	.globl	fgetln
	.align	2
	.type	fgetln,%function
fgetln:                                 @ @fgetln
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	mov	r8, r1
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, #0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	mov	r5, r0
	b	.LBB0_5
.LBB0_5:                                @ %cond.end
	ldmib	r4, {r0, r1}
	cmp	r0, r1
	bhs	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %cond.true2
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	b	.LBB0_8
.LBB0_7:                                @ %cond.false4
	mov	r0, r4
	bl	__uflow
	b	.LBB0_8
.LBB0_8:                                @ %cond.end6
	mov	r1, r4
	bl	ungetc
	ldmib	r4, {r0, r1}
	sub	r2, r1, r0
	b	.LBB0_9
.LBB0_9:                                @ %cond.end6
	mov	r1, #10
	bl	memchr
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %if.then
	ldr	r7, [r4, #4]
	add	r0, r0, #1
	sub	r1, r0, r7
	str	r1, [r8]
	str	r0, [r4, #4]
	b	.LBB0_13
.LBB0_11:                               @ %if.else
	add	r6, r4, #96
	mov	r7, #0
	add	r1, sp, #4
	mov	r2, r4
	b	.LBB0_12
.LBB0_12:                               @ %if.else
	mov	r0, r6
	str	r7, [sp, #4]
	bl	getline
	cmp	r0, #1
	strge	r0, [r8]
	ldrge	r7, [r6]
	b	.LBB0_13
.LBB0_13:                               @ %if.end24
	cmp	r5, #0
	beq	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %if.then26
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_15
.LBB0_15:                               @ %if.end28
	mov	r0, r7
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	fgetln, .Ltmp0-fgetln
	.cantunwind
	.fnend

	.hidden	__lockfile
	.protected	__uflow
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
