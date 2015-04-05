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
	.file	"src/string/memrchr.bc"
	.globl	__memrchr
	.align	2
	.type	__memrchr,%function
__memrchr:                              @ @__memrchr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	and	r3, r1, #255
	b	.LBB0_1
.LBB0_1:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, #0
	cmp	r2, #0
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %while.body
                                        @   in Loop: Header=BB0_1 Depth=1
	sub	r1, r2, #1
	add	r2, r0, r2
	ldrb	r2, [r2, #-1]
	cmp	r2, r3
	mov	r2, r1
	bne	.LBB0_1
	b	.LBB0_3
.LBB0_3:                                @ %while.body.return_crit_edge
	add	r1, r0, r1
	b	.LBB0_4
.LBB0_4:                                @ %return
	mov	r0, r1
	mov	pc, lr
.Ltmp0:
	.size	__memrchr, .Ltmp0-__memrchr
	.cantunwind
	.fnend


	.weak	memrchr
memrchr = __memrchr
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
