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
	.file	"src/fcntl/open.bc"
	.globl	open
	.align	2
	.type	open,%function
open:                                   @ @open
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r4, r1
	mov	r1, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	str	r3, [sp, #36]
	str	r2, [sp, #32]
	tst	r4, #64
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r0, #16384
	mov	r3, #0
	orr	r0, r0, #4194304
	and	r2, r4, r0
	cmp	r2, r0
	bne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	add	r0, sp, #32
	str	r0, [sp, #12]
	orr	r0, r0, #4
	str	r0, [sp, #12]
	ldr	r3, [sp, #32]
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r0, #0
	orr	r2, r4, #131072
	str	r0, [sp]
	str	r0, [sp, #4]
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	str	r0, [sp, #8]
	mov	r0, #5
	bl	__syscall_cp
	mov	r3, r0
	tst	r4, #524288
	beq	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	cmp	r3, #0
	blt	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                @ %if.then8
	mov	r7, #221
	mov	r0, r3
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_10
.LBB0_10:                               @ %if.end10
	mov	r0, r3
	bl	__syscall_ret
	add	sp, sp, #16
	pop	{r4, r7, r11, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	open, .Ltmp0-open
	.cantunwind
	.fnend

	.hidden	__syscall_cp
	.hidden	__syscall_ret

	.weak	open64
open64 = open
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
