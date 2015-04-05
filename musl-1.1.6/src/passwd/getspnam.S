.section getspnam_text
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
	.file	"src/passwd/getspnam.bc"
	.globl	getspnam
	.align	2
	.type	getspnam,%function
.section bb0_0
getspnam:                               @ @getspnam
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r5, .LCPI0_0
	mov	r4, r0
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.LBB0_4
	b	.LBB0_3
.LCPI0_0:
	.long	_MergedGlobals
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r0, #256
	bl	malloc
	mov	r2, r0
	mov	r0, #0
	str	r2, [r5]
	cmp	r2, #0
	beq	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end3
	add	r0, sp, #4
	add	r1, r5, #4
	mov	r3, #256
	str	r0, [sp]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end3
	mov	r0, r4
	bl	getspnam_r
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then6
	bl	__errno_location
	str	r4, [r0]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end8
	ldr	r0, [sp, #4]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getspnam, .Ltmp0-getspnam
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,40,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
