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
	.file	"src/multibyte/wcrtomb.bc"
	.globl	wcrtomb
	.align	2
	.type	wcrtomb,%function
wcrtomb:                                @ @wcrtomb
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	mov	r2, #1
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_1
.LBB0_1:                                @ %if.end
	cmp	r1, #127
	bhi	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %if.then1
	strb	r1, [r0]
	b	.LBB0_14
.LBB0_3:                                @ %if.else
	mov	r2, #0
	cmp	r2, r1, lsr #11
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.then4
	mov	r2, #192
	orr	r2, r2, r1, lsr #6
	and	r1, r1, #63
	orr	r1, r1, #128
	strb	r2, [r0]
	mov	r2, #2
	strb	r1, [r0, #1]
	b	.LBB0_14
.LBB0_5:                                @ %if.else8
	ldr	r2, .LCPI0_0
	cmp	r1, #55296
	blo	.LBB0_11
	b	.LBB0_6
.LCPI0_0:
	.long	4294959104              @ 0xffffe000
.LBB0_6:                                @ %if.else8
	and	r2, r1, r2
	cmp	r2, #57344
	beq	.LBB0_11
	b	.LBB0_7
.LBB0_7:                                @ %if.else26
	sub	r2, r1, #65536
	mov	r3, #0
	cmp	r3, r2, lsr #20
	bne	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                @ %if.then30
	mov	r2, #240
	orr	r2, r2, r1, lsr #18
	strb	r2, [r0]
	mov	r2, #63
	b	.LBB0_9
.LBB0_9:                                @ %if.then30
	and	r3, r2, r1, lsr #12
	and	r2, r2, r1, lsr #6
	and	r1, r1, #63
	orr	r3, r3, #128
	b	.LBB0_10
.LBB0_10:                               @ %if.then30
	orr	r2, r2, #128
	orr	r1, r1, #128
	strb	r3, [r0, #1]
	strb	r2, [r0, #2]
	strb	r1, [r0, #3]
	mov	r2, #4
	b	.LBB0_14
.LBB0_11:                               @ %if.then13
	mov	r2, #224
	orr	r2, r2, r1, lsr #12
	strb	r2, [r0]
	mov	r2, #63
	b	.LBB0_12
.LBB0_12:                               @ %if.then13
	and	r2, r2, r1, lsr #6
	and	r1, r1, #63
	orr	r2, r2, #128
	orr	r1, r1, #128
	strb	r2, [r0, #1]
	strb	r1, [r0, #2]
	mov	r2, #3
	b	.LBB0_14
.LBB0_13:                               @ %if.end51
	bl	__errno_location
	mov	r1, #84
	mvn	r2, #0
	str	r1, [r0]
	b	.LBB0_14
.LBB0_14:                               @ %return
	mov	r0, r2
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcrtomb, .Ltmp0-wcrtomb
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
