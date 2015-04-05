.section mbrtoc16_text
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
	.file	"src/multibyte/mbrtoc16.bc"
	.globl	mbrtoc16
	.align	2
	.type	mbrtoc16,%function
.section bb0_0
mbrtoc16:                               @ @mbrtoc16
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
	ldr	r5, .LCPI0_2
	cmp	r3, #0
	mov	r4, r0
	movne	r5, r3
	cmp	r1, #0
	beq	.LBB0_5
	b	.LBB0_3
.LCPI0_2:
	.long	mbrtoc16.internal_state
.section bb0_3
.LBB0_3:                                @ %if.end3
	ldr	r0, [r5]
	cmp	r0, #1
	blt	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then4
	cmp	r4, #0
	strhne	r0, [r4]
	mov	r0, #0
	str	r0, [r5]
	mvn	r0, #2
	b	.LBB0_11
.section bb0_5
.LBB0_5:                                @ %if.then2
	ldr	r1, .LCPI0_3
	mov	r0, #0
	mov	r2, #1
	mov	r3, r5
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	b	mbrtoc16
.LCPI0_3:
	.long	.L.str
.section bb0_6
.LBB0_6:                                @ %if.end8
	add	r0, sp, #4
	mov	r3, r5
	bl	mbrtowc
	cmp	r0, #4
	bhi	.LBB0_11
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then12
	ldr	r1, [sp, #4]
	cmp	r1, #65536
	blo	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then15
	mov	r2, #255
	orr	r2, r2, #768
	and	r2, r1, r2
	orr	r2, r2, #56320
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then15
	str	r2, [r5]
	mov	r2, #6080
	orr	r2, r2, #49152
	add	r1, r2, r1, lsr #10
	str	r1, [sp, #4]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end17
	cmp	r4, #0
	strhne	r1, [r4]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	mbrtoc16, .Ltmp0-mbrtoc16
	.cantunwind
	.fnend

	.type	mbrtoc16.internal_state,%object @ @mbrtoc16.internal_state
	.local	mbrtoc16.internal_state
	.comm	mbrtoc16.internal_state,4,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
