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
	.file	"src/network/ether.bc"
	.globl	ether_aton_r
	.align	2
	.type	ether_aton_r,%function
ether_aton_r:                           @ @ether_aton_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r4, r1
	mov	r6, #0
	add	r5, sp, #4
	add	r7, sp, #8
	b	.LBB0_3
.LBB0_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r6, #0
	beq	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %if.then
                                        @   in Loop: Header=BB0_3 Depth=1
	ldrb	r2, [r0]
	mov	r1, #0
	cmp	r2, #58
	bne	.LBB0_12
	b	.LBB0_5
.LBB0_5:                                @ %if.else
                                        @   in Loop: Header=BB0_3 Depth=1
	add	r0, r0, #1
	b	.LBB0_6
.LBB0_6:                                @ %if.end5
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r1, r5
	mov	r2, #16
	bl	strtoul
	mov	r2, r0
	mov	r1, #0
	cmp	r2, #255
	bhi	.LBB0_12
	b	.LBB0_7
.LBB0_7:                                @ %if.end9
                                        @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #4]
	strb	r2, [r7, r6]
	add	r6, r6, #1
	cmp	r6, #6
	blt	.LBB0_3
	b	.LBB0_8
.LBB0_8:                                @ %for.end
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB0_12
	b	.LBB0_9
.LBB0_9:                                @ %if.end17
	ldrh	r0, [sp, #12]
	strb	r0, [r4, #4]
	lsr	r0, r0, #8
	ldr	r1, [sp, #8]
	b	.LBB0_10
.LBB0_10:                               @ %if.end17
	strb	r1, [r4]
	strb	r0, [r4, #5]
	lsr	r0, r1, #24
	strb	r0, [r4, #3]
	b	.LBB0_11
.LBB0_11:                               @ %if.end17
	lsr	r0, r1, #16
	strb	r0, [r4, #2]
	lsr	r0, r1, #8
	mov	r1, r4
	strb	r0, [r4, #1]
	b	.LBB0_12
.LBB0_12:                               @ %return
	mov	r0, r1
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	ether_aton_r, .Ltmp0-ether_aton_r
	.cantunwind
	.fnend

	.globl	ether_aton
	.align	2
	.type	ether_aton,%function
ether_aton:                             @ @ether_aton
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r1, .LCPI1_0
	b	ether_aton_r
.LCPI1_0:
	.long	_MergedGlobals
.Ltmp1:
	.size	ether_aton, .Ltmp1-ether_aton
	.cantunwind
	.fnend

	.globl	ether_ntoa_r
	.align	2
	.type	ether_ntoa_r,%function
ether_ntoa_r:                           @ @ether_ntoa_r
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	ldr	r9, .LCPI2_2
	ldr	r4, .LCPI2_3
	b	.LBB2_3
.LCPI2_2:
	.long	.L.str
.LCPI2_3:
	.long	.L.str1
.LBB2_3:                                @ %entry
	mov	r8, r1
	mov	r5, r0
	mov	r7, #0
	mov	r6, r8
	b	.LBB2_4
.LBB2_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r5, -r7]
	cmp	r7, #0
	mov	r1, r4
	mov	r0, r6
	b	.LBB2_5
.LBB2_5:                                @ %for.body
                                        @   in Loop: Header=BB2_4 Depth=1
	moveq	r1, r9
	bl	sprintf
	sub	r7, r7, #1
	add	r6, r6, r0
	cmn	r7, #6
	bne	.LBB2_4
	b	.LBB2_6
.LBB2_6:                                @ %for.end
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	ether_ntoa_r, .Ltmp2-ether_ntoa_r
	.cantunwind
	.fnend

	.globl	ether_ntoa
	.align	2
	.type	ether_ntoa,%function
ether_ntoa:                             @ @ether_ntoa
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	ldr	r1, .LCPI3_0
	add	r1, r1, #6
	b	ether_ntoa_r
.LCPI3_0:
	.long	_MergedGlobals
.Ltmp3:
	.size	ether_ntoa, .Ltmp3-ether_ntoa
	.cantunwind
	.fnend

	.globl	ether_line
	.align	2
	.type	ether_line,%function
ether_line:                             @ @ether_line
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	mvn	r0, #0
	mov	pc, lr
.Ltmp4:
	.size	ether_line, .Ltmp4-ether_line
	.cantunwind
	.fnend

	.globl	ether_ntohost
	.align	2
	.type	ether_ntohost,%function
ether_ntohost:                          @ @ether_ntohost
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	mvn	r0, #0
	mov	pc, lr
.Ltmp5:
	.size	ether_ntohost, .Ltmp5-ether_ntohost
	.cantunwind
	.fnend

	.globl	ether_hostton
	.align	2
	.type	ether_hostton,%function
ether_hostton:                          @ @ether_hostton
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	mvn	r0, #0
	mov	pc, lr
.Ltmp6:
	.size	ether_hostton, .Ltmp6-ether_hostton
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%.2X"
	.size	.L.str, 5

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	":%.2X"
	.size	.L.str1, 6

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,24,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
