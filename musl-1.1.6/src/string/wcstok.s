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
	.file	"src/string/wcstok.bc"
	.globl	wcstok
	.align	2
	.type	wcstok,%function
wcstok:                                 @ @wcstok
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r8, r2
	mov	r7, r1
	cmp	r5, #0
	bne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @ %land.lhs.true
	ldr	r5, [r8]
	mov	r6, #0
	cmp	r5, #0
	beq	.LBB0_11
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	mov	r0, r5
	mov	r1, r7
	bl	wcsspn
	mov	r4, r0
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	mov	r6, r5
	ldr	r0, [r6, r4, lsl #2]!
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %if.end4
	mov	r0, r6
	mov	r1, r7
	bl	wcscspn
	add	r0, r0, r4
	b	.LBB0_7
.LBB0_7:                                @ %if.end4
	add	r1, r5, r0, lsl #2
	str	r1, [r8]
	ldr	r2, [r5, r0, lsl #2]
	cmp	r2, #0
	beq	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %if.then8
	add	r1, r1, #4
	str	r1, [r8]
	mov	r1, #0
	str	r1, [r5, r0, lsl #2]
	b	.LBB0_11
.LBB0_9:                                @ %if.then3
	mov	r6, #0
	str	r6, [r8]
	b	.LBB0_11
.LBB0_10:                               @ %if.else
	mov	r0, #0
	str	r0, [r8]
	b	.LBB0_11
.LBB0_11:                               @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcstok, .Ltmp0-wcstok
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
