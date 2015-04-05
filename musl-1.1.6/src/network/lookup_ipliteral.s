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
	.file	"src/network/lookup_ipliteral.bc"
	.globl	__lookup_ipliteral
	.align	2
	.type	__lookup_ipliteral,%function
__lookup_ipliteral:                     @ @__lookup_ipliteral
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#88
	sub	sp, sp, #88
	mov	r5, r2
	mov	r7, r1
	mov	r8, r0
	cmp	r5, #10
	beq	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                @ %land.lhs.true
	add	r1, sp, #84
	mov	r0, r7
	bl	__inet_aton
	cmp	r0, #1
	blt	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	add	r0, r8, #8
	add	r1, sp, #84
	mov	r2, #4
	bl	memcpy
	mov	r0, #2
	mov	r1, #0
	stm	r8, {r0, r1}
	b	.LBB0_25
.LBB0_5:                                @ %if.end
	mov	r6, #0
	cmp	r5, #2
	beq	.LBB0_26
	b	.LBB0_6
.LBB0_6:                                @ %if.then7
	mov	r0, r7
	mov	r1, #37
	bl	strchr
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %land.lhs.true13
	sub	r4, r5, r7
	cmp	r4, #63
	bgt	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %if.then15
	add	r6, sp, #4
	mov	r1, r7
	mov	r2, r4
	mov	r0, r6
	bl	memcpy
	mov	r0, #0
	strb	r0, [r6, r4]
	b	.LBB0_10
.LBB0_9:
	mov	r6, r7
	b	.LBB0_10
.LBB0_10:                               @ %if.end25
	add	r2, sp, #68
	mov	r0, #10
	mov	r1, r6
	mov	r4, #10
	b	.LBB0_11
.LBB0_11:                               @ %if.end25
	bl	inet_pton
	mov	r6, #0
	cmp	r0, #1
	blt	.LBB0_26
	b	.LBB0_12
.LBB0_12:                               @ %if.end29
	add	r0, r8, #8
	add	r1, sp, #68
	mov	r2, #16
	bl	memcpy
	b	.LBB0_13
.LBB0_13:                               @ %if.end29
	mov	r6, #1
	str	r4, [r8]
	cmp	r5, #0
	beq	.LBB0_26
	b	.LBB0_14
.LBB0_14:                               @ %if.then36
	mov	r7, r5
	ldrb	r0, [r7, #1]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.then39
	mov	r1, sp
	mov	r0, r7
	mov	r2, #10
	bl	strtoull
	ldr	r5, [sp]
	b	.LBB0_17
.LBB0_16:                               @ %if.else
	str	r5, [sp]
                                        @ implicit-def: R0
                                        @ implicit-def: R1
	b	.LBB0_17
.LBB0_17:                               @ %if.end41
	ldrb	r2, [r5]
	cmp	r2, #0
	beq	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               @ %if.then43
	ldrh	r1, [sp, #68]
	mvn	r6, #1
	lsr	r0, r1, #8
	and	r1, r1, #255
	cmp	r1, #255
	bne	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               @ %land.lhs.true58
	and	r0, r0, #15
	cmp	r0, #2
	bne	.LBB0_26
	b	.LBB0_23
.LBB0_20:                               @ %if.end71
	mvn	r6, #1
	cmp	r1, #0
	bne	.LBB0_26
	b	.LBB0_24
.LBB0_21:                               @ %if.then43
	cmp	r1, #254
	bne	.LBB0_26
	b	.LBB0_22
.LBB0_22:                               @ %land.lhs.true48
	and	r0, r0, #192
	cmp	r0, #128
	bne	.LBB0_26
	b	.LBB0_23
.LBB0_23:                               @ %if.end65
	mov	r0, r7
	bl	if_nametoindex
	cmp	r0, #0
	beq	.LBB0_26
	b	.LBB0_24
.LBB0_24:                               @ %if.end75
	str	r0, [r8, #4]
	b	.LBB0_25
.LBB0_25:                               @ %return
	mov	r6, #1
	b	.LBB0_26
.LBB0_26:                               @ %return
	mov	r0, r6
	add	sp, sp, #88
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lookup_ipliteral, .Ltmp0-__lookup_ipliteral
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
