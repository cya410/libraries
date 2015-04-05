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
	.file	"src/stat/fstat.bc"
	.globl	fstat
	.align	2
	.type	fstat,%function
fstat:                                  @ @fstat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r2, r0
	mov	r4, r1
	mov	r7, #197
                                        @ kill: R0<def> R2<kill>
	b	.LBB0_3
.LBB0_3:                                @ %entry
                                        @ kill: R1<def> R4<kill>
	@APP
	svc	#0
	@NO_APP
	mov	r3, r0
	cmn	r3, #9
	bne	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %lor.lhs.false
	mov	r7, #221
	mov	r0, r2
	mov	r1, #1
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	blt	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %return
	add	r5, sp, #5
	mov	r1, r2
	mov	r0, r5
	bl	__procfdname
	b	.LBB0_6
.LBB0_6:                                @ %return
	mov	r7, #195
	mov	r0, r5
	mov	r1, r4
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	add	sp, sp, #32
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.LBB0_7:                                @ %if.then
	mov	r0, r3
	add	sp, sp, #32
	pop	{r4, r5, r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	fstat, .Ltmp0-fstat
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	fstat64
fstat64 = fstat
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
