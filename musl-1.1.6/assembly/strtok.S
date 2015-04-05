.section strtok_text
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
	.file	"src/string/strtok.bc"
	.globl	strtok
	.align	2
	.type	strtok,%function
.section bb0_0
strtok:                                 @ @strtok
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
	mov	r4, r0
	mov	r6, r1
	cmp	r4, #0
	bne	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.lhs.true
	ldr	r0, .LCPI0_0
	mov	r5, #0
	ldr	r4, [r0]
	cmp	r4, #0
	beq	.LBB0_11
	b	.LBB0_4
.LCPI0_0:
	.long	strtok.p
.section bb0_4
.LBB0_4:                                @ %if.end
	mov	r0, r4
	mov	r1, r6
	bl	strspn
	mov	r7, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r5, r4
	ldrb	r0, [r5, r7]!
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end4
	mov	r0, r5
	mov	r1, r6
	bl	strcspn
	ldr	r1, .LCPI0_1
	b	.LBB0_7
.LCPI0_1:
	.long	strtok.p
.section bb0_7
.LBB0_7:                                @ %if.end4
	add	r0, r0, r7
	add	r2, r4, r0
	str	r2, [r1]
	ldrb	r3, [r4, r0]
	cmp	r3, #0
	beq	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then8
	add	r2, r2, #1
	str	r2, [r1]
	mov	r1, #0
	strb	r1, [r4, r0]
	b	.LBB0_11
.section bb0_9
.LBB0_9:                                @ %if.then3
	ldr	r0, .LCPI0_2
	mov	r5, #0
	str	r5, [r0]
	b	.LBB0_11
.LCPI0_2:
	.long	strtok.p
.section bb0_10
.LBB0_10:                               @ %if.else
	mov	r0, #0
	str	r0, [r1]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strtok, .Ltmp0-strtok
	.cantunwind
	.fnend

	.type	strtok.p,%object        @ @strtok.p
	.local	strtok.p
	.comm	strtok.p,4,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
