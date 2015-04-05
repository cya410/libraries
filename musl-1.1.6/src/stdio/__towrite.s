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
	.file	"src/stdio/__towrite.bc"
	.globl	__towrite
	.align	2
	.type	__towrite,%function
__towrite:                              @ @__towrite
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldrsb	r1, [r0, #74]
	add	r2, r1, #255
	orr	r1, r2, r1
	strb	r1, [r0, #74]
	ldr	r1, [r0]
	tst	r1, #8
	beq	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	orr	r1, r1, #32
	str	r1, [r0]
	mvn	r1, #0
	b	.LBB0_4
.LBB0_2:                                @ %if.end
	mov	r1, #0
	str	r1, [r0, #8]
	str	r1, [r0, #4]
	ldr	r2, [r0, #44]
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	str	r2, [r0, #28]
	str	r2, [r0, #20]
	ldr	r3, [r0, #48]
	add	r2, r2, r3
	str	r2, [r0, #16]
	b	.LBB0_4
.LBB0_4:                                @ %return
	mov	r0, r1
	mov	pc, lr
.Ltmp0:
	.size	__towrite, .Ltmp0-__towrite
	.cantunwind
	.fnend

	.globl	__towrite_needs_stdio_exit
	.align	2
	.type	__towrite_needs_stdio_exit,%function
__towrite_needs_stdio_exit:             @ @__towrite_needs_stdio_exit
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	__stdio_exit_needed
.Ltmp1:
	.size	__towrite_needs_stdio_exit, .Ltmp1-__towrite_needs_stdio_exit
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
