.section munmap_text
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
	.file	"src/mman/munmap.bc"
	.align	2
	.type	dummy1,%function
.section bb0_0
dummy1:                                 @ @dummy1
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy1, .Ltmp0-dummy1
	.cantunwind
	.fnend

	.align	2
	.type	dummy0,%function
.section bb1_0
dummy0:                                 @ @dummy0
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	dummy0, .Ltmp1-dummy0
	.cantunwind
	.fnend

	.globl	__munmap
	.align	2
	.type	__munmap,%function
.section bb2_0
__munmap:                               @ @__munmap
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	mov	r5, r0
	mvn	r0, #0
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r4, r1
	bl	__vm_lock
	bl	__vm_unlock
	mov	r7, #91
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r0, r5
	mov	r1, r4
	@APP
	svc	#0
	@NO_APP
	pop	{r4, r5, r7, lr}
	b	__syscall_ret
.Ltmp2:
	.size	__munmap, .Ltmp2-__munmap
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	__vm_lock
__vm_lock = dummy1
	.weak	__vm_unlock
__vm_unlock = dummy0
	.weak	munmap
munmap = __munmap
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
