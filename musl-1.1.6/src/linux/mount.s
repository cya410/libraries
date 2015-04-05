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
	.file	"src/linux/mount.bc"
	.globl	mount
	.align	2
	.type	mount,%function
mount:                                  @ @mount
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r4, [sp, #16]
	mov	r7, #21
	@APP
	svc	#0
	@NO_APP
	pop	{r4, r7, r11, lr}
	b	__syscall_ret
.Ltmp0:
	.size	mount, .Ltmp0-mount
	.cantunwind
	.fnend

	.globl	umount
	.align	2
	.type	umount,%function
umount:                                 @ @umount
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r7, #52
	mov	r1, #0
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp1:
	.size	umount, .Ltmp1-umount
	.cantunwind
	.fnend

	.globl	umount2
	.align	2
	.type	umount2,%function
umount2:                                @ @umount2
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #52
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp2:
	.size	umount2, .Ltmp2-umount2
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
