.section proto_text
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
	.file	"src/network/proto.bc"
	.globl	endprotoent
	.align	2
	.type	endprotoent,%function
.section bb0_0
endprotoent:                            @ @endprotoent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r0, .LCPI0_0
	mov	r1, #0
	str	r1, [r0]
	mov	pc, lr
.LCPI0_0:
	.long	_MergedGlobals
.Ltmp0:
	.size	endprotoent, .Ltmp0-endprotoent
	.cantunwind
	.fnend

	.globl	setprotoent
	.align	2
	.type	setprotoent,%function
.section bb1_0
setprotoent:                            @ @setprotoent
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r0, .LCPI1_0
	mov	r1, #0
	str	r1, [r0]
	mov	pc, lr
.LCPI1_0:
	.long	_MergedGlobals
.Ltmp1:
	.size	setprotoent, .Ltmp1-setprotoent
	.cantunwind
	.fnend

	.globl	getprotoent
	.align	2
	.type	getprotoent,%function
.section bb2_0
getprotoent:                            @ @getprotoent
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	ldr	r1, .LCPI2_2
	mov	r0, #0
	ldr	r2, [r1]
	cmp	r2, #17
	b	.LBB2_1
.LCPI2_2:
	.long	_MergedGlobals
.section bb2_1
.LBB2_1:                                @ %entry
	moveq	pc, lr
	ldr	r0, .LCPI2_3
	ldrb	r3, [r0, r2, lsl #3]!
	add	r2, r2, #1
	b	.LBB2_2
.LCPI2_3:
	.long	protos
.section bb2_2
.LBB2_2:                                @ %entry
	add	r0, r0, #1
	str	r3, [r1, #16]
	str	r2, [r1]
	str	r0, [r1, #8]!
	sub	r0, r1, #4
	str	r0, [r1, #4]
	mov	r0, r1
	mov	pc, lr
.Ltmp2:
	.size	getprotoent, .Ltmp2-getprotoent
	.cantunwind
	.fnend

	.globl	getprotobyname
	.align	2
	.type	getprotobyname,%function
.section bb3_0
getprotobyname:                         @ @getprotobyname
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	ldr	r6, .LCPI3_0
	ldr	r7, .LCPI3_2
	mov	r4, r0
	mov	r0, #0
	str	r0, [r6]
	b	.LBB3_3
.LCPI3_0:
	.long	_MergedGlobals
.LCPI3_2:
	.long	protos
.section bb3_3
.LBB3_3:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r7
	mov	r5, r6
	ldrb	r2, [r1, r0, lsl #3]!
	add	r0, r0, #1
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %land.rhs
                                        @   in Loop: Header=BB3_3 Depth=1
	add	r1, r1, #1
	str	r2, [r6, #16]
	str	r0, [r6]
	str	r1, [r5, #8]!
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %land.rhs
                                        @   in Loop: Header=BB3_3 Depth=1
	sub	r0, r5, #4
	str	r0, [r5, #4]
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	.LBB3_7
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %do.bodythread-pre-split
                                        @   in Loop: Header=BB3_3 Depth=1
	ldr	r0, [r6]
	mov	r5, #0
	cmp	r0, #17
	bne	.LBB3_3
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %do.end
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	getprotobyname, .Ltmp3-getprotobyname
	.cantunwind
	.fnend

	.globl	getprotobynumber
	.align	2
	.type	getprotobynumber,%function
.section bb4_0
getprotobynumber:                       @ @getprotobynumber
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	ldr	r12, .LCPI4_0
	mov	lr, r0
	mov	r0, #0
	mov	r3, #1
	b	.LBB4_2
.LCPI4_0:
	.long	_MergedGlobals
.section bb4_2
.LBB4_2:                                @ %entry
	str	r0, [r12]
	ldr	r0, .LCPI4_2
	add	r4, r0, #1
	add	r0, r12, #8
	b	.LBB4_3
.LCPI4_2:
	.long	protos
.section bb4_3
.LBB4_3:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r4
	ldrb	r1, [r2, #-1]
	cmp	r1, lr
	beq	.LBB4_6
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %do.bodythread-pre-split
                                        @   in Loop: Header=BB4_3 Depth=1
	add	r3, r3, #1
	add	r4, r2, #8
	cmp	r3, #18
	bne	.LBB4_3
	b	.LBB4_5
.section bb4_5
.LBB4_5:
	mov	r0, #0
	mov	r3, #17
	b	.LBB4_7
.section bb4_6
.LBB4_6:
	mov	r1, lr
	b	.LBB4_7
.section bb4_7
.LBB4_7:                                @ %do.end
	str	r1, [r12, #16]
	add	r1, r12, #4
	str	r3, [r12]
	str	r2, [r12, #8]
	str	r1, [r12, #12]
	pop	{r4, lr}
	mov	pc, lr
.Ltmp4:
	.size	getprotobynumber, .Ltmp4-getprotobynumber
	.cantunwind
	.fnend

	.type	protos,%object          @ @protos
	.section	.rodata,"a",%progbits
protos:
	.asciz	"\000ip\000\000\000\000"
	.asciz	"\001icmp\000\000"
	.asciz	"\002igmp\000\000"
	.asciz	"\003ggp\000\000\000"
	.asciz	"\006tcp\000\000\000"
	.asciz	"\fpup\000\000\000"
	.asciz	"\021udp\000\000\000"
	.asciz	"\026idp\000\000\000"
	.asciz	")ipv6\000\000"
	.asciz	"/gre\000\000\000"
	.asciz	"2esp\000\000\000"
	.asciz	"3ah\000\000\000\000"
	.asciz	":icmpv6"
	.asciz	"Yospf\000\000"
	.asciz	"^ipip\000\000"
	.asciz	"gpim\000\000\000"
	.asciz	"\377raw\000\000\000"
	.zero	8
	.size	protos, 144

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,20,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
