.section procfdname_text
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
	.file	"src/internal/procfdname.bc"
	.globl	__procfdname
	.align	2
	.type	__procfdname,%function
.section bb0_0
__procfdname:                           @ @__procfdname
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r2, #111
	mov	r12, #47
	cmp	r1, #0
	strb	r2, [r0, #3]
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r2, #114
	strb	r2, [r0, #2]
	mov	r2, #112
	strb	r2, [r0, #1]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	strb	r12, [r0]
	strb	r12, [r0, #5]
	mov	r2, r0
	ldr	r3, .LCPI0_3
	b	.LBB0_4
.LCPI0_3:
	.long	1702047587              @ 0x65732f63
.section bb0_4
.LBB0_4:                                @ %entry
	strb	r3, [r2, #4]!
	mov	r3, #101
	strb	r3, [r2, #3]
	mov	r3, #115
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	strb	r3, [r2, #2]
	mov	r3, r0
	ldr	r2, .LCPI0_4
	strb	r2, [r3, #8]!
	b	.LBB0_6
.LCPI0_4:
	.long	1714382444              @ 0x662f666c
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r2, #102
	strb	r2, [r3, #3]
	strb	r12, [r3, #2]
	strb	r2, [r3, #1]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r2, #100
	strb	r12, [r3, #5]
	strb	r2, [r3, #4]
	mov	r2, #0
	strb	r2, [r3, #6]
	beq	.LBB0_14
	b	.LBB0_8
.section bb0_8
.LBB0_8:
	mov	lr, #14
	mov	r12, r1
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.inc8
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, .LCPI0_5
	add	lr, lr, #1
	cmp	r12, #9
	umull	r2, r4, r12, r3
	lsr	r2, r4, #3
	mov	r12, r2
	bhi	.LBB0_9
	b	.LBB0_10
.LCPI0_5:
	.long	3435973837              @ 0xcccccccd
.section bb0_10
.LBB0_10:                               @ %for.body14.lr.ph
	mov	r2, #0
	strb	r2, [r0, lr]!
	sub	r0, r0, #1
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.body14
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, .LCPI0_6
	cmp	r1, #9
	umull	r3, r4, r1, r2
	lsr	r2, r4, #3
	b	.LBB0_12
.LCPI0_6:
	.long	3435973837              @ 0xcccccccd
.section bb0_12
.LBB0_12:                               @ %for.body14
                                        @   in Loop: Header=BB0_11 Depth=1
	add	r3, r2, r2, lsl #2
	sub	r3, r1, r3, lsl #1
	mov	r1, r2
	orr	r3, r3, #48
	strb	r3, [r0], #-1
	bhi	.LBB0_11
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.end19
	pop	{r4, lr}
	mov	pc, lr
.section bb0_14
.LBB0_14:                               @ %if.then
	mov	r1, #48
	strb	r2, [r0, #15]
	strb	r1, [r0, #14]
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__procfdname, .Ltmp0-__procfdname
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
