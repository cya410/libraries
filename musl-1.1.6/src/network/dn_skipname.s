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
	.file	"src/network/dn_skipname.bc"
	.globl	dn_skipname
	.align	2
	.type	dn_skipname,%function
dn_skipname:                            @ @dn_skipname
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r12, r0
	mvn	r0, #0
	mov	r3, r12
	b	.LBB0_1
.LBB0_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r3, r1
	movhs	pc, lr
	ldrb	r2, [r3]
	cmp	r2, #0
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %if.else
                                        @   in Loop: Header=BB0_1 Depth=1
	add	r3, r3, #1
	cmp	r2, #192
	blo	.LBB0_1
	b	.LBB0_3
.LBB0_3:                                @ %if.then3
	cmp	r3, r1
	sublo	r0, r3, #1
	rsblo	r1, r12, #2
	addlo	r0, r1, r0
	mov	pc, lr
.LBB0_4:                                @ %if.then
	rsb	r0, r12, #1
	add	r0, r0, r3
	mov	pc, lr
.Ltmp0:
	.size	dn_skipname, .Ltmp0-dn_skipname
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
