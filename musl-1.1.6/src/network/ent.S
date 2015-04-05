.section ent_text
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
	.file	"src/network/ent.bc"
	.globl	sethostent
	.align	2
	.type	sethostent,%function
.section bb0_0
sethostent:                             @ @sethostent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	sethostent, .Ltmp0-sethostent
	.cantunwind
	.fnend

	.globl	gethostent
	.align	2
	.type	gethostent,%function
.section bb1_0
gethostent:                             @ @gethostent
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp1:
	.size	gethostent, .Ltmp1-gethostent
	.cantunwind
	.fnend

	.globl	endhostent
	.align	2
	.type	endhostent,%function
.section bb2_0
endhostent:                             @ @endhostent
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	pc, lr
.Ltmp2:
	.size	endhostent, .Ltmp2-endhostent
	.cantunwind
	.fnend


	.weak	setnetent
setnetent = sethostent
	.weak	getnetent
getnetent = gethostent
	.weak	endnetent
endnetent = endhostent
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
