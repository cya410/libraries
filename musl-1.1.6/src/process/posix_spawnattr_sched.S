.section posix_spawnattr_sched_text
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
	.file	"src/process/posix_spawnattr_sched.bc"
	.globl	posix_spawnattr_getschedparam
	.align	2
	.type	posix_spawnattr_getschedparam,%function
.section bb0_0
posix_spawnattr_getschedparam:          @ @posix_spawnattr_getschedparam
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r0, #38
	mov	pc, lr
.Ltmp0:
	.size	posix_spawnattr_getschedparam, .Ltmp0-posix_spawnattr_getschedparam
	.cantunwind
	.fnend

	.globl	posix_spawnattr_setschedparam
	.align	2
	.type	posix_spawnattr_setschedparam,%function
.section bb1_0
posix_spawnattr_setschedparam:          @ @posix_spawnattr_setschedparam
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r0, #38
	mov	pc, lr
.Ltmp1:
	.size	posix_spawnattr_setschedparam, .Ltmp1-posix_spawnattr_setschedparam
	.cantunwind
	.fnend

	.globl	posix_spawnattr_getschedpolicy
	.align	2
	.type	posix_spawnattr_getschedpolicy,%function
.section bb2_0
posix_spawnattr_getschedpolicy:         @ @posix_spawnattr_getschedpolicy
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r0, #38
	mov	pc, lr
.Ltmp2:
	.size	posix_spawnattr_getschedpolicy, .Ltmp2-posix_spawnattr_getschedpolicy
	.cantunwind
	.fnend

	.globl	posix_spawnattr_setschedpolicy
	.align	2
	.type	posix_spawnattr_setschedpolicy,%function
.section bb3_0
posix_spawnattr_setschedpolicy:         @ @posix_spawnattr_setschedpolicy
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r0, #38
	mov	pc, lr
.Ltmp3:
	.size	posix_spawnattr_setschedpolicy, .Ltmp3-posix_spawnattr_setschedpolicy
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
