.section getservbyname_r_text
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
	.file	"src/network/getservbyname_r.bc"
	.globl	getservbyname_r
	.align	2
	.type	getservbyname_r,%function
.section bb0_0
getservbyname_r:                        @ @getservbyname_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r6, r3
	ldr	r1, [sp, #40]
	mov	r8, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r9, r2
	mov	r7, #34
	rsb	r0, r6, #0
	and	r4, r0, #3
	orr	r0, r4, #8
	cmp	r0, r1
	bhi	.LBB0_14
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r2, #0
	cmp	r5, #0
	beq	.LBB0_8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.else
	ldr	r1, .LCPI0_2
	mov	r0, r5
	bl	strcmp
	mov	r2, #6
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_7
.LCPI0_2:
	.long	.L.str
.section bb0_7
.LBB0_7:                                @ %if.else4
	ldr	r1, .LCPI0_4
	mov	r0, r5
	bl	strcmp
	mov	r7, #22
	mov	r2, #17
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_8
.LCPI0_4:
	.long	.L.str1
.section bb0_8
.LBB0_8:                                @ %if.end11
	mov	r0, sp
	mov	r1, r8
	mov	r3, #0
	mov	r7, #0
	bl	__lookup_serv
	cmp	r0, #0
	blt	.LBB0_13
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end15
	add	r0, r6, r4
	str	r8, [r9]
	ldr	r5, [sp, #44]
	str	r0, [r9, #4]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end15
	str	r8, [r0]
	ldr	r0, [r9, #4]
	str	r7, [r0, #4]
	ldrh	r0, [sp]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end15
	bl	htons
	str	r0, [r9, #8]
	ldr	r0, .LCPI0_3
	ldr	r1, .LCPI0_5
	b	.LBB0_12
.LCPI0_3:
	.long	.L.str
.LCPI0_5:
	.long	.L.str1
.section bb0_12
.LBB0_12:                               @ %if.end15
	ldrb	r2, [sp, #2]
	cmp	r2, #6
	moveq	r1, r0
	str	r1, [r9, #12]
	str	r9, [r5]
	b	.LBB0_14
.section bb0_13
.LBB0_13:                               @ %if.then14
	add	r0, r0, #11
	mov	r7, #2
	cmp	r0, #2
	movlo	r7, #12
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %return
	mov	r0, r7
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getservbyname_r, .Ltmp0-getservbyname_r
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
