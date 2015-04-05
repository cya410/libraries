.section lock_ptc_text
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
	.file	"src/thread/lock_ptc.bc"
	.globl	__inhibit_ptc
	.align	2
	.type	__inhibit_ptc,%function
.section bb0_0
__inhibit_ptc:                          @ @__inhibit_ptc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r0, .LCPI0_0
	b	pthread_rwlock_wrlock
.LCPI0_0:
	.long	lock
.Ltmp0:
	.size	__inhibit_ptc, .Ltmp0-__inhibit_ptc
	.cantunwind
	.fnend

	.globl	__acquire_ptc
	.align	2
	.type	__acquire_ptc,%function
.section bb1_0
__acquire_ptc:                          @ @__acquire_ptc
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r0, .LCPI1_0
	b	pthread_rwlock_rdlock
.LCPI1_0:
	.long	lock
.Ltmp1:
	.size	__acquire_ptc, .Ltmp1-__acquire_ptc
	.cantunwind
	.fnend

	.globl	__release_ptc
	.align	2
	.type	__release_ptc,%function
.section bb2_0
__release_ptc:                          @ @__release_ptc
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	ldr	r0, .LCPI2_0
	b	pthread_rwlock_unlock
.LCPI2_0:
	.long	lock
.Ltmp2:
	.size	__release_ptc, .Ltmp2-__release_ptc
	.cantunwind
	.fnend

	.type	lock,%object            @ @lock
	.local	lock
	.comm	lock,32,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
