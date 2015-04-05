.section __toread_text
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
	.file	"src/stdio/__toread.bc"
	.globl	__toread
	.align	2
	.type	__toread,%function
.section bb0_0
__toread:                               @ @__toread
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldrsb	r0, [r4, #74]
	add	r1, r0, #255
	orr	r0, r1, r0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	strb	r0, [r4, #74]
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #44]
	cmp	r0, r1
	bls	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	ldr	r3, [r4, #36]
	mov	r0, r4
	mov	r1, #0
	mov	r2, #0
	mov	lr, pc
	mov	pc, r3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	mov	r0, #0
	str	r0, [r4, #28]
	str	r0, [r4, #16]
	str	r0, [r4, #20]
	ldr	r1, [r4]
	tst	r1, #20
	beq	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then6
	tst	r1, #4
	mvn	r0, #0
	orrne	r1, r1, #32
	strne	r1, [r4]
	b	.LBB0_7
.section bb0_6
.LBB0_6:                                @ %if.end14
	ldr	r1, [r4, #44]
	str	r1, [r4, #4]
	str	r1, [r4, #8]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__toread, .Ltmp0-__toread
	.cantunwind
	.fnend

	.globl	__toread_needs_stdio_exit
	.align	2
	.type	__toread_needs_stdio_exit,%function
.section bb1_0
__toread_needs_stdio_exit:              @ @__toread_needs_stdio_exit
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	__stdio_exit_needed
.Ltmp1:
	.size	__toread_needs_stdio_exit, .Ltmp1-__toread_needs_stdio_exit
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
