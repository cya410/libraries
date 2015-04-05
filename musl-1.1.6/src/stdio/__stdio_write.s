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
	.file	"src/stdio/__stdio_write.bc"
	.globl	__stdio_write
	.align	2
	.type	__stdio_write,%function
__stdio_write:                          @ @__stdio_write
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#44
	sub	sp, sp, #44
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	ldr	r9, .LCPI0_0
	mov	r11, #2
	b	.LBB0_4
.LCPI0_0:
	.long	cleanup
.LBB0_4:                                @ %entry
	add	r6, sp, #28
	add	r10, sp, #16
	mov	r8, #0
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB0_5
.LBB0_5:                                @ %entry
	ldr	r0, [r5, #28]
	str	r0, [sp, #28]
	ldr	r3, [r5, #20]
	sub	r0, r3, r0
	add	r3, sp, #32
	add	r7, r0, r2
	stm	r3, {r0, r1, r2}
	b	.LBB0_7
.LBB0_6:                                @ %if.end37
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r2, [r6]
	sub	r0, r0, r1
	sub	r7, r7, r4
	add	r2, r2, r1
	str	r2, [r6]
	str	r0, [r6, #4]
	b	.LBB0_7
.LBB0_7:                                @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r10
	mov	r1, r9
	mov	r2, r5
	bl	_pthread_cleanup_push
	b	.LBB0_8
.LBB0_8:                                @ %do.body
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r1, [r5, #60]
	mov	r0, #146
	mov	r2, r6
	mov	r3, r11
	b	.LBB0_9
.LBB0_9:                                @ %do.body
                                        @   in Loop: Header=BB0_7 Depth=1
	str	r8, [sp]
	str	r8, [sp, #4]
	str	r8, [sp, #8]
	bl	__syscall_cp
	b	.LBB0_10
.LBB0_10:                               @ %do.body
                                        @   in Loop: Header=BB0_7 Depth=1
	bl	__syscall_ret
	mov	r4, r0
	mov	r0, r10
	mov	r1, #0
	bl	_pthread_cleanup_pop
	cmp	r7, r4
	beq	.LBB0_16
	b	.LBB0_11
.LBB0_11:                               @ %if.end
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r4, #0
	blt	.LBB0_17
	b	.LBB0_12
.LBB0_12:                               @ %if.end20
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r0, [r6, #4]
	cmp	r4, r0
	bls	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               @ %if.then25
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r1, [r5, #44]
	add	r2, r6, #8
	sub	r11, r11, #1
	str	r1, [r5, #28]
	b	.LBB0_14
.LBB0_14:                               @ %if.then25
                                        @   in Loop: Header=BB0_7 Depth=1
	str	r1, [r5, #20]
	sub	r1, r4, r0
	ldr	r0, [r6, #12]
	mov	r6, r2
	b	.LBB0_6
.LBB0_15:                               @ %if.else
                                        @   in Loop: Header=BB0_7 Depth=1
	cmp	r11, #2
	ldreq	r1, [r5, #28]
	moveq	r11, #2
	addeq	r1, r1, r4
	streq	r1, [r5, #28]
	mov	r1, r4
	b	.LBB0_6
.LBB0_16:                               @ %if.then
	ldr	r0, [r5, #44]
	ldr	r1, [r5, #48]
	add	r1, r0, r1
	str	r0, [r5, #28]
	str	r1, [r5, #16]
	str	r0, [r5, #20]
	ldr	r0, [sp, #12]           @ 4-byte Reload
	b	.LBB0_19
.LBB0_17:                               @ %if.then13
	mov	r0, #0
	cmp	r11, #2
	str	r0, [r5, #28]
	str	r0, [r5, #16]
	b	.LBB0_18
.LBB0_18:                               @ %if.then13
	str	r0, [r5, #20]
	ldr	r1, [r5]
	orr	r1, r1, #32
	str	r1, [r5]
	ldrne	r1, [sp, #12]           @ 4-byte Reload
	ldrne	r0, [r6, #4]
	subne	r0, r1, r0
	b	.LBB0_19
.LBB0_19:                               @ %return
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__stdio_write, .Ltmp0-__stdio_write
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
