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
	.file	"src/math/ilogbf.bc"
	.globl	ilogbf
	.align	2
	.type	ilogbf,%function
ilogbf:                                 @ @ilogbf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r1, r0
	mov	r0, #255
	and	r0, r0, r1, lsr #23
	cmp	r0, #255
	bne	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %do.body9
	mov	r0, #1069547520
	orr	r0, r0, #1073741824
	str	r0, [sp]
	mvn	r0, #-2147483648
	ldr	r2, .LCPI0_0
	tst	r1, r2
	movne	r0, #-2147483648
	b	.LBB0_9
.LCPI0_0:
	.long	8388607                 @ 0x7fffff
.LBB0_2:                                @ %entry
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	mov	r0, #0
	cmp	r0, r1, lsl #9
	beq	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                @ %for.cond.preheader
	lsl	r1, r1, #9
	mvn	r0, #126
	b	.LBB0_6
.LBB0_5:                                @ %for.inc
                                        @   in Loop: Header=BB0_6 Depth=1
	lsl	r1, r1, #1
	sub	r0, r0, #1
	b	.LBB0_6
.LBB0_6:                                @ %for.cond.preheader
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r1, #0
	bge	.LBB0_5
	b	.LBB0_9
.LBB0_7:                                @ %if.end14
	sub	r0, r0, #127
	b	.LBB0_9
.LBB0_8:                                @ %do.body
	mov	r0, #1069547520
	orr	r0, r0, #1073741824
	str	r0, [sp, #4]
	mov	r0, #-2147483648
	b	.LBB0_9
.LBB0_9:                                @ %return
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	ilogbf, .Ltmp0-ilogbf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
