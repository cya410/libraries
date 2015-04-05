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
	.file	"src/misc/login_tty.bc"
	.globl	login_tty
	.align	2
	.type	login_tty,%function
login_tty:                              @ @login_tty
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	bl	setsid
	mov	r1, #14
	mov	r0, r4
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r2, #0
	orr	r1, r1, #21504
	bl	ioctl
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	mov	r0, r4
	mov	r1, #0
	bl	dup2
	mov	r0, r4
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	mov	r1, #1
	bl	dup2
	mov	r0, r4
	mov	r1, #2
	bl	dup2
	cmp	r4, #3
	blt	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then5
	mov	r0, r4
	bl	close
	b	.LBB0_6
.LBB0_6:                                @ %return
	mov	r0, #0
	b	.LBB0_7
.LBB0_7:                                @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	login_tty, .Ltmp0-login_tty
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
