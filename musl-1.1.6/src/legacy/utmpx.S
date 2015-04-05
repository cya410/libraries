.section utmpx_text
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
	.file	"src/legacy/utmpx.bc"
	.globl	endutxent
	.align	2
	.type	endutxent,%function
.section bb0_0
endutxent:                              @ @endutxent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	endutxent, .Ltmp0-endutxent
	.cantunwind
	.fnend

	.globl	setutxent
	.align	2
	.type	setutxent,%function
.section bb1_0
setutxent:                              @ @setutxent
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	setutxent, .Ltmp1-setutxent
	.cantunwind
	.fnend

	.globl	getutxent
	.align	2
	.type	getutxent,%function
.section bb2_0
getutxent:                              @ @getutxent
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp2:
	.size	getutxent, .Ltmp2-getutxent
	.cantunwind
	.fnend

	.globl	getutxid
	.align	2
	.type	getutxid,%function
.section bb3_0
getutxid:                               @ @getutxid
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp3:
	.size	getutxid, .Ltmp3-getutxid
	.cantunwind
	.fnend

	.globl	getutxline
	.align	2
	.type	getutxline,%function
.section bb4_0
getutxline:                             @ @getutxline
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp4:
	.size	getutxline, .Ltmp4-getutxline
	.cantunwind
	.fnend

	.globl	pututxline
	.align	2
	.type	pututxline,%function
.section bb5_0
pututxline:                             @ @pututxline
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp5:
	.size	pututxline, .Ltmp5-pututxline
	.cantunwind
	.fnend

	.globl	updwtmpx
	.align	2
	.type	updwtmpx,%function
.section bb6_0
updwtmpx:                               @ @updwtmpx
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	mov	pc, lr
.Ltmp6:
	.size	updwtmpx, .Ltmp6-updwtmpx
	.cantunwind
	.fnend


	.weak	endutent
endutent = endutxent
	.weak	setutent
setutent = setutxent
	.weak	getutent
getutent = getutxent
	.weak	getutid
getutid = getutxid
	.weak	getutline
getutline = getutxline
	.weak	pututline
pututline = pututxline
	.weak	updwtmp
updwtmp = updwtmpx
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
