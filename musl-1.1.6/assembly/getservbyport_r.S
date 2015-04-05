.section getservbyport_r_text
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
	.file	"src/network/getservbyport_r.bc"
	.globl	getservbyport_r
	.align	2
	.type	getservbyport_r,%function
.section bb0_0
getservbyport_r:                        @ @getservbyport_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r9, [sp, #68]
	ldr	r10, [sp, #64]
	mov	r7, r1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r6, r0
	mov	r0, #2
	mov	r11, r3
	mov	r8, r2
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r4, #0
	strh	r0, [sp, #12]
	strh	r6, [sp, #14]
	str	r4, [sp, #16]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	str	r4, [sp, #24]
	str	r4, [sp, #20]
	cmp	r7, #0
	beq	.LBB0_18
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end4
	ands	r5, r11, #3
	mov	r4, #34
	moveq	r5, #4
	rsb	r0, r5, #12
	cmp	r0, r10
	bhi	.LBB0_21
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end10
	ldr	r1, .LCPI0_2
	mov	r0, r7
	bl	strcmp
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_9
.LCPI0_2:
	.long	.L.str
.section bb0_9
.LBB0_9:                                @ %land.lhs.true
	ldr	r1, .LCPI0_4
	mov	r0, r7
	bl	strcmp
	mov	r4, #22
	cmp	r0, #0
	bne	.LBB0_21
	b	.LBB0_10
.LCPI0_4:
	.long	.L.str1
.section bb0_10
.LBB0_10:                               @ %if.end19
	rsb	r4, r5, #4
	mov	r1, #0
	add	r0, r11, r4
	add	r5, r0, #8
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end19
	stmib	r8, {r0, r6, r7}
	str	r1, [r0, #4]
	ldr	r1, .LCPI0_5
	str	r5, [r8]
	b	.LBB0_12
.LCPI0_5:
	.long	.L.str1
.section bb0_12
.LBB0_12:                               @ %if.end19
	ldr	r0, [r8, #4]
	str	r5, [r0]
	mov	r0, r7
	bl	strcmp
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end19
	sub	r1, r10, #8
	cmp	r0, #0
	mov	r0, #16
	str	r5, [sp]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end19
	mov	r2, #0
	mov	r3, #0
	sub	r1, r1, r4
	movne	r0, #0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end19
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	add	r0, sp, #12
	mov	r1, #16
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end19
	bl	getnameinfo
	add	r1, r0, #11
	mov	r4, #12
	cmp	r1, #2
	blo	.LBB0_21
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end19
	cmp	r0, #0
	moveq	r4, #0
	streq	r8, [r9]
	movne	r4, #2
	b	.LBB0_21
.section bb0_18
.LBB0_18:                               @ %if.then
	ldr	r1, .LCPI0_3
	mov	r0, r6
	mov	r2, r8
	mov	r3, r11
	b	.LBB0_19
.LCPI0_3:
	.long	.L.str
.section bb0_19
.LBB0_19:                               @ %if.then
	str	r10, [sp]
	str	r9, [sp, #4]
	bl	getservbyport_r
	cmp	r0, #0
	beq	.LBB0_21
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then2
	ldr	r1, .LCPI0_6
	mov	r0, r6
	mov	r2, r8
	mov	r3, r11
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	getservbyport_r
.LCPI0_6:
	.long	.L.str1
.section bb0_21
.LBB0_21:                               @ %return
	mov	r0, r4
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getservbyport_r, .Ltmp0-getservbyport_r
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"tcp"
	.size	.L.str, 4

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"udp"
	.size	.L.str1, 4


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
