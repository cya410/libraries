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
	.file	"src/math/ilogb.bc"
	.globl	ilogb
	.align	2
	.type	ilogb,%function
ilogb:                                  @ @ilogb
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r3, #255
	mov	r2, r0
	orr	r3, r3, #1792
	and	r0, r3, r1, lsr #20
	cmp	r0, r3
	bne	.LBB0_3
	b	.LBB0_1
.LBB0_1:                                @ %do.body12
	mov	r0, #1069547520
	orr	r0, r0, #1073741824
	str	r0, [sp]
	ldr	r0, .LCPI0_2
	b	.LBB0_2
.LCPI0_2:
	.long	1048575                 @ 0xfffff
.LBB0_2:                                @ %do.body12
	and	r0, r1, r0
	orrs	r0, r2, r0
	mvn	r0, #-2147483648
	movne	r0, #-2147483648
	b	.LBB0_10
.LBB0_3:                                @ %entry
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	lsl	r0, r1, #12
	orr	r1, r0, r2, lsr #20
	orr	r0, r1, r2, lsl #12
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                @ %for.cond.preheader
	ldr	r0, .LCPI0_3
	cmp	r1, #0
	blt	.LBB0_10
	b	.LBB0_6
.LCPI0_3:
	.long	4294966273              @ 0xfffffc01
.LBB0_6:
	lsl	r2, r2, #12
	b	.LBB0_7
.LBB0_7:                                @ %for.inc
                                        @ =>This Inner Loop Header: Depth=1
	adds	r2, r2, r2
	sub	r0, r0, #1
	adc	r1, r1, r1
	cmp	r1, #0
	bge	.LBB0_7
	b	.LBB0_10
.LBB0_8:                                @ %if.end17
	ldr	r1, .LCPI0_4
	add	r0, r0, r1
	b	.LBB0_10
.LCPI0_4:
	.long	4294966273              @ 0xfffffc01
.LBB0_9:                                @ %do.body
	mov	r0, #1069547520
	orr	r0, r0, #1073741824
	str	r0, [sp, #4]
	mov	r0, #-2147483648
	b	.LBB0_10
.LBB0_10:                               @ %return
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	ilogb, .Ltmp0-ilogb
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
