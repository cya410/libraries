.section flockfile_text
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
	.file	"src/stdio/flockfile.bc"
	.globl	flockfile
	.align	2
	.type	flockfile,%function
.section bb0_0
flockfile:                              @ @flockfile
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	ftrylockfile
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %while.body.lr.ph
	add	r5, r4, #80
	add	r6, r4, #76
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r6]
	cmp	r2, #0
	beq	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, r6
	mov	r1, r5
	mov	r3, #1
	bl	__wait
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %while.cond.backedge
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, r4
	bl	ftrylockfile
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %while.end
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	flockfile, .Ltmp0-flockfile
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
