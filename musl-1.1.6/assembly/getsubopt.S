.section getsubopt_text
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
	.file	"src/misc/getsubopt.bc"
	.globl	getsubopt
	.align	2
	.type	getsubopt,%function
.section bb0_0
getsubopt:                              @ @getsubopt
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r7, r0
	mov	r5, r1
	mov	r8, r2
	mov	r4, #0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r1, #44
	ldr	r6, [r7]
	str	r4, [r8]
	mov	r0, r6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bl	strchr
	str	r0, [r7]
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	add	r1, r0, #1
	str	r1, [r7]
	strb	r4, [r0]
	b	.LBB0_7
.section bb0_6
.LBB0_6:                                @ %if.else
	mov	r0, r6
	bl	strlen
	add	r0, r6, r0
	str	r0, [r7]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.cond.preheader
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_8
.section bb0_8
.LBB0_8:
	mov	r7, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	bl	strlen
	mov	r4, r0
	ldr	r0, [r5, r7, lsl #2]
	mov	r1, r6
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.body
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r2, r4
	bl	strncmp
	cmp	r0, #0
	bne	.LBB0_13
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end9
                                        @   in Loop: Header=BB0_9 Depth=1
	mov	r0, r6
	ldrb	r1, [r0, r4]!
	cmp	r1, #0
	beq	.LBB0_15
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end9
                                        @   in Loop: Header=BB0_9 Depth=1
	cmp	r1, #61
	beq	.LBB0_16
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.inc
                                        @   in Loop: Header=BB0_9 Depth=1
	add	r0, r5, r7, lsl #2
	add	r7, r7, #1
	ldr	r0, [r0, #4]
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_14
.section bb0_14
.LBB0_14:
	mvn	r7, #0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %return
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_16
.LBB0_16:                               @ %if.then12
	str	r0, [r8]
	b	.LBB0_15
.Ltmp0:
	.size	getsubopt, .Ltmp0-getsubopt
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
