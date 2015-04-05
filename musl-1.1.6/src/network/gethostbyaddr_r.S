.section gethostbyaddr_r_text
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
	.file	"src/network/gethostbyaddr_r.bc"
	.globl	gethostbyaddr_r
	.align	2
	.type	gethostbyaddr_r,%function
.section bb0_0
gethostbyaddr_r:                        @ @gethostbyaddr_r
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
	.pad	#52
	sub	sp, sp, #52
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	add	r4, sp, #24
	mov	r5, r2
	mov	r7, r1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r0
	mov	r1, #28
	mov	r2, #0
	mov	r9, r3
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r6, #0
	mov	r0, r4
	bl	__aeabi_memset
	ldr	r0, [sp, #96]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	ldr	r1, [sp, #100]
	strh	r5, [sp, #24]
	cmp	r5, #10
	str	r6, [r0]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r6, #16
	moveq	r6, #28
	cmp	r7, #16
	cmpeq	r5, #10
	bne	.LBB0_24
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then
	add	r0, r4, #8
	mov	r1, r8
	mov	r2, #16
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end15
	bl	memcpy
	ldr	r11, [sp, #88]
	ldr	r2, [sp, #92]
	mov	r4, #34
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end15
	ands	r1, r11, #3
	moveq	r1, #4
	rsb	r0, r1, #20
	add	r10, r0, r7
	cmp	r10, r2
	bhs	.LBB0_23
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end21
	rsb	r1, r1, #4
	add	r0, r11, r0
	add	r2, r11, r1
	str	r2, [r9, #16]
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end21
	add	r2, r2, #8
	str	r2, [r9, #4]
	str	r0, [r11, r1]
	mov	r1, r8
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end21
	mov	r2, r7
	ldr	r0, [r9, #16]
	ldr	r0, [r0]
	bl	memcpy
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end21
	ldr	r0, [r9, #16]
	mov	r1, #0
	add	r2, r11, r10
	str	r1, [r0, #4]
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end21
	ldr	r0, [r9, #4]
	str	r2, [r0]
	ldr	r0, [r9, #4]
	str	r1, [r0, #4]
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end21
	ldr	r0, [sp, #92]
	str	r1, [sp]
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end21
	mov	r1, r6
	sub	r3, r0, r10
	add	r0, sp, #24
	bl	getnameinfo
	cmn	r0, #12
	beq	.LBB0_23
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end21
	cmp	r0, #0
	bne	.LBB0_20
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %sw.epilog
	str	r5, [r9, #8]
	mov	r4, #0
	ldr	r0, [r9, #4]
	ldr	r0, [r0]
	str	r0, [r9]
	ldr	r0, [sp, #96]
	str	r9, [r0]
	b	.LBB0_23
.section bb0_20
.LBB0_20:                               @ %if.end21
	ldr	r1, [sp, #100]
	cmn	r0, #3
	bne	.LBB0_22
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %sw.bb
	mov	r0, #2
	mov	r4, #11
	str	r0, [r1]
	b	.LBB0_23
.section bb0_22
.LBB0_22:                               @ %sw.bb41
	mov	r0, #3
	str	r0, [r1]
	bl	__errno_location
	ldr	r4, [r0]
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %return
	mov	r0, r4
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_24
.LBB0_24:                               @ %if.else
	cmp	r7, #4
	cmpeq	r5, #2
	bne	.LBB0_26
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.then11
	add	r0, r4, #4
	mov	r1, r8
	mov	r2, #4
	b	.LBB0_9
.section bb0_26
.LBB0_26:                               @ %if.else14
	mov	r0, #3
	mov	r4, #22
	str	r0, [r1]
	b	.LBB0_23
.Ltmp0:
	.size	gethostbyaddr_r, .Ltmp0-gethostbyaddr_r
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
