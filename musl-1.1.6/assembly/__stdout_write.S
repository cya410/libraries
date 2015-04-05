.section __stdout_write_text
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
	.file	"src/stdio/__stdout_write.bc"
	.globl	__stdout_write
	.align	2
	.type	__stdout_write,%function
.section bb0_0
__stdout_write:                         @ @__stdout_write
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#64
	sub	sp, sp, #64
	mov	r3, r0
	ldr	r0, .LCPI0_0
	b	.LBB0_2
.LCPI0_0:
	.long	__stdio_write
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r12, r2
	mov	lr, r1
	str	r0, [r3, #36]
	ldrb	r0, [r3]
	tst	r0, #64
	bne	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.lhs.true
	ldr	r0, [r3, #60]
	mov	r1, #1
	add	r2, sp, #4
	mov	r7, #54
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.lhs.true
	orr	r1, r1, #21504
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	movne	r0, #255
	strbne	r0, [r3, #75]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r0, r3
	mov	r1, lr
	mov	r2, r12
	bl	__stdio_write
	add	sp, sp, #64
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	__stdout_write, .Ltmp0-__stdout_write
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
