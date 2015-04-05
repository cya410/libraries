.section mbrtoc32_text
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
	.file	"src/multibyte/mbrtoc32.bc"
	.globl	mbrtoc32
	.align	2
	.type	mbrtoc32,%function
.section bb0_0
mbrtoc32:                               @ @mbrtoc32
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
	mov	r4, r3
	ldr	r3, .LCPI0_2
	mov	r5, r0
	cmp	r4, #0
	movne	r3, r4
	cmp	r1, #0
	beq	.LBB0_5
	b	.LBB0_3
.LCPI0_2:
	.long	mbrtoc32.internal_state
.section bb0_3
.LBB0_3:                                @ %if.end3
	mov	r0, sp
	bl	mbrtowc
	cmp	r5, #0
	beq	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end3
	cmp	r0, #4
	ldrls	r1, [sp]
	strls	r1, [r5]
	b	.LBB0_6
.section bb0_5
.LBB0_5:                                @ %if.then2
	ldr	r1, .LCPI0_3
	add	r0, sp, #4
	mov	r2, #1
	bl	mbrtowc
	b	.LBB0_6
.LCPI0_3:
	.long	.L.str
.section bb0_6
.LBB0_6:                                @ %return
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	mbrtoc32, .Ltmp0-mbrtoc32
	.cantunwind
	.fnend

	.type	mbrtoc32.internal_state,%object @ @mbrtoc32.internal_state
	.local	mbrtoc32.internal_state
	.comm	mbrtoc32.internal_state,4,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
