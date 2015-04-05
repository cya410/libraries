.section clog_text
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
	.file	"src/complex/clog.bc"
	.globl	clog
	.align	2
	.type	clog,%function
.section bb0_0
clog:                                   @ @clog
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r9, [sp, #32]
	ldr	r8, [sp, #36]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r3
	mov	r5, r2
	mov	r6, r0
	mov	r0, r5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r1, r4
	mov	r2, r9
	mov	r3, r8
	bl	cabs
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r7, r0
	mov	r10, r1
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r2, r9
	mov	r3, r8
	bl	carg
	mov	r4, r0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r5, r1
	mov	r0, r7
	mov	r1, r10
	bl	log
	stm	r6, {r0, r1, r4, r5}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	clog, .Ltmp0-clog
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
