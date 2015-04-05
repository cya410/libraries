.section strcasestr_text
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
	.file	"src/string/strcasestr.bc"
	.globl	strcasestr
	.align	2
	.type	strcasestr,%function
.section bb0_0
strcasestr:                             @ @strcasestr
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
	mov	r0, r6
	bl	strlen
	mov	r7, r0
	ldrb	r0, [r5]
	mov	r4, #0
	b	.LBB0_4
.section bb0_3
.LBB0_3:                                @ %for.inc
                                        @   in Loop: Header=BB0_4 Depth=1
	ldrb	r0, [r5, #1]!
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body
                                        @   in Loop: Header=BB0_4 Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	strncasecmp
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_6
.section bb0_6
.LBB0_6:
	mov	r4, r5
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strcasestr, .Ltmp0-strcasestr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
