.section duplocale_text
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
	.file	"src/locale/duplocale.bc"
	.globl	__duplocale
	.align	2
	.type	__duplocale,%function
.section bb0_0
__duplocale:                            @ @__duplocale
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r0, #1
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r1, #40
	bl	calloc
	mov	r5, #0
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldr	r1, .LCPI0_0
	cmn	r4, #1
	mov	r5, r0
	add	r0, r0, #24
	b	.LBB0_4
.LCPI0_0:
	.long	__libc
.section bb0_4
.LBB0_4:                                @ %if.end
	str	r0, [r5, #4]
	addeq	r4, r1, #52
	ldr	r1, [r4]
	str	r1, [r5]
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then6
	bl	strcpy
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end10
	cmn	r4, #1
	beq	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then13
	mov	r0, r5
	mov	r1, r4
	mov	r2, #24
	bl	memcpy
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__duplocale, .Ltmp0-__duplocale
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	duplocale
duplocale = __duplocale
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
