.section __fmodeflags_text
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
	.file	"src/stdio/__fmodeflags.bc"
	.globl	__fmodeflags
	.align	2
	.type	__fmodeflags,%function
.section bb0_0
__fmodeflags:                           @ @__fmodeflags
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r1, #43
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
                                        @ kill: R0<def> R4<kill>
	bl	strchr
	mov	r5, #2
	cmp	r0, #0
	bne	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.else
	ldrb	r0, [r4]
	mov	r5, #0
	cmp	r0, #114
	movne	r5, #1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end4
	mov	r0, r4
	mov	r1, #120
	bl	strchr
	cmp	r0, #0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end4
	mov	r0, r4
	mov	r1, #101
	orrne	r5, r5, #128
	bl	strchr
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end4
	cmp	r0, #0
	ldrb	r0, [r4]
	orrne	r5, r5, #524288
	cmp	r0, #114
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end4
	orrne	r5, r5, #64
	cmp	r0, #119
	orreq	r5, r5, #512
	cmp	r0, #97
	orreq	r5, r5, #1024
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__fmodeflags, .Ltmp0-__fmodeflags
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
