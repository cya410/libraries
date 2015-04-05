.section if_nametoindex_text
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
	.file	"src/network/if_nametoindex.bc"
	.globl	if_nametoindex
	.align	2
	.type	if_nametoindex,%function
.section bb0_0
if_nametoindex:                         @ @if_nametoindex
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
	.pad	#32
	sub	sp, sp, #32
	mov	r1, #2
	mov	r5, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r0, #1
	mov	r2, #0
	orr	r1, r1, #524288
	bl	socket
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r4, r0
	mvn	r0, #0
	cmp	r4, #0
	blt	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r6, sp
	mov	r1, r5
	mov	r2, #16
	mov	r0, r6
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	bl	strncpy
	mov	r1, #51
	mov	r0, r4
	mov	r2, r6
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	orr	r1, r1, #35072
	bl	ioctl
	mov	r1, r0
	mov	r7, #6
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	mov	r0, r4
	@APP
	svc	#0
	@NO_APP
	cmp	r1, #0
	ldr	r0, [sp, #16]
	movlt	r0, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	if_nametoindex, .Ltmp0-if_nametoindex
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
