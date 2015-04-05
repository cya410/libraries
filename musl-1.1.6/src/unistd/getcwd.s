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
	.file	"src/unistd/getcwd.bc"
	.globl	getcwd
	.align	2
	.type	getcwd,%function
getcwd:                                 @ @getcwd
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#4096
	sub	sp, sp, #4096
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %if.else
	cmp	r1, #0
	bne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %if.then2
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_9
.LBB0_4:
	mov	r1, #4096
	mov	r4, sp
	b	.LBB0_5
.LBB0_5:                                @ %if.end3
	mov	r7, #183
	mov	r0, r4
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	b	.LBB0_6
.LBB0_6:                                @ %if.end3
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	blt	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.end7
	mov	r0, sp
	cmp	r4, r0
	mov	r0, r4
	bne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %cond.true
	mov	r0, sp
	bl	strdup
	b	.LBB0_9
.LBB0_9:                                @ %cleanup
	add	sp, sp, #4096
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getcwd, .Ltmp0-getcwd
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
