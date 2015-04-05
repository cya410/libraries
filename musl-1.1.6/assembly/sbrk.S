.section sbrk_text
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
	.file	"src/linux/sbrk.bc"
	.globl	sbrk
	.align	2
	.type	sbrk,%function
.section bb0_0
sbrk:                                   @ @sbrk
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	cmp	r0, #0
	beq	.LBB0_2
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %if.then
	mvn	r0, #11
	bl	__syscall_ret
	b	.LBB0_3
.section bb0_2
.LBB0_2:                                @ %if.end
	mov	r7, #45
	mov	r0, #0
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %return
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	sbrk, .Ltmp0-sbrk
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
