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
	.file	"src/stdio/__stdio_read.bc"
	.globl	__stdio_read
	.align	2
	.type	__stdio_read,%function
__stdio_read:                           @ @__stdio_read
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#40
	sub	sp, sp, #40
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r8, r1
	mov	r4, r0
	mov	r9, r2
	add	r6, sp, #12
	b	.LBB0_4
.LBB0_4:                                @ %entry
	str	r8, [sp, #24]
	mov	r1, r9
	mov	r2, r4
	ldr	r0, [r4, #48]
	b	.LBB0_5
.LBB0_5:                                @ %entry
	cmp	r0, #0
	subne	r1, r1, #1
	str	r1, [sp, #28]
	ldr	r1, [r4, #44]
	b	.LBB0_6
.LBB0_6:                                @ %entry
	str	r1, [sp, #32]
	ldr	r1, .LCPI0_0
	str	r0, [sp, #36]
	mov	r0, r6
	b	.LBB0_7
.LCPI0_0:
	.long	cleanup
.LBB0_7:                                @ %entry
	bl	_pthread_cleanup_push
	ldr	r1, [r4, #60]
	mov	r5, #0
	add	r2, sp, #24
	b	.LBB0_8
.LBB0_8:                                @ %entry
	mov	r0, #145
	mov	r3, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	b	.LBB0_9
.LBB0_9:                                @ %entry
	str	r5, [sp, #8]
	bl	__syscall_cp
	bl	__syscall_ret
	mov	r7, r0
	b	.LBB0_10
.LBB0_10:                               @ %entry
	mov	r0, r6
	mov	r1, #0
	bl	_pthread_cleanup_pop
	cmp	r7, #0
	ble	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	ldr	r1, [sp, #28]
	cmp	r7, r1
	bls	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               @ %if.end10
	ldr	r0, [r4, #44]
	sub	r1, r7, r1
	mov	r7, r9
	add	r1, r0, r1
	b	.LBB0_13
.LBB0_13:                               @ %if.end10
	stmib	r4, {r0, r1}
	ldr	r1, [r4, #48]
	cmp	r1, #0
	addne	r1, r0, #1
	b	.LBB0_14
.LBB0_14:                               @ %if.end10
	strne	r1, [r4, #4]
	addne	r1, r9, r8
	ldrbne	r0, [r0]
	strbne	r0, [r1, #-1]
	b	.LBB0_16
.LBB0_15:                               @ %if.then
	ldr	r0, [r4]
	and	r1, r7, #48
	eor	r1, r1, #16
	orr	r0, r0, r1
	stm	r4, {r0, r5}
	str	r5, [r4, #8]
	b	.LBB0_16
.LBB0_16:                               @ %return
	mov	r0, r7
	add	sp, sp, #40
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__stdio_read, .Ltmp0-__stdio_read
	.cantunwind
	.fnend

	.align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r1, [r0, #68]
	cmp	r1, #0
	movne	pc, lr
	b	__unlockfile
.Ltmp1:
	.size	cleanup, .Ltmp1-cleanup
	.cantunwind
	.fnend

	.hidden	__syscall_ret
	.hidden	__syscall_cp
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
