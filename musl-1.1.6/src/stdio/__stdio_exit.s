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
	.file	"src/stdio/__stdio_exit.bc"
	.globl	__stdio_exit
	.align	2
	.type	__stdio_exit,%function
__stdio_exit:                           @ @__stdio_exit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r4, .LCPI0_3
	add	r0, r4, #28
	bl	__lock
	ldr	r4, [r4, #24]
	b	.LBB0_3
.LCPI0_3:
	.long	__libc
.LBB0_2:                                @ %for.body
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, r4
	bl	close_file
	ldr	r4, [r4, #56]
	b	.LBB0_3
.LBB0_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r4, #0
	bne	.LBB0_2
	b	.LBB0_4
.LBB0_4:                                @ %for.end
	ldr	r0, .LCPI0_4
	ldr	r0, [r0]
	bl	close_file
	ldr	r0, .LCPI0_5
	ldr	r0, [r0]
	pop	{r4, lr}
	b	close_file
.LCPI0_4:
	.long	__stdin_used
.LCPI0_5:
	.long	__stdout_used
.Ltmp0:
	.size	__stdio_exit, .Ltmp0-__stdio_exit
	.cantunwind
	.fnend

	.align	2
	.type	close_file,%function
close_file:                             @ @close_file
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB1_8
	b	.LBB1_2
.LBB1_2:                                @ %if.end
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB1_4
	b	.LBB1_3
.LBB1_3:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	b	.LBB1_4
.LBB1_4:                                @ %cond.end
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #28]
	cmp	r0, r1
	bls	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %if.then2
	ldr	r3, [r4, #36]
	mov	r0, r4
	mov	r1, #0
	mov	r2, #0
	mov	lr, pc
	mov	pc, r3
	b	.LBB1_6
.LBB1_6:                                @ %if.end4
	ldmib	r4, {r0, r1}
	cmp	r0, r1
	bhs	.LBB1_8
	b	.LBB1_7
.LBB1_7:                                @ %if.then6
	ldr	r5, [r4, #40]
	mov	r2, #1
	str	r2, [sp]
	sub	r2, r0, r1
	mov	r0, r4
	asr	r3, r2, #31
	mov	lr, pc
	mov	pc, r5
	b	.LBB1_8
.LBB1_8:                                @ %if.end10
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	close_file, .Ltmp1-close_file
	.cantunwind
	.fnend

	.type	dummy_file,%object      @ @dummy_file
	.local	dummy_file
	.comm	dummy_file,4,4
	.hidden	__libc
	.hidden	__lock
	.hidden	__lockfile

	.weak	__stdin_used
__stdin_used = dummy_file
	.weak	__stdout_used
__stdout_used = dummy_file
	.weak	__stderr_used
__stderr_used = dummy_file
	.weak	__stdio_exit_needed
__stdio_exit_needed = __stdio_exit
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
