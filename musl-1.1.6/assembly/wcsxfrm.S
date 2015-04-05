.section wcsxfrm_text
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
	.file	"src/locale/wcsxfrm.bc"
	.globl	__wcsxfrm_l
	.align	2
	.type	__wcsxfrm_l,%function
.section bb0_0
__wcsxfrm_l:                            @ @__wcsxfrm_l
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
	mov	r6, r1
	mov	r5, r0
	mov	r7, r2
	mov	r0, r6
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bl	wcslen
	mov	r4, r0
	cmp	r4, r7
	bhs	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	add	r2, r4, #1
	mov	r0, r5
	mov	r1, r6
	bl	wmemcpy
	b	.LBB0_7
.section bb0_5
.LBB0_5:                                @ %if.else
	cmp	r7, #0
	beq	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then2
	sub	r7, r7, #1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	wmemcpy
	mov	r0, #0
	str	r0, [r5, r7, lsl #2]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end5
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__wcsxfrm_l, .Ltmp0-__wcsxfrm_l
	.cantunwind
	.fnend

	.globl	wcsxfrm
	.align	2
	.type	wcsxfrm,%function
.section bb1_0
wcsxfrm:                                @ @wcsxfrm
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r3, .LCPI1_0
	ldr	r3, [r3, #44]
	b	__wcsxfrm_l
.LCPI1_0:
	.long	__libc
.Ltmp1:
	.size	wcsxfrm, .Ltmp1-wcsxfrm
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	wcsxfrm_l
wcsxfrm_l = __wcsxfrm_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
