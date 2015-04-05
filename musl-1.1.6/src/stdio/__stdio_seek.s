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
	.file	"src/stdio/__stdio_seek.bc"
	.globl	__stdio_seek
	.align	2
	.type	__stdio_seek,%function
__stdio_seek:                           @ @__stdio_seek
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r0, [r0, #60]
	ldr	r4, [sp, #24]
	mov	r12, sp
	mov	r1, r3
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, #140
	mov	r3, r12
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	cmp	r0, #0
	blt	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %entry.if.end_crit_edge
	ldm	sp, {r0, r1}
	b	.LBB0_6
.LBB0_5:                                @ %if.then
	mvn	r0, #0
	mvn	r1, #0
	str	r0, [sp, #4]
	str	r0, [sp]
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	add	sp, sp, #8
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__stdio_seek, .Ltmp0-__stdio_seek
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
