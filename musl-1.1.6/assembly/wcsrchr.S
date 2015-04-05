.section wcsrchr_text
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
	.file	"src/string/wcsrchr.bc"
	.globl	wcsrchr
	.align	2
	.type	wcsrchr,%function
.section bb0_0
wcsrchr:                                @ @wcsrchr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
                                        @ kill: R0<def> R5<kill>
	bl	wcslen
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	blt	.LBB0_6
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %land.rhs.lr.ph
	add	r1, r5, r1, lsl #2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1]
	cmp	r2, r4
	beq	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.inc
                                        @   in Loop: Header=BB0_4 Depth=1
	sub	r1, r1, #4
	cmp	r1, r5
	bhs	.LBB0_4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.end
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.section bb0_7
.LBB0_7:
	mov	r0, r1
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcsrchr, .Ltmp0-wcsrchr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
