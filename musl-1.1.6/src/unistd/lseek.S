.section lseek_text
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
	.file	"src/unistd/lseek.bc"
	.globl	lseek
	.align	2
	.type	lseek,%function
.section bb0_0
lseek:                                  @ @lseek
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r4, [sp, #24]
	mov	r12, sp
	mov	r1, r3
	mov	r7, #140
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r3, r12
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	ldr	r2, [sp]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r1, [sp, #4]
	cmp	r0, #0
	mvnne	r2, #0
	mvnne	r1, #0
	mov	r0, r2
	add	sp, sp, #8
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	lseek, .Ltmp0-lseek
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	lseek64
lseek64 = lseek
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
