.section openat_text
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
	.file	"src/fcntl/openat.bc"
	.globl	openat
	.align	2
	.type	openat,%function
.section bb0_0
openat:                                 @ @openat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r12, r1
	mov	lr, r0
	str	r3, [sp, #28]
	tst	r2, #64
	bne	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r3, #16384
	mov	r0, #0
	orr	r3, r3, #4194304
	and	r1, r2, r3
	cmp	r1, r3
	bne	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	add	r0, sp, #28
	str	r0, [sp, #12]
	add	r0, r0, #4
	str	r0, [sp, #12]
	ldr	r0, [sp, #28]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r1, #0
	orr	r3, r2, #131072
	mov	r2, r12
	stm	sp, {r0, r1}
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	mov	r0, #66
	str	r1, [sp, #8]
	mov	r1, lr
	orr	r0, r0, #256
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	bl	__syscall_cp
	bl	__syscall_ret
	add	sp, sp, #16
	pop	{r11, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	openat, .Ltmp0-openat
	.cantunwind
	.fnend

	.hidden	__syscall_ret
	.hidden	__syscall_cp

	.weak	openat64
openat64 = openat
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
