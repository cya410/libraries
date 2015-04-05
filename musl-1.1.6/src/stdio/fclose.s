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
	.file	"src/stdio/fclose.bc"
	.align	2
	.type	dummy,%function
dummy:                                  @ @dummy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy, .Ltmp0-dummy
	.cantunwind
	.fnend

	.globl	fclose
	.align	2
	.type	fclose,%function
fclose:                                 @ @fclose
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB1_4
	b	.LBB1_3
.LBB1_3:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	b	.LBB1_4
.LBB1_4:                                @ %cond.end
	mov	r0, r4
	bl	__unlist_locked_file
	ldr	r0, [r4]
	ands	r7, r0, #1
	bne	.LBB1_9
	b	.LBB1_5
.LBB1_5:                                @ %if.then
	ldr	r6, .LCPI1_0
	add	r5, r6, #28
	mov	r0, r5
	bl	__lock
	b	.LBB1_6
.LCPI1_0:
	.long	__libc
.LBB1_6:                                @ %if.then
	ldr	r0, [r4, #52]
	cmp	r0, #0
	ldrne	r1, [r4, #56]
	strne	r1, [r0, #56]
	b	.LBB1_7
.LBB1_7:                                @ %if.then
	ldr	r1, [r4, #56]
	cmp	r1, #0
	strne	r0, [r1, #52]
	ldr	r0, [r6, #24]
	b	.LBB1_8
.LBB1_8:                                @ %if.then
	cmp	r0, r4
	mov	r0, r5
	streq	r1, [r6, #24]
	bl	__unlock
	b	.LBB1_9
.LBB1_9:                                @ %if.end16
	mov	r0, r4
	bl	fflush
	ldr	r1, [r4, #12]
	mov	r5, r0
	b	.LBB1_10
.LBB1_10:                               @ %if.end16
	mov	r0, r4
	mov	lr, pc
	mov	pc, r1
	mov	r6, r0
	ldr	r0, [r4, #96]
	cmp	r0, #0
	beq	.LBB1_12
	b	.LBB1_11
.LBB1_11:                               @ %if.then20
	bl	free
	b	.LBB1_12
.LBB1_12:                               @ %if.end22
	orr	r5, r6, r5
	cmp	r7, #0
	bne	.LBB1_14
	b	.LBB1_13
.LBB1_13:                               @ %if.then24
	mov	r0, r4
	bl	free
	b	.LBB1_14
.LBB1_14:                               @ %if.end25
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	fclose, .Ltmp1-fclose
	.cantunwind
	.fnend

	.hidden	__libc
	.hidden	__lockfile
	.hidden	__lock
	.hidden	__unlock

	.weak	__unlist_locked_file
__unlist_locked_file = dummy
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
