.section strxfrm_text
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
	.file	"src/locale/strxfrm.bc"
	.globl	__strxfrm_l
	.align	2
	.type	__strxfrm_l,%function
.section bb0_0
__strxfrm_l:                            @ @__strxfrm_l
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
	mov	r4, r1
	mov	r6, r0
	mov	r7, r2
	mov	r0, r4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bl	strlen
	mov	r5, r0
	cmp	r5, r7
	bhs	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r0, r6
	mov	r1, r4
	bl	strcpy
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__strxfrm_l, .Ltmp0-__strxfrm_l
	.cantunwind
	.fnend

	.globl	strxfrm
	.align	2
	.type	strxfrm,%function
.section bb1_0
strxfrm:                                @ @strxfrm
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r5, r0
	ldr	r0, .LCPI1_0
	mov	r4, r1
	mov	r7, r2
	b	.LBB1_3
.LCPI1_0:
	.long	__libc
.section bb1_3
.LBB1_3:                                @ %entry
	ldr	r0, [r0, #44]
	mov	r0, r4
	bl	strlen
	mov	r6, r0
	cmp	r6, r7
	bhs	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.then.i
	mov	r0, r5
	mov	r1, r4
	bl	strcpy
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %__strxfrm_l.exit
	mov	r0, r6
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	strxfrm, .Ltmp1-strxfrm
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	strxfrm_l
strxfrm_l = __strxfrm_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
