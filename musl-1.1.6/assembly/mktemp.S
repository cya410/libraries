.section mktemp_text
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
	.file	"src/temp/mktemp.bc"
	.globl	mktemp
	.align	2
	.type	mktemp,%function
.section bb0_0
mktemp:                                 @ @mktemp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#104
	sub	sp, sp, #104
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	strlen
	cmp	r0, #6
	blo	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %lor.lhs.false
	ldr	r1, .LCPI0_0
	add	r0, r0, r4
	mov	r2, #6
	sub	r5, r0, #6
	b	.LBB0_4
.LCPI0_0:
	.long	.L.str
.section bb0_4
.LBB0_4:                                @ %lor.lhs.false
	mov	r0, r5
	bl	memcmp
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then12
	mov	r0, #0
	strb	r0, [r4]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cleanup
	mov	r0, r4
	add	sp, sp, #104
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb0_8
.LBB0_8:
	mvn	r7, #99
	mov	r6, sp
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	__randname
	mov	r0, r4
	mov	r1, r6
	bl	stat
	cmp	r0, #0
	bne	.LBB0_12
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %do.cond
                                        @   in Loop: Header=BB0_9 Depth=1
	adds	r7, r7, #1
	bne	.LBB0_9
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %do.end
	mov	r0, #0
	strb	r0, [r4]
	bl	__errno_location
	mov	r1, #17
	str	r1, [r0]
	b	.LBB0_7
.section bb0_12
.LBB0_12:                               @ %if.then9
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #2
	beq	.LBB0_7
	b	.LBB0_6
.Ltmp0:
	.size	mktemp, .Ltmp0-mktemp
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"XXXXXX"
	.size	.L.str, 7


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
