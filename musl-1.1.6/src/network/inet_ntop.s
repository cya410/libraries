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
	.file	"src/network/inet_ntop.bc"
	.globl	inet_ntop
	.align	2
	.type	inet_ntop,%function
inet_ntop:                              @ @inet_ntop
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#140
	sub	sp, sp, #140
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r3
	mov	r9, r2
	mov	r6, r1
	cmp	r0, #10
	bne	.LBB0_13
	b	.LBB0_4
.LBB0_4:                                @ %sw.bb8
	ldr	r1, .LCPI0_5
	mov	r0, r6
	mov	r2, #12
	str	r4, [sp, #36]           @ 4-byte Spill
	b	.LBB0_5
.LCPI0_5:
	.long	.L.str1
.LBB0_5:                                @ %sw.bb8
	bl	memcmp
	ldrb	r1, [r6, #10]
	ldrb	r2, [r6, #11]
	ldrb	r7, [r6, #15]
	b	.LBB0_6
.LBB0_6:                                @ %sw.bb8
	ldrb	r11, [r6, #13]
	ldrb	r3, [r6]
	ldrb	r4, [r6, #1]
	ldrb	r8, [r6, #2]
	b	.LBB0_7
.LBB0_7:                                @ %sw.bb8
	cmp	r0, #0
	orr	r12, r2, r1, lsl #8
	ldrb	r1, [r6, #8]
	ldrb	r2, [r6, #9]
	b	.LBB0_8
.LBB0_8:                                @ %sw.bb8
	orr	r3, r4, r3, lsl #8
	orr	lr, r2, r1, lsl #8
	ldrb	r1, [r6, #6]
	ldrb	r2, [r6, #7]
	b	.LBB0_9
.LBB0_9:                                @ %sw.bb8
	orr	r10, r2, r1, lsl #8
	ldrb	r1, [r6, #4]
	ldrb	r2, [r6, #5]
	orr	r5, r2, r1, lsl #8
	b	.LBB0_10
.LBB0_10:                               @ %sw.bb8
	ldrb	r1, [r6, #14]
	ldrb	r2, [r6, #12]
	ldrb	r6, [r6, #3]
	orr	r6, r6, r8, lsl #8
	beq	.LBB0_17
	b	.LBB0_11
.LBB0_11:                               @ %if.then10
	orr	r0, r7, r1, lsl #8
	orr	r1, r11, r2, lsl #8
	ldr	r2, .LCPI0_6
	str	r6, [sp]
	b	.LBB0_12
.LCPI0_6:
	.long	.L.str2
.LBB0_12:                               @ %if.then10
	stmib	sp, {r5, r10, lr}
	str	r12, [sp, #16]
	str	r1, [sp, #20]
	str	r0, [sp, #24]
	add	r0, sp, #40
	b	.LBB0_19
.LBB0_13:                               @ %entry
	cmp	r0, #2
	bne	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               @ %sw.bb
	ldrb	r0, [r6, #1]
	ldrb	r1, [r6, #2]
	ldrb	r2, [r6, #3]
	ldrb	r3, [r6]
	b	.LBB0_15
.LBB0_15:                               @ %sw.bb
	stm	sp, {r0, r1, r2}
	ldr	r2, .LCPI0_9
	mov	r0, r9
	mov	r1, r4
	bl	snprintf
	cmp	r0, r4
	blo	.LBB0_32
	b	.LBB0_30
.LCPI0_9:
	.long	.L.str
.LBB0_16:                               @ %sw.default
	bl	__errno_location
	mov	r1, #97
	b	.LBB0_31
.LBB0_17:                               @ %if.else
	str	r7, [sp, #32]
	stmib	sp, {r5, r10, lr}
	str	r12, [sp, #16]
	str	r2, [sp, #20]
	b	.LBB0_18
.LBB0_18:                               @ %if.else
	ldr	r2, .LCPI0_7
	add	r0, sp, #40
	str	r11, [sp, #24]
	str	r1, [sp, #28]
	str	r6, [sp]
	b	.LBB0_19
.LCPI0_7:
	.long	.L.str3
.LBB0_19:                               @ %for.cond.preheader
	mov	r1, #100
	bl	snprintf
	ldrb	r0, [sp, #40]
	ldr	r8, [sp, #36]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_20
.LBB0_20:
	ldr	r10, .LCPI0_8
	mov	r4, #2
	mov	r5, #0
	add	r11, sp, #40
	mov	r6, #0
	b	.LBB0_21
.LCPI0_8:
	.long	.L.str4
.LBB0_21:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r6, #0
	add	r7, r11, r6
	andne	r0, r0, #255
	cmpne	r0, #58
	bne	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               @ %if.end113
                                        @   in Loop: Header=BB0_21 Depth=1
	mov	r0, r7
	mov	r1, r10
	bl	strspn
	cmp	r0, r4
	movgt	r5, r6
	movgt	r4, r0
	b	.LBB0_23
.LBB0_23:                               @ %for.inc
                                        @   in Loop: Header=BB0_21 Depth=1
	ldrb	r0, [r7, #1]
	add	r6, r6, #1
	cmp	r0, #0
	bne	.LBB0_21
	b	.LBB0_24
.LBB0_24:                               @ %for.end
	cmp	r4, #3
	blt	.LBB0_28
	b	.LBB0_25
.LBB0_25:                               @ %if.then122
	mov	r0, #58
	add	r2, r11, r5
	strb	r0, [r11, r5]
	strb	r0, [r2, #1]
	b	.LBB0_26
.LBB0_26:                               @ %if.then122
	add	r0, r5, r4
	add	r1, r11, r0
	add	r0, r2, #2
	rsb	r2, r4, #0
	b	.LBB0_27
.LBB0_27:                               @ %if.then122
	sub	r2, r2, r5
	add	r2, r2, r6
	add	r2, r2, #1
	bl	memmove
	b	.LBB0_28
.LBB0_28:                               @ %if.end135
	add	r0, sp, #40
	bl	strlen
	cmp	r0, r8
	bhs	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               @ %if.then140
	add	r1, sp, #40
	mov	r0, r9
	bl	strcpy
	b	.LBB0_32
.LBB0_30:                               @ %sw.epilog
	bl	__errno_location
	mov	r1, #28
	b	.LBB0_31
.LBB0_31:                               @ %cleanup
	mov	r9, #0
	str	r1, [r0]
	b	.LBB0_32
.LBB0_32:                               @ %cleanup
	mov	r0, r9
	add	sp, sp, #140
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	inet_ntop, .Ltmp0-inet_ntop
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%d.%d.%d.%d"
	.size	.L.str, 12

	.type	.L.str1,%object         @ @.str1
	.section	.rodata,"a",%progbits
.L.str1:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\377\377"
	.size	.L.str1, 13

	.type	.L.str2,%object         @ @.str2
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str2:
	.asciz	"%x:%x:%x:%x:%x:%x:%x:%x"
	.size	.L.str2, 24

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"%x:%x:%x:%x:%x:%x:%d.%d.%d.%d"
	.size	.L.str3, 30

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	":0"
	.size	.L.str4, 3


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
