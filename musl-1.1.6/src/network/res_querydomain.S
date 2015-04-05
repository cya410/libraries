.section res_querydomain_text
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
	.file	"src/network/res_querydomain.bc"
	.globl	res_querydomain
	.align	2
	.type	res_querydomain,%function
.section bb0_0
res_querydomain:                        @ @res_querydomain
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#268
	sub	sp, sp, #268
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r0
	mov	r6, r1
	mov	r1, #255
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r3
	mov	r9, r2
                                        @ kill: R0<def> R7<kill>
	bl	strnlen
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r4, r0
	mov	r0, r6
	mov	r1, #255
	bl	strnlen
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r5, r0
	add	r10, r4, #1
	mvn	r0, #0
	add	r1, r10, r5
	cmp	r1, #254
	bhi	.LBB0_11
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	add	r11, sp, #13
	mov	r1, r7
	mov	r2, r4
	mov	r0, r11
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	bl	memcpy
	mov	r0, #46
	add	r2, r5, #1
	mov	r1, r6
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end
	strb	r0, [r11, r4]
	add	r0, r11, r10
	bl	memcpy
	ldr	r0, [sp, #308]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end
	ldr	r3, [sp, #304]
	mov	r1, r9
	mov	r2, r8
	str	r0, [sp]
	mov	r0, r11
	bl	res_query
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %cleanup
	add	sp, sp, #268
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	res_querydomain, .Ltmp0-res_querydomain
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
