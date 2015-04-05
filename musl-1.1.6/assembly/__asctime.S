.section __asctime_text
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
	.file	"src/time/__asctime.bc"
	.globl	__asctime
	.align	2
	.type	__asctime,%function
.section bb0_0
__asctime:                              @ @__asctime
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
	.pad	#24
	sub	sp, sp, #24
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r0, [r5, #24]
	add	r0, r0, #131072
	bl	__nl_langinfo
	mov	r7, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r0, [r5, #16]
	add	r0, r0, #14
	add	r0, r0, #131072
	bl	__nl_langinfo
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	ldr	r1, [r5, #20]
	ldm	r5, {r2, r3, r6}
	ldr	r5, [r5, #12]
	stm	sp, {r0, r5, r6}
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	str	r3, [sp, #12]
	str	r2, [sp, #16]
	ldr	r2, .LCPI0_0
	add	r1, r1, #876
	b	.LBB0_7
.LCPI0_0:
	.long	.L.str
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r0, r4
	mov	r3, r7
	add	r1, r1, #1024
	str	r1, [sp, #20]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %entry
	mov	r1, #26
	bl	snprintf
	cmp	r0, #26
	movge	r0, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %entry
	strbge	r0, [r0]
	mov	r0, r4
	add	sp, sp, #24
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__asctime, .Ltmp0-__asctime
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%.3s %.3s%3d %.2d:%.2d:%.2d %d\n"
	.size	.L.str, 32


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
