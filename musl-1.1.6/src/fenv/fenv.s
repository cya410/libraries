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
	.file	"src/fenv/fenv.bc"
	.globl	feclearexcept
	.align	2
	.type	feclearexcept,%function
feclearexcept:                          @ @feclearexcept
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp0:
	.size	feclearexcept, .Ltmp0-feclearexcept
	.cantunwind
	.fnend

	.globl	feraiseexcept
	.align	2
	.type	feraiseexcept,%function
feraiseexcept:                          @ @feraiseexcept
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp1:
	.size	feraiseexcept, .Ltmp1-feraiseexcept
	.cantunwind
	.fnend

	.globl	fetestexcept
	.align	2
	.type	fetestexcept,%function
fetestexcept:                           @ @fetestexcept
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp2:
	.size	fetestexcept, .Ltmp2-fetestexcept
	.cantunwind
	.fnend

	.globl	fegetround
	.align	2
	.type	fegetround,%function
fegetround:                             @ @fegetround
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp3:
	.size	fegetround, .Ltmp3-fegetround
	.cantunwind
	.fnend

	.globl	__fesetround
	.align	2
	.type	__fesetround,%function
__fesetround:                           @ @__fesetround
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp4:
	.size	__fesetround, .Ltmp4-__fesetround
	.cantunwind
	.fnend

	.globl	fegetenv
	.align	2
	.type	fegetenv,%function
fegetenv:                               @ @fegetenv
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp5:
	.size	fegetenv, .Ltmp5-fegetenv
	.cantunwind
	.fnend

	.globl	fesetenv
	.align	2
	.type	fesetenv,%function
fesetenv:                               @ @fesetenv
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp6:
	.size	fesetenv, .Ltmp6-fesetenv
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
