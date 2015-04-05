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
	.file	"src/stdio/fputws.bc"
	.globl	fputws
	.align	2
	.type	fputws,%function
fputws:                                 @ @fputws
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.pad	#1024
	sub	sp, sp, #1024
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r6, r0
	mov	r4, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r8, #0
	ldr	r0, [r5, #76]
	str	r6, [sp, #1028]
	cmp	r0, #0
	blt	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %cond.true
	mov	r0, r5
	bl	__lockfile
	mov	r8, r0
	b	.LBB0_6
.LBB0_6:                                @ %cond.end
	ldrsb	r0, [r5, #74]
	add	lr, sp, #1024
	add	r7, sp, #4
	add	r9, lr, #4
	add	r1, r0, #1
	orr	r0, r1, r0
	strb	r0, [r5, #74]
	b	.LBB0_8
.LBB0_7:                                @ %while.body.while.cond_crit_edge
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r6, [sp, #1028]
	b	.LBB0_8
.LBB0_8:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r6, #0
	beq	.LBB0_13
	b	.LBB0_9
.LBB0_9:                                @ %land.rhs
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r0, r7
	mov	r1, r9
	mov	r2, #1024
	mov	r3, #0
	b	.LBB0_10
.LBB0_10:                               @ %land.rhs
                                        @   in Loop: Header=BB0_8 Depth=1
	bl	wcsrtombs
	mov	r4, r0
	add	r0, r4, #1
	cmp	r0, #2
	blo	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               @ %while.body
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r0, r7
	mov	r1, r4
	mov	r2, r5
	bl	__fwritex
	cmp	r0, r4
	bhs	.LBB0_7
	b	.LBB0_12
.LBB0_12:                               @ %if.then
	mvn	r4, #0
	b	.LBB0_13
.LBB0_13:                               @ %while.end
	cmp	r8, #0
	beq	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %if.then16
	mov	r0, r5
	bl	__unlockfile
	b	.LBB0_15
.LBB0_15:                               @ %cleanup
	mov	r0, r4
	add	sp, sp, #8
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fputws, .Ltmp0-fputws
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	fputws_unlocked
fputws_unlocked = fputws
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
