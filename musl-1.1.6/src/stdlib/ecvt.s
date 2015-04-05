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
	.file	"src/stdlib/ecvt.bc"
	.globl	ecvt
	.align	2
	.type	ecvt,%function
ecvt:                                   @ @ecvt
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#40
	sub	sp, sp, #40
	b	.LBB0_2
.LBB0_2:                                @ %entry
	stm	sp, {r0, r1}
	ldr	r1, .LCPI0_2
	sub	r2, r2, #1
	add	r5, sp, #8
	b	.LBB0_3
.LCPI0_2:
	.long	.L.str
.LBB0_3:                                @ %entry
	mov	r6, r3
	cmp	r2, #15
	mov	r0, r5
	movhi	r2, #14
	b	.LBB0_4
.LBB0_4:                                @ %entry
	bl	sprintf
	ldrb	r0, [sp, #8]
	ldr	r2, [sp, #56]
	mov	r1, #0
	b	.LBB0_5
.LBB0_5:                                @ %entry
	cmp	r0, #45
	mov	r0, #0
	moveq	r0, #1
	str	r0, [r2]
	b	.LBB0_6
.LBB0_6:                                @ %entry
	ldr	r2, .LCPI0_3
	ldrb	r4, [r5, r0]
	cmp	r4, #101
	beq	.LBB0_10
	b	.LBB0_7
.LCPI0_3:
	.long	ecvt.buf
.LBB0_7:
	ldr	r3, .LCPI0_4
	b	.LBB0_8
.LCPI0_4:
	.long	ecvt.buf
.LBB0_8:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	strb	r4, [r2]
	and	r2, r4, #255
	add	r4, r5, r0
	add	r0, r0, #1
	b	.LBB0_9
.LBB0_9:                                @ %for.body
                                        @   in Loop: Header=BB0_8 Depth=1
	ldrb	r4, [r4, #1]
	cmp	r2, #46
	addne	r1, r1, #1
	add	r2, r3, r1
	cmp	r4, #101
	bne	.LBB0_8
	b	.LBB0_10
.LBB0_10:                               @ %for.end
	add	r0, r0, r5
	mov	r1, #0
	add	r0, r0, #1
	strb	r1, [r2]
	b	.LBB0_11
.LBB0_11:                               @ %for.end
	bl	atoi
	add	r0, r0, #1
	str	r0, [r6]
	ldr	r0, .LCPI0_5
	add	sp, sp, #40
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.LCPI0_5:
	.long	ecvt.buf
.Ltmp0:
	.size	ecvt, .Ltmp0-ecvt
	.cantunwind
	.fnend

	.type	ecvt.buf,%object        @ @ecvt.buf
	.local	ecvt.buf
	.comm	ecvt.buf,16,1
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%.*e"
	.size	.L.str, 5


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
