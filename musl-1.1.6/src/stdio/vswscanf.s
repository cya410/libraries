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
	.file	"src/stdio/vswscanf.bc"
	.globl	vswscanf
	.align	2
	.type	vswscanf,%function
vswscanf:                               @ @vswscanf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#392
	sub	sp, sp, #392
	mov	r7, sp
	mov	r4, r2
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r6, r0
	mov	r1, #136
	mov	r2, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r0, r7
	bl	__aeabi_memset
	ldr	r0, .LCPI0_0
	mov	r1, r5
	b	.LBB0_5
.LCPI0_0:
	.long	wstring_read
.LBB0_5:                                @ %entry
	mov	r2, r4
	str	r0, [sp, #32]
	add	r0, sp, #136
	str	r0, [sp, #44]
	b	.LBB0_6
.LBB0_6:                                @ %entry
	mov	r0, #256
	str	r0, [sp, #48]
	mvn	r0, #0
	str	r0, [sp, #76]
	b	.LBB0_7
.LBB0_7:                                @ %entry
	mov	r0, r7
	str	r6, [sp, #84]
	bl	vfwscanf
	add	sp, sp, #392
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	vswscanf, .Ltmp0-vswscanf
	.cantunwind
	.fnend

	.align	2
	.type	wstring_read,%function
wstring_read:                           @ @wstring_read
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	mov	r7, r2
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r5, r1
	mov	r6, #0
	ldr	r0, [r4, #84]
	str	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB1_10
	b	.LBB1_4
.LBB1_4:                                @ %if.end
	ldr	r0, [r4, #44]
	ldr	r2, [r4, #48]
	add	r1, sp, #4
	mov	r3, #0
	b	.LBB1_5
.LBB1_5:                                @ %if.end
	mov	r6, #0
	bl	wcsrtombs
	cmn	r0, #1
	beq	.LBB1_9
	b	.LBB1_6
.LBB1_6:                                @ %if.end3
	ldr	r1, [r4, #44]
	cmp	r7, #0
	add	r2, r1, r0
	str	r1, [r4, #4]
	b	.LBB1_7
.LBB1_7:                                @ %if.end3
	str	r2, [r4, #8]
	ldr	r2, [sp, #4]
	str	r2, [r4, #84]
	beq	.LBB1_10
	b	.LBB1_8
.LBB1_8:                                @ %if.end3
	cmp	r0, #0
	addne	r0, r1, #1
	movne	r6, #1
	strne	r0, [r4, #4]
	ldrbne	r0, [r1]
	strbne	r0, [r5]
	b	.LBB1_10
.LBB1_9:                                @ %if.then2
	mov	r6, #0
	str	r6, [r4, #4]
	str	r6, [r4, #8]
	b	.LBB1_10
.LBB1_10:                               @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	wstring_read, .Ltmp1-wstring_read
	.cantunwind
	.fnend


	.weak	__isoc99_vswscanf
__isoc99_vswscanf = vswscanf
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
